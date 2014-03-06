/////////////////////////////////////////////////////////////////////////////
//
// MODULE NAME:   tzadw7aw.c - Zeidon application operations
// DESCRIPTION:   This C file contains global and LOD operations for the
//                Zeidon application.
//
// //////////////////////////////////////////////////////////////////////////
// * Copyright (c) 1995 QuinSoft, Corporation.  All rights reserved.        *
// * Confidential and Proprietary material subject to license - do not      *
// * reproduce or disclose.  This material is an unpublished work and       *
// * is considered a trade secret belonging to the copyright holder.        *
// //////////////////////////////////////////////////////////////////////////
//
// AUTHOR:        Gig Kirk
// DATE:          1992/09/30
// API:           MicroSoft foundation classes and Windows 3.1 SDK
// ENVIRONMENT:   Windows 3.1
// REVISION:      10B    1995/08/05
//
// LAST MESSAGE ID: AD10409
//
// HISTORY:
//
//    1995/08/05: Beginning of 10B branch
//
/////////////////////////////////////////////////////////////////////////////
//

/*
CHANGE LOG

2000.10.19    SR   Z2000 Size of path variables
   Modified size of string szFileSpec and szFileName in function
   ofnTZWDLGSO_CreateSourceCode because size of attributes ExecDir, MetaSrcDir
   and PgmSrcDir has been changed to 254 in datamodel.

  Length of Paths
  Changed size of, because in future it will be allowed to enter
  a path in the length of 254 characters.

1999.12.08  DC    Z10
   Corrected handling of memory length around SysAllocMemory at end of
   CreateSourceCode. Also moved the SysFreeMemory( selMemory1 ) statement
   so that it was only executed when selMemory1 was allocated.
   DKS added some minor formatting changes, such as using double slashes
   for comments.

1999.19.12  DKS   Z10   TB829
   Added 1 byte for total Template length.

1999.09.13  BL ALL      Autodesign
   line 1841, Fix for FH

1999.09.10  BL ALL      Autodesign
   insert SysAllocMemory for new AutoDesigner

1999.09.08  BL ALL      Autodesign
   update szTemplate[6000] to szTemplate[60000] in Operation
   ofnTZWDLGSO_CreateSourceCode

1999.08.19  DC 10a + 9j
   Modified CreateSourceCode for DeleteObjectEntity operation to not
   generate the delete of the entry in the list when there is not list.
   (When the Autodesign style is not list.)

1999.08.16  DC 10a
   Modified termination of CreateSourceCode so that last slash in comment of
   first generated operation would not be lost.

1999.05.01  DC 10a+9j  Autodesign
   Made many changes to support entries to user customization routines.

*** Old Order

97/04/14    DonC
   Added CheckExistenceOfEntity check on I_LOD_Entity to skip code when
   the operation is ListSub for Case 5.

   Modified CreateSourceCode to check for existence of entities before
   setting szIncludeVOR and szIncludeObject. The settings were not valid for
   main list.

98/01/14    DonC
   Modified AddQualToWhere to handle situation where ER_Attribute is null.

98/03/1998  DonC
   Modified ofnTZWDLGSO_CreateSourceCode for SelectSubObj... to not generate
   target view if it is the same as the list view.

01.07.1998  DonC
   Modified code generation of SelectSubObj... so that it would correctly
   handle the case where the ListViewObjRef and the IncludeViewObjRef are
   the same view.

02.07.1998  DonC
   Modified code generation to eliminate erroneous Zeidon core errors on
   some Case 6 situations.

03.07.1998  DonC
   Modified generation of ListSubObj operation for Case 4 to eliminate
   statements for activating the list object if the include views are
   the same as the view of the UIS itself.

28.07.1998  DonC
   Modified generation of ActivateMainList so that it would reposition on
   the list view according to the last update view, if there is one. (QS 56)

29.07.1998  DonC
   Modified AddQualToWhere to handle Identifier FactTypes that are
   relationships.

1999/02/11  DC
   Modified CreateSourceCode to initialize lpMemory to null because the
   SysReadFile wasn't initializing the area when the file being read was
   empty. Also Modified UserPostVariableExit to give 0 return code when
   no exit exists. (TB 501 and TB 502)

*/

#include "tzlodopr.h"
#include "tz__oprs.h"
#include "tzlodopr.hg"
#include "ZeidonOp.H"

zOPER_EXPORT zPVOID OPERATION
ofnTZWDLGSO_GetUserExitAddress( zVIEW vView,
                                zPCHAR szEntryName );

