/*
   xwdgen.c

   Generate XWD's

   Usage:
   XWDGEN -p project [-r] [-l logfile]

   project = LPLR
   -r      = triggers remove of readonly attribute
   logfile = Log file written

   Change Log
   ----------

   2000.02.24 RG  Z2000
       Close of Logfile
   2000.02.04 RG  Z2000
       Dialogs are only saved if their names start with 'TZ'
   1999.12.17 RG  Z2000
       new parameter -r: if the parameter is set
       the program removes the readonly attribute from all
       PWD - files
   1999.12.17 RG  Z2000
       We don't save dialog ACCOUNT.PWD because of a bug.
   1999.12.16 RG
       Created new.

*/

/*----------------------------------------------------------------------
** System headers, global headers
**----------------------------------------------------------------------
*/
#include <windows.h>

#define  KZSYSSVC_INCL
#include "kzoengaa.h"   /* Object Services */

#include <string.h>
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <errno.h>

#include "zeidonop.h"
#include "tz__oprs.h"
#include "tzlodopr.h"

int PASCAL WinMain(HANDLE, HANDLE, LPSTR, int);
BOOL InitApplication(HANDLE);
BOOL InitInstance(HANDLE, LPSTR, int);
void RunAppl( HWND hWnd );
long APIENTRY MainWndProc(HWND   hWnd,      /* window handle       */
                UINT   message,   /* type of message               */
                WPARAM wParam,    /* additional information        */
                LPARAM lParam);   /* additional information        */
static void ProcessXwds( HWND hWnd, zVIEW vSubtask, zCHAR *cLogFile,
                         zCHAR RemReadOnly);
static char* extract_name( char *pc, char* cTarget, size_t lMax );
static int RunSystem (char *pszOrder, HWND hWnd, FILE *fLog);

/*
** globals
*/
char szOutLine[ 256 ] = "Initializing...";

/*
** defines
*/
typedef zSHORT ( __stdcall *GENFUNC) ( zVIEW, zVIEW, zVIEW, char *);

#define CMD_RUN  1

/****************************************************************************

    WinMain(HANDLE, HANDLE, LPSTR, int)

   Windows recognizes this function by name as the initial entry point
   for the program.  This function calls the application initialization
   routine, if no other instance of the program is running, and always
   calls the instance initialization routine.  It then executes a message
   retrieval and dispatch loop that is the top-level control structure
   for the remainder of execution.  The loop is terminated when a WM_QUIT
   message is received, at which time this function exits the application
   instance by returning the value passed by PostQuitMessage().

   If this function must abort before entering the message loop, it
    returns the conventional value NULL.

****************************************************************************/

int PASCAL WinMain(HANDLE hInstance,       /* current instance  */
               HANDLE hPrevInstance,       /* current instance  */
               LPSTR  lpCmdLine,           /* command line             */
               int    nCmdShow)        /* show-window type (open/icon) */
{
    MSG msg;                     /* message              */

    if (!hPrevInstance)          /* Other instances of app running? */
       if (!InitApplication(hInstance)) /* Initialize shared things */
          return (FALSE);      /* Exits if unable to initialize     */

    /* Perform initializations that apply to a specific instance
     */

    if (!InitInstance(hInstance, lpCmdLine, nCmdShow))
        return (FALSE);

    /* Acquire and dispatch messages until a WM_QUIT message is received.
     */

    while (GetMessage(&msg,    /* message structure              */
        (HWND) NULL,   /* handle of window receiving the message */
        0,             /* lowest message to examine          */
        0))            /* highest message to examine         */
    {
       TranslateMessage(&msg);    /* Translates virtual key codes    */
       DispatchMessage(&msg);     /* Dispatches message to window    */
    }

    return (msg.wParam);       /* Returns the value from PostQuitMessage */
} // WinMain

/****************************************************************************

    FUNCTION: InitApplication(HANDLE)

    Initializes window data and registers window class

   This function is called at initialization time only if no other
   instances of the application are running.  This function performs
   initialization tasks that can be done once for any number of running
   instances.

   In this case, we initialize a window class by filling out a data
   structure of type WNDCLASS and calling the Windows RegisterClass()
   function.  Since all instances of this application use the same window
   class, we only need to do this when the first instance is initialized.


****************************************************************************/

