// MODULE NAME:  KZOELSCK -  Layer between Zeidon Core and Linux Sockets.
// *******************************************************************
// * Copyright (c) 1996 QuinSoft Corporation. All rights reserved.   *
// * Confidential and Proprietary material subject to license -      *
// * do not reproduce or disclose. This material is an unpublished   *
// * work and is considered a trade secret belonging to the          *
// * copyright holder.                                               *
// *******************************************************************
//  AUTHOR:  D.G. Christensen
//  DATE:    7/13/96
//  API:     BSD Sockets
//  ENVIRONMENT: Linux
//
#include <sys/types.h>
#include <netinet/in.h>
#include <netdb.h>
#include <errno.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/socket.h>
#include <sys/wait.h>
#include <sys/time.h>
#include <pthread.h>

#define TRACE 1

// Following define whether certain operations are to be compiled.
#define WITH_BUFFEREND     TRUE
#define WITH_SENDPACKET    FALSE

#define  KZOESYS_INCL
#include <kzoengaa.h>     // Object Services public prototypes
#include <stdio.h>

#define BUFFER_LTH               32000
#define MAX_PENDING_CONNECTS     16

// Some definitions to make cross-porting easier.
#define SOCKET             int
#define INVALID_SOCKET     -1
#define SOCKET_ERROR       -1
#define SOCKADDR_IN        struct sockaddr_in
#define closesocket        close

typedef struct SocketsStruct
{
   zCHAR      szNetworkName[ 60 ];
   SOCKET     sockListen;         // The listen socket.
   pthread_t  tidListen;          // TID for thread performing listen.
} SocketsRecord, * LPSOCKETS;

typedef struct ConnectionStruct ConnectionRecord;
typedef struct ConnectionStruct *LPCONNECTION;
struct ConnectionStruct
{
   SOCKET  sock;              // Socket to send/receive.
   zPCHAR  pszBuffer;         // Ptr to allocated buffer.
   zPCHAR  pszNextByte;       // Ptr to next unused byte in the buffer.
   zUSHORT usBufferLth;       // Total # of bytes in buffer--used and unused.
   zSHORT  nTraceLevel;       // Trace level for connection.
   zBOOL   bLastReceive;      // True if last send/receive command was receive.
   zLONG   lReceiveTickCount;
   zLONG   lSendTickCount;
   zPCHAR  pszPeerName;
};

typedef struct DataPacketStruct zDataPacket;
typedef struct DataPacketStruct *LPPACKET;
struct DataPacketStruct
{
   char  cPacketType;
   long  lPacketData;
};

// Global variables.
zCHAR szlErrorTitle[] = "kzoelsck Error";

/*

   fnShowError

   Trace the current WinSock error.

*/
void fnShowError( zPCHAR pszFuncName )
{
   int    iErr = 0;
   int    i;
   char   szMsg[ 400 ];


   sprintf( szMsg, "(kzoelsck) Socket Error in func %s: (%d) %s\n",
            pszFuncName, errno, strerror( errno ) );

   TraceLineS( szMsg, "" );

} // fnShowError

//***********************************************************************
//
//  ENTRY:       zNetStart
//
//  PURPOSE:     To initialize a network protocol.
//
//  DESCR:       This operation allocates a buffer to keep track of WinSock
//               information.
//
//  PARAMETERS:  pszNetworkName - Unique internal 'Zeidon' name of the
//                                network.
//               ppHandle       - Void pointer that has been initialized to
//                                null.  The value of this pointer is passed
//                                to all later network calls.  This allows
//                                initialization data to be passed to later
//                                calls.
//
//  RETURNS:     0           - Network started OK.
//               zCALL_ERROR - Error starting network.
//
//***********************************************************************
zSHORT OPERATION
zNetStart( zPCHAR pszNetworkName, zPPVOID  ppHandle )
{
   LPSOCKETS lpSockets;
   char      szGroup[ 63 ];
   char      szTraceLevel[ 20 ];
   zSHORT    iTraceLevel;

   sprintf( szGroup, "[%s]", pszNetworkName );
   SysReadZeidonIni( -1, szGroup, "TraceLevel", szTraceLevel );
   iTraceLevel = (zSHORT) zatol( szTraceLevel );

   if ( iTraceLevel > 0 )
   {
      TraceLineS( "Starting network ", pszNetworkName );
      TraceLineI( "Initial network TraceLevel = ", iTraceLevel );
   }

   *ppHandle = SysMalloc( sizeof( SocketsRecord ) );
   if ( *ppHandle == 0 )
   {
      char szTemp[80];

      sprintf( szTemp, "Out of memory starting network '%s'", pszNetworkName );
      SysMessageBox( szlErrorTitle, szTemp, 1 );
      return( zCALL_ERROR )
   }

   lpSockets = (LPSOCKETS) *ppHandle;
   zstrcpy( lpSockets->szNetworkName, pszNetworkName );
   lpSockets->tidListen    = 0;
   lpSockets->sockListen   = INVALID_SOCKET;

   return( 0 )

} // zNetStart

