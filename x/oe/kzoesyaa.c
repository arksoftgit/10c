// DESCRIPTION:  This is the source file which contains environment specific
//               system services for use by the other Zeidon system and
//               application programs that are common accross environments.
//               It also contains all the startup and shutdown operations
//               for Object services.
//
// OPERATIONS:   All Operations beginning with Sys ( ex. SysAllocMemory )
//               RegisterZeidonApplication
//               UnregisterZeidonApplication
//               InitializeAnchorBlock
//               FreeAnchorBlock
//               ProcessZeidonMessage (deleted for a Server)
//               SysStartObjectServices (deleted for a Server)
//
// *******************************************************************
// * Copyright (c) 1993 QuinSoft Corporation. All rights reserved.   *
// * Confidential and Proprietary material subject to license -      *
// * do not reproduce or disclose. This material is an unpublished   *
// * work and is considered a trade secret belonging to the          *
// * copyright holder.                                               *
// *******************************************************************
//  AUTHOR:  Gig Kirk
//  DATE:    3/31/92
//  API:     Windows and DOS
//  ENVIRONMENT: Windows 3.x
//
//

#define KZSYSSVC_INCL
#define KZOESYS_INCL
#define zprintf printf

#define zGLOBAL_DATA
#include "kzoegdef.h"     // Sets up mGLOBAL_? macro.
#include "kzoengaa.h"     // Object Services public prototypes
#include "kzoengaa.hg"    // EXE and DLL globals
#include "kzoeltaa.hg"    // DLL only literals
#include "kzoemsaa.hg"    // Object Engine and Domain base messages

#include <stdlib.h>       // for malloc, realloc and free
#include <string.h>       // for string routines
#include <time.h>         // for SysGetDateTime
//#include <tcl/tk.h>       // for SysWait
#include <dlfcn.h>        // for SysLoadLibrary and SysLoadProc
#include <sys/time.h>
#include <sys/stat.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <unistd.h>
#include <zdecimal.h>

void
fnWriteLog( zPCHAR pszStr )
{
   static FILE * hFile = NULL;

   if ( hFile == NULL )
      hFile = fopen( "zeidon.log", "w" );

   fprintf( hFile, pszStr );
   zprintf( pszStr );

} // fnWriteLog

//./ ADD NAME=fnFindTask
// Source Module=kzoesyaa.c
//***********************************************************************
//
//  FUNCTION:   fnFindTask
//
//  PURPOSE:    To locate the task id passed in the registered
//              task list of Object Services.
//
//  PARAMETERS: lTaskID - Unique task number returned by SysGetTaskID.
//                        If it is 0 then the current task is assumed.
//
//  RETURNS:    LPTASK - Address of task found
//              0 (NULL)  - Could not find the task
//
//************************************************************************
//./ END + 2
LPTASK
fnFindTask( zVIEW lpView, zLONG lTaskID )
{
   LPTASK lpTask;

   if ( AnchorBlock == 0 )
      return( 0 ) ;

   // Make sure nobody else is deleting a task.
   fnStartBrowseOfTaskList( zGETPTR( lpView->hTask ), FALSE );

   lpTask = zGETPTR( AnchorBlock->hFirstTask );
   while ( lpTask )
   {
      if ( lpTask->lTaskID == lTaskID )
         break;

      lpTask = zGETPTR( lpTask->hNextTask );
   }

   fnEndBrowseOfTaskList( FALSE );

   return lpTask;
}

//./ ADD NAME=RegisterZeidonApplication
//*************************************************************************
//
//  ENTRY:     RegisterZeidonApplication
//
//  PURPOSE:   This Operation Initializes the use of the Object Engine
//             executables.  It is used by the driver and
//             any user written programs to start CORE for processing
//             a requested application.
//
//  PARAMETERS: AnchorBlock - void pointer to system anchor block HAB
//              hMainWnd    - Handle to main window to which the
//                            Engine can pass a massage which
//                            the window in turn passes back to the
//                            Object Engine for task management
//              lMsg        - Application defined message which
//                            when received should result in a call
//                            to the operation ProcessZeidonMessage
//
//              ApplicationString - The application init string
//              is in the format:
//
//              {\\Application Name{\Dialog Name\User ID\Password command}}
//
//              where:
//
//                Application Name - is an valid installed application name
//                                   defined to the zeidon system in the
//                                   file zeidon.pap which is located in
//                                   the directory referenced by the
//                                   ZEIDON environment variable. Note: if
//                                   the application name is a NULL pointer
//                                   OR a NULL string, then the register
//                                   will create a subtask for the system
//                                   application.
//
//                WDOD Name - is an optional starting WDOD name when
//                            invoking the driver. This parameter
//                            is ignored when the starting program is
//                            not the driver.
//
//                User ID - is an optional User ID for the application
//                          instance.
//
//                Password - is an optional Password associated with the
//                           UserID.
//
//                command - is an optional command string for the
//                          application to process.
//
// PROCESS:   If the object services executable KZOENGWA has not been
//            started, then it is started by the Operation
//            SysStartObjectServices.
//
//            On a Server, Object Services is not a separate executable.
//            Thus this routine does not call SysStartObjectServices.
//
// RETURNS:   0 - Task registered successfully
//  zCALL_ERROR - Task registration error
//
//**************************************************************************
//./ END + 6
zSHORT  OPERATION
RegisterZeidonApplication( zPVIEW    lpReturnView,
                           zLONG     pSystemAnchorBlock,
                           zLONG     hMainWnd,
                           zLONG     lMsg,
                           zCPCHAR   cpcAppString,
                           zCPCHAR   cpcControl,
                           zLONG     lControl )
{
   zSHORT i, nRC;
   char  szTaskTitle[ 80 ];
   char  szAppName[ 40 ];
   char  szUserID[ 40 ];
   char  szWdod[ 40 ];
   char  szPassword[ 40 ];
   char  szCommand[ 256 ];
   LPAPP  lpApp;
   LPTASK lpTask;

   hModule = 0;         // Not used for a Server

   szTaskTitle[ 0 ] = 0;

   // Parse the Application string passed in from the client
   fnParseAppString( szAppName, szWdod,
                     szUserID,  szPassword,
                     szCommand, cpcAppString );

   nRC = zCALL_ERROR;   // Default nRC to bad ( zCALL_ERROR )
   if ( lpTask = fnCreateTask( pSystemAnchorBlock, hMainWnd,
                               lMsg, szTaskTitle, 0 ) )
   {
      if ( lpApp = fnCreateApp( lpTAsk, szAppName ) )
      {
         // Now point the application task to the application
         lpTask->hApp = lpApp;
         lpTask->hFirstSubtask->hApp = lpApp;

         if ( szCommand[ 0 ] )
         {
            lpTask->hCommand =
               fnStoreStringInDataspace( (LPDATAHEADER) AnchorBlock,
                                         szCommand );
         }
         else
            lpTask->hCommand = 0;

         // Task is now ready to go.
         lpTask->bDisable = FALSE;

         ActivateViewObject( lpTask->hFirstView, szlMessageObject, 0 );
         *lpReturnView = lpTask->hFirstView;
         nRC = 0;
      }
      else
      {
         DeleteTask( lpTask );
      }
   }

   // Check nRC and do a task release on anchor block if init failed
   if ( nRC )
   {
      SysFreeMemory( hAnchorBlock );
      // hAnchorBlock = 0;       NOT IN WINDOWS-DLL DATA IS SINGLE
      // AnchorBlock  = 0;       NOT IN WINDOWS-DLL DATA IS SINGLE
   }

   SfStartNetworks( 0 );

//?TraceLineI( "Task ID ==> ", SysGetTaskID( 0 ) );

   // Return the result
   return( nRC );
}

//=RegisterZeidonAppForThread
/*
   In Unix all tasks have their own thread so there is no difference between
   tasks and thread tasks.

*/
zSHORT OPERATION
RegisterZeidonAppForThread( zPVIEW lpReturnView, zPCHAR pcpcAppString )
{
   return RegisterZeidonApplication( lpReturnView, 0, 0, 0, pcpcAppString );
}

//./ ADD NAME=UnregisterZeidonApplication
//***********************************************************************
//
//  ENTRY:      UnregisterZeidonApplication
//
//  PURPOSE:    To end Object Processing by a client, generally this
//              operation is called when a client done processing
//              and is going to end. However, this operation may
//              be used to disconnect from zeidon at any time and
//              free up task memory.
//
//  PARAMETERS: NONE
//
//  RETURNS:    0 - Task unregistered successfully
//             zCALL_ERROR - Task unregistration failed (Task not found)
//
//************************************************************************
//./ END + 2
zSHORT  OPERATION
UnregisterZeidonApplication( zVIEW lpView )
{
   int nRC;
   LPTASK lpTask;

   lpTask = zGETPTR( lpView->hTask ):
   nRC = DeleteTask( lpTask );
   return( nRC );
}

//./ ADD NAME=SysFreeInternational
//***********************************************************************
//
//  ENTRY:      SysFreeInternational
//
//************************************************************************
//./ END + 2
zVOID OPERATION
SysFreeInternational( LPINTERNATIONAL lpInternational )
{
   if ( lpInternational &&
        lpInternational->nTableID == iInternational )
   {
      fnFreeDataspace( lpInternational->hShortDate );
      fnFreeDataspace( lpInternational->hLongDate );
      fnFreeDataspace( lpInternational->hTimeFmt );
      fnFreeDataspace( lpInternational );
   }
   return;
}

//./ ADD NAME=SysCreateInternational
//***********************************************************************
//
//  ENTRY:      SysCreateInternational
//
//              Currently on a Server, we are hard-coding the default
//              values.
//
//************************************************************************
//./ END + 2
LPINTERNATIONAL OPERATION
SysCreateInternational( zVOID )
{
   LPINTERNATIONAL   lpInternational;
   zCHAR             sz[ 512 ];

   lpInternational = (LPINTERNATIONAL)
      fnAllocDataspace( (LPDATAHEADER) AnchorBlock->hMainFirstDataHeader,
                        sizeof( InternationalRecord ), 1, 0, iInternational );
   if ( !lpInternational )
      return( 0 );

   lpInternational->nTableID = iInternational;

   // Get country code, default to US
   lpInternational->nCountry = 1;

   // Selected country name, no default
   zstrcpy ( lpInternational->szCountry, "United States" );

   // Get selected language code, default U.S. English
   zstrcpy ( lpInternational->szLanguage, "enu" );

   // List separator, default comma
   zstrcpy ( lpInternational->szList, "," );

   // Measurement system, default English
   lpInternational->nMeasure = 1;

   // Time format, default 12 hour
   lpInternational->nTime = 0;

   // Time Separator, default ":"
   zstrcpy ( lpInternational->szTime, ":" );

   // Trailing string for AM, default "AM"
   zstrcpy ( lpInternational->sz1159, "AM" );

   // Trailing string for PM, default "PM"
   zstrcpy ( lpInternational->sz2359, "PM" );

   // Time leading zeros for hours, default yes
   lpInternational->nTLZero = 0;

   // Picture for short date, default "dd/mm/yy"
   zstrcpy ( sz, "D/M/YY" );
   lpInternational->hShortDate =
      fnStoreStringInDataspace( ( LPDATAHEADER ) AnchorBlock->hMainFirstDataHeader,
                                sz );

   // Picture for long date, default "mmm dd, yyyy"
   zstrcpy ( sz, "Dddd, Mmmm Dd, YYYY" );
   lpInternational->hLongDate =
      fnStoreStringInDataspace( ( LPDATAHEADER ) AnchorBlock->hMainFirstDataHeader,
                                sz );

   // Currency symbol, default "$"
   zstrcpy ( lpInternational->szCurrency, "$" );

   // Current code format, default 0
   //
   // 0 - Currency symbol prefix with no separation ( $1 )
   // 1 - Currency symbol suffix with no separation ( 1$ )
   // 2 - Currency symbol prefix with one character separation ( $ 1 )
   // 3 - Currency symbol suffix with one character separation ( 1 $ )
   //
   lpInternational->nCurrency = 0;

   // Number of digits used for the fractional part of a currency amount,
   // default 2.
   lpInternational->nCurrDigits = 2;

   // Negative currency format code default 0
   //
   // 0  ($1)
   // 1  -$1
   // 2  $-1
   // 3  $1-
   // 4  (1$)
   // 5  -1$
   // 6  1-$
   // 7  1$-
   // 8  -1 $
   // 9  -$ 1
   // 10 $ 1-
   //
   lpInternational->nNegCurr = 0;

   // Symbol used to separate thousands in numbers with more than 3 digits,
   // default ","
   zstrcpy ( lpInternational->szThousand, "." );

   // Symbol used to separated the integer part from the fractional part
   // of a number, default "."
   zstrcpy ( lpInternational->szDecimal, "," );

   // Value defining the number of decimal digits that should be used in a
   // number, default 2
   lpInternational->nDigits = 2;

   // Value specifying whether a decimal value less than 1.0 (and greater
   // than -1.0) should contain a leading zero, as follows:
   //
   //  0    Do not use a leading zero ( .7 )
   //  1    Use a leading zero ( 0.7 )
   //
   // Default is 1.
   lpInternational->nLzero = 1;

   // construct zeidon intl time format from the other indicators
   if ( lpInternational->nTLZero )
      zstrcpy( sz, "HH" );
   else
      zstrcpy( sz, "H" );
   zstrcat( sz, "\"" );
   zstrcat( sz, lpInternational->szTime );
   zstrcat( sz, "\"" );
   zstrcat( sz, "MI" );
   if ( !lpInternational->nTime )
      zstrcat( sz, " AM" );
   lpInternational->hTimeFmt =
      fnStoreStringInDataspace( ( LPDATAHEADER ) AnchorBlock->hMainFirstDataHeader,
                                sz );

   return( lpInternational );
}

zSHORT OPERATION
SysGetNumberFormat( zPCHAR szReturnThou,
                    zPCHAR szReturnDecPt,
                    zPLONG lplPrecision )
{
   if ( AnchorBlock && AnchorBlock->hInternational )
   {
      zstrcpy( szReturnThou, AnchorBlock->hInternational->szThousand );
      zstrcpy( szReturnDecPt, AnchorBlock->hInternational->szDecimal );
      *lplPrecision = (zLONG) AnchorBlock->hInternational->nDigits;
      return( 0 );
   }
   else
      return( zCALL_ERROR );
}

void OPERATION
SysGetTimeFormat( zPCHAR szReturnString )
{
   if ( AnchorBlock && AnchorBlock->hInternational &&
        AnchorBlock->hInternational->hTimeFmt )
      zstrcpy( szReturnString, AnchorBlock->hInternational->hTimeFmt );
   else
      *szReturnString = 0;
}