/////////////////////////////////////////////////////////////////////////////
//
// OPERATION  CreateCodeLine (CL)
//
// PURPOSE:  This routine concatenates up to 5 strings together to create
//           a line of code in the target string.
//
/////////////////////////////////////////////////////////////////////////////
zOPER_EXPORT zSHORT OPERATION
CL( zPCHAR szTargetString,
           zPCHAR szParm1,
           zPCHAR szParm2,
           zPCHAR szParm3,
           zPCHAR szParm4,
           zPCHAR szParm5 )
{
   zstrcat( szTargetString, szParm1 );
   zstrcat( szTargetString, szParm2 );
   zstrcat( szTargetString, szParm3 );
   zstrcat( szTargetString, szParm4 );
   zstrcat( szTargetString, szParm5 );
   zstrcat( szTargetString, "\r\n" );

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
AddQualToWhereSub( zPCHAR szTemplate,
                   zVIEW  vObject,
                   zPCHAR szObjectName,
                   zPCHAR szListVOR,
                   zPLONG plLoopCount,
                   zVIEW  vERD )
{
   // Recursively process each FactType, following the recursive
   // relationship path down as many levels as necessary.

   zVIEW  vTempERD;
   zCHAR  szWhereEntityName[ 33 ];
   zCHAR  szWhereAttributeName[ 33 ];
   zCHAR  szMsg[ 100 ];
   zSHORT nRC;

   // Make sure there is at least one FactType under Identifier.
   if ( CheckExistenceOfEntity( vERD, "ER_FactType" ) < zCURSOR_SET )
   {
      GetStringFromAttribute( szWhereEntityName, vERD, "ER_Entity", "Name" );
      zstrcpy( szMsg, "Entity '" );
      zstrcat( szMsg, szWhereEntityName );
      zstrcat( szMsg, "' has no Identifier entries. " );
      MessageSend( vERD, "AD10409", "Autodesigner",
                   szMsg,
                   zMSGQ_OBJECT_CONSTRAINT_ERROR, zBEEP );
      return( -1 );
   }

   CreateViewFromViewForTask( &vTempERD, vERD, 0 );

   // Process a WHERE qual for each FactType.
   for ( nRC = SetCursorFirstEntity( vERD, "ER_FactType", 0 );
         nRC >= zCURSOR_SET;
         nRC = SetCursorNextEntity( vERD, "ER_FactType", 0 ) )
   {
      if ( CheckExistenceOfEntity( vERD, "ER_AttributeIdentifier" ) >= zCURSOR_SET )
      {
         // If we're not in first time through the loop, add the "AND" plus
         // the skip to new line.
         if ( *plLoopCount != 0 )
         {
            zstrcat( szTemplate, " AND" );
            zstrcat( szTemplate, "\r\n" );
         }

         // Process Type = Attribute
         // Position on corresponding ER_Entity and then on corresponding
         // LOD_Entity to get entity name.
         SetCursorFirstEntityByAttr( vTempERD, "ER_Attribute",           "ZKey",
                                     vERD,     "ER_AttributeIdentifier", "ZKey",
                                     "EntpER_Model" );
         SetCursorFirstEntityByAttr( vObject,  "ER_Entity", "ZKey",
                                     vTempERD, "ER_Entity", "ZKey", "LOD" );
         GetStringFromAttribute( szWhereAttributeName,
                                 vTempERD, "ER_Attribute", "Name" );
         GetStringFromAttribute( szWhereEntityName,
                                 vObject, "LOD_Entity", "Name" );

         zstrcat( szTemplate, "            " );
         zstrcat( szTemplate, szObjectName );
         zstrcat( szTemplate, "." );
         zstrcat( szTemplate, szWhereEntityName );
         zstrcat( szTemplate, "." );
         zstrcat( szTemplate, szWhereAttributeName );
         zstrcat( szTemplate, "" );
         zstrcat( szTemplate, " = " );
         zstrcat( szTemplate, szListVOR );
         zstrcat( szTemplate, "." );
         zstrcat( szTemplate, szWhereEntityName );
         zstrcat( szTemplate, "." );
         zstrcat( szTemplate, szWhereAttributeName );

         (*plLoopCount)++;
      }

      if ( CheckExistenceOfEntity( vERD, "ER_RelLinkIdentifier" ) >= zCURSOR_SET )
      {
         // Process Type = Relationship
         // Position on ER_Entity which is target of relationship and then
         // call recursive subroutine to process the Identifier for that
         // entity.
         SetCursorFirstEntityByAttr( vTempERD, "ER_Entity",                  "ZKey",
                                     vERD,     "ER_Entity_Other_Identifier", "ZKey",
                                     "EntpER_Model" );

         AddQualToWhereSub( szTemplate, vObject, szObjectName,
                            szListVOR, plLoopCount, vTempERD );
      }
   }

   DropView( vTempERD );
   return( 0 );
}

/////////////////////////////////////////////////////////////////////////////
//
// OPERATION  AddQualToWhere
//
// PURPOSE:  This adds a multi-key qualification statement to a
//           a WHERE clause.  It is called when a detail object instance
//           is activated from a list.
//
/////////////////////////////////////////////////////////////////////////////
zOPER_EXPORT zSHORT OPERATION
AddQualToWhere( zVIEW  vSubtask,
                zPCHAR szTemplate,
                zVIEW  vObject,
                zPCHAR szObjectName,
                zPCHAR szListVOR,
                zPCHAR szListEntityName )
{
   zVIEW  vERD;
   zVIEW  vTemp;
   zSHORT nRC;
   zLONG  lLoopCount;

   // Get the view to the ERD.
   RetrieveViewForMetaList( vSubtask, &vTemp, zREFER_ERD_META );
   nRC = ActivateMetaOI( vSubtask, &vERD, vObject, zREFER_ERD_META,
                         zSINGLE | zLEVEL_APPLICATION );
   SetNameForView( vERD, "*** FactType ERD", vSubtask, zLEVEL_TASK );

   // Position on the ERD entity that is the same as the root entity of the
   // LOD.
   SetCursorFirstEntityByAttr( vERD,    "ER_Entity", "ZKey",
                               vObject, "ER_Entity", "ZKey", 0 );

   lLoopCount = 0;

   // Call recursive subroutine that actually builds the components of the
   // WHERE.

   AddQualToWhereSub( szTemplate, vObject, szObjectName,
                      szListVOR, &lLoopCount, vERD );

   DropView( vERD );
   return( 0 );
}

/////////////////////////////////////////////////////////////////////////////
//
// OPERATION  UserPostVariableExit
//
// PURPOSE:  Call the User Exit routine UserPostVariableEntry
//
/////////////////////////////////////////////////////////////////////////////
zOPER_EXPORT zSHORT OPERATION
UserPostVariableExit( zPCHAR szOperationName,
                      zPCHAR szTemplate,
                      zVIEW  vUserSpec,
                      zVIEW  vObject )
{
   zVIEW vUserSpecTemp;
   zVIEW vObjectTemp;
   zSHORT nRC;

   typedef  zSHORT (POPERATION PFN_USERPOSTVARIABLE) ( zVIEW, zPCHAR, zPCHAR, zVIEW );
   PFN_USERPOSTVARIABLE pfnUserPostVariableEntry;

   pfnUserPostVariableEntry = (PFN_USERPOSTVARIABLE)
            ofnTZWDLGSO_GetUserExitAddress( vUserSpec,
                                            "oTZADCSDO_UserPostVariableEntry" );
   if ( pfnUserPostVariableEntry != 0 )
   {
      CreateViewFromViewForTask( &vUserSpecTemp, vUserSpec, 0 );
      CreateViewFromViewForTask( &vObjectTemp, vObject, 0 );
      nRC = (*pfnUserPostVariableEntry) ( vUserSpecTemp,
                                          szOperationName,
                                          szTemplate,
                                          vObjectTemp );
      DropView( vUserSpecTemp);
      DropView( vObjectTemp);
   }
   else
      nRC = 0;

   return( nRC );
}


/////////////////////////////////////////////////////////////////////////////
//
// OPERATION
// CreateSourceCode( zPCHAR )
//
// PURPOSE:  This routine searches the current editor code for a
//           given function call (szSourceCode).  If the function is
//           located in the code, then CreateSourceCode is exited.  If
//           the function is not located, then the function is created.
//           There are several different functions that can be created
//           in CreateSourceCode:
//
//           1. LoadWorkObj - This function loads in the transfer
//                            object specified in the auto design
//                            dialog spec.
//           2. ListAllSubObj - This function loads all the subobjects
//                              for a particular object structure into
//                              a listbox.
//           3. ListQualSubObj - This function loads all the subobjects
//                               for a particular object structure and
//                               within a certain qualification into a
//                               listbox. //// Probably no longer used
//           4. LoadObjForList - This function loads in a specific object
//                               instance and displays a particular
//                               subordinate entity in a listbox.
//           5. SelectSubObj   - This function includes specified subobject
//                               into the current OI.  This is done by
//                               either double clicking on an entry Integer the
//                               listbox or entering a key.
//           6. ActivateMainList - This function performs the Activate
//                               of the main list object.  It used to be in
//                               one of the .Hn files but has been moved here
//                               for more flexibility.
//           7. ListSubCase5 - This function Activates the List objects
//                             necessary for Case 5/6 includes.
//
//           8. UpdateExistingInstance - This function performs the Activate
//                                       of the main object instance from
//                                       position on the list object.
//
//           9. DeleteObjectEntityFromList - This function deletes an
//                                           entry from the list.
//
//          10. CreateNewInstance - This function creates a new instance
//                                  of the root entity.
//
//          11. DeleteInstance - This function deletes the OI from memory.
//
//          12. SaveInstance - This function commits the OI to the database.
//
/////////////////////////////////////////////////////////////////////////////
zOPER_EXPORT zSHORT OPERATION
ofnTZWDLGSO_CreateSourceCode( zVIEW  vSubtask,
                              zVIEW  vUserSpec,
                              zVIEW  vNewDialog,
                              zPCHAR szSourceCode )
{
   zVIEW vObject;
   zVIEW vObject2;
   zVIEW vCM_Obj;
   zVIEW vTempObj;
   zVIEW vTempUIS;
   zVIEW vLOD;
   zVIEW vTemp;
   zVIEW vTZADWWKO;
   zPCHAR lpMemory;
   zPCHAR lpMemory1;
   zLONG selMemory;
   zLONG selMemory1;
   int  nPatternLth;
   int  NotFound;
   long fh;
   int  nLth;
   int  ExitWhile;
   zSHORT nRC;
   zLONG lFindPos;
   zLONG TemplateLth;
   zLONG lBufferLth;
   zLONG lLth;
   zLONG lRC;
   zLONG lZKey;
   zLONG wSelect;
   zCHAR cLanguage;
   zCHAR cSubObjType;
   zCHAR szSubObjType[ 3 ];
   zCHAR szCardinality[ 15 ];
   zCHAR szTemplate[60000];
   zCHAR szIncludeObject[ 33 ];
   zCHAR szIncludeVOR[ 33 ];
   zCHAR szIncludeListVOR[ 33 ];
   zCHAR szObjectName[ 33 ];
   zCHAR szEntityName[ 33 ];
   zCHAR szParentEntityName[ 33 ];
   zCHAR szSubobjEntity[ 33 ];
   zCHAR szER_Entity[ 33 ];
   zCHAR szAttribName[ 33 ];
   zCHAR szListVOR[ 33 ];
   zCHAR szListObject[ 33 ];
   zCHAR szDialogName[ 33 ];
   zCHAR szEditboxName[ 33 ];
   zCHAR szListQualifier[ 256 ];
   zCHAR szSourceCodeName[ 50 ];
   zCHAR szFirstDataFieldName[ 10 ];
   zCHAR szObjectKeyName[ 256 ];
   zCHAR szWorkString[ 100 ];
   zCHAR szOperator[ 5 ];
   zCHAR szWindowName[ 33 ];
   zCHAR szFileName[ zBASE_FILENAME_LTH + 1 ];
   zCHAR szFileSpec[ zMAX_FILESPEC_LTH + 1 ];
   zCHAR szCase[ 8 ];
   zCHAR szWkCase[ 8 ];
   zLONG lDelta1Table[ ASCIISIZE ];
   zLONG lDelta2Table[ MAXPATTERN ];
   zSHORT nMatchFlag;

// TraceLineS("IN", "CreateSourceCode W7" );

   cLanguage = 'Y';
   GetStringFromAttribute( szEntityName, vUserSpec, "LOD_Entity", "Name" );
   GetStringFromAttribute( szFirstDataFieldName,
                           vUserSpec, "UIS_Entity", "FirstDataFieldName" );

   // Copy an entity name extension on the Operation name if the Operation
   // is one of the following:
   //                          ListAllSubObj
   //                          SelectSubObj
   zstrcpy( szSourceCodeName, szSourceCode );
   if ( zstrcmp( szSourceCode, "ListAllSubObj" ) == 0 ||
        zstrcmp( szSourceCode, "SelectSubObj" ) == 0 )
   {
      zstrcat( szSourceCodeName, szEntityName );
      szSourceCodeName[ 32 ] = 0;
   }

   // For ListSub of Case 5/6, create Operation Name from parent entity.
   if ( zstrcmp( szSourceCode, "ListSub" ) == 0 )
   {
      CreateViewFromViewForTask( &vTempUIS, vUserSpec, 0 );
      ResetViewFromSubobject( vTempUIS );
      GetStringFromAttribute( szWorkString, vTempUIS, "LOD_Entity", "Name" );
      zstrcat( szSourceCodeName, szWorkString );
      szSourceCodeName[ 32 ] = 0;
      DropView( vTempUIS );
   }

   // If the Source Code name is not found in the editor file, then when the
   // operation template is created, certain information must be known about the
   // Source Code (e.g. What window and action the Source Code is called from).
   GetStringFromAttribute( szWindowName, vNewDialog, "Window", "Tag" );

   // Get the currently selected directory.
   // THIS IS ASSUMING THAT THE SOURCE CODE AND THE .PWD ETC ARE IN
   // THE SAME DIRECTORY.  SEE IF THAT IS GOING TO CHANGE.
   GetViewByName( &vCM_Obj, "ZeidonCM", vSubtask, zLEVEL_APPLICATION );
   GetViewByName( &vTempObj, "TZCMWKSO", vCM_Obj, zLEVEL_SUBTASK );

   // Borrow szFileName to permit conversion of environment strings.
   GetStringFromAttribute( szFileName, vTempObj, "LPLR", "PgmSrcDir" );
   if ( szFileName[ 0 ] == 0 )
   {
      GetStringFromAttribute( szFileName, vTempObj, "LPLR", "MetaSrcDir" );
   }

   SysConvertEnvironmentString( szFileSpec, szFileName );
   nLth = zstrlen( szFileSpec );
   if ( nLth > 0 )
   {
      if ( szFileSpec[ nLth - 1 ] != '\\' )
      {
         szFileSpec[ nLth++ ] = '\\';
         szFileSpec[ nLth ] = 0;
      }
   }

   // Get the name of the file to edit.
   GetStringFromAttribute( szFileName, vNewDialog, "Dialog", "DLL_Name" );

   // If EXE_NAME is blank then the file name is the wdod name.
   if ( szFileName[ 0 ] == 0 )
      GetStringFromAttribute( szFileName, vNewDialog, "Dialog", "Tag" );

   zstrcat( szFileName, ".VML" );
   zstrcat( szFileSpec, szFileName );

   fh = SysOpenFile( vUserSpec, szFileSpec, COREFILE_EXIST );

   if ( fh == -1 )
   {
      fh = SysOpenFile( vUserSpec, szFileSpec,
                        COREFILE_CREATE | COREFILE_UPDATE );
   }
   else
   {
      fh = SysOpenFile( vUserSpec, szFileSpec, COREFILE_UPDATE );
   }

   /* if fh is -1, then the file must be in use */
   if ( fh == -1 )
   {
      MessageSend( vSubtask, "AD10401", "Autodesigner",
                   "File is currently in use by another process",
                   zMSGQ_OBJECT_CONSTRAINT_ERROR, zBEEP );
      return( -1 );
   }

   TraceLineS( "(DGC) Opened file = ", szFileSpec );

   // Find the length of the file.
#ifdef __WIN32__
   lLth = GetFileSize( (HANDLE) fh, 0 );
#else
   lLth = _llseek( (int) fh, 0L, 2 );
   _llseek( (int) fh, 0L, 0 );
#endif

// TraceLineI( "File length = ", lLth );

   // We don't think this extra 60000 is necessary ... but to be safe,
   // we will leave as is.  DKS/DC 1999/12/07
   selMemory = SysAllocMemory( (zCOREMEM) &lpMemory, lLth + 60000, 0,
                               zCOREMEM_ALLOC, 0 );
   *lpMemory = 0;  // Initialize to null.

   lRC = (zLONG) SysReadFile( vUserSpec, fh, lpMemory, (zUSHORT) lLth );

   // Read the file into the buffer.
   if ( lLth != lRC )
   {
      SysFreeMemory( selMemory );
      MessageSend( vSubtask, "AD10402", "Autodesigner",
                   szFileSpec,
                   zMSGQ_OBJECT_CONSTRAINT_ERROR, zBEEP );
      SysCloseFile( vUserSpec, fh, 0 );
      return( -1 );
   }

   // If there is no text in this file, then add a line.
   if ( lLth < 1 )
   {
      zstrcpy( szTemplate, "\r\n" );
      lLth = zstrlen( szTemplate ) + 1;
   }
   else  // if the file length is greater than 0, remove the EOF
   {
      // Get rid of the EOF character.
      if ( lpMemory[ lLth - 1 ] == '\x1A' )
         lpMemory[ lLth - 1 ] = 0;
      else
         lLth++;
   }

   nPatternLth = zstrlen( szSourceCodeName );

   if ( nPatternLth > 1 )
   {
      // Builds a table to be used in qfind.  qfind is written to
      // ignore the delta tables when the length is less than 2.
      qbldelta( nPatternLth, szSourceCodeName, lDelta1Table, lDelta2Table );
   }

   ExitWhile = FALSE;
   wSelect = 0;

   // Find the operation name.
   while ( ExitWhile == FALSE )
   {
      lBufferLth = lLth - wSelect;
      // Find the search string in the buffer.
      lFindPos = qfind( nPatternLth,
                        szSourceCodeName,
                        lBufferLth,          // Buffer length
                        lpMemory + wSelect,  // Buffer text
                        lDelta1Table,
                        lDelta2Table );

      // If found, keep searching until you get the ')'.
      if ( lFindPos > -1 )
      {
         lFindPos = lFindPos + wSelect;
         wSelect = lFindPos + nPatternLth;

         // If found, see if it has the extension "( VIEW", because is
         // what an operation definition has.
         if ( zstrncmp( (lpMemory + wSelect), "( VIEW ", 7 ) == 0 )
         {
            ExitWhile = TRUE;
            NotFound  = FALSE;   // Operation is found
         }
      }
      else
      {
         // No more operations.
         NotFound = TRUE;
         ExitWhile = TRUE;
      }
   }

   // If the operation was not found, then create a prototype and
   // a template for the operation and put it in the editor text.
   if ( NotFound == TRUE )
   {
      GetStringFromAttribute( szDialogName, vNewDialog, "Dialog", "Tag" );
      if ( CheckExistenceOfEntity( vUserSpec, "UIS_Include" ) >= zCURSOR_SET )
      {
         GetStringFromAttribute( szSubObjType,
                                 vUserSpec, "UIS_Include", "SubObjectType" );
         cSubObjType = szSubObjType[ 0 ];
      }
      else
         cSubObjType = 0;

      // If the SubObjType is Case 4, then Reset back one UIS_Entity level
      // and get the name of the parent entity.
      if ( cSubObjType == '4' )
      {
         CreateViewFromViewForTask( &vTemp, vUserSpec, 0 );
         ResetViewFromSubobject( vTemp );
         GetStringFromAttribute( szParentEntityName,
                                 vTemp, "LOD_Entity", "Name" );
         DropView( vTemp );
      }

      GetStringFromAttribute( szWindowName, vNewDialog, "Window", "Tag" );
      CreateViewFromViewForTask( &vTempUIS, vUserSpec, 0 );
      ResetView( vTempUIS );
      GetStringFromAttribute( szObjectName, vTempUIS, "UIS_LOD", "Name" );
      DropView( vTempUIS );

      // Set up values for SelectSubObj...
      szIncludeListVOR[ 0 ] = 0;
      if ( CheckExistenceOfEntity( vUserSpec, "IncludeViewObjRef" ) >= zCURSOR_SET )
         GetStringFromAttribute( szIncludeVOR, vUserSpec,
                                 "IncludeViewObjRef", "Name" );

      if ( CheckExistenceOfEntity( vUserSpec, "ListViewObjRef" ) >= zCURSOR_SET )
         GetStringFromAttribute( szIncludeListVOR, vUserSpec,
                                 "ListViewObjRef", "Name" );

      if ( CheckExistenceOfEntity( vUserSpec, "IncludeSubObjLOD" ) >= zCURSOR_SET )
         GetStringFromAttribute( szIncludeObject, vUserSpec,
                                 "IncludeSubObjLOD", "Name" );

      nRC = ActivateMetaOI_ByName( vSubtask, &vObject, 0,
                                   zREFER_LOD_META,
                                   zSINGLE | zLEVEL_APPLICATION,
                                   szObjectName, 0 );
      if ( nRC == -1 )
      {
         zstrcpy( szWorkString,
                  "Activate failed on the Object - " );
         zstrcat( szWorkString, szIncludeObject );
         zstrcat( szWorkString, ", used in this style." );
         MessageSend( vSubtask, "AD10403", "Autodesigner",
                      szWorkString,
                      zMSGQ_OBJECT_CONSTRAINT_ERROR, zBEEP );
         SysFreeMemory( selMemory );
         return( -1 );
      }

      // Get the ER_Entity name for this included entity in the user spec
      // LOD, and then find that ER_Entity in the LOD to be included, so
      // that we can get the LOD_Entity name for the included subobject.
      GetViewByName( &vLOD, "LOD_Object", vSubtask, zLEVEL_TASK );
      GetIntegerFromAttribute( &lZKey, vUserSpec, "LOD_Entity", "ZKey" );
      nRC = SetCursorFirstEntityByInteger( vLOD, "LOD_Entity", "ZKey", lZKey, 0 );
      GetStringFromAttribute( szER_Entity, vLOD, "ER_Entity", "Name" );

      nRC = SetCursorFirstEntityByString( vObject, "ER_Entity",
                                          "Name", szER_Entity, "LOD" );

      if ( nRC < zCURSOR_SET )
         nRC = SetCursorFirstEntity( vUserSpec, "I_LOD_Attribute", "UIS_Entity" );

      if ( nRC != zCURSOR_NULL )
      {
         // Position on the entity in the LOD and then on the key attribute
         // for that entity.  Use that attribute name for szAttribName, which
         // will be used in the ACTIVATE qualifications.
         // If the Autodesign style is "General" (no list window), then
         // I_LOD_Entity does not exist, so use ER_Entity.  Otherwise, use
         // the I_LOD_Entity entry set up for the list.
         GetViewByName( &vTZADWWKO, "TZADWWKO", vSubtask, zLEVEL_TASK );
         lZKey = 0;
         if ( CompareAttributeToString( vTZADWWKO, "AutoDesignWork",
                                        "WDOD_Style", "G" ) == 0 )
            GetIntegerFromAttribute( &lZKey, vUserSpec, "ER_Entity", "ZKey" );
         else
         if ( CheckExistenceOfEntity( vUserSpec, "I_LOD_Entity" ) >= zCURSOR_SET )
            GetIntegerFromAttribute( &lZKey, vUserSpec, "I_LOD_Entity", "ZKey" );

         if ( lZKey )
         {
            SetCursorFirstEntityByInteger( vLOD, "LOD_Entity", "ZKey", lZKey, 0 );
            SetCursorFirstEntityByString( vLOD, "LOD_Attribute",
                                          "ParticipatesInKey", "Y", 0 );
            GetStringFromAttribute( szAttribName, vLOD,
                                    "ER_Attribute", "Name" );
         }
      }

      if ( CheckExistenceOfEntity( vUserSpec, "ListSubObjLOD" ) >= zCURSOR_SET )
      {
         GetStringFromAttribute( szListObject,
                                 vUserSpec, "ListSubObjLOD", "Name" );
      }

      if ( cSubObjType == 'K' )
      {
         zstrcpy( szListQualifier, "szEntryField" );
      }
      else
      {
         if ( CheckExistenceOfEntity( vUserSpec, "ListViewObjRef" ) >= zCURSOR_SET )
         {
            GetStringFromAttribute( szListVOR,
                                    vUserSpec, "ListViewObjRef", "Name" );

            zstrcpy( szListQualifier, szListVOR );
            zstrcat( szListQualifier, "." );
            zstrcat( szListQualifier, szEntityName );
            zstrcat( szListQualifier, "." );
            zstrcat( szListQualifier, szAttribName );
         }
         else
            szListVOR[ 0 ] = 0;
      }

      if ( cSubObjType == 'P' &&
           zstrcmp( szSourceCode, "ListQualSubObj" ) == 0 )
      {
         GetStringFromAttribute( szOperator, vUserSpec,
                                 "UIS_Include", "SubObjectOperators" );
         if ( szOperator[ 0 ] == 0 )
            zstrcpy( szOperator, "=" );

         zstrcpy( szObjectKeyName, "" );
         zstrcat( szObjectKeyName, szListVOR );
         zstrcat( szObjectKeyName, "." );
         zstrcat( szObjectKeyName, szEntityName );
         zstrcat( szObjectKeyName, "." );
         zstrcat( szObjectKeyName, szAttribName );
         zstrcat( szObjectKeyName, " " );
         zstrcat( szObjectKeyName, szOperator );
         zstrcat( szObjectKeyName, " " );
         zstrcat( szObjectKeyName, "szEntryField" );
      // zstrcat( szObjectKeyName, "\"" );
      }
      else
         zstrcpy( szObjectKeyName, "\"\"" );

      /* Create an operation template. */
      /* Get the information from the editor object about where
         this source code is being called from(ex. from a button),
         and put that information into the operation template. */
      szTemplate[ 0 ] = 0;
      zstrcpy( szTemplate, " \x0D\x0A  \x0D\x0A"
                           "///////////////////////////////////////////////////////////////////////////// "
                           " \x0D\x0A \x0D\x0A   OPERATION: " );
      zstrcat( szTemplate, szSourceCodeName );
      zstrcat( szTemplate, " \x0D\x0A" );
      zstrcat( szTemplate, " \x0D\x0A" );
      zstrcat( szTemplate, "/////////////////////////////////////////////////////////////////////////////" );
      zstrcat( szTemplate, "\r\nDIALOG OPERATION \x0D\x0A" );
      zstrcat( szTemplate, szSourceCodeName );
      zstrcat( szTemplate, "( VIEW vSubtask )" );

      if ( zstrcmp( szSourceCode, "SelectSubObj" ) == 0 )
      {
         zCHAR szSetCursorObjectName[ 34 ];

         // First get the second object needed in the Activate to retrieve
         // the entity name from that object, which might be different than
         // the entity name in vObject.
         // In this case, we also recreate the szListQualifier string.
         nRC = ActivateMetaOI_ByName( vSubtask, &vObject2, 0,
                                      zREFER_LOD_META,
                                      zSINGLE | zLEVEL_APPLICATION,
                                      szIncludeObject, 0 );
         if ( nRC >= 0 )
         {
            GetIntegerFromAttribute( &lZKey, vObject, "ER_Entity", "ZKey" );
            SetCursorFirstEntityByInteger( vObject2, "ER_Entity", "ZKey",
                                           lZKey, "LOD" );
            GetStringFromAttribute( szSubobjEntity, vObject2, "LOD_Entity", "Name" );
            zstrcpy( szListQualifier, szListVOR );
            zstrcat( szListQualifier, "." );
            zstrcat( szListQualifier, szSubobjEntity );
            zstrcat( szListQualifier, "." );
            zstrcat( szListQualifier, szAttribName );
         }

         zstrcat( szTemplate, "\r\n" );

         // If the view for the include list is not the same as the view
         // for the include view itself, we will add the include view.
         if ( zstrcmp( szIncludeVOR, szIncludeListVOR ) != 0 )
         {
            zstrcat( szTemplate, "\r\n" );
            zstrcat( szTemplate, "   VIEW " );
            zstrcat( szTemplate, szIncludeVOR );
            zstrcat( szTemplate, " BASED ON LOD " );
            zstrcat( szTemplate, szIncludeObject );
         }

         // Now comes the VIEW statement that is the target of the include.
         // Only add it if it is differenct from the target.
         if ( zstrcmp( szObjectName, szListVOR ) != 0 )
         {
            zstrcat( szTemplate, "\r\n" );
            zstrcat( szTemplate, "   VIEW " );
            zstrcat( szTemplate, szObjectName );
            zstrcat( szTemplate, " REGISTERED AS " );
            zstrcat( szTemplate, szObjectName );
         }

         // Add the temporary view for the SET CURSOR statement.
         zstrcpy( szSetCursorObjectName, szObjectName );
         zstrcat( szSetCursorObjectName, "T" );
         szSetCursorObjectName[ 32 ] = 0;
         zstrcat( szTemplate, "\r\n" );
         zstrcat( szTemplate, "   VIEW " );
         zstrcat( szTemplate, szSetCursorObjectName );
         zstrcat( szTemplate, " BASED ON LOD " );
         zstrcat( szTemplate, szObjectName );

         // Add the view for the parent window subtask.
         zstrcat( szTemplate, "\r\n" );
         zstrcat( szTemplate, "   VIEW ParentWindow" );

         // Finally we have the VIEW statement for the list LOD.
         zstrcat( szTemplate, "\r\n" );
         zstrcat( szTemplate, "   VIEW " );
         zstrcat( szTemplate, szListVOR );
         zstrcat( szTemplate, " BASED ON LOD " );
         zstrcat( szTemplate, szListObject );

         /* If the include type is Key entry then create the code for
            GetCtrlText. */
         if ( cSubObjType == 'K' )
         {
            zstrcat( szTemplate, "\r\n\r\n" );
            zstrcat( szTemplate, "   STRING( 50 ) szEntryField \r\n\r\n" );
            zstrcat( szTemplate,
            "   GetCtrlText( vSubtask, \"EntryField\", szEntryField, 50 )" );
         }

         zstrcat( szTemplate, "\r\n\r\n" );

         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode, szTemplate,
                                     vUserSpec, vObject );
         if ( nRC >= 0 )
         {
            zstrcat( szTemplate, "   GET VIEW " );
            zstrcat( szTemplate, szListVOR );
            zstrcat( szTemplate, " NAMED \"" );
            zstrcat( szTemplate, szListVOR );
            zstrcat( szTemplate, "\"" );

            zstrcat( szTemplate, "\r\n\r\n" );
            zstrcat( szTemplate, "   IF RESULT > 0 " );
            zstrcat( szTemplate, "\r\n" );
            zstrcat( szTemplate, "     IF " );
            zstrcat( szTemplate, szListVOR );
            zstrcat( szTemplate, "." );
            zstrcat( szTemplate, szSubobjEntity );
            zstrcat( szTemplate, " EXISTS " );

            // Add a check to see if the entity to be included already exists
            // in the target.
            // Currently, we will only do this for Case 3.
            if ( cSubObjType == '3' )
            {
               zVIEW  vTempObject;

               CreateViewFromViewForTask( &vTempObject, vObject, 0 );
               SetCursorFirstEntityByString( vTempObject, "LOD_Entity", "Name",
                                             szEntityName, 0 );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "       CreateViewFromViewForTask( " );
               zstrcat( szTemplate, szSetCursorObjectName );
               zstrcat( szTemplate, ", " );
               zstrcat( szTemplate, szObjectName );
               zstrcat( szTemplate, " )" );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "       SET CURSOR FIRST  " );
               zstrcat( szTemplate, szSetCursorObjectName );
               zstrcat( szTemplate, "." );
               zstrcat( szTemplate, szEntityName );
   #if 0
            // Add WITHIN for Case 4, since we must set cursor within the
            // parent of the Assoc entity.
            if ( cSubObjType == '4' )
            {
               zCHAR szWithinEntityName[ 33 ];
               zVIEW vUserSpecWithin;

               CreateViewFromViewForTask( &vUserSpecWithin, vUserSpec, 0 );
               ResetViewFromSubobject( vUserSpecWithin );
               ResetViewFromSubobject( vUserSpecWithin );
               GetStringFromAttribute( szWithinEntityName,
                                       vUserSpecWithin, "LOD_Entity", "Name" );
               DropView( vUserSpecWithin );
               zstrcat( szTemplate, " WITHIN " );
               zstrcat( szTemplate, szObjectName );
               zstrcat( szTemplate, "." );
               zstrcat( szTemplate, szWithinEntityName );
            }
   #endif

               zstrcat( szTemplate, " WHERE " );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "             " );
               // Go to add the qualification to the where.
               AddQualToWhere( vSubtask, szTemplate, vTempObject, szSetCursorObjectName,
                               szListVOR, szSubobjEntity );
               DropView( vTempObject );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "       IF RESULT < zCURSOR_SET  " );
            }


            // If the view for the include list is not the same as the view
            // for the include view itself, we will add the Activate for the
            // include view.
            if ( zstrcmp( szIncludeVOR, szIncludeListVOR ) != 0 )
            {
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "         ACTIVATE " );
               zstrcat( szTemplate, szIncludeVOR );
               zstrcat( szTemplate, "  WHERE " );
               zstrcat( szTemplate, "\r\n" );

               // Go to add the qualification to the where.
               AddQualToWhere( vSubtask, szTemplate, vObject2, szIncludeVOR,
                               szListVOR, szSubobjEntity );

               zstrcat( szTemplate, "\r\n" );
               CL( szTemplate, "         IF RESULT < 0", "", "", "", "" );
               CL( szTemplate, "            MessageSend( vSubtask,", "", "", "", "" );
               CL( szTemplate, "                          \"AD002\",", "", "", "", "" );
               CL( szTemplate, "                          \"Select Processing\",", "", "", "", "" );
               CL( szTemplate, "                          \"Selected entry does not exist.\",", "", "", "", "" );
               CL( szTemplate, "                          zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )", "", "", "", "" );
               CL( szTemplate, "            RETURN -1 ", "", "", "", "" );
               CL( szTemplate, "         END", "", "", "", "" );
            }

            /* Get the cardinality */
            /* If this object is a work object then it will not have
               ER_RelLink, default szCardinality to many. */
            if ( CheckExistenceOfEntity( vObject, "ER_RelLink" ) == 0 )
               GetStringFromAttribute( szCardinality, vObject,
                                       "ER_RelLink", "CardMax" );
            else
               szCardinality[ 0 ] = 0; /* many, not 1 */

            if ( zstrcmp( szCardinality, "1" ) == 0 )
            {
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "         IF " );
               zstrcat( szTemplate, szObjectName );
               zstrcat( szTemplate, "." );
               zstrcat( szTemplate, szEntityName );
               zstrcat( szTemplate, " EXISTS" );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "            EXCLUDE " );
               zstrcat( szTemplate, szObjectName );
               zstrcat( szTemplate, "." );
               zstrcat( szTemplate, szEntityName );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "         END" );
            }

            zstrcat( szTemplate, "\r\n" );
            zstrcat( szTemplate, "         INCLUDE " );
            zstrcat( szTemplate, szObjectName );
            zstrcat( szTemplate, "." );
            zstrcat( szTemplate, szEntityName );
            zstrcat( szTemplate, " FROM ");
            zstrcat( szTemplate, szIncludeVOR );
            zstrcat( szTemplate, "." );
            zstrcat( szTemplate, szSubobjEntity );
            zstrcat( szTemplate, "\r\n" );

            // If the view for the include list is not the same as the view
            // for the include view itself, we will drop the include view.
            if ( zstrcmp( szIncludeVOR, szIncludeListVOR ) != 0 )
            {
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "         DropObjectInstance( " );
               zstrcat( szTemplate, szIncludeVOR );
               zstrcat( szTemplate, " )" );
               zstrcat( szTemplate, "\r\n\r\n" );
            }

            // Add unique code for Case 4.
            if ( cSubObjType == '4' )
            {
               zstrcat( szTemplate, "         AcceptSubobject( " );
               zstrcat( szTemplate, szObjectName );
               zstrcat( szTemplate, ", \"" );
               zstrcat( szTemplate, szParentEntityName );
               zstrcat( szTemplate, "\" )" );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "         IF nZRetCode = 0" );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "            GetParentWindow ( ParentWindow, vSubtask ) " );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "            RefreshWindow ( ParentWindow )" );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "            CreateTemporalEntity ( " );
               zstrcat( szTemplate, szObjectName );
               zstrcat( szTemplate, ", \"" );
               zstrcat( szTemplate, szParentEntityName );
               zstrcat( szTemplate, "\", zPOS_AFTER )" );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "             SetFocusToCtrl ( vSubtask, \"" );
               zstrcat( szTemplate, szFirstDataFieldName );
               zstrcat( szTemplate, "\" )" );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "         END" );
               zstrcat( szTemplate, "\r\n" );
            }

            // Add unique code for Case 3.
            if ( cSubObjType == '3' )
            {
               zstrcat( szTemplate, "         GetParentWindow ( ParentWindow, vSubtask ) " );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "         RefreshWindow ( ParentWindow )" );
               zstrcat( szTemplate, "\r\n" );
            }

            if ( cSubObjType == '3' )
            {
               zstrcat( szTemplate, "       END" );
               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "       DropView( " );
               zstrcat( szTemplate, szSetCursorObjectName );
               zstrcat( szTemplate, " )" );
               zstrcat( szTemplate, "\r\n" );
            }

            zstrcat( szTemplate, "     END" );
            zstrcat( szTemplate, "\r\n" );
            zstrcat( szTemplate, "   END" );
         }

         zstrcat( szTemplate, " \r\n\r\nEND  /* END OF OPERATION */" );
      }

      // We may use this on Next/Prev button processing.
      if ( zstrcmp( szSourceCode, "RefreshParentWindow" ) == 0 )
      {
         zstrcat( szTemplate, "\r\n" );
         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode, szTemplate,
                                     vUserSpec, vObject );
         if ( nRC >= 0 )
         {
            zstrcat( szTemplate, "   NAME VIEW vSubtask \"ParentWindow\"" );
         }

         zstrcat( szTemplate, " \r\n\r\nEND  /* END OF OPERATION */" );
      }

      // New processing for root of object.
      if ( zstrcmp( szSourceCode, "ProcessNewOI" ) == 0 )
      {
         zstrcat( szTemplate, "\r\n" );
         zstrcat( szTemplate, "\r\n" );
         CL( szTemplate, "   VIEW ", szObjectName,
             " REGISTERED AS ", szObjectName, "" );
         zstrcat( szTemplate, "\r\n" );

         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode, szTemplate,
                                     vUserSpec, vObject );
         if ( nRC >= 0 )
         {
            CL( szTemplate, "   COMMIT ", szObjectName, "", "", "" );
            CL( szTemplate, "   IF RESULT < 0", "", "", "", "" );
            CL( szTemplate, "      SetWindowActionBehavior ( vSubtask, zWAB_StayOnWindow, \"\", \"\" )", "", "", "", "" );
            CL( szTemplate, "      RETURN -1","","","","" );
            CL( szTemplate, "   END ", "", "", "", "" );
            zstrcat( szTemplate, "\r\n" );
            CL( szTemplate, "   DropView ( ", szObjectName, " )", "", "" );
            CL( szTemplate, "   CreateNewInstance ( vSubtask )", "", "", "", "" );

            // Get name of first edit box to be used on SetFocus.
            SetViewToSubobject( vNewDialog, "CtrlCtrl" );
            nRC = SetCursorFirstEntity( vNewDialog, "Control", 0 );
            while ( nRC >= zCURSOR_SET &&
                  CompareAttributeToString( vNewDialog, "ControlDef", "Tag", "EditBox" ) != 0 )
            {
               nRC = SetCursorNextEntity( vNewDialog, "Control", 0 );
            }
            GetStringFromAttribute( szEditboxName,
                                    vNewDialog, "Control", "Tag" );
            ResetViewFromSubobject( vNewDialog );
            CL( szTemplate, "   SetFocusToCtrl ( vSubtask, \"", szEditboxName, "\" )", "", "" );
         }

         zstrcat( szTemplate, " \r\nEND  /* END OF OPERATION */" );
      }

      // Next and Previous processing for root of object.
      if ( zstrcmp( szSourceCode, "ProcessNextOI" ) == 0 ||
           zstrcmp( szSourceCode, "ProcessPreviousOI" ) == 0 )
      {
         zstrcat( szTemplate, "\r\n" );
         zstrcat( szTemplate, "\r\n" );
         CL( szTemplate, "   VIEW ", szListVOR, " REGISTERED AS ", szListVOR, "" );
         CL( szTemplate, "   VIEW ", szObjectName, " REGISTERED AS ", szObjectName, "" );
         zstrcat( szTemplate, "\r\n" );

         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode, szTemplate,
                                     vUserSpec, vObject );
         if ( nRC >= 0 )
         {
            CL( szTemplate, "   COMMIT ", szObjectName, "", "", "" );
            CL( szTemplate, "   IF RESULT < 0", "", "", "", "" );
            CL( szTemplate, "      SetWindowActionBehavior ( vSubtask, zWAB_StayOnWindow, \"\", \"\" )", "", "", "", "" );
            CL( szTemplate, "      RETURN -1","","","","" );
            CL( szTemplate, "   END ", "", "", "", "" );
            zstrcat( szTemplate, "\r\n" );
            CL( szTemplate, "   DropView ( ", szObjectName, " )", "", "" );
            if ( zstrcmp( szSourceCode, "ProcessNextOI" ) == 0 )
               CL( szTemplate, "   SET CURSOR NEXT ", szListVOR, ".", szEntityName, "" );
            else
               CL( szTemplate, "   SET CURSOR PREVIOUS ", szListVOR, ".", szEntityName, "" );

            CL( szTemplate, "   UpdateExistingInstance ( vSubtask )", "", "", "", "" );
         }

         zstrcat( szTemplate, " \r\nEND  /* END OF OPERATION */" );
      }


      if ( zstrcmp( szSourceCode, "LoadObjForList" ) == 0 )
      {
         zstrcat( szTemplate, "\r\n\r\n" );
         zstrcat( szTemplate, "   VIEW " );
         zstrcat( szTemplate, szIncludeVOR );
         zstrcat( szTemplate, " BASED ON LOD " );
         zstrcat( szTemplate, szIncludeObject );
         zstrcat( szTemplate, "\r\n" );

         zstrcat( szTemplate, "   STRING( 50 ) szEntryField" );
         zstrcat( szTemplate, "\r\n\r\n" );

         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode, szTemplate,
                                     vUserSpec, vObject );
         if ( nRC >= 0 )
         {
            zstrcat( szTemplate,
            "   GetCtrlText( vSubtask, \"EntryField\", szEntryField, 50 )" );
            zstrcat( szTemplate, "\r\n\r\n" );

            zstrcat( szTemplate, "   ACTIVATE " );
            zstrcat( szTemplate, szIncludeVOR );
            zstrcat( szTemplate, " WHERE " );
            zstrcat( szTemplate, szListQualifier );
            zstrcat( szTemplate, " = szEntryField" );
         }

         zstrcat( szTemplate, " \r\n\r\nEND  /* END OF OPERATION */" );
      }

      if ( zstrcmp ( szSourceCode, "ListAllSubObj" ) == 0  ||
           zstrcmp( szSourceCode, "ListQualSubObj" ) == 0 )
      {
         zVIEW vUserSpecRoot;
         zBOOL bListOI_DoesNotExist;

         // We will not create statements for activating the list object if
         // the include views are the same as the view of the UIS itself.
         CreateViewFromViewForTask( &vUserSpecRoot, vUserSpec, 0 );
         ResetView( vUserSpecRoot );
         if ( CheckExistenceOfEntity( vUserSpec, "ListViewObjRef" )    >= zCURSOR_SET &&
            CheckExistenceOfEntity( vUserSpec, "IncludeViewObjRef" ) >= zCURSOR_SET &&
            CompareAttributeToAttribute( vUserSpec,     "IncludeViewObjRef", "ZKey",
                                          vUserSpecRoot, "UIS_ViewObjRef",    "ZKey" ) == 0 &&
            CompareAttributeToAttribute( vUserSpec,     "ListViewObjRef", "ZKey",
                                         vUserSpecRoot, "UIS_ViewObjRef", "ZKey" ) == 0 )
         {
            bListOI_DoesNotExist = FALSE;
         }
         else
            bListOI_DoesNotExist = TRUE;

         DropView( vUserSpecRoot );

         // The following creates the VML for activating the list of entries to include.
         zstrcat( szTemplate, "\r\n" );
         if ( bListOI_DoesNotExist )
         {
            zstrcat( szTemplate, "\r\n" );
            zstrcat( szTemplate, "   VIEW " );
            zstrcat( szTemplate, szListVOR );
            zstrcat( szTemplate, " BASED ON LOD " );
            zstrcat( szTemplate, szListObject );
         }

         // Add unique code for Case 4.
         if ( cSubObjType == '4' )
         {
            zstrcat( szTemplate, "\r\n" );
            zstrcat( szTemplate, "   VIEW " );
            zstrcat( szTemplate, szObjectName );
            zstrcat( szTemplate, " REGISTERED AS " );
            zstrcat( szTemplate, szObjectName );
         }

         if ( bListOI_DoesNotExist )
         {
            if ( CompareAttributeToString( vUserSpec, "WndDesign",
                                           "ListQualFlag", "Y" ) == 0 )
            {
               // Activate SubObjList with Qualification on list.

               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "   STRING( 60 ) QualString " );
            }
         }
         zstrcat( szTemplate, "\r\n" );
         zstrcat( szTemplate, "\r\n" );


         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode, szTemplate,
                                     vUserSpec, vObject );
         if ( nRC >= 0 )
         {
            if ( bListOI_DoesNotExist )
            {
               if ( CompareAttributeToString( vUserSpec, "WndDesign",
                                              "ListQualFlag", "Y" ) == 0 )
               {
                  // Activate SubObjList with Qualification on list.

                  zCHAR szWhereEntityName[ 33 ];
                  zCHAR szWhereAttributeName[ 33 ];
                  zCHAR szLikeFlag[ 2 ];

                  zstrcat( szTemplate, "   GetCtrlText( vSubtask, \"ListQual\", QualString, 60 )" );
//                  zstrcat( szTemplate, "\r\n" );
//                  zstrcat( szTemplate, "\r\n" );

                  zstrcat( szTemplate, "   IF QualString = \"\" " );
                  zstrcat( szTemplate, "\r\n" );
                  zstrcat( szTemplate, "      ACTIVATE " );
                  zstrcat( szTemplate, szListVOR );
                  zstrcat( szTemplate, " RootOnlyMultiple " );
                  zstrcat( szTemplate, "\r\n" );
                  zstrcat( szTemplate, "   ELSE" );
                  zstrcat( szTemplate, "\r\n" );

                  GetStringFromAttribute( szLikeFlag, vUserSpec,
                                          "WndDesign", "ListQualLikeFlag" );
                  if ( szLikeFlag[ 0 ] == 'L' )
                  {
                     zstrcat( szTemplate, "      QualString = QualString + \"%\" " );
                     zstrcat( szTemplate, "\r\n" );
                  }

                  zstrcat( szTemplate, "      ACTIVATE " );
                  zstrcat( szTemplate, szListVOR );
                  zstrcat( szTemplate, " RootOnlyMultiple WHERE " );
                  zstrcat( szTemplate, "\r\n" );

                  // Create the WHERE qualification from the first I_LOD_Attribute
                  // entry for the UIS_Entity.
                  SetCursorFirstEntity( vUserSpec, "I_LOD_Entity", "UIS_Entity" );
                  GetStringFromAttribute( szWhereEntityName,
                                          vUserSpec, "I_LOD_Entity", "Name" );
                  GetStringFromAttribute( szWhereAttributeName,
                                          vUserSpec, "I_ER_Attribute", "Name" );
                  zstrcat( szTemplate, "               " );
                  zstrcat( szTemplate, szListVOR );
                  zstrcat( szTemplate, "." );
                  zstrcat( szTemplate, szWhereEntityName );
                  zstrcat( szTemplate, "." );
                  zstrcat( szTemplate, szWhereAttributeName );
                  zstrcat( szTemplate, "" );
                  if ( szLikeFlag[ 0 ] == 'L' )
                     zstrcat( szTemplate, " LIKE QualString " );
                  else
                     zstrcat( szTemplate, " >= QualString " );

                  zstrcat( szTemplate, "\r\n" );
                  zstrcat( szTemplate, "   END " );
               }
               else
               {

//                  zstrcat( szTemplate, "\r\n\r\n" );

                  // Activate SubObjList with NO Qualification on list.

                  zstrcat( szTemplate, "   ACTIVATE " );
                  zstrcat( szTemplate, szListVOR );
                  if ( CompareAttributeToString( vUserSpec, "UIS_Entity",
                                                 "RootOnlyList", "Y" ) == 0 )
                     zstrcat( szTemplate, " RootOnlyMultiple" );
                  else
                     zstrcat( szTemplate, " Multiple" );

                  if ( zstrcmp( szObjectKeyName, "\"\"" ) != 0 )
                  {
                     zstrcat( szTemplate, " WHERE\r\n                           " );
                     zstrcat( szTemplate, szObjectKeyName );
                  }
               }

               zstrcat( szTemplate, "\r\n\r\n" );
               zstrcat( szTemplate, "   NAME VIEW " );
               zstrcat( szTemplate, szListVOR );
               zstrcat( szTemplate, " \"" );
               zstrcat( szTemplate, szListVOR );
               zstrcat( szTemplate, "\"" );
            }

            // Add unique code for Case 4.
            if ( cSubObjType == '4' )
            {
               zstrcat( szTemplate, "\r\n" );

               // If there is no ListQual window, we will do the CreateTemporalEntity
               // here.  If there is a ListQual window, the Create was done on
               // the Prebuild event.
               if ( CompareAttributeToString( vUserSpec, "WndDesign",
                                              "ListQualFlag", "Y" ) != 0 )
               {
                  zstrcat( szTemplate, "\r\n" );
                  zstrcat( szTemplate, "   CreateTemporalEntity ( " );
                  zstrcat( szTemplate, szObjectName );
                  zstrcat( szTemplate, ", \"" );
                  zstrcat( szTemplate, szParentEntityName );
                  zstrcat( szTemplate, "\", zPOS_AFTER )" );
               }
            }
         }

         zstrcat( szTemplate, " \r\n\r\nEND  /* END OF OPERATION */" );
      }

      // ActivateMainForList operation
      if ( zstrcmp ( szSourceCode, "ActivateMainList" ) == 0 )
      {
         zCHAR szWhereEntityName[ 33 ];
         zCHAR szWhereAttributeName[ 33 ];
         zCHAR szLikeFlag[ 2 ];

         if ( CompareAttributeToString( vUserSpec, "WndDesign", "ListQualFlag",
                                        "Y" ) == 0 )
         {
            // ActivateMainList with Qualification on list.

            zstrcat( szTemplate, "\r\n\r\n" );
            CL( szTemplate, "   VIEW ", szListVOR, " BASED ON LOD ", szListObject, "" );
            CL( szTemplate, "   VIEW ", szObjectName, " BASED ON LOD ", szObjectName, "" );
            CL( szTemplate, "   STRING( 60 ) QualString ", "", "", "", "" );
            CL( szTemplate, "", "", "", "", "" );
         }
         else
         {
            // ActivateMainList with NO Qualification on list.

            // Note below the check for RootOnlyMutliple.  This is set in
            // the UserSpec when the Operation ActivateMainForList operation
            // is initially created.

            // The following creates the VML for activating the list of maint
            // entities.
            CL( szTemplate, "\r\n", "", "", "", "" );
            CL( szTemplate, "   VIEW ", szListVOR, " BASED ON LOD ", szListObject, "" );
            CL( szTemplate, "   VIEW ", szObjectName, " BASED ON LOD ", szObjectName, "" );
            CL( szTemplate, "", "", "", "", "" );
         }


         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode,
                                     szTemplate,
                                     vUserSpec,
                                     vObject );
         if ( nRC >= 0 )
         {
            if ( CompareAttributeToString( vUserSpec, "WndDesign", "ListQualFlag",
                                          "Y" ) == 0 )
            {
               // ActivateMainList with Qualification on list.

               CL( szTemplate, "   GetCtrlText( vSubtask, \"ListQual\", QualString, 60 )", "", "", "", "" );
               CL( szTemplate, "", "", "", "", "" );

               CL( szTemplate, "   IF QualString = \"\" ", "", "", "", "" );
               CL( szTemplate, "      ACTIVATE ", szListVOR, " RootOnlyMultiple ", "", "" );
               CL( szTemplate, "   ELSE", "", "", "", "" );

               GetStringFromAttribute( szLikeFlag, vUserSpec,
                                       "WndDesign", "ListQualLikeFlag" );
               if ( szLikeFlag[ 0 ] == 'L' )
               {
                  CL( szTemplate, "      QualString = QualString + \"%\" ", "", "", "", "" );
               }

               CL( szTemplate, "      ACTIVATE ", szListVOR, " RootOnlyMultiple WHERE ", "", "" );

               // Create the WHERE qualification from the first L_LOD_Attribute
               // entry for the UIS_Entity.
               SetCursorFirstEntity( vUserSpec, "L_LOD_Entity", "UIS_Entity" );
               GetStringFromAttribute( szWhereEntityName,
                                       vUserSpec, "L_LOD_Entity", "Name" );
               GetStringFromAttribute( szWhereAttributeName,
                                       vUserSpec, "L_ER_Attribute", "Name" );
               zstrcat( szTemplate, "               " );
               zstrcat( szTemplate, szListVOR );
               zstrcat( szTemplate, "." );
               zstrcat( szTemplate, szWhereEntityName );
               zstrcat( szTemplate, "." );
               zstrcat( szTemplate, szWhereAttributeName );
               zstrcat( szTemplate, "" );
               if ( szLikeFlag[ 0 ] == 'L' )
                  zstrcat( szTemplate, " LIKE QualString " );
               else
                  zstrcat( szTemplate, " >= QualString " );

               zstrcat( szTemplate, "\r\n" );
               zstrcat( szTemplate, "   END " );
               zstrcat( szTemplate, "\r\n" );
            }
            else
            {
               // ActivateMainList with NO Qualification on list.

               // Note below the check for RootOnlyMutliple.  This is set in
               // the UserSpec when the Operation ActivateMainForList operation
               // is initially created.

               // The following creates the VML for activating the list of maint
               // entities.

               if ( CompareAttributeToString( vUserSpec, "UIS_Entity",
                                              "RootOnlyList", "Y" ) == 0 )
                  CL( szTemplate, "   ACTIVATE ", szListVOR, " RootOnlyMultiple ", "", "" );
               else
                  CL( szTemplate, "   ACTIVATE ", szListVOR, " Multiple ", "", "" );
            }

            // Create the WHERE qualification for repositioning the list view
            // on the entity last updated.
            SetCursorFirstEntity( vUserSpec, "LOD_Entity", "UIS_Entity" );
            GetStringFromAttribute( szWhereEntityName,
                                    vUserSpec, "LOD_Entity", "Name" );

            CL( szTemplate, "", "", "", "", "" );
            CL( szTemplate, "   GET VIEW ", szObjectName, " NAMED \"", szObjectName, "\"" );
            CL( szTemplate, "   IF RESULT >= 0", "", "", "", "" );
            CL( szTemplate, "      IF ", szListVOR, ".", szWhereEntityName, " EXISTS" );
            CL( szTemplate, "         SET CURSOR FIRST ", szListVOR, ".", szWhereEntityName, " WHERE" );
            AddQualToWhere( vSubtask, szTemplate,
                           vObject,
                           szObjectName,
                           szListVOR, 0 );
            CL( szTemplate, "", "", "", "", "" );
            CL( szTemplate, "      END", "", "", "", "" );
            CL( szTemplate, "      DropView ( ", szObjectName, " )", "", "" );
            CL( szTemplate, "   END", "", "", "", "" );
            CL( szTemplate, "", "", "", "", "" );
            CL( szTemplate, "   NAME VIEW ", szListVOR, " \"", szListVOR, "\"" );
         }

         zstrcat( szTemplate, " \r\nEND  /* END OF OPERATION */" );
      }

      // UpdateExistingInstance operation
      if ( zstrcmp ( szSourceCode, "UpdateExistingInstance" ) == 0 )
      {
         // The following creates the VML for activating the main object
         // instance from the list object.
         zstrcat( szTemplate, "\r\n\r\n" );
         CL( szTemplate, "   VIEW ", szListVOR, " REGISTERED AS ", szListVOR, "" );
         CL( szTemplate, "   VIEW ", szObjectName, " BASED ON LOD ", szObjectName, "" );
         zstrcat( szTemplate, "\r\n" );

         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode, szTemplate,
                                     vUserSpec, vObject );
         if ( nRC >= 0 )
         {
            CL( szTemplate, "   ACTIVATE ", szObjectName, "  Single WHERE ", "", "" );

            // Go to add the qualification to the where.
            AddQualToWhere( vSubtask, szTemplate, vObject, szObjectName, szListVOR, 0 );
            zstrcat( szTemplate, "\r\n\r\n" );
            CL( szTemplate, "   NAME VIEW ", szObjectName, " \"", szObjectName, "\"" );
         }

         zstrcat( szTemplate, " \r\nEND  /* END OF OPERATION */" );
      }

      // CreateNewInstance operation
      if ( zstrcmp ( szSourceCode, "CreateNewInstance" ) == 0 )
      {
         // The following creates the VML for activating an empty object
         // instance for the object.
         zstrcat( szTemplate, "\r\n\r\n" );
         CL( szTemplate, "   VIEW ", szObjectName, " BASED ON LOD ", szObjectName, "" );
         zstrcat( szTemplate, "\r\n" );

         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode,
                                     szTemplate,
                                     vUserSpec,
                                     vObject );
         if ( nRC >= 0 )
         {
            CL( szTemplate, "   ACTIVATE ", szObjectName, "  EMPTY", "", "" );
            CL( szTemplate, "   NAME VIEW ", szObjectName, " \"", szObjectName, "\"" );
            GetStringFromAttribute( szEntityName,
                                    vUserSpec, "LOD_Entity", "Name" );
            CL( szTemplate, "   CREATE ENTITY ", szObjectName, ".", szEntityName, "" );
         }

         zstrcat( szTemplate, " \r\nEND  /* END OF OPERATION */" );
      }

      // DeleteInstance operation
      if ( zstrcmp( szSourceCode, "DeleteInstance" ) == 0 )
      {
         // The following creates the VML for deleting the OI from memory.
         zstrcat( szTemplate, "\r\n\r\n" );
         CL( szTemplate, "   VIEW ", szObjectName, " REGISTERED AS ", szObjectName, "" );
         zstrcat( szTemplate, "\r\n" );

         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode, szTemplate,
                                     vUserSpec, vObject );
         if ( nRC >= 0 )
         {
            CL( szTemplate, "   DropObjectInstance ( ", szObjectName, " )", "", "" );
         }

         zstrcat( szTemplate, " \r\nEND  /* END OF OPERATION */" );
      }

      // SaveInstance operation
      if ( zstrcmp ( szSourceCode, "SaveInstance" ) == 0 )
      {
         // The following creates the VML for deleting the OI from memory.
         zstrcat( szTemplate, "\r\n\r\n" );
         CL( szTemplate, "   VIEW ", szObjectName, " REGISTERED AS ", szObjectName, "" );
         zstrcat( szTemplate, "\r\n" );


         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode, szTemplate,
                                     vUserSpec, vObject );
         if ( nRC >= 0 )
         {
            GetStringFromAttribute( szEntityName,
                                    vUserSpec, "LOD_Entity", "Name" );
            CL( szTemplate, "   AcceptSubobject ( ", szObjectName, ",\"", szEntityName, "\" )" );
            CL( szTemplate, "   IF nZRetCode < 0", "", "", "", "" );
            CL( szTemplate, "      // Message should have been sent by object entity constraint.", "", "", "", "" );
            CL( szTemplate, "      SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, \"\", \"\" )", "", "", "", "" );
            CL( szTemplate, "      RETURN -1", "", "", "", "" );
            CL( szTemplate, "   END", "", "", "", "" );
            zstrcat( szTemplate, "\r\n" );
            CL( szTemplate, "   COMMIT ", szObjectName, "", "", "" );
            zstrcat( szTemplate, "\r\n" );
            CL( szTemplate, "   IF RESULT < 0", "", "", "", "" );
            CL( szTemplate, "      SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, \"\", \"\" )", "", "", "", "" );
            CL( szTemplate, "   END", "", "", "", "" );
         }

         zstrcat( szTemplate, " \r\nEND  /* END OF OPERATION */" );
      }

      // DeleteObjectEntityFromList and DeleteObjectEntity
      if ( zstrcmp ( szSourceCode, "DeleteObjectEntityFromList" ) == 0 ||
           zstrcmp ( szSourceCode, "DeleteObjectEntity" ) == 0 )
      {
         zCHAR szWhereEntityName[ 33 ];

         // The following creates the VML for deleting an object instance
         // based on the entry selected from a list box or from the entity
         // currently being updated.
         zstrcat( szTemplate, "\r\n\r\n" );

         if ( szListVOR[ 0 ] != 0 )
            CL( szTemplate, "   VIEW    ", szListVOR, " REGISTERED AS ", szListVOR, "" );

         if ( zstrcmp ( szSourceCode, "DeleteObjectEntityFromList" ) == 0 )
         {
            CL( szTemplate, "   VIEW    ", szObjectName, " BASED ON LOD ", szObjectName, "" );
         }
         else
         {
            CL( szTemplate, "   VIEW    ", szObjectName, " REGISTERED AS ", szObjectName, "" );
         }

         CL( szTemplate, "   INTEGER nRC", "", "", "", "" );
         zstrcat( szTemplate, "\r\n" );


         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode,
                                     szTemplate,
                                     vUserSpec,
                                     vObject );
         if ( nRC >= 0 )
         {
            GetStringFromAttribute( szWhereEntityName,
                                    vUserSpec, "LOD_Entity", "Name" );
            CL( szTemplate, "   nRC = MessagePrompt( vSubtask,", "", "", "", "" );
            CL( szTemplate, "                        \"AD001\",", "", "", "", "" );
            CL( szTemplate, "                        \"Delete Processing\",", "", "", "", "" );
            CL( szTemplate, "                        \"OK to continue with Delete?\",", "", "", "", "" );
            CL( szTemplate, "                        0,", "", "", "", "" );
            CL( szTemplate, "                        zBUTTONS_YESNO,", "", "", "", "" );
            CL( szTemplate, "                        zRESPONSE_NO,", "", "", "", "" );
            CL( szTemplate, "                        0 )", "", "", "", "" );
            CL( szTemplate, "   IF nRC = zRESPONSE_YES", "", "", "", "" );

            if ( zstrcmp ( szSourceCode, "DeleteObjectEntityFromList" ) == 0 )
            {
               CL( szTemplate, "", "", "", "", "" );
               CL( szTemplate, "      ACTIVATE ", szObjectName, "  Single WHERE ", "", "" );

               // Go to add the qualification to the where.
               AddQualToWhere( vSubtask, szTemplate,
                              vObject,
                              szObjectName,
                              szListVOR, 0 );

               CL( szTemplate, "", "", "", "", "" );
               CL( szTemplate, "      NAME VIEW ", szObjectName, " \"", szObjectName, "\"" );
               CL( szTemplate, "", "", "", "", "" );
            }

            CL( szTemplate, "      DELETE ENTITY ", szObjectName, ".", szWhereEntityName, "" );
            CL( szTemplate, "      COMMIT ", szObjectName, "", "", "" );
            CL( szTemplate, "", "", "", "", "" );
            CL( szTemplate, "      IF RESULT < 0", "", "", "", "" );
            CL( szTemplate, "         SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, \"\", \"\" )", "", "", "", "" );
            CL( szTemplate, "         RETURN -1", "", "", "", "" );
            CL( szTemplate, "      ELSE", "", "", "", "" );

            if ( szListVOR[ 0 ] != 0 )
               CL( szTemplate, "         DELETE ENTITY ", szListVOR, ".", szWhereEntityName, "" );

            CL( szTemplate, "         DropView( ", szObjectName, " )", "", "" );
            CL( szTemplate, "      END", "", "", "", "" );
            CL( szTemplate, "", "", "", "", "" );
            CL( szTemplate, "   ELSE", "", "", "", "" );
            CL( szTemplate, "      SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, \"\", \"\" )", "", "", "", "" );
            CL( szTemplate, "   END", "", "", "", "" );
            CL( szTemplate, "", "", "", "", "" );
         }

         zstrcat( szTemplate, " \r\nEND  /* END OF OPERATION */" );
      }

      // ListSub for Case 5/6 operation
      if ( zstrcmp ( szSourceCode, "ListSub" ) == 0 )
      {
         zstrcat( szTemplate, "\r\n" );

         // Loop for each sub entity to the Assoc entity and create a VIEW
         // entry for each Case 5/6 entity.
         nRC = SetCursorFirstEntity( vUserSpec, "UIS_Entity", 0 );
         while ( nRC >= zCURSOR_SET )
         {
            GetStringFromAttribute( szCase, vUserSpec,
                                    "UIS_Entity", "AutodesignCaseType" );
            if ( szCase[ 0 ] == '5' || szCase[ 0 ] == '6' )
            {
               GetStringFromAttribute( szListVOR, vUserSpec,
                                       "ListViewObjRef", "Name" );
               GetStringFromAttribute( szListObject, vUserSpec,
                                       "ListSubObjLOD", "Name" );

               // It is possible that two Case 5/6 entries use the same List view.
               // We must thus check to see if this List View has been used
               // prior.  We will do this by looping backwards from our current
               // UIS_Entity position to find a match.
               nMatchFlag = 0;
               CreateViewFromViewForTask( &vTempUIS, vUserSpec, 0 );
               nRC = SetCursorPrevEntity( vTempUIS, "UIS_Entity", 0 );
               while ( nRC >= zCURSOR_SET )
               {
                  GetStringFromAttribute( szWkCase,
                                          vTempUIS, "UIS_Entity", "AutodesignCaseType" );
                  if ( (szWkCase[ 0 ] == '5' || szWkCase[ 0 ] == '6') &&
                       CompareAttributeToAttribute( vTempUIS,
                                                    "ListViewObjRef",
                                                    "Name",
                                                     vUserSpec,
                                                    "ListViewObjRef",
                                                    "Name" ) == 0 )
                  {
                     nMatchFlag = 1;
                  }

                  nRC = SetCursorPrevEntity( vTempUIS, "UIS_Entity", 0 );
               }

               DropView( vTempUIS );

               if ( nMatchFlag == 0 )
               {
                  zstrcat( szTemplate, "\r\n" );
                  zstrcat( szTemplate, "   VIEW " );
                  zstrcat( szTemplate, szListVOR );
                  zstrcat( szTemplate, " BASED ON LOD " );
                  zstrcat( szTemplate, szListObject );
               }
            }

            nRC = SetCursorNextEntity( vUserSpec, "UIS_Entity", 0 );
         }

         zstrcat( szTemplate, "\r\n\r\n" );

         // Call the user exit, if it exists.
         nRC = UserPostVariableExit( szSourceCode, szTemplate,
                                     vUserSpec, vObject );
         if ( nRC >= 0 )
         {
            // Loop for each sub entity to the Assoc entity and create the IF
            // and ACTIVATE entries for each Case 5/6 entity.
            nRC = SetCursorFirstEntity( vUserSpec, "UIS_Entity", 0 );
            while ( nRC >= zCURSOR_SET )
            {
               GetStringFromAttribute( szCase, vUserSpec,
                                       "UIS_Entity", "AutodesignCaseType" );
               if ( szCase[ 0 ] == '5' || szCase[ 0 ] == '6' )
               {
                  GetStringFromAttribute( szListVOR, vUserSpec,
                                          "ListViewObjRef", "Name" );
                  GetStringFromAttribute( szListObject, vUserSpec,
                                          "ListSubObjLOD", "Name" );

                  // It is possible that two Case 5/6 entries use the same List view.
                  // We must thus check to see if this List View has been used
                  // prior.  We will do this by looping backwards from our current
                  // UIS_Entity position to find a match.
                  nMatchFlag = 0;
                  CreateViewFromViewForTask( &vTempUIS, vUserSpec, 0 );
                  nRC = SetCursorPrevEntity( vTempUIS, "UIS_Entity", 0 );
                  while ( nRC >= zCURSOR_SET )
                  {
                     GetStringFromAttribute( szWkCase,
                                             vTempUIS, "UIS_Entity", "AutodesignCaseType" );
                     if ( (szWkCase[ 0 ] == '5' || szWkCase[ 0 ] == '6') &&
                          CompareAttributeToAttribute( vTempUIS,
                                                       "ListViewObjRef",
                                                       "Name", vUserSpec,
                                                       "ListViewObjRef",
                                                       "Name" ) == 0 )
                     {
                        nMatchFlag = 1;
                     }

                     nRC = SetCursorPrevEntity( vTempUIS, "UIS_Entity", 0 );
                  }

                  DropView( vTempUIS );

                  if ( nMatchFlag == 0 )
                  {
                     zstrcat( szTemplate, "   GET VIEW " );
                     zstrcat( szTemplate, szListVOR );
                     zstrcat( szTemplate, " NAMED \"" );
                     zstrcat( szTemplate, szListVOR );
                     zstrcat( szTemplate, "\"" );
                     zstrcat( szTemplate, "\r\n" );

                     zstrcat( szTemplate, "   IF RESULT < 0" );
                     zstrcat( szTemplate, "\r\n" );
                     zstrcat( szTemplate, "      ACTIVATE " );
                     zstrcat( szTemplate, szListVOR );
                     zstrcat( szTemplate, " RootOnlyMultiple" );

                     zstrcat( szTemplate, "\r\n" );
                     zstrcat( szTemplate, "      NAME VIEW " );
                     zstrcat( szTemplate, szListVOR );
                     zstrcat( szTemplate, " \"" );
                     zstrcat( szTemplate, szListVOR );
                     zstrcat( szTemplate, "\"" );
                     zstrcat( szTemplate, "\r\n" );
                     zstrcat( szTemplate, "   END" );
                     zstrcat( szTemplate, "\r\n\r\n" );
                  }
               }

               nRC = SetCursorNextEntity( vUserSpec, "UIS_Entity", 0 );
            }
         }

         zstrcat( szTemplate, " \r\n\r\nEND  /* END OF OPERATION */" );
         ResetViewFromSubobject( vUserSpec );
      }

      // lLth has the length of the generated code prior to the adding of
      // the current Operation code. We will thus add the length of the
      // Template to get the length of the new combined code.
      TemplateLth = zstrlen( szTemplate );
      lLth += TemplateLth;

      selMemory1 = SysAllocMemory( (zCOREMEM) &lpMemory1, lLth + 1,
                                   0, zCOREMEM_ALLOC, 0 );

      zstrcpy( lpMemory1, lpMemory );
      zstrcat( lpMemory1, szTemplate );

      // Add the EOF character to buffer.
      lpMemory1[ lLth - 1 ] = '\x1A';

      // Reposition to the beginning of the file.