BOOL InitApplication (HANDLE hInstance)
{
   WNDCLASS  wc;

   ZeroMemory( &wc, sizeof( WNDCLASS ) );

   /*
    * Fill in window class structure with parameters that describe the
    *  main window.
    */

    wc.style = CS_HREDRAW | CS_VREDRAW;  /* Class style(s).                   */
    wc.lpfnWndProc = MainWndProc;        /* Function to retrieve messages     */
                                           /* for windows of this class.      */
    wc.cbClsExtra = 0;                  /* No per-class extra data.           */
    wc.cbWndExtra = 0;                  /* No per-window extra data.          */
    wc.hInstance = hInstance;           /* Application that owns the class.   */
    wc.hIcon = (HICON) NULL;
    wc.hCursor = LoadCursor (NULL, IDC_ARROW);
    wc.hbrBackground = GetStockObject(WHITE_BRUSH);
    wc.lpszMenuName =  NULL;
    wc.lpszClassName = "xwdgen";      /* Name used in call to CreateWindow. */

    /* Register the window class and return success/failure code.
     */

    return (RegisterClass(&wc));

}  // InitApplication


/****************************************************************************

    InitInstance(HANDLE, lpCmdLine, int)

   Saves instance handle and creates main window

   This function is called at initialization time for every instance of
   this application.  This function performs initialization tasks that
   cannot be shared by multiple instances.

   In this case, we save the instance handle in a static variable and
   create and display the main program window.

****************************************************************************/

BOOL InitInstance(HANDLE hInstance, /* Current instance identifier.       */
              LPSTR  lpCmdLine, /* command line                       */
              int    nCmdShow)  /* Param for first ShowWindow() call. */
{
    HWND            hWnd;               /* Main window handle.                */

    /* Create a main window for this application instance.
    */
    hWnd = CreateWindow(
      "xwdgen",                    /* See RegisterClass() call.          */
      "Zeidon Generate XWDs",      /* Text for window title bar.         */
      WS_OVERLAPPEDWINDOW,         /* Window style.                      */
      CW_USEDEFAULT,               /* Default horizontal position.       */
      CW_USEDEFAULT,               /* Default vertical position.         */
      500, // CW_USEDEFAULT,       /*  width.                     */
      50, //CW_USEDEFAULT,         /*  height.                    */
      NULL,                        /* Overlapped windows have no parent. */
      NULL,                        /* Use the window class menu.         */
      hInstance,                   /* This instance owns this window.    */
      NULL                         /* Pointer not needed.                */
    );

   /* If window could not be created, return "failure"
    */
   if (!hWnd)
      return (FALSE);

   ShowWindow (hWnd, nCmdShow);
   UpdateWindow (hWnd);

   // Pass the commandline on to subsequent processing
   SetWindowLong( hWnd, GWL_USERDATA, (LONG) lpCmdLine );

   /* return "success"
    */
   return (TRUE);

} // InitInstance

/****************************************************************************

    FUNCTION: MainWndProc(HWND, UINT, WPARAM, LPARAM)

    Processes messages

****************************************************************************/
long APIENTRY MainWndProc(HWND hWnd,   /* window handle                 */
                UINT   message,   /* type of message               */
                WPARAM wParam,    /* additional information        */
                LPARAM lParam)    /* additional information        */

{
   HDC hdc;
   PAINTSTRUCT tPaint;

   switch (message)
   {
      case WM_CREATE:       /* message: command from application menu */
         // At this time the message loop is not setup.
         PostMessage( hWnd, WM_COMMAND, CMD_RUN, 0 );
         return( 0 )

      case WM_DESTROY:          /* message: window being destroyed */
         PostQuitMessage(0);
         return( 0 )

      case WM_COMMAND:
         // now the message loop is ok
         if ( wParam == CMD_RUN )
         {
            // Run the Application
            RunAppl( hWnd );
            PostQuitMessage(0);
         }
         return( 0 )

     case WM_PAINT:
         hdc = BeginPaint( hWnd, &tPaint );
         SelectObject( hdc, GetStockObject (SYSTEM_FIXED_FONT) );
         TextOut( hdc, 0, 0, szOutLine, zstrlen(szOutLine) );
         EndPaint( hWnd, &tPaint );

         return( 0 )

   }

    return DefWindowProc (hWnd, message, wParam, lParam);
} // MainWndProc

/****************************************************************************

    FUNCTION: RunAppl

    Do "everything"

****************************************************************************/