void OPERATION
SysGetLongDateFormat( zPCHAR szReturnString )
{
   if ( AnchorBlock && AnchorBlock->hInternational &&
        AnchorBlock->hInternational->hLongDate )
      zstrcpy( szReturnString, AnchorBlock->hInternational->hLongDate );
   else
      *szReturnString = 0;
}

void OPERATION
SysGetShortDateFormat( zPCHAR szReturnString )
{
   if ( AnchorBlock && AnchorBlock->hInternational &&
        AnchorBlock->hInternational->hShortDate )
      zstrcpy( szReturnString, AnchorBlock->hInternational->hShortDate );
   else
      *szReturnString = 0;
}

//***********************************************************************
//
//  ENTRY:      InitializeAnchorBlock
//
//  PURPOSE:    To create the main anchor block segment for
//              the Object Services. This operation is called
//              by KZOENGWA on startup to create the main Object
//              services task.
//
//  PARAMETERS: Object Services PM HAB
//              Object Services Main Window Handle
//              Object Services List/Trace Window Handle
//              Object Services Message for task Management ( WM_USER)
//
//  RETURNS:    0 - Anchor block initialized successfully
//             zCALL_ERROR - Anchor block not initialized successfully
//
//************************************************************************
LPANCHOR OPERATION
InitializeAnchorBlock( zLONG OE_AnchorBlock,
                       zLONG lOE_hMainWnd,
                       zLONG lOE_hListWnd,
                       zLONG lOE_Msg )
{
   char szTaskTitle[ 80 ];
   char szZeidonEnv[ zMAX_FILENAME_LTH + 1 ];

   //*****************************************************************
   // For Unix-System change Dir-Separator from Backslash
   // to normal slash
   //*****************************************************************
   cDirSep = '/';
   g_bServerMode = TRUE;

   // Validate that environment variable ZEIDON set, NOTE: This
   // is done both here and in SysStartObjectServices on purpose
   // because ObjectServices can be started either alone or by
   // a client's RegisterZeidonApplication call.

   // Validate that environment variable ZEIDON set, NOTE: This
   // is done both here and in SysStartObjectServices on purpose
   // because ObjectServices can be started either alone or by
   // a client's RegisterZeidonApplication call.
   SysGetEnvVar( szZeidonEnv, szlZEIDON, sizeof( szZeidonEnv ) );
   if ( szZeidonEnv[ 0 ] == 0 )
   {
      char szMessage[ 256 ];

      SysGetBaseMessage( szMessage, 2, sizeof( szMessage ) ); // Message number 2
      SysMessageBox( "Error", szMessage, 1 );

      return( (LPANCHOR) zCALL_ERROR );   // Error initializing anchor
   }

   // Edit the zeidon environment and make sure it ends with
   // a directory separator.
   SysAppendcDirSep( szZeidonEnv );

   // Allocate the main shared table space for the Anchor Block
   hAnchorBlock =
          fnInitializeDataspace( (zCOREMEM) &AnchorBlock,
                                 iAnchor, "ZOE Shared",
                                 16384 - sizeof( DataHeaderRecord ),
                                 szlShareSeg );

   if ( !AnchorBlock )
   {
      SysMessageBox( "Zeidon", "Error allocating AnchorBlock", 0 );
      return( (LPANCHOR) zCALL_ERROR );   // Error initializing anchor
   }

   AnchorBlock->nTableID        = iAnchor; // Flag Table ID
   AnchorBlock->nStatus         = AnchorUninitialized;  // Init is pending
   AnchorBlock->lMainTaskID     = 0; // SysGetTaskID( 0 );

// AnchorBlock->lTaskAllocSize  = 12288 - sizeof( DataHeaderRecord );
// AnchorBlock->lTaskIncrSize   = 8192;

   AnchorBlock->lTaskAllocSize  = zSHARED_ALLOC - sizeof( DataHeaderRecord );

   AnchorBlock->lHab            = OE_AnchorBlock;
   AnchorBlock->lOE_hMainWnd    = lOE_hMainWnd;
   AnchorBlock->lOE_hListWnd    = lOE_hListWnd;
   AnchorBlock->lOE_Msg         = lOE_Msg;
   zstrcpy( AnchorBlock->szZeidonLocal, szZeidonEnv );
   *AnchorBlock->szZeidonBin    = 0;
   *AnchorBlock->szZeidonSys    = 0;
   AnchorBlock->hInternational  = 0;

   // Get Title of Main Task
   AnchorBlock->hMainTask =
               fnCreateTask( OE_AnchorBlock, lOE_hMainWnd,
                             lOE_Msg,  "ZeidonSys for Linux", 0 );
   AnchorBlock->hMainTask->bDisable = FALSE;
   AnchorBlock->hMainFirstDataHeader =
                                    AnchorBlock->hMainTask->hFirstDataHeader;
   AnchorBlock->lMainTaskID = AnchorBlock->hMainTask;
   if ( AnchorBlock->hMainTask )
   {
      int     nEOF;
      long    hFile;
      zPCHAR  cpcLine;

      // Now that we have created the main task, see if we can open
      // the zeidon applications file and get the directory pointers
      // for the zeidon exe directory and the zeidon system directory.
      zstrcat( szZeidonEnv, szlAppFile );
      hFile = SysOpenFile( szZeidonEnv, COREFILE_READ );
      if ( hFile == -1 )
      {
         char szMessage[ 256 ];

         SysGetBaseMessage( szMessage, 9, 255 ); // Message number 9
         zstrcat( szMessage, " '" );
         zstrcat( szMessage, szZeidonEnv );
         zstrcat( szMessage, "'" );

         // Free the shared segment for KZOENGWA
         AnchorBlock->nStatus = AnchorCorrupt; // Mark AnchorBlock as no good
         SysFreeMemory( hAnchorBlock );        // Free for KZOENGAA.DLL

         // NULL AnchorBlock handle and pointer
         hModule      = 0;
         hAnchorBlock = 0;
         AnchorBlock  = 0;

         SysMessageBox( "Error", szMessage, 1 );

         return( 0 );
      }

      nEOF = SysReadLine( &cpcLine, hFile );
      while ( nEOF > 0 )
      {
         SysParseLine( szZeidonEnv, &cpcLine, &cpcLine[ 1 ] );
         if ( zstrcmp( szZeidonEnv, szlZEIDON_BIN ) == 0 )
         {
            fnConvertEnvironmentString( szZeidonEnv, cpcLine );
            SysAppendcDirSep( szZeidonEnv );
            zstrcpy( AnchorBlock->szZeidonBin, szZeidonEnv );
         }
         else
         if ( zstrcmp( szZeidonEnv, szlZEIDON_SYS ) == 0 )
         {
            fnConvertEnvironmentString( szZeidonEnv, cpcLine );
            SysAppendcDirSep( szZeidonEnv );
            zstrcpy( AnchorBlock->szZeidonSys, szZeidonEnv );
         }
         else
         if ( zstrcmp( szZeidonEnv, szlZEIDON_LOC ) == 0 )
         {
            fnConvertEnvironmentString( szZeidonEnv, cpcLine );
            SysAppendcDirSep( szZeidonEnv );
            zstrcpy( AnchorBlock->szZeidonLoc, szZeidonEnv );
         }
         else
         if ( zstrcmp( szZeidonEnv, szlZEIDON_SHR ) == 0 )
         {
            fnConvertEnvironmentString( szZeidonEnv, cpcLine );
            SysAppendcDirSep( szZeidonEnv );
            zstrcpy( AnchorBlock->szZeidonShr, szZeidonEnv );
         }
         nEOF = SysReadLine( &cpcLine, hFile );
         if ( zstrncmp( cpcLine + 1, szlAPPLICATION,
                        zstrlen( szlAPPLICATION ) ) == 0 )
            break;
      }

      SysCloseFile( hFile, 0 );
      if ( !*AnchorBlock->szZeidonBin || !*AnchorBlock->szZeidonSys )
      {
         char szMessage[ 256 ];

         SysGetBaseMessage( szMessage, 8, 255 ); // Message number 8
         zstrcat( szMessage, ", " );
         zstrcat( szMessage, AnchorBlock->szZeidonLocal );
         zstrcat( szMessage, szlAppFile );
         SysMessageBox( "Error", szMessage, 1 );
      }
      else
         AnchorBlock->hSystemApp = fnCreateApp( lpTask, 0 );  // Create sys app

      AnchorBlock->hMainTask->hApp = AnchorBlock->hSystemApp;
      AnchorBlock->hMainTask->hFirstSubtask->hApp =
                                                   AnchorBlock->hSystemApp;
   }

   // If First task initialization failed, issue error and leave
   if ( !AnchorBlock->hMainTask || !AnchorBlock->hSystemApp )
   {
      // Free the shared segment for KZOENGWA
      AnchorBlock->nStatus = AnchorCorrupt;  // Mark AnchorBlock as no good
      SysFreeMemory( hAnchorBlock );         // Free for KZOENGAA.DLL

      // NULL AnchorBlock handle and pointer
      hModule      = 0;
      hAnchorBlock = 0;
      AnchorBlock  = 0;

      return( 0 );
   }

   // create international info from win.ini
   AnchorBlock->hInternational = SysCreateInternational( );

   AnchorBlock->nStatus         = AnchorInitialized; // Flag init as complete
   SysMessageList( "Object Services Initialization complete..." );

   return( AnchorBlock );

}   // End of InitializeAnchorBlock

// This function is used to drop the local task's reference to the anchor
// block.  Should not be called from the main system task!
void LOCALOPER
fnFreeLocalAnchorBlock( zBOOL bWebTask )
{
   // Nothing needs to be done in Linux because all memory is local memory.
   return;
}

//***********************************************************************
//
//  ENTRY:      FreeAnchorBlock
//
//  PURPOSE:    To release the main anchor block segment for
//              the Object Services. This operation is called
//              by KZOENGWA on ending when all tasks have ended.
//
//  PARAMETERS: NONE
//
//  RETURNS:    0 - Anchor block freed successfully
//             zCALL_ERROR - Anchor block not freed successfully
//
//************************************************************************
zSHORT  OPERATION
FreeAnchorBlock( zVIEW lpView )
{
   zLONG  lRC;
   LPTASK lpTask;

   // if AnchorBlock not initialized, return zCALL_ERROR
   if ( !AnchorBlock )
      return( zCALL_ERROR );

   // Get current task
   lpTask = zGETPTR( lpView->hTask ):

   // if the caller is not the main task, return( zCALL_ERROR )
   if ( !lpTask ||
        lpTask->lTaskID != AnchorBlock->lMainTaskID )
   {
     return( zCALL_ERROR );
   }

   // Delete the main Task
   DeleteTask( lpTask );

   // Free the shared segment for KZOENGWA
   AnchorBlock->nStatus = AnchorCorrupt;  // Mark AnchorBlock as no good
   lRC = SysFreeMemory( hAnchorBlock );   // Free for KZOENGAA.DLL

   // NULL AnchorBlock handle and pointer
   hModule      = 0;
   hAnchorBlock = 0;
   AnchorBlock = 0;

   return( 0 );

}   // End of FreeAnchorBlock

zLONG LOCALOPER
fnAllocSharedMemory( zCOREMEM ppvMemory,
                     zLONG    lBytes,
                     zCPCHAR  cpcShareName )
{
   *ppvMemory = malloc( lBytes );
   return(zLONG) * (zPCHAR) ppvMemory;
}

zLONG LOCALOPER
fnFreeSharedMemory( zLONG hMemory )
{
   free( (void *) hMemory );
}

//***********************************************************************
//
//  ENTRY:      SysGetAnchorBlock
//
//  PURPOSE:    To return the anchor block address
//
//  PARAMETERS: NONE
//
//  RETURNS:    LPANCHOR
//
//***********************************************************************
LPANCHOR  OPERATION
SysGetAnchorBlock( void )
{
   return( AnchorBlock );
}

//./ ADD NAME=SysAllocMemory
//***********************************************************************
//
// ENTRY:     SysAllocMemory
//
// PROTOTYPE:
//
//      long OPERATION
//      SysAllocMemory( zCOREMEM Memory, long Bytes,
//                      long hMemory, unsigned int uMemFlags,
//                      zCPCHAR szShareName )
//
// PURPOSE:  This system dependent Operation allocates and
//           reallocates memory. A pointer to a pointer
//           to memory is passed along with the number of bytes
//           requested, the current handle to the memory ( if any ),
//           and the uMemFlags identifying what to do.
//
//           The flag values are:
//
//           zCOREMEM_ALLOC      0x8000
//           zCOREMEM_REALLOC    0xC000
//           zCOREMEM_SHARED     0x0080
//
// RETURNS:
//
//      The memory handle to Allocated and Reallocated memory as
//      well as the pointer to the memory. The share name is for an
//      optional named share segment in OS/2
//
//      NOTE: if the allocate of memory fails, the memory
//            pointer passed is NULZED!.
//
//
//***********************************************************************
//./ END + 4
zLONG OPERATION
SysAllocMemory( zCOREMEM ppvMemory,  zLONG lBytes,
                zLONG hMemory, unsigned int uMemFlags,
                zCPCHAR szShareName )
{
   *ppvMemory = SysMalloc( lBytes );
   return(zLONG) *ppvMemory;
}

//./ ADD NAME=SysAddressMemory
//***********************************************************************
//
//  ENTRY:      SysAddressMemory
//
//  PURPOSE:    To give the current task access to a memory block.
//
//  PARAMETERS: hMemory - the handle to the memory block
//
//  RETURNS:    0       - Access allowed
//              non 0   - Access not allowed
//
//***********************************************************************
//./ END + 2
int OPERATION
SysAddressMemory( long hMemory )
{
   // Do nothing for addressing since there is no memory sharing in
   // a Server environment.  It is only called by TZOBRWAD.C.

   return( 0 );
}

//./ ADD NAME=SysFreeMemory
//***********************************************************************
//
//  ENTRY:      SysFreeMemory
//
//  PURPOSE:    To free the current tasks use of a memory block,
//              if the current task is the last task using it and
//              the last count for the task using it, the memory
//              is returned to the system.
//
//  PARAMETERS: The handle to the memory, in some systems this
//              may be the address of the memory itself.
//
//  RETURNS:    0     - Memory freed
//              non 0 - Memory not freed
//
//***********************************************************************
//./ END + 2
long OPERATION
SysFreeMemory( long hMemory )
{
   SysFree( (zPVOID) hMemory );
   return( 0 );
}