#ifdef __WIN32__
      // Reposition to the beginning of the file.
      SetFilePointer( (HANDLE) fh, 0, 0, FILE_BEGIN );

      WriteFile( (HANDLE) fh, lpMemory1, lLth, &lRC, 0 );
#else
      // Reposition to the beginning of the file.
      _llseek( (int) fh, 0L, SEEK_SET );

      // Truncate the file by writing 0 bytes.
      _lwrite( (int) fh, (zPCHAR) "", 0 );
      lRC = (zLONG) _lwrite((int)fh, lpMemory1, (zUSHORT) lLth );
#endif

      // Write out the contents of the buffer to the file.
      if ( lLth != lRC )
      {
         zstrcat( szFileSpec, "\n\nAttempt to write " );
         zltoa( lLth, &szFileSpec[ zstrlen( szFileSpec ) ] );
         zstrcat( szFileSpec, " bytes." );
         MessageSend( vSubtask, "AD10405", "Autodesigner",
                      szFileSpec,
                      zMSGQ_OBJECT_CONSTRAINT_ERROR, zBEEP );
      }

      DropView( vObject );
      SysFreeMemory( selMemory1 );
   }

   SysFreeMemory( selMemory );
   SysCloseFile( vUserSpec, fh, 0 );

// TraceLineS("END", "CreateSourceCode W7" );
   return( 0 );
}
