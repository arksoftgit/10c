/////////////////////////////////////////////////////////////////////////////
//
// MODULE NAME:   tzcmslpd.c - Zeidon Switch LPLR dialog operations
// DESCRIPTION:   This C file contains global and LOD operations for the
//                Zeidon workstation application.
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
// LAST MESSAGE ID: CM00609
//
// HISTORY:
//
//    1995/08/05: Beginning of 10B branch
//
/////////////////////////////////////////////////////////////////////////////
//

/*
CHANGE LOG
2001.02.12 BL  R54697
   improve handling of return code from InitializeLPLR
   Replace LPLR to Project
2000.10.30 RG  Z2000
    GetViewByName: for parameter zLEVEL_TASK changed View --> 0
From here old version
2000.10.24  SR  Z2000 Size of path variables
   Modified size of szLPLR_FileSpec, szDirectorySpec, szLPLR_FileName and
   szDetachSpec in function zwTZCMSLPD_RebuildMetaLists because size of attributes
   ExecDir, MetaSrcDir and PgmSrcDir has been changed to 254 in datamodel.
12.10.1997  DonC
   Modified SwitchLPLR to make sure no other tools are up.
18.02.1998  DonC
   Modified RebuildMetaLists to give prompt message to allow operator to
   abort before rebuild.
1999/04/07  DC
   Modified zwTZCMSLPD_RebuildMetaLists to use zstrcmpi instead of zstrcmp
   on compare of LPLR names. This ignores case differences.
*/

#include "tzlodopr.h"
#include "tz__oprs.h"
#include "tzcm_opr.hg"
#include "ZeidonOp.H"