//./ ADD NAME=SysMalloc
/////////////////////////////////////////////////////////////////////////////
//
// ENTRY:     SysMalloc
//
// PROTOTYPE:
//
//      zPVOID OPERATION
//      SysMalloc( zLONG  lSize );
//
// PURPOSE:
//      returns memory with the standard C runtime function malloc and
//      initialize it with 0.
//      This function replace the old win16 designed function SysAllocMemory
//
// RETURNS:
//      the pointer to the allocated memory or NULL if the memory could not
//      be allocated
//
/////////////////////////////////////////////////////////////////////////////
//./ END
zPVOID OPERATION
SysMalloc( zLONG lSize )
{
   // Alloc memory with extra bytes to store length.
   zPULONG pl = calloc( lSize + sizeof( zULONG ), 1 );

   // Store the length.
   *pl = lSize;

   // Change the pointer to skip over the length.
   pl++;

   return(zPVOID) pl;
}


//./ ADD NAME=SysFree
/////////////////////////////////////////////////////////////////////////////
//
// ENTRY:     SysFree
//
// PROTOTYPE:
//
//      zVOID OPERATION
//      SysFree( zPVOID pMemory );
// PURPOSE:
//      free the memory allocated with SysAlloc()
//      This function replace the old win16 designed function SysFreeMemory
//
// RETURNS:
//      nothing
//
/////////////////////////////////////////////////////////////////////////////
//./ END
zVOID OPERATION
SysFree ( zPVOID pMemory )
{
   if ( pMemory != NULL )
   {
      // We stored the size of the memory buffer at the beginning so we need
      // to reset the pointer before we free it.
      pMemory = (zPULONG) pMemory - 1;
      free( pMemory );
   }
}

//./ ADD NAME=SysMemSize
zULONG OPERATION
SysMemSize( zPVOID pMemory )
{
   // The size of the memory buffer is stored right before the pointer.
   return( *((zPULONG) pMemory - 1) );
}

//./ ADD NAME=SysValidAddress
//***********************************************************************
//
//  ENTRY:      SysValidAddress
//
//  PURPOSE:    To validate an address for either read or write access
//
//  PARAMETERS: lpAddress - the Address to be validated
//              lLth      - the length to validate for
//              bWrite    - is for write access
//
//  RETURNS:    0       - Access allowed
//              non 0   - Access not allowed
//
//***********************************************************************
//./ END + 4
int OPERATION
SysValidAddress( zPVOID lpAddress,
                 zLONG  lLth,
                 zBOOL  bWrite )
{
   return( 1 );      // Always indicate address is ok
}

//./ ADD NAME=SysCheckTaskMemory
/////////////////////////////////////////////////////////////////////////////
//
//  ENTRY:      SysCheckTaskMemory
//
//  PURPOSE:    To check the current task's memory usage.
//
//  PARAMETERS: None
//
//  RETURNS:    amount of memory currently allocated by the application
//
/////////////////////////////////////////////////////////////////////////////
//./ END + 2
zLONG OPERATION
SysCheckTaskMemory( void )
{
   return( 0 );
}

//***********************************************************************
//
//  ENTRY:      SysSendTaskMsg
//
//  PURPOSE:    To send a message to the target task that it is time
//              to call ProcessZeidonMessage.
//
//  PARAMETERS: lpSourceTask - Task containing the request to be
//                                passed as a message parameter
//              lpTargetTask - Task to send the message to
//
//  RETURNS:    NOTHING
//
//***********************************************************************
void
SysSendTaskMsg( LPTASK lpSourceTask,
                LPTASK lpTargetTask )
{
   zLONG   lParam;

   // This routine has been called from three places in core:
   // 1. From kzoeataa.c for converting decimal values in MS Windows.
   // 2. From kzoemmaa.c for handling shared memory between tasks.
   // 3. From kzoetmaa.c for handling shared tasks.
   // None of the above should be necessary for a Server.

   lParam = (zLONG) lpSourceTask;

   // Short Circuit sending messages to ourselves
// if ( lpTargetTask == fnFindTask( SysGetTaskID( 0 ) ) )
// {
//    ProcessZeidonMessage( wParam, lParam );
// }
// else
      // This is the point at which a SendMessage is done in the
      // MS Windows system.  We should never get here with a Server.
   zprintf ( "***Error in SysSendTaskMsg" );
}

//***********************************************************************
//
//  ENTRY:      SysWait
//
//  PURPOSE:    To wait while something else finishes
//
//  PARAMETERS: uMilliseconds to wait
//
//  RETURNS:    Yes, but only after waiting
//
//***********************************************************************
void OPERATION
SysWait( zUSHORT uMilliseconds )
{
   if ( uMilliseconds > 0 )
      // We do the " - 1" and " + 1" to hack rounding errors.
      sleep( (int) ( ( uMilliseconds - 1 ) / 1000 ) + 1 );

   return;
}

//./ ADD NAME=SysGetTaskID
//***********************************************************************
//
//  ENTRY:      SysGetTaskID
//
//  PURPOSE:    To get the unique identifier of the current task
//
//  PARAMETERS: NONE
//
//  RETURNS:    Returns thread ID.
//
//***********************************************************************
//./ END + 2
zLONG OPERATION
SysGetTaskFromView( zVIEW lpView )
{
   return( (zLONG) lpView->hTask );
// pthread_t tid = pthread_self( );
// return( (zLONG) tid );
}

//./ ADD NAME=SysMessageBox
//***********************************************************************
//
//  ENTRY:      SysMessageBox
//
//  PURPOSE:    Send an error box to the user (deprecated?)
//
//  PARAMETERS: Title
//              Message
//              0 No beep, 1 beep at user
//
//  RETURNS:    Return value from message sent
//
//***********************************************************************
//./ END + 2
int OPERATION
SysMessageBox( zCPCHAR szTitle, zCPCHAR szMessage, int nBeep )
{
   char szMsg[ 500 ];

   // For the time being, simply send the message to the operator.
   sprintf ( szMsg, "zMSG  >> %s %s\n", szTitle, szMessage );
   //fnWriteLog( szMsg );
   return( 0 );
}

//./ ADD NAME=SysDiagnosticMessage
//***********************************************************************
//
//  ENTRY:      SysDiagnosticMessage
//
//  PURPOSE:    Send an error box to the user (internal OPERATION) if
//              the "Diagnostic" flag is not 'N' in the Zeidon.ini file.
//
//  PARAMETERS: Title
//              Message
//              0 No beep, 1 beep at user
//
//  RETURNS:    Return value from message sent
//
//***********************************************************************
//./ END + 2
int OPERATION
SysDiagnosticMessage( zCPCHAR cpcTitle, zCPCHAR cpcMessage, int nBeep )
{
   char szDiagnostic[ 2 ];

   SysReadZeidonIni( -1, "[Debug]", "Diagnostic", szDiagnostic );
   if ( szDiagnostic[ 0 ] != 'N' && szDiagnostic[ 0 ] != 'n' )
      return( SysMessageBox( cpcTitle, cpcMessage, nBeep ) );

   SysMessageList( cpcMessage );
   return( 0 );
}

//./ ADD NAME=SysMessageList
//***********************************************************************
//
//  ENTRY:      SysMessageList
//
//  PURPOSE:    Write a line in the object services
//              trace window ( internal OPERATION? )
//
//  PARAMETERS: Message
//
//  RETURNS:    0    - Message sent to list box
//            non 0  - Error sending message to list box
//
//***********************************************************************
//./ END + 2
int OPERATION
SysMessageList( zCPCHAR szMessage )
{
   char szMsg[ 500 ];

   // For the time being, simply send the message to the operator.
   sprintf( szMsg, "zTRACE>> %s\n", szMessage );
   //fnWriteLog( szMsg );
   printf( "%s", szMsg );
   return( 0 );
}

//./ ADD NAME=SysSetUserID
//***********************************************************************
//
//  ENTRY:      SysSetUserID
//
//  PURPOSE:    Set UserID and password for the user
//              If the current task is the main task then the default
//              User for the system is set, if the current task is
//              not the main task, then the user for the current
//              task alone is set.
//
//              For a Server, there is only the main task, so only
//              that code is utilized in this version of the routine.
//
//  PARAMETERS: UserID and Password
//
//  RETURNS:    0    - Message sent to list box
//            non 0  - Error sending message to list box
//
//***********************************************************************
//./ END + 2
int OPERATION
SysSetUserID( LPTASK lpTask, zCPCHAR szUserID, zCPCHAR szPassword )
{
   char szMessage[ 60 ];
   LPTASK lpTask;

   if ( !AnchorBlock || !lpTask )
      return( zCALL_ERROR );

   lpTask->hUserID = (zPCHAR) fnFreeDataspace( lpTask->hUserID );
   lpTask->hPassword = (zPCHAR) fnFreeDataspace( lpTask->hPassword );
   if ( szUserID[ 0 ] )
   {
      lpTask->hUserID =
       fnStoreStringInDataspace( ( LPDATAHEADER ) AnchorBlock, szUserID );
   }
   if ( szPassword[ 0 ] )
   {
      lpTask->hPassword =
      fnStoreStringInDataspace( ( LPDATAHEADER ) AnchorBlock, szPassword );
   }

   // Send UserID to list box
   zstrcpy( szMessage, "(sy) Logon Userid=" );
   zstrcat( szMessage, szUserID );
   SysMessageList( szMessage );
   return( 0 );
}

//./ ADD NAME=SysSetDB_UserID
//***********************************************************************
//
//  ENTRY:      SysSetDB_UserID
//
//  PURPOSE:    Set the database User ID and password for a user, this
//              may be used to set a user id and password for use
//              by database handlers if the database user id is to be
//              different from the standard userid.
//
//  PARAMETERS: UserID and Password
//
//  RETURNS:    0    - Message sent to list box
//            non 0  - Error sending message to list box
//
//***********************************************************************
//./ END + 2
int OPERATION
SysSetDB_UserID( zVIEW lpView, zCPCHAR szUserID, zCPCHAR szPassword )
{
   LPTASK lpTask;

   if ( !AnchorBlock )
      return( zCALL_ERROR );

   lpTask = zGETPTR( lpView->hTask ):
   if ( lpTask )
   {
      lpTask->hDBUserID = (zPCHAR) fnFreeDataspace( lpTask->hDBUserID );
      lpTask->hDBPassword = (zPCHAR) fnFreeDataspace( lpTask->hDBPassword );
      if ( szUserID[ 0 ] )
      {
         lpTask->hDBUserID =
          fnStoreStringInDataspace( ( LPDATAHEADER ) AnchorBlock, szUserID );
      }

      if ( szPassword[ 0 ] )
      {
         lpTask->hDBPassword =
         fnStoreStringInDataspace( ( LPDATAHEADER ) AnchorBlock, szPassword );
      }
   }
   return( 0 );
}

//./ ADD NAME=SysGetUserID
//***********************************************************************
//
//  ENTRY:      SysGetUserID
//
//  PURPOSE:    Get UserID and password for the user.  If there is a
//              UserID for the current task, it and its password is
//              returned.  If there is no UserID for the current task
//              return the UserID (if present) for the system.
//
//              For a Server, there is only a main task, so only that
//              code is utilized in this version of the routine.
//
//  PARAMETERS: returned UserID and returned Password
//
//  RETURNS:
//                 0 - UserID and Password returned (could be null)
//       zCALL_ERROR - Core not up or application not registered.
//
//***********************************************************************
//./ END + 2
int OPERATION
SysGetUserID( zVIEW lpView, zPCHAR szUserID, zPCHAR szPassword )
{
   LPTASK lpTask;

   // init in case of early errors.
   szUserID[ 0 ] = 0;
   szPassword[ 0 ] = 0;

   // core not up, get out.
   if ( !AnchorBlock )
      return( zCALL_ERROR );

   lpTask = zGETPTR( lpView->hTask ):
   // no task for this caller, gonzo.

   if ( !lpTask )
      return( zCALL_ERROR );

   if ( lpTask->hUserID )
      zstrcpy( szUserID, lpTask->hUserID );
   else
      zstrcpy( szUserID, "dgc" );

   if ( lpTask->hPassword )
      zstrcpy( szPassword, lpTask->hPassword );
   else
      zstrcpy( szPassword, "d" );

   return( 0 );
}

//./ ADD NAME=SysGetDB_UserID
//***********************************************************************
//
//  ENTRY:      SysGetDB_UserID
//
//  PURPOSE:    Get the Database User ID and password. This operation
//              retrieves the database userid and password if one has been
//              set with SysSetDB_UserID, otherwise it returns the standard
//              userid and password
//
//  PARAMETERS: returned UserID and returned Password
//
//  RETURNS:
//                 0 - UserID and Password returned (could be null)
//       zCALL_ERROR - Core not up or application not registered.
//
//***********************************************************************
//./ END + 2
int OPERATION
SysGetDB_UserID( zVIEW lpView, zPCHAR szUserID, zPCHAR szPassword )
{
   LPTASK lpTask;

   // init in case of early errors.
   szUserID[ 0 ] = 0;
   szPassword[ 0 ] = 0;

   // core not up, get out.
   if ( !AnchorBlock )
      return( zCALL_ERROR );

   lpTask = zGETPTR( lpView->hTask ):
   // no task for this caller, gonzo.

   if ( !lpTask )
      return( zCALL_ERROR );

   // first check for a userid at the task level.
   if ( lpTask->hDBUserID )
   {
      // return the userid
      zstrcpy( szUserID, lpTask->hDBUserID );
      // return password, if present.
      if ( lpTask->hDBPassword )
         zstrcpy( szPassword, lpTask->hDBPassword );
   }
   else
   {
      SysGetUserID( szUserID, szPassword );
   }

   return( 0 );
}

//./ ADD NAME=SysCreateTempFileName
//***********************************************************************
//
//  ENTRY:      SysCreateTempFileName
//
// PROTOTYPE:
//
//     zSHORT OPERATION
//     SysCreateTempFileName( zPCHAR szFrom, zPCHAR szTo, zBOOL bOverwrite )
//
//   PURPOSE: Creates a temporary file name in the Zeidon Temp directory.
//
//   RETURN VALUE: 0 - Name created OK.  The only possible error is that the
//                     Zeidon object engine is not running.
//                 zCALL_ERROR - other error.
//
//
//***********************************************************************
//./ END + 4
zSHORT OPERATION
SysCreateTempFileName( zPCHAR pszTargetName )
{
   zLONG lTime;
   zLONG lTask;
   *pszTargetName = 0;

   lTask = (zLONG) pthread_self();
   lTime = SysGetTickCount();
   zsprintf( pszTargetName, "%sZTF_%lx_%lx.TMP",
             AnchorBlock->szZeidonLoc, lTask, lTime );
   return( 0 );
}

