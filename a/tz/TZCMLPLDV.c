#define KZSYSSVC_INCL
#include "KZOENGAA.H" 
#include "ZDRVROPR.H" 
#include "TZVMLIP.H" 
 
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
PostbuildNewLPLR( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
PostbuildImportLPLR( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
CANCEL_NewLPLR( zVIEW     ViewToWindow );


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


zOPER_EXPORT zSHORT OPERATION
CREATE_NewLPLR( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
SAVE_NewLPLR( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
IMPORT_LPLR( zVIEW     ViewToWindow );


static zSHORT
o_GetZeidonApp( zVIEW     ViewToWindow,
                zPVIEW    vKZAPPLOO,
                zPCHAR    szZeidonDirectory );


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
//:PostbuildNewLPLR( VIEW ViewToWindow )

//:   VIEW TZCMWKSO REGISTERED AS TZCMWKSO
zOPER_EXPORT zSHORT OPERATION
PostbuildNewLPLR( zVIEW     ViewToWindow )
{
   zVIEW     TZCMWKSO = 0; 
   zSHORT    RESULT; 
   //:VIEW TZCMLPLO BASED ON LOD  TZCMLPLO
   zVIEW     TZCMLPLO = 0; 

   RESULT = GetViewByName( &TZCMWKSO, "TZCMWKSO", ViewToWindow, zLEVEL_TASK );

   //:// Initialize an empty LPLO object to hold the keyed in data.
   //:ACTIVATE TZCMLPLO EMPTY 
   RESULT = ActivateEmptyObjectInstance( &TZCMLPLO, "TZCMLPLO", ViewToWindow, zSINGLE );
   //:NAME VIEW TZCMLPLO "TZCMLPLO"
   SetNameForView( TZCMLPLO, "TZCMLPLO", 0, zLEVEL_TASK );
   //:CREATE ENTITY TZCMLPLO.LPLR  
   RESULT = CreateEntity( TZCMLPLO, "LPLR", zPOS_AFTER );

   //:// New Empty LPLR
   //:TZCMLPLO.LPLR.LPLR_Type = 2
   SetAttributeFromInteger( TZCMLPLO, "LPLR", "LPLR_Type", 2 );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:PostbuildImportLPLR( VIEW ViewToWindow )

//:   VIEW TZCMLPLO REGISTERED AS TZCMLPLO
zOPER_EXPORT zSHORT OPERATION
PostbuildImportLPLR( zVIEW     ViewToWindow )
{
   zVIEW     TZCMLPLO = 0; 
   zSHORT    RESULT; 

   RESULT = GetViewByName( &TZCMLPLO, "TZCMLPLO", ViewToWindow, zLEVEL_TASK );
   //:   
   //:// New Imported (external) LPLR
   //:TZCMLPLO.LPLR.LPLR_Type = 3
   SetAttributeFromInteger( TZCMLPLO, "LPLR", "LPLR_Type", 3 );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:CANCEL_NewLPLR( VIEW ViewToWindow )

//:   VIEW TZCMLPLO REGISTERED AS TZCMLPLO
zOPER_EXPORT zSHORT OPERATION
CANCEL_NewLPLR( zVIEW     ViewToWindow )
{
   zVIEW     TZCMLPLO = 0; 
   zSHORT    RESULT; 
   //:VIEW TZCMULWO BASED ON LOD  TZCMULWO
   zVIEW     TZCMULWO = 0; 

   RESULT = GetViewByName( &TZCMLPLO, "TZCMLPLO", ViewToWindow, zLEVEL_TASK );

   //:DropObjectInstance( TZCMLPLO )
   DropObjectInstance( TZCMLPLO );
   //:GET VIEW TZCMULWO NAMED "TZCMULWO"
   RESULT = GetViewByName( &TZCMULWO, "TZCMULWO", ViewToWindow, zLEVEL_TASK );
   //:IF RESULT >= 0
   if ( RESULT >= 0 )
   { 
      //:DropObjectInstance( TZCMULWO )
      DropObjectInstance( TZCMULWO );
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


   //:// If the TZCMULWO doesn't exist, create it.
   //:// Activate the TZCMULWO object from a file by the same name, and create it if it doesn't exist.
   //:GET VIEW TZCMULWO NAMED "TZCMULWO"
   RESULT = GetViewByName( &TZCMULWO, "TZCMULWO", ViewToWindow, zLEVEL_TASK );
   //:IF RESULT < 0 
   if ( RESULT < 0 )
   { 
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
      //:                     "Installation / User data has been updated. Do you want to save the changes?", 1, zBUTTONS_YESNO,
      //:                     zRESPONSE_YES, 0 )
      nRC = MessagePrompt( ViewToWindow, "", "Configuration Management", "Installation / User data has been updated. Do you want to save the changes?", 1, zBUTTONS_YESNO, zRESPONSE_YES, 0 );
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

//:   VIEW TZCMULWO  REGISTERED AS TZCMULWO
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
   //:STRING (  90 ) szMsg
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
   //:VIEW TZCMULWO REGISTERED AS TZCMULWO
   zVIEW     TZCMULWO = 0; 
   //:VIEW TZCMWKSO REGISTERED AS TZCMWKSO
   zVIEW     TZCMWKSO = 0; 
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
   //:STRING ( 15 )  szUserMaxZKey
   zCHAR     szUserMaxZKey[ 16 ] = { 0 }; 
   //://STRING ( 15 )  szUserPrefix
   //://STRING ( 15 )  szUserNextPrefix
   //:STRING ( 500 ) szMsg
   zCHAR     szMsg[ 501 ] = { 0 }; 
   //:INTEGER        hFile
   zLONG     hFile = 0; 
   //:INTEGER        lZKey
   zLONG     lZKey = 0; 
   //:INTEGER        lMinZKey
   zLONG     lMinZKey = 0; 
   //:INTEGER        lMaxZKey
   zLONG     lMaxZKey = 0; 
   //:INTEGER        lUserMaxZKey
   zLONG     lUserMaxZKey = 0; 
   //:INTEGER        lUserPrefix
   zLONG     lUserPrefix = 0; 
   //:INTEGER        lNextUserPrefix
   zLONG     lNextUserPrefix = 0; 
   //:INTEGER        lUserLowestZKey
   zLONG     lUserLowestZKey = 0; 
   //:INTEGER        lNextUserLowestZKey
   zLONG     lNextUserLowestZKey = 0; 
   //:SHORT          nRC
   zSHORT    nRC = 0; 
   //:SHORT          nHierRC
   zSHORT    nHierRC = 0; 
   //:SHORT          nReturnLevel
   zSHORT    nReturnLevel = 0; 
   zCHAR     szTempString_0[ 33 ]; 
   zCHAR     szTempString_1[ 33 ]; 

   RESULT = GetViewByName( &TZCMLPLO, "TZCMLPLO", ViewToWindow, zLEVEL_TASK );
   RESULT = GetViewByName( &TZCMULWO, "TZCMULWO", ViewToWindow, zLEVEL_TASK );
   RESULT = GetViewByName( &TZCMWKSO, "TZCMWKSO", ViewToWindow, zLEVEL_TASK );

   //:// Determine the Min and Max ZKey values for all entities in Dialogs and LODs.
   //:// Process only meta types 7 and 11, LODs and Dialogs.
   //:// Minimum ZKeys are only considered if they are over 10000000, which would be the lowest Zkey
   //:// to be generated for the first User identified as "1", followed by 7 zeros.
   //:lMinZKey = 990000000
   lMinZKey = 990000000;
   //:lMaxZKey = 0
   lMaxZKey = 0;

   //:// Below we will be finding the max ZKey with the User's generation prefix. We thus want the lowest value with
   //:// that prefix as well as the lowest value for the next prefix.
   //:SET CURSOR FIRST TZCMULWO.User WHERE TZCMULWO.User.Name = TZCMWKSO.User.Name  
   GetStringFromAttribute( szTempString_0, TZCMWKSO, "User", "Name" );
   RESULT = SetCursorFirstEntityByString( TZCMULWO, "User", "Name", szTempString_0, "" );
   //:lUserPrefix         = TZCMULWO.User.GenerationStartZKeyPrefix 
   GetIntegerFromAttribute( &lUserPrefix, TZCMULWO, "User", "GenerationStartZKeyPrefix" );
   //:lNextUserPrefix     = lUserPrefix + 1
   lNextUserPrefix = lUserPrefix + 1;
   //:lUserLowestZKey     = lUserPrefix * 10000000
   lUserLowestZKey = lUserPrefix * 10000000;
   //:lNextUserLowestZKey = lNextUserPrefix * 10000000
   lNextUserLowestZKey = lNextUserPrefix * 10000000;
   //:lUserMaxZKey        = lUserLowestZKey
   lUserMaxZKey = lUserLowestZKey;

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

                        //:// Check Zkey against ZKey range for all Users.
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

                        //:// Check Zkey against ZKey range for current User.
                        //:IF lZKey >= lUserLowestZKey AND lZKey < lNextUserLowestZKey
                        if ( lZKey >= lUserLowestZKey && lZKey < lNextUserLowestZKey )
                        { 
                           //:IF lZKey > lUserMaxZKey
                           if ( lZKey > lUserMaxZKey )
                           { 
                              //:lUserMaxZKey = lZKey
                              lUserMaxZKey = lZKey;
                           } 

                           //:END
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

   //:// If lMinZKey is still 990000000, then no metas exist and we will reset it to zero.
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
   //:szMinZKey     = lMinZKey
   ZeidonStringConvertFromNumber( szMinZKey, 1, 0, 15, lMinZKey, (ZDecimal) 0.0, "I" );
   //:szMaxZKey     = lMaxZKey
   ZeidonStringConvertFromNumber( szMaxZKey, 1, 0, 15, lMaxZKey, (ZDecimal) 0.0, "I" );
   //:szUserMaxZKey = lUserMaxZKey
   ZeidonStringConvertFromNumber( szUserMaxZKey, 1, 0, 15, lUserMaxZKey, (ZDecimal) 0.0, "I" );
   //:szMsg = "ZKey Analysis for LPLR, " + TZCMLPLO.LPLR.Name + NEW_LINE +
   //:        "Min and Max ZKeys are " + szMinZKey + " and " + szMaxZKey + "." + NEW_LINE +
   //:        "Max ZKey of current User is " + szUserMaxZKey + "."
   GetVariableFromAttribute( szTempString_1, 0, 'S', 33, TZCMLPLO, "LPLR", "Name", "", 0 );
   ZeidonStringCopy( szMsg, 1, 0, "ZKey Analysis for LPLR, ", 1, 0, 501 );
   ZeidonStringConcat( szMsg, 1, 0, szTempString_1, 1, 0, 501 );
   ZeidonStringConcat( szMsg, 1, 0, NEW_LINE, 1, 0, 501 );
   ZeidonStringConcat( szMsg, 1, 0, "Min and Max ZKeys are ", 1, 0, 501 );
   ZeidonStringConcat( szMsg, 1, 0, szMinZKey, 1, 0, 501 );
   ZeidonStringConcat( szMsg, 1, 0, " and ", 1, 0, 501 );
   ZeidonStringConcat( szMsg, 1, 0, szMaxZKey, 1, 0, 501 );
   ZeidonStringConcat( szMsg, 1, 0, ".", 1, 0, 501 );
   ZeidonStringConcat( szMsg, 1, 0, NEW_LINE, 1, 0, 501 );
   ZeidonStringConcat( szMsg, 1, 0, "Max ZKey of current User is ", 1, 0, 501 );
   ZeidonStringConcat( szMsg, 1, 0, szUserMaxZKey, 1, 0, 501 );
   ZeidonStringConcat( szMsg, 1, 0, ".", 1, 0, 501 );
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


//:DIALOG OPERATION
//:CREATE_NewLPLR( VIEW ViewToWindow )

//:   VIEW TZCMWKSO    REGISTERED AS TZCMWKSO
zOPER_EXPORT zSHORT OPERATION
CREATE_NewLPLR( zVIEW     ViewToWindow )
{
   zVIEW     TZCMWKSO = 0; 
   zSHORT    RESULT; 
   //:VIEW TZCMLPLO    REGISTERED AS TZCMLPLO
   zVIEW     TZCMLPLO = 0; 
   //:VIEW KZAPPLOO    BASED ON LOD  KZAPPLOO
   zVIEW     KZAPPLOO = 0; 
   //:VIEW TZCMULWO    BASED ON LOD  TZCMULWO
   zVIEW     TZCMULWO = 0; 
   //:VIEW TZCMLPLONew BASED ON LOD  TZCMLPLO
   zVIEW     TZCMLPLONew = 0; 
   //:STRING ( 513 ) szMsg
   zCHAR     szMsg[ 514 ] = { 0 }; 
   //:STRING ( 513 ) szFileName
   zCHAR     szFileName[ 514 ] = { 0 }; 
   //:STRING ( 513 ) szFromFileName
   zCHAR     szFromFileName[ 514 ] = { 0 }; 
   //:STRING ( 513 ) szLPLRName
   zCHAR     szLPLRName[ 514 ] = { 0 }; 
   //:SHORT nRC
   zSHORT    nRC = 0; 
   //:INTEGER lHighZKey
   zLONG     lHighZKey = 0; 
   //:INTEGER lHighPrefix
   zLONG     lHighPrefix = 0; 
   //:INTEGER nLth
   zLONG     nLth = 0; 
   zSHORT    lTempInteger_0; 
   zCHAR     szTempString_0[ 33 ]; 
   zCHAR     szTempString_1[ 255 ]; 
   zSHORT    lTempInteger_1; 
   zCHAR     szTempString_2[ 255 ]; 
   zCHAR     szTempString_3[ 255 ]; 
   zSHORT    lTempInteger_2; 
   zCHAR     szTempString_4[ 255 ]; 
   zCHAR     szTempString_5[ 255 ]; 
   zCHAR     szTempString_6[ 255 ]; 

   RESULT = GetViewByName( &TZCMWKSO, "TZCMWKSO", ViewToWindow, zLEVEL_TASK );
   RESULT = GetViewByName( &TZCMLPLO, "TZCMLPLO", ViewToWindow, zLEVEL_TASK );

   //:// KJS 05/18/15 - For right now I am not using this because we were running into errors with 
   //:// the xlp, hky file not being created and zeidon.app not updated. I modified nzwTZCMLPLD_CreateNewLPLR to
   //:// create the tzcmulwo entries. 

   //:// If the request is to create a new, empty LPLR, use the data entered to create a new one.
   //:// If the request is to create a new entry for an existing, external LPLR, then update the existing LPLR.
   //:szLPLRName = TZCMLPLO.LPLR.Name
   GetVariableFromAttribute( szLPLRName, 0, 'S', 514, TZCMLPLO, "LPLR", "Name", "", 0 );
   //:zSearchAndReplace( szLPLRName, 513, " ", "_" )
   zSearchAndReplace( szLPLRName, 513, " ", "_" );
   //:   
   //:// Get the max zkey in tzcmwkso? This is code from zwTZCMLPLD_PrebuildNewLPLR, not sure where that was called before...
   //:// And I'm not seeing that the LPLR.ZKey in xlp is the same as the LPLR.Zkey in tzcmwkso.por. Is this a problem?
   //:lHighZKey = 0
   lHighZKey = 0;
   //:FOR EACH TZCMWKSO.LPLR  
   RESULT = SetCursorFirstEntity( TZCMWKSO, "LPLR", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF TZCMWKSO.LPLR.ZKey > lHighZKey
      if ( CompareAttributeToInteger( TZCMWKSO, "LPLR", "ZKey", lHighZKey ) > 0 )
      { 
         //:lHighZKey = TZCMWKSO.LPLR.ZKey  
         GetIntegerFromAttribute( &lHighZKey, TZCMWKSO, "LPLR", "ZKey" );
      } 

      RESULT = SetCursorNextEntity( TZCMWKSO, "LPLR", "" );
      //:END
   } 

   //:END
   //:lHighZKey = lHighZKey + 1   
   lHighZKey = lHighZKey + 1;

   //:// Make sure there is a correct APPLICATION entry for the new LPLR in the ZEIDON.APP object and save it.
   //:SysGetEnvVar( szFileName, "ZEIDON", 128 )
   SysGetEnvVar( szFileName, "ZEIDON", 128 );
   //:szFileName = szFileName + "\ZEIDON.APP"
   ZeidonStringConcat( szFileName, 1, 0, "\\ZEIDON.APP", 1, 0, 514 );

   //:GET VIEW KZAPPLOO NAMED "KZAPPLOO"
   RESULT = GetViewByName( &KZAPPLOO, "KZAPPLOO", ViewToWindow, zLEVEL_TASK );
   //:IF RESULT < 0 
   if ( RESULT < 0 )
   { 
      //:nRC = ActivateOI_FromFile ( KZAPPLOO, "KZAPPLOO", ViewToWindow, szFileName, 512 )
      nRC = ActivateOI_FromFile( &KZAPPLOO, "KZAPPLOO", ViewToWindow, szFileName, 512 );
      //:IF nRC < 0
      if ( nRC < 0 )
      { 
         //:MessageSend( ViewToWindow, "", "Configuration Management",
         //:             "An error occurred when reading the ZEIDON.APP file.",
         //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
         MessageSend( ViewToWindow, "", "Configuration Management", "An error occurred when reading the ZEIDON.APP file.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
         //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
         SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
         //:DropView( KZAPPLOO )
         DropView( KZAPPLOO );
         //:RETURN -1
         return( -1 );
         //:ELSE
      } 
      else
      { 
         //:NAME VIEW KZAPPLOO "KZAPPLOO"
         SetNameForView( KZAPPLOO, "KZAPPLOO", 0, zLEVEL_TASK );
      } 

      //:END
   } 

   //:END

   //:IF TZCMLPLO.LPLR.LPLR_Type = "2"    // "2" is new empty
   if ( CompareAttributeToString( TZCMLPLO, "LPLR", "LPLR_Type", "2" ) == 0 )
   { 
      //:// LPLR is new empty. 
      //:// Create the following.
      //:// 1. Build Installation/Users object (TZCMULWO). It will be completed on next window.
      //:// 2. TZCMLPLO and TZCMWKSO will be updated on next window.

      //:// Is this right?????
      //:TZCMLPLO.LPLR.ZKey = lHighZKey
      SetAttributeFromInteger( TZCMLPLO, "LPLR", "ZKey", lHighZKey );

      //:// TZCMULWO
      //:ACTIVATE TZCMULWO EMPTY
      RESULT = ActivateEmptyObjectInstance( &TZCMULWO, "TZCMULWO", ViewToWindow, zSINGLE );
      //:NAME VIEW TZCMULWO "TZCMULWO"
      SetNameForView( TZCMULWO, "TZCMULWO", 0, zLEVEL_TASK );
      //:CREATE ENTITY TZCMULWO.Installation 
      RESULT = CreateEntity( TZCMULWO, "Installation", zPOS_AFTER );
      //:TZCMULWO.Installation.Name = TZCMLPLO.LPLR.Name 
      SetAttributeFromAttribute( TZCMULWO, "Installation", "Name", TZCMLPLO, "LPLR", "Name" );
      //:TZCMULWO.Installation.ExecutableSubDirectory = TZCMLPLO.LPLR.wExecutableSubDirectory 
      SetAttributeFromAttribute( TZCMULWO, "Installation", "ExecutableSubDirectory", TZCMLPLO, "LPLR", "wExecutableSubDirectory" );
      //:TZCMULWO.Installation.Desc = TZCMLPLO.LPLR.Desc 
      SetAttributeFromAttribute( TZCMULWO, "Installation", "Desc", TZCMLPLO, "LPLR", "Desc" );
      //:CREATE ENTITY TZCMULWO.User 
      RESULT = CreateEntity( TZCMULWO, "User", zPOS_AFTER );
      //:TZCMULWO.User.Name = TZCMWKSO.User.Name
      SetAttributeFromAttribute( TZCMULWO, "User", "Name", TZCMWKSO, "User", "Name" );
      //:TZCMULWO.User.ZKey = 11
      SetAttributeFromInteger( TZCMULWO, "User", "ZKey", 11 );
      //:TZCMULWO.User.GenerationStartZKeyPrefix = 11
      SetAttributeFromInteger( TZCMULWO, "User", "GenerationStartZKeyPrefix", 11 );
      //:TZCMULWO.User.GenerationStartZKey = 110000000
      SetAttributeFromInteger( TZCMULWO, "User", "GenerationStartZKey", 110000000 );
      //:      
      //:// KJS 06/05/15 - If the user puts in a directory for the meta source that doesn't
      //:// exist, do we want to create one for them?
      //:szFileName = TZCMLPLO.LPLR.MetaSrcDir 
      GetVariableFromAttribute( szFileName, 0, 'S', 514, TZCMLPLO, "LPLR", "MetaSrcDir", "", 0 );
      //:IF SysValidDirOrFile( szFileName, TRUE, TRUE, 512) < 0 
      lTempInteger_0 = SysValidDirOrFile( szFileName, TRUE, TRUE, 512 );
      if ( lTempInteger_0 < 0 )
      { 
         //:RETURN -1
         return( -1 );
      } 

      //:END
      //:   
      //:ELSE
   } 
   else
   { 
      //:// LPLR is new existing. Being Imported.
      //:// Activate Installation/Users object (TZCMULWO) and existing XLP (TZCMLPLO).
      //:// Then, update directory information in TZCMLPLO from basic path just entered and executable subdirectory from
      //:// TZCMULWO.
      //:GET VIEW TZCMULWO NAMED "TZCMULWO"
      RESULT = GetViewByName( &TZCMULWO, "TZCMULWO", ViewToWindow, zLEVEL_TASK );

      //:lHighPrefix = 0
      lHighPrefix = 0;
      //:FOR EACH TZCMULWO.User 
      RESULT = SetCursorFirstEntity( TZCMULWO, "User", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 
         //:IF TZCMULWO.User.GenerationStartZKeyPrefix > lHighPrefix
         if ( CompareAttributeToInteger( TZCMULWO, "User", "GenerationStartZKeyPrefix", lHighPrefix ) > 0 )
         { 
            //:lHighPrefix = TZCMULWO.User.GenerationStartZKeyPrefix  
            GetIntegerFromAttribute( &lHighPrefix, TZCMULWO, "User", "GenerationStartZKeyPrefix" );
         } 

         RESULT = SetCursorNextEntity( TZCMULWO, "User", "" );
         //:END 
      } 

      //:END
      //: 
      //:lHighPrefix = lHighPrefix + 1
      lHighPrefix = lHighPrefix + 1;

      //:// Make sure that the current User is in the TZCMULWO object. Currently, we will just add the User, if he
      //:// isn't already there. Though, we could also return an error for that case and make the person in charge of the
      //:// LPLR enter all valid Users.
      //:SET CURSOR FIRST TZCMULWO.User WHERE TZCMULWO.User.Name = TZCMWKSO.User.Name 
      GetStringFromAttribute( szTempString_0, TZCMWKSO, "User", "Name" );
      RESULT = SetCursorFirstEntityByString( TZCMULWO, "User", "Name", szTempString_0, "" );
      //:IF RESULT < zCURSOR_SET
      if ( RESULT < zCURSOR_SET )
      { 
         //:CREATE ENTITY TZCMULWO.User 
         RESULT = CreateEntity( TZCMULWO, "User", zPOS_AFTER );
         //:TZCMULWO.User.Name = TZCMWKSO.User.Name 
         SetAttributeFromAttribute( TZCMULWO, "User", "Name", TZCMWKSO, "User", "Name" );
         //:TZCMULWO.User.GenerationStartZKeyPrefix = lHighPrefix
         SetAttributeFromInteger( TZCMULWO, "User", "GenerationStartZKeyPrefix", lHighPrefix );
         //:lHighPrefix = lHighPrefix * 10000000
         lHighPrefix = lHighPrefix * 10000000;
         //:TZCMULWO.User.GenerationStartZKey = lHighPrefix    
         SetAttributeFromInteger( TZCMULWO, "User", "GenerationStartZKey", lHighPrefix );
      } 

      //:END
   } 

   //:END

   //:// Set the executable directory. Create it if it doesn't exist and also copy the zeidon.hky if it doesn't exist.
   //:szFileName = TZCMLPLO.LPLR.MetaSrcDir + "\" + TZCMULWO.Installation.ExecutableSubDirectory
   GetStringFromAttribute( szFileName, TZCMLPLO, "LPLR", "MetaSrcDir" );
   ZeidonStringConcat( szFileName, 1, 0, "\\", 1, 0, 514 );
   GetVariableFromAttribute( szTempString_1, 0, 'S', 255, TZCMULWO, "Installation", "ExecutableSubDirectory", "", 0 );
   ZeidonStringConcat( szFileName, 1, 0, szTempString_1, 1, 0, 514 );
   //:IF SysValidDirOrFile( szFileName, TRUE, TRUE, 512) < 0
   lTempInteger_1 = SysValidDirOrFile( szFileName, TRUE, TRUE, 512 );
   if ( lTempInteger_1 < 0 )
   { 
      //:RETURN -1
      return( -1 );
   } 

   //:END
   //:TZCMLPLO.LPLR.ExecDir = TZCMLPLO.LPLR.MetaSrcDir + "\" + TZCMULWO.Installation.ExecutableSubDirectory
   GetStringFromAttribute( szTempString_2, TZCMLPLO, "LPLR", "MetaSrcDir" );
   ZeidonStringConcat( szTempString_2, 1, 0, "\\", 1, 0, 255 );
   GetVariableFromAttribute( szTempString_3, 0, 'S', 255, TZCMULWO, "Installation", "ExecutableSubDirectory", "", 0 );
   ZeidonStringConcat( szTempString_2, 1, 0, szTempString_3, 1, 0, 255 );
   SetAttributeFromString( TZCMLPLO, "LPLR", "ExecDir", szTempString_2 );

   //:// Copy the Hotkey file "ZEIDON.HKY" to the new LPLR executable directory.
   //:szFileName = szFileName + "\ZEIDON.HKY"
   ZeidonStringConcat( szFileName, 1, 0, "\\ZEIDON.HKY", 1, 0, 514 );
   //:nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 )
   nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 );
   //:IF nRC <= 0 
   if ( nRC <= 0 )
   { 
      //:szFromFileName = KZAPPLOO.ZEIDON.ZEIDON_SYS 
      GetVariableFromAttribute( szFromFileName, 0, 'S', 514, KZAPPLOO, "ZEIDON", "ZEIDON_SYS", "", 0 );
      //:szFromFileName = szFromFileName + "\ZEIDON.HKY" 
      ZeidonStringConcat( szFromFileName, 1, 0, "\\ZEIDON.HKY", 1, 0, 514 );
      //:SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE )
      SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE );
   } 

   //:END       

   //:// If we are creating a new lplr...
   //:// Now check kzmsgqoo, and tzzolodo if the directory "NewLPLR" exists under zeidon executable directory.
   //:szFileName = KZAPPLOO.ZEIDON.ZEIDON_SYS + "\NewLPLR"
   GetStringFromAttribute( szFileName, KZAPPLOO, "ZEIDON", "ZEIDON_SYS" );
   ZeidonStringConcat( szFileName, 1, 0, "\\NewLPLR", 1, 0, 514 );
   //:IF TZCMLPLO.LPLR.LPLR_Type = "2" AND SysValidDirOrFile( szFileName, TRUE, FALSE, 512 ) > 0
   lTempInteger_2 = SysValidDirOrFile( szFileName, TRUE, FALSE, 512 );
   if ( CompareAttributeToString( TZCMLPLO, "LPLR", "LPLR_Type", "2" ) == 0 && lTempInteger_2 > 0 )
   { 

      //:szFileName = TZCMLPLO.LPLR.MetaSrcDir
      GetVariableFromAttribute( szFileName, 0, 'S', 514, TZCMLPLO, "LPLR", "MetaSrcDir", "", 0 );
      //:szFileName = szFileName + "\KZMSGQOO.LOD"
      ZeidonStringConcat( szFileName, 1, 0, "\\KZMSGQOO.LOD", 1, 0, 514 );
      //:nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 )
      nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 );
      //:IF nRC <= 0 
      if ( nRC <= 0 )
      { 
         //:szFromFileName = KZAPPLOO.ZEIDON.ZEIDON_SYS 
         GetVariableFromAttribute( szFromFileName, 0, 'S', 514, KZAPPLOO, "ZEIDON", "ZEIDON_SYS", "", 0 );
         //:szFromFileName = szFromFileName + "\NewLPLR\KZMSGQOO.LOD" 
         ZeidonStringConcat( szFromFileName, 1, 0, "\\NewLPLR\\KZMSGQOO.LOD", 1, 0, 514 );
         //:SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE )
         SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE );
         //:szFileName = TZCMLPLO.LPLR.ExecDir + "\KZMSGQOO.XOD"
         GetStringFromAttribute( szFileName, TZCMLPLO, "LPLR", "ExecDir" );
         ZeidonStringConcat( szFileName, 1, 0, "\\KZMSGQOO.XOD", 1, 0, 514 );
         //:szFromFileName = KZAPPLOO.ZEIDON.ZEIDON_SYS 
         GetVariableFromAttribute( szFromFileName, 0, 'S', 514, KZAPPLOO, "ZEIDON", "ZEIDON_SYS", "", 0 );
         //:szFromFileName = szFromFileName + "\NewLPLR\KZMSGQOO.XOD" 
         ZeidonStringConcat( szFromFileName, 1, 0, "\\NewLPLR\\KZMSGQOO.XOD", 1, 0, 514 );
         //:SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE )
         SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE );
      } 

      //:END                              
      //:szFileName = TZCMLPLO.LPLR.MetaSrcDir
      GetVariableFromAttribute( szFileName, 0, 'S', 514, TZCMLPLO, "LPLR", "MetaSrcDir", "", 0 );
      //:szFileName = szFileName + "\TZZOLFLO.LOD"
      ZeidonStringConcat( szFileName, 1, 0, "\\TZZOLFLO.LOD", 1, 0, 514 );
      //:nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 )
      nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 );
      //:IF nRC <= 0 
      if ( nRC <= 0 )
      { 
         //:szFromFileName = KZAPPLOO.ZEIDON.ZEIDON_SYS 
         GetVariableFromAttribute( szFromFileName, 0, 'S', 514, KZAPPLOO, "ZEIDON", "ZEIDON_SYS", "", 0 );
         //:szFromFileName = szFromFileName + "\NewLPLR\TZZOLFLO.LOD" 
         ZeidonStringConcat( szFromFileName, 1, 0, "\\NewLPLR\\TZZOLFLO.LOD", 1, 0, 514 );
         //:SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE )
         SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE );
         //:szFileName = TZCMLPLO.LPLR.ExecDir + "\TZZOLFLO.XOD"
         GetStringFromAttribute( szFileName, TZCMLPLO, "LPLR", "ExecDir" );
         ZeidonStringConcat( szFileName, 1, 0, "\\TZZOLFLO.XOD", 1, 0, 514 );
         //:szFromFileName = KZAPPLOO.ZEIDON.ZEIDON_SYS 
         GetVariableFromAttribute( szFromFileName, 0, 'S', 514, KZAPPLOO, "ZEIDON", "ZEIDON_SYS", "", 0 );
         //:szFromFileName = szFromFileName + "\NewLPLR\TZZOLFLO.XOD" 
         ZeidonStringConcat( szFromFileName, 1, 0, "\\NewLPLR\\TZZOLFLO.XOD", 1, 0, 514 );
         //:SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE )
         SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE );
      } 

      //:END                            
      //:szFileName = TZCMLPLO.LPLR.MetaSrcDir
      GetVariableFromAttribute( szFileName, 0, 'S', 514, TZCMLPLO, "LPLR", "MetaSrcDir", "", 0 );
      //:szFileName = szFileName + "\TZAPDMAA.PDG"
      ZeidonStringConcat( szFileName, 1, 0, "\\TZAPDMAA.PDG", 1, 0, 514 );
      //:nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 )
      nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 );
      //:IF nRC <= 0 
      if ( nRC <= 0 )
      { 
         //:szFromFileName = KZAPPLOO.ZEIDON.ZEIDON_SYS 
         GetVariableFromAttribute( szFromFileName, 0, 'S', 514, KZAPPLOO, "ZEIDON", "ZEIDON_SYS", "", 0 );
         //:szFromFileName = szFromFileName + "\NewLPLR\TZAPDMAA.PDG" 
         ZeidonStringConcat( szFromFileName, 1, 0, "\\NewLPLR\\TZAPDMAA.PDG", 1, 0, 514 );
         //:SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE )
         SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE );
      } 

      //:END                            
      //:szFileName = TZCMLPLO.LPLR.MetaSrcDir
      GetVariableFromAttribute( szFileName, 0, 'S', 514, TZCMLPLO, "LPLR", "MetaSrcDir", "", 0 );
      //:szFileName = szFileName + "\TZAPDMAB.PDG"
      ZeidonStringConcat( szFileName, 1, 0, "\\TZAPDMAB.PDG", 1, 0, 514 );
      //:nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 )
      nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 );
      //:IF nRC <= 0 
      if ( nRC <= 0 )
      { 
         //:szFromFileName = KZAPPLOO.ZEIDON.ZEIDON_SYS 
         GetVariableFromAttribute( szFromFileName, 0, 'S', 514, KZAPPLOO, "ZEIDON", "ZEIDON_SYS", "", 0 );
         //:szFromFileName = szFromFileName + "\NewLPLR\TZAPDMAB.PDG" 
         ZeidonStringConcat( szFromFileName, 1, 0, "\\NewLPLR\\TZAPDMAB.PDG", 1, 0, 514 );
         //:SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE )
         SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE );
      } 

      //:END                            
      //:szFileName = TZCMLPLO.LPLR.MetaSrcDir
      GetVariableFromAttribute( szFileName, 0, 'S', 514, TZCMLPLO, "LPLR", "MetaSrcDir", "", 0 );
      //:szFileName = szFileName + "\TZAPDMAC.PDG"
      ZeidonStringConcat( szFileName, 1, 0, "\\TZAPDMAC.PDG", 1, 0, 514 );
      //:nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 )
      nRC = SysValidDirOrFile( szFileName, FALSE, FALSE, 512 );
      //:IF nRC <= 0 
      if ( nRC <= 0 )
      { 
         //:szFromFileName = KZAPPLOO.ZEIDON.ZEIDON_SYS 
         GetVariableFromAttribute( szFromFileName, 0, 'S', 514, KZAPPLOO, "ZEIDON", "ZEIDON_SYS", "", 0 );
         //:szFromFileName = szFromFileName + "\NewLPLR\TZAPDMAC.PDG" 
         ZeidonStringConcat( szFromFileName, 1, 0, "\\NewLPLR\\TZAPDMAC.PDG", 1, 0, 514 );
         //:SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE )
         SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE );
      } 

      //:END                            

      //:szFileName = TZCMLPLO.LPLR.MetaSrcDir + "\KZMSGQOO_Object.java"
      GetStringFromAttribute( szFileName, TZCMLPLO, "LPLR", "MetaSrcDir" );
      ZeidonStringConcat( szFileName, 1, 0, "\\KZMSGQOO_Object.java", 1, 0, 514 );
      //:szFromFileName = KZAPPLOO.ZEIDON.ZEIDON_SYS 
      GetVariableFromAttribute( szFromFileName, 0, 'S', 514, KZAPPLOO, "ZEIDON", "ZEIDON_SYS", "", 0 );
      //:szFromFileName = szFromFileName + "\NewLPLR\KZMSGQOO_Object.java"  
      ZeidonStringConcat( szFromFileName, 1, 0, "\\NewLPLR\\KZMSGQOO_Object.java", 1, 0, 514 );
      //:SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE )
      SysCopyFile( ViewToWindow, szFromFileName, szFileName, TRUE );
   } 

   //:END

   //:TZCMLPLO.LPLR.PgmSrcDir = TZCMLPLO.LPLR.MetaSrcDir       
   SetAttributeFromAttribute( TZCMLPLO, "LPLR", "PgmSrcDir", TZCMLPLO, "LPLR", "MetaSrcDir" );
   //:TZCMLPLO.LPLR.TempDesc = TZCMLPLO.LPLR.Desc 
   SetAttributeFromAttribute( TZCMLPLO, "LPLR", "TempDesc", TZCMLPLO, "LPLR", "Desc" );

   //:// TZCMWKSO
   //:// Make sure that the LPLR object exists in TZCMWKSO.
   //:SET CURSOR FIRST TZCMWKSO.LPLR WHERE TZCMWKSO.LPLR.Name = TZCMULWO.Installation.Name 
   GetStringFromAttribute( szTempString_0, TZCMULWO, "Installation", "Name" );
   RESULT = SetCursorFirstEntityByString( TZCMWKSO, "LPLR", "Name", szTempString_0, "" );
   //:IF RESULT < zCURSOR_SET
   if ( RESULT < zCURSOR_SET )
   { 
      //:CREATE ENTITY TZCMWKSO.LPLR 
      RESULT = CreateEntity( TZCMWKSO, "LPLR", zPOS_AFTER );
      //:TZCMWKSO.LPLR.LPLR_Type = "2"
      SetAttributeFromString( TZCMWKSO, "LPLR", "LPLR_Type", "2" );
      //:TZCMWKSO.LPLR.Name      = TZCMULWO.Installation.Name 
      SetAttributeFromAttribute( TZCMWKSO, "LPLR", "Name", TZCMULWO, "Installation", "Name" );
      //:TZCMWKSO.LPLR.ZKey = lHighZKey      
      SetAttributeFromInteger( TZCMWKSO, "LPLR", "ZKey", lHighZKey );
   } 

   //:END 
   //:TZCMWKSO.LPLR.Desc       = TZCMLPLO.LPLR.Desc 
   SetAttributeFromAttribute( TZCMWKSO, "LPLR", "Desc", TZCMLPLO, "LPLR", "Desc" );
   //:TZCMWKSO.LPLR.MetaSrcDir = TZCMLPLO.LPLR.MetaSrcDir
   SetAttributeFromAttribute( TZCMWKSO, "LPLR", "MetaSrcDir", TZCMLPLO, "LPLR", "MetaSrcDir" );
   //:TZCMWKSO.LPLR.PgmSrcDir  = TZCMLPLO.LPLR.MetaSrcDir
   SetAttributeFromAttribute( TZCMWKSO, "LPLR", "PgmSrcDir", TZCMLPLO, "LPLR", "MetaSrcDir" );
   //:TZCMWKSO.LPLR.ExecDir    = TZCMLPLO.LPLR.MetaSrcDir + "\" + TZCMULWO.Installation.ExecutableSubDirectory
   GetStringFromAttribute( szTempString_4, TZCMLPLO, "LPLR", "MetaSrcDir" );
   ZeidonStringConcat( szTempString_4, 1, 0, "\\", 1, 0, 255 );
   GetVariableFromAttribute( szTempString_5, 0, 'S', 255, TZCMULWO, "Installation", "ExecutableSubDirectory", "", 0 );
   ZeidonStringConcat( szTempString_4, 1, 0, szTempString_5, 1, 0, 255 );
   SetAttributeFromString( TZCMWKSO, "LPLR", "ExecDir", szTempString_4 );
   //:TZCMWKSO.LPLR.MaxZKey    = TZCMULWO.User.GenerationStartZKey 
   SetAttributeFromAttribute( TZCMWKSO, "LPLR", "MaxZKey", TZCMULWO, "User", "GenerationStartZKey" );

   //:TZCMWKSO.RepositoryClient.DefaultLPLR_ZKey = TZCMWKSO.LPLR.ZKey 
   SetAttributeFromAttribute( TZCMWKSO, "RepositoryClient", "DefaultLPLR_ZKey", TZCMWKSO, "LPLR", "ZKey" );

   //:SysGetEnvVar( szFileName, "ZEIDON", 128 )
   SysGetEnvVar( szFileName, "ZEIDON", 128 );
   //:szFileName = szFileName + "\TZCMWKS8.POR"
   ZeidonStringConcat( szFileName, 1, 0, "\\TZCMWKS8.POR", 1, 0, 514 );
   //:nRC = CommitOI_ToFile( TZCMWKSO, szFileName, zASCII )
   nRC = CommitOI_ToFile( TZCMWKSO, szFileName, zASCII );
   //:IF nRC < 0
   if ( nRC < 0 )
   { 
      //:MessageSend( ViewToWindow, "", "Save New LPLR",
      //:             "An error occurred when writing the TZCMWKSO file. You will have to repeat the function.",
      //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Save New LPLR", "An error occurred when writing the TZCMWKSO file. You will have to repeat the function.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:RETURN -1
      return( -1 );
   } 

   //:END
   //:  
   //:// TZCMLPLO
   //:IF TZCMULWO.Installation.ExecutableSubDirectory = ""
   if ( CompareAttributeToString( TZCMULWO, "Installation", "ExecutableSubDirectory", "" ) == 0 )
   { 
      //:szFileName = TZCMLPLO.LPLR.MetaSrcDir + "\" + szLPLRName + ".XLP"
      GetStringFromAttribute( szFileName, TZCMLPLO, "LPLR", "MetaSrcDir" );
      ZeidonStringConcat( szFileName, 1, 0, "\\", 1, 0, 514 );
      ZeidonStringConcat( szFileName, 1, 0, szLPLRName, 1, 0, 514 );
      ZeidonStringConcat( szFileName, 1, 0, ".XLP", 1, 0, 514 );
      //:ELSE
   } 
   else
   { 
      //:szFileName = TZCMLPLO.LPLR.MetaSrcDir + "\" + TZCMULWO.Installation.ExecutableSubDirectory + "\" + szLPLRName + ".XLP"
      GetStringFromAttribute( szFileName, TZCMLPLO, "LPLR", "MetaSrcDir" );
      ZeidonStringConcat( szFileName, 1, 0, "\\", 1, 0, 514 );
      GetVariableFromAttribute( szTempString_6, 0, 'S', 255, TZCMULWO, "Installation", "ExecutableSubDirectory", "", 0 );
      ZeidonStringConcat( szFileName, 1, 0, szTempString_6, 1, 0, 514 );
      ZeidonStringConcat( szFileName, 1, 0, "\\", 1, 0, 514 );
      ZeidonStringConcat( szFileName, 1, 0, szLPLRName, 1, 0, 514 );
      ZeidonStringConcat( szFileName, 1, 0, ".XLP", 1, 0, 514 );
   } 

   //:END

   //:// KJS 06/05/15 - Do we need to create this new one, or can we just save this with the new base directory?
   //:/*
   //:nRC = ActivateOI_FromFile ( TZCMLPLONew, "TZCMLPLO", ViewToWindow, szFileName, 512 )
   //:IF nRC < 0
   //:   szMsg = "An XLP object (TZCMLPLO) does not exist in the directory path specified: " + NEW_LINE + "  " + szFileName + "."
   //:   MessageSend( ViewToWindow, "", "Configuration Management", szMsg, zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
   //:   SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
   //:   DropView( TZCMULWO )
   //:   RETURN -1
   //:ELSE
   //:   TZCMLPLONew.LPLR.LPLR_Type  = TZCMLPLO.LPLR.LPLR_Type    // We will use Type on next window.
   //:   TZCMLPLONew.LPLR.MetaSrcDir = TZCMLPLO.LPLR.MetaSrcDir
   //:   TZCMLPLONew.LPLR.PgmSrcDir  = TZCMLPLO.LPLR.MetaSrcDir 
   //:   TZCMLPLONew.LPLR.ExecDir    = TZCMLPLO.LPLR.MetaSrcDir + "\" + TZCMULWO.Installation.ExecutableSubDirectory 
   //:   DropObjectInstance( TZCMLPLO )
   //:   NAME VIEW TZCMLPLONew "TZCMLPLO"
   //:END
   //:*/
   //:// Commit the XLP in the executable directory, and then commit the LLP in the base directory.
   //:CommitOI_ToFile( TZCMLPLO, szFileName, zSINGLE )
   CommitOI_ToFile( TZCMLPLO, szFileName, zSINGLE );
   //:szFileName = TZCMLPLO.LPLR.MetaSrcDir + "\" + szLPLRName + ".LLP"
   GetStringFromAttribute( szFileName, TZCMLPLO, "LPLR", "MetaSrcDir" );
   ZeidonStringConcat( szFileName, 1, 0, "\\", 1, 0, 514 );
   ZeidonStringConcat( szFileName, 1, 0, szLPLRName, 1, 0, 514 );
   ZeidonStringConcat( szFileName, 1, 0, ".LLP", 1, 0, 514 );
   //:CommitOI_ToFile( TZCMLPLO, szFileName, zSINGLE )
   CommitOI_ToFile( TZCMLPLO, szFileName, zSINGLE );

   //:// Make sure the APPLICATION entry exists and is correct.
   //:SET CURSOR FIRST KZAPPLOO.APPLICATION WHERE KZAPPLOO.APPLICATION.APP_NAME = TZCMLPLO.LPLR.Name 
   GetStringFromAttribute( szTempString_0, TZCMLPLO, "LPLR", "Name" );
   RESULT = SetCursorFirstEntityByString( KZAPPLOO, "APPLICATION", "APP_NAME", szTempString_0, "" );
   //:IF RESULT < zCURSOR_SET
   if ( RESULT < zCURSOR_SET )
   { 
      //:CREATE ENTITY KZAPPLOO.APPLICATION 
      RESULT = CreateEntity( KZAPPLOO, "APPLICATION", zPOS_AFTER );
      //:KZAPPLOO.APPLICATION.APP_NAME = TZCMLPLO.LPLR.Name 
      SetAttributeFromAttribute( KZAPPLOO, "APPLICATION", "APP_NAME", TZCMLPLO, "LPLR", "Name" );
   } 

   //:END 
   //:KZAPPLOO.APPLICATION.APP_DLL    = TZCMLPLO.LPLR.ExecDir 
   SetAttributeFromAttribute( KZAPPLOO, "APPLICATION", "APP_DLL", TZCMLPLO, "LPLR", "ExecDir" );
   //:KZAPPLOO.APPLICATION.APP_ADOBIN = TZCMLPLO.LPLR.ExecDir 
   SetAttributeFromAttribute( KZAPPLOO, "APPLICATION", "APP_ADOBIN", TZCMLPLO, "LPLR", "ExecDir" );
   //:KZAPPLOO.APPLICATION.APP_LOCAL  = KZAPPLOO.ZEIDON.ZEIDON_LOC 
   SetAttributeFromAttribute( KZAPPLOO, "APPLICATION", "APP_LOCAL", KZAPPLOO, "ZEIDON", "ZEIDON_LOC" );
   //:KZAPPLOO.APPLICATION.APP_SHARED = KZAPPLOO.ZEIDON.ZEIDON_SHR 
   SetAttributeFromAttribute( KZAPPLOO, "APPLICATION", "APP_SHARED", KZAPPLOO, "ZEIDON", "ZEIDON_SHR" );

   //:SysGetEnvVar( szFileName, "ZEIDON", 128 )
   SysGetEnvVar( szFileName, "ZEIDON", 128 );
   //:szFileName = szFileName + "\ZEIDON.APP"
   ZeidonStringConcat( szFileName, 1, 0, "\\ZEIDON.APP", 1, 0, 514 );

   //:// Commit the ZEIDON.APP object.
   //:nRC = CommitOI_ToFile( KZAPPLOO, szFileName, zASCII )
   nRC = CommitOI_ToFile( KZAPPLOO, szFileName, zASCII );
   //:IF nRC < 0
   if ( nRC < 0 )
   { 
      //:MessageSend( ViewToWindow, "", "Save New LPLR",
      //:             "An error occurred when writing the ZEIDON.APP file. You will have to repeat the function.",
      //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Save New LPLR", "An error occurred when writing the ZEIDON.APP file. You will have to repeat the function.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:RETURN -1
      return( -1 );
   } 

   //:END 

   //:// Save view TZCMLPLO to view TaskLPLR because thi
   //:NAME VIEW TZCMLPLO "TaskLPLR"
   SetNameForView( TZCMLPLO, "TaskLPLR", 0, zLEVEL_TASK );
   //: 
   //:RebuildMetaLists( ViewToWindow )
   RebuildMetaLists( ViewToWindow );
   //:InitializeLPLR( ViewToWindow, szLPLRName )
   InitializeLPLR( ViewToWindow, szLPLRName );
   //:RebuildXDM( ViewToWindow )
   RebuildXDM( ViewToWindow );
   return( 0 );