//***********************************************************************
//
//  ENTRY:       zNetClose
//
//  PURPOSE:     To shut down everything needed for winsock networking.
//
//  DESCRIPTION: This call closes the Listen socket and then calls WSACleanup
//               to close winsock stuff.
//
//  PARAMETERS:  ppHandle       - Network pointer to buffer created in
//                                zNetStartup.
//
//  RETURNS:     0           - Network closed successfully.
//               zCALL_ERROR - Error.
//
//***********************************************************************
zSHORT OPERATION
zNetClose( zPPVOID  ppHandle )
{
   LPSOCKETS lpSockets = (LPSOCKETS) *ppHandle;

   if ( NetGetTraceLevel( "kzoelsck" ) > 0 )
   {
      TraceLineS( "(kzoelsck) Shutting down network kzoelsck", "" );
   }

   // After the following call, lpSockets is no longer valid.
   SysFree( lpSockets );

   *ppHandle = 0;

   return( 0 )

} // zNetClose

//***********************************************************************
//
//  ENTRY:       zNetSend
//
//  PURPOSE:     To send a block of data over the network.
//
//  DESCRIPTION: Zeidon Core call this operation when it needs to send data
//               over the network.
//
//  PARAMETERS:  ppHandle       - Network pointer to buffer created in
//                                zNetStartup.
//               ppvConnPtr     - Connection pointer to buffer created in
//                                zNetOpenConnection.
//               pszBuffer      - Pointer to send buffer.  If pszBuffer is 0,
//                                then flush (send) any local buffer.
//               uLth           - Length of buffer.  If uLth is 0, then
//                                pszBuffer points to a null-terminated str.
//               cDataType      - Specifies whether data is a string
//                                (zTYPE_STRING) or a blob (zTYPE_BLOB).
//                                NOTE: Ignored for WinSock implementation.
//
//  RETURNS:     0           - Data sent OK.
//               zCALL_ERROR - Error.
//
//***********************************************************************
zSHORT OPERATION
zNetSend( zPPVOID  ppHandle,
          zPPVOID  ppvConnPtr,
          zPCHAR   pszBuffer,
          zUSHORT  uLth,
          zCHAR    cDataType )
{
   LPSOCKETS      lpSockets = (LPSOCKETS) *ppHandle;
   LPCONNECTION   lpConn = (LPCONNECTION) *ppvConnPtr;
   zLONG          lTickCount = SysGetTickCount();
   int            iBytesSent;
   int            iBytesToSend;

   if ( lpConn->nTraceLevel > 1 )
   {
      TraceLineI( "(kzoelsck) zNetSend -- uLth = ", uLth );
   }

   // If the last command was a receive (as opposed to a send) then we need
   // to reset the buffer for sending.
   if ( lpConn->bLastReceive )
   {
      if ( lpConn->nTraceLevel > 1 )
      {
         TraceLineS( "(kzoelsck) Resetting buffer for sending", "" );
      }

      lpConn->bLastReceive = FALSE;
      lpConn->pszNextByte  = lpConn->pszBuffer;
      lpConn->usBufferLth  = 0;
   }

   // Check to see if we need to flush the current buffer.
   if ( ( pszBuffer == 0 && lpConn->usBufferLth > 0 ) ||
        ( lpConn->usBufferLth + uLth > BUFFER_LTH ) )
   {
      if ( lpConn->nTraceLevel > 1 )
      {
         TraceLineI( "(kzoelsck) Sending buffer of length ",
                     lpConn->usBufferLth );
         TraceBuffer( "(kzoelsck)",  lpConn->pszBuffer, lpConn->usBufferLth );
      }

      iBytesToSend = lpConn->usBufferLth;

      do
      {
         iBytesSent = send( lpConn->sock, lpConn->pszBuffer, iBytesToSend, 0 );
         if ( iBytesSent == SOCKET_ERROR )
         {
            TraceLineS( "(kzoelsck) send -- Error!", "" );
            fnShowError( "send" );
            return( zCALL_ERROR )
         }

         if ( lpConn->nTraceLevel > 1 )
         {
            TraceLineI( "(kzoelsck) Bytes sent for send ", iBytesSent );
         }

         iBytesToSend -= iBytesSent;

      } while ( iBytesToSend > 0 );

      lpConn->usBufferLth = 0;
   }

   // If pszBuffer is non-zero, then we need to add the buffer data to the
   // send buffer.
   if ( pszBuffer )
   {
      if ( lpConn->nTraceLevel > 1 )
      {
         TraceLineS( "(kzoelsck) Adding bytes to send buffer", "" );
      }

      zmemcpy( &lpConn->pszBuffer[ lpConn->usBufferLth ], pszBuffer, uLth );
      lpConn->usBufferLth += uLth;
   }

   lpConn->lSendTickCount += SysGetTickCount() - lTickCount;

   return( 0 )

} // zNetSend