//./ ADD NAME=SysOpenFile
//***********************************************************************
//
//  ENTRY:      SysOpenFile
//
// PROTOTYPE:
//
//     long OPERATION
//     SysOpenFile( zCPCHAR FileName, int Flags )
//
//   PURPOSE: To open a file based on the filename using the flag passed
//            to indicate the type of open to be done.  The flage values
//            are:
//
//        COREFILE_READ                0x80
//        COREFILE_WRITE               0x40
//        COREFILE_UPDATE              COREFILE_READ | COREFILE_WRITE
//        COREFILE_CREATE              0x20
//        COREFILE_DELETE              0x08
//        COREFILE_EXIST               0x04
//        COREFILE_EXIST_NOSHARE       0x06
//        COREFILE_WRITELINE_BUFFERED  0x01
//        COREFILE_APPEND              0x0100 | COREFILE_UPDATE
//
//        The FileName is assumed to come in qualified of the form:
//            AppName/FileName.
//
//
//   RETURN VALUE:  A handle to the file opened or -1 if the
//                  file could not be opened, NOTE the return value
//                  of a COREFILE_EXIST call can not be subsequently
//                  used in other file requests!!.
//
//***********************************************************************
//./ END + 2
long OPERATION
SysOpenFile( zVIEW lpView, zCPCHAR szFileName, int nFlags )
{
   FILE *      hFile;
   LPTASK      lpTask;
   LPOPENFILE  lpOpenFile;

   hFile = (FILE *) -1;
   if ( nFlags & COREFILE_READ )
   {
      if ( nFlags & COREFILE_WRITE )
      {
         hFile = fopen( szFileName, "r+" );
         if ( nFlags & COREFILE_APPEND )
            fseek( hFile, 0L, SEEK_END );
      }
      else
      {
         hFile = fopen( szFileName, "r" );
      }
   }
   else
   if ( ( nFlags & COREFILE_WRITE ) || ( nFlags & COREFILE_CREATE ) )
   {
      hFile = fopen( szFileName, "w" );
   }
   else
   if ( nFlags & COREFILE_EXIST )
   {
      return zaccess( szFileName, F_OK );
   }
   else
   if ( nFlags & COREFILE_DELETE )
   {
      return remove( szFileName );
   }

   if ( hFile == 0 )
   {
      // The following statement was added and the lines
      // above commented out because getcwd was abending.
      // This should be reversed when getcwd is ok.
      TraceLineS( "(SY) Could not open file: ", szFileName );
      return( -1 );
   }

   // If we got here, then a file open was successful
   // create an open file line with the task
   lpTask = zGETPTR( lpView->hTask ):
   if ( lpTask )
   {
      lpOpenFile = (LPOPENFILE) fnAllocDataspace( lpTask->hFirstDataHeader,
                                                  sizeof( OpenFileRecord ),
                                                  1, 0, iOpenFile );
      if ( lpOpenFile )
      {
         lpOpenFile->nTableID       = iOpenFile;
         lpOpenFile->hNextOpenFile = lpTask->hFirstOpenFile;
         lpOpenFile->nFlags         = nFlags;
         lpOpenFile->lFileHandle    = (zLONG) hFile;
         zstrcpy( lpOpenFile->szFileName, szFileName );

         lpTask->hFirstOpenFile = lpOpenFile;
      }
   }

   // Return the handle to the file
   return(zLONG) hFile;
}

//./ ADD NAME=SysReadFile
//***********************************************************************
//
//  ENTRY:      SysReadFile
//
// PROTOTYPE:
//
//     unsigned int OPERATION
//     SysReadFile( long         lFileHandle,
//                  zPCHAR       szBuffer,
//                  unsigned int uMaxlth )
//
// PURPOSE:  To read a block of data from an opened file
//
// RETURNS:  Number of bytes read
//
//***********************************************************************
//./ END + 5
unsigned int OPERATION
SysReadFile( LPTASK       lpTask,
             zLONG        lFileHandle,
             zPCHAR       szBuffer,
             zULONG       uMaxLth )
{
   unsigned int iBytesRead;

   iBytesRead = fread( szBuffer, 1, (size_t) uMaxLth, (FILE *) lFileHandle );

   // If we didn't read the max number of bytes, then we read the end of the
   // file.  Mark the buffer with a flag to indicate this.  The flag is used
   // by SysReadLine.
   if ( iBytesRead < uMaxLth )
      szBuffer[ iBytesRead ] = '\x1a';

   return iBytesRead;
}

//./ ADD NAME=SysReadLine
//***********************************************************************
//
//  ENTRY:      SysReadLine
//
// PROTOTYPE:
//
//     int OPERATION
//     SysReadLine( ( zCOREMEM ) lpReturnLine, long lFileHandle )
//
// PURPOSE:  To read a line of information from a file
//
// RETURNS:  1 - line read successful
//           0 - End of file reached
//          zCALL_ERROR - Error in processing
//
//***********************************************************************
//./ END + 3
int OPERATION
SysReadLine( zVIEW    lpView,
             zCOREMEM lpReturnLine,
             zLONG    lFileHandle )
{
   unsigned int  uPos;
   unsigned int  uEnd;
   LPTASK   lpTask;
   LPOPENFILE lpOpenFile;
   zPCHAR   lpBuffer;

   *lpReturnLine = 0;

   // Get the task an match up the file handle passed with an
   // OpenFile record. If the record is not found, return a zCALL_ERROR;
   lpTask = zGETPTR( lpView->hTask ):
   if ( lpTask == 0 )
      return( zCALL_ERROR );

   lpOpenFile = lpTask->hFirstOpenFile;
   while ( lpOpenFile )
   {
      if ( lpOpenFile->lFileHandle == lFileHandle )
         break;

      lpOpenFile = lpOpenFile->hNextOpenFile;
   }

   if ( lpOpenFile == 0 )
      return( zCALL_ERROR );

   // File found, get a file read buffer is necessary
   if ( lpOpenFile->uReadBufferSize == 0 )
   {
      lpOpenFile->uReadBufferSize = 8192;
      while ( lpOpenFile->uReadBufferSize > 2040 )
      {
         lpOpenFile->hReadBuffer = (zPCHAR)
            fnAllocDataspace( lpTask->hFirstDataHeader,
                              lpOpenFile->uReadBufferSize, 0, 0, 0 );
         if ( lpOpenFile->hReadBuffer )
            break;

         lpOpenFile->uReadBufferSize /= 2;
      }

      if ( !lpOpenFile->hReadBuffer )  // if buffer acquisition failed
      {
         lpOpenFile->uReadBufferSize = 0;
         return( zCALL_ERROR );
      }

      // Bump size down by 2 so we can safely null terminate lines
      lpOpenFile->uReadBufferSize -= 2;

      // Read the first block of information into the buffer
      lpOpenFile->uReadBufferUsed = SysReadFile( lpOpenFile->lFileHandle,
                                                 lpOpenFile->hReadBuffer,
                                                 lpOpenFile->uReadBufferSize );
   }
   else
   {
      // See if it is time to read more of the file in before continuing
      if ( lpOpenFile->uReadBufferUsed == lpOpenFile->uReadBufferSize &&
           lpOpenFile->uReadBufferPos > (lpOpenFile->uReadBufferSize -
                                        (lpOpenFile->uReadBufferSize / 10)) )
      {
         // Copy remaining unprocessed buffer to beginning of buffer
         if ( lpOpenFile->uReadBufferPos < lpOpenFile->uReadBufferSize )
         {
            zmemcpy( lpOpenFile->hReadBuffer,
                     &lpOpenFile->hReadBuffer[ lpOpenFile->uReadBufferPos ],
                     lpOpenFile->uReadBufferSize - lpOpenFile->uReadBufferPos );
         }

         // Adjust the position and used values
         lpOpenFile->uReadBufferUsed -= lpOpenFile->uReadBufferPos;
         lpOpenFile->uReadBufferPos  = 0;

         // Read another chunk of the file data
         lpOpenFile->uReadBufferUsed +=
          SysReadFile( lpOpenFile->lFileHandle,
                       lpOpenFile->hReadBuffer + lpOpenFile->uReadBufferUsed,
                       lpOpenFile->uReadBufferSize -
                                               lpOpenFile->uReadBufferUsed );
      }
   }

   // If we get here, we're ready to proceed ahead in getting
   // a line to return.
   lpBuffer = lpOpenFile->hReadBuffer;
   uPos     = lpOpenFile->uReadBufferPos;
   uEnd     = lpOpenFile->uReadBufferUsed;

   // if current pos is end of file, and we're at the end of file,
   // skip the rest of the data.
   if ( lpBuffer[ uPos ] == '\x1a' )
   {
      // if followed by a crlf or new-line, also skip that
      if ( ( uPos + 1 ) >= uEnd ||
           ( lpBuffer[ uPos + 1 ] == '\n' &&
             uPos + 2 >= uEnd ) ||
           ( lpBuffer[ uPos + 1 ] == '\r' &&
             lpBuffer[ uPos + 2 ] == '\n' &&
             uPos + 3 >= uEnd ) )
      {
         uPos = uEnd;
      }
   }

   // If nothing to return to the user, set position to end
   if ( uPos >= uEnd )
   {
      lpOpenFile->uReadBufferPos = lpOpenFile->uReadBufferUsed;
      return( 0 );
   }

   // now that beginning of line is found, search for end and
   // put a null character there
   *lpReturnLine = &lpBuffer[ uPos ];
   while( uPos < uEnd &&
          lpBuffer[ uPos ] != '\r' &&
          lpBuffer[ uPos ] != '\n' &&
          lpBuffer[ uPos ] != '\x1a' )
   {
      uPos++;
   }

   if ( ( lpBuffer[ uPos ] == '\r' && lpBuffer[ uPos + 1 ] == '\n') ||
        ( lpBuffer[ uPos ] == '\n' ) )
   {
      lpBuffer[ uPos++ ] = 0;  // Null end of line and skip \n
   }

   lpBuffer[ uPos++ ] = 0;     // Null end of line
   lpOpenFile->uReadBufferPos = uPos; // Set new uPos

   // if we're here, then everything is AOK
   return( 1 );
}

//./ ADD NAME=SysReadLineLth
//***********************************************************************
//
//  ENTRY:      SysReadLineLth
//
// PROTOTYPE:
//
//     int OPERATION
//     SysReadLineLth( ( zCOREMEM ) lpReturnLine,
//                     long lFileHandle,
//                     zUSHORT uLth )
//
// PURPOSE:  To read a Blob of data while doing Readline processing
//           on a file.
//
//           This routine currently generates an error, since there is
//           no current need to read binary data on a Server.
//
// RETURNS:  1 - line read successful
//           0 - End of file reached
//          zCALL_ERROR - Error in processing
//
//***********************************************************************
//./ END + 4
zSHORT OPERATION
SysReadLineLth( zVIEW    lpView,
                zCOREMEM lpReturnLine,
                zLONG    lFileHandle,
                zULONG   uLth )
{
   LPTASK        lpTask;
   LPOPENFILE    lpOpenFile;
   zPCHAR        lpNewBuffer;

   *lpReturnLine = 0;

   // Get the task an match up the file handle passed with an
   // OpenFile record. If the record is not found, return a zCALL_ERROR;
   lpTask = zGETPTR( lpView->hTask ):
   if ( !lpTask )
      return( zCALL_ERROR );

   lpOpenFile = lpTask->hFirstOpenFile;
   while ( lpOpenFile )
   {
      if ( lpOpenFile->lFileHandle == lFileHandle )
      {
         break;
      }

      lpOpenFile = lpOpenFile->hNextOpenFile;
   }

   if ( !lpOpenFile )
      return( zCALL_ERROR );

   // File found, get a file read buffer is necessary
   if ( lpOpenFile->uReadBufferSize == 0 )
   {
      return( zCALL_ERROR );  // if we don't have a buffer, we're in trouble
   }
   else
   {
      // See if buffer we are using is big enough to hold the blob
      // we want to read, if not, we're in big trouble
      if ( lpOpenFile->uReadBufferSize < uLth )
      {
         lpNewBuffer = (zPCHAR)
            fnAllocDataspace( lpTask->hFirstDataHeader, uLth, 0, 0, 0 );
         if ( lpNewBuffer == 0 )
            return( zCALL_ERROR );

         zmemcpy( lpNewBuffer,
                  lpOpenFile->hReadBuffer,
                  lpOpenFile->uReadBufferSize );
         fnFreeDataspace( lpOpenFile->hReadBuffer );
         lpOpenFile->hReadBuffer = lpNewBuffer;
         lpOpenFile->uReadBufferSize = uLth;
         lpOpenFile->uReadBufferUsed +=
               SysReadFile( lpOpenFile->lFileHandle,
                            lpOpenFile->hReadBuffer +
                                          lpOpenFile->uReadBufferUsed,
                            lpOpenFile->uReadBufferSize -
                                          lpOpenFile->uReadBufferUsed );
      }

      // See if it is time to read more of the file in
      // before continuing
      if ( lpOpenFile->uReadBufferUsed == lpOpenFile->uReadBufferSize &&
           (lpOpenFile->uReadBufferSize - lpOpenFile->uReadBufferPos) < uLth )
      {
         // Copy remaining unprocessed buffer to beginning of buffer
         if ( lpOpenFile->uReadBufferPos < lpOpenFile->uReadBufferSize )
         {
            zmemcpy( lpOpenFile->hReadBuffer,
                  &lpOpenFile->hReadBuffer[ lpOpenFile->uReadBufferPos ],
                  lpOpenFile->uReadBufferSize - lpOpenFile->uReadBufferPos );
         }

         // Adjust the position and used values
         lpOpenFile->uReadBufferUsed -= lpOpenFile->uReadBufferPos;
         lpOpenFile->uReadBufferPos  = 0;

         // Read another chunk of the file data
         lpOpenFile->uReadBufferUsed +=
            SysReadFile( lpOpenFile->lFileHandle,
                           lpOpenFile->hReadBuffer +
                                    lpOpenFile->uReadBufferUsed,
                           lpOpenFile->uReadBufferSize -
                                    lpOpenFile->uReadBufferUsed );
      }
   }

   // now that beginning of line is found, search for end and
   // put a null character there
   *lpReturnLine = &lpOpenFile->hReadBuffer[ lpOpenFile->uReadBufferPos ];
   lpOpenFile->uReadBufferPos += uLth; // Set new uPos

   // if we're here, then everything is AOK
   return( 1 );
}

//     Not used for Server environments
//./ ADD NAME=SysWriteFile
//***********************************************************************
//
//  ENTRY:      SysWriteFile
//
// PROTOTYPE:
//
//      int OPERATION
//      SysWriteFile( long lFileHandle,
//                    zCPCHAR szBuffer,
//                    int nLth )
//
// PURPOSE:  To write a block of data to an opened file
//
//
// RETURNS:  Number of bytes written
//
//***********************************************************************
//./ END + 4
zULONG OPERATION
SysWriteFile( zVIEW   lpView,
              zLONG   lFileHandle,
              zCPCHAR szBuffer,
              zULONG  nLth )
{
   int         nWritten;

   nWritten = fwrite( szBuffer, 1, (size_t) nLth, (FILE *) lFileHandle );
   if ( nWritten != nLth )
   {
      LPTASK      lpTask;
      LPOPENFILE  lpOpenFile;

      lpTask = zGETPTR( lpView->hTask ):
      if ( lpTask )
      {
         lpOpenFile = lpTask->hFirstOpenFile;
         while ( lpOpenFile )
         {
            if ( lpOpenFile->lFileHandle == lFileHandle )
            {
               break;
            }

            lpOpenFile = lpOpenFile->hNextOpenFile;
         }

         if ( lpOpenFile )
         {
            // "KZOEE022 - Error writing file"
            fnIssueCoreError( lpTask, lpView, 8, 22, 0,
                              lpOpenFile->szFileName, 0 );
         }
      }
   }

   return( nWritten );
}