void RunAppl( HWND hWnd )
{
   zVIEW vSubtask = NULL;
   zSHORT nRC;
   char cError = '\0' ;
   char cRemReadOnly = 'N';
   char cApplication[ 32 ], cLogFile[ 256 ] ;
   char *pc;

   HANDLE hInstance = (HANDLE) GetWindowLong( hWnd, GWL_HINSTANCE );
   LPSTR  lpCmdLine = (LPSTR) GetWindowLong( hWnd, GWL_USERDATA );

   // Analyze the Command Line

   // The command line is
   // "-p Application" "-t TE-Name" "[-n]" ["Log-File"]
   // "Application" and "TE-Name" are  required

   cApplication[ 0 ] = cLogFile[ 0 ] = '\0';
   pc = lpCmdLine + strspn( lpCmdLine, " "); // Blank-Eli

   do
   {

      if ( *pc != '-' )
      {
         cError = 'E';
         break;
      }
      ++pc;
      pc = pc + strspn( pc, " "); // Blank-Eli

      switch ( *pc )
      {
         case 'p':
            // Application name
            ++pc;
            pc = extract_name( pc, cApplication, sizeof( cApplication ) );
            break;

         case 'l':
            // Log file
            ++pc;
            pc = extract_name( pc, cLogFile, sizeof( cLogFile ) );
            break;

         case 'r':
            // Network switch
            cRemReadOnly = 'Y';
            ++pc;
            pc = pc + strspn( pc, " "); // Blank-Eli
            break;


         default:
            cError = 'E';
            break;
      }
   } while ( *pc != '\0' && cError == '\0' );

   if ( cApplication[ 0 ] == '\0' || cError != '\0' )
   {
      MessageBox( hWnd,
                  "Invalid Command Line - Application required",
                  "Error Running xwdgen",
                  MB_OK | MB_ICONSTOP | MB_APPLMODAL );
      return;
   }

   RegisterZeidonApplication( &vSubtask, 0L, 0L,
                              WM_USER + 1, "~~Zeidon_Tools~", 0, 0 );
   InitializeLPLR( vSubtask, cApplication );

   ProcessXwds( hWnd, vSubtask, cLogFile, cRemReadOnly);

   UnregisterZeidonApplication( );
}

static void ProcessXwds( HWND hWnd, zVIEW vSubtask, zCHAR *cLogFile,
                         zCHAR cRemReadOnly)
{
   FILE *fLog=NULL;
   zVIEW vLPLR;
   zVIEW vDialog;
   zSHORT nRC;
   RECT rect;

   zCHAR szDialogName[32];
   zCHAR szMsg[256];
   zPCHAR pszPath;
   zCHAR szOrder[512];
   zCHAR szTargetPath[128];
   zCHAR szSourcePath[128];

   if ( cLogFile && cLogFile[0] )
      fLog = fopen( cLogFile, "w");

   if (cRemReadOnly == 'Y')
   {
      /* The program was called with parameter -r to remove the
      ** readonly attribute for all PWD-files. First we build a
      ** TMP-directory to save the original files. Then we remove
      ** the readonly attribute.
      */

      pszPath = getenv ("KZD");
      strcpy (szTargetPath, pszPath);
      strcat (szTargetPath, ":\\");
      pszPath = getenv ("KZV");
      strcat (szTargetPath, pszPath);
      strcpy (szSourcePath, szTargetPath);
      strcat (szTargetPath, "\\savexwd");
      strcat (szSourcePath, "\\a\\bin\\sys");

      strcpy (szOrder, "mkdir ");
      strcat (szOrder, szTargetPath);

      if (RunSystem (szOrder, hWnd, fLog) == -1)
      {
         if (fLog)
            fclose (fLog);
         return;
      }

      strcpy (szOrder, "xcopy ");
      strcat (szOrder, szSourcePath);
      strcat (szOrder, "\\*.pwd ");
      strcat (szOrder, szTargetPath);
      strcat (szOrder, " /K /Q");
      if (RunSystem (szOrder, hWnd, fLog) == -1)
      {
         if (fLog)
            fclose (fLog);
         return;
      }

      strcpy (szOrder, "attrib -r ");
      strcat (szOrder, szSourcePath);
      strcat (szOrder, "\\*.pwd");
      if (RunSystem (szOrder, hWnd, fLog) == -1)
      {
         if (fLog)
            fclose (fLog);
         return;
      }
   }

   RetrieveViewForMetaList( vSubtask, vSubtask, &vLPLR, zSOURCE_DIALOG_META );

   nRC = SetCursorFirstEntity( vLPLR, "W_MetaDef", "" );
   while ( nRC >= zCURSOR_SET )
   {
      GetStringFromAttribute( szDialogName,
                              vLPLR, "W_MetaDef", "Name" );

      nRC = ActivateMetaOI( &vDialog, vLPLR, zSOURCE_DIALOG_META, zSINGLE );
      if ( nRC < 0 )
      {
         zstrcpy( szMsg, "Could not Activate Dialog: " );
         zstrcat( szMsg, szDialogName );
         zstrcat( szMsg, ".\nAborting Build" );

         MessageBox( hWnd,
                  szMsg,
                  "Error Running xwdgen",
                  MB_OK | MB_ICONSTOP | MB_APPLMODAL );

         zstrcat( szMsg, "\n" );
         if ( fLog )
         {
            fputs( szMsg,fLog );
            fclose (fLog);
         }

         return ;
      }
      else
      {
         /* The dialog ACCOUNT.PWD isn't ok. Therefore we get an error message
         ** while saving the dialog and the releasebuilding system isn't running.
         ** We don't save the dialog ACCOUNT.PWD until the bug is fixed. This dialog
         ** is an example and not needed for a release.  RG, 17.12.1999
         */
         if (   strncmp (szDialogName, "TZ", 2) == 0
             || strncmp (szDialogName, "tz", 2) == 0
            )
         {
            // Send message that we are saving the XWD.
            strcpy( szMsg, "Saving Dialog: " );
            strcat( szMsg, szDialogName );
            strcpy( szOutLine, szMsg );
            GetClientRect( hWnd, &rect );
            InvalidateRect( hWnd, &rect, TRUE );
            UpdateWindow( hWnd );

            TraceLineS( "xwdgen: ", szMsg );

            if ( fLog )
            {
               zstrcat( szMsg, "\n" );
               fputs( szMsg,fLog );
            }
            else
               TraceLineS( szMsg, "" );

            SetCursorFirstEntity( vDialog, "Window", "" );
            CommitMetaOI( vDialog, zSOURCE_DIALOG_META );
            DropView( vDialog );
         }
         nRC = SetCursorNextEntity( vLPLR, "W_MetaDef", "" );
      }
   }

   if (cRemReadOnly == 'Y')
   {
      /* After saving the PWD and XWD files we have to get
      ** back the original files with readonly attribute
      */
      strcpy (szOrder, "xcopy ");
      strcat (szOrder, szTargetPath);
      strcat (szOrder, "\\*.pwd ");
      strcat (szOrder, szSourcePath);
      strcat (szOrder, " /K /Q");
      if (RunSystem (szOrder, hWnd, fLog) == -1)
      {
         if (fLog)
            fclose (fLog);
         return;
      }

      strcpy (szOrder, "rmdir /S /Q ");
      strcat (szOrder, szTargetPath);
      RunSystem (szOrder, hWnd, fLog);
   }

   if (fLog)
      fclose (fLog);
   else
      TraceLineS( "Completed XWD build", "" );

   return;

}