//***********************************************************************
//
//  ENTRY:       zNetReceive
//
//  PURPOSE:     To retrieve a block of data from the network.
//
//  DESCRIPTION: Zeidon Core call this operation when it is expecting data
//               from the network.
//
//               Core expects zNetReceive to create a buffer to hold the data
//               and set ppszReturnBuffer to point to the buffer.  The created
//               buffer need be valid only until the next zNet... call--
//               zNetReceive does not have to worry about keeping track of
//               data that has previously been retrieved.
//
//               uLth specifies the number of bytes Core is expecting.  If
//               there is not enough data from the network to satisfy Core,
//               then zNetReceive must return zCALL_ERROR.
//
//  PARAMETERS:  ppHandle       - Network pointer to buffer created in
//                                zNetStartup.
//               ppvConnPtr     - Connection pointer to buffer created in
//                                zNetOpenConnection.
//               ppszReturnBuff - Pointer to a pointer that will point to the
//                                retrieved data.
//               uLth           - Number of bytes Core is expecting to receive.
//               cDataType      - Specifies whether data is a string
//                                (zTYPE_STRING) or a blob (zTYPE_BLOB).
//                                NOTE: Ignored for WinSock implementation.
//
//  RETURNS:     0           - Data received OK.
//               zCALL_ERROR - Error.
//
//***********************************************************************
zSHORT OPERATION
zNetReceive( zPPVOID  ppHandle,
             zPPVOID  ppvConnPtr,
             zPPCHAR  ppszReturnBuffer,
             zULONG   uLth,
             zCHAR    cDataType )
{
   LPSOCKETS      lpSockets = (LPSOCKETS) *ppHandle;
   LPCONNECTION   lpConn = (LPCONNECTION) *ppvConnPtr;
   zLONG          lTickCount = SysGetTickCount();

   if ( lpConn->nTraceLevel > 1 )
   {
      TraceLineI( "(kzoelsck) zNetReceive -- uLth = ", uLth );
   }

   // Check the flag to see if the last send/receive command was a send.  If
   // the last command was a send, then the send buffer might need to be
   // flushed.
   if ( !lpConn->bLastReceive )
   {
      if ( lpConn->nTraceLevel > 1 )
      {
         TraceLineS( "(kzoelsck) Flushing send buffer", "" );
      }

      if ( zNetSend( ppHandle, ppvConnPtr, 0, 0, 0 ) != 0 )
         return( zCALL_ERROR )

      lpConn->bLastReceive = TRUE;

      if ( lpConn->nTraceLevel > 1 )
      {
         TraceLineS( "(kzoelsck) Done flushing send buffer", "" );
      }
   }

   // If the buffer lth is 0, then we need to fill it up with network data.
   if ( lpConn->usBufferLth == 0 )
   {
      int iBytes;

      if ( lpConn->nTraceLevel > 0 )
      {
         TraceLineS( "(kzoelsck) Filling empty receive buffer", "" );
      }

      iBytes = recv( lpConn->sock, lpConn->pszBuffer, BUFFER_LTH, 0 );
      if ( iBytes == SOCKET_ERROR || iBytes == 0 )
      {
         TraceLineS( "(kzoelsck) Error filling receive buffer", "" );
         fnShowError( "recv" );
         return( zCALL_ERROR )
      }

      if ( lpConn->nTraceLevel > 0 )
      {
         TraceLineI( "(kzoelsck) Bytes read = ", iBytes );

         if ( lpConn->nTraceLevel > 1 )
         {
            TraceLineS( "(kzoelsck) Tracing buffer...", "" );
            TraceBuffer( "(kzoelsck)",  lpConn->pszBuffer, iBytes );
         }
      }

      lpConn->pszNextByte = lpConn->pszBuffer;
      lpConn->usBufferLth = iBytes;
   }

   // It is possible that the incoming line didn't fit into the current buffer
   // because the buffer contained multiple lines of data.  This means that
   // we need to consolidate the data from buffer with data that still hasn't
   // been retrieved.
   if ( uLth > lpConn->usBufferLth )
   {
      int iBytes;

      if ( lpConn->nTraceLevel > 0 )
      {
         TraceLineS( "(kzoelsck) Trying to consolidate receive buffer", "" );
      }

      // Copy the unused data to the beginning of the buffer.  This should
      // free up room at the end of the buffer to retrieve data off the network.
      zmemcpy( lpConn->pszBuffer, lpConn->pszNextByte, lpConn->usBufferLth );

      // Now retrieve data from the network, appending it to the end of the
      // data in the buffer.
      iBytes = recv( lpConn->sock, &lpConn->pszBuffer[ lpConn->usBufferLth ],
                     BUFFER_LTH - lpConn->usBufferLth, 0 );
      if ( iBytes == SOCKET_ERROR || iBytes == 0 )
      {
         fnShowError( "recv" );
         TraceLineS( "(kzoelsck) Error trying to extend buffer", "" );
         return( zCALL_ERROR )
      }

      if ( lpConn->nTraceLevel > 0 )
      {
         TraceLineI( "(kzoelsck) Bytes read = ", iBytes );

         if ( lpConn->nTraceLevel > 1 )
         {
            TraceLineS( "(kzoelsck) Tracing buffer...", "" );
            TraceBuffer( "(kzoelsck)",
                         &lpConn->pszBuffer[ lpConn->usBufferLth ], iBytes );
         }
      }

      lpConn->pszNextByte  = lpConn->pszBuffer;
      lpConn->usBufferLth += iBytes;

      // Check again to see if the buffer contains all the data.  If not,
      // set error and get out.
      if ( uLth > lpConn->usBufferLth )
      {
         TraceLineS( "(kzoelsck) Error -- buffer can't hold data", "" );
         return( zCALL_ERROR )
      }
   }

   *ppszReturnBuffer = lpConn->pszNextByte;
   lpConn->pszNextByte += uLth;
   lpConn->usBufferLth -= uLth;

   lpConn->lReceiveTickCount += SysGetTickCount() - lTickCount;

   return( 0 )

} // zNetReceive


