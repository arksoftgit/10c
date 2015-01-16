#define KZSYSSVC_INCL
#include "KZOENGAA.H" 
#include "ZDRVROPR.H" 
 
#ifdef __cplusplus
extern "C"
{
#endif
 
#include "ZEIDONOP.H"

zSHORT zwTZCMLPLD_ExternalLPLR( zVIEW* );
zSHORT zwTZCMLPLD_CheckDuplicateName( zVIEW, zVIEW, zVIEW );
zSHORT zwTZCMLPLD_CheckDuplicateERD_TE( zVIEW, zVIEW, zVIEW );
zSHORT zwTZCMLPLD_CheckDuplicatePPE( zVIEW, zVIEW, zVIEW );
zSHORT zwTZCMLPLD_SearchOldXLPs( zVIEW, zVIEW, zPCHAR );
zSHORT zwTZCMLPLD_LoadRefreshListForCPL( zVIEW, zVIEW, zPCHAR );
zSHORT zwTZCMLPLD_OptionRefreshFromRepo( zVIEW, zVIEW*, zPCHAR, zSHORT );
zSHORT zwTZCMLPLD_GetZeidonApp( zVIEW, zVIEW*, zPCHAR );
zSHORT zwTZCMLPLD_UpdateWorkDirectory( zVIEW, zVIEW );
zSHORT zwTZCMLPLD_GetWorkDir( zVIEW, zPCHAR );
zSHORT zwTZCMLPLD_RebuildMetaLists( zVIEW* );

zOPER_EXPORT zSHORT OPERATION
DELETE_User( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
GOTO_UpdateUserZKeys( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
CLOSE_UsersForLPLR( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
ACCEPT_User( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
INITIALIZE_UserStartingGenZKey( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
ANALYZE_MinMaxZKeyValues( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
SAVE_UsersForLPLR( zVIEW     ViewToWindow );


//:DIALOG OPERATION
//:DELETE_User( VIEW ViewToWindow )

//:   VIEW TZCMULWO REGISTERED AS TZCMULWO
zOPER_EXPORT zSHORT OPERATION
DELETE_User( zVIEW     ViewToWindow )
{
   zVIEW     TZCMULWO = 0; 
   zSHORT    RESULT; 
   //:SHORT nRC
   zSHORT    nRC = 0; 

   RESULT = GetViewByName( &TZCMULWO, "TZCMULWO", ViewToWindow, zLEVEL_TASK );

   //:// Delete the selected User after a prompt.
   //:nRC = MessagePrompt( ViewToWindow, "", "Configuration Management",
   //:                     "OK to delete selected User?", 1, zBUTTONS_YESNO,
   //:                     zRESPONSE_YES, 0 )
   nRC = MessagePrompt( ViewToWindow, "", "Configuration Management", "OK to delete selected User?", 1, zBUTTONS_YESNO, zRESPONSE_YES, 0 );
   //:IF nRC = zRESPONSE_YES
   if ( nRC == zRESPONSE_YES )
   { 
      //:DELETE ENTITY TZCMULWO.User NONE
      RESULT = DeleteEntity( TZCMULWO, "User", zREPOS_NONE );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:GOTO_UpdateUserZKeys( VIEW ViewToWindow )

//:   VIEW TZCMULWO BASED ON LOD TZCMULWO
zOPER_EXPORT zSHORT OPERATION
GOTO_UpdateUserZKeys( zVIEW     ViewToWindow )
{
   zVIEW     TZCMULWO = 0; 
   //:VIEW TZCMLPLO BASED ON LOD TZCMLPLO
   zVIEW     TZCMLPLO = 0; 
   //:STRING (513) szFileName
   zCHAR     szFileName[ 514 ] = { 0 }; 
   //:STRING (513) szDirectoryName
   zCHAR     szDirectoryName[ 514 ] = { 0 }; 
   //:SHORT nRC
   zSHORT    nRC = 0; 
   zSHORT    RESULT; 


   //:// Activate the TZCMULWO object from a file by the same name, and create it if it doesn't exist.
   //:GET VIEW TZCMLPLO NAMED "TZCMLPLO"
   RESULT = GetViewByName( &TZCMLPLO, "TZCMLPLO", ViewToWindow, zLEVEL_TASK );
   //:szDirectoryName = TZCMLPLO.LPLR.MetaSrcDir
   GetVariableFromAttribute( szDirectoryName, 0, 'S', 514, TZCMLPLO, "LPLR", "MetaSrcDir", "", 0 );
   //:szFileName = szDirectoryName + "\" + "TZCMULWO.POR"
   ZeidonStringCopy( szFileName, 1, 0, szDirectoryName, 1, 0, 514 );
   ZeidonStringConcat( szFileName, 1, 0, "\\", 1, 0, 514 );
   ZeidonStringConcat( szFileName, 1, 0, "TZCMULWO.POR", 1, 0, 514 );
   //:nRC = ActivateOI_FromFile ( TZCMULWO, "TZCMULWO", ViewToWindow, szFileName, 512 )
   nRC = ActivateOI_FromFile( &TZCMULWO, "TZCMULWO", ViewToWindow, szFileName, 512 );
   //:IF nRC < 0
   if ( nRC < 0 )
   { 
      //:ACTIVATE TZCMULWO EMPTY
      RESULT = ActivateEmptyObjectInstance( &TZCMULWO, "TZCMULWO", ViewToWindow, zSINGLE );
      //:NAME VIEW TZCMULWO "TZCMULWO"
      SetNameForView( TZCMULWO, "TZCMULWO", 0, zLEVEL_TASK );
      //:CREATE ENTITY TZCMULWO.Installation
      RESULT = CreateEntity( TZCMULWO, "Installation", zPOS_AFTER );
      //:TZCMULWO.Installation.ZKey = 1
      SetAttributeFromInteger( TZCMULWO, "Installation", "ZKey", 1 );
      //:TZCMULWO.Installation.Name = TZCMLPLO.LPLR.Name
      SetAttributeFromAttribute( TZCMULWO, "Installation", "Name", TZCMLPLO, "LPLR", "Name" );
      //:CommitOI_ToFile( TZCMULWO, szFileName, zASCII )
      CommitOI_ToFile( TZCMULWO, szFileName, zASCII );
      //:ELSE
   } 
   else
   { 
      //:NAME VIEW TZCMULWO "TZCMULWO"
      SetNameForView( TZCMULWO, "TZCMULWO", 0, zLEVEL_TASK );
   } 

   //:END
   return( 0 );
//    
// END
} 


//:DIALOG OPERATION
//:CLOSE_UsersForLPLR( VIEW ViewToWindow )

//:   VIEW TZCMULWO REGISTERED AS TZCMULWO
zOPER_EXPORT zSHORT OPERATION
CLOSE_UsersForLPLR( zVIEW     ViewToWindow )
{
   zVIEW     TZCMULWO = 0; 
   zSHORT    RESULT; 
   //:SHORT nRC
   zSHORT    nRC = 0; 

   RESULT = GetViewByName( &TZCMULWO, "TZCMULWO", ViewToWindow, zLEVEL_TASK );

   //:// Check if the Installation object has been updated, and if so, prompt the User for save.
   //:nRC = ObjectInstanceUpdated( TZCMULWO )
   nRC = ObjectInstanceUpdated( TZCMULWO );
   //:TraceLineI( "OI Updated RC: ", nRC )
   TraceLineI( "OI Updated RC: ", (zLONG) nRC );
   //:IF nRC = 1
   if ( nRC == 1 )
   { 
      //:nRC = MessagePrompt( ViewToWindow, "", "Configuration Management",
      //:                     "User data has been updated. Do you want to save the changes?", 1, zBUTTONS_YESNO,
      //:                     zRESPONSE_YES, 0 )
      nRC = MessagePrompt( ViewToWindow, "", "Configuration Management", "User data has been updated. Do you want to save the changes?", 1, zBUTTONS_YESNO, zRESPONSE_YES, 0 );
      //:IF nRC = zRESPONSE_YES
      if ( nRC == zRESPONSE_YES )
      { 
         //:SAVE_UsersForLPLR( ViewToWindow )
         SAVE_UsersForLPLR( ViewToWindow );
      } 

      //:END
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:ACCEPT_User( VIEW ViewToWindow )

//:   VIEW TZCMULWO REGISTERED AS TZCMULWO
zOPER_EXPORT zSHORT OPERATION
ACCEPT_User( zVIEW     ViewToWindow )
{
   zVIEW     TZCMULWO = 0; 
   zSHORT    RESULT; 
   //:VIEW TZCMULWO2 BASED ON LOD  TZCMULWO
   zVIEW     TZCMULWO2 = 0; 
   //:INTEGER UserPrefix
   zLONG     UserPrefix = 0; 
   zLONG     lTempInteger_0; 

   RESULT = GetViewByName( &TZCMULWO, "TZCMULWO", ViewToWindow, zLEVEL_TASK );

   //:// Make sure User ZKey Prefix is unique.
   //:UserPrefix = TZCMULWO.User.GenerationStartZKeyPrefix 
   GetIntegerFromAttribute( &UserPrefix, TZCMULWO, "User", "GenerationStartZKeyPrefix" );
   //:CreateViewFromView( TZCMULWO2, TZCMULWO )
   CreateViewFromView( &TZCMULWO2, TZCMULWO );
   //:SET CURSOR FIRST TZCMULWO2.User WHERE TZCMULWO2.User.GenerationStartZKeyPrefix = UserPrefix
   RESULT = SetCursorFirstEntityByInteger( TZCMULWO2, "User", "GenerationStartZKeyPrefix", UserPrefix, "" );
   //:SET CURSOR NEXT TZCMULWO2.User WHERE TZCMULWO2.User.GenerationStartZKeyPrefix = UserPrefix
   RESULT = SetCursorNextEntityByInteger( TZCMULWO2, "User", "GenerationStartZKeyPrefix", UserPrefix, "" );
   //:IF RESULT >= zCURSOR_SET
   if ( RESULT >= zCURSOR_SET )
   { 
      //:MessageSend( ViewToWindow, "", "Configuration Management",
      //:             "The User Prefix must be unique.",
      //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Configuration Management", "The User Prefix must be unique.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:DropView( TZCMULWO2 )
      DropView( TZCMULWO2 );
      //:RETURN -1
      return( -1 );
   } 

   //:END

   //:TZCMULWO.User.ZKey = TZCMULWO.User.GenerationStartZKeyPrefix 
   SetAttributeFromAttribute( TZCMULWO, "User", "ZKey", TZCMULWO, "User", "GenerationStartZKeyPrefix" );

   //:// If the Start Zkey is null, set it.
   //:IF TZCMULWO2.User.GenerationStartZKey = ""
   if ( CompareAttributeToString( TZCMULWO2, "User", "GenerationStartZKey", "" ) == 0 )
   { 
      //:TZCMULWO2.User.GenerationStartZKey = UserPrefix * 10000000
      lTempInteger_0 = UserPrefix * 10000000;
      SetAttributeFromInteger( TZCMULWO2, "User", "GenerationStartZKey", lTempInteger_0 );
   } 

   //:END
   //:DropView( TZCMULWO2 )
   DropView( TZCMULWO2 );

   //:AcceptSubobject( TZCMULWO, "User" )
   AcceptSubobject( TZCMULWO, "User" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:INITIALIZE_UserStartingGenZKey( VIEW ViewToWindow )

//:   VIEW TZCMULWO REGISTERED AS TZCMULWO
zOPER_EXPORT zSHORT OPERATION
INITIALIZE_UserStartingGenZKey( zVIEW     ViewToWindow )
{
   zVIEW     TZCMULWO = 0; 
   zSHORT    RESULT; 
   //:VIEW TZCMWKSO REGISTERED AS TZCMWKSO
   zVIEW     TZCMWKSO = 0; 
   //:STRING ( 90 ) szMsg
   zCHAR     szMsg[ 91 ] = { 0 }; 
   //:STRING ( 200 ) szFileName
   zCHAR     szFileName[ 201 ] = { 0 }; 
   //:SHORT nRC
   zSHORT    nRC = 0; 
   zCHAR     szTempString_0[ 33 ]; 
   zCHAR     szTempString_1[ 33 ]; 

   RESULT = GetViewByName( &TZCMULWO, "TZCMULWO", ViewToWindow, zLEVEL_TASK );
   RESULT = GetViewByName( &TZCMWKSO, "TZCMWKSO", ViewToWindow, zLEVEL_TASK );

   //:// KJS 04/24/14 - We don't think we want to be able to reset the starting ZKey. So if there is one, don't
   //:// reset again.
   //:IF TZCMWKSO.LPLR.MaxZKey != ""
   if ( CompareAttributeToString( TZCMWKSO, "LPLR", "MaxZKey", "" ) != 0 )
   { 
      //:szMsg = "The current User, " + TZCMWKSO.User.Name + ", already has it's starting ZKey initialized. You do not need to reset."
      GetVariableFromAttribute( szTempString_0, 0, 'S', 33, TZCMWKSO, "User", "Name", "", 0 );
      ZeidonStringCopy( szMsg, 1, 0, "The current User, ", 1, 0, 91 );
      ZeidonStringConcat( szMsg, 1, 0, szTempString_0, 1, 0, 91 );
      ZeidonStringConcat( szMsg, 1, 0, ", already has it's starting ZKey initialized. You do not need to reset.", 1, 0, 91 );
      //:MessageSend( ViewToWindow, "", "Configuration Management", szMsg, zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Configuration Management", szMsg, zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:RETURN -1
      return( -1 );
   } 

   //:END

   //:// Use the current User Name, which is defined in TZCMWIPO, to position on the corresponding User entry
   //:// in TZCMULWO and use the GenerationStartZKey value there to initialize the ZKey Gen starting value in 
   //:// TZCMWKSO for the current LPLR.
   //:// KJS 02/04/14 - I think we mean to do TZCMULWO not TZCMWKSO which I believe is already set.
   //://SET CURSOR FIRST TZCMWKSO.User WHERE TZCMWKSO.User.Name = TZCMWIPO.ROOT.UserName 
   //://SET CURSOR FIRST TZCMULWO.User WHERE TZCMULWO.User.Name = TZCMWIPO.ROOT.UserName 
   //:// KJS 04/24/14 - Now we are not using TZCMWIPO because we have gotten rid of the login for workstation. Use TZCMWOKS
   //:SET CURSOR FIRST TZCMULWO.User WHERE TZCMULWO.User.Name = TZCMWKSO.User.Name  
   GetStringFromAttribute( szTempString_1, TZCMWKSO, "User", "Name" );
   RESULT = SetCursorFirstEntityByString( TZCMULWO, "User", "Name", szTempString_1, "" );

   //:IF RESULT < zCURSOR_SET
   if ( RESULT < zCURSOR_SET )
   { 
      //:szMsg = "The current User, " + TZCMWKSO.User.Name + ", is not in the list of ZKey Users. Add a 'New User'."
      GetVariableFromAttribute( szTempString_1, 0, 'S', 33, TZCMWKSO, "User", "Name", "", 0 );
      ZeidonStringCopy( szMsg, 1, 0, "The current User, ", 1, 0, 91 );
      ZeidonStringConcat( szMsg, 1, 0, szTempString_1, 1, 0, 91 );
      ZeidonStringConcat( szMsg, 1, 0, ", is not in the list of ZKey Users. Add a 'New User'.", 1, 0, 91 );
      //:MessageSend( ViewToWindow, "", "Configuration Management", szMsg, zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Configuration Management", szMsg, zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:RETURN -1
      return( -1 );
   } 

   //:END
   //:TZCMWKSO.LPLR.MaxZKey = TZCMULWO.User.GenerationStartZKey 
   SetAttributeFromAttribute( TZCMWKSO, "LPLR", "MaxZKey", TZCMULWO, "User", "GenerationStartZKey" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:ANALYZE_MinMaxZKeyValues( VIEW ViewToWindow )

//:   VIEW TZCMLPLO REGISTERED AS TZCMLPLO
zOPER_EXPORT zSHORT OPERATION
ANALYZE_MinMaxZKeyValues( zVIEW     ViewToWindow )
{
   zVIEW     TZCMLPLO = 0; 
   zSHORT    RESULT; 
   //:VIEW vMetaOI
   zVIEW     vMetaOI = 0; 
   //:VIEW vHierMetaOI
   zVIEW     vHierMetaOI = 0; 
   //:STRING ( 255 ) szFullFileName
   zCHAR     szFullFileName[ 256 ] = { 0 }; 
   //:STRING ( 10 )  szSuffix
   zCHAR     szSuffix[ 11 ] = { 0 }; 
   //:STRING ( 32 )  szMetaType
   zCHAR     szMetaType[ 33 ] = { 0 }; 
   //:STRING ( 32 )  szCurrentEntityName
   zCHAR     szCurrentEntityName[ 33 ] = { 0 }; 
   //:STRING ( 32 )  szEntityName
   zCHAR     szEntityName[ 33 ] = { 0 }; 
   //:STRING ( 15 )  szMinZKey
   zCHAR     szMinZKey[ 16 ] = { 0 }; 
   //:STRING ( 15 )  szMaxZKey
   zCHAR     szMaxZKey[ 16 ] = { 0 }; 
   //:STRING ( 200 ) szMsg
   zCHAR     szMsg[ 201 ] = { 0 }; 
   //:INTEGER        hFile
   zLONG     hFile = 0; 
   //:INTEGER        lZKey
   zLONG     lZKey = 0; 
   //:INTEGER        lMinZKey
   zLONG     lMinZKey = 0; 
   //:INTEGER        lMaxZKey
   zLONG     lMaxZKey = 0; 
   //:SHORT          nRC
   zSHORT    nRC = 0; 
   //:SHORT          nHierRC
   zSHORT    nHierRC = 0; 
   //:SHORT          nReturnLevel
   zSHORT    nReturnLevel = 0; 
   zCHAR     szTempString_0[ 33 ]; 

   RESULT = GetViewByName( &TZCMLPLO, "TZCMLPLO", ViewToWindow, zLEVEL_TASK );

   //:// Determine the Min and Max ZKey values for all entities in Dialogs and LODs.
   //:// Process only meta types 7 and 11, LODs and Dialogs.
   //:// Minimum ZKeys are only considered if they are over 10000000, which would be the lowest Zkey
   //:// to be generated for the first User identified as "1", followed by 7 zeros.
   //:lMinZKey = 990000000
   lMinZKey = 990000000;
   //:lMaxZKey = 0
   lMaxZKey = 0;
   //:FOR EACH TZCMLPLO.W_MetaType 
   RESULT = SetCursorFirstEntity( TZCMLPLO, "W_MetaType", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF TZCMLPLO.W_MetaType.Type = 7 OR TZCMLPLO.W_MetaType.Type = 11
      if ( CompareAttributeToInteger( TZCMLPLO, "W_MetaType", "Type", 7 ) == 0 || CompareAttributeToInteger( TZCMLPLO, "W_MetaType", "Type", 11 ) == 0 )
      { 
         //:IF TZCMLPLO.W_MetaType.Type = 7
         if ( CompareAttributeToInteger( TZCMLPLO, "W_MetaType", "Type", 7 ) == 0 )
         { 
            //:szSuffix   = "LOD"
            ZeidonStringCopy( szSuffix, 1, 0, "LOD", 1, 0, 11 );
            //:szMetaType = "TZZOLODO"
            ZeidonStringCopy( szMetaType, 1, 0, "TZZOLODO", 1, 0, 33 );
            //:ELSE
         } 
         else
         { 
            //:szSuffix   = "PWD"
            ZeidonStringCopy( szSuffix, 1, 0, "PWD", 1, 0, 11 );
            //:szMetaType = "TZWDLGSO"
            ZeidonStringCopy( szMetaType, 1, 0, "TZWDLGSO", 1, 0, 33 );
         } 

         //:END

         //:// Process each meta within the type.
         //:FOR EACH TZCMLPLO.W_MetaDef
         RESULT = SetCursorFirstEntity( TZCMLPLO, "W_MetaDef", "" );
         while ( RESULT > zCURSOR_UNCHANGED )
         { 
            //:szFullFileName = TZCMLPLO.LPLR.MetaSrcDir + "\" + TZCMLPLO.W_MetaDef.Name + "." + szSuffix
            GetStringFromAttribute( szFullFileName, TZCMLPLO, "LPLR", "MetaSrcDir" );
            ZeidonStringConcat( szFullFileName, 1, 0, "\\", 1, 0, 256 );
            GetVariableFromAttribute( szTempString_0, 0, 'S', 33, TZCMLPLO, "W_MetaDef", "Name", "", 0 );
            ZeidonStringConcat( szFullFileName, 1, 0, szTempString_0, 1, 0, 256 );
            ZeidonStringConcat( szFullFileName, 1, 0, ".", 1, 0, 256 );
            ZeidonStringConcat( szFullFileName, 1, 0, szSuffix, 1, 0, 256 );
            //:hFile = SysOpenFile( TZCMLPLO, szFullFileName, COREFILE_READ )
            hFile = SysOpenFile( TZCMLPLO, szFullFileName, COREFILE_READ );
            //:IF hFile >= 0
            if ( hFile >= 0 )
            { 
               //:SysCloseFile( TZCMLPLO, hFile, 0 )
               SysCloseFile( TZCMLPLO, hFile, 0 );
               //:nRC = ActivateOI_FromFile ( vMetaOI, szMetaType, ViewToWindow, szFullFileName, 8192 ) // 8192 is zIGNORE_ATTRIB_ERRORS
               nRC = ActivateOI_FromFile( &vMetaOI, szMetaType, ViewToWindow, szFullFileName, 8192 );
               //:IF nRC >= 0
               if ( nRC >= 0 )
               { 
                  //:NAME VIEW vMetaOI "MetaAnalyze"
                  SetNameForView( vMetaOI, "MetaAnalyze", 0, zLEVEL_TASK );

                  //:IF TZCMLPLO.W_MetaType.Type = 7
                  if ( CompareAttributeToInteger( TZCMLPLO, "W_MetaType", "Type", 7 ) == 0 )
                  { 
                     //:szCurrentEntityName = "LOD"
                     ZeidonStringCopy( szCurrentEntityName, 1, 0, "LOD", 1, 0, 33 );
                     //:ELSE
                  } 
                  else
                  { 
                     //:szCurrentEntityName = "Dialog"
                     ZeidonStringCopy( szCurrentEntityName, 1, 0, "Dialog", 1, 0, 33 );
                  } 

                  //:END

                  //:// We have now loaded the meta into memory, so process each entity hierarchically analyzing each ZKey.
                  //:CreateViewFromView( vHierMetaOI, vMetaOI )
                  CreateViewFromView( &vHierMetaOI, vMetaOI );
                  //:DefineHierarchicalCursor( vHierMetaOI, szCurrentEntityName )
                  DefineHierarchicalCursor( vHierMetaOI, szCurrentEntityName );
                  //:nHierRC = zCURSOR_SET
                  nHierRC = zCURSOR_SET;
                  //:LOOP WHILE nHierRC >= zCURSOR_SET
                  while ( nHierRC >= zCURSOR_SET )
                  { 
                     //:nHierRC = SetCursorNextEntityHierarchical( nReturnLevel,
                     //:                                           szCurrentEntityName,
                     //:                                           vHierMetaOI )
                     nHierRC = SetCursorNextEntityHierarchical( (zPUSHORT) &nReturnLevel, szCurrentEntityName, vHierMetaOI );
                     //:IF nHierRC >= zCURSOR_SET
                     if ( nHierRC >= zCURSOR_SET )
                     { 

                        //:// Check Zkey
                        //:GetIntegerFromAttribute( lZKey, vHierMetaOI, szCurrentEntityName, "ZKey" )
                        GetIntegerFromAttribute( &lZKey, vHierMetaOI, szCurrentEntityName, "ZKey" );
                        //:IF lZKey >= 10000000 AND lZKey < lMinZKey
                        if ( lZKey >= 10000000 && lZKey < lMinZKey )
                        { 
                           //:lMinZKey =lZKey
                           lMinZKey = lZKey;
                        } 

                        //:END
                        //:IF lZKey > lMaxZKey
                        if ( lZKey > lMaxZKey )
                        { 
                           //:lMaxZKey =lZKey
                           lMaxZKey = lZKey;
                        } 

                        //:END

                        //:// For recursive subentity, step down a level.
                        //:IF nHierRC = zCURSOR_SET_RECURSIVECHILD
                        if ( nHierRC == zCURSOR_SET_RECURSIVECHILD )
                        { 
                           //:SetViewToSubobject( vHierMetaOI, szCurrentEntityName )
                           SetViewToSubobject( vHierMetaOI, szCurrentEntityName );
                        } 

                        //:END
                     } 

                     //:   
                     //:END
                  } 

                  //:END

                  //:DropView( vHierMetaOI )
                  DropView( vHierMetaOI );
                  //:DropObjectInstance( vMetaOI )
                  DropObjectInstance( vMetaOI );
               } 

               //:END
            } 

            RESULT = SetCursorNextEntity( TZCMLPLO, "W_MetaDef", "" );
            //:END
         } 

         //:END
      } 

      RESULT = SetCursorNextEntity( TZCMLPLO, "W_MetaType", "" );
      //:END
   } 

   //:END

   //:// If lMinZKey is still , then no metas exist and we will reset it to zero.
   //:IF lMinZKey = 990000000
   if ( lMinZKey == 990000000 )
   { 
      //:lMinZKey = 0
      lMinZKey = 0;
   } 

   //:END

   //:TraceLineI( "*** lMinZKey: ", lMinZKey )
   TraceLineI( "*** lMinZKey: ", lMinZKey );
   //:TraceLineI( "*** lMaxZKey: ", lMaxZKey )
   TraceLineI( "*** lMaxZKey: ", lMaxZKey );
   //:szMinZKey = lMinZKey
   ZeidonStringConvertFromNumber( szMinZKey, 1, 0, 15, lMinZKey, (ZDecimal) 0.0, "I" );
   //:szMaxZKey = lMaxZKey
   ZeidonStringConvertFromNumber( szMaxZKey, 1, 0, 15, lMaxZKey, (ZDecimal) 0.0, "I" );
   //:szMsg = "Min and Max ZKeys are " + szMinZKey + " and " + szMaxZKey + "."
   ZeidonStringCopy( szMsg, 1, 0, "Min and Max ZKeys are ", 1, 0, 201 );
   ZeidonStringConcat( szMsg, 1, 0, szMinZKey, 1, 0, 201 );
   ZeidonStringConcat( szMsg, 1, 0, " and ", 1, 0, 201 );
   ZeidonStringConcat( szMsg, 1, 0, szMaxZKey, 1, 0, 201 );
   ZeidonStringConcat( szMsg, 1, 0, ".", 1, 0, 201 );
   //:MessageSend( ViewToWindow, "", "Configuration Management", szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 )
   MessageSend( ViewToWindow, "", "Configuration Management", szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SAVE_UsersForLPLR( VIEW ViewToWindow )

//:   VIEW TZCMULWO REGISTERED AS TZCMULWO
zOPER_EXPORT zSHORT OPERATION
SAVE_UsersForLPLR( zVIEW     ViewToWindow )
{
   zVIEW     TZCMULWO = 0; 
   zSHORT    RESULT; 
   //:VIEW TZCMLPLO BASED ON LOD  TZCMLPLO
   zVIEW     TZCMLPLO = 0; 
   //:STRING (513) szFileName
   zCHAR     szFileName[ 514 ] = { 0 }; 
   //:STRING (513) szDirectoryName
   zCHAR     szDirectoryName[ 514 ] = { 0 }; 
   //:SHORT nRC
   zSHORT    nRC = 0; 

   RESULT = GetViewByName( &TZCMULWO, "TZCMULWO", ViewToWindow, zLEVEL_TASK );

   //:// Save the Installation object with its User List.
   //:GET VIEW TZCMLPLO NAMED "TZCMLPLO"
   RESULT = GetViewByName( &TZCMLPLO, "TZCMLPLO", ViewToWindow, zLEVEL_TASK );
   //:szDirectoryName = TZCMLPLO.LPLR.MetaSrcDir
   GetVariableFromAttribute( szDirectoryName, 0, 'S', 514, TZCMLPLO, "LPLR", "MetaSrcDir", "", 0 );
   //:szFileName = szDirectoryName + "\" + "TZCMULWO.POR"
   ZeidonStringCopy( szFileName, 1, 0, szDirectoryName, 1, 0, 514 );
   ZeidonStringConcat( szFileName, 1, 0, "\\", 1, 0, 514 );
   ZeidonStringConcat( szFileName, 1, 0, "TZCMULWO.POR", 1, 0, 514 );
   //:nRC = CommitOI_ToFile( TZCMULWO, szFileName, zASCII )
   nRC = CommitOI_ToFile( TZCMULWO, szFileName, zASCII );
   //:IF RESULT < 0
   if ( RESULT < 0 )
   { 
      //:MessageSend( ViewToWindow, "", "Configuration Management",
      //:             "An error occurred when writing the file. You will have to repeat the function.",
      //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Configuration Management", "An error occurred when writing the file. You will have to repeat the function.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
   } 

   //:END
   return( 0 );
// END
} 


 
#ifdef __cplusplus
}
#endif