//./ ADD NAME=SysWriteLine
//***********************************************************************
//
//  ENTRY:      SysWriteLine
//
// PROTOTYPE:
//
//      int OPERATION
//      SysWriteLine( long lFileHandle,
//                    zCPCHAR cpcLine );
//
// PURPOSE:  To write a line into a buffered file
//
// RETURNS:  Number of bytes written
//
//***********************************************************************
//./ END + 3
int OPERATION
SysWriteLine( zVIEW   lpView,
              zLONG   lFileHandle,
              zCPCHAR cpcLine )
{
   int        nLth;
   LPTASK     lpTask;
   LPOPENFILE lpOpenFile;

   // Get the task an match up the file handle passed with an
   // OpenFile record. If the record is not found, return a zCALL_ERROR;
   lpTask = zGETPTR( lpView->hTask ):
   if ( !lpTask )
      return( zCALL_ERROR );

   lpOpenFile = lpTask->hFirstOpenFile;
   while ( lpOpenFile )
   {
      if ( lpOpenFile->lFileHandle == lFileHandle )
      {
         break;
      }

      lpOpenFile = lpOpenFile->hNextOpenFile;
   }

   if ( !lpOpenFile )
      return( zCALL_ERROR );

   // Check to see if buffered WriteLines desired, if not, write it
   if ( lpOpenFile->nFlags & COREFILE_WRITELINE_BUFFERED )
   {
      SysWriteFile( lFileHandle, cpcLine, zstrlen( (zPCHAR) cpcLine ) );
      SysWriteFile( lFileHandle, "\n", 1 );
      return( 0 );
   }

   // File found, get a file read buffer is necessary
   if ( lpOpenFile->uWriteBufferSize == 0 )
   {
      lpOpenFile->uWriteBufferSize = 8192;
      while ( lpOpenFile->uWriteBufferSize > 2040 )
      {
         lpOpenFile->hWriteBuffer = (zPCHAR)
            fnAllocDataspace( lpTask->hFirstDataHeader,
                              lpOpenFile->uWriteBufferSize, 0, 0, 0 );
         if ( lpOpenFile->hWriteBuffer )
            break;

         lpOpenFile->uWriteBufferSize /= 2;
      }
      if ( !lpOpenFile->hWriteBuffer )  // if buffer acquisition failed
      {
         lpOpenFile->uWriteBufferSize = 0;
         return( zCALL_ERROR );
      }

      // Bump size down by 2 for safety
      lpOpenFile->uWriteBufferSize -= 2;
   }

   // Get the length of the line to be written
   nLth = zstrlen( (zPCHAR) cpcLine );

   // if there is not buffer room to write this line
   // write out buffer and reset position
   if ( (lpOpenFile->uWriteBufferSize - lpOpenFile->uWriteBufferPos) <
        (unsigned int) (nLth + 2) )
   {
      SysWriteFile( lFileHandle, lpOpenFile->hWriteBuffer,
                    lpOpenFile->uWriteBufferPos );
      lpOpenFile->uWriteBufferPos = 0;
   }

   // Copy the new line into the Buffer
   zstrcpy( &lpOpenFile->hWriteBuffer[ lpOpenFile->uWriteBufferPos ],
            (zPCHAR) cpcLine );
   lpOpenFile->uWriteBufferPos += nLth;
   zstrcpy( &lpOpenFile->hWriteBuffer[ lpOpenFile->uWriteBufferPos ], "\n" );
   lpOpenFile->uWriteBufferPos++;

   return( 0 );
}

//./ ADD NAME=SysWriteLineLth
//***********************************************************************
//
//  ENTRY:      SysWriteLineLth
//
// PROTOTYPE:
//
//      int OPERATION
//      SysWriteLineLth( long lFileHandle,
//                       zCPCHAR cpcLine,
//                       zUSHORT uLth,
//                       zBOOL   bAppend );
//
// PURPOSE:  To write a line into a buffered file
//
//           This routine currently generates an error, since there is
//           no current need to write binary data on a Server.
//
// RETURNS:  Number of bytes written
//
//***********************************************************************
//./ END + 5
int OPERATION
SysWriteLineLth( zVIEW   lpView,
                 zLONG   lFileHandle,
                 zCPCHAR cpcLine,
                 zULONG  uLth,
                 zBOOL   bAppend )
{
   LPTASK        lpTask;
   LPOPENFILE    lpOpenFile;

   // Get the task an match up the file handle passed with an
   // OpenFile record. If the record is not found, return a zCALL_ERROR;
   lpTask = zGETPTR( lpView->hTask ):
   if ( !lpTask )
      return( zCALL_ERROR );

   lpOpenFile = lpTask->hFirstOpenFile;
   while ( lpOpenFile )
   {
      if ( lpOpenFile->lFileHandle == lFileHandle )
      {
         break;
      }

      lpOpenFile = lpOpenFile->hNextOpenFile;
   }

   if ( !lpOpenFile )
      return( zCALL_ERROR );

   // Check to see if buffered WriteLines desired, if not, write it
   if ( lpOpenFile->nFlags & COREFILE_WRITELINE_BUFFERED )
   {
      SysWriteFile( lFileHandle, cpcLine, zstrlen( (zPCHAR) cpcLine ) );
      if ( bAppend )
         SysWriteFile( lFileHandle, "\n", 1 );

      return( 0 );
   }

   // File found, get a file read buffer is necessary
   if ( lpOpenFile->uWriteBufferSize == 0 )
   {
      lpOpenFile->uWriteBufferSize = 8192;
      while ( lpOpenFile->uWriteBufferSize > 2040 )
      {
         lpOpenFile->hWriteBuffer = (zPCHAR)
            fnAllocDataspace( lpTask->hFirstDataHeader,
                              lpOpenFile->uWriteBufferSize, 0, 0, 0 );
         if ( lpOpenFile->hWriteBuffer )
            break;

         lpOpenFile->uWriteBufferSize /= 2;
      }

      if ( !lpOpenFile->hWriteBuffer )  // if buffer acquisition failed
      {
         lpOpenFile->uWriteBufferSize = 0;
         return( zCALL_ERROR );
      }

      // Bump size down by 2 for safety
      lpOpenFile->uWriteBufferSize -= 2;
   }

   // if there is not buffer room to write this line
   // write out buffer and reset position
   if ( (lpOpenFile->uWriteBufferSize - lpOpenFile->uWriteBufferPos) <
        (unsigned int) (uLth + 2) )
   {
      SysWriteFile( lFileHandle, lpOpenFile->hWriteBuffer,
                    lpOpenFile->uWriteBufferPos );
      lpOpenFile->uWriteBufferPos = 0;
   }

   // If the write to be done is bigger than the buffer, simply write
   // the line passed and put a crlf in the buffer
   if ( lpOpenFile->uWriteBufferSize < ( uLth + 2 ) )
   {
      SysWriteFile( lFileHandle, cpcLine, uLth );
   }
   else
   {
      // Copy the new line into the Buffer
      zmemcpy( &lpOpenFile->hWriteBuffer[ lpOpenFile->uWriteBufferPos ],
               (zPCHAR) cpcLine, uLth );
      lpOpenFile->uWriteBufferPos += uLth;
   }

   if ( bAppend )
   {
      zstrcpy( &lpOpenFile->hWriteBuffer[ lpOpenFile->uWriteBufferPos ],
               "\n" );
      lpOpenFile->uWriteBufferPos += 2;
   }

   return( 0 );
}

//./ ADD NAME=SysPositionFile
//***********************************************************************
//
//   ENTRY:    SysPositionFile
//
//   PROTOTYPE:
//
//        long OPERATION
//        SysPositionFile( long hFile, long lPosition )
//
//***********************************************************************
//./ END + 2
long OPERATION
SysPositionFile( long hFile, long lPosition )
{
   return( fseek( (FILE *) hFile, lPosition, SEEK_SET ) );
}

//./ ADD NAME=SysTruncateFile
//***********************************************************************
//
//   ENTRY:    SysTruncateFile
//
//   PROTOTYPE:
//
//        int  OPERATION
//        SysTruncateFile( long hFile )
//
//   RETURNS: 0    - AOK
//            non 0 - Error
//
//***********************************************************************
//./ END + 2
int  OPERATION
SysTruncateFile( long hFile )
{
   SysPositionFile( hFile, 0 );
   return( SysWriteFile( hFile, "", 0 ) );
}

//./ ADD NAME=SysGetFileSize
//***********************************************************************
//
//   ENTRY:    SysGetFileSize
//
//   PROTOTYPE:
//
//        long OPERATION
//        SysGetFileSize( zLONG  hFile, long lSize )
//
//***********************************************************************
//./ END + 2
zULONG OPERATION
SysGetFileSize( zLONG  hFile )
{
   fseek( (FILE *) hFile, 0, SEEK_END );
   return(zULONG) ftell( (FILE *) hFile );
}

//./ ADD NAME=SysCloseFile
//***********************************************************************
//
//  ENTRY:      SysCloseFile
//
// PROTOTYPE:
//
//     long OPERATION
//     SysCloseFile( long lFileHandle, LPTASK lpOwningTask )
//
// PURPOSE:  To close a previously opened file
//
//           The owning application task should be passed as 0 for
//           ALL cases EXCEPT DeleteTask when ObjectServices may
//           be calling to clean up a task gone south
//
//***********************************************************************
//./ END + 2
zSHORT OPERATION
SysCloseFileWithControl( zVIEW  lpView,
                         zLONG  lFileHandle,
                         LPTASK lpOwningTask,
                         zLONG  lControl )
{
   int         nRC;
   LPTASK   lpCurrentTask;
   LPOPENFILE  lpOpenFile;
   LPOPENFILE  lpPrevOpenFile;

   nRC = zCALL_ERROR;

   // Get the task an match up the file handle passed with an
   // OpenFile record. If the record is not found, return a zCALL_ERROR;
   lpTask = zGETPTR( lpView->hTask ):
   if ( lpCurrentTask )
   {
      if ( lpOwningTask == 0 )
         lpOwningTask = lpCurrentTask;

      lpOpenFile = lpOwningTask->hFirstOpenFile;
      lpPrevOpenFile = 0;
      while ( lpOpenFile )
      {
         if ( lpOpenFile->lFileHandle == lFileHandle )
         {
            // if the file has been used for buffered writes,
            // write it out now
            if ( lpOpenFile->nFlags ==
                    (lpOpenFile->nFlags | COREFILE_WRITELINE_BUFFERED) )
            {
               if ( lpOwningTask == lpCurrentTask &&
                    lpOpenFile->hWriteBuffer && lpOpenFile->uWriteBufferPos )
               {
                  SysWriteFile( lpOpenFile->lFileHandle,
                                lpOpenFile->hWriteBuffer,
                                lpOpenFile->uWriteBufferPos );
               }
            }

            if ( lpPrevOpenFile )
               lpPrevOpenFile->hNextOpenFile = lpOpenFile->hNextOpenFile;
            else
               lpOwningTask->hFirstOpenFile = lpOpenFile->hNextOpenFile;

            fnFreeDataspace( lpOpenFile->hReadBuffer );
            fnFreeDataspace( lpOpenFile->hWriteBuffer );
            fnFreeDataspace( lpOpenFile );

            // Open file record cleaned up, close the file
            // Note: though the close may fail, keeping the open file
            // record around is probably of little value.
            // Note: we only close when called by application, not
            // when called by a task cleanup from object services because
            // the handle may have been reused by another task
            // after the owning task bombed
            nRC = 0;
            if ( lpOwningTask == lpCurrentTask )
            {
               nRC = fclose( (FILE *) lFileHandle );
            }

            return( nRC );
         }

         lpPrevOpenFile = lpOpenFile;
         lpOpenFile = lpOpenFile->hNextOpenFile;
      }
   }

   return( nRC );
}

int   OPERATION
SysCloseFile( long lFileHandle, LPTASK lpOwningTask )
{
   return SysCloseFileWithControl( lFileHandle, lpOwningTask, 0 );
}

//***********************************************************************
//
//  ENTRY:      SysLoadMessage
//
// PROTOTYPE:
//
//     int  OPERATION
//     SysLoadMessage( zPCHAR szReturnString, long lMessageID, int nMaxLth )
//
// PURPOSE:  To load a message from the resource file
//
//           This routine just returns the message ID for a Server.  It is
//           up to the Error Message routine to convert Message Ids into
//           valid messages from a message text object.
//
// RETURNS: The length of the message returned
//
//***********************************************************************
zSHORT  OPERATION
SysLoadMessage( zPCHAR szReturnString, long lMessageID, zSHORT nMaxLth )
{

   zltoa ( lMessageID, szReturnString );
   return( 0 );
}

//***********************************************************************
//
// ENTRY:      SysLoadDomainMessage
//
// PROTOTYPE:
//
//     int  OPERATION
//     SysLoadDomainMessage( zPCHAR szReturnString, zLONG lMessageID,
//                           int nMaxLth, HMODULE hModule )
//
// PURPOSE:  To load a message from the resource file of the Domain
//
//           This routine just returns the message ID for a Server.  It is
//           up to the Error Message routine to convert Message Ids into
//           valid messages from a message text object.
//
// RETURNS: The length of the message returned
//
//***********************************************************************
zSHORT  OPERATION
SysLoadDomainMessage( zPCHAR szReturnString, zLONG lMessageID,
                      zSHORT nMaxLth, zLONG lModule )
{

   zltoa ( lMessageID, szReturnString );
   return( 0 );
}