void *
fnProcessConnection( void *pv )
{
   SOCKET           NewSocket = *(SOCKET *) pv;
   ConnectionRecord cr;
   zSHORT           nTraceLevel = NetGetTraceLevel( "kzoelsck" );

   if ( nTraceLevel > 1 )
   {
      TraceLineI( "(kzoelsck) Conn accepted--child started.  PID = ",
                  (zLONG) getpid() );
   }

   // Child process.  Call core function to handle the connection.
   zmemset( &cr, 0, sizeof( ConnectionRecord ) );

   // Set up a buffer to receive network traffic.
   cr.pszBuffer = SysMalloc( BUFFER_LTH );
   if ( cr.pszBuffer == 0 )
   {
      SysMessageBox( szlErrorTitle, "Out of memory", 1 );
      return;
   }

   // Init connection info.
   cr.sock        = NewSocket;
   cr.pszNextByte = cr.pszBuffer;
   cr.usBufferLth = 0;
   cr.nTraceLevel = nTraceLevel;

   if ( nTraceLevel > 0 )
      TraceLineS( "(kzoelsck) A message has been received", "" );

   NetProcessMessage( "kzoelsck", (zPVOID) &cr );

   SysFree( cr.pszBuffer );

   closesocket( NewSocket );

   if ( nTraceLevel > 1 )
      TraceLineS( "(kzoelsck) Closing connection.", "" );

   return;
}