//    // Right now we run into an error in RebuildXODs because we don't have the TE set up.
//    // It's looking for view "TE_DB_Environ" and entity "TE_DBMS_Source".
//    // So I will come back to this, do we want to set up an initial te here?   
//    //RebuildXODs( ViewToWindow )
// END
} 


//:DIALOG OPERATION
//:SAVE_NewLPLR( VIEW ViewToWindow )

//:   VIEW TZCMWKSO    REGISTERED AS TZCMWKSO
zOPER_EXPORT zSHORT OPERATION
SAVE_NewLPLR( zVIEW     ViewToWindow )
{
   zVIEW     TZCMWKSO = 0; 
   zSHORT    RESULT; 
   //:VIEW TZCMLPLO    REGISTERED AS TZCMLPLO
   zVIEW     TZCMLPLO = 0; 
   //:VIEW TZCMULWO    REGISTERED AS TZCMULWO
   zVIEW     TZCMULWO = 0; 
   //:VIEW KZAPPLOO    BASED ON LOD  KZAPPLOO
   zVIEW     KZAPPLOO = 0; 
   //:STRING (513) szFileName
   zCHAR     szFileName[ 514 ] = { 0 }; 
   //:STRING (513) szDirectoryName
   zCHAR     szDirectoryName[ 514 ] = { 0 }; 
   //:SHORT nRC
   zSHORT    nRC = 0; 

   RESULT = GetViewByName( &TZCMWKSO, "TZCMWKSO", ViewToWindow, zLEVEL_TASK );
   RESULT = GetViewByName( &TZCMLPLO, "TZCMLPLO", ViewToWindow, zLEVEL_TASK );
   RESULT = GetViewByName( &TZCMULWO, "TZCMULWO", ViewToWindow, zLEVEL_TASK );

   //:// Make sure that a subdirectory is specified and then update and save the three objects above.
   //:/*IF TZCMULWO.Installation.ExecutableSubDirectory = ""
   //:   MessageSend( ViewToWindow, "", "Save New LPLR",
   //:                "A Subdirectory value must be specified.",
   //:                zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
   //:   SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
   //:   RETURN -1
   //:END*/

   //:// Make sure that each User has a ZKey generation prefix.
   //:FOR EACH TZCMULWO.User 
   RESULT = SetCursorFirstEntity( TZCMULWO, "User", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF TZCMULWO.User.GenerationStartZKeyPrefix = ""
      if ( CompareAttributeToString( TZCMULWO, "User", "GenerationStartZKeyPrefix", "" ) == 0 )
      { 
         //:MessageSend( ViewToWindow, "", "Save New LPLR",
         //:             "All Users do not have a ZKey Generation Prefix.",
         //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
         MessageSend( ViewToWindow, "", "Save New LPLR", "All Users do not have a ZKey Generation Prefix.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
         //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
         SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
         //:RETURN -1
         return( -1 );
      } 

      RESULT = SetCursorNextEntity( TZCMULWO, "User", "" );
      //:END
   } 

   //:END

   //:// Save the TZCMULWO object.
   //:szFileName = TZCMLPLO.LPLR.MetaSrcDir + "\" + "TZCMULWO.POR"
   GetStringFromAttribute( szFileName, TZCMLPLO, "LPLR", "MetaSrcDir" );
   ZeidonStringConcat( szFileName, 1, 0, "\\", 1, 0, 514 );
   ZeidonStringConcat( szFileName, 1, 0, "TZCMULWO.POR", 1, 0, 514 );
   //:nRC = CommitOI_ToFile( TZCMULWO, szFileName, zASCII )
   nRC = CommitOI_ToFile( TZCMULWO, szFileName, zASCII );
   //:IF nRC < 0
   if ( nRC < 0 )
   { 
      //:MessageSend( ViewToWindow, "", "Save New LPLR",
      //:             "An error occurred when writing the TZCMULWO file. You will have to repeat the function.",
      //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Save New LPLR", "An error occurred when writing the TZCMULWO file. You will have to repeat the function.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:RETURN -1
      return( -1 );
   } 

   //:END
   return( 0 );
//    
//    // Save the XLP object.
//    // KJS 06/10/15 - Already done in CreateNewLPLR.
//    /*
//    szFileName = TZCMLPLO.LPLR.ExecDir + "\" + TZCMLPLO.LPLR.Name  + ".XLP" 
//    nRC = CommitOI_ToFile( TZCMLPLO, szFileName, zASCII )
//    IF nRC < 0
//       MessageSend( ViewToWindow, "", "Save New LPLR",
//                    "An error occurred when writing the TZCMLPLO file. You will have to repeat the function.",
//                    zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
//       SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
//       RETURN -1
//    END
//    
//    // Save the TZCMWKSO object.
//    SysGetEnvVar( szDirectoryName, "ZEIDON", 128 )
//    szFileName = szDirectoryName + "\TZCMWKS8.POR"
// TraceLineS( "*** WKS File: ", szDirectoryName )
//    nRC = CommitOI_ToFile( TZCMWKSO, szFileName, zASCII )
//    IF nRC < 0
//       MessageSend( ViewToWindow, "", "Save New LPLR",
//                    "An error occurred when writing the TZCMWKSO file. You will have to repeat the function.",
//                    zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
//       SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
//       RETURN -1
//    END
//    
//    // Make sure there is a correct APPLICATION entry for the new LPLR in the ZEIDON.APP object and save it.
//    SysGetEnvVar( szDirectoryName, "ZEIDON", 128 )
//    szFileName = szDirectoryName + "\ZEIDON.APP"
//    nRC = ActivateOI_FromFile ( KZAPPLOO, "KZAPPLOO", ViewToWindow, szFileName, 512 )
//    IF nRC < 0
//       MessageSend( ViewToWindow, "", "Configuration Management",
//                    "An error occurred when reading the ZEIDON.APP file.",
//                    zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
//       SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
//       DropView( KZAPPLOO )
//       RETURN -1
//    ELSE
//       NAME VIEW KZAPPLOO "KZAPPLOO"
//    END
// TraceLineS( "*** APP File: ", szDirectoryName )
//    // Make sure the APPLICATION entry exists and is correct.
//    SET CURSOR FIRST KZAPPLOO.APPLICATION WHERE KZAPPLOO.APPLICATION.APP_NAME = TZCMLPLO.LPLR.Name 
//    IF RESULT < zCURSOR_SET
//       CREATE ENTITY KZAPPLOO.APPLICATION 
//       KZAPPLOO.APPLICATION.APP_NAME = TZCMLPLO.LPLR.Name 
//    END 
//    KZAPPLOO.APPLICATION.APP_DLL    = TZCMLPLO.LPLR.ExecDir 
//    KZAPPLOO.APPLICATION.APP_ADOBIN = TZCMLPLO.LPLR.ExecDir 
//    KZAPPLOO.APPLICATION.APP_LOCAL  = KZAPPLOO.ZEIDON.ZEIDON_LOC 
//    KZAPPLOO.APPLICATION.APP_SHARED = KZAPPLOO.ZEIDON.ZEIDON_SHR 
//    
//    // Commit the ZEIDON.APP object.
//    nRC = CommitOI_ToFile( KZAPPLOO, szFileName, zASCII )
//    IF nRC < 0
//       MessageSend( ViewToWindow, "", "Save New LPLR",
//                    "An error occurred when writing the ZEIDON.APP file. You will have to repeat the function.",
//                    zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
//       SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
//       RETURN -1
//    END
// */
// END
} 


//:DIALOG OPERATION
//:IMPORT_LPLR( VIEW ViewToWindow )

//:   VIEW TZCMWKSO    REGISTERED AS TZCMWKSO
zOPER_EXPORT zSHORT OPERATION
IMPORT_LPLR( zVIEW     ViewToWindow )
{
   zVIEW     TZCMWKSO = 0; 
   zSHORT    RESULT; 
   //:VIEW TZCMLPLO    BASED ON LOD  TZCMLPLO
   zVIEW     TZCMLPLO = 0; 
   //:VIEW TZCMULWO    BASED ON LOD  TZCMULWO
   zVIEW     TZCMULWO = 0; 
   //:VIEW TZCMLPLONew BASED ON LOD  TZCMLPLO
   zVIEW     TZCMLPLONew = 0; 
   //:VIEW KZAPPLOO    BASED ON LOD  KZAPPLOO 
   zVIEW     KZAPPLOO = 0; 
   //:VIEW KZXMLPGO    BASED ON LOD  KZXMLPGO 
   zVIEW     KZXMLPGO = 0; 
   //:STRING ( 513 ) szMsg
   zCHAR     szMsg[ 514 ] = { 0 }; 
   //:STRING ( 513 ) szTZCMULWOFileName
   zCHAR     szTZCMULWOFileName[ 514 ] = { 0 }; 
   //:STRING ( 513 ) szXLPFileName
   zCHAR     szXLPFileName[ 514 ] = { 0 }; 
   //:STRING ( 513 ) szStr
   zCHAR     szStr[ 514 ] = { 0 }; 
   //:STRING ( 513 ) szFileName
   zCHAR     szFileName[ 514 ] = { 0 }; 
   //:STRING ( 1 )   szSlash
   zCHAR     szSlash[ 2 ] = { 0 }; 
   //:STRING ( 30 )  szOperatorArea
   zCHAR     szOperatorArea[ 31 ] = { 0 }; 
   //:SHORT nRC
   zSHORT    nRC = 0; 
   //:SHORT nLth
   zSHORT    nLth = 0; 
   zSHORT    lTempInteger_0; 

   RESULT = GetViewByName( &TZCMWKSO, "TZCMWKSO", ViewToWindow, zLEVEL_TASK );

   //:szFileName = "*.*"
   ZeidonStringCopy( szFileName, 1, 0, "*.*", 1, 0, 514 );
   //:IF ( OperatorPromptForFile( ViewToWindow,
   //:                             szXLPFileName,
   //:                             500,
   //:                             "LLP files (*.LLP)||*.LLP||||",
   //:                             "CSV",
   //:                             9224 ) = 2 )
   lTempInteger_0 = OperatorPromptForFile( ViewToWindow, szXLPFileName, 500, "LLP files (*.LLP)|*.LLP||", "CSV", 9224 );
   if ( lTempInteger_0 == 2 )
   { 
      //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:RETURN -1
      return( -1 );
   } 

   //:END                                
   //:                                                                                                        

   //:nRC = ActivateOI_FromFile ( TZCMLPLO, "TZCMLPLO", ViewToWindow, szXLPFileName, 512 )
   nRC = ActivateOI_FromFile( &TZCMLPLO, "TZCMLPLO", ViewToWindow, szXLPFileName, 512 );

   //:IF nRC < 0
   if ( nRC < 0 )
   { 
      //:szMsg = "Could not open the LLP file specified: " + NEW_LINE + "  " + szXLPFileName + "."
      ZeidonStringCopy( szMsg, 1, 0, "Could not open the LLP file specified: ", 1, 0, 514 );
      ZeidonStringConcat( szMsg, 1, 0, NEW_LINE, 1, 0, 514 );
      ZeidonStringConcat( szMsg, 1, 0, "  ", 1, 0, 514 );
      ZeidonStringConcat( szMsg, 1, 0, szXLPFileName, 1, 0, 514 );
      ZeidonStringConcat( szMsg, 1, 0, ".", 1, 0, 514 );
      //:MessageSend( ViewToWindow, "", "Configuration Management", szMsg, zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Configuration Management", szMsg, zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:DropView( TZCMLPLO )
      DropView( TZCMLPLO );
      //:RETURN -1
      return( -1 );
   } 

   //:END
   //:NAME VIEW TZCMLPLO "TZCMLPLO"
   SetNameForView( TZCMLPLO, "TZCMLPLO", 0, zLEVEL_TASK );

   //:nLth = zstrlen( szXLPFileName )
   nLth = zstrlen( szXLPFileName );
   //:// We want to get just the directory selected without the filename.
   //:nRC = zSearchSubString( szXLPFileName, "\"  , "b", nLth )
   nRC = zSearchSubString( szXLPFileName, "\\", "b", nLth );
   //://nRC = zSearchSubString( szXLPFileName, "\"  , "b", nRC - 1 )

   //:// Keep track of original MetSrcDir
   //:szStr = TZCMLPLO.LPLR.MetaSrcDir
   GetVariableFromAttribute( szStr, 0, 'S', 514, TZCMLPLO, "LPLR", "MetaSrcDir", "", 0 );

   //:nRC = ZeidonStringCopy( szFileName, 1, 0, szXLPFileName, 1, nRC, 513 )
   nRC = ZeidonStringCopy( szFileName, 1, 0, szXLPFileName, 1, (zLONG) nRC, 513 );

   //:// KJS 06/05/15 - Probably not here, but if the user puts in a directory for the meta source that doesn't
   //:// exist, do we want to create one for them?
   //://      SysValidDirOrFile( szFileName,//                         TRUE /* Directory (TRUE or FALSE) */,//                         FALSE /* CheckCreate */,//                         512 /* Max Path Length */ )
   //:TZCMLPLO.LPLR.MetaSrcDir = szFileName 
   SetAttributeFromString( TZCMLPLO, "LPLR", "MetaSrcDir", szFileName );

   //:   szFileName = TZCMLPLO.LPLR.MetaSrcDir + "\" + "TZCMULWO.POR"
   GetStringFromAttribute( szFileName, TZCMLPLO, "LPLR", "MetaSrcDir" );
   ZeidonStringConcat( szFileName, 1, 0, "\\", 1, 0, 514 );
   ZeidonStringConcat( szFileName, 1, 0, "TZCMULWO.POR", 1, 0, 514 );
   //:   nRC = ActivateOI_FromFile ( TZCMULWO, "TZCMULWO", ViewToWindow, szFileName, 512 )
   nRC = ActivateOI_FromFile( &TZCMULWO, "TZCMULWO", ViewToWindow, szFileName, 512 );
   //:   IF nRC < 0
   if ( nRC < 0 )
   { 
      //:   MessageSend( ViewToWindow, "", "Configuration Management",
      //:                "An Installation/Users object (TZCMULWO) does not exist in the directory path specified.",
      //:                zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Configuration Management", "An Installation/Users object (TZCMULWO) does not exist in the directory path specified.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:   SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:   DropView( TZCMULWO )
      DropView( TZCMULWO );
      //:   RETURN -1
      return( -1 );
      //:ELSE
   } 
   else
   { 
      //:   NAME VIEW TZCMULWO "TZCMULWO"
      SetNameForView( TZCMULWO, "TZCMULWO", 0, zLEVEL_TASK );
   } 

   //:   END  
   //:// KJS 06/16/15 - Should we see if there is an ExecutableSubDirecory, and if not, create one based on the ExecDir.
   //:IF TZCMULWO.Installation.ExecutableSubDirectory = "" AND TZCMLPLO.LPLR.ExecDir != "" 
   if ( CompareAttributeToString( TZCMULWO, "Installation", "ExecutableSubDirectory", "" ) == 0 && CompareAttributeToString( TZCMLPLO, "LPLR", "ExecDir", "" ) != 0 )
   { 
      //:szFileName = TZCMLPLO.LPLR.ExecDir 
      GetVariableFromAttribute( szFileName, 0, 'S', 514, TZCMLPLO, "LPLR", "ExecDir", "", 0 );
      //:// Get the part of the filename that is different between the Meta and Exec dirs.
      //:zSearchAndReplace( szFileName, 513, szStr, "" )
      zSearchAndReplace( szFileName, 513, szStr, "" );
      //:nRC = zSearchSubString( szFileName, "\"  , "f", 0 )
      nRC = zSearchSubString( szFileName, "\\", "f", 0 );
      //:IF nRC = 0
      if ( nRC == 0 )
      { 
         //:// Now replace the starting "\" if there is one.
         //:nRC = ZeidonStringCopy( szFileName, 1, 0, szFileName, 2, 0, 513 )          
         nRC = ZeidonStringCopy( szFileName, 1, 0, szFileName, 2, 0, 513 );
      } 

      //:END
      //:// Do we need to get rid of the first /?
      //:TZCMULWO.Installation.ExecutableSubDirectory = szFileName
      SetAttributeFromString( TZCMULWO, "Installation", "ExecutableSubDirectory", szFileName );
      //:TZCMLPLO.LPLR.wExecutableSubDirectory = szFileName
      SetAttributeFromString( TZCMLPLO, "LPLR", "wExecutableSubDirectory", szFileName );
   } 

   //:END
   return( 0 );
//   
//   //zstrncpy( szFileName, szXLPFileName, nRC, nLth ) 
// END
} 


//:LOCAL OPERATION
//:GetZeidonApp( VIEW ViewToWindow,
//:              VIEW vKZAPPLOO,
//:              STRING ( 32 ) szZeidonDirectory )
//:   STRING ( 513 ) szMsg
static zSHORT
o_GetZeidonApp( zVIEW     ViewToWindow,
                zPVIEW    vKZAPPLOO,
                zPCHAR    szZeidonDirectory )
{
   zCHAR     szMsg[ 514 ] = { 0 }; 
   //:STRING ( 513 ) szTZCMULWOFileName
   zCHAR     szTZCMULWOFileName[ 514 ] = { 0 }; 
   //:INTEGER nRC
   zLONG     nRC = 0; 
   //:INTEGER nLth
   zLONG     nLth = 0; 


   //:SysGetEnvVar( szZeidonDirectory, "ZEIDON",  513 )
   SysGetEnvVar( szZeidonDirectory, "ZEIDON", 513 );
   //:nLth = zstrlen( szZeidonDirectory )
   nLth = zstrlen( szZeidonDirectory );
   //:nRC = zSearchSubString( szZeidonDirectory, "\"  , "f", nLth )
   nRC = zSearchSubString( szZeidonDirectory, "\\", "f", nLth );

   //:szZeidonDirectory = szZeidonDirectory + "ZEIDON.APP"
   ZeidonStringConcat( szZeidonDirectory, 1, 0, "ZEIDON.APP", 1, 0, 33 );
   //:nRC = ActivateOI_FromFile ( vKZAPPLOO, "KZAPPLOO", ViewToWindow, szZeidonDirectory, 512)
   nRC = ActivateOI_FromFile( vKZAPPLOO, "KZAPPLOO", ViewToWindow, szZeidonDirectory, 512 );
   //:IF nRC < 0
   if ( nRC < 0 )
   { 
      //:szMsg = "Could not open: " + szZeidonDirectory + "."
      ZeidonStringCopy( szMsg, 1, 0, "Could not open: ", 1, 0, 514 );
      ZeidonStringConcat( szMsg, 1, 0, szZeidonDirectory, 1, 0, 514 );
      ZeidonStringConcat( szMsg, 1, 0, ".", 1, 0, 514 );
      //:MessageSend( ViewToWindow, "", "Configuration Management", szMsg, zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Configuration Management", szMsg, zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:DropView( vKZAPPLOO )
      DropView( *vKZAPPLOO );
      //:RETURN -1
      return( -1 );
   } 

   //:END
   return( 0 );
//   
// END
} 


 
#ifdef __cplusplus
}
#endif