static char* extract_name( char *pc, char* cTarget, size_t lMax )
{
   char * pc1;
   size_t len;

   pc = pc + strspn( pc, " "); // Blank-Eli
   pc1 = strchr( pc, ' ');

   if ( pc1 )
   {
      len = pc1 - pc;
   }
   else
   {
      len = strlen( pc );
      pc1 = pc + len;
   }

   if ( len < lMax -1 )
   {
      memcpy( cTarget, pc, len );
      cTarget[ len ] = '\0';
   }
   else
   {
      // truncate if space not sufficient
      memcpy( cTarget, pc, lMax-1 );
      cTarget[ lMax-1 ] = '\0';
   }

   pc1 = pc1 + strspn( pc1, " "); // Blank-Eli
   return pc1;
}

static int RunSystem (char *pszOrder, HWND hWnd, FILE *fLog)
{
   int nRC;
   zCHAR szMsg[256];

   nRC = system (pszOrder);

   if (nRC == -1)
   {
      switch (errno)
      {
         case E2BIG:
              strcpy( szMsg, "Argument list is too big!\nOrder: " );
              strcat( szMsg, pszOrder);
              break;
         case ENOENT:
              strcpy (szMsg, "Command interpreter cannot be found !");
              break;
         case ENOEXEC:
              strcpy (szMsg, "Command-interpreter file has invalid format and is not executable");
              break;
         case ENOMEM:
              strcpy (szMsg, "Memory error: ENOMEM. See description of command 'system'");
              break;
         default:
              strcpy (szMsg, "Unknown error while executing command 'system'");
              break;
      }
      MessageBox( hWnd, szMsg,
                  "Error Running xwdgen",
                  MB_OK | MB_ICONSTOP | MB_APPLMODAL );
      zstrcat( szMsg, "\n" );
      if ( fLog )
         fputs( szMsg,fLog );
   }

   return (nRC);

}