void *
fnListenThread( void *pv )
{
   LPSOCKETS   lpSockets = (LPSOCKETS) pv;
   SOCKET      sock;
   SOCKADDR_IN LocalSock;  /* Local socket - internet style */
   char        szPort[ 20 ];
   char        szHostName[ 200 ];
   zSHORT      nTraceLevel = NetGetTraceLevel( "kzoelsck" );

   sock = socket( AF_INET, SOCK_STREAM, 0 );
   if ( sock == INVALID_SOCKET )
   {
      fnShowError( "socket" );
      SysMessageBox( szlErrorTitle, "socket() failed", 1 );
      closesocket( sock );
      return;
   }

   SysReadZeidonIni( -1, "[kzoelsck]", "ListenPort", szPort );

   // Create the local socket information.
   LocalSock.sin_family = AF_INET;
   gethostname( szHostName, sizeof( szHostName ) );
   LocalSock.sin_addr.s_addr = INADDR_ANY;
   LocalSock.sin_port = htons( (short) zatol( szPort ) );

   // Try to bind the socket.
   if ( bind( sock, (struct sockaddr *) &LocalSock,
              sizeof( LocalSock ) ) < 0 )
   {
      fnShowError( "bind" );
      SysMessageBox( szlErrorTitle, "bind(sock) failed", 1 );
      closesocket( sock );
      return;
   }

   // Indicate that we want to listen on the socket.
   if ( listen( sock, MAX_PENDING_CONNECTS ) < 0 )
   {
      fnShowError( "listen" );
      SysMessageBox( szlErrorTitle, "listen(sock) failed", 1 );
      closesocket( sock );
      return;
   }

   lpSockets->sockListen = sock;

   if ( nTraceLevel > 1 )
      TraceLineS( "(kzoelsck) Listen performed--starting accept loop.", "" );

   // Now loop indefinitely, accepting any connections from a client.
   while ( TRUE )
   {
      SOCKET         NewSocket;
      SOCKADDR_IN    sin;
      int            iLth;
      fd_set         ready;
      struct timeval sTimeVal;
      pthread_t      NewThread;

      // Call select() to see if there are any connections waiting.
      FD_ZERO( &ready );
      FD_SET( sock, &ready );
      sTimeVal.tv_sec  = 0;
      sTimeVal.tv_usec = 0;
      TraceLineS( "(kzoelsck) Waiting...", "" );
      //if ( select( sock + 1, &ready, 0, 0, &sTimeVal ) < 0 )
      if ( select( sock + 1, &ready, 0, 0, NULL ) < 0 )
      {
         fnShowError( "select" );
         break;
      }

      // If socket doesn't have any connections waiting, then continue loop.
      if ( !FD_ISSET( sock, &ready ) )
         continue;

      if ( nTraceLevel > 1 )
         TraceLineS( "(kzoelsck) Conn requested--attempting accept.", "" );

      NewSocket = accept( sock, (struct sockaddr *) &sin, &iLth );
      if ( NewSocket < 0 )
      {
         // We get here for one of two reasons: an error accepting a connection
         // or the listen has been canceled.
         fnShowError( "accept" );
         SysMessageBox( szlErrorTitle, "accept(sock) failed", 1 );
         closesocket( sock );
         lpSockets->sockListen = INVALID_SOCKET;
         break;
      }

      // We have a valid connection.  Create a new thread to
      // handle the new connection and let the current thread go on it's
      // merry way.
      if ( pthread_create( &NewThread, 0, fnProcessConnection,
                           &NewSocket ) != 0 )
      {
         TraceLineS( "Error starting process connection thread", "" );
         return;
      }

      // Parent process.  It seems we need to close the socket created by the
      // accept so that only the child process has it open.
      //closesocket( NewSocket );
   }
}

//***********************************************************************
//
//  ENTRY:       zNetListen
//
//  PURPOSE:     Sets up some scheme to listen for messages from other PC's.
//
//  DESCRIPTION: This call creates a socket to listen for connections from
//               other nodes on the network.
//
//  PARAMETERS:  ppHandle       - Network pointer to buffer created in
//                                zNetStartup.
//
//  RETURNS:     0           - Listen created successfully.
//               zCALL_ERROR - Error.
//
//***********************************************************************
zSHORT OPERATION
zNetListen( zPPVOID  ppHandle )
{
   LPSOCKETS   lpSockets = (LPSOCKETS) *ppHandle;
   zSHORT      nTraceLevel = NetGetTraceLevel( "kzoelsck" );
   pthread_t   NewThread;

   if ( nTraceLevel > 1 )
   {
      TraceLineS( "(kzoelsck) Starting listen", "" );
   }

   // Create a thread to perform the listen.  This keeps the current
   // thread from being blocked.
   if ( pthread_create( &NewThread, 0, fnListenThread, lpSockets ) != 0 )
   {
      TraceLineS( "Error starting Listen thread", "" );
      return( zCALL_ERROR )
   }

   lpSockets->tidListen = NewThread;

   return( 0 )

} // zNetListen