//./ ADD NAME=SysParseLine
//***********************************************************************
//    ENTRY:   SysParseLine
//
//    PURPOSE: This routine parses a line from a Portable or INI file.
//
//    DESCRIPTION: This routine attempts to find and return two
//    sub-strings from InputString.  The first of the two, PortName,
//    has no embedded blanks.  PortValue, however, may. If there
//    is nothing in InputString, both are returned as null strings.
//    If only one sub-string is found, it is returned in PortName
//    and PortValue is returned null.
//
//***********************************************************************
//./ END + 4
void  OPERATION
SysParseLine( zPCHAR    PortName,
              zCOREMEM  PortValue,
              zPCHAR    InputString )
{
   int  k;
   int  InputLength;
   int  StartPos;

   k = -1;
   InputLength = zstrlen( InputString );

   // look for begining of first parm
   do
      k++;
   while ( (InputString[ k ] == ' ') && (k < InputLength) );
   StartPos = k;

   // if no parms
   if ( StartPos >= InputLength )
   {
      PortName[ 0 ] = 0;
      *PortValue = szNullS;
   }
   else  // at least one parm
   {
      // look for end of first parm
      do
         k++;
      while ( InputString[ k ] != ' ' && InputString[ k ] != '=' &&
              k < InputLength );

      zstrncpy( PortName, InputString + StartPos, k - StartPos );
      PortName[ k - StartPos ] = 0;

      // if Only one parm created set Portvalue to null and return
      if ( k > InputLength )
      {
         *PortValue = szNullS;
         return;
      }

      // Set StartPos to the greater of k + 1 or 11
      k++;
      if ( k > 10 || InputString[ k ] != ' ' )
         StartPos = k;
      else
         StartPos = 10;

      // look for begining of second parm
      while ( (InputString[ k ] == ' ') && (k <= InputLength) )
         k++;

      // if only one parm
      if ( k >= InputLength )
      {
         *PortValue = szNullS;
      }
      else     // there is a second parm
      {
         if ( k < 11 )
            StartPos = k;

         *PortValue = InputString + StartPos;

         // if needed, get rid of trailing blanks
         k = zstrlen( *PortValue ) - 1;
         while ( k > 0 )
         {
            if ( (*PortValue)[ k ] == ' ' )
               (*PortValue)[ k-- ] = 0;
            else
               break;
         }
      }
   }
}   /* End of SysParseLine */

//./ ADD NAME=SysGetFileDateTime
//**********************************************************************
//
//   FUNCTION:   SysGetFileDateTime
//
//   PROTOTYPE:
//
//      void  OPERATION
//      SysGetFileDateTime( zLONG hFile, zPCHAR DateTime )
//
//   RETURNS:    DateTime - yyyymmddhhmmssttt
//
//   PURPOSE: This gets the Date and Time stamp for an Open file.
//
//   DESCRIPTION:  For a Server, this routine simply returns a
//                 string of question marks, since there is no standard
//                 equivalent to dos_getftime and the SysGetFileDateTime
//                 function was only called by ActivateViewObject, where
//                 the value returned was only used in a trace call.
//                 The TraceLineS function was inserted to verify that
//                 ActivateViewObject was the only caller.
//
//*********************************************************************
//./ END + 2
void  OPERATION
SysGetFileDateTime( zVIEW lpView, zLONG hFile, zPCHAR szDateTime )
{
   struct stat   st;
   LPTASK        lpTask;
   LPOPENFILE    lpOpenFile;

   zstrcpy( szDateTime, "???????????????" );

   // Get the task an match up the file handle passed with an
   // OpenFile record. If the record is not found, return a zCALL_ERROR;
   lpTask = zGETPTR( lpView->hTask ):
   if ( lpTask == 0 )
      return;

   lpOpenFile = lpTask->hFirstOpenFile;
   while ( lpOpenFile )
   {
      if ( lpOpenFile->lFileHandle == hFile )
         break;

      lpOpenFile = lpOpenFile->hNextOpenFile;
   }

   if ( !lpOpenFile )
      return;

   if ( stat( lpOpenFile->szFileName, &st ) == -1 )
      return;

   //   RETURNS:    DateTime - yyyymmddhhmmssttt
   strftime( szDateTime, 18, "%Y%m%d%H%M%s000", gmtime( &st.st_mtime ) );
   return;
}

//./ ADD NAME=SysGetDateTime
//**********************************************************************
//
//   FUNCTION:   SysGetDateTime
//
//   PROTOTYPE:
//
//      void  OPERATION
//      SysGetDateTime( zPCHAR Date,  zPCHAR Time )
//
//   RETURNS:    DateTime yyyymmddhhmmssttt
//
//   PURPOSE: This gets the System Date and Time.
//
//   DESCRIPTION:  This function gets the system date and time for
//                 a UNIX Server.  It uses the time and localtime
//                 functions, which do not return a fraction of a
//                 second.  Thus the ttt characters in the returned
//                 DateTime string are always "000".
//
//*********************************************************************/
//./ END + 2
void  OPERATION
SysGetDateTime( zPCHAR szDateTime )
{
   char   szWorkString[ 5 ];
   struct tm *time_structure;
   time_t time_val;

   time (&time_val);
   time_structure = localtime ( &time_val );

   zltoa ( time_structure->tm_year, szDateTime );

   zltoa ( ( time_structure->tm_mon + 100 ), szWorkString );
   zstrcpy( &szDateTime[ 4 ], szWorkString + 1 );

   zltoa ( ( time_structure->tm_mday + 100 ), szWorkString );
   zstrcpy( &szDateTime[ 6 ], szWorkString + 1 );

   zltoa ( ( time_structure->tm_hour + 100 ), szWorkString );
   zstrcpy( &szDateTime[ 8 ], szWorkString + 1 );

   zltoa ( ( time_structure->tm_min + 100 ), szWorkString );
   zstrcpy( &szDateTime[ 10 ], szWorkString + 1 );

   zltoa ( ( time_structure->tm_sec + 100 ), szWorkString );
   zstrcpy( &szDateTime[ 12 ], szWorkString + 1 );

   zstrcpy( &szDateTime[ 14 ], "000" );

}

//./ ADD NAME=SysTranslateString
//***********************************************************************
//
//   ENTRY:    SysTranslateString
//
//   PROTOTYPE:
//
//        void OPERATION
//        SysTranslateString( zPCHAR szString, char cUpperLower )
//
//   PURPOSE:  This system dependent Operation translates a string to
//             either upper case or lower case depending on the
//             upper or lower character value passed ( 'U' or 'L' ).
//             Converted for UNIX.
//
//   RETURNS:
//
//        void
//
//***********************************************************************/
//./ END + 2
void OPERATION
SysTranslateString( zPCHAR szString, char cUpperLower )
{
   int i;

   i = 0;
   if ( cUpperLower == 'L' )
      while ( szString[i] != '\0' )
      {
         tolower ( szString[i] );
         i++;
      }
   else
      while ( szString[i] != '\0' )
      {
         toupper ( szString[i] );
         i++;
      }
   return;

}

//./ ADD NAME=SysGetLocalDirectory
//***********************************************************************
//
//  ENTRY:      SysGetLocalDirectory
//
// PROTOTYPE:
//
//     int  OPERATION
//     SysGetLocalDirectory( zPCHAR szReturnDir )
//
// PURPOSE:  To get the Zeidon Bin directory.
//
// RETURNS:  The local directory name, suffixed with the
//           directory separator character
//
//***********************************************************************
//./ END + 2
int  OPERATION
SysGetLocalDirectory( zPCHAR szReturnDir )
{
   // Temporarily return the Zeidon Bin directory
   if ( AnchorBlock )
   {
      zstrcpy( szReturnDir, AnchorBlock->szZeidonBin );
      return( 0 );
   }

   *szReturnDir = 0;
   return( -1 );
}

//./ ADD NAME=SysLoadLibraryWithErrFlag
//***********************************************************************
//
//  ENTRY:      SysLoadLibraryWithErrFlag
//
// PROTOTYPE:
//
//     LPLIBRARY  OPERATION
//     SysLoadLibraryWithErrFlag( zVIEW   lpView,
//                                zCPCHAR szLibraryName,
//                                zCPCHAR szErrFlag )
//
// PURPOSE:  To load a DLL or shared library into memory, passing a flag to
//           indicate whether an error message should be sent if the DLL
//           cannot be opened.
//
//           If szLibraryName is fully qualified, SysLoadLibrary will change
//           the CWD to the qualification path and then try loading the
//           unqualified library.
//
//           If szLibraryName is not fully qualified, SysLoadLibrary will
//           change the CWD to the application bin directory and then try
//           loading the unqualified library.
//
// ARGUMENTS:
//           lpView - Subtask view that specifies the application.  If
//                lpView is NULL, then the system application is assumed.
//           cpcLibraryName - Name of library to load.  May be qualified
//                or unqualified, but should not include the extension
//                (e.g. ".dll").
//           lErrFlag - 0 indicates message will not be sent if DLL cannot
//                        be loaded.
//                      1 indicates error message will be sent.
//
// RETURNS:  0 - Library not found
//           LPLIBRARY - Object Services handle to module
//
//***********************************************************************
//./ END + 2
LPLIBRARY  OPERATION
SysLoadLibraryWithErrFlag( zVIEW   lpView,
                           zCPCHAR cpcLibraryName,
                           zLONG   lFlag )
{
   return SysLoadLibrary( lpView, cpcLibraryName );
}

//./ ADD NAME=SysLoadLibrary
//***********************************************************************
//
//  ENTRY:      SysLoadLibrary
//
// PROTOTYPE:
//
//     LPLIBRARY  OPERATION
//     SysLoadLibrary( zCPCHAR szLibraryName )
//
// PURPOSE:  To load a DLL or shared library into memory
//
//           For a Server, this routine is a no-operation that
//           always returns a value of 1.
//
// RETURNS:  0 - Library not found
//           LPLIBRARY - Object Services handle to module
//
//***********************************************************************
//./ END + 2
LPLIBRARY  OPERATION
SysLoadLibrary( zVIEW lpView, zCPCHAR szLibraryName )
{
   LPAPP       lpApp;
   LPTASK      lpTask;
   LPLIBRARY   lpLibrary;
   char        szFileName[ zMAX_FILENAME_LTH + 1 ];
   zPVOID      hLibrary;
   short       nPos;

   // if AnchorBlock or application task does not exist, return 0
   if ( AnchorBlock == 0 || (lpTask = zGETPTR( lpView->hTask )) == 0 )
   {
      return( 0 );
   }

   if ( lpView )
   {
      if ( fnValidView( lpTask, lpView ) == 0 )
         return( 0 );

      if ( fnGetApplicationForSubtask( &lpApp, lpView ) != 0 )
         return( 0 );
   }
   else
   {
      lpApp  = AnchorBlock->hSystemApp;
      lpTask = AnchorBlock->hMainTask;
   }

   // Now see if module is loaded already for the application task
   lpLibrary = lpTask->hFirstLibrary;
   while ( lpLibrary )
   {
      if ( zstrcmpi( szLibraryName, lpLibrary->szName ) == 0 )
      {
         lpLibrary->nUseCount++;
         return( lpLibrary );
      }

      lpLibrary = lpLibrary->hNextLibrary;
   }

   // Check to see if library name is qualified.
   nPos = zstrlen( szLibraryName ) - 1;
   while ( nPos >= 0 && szLibraryName[ nPos ] != cDirSep &&
                        szLibraryName[ nPos ] != 0 )
   {
      nPos--;
   }

   if ( nPos >= 0 )
   {
      // Library is qualified -- copy qualified name.
      zstrcpy( szFileName, szLibraryName );
      nPos++;   // nPos now points to first char of (unqualified) lib name.
   }
   else
   {
      // Library is unqualified -- copy application bin dir and then filename.
      zstrcpy( szFileName, lpApp->szLibraryDir );
      SysAppendcDirSep( szFileName );
      nPos = zstrlen( szFileName );
      zstrcat( szFileName, szLibraryName );
   }

   zstrcat( szFileName, ".so" );

   // Attempt to load the module.  First check to see if the fully-qualified
   // file exists.  If it does, then try loading it.  If it doesn't, then
   // try loading the unqualified file.
   if ( zaccess( szFileName, 0 ) == 0 )
      nPos = 0;      // Specifies that fully qualified path should be used.

   // Environment specific code begins here =================================

   hLibrary = dlopen( szFileName + nPos, RTLD_LAZY );

   // if the load failed, issue a core error and return( 0 ).
   // Do not display 'File not found' or 'Path not found' errors, just return
   if ( hLibrary == 0 )
   {
      TraceLineS( "(sy) Load failed for ", szFileName );
      fnIssueCoreError( lpView, lpView, 8, 30,
                        (zLONG) hLibrary, szFileName, 0 );

      return( 0 );
   }

   TraceLineS( "(sy) Opened lib ", szFileName );

   // Environment specific code ends here

   // Allocate a module record for the current task
   lpLibrary = (LPLIBRARY)
              fnAllocDataspace( lpTask->hFirstDataHeader,
                                sizeof( LibraryRecord ), 1, 0, iLibrary );
   if ( lpLibrary )
   {
      lpLibrary->nTableID = iLibrary;
      lpLibrary->hLibrary = (zLONG) hLibrary;
      zstrcpy( lpLibrary->szName, szLibraryName );
      lpLibrary->nUseCount = 1;

      // Now chain the module to the task
      lpLibrary->hNextLibrary = lpTask->hFirstLibrary;
      lpTask->hFirstLibrary = lpLibrary;
   }

   return( lpLibrary );
}

//./ ADD NAME=SysGetProc
//***********************************************************************
//
//  ENTRY:      SysGetProc
//
// PROTOTYPE:
//
//     zPVOID OPERATION
//     SysGetProc( LPLIBRARY lpLibrary, zCPCHAR szProcName )
//
// PURPOSE:  To get a function address from a DLL given the function name
//
// RETURNS:  0 - Free OK
//           non-zero error
//
//***********************************************************************
//./ END + 2
zPVOID OPERATION
SysGetProc( zVIEW lpView, LPLIBRARY lpLibrary, zCPCHAR cpcProcName )
{
   zPVOID pfReturn;

   pfReturn = dlsym( (zPVOID) lpLibrary->hLibrary, (zPCHAR) cpcProcName );

   if ( pfReturn == 0 )
   {
      LPTASK  lpTask;
      zCPCHAR pszError;

      if ( (pszError = dlerror( )) != NULL )
      {
         char szMsg[ 400 ];

         sprintf( szMsg, "(sy) dlerror = %s  (%s)", pszError, cpcProcName );
         TraceLineS( szMsg, "" );
      }

      // lpTask = fnFindTask( SysGetTaskFromView( lpView ) );
      // fnIssueCoreError( zGETPTR( lpView->hTask ), lpView,
      //                   8, 31, -1, cpcProcName, lpLibrary->hName );
   }

   return( pfReturn );
}