zOPER_EXPORT zSHORT OPERATION
zwTZCMSLPD_InitDialog( zVIEW vSubtask )
{
   zVIEW    vZeidonCM;
   zVIEW    vTZCMWKSO;
   zVIEW    vTZCMSLPL;
   int      nRC;

   if ( GetViewByName( &vZeidonCM, "ZeidonCM", vSubtask,
                       zLEVEL_APPLICATION ) > 0 &&
        GetViewByName( &vTZCMWKSO, "TZCMWKSO", vZeidonCM,
                       zLEVEL_SUBTASK ) > 0 )
   {
      nRC = CreateViewFromViewForTask( &vTZCMSLPL, vTZCMWKSO, 0 );
      SetNameForView( vTZCMSLPL, "TZCMSLPL", vSubtask, zLEVEL_TASK );
   }
   else
   {
      MessageSend( vSubtask, "CM00601", "Configuration Management",
                   "Unable to activate RepositoryClient",
                   zMSGQ_OBJECT_CONSTRAINT_ERROR, zBEEP );
      return( 0 );
   }
   nRC = SetSelectStateOfEntityForSet( vTZCMSLPL, "LPLR", 1, 1 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
zwTZCMSLPD_TerminateDialog( zVIEW vSubtask )
{
   zVIEW    vTZCMSLPL;

   if ( GetViewByName( &vTZCMSLPL, "TZCMSLPL", vSubtask, zLEVEL_TASK ) > 0 )
      DropNameForView( vTZCMSLPL, "TZCMSLPL", vSubtask, zLEVEL_TASK );

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
zwTZCMSLPD_SwitchLPLR( zVIEW vSubtask )
{
   zLONG  lZKey, lDfltZKey;
   zVIEW  vZeidonCM;
   zVIEW  vTZCMSLPL;
   zVIEW  vTZCMWKSO;
   LPTASK lpTask;

   GetViewByName( &vZeidonCM, "ZeidonCM", vSubtask, zLEVEL_APPLICATION );
   GetViewByName( &vTZCMWKSO, "TZCMWKSO", vZeidonCM, zLEVEL_SUBTASK );
   if ( vTZCMWKSO == 0 )  // View isn't there
   {
      MessageSend( vSubtask, "CM00602", "Configuration Management",
                   "Unable to obtain RepositoryClient View",
                   zMSGQ_OBJECT_CONSTRAINT_ERROR, zBEEP );
      return( -1 );
   }

   // Make sure this is the only tool up.
   lpTask = 0;
   while ( (lpTask = SfGetNextTask( lpTask )) != 0 )
   {
      zCHAR szDialogName[ 200 ];

      // Check the name of the dialog associated with the task.  If it begins
      // with TZ then it's a Zeidon Tools task.  We allow the object browser
      // to run and we have to ignore the current task.
      SfGetTaskInfo( szDialogName, zTASK_DIALOG, lpTask );

      // We allow non-Zeidon tasks...
      if ( zstrncmpi( szDialogName, "TZ", 2 ) != 0 )
         continue;

      // We allow the browser...
      if ( zstrcmpi( szDialogName, "TZOBRWAD" ) == 0 )
         continue;

      // We allow the current task.
      if ( lpTask == SfGetCurrentTask( vSubtask ) )
         continue;

      // Uh-oh...some other Zeidon task is running.
      MessageSend( vSubtask, "CM00299", "Configuration Management",
                   "Another Zeidon Tool is currently running.\n"
                   "Shut down all Zeidon Tools before switching Projects. ",
                   zMSGQ_OBJECT_CONSTRAINT_ERROR, zBEEP );
      SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
      return( 0 );
   }

   GetViewByName( &vTZCMSLPL, "TZCMSLPL", vSubtask, zLEVEL_TASK );

   // Get the previous Default LPLR ZKey.
   GetIntegerFromAttribute( &lDfltZKey, vTZCMWKSO, "RepositoryClient",
                            "DefaultLPLR_ZKey" );

   // Get and set the new Default LPLR ZKey.
   GetIntegerFromAttribute( &lZKey, vTZCMSLPL, "LPLR", "ZKey" );
   TerminateLPLR( vSubtask );

   // PETTIT - In the future I will check the return code and continue with the
   // switch based upon it.
   SetAttributeFromInteger( vTZCMWKSO, "RepositoryClient",
                            "DefaultLPLR_ZKey", lZKey );
   SetCursorFirstEntityByInteger( vTZCMWKSO, "LPLR", "ZKey", lZKey, "" );

   // Establish new position on workstation.
   if ( InitializeDefaultLPL( vSubtask ) < 0 )
      SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
   else
   {
      oTZCMWKSO_CommitWorkstation( vTZCMWKSO );
      DropNameForView( vTZCMSLPL, "TZCMSLPL", vSubtask, zLEVEL_TASK );
   }

   return( 1 );
}

zOPER_EXPORT zSHORT OPERATION
zwTZCMSLPD_RebuildMetaLists( zVIEW vSubtask )
{
   zVIEW  vZeidonCM;
   zVIEW  vTZCMWKSO;
   zVIEW  LPLR_View;
   zVIEW  vTZCMSLPL;
   zCHAR  szLPLR_FileSpec[ zMAX_FILESPEC_LTH + 1 ];
   zCHAR  szDirectorySpec[ zMAX_FILESPEC_LTH + 1 ];
   zCHAR  szLPLR_Name[ 33 ];
   zCHAR  szLPLR_FileName[ 10 ];
   zLONG  lTaskUseCnt;
   zLONG  lCurrentZKey;
   zLONG  lZKey;
   zSHORT nRC, nLPLR_Activated;
   HFILE  hFile;
   zCHAR  szDetachSpec[ zMAX_FILESPEC_LTH + 1 ];
   zCHAR  szMsg[ zMAX_FILESPEC_LTH + zSHORT_MESSAGE_LTH + 1 ];

   /* KJS 03/26/13 - Changing this to a simple yes or no question
   if ( MessagePrompt( vSubtask, "CM00609",
                       "Configuration Management",
                       "Do you want to rebuild your Project?\n\n"
                       "This is a Zeidon internal function only that will alter your Project.\n"
                       "Only continue if you fully understand what you are doing.",
                       zBEEP,
                       zBUTTONS_YESNO, zRESPONSE_NO, 0 ) == zRESPONSE_NO )
   */
   if ( MessagePrompt( vSubtask, "CM00609",
                       "Configuration Management",
                       "Do you want to rebuild your Project?",
                       zBEEP,
                       zBUTTONS_YESNO, zRESPONSE_NO, 0 ) == zRESPONSE_NO )
   {
      //SetWindowActionBehavior( vSubtask, zWAB_ExitDialogTask, 0, 0 );
      return( 0 );
   }

   SetNameForView( vSubtask, "TZCM_RebuildLPLR", vSubtask, zLEVEL_TASK );
   GetViewByName( &vZeidonCM, "ZeidonCM", vSubtask, zLEVEL_APPLICATION );
   GetViewByName( &vTZCMWKSO, "TZCMWKSO", vZeidonCM, zLEVEL_SUBTASK );
   if ( vTZCMWKSO == 0 )  // view isn't there
      return( -1 );

   nRC = GetViewByName( &vTZCMSLPL, "TZCMSLPL", vSubtask, zLEVEL_TASK );
   GetIntegerFromAttribute( &lZKey, vTZCMSLPL, "LPLR", "ZKey" );
   GetIntegerFromAttribute( &lCurrentZKey, vTZCMWKSO, "LPLR", "ZKey" );
   nRC = SetCursorFirstEntityByInteger( vTZCMWKSO, "LPLR", "ZKey", lZKey, "" );

   GetStringFromAttribute( szLPLR_Name, vTZCMWKSO, "LPLR", "Name" );
   nLPLR_Activated = GetViewByName( &LPLR_View, szLPLR_Name, vZeidonCM, zLEVEL_SUBTASK );
   GetStringFromAttribute( szDirectorySpec, vTZCMWKSO, "LPLR", "ExecDir" );  // borrow szDirectorySpec for a second
   SysConvertEnvironmentString( szLPLR_FileSpec, szDirectorySpec );
   ofnTZCMWKSO_AppendSlash( szLPLR_FileSpec );
   zstrncpy( szLPLR_FileName, szLPLR_Name, 9 );
   for ( nRC = 0; nRC < 8; nRC++ )
   {
      if ( szLPLR_FileName[ nRC ] == 0 )
         break;

      if ( szLPLR_FileName[ nRC ] == ' ' )
         szLPLR_FileName[ nRC ] = '_';
   }

   szLPLR_FileName[ nRC ] = 0;
   zstrcat( szLPLR_FileSpec, szLPLR_FileName );
   zstrcat( szLPLR_FileSpec, ".XLP" );
   if ( nLPLR_Activated < 1 ) // LPLR currently not activated
   {
      hFile = (HFILE) SysOpenFile( vSubtask, szLPLR_FileSpec, COREFILE_READ );
      if ( hFile > 0 )
      {                     // Activate LPLR for rebuild only
         SysCloseFile( vSubtask, hFile, 0 );
         nRC = ActivateOI_FromFile( &LPLR_View, "TZCMLPLO", vSubtask,
                                    szLPLR_FileSpec, zSINGLE );
         nRC = BuildLPLR_MetaTypes( vSubtask, LPLR_View, 1 );
      }
      else
      {
         if ( ActivateEmptyObjectInstance( &LPLR_View, "TZCMLPLO",
                                           vSubtask, zSINGLE ) != 0 )
         {
            MessageSend( vSubtask, "CM00604", "Configuration Management",
                         "Error activating empty Project Instance",
                         zMSGQ_OBJECT_CONSTRAINT_ERROR, zBEEP );
            return( -1 );
         }

         CreateMetaEntity( vSubtask, LPLR_View, "LPLR", zPOS_AFTER );
         SetAttributeFromAttribute( vTZCMWKSO, "LPLR", "ZKey",
                                    LPLR_View, "LPLR", "ZKey" );
         SetMatchingAttributesByName( LPLR_View, "LPLR", vTZCMWKSO, "LPLR", zSET_NOTNULL );
         if ( CheckExistenceOfEntity( vTZCMWKSO, "CorrespondingCPLR" ) >= zCURSOR_SET )
              IncludeSubobjectFromSubobject( LPLR_View, "CorrespondingCPLR",
                                             vTZCMWKSO, "CorrespondingCPLR", zPOS_AFTER );
         nRC = BuildLPLR_MetaTypes( vSubtask, LPLR_View, 1 );
      }
   }
   else  // LPLR is currently active
   {
      if ( lZKey != lCurrentZKey )
      {
         zstrcpy( szMsg, "Project is currently active in another task.\n" );
         zstrcat( szMsg, "Rebuilding the Project may corrupt the meta list.\n" );
         zstrcat( szMsg, "Rebuilding of the Project is therefore cancelled!" );
         MessageSend( vSubtask, "CM00605", "Configuration Management",
                      szMsg,
                      zMSGQ_OBJECT_CONSTRAINT_WARNING, zBEEP );
         return( -1 );
      }
      else
      {
         GetIntegerFromAttribute( &lTaskUseCnt, LPLR_View, "LPLR", "TaskUseCount" );
         if ( lTaskUseCnt > 1 )
         {
            zstrcpy( szMsg, "Project is currently active in more than one task.\n" );
            zstrcat( szMsg, "Rebuilding the Project may corrupt the meta list.\n" );
            zstrcat( szMsg, "Rebuilding of the Project is therefore cancelled!" );
            MessageSend( vSubtask, "CM00606", "Configuration Management",
                         szMsg,
                         zMSGQ_OBJECT_CONSTRAINT_WARNING, zBEEP );
            return( -1 );
         }
      }

      nRC = BuildLPLR_MetaTypes( vSubtask, LPLR_View, 1 );
   }

   if ( nRC < 0 )
      return( -1 );

   // Test to see if we are indeed writing the correct O to file.
   GetStringFromAttribute( szDirectorySpec, LPLR_View, "LPLR", "Name" );
   if ( zstrcmpi( szDirectorySpec, szLPLR_Name ) != 0 )
   {
      zstrcpy( szMsg, "Project Name " );
      zstrcat( szMsg, szLPLR_Name );
      zstrcat( szMsg, " doesn't match name \nof OI file\n" );
      zstrcat( szMsg, szLPLR_FileSpec );
      zstrcat( szMsg, "\nCommit of Project aborted!\n" );
      zstrcat( szMsg, "Please notify Bill of error" );
      MessageSend( vSubtask, "CM00607", "Configuration Management",
                   szMsg,
                   zMSGQ_OBJECT_CONSTRAINT_ERROR, zBEEP );
      return( -1 );
   }

   nRC = zgSortEntityWithinParent( zASCENDING, LPLR_View,
                                   "W_MetaType", "Type", "" );
// if ( CommitOI_ToFile( LPLR_View, szLPLR_FileSpec, zSINGLE ) == 0 ) // zBINARY | zSINGLE ) == 0 )
//   {
//      zstrcpy( szMsg, "Project " );
//      zstrcat( szMsg, szLPLR_Name );
//      zstrcat( szMsg, " to be rebuilt in\n" );
//      zstrcat( szMsg, szLPLR_FileSpec );
//      MessageSend( vSubtask, "CM00608", "Configuration Management",
//                   szMsg,
//                   zMSGQ_OBJECT_CONSTRAINT_INFORMATION, zBEEP );
//   }

   if ( CommitOI_ToFile( LPLR_View, szLPLR_FileSpec, zSINGLE ) == 0 ) // zBINARY | zSINGLE ) == 0 )
   {
      zstrcpy( szMsg, "Project " );
      zstrcat( szMsg, szLPLR_Name );
      zstrcat( szMsg, " has been rebuilt in\n" );
      zstrcat( szMsg, szLPLR_FileSpec );
      MessageSend( vSubtask, "CM00608", "Configuration Management",
                   szMsg,
                   zMSGQ_OBJECT_CONSTRAINT_INFORMATION, zBEEP );
   }

   if ( nLPLR_Activated < 1 )  // Application LPLR View not found
   {
      // Drop the OI because it wasn't activated before.
      DropObjectInstance( LPLR_View );
   // GetWKS_FileName( szDirectorySpec );
   // CommitOI_ToFile( vTZCMWKSO, szDirectorySpec, zSINGLE );
   }

   if ( SysGetEnvVar( szDetachSpec, "ZEIDON", zMAX_FILENAME_LTH + 1 ) == 0 )
   {
      ofnTZCMWKSO_AppendSlash( szDetachSpec );
      zstrcat( szDetachSpec, "TZCM.DET" );
      hFile = (HFILE) SysOpenFile( vSubtask, szDetachSpec, COREFILE_DELETE );
   }

   nRC = SetCursorFirstEntityByInteger( vTZCMWKSO,
                                        "LPLR", "ZKey", lCurrentZKey, "" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
zwTZCMSLPD_SwapLanguage( zVIEW vSubtask )
{
   zSHORT nLanguageCode;

   SysGetLanguageCode( &nLanguageCode );
   if ( nLanguageCode == 49 )
   {
      MessageSend( vSubtask, "CM00607", "Configuration Management",
                   "Note: The Language has been set to ENGLISH.",
                   zMSGQ_OBJECT_CONSTRAINT_INFORMATION, zBEEP );

      SysSetLanguageCode( 1 );
   }
   else
   {
      MessageSend( vSubtask, "CM00607", "Configuration Management",
                   "Hinweis: Der Sprachspeicher wurde auf DEUTSCH gestellt.",
                   zMSGQ_OBJECT_CONSTRAINT_INFORMATION, zBEEP );
      SysSetLanguageCode( 49 );
   }

   return( 0 );
}