//***********************************************************************
//
//  ENTRY:       zNetStopListen
//
//  PURPOSE:     To close a socket set up to listen.
//
//  DESCRIPTION: This call closes the socket set up to listen for connections
//               from other nodes on the network.
//
//  PARAMETERS:  ppHandle       - Network pointer to buffer created in
//                                zNetStartup.
//
//  RETURNS:     0           - Listen closed successfully.
//               zCALL_ERROR - Error.
//
//***********************************************************************
zSHORT OPERATION
zNetStopListen( zPPVOID  ppHandle )
{
   LPSOCKETS   lpSockets = (LPSOCKETS) *ppHandle;
   zSHORT      nTraceLevel = NetGetTraceLevel( "kzoelsck" );
   int         iStatus;

   if ( nTraceLevel > 1 )
   {
      TraceLineS( "(kzoelsck) Stopping listen", "" );
   }

   if ( lpSockets->sockListen == INVALID_SOCKET )
   {
      TraceLineS( "(kzoelsck) No Listen socket!", "" );
      return( 0 ) // Return 0 because nothing was done.
   }

   closesocket( lpSockets->sockListen );

   if ( nTraceLevel > 1 )
   {
      TraceLineS( "(kzoelsck) Listen stopped", "" );
   }

   return( 0 )

} // zStopListen

u_short g_nApplPort = -1;

