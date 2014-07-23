/////////////////////////////////////////////////////////////////////////////
//
// MODULE NAME:  KZOENGXA  -  Object services Unix Program
// DESCRIPTION:  This is a Unix program which initializes the Object
//               services.
//
/////////////////////////////////////////////////////////////////////////////
//
//    Copyright (c) 1996 QuinSoft, Corporation.  All rights reserved.
//    Confidential and Proprietary material subject to license - do not
//    reproduce or disclose.  This material is an unpublished work and
//    is considered a trade secret belonging to the copyright holder.
//
/////////////////////////////////////////////////////////////////////////////
//
//  AUTHOR:  D.G. Christensen
//  DATE:    6/19/96
//  API:     POSIX
//  ENVIRONMENT: Unix (Linux)
//
/////////////////////////////////////////////////////////////////////////////

#define  KZOESYS_INCL
#include <kzoengaa.h>     // Object Services public prototypes

#include <stdio.h>
#include <math.h>         // for atof conversion
#include <stdlib.h>
#include <unistd.h>

#define zGLOBAL_DATA
#include <kzoengaa.hx>

zPVOID gpAnchorBlock;

void * fnDummy( void * pvIn )
{
   printf( "Inside dummy thread, thread id = %d\n", pthread_self() );
   return( 0 )
}

/////////////////////////////////////////////////////////////////////////////
//
//  ENTRY:     WinMain
//  PURPOSE:   Establish message queue and create object services window
//
/////////////////////////////////////////////////////////////////////////////
int
main( int argc, char *argv[], char *envp[] )
{
   zVIEW  vView;
   zVIEW  vSubtask;
   char   szInput[ 100 ];
   zBOOL  bNetwork = FALSE;
   zBOOL  bListen = FALSE;
   zSHORT nRC;

   pthread_t NewThread;
   if ( pthread_create( &NewThread, 0, fnDummy, 0 ) != 0 )
   {
      printf( "Error starting process connection thread\n" );
      return( 0 )
   }

   printf( "Thread created = %d\n", NewThread );

   InitializeAnchorBlock( 0, 0, 0, 0 );
   //gpAnchorBlock = SysGetAnchorBlock();
   printf( "Returned from SysGetAnchorBlock\n" );

   SfActivateSysEmptyOI( &vView, "KZDBHWOB", 0, zSINGLE );
   SetNameForView( vView, zDBHANDLER_WORK_VIEW_NAME, 0, zLEVEL_SYSTEM );
   SfLockView( vView );
   CreateEntity( vView, "ROOT", zPOS_AFTER );
   DisplayObjectInstance( vView, 0, 0 );

#if 0
   if ( NetStartup( "zWinSock", "zwinsock" ) == 0 )
   {
      bNetwork = TRUE;
      if ( NetListen( "zWinSock" ) )
         bListen = TRUE;
   }
#else
   SfStartNetworks( 0 );
#endif

//?TraceLineI( "Task ID for system ==> ", SysGetProcessID( 0 ) );

   while ( TRUE )
   {
      printf( "Command ('exit' to exit) ==> " );

      if ( fgets( szInput, sizeof( szInput ), stdin ) == 0 )
         break;

      // Strip off the '\n'.
      szInput[ zstrlen( szInput ) - 1 ] = 0;

      if ( *szInput == 0 || zstrcmpi( szInput, "exit" ) == 0 )
         break;

      if ( zstrcmpi( szInput, "act" ) == 0 )
      {
         nRC = ActivateObjectInstance( &vView, "mUser", vSubtask, 0, zSINGLE );
         TraceLineI( "RC from Activate = ", nRC );
         if ( vView )
         {
            DisplayObjectInstance( vView, 0, 0 );
            DropView( vView );
         }

      } // command 'act'...

   } // while ( TRUE )...

   SfDropSubtask( vSubtask, 0 );

   if ( bListen )
      NetStopListen( "zWinSock" );

   if ( bNetwork )
      NetClose( "zWinSock" );

   return( 0 );
}
