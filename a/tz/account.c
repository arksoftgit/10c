#define KZSYSSVC_INCL
#include "kzoengaa.h"
#include "tzlodopr.h"
#include "tz__oprs.h"
#include "tzctlopr.h"
#include "tzvmlip.h"
#include <string.h>

#ifdef __cplusplus
extern "C"
{
#endif

#include "Zeidonop.H"

zOPER_EXPORT zSHORT OPERATION
ActivateAccountOI( zVIEW  vSubtask );
zOPER_EXPORT zSHORT OPERATION
SaveInstance( zVIEW  vSubtask );
zOPER_EXPORT zSHORT OPERATION
DeleteObjectEntity( zVIEW  vSubtask );
zOPER_EXPORT zSHORT OPERATION
DeleteInstance( zVIEW  vSubtask );
zOPER_EXPORT zSHORT OPERATION
Cleanup( zVIEW   vSubtask );
zOPER_EXPORT zSHORT OPERATION
Setup( zVIEW   vSubtask );
zOPER_EXPORT zSHORT OPERATION
ResetText( zVIEW   vSubtask );
zOPER_EXPORT zSHORT OPERATION
Refresh( zVIEW   vSubtask );

#define zZEIDON_DRIVER_MSG                                   0x4000
#define zZEIDON_COMMUNICATE_OE              (zZEIDON_DRIVER_MSG + 1)

#define IDB_TEST_IMAGES                 398
#define IDB_TEST_SMALL_IMAGES           399

#define NM_OB_ITEMCLICK       1
#define NM_OB_ONLABELENDEDIT  2
#define NM_OB_ONGROUPENDEDIT  3
#define NM_OB_DRAGITEM        4
#define NM_FOLDERCHANGE       5

typedef zLONG (POPERATION zFARPROC_OLB_EVENT)
                                      ( zVIEW, zCPCHAR, WPARAM, LPARAM );
zOPER_EXPORT zLONG OPERATION
ProcessOLB_Events( zVIEW vSubtask, zCPCHAR cpcCtrlTag,
                   WPARAM wMsg, LPARAM lParam )
{
   if ( wMsg == NM_OB_ITEMCLICK )
      TraceLineI( "ProcessOLB_Events ItemClick: ", lParam );
   else
   if ( wMsg == NM_FOLDERCHANGE )
      TraceLineI( "ProcessOLB_Events FolderChange: ", lParam );

   return( 0 );
}

zSHORT
CheckMutexLock( zVIEW vSubtask, zVIEW v )
{
   static zSHORT nRecurse = 0;

   nRecurse++;
   TraceLineI( "ActivateAccountOI ================= Recurse = ", nRecurse );
   SysMutexLock( v, "Account", 0, 0 );
   TraceLineI( "ActivateAccountOI ================= Mutex Locked", nRecurse );

   SysWait( 100 );

   if ( nRecurse < 100 )
   {
      zVIEW  vSubtaskNew;
      zLONG  hInst = GetApplicationInstance( vSubtask );
      zULONG hWnd;
      zULONG hCtrl;

      GetWindowHandle( &hWnd, &hCtrl, vSubtask, (zCPCHAR) -1 );  // special to get CommWnd

      if ( RegisterZeidonApplication( &vSubtaskNew, (zLONG) hInst,
                                      (zLONG) hCtrl, // m_hWndCommOE,
                                      zZEIDON_COMMUNICATE_OE,
                                      "\\\\Zeidon_Tools\\Account", 0, 0 ) == 0 )
      {
         CheckMutexLock( vSubtask, vSubtaskNew );
         UnregisterZeidonApplication( vSubtaskNew );
      }
   }

   SysWait( 100 );

   TraceLineI( "ActivateAccountOI ================= Mutex UnLock", nRecurse );
   SysMutexUnlock( v, "Account", 0 );
   TraceLineI( "ActivateAccountOI ================= Mutex UnLocked", nRecurse );
   nRecurse--;

   return( nRecurse );
}

zOPER_EXPORT zSHORT OPERATION
ActivateAccountOI( zVIEW  vSubtask )
{
   zVIEW     vAccount;
   zVIEW     vTZPEAXWO;
   zCHAR     szMessage[ 256 ];
// zCHAR     szDlgName[ 34 ];
// zCHAR     szWndName[ 34 ];
// zCHAR     szCtrlName[ 34 ];
// zPCHAR    pchBuffer;
// zLONG     hMem[ 100 ];
   zSHORT    nRC;
   zULONG    ulLth;

   zstrcpy( szMessage, "Replace all occurrences of to with for to be good to" );
   ulLth = zSearchAndReplaceWord( szMessage, sizeof( szMessage ),
                                  "to", "for", "" );
   TraceLineS( "New message: ", szMessage );
#if 0
#ifdef __cplusplus
   ZDecimal  dDec1;
   ZDecimal  dDec2;
   ZDecimal  dDec3;

   dDec1 = 1.23456;
   dDec2 = (zLONG) 2;

   TraceLineS( "(DGC) ========= s1 = ", (zPCHAR) dDec1 );
   TraceLineS( "(DGC) ========= s2 = ", (zPCHAR) dDec2 );

   dDec3 = dDec1 + dDec2;

   TraceLineS( "(DGC) ========= s1 = ", (zPCHAR) dDec1 );
   TraceLineS( "(DGC) ========= s2 = ", (zPCHAR) dDec2 );
   TraceLineS( "(DGC) ========= s3 = ", (zPCHAR) dDec3 );
#endif

// HICON hIcon = 0;
// hIcon = LoadIcon( hInstance, "ACCOUNT" );
   nRC = GetDlgWndCtrlNames( vSubtask, szDlgName, szWndName, szCtrlName );

   TraceLineS( "GetNames Dlg ", szDlgName );
   TraceLineS( "         Wnd ", szWndName );
   TraceLineS( "        Ctrl ", szCtrlName );
#endif

// hInstance = GetApplicationInstance( vSubtask );
// for ( k = 0; k < 10000; k++ )
// {
//    nRC = ActivateOI_FromFile( &vAccount, "ACCOUNT", vSubtask,
//                               "CARLSON.POR", 0 );
//    DropView( vAccount );
// }

#if 0
   nRC = ActivateOI_FromFile( &vAccount, "TZWDLGSO", vSubtask,
                              "c:\\10e\\a\\bin\\sys\\tzpntrad.pwd", zSINGLE );
   nRC = SetNameForView( vAccount, "PainterD", vSubtask, zLEVEL_TASK );
   nRC = ActivateOI_FromFile( &vAccount, "TZWDLGSO", vSubtask,
                              "l:\\10e\\a\\bin\\sys\\tzpntrad.pwd", zSINGLE );
   nRC = SetNameForView( vAccount, "PainterL", vSubtask, zLEVEL_TASK );

// nRC = ActivateOI_FromFile( &vAccount, "TZPESRCO", vSubtask,
//                            "c:\\10a\\a\\bin\\sys\\zeidon.ppe", zSINGLE );
// nRC = SetNameForView( vAccount, "a_zeidon_ppe", vSubtask, zLEVEL_TASK );
// nRC = ActivateOI_FromFile( &vAccount, "TZPESRCO", vSubtask,
//                            "c:\\10a\\w\\bin\\sys\\zeidon.ppe", zSINGLE );
// nRC = SetNameForView( vAccount, "w_zeidon_ppe", vSubtask, zLEVEL_TASK );
#endif

   nRC = ActivateOI_FromFile( &vAccount, "ACCOUNT", vSubtask,
                              "CARLSON.PSV", zMULTIPLE );
   nRC = SetNameForView( vAccount, "ACCOUNTLST", vSubtask, zLEVEL_TASK );
   nRC = ActivateOI_FromFile( &vAccount, "ACCOUNT", vSubtask,
                              "CARLSON.POR", zMULTIPLE );
   nRC = SetNameForView( vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   CompareAttributeToString( vAccount, "ACCOUNT", "Month", "" );

// DisplayObjectInstance( vAccount, 0, 0 );
// SetViewReadOnly( vAccount );

   GetActualAttributeLength( &ulLth, vAccount, "CUSTOMER", "LastName" );
   TraceLineI( "GetActualAttributeLength for ACCOUNT Customer Name ", ulLth );

   GetViewByName( &vAccount, zDBHANDLER_WORK_VIEW_NAME,
                  vSubtask, zLEVEL_SYSTEM );
   TraceLineI( "KZDBHWOB view from account ", (zLONG) vAccount );

   nRC = ActivateEmptyObjectInstance( &vTZPEAXWO, "TZPEAXWO",
                                      vSubtask, zSINGLE );
   nRC = SetNameForView( vTZPEAXWO, "TZPEAXWO", vSubtask, zLEVEL_TASK );
// ulLth = BuildTZPEAXWO( vTZPEAXWO, 0, FALSE );
// TraceLineI( "TZPEAXWO built for Account ... entity cnt: ", ulLth );

// SetWindowActionBehavior( vSubtask, zWAB_ExitDialogTask,
//                          "account", "SubWnd" );

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SetListColors( zVIEW  vSubtask )
{
   zCHAR szBuffer[ 256 ];
   zstrcpy( szBuffer, "c:\\10e\\w\\bin\\zdctl.dll" );

   OL_SetDefaultBitmap( vSubtask, "OLB_Outliner", "CUSTOMER", "c:\\10e\\a\\zdr\\Toolbar.bmp" );
   OL_SetSelectedBitmap( vSubtask, "OLB_Outliner", "CUSTOMER", "c:\\10e\\a\\zdr\\Calendar.bmp" );
   OL_SetDefaultBitmap( vSubtask, "OLB_Outliner", "ACCOUNT", "c:\\10e\\a\\zdr\\Shape.bmp" );
   OL_SetSelectedBitmap( vSubtask, "OLB_Outliner", "ACCOUNT", "c:\\10e\\a\\zdr\\Ss.bmp" );
   OL_SetDefaultBitmap( vSubtask, "OLB_Outliner", "TRANSACTION", "c:\\10e\\a\\zdr\\SsSub.bmp" );
   OL_SetSelectedBitmap( vSubtask, "OLB_Outliner", "TRANSACTION", "c:\\10e\\a\\zdr\\Tab.bmp" );

// CheckMutexLock( vSubtask, vSubtask );

   GRID_SetColumnCtrl( vSubtask, "GridListAccount", 2, "GridDate", 4 );
   GRID_SetColumnCtrl( vSubtask, "GridListAccount", 3, "GridAmount", 3 );
   GRID_SetColumnCtrl( vSubtask, "GridListAccount", 4, "GridStateCombo", 1 );
// GRID_SetCheckAttribute( vSubtask, "GridListAccount", 5, 0, "Date", 0 );

   BTN_SetColor( vSubtask, "Print",
                 RGB( 0, 0, 255 ), RGB( 255, 0, 0 ),
                 RGB( 255, 255, 0 ), RGB( 0, 255, 255 ) );
   BTN_SetColor( vSubtask, "PrintPreview",
                 RGB( 0, 0, 0 ), RGB( 0, 0, 255 ),
                 RGB( 255, 255, 0 ), RGB( 0, 255, 255 ) );

   OLB_SetEventCallback( vSubtask, "__OLB", (LPARAM) ProcessOLB_Events );
   OLB_AddImages( vSubtask, "__OLB", IDB_TEST_IMAGES, IDB_TEST_SMALL_IMAGES );
   OLB_AddFolder( vSubtask, "__OLB", "Folder 1", 1 );
   OLB_AddFolderBar( vSubtask, "__OLB", "Folder Tree", "OLB_Outliner", 0 );
   OLB_AddFolderBar( vSubtask, "__OLB", "Folder List", "States", 0 );
   OLB_AddFolder( vSubtask, "__OLB", "Folder 3", 3 );
   OLB_AddFolder( vSubtask, "__OLB", "Folder 4", 4 );

   OLB_AddFolderItem( vSubtask, "__OLB", 1, 1, "Item 1", 1, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 2, "Item 2", 2, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 3, "Item 3", 3, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 4, "Item 4", 4, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 5, "Item 5", 1, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 6, "Item 6", 2, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 7, "Item 7", 3, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 8, "Item 8", 4, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 9, "Item 9", 1, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 10, "Item 10", 2, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 11, "Item 11", 3, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 12, "Item 12", 4, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 13, "Item 13", 1, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 14, "Item 14", 2, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 15, "Item 15", 3, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 16, "Item 16", 4, 0 );

   OLB_AddFolderItem( vSubtask, "__OLB", 1, 2, "New Item 1", 4, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 1, 18, "Item 17", 4, 0 );

   OLB_AddFolderItem( vSubtask, "__OLB", 4, 1, "Item 1", 1, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 4, 2, "Let's see what this Item will become actually 2", 2, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 4, 3, "Item 3", 3, 0 );
   OLB_AddFolderItem( vSubtask, "__OLB", 4, 4, "Item 4", 4, 0 );

   OLB_SetSelFolder( vSubtask, "__OLB", 1 );

// OperatorPromptForFile( vSubtask, szBuffer, sizeof( szBuffer ),
//                        "G:\\hardware",
//                        "Get Account Directory", zOFN_GETDIRECTORY );
#if 0

   szBuffer[ 0 ] = 0;
   OperatorPromptForInput( vSubtask, "GetValid CW Child hWnd",
                           "Please enter a\nvalid hWnd:", FALSE,
                           szBuffer, sizeof( szBuffer ) );
   TG_SetDateCtrlForColumn( vSubtask, "TrueGrid", 0, TRUE );
   ED_LimitTextLength( vSubtask, "FirstName", 16 );
   ED_LimitTextLength( vSubtask, "CheckAccel", 16 );
#endif
// SetWindowCaptionTitle( vSubtask,
//                   "this is a very long caption that may cause ",
//                   "errors if in fact it is applied to a real window so "
//                   "we will try it and test it and pass it on to the "
//                   "window and see if any bad things happen as a result!" );
   SetCtrlProperty( vSubtask, "PrintPreview", zCONTROL_PROPERTY_FONT,
                    90, "Arial Bold" );
// SetCtrlProperty( vSubtask, "States", zCONTROL_PROPERTY_FONT,
//                  85, "Courier New" );
// SetCtrlProperty( vSubtask, "AutoWidths", zCONTROL_PROPERTY_FONT,
//                  100, "Fixedsys" );
   LB_SetColorAttributeName( vSubtask, "AutoWidths", "Balance", 0 );
// LB_SetColorAssociation( vSubtask, "AutoWidths",
//                         0, "", zRGB_RED, -1, 0 );
   LB_SetColorAssociation( vSubtask, "AutoWidths",
                           1, "0.00", zRGB_PINK, zRGB_GREEN, 0x00000001 );
   LB_SetColorAssociation( vSubtask, "AutoWidths",
                           1, "0.00", zRGB_RED, zRGB_YELLOW, 0x80000000 );
   LB_SetColorAssociation( vSubtask, "AutoWidths",
                           2, "0.00", zRGB_BROWN, zRGB_GREEN, 0x0800000F );
   LB_SetColorAssociation( vSubtask, "AutoWidths",
                           2, "0.00", zRGB_BLUE, zRGB_YELLOW, 0x8800000F );
// LB_SetColorAssociation( vSubtask, "AutoWidths",
//                         0, "0.00", -1, -1, 1 );

   GRID_SetColorAttributeName( vSubtask, "GridListAccount", "State", 3 );
   GRID_SetColorAttributeName( vSubtask, "GridListAccount", "Amount", 0 );
   GRID_SetColorAssociation( vSubtask, "GridListAccount",
                             2, "123.0", zRGB_GREEN, -1, 0x80000001 );
   GRID_SetColorAssociation( vSubtask, "GridListAccount",
                             2, "100.0", zRGB_RED, -1, 0x81000002 );
   GRID_SetColorAssociation( vSubtask, "GridListAccount",
                             2, "100.0", zRGB_BLUE, -1, 0x88000004 );
   GRID_SetColorAssociation( vSubtask, "GridListAccount",
                             3, "A", zRGB_BLUE, -1, 0x0002000F );

   SetCtrlState( vSubtask, "Message1", zCONTROL_STATUS_CHECKED, TRUE );
// SetCtrlState( vSubtask, "StateCombo", zCONTROL_STATUS_ENABLED, FALSE );
   SetCtrlState( vSubtask, "PrintPreview", zCONTROL_STATUS_TEXT_COLOR,
                 zRGB( 0, 255, 0 ) );
   SetCtrlState( vSubtask, "SwitchBmp", zCONTROL_STATUS_TEXT_COLOR,
                 zRGB( 0, 255, 0 ) );
   SetCtrlState( vSubtask, "PrintPreview", zCONTROL_STATUS_BACKGROUND_COLOR,
                 zRGB( 0, 0, 255 ) );
   SetCtrlState( vSubtask, "Decimal", zCONTROL_STATUS_TEXT_COLOR,
                 zRGB( 0, 255, 0 ) );
   SetCtrlState( vSubtask, "Decimal", zCONTROL_STATUS_BACKGROUND_COLOR,
                 zRGB( 0, 0, 255 ) );

#if 0
   g_vSubtaskFrame0 = vSubtask;
   g_vSubtaskFrame3 = 0;

   zLONG lWnd = SetWindowState( vSubtask, 10, 0 );
   SplitFrame( vSubtask, "Account#TabWnd", 20, 0, 1 );
   g_vSubtaskFrame1 = AttachSubtaskToPane( g_vSubtaskFrame0, "Account",
                                           "Account", "TabWnd", 1 );
   SplitFrame( g_vSubtaskFrame1, "TabWnd#Test", 60, 0, 1 );
   g_vSubtaskFrame2 = AttachSubtaskToPane( g_vSubtaskFrame1, "Account",
                                           "Account", "Test", 1 );
   SplitFrame( g_vSubtaskFrame2, "Test#Split", 40, 60, 2 );
   g_vSubtaskFrame3 = AttachSubtaskToPane( g_vSubtaskFrame2, "Account",
                                           "Account", "Split", 2 );
   if ( lWnd )
      SetWindowState( vSubtask, 10, lWnd );
#endif

   {
      zLONG  lFlag = 2;
      zCHAR  szMapFlag[ 34 ];

      SetCtrlTranslationList( vSubtask, "SubFlag",
                              "0;;1;Width;2;Height;3;Width/Height;"
                              "4;Minimum Width;8;Minimum Height;"
                              "6;Minimum Width+Height;9;Width+Minimum Height;"
                              "12;Minimum Width/Minimum Height", 1 );
      zltoa( lFlag, szMapFlag );
      TranslateCtrlValue( vSubtask, "SubFlag", 0, TRUE,
                          szMapFlag, sizeof( szMapFlag ) );
      CB_SetData( vSubtask, "SubFlag", szMapFlag,
                  ";Width;Height;Width/Height;"
                  "Minimum Width;Minimum Height;"
                  "Minimum Width+Height;Width+Minimum Height;"
                  "Minimum Width/Minimum Height", 0 );
   }

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SubFlagChange( zVIEW  vSubtask )
{
   SetCtrlState( vSubtask, "SubFlag", zCONTROL_STATUS_MAP_ERROR, 1 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SelectSet( zVIEW  vSubtask )
{
   zVIEW vAccount;

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   if ( vAccount )
   {
      zCHAR  szAuthorized[ 32 ];
      zSHORT nPrevSelSet = SetSelectSetForView( vAccount, 3 );
      zSHORT nRC = SetCursorFirstEntity( vAccount, "TRANSACTION", 0 );

      SetAllSelectStatesForEntity( vAccount, "TRANSACTION", FALSE, 0 );
      while ( nRC >= zCURSOR_SET )
      {
         GetStringFromAttribute( szAuthorized, vAccount,
                                 "TRANSACTION", "Authorized" );
         if ( zstrcmp( szAuthorized, "Y" ) == 0 )
            SetSelectStateOfEntity( vAccount, "TRANSACTION", TRUE );

         nRC = SetCursorNextEntity( vAccount, "TRANSACTION", 0 );
      }


      SetSelectSetForView( vAccount, nPrevSelSet );
   }

   GRID_SetDisplaySelectSet( vSubtask, "SelectSets", 3 );
   GRID_SetSelectSelectSet( vSubtask, "SelectSets", 4 );
   return( 0 );
}

// This is the first opportunity to get the frame window (it has been
// realized at this point).
zOPER_EXPORT zSHORT OPERATION
Setup( zVIEW  vSubtask )
{
   TraceLineS( "Account Setup", "" );
   SetCtrlState( vSubtask, "FirstName",
                 zCONTROL_STATUS_TEXT_COLOR, zRGB( 0, 255, 0 ) );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Cleanup( zVIEW  vSubtask )
{
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Conversational( zVIEW  vSubtask )
{
   zCHAR szReturnTag[ 33 ];

   OperatorConversationalDialog( vSubtask, szReturnTag,
                                 "Account", "Conversational" );
   TraceLineS( "ACCOUNT =======> Return from OperatorConversationalDialog: ",
               szReturnTag );
   GetLastCtrlTag( vSubtask, szReturnTag );
   TraceLineS( "ACCOUNT =======> LastCtrl from OperatorConversationalDialog: ",
               szReturnTag );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
ResetText( zVIEW   vSubtask )
{
   zSHORT    nRC;
   zCHAR     szCtrlTag[ 34 ];

   GetCtrlWithFocus( vSubtask, szCtrlTag );
   TraceLineS( "Ctrl with focus ", szCtrlTag );

   nRC = SetCtrlText( vSubtask, "LastName", "ResetText" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
EditChange( zVIEW   vSubtask )
{
   TraceLineS( "EditChange", "" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
BeginEdit( zVIEW   vSubtask )
{
   TraceLineS( "BeginEdit", "" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Acquire( zVIEW   vSubtask )
{
   zCHAR szFileName[ 256 ];

   CompressFile( vSubtask, "c:\\temp\\dks.bmp",
                 "c:\\temp\\dks.zl", szFileName,
                 sizeof( szFileName ), TRUE );
   BMP_SetBitmapFileName( vSubtask, "SwitchBmp", "c:\\temp\\dks.bmp" );
   return( 0 );
}

#if 0
zBOOL
FindItemByName( HKEY    hKeyParent,
                zPCHAR  pchKeyName,
                zPCHAR  pchReturn )
{
   zLONG    lReturn = ERROR_MORE_DATA;  // Go into the loop at least one time
   zLONG    lResult = ERROR_MORE_DATA;
   DWORD    dwIndex = 0;                // index of subkey to enumerate
   DWORD    dwClassSize = 100;          // for size of buffers
   zCHAR    chName[ 100 ];              // buffer for subkey name
   zCHAR    chClass[ 100 ];             // buffer for class string
   zPCHAR   pchData = 0;                // buffer for class string
   FILETIME ftLastWriteTime;
   zBOOL    bFound = FALSE;
   DWORD    dwType = REG_SZ;
   DWORD    dwDataLth = 256;            // data buffer size
   zCHAR    szText[ 100 ];

   while ( lResult == ERROR_MORE_DATA && bFound == FALSE )
   {
      lResult = RegEnumKeyEx( hKeyParent, dwIndex, chName, &dwClassSize,
                              0, chClass, &dwClassSize, &ftLastWriteTime );
      TraceLineS( "pchKeyName", pchKeyName );
      TraceLineS( "chName", chName );
      // if ( pchKeyName == chName )
      if (zstrcmp( pchKeyName, chName ) == 0)
      {
         zPCHAR pchMsg;
         bFound = TRUE;
         /////
         while ( lReturn == ERROR_MORE_DATA )
         {
            dwDataLth *= 2;  // double the buffer size
            pchData = szText; // csBuffer->GetBufferSetLength( dwDataLth );
            lReturn = RegQueryValueEx( hKeyParent, "",
                                       0,                // reserved must be null
                                       &dwType,          // value type
                                       (LPBYTE) pchData, // data buffer
                                       &dwDataLth );     // data buffer size

            FormatMessage( FORMAT_MESSAGE_FROM_SYSTEM |
                                              FORMAT_MESSAGE_ALLOCATE_BUFFER,
                             0, GetLastError( ),
                             MAKELANGID( LANG_NEUTRAL, SUBLANG_DEFAULT ),
                             (zPCHAR) &pchMsg, 0, 0 );
            MessageBox( 0, (zCPCHAR) pchMsg, "FindItemByName Error",
                        MB_OK | MB_ICONINFORMATION );

            // Free the buffer.
            LocalFree( pchMsg );

            TraceLineI( "lResult inside:", lResult );
            TraceLineS( "VALUE inside: >>>", pchData );
            TraceLineS( "VALUE inside: 1>>>", szText );
         }
         //lResult = RegQueryValueEx( hKeyParent, "(Default)",
         //                           0,                // reserved must be null
         //                           &dwType,          // value type
         //                           (LPBYTE)szText, // data buffer
         //                           &dwDataLth );     // data buffer size

          TraceLineI( "lResult", lResult );
          TraceLineS( "VALUE>>>", szText );
          RegCloseKey( hKeyParent );
         /////
      }
      else
      {
         // if current value is not the right one
         // open subkey and call Function recursively
         HKEY hChild = 0;
         lResult = RegOpenKeyEx( hKeyParent, chName, 0, KEY_READ, &hChild );
         if ( lResult == ERROR_SUCCESS )
         {
            TraceLineS( "Key Open Success for : ", chName );
            TraceLineS( "GoingDown", ":1" );
            bFound = FindItemByName( hChild, pchKeyName, pchReturn );
            TraceLineS( "BackFrom ", ":1" );
            RegCloseKey( hChild );
         }
         else
         {

            TraceLineS( "Could not or did not open SubKey", pchKeyName );

         }
      }
   }
   return( bFound );
}

/////////////////////////////////////////////////////////////////////////////
//
//  OPERATION: AGetRegistryValue
//
//  test
//
/////////////////////////////////////////////////////////////////////////////
zOPER_EXPORT zSHORT /*GLOBAL */  OPERATION
AGetRegistryValue( zPCHAR szResult,
                   zPCHAR szKey )
{
   HKEY    hConnect = 0;
   zBOOL   bProcessError = FALSE;
   zBOOL   bReturn = TRUE;
   zCHAR   szReturn[ 256 ];
   HKEY    hClassesRoot = 0;
   zLONG   lReturn = 0;
   HKEY    m_hKeyTypeLib = 0;
   HKEY    m_hKeyCLSIDS = 0;

   lReturn = RegConnectRegistry( NULL, HKEY_LOCAL_MACHINE, &hConnect );
   TraceLineI( "lReturn lReturn lReturn ", lReturn );
   if ( lReturn != ERROR_SUCCESS )
   {
      TraceLineS( "RegConnectRegistry", " failed" );
      return( -1 );
   }
   // open the local key
   lReturn = RegOpenKeyEx( HKEY_CLASSES_ROOT, 0, 0, KEY_READ, &hClassesRoot );
   if ( lReturn != ERROR_SUCCESS )
   {
      TraceLineS( "RegOpenKeyEx HKEY_CLASSES_ROOT", " failed" );
      return( -1 );
   }
   lReturn = RegOpenKeyEx( hClassesRoot, "CLSID", 0, KEY_READ, &m_hKeyCLSIDS );
   if ( lReturn != ERROR_SUCCESS )
   {
      TraceLineS( "RegOpenKeyEx CLSID", " failed" );
      return( -1 );
   }
   lReturn = RegOpenKeyEx( hClassesRoot, "TypeLib", 0, KEY_READ, &m_hKeyTypeLib );
   if ( lReturn != ERROR_SUCCESS )
   {
      TraceLineS( "RegOpenKeyEx TypeLib", " failed" );
      return( -1 );
   }
   bReturn = FindItemByName( m_hKeyTypeLib, "win32", szReturn );
   TraceLineS( "csReturn:", szReturn );

   return( 0 );
} // AGetRegistryValue

#endif

// FindItemByName - enumerates the subkeys of a given key and the associated
//    values.
// hKey - key whose subkeys and values are to be enumerated

zBOOL
FindItemByName( HKEY    hKey,
                zCPCHAR cpcValueName,
                DWORD   dwReturnType,
                zPCHAR  pchReturnData,
                DWORD   dwMaxReturnLth )
{
   zCHAR    szKey[ MAX_PATH ];
   zCHAR    szClass[ MAX_PATH ] = "";   // buffer for class name
   DWORD    dwClassName = MAX_PATH;     // length of class string
   DWORD    dwSubKeys;                  // number of subkeys
   DWORD    dwMaxSubKey;                // longest subkey size
   DWORD    dwMaxClass;                 // longest class string
   DWORD    dwValues;                   // number of values for key
   DWORD    dwMaxValue;                 // longest value name
   DWORD    dwMaxValueData;             // longest value data
   DWORD    dwSecurityDescriptor;       // size of security descriptor
   DWORD    dwType;
   FILETIME ftLastWriteTime;            // last write time

   DWORD k, j;
   DWORD dwRC;
   zLONG lRC;
   zBOOL bFound = FALSE;

   zCHAR  szValue[ MAX_PATH ];
   DWORD dwValue = MAX_PATH;
   zCHAR  szBuff[ 80 ];

   // Get the class name and the value count.
   RegQueryInfoKey( hKey,                  // key handle
                    szClass,               // buffer for class name
                    &dwClassName,          // length of class string
                    NULL,                  // reserved
                    &dwSubKeys,            // number of subkeys
                    &dwMaxSubKey,          // longest subkey size
                    &dwMaxClass,           // longest class string
                    &dwValues,             // number of values for this key
                    &dwMaxValue,           // longest value name
                    &dwMaxValueData,       // longest value data
                    &dwSecurityDescriptor, // security descriptor
                    &ftLastWriteTime );    // last write time

   TraceLineS( "IDE_CLASS: ", szClass );
   TraceLineI( "IDE_CVALUES: ", dwValues );

   // Enumerate the child keys, looping until RegEnumKey fails. Then
   // get the name of each child key and copy it into the list box.
   SetCursor( LoadCursor( NULL, IDC_WAIT ) );
   for ( k = 0, dwRC = ERROR_SUCCESS; dwRC == ERROR_SUCCESS; k++ )
   {
      dwRC = RegEnumKey( hKey, k, szKey, MAX_PATH );
      if ( dwRC == (DWORD) ERROR_SUCCESS )
      {
          TraceLineS( "IDE_CLASS?: ", szKey );
      }
   }

   SetCursor( LoadCursor( NULL, IDC_ARROW ) );

   // Enumerate the key values.
   SetCursor( LoadCursor( NULL, IDC_WAIT ) );

   if ( dwValues )
   {
      for ( j = 0, dwRC = ERROR_SUCCESS; j < dwValues; j++ )
      {
         dwValue = MAX_PATH;
         szValue[ 0 ] = 0;
         dwRC = RegEnumValue( hKey, j, szValue,
                              &dwValue,
                              NULL,
                              &dwType, // &dwType,
                              NULL,    // &bData,
                              NULL );  // &bcData

         if ( dwRC != (DWORD) ERROR_SUCCESS &&
              dwRC != ERROR_INSUFFICIENT_BUFFER )
         {
            zsprintf( szBuff,
                      "Line:%d 0 based index = %d, dwRC = %d, "
                      "ValueLen = %d",
                      __LINE__, j, dwRC, dwValue );
            TraceLineS( "Debug", szBuff );
         }

         szBuff[ 0 ] = 0;

         if ( dwType == dwReturnType && zstrcmp( cpcValueName, szValue ) == 0 )
         {
            bFound = TRUE;

            lRC = RegQueryValueEx( hKey,               // handle to key
                                   szValue,
                                   0,                  // reserved must be null
                                   &dwType,            // value type
                                   (LPBYTE) pchReturnData, // data buffer
                                   &dwMaxReturnLth );  // data buffer size
            if ( zstrlen( szValue ) == 0 )
               zstrcpy( szValue, "(Default)" );

            TraceLineS( "Found Key ===> ", szValue );
            break;
         }

         // Add each value to a list box.
         if ( zstrlen( szValue ) == 0 )
            zstrcpy( szValue, "(Default)" );

         zsprintf( szBuff, "%d) %s ", j, szValue );
         TraceLineS( "???:  ", szBuff );
      }
   }

   SetCursor( LoadCursor( NULL, IDC_ARROW ) );
   return( bFound );
}

zOPER_EXPORT zSHORT OPERATION
GetRegistryTypeLibValue( zCPCHAR cpcValueName,
                         DWORD   dwReturnType,
                         zPCHAR  pchReturnData,
                         DWORD   dwMaxReturnLth )
{
// zCHAR  szReturn[ 256 ];
   HKEY  hConnect;
   HKEY  hClassesRoot;
   HKEY  hCLSID;
   HKEY  hKeyCLSID;
   HKEY  hTypeLib;
// HKEY  hKey;
   zSHORT nRC = -1;

   *pchReturnData = 0;  // initialize

   zLONG lRC = RegConnectRegistry( NULL, HKEY_LOCAL_MACHINE, &hConnect );
   TraceLineI( "lRC: ", lRC );
   if ( lRC != ERROR_SUCCESS )
   {
      TraceLineS( "RegConnectRegistry", " failed" );
      return( nRC );
   }

   // open the local key
   lRC = RegOpenKeyEx( HKEY_CLASSES_ROOT, 0, 0, KEY_READ, &hClassesRoot );
   if ( lRC != ERROR_SUCCESS )
   {
      TraceLineS( "RegOpenKeyEx HKEY_CLASSES_ROOT", " failed" );
      return( nRC );
   }

   lRC = RegOpenKeyEx( hClassesRoot, "CLSID", 0, KEY_READ, &hCLSID );
   if ( lRC != ERROR_SUCCESS )
   {
      TraceLineS( "RegOpenKeyEx CLSID", " failed" );
      return( nRC );
   }

   lRC = RegOpenKeyEx( hCLSID, "{6DDE3061-736C-11D2-A5E8-00A0C967A25F}", 0, KEY_READ, &hKeyCLSID );
   if ( lRC != ERROR_SUCCESS )
   {
      TraceLineS( "RegOpenKeyEx KeyCLSID", " failed" );
      return( nRC );
   }

   lRC = RegOpenKeyEx( hKeyCLSID, "TypeLib", 0, KEY_READ, &hTypeLib );
   if ( lRC != ERROR_SUCCESS )
   {
      TraceLineS( "RegOpenKeyEx TypeLib", " failed" );
      return( nRC );
   }

   nRC = FindItemByName( hTypeLib, cpcValueName, dwReturnType,
                         pchReturnData, dwMaxReturnLth );
   TraceLineS( cpcValueName, pchReturnData );

   return( nRC );
}

zOPER_EXPORT zSHORT OPERATION
Refresh( zVIEW   vSubtask )
{
   zCHAR szCtrlTag[ 34 ];

   GetLastCtrlTag( vSubtask, szCtrlTag );
   RefreshWindowExceptForCtrl( vSubtask, szCtrlTag );
   return( 0 );
#if 0
#if 1

   zCHAR szDlgTag[ 34 ];
   zCHAR szWndTag[ 34 ];
   zCHAR szOperation[ 34 ];
// zULONG ulWnd;
// zULONG ulCtrl;

   static int k = 0;

// MessageBox( 0, "Refresh", "Check GetWindowHandle", MB_OK );
// GetWindowHandle( &ulWnd, &ulCtrl, vSubtask, "FirstName" );

#if 1
   if ( k <= 2 )
      SetCtrlState( vSubtask, "FirstName",
                    zCONTROL_STATUS_ENABLED, FALSE );

   GetCurrentState( vSubtask, szDlgTag, szWndTag, szOperation );
   TraceLineS( "Refresh Dialog: ", szDlgTag );
   TraceLineS( "Refresh Window: ", szWndTag );
   TraceLineS( "Refresh Operation: ", szOperation );

   SS_LockColumn( vSubtask, "Name", 2, TRUE );
   TraceLineS( "Locking Column 2 in ctrl Name", "" );
   if ( k % 5 < 3 )
   {
      SetCtrlRowColText( vSubtask, "AutoWidths", 0, 1, "HopeOne" );
      SetCtrlState( vSubtask, "FirstName",
                    zCONTROL_STATUS_DISABLE_READONLY, TRUE );
//    MessageBox( 0, "Account Stop", "Check Enabled", MB_OK );
      if ( k % 2 )
         SetCtrlState( vSubtask, "FirstName",
                       zCONTROL_STATUS_ENABLED, FALSE );
      else
         SetCtrlState( vSubtask, "FirstName",
                       zCONTROL_STATUS_ENABLED, TRUE );
   }
   else
   {
      SetCtrlRowColText( vSubtask, "AutoWidths", 0, 1, "HopeTwo" );
      if ( k % 2 )
         SetCtrlState( vSubtask, "FirstName",
                       zCONTROL_STATUS_ENABLED, FALSE );
      else
         SetCtrlState( vSubtask, "FirstName",
                       zCONTROL_STATUS_ENABLED, TRUE );

      SetCtrlState( vSubtask, "FirstName",
                    zCONTROL_STATUS_DISABLE_READONLY, FALSE );
   }

   if ( k == 1 )
   {
      SetCtrlState( vSubtask, "States", zCONTROL_STATUS_ENABLED, FALSE );
      EnableAction( vSubtask, "TabWnd", TRUE );
      EnableAction( vSubtask, "TabWnd", FALSE );
      MB_SetMessage( vSubtask, 1, "Refresh Enable/Disable TabWnd" );
      TraceLineS( "Refresh Enable/Disable TabWnd", "" );
//    SetCtrlState( vSubtask, "TabWnd", zCONTROL_STATUS_ENABLED, FALSE );
   }
   else
   if ( k == 2 )
   {
      SetCtrlState( vSubtask, "States", zCONTROL_STATUS_ENABLED, TRUE );
      EnableAction( vSubtask, "TabWnd", TRUE );
      MB_SetMessage( vSubtask, 1, "Refresh Enable TabWnd" );
      TraceLineS( "Refresh Enable TabWnd", "" );
//    SetCtrlState( vSubtask, "TabWnd", zCONTROL_STATUS_ENABLED, TRUE );
   }
   else
   if ( k % 2 )
   {
      SetCtrlState( vSubtask, "States", zCONTROL_STATUS_ENABLED, k % 2 );
      EnableAction( vSubtask, "TabWnd", FALSE );
      MB_SetMessage( vSubtask, 1, "Refresh Disable TabWnd" );
      TraceLineS( "Refresh Disable TabWnd", "" );
   }
   else
   {
      SetCtrlState( vSubtask, "States", zCONTROL_STATUS_ENABLED, k % 2 );
      EnableAction( vSubtask, "TabWnd", TRUE );
      MB_SetMessage( vSubtask, 1, "Refresh Re-Enable TabWnd" );
      TraceLineS( "Refresh Re-Enable TabWnd", "" );
   }

   SetCtrlState( vSubtask, "NewText", zCONTROL_STATUS_VISIBLE, k % 2 );
#endif

   return( 0 );

#else

   HKEY  hClassesRoot;
   HKEY  hKey;
   zBOOL bRC;

   zLONG lRC = RegConnectRegistry( NULL, HKEY_LOCAL_MACHINE, &hConnect );
   TraceLineI( "lRC: ", lRC );

   // open the local key
   lRC = RegOpenKeyEx( HKEY_CLASSES_ROOT, 0, 0, KEY_READ, &hClassesRoot );
   if ( lRC != ERROR_SUCCESS )
   {
      TraceLineS( "RegOpenKeyEx HKEY_CLASSES_ROOT", " failed" );
      return( -1 );
   }

   lRC = RegOpenKeyEx( hClassesRoot, ".123", 0, KEY_READ, &hKey );
   if ( lRC != ERROR_SUCCESS )
   {
      TraceLineS( "RegOpenKeyEx .123", " failed" );
      return( -1 );
   }

   bRC = FindItemByName( hKey, "Content Type", REG_SZ,
                         szReturn, sizeof( szReturn ) );
   TraceLineS( "Content Type: ", szReturn );

// zCHAR szResult[ 256 ];
// AGetRegistryValue( szResult, "win32" );
   return( 0 );
#endif
#endif
}

zOPER_EXPORT zSHORT OPERATION
GetCurrentActiveTab( zVIEW   vSubtask )
{
// TraceLineI( "GetActiveTab ", TAB_GetActiveTab( vSubtask, "TagTab" ) );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
EditLoseFocus( zVIEW   vSubtask )
{
   zCHAR szBalance[ 32 ];
   static zSHORT k = 0;
   zVIEW vAccount;
   ZDecimal dBalance;

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   GetStringFromAttribute( szBalance, vAccount, "ACCOUNT", "Balance" );
   GetDecimalFromAttribute( &dBalance, vAccount, "ACCOUNT", "Balance" );
   TraceLineS( "Decimal value ############################### ", szBalance );
   szBalance[ 0 ] = '0' + (k % 10);
   SetCtrlText( vSubtask, "Decimal", szBalance );
   dBalance = k;
   //SysConvertLongToDecimal( (zLONG) k, &dBalance );
   SetAttributeFromDecimal( vAccount, "ACCOUNT", "Balance", dBalance );

   k++;
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Hotkey( zVIEW   vSubtask )
{
   zCHAR szReturnCtrlTag[ 33 ];

// SysMessageBox( "Hotkey", "?", TRUE );
   GetCtrlWithFocus( vSubtask, szReturnCtrlTag );
   TraceLineS( "Hotkey Ctrl with Focus ======> ", szReturnCtrlTag );
   SetCtrlState( vSubtask, "FirstName",
                    zCONTROL_STATUS_TEXT_COLOR, zRGB_CYAN );
//                  zCONTROL_STATUS_TEXT_COLOR, zRGB_YELLOW );
   SetCtrlState( vSubtask, "LastName",
                    zCONTROL_STATUS_TEXT_COLOR, zRGB_RED );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Message1( zVIEW   vSubtask )
{
   zCHAR  szState[ 256 ];
   zVIEW  vAccount;

// OperatorSend( vSubtask, "Message1", "Test1", TRUE );

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   GetStringFromAttribute( szState, vAccount, "TRANSACTION", "State" );
   TraceLineS( "Message1 State: ", szState );
   PumpMessages( vSubtask );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Message2( zVIEW   vSubtask )
{
// OperatorSend( vSubtask, "Message2", "Test2", TRUE );
// TraceLineS( "Message2", " - Account" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SetFocusToTest2( zVIEW   vSubtask )
{
   SetFocusToCtrl( vSubtask, "Test2" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Add( zVIEW   vSubtask )
{
   TraceLineS( "Hotkey Operation ", "Add" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", "Add" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Subtract( zVIEW   vSubtask )
{
   TraceLineS( "Hotkey Operation ", "Subtract" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", "Subtract" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Multiply( zVIEW   vSubtask )
{
   TraceLineS( "Hotkey Operation ", "Multiply" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", "Multiply" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Divide( zVIEW   vSubtask )
{
   TraceLineS( "Hotkey Operation ", "Divide" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", "Divide" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Enter( zVIEW   vSubtask )
{
   TraceLineS( "Hotkey Operation ", "Enter" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", "Enter" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
EditEnter( zVIEW   vSubtask )
{
   TraceLineS( "Edit ", "Enter" );
   return( -1 );
}

zOPER_EXPORT zSHORT OPERATION
New( zVIEW   vSubtask )
{
   TraceLineS( "Get/Lose focus", "" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SetTab( zVIEW   vSubtask )
{
   zCHAR szTag[ 3 ];
   short k;

   szTag[ 0 ] = 'S';
   szTag[ 2 ] = 0;
   for ( k = 1; k <= 5; k++ )
   {
      szTag[ 1 ] = '0' + (char) k;
      if ( GetCtrlState( vSubtask, szTag, zCONTROL_STATUS_CHECKED ) )
      {
         TAB_SetActiveTab( vSubtask, "TagTab", k );
         break;
      }
   }

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
ShowTab( zVIEW   vSubtask )
{
   TAB_HideSubTab( vSubtask, "TagTab", "TagOne", 0 );
   SetCtrlState( vSubtask, "ShowTab", zCONTROL_STATUS_ENABLED, FALSE );
   SetCtrlState( vSubtask, "HideTab", zCONTROL_STATUS_ENABLED, TRUE );
   SetCtrlState( vSubtask, "DisableTab", zCONTROL_STATUS_ENABLED, TRUE );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
DisableTab( zVIEW   vSubtask )
{
   TAB_HideSubTab( vSubtask, "TagTab", "TagOne", -1 );
   SetCtrlState( vSubtask, "ShowTab", zCONTROL_STATUS_ENABLED, TRUE );
   SetCtrlState( vSubtask, "HideTab", zCONTROL_STATUS_ENABLED, TRUE );
   SetCtrlState( vSubtask, "DisableTab", zCONTROL_STATUS_ENABLED, FALSE );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
HideTab( zVIEW   vSubtask )
{
   zCHAR szTag[ 3 ];
   short k;

   szTag[ 0 ] = 'H';
   szTag[ 2 ] = 0;
   for ( k = 1; k <= 5; k++ )
   {
      szTag[ 1 ] = '0' + (char) k;
      if ( GetCtrlState( vSubtask, szTag, zCONTROL_STATUS_CHECKED ) )
      {
         TAB_HideTab( vSubtask, "TagTab", k, 1 );
      }
      else
      {
         TAB_HideTab( vSubtask, "TagTab", k, 0 );
      }
   }

   SetCtrlState( vSubtask, "ShowTab", zCONTROL_STATUS_ENABLED, TRUE );
   SetCtrlState( vSubtask, "HideTab", zCONTROL_STATUS_ENABLED, FALSE );
   SetCtrlState( vSubtask, "DisableTab", zCONTROL_STATUS_ENABLED, TRUE );
   return( 0 );
}

#if 0    // code to save all PWD's using OK button on Workstation
   zCHAR  szBuffer[ 256 ];
   zVIEW  vDialog;
   zVIEW  vLPLR;
   zSHORT nRC;

   zVIEW  vTZPESRCO;
   zBOOL  bPE_Activated = FALSE;

   // Activate the presentation environment
   if ( GetViewByName( &vTZPESRCO, "TZPESRCO", vSubtask, zLEVEL_TASK ) < 1 )
   {
      zVIEW vMetaList;

      bPE_Activated = TRUE;
      RetrieveViewForMetaList( vSubtask, &vMetaList, zREFER_PENV_META );
      if ( SetCursorFirstEntity( vMetaList, "W_MetaDef", "" ) < zCURSOR_SET )
      {
         MessageSend( vSubtask, "PN00201", "Dialog",
                      "Presentation Environment does not exist!\n"
                      "Painter exiting.",
                      zMSGQ_OBJECT_CONSTRAINT_ERROR, zBEEP );
         SetWindowActionBehavior( vSubtask, zWAB_ReturnToParent, 0, 0 );
         return( -16 );
      }
      else
      {
         ActivateMetaOI( vSubtask, &vTZPESRCO, vMetaList,
                         zREFER_PENV_META, zSINGLE );
         SetNameForView( vTZPESRCO, "TZPESRCO", vSubtask, zLEVEL_TASK );
         DropView( vMetaList );
      }
   }

   zstrcpy( szBuffer, "Converting Dialog:  " );
   RetrieveViewForMetaList( vSubtask, &vLPLR, zSOURCE_DIALOG_META );
   nRC = SetCursorFirstEntity( vLPLR, "W_MetaDef", "" );
   while ( nRC >= zCURSOR_SET )
   {
      ActivateMetaOI( vSubtask, &vDialog, vLPLR,
                      zSOURCE_DIALOG_META, zSINGLE );
      SetCursorFirstEntity( vDialog, "Window", "" );
      GetStringFromAttribute( szBuffer + 19, vDialog, "Dialog", "Tag" );
      MB_SetMessage( vSubtask, 1, szBuffer );
      CommitMetaOI( vSubtask, vDialog, zSOURCE_DIALOG_META );
      DropView( vDialog );
      nRC = SetCursorNextEntity( vLPLR, "W_MetaDef", "" );
   }

   if ( bPE_Activated )
      DropView( vTZPESRCO );

   SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
   return( 0 );
#endif

zOPER_EXPORT zSHORT OPERATION
RefreshAX_Events( zVIEW  vSubtask )
{
   RefreshCtrl( vSubtask, "Events" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Test( zVIEW  vSubtask )
{
#if 0
   MapCtrl( vSubtask, "Calendar1" );
   RefreshCtrl( vSubtask, "Text1" );
#endif
   zCHAR  szTag[ 33 ];
   zLONG lCtrlId;

   GetLastCtrlTag( vSubtask, szTag );
   lCtrlId = zatol( szTag );
   PlaceWindow( vSubtask, lCtrlId );

// SetCtrlText( vSubtask, "Test1", "Test&One" );
// SetCtrlText( vSubtask, "Test2", "Test&Two" );
   TraceLineI( "Called Test operation", lCtrlId );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SubwndPostbuild( zVIEW  vSubtask )
{
   static  nState = 0;

   SelectSet( vSubtask );

#if 0
   nState %= 2;

   if ( nState == 0 )
   {
      SetWindowActionBehavior( vSubtask, zWAB_ReplaceWindowWithModalWindow |
                                             zWAB_ProcessImmediateAction,
                               "ACCOUNT", "Tabwnd" );
   }
   else
   if ( nState == 1 )
#endif
   {
      SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
   }

   nState++;

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
NewDraft( zVIEW  vSubtask )
{
   zVIEW     vAccount;
   zSHORT    nRC;

   nRC = GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   CreateEntity( vAccount, "DRAFTS", zPOS_AFTER );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
DeleteObjectEntity( zVIEW  vSubtask )
{
   zVIEW     vAccount;
   zSHORT    RESULT;
   zSHORT    nRC;

   RESULT = GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   nRC = DeleteEntity( vAccount, "CUSTOMER", zPOS_NEXT );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
DeleteInstance( zVIEW  vSubtask )
{
   zVIEW     vAccount;
   zCHAR     szT[ 25 ];
   zSHORT    RESULT;

   RESULT = GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   ZeidonStringCopy( szT, 1, 0, "Test \n ", 1, 0, 24 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Prompt( zVIEW   vSubtask )
{
#if 0

   MSG     msg;
   zSHORT  k;

   for ( k = 0; k < 10; k++ )
   {
      while ( PeekMessage( &msg, 0, 0, 0, PM_REMOVE ) )
      {
         TranslateMessage( &msg );
         DispatchMessage( &msg );
      }

      SysWait( 200 );
   }

#else

   zVIEW   vBitmapSubtask;

// ED_HiliteText( vSubtask, "Prompt", 1, 12 );
   SetWindowActionBehavior( vSubtask, zWAB_StartModalSubwindow |
                                          zWAB_ProcessImmediateAction,
                            "ACCOUNT", "Bitmap" );
   if ( GetSubtaskForWindowName( vSubtask, &vBitmapSubtask, "Bitmap" ) == 0 )
   {
      TraceLineS( "ACCOUNT Bitmap subtask found", "" );
      SetWindowState( vBitmapSubtask, zWINDOW_STATUS_UPDATE, 0 );
      SysWait( 3000 );     // three seconds

      SetWindowActionBehavior( vBitmapSubtask,
                               zWAB_ReturnToParent |
                                           zWAB_ProcessImmediateAction |
                                           zWAB_ProcessImmediateReturn,
                               "ACCOUNT", "Bitmap" );
   }
   else
   {
      TraceLineS( "ACCOUNT Bitmap subtask NOT found", "" );
   }

#endif

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Crypt( zVIEW   vSubtask )
{
   zCHAR  szPassword[ 34 ];
   zCHAR  szPasswordR[ 34 ];
   zCHAR  szCrypt[ 34 ];
   zCHAR  szMsg[ 256 ];

   GetCtrlText( vSubtask, "Password", szPassword, sizeof( szPassword ) );
   UfEncryptStringUL( szCrypt, "Enc1", 0, 32 );
   MessageBox( 0, szCrypt, "Encrypted Password", MB_OK );
   UfDecryptStringUL( szPasswordR, szCrypt, 0, 32 );
   if ( zstrcmp( szPasswordR, "Enc1" ) != 0 )
   {
      zstrcpy( szMsg, "'Password' did not match: '" );
      zstrcat( szMsg, "Enc1" );
      zstrcat( szMsg, "'" );
      MessageBox( 0, szMsg, "Passwords did not match", MB_OK );
   }
   else
      MessageBox( 0, "Enc1", "Passwords Match", MB_OK );

   SetFocusToCtrl( vSubtask, "Password" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SwitchBitmap( zVIEW   vSubtask )
{
// zCHAR  szFileName[ 128 ];
// zstrcpy( szFileName, "c:\\10e\\a\\zdr\\dks.bat" );
// szFileName[ 0 ] = 0;
// OperatorPromptForFile( vSubtask, szFileName, sizeof( szFileName ),
//                        "Batch Files (*.bat)|*.bat|",
//                        "bat", TRUE );
// TraceLineS( "Prompt FileName = ", szFileName );
// return( 0 );

#if 1
   zBOOL bVisible;

   Crypt( vSubtask );
   bVisible = (zBOOL) GetCtrlState( vSubtask, "ControlBar",
                                    zCONTROL_STATUS_VISIBLE );
   SetCtrlState( vSubtask, "ControlBar", zCONTROL_STATUS_VISIBLE, !bVisible );

#else

   zVIEW vTemp;

   SfCreateSubtask( &vTemp, vSubtask, "AuftragO" );
   SetNewApplicationSubtask( vSubtask, vTemp );
   SetWindowActionBehavior( vSubtask, zWAB_StartOrFocusModelessDialog,
                            "Menue", "Menue" );
#endif

   return( 0 );

#if 0
#if 1

   ReplacePrimaryMenu( vSubtask, "Alternate" );
   AddOptionToMenu( vSubtask, "", "File",
                    "SteelWindow", "Steel Window", "", 512 );
   AddOptionToMenu( vSubtask, "SteelWindow", "",
                    "xxx", "xxx", "Cancel", 2 );
   AddOptionToMenu( vSubtask, "File", "Cancel",
                    "Popup", "Popup", "", 512 + 48 );
   AddOptionToMenu( vSubtask, "Popup", "",
                    "NewCan", "NewCan", "Cancel", 4 );
   AddOptionToMenu( vSubtask, "Popup", "",
                    "NewOK", "NewOK", "OK", 4 );
   RemoveOptionFromMenu( vSubtask, "NewCan" );
   AddOptionToMenu( vSubtask, "Popup", "NewOK",
                    "NewCan", "NewCan", "Cancel", 1 );
   return( 0 );

#else
#if 0
   static int k = 0;

   SetCtrlState( vSubtask, "LastNameGroup", zCONTROL_STATUS_ENABLED,
                    k++ % 2 ? TRUE : FALSE );
   SetFocusToCtrl( vSubtask, "FirstName" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   MiListOE_Memory( vSubtask, 0 );
   return( 0 );
#else
   zLONG x;
   zLONG y;
   zLONG cx;
   zLONG cy;

#if 0
   zCHAR  szFileName[ 128 ];
   zstrcpy( szFileName, "c:\\9h\\a\\zdr\\guenter.txt" );
   OperatorPromptForFile( vSubtask, szFileName, sizeof( szFileName ),
                          "All Files (*.*)|*.*|Text Files (*.txt)|*.txt|",
                          "txt", TRUE );
   TraceLineS( "Prompt FileName = ", szFileName );
   zstrcpy( szFileName, "c:\\9h\\w\\bin\\zdctl.dll" );
   OperatorPromptForFile( vSubtask, szFileName, sizeof( szFileName ),
                          "All Files (*.*)|*.*|DLL Files (*.dll)|*.dll|",
                          "dll", FALSE );
   TraceLineS( "SaveAs FileName = ", szFileName );
   return( 0 );
#else

   GetCtrlSize( vSubtask, "BmpBtn", &cx, &cy, TRUE );
   SetCtrlSize( vSubtask, "BmpBtn", 36, 40, TRUE );
   BMP_SetBitmapFileName( vSubtask, "SwitchBmp",
                          "c:\\9j\\a\\zdr\\preview2.bmp" );
   SetWindowState( vSubtask, zWINDOW_STATUS_UPDATE, 0 );
   SysWait( 1000 );     // one seconds

   GetCtrlPosition( vSubtask, "BmpBtn", &x, &y, TRUE );
   SetCtrlPosition( vSubtask, "BmpBtn", x + 10, y + 10, TRUE );
   SetWindowState( vSubtask, zWINDOW_STATUS_UPDATE, 0 );
   SysWait( 1000 );     // one seconds
   BMP_SetBitmapResource( vSubtask, "SwitchBmp", "account", 111 );
   SetCtrlPosition( vSubtask, "BmpBtn", x - 30, y + 30, TRUE );
   SetWindowState( vSubtask, zWINDOW_STATUS_UPDATE, 0 );
   SysWait( 1000 );     // one seconds
   BMP_SetBitmapResource( vSubtask, "SwitchBmp", "account", 112 );
   SetCtrlPosition( vSubtask, "BmpBtn", x + 50, y + 50, TRUE );
   SetWindowState( vSubtask, zWINDOW_STATUS_UPDATE, 0 );
   SysWait( 1000 );     // one seconds
   BMP_SetBitmapResource( vSubtask, "SwitchBmp", "account", 113 );
   SetCtrlPosition( vSubtask, "BmpBtn", x - 70, y + 70, TRUE );
   SetWindowState( vSubtask, zWINDOW_STATUS_UPDATE, 0 );
   SysWait( 1000 );     // one seconds
   BMP_SetBitmapFileName( vSubtask, "SwitchBmp",
                          "c:\\9j\\a\\zdr\\preview1.bmp" );
   SetWindowState( vSubtask, zWINDOW_STATUS_UPDATE, 0 );
   SysWait( 1000 );     // one seconds
   SetCtrlPosition( vSubtask, "BmpBtn", x, y, TRUE );
   SetCtrlSize( vSubtask, "BmpBtn", cx, cy, TRUE );
   return( 0 );
#endif
#endif
#endif
#endif
}

zOPER_EXPORT zSHORT OPERATION
Hilite123( zVIEW   vSubtask )
{
   static zSHORT k = 0;
   k++;
   HiliteListBoxItem( vSubtask, "AutoWidths", TRUE, k % 3 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
DeleteTransaction( zVIEW   vSubtask )
{
   zVIEW vAccount;

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   DeleteEntity( vAccount, "ACCOUNT", zREPOS_NEXT );
// DeleteEntity( vAccount, "TRANSACTION", zREPOS_NEXT );
   RefreshCtrl( vSubtask, "ListAccount" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
AddTransaction( zVIEW   vSubtask )
{
   zVIEW vAccount;

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   CreateEntity( vAccount, "ACCOUNT", zREPOS_NEXT );
   SetAttributeFromString( vAccount, "ACCOUNT", "Type", "Check" );
   SetAttributeFromString( vAccount, "ACCOUNT", "Number", "1111111" );
   SetAttributeFromString( vAccount, "ACCOUNT", "Balance", "7.77" );
   SetAttributeFromString( vAccount, "ACCOUNT", "CustomerIdNbr", "747" );

// DeleteEntity( vAccount, "TRANSACTION", zREPOS_NEXT );
   RefreshCtrl( vSubtask, "ListAccount" );
   RefreshCtrl( vSubtask, "AutoWidths" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
CellSelect( zVIEW   vSubtask )
{
#if 0
   zVIEW vAccount;

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   SetCursorLastEntity( vAccount, "TRANSACTION", "ACCOUNT" );
// SetCursorLastEntity( vAccount, "TRANSACTION", "CUSTOMER" );
   RefreshCtrl( vSubtask, "ListAccount" );
#endif
   return( 0 );
}

#if 0
zOPER_EXPORT zSHORT OPERATION
FileNew( zVIEW  vSubtask )
{
   HWND hWnd = 0;
   HWND hWndParent = CreateMDI_Child( vSubtask, "account.c" );
   HWINDOW hWindow = WinCreateChild( hWndParent );
   HBUFFER hBuffer = BufCreate( NIL, "c:\\9b\\a\\tz\\account.c", FALSE );
   if ( IsWindow( hWndParent ) == FALSE )
   {
      TraceLineI( "Invalid hWndParent ", (zLONG) hWndParent );
   }
   else
   if ( IsWindow( hWndParent ) == FALSE )
   {
      TraceLineI( "Valid hWndParent ", (zLONG) hWndParent );
   }

   hWnd = GetHWND_FromCW_Window( hWindow );
   if ( IsWindow( hWnd ) )
   {
      TraceLineI( "Account CW Child HWND = ", (zLONG) hWnd );
   }
   else
   {
      zCHAR szBuffer[ 32 ];
      long lWnd;

      szBuffer[ 0 ] = 0;

      TraceLineI( "Account CW Child Invalid HWND = ", (zLONG) hWnd );
      OperatorPromptForInput( vSubtask, "GetValid CW Child hWnd",
                              "hWnd:", FALSE, szBuffer, sizeof( szBuffer ) );
      lWnd = atol( szBuffer );
      hWnd = (HWND) lWnd;
      TraceLineI( "Account CW Child new HWND = ", (zLONG) lWnd );
      TraceLineI( "Account CW Child new HWND = ", (zLONG) hWnd );
   }

   if ( hWnd )
   {
      SetWindowPos( hWnd, HWND_TOP, 0, 0, 0, 0,
                    SWP_NOSIZE | SWP_NOMOVE | SWP_SHOWWINDOW );
   }

   WinAttachBuf( hWindow, hBuffer );
   TraceLineI( "Account MDI Child HWND = ", (zLONG) hWndParent );
   TraceLineI( "Account hBuffer = ", (zLONG) hBuffer );

   return( 0 );
}


/////////////////////////////////////////////////////////////////////////////
//
//  FUNCTION   : CloseAllChildren ()
//
//  PURPOSE    : Destroys all MDI child windows.
//
/////////////////////////////////////////////////////////////////////////////
VOID PASCAL
CloseAllChildren ( void )
{
   HWND hwndT;

   /* hide the MDI client window to avoid multiple repaints */
   ShowWindow( hwndMDIClient, SW_HIDE );

   /* As long as the MDI client has a child, destroy it */
   while ( hwndT = GetWindow (hwndMDIClient, GW_CHILD))
   {
      /* Skip the icon title windows */
      while (hwndT && GetWindow (hwndT, GW_OWNER))
         hwndT = GetWindow (hwndT, GW_HWNDNEXT);

      if (!hwndT)
         break;

      SendMessage (hwndMDIClient, WM_MDIDESTROY, (WORD)hwndT, 0L);
   }
}

/////////////////////////////////////////////////////////////////////////////
//
//  FUNCTION   : CommandHandler ()
//
//  PURPOSE    : Processes all "frame" WM_COMMAND messages.
//
/////////////////////////////////////////////////////////////////////////////
VOID PASCAL
CommandHandler ( HWND hwnd, WPARAM wParam )
{
   switch (wParam)
   {
   case IDM_FILENEW:
      /* Add a new, empty MDI child */
      // AddFile (NULL);
      MessageBox( 0, "AddFile", "CommandHandler", MB_OK );
      break;

   case IDM_FILEOPEN:
      LibFunctionExec( "DlgOpenFile" );
      break;

   case IDM_FILESAVE:
      BufWrite();
      break;

   case IDM_FILESAVEAS:
      LibFunctionExec( "DlgSaveAs" );
      break;

   case IDM_FILEPRINT:
      LibFunctionExec( "DlgPrint" );
      break;

   case IDM_FILESETUP:
      LibFunctionExec( "DlgPrintSetup" );
      break;

   case IDM_FILEMENU:  // lengthen/shorten the size of the MDI menu
      {
         HMENU hMenu;
         HMENU hWindowMenu;
         int i;

         if (lpMenu == (LPSTR)IDMULTIPAD)
         {
            lpMenu = (LPSTR)IDMULTIPAD2;
            i  = SHORTMENU;
         }
         else
         {
            lpMenu = (LPSTR)IDMULTIPAD;
            i  = WINDOWMENU;
         }

         hMenu = LoadMenu (hInstance, lpMenu);
         hWindowMenu = GetSubMenu (hMenu, i);

         /* Set the new menu */
         hMenu = (HMENU)SendMessage (hwndMDIClient,
               WM_MDISETMENU,
               0,
               MAKELONG(hMenu,hWindowMenu));

         DestroyMenu (hMenu);
         DrawMenuBar (hwndFrame);
         break;
      }

   case IDM_FILEEXIT:
      /* Close Multipad */
      SendMessage (hwnd, WM_CLOSE, 0, 0L);
      break;

   case IDM_HELPABOUT:
      {
         /* Bring up the ubiquitous Ego box */
         FARPROC lpfn;

         lpfn = MakeProcInstance((FARPROC)AboutDlgProc, hInstance);
         DialogBox (hInstance, IDD_ABOUT, hwnd, (DLGPROC)lpfn);
         FreeProcInstance (lpfn);
      }

      break;

   case IDM_SEARCHFIND:
      // Put up the CW Search dialog box
      LibFunctionExec( "srchCommand NULL IDM_SRCH_SEARCH" );
      break;

   case IDM_SEARCHNEXT:
      /* Repeat last search */
      LibFunctionExec( "srchCommand NULL IDM_SRCH_AGAIN" );
      break;

   // The following are window commands - these are handled by the
   // MDI Client.
   //
   case IDM_WINDOWTILE:
      /* Tile MDI windows */
      SendMessage (hwndMDIClient, WM_MDITILE, 0, 0L);
      break;

   case IDM_WINDOWCASCADE:
      /* Cascade MDI windows */
      SendMessage (hwndMDIClient, WM_MDICASCADE, 0, 0L);
      break;

   case IDM_WINDOWICONS:
      /* Auto - arrange MDI icons */
      SendMessage (hwndMDIClient, WM_MDIICONARRANGE, 0, 0L);
      break;

   case IDM_WINDOWCLOSEALL:
      /* Abort operation if something is not saved */
      if (!QueryCloseAllChildren())
      break;

      CloseAllChildren();

      /* Show the window since CloseAllChildren() hides the window
       * for fewer repaints.
       */
      ShowWindow( hwndMDIClient, SW_SHOW);

      break;

   default:
      /*
      * This is essential, since there are frame WM_COMMANDS generated
      * by the MDI system for activating child windows via the
      * window menu.
      */
      DefFrameProc(hwnd, hwndMDIClient, WM_COMMAND, wParam, 0L);
   }
}

/////////////////////////////////////////////////////////////////////////////////
 *                                                                          *
 *  FUNCTION   : MPError ( hwnd, flags, id, ...)                            *
 *                                                                          *
 *  PURPOSE    : Flashes a Message Box to the user. The format string is    *
 *       taken from the STRINGTABLE.                                        *
 *                                                                          *
 *  RETURNS    : Returns value returned by MessageBox() to the caller.      *
 *                                                                          *
/////////////////////////////////////////////////////////////////////////////
short FAR CDECL
MPError( HWND hwnd, UINT bFlags, UINT id, ...)
{
   zCHAR sz[160];
   zCHAR szFmt[128];

   LoadString (hInstance, id, szFmt, sizeof (szFmt));
   wvsprintf (sz, szFmt, (LPSTR)(&id + 1));
   LoadString (hInstance, IDS_APPNAME, szFmt, sizeof (szFmt));
   return MessageBox (hwndFrame, sz, szFmt, bFlags);
}


/////////////////////////////////////////////////////////////////////////////////
 *                                                                          *
 *  FUNCTION   : QueryCloseAllChildren()                                    *
 *                                                                          *
 *  PURPOSE    : Asks the child windows if it is ok to close up app. Nothing*
 *       is destroyed at this point. The z-order is not changed.            *
 *                                                                          *
 *  RETURNS    : TRUE - If all children agree to the query.                 *
 *       FALSE- If any one of them disagrees.                               *
 *                                                                          *
/////////////////////////////////////////////////////////////////////////////
BOOL PASCAL
QueryCloseAllChildren( void )
{
   HWND hwndT;

   for ( hwndT = GetWindow (hwndMDIClient, GW_CHILD);
         hwndT;
         hwndT = GetWindow (hwndT, GW_HWNDNEXT) )
   {
      /* Skip if an icon title window */
      if (GetWindow (hwndT, GW_OWNER))
         continue;

      if (SendMessage (hwndT, WM_QUERYENDSESSION, 0, 0L))
         return( FALSE );
   }
   return( TRUE );
}

/////////////////////////////////////////////////////////////////////////////////
 *                                                                          *
 *  FUNCTION   : QueryCloseChild (hwnd)                                     *
 *                                                                          *
 *  PURPOSE    : If the child MDI is unsaved, allow the user to save, not   *
 *               save, or cancel the close operation.                       *
 *                                                                          *
 *  RETURNS    : TRUE  - if user chooses save or not save, or if the file   *
 *                       has not changed.                                   *
 *       FALSE - otherwise.                                                 *
 *                                                                          *
/////////////////////////////////////////////////////////////////////////////
BOOL PASCAL
QueryCloseChild( HWND hWnd )
{
   zCHAR    sz[ 64 ];
   register int i;

   HWINDOW hWindow;
   HBUFFER hBufCur = BufQCurrentBuffer();
   HBUFFER hBuffer;
   HWND    hWndEdit;
   BOOL    modified = FALSE;

   hWndEdit = (HWND)GetWindowWord (hWnd, GWW_HWNDEDIT);
   hWindow = CWDLLFindWinNode( hWndEdit );
   if (hWindow)
   {
      hBuffer = WinQAttached( hWindow );
      if (hBuffer)
      {
         BufSwitchBuffer( hBuffer );
         modified = BufQModified();
         BufSwitchBuffer( hBufCur );
         if (modified == FALSE)
            return( TRUE );
      }
   }
   else
      return( TRUE );

   GetWindowText (hWnd, sz, sizeof(sz));

   /* Ask user whether to save / not save / cancel */
   i = MPError (hWnd,
      MB_YESNOCANCEL|MB_ICONQUESTION,IDS_CLOSESAVE,
      (LPSTR)sz);

   switch (i)
   {
   case IDYES:
      /* User wants file saved */
      if (hBuffer)
      {
         BufSwitchBuffer( hBuffer );
         BufWrite();
         BufSwitchBuffer( hBufCur );
      }
      break;

   case IDNO:
      /* User doesn't want file saved */
      break;

   default:
      /* We couldn't do the messagebox, or not ok to close */
      return( FALSE );
   }
   return( TRUE );
}

/////////////////////////////////////////////////////////////////////////////////
 *                                                                          *
 *  FUNCTION   : AboutDlgProc ( hwnd, msg, wParam, lParam )                 *
 *                                                                          *
 *  PURPOSE    : Dialog function for the About MultiPad... dialog.          *
 *                                                                          *
/////////////////////////////////////////////////////////////////////////////
BOOL FAR PASCAL __export
AboutDlgProc ( HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
   switch (msg)
   {
   case WM_INITDIALOG:
      /* nothing to initialize */
      break;

   case WM_COMMAND:
      switch (wParam)
      {
      case IDOK:
      case IDCANCEL:
         EndDialog(hwnd, 0);
         break;

      default:
         return( FALSE );
      }
      break;

   default:
      return( FALSE );
   }

   return( TRUE );
}


HWND
GetHWND_FromCW_Window( HWINDOW hWindow )
{
   HWINDOW hCur;
   HWND    hWnd;

   hCur = WinQCurrentWindow();

   WinSwitchWindow( hWindow );
   hWnd = WinQHCurrent();
   WinSwitchWindow( hCur );
   return( hWnd );
}
#endif

zOPER_EXPORT zSHORT OPERATION
InitMenu( zVIEW   vSubtask )
{
#if 0
   static zSHORT k = 0;

   if ( k % 10 == 0 )
   {
      zPCHAR pch = (zPCHAR)
         GetOptionState( vSubtask, "Window3", zOPTION_STATUS_TEXT );
      TraceLineS( "Window3 text: ", pch );
      SetOptionState( vSubtask, "Window3",
                      zOPTION_STATUS_TEXT, (zLONG) "HowBoutThis" );
      k = 0;
   }
   else
   if ( k % 10 == 1 )
   {
      SetOptionState( vSubtask, "Window3", zOPTION_STATUS_CHECKED, TRUE );
   }
   else
   if ( k % 10 == 2 )
   {
      SetOptionState( vSubtask, "Window3", zOPTION_STATUS_ENABLED, FALSE );
   }
   else
   if ( k % 10 == 3 )
   {
      SetOptionState( vSubtask, "Window3", zOPTION_STATUS_VISIBLE, FALSE );
   }
   else
   if ( k % 10 == 4 )
   {
      SetOptionState( vSubtask, "Window3", zOPTION_STATUS_VISIBLE, TRUE );
   }
   else
   if ( k % 10 == 5 )
   {
      SetOptionState( vSubtask, "Windows", zOPTION_STATUS_VISIBLE, FALSE );
   }
   else
   if ( k % 10 == 6 )
   {
      SetOptionState( vSubtask, "Windows", zOPTION_STATUS_VISIBLE, TRUE );
   }
   else
   if ( k % 10 == 7 )
   {
      SetOptionState( vSubtask, "Window2", zOPTION_STATUS_VISIBLE, FALSE );
   }
   else
   if ( k % 10 == 8 )
   {
      SetOptionState( vSubtask, "Window2", zOPTION_STATUS_VISIBLE, TRUE );
   }
   else
   if ( k % 10 == 9 )
   {
      zPCHAR pch = (zPCHAR)
         GetOptionState( vSubtask, "Window3", zOPTION_STATUS_TEXT );
      TraceLineS( "Window3 text: ", pch );
      SetOptionState( vSubtask, "Window3", zOPTION_STATUS_ENABLED, TRUE );
      SetOptionState( vSubtask, "Window3",
                      zOPTION_STATUS_TEXT, (zLONG) "Window3" );
   }


   k++;
#endif
   return( 0 );
}


zOPER_EXPORT zSHORT OPERATION
TrackPopup( zVIEW   vSubtask )
{
   CreateTrackingPopupMenu( vSubtask, "Hilite123", -1, 0, FALSE, FALSE );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
InitPopup( zVIEW   vSubtask )
{
   SetPopupOptionState( vSubtask, "New1",
                        zOPTION_STATUS_TEXT, (zLONG) "Phil" );
   return( 0 );
}

//===========================================================================
//===========================================================================
//===========================================================================
zOPER_EXPORT zSHORT OPERATION
RemotePrint( zVIEW  vSubtask )
{
   zCHAR szReportName[ zMAX_FILENAME_LTH ];
   zVIEW vAccount;

   szReportName[ 0 ] = 0;
   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   PrintReportToPDF( vSubtask, vAccount, "CUSTOMER", "AccountR", "dks", 8 + 32 );
   return( 0 );

   OpenRemoteReportFromClient( vSubtask, "CUSTOMER", "AccountR",
                               szReportName,
                               8 + zREPORT_MULTIPLE_ROOT + 32, "ACCOUNT" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
DoTheReport( zVIEW  vSubtask )
{
// PrintCtrl( vSubtask, "My Title", "GridListAccount", 0, 0, 0 );
// return( 0 );
   zVIEW vAccount;

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   GenerateReportToHTML( vSubtask, vAccount, "CUSTOMER", "AccountX",
                         "AccountX", "CSS_FileName", 0 );
   FormatWebReport( vAccount, "CUSTOMER", vSubtask, "AccountAccount", "AccountAccount",
                    1 + 8 + 4 + 16 + zREPORT_PRINT2PDF ); // Drive by ReportDef instead of SourceOI

// PrintReportToCtrl( vSubtask, vAccount, "CUSTOMER",
//                    "AccountR", "", 0, "Print" );
   return( -1 );

   zBOOL bPrintPreview;
   zCHAR  szReturnTag[ 34 ];

   GetLastCommandTag( vSubtask, szReturnTag );
   if ( zstrcmp( szReturnTag, "PrintPreview" ) == 0 )
   {
      bPrintPreview = TRUE;

      // This routine prints a report on the current ERD in memory.
      GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
//    GetViewByName( &vLPLR, "TaskLPLR", vSubtask, zLEVEL_TASK );

      // Set up current DateTime for report.
//    SysGetDateTime( szTimeStamp );
//    SetAttributeFromString( vLPLR, "LPLR", "CurrentDateTime", szTimeStamp );

      FormatSubobjectOnDoc( vAccount, "CUSTOMER", vSubtask,
                            "AccountR", 1 + 8 + 4 + 16 ); //+ 32 );
   }
   else
   {
      zCHAR szReportName[ zMAX_FILENAME_LTH ];

      szReportName[ 0 ] = 0;
      bPrintPreview = TRUE;
      OpenReport( vSubtask, "account", "PrintPage",
                  bPrintPreview, TRUE, TRUE, TRUE,
                  "AccountR", "CUSTOMER" );
   }

   return( -1 );
}

zOPER_EXPORT zSHORT OPERATION
Count( zVIEW  vSubtask )
{
   PrintCtrl( vSubtask, "My Title", "TAG", 0, 0, 0 );
   return( 0 );
}

#define zESCAPE_STEP 100

int zOPER_EXPORT OPERATION
PrintPage( zVIEW vSubtask, zSHORT nPageNbr,
           zSHORT nPageWidth, zSHORT nPageHeight )
{
#if 1

   zCHAR  szBuffer[ 256 ];
   zSHORT nExtentX;
   zSHORT nExtentY;
   long   lEscapement = 3600;
   long   lFontSize, k;

// lEscapement = (nPageNbr % 4) * 900;
   zstrcpy( szBuffer, "Try this" );
   for ( lFontSize = 324; lFontSize < 400; lFontSize += 80 )
   {
      SetCtrlState( vSubtask, "Vertical", 98, lFontSize );
      lEscapement = 3600 - zESCAPE_STEP;
   // lEscapement = 900 - zESCAPE_STEP;
      for ( k = 0; k < (3600 / zESCAPE_STEP) + 1; k++ )
   // for ( k = 0; k < 10; k++ )
      {
         lEscapement += zESCAPE_STEP;
         if ( lEscapement > 3600 )
            lEscapement = zESCAPE_STEP;

         CreateFontForReport( vSubtask, "vertical", (zSHORT) lFontSize, TRUE, TRUE,
                              TRUE, TRUE, 0, 0, (zSHORT) lEscapement, "Arial" );
         SelectFontForReport( vSubtask, "vertical" );
         nExtentX = GetTextWidth( vSubtask, szBuffer );
         nExtentY = GetTextHeight( vSubtask, szBuffer );
         DrawTextToReport( vSubtask, 0, szBuffer, 600, 800,
                           1400, 1600, 0, 0, 0, lEscapement, 0 );

         DrawRectangleToReport( vSubtask, 0, 600, 800,
                                1400, 1600, 2, 0, 255, 3, 0 );
      // SysWait( 125 );     // 1/8 second
         SysWait( 50 );      // 1/20 second
      // SysWait( 1000 );    // 1 second
      }
   }

   return( 1 );

#else

   zSHORT nExtentX;
   zSHORT nExtentY;
   zCHAR szBuffer[ 80 ];

   // Do the text stuff
   const char* lines[ 6 ] =
   {
      "*L1: (x) This small text starts at DC origin*",
      "*L2: Text only (1 page of 6 lines)  This large text should be centered*",
      "*L3: This small text should be right-justified*",
      "*L4: This bold text should be on the bottom of the page*",
      "*L5: L4 might not be displayed if driver gives wrong size information*",
      "*L6: This line runs vertically.*"
   };

   TraceLineI( "Page Width = ", nPageWidth );
   TraceLineI( "Page Height = ", nPageHeight );

   CreateFontForReport( vSubtask, "small", -18,
                        FALSE, FALSE, FALSE, FALSE, 0, 0, 0, 0 );
   CreateFontForReport( vSubtask, "big", -24,
                        TRUE, FALSE, FALSE, FALSE, 0, 0, 0, 0 );
   CreateFontForReport( vSubtask, "bold", -34,
                        TRUE, FALSE, FALSE, FALSE, 0, 0, 0, 0 );
   CreateFontForReport( vSubtask, "italic", -18,
                        FALSE, TRUE, FALSE, FALSE, 0, 0, 0, 0 );
   CreateFontForReport( vSubtask, "vertical", -24,
                        TRUE, FALSE, FALSE, FALSE, 0, 0, 2700, 0 );
   // top of the page
   strcpy( szBuffer, lines[ 0 ] );
   szBuffer[ 6 ] = (char) ('0' + nPageNbr);
   SelectFontForReport( vSubtask, "small" );
   nExtentX = GetTextWidth( vSubtask, lines[ 0 ] );
   nExtentY = GetTextHeight( vSubtask, lines[ 0 ] );
   DrawTextToReport( vSubtask, 0, szBuffer, 0, 0, nExtentX, nExtentY,
                     0, 0, 0, 0, 0 );

   // centered
   SelectFontForReport( vSubtask, "big" );
   nExtentX = GetTextWidth( vSubtask, lines[ 1 ] );
   nExtentY = GetTextHeight( vSubtask, lines[ 1 ] );
   DrawTextToReport( vSubtask, 0, lines[ 1 ],
                     (nPageWidth / 2) - (nExtentX / 2),
                     (nPageHeight / 2) - (nExtentY / 2),
                     (nPageWidth / 2) - (nExtentX / 2) + nExtentX,
                     (nPageHeight / 2) - (nExtentY / 2) + nExtentY,
                     0, 0, 0, 0, 0 );

   // right justified, above vertical center
   SelectFontForReport( vSubtask, "small" );
   nExtentX = GetTextWidth( vSubtask, lines[ 2 ] );
   nExtentY = GetTextHeight( vSubtask, lines[ 2 ] );
   DrawTextToReport( vSubtask, 0, lines[ 2 ],
                     nPageWidth - nExtentX,
                     (nPageHeight / 2) - (5 * nExtentY),
                     nPageWidth,
                     (nPageHeight / 2) - (5 * nExtentY) + nExtentY,
                     0, 0, 0, 0, 0 );

   // bottom of page
   SelectFontForReport( vSubtask, "bold" );
   nExtentX = GetTextWidth( vSubtask, lines[ 3 ] );
   nExtentY = GetTextHeight( vSubtask, lines[ 3 ] );
   DrawTextToReport( vSubtask, 0, lines[ 3 ], 0,
                     nPageHeight - nExtentY,
                     nExtentX, nPageHeight,
                     0, 0, 0, 0, 0 );

   // below vertical center, left side
   SelectFontForReport( vSubtask, "italic" );
   nExtentX = GetTextWidth( vSubtask, lines[ 4 ] );
   nExtentY = GetTextHeight( vSubtask, lines[ 4 ] );
   DrawTextToReport( vSubtask, 0, lines[ 4 ], 0,
                     (nPageHeight / 2) + (5 * nExtentY),
                     nExtentX,
                     (nPageHeight / 2) + (5 * nExtentY) + nExtentY,
                     0, 0, 0, 0, 0 );

   // right of center line, top, text rotated 270 degrees (vertical)
   SelectFontForReport( vSubtask, "vertical" );
   nExtentX = GetTextWidth( vSubtask, lines[ 5 ] );
   nExtentY = GetTextHeight( vSubtask, lines[ 5 ] );
   DrawTextToReport( vSubtask, 0, lines[ 5 ],
                      (nPageWidth / 2), 30, (nPageWidth / 2) + nExtentX,
                      400 + nExtentY,
                      0, 0, 0, 0, 0 );
#if 0
  TPoint p( pageSize.cx / 4, pageSize.cy / 4 );
  dc.SelectStockObject( HOLLOW_BRUSH );

  dc.Rectangle( p.x, p.y, pageSize.cx-p.x, pageSize.cy-p.y );
  dc.Rectangle( 0, 0, pageSize.cx, pageSize.cy );
  dc.MoveTo( 0, 0 );
  dc.LineTo( pageSize.cx, pageSize.cy );
  dc.MoveTo( pageSize.cx, 0 );
  dc.LineTo( 0, pageSize.cy );
  dc.MoveTo( pageSize.cx / 2, -50 );
  dc.LineTo( pageSize.cx / 2, pageSize.cy + 50 );

  dc.Ellipse( pageSize.cx / 2 - pageSize.cx / 4,
              pageSize.cy / 2 - pageSize.cy / 4,
              pageSize.cx / 2 + pageSize.cx / 4,
              pageSize.cy / 2 + pageSize.cy / 4 );
#endif

   // Do the graphics stuff if this band can handle it
   nExtentX = nPageWidth / 4;
   nExtentY = nPageHeight / 4;

   DrawRectangleToReport( vSubtask, 0, nExtentX, nExtentY,
                          nPageWidth - nExtentX,
                          nPageHeight - nExtentY, 1, 0, 0, 0, 0 );
   DrawRectangleToReport( vSubtask, 0, 0, 0, nPageWidth, nPageHeight,
                          2, 0, 0, 0, 0 );

   DrawLineToReport( vSubtask, 0, 0, 0, nPageWidth, nPageHeight, 2, 0, 0, 0 );
   DrawLineToReport( vSubtask, 0, nPageWidth, 0, 0, nPageHeight, 1, 0, 0, 0 );
   DrawLineToReport( vSubtask, 0, nPageWidth / 2, -50,
                     nPageWidth / 2, nPageHeight + 50, 1, 0, 0, 0 );

   DrawEllipseToReport( vSubtask, 0, nPageWidth / 2 - nPageWidth / 4,
                        nPageHeight / 2 - nPageHeight / 4,
                        nPageWidth / 2 + nPageWidth / 4,
                        nPageHeight / 2 + nPageHeight / 4, 1, 0, 0, 0 );

   return( 0 );
#endif
}

zOPER_EXPORT zSHORT OPERATION
TabPreChange( zVIEW vSubtask )
{
   zCHAR szTag[ 33 ];

#if 0
   static zSHORT nCnt = 0;
   nCnt++;
   if ( nCnt % 2 )
      return( -1 );
   else
      return( 0 );
#endif
   TAB_GetActiveSubTab( vSubtask, "TagTab", szTag );
   TraceLineS( "TabPreChange ActiveTab: ", szTag );
   TAB_SetSubTabColors( vSubtask, "TagTab", szTag, zRGB_BLACK, zRGB_DARKGRAY );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
TabPostChange( zVIEW vSubtask )
{
   zCHAR szTag[ 33 ];

   TAB_GetActiveSubTab( vSubtask, "TagTab", szTag );
   TraceLineS( "TabPostChange ActiveTab: ", szTag );
   TAB_SetSubTabColors( vSubtask, "TagTab", szTag, zRGB_BLUE, zRGB_PALEGRAY );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SwitchText( zVIEW   vSubtask )
{
   long k = 3400;
   long i, j;

   for ( i = 9; i < 80; i += 10 )
   {
      SetCtrlState( vSubtask, "Vertical", 98, i );
      for ( j = 0; j <= 40; j++ )
      {
         k += 100;
         if ( k >= 3600 )
            k = 0;

         SetCtrlState( vSubtask, "Vertical", 99, k );
         RefreshCtrl( vSubtask, "Vertical" );
         SetWindowState( vSubtask, zWINDOW_STATUS_UPDATE, 0 );
         SysWait( 100 );     // 1/10 second
      }
   }

   SetCtrlState( vSubtask, "Vertical", 99, 0 );
   RefreshCtrl( vSubtask, "Vertical" );
   SetWindowState( vSubtask, zWINDOW_STATUS_UPDATE, 0 );

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
AfterUpdate( zVIEW   vSubtask )
{
   return( 0 );
   long k = 3400;
   long i, j;

   for ( i = 9; i < 80; i += 10 )
   {
      SetCtrlState( vSubtask, "Vertical", 98, i );
      for ( j = 0; j <= 40; j++ )
      {
         k += 100;
         if ( k >= 3600 )
            k = 0;

         SetCtrlState( vSubtask, "Vertical", 99, k );
         RefreshCtrl( vSubtask, "Vertical" );
         SetWindowState( vSubtask, zWINDOW_STATUS_UPDATE, 0 );
         SysWait( 125 );     // 1/8 second
      }
   }

   SetCtrlState( vSubtask, "Vertical", 99, 0 );
   RefreshCtrl( vSubtask, "Vertical" );
   SetWindowState( vSubtask, zWINDOW_STATUS_UPDATE, 0 );

   return( 0 );
}

#define PIT_COMBO 0  //PIT = property item type
#define PIT_EDIT  1
#define PIT_COLOR 2
#define PIT_FONT  3
#define PIT_FILE  4

zVIEW  g_vSubtaskFrame0 = 0;
zVIEW  g_vSubtaskFrame1 = 0;
zVIEW  g_vSubtaskFrame2 = 0;
zVIEW  g_vSubtaskFrame3 = 0;

#include <shellapi.h>

zOPER_EXPORT zSHORT OPERATION
F1( zVIEW   vSubtask )
{
#if 1

   OperatorPrompt( vSubtask, "Test Icon", "INFORMATION", FALSE, zBUTTONS_OK, 0, zICON_INFORMATION );
   OperatorPrompt( vSubtask, "Test Icon", "QUESTION   ", FALSE, zBUTTONS_OK, 0, zICON_QUESTION );
   OperatorPrompt( vSubtask, "Test Icon", "EXCLAMATION", FALSE, zBUTTONS_OK, 0, zICON_EXCLAMATION );
   OperatorPrompt( vSubtask, "Test Icon", "ERROR      ", FALSE, zBUTTONS_OK, 0, zICON_ERROR );
   OperatorPrompt( vSubtask, "Test Icon", "STOP       ", FALSE, zBUTTONS_OK, 0, zICON_STOP );
// CopyOperationCode( vSubtask, "dks.vml", "Account.vml", "BuildScheduleList" );

// WindowsShellExecute( vSubtask,
//                  "C:\\Program Files\\Apache Group\\Tomcat 5.5\\webapps\\ROOT\\zencas\\About ENC.html",
//                  "open",
//                  "" );
#else
   zPCHAR pch;
   zCHAR szHTML[ 512 ];
   zCHAR szExec[ 1024 ];
   zSHORT nRC;


   nRC = DetermineRegKeyValue( 0, "htmlfile\\shell\\opennew\\command",
                               szHTML, sizeof( szHTML ) );
   TraceLineS( "Hotkey Operation F1 htmlfile: ", szHTML );
   pch = zstrstr( szHTML, "%1" );
   if ( pch )
      pch[ 1 ] = 's';
   else
      zstrcat( szHTML, " %s" );

   zsprintf( szExec, szHTML, "C:\\Program Files\\Apache Group\\Tomcat 5.5\\webapps\\ROOT\\zencas\\About ENC.html" );
   StartTask( vSubtask, szExec, SW_SHOWNORMAL );
// StartTask( vSubtask, "C:\\Program Files\\Internet Explorer\\IEXPLORE.EXE C:\\Program Files\\Apache Group\\Tomcat 5.5\\webapps\\ROOT\\zencas\\About ENC.html", SW_SHOWNORMAL );

#endif

// SetFocusToCtrl( vSubtask, "FirstName" );
// SetCtrlText( vSubtask, "FirstName", "F1" );
   ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

zSHORT
MixCaseName( zPCHAR pchName )
{
   zCHAR  szChar[ 2 ];
   zPCHAR pch;
   zBOOL  bSuffix = FALSE;
   zSHORT nBlankFound = 0;
   zSHORT nLth;
   zSHORT k;
   zSHORT j;

   // Eliminate leading and trailing blanks.
   pch = pchName + strspn( pchName, " " );
   if ( pch > pchName )
      zstrcpy( pchName, pch );

   nLth = zstrlen( pchName );
   while ( nLth && pchName[ nLth - 1 ] == ' ' )
   {
      nLth--;
      pchName[ nLth ] = 0;
   }

   SysTranslateString( pchName, 'L' );  // force string to lower case

   szChar[ 1 ] = 0;  // null terminate getting ready for potential call to SysTranslateString
   szChar[ 0 ] = pchName[ 0 ];
   SysTranslateString( szChar, 'U' );
   pchName[ 0 ] = szChar[ 0 ];

   for ( k = 1; k < nLth; k++ )
   {
      // Eliminate multiple consecutive blanks.
      if ( pchName[ k ] == ' ' )
      {
         j = k;
         while ( pchName[ j + 1 ] == ' ' )
         {
            j++;
            nLth--;
         }

         if ( j > k )
            zstrcpy( pchName + k, pchName + j );
      }

      if ( pchName[ k ] != ' ' )
      {
         if ( pchName[ k - 1 ] == ' ' )
         {
            nBlankFound++;
            szChar[ 0 ] = pchName[ k ];
            SysTranslateString( szChar, 'U' );
            pchName[ k ] = szChar[ 0 ];
            if ( szChar[ 0 ] == 'I' || szChar[ 0 ] == 'V' )
               bSuffix = TRUE;
            else
               bSuffix = FALSE;
         }
         else
         {
            if ( nBlankFound > 1 && bSuffix )  // checking for II or III or IV or V or VI or VII or VIII
            {
               if ( (pchName[ k ] == 'i' || pchName[ k ] == 'v') &&
                    (pchName[ k + 1 ] == 0 || pchName[ k + 1 ] == 'i' || pchName[ k + 1 ] == 'v') )
               {
                  szChar[ 0 ] = pchName[ k ];
                  SysTranslateString( szChar, 'U' );
                  pchName[ k ] = szChar[ 0 ];
               }
               else
                  bSuffix = FALSE;
            }
            else
            {
               bSuffix = FALSE;  // can't start with suffix
            }
         }
      }
   }

   return( nBlankFound );
}

zOPER_EXPORT zSHORT OPERATION
F2( zVIEW   vSubtask )
{
   zCHAR   szName[ 128 ];

   TraceLineS( "Hotkey Operation ", "F2" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   GetCtrlText( vSubtask, "Address", szName, sizeof( szName ) );
// SysMessageBox( vSubtask, "Address", szName, TRUE );
   MixCaseName( szName );
   SetCtrlText( vSubtask, "Address", szName );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

#if 1

zOPER_EXPORT zSHORT OPERATION
F3( zVIEW   vSubtask )
{
   zCHAR szEmail[ 512 ];
   zPCHAR pchBody;
   zSHORT nRC;
   zLONG  hFileDocument;
   zLONG  lDocumentLth;
   zLONG  lConnection;
   nRC = DetermineRegKeyValue( 0, "mailto\\shell\\open\\command",
                               szEmail, sizeof( szEmail ) );
   TraceLine( "Hotkey Email Operation %s (RC=%d)", szEmail, nRC );

   hFileDocument = SysOpenFile( vSubtask,
                             // "c:\\lplr\\zencas\\docs\\output\\req_test.htm",
                                "c:\\10e\\a\\tz\\student.html",
                                COREFILE_READ );
   if ( hFileDocument < 0 )
   {
      TraceLineS( "Can't open Document file: ",
                  "c:\\lplr\\zencas\\docs\\output\\req_test.htm" );
      IssueError( vSubtask, 0, 0, "Can't open Document file." );
      return( -1 );
   }

   TraceLineS( "StartEmailClient using Document file: ",
            // "c:\\lplr\\zencas\\docs\\output\\req_test.htm" );
               "c:\\10e\\a\\tz\\student.html" );
   lDocumentLth = GetFileSize( (HANDLE) hFileDocument, 0 );

   // Exit if the document file is empty.
   if ( lDocumentLth == 0 )
   {
      SysCloseFile( vSubtask, hFileDocument, 0 );
      return( 0 );
   }

   DrAllocTaskMemory( (zCOREMEM) &pchBody, lDocumentLth + 8000 );
   SysReadFile( vSubtask, hFileDocument, pchBody, lDocumentLth );
   SysCloseFile( vSubtask, hFileDocument, 0 );
#if 0
   CreateSmtpMessage( zLONG  lSmtpConnection,
                      zPCHAR pchSmtpServer,
                      zPCHAR pchSender,
                      zPCHAR pchRecipient,
                      INT    nRecipientCnt,
                      zPCHAR pchSubject,
                      INT    nMimeType,      // 1 - text;  2 - html
                      zPCHAR pchBody,
                      INT    nHasAttachment, // 0 - No;  1 - Yes
                      zPCHAR pchAttachFile,
                      zPCHAR pchUserName,
                      zPCHAR pchPassword )
#endif

#if 0

   lConnection = CreateSmtpConnection( "smtp.juno.com" );
   if ( lConnection >= 0 )
   {
      nRC = CreateSmtpMessage( lConnection,
                               "smtp.juno.com",
                               "arksoft@juno.com",
                               "arksoft@comcast.net",
                               1,
                               "Subject Line",
                               2,     // 1-Text, 2-HTML
                               pchBody,
                               0,    // no attachment
                               "",   // blank attachment file name
                               "arksoft",
                               "djrrkkk" );
      TraceLineI( "CreateSmtpMessage1 RC = ", nRC );
      nRC = CreateSmtpMessage( lConnection,
                               "smtp.comcast.net",
                               "arksoft@juno.com",
                               "arksoft@juno.com",
                               1,
                               "Subject Line",
                               2,     // 1-Text, 2-HTML
                               pchBody,
                               0,    // no attachment
                               "",   // blank attachment file name
                               "arksoft",
                               "Rachel16" );
      TraceLineI( "CreateSmtpMessage2 RC = ", nRC );


      CloseSmtpConnection( lConnection );
   }

#else

   lConnection = CreateSeeConnection( "smtp.comcast.net",
                                      "arksoft@comcast.net",
                                      0,    // Smtp UserName
                                      0 );  // Smtp Password
   if ( lConnection )
   {
      nRC = CreateSeeMessage( lConnection,
                              "smtp.comcast.net",
                              "arksoft@comcast.net",
                              "arksoft@juno.com",
                           // "don_g_christensen@yahoo.com",
                           // "donald.christensen@enc.edu",
                           // "gardnere@enc.edu",
                              "", "",
                              "Subject Line",
                              2,     // 1-Text, 2-HTML
                           // "@c:\\lplr\\zencas\\docs\\output\\req_test.htm",
                              "@c:\\10e\\a\\tz\\SendHTML.htm",
                           // "@c:\\10e\\a\\tz\\student.html",
                           // "Here is your schedule for the 2004-2005 year at Eastern Nazarene College",
                              "Alternate DKS Text",
                              "c:\\10e\\a\\tz\\image1.gif;c:\\10e\\a\\tz\\image2.gif",  // embedded images
                           // "", // embed images
                              0,  // HasAttachment ... 0 - No;  1 - Yes
                           // "c:\\10e\\a\\tz\\test1.txt;c:\\10e\\a\\tz\\test2.txt",  // attachments
                           // "c:\\10e\\a\\tz\\student.html",  // html attachment
                              "",  // no attachment
                              "Arksoft",
                              "Rachel16" );
      TraceLineI( "CreateSeeMessage RC = ", nRC );

      CloseSeeConnection( lConnection );
   }

#endif

   DrFreeTaskMemory( pchBody );

// SetFocusToCtrl( vSubtask, "FirstName" );
// SetCtrlText( vSubtask, "FirstName", "firstname" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
// StartEmailClient( "Arksoft@Juno.com", "this is the subject",
//                   "copyto@copy.com", "blindcopy@blindcopy.com",
//                   "this is the body\r\nsecond line\r\n\r\r"
//                      "space( ) period(.) colon(:) semi-colon(;) "
//                      "exclamation(!) question(?)",
//                   "c:\\lplr\\zencas\\docs\req_test.htm", "", 0 );
   return( 0 );
}

#else

zOPER_EXPORT zSHORT OPERATION
F3( zVIEW   vSubtask )
{
   zCHAR szEmail[ 512 ];
   zPCHAR pchBody;
   zSHORT nRC;
   zLONG  hFileDocument;
   zLONG  lDocumentLth;

   nRC = DetermineRegKeyValue( 0, "mailto\\shell\\open\\command",
                               szEmail, sizeof( szEmail ) );
   TraceLine( "Hotkey Email Operation %s (RC=%d)", szEmail, nRC );

   hFileDocument = SysOpenFile( vSubtask,
                                "c:\\lplr\\zencas\\docs\\output\\req_test.htm",
                                COREFILE_READ );
   if ( hFileDocument < 0 )
   {
      TraceLineS( "Can't open Document file: ",
                  "c:\\lplr\\zencas\\docs\\output\\req_test.htm" );
      IssueError( vSubtask, 0, 0, "Can't open Document file." );
      return( -1 );
   }

   TraceLineS( "StartEmailClient using Document file: ",
               "c:\\lplr\\zencas\\docs\\output\\req_test.htm" );
   lDocumentLth = GetFileSize( (HANDLE) hFileDocument, 0 );

   // Exit if the document file is empty.
   if ( lDocumentLth == 0 )
   {
      SysCloseFile( vSubtask, hFileDocument, 0 );
      return( 0 );
   }

   DrAllocTaskMemory( (zCOREMEM) &pchBody, lDocumentLth + 8000 );
   SysReadFile( vSubtask, hFileDocument, pchBody, lDocumentLth );
   SysCloseFile( vSubtask, hFileDocument, 0 );

   StartEmailClient( "rrkkk@juno.com",  // comma separated list
                     "this is the subject",
                     "copyto@copy.com", // comma separated list
                     "blindcopy@blindcopy.com",    // comma separated list
                     pchBody,
                     "",             // cpcAttachment,
                     "",             // cpcEmailClient,
                     0 );            // lFlags          // reserved

   DrFreeTaskMemory( pchBody );

// SetFocusToCtrl( vSubtask, "FirstName" );
// SetCtrlText( vSubtask, "FirstName", "firstname" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
// StartEmailClient( "Arksoft@Juno.com", "this is the subject",
//                   "copyto@copy.com", "blindcopy@blindcopy.com",
//                   "this is the body\r\nsecond line\r\n\r\r"
//                      "space( ) period(.) colon(:) semi-colon(;) "
//                      "exclamation(!) question(?)",
//                   "c:\\lplr\\zencas\\docs\req_test.htm", "", 0 );
   return( 0 );
}

#endif

zOPER_EXPORT zSHORT OPERATION
F4( zVIEW   vSubtask )
{
   TraceLineS( "Hotkey Operation ", "F4" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", "F4" );
   MapPointStart( );
   MapPointShowApplication( TRUE );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
F5( zVIEW   vSubtask )
{
   static short k = 0;

   k++;
   LB_SortByColumn( vSubtask, "AutoWidths", 1, k % 4 - 1 );
   TraceLineS( "Hotkey Operation ", "F5" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", "F5" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
F6( zVIEW   vSubtask )
{
   zCHAR szText[ 256 ];

   TB_GetItemText( vSubtask, "ToolBar", "Fourth", szText, sizeof( szText ) - 1 );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", szText );

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
F7( zVIEW   vSubtask )
{
   TraceLineS( "Hotkey Operation ", "F7" );
// ListSubtasks( vSubtask );
   MapPointStop( );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
F8( zVIEW   vSubtask )
{
   zCHAR szStreet[ 256 ];
   zCHAR szCity[ 256 ];
   zCHAR szOtherCity[ 256 ];
   zCHAR szRegion[ 256 ];
   zCHAR szPostalCode[ 256 ];

   TraceLineS( "Hotkey Operation ", "F8" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", "F8" );
   MapPointValidateAddress( szStreet, szCity, szOtherCity,
                       szRegion, szPostalCode,
                       "One Microsoft Way, Redmond, WA 98033", 0 );
   MapPointSetPushPin( szStreet, szCity, szOtherCity,
                       szRegion, szPostalCode, "", 1, 1 );
   MapPointValidateAddress( szStreet, szCity, szOtherCity,
                       szRegion, szPostalCode,
                       "Samoset Ave., 02169", 0 );
   MapPointSetPushPin( szStreet, szCity, szOtherCity,
                       szRegion, szPostalCode, "", 2, 0 );
   MapPointValidateAddress( szStreet, szCity, szOtherCity,
                            szRegion, szPostalCode,
                            "23 Faxon Rd, Quincy, MA 02171", 0 );
   MapPointSetPushPin( szStreet, szCity, szOtherCity,
                       szRegion, szPostalCode, "", 3, 0 );

   // ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
F9( zVIEW   vSubtask )
{
   static zBOOL bVisible = FALSE;

   bVisible = !bVisible;
   TraceLineS( "Hotkey Operation ", "F9" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", "F9" );
   SetCtrlState( vSubtask, "SSN", zCONTROL_STATUS_VISIBLE, bVisible );
   if ( bVisible )
      RefreshCtrl( vSubtask, "SSN" );

   ZDecimal dLat1;
   dLat1 = 47.60005;
   ZDecimal dLon1;
   dLon1 = -122.33613;
   ZDecimal dLat2;
   dLat2 = 39.95511;
   ZDecimal dLon2;
   dLon2 = -75.16840;
   ZDecimal dDist;
   dDist = 50;
   zCHAR szDecimal[ 32 ];

   zDECIMAL dDist1 = GetDistance( dLat1, dLon1, dLat2, dLon2, 1 );
   SysConvertDecimalToString( &dDist1, szDecimal, 6 );
   TraceLineS( "Dist1 = ", szDecimal );

   zDECIMAL dDist2 = GetDistance( dLat1, dLon1, dLat2, dLon2, 2 );
   SysConvertDecimalToString( &dDist2, szDecimal, 6 );
   TraceLineS( "Dist2 = ", szDecimal );
   zDECIMAL dDist3 = GetDistance( dLat1, dLon1, dLat2, dLon2, 4 );
   SysConvertDecimalToString( &dDist3, szDecimal, 6 );
   TraceLineS( "Dist3 = ", szDecimal );

   zDECIMAL dSouthLatitude;
   zDECIMAL dEastLongitude;
   zDECIMAL dNorthLatitude;
   zDECIMAL dWestLongitude;
   dLat1 = 42.3713;
   dLon1 = -71.182;
   dDist = 50.0;

   zSHORT nRC = GetDistanceRectangle( &dSouthLatitude, &dEastLongitude,
                                      &dNorthLatitude, &dWestLongitude,
                                      dLat1, dLon1, dDist, 0 );

   TraceLineI( "Distance delta = ", nRC );
   dDist1 = GetDistance( dSouthLatitude, dLon1, dNorthLatitude, dLon1, 1 );
   SysConvertDecimalToString( &dDist1, szDecimal, 6 );
   TraceLineS( "LatDist = ", szDecimal );

   dDist2 = GetDistance( dLat1, dEastLongitude, dLat1, dWestLongitude, 1 );
   SysConvertDecimalToString( &dDist2, szDecimal, 6 );
   TraceLineS( "LonDist = ", szDecimal );

   SysConvertDecimalToString( &dSouthLatitude, szDecimal, 6 );
   TraceLineS( "South Latitude = ", szDecimal );
   SysConvertDecimalToString( &dEastLongitude, szDecimal, 6 );
   TraceLineS( "East Longitude = ", szDecimal );
   SysConvertDecimalToString( &dNorthLatitude, szDecimal, 6 );
   TraceLineS( "North Latitude = ", szDecimal );
   SysConvertDecimalToString( &dWestLongitude, szDecimal, 6 );
   TraceLineS( "West Longitude = ", szDecimal );

   dDist = GetDistance( dSouthLatitude, dLon1, dNorthLatitude, dLon1, 1 );
   SysConvertDecimalToString( &dDist, szDecimal, 6 );
   TraceLineS( "Latitude Dist = ", szDecimal );
   dDist = GetDistance( dLat1, dEastLongitude, dLat1, dWestLongitude, 1 );
   SysConvertDecimalToString( &dDist, szDecimal, 6 );
   TraceLineS( "Longitude Dist = ", szDecimal );

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
F10( zVIEW   vSubtask )
{
   static int k = 0;

   k++;
   SetCtrlState( vSubtask, "Termination", zCONTROL_STATUS_VISIBLE,
                 k % 2 ? TRUE : FALSE );
   SetCtrlState( vSubtask, "Termination", zCONTROL_STATUS_ENABLED,
                 k % 2 ? TRUE : FALSE );
   TraceLineS( "Hotkey Operation ", "F10" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", "F10" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
F11( zVIEW   vSubtask )
{
   TraceLineS( "Hotkey Operation ", "F11" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   SetCtrlText( vSubtask, "FirstName", "F11" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
   if ( g_vSubtaskFrame3 )
   {
      CloseFrame( g_vSubtaskFrame3 );
      g_vSubtaskFrame3 = 0;
   }
   else
   if ( g_vSubtaskFrame2 )
   {
      CloseFrame( g_vSubtaskFrame2 );
      g_vSubtaskFrame2 = 0;
   }
   else
   if ( g_vSubtaskFrame1 )
   {
      CloseFrame( g_vSubtaskFrame1 );
      g_vSubtaskFrame1 = 0;
   }
   else
   {
      CloseFrame( vSubtask );
   }

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
F12( zVIEW   vSubtask )
{
   zCHAR  szFirstName[ 34 ];
   zVIEW vAccount;

   TraceLineS( "Hotkey Operation ", "F12" );
   SetFocusToCtrl( vSubtask, "FirstName" );
   GetCtrlText( vSubtask, "FirstName", szFirstName, sizeof( szFirstName ) );
   TraceLineS( "FirstName contents ", szFirstName );

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   GetStringFromAttribute( szFirstName, vAccount, "CUSTOMER", "FirstName" );
   TraceLineS( "FirstName attribute ", szFirstName );

   SetCtrlText( vSubtask, "FirstName", "F12" );
// ED_HiliteText( vSubtask, "FirstName", 1, 0 );
// g_vSubtaskFrame3 = AttachSubtaskToPane( g_vSubtaskFrame2, "Account",
//                                         "Account", "SubWnd", 2 );
   g_vSubtaskFrame2 = AttachSubtaskToPane( g_vSubtaskFrame2, "Account",
                                           "Account", "SubWnd", 0 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
F14( zVIEW   vSubtask )
{
   zBOOL bTextMode = (zBOOL) TB_GetTextMode( vSubtask, "ToolBar" );
   TB_SetTextMode( vSubtask, "ToolBar", !bTextMode );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
Window1PostBuild( zVIEW   vSubtask )
{
// PL_AddProperty( vSubtask, "__Prop", PIT_EDIT, "Text", "InitText",
//                 "", "" );
// PL_AddProperty( vSubtask, "__Prop", PIT_COMBO, "Vertical", "CENTER",
//                 "CENTER|LEFT|RIGHT|", "" );
   return( 0 );

   SplitFrame( vSubtask, "Account", 75, 25, 3 );
   AttachSubtaskToPane( vSubtask, "Account", "Account", "TabWnd", 1 );
   AttachSubtaskToPane( vSubtask, "Account", "Account", "SubWnd", 2 );
}

zOPER_EXPORT zSHORT OPERATION
SplitPostBuild( zVIEW   vSubtask )
{
   return( 0 );
// PL_AddProperty( vSubtask, "__Prop", PIT_EDIT, "Text", "InitText",
//                 "", "" );
// PL_AddProperty( vSubtask, "__Prop", PIT_COMBO, "Vertical", "CENTER",
//                 "CENTER|LEFT|RIGHT|", "" );
   return( 0 );

   SplitFrame( vSubtask, "Account", 75, 25, 2 );
   AttachSubtaskToPane( vSubtask, "Account", "Account", "TabWnd", 2 );
}

/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

zOPER_EXPORT zSHORT OPERATION
AutoSetListBoxHeaderWidths( zVIEW   vSubtask )
{
   return( (zSHORT) LB_AutoSizeColumns( vSubtask, "AutoWidths", 0, 60, 80 ) );
}

/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

zOPER_EXPORT zSHORT OPERATION
AppointmentAlarm( zVIEW   vSubtask )
{
   zCHAR szMsg[ 512 ];

   DT_DisplayCurrentAppointment( vSubtask, "DayTimer",
                                 szMsg, sizeof( szMsg ) );
   OperatorSend( vSubtask, "AppointmentAlarm", szMsg, TRUE );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
DayTimerPostBuild( zVIEW   vSubtask )
{
   DT_SetTimeEntityAttributes( vSubtask, "DayTimer", "Event", "Subject",
                               "Message", "TimeFrom", "TimeTo",
                               "Alarm", "Type", "FullDay" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SaveAppointment( zVIEW   vSubtask )
{
   DT_UpdateCurrentAppointment( vSubtask, "DayTimer" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SaveAllAppointments( zVIEW   vSubtask )
{
   MapCtrl( vSubtask, "DayTimer" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
NewAppointment( zVIEW   vSubtask )
{
   DT_NewAppointment( vSubtask, "DayTimer", "Subject", "Message",
                      0, FALSE );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
UpdateAppointment( zVIEW   vSubtask )
{
   DT_UpdateCurrentAppointment( vSubtask, "DayTimer" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
DeleteAppointment( zVIEW   vSubtask )
{
   DT_DeleteCurrentAppointment( vSubtask, "DayTimer" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SetDefaultTextColor( zVIEW   vSubtask )
{
   zCHAR szSubTab[ 34 ];
   zLONG lTab = TAB_GetActiveSubTab( vSubtask, "TagTab", szSubTab );

   TAB_SetSubTabColors( vSubtask, "TagTab", szSubTab, zRGB_GREEN, -1 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SetSelectedTextColor( zVIEW   vSubtask )
{
   zCHAR szSubTab[ 34 ];
   zLONG lTab = TAB_GetActiveSubTab( vSubtask, "TagTab", szSubTab );

   TAB_SetSubTabColors( vSubtask, "TagTab", szSubTab, zRGB_RED, -1 );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
TabPrebuild( zVIEW  vSubtask )
{
   static  nState = 0;

   SetDefaultTextColor( vSubtask );
#if 0
   nState %= 3;

   if ( nState == 0 )
   {
      SetWindowActionBehavior( vSubtask, zWAB_ReplaceWindowWithModalWindow |
                                             zWAB_ProcessImmediateAction,
                               "ACCOUNT", "Subwnd" );
   }
   else
   if ( nState == 1 )
   {
      SetWindowActionBehavior( vSubtask, zWAB_ReplaceWindowWithModalWindow |
                                             zWAB_ProcessImmediateAction,
                               "ACCOUNT", "Bitmap" );
   }
   else
   if ( nState == 2 )
#endif
   {
      SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
   }

   nState++;

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
TabPostbuild( zVIEW  vSubtask )
{
   PlaceWindow( vSubtask, 32 );  // tile

   SetCtrlState( vSubtask, "City", zCONTROL_STATUS_ENABLED, FALSE );
// SetCtrlState( vSubtask, "TabRadio", zCONTROL_STATUS_ENABLED, FALSE );
   SetCtrlState( vSubtask, "One", zCONTROL_STATUS_TEXT_COLOR,
                 RGB( 0, 255, 0 ) );
   SetCtrlState( vSubtask, "Three", zCONTROL_STATUS_TEXT_COLOR,
                 RGB( 0, 255, 0 ) );
   SetCtrlState( vSubtask, "Center", zCONTROL_STATUS_TEXT_COLOR,
                 RGB( 0, 255, 0 ) );
   TAB_HideTab( vSubtask, "TagTab", 5, TRUE );
   SetSelectedTextColor( vSubtask );
   return( 0 );
}

/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

#if 0

   LANGID langID = GetUserDefaultLangID( );
   if ( SetCursorFirstEntityByInteger( vLang, "LangID",
                                       "Key", langID, 0 ) != zCURSOR_SET )
   {
      // Use default if cannot find language specific.
      SetCursorFirstEntityByInteger( vLang, "LangID", "Key", 0, 0 );
   }


/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

#define IDS_ONES_0              100
#define IDS_ONES_1              101
#define IDS_ONES_2              102
#define IDS_ONES_3              103
#define IDS_ONES_4              104
#define IDS_ONES_5              105
#define IDS_ONES_6              106
#define IDS_ONES_7              107
#define IDS_ONES_8              108
#define IDS_ONES_9              109
#define IDS_TEENS_10            110
#define IDS_TEENS_11            111
#define IDS_TEENS_12            112
#define IDS_TEENS_13            113
#define IDS_TEENS_14            114
#define IDS_TEENS_15            115
#define IDS_TEENS_16            116
#define IDS_TEENS_17            117
#define IDS_TEENS_18            118
#define IDS_TEENS_19            119
#define IDS_TENS_0              200
#define IDS_TENS_10             210
#define IDS_TENS_20             220
#define IDS_TENS_30             230
#define IDS_TENS_40             240
#define IDS_TENS_50             250
#define IDS_TENS_60             260
#define IDS_TENS_70             270
#define IDS_TENS_80             280
#define IDS_TENS_90             290
#define IDS_UNKNOWN             999
#define IDS_THOUSAND            1000
#define IDS_MILLION             1001
#define IDS_AND                 1002
#define IDS_HUNDRETHS_DOLLARS   1003
#define IDS_HUNDRED             1004
#define INVALID_DOLLARS_CENTS   0xffffffff

zBOOL   GetDollarsCents( zVIEW vLang, ZDecimal& dDollarsCents );
void    SetDollarsCents( zVIEW vLang, ZDecimal dDollarsCents );
CString GetDollarsCentsFormatted( zVIEW vLang, ZDecimal dDollarsCents );
CString GetDollarsCentsText( zVIEW vLang, ZDecimal dDollarsCents );
CString HundredsTensOnes( zVIEW vLang, ZDecimal decHundredsTensOnes );
CString TensOnes( zVIEW vLang, ZDecimal decTensOnes );

zBOOL
GetDollarsCents( zVIEW     vLang,
                 ZDecimal& dDollarsCents,
                 zCPCHAR   cpcDollarsCentsText )
{
   ZDecimal dDollars;
   zCHAR  szDollarsCents[ 128 ];
   int   nCents;
   zCHAR  *pch;
   zCHAR  *pchDollars;
   zCHAR  *pchCents;

   szDollarsCentsText[ 0 ] = 0;
   zstrncat( szDollarsCentsText, cpcDollarsCentsText,
             sizeof( szDollarsCentsText ) - 1 );

   // strip leading blanks
   for ( pchDollars = cpcDollarsCentsText; *pchDollars == ' '; pchDollars++ )
   {
      if ( *pchDollars == 0 )
      {
         dDollarsCents = 0;
         return( TRUE );
      }
   }

   // parse dollar amount, before optional decimal point
   for ( pch = pchDollars; *pch && (*pch != '.') && (*pch != ' '); pch++ )
   {
      if ( (*pch < '0') || (*pch > '9') )
         return( FALSE );
   }

   zBOOL bDollarsOnly = (*pch == 0);
   *pch = 0;

   if ( zstrlen( pchDollars ) > 8 )
      return( FALSE );

   if ( zstrlen( pchDollars ) == 0 )
   {
      dDollars = 0;
   }
   else
   {
      dDollars = _ttol( pchDollars );
      if ( dDollars > ((ZDecimal) 0xffffffff) / 100 )
         return( FALSE );
   }

   if ( bDollarsOnly )
   {
      nCents = 0;
   }
   else  // decimal point was found
   {
      // parse cents
      for ( pchCents = ++pch; *pch && (*pch != ' '); pch++ )
      {
         if ( (*pch < '0') || (*pch > '9') )
            return( FALSE );
      }

      if ( *pch == ' ' )
      {
         for ( pch++; *pch; pch++ )
         {
            if ( *pch != ' ' )
               return( FALSE );
         }
      }

      zSHORT nCentsStrLen = zstrlen( pchCents );
      switch ( nCentsStrLen )
      {
         case 0:
            nCents = 0;
            break;
         case 1:
            nCents = _ttoi( pchCents ) * 10;
            break;
         case 2:
            nCents = _ttoi( pchCents );
            break;
         default:
            return( FALSE );
      }
   }

   dDollarsCents = dDollars * 100 + nCents;
   return( TRUE );
}

void
SetDollarsCents( zVIEW    vLang,
                 zPCHAR   pchDollarCentsText,
                 ZDecimal dDollarsCents )
{
   // Convert the ZDecimal dollars/cents value to a string
   // display it in the dollars/cents control.

   // If the dollar cent field has been previously determined to be
   // invalid, then don't update it.  Leave the invalid data in the
   // field so the user can correct it, rather than replace it with the
   // literal translation of the INVALID_DOLLARS_CENTS #define value.

   if ( dDollarsCents == INVALID_DOLLARS_CENTS )
      return;

   CString zs = GetDollarsCentsFormatted( dDollarsCents );
   zstrcpy( pchDollarsCentsText, zs );
}

CString
GetDollarsCentsFormatted( zVIEW vLang, ZDecimal dDollarsCents )
{
   CString zs;

   if ( dDollarsCents == INVALID_DOLLARS_CENTS )
   {
      zs = GetLangString( vLang, IDS_UNKNOWN );
      return( zs );
   }

   ZDecimal dDollars = dDollarsCents / 100;
   WORD wCents = (WORD)(dDollarsCents - 100 * dDollars);

   zs.Format( _T( "%lu.%02u" ), dDollars, wCents );
   return( zs );
}

CString
GetDollarsCentsText( zVIEW vLang, ZDecimal dDollarsCents )
{
   CString zs;
   CString zsTemp;

   if ( dDollarsCents == INVALID_DOLLARS_CENTS )
   {
      zs = GetLangString( vLang, IDS_UNKNOWN );
      return( zs );
   }

   ZDecimal dDollars = dDollarsCents / 100;
   WORD wCents = (WORD)(dDollarsCents - (dDollars * 100));
   if ( dDollars == 0L )
   {
      zs = GetLangString( vLang, IDS_ONES_0 );   // "Zero"
      zs += ' ';
   }
   else
   {
      if ( dDollars >= 1000000 )
      {
         ZDecimal decMillions = dDollars / 1000000;
         CString zsMillions = HundredsTensOnes( decMillions );
         zsTemp = GetLangString( vLang, IDS_MILLION );    // "Million"
         zs = zsMillions;
         zs += ' ';
         zs += zsTemp;
         zs += ' ';
         dDollars -= (decMillions * 1000000);
      }

      if ( dDollars >= 1000 )
      {
         ZDecimal decThousands = dDollars / 1000;
         CString zsThousands = HundredsTensOnes( decThousands );
         zsTemp = GetLangString( vLang, IDS_THOUSAND );   // "Thousand"
         zs += zsThousands;
         zs += ' ';
         zs += zsTemp;
         zs += ' ';
         dDollars -= (decThousands * 1000);
      }

      if ( dDollars > 0 )
      {
         CString zsHundredsTensOnes = HundredsTensOnes( dDollars );
         zs += zsHundredsTensOnes;
         zs += ' ';
      }
   }

   zCHAR szCents[ 10 ];
   CString zsCents( _itot( wCents, szCents, 10 ) );
   zsTemp = GetLangString( vLang, IDS_AND );    // "and"
   zs += zsTemp;
   zs += ' ';
   zs += zsCents;
   zsTemp = GetLangString( vLang, IDS_HUNDRETHS_DOLLARS );  // "/100ths Dollars"
   zs += zsTemp;
   return( zs );
}

CString
HundredsTensOnes( zVIEW vLang, ZDecimal decHundredsTensOnes )
{
   CString zs;
   CString zsTemp;

   if ( decHundredsTensOnes >= 100 )
   {
      ZDecimal decHundreds = decHundredsTensOnes / 100;
      CString zsHundreds;
      zsHundreds = GetLangString( vLang, IDS_ONES_0 + decHundreds );
      zsTemp = GetLangString( vLang, IDS_HUNDRED );
      zs = zsHundreds;
      zs += ' ';
      zs += zsTemp;
      zs += ' ';
      decHundredsTensOnes -= (decHundreds * 100);
   }

   if ( decHundredsTensOnes > 0 )
   {
      CString zsTensOnes = TensOnes( decHundredsTensOnes );
      zs += zsTensOnes;
   }

   return( zs );
}

CString
TensOnes( zVIEW vLang, ZDecimal decTensOnes )
{
   CString zs;
   CString zsTemp;

   if ( decTensOnes > 19 )
   {
      ZDecimal decTens = decTensOnes / 10;
      zsTemp = GetLangString( vLang, IDS_TENS_0 + decTens );
      zs += zsTemp;
      decTensOnes -= (decTens * 10);
      if ( decTensOnes > 0 )
      {
         CString zsOnes;
         zsOnes = GetLangString( vLang, IDS_ONES_0 + decTensOnes );
         zs += '-';
         zs += zsOnes;
      }
   }
   else
   if ( decTensOnes >= 10 )
   {
      CString zsTeens;
      zsTeens = GetLangString( vLang, IDS_TEENS_10 + decTensOnes - 10 );
      zs += zsTeens;
   }
   else
   {
      CString zsOnes;
      zsOnes = GetLangString( vLang, IDS_ONES_0 + decTensOnes );
      zs += zsOnes;
   }

   return( zs );
}

/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

zOPER_EXPORT zLONG OPERATION
zdmDollarCents( zLONG        lEntryType,
                LPDOMAINDATA lpDomainData )
{
   LPDOMAIN    lpDomain;
   zSHORT      nRC;
   LPTASK      lpTask = SysGetPointerFromHandle( lpDomainData->zView->hTask );

   nRC = zCALL_ERROR;         // Default to in error status...
   lpDomain = SysGetPointerFromHandle( lpDomainData->lpViewAttribute->hDomain );

   switch ( lEntryType )
   {
      case zDME_GET_VARIABLE:
      {
         zCHAR szDollarsCentsText[ 128 ];

         szDollarsCentsText[ 0 ] = 0;
         lpDomain = SysGetPointerFromHandle( lpDomainData->lpViewAttribute->hDomain );
         if ( lpDomainData->lpViewAttribute->cType != zTYPE_DECIMAL )
         {
            *sz = lpDomainData->lpViewAttribute->cType;
            *(sz + 1) = 0;
            zstrcat( sz, ", " );
            zstrcat( sz, lpDomainData->lpViewEntity->szName );
            // "TZDME003 - Attribute Type invalid for this Domain"
            SendDomainError( lpDomainData->zView, lpDomain, 8, 3, 0,
                             sz, lpDomainData->lpViewAttribute->szName );
            nRC = zCALL_ERROR;
            break;
         }

         if ( lpDomainData->cType != zTYPE_PIC )
         {
            nRC = GetValueFromRecord( lpDomainData->zView,
                                      lpDomainData->lpViewEntity,
                                      lpDomainData->lpViewAttribute,
                                      &lpAttrValue, &cAttrType,
                                      &uAttrLength );
            if ( nRC )
            {
               nRC = zCALL_ERROR;
               break;
            }

            // If there is no lpRecord, lpAttrValue returns a null.
            if ( lpAttrValue == 0 )
               lpAttrValue = (zPCHAR) &dNullDecimal;
         }

         // determine output data type
         switch ( lpDomainData->cType )
         {
            case zTYPE_STRING:
               // First get the formatting information from the Context or use
               // default.
               if ( lpDomainData->pszContextName && *lpDomainData->pszContextName )
               {
                  if ( GetContext( &lpContext, lpDomain, lpDomainData->pszContextName) )
                  {
                     // Get the formatting characters.
                     nRC = fnGetDecimalFmtStrings( lpContext, szThou, szDecPt,
                                                   &lPrecision );
                     if ( nRC )
                     {
                        // "TZDME019 - International number formatting is
                        //  not available "
                        // We continue with the US default...
                        SendDomainError( lpDomainData->zView, lpDomain, 16, 19, 0,
                                         lpDomainData->lpViewEntity->szName,
                                         lpDomainData->lpViewAttribute->szName );
                     }

                     // Check if the Context is one of the DecimalKeyx values.
                     // If so, there will be no thousands value.
                     zstrcpy( szWorkName, lpDomainData->pszContextName );
                     szWorkName[ 10 ] = 0;
                     if ( zstrcmp( szWorkName, "DecimalKey" ) == 0 )
                     {
                        szThou[ 0 ] = 0;
                     }
                     else
                     {
                        // Make sure it's not one of the arithmetic types.
                        if ( fnDecIntContext( lpContext ) )
                        {
                           zCHAR  sz2[ 100 ];

                           zstrcpy( sz, lpContext->szName );
                           zstrcat( sz, "/S" );
                           zstrcpy( sz2, lpDomainData->lpViewEntity->szName );
                           zstrcat( sz2, ", " );
                           zstrcat( sz2, lpDomainData->lpViewAttribute->szName );
                           // "TZDME013 - Context/cType Combination is invalid "
                           SendDomainError( lpDomainData->zView, lpDomain, 8, 13, 0, sz, sz2 );
                           return( zCALL_ERROR );
                        }
                     }
                  }
                  else
                  {
                     // "TZDME008 - Could not find context for Domain "
                     SendDomainError( lpDomainData->zView, lpDomain, 8, 8, 0,
                                      lpDomainData->pszContextName, 0 );
                     nRC = zCALL_ERROR;
                     break;
                  }
               }
            else
            {
               GetDefaultContext( &lpContext, lpDomain );
               fnGetDecimalFmtStrings( lpContext, szThou, szDecPt, &lPrecision );
            }

            // Convert the decimal to a basic string.
            if ( SysCompareDecimalToNull( (zPDECIMAL) lpAttrValue ) == 0 )
            {
               *((zPCHAR) lpDomainData->lpData) = 0;
               zstrcpy( sz, "0.0" );
               bWasNull = 1;
            }
            else
            {
               fnSysAssignDecimalFromDecimal( lpTask, &dDecimal,
                                              (zPDECIMAL) lpAttrValue );
               fnSysConvertDecimalToString( &dDecimal, sz, (zSHORT) lPrecision );
            }

            // Convert the decimal string to correct precision and international
            // formatting characters.
            if ( szThou[ 0 ] == 0 )
            {
               if ( szDecPt[ 0 ] == 0 )
                  fnFormatDecimalString( sz, 0, 0, lpDomain->lDecimalFormat );
               else
                  fnFormatDecimalString( sz, 0, szDecPt, lPrecision );
            }
            else
               fnFormatDecimalString( sz, szThou, szDecPt, lPrecision );

            // Return the formatted decimal, unless the return area is not
            // large enough, in that case fill it with '*'.
            if ( lpDomainData->uMaxStringLength && zstrlen( sz ) > lpDomainData->uMaxStringLength )
            {
               zmemset( (zPCHAR) lpDomainData->lpData, '*', lpDomainData->uMaxStringLength );
               *((zPCHAR) lpDomainData->lpData + lpDomainData->uMaxStringLength) = 0;
               // "TZDME021 - Return area not large enough for formatted string "
               SendDomainError( lpDomainData->zView, lpDomain, 8, 21, 0,
                                lpDomainData->lpViewEntity->szName,
                                lpDomainData->lpViewAttribute->szName );
               nRC = zCALL_ERROR;
            }
            else
            {
               zstrcpy( (zPCHAR) lpDomainData->lpData, sz );
               nRC = bWasNull ? -1 : 0;
            }

            break;

            case zTYPE_INTEGER:
               // decimal to long
               if ( SysCompareDecimalToNull( (zPDECIMAL) lpAttrValue ) == 0 )
               {
                  *((zPLONG) lpDomainData->lpData) = 0;
                  nRC = -1;   // indicate attribute is null
               }
               else
               {
                  if ( lpDomainData->pszContextName && *lpDomainData->pszContextName )
                  {
                     if ( zstrcmp( lpDomainData->pszContextName, szlDecimalIntegerRounded ) == 0 )
                     {
                        zDECIMAL dTemp;
                        zDECIMAL dZero;

                        SysConvertLongToDecimal( 0, &dZero );
                        fnSysAssignDecimalFromDecimal( lpTask, &dTemp,
                                                       (zPDECIMAL) lpAttrValue );
                        if ( SysCompareDecimalToDecimal( &dTemp, &dZero ) < 0 )
                           SysConvertDoubleToDecimal( -0.5, &dZero );
                        else
                           SysConvertDoubleToDecimal( 0.5, &dZero );

                        SysAddDecimalToDecimal( &dTemp, &dTemp, &dZero );
                        SysConvertDecimalToLong( &dTemp, (zPLONG) lpDomainData->lpData );
                     }
                     else
                     if ( zstrcmp( lpDomainData->pszContextName, szlDecimalFraction ) == 0 )
                     {
                        zCHAR    sz2[ 100 ];

                        zstrcpy( sz, lpDomainData->pszContextName );
                        zstrcat( sz, "/L" );
                        zstrcpy( sz2, lpDomainData->lpViewEntity->szName );
                        zstrcat( sz2, ", " );
                        zstrcat( sz2, lpDomainData->lpViewAttribute->szName );
                        // "TZDME013 - Context/cType Combination is invalid "
                        SendDomainError( lpDomainData->zView, lpDomain, 8, 13, 0, sz, sz2 );
                        return( zCALL_ERROR );
                     }
                     else
                        SysConvertDecimalToLong( (zPDECIMAL) lpAttrValue,
                                                 (zPLONG) lpDomainData->lpData );
                  }
                  else
                     SysConvertDecimalToLong( (zPDECIMAL) lpAttrValue,
                                              (zPLONG) lpDomainData->lpData );

                  nRC = 0;
               }

               break;

            case zTYPE_DECIMAL:
               // decimal to decimal
               if ( SysCompareDecimalToNull( (zPDECIMAL) lpAttrValue ) == 0 )
               {
                  SysConvertLongToDecimal( 0, (zPDECIMAL) lpDomainData->lpData );
                  nRC = -1;   // indicate attribute is null
               }
               else
               {
                  if ( lpDomainData->pszContextName && *lpDomainData->pszContextName )
                  {
                     if ( zstrcmp( lpDomainData->pszContextName, szlDecimalInteger ) == 0 )
                     {
                        zLONG lTemp;

                        SysConvertDecimalToLong( (zPDECIMAL) lpAttrValue, &lTemp );
                        SysConvertLongToDecimal( lTemp, (zPDECIMAL) lpDomainData->lpData );
                     }
                     else
                     if ( zstrcmp( lpDomainData->pszContextName, szlDecimalFraction ) == 0 )
                     {
                        zLONG    l1;
                        zDECIMAL d1;

                        fnSysAssignDecimalFromDecimal( lpTask, &d1,
                                                       (zPDECIMAL) lpAttrValue );
                        SysConvertDecimalToLong( &d1, &l1 );
                        SysConvertLongToDecimal( l1, &d1 );
                        SysSubtractDecimalFromDecimal( (zPDECIMAL) lpDomainData->lpData,
                                                       (zPDECIMAL) lpAttrValue, &d1 );
                     }
                     else
                     if ( zstrcmp( lpDomainData->pszContextName,
                                   szlDecimalIntegerRounded ) == 0 )
                     {
                        zLONG    l;
                        zDECIMAL d1;
                        zDECIMAL d2;

                        fnSysAssignDecimalFromDecimal( lpTask, &d1,
                                                       (zPDECIMAL) lpAttrValue );
                        SysConvertLongToDecimal( 0, &d2 );
                        if ( SysCompareDecimalToDecimal( &d1, &d2 ) >= 0 )
                           SysConvertDoubleToDecimal( 0.5, &d2 );
                        else
                           SysConvertDoubleToDecimal( -0.5, &d2 );

                        SysAddDecimalToDecimal( &d1, &d1, &d2 );
                        SysConvertDecimalToLong( &d1, &l );
                        SysConvertLongToDecimal( l, (zPDECIMAL) lpDomainData->lpData );
                     }
                     else
                        fnSysAssignDecimalFromDecimal( lpTask,
                                                       (zPDECIMAL) lpDomainData->lpData,
                                                       (zPDECIMAL) lpAttrValue );
                  }
                  else
                     fnSysAssignDecimalFromDecimal( lpTask,
                                                    (zPDECIMAL) lpDomainData->lpData,
                                                    (zPDECIMAL) lpAttrValue );
                  nRC = 0;
               }

               break;

            case zTYPE_PIC:
            // return the picture string for the given context
            {
               zLPCONTEXT   lpContext;

               if ( lpDomainData->pszContextName && *lpDomainData->pszContextName )
               {
                  GetContext( &lpContext, lpDomain, lpDomainData->pszContextName);
               }
               else
                  GetDefaultContext( &lpContext, lpDomain );

               if ( lpContext )
               {
                  zPCHAR lpEditString = SysGetPointerFromHandle( lpContext->hEditString );

                  if ( lpEditString && *lpEditString )
                     zstrcpy( (zPCHAR) lpDomainData->lpData, lpEditString );
                  else
                     *((zPCHAR) lpDomainData->lpData) = 0;
                  nRC = 0;
               }
               else
               {
                  // "TZDME008 - Could not find context for Domain "
                  SendDomainError( lpDomainData->zView, lpDomain, 8, 8, 0,
                                   TrueName( lpDomainData->pszContextName, zSHOW_ZKEY ),
                                   lpDomainData->lpViewAttribute->szName );
                  nRC = zCALL_ERROR;
               }
            }

            break;

          default:
            *sz = lpDomainData->cType;
            *(sz + 1) = 0;
            zstrcat( sz, ", " );
            zstrcat( sz, lpDomainData->lpViewEntity->szName );
            // "TZDME001 - Invalid Input Data Type"
            SendDomainError( lpDomainData->zView, lpDomain, 8, 1,
                             0, sz, lpDomainData->lpViewAttribute->szName );
            nRC = zCALL_ERROR;
         }

         break;
      }

      case zDME_VALIDATE_LPDATA:
      case zDME_SET_ATTRIBUTE:
      case zDME_ADD_TO_ATTRIBUTE:
      case zDME_COMPARE_ATTRIBUTE:
      case zDME_GET_COMPARE_VALUE:
      case zDME_GET_FIRST_TBL_ENT_FOR_ATTR:
      case zDME_GET_NEXT_TBL_ENT_FOR_ATTR:
      case zDME_SET_ATTRIBUTE_VALUE_NEXT:
      case zDME_SET_ATTRIBUTE_VALUE_PREV:
      default:
         // "TZDME004 - Invalid Domain Entry Type "
         SendDomainError( lpDomainData->zView, lpDomain, 8, 4, lEntryType,
                          lpDomainData->lpViewEntity->szName,
                          lpDomainData->lpViewAttribute->szName );
         nRC = zCALL_ERROR;
   }

   return( nRC );
}
#endif

#if 0

zSHORT
GetCurrencyText( LPDOMAINDATA lpDomainData,
                 ZDecimal&    dCurrencyText,
                 zCPCHAR      cpcCurrencyTextText )
{
   ZDecimal dDollars;
   zCHAR    szCurrencyText[ zMAX_DECIMAL_STRING ];
   zSHORT   nCents;
   zCHAR    *pch;
   zCHAR    *pchDollars;
   zCHAR    *pchCents;

   szCurrencyText[ 0 ] = 0;
   zstrncat( szCurrencyText, cpcCurrencyTextText,
             sizeof( szCurrencyText ) - 1 );

   // Strip leading blanks.
   for ( pchDollars = szCurrencyText; *pchDollars == ' '; pchDollars++ )
   {
      if ( *pchDollars == 0 )
      {
         dCurrencyText = 0;
         return( TRUE );
      }
   }

   // Parse dollar amount, before optional decimal point.
   for ( pch = pchDollars; *pch && (*pch != '.') && (*pch != ' '); pch++ )
   {
      if ( (*pch < '0') || (*pch > '9') )
         return( FALSE );
   }

   zBOOL bDollarsOnly = (*pch == 0);
   *pch = 0;

   if ( zstrlen( pchDollars ) > 8 )
      return( FALSE );

   if ( zstrlen( pchDollars ) == 0 )
   {
      dDollars = 0;
   }
   else
   {
      dDollars = pchDollars;
      if ( dDollars > dInvalidDecimalValue )
         return( FALSE );
   }

   if ( bDollarsOnly )
   {
      nCents = 0;
   }
   else  // decimal point was found
   {
      // Parse cents.
      pch++;
      for ( pchCents = pch; *pch && (*pch != ' '); pch++ )
      {
         if ( (*pch < '0') || (*pch > '9') )
            return( FALSE );
      }

      if ( *pch == ' ' )
      {
         for ( pch++; *pch; pch++ )
         {
            if ( *pch != ' ' )
               return( FALSE );
         }
      }

      zSHORT nCentsStrLen = zstrlen( pchCents );
      switch ( nCentsStrLen )
      {
         case 0:
            nCents = 0;
            break;
         case 1:
            nCents = zatol( pchCents ) * 10;
            break;
         case 2:
            nCents = zatol( pchCents );
            break;
         default:
            return( FALSE );
      }
   }

   dCurrencyText = dDollars * 100 + nCents;
   return( TRUE );
}

zSHORT
SetCurrencyText( LPDOMAINDATA lpDomainData,
                 zPCHAR       pchCurrencyTextText,
                 ZDecimal     dCurrencyText )
{
   // Convert the ZDecimal dollars/cents value to a string.

   // If the dollar cent field has been previously determined to be
   // invalid, then don't update it.  Leave the invalid data in the
   // field so the user can correct it, rather than replace it with the
   // literal translation of the INVALID_DOLLARS_CENTS #define value.

   if ( dCurrencyText == dInvalidDecimalValue )
   {
      return( zstrlen( pchCurrencyTextText ) );
   }

   return( GetCurrencyTextFormatted( lpDomainData,
                                     pchCurrencyTextText,
                                     dCurrencyText ) );
}

zSHORT
GetCurrencyTextFormatted( LPDOMAINDATA lpDomainData,
                          zPCHAR       pchReturnCurrencyText,
                          ZDecimal     dCurrencyText )
{
   if ( dCurrencyText == dInvalidDecimalValue )
   {
      return( SysLoadString( lpDomainData->zView,
                             "tzapdmaa", IDS_UNKNOWN,
                             pchReturnCurrencyText,
                             zMAX_DECIMAL_STRING ) );
   }

   ZDecimal dDollars = dCurrencyText / 100;
   WORD wCents = (WORD)(dCurrencyText - 100 * dDollars);

   printf( pchReturnCurrencyText, "%lu.%02u", dDollars, wCents );
   return( zstrlen( pchReturnCurrencyText ) );
}

zSHORT
GetCurrencyTextText( LPDOMAINDATA lpDomainData,
                     zPCHAR   pchReturnCurrencyText,
                     ZDecimal dCurrencyText )
{
   if ( dCurrencyText == dInvalidDecimalValue )
   {
      return( SysLoadString( lpDomainData->zView,
                             "tzapdmaa", IDS_UNKNOWN,
                             pchReturnCurrencyText,
                             zMAX_DECIMAL_STRING ) );
   }

   zSHORT nLth = 0;

   ZDecimal dDollars = dCurrencyText / 100;
   zSHORT nCents = (zSHORT) (dCurrencyText - (dDollars * 100));
   if ( dDollars == 0L )
   {
      nLth += SysLoadString( lpDomainData->zView,
                             "tzapdmaa", IDS_ONES_0,     // "Zero"
                             pchReturnCurrencyText + nLth,
                             zMAX_DECIMAL_STRING - nLth );
      pchReturnCurrencyText[ nLth++ ] = ' ';
   }
   else
   {
      if ( dDollars >= 1000000 )
      {
         ZDecimal dMillions = dDollars / 1000000;
         nLth += HundredsTensOnes( lpDomainData,
                                   pchReturnCurrencyText + nLth,
                                   dMillions );
         pchReturnCurrencyText[ nLth++ ] = ' ';
         nLth += SysLoadString( lpDomainData->zView,
                                "tzapdmaa", IDS_MILLION,    // "Million"
                                pchReturnCurrencyText + nLth,
                                zMAX_DECIMAL_STRING - nLth );
         pchReturnCurrencyText[ nLth++ ] = ' ';
         dDollars -= (dMillions * 1000000);
      }

      if ( dDollars >= 1000 )
      {
         ZDecimal dThousands = dDollars / 1000;
         nLth += HundredsTensOnes( lpDomainData,
                                   pchReturnCurrencyText + nLth,
                                   dThousands );
         pchReturnCurrencyText[ nLth++ ] = ' ';
         nLth += SysLoadString( lpDomainData->zView,
                                "tzapdmaa", IDS_THOUSAND,   // "Thousand"
                                pchReturnCurrencyText + nLth,
                                zMAX_DECIMAL_STRING - nLth );
         pchReturnCurrencyText[ nLth++ ] = ' ';
         dDollars -= (dThousands * 1000);
      }

      if ( dDollars > 0 )
      {
         nLth += HundredsTensOnes( lpDomainData,
                                   pchReturnCurrencyText + nLth,
                                   dDollars );
         pchReturnCurrencyText[ nLth++ ] = ' ';
      }
   }

   nLth += SysLoadString( lpDomainData->zView,
                          "tzapdmaa", IDS_AND,        // "and"
                          pchReturnCurrencyText + nLth,
                          zMAX_DECIMAL_STRING - nLth );
   pchReturnCurrencyText[ nLth++ ] = ' ';

   zltoa( nCents, pchReturnCurrencyText + nLth );
   nLth += zstrlen( pchReturnCurrencyText + nLth );
   pchReturnCurrencyText[ nLth++ ] = ' ';

   nLth += SysLoadString( lpDomainData->zView,
                          "tzapdmaa",
                          IDS_HUNDRETHS_DOLLARS,      // "/100ths Dollars"
                          pchReturnCurrencyText + nLth,
                          zMAX_DECIMAL_STRING - nLth );
   return( nLth );
}

zSHORT
HundredsTensOnes( LPDOMAINDATA lpDomainData,
                  zPCHAR   pchReturnHundredsTensOnes,
                  ZDecimal dHundredsTensOnes )
{
   zSHORT nLth = 0;

   if ( dHundredsTensOnes >= 100 )
   {
      ZDecimal dHundreds = dHundredsTensOnes / 100;
      nLth += SysLoadString( lpDomainData->zView,
                             "tzapdmaa",
                             IDS_ONES_0 + dHundreds,
                             pchReturnHundredsTensOnes + nLth,
                             zMAX_DECIMAL_STRING - nLth );
      pchReturnHundredsTensOnes[ nLth++ ] = ' ';
      nLth += SysLoadString( lpDomainData->zView,
                             "tzapdmaa", IDS_HUNDRED,
                             pchReturnHundredsTensOnes + nLth,
                             zMAX_DECIMAL_STRING - nLth );
      pchReturnHundredsTensOnes[ nLth++ ] = ' ';
      dHundredsTensOnes -= (dHundreds * 100);
   }

   if ( dHundredsTensOnes > 0 )
   {
      nLth += TensOnes( lpDomainData,
                        pchReturnHundredsTensOnes + nLth,
                        dHundredsTensOnes );
   }

   return( nLth );
}

zSHORT
TensOnes( LPDOMAINDATA lpDomainData,
          zPCHAR   pchReturnTensOnes,
          ZDecimal dTensOnes )
{
   zSHORT nLth = 0;

   if ( dTensOnes > 19 )
   {
      ZDecimal dTens = dTensOnes / 10;
      nLth += SysLoadString( lpDomainData->zView,
                             "tzapdmaa",
                             IDS_TENS_0 + dTens,
                             pchReturnTensOnes + nLth,
                             zMAX_DECIMAL_STRING - nLth );
      dTensOnes -= (dTens * 10);
      if ( dTensOnes > 0 )
      {
         nLth += SysLoadString( lpDomainData->zView,
                                "tzapdmaa",
                                IDS_ONES_0 + dTensOnes,
                                pchReturnTensOnes + nLth,
                                zMAX_DECIMAL_STRING - nLth );
         pchReturnTensOnes[ nLth++ ] = '-';
      }
   }
   else
   if ( dTensOnes >= 10 )
   {
      nLth += SysLoadString( lpDomainData->zView,
                             "tzapdmaa",
                             IDS_TEENS_10 + dTensOnes - 10,
                             pchReturnTensOnes + nLth,
                             zMAX_DECIMAL_STRING - nLth );
   }
   else
   {
      nLth += SysLoadString( lpDomainData->zView,
                             "tzapdmaa",
                             IDS_ONES_0 + dTensOnes,
                             pchReturnTensOnes + nLth,
                             zMAX_DECIMAL_STRING - nLth );
   }

   return( nLth );
}

#endif

void
fnGetEntityName( zPCHAR lpEntity, zPCHAR pchEntityName )
{
   zstrcpy( pchEntityName, ((LPVIEWENTITY) lpEntity)->szName );
}

zOPER_EXPORT zSHORT OPERATION
BlankOutMasterPassword( zVIEW  vSubtask )
{
   zVIEW     vAccount;

   // Ensure the Master Password is not committed to the file.
   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   if ( vAccount && CheckExistenceOfEntity( vAccount, "ACCOUNT" ) == 0 )
      SetAttributeFromString( vAccount, "ACCOUNT", "MasterPassword", "" );

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
ResetMasterPassword( zVIEW  vSubtask )
{
   zVIEW  vAccount;
   zCHAR  szMasterPassword[ zMAXEL + 1 ];
   zCHAR  szMasterPasswordNew[ zMAXEL + 1 ];
   zCHAR  szPassword[ zMAXEL + 1 ];
   zCHAR  szPasswordConfirm[ zMAXEL + 1 ];
   zCHAR  szCrypt[ zMAXEL + 1 ];
   zSHORT nRC;

   // Reset the Master Password (affects every password in the list).
   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   if ( vAccount )
   {
      GetStringFromAttributeByContext( szMasterPassword, vAccount, "ACCOUNT",
                                       "MasterPassword", 0, zMAXEL );
      GetCtrlText( vSubtask, "Password",
                   szPassword, sizeof( szPassword ) );
      GetCtrlText( vSubtask, "NewPassword",
                   szMasterPasswordNew, sizeof( szMasterPasswordNew ) );
      GetCtrlText( vSubtask, "ConfirmPassword",
                   szPasswordConfirm, sizeof( szPasswordConfirm ) );

      if ( zstrcmp( szMasterPassword, szPassword ) == 0 &&
           szMasterPasswordNew[ 0 ] && szPasswordConfirm[ 0 ] &&
           zstrcmp( szMasterPasswordNew, szPasswordConfirm ) == 0 )
      {
         SetAttributeFromString( vAccount, "ACCOUNT",
                                 "MasterPassword", szMasterPasswordNew );
         OperatorPrompt( vSubtask, "Master Password",
                         "Master Password Reset Successfully", 0,
                         zBUTTONS_OK, zRESPONSE_OK, 0 );
         nRC = SetCursorFirstEntity( vAccount, "TRANSACTION", 0 );
         while ( nRC == 0 )
         {
            GetStringFromAttribute( szCrypt, vAccount,
                                    "TRANSACTION", "Password" );
            UfDecryptStringUL( szPassword, szCrypt, szMasterPassword, zMAXEL );
            UfEncryptStringUL( szCrypt, szPassword, szMasterPasswordNew, zMAXEL );
            SetAttributeFromString( vAccount, "TRANSACTION",
                                    "Password", szCrypt );

            nRC = SetCursorNextEntity( vAccount, "TRANSACTION", 0 );
         }

         return( 0 );
      }

      if ( zstrcmp( szMasterPassword, szPassword ) != 0 )
      {
         OperatorPrompt( vSubtask, "Master Password",
                         "Master Password Incorrect ... Please re-enter", 0,
                         zBUTTONS_OK, zRESPONSE_OK, 0 );
      }
      else
      {
         if ( szMasterPasswordNew[ 0 ] && szPasswordConfirm[ 0 ] )
         {
            OperatorPrompt( vSubtask, "Master Password",
                            "New Password does not match Confirmation Password ... Please re-enter", 0,
                            zBUTTONS_OK, zRESPONSE_OK, 0 );
         }
         else
         {
            OperatorPrompt( vSubtask, "Master Password",
                            "New Password be specified", 0,
                            zBUTTONS_OK, zRESPONSE_OK, 0 );
         }
      }
   }

   SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
   return( 1 );
}

zOPER_EXPORT zSHORT OPERATION
ShowAccountPassword( zVIEW  vSubtask )
{
   zVIEW  vAccount;
   zCHAR  szAccount[ 256 ];
   zCHAR  szDescription[ 256 ];
   zCHAR  szMasterPassword[ zMAXEL + 1 ];
   zCHAR  szPassword[ zMAXEL + 1 ];
   zCHAR  szCrypt[ zMAXEL + 1 ];
   zSHORT nLth;

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   if ( vAccount && CheckExistenceOfEntity( vAccount, "TRANSACTION" ) == 0 )
   {
      GetStringFromAttribute( szAccount, vAccount, "TRANSACTION", "Name" );
      SetCtrlText( vSubtask, "Account", szAccount );
      GetStringFromAttribute( szDescription, vAccount,
                              "TRANSACTION", "Description" );
      SetCtrlText( vSubtask, "Description", szDescription );

      GetStringFromAttributeByContext( szMasterPassword, vAccount, "ACCOUNT",
                                       "MasterPassword", 0, zMAXEL );
      GetStringFromAttribute( szCrypt, vAccount, "TRANSACTION", "Password" );
      UfDecryptStringUL( szPassword, szCrypt, szMasterPassword, zMAXEL );
      SetCtrlText( vSubtask, "Password", szPassword );
#if 1
      zstrcpy( szAccount, "This is the beginning of a new day in which we can encrypt long text" );
      zstrcpy( szAccount, "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ123456" );
      nLth = zstrlen( szAccount );
      UfEncryptStringLong( szDescription, szAccount, szMasterPassword, nLth );
      TraceLine( "Orig string: %s   Encrypted: %s", szAccount, szDescription );
      UfDecryptStringLong( szAccount, szDescription, szMasterPassword, nLth );
      TraceLine( "Decrypted string: %s   Encrypted: %s", szAccount, szDescription );
#endif
   }
   else
   {
      SetCtrlText( vSubtask, "Account", "" );
      SetCtrlText( vSubtask, "Password", "" );
      SetCtrlText( vSubtask, "Description", "" );
   }

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
GetMasterPassword( zVIEW  vSubtask )
{
   zVIEW  vAccount;
   zCHAR  szMasterPassword[ zMAXEL + 1 ];
   zSHORT nRC = zRESPONSE_OK;

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   zmemset( szMasterPassword, 0, sizeof( szMasterPassword ) );
   while ( nRC == zRESPONSE_OK && szMasterPassword[ 0 ] == 0 )
   {
      nRC = OperatorPromptForInput( vSubtask, "Master Password", "Password:",
                                    '*', szMasterPassword,
                                    sizeof( szMasterPassword ) );
   }

   if ( nRC != zRESPONSE_OK )
   {
      BlankOutMasterPassword( vSubtask );
      SetWindowActionBehavior( vSubtask, zWAB_ReturnToParent, 0, 0 );
   }
   else
   {
      SetCtrlTextLth( vSubtask, "Password", zMAXEL );
      SetAttributeFromString( vAccount, "ACCOUNT",
                              "MasterPassword", szMasterPassword );
      SetCursorFirstEntity( vAccount, "TRANSACTION", 0 );
   }
//
// OperatorConversationalDialog( vSubtask, szReturnTag,
//                               "Account", "MasterPassword" );
// GetLastCtrlTag( vSubtask, szReturnTag );

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
SaveInstance( zVIEW  vSubtask )
{
   zCHAR     szTag[ 34 ];
   zVIEW     vAccount;
   zSHORT    nRC = 0;

   GetLastCommandTag( vSubtask, szTag );
   TraceLineS( "LastCommandTag ", szTag );
   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   if ( vAccount )
      nRC = CommitOI_ToFile( vAccount, "CARLSON.POR", 0 );

   BlankOutMasterPassword( vSubtask );
   return( nRC );
}

zOPER_EXPORT zSHORT OPERATION
UpdateAccountPassword( zVIEW  vSubtask )
{
   zVIEW  vAccount;
   zCHAR  szAccount[ 256 ];
   zCHAR  szDescription[ 256 ];
   zCHAR  szMasterPassword[ zMAXEL + 1 ];
   zCHAR  szPassword[ zMAXEL + 1 ];
   zCHAR  szCrypt[ zMAXEL + 1 ];

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   if ( vAccount )
   {
      GetStringFromAttributeByContext( szMasterPassword, vAccount,
                                       "ACCOUNT", "MasterPassword", 0, zMAXEL );
      GetCtrlText( vSubtask, "Account", szAccount, sizeof( szAccount ) );
      SetAttributeFromString( vAccount, "TRANSACTION", "Name", szAccount );
      GetCtrlText( vSubtask, "Description", szDescription, sizeof( szDescription ) );
      SetAttributeFromString( vAccount, "TRANSACTION", "Description", szDescription );
      GetCtrlText( vSubtask, "Password", szPassword, sizeof( szPassword ) );
      UfEncryptStringUL( szCrypt, szPassword, szMasterPassword, zMAXEL );
      SetAttributeFromString( vAccount, "TRANSACTION", "Password", szCrypt );
      SetCtrlState( vSubtask, "AccountList", zCONTROL_STATUS_REPAINT, 0 );
   }

   SetFocusToCtrl( vSubtask, "Account" );
   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
AddAccountPassword( zVIEW  vSubtask )
{
   zVIEW  vAccount;

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   if ( vAccount )
   {
      CreateEntity( vAccount, "TRANSACTION", zPOS_AFTER );
      UpdateAccountPassword( vSubtask );
      RefreshCtrl( vSubtask, "AccountList" );
   }

   return( 0 );
}

zOPER_EXPORT zSHORT OPERATION
DeleteAccountPassword( zVIEW  vSubtask )
{
   zVIEW  vAccount;
   zCHAR  szAccount[ 256 ];
   zSHORT nRC;

   GetViewByName( &vAccount, "ACCOUNT", vSubtask, zLEVEL_TASK );
   if ( vAccount )
   {
      zCHAR szMsg[ 512 ];

      GetStringFromAttribute( szAccount, vAccount, "ACCOUNT", "Name" );
      zsprintf( szMsg, "Are you sure you want to delete account: %s",
                szAccount );

      nRC = OperatorPrompt( vSubtask, "Delete Account", szMsg, 0,
                           zBUTTONS_YESNO, zRESPONSE_NO, zICON_QUESTION );
      if ( nRC == zRESPONSE_YES )
      {
         DeleteEntity( vAccount, "TRANSACTION", zPOS_AFTER );
         RefreshCtrl( vSubtask, "AccountList" );
         ShowAccountPassword( vSubtask );
      }
   }

   return( 0 );
}

#ifdef __cplusplus
}
#endif