//***********************************************************************
//
//  ENTRY:       zNetOpenConnection
//
//  PURPOSE:     Called from Core to open a connection to the server node.
//               It is assumed that Core will then send/receive data.
//
//  DESCRIPTION: This call opens a socket to the server.
//
//               NOTE: Until further notice, the server address has been
//               hardcoded.
//
//  PARAMETERS:  ppHandle       - Network pointer to buffer created in
//                                zNetStartup.
//               ppvConnPtr     - Void pointer that has been initialized to
//                                null.  The value of this pointer is passed
//                                to later receive and send calls.  This
//                                allows connection data to be passed to these
//                                calls.
//
//  RETURNS:     0           - Connection opened successfully.
//               zCALL_ERROR - Error.
//
//***********************************************************************
zSHORT OPERATION
zNetOpenConnection( zPPVOID  ppHandle,
                    zPPVOID  ppvConnPtr,
                    zPCHAR   pszAddress,
                    zVIEW    vDummy )
{
   LPSOCKETS       lpSockets = (LPSOCKETS) *ppHandle;
   LPCONNECTION    lpConn;
   SOCKET          sock = INVALID_SOCKET;
   SOCKADDR_IN     DestSocket;
   struct hostent *pHost;
   u_short         nPort;
   zPCHAR          psz;
   zCHAR           szServerAddress[ 256 ];
   zLONG           hMem;
   zSHORT          nRC = 0;

   // Set up a buffer to receive network traffic.
   lpConn = SysMalloc( sizeof( ConnectionRecord ) );
   if ( lpConn == 0 )
   {
      SysMessageBox( szlErrorTitle, "Out of memory", 1 );
      return( zCALL_ERROR )
   }

   // Since we may manipulate the server address let's copy it to a temp var.
   zstrcpy( szServerAddress, pszAddress );

   // Check to see if the port number is part of the address.  If it is, then
   // copy it to szPort.
   psz = zstrchr( szServerAddress, ':' );
   if ( psz )
   {
      // Change ':' to null-term.
      *psz++ = 0;

      // Convert port number.
      nPort = (u_short) zatol( psz );
   }
   else
   if ( g_nApplPort != -1 )
   {
      nPort = g_nApplPort;
   }
   else
   {
      zCHAR szPort[ 20 ];

      // The port value wasn't specified so get the default port from the Ini file.
      SysReadZeidonIni( -1, "[zWinSock]", "ApplPort", szPort );
      nPort = (u_short) zatol( szPort );
      g_nApplPort = nPort;
   }

   // Set up a buffer to receive network traffic.
   lpConn->pszBuffer = SysMalloc( BUFFER_LTH );
   if ( lpConn->pszBuffer == 0 )
   {
      SysMessageBox( szlErrorTitle, "Out of memory", 1 );
      nRC = zCALL_ERROR;
      goto EndOfFunction;
   }

   sock = socket( AF_INET, SOCK_STREAM, 0 );
   if ( sock == INVALID_SOCKET )
   {
      fnShowError( "socket" );
      SysMessageBox( szlErrorTitle, "socket() failed", 1 );
      nRC = zCALL_ERROR;
      goto EndOfFunction;
   }

   pHost = gethostbyname( szServerAddress );
   if ( pHost == NULL )
   {
      fnShowError( "gethostbyname" );
      SysMessageBox( szlErrorTitle, "gethostbyname() failed", 1 );
      nRC = zCALL_ERROR;
      goto EndOfFunction;
   }

   zmemcpy( &DestSocket.sin_addr, pHost->h_addr, pHost->h_length );
   DestSocket.sin_port   = htons( 2000 );      // Convert to network ordering
   DestSocket.sin_family = AF_INET;

   if ( connect( sock, (struct sockaddr *) &DestSocket,
                 sizeof( DestSocket ) ) < 0 )
   {
      fnShowError( "connect" );
      SysMessageBox( szlErrorTitle, "connect() failed", 1 );
      nRC = zCALL_ERROR;
      goto EndOfFunction;
   }

   TraceLineS( "(kzoelsck) Connection to server made!", "" );

   // Init connection info.
   lpConn->sock         = sock;
   lpConn->pszNextByte  = lpConn->pszBuffer;
   lpConn->usBufferLth  = 0;
   lpConn->nTraceLevel  = NetGetTraceLevel( "kzoelsck" );
   lpConn->bLastReceive = FALSE;
   lpConn->lSendTickCount     = 0;
   lpConn->lReceiveTickCount  = 0;

   // Set up a buffer to hold the peer name.
   lpConn->pszPeerName = (zPCHAR) malloc( zstrlen( szServerAddress ) + 1 );
   if ( lpConn->pszPeerName == 0 )
   {
      SysMessageBox( szlErrorTitle, "Out of memory", 1 );
      nRC = zCALL_ERROR;
      goto EndOfFunction;
   }

EndOfFunction:
   if ( nRC == zCALL_ERROR )
   {
      // We're ending with an error, so clean up.
      if ( lpConn->pszBuffer )
         SysFree( lpConn->pszBuffer );
      if ( lpConn->pszPeerName )
         free( lpConn->pszPeerName );
      SysFree( lpConn );
      if ( sock != INVALID_SOCKET )
         closesocket( sock );
   }
   else
      *ppvConnPtr = lpConn;

   return nRC;

} // zNetOpenConnection

//***********************************************************************
//
//  ENTRY:       zNetCloseConnection
//
//  PURPOSE:     To close a connection to the server.
//
//  DESCRIPTION: This call closes the socket that was opened by
//               zNetOpenConnection.
//
//  PARAMETERS:  ppHandle       - Network pointer to buffer created in
//                                zNetStartup.
//               ppvConnPtr     - Connection pointer to buffer created in
//                                zNetOpenConnection.
//
//  RETURNS:     0           - Connection closed successfully.
//               zCALL_ERROR - Error.
//
//***********************************************************************
zSHORT OPERATION
zNetCloseConnection( zPPVOID  ppHandle,
                     zPPVOID  ppvConnPtr )
{
   LPSOCKETS      lpSockets = (LPSOCKETS) *ppHandle;
   LPCONNECTION   lpConn = (LPCONNECTION) *ppvConnPtr;

   // Check the flag to see if the last send/receive command was a send.  If
   // the last command was a send, then the send buffer might need to be
   // flushed.
   if ( !lpConn->bLastReceive )
   {
      zNetSend( ppHandle, ppvConnPtr, 0, 0, 0 );
   }

   if ( closesocket( lpConn->sock ) == SOCKET_ERROR )
      fnShowError( "closesocket" );

   {
      char  sz[ 30 ];

      sprintf( sz, "%lf seconds", (double) lpConn->lSendTickCount / 1000 );
      TraceLineS( "(kzoelsck) Total send time for connection = ", sz );

      sprintf( sz, "%lf seconds", (double) lpConn->lReceiveTickCount / 1000 );
      TraceLineS( "(kzoelsck) Total receive time for connection = ", sz );

      sprintf( sz, "%lf seconds",
               (double) ( lpConn->lSendTickCount + lpConn->lReceiveTickCount ) / 1000 );
      TraceLineS( "(kzoelsck) Total time for connection = ", sz );
   }

   if ( lpConn->pszPeerName )
      free( lpConn->pszPeerName );
   SysFree( lpConn->pszBuffer );
   SysFree( lpConn );
   *ppvConnPtr = 0;

   return( 0 )

} // zNetCloseConnection