//./ ADD NAME=SysFreeLibrary
//***********************************************************************
//
//  ENTRY:      SysFreeLibrary
//
// PROTOTYPE:
//
//     int
//     SysFreeLibrary( LPLIBRARY lpLibrary )
//
// PURPOSE:  To free a DLL for a task
//
// RETURNS:  0 - Free OK
//           non-zero error
//
//***********************************************************************
//./ END + 2
int  OPERATION
SysFreeLibrary( zVIEW lpView, LPLIBRARY lpLibrary )
{
   LPTASK lpTask;
   LPLIBRARY  lpPrevSearchLibrary;
   LPLIBRARY  lpSearchLibrary;

   // if no AnchorBlock return error
   if ( AnchorBlock == 0 )
      return( -1 );

   // If task is not active, return error.
   lpTask = zGETPTR( lpView->hTask ):
   if ( lpTask == 0 )
      return( -1 );

   // Find lpLibrary passed from caller.
   lpPrevSearchLibrary = 0;
   lpSearchLibrary = lpTask->hFirstLibrary;
   while ( lpSearchLibrary )
   {
      if ( lpSearchLibrary == lpLibrary )
         break;

      lpPrevSearchLibrary = lpSearchLibrary;
      lpSearchLibrary = lpSearchLibrary->hNextLibrary;
   }

   // If the Library wasn't found in the current task list, look for it in
   // the system task list.
   if ( lpSearchLibrary == 0 )
   {
      lpPrevSearchLibrary = 0;
      lpSearchLibrary = AnchorBlock->hMainTask->hFirstLibrary;
      while ( lpSearchLibrary )
      {
         if ( lpSearchLibrary == lpLibrary )
         {
            lpTask = AnchorBlock->hMainTask;
            break;
         }

         lpPrevSearchLibrary = lpSearchLibrary;
         lpSearchLibrary = lpSearchLibrary->hNextLibrary;
      }
   }

   // Check to see if module found for task
   if ( lpSearchLibrary == 0 )
      return( -1 );

   // Decrement the use count.  If the use count is greater than 0, then the
   // module has been loaded for another task, so don't free it yet.
   lpLibrary->nUseCount--;
   if ( lpLibrary->nUseCount > 0 )
   {
      return( 0 );
   }

   // Unchain the module from the task chain
   if ( lpPrevSearchLibrary )
      lpPrevSearchLibrary->hNextLibrary = lpLibrary->hNextLibrary;
   else
      lpTask->hFirstLibrary = lpLibrary->hNextLibrary;

   // Environment specific code begins here
   dlclose( (zPVOID) lpLibrary->hLibrary );

   // Environment specific code ends here
   fnFreeDataspace( lpLibrary );

   return( 0 );  // return AOK
}

#if 0
//./ ADD NAME=SysGetDomainProc
//***********************************************************************
//
//  ENTRY:      SysGetDomainProc
//
// PROTOTYPE:
//
//     zPVOID OPERATION
//     SysGetDomainProc( LPDOMAIN, lpDomain )
//
// PURPOSE:  This routine gets the Domain operation number, which
//           identifies the Domain case in kzoehdaa.c.  This is
//           then used by the Header to call the correct Domain
//           operation.  The operation number is retrieved from
//           uOperNumber in the lpDomain structure.
//
// RETURNS:  0 - Free OK
//           non-zero error
//
//***********************************************************************
//./ END + 2
zSHORT OPERATION
SysGetDomainProc( LPDOMAIN lpDomain )
{

   return( lpDomain->uOperNumber );

}

//./ ADD NAME=SysGetDerivedProc
//***********************************************************************
//
//  ENTRY:      SysGetDerivedProc
//
// PROTOTYPE:
//
//     zPVOID OPERATION
//     SysGetDerivedProc( LPVIEWATTRIB lpViewAttrib )
//
// PURPOSE:  This routine gets the Derived operation number, which
//           identifies the Derived case in kzoehdaa.c. This is
//           then used by the Header to call the correct Derived
//           operation.  The operation number is retrieved from
//           uDerivedNumber in the lpViewAttrib structure.
//
// RETURNS:  0 - Free OK
//           non-zero error
//
//***********************************************************************
//./ END + 2
zSHORT OPERATION
SysGetDerivedProc( LPVIEWATTRIB lpViewAttrib )
{

   return( lpViewAttrib->uDerivedNumber );

}

//./ ADD NAME=SysGetObjectConstraintProc
//***********************************************************************
//
//  ENTRY:      SysGetObjectConstraintProc
//
// PROTOTYPE:
//
//     zPVOID OPERATION
//     SysGetObjectConstraintProc( LPVIEWOD lpViewOD )
//
// PURPOSE:  This routine gets the Object Constraint operation number,
//           which identifies the Object Constraint case in kzoehdaa.c.
//           This is then used by the Header to call the correct Object
//           Constraint operation.  The operation number is retrieved
//           from uOCEOperNumber in the lpViewOD structure.
//
// RETURNS:  0 - Free OK
//           non-zero error
//
//***********************************************************************
//./ END + 2
zSHORT OPERATION
SysGetObjectConstraintProc( LPVIEWOD lpViewOD )
{

   return( lpViewOD->uOCEOperNumber );

}

//./ ADD NAME=SysGetEntityConstraintProc
//***********************************************************************
//
//  ENTRY:      SysGetEntityConstraintProc
//
// PROTOTYPE:
//
//     zPVOID OPERATION
//     SysGetEntityConstraintProc( LPVIEWENTITY lpViewEntity )
//
// PURPOSE:  This routine gets the Entity Constraint operation number,
//           which identifies the Entity Constraint case in kzoehdaa.c.
//           This is then used by the Header to call the correct Entity
//           Constraint operation.  The operation number is retrieved
//           from uECEOperNumber in the lpViewEntity structure.
//
// RETURNS:  0 - Free OK
//           non-zero error
//
//***********************************************************************
//./ END + 2
zSHORT OPERATION
SysGetEntityConstraintProc( LPVIEWENTITY lpViewEntity )
{

   return( lpViewEntity->uECEOperNumber );

}
#endif

//./ ADD NAME=SysReadZeidonIni
//*********************************************************************
//
// ENTRY:      SysReadZeidonIni
//
// PURPOSE:    This Operation retrieves a specified parameter in the
//             Zeidon.Ini file.
//
// PARAMETERS: hFile - File handle for reading all parameters in a
//                     Group. ( see description below ).
//             Group - Group name which contains desired parameter
//                     ( NOTE: Group names are NOT case sensitive,
//                             [Workstation] is equal to [APPLICATION] )
//             Parameter - Parameter name to be read or NULZ string
//                         when reading all parameters in a Group
//                         ( NOTE: Parameter names are NOT case sensitive,
//                             UserID is equal to USERID )
//             Value - Parameter value returned
//
// DESCRIPTION: The ZEIDON.INI file is located in the home directory
//             on the workstation.  When running under MicroSoft
//             Windows, the home directory is the Windows directory
//             containing WIN.COM and WIN.INI.  To retrieve the
//             Windows directory, the System function SysGetLocalDirectory
//             is used.
//
//             A sample ZEIDON.INI file might look like:
//             ....+....1....+....2....+....3....+....4...+....5
//
//             [Zeidon]
//
//             [Workstation]
//             DefaultApp=Zeidon
//             UserID=gkirk
//             Password=zeidon
//
//             [Core]
//             Network=N
//
//             ....+....1....+....2....+....3....+....4...+....5
//             where bracketed items ( [Zeidon], [Workstation], and
//             [Core] ) are group names and unbracketed items
//             ( DefaultApp=Zeidon, etc ) are parameters and values
//             within a group.
//
//
//             SysReadZeidonIni operates in two modes. In the first
//             mode, the caller attempts to read a single parameter
//             in a Group by passing a Group name ( including the
//             brackets ) and a Parameter Name. An example of a call
//             to read the UserID in the [Workstation] group would be
//
//             SysReadZeidonIni( -1, "[Workstation]", "UserId",
//                               szReturnString );
//
//             The return string would then contain the value
//             "gkirk" after this call.  NOTE: The file handle
//             should always be passed as -1 in this type of call.
//
//             In the second mode of operation, all parameters in a
//             group may be read by passing a Group name and a null
//             string for the parameter name until a -1 value is returned
//             meaning no more parameters exist in the group.
//
//             In this mode, the parameter name retrieved is returned
//             in the parameter parm after each call.
//
//             An example of a multi-read loop is as follows:
//
//             hFileName = -1;        / * Do First Call with -1 * /
//             szParameter[ 0 ] = 0; / * Null Parameter for multi read * /
//             for ( ; ; )            / * Loop for awhile * /
//             {
//                if ( ( hFileName = SysReadZeidonIni( hFileName,
//                       "[Workstation]", szParameter, szValue ) )  == -1 )
//                {
//                   break;   / * End of Group Parameter List * /
//                }
//                / ** Process parameter received ** /
//                if ( zstrcmpi( szParameter, "DefaultApp" ) == 0 )
//                {
//                   .
//                   .
//                   .
//                }
//                else
//                if ( zstrcmpi( szParameter, "UserID" ) == 0 )
//                {
//                   .
//                   .
//                   .
//                }
//
//                / * Re-initialize parameter before next read so
//                    SysReadZeidonIni does not look for last
//                    parameter retrieved again!!.              * /
//                szParameter[ 0 ] = 0;
//             }  / ** End Read loop for zeidon.ini group ** /
//
//             NOTE: In the call sequences above, the first call
//                   would return the file handle to Zeidon.ini and
//                   the parameter "DefaultApp" with the value
//                   "Zeidon". The second and third calls would return
//                   the parameters "UserID" and "Password" respectively
//                   and the fourth call would return a file handle of -1
//                   indicating the file was closed and no more parameters
//                   exist in the group.
//
//
//**********************************************************************
//./ END + 3
long  OPERATION
SysReadZeidonIni( long hFile, zCPCHAR Group, zPCHAR Parameter,
                  zPCHAR Value )
{
   int  k;
   char ParseName[100];
   zPCHAR cpcLine;
   zPCHAR ParseValue;
   zPCHAR LineValue;


   // initialize output value to NULL
   Value[ 0 ] = 0;

   // if Anchor block doesn't exist, abandon
   if ( AnchorBlock == 0 )
      return( -1 );

   // if an invalid group name was not passed abandon
   if ( Group[ 0 ] != '[' )
      return( -1 );

   // if this is not a repeated read, open the file
   if ( hFile == -1 )
   {
      char szFileName[ 256 ];

      SysGetEnvVar( szFileName, szlZEIDON, sizeof( szFileName ) );
      SysAppendcDirSep( szFileName );
      zstrcat( szFileName, "zeidon.ini" );
      hFile = SysOpenFile( szFileName, COREFILE_READ );
      if ( hFile == -1 )
         return( (int) hFile );

      // find the group to be processed
      k = 1;
      ParseName[ 0 ] = 0;
      k = SysReadLine( &cpcLine, hFile );
      while ( k > 0 && zstrcmpi( ParseName, (zPCHAR) Group ) != 0 )
      {
         SysParseLine( ParseName, &ParseValue, cpcLine );
         k = SysReadLine( &cpcLine, hFile );
      }

      // if the Group was not found, close the file and return
      if ( !k )
      {
         SysCloseFile( hFile, 0 );
         return( -1 );
      }
   }
   else
   {
      // Read the next line if processing an already opened file
      k = SysReadLine( &cpcLine, hFile );
   }

   // The Group has been located and we have read the first line
   // following the Group identifier, look for the specified parameter.
   while ( k )
   {
      SysParseLine( ParseName, &ParseValue, cpcLine );

      // Remove blanks before Parse Value
      while ( ParseValue[ 0 ] == ' ' ) ParseValue++;

      // if the parameter name was not delimited by an equal sign '=',
      // search for an equal and bump past it.
      if ( ParseValue[ 0 ] == '=' )
      {
         LineValue = cpcLine;

         // Find first non-blank in line
         while ( LineValue[ 0 ] == ' ' )
            LineValue++;

         // Find first blank or '=' in line after first non-blank
         while ( LineValue[ 0 ] != ' ' && LineValue[ 0 ] != '=' )
            LineValue++;

         // if a space occurred after the parameter name and before the
         // '=' sign, then increment ParseValue after the equal sign.
         if ( LineValue[ 0 ] != '=' )
         {
            ParseValue++;

            // Remove blanks before Parse Value
            while ( ParseValue[ 0 ] == ' ' )
               ParseValue++;
         }
      }

      /* if a new group was found, close file and return( -1 ) */
      if ( ParseName[ 0 ] == '[' )
      {
         SysCloseFile( hFile, 0 );
         return( -1 );
      }

      // if no parameter was passed and a parameter was found or
      // a parameter was passed and it matches the name found
      // select this parameter to return to the caller
      if ( (!Parameter[ 0 ] && ParseName[ 0 ]) ||
           (ParseName[ 0 ] &&
            zstrcmpi( ParseName, (zPCHAR) Parameter ) == 0) )
      {
         zstrcpy( Value, ParseValue );
         if ( !Parameter[ 0 ] )
            zstrcpy( (zPCHAR) Parameter, ParseName );
         else
         {
            SysCloseFile( hFile, 0 );
            hFile = -1;
         }

         return( (int) hFile );
      }

      // Get the next line from the zeidon.ini file
      k = SysReadLine( &cpcLine, hFile );
   }

   // No luck finding the parameter, quit
   SysCloseFile( hFile, 0 );
   return( -1 );
}