zSHORT OPERATION
zNetGetHostAddress( zPPVOID ppHandle,
                    zPPVOID ppvConnPtr,
                    zCHAR   cHost,
                    zPCHAR  pszHostAddress )
{
   LPSOCKETS    lpSockets = (LPSOCKETS) *ppHandle;
   zSHORT       nTraceLevel = NetGetTraceLevel( "zWinSock" );

   if ( nTraceLevel > 1 )
      TraceLineS( "(zwinsock) Getting local host address.", "" );

   if ( ppvConnPtr && cHost == 'R' )
   {
      LPCONNECTION lpConn = (LPCONNECTION) *ppvConnPtr;

      // Check to see if we've already retrieved the name of the client.
      if ( lpConn->pszPeerName == 0 )
      {
         int                iLen;
         struct hostent *   pHost;
         struct sockaddr_in stRmtAddr;

         // Get the host address of the client.
         iLen = sizeof( struct sockaddr );
         if ( getpeername( lpConn->sock, (struct sockaddr *) &stRmtAddr,
                           &iLen ) == SOCKET_ERROR )
         {
            fnShowError( "getpeername" );
            SysMessageBox( szlErrorTitle, "getpeername() failed", 1 );
            return( zCALL_ERROR )
         }

         pHost = gethostbyaddr( (const char *) &stRmtAddr.sin_addr,
                                4, AF_INET );
         if ( pHost == 0 )
         {
            fnShowError( "gethostbyaddr" );
            SysMessageBox( szlErrorTitle, "gethostbyaddr() failed", 1 );
            return( zCALL_ERROR )
         }

         // Set up peer name.
         lpConn->pszPeerName = (zPCHAR) malloc( zstrlen( pHost->h_name ) + 1 );
         if ( lpConn->pszPeerName == 0 )
         {
            SysMessageBox( szlErrorTitle, "Out of memory", 1 );
            return( zCALL_ERROR )
         }

         zstrcpy( lpConn->pszPeerName, pHost->h_name );
      }

      zstrcpy( pszHostAddress, lpConn->pszPeerName );
   }
   else
   {
      gethostname( pszHostAddress, 300 );

      // For non-connections we get the address from the ZEIDON.INI
      //SysReadZeidonIni( -1, "[Zeidon]", "HostAddress", pszHostAddress );
   }

   if ( nTraceLevel > 1 )
      TraceLineS( "(zwinsock) Local host address = ", pszHostAddress );

   return( 0 )
}

#if WITH_BUFFEREND

zSHORT OPERATION
zNetBufferEnd( zPPVOID  ppHandle,
               zPPVOID  ppvConnPtr )
{
   return zNetSend( ppHandle, ppvConnPtr, 0, 0, zTYPE_BLOB );
}

#endif // WITH_BUFFEREND

#if WITH_SENDPACKET

zSHORT OPERATION
zNetSendPacket( zPPVOID  ppHandle,
                zPPVOID  ppvConnPtr,
                zCHAR    cPacketType,
                zLONG    lPacketData )
{
   zDataPacket Packet;

   Packet.cPacketType = cPacketType;
   Packet.lPacketData = htonl( lPacketData );

   return zNetSend( ppHandle, ppvConnPtr, (zPCHAR) &Packet, sizeof( Packet ),
                    zTYPE_BLOB );
}

zSHORT OPERATION
zNetReceivePacket( zPPVOID  ppHandle,
                   zPPVOID  ppvConnPtr,
                   zPCHAR   pcPacketType,
                   zPLONG   plPacketData )
{
   LPPACKET lpPacket;

   if ( zNetReceive( ppHandle, ppvConnPtr, (zPPCHAR) &lpPacket,
                     sizeof( zDataPacket ), zTYPE_BLOB ) != 0 )
      return( zCALL_ERROR )

   *pcPacketType = lpPacket->cPacketType;
   *plPacketData = ntohl( lpPacket->lPacketData );

   return( 0 )
}

#endif // WITH_SENDPACKET