//./ ADD NAME=SysUpdateZeidonIni
//*********************************************************************
//
// ENTRY:       SysUpdateZeidonIni
//
// PURPOSE:     This Operation updates a parameter in a group in the
//              Zeidon Ini file.
//
// PARAMETERS:  Group - The Group to be updated (e.g.  "[Workstation]")
//              Parameter - The Parameter to be updated (e.g.  "UserID")
//              Value - The Value to be set for the parameter
//                      (e.g.  "gkirk")
//
// DESCRIPTION: The Parameter and the Value passed are concatenated
//              together with the character '=' and placed in the
//              group specified by the group parameter.  Note that the
//              group parameter must be placed in brackets
//              (e.g.  "[Workstation]").
//
//              If the group and parameter are found in the file, the
//              parameter is updated.  Otherwise the group is created
//              if necessary and the parameter is added to the group
//              parameter list.  See SysReadZeidonIni above for more
//              information on the zeidon.ini file.
//
//*********************************************************************
//./ END + 2
void  OPERATION
SysUpdateZeidonIni( zCPCHAR Group, zCPCHAR Parameter, zCPCHAR Value )
{
   long hFile;
   int  k;
   char szParmString[ 256 ];
   char szFileName[ 256 ];
   char ParseName[ 100 ];
   zPCHAR cpcLine;
   zPCHAR ParseValue;

   // build the parameter to be written into ZEIDON.INI
   zstrcpy( szParmString, (zPCHAR) Parameter );
   zstrcat( szParmString, "=" );
   zstrcat( szParmString, (zPCHAR) Value );
   SysGetLocalDirectory( szFileName );
   zstrcat( szFileName, "zeidon.ini" );
   hFile = SysOpenFile( szFileName, COREFILE_UPDATE |
                                    COREFILE_WRITELINE_BUFFERED );

   // If the file does not exist, create one
   if ( hFile == -1 )
   {
      hFile = SysOpenFile( szFileName,
                           COREFILE_CREATE | COREFILE_WRITELINE_BUFFERED );
      SysWriteLine( hFile, "[Zeidon]" );
      SysWriteLine( hFile, "" );
      SysWriteLine( hFile, "[Encyclopedia]" );
      SysWriteLine( hFile, "" );
      SysWriteLine( hFile, "[Workstation]" );
      SysWriteLine( hFile, "" );
      SysWriteLine( hFile, "[Object Services]" );
      SysCloseFile( hFile, 0 );
      hFile = SysOpenFile( szFileName,
                           COREFILE_UPDATE | COREFILE_WRITELINE_BUFFERED );
   }

   // Perform the Update
   if ( hFile != -1 )
   {
      k = 1;
      ParseName[ 0 ] = 0;
      k = SysReadLine( &cpcLine, hFile );

      // Truncate the file after reading in 1 buffer
      SysTruncateFile( hFile );

      while ( k && zstrcmpi( ParseName, (zPCHAR) Group ) != 0 )
      {
         SysParseLine( ParseName, &ParseValue, cpcLine );
         SysWriteLine( hFile, cpcLine );
         k = SysReadLine( &cpcLine, hFile );
      }

      // if the Group was not found, create it
      if ( !k )
      {
         SysWriteLine( hFile, "" );             // Write blank line
         zstrcpy( szFileName, (zPCHAR) Group ); // Write Group line
         SysWriteLine( hFile, szFileName );
      }
      else
      while ( k )
      {
         // Group line has been found and rewritten, search for parameter
         // in the group.
         SysParseLine( ParseName, &ParseValue, cpcLine );
         if ( zstrcmpi( ParseName, (zPCHAR) Parameter ) == 0 )
            break;
         else
         if ( ParseName[ 0 ] == '[' )  // keep an eye out for another group
         {
            SysWriteLine( hFile, szParmString );  // create new parm
            SysWriteLine( hFile, "" );            // write blank after parm
            zstrcpy( szParmString, cpcLine );      // set string to nxt grp
            break;
         }

         // Don't rewrite blank lines while searching for parameter
         if ( ParseName[ 0 ] )
         {
            SysWriteLine( hFile, cpcLine );
         }

         k = SysReadLine( &cpcLine, hFile );
      }

      // Add parameter or rewrite next group line depending on the
      // outcome of parameter search above
      SysWriteLine( hFile, szParmString );
      while ( k > 0 )
      {
         k = SysReadLine( &cpcLine, hFile );
         if ( k )
         {
            SysWriteLine( hFile, cpcLine );
         }
      }

      // Close Zeidon ini file
      SysCloseFile( hFile, 0 );
   }
}

//./ ADD NAME=SysAppendcDirSep
//*********************************************************************
//
// ENTRY:       SysAppendcDirSep
//
// PURPOSE:     Append the cDirSep character to the end of a string.
//
//*********************************************************************
//./ END + 2
zSHORT OPERATION
SysAppendcDirSep( zPCHAR szString )
{
   int  nLth;

   nLth = zstrlen( szString );
   if ( nLth > 1 && szString[ nLth - 1 ] != cDirSep )
   {
      szString[ nLth++ ] = cDirSep;
      szString[ nLth ] = 0;
   }

   return( 0 );
}

//./ ADD NAME=SysGetTickCount
//*********************************************************************
//
// ENTRY:       SysGetTickCount
//
// PURPOSE:     Returns a tick count in milliseconds.  What the tick count
//              represents is OS dependent, but the return count can be used
//              to time operations.
//
//*********************************************************************
//./ END + 2
zULONG OPERATION
SysGetTickCount( void )
{
   struct timeval tv;

   gettimeofday( &tv, 0 );
   return(zULONG) tv.tv_usec;
}

void
SfListTasks( void )
{
  return;
}

//./ ADD NAME=SysGetLanguageCode
//***********************************************************************
//
//  ENTRY:      SysGetLanguageCode
//
//************************************************************************
//./ END + 2
zSHORT OPERATION
SysGetLanguageCode( zPSHORT lpnLanguageCode )
{
   LPINTERNATIONAL   lpInternational;

   // Follow the chain from the AnchorBlock to the International Language
   // pointer to the International Language Code.  Then return the Code.

   lpInternational = AnchorBlock->hInternational;
   *lpnLanguageCode = lpInternational->nLanguage;

   return( 0 );
}

//***********************************************************************
//
//  ENTRY:      SysGetBaseMessage
//
// PROTOTYPE:
//
//     int  OPERATION
//     SysGetBaseMessage( zPCHAR pchReturnString, long lMessageID, int nMaxLth )
//
// PURPOSE:  To return a base object engine message from the base
//           message table.
//
// RETURNS: The length of the message returned
//
//***********************************************************************
zSHORT  OPERATION
SysGetBaseMessage( zPCHAR pchReturnString, long lID, zSHORT nMaxLth )
{
   zSHORT k;
   zSHORT nLth;

   for ( k = 0;
         BaseMsgTable[ k ].nID != lID && BaseMsgTable[ k ].nID != 9999;
         k++ )
   {
   }

   nLth = zstrlen( BaseMsgTable[ k ].szMsg );

   if ( BaseMsgTable[ k ].nID == lID )
   {
      if ( nLth > nMaxLth )
         nLth = nMaxLth;

      zstrncpy( pchReturnString, BaseMsgTable[ k ].szMsg, nLth );
      pchReturnString[ nLth ] = 0;
      return( nLth );
   }
   else
   {
      pchReturnString[ 0 ] = 0;
      return( 0 );
   }
}

// DGC 10/29/96  We've changed domain error processing so I'm getting rid
// of this stuff.
#if 0
//***********************************************************************
//
//  ENTRY:      SysGetDomainMessage
//
// PROTOTYPE:
//
//     int  Domain
//     SysGetDomainMessage( zPCHAR pchReturnString, long lMessageID, int nMaxLth )
//
// PURPOSE:  To return a base object engine message from the base
//           message table.
//
// RETURNS: The length of the message returned
//
//***********************************************************************
zSHORT  OPERATION
SysGetDomainMessage( zPCHAR pchReturnString, long lID, zSHORT nMaxLth )
{
   zSHORT k;
   zSHORT nLth;

   for ( k = 0; DomainMsgTable[ k ].nID != lID &&
                DomainMsgTable[ k ].nID != 9999; k++ );

   nLth = zstrlen( DomainMsgTable[ k ].szMsg );

   if ( DomainMsgTable[ k ].nID == lID )
   {
      if ( nLth > nMaxLth )
         nLth = nMaxLth;

      zstrncpy( pchReturnString, DomainMsgTable[ k ].szMsg, nLth );
      pchReturnString[ nLth ] = 0;
      return( nLth );
   }
   else
   {
      pchReturnString[ 0 ] = 0;
      return( 0 );
   }
}
#endif

//***********************************************************************
//
//  ENTRY:      SysGetOperationMessage
//
// PROTOTYPE:
//
//     int  OPERATION
//     SysGetOperationMessage( zPCHAR pchReturnString, long lMessageID, int nMaxLth )
//
// PURPOSE:  To return a base object engine message from the base
//           message table.
//
// RETURNS: The length of the message returned
//
//***********************************************************************
zSHORT  OPERATION
SysGetOperationMessage( zPCHAR pchReturnString, long lID, zSHORT nMaxLth )
{
   zSHORT k;
   zSHORT nLth;

   for ( k = 0; OperationMsgTable[ k ].nID != lID &&
                OperationMsgTable[ k ].nID != 9999; k++ );

   nLth = zstrlen( OperationMsgTable[ k ].szMsg );

   if ( OperationMsgTable[ k ].nID == lID )
   {
      if ( nLth > nMaxLth )
         nLth = nMaxLth;

      zstrncpy( pchReturnString, OperationMsgTable[ k ].szMsg, nLth );
      pchReturnString[ nLth ] = 0;
      return( nLth );
   }
   else
   {
      pchReturnString[ 0 ] = 0;
      return( 0 );
   }
}

//./ ADD NAME=SysGetEnvVar
//***********************************************************************
//
//  ENTRY:      SysGetEnvVar
//
//  PURPOSE:    To get the address of the environment variable
//              named in the parameter envname.
//
//  PARAMETERS: EnvName environment variable to find. should be
//              all capitalized.
//
//  RETURNS:    0  - Environment variable found
//             -1  - Environment variable not found
//
//***********************************************************************
//./ END + 2
zSHORT OPERATION
SysGetEnvVar( zPCHAR szReturnEnv, zCPCHAR szEnvName, int nMaxLth )
{
   zPCHAR  pszEnv;

   pszEnv = getenv( szEnvName );
   if ( pszEnv )
   {
      zstrncpy( szReturnEnv, pszEnv, nMaxLth );
      return( 0 );
   }
   else
   {
      *szReturnEnv = 0;
      return( -1 );
   }
}

/*
   The default decimal operation.  Even though is not technically exported
   we declare it as OPERATION so that it's signiture matches zDECOPER
   declaration.
*/

zSHORT OPERATION
fnDecimalOperation( void  *pvReturn,
                    void  *pvDecimal,
                    void  *pvInfo,
                    long  lControl )
{
   static double g_dNull = -99999999999999.9;

   long  lCommand = lControl & zDEC_CMD;

   switch ( lCommand )
   {
      case zDEC_CMD_INIT:
         TraceLineS( "(ZDecimal) Using default zDecimalOperation()", "" );
         TraceLineI( "(ZDecimal) Precision (in bits) = ",
                     (zLONG) (sizeof( double ) * 8) );
         return( 0 );

      case zDEC_CMD_ASSIGNDEC:
         // Copy from 1 decimal to another.
         *(double *) pvReturn = *(double *) pvDecimal;
         return( 0 );

      case zDEC_CMD_ASSIGNNULL:
         // Assign NULL to a decimal.
         *(double *) pvReturn = g_dNull;
         return( 0 );

      case zDEC_CMD_COMPAREDEC:
         if ( *(double *) pvDecimal < *(double *) pvInfo )
            return( -1 );
         else
         if ( *(double *) pvDecimal > *(double *) pvInfo )
            return( 1 );
         else
            return( 0 );

      case zDEC_CMD_COMPARENULL:
         if ( *(double *) pvDecimal == g_dNull )
            return( 0 );
         else
            return( 1 );

      case zDEC_CMD_COMPAREDOUBLE:
         if ( *(double *) pvDecimal < (long double) *(double *) pvInfo )
            return( -1 );
         else
         if ( *(double *) pvDecimal > (long double) *(double *) pvInfo )
            return( 1 );
         else
            return( 0 );

      case zDEC_CMD_STRINGTODEC:
         // Convert string to double.
         *(double *) pvReturn = atof( (char *) pvInfo );
         return( 0 );

      case zDEC_CMD_DECTOSTRING:
      {
         short nPrecision = * (short *) pvInfo;

         // Convert double to string.

         if ( nPrecision > 0 )
            sprintf( (char *) pvReturn, "%.*f", nPrecision, *(double *) pvDecimal );
         else
            sprintf( (char *) pvReturn, "%f", *(double *) pvDecimal );

         // sprintf is defined to return a empty string if dDecimal is 0.0.
         if ( * (char *) pvReturn == 0 )
            strcpy( (char *) pvReturn, "0.0" );

         return( 0 );
      }

      case zDEC_CMD_DECTOLONG:
         // Convert double to long.
         * (long *) pvReturn = (zLONG) *(double *) pvDecimal;
         return( 0 );

      case zDEC_CMD_LONGTODEC:
         *(double *) pvReturn = (double) * (long *) pvInfo;
         return( 0 );

      case zDEC_CMD_DECTODOUBLE:
         // Convert long double to double.
         *(double *) pvReturn = (double) *(double *) pvDecimal;
         return( 0 );

      case zDEC_CMD_DOUBLETODEC:
         // Convert double to decimal.
         *(double *) pvReturn = (double) *(double *) pvInfo;
         return( 0 );

      case zDEC_CMD_MULTDEC:
         *(double *) pvReturn = *(double *) pvDecimal * *(double *) pvInfo;
         return( 0 );

      case zDEC_CMD_DIVDEC:
         *(double *) pvReturn = *(double *) pvDecimal / *(double *) pvInfo;
         return( 0 );

      case zDEC_CMD_SUBDEC:
         *(double *) pvReturn = *(double *) pvDecimal - *(double *) pvInfo;
         return( 0 );

      case zDEC_CMD_ADDDEC:
         *(double *) pvReturn = *(double *) pvDecimal + *(double *) pvInfo;
         return( 0 );

      case zDEC_CMD_ROUND:
      {
         zSHORT nPrecision = *(zSHORT*)pvInfo;
         int iSign = 1;
         zSHORT n;
         double d, d2;

         if ( nPrecision < 0 )
            return( 0 );

         d = *(double*)pvDecimal;
         if ( d == 0.0 )
            return( 0 );

         if ( d < 0.0 ) {
            d = -d;
            iSign = -1;
         }

         for ( n = 0; n < nPrecision; n++ )
            d = d*10;
         d2 = floor( d );
         if ( d - d2 >= 0.5 )
            d2 += 1.0;
         for ( n = 0; n < nPrecision; n++ )
            d2 = d2/10;
         d2 = d2 * iSign;
         *(double*)pvDecimal = d2;

         return( 0 );
      }
   }

   return( -1 );
}

char * strrev( char * psz )
{
   // Save the return value.
   char * pszReturn = psz;

   // Find the end of the string.
   char * pszEnd = &psz[ strlen( psz ) - 1 ];

   while ( pszEnd > psz )
   {
      char cSwap = *pszEnd;
      *pszEnd = *psz;
      *psz = cSwap;
      psz++;
      pszEnd--;
   }

   return pszReturn;
}

zPVOID LOCALOPER
fnSysCreateHandle( LPDATAHEADER lpDataHeader,
                   zPVOID       pPointer )
{
   return pPointer;
}

zSHORT LOCALOPER
fnMutexCreateOS( LPTASK lpTask, LPMUTEX lpMutex, zLONG lControl )
{
   return( 0 );
}

zSHORT LOCALOPER
fnSysMutexLock( LPTASK  lpTask,
                LPMUTEX lpMutex,
                zULONG  lTimeout,
                zLONG   lControl )
{
   return( 0 );
}

zSHORT LOCALOPER
fnSysMutexUnlock( LPTASK lpTask, LPMUTEX lpMutex )
{
   return( 0 );
}

zSHORT LOCALOPER
fnSysMutexDestroy( LPTASK lpTask, LPMUTEX lpMutex )
{
   return( 0 );
}
