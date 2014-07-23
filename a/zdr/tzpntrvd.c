#define KZSYSSVC_INCL
#include "KZOENGAA.H" 
#include "TZ__OPRS.H" 
#include "ZDRVROPR.H" 
 
#ifdef __cplusplus
extern "C"
{
#endif
 
#include "ZEIDONOP.H"

zSHORT zwTZPNTRAD_DeleteMenu( void );
zSHORT zwTZPNTRAD_SaveAs( zVIEW*, zPCHAR );
zSHORT zwTZPNTRAD_EnableMenuItems( zVIEW, zPCHAR, zPCHAR, zPCHAR, zSHORT*,
   zSHORT* );
zSHORT zwTZPNTRAD_EnableMenuDeleteAll( zVIEW, zPCHAR );
zSHORT zwTZPNTRAD_CheckDialogName( zVIEW, zVIEW, zPCHAR );
zSHORT zwTZPNTRAD_CreateWindowList( zVIEW, zVIEW, zVIEW );
zSHORT WND_UPD_SetColors( zVIEW, zVIEW );
zSHORT zwTZPNTRAD_LoadWindowPopups( zVIEW, zPCHAR, zPCHAR, zPCHAR, zPCHAR,
   zPCHAR );
zSHORT zwTZPNTRAD_LoadEventPopups( zVIEW, zPCHAR, zPCHAR, zPCHAR, zPCHAR,
   zPCHAR, zPCHAR );
zSHORT CtrlListEnableCtrls( zVIEW, zSHORT );
zSHORT CtrlListSetCheckedState( zVIEW, zVIEW, zLONG );
zSHORT CtrlListEnableButtonsAndCheckbox( zVIEW, zLONG );
zSHORT CtrlListShowAllCtrls( zVIEW, zVIEW );
zSHORT CtrlListSaveStyleFlags( zVIEW, zVIEW );
zSHORT CtrlListDetailWindow( zVIEW, zSHORT );

zOPER_EXPORT zSHORT OPERATION
GOTO_SelectReusableSideMenu( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
CONVERT_ControlClassForWindow( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
GOTO_SelectReusableMainMenu( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
GOTO_SelectDefaultMainMenu( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
LOAD_SelectedDialog( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
SELECT_ReusableMenuWindow( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
REMOVE_DefaultMainMenu( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
REMOVE_ReusableSideMenu( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
REMOVE_ReusableMainMenu( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
CONVERT_ControlClassForDialog( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
CONVERT_ClassNames( zVIEW     ViewToWindow );


static zVOID
o_CONVERT_ClassNamesRecursive( zVIEW     vDialogRoot,
                               zVIEW     vControl );


//:DIALOG OPERATION
//:GOTO_SelectReusableSideMenu( VIEW vSubtask )

//:   VIEW TZWINDOWL  REGISTERED AS TZWINDOWL
zOPER_EXPORT zSHORT OPERATION
GOTO_SelectReusableSideMenu( zVIEW     vSubtask )
{
   zVIEW     TZWINDOWL = 0; 
   zSHORT    RESULT; 
   //:VIEW TZDLG_List REGISTERED AS TZDLG_List
   zVIEW     TZDLG_List = 0; 
   //:VIEW TZWND_List BASED ON LOD  TZWDLGSO
   zVIEW     TZWND_List = 0; 
   zSHORT    nZRetCode; 
   zSHORT    lTempInteger_0; 
   zSHORT    lTempInteger_1; 
   zSHORT    lTempInteger_2; 
   zLONG     lTempInteger_3; 
   zLONG     lTempInteger_4; 

   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   RESULT = GetViewByName( &TZDLG_List, "TZDLG_List", vSubtask, zLEVEL_TASK );

   //:TZWINDOWL.Dialog.wReusableSelectEntityName = "ReusableSideWindow"
   nZRetCode = SetAttributeFromString( TZWINDOWL, "Dialog",
      "wReusableSelectEntityName", "ReusableSideWindow" );
   //:IF TZWINDOWL.ReusableWindowSelection EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( TZWINDOWL,
      "ReusableWindowSelection" );
   if ( lTempInteger_0 == 0 )
   { 
      //:EXCLUDE TZWINDOWL.ReusableWindowSelection
      RESULT = ExcludeEntity( TZWINDOWL, "ReusableWindowSelection",
         zREPOS_AFTER );
   } 

   //:END
   //:IF TZWINDOWL.ReusableDialogSelection EXISTS
   lTempInteger_1 = CheckExistenceOfEntity( TZWINDOWL,
      "ReusableDialogSelection" );
   if ( lTempInteger_1 == 0 )
   { 
      //:EXCLUDE TZWINDOWL.ReusableDialogSelection
      RESULT = ExcludeEntity( TZWINDOWL, "ReusableDialogSelection",
         zREPOS_AFTER );
   } 

   //:END
   //:IF TZWINDOWL.ReusableSideWindow EXISTS
   lTempInteger_2 = CheckExistenceOfEntity( TZWINDOWL, "ReusableSideWindow" );
   if ( lTempInteger_2 == 0 )
   { 
      //:SET CURSOR FIRST TZDLG_List.W_MetaDef
      //:           WHERE TZDLG_List.W_MetaDef.CPLR_ZKey = TZWINDOWL.ReusableSideDialog.ZKey
      nZRetCode = GetIntegerFromAttribute( &lTempInteger_3, TZWINDOWL,
         "ReusableSideDialog", "ZKey" );
      RESULT = SetCursorFirstEntityByInteger( TZDLG_List, "W_MetaDef",
         "CPLR_ZKey", lTempInteger_3, "" );
      //:IF RESULT >= zCURSOR_SET
      if ( RESULT >= zCURSOR_SET )
      { 
         //:INCLUDE TZWINDOWL.ReusableDialogSelection FROM TZDLG_List.W_MetaDef
         RESULT = IncludeSubobjectFromSubobject( TZWINDOWL,
            "ReusableDialogSelection", TZDLG_List, "W_MetaDef", zPOS_AFTER );
         //:GET VIEW TZWND_List NAMED "TZWND_List"
         RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask,
            zLEVEL_TASK );
         //:IF RESULT >= 0
         if ( RESULT >= 0 )
         { 
            //:IF TZWND_List.Dialog.ZKey != TZWINDOWL.ReusableSideDialog.ZKey
            if ( CompareAttributeToAttribute( TZWND_List, "Dialog", "ZKey",
               TZWINDOWL, "ReusableSideDialog", "ZKey" ) != 0 )
            { 
               //:DropMetaOI( vSubtask, TZWND_List )
               nZRetCode = DropMetaOI( vSubtask, TZWND_List );
               //:TZWND_List = 0
               TZWND_List = 0;
            } 

            //:END
            //:ELSE
         } 
         else
         { 
            //:TZWND_List = 0
            TZWND_List = 0;
         } 

         //:END
         //:IF TZWND_List != 0
         if ( TZWND_List != 0 )
         { 
            //:SET CURSOR FIRST TZWND_List.Window
            //:           WHERE TZWND_List.Window.ZKey = TZWINDOWL.ReusableSideWindow.ZKey
            nZRetCode = GetIntegerFromAttribute( &lTempInteger_4, TZWINDOWL,
               "ReusableSideWindow", "ZKey" );
            RESULT = SetCursorFirstEntityByInteger( TZWND_List, "Window",
               "ZKey", lTempInteger_4, "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            { 
               //:INCLUDE TZWINDOWL.ReusableWindowSelection FROM TZWND_List.Window
               RESULT = IncludeSubobjectFromSubobject( TZWINDOWL,
                  "ReusableWindowSelection", TZWND_List, "Window", zPOS_AFTER );
               //:ELSE
            } 
            else
            { 
               //:SET CURSOR FIRST TZWND_List.Window
               RESULT = SetCursorFirstEntity( TZWND_List, "Window", "" );
            } 

            //:END
            //:ELSE
         } 
         else
         { 
            //:IF TZDLG_List.W_MetaDef.CPLR_ZKey  = TZWINDOWL.Dialog.ZKey
            if ( CompareAttributeToAttribute( TZDLG_List, "W_MetaDef",
               "CPLR_ZKey", TZWINDOWL, "Dialog", "ZKey" ) == 0 )
            { 
               //:CreateViewFromView( TZWND_List, TZWINDOWL )
               nZRetCode = CreateViewFromView( &TZWND_List, TZWINDOWL );
               //:NAME VIEW TZWND_List "TZWND_List"
               nZRetCode = SetNameForView( TZWND_List, "TZWND_List", 0,
                  zLEVEL_TASK );
               //:ELSE
            } 
            else
            { 
               //:ActivateMetaOI( vSubtask, TZWND_List, TZDLG_List, zREFER_DIALOG_META, zSINGLE )
               nZRetCode = ActivateMetaOI( vSubtask, &TZWND_List, TZDLG_List,
                  zREFER_DIALOG_META, zSINGLE );
               //:NAME VIEW TZWND_List "TZWND_List"
               nZRetCode = SetNameForView( TZWND_List, "TZWND_List", 0,
                  zLEVEL_TASK );
            } 

            //:END
         } 

         //:END
         //:ELSE
      } 
      else
      { 
         //:GET VIEW TZWND_List NAMED "TZWND_List"
         RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask,
            zLEVEL_TASK );
         //:IF RESULT >= 0
         if ( RESULT >= 0 )
         { 
            //:IF TZWINDOWL.Dialog.ZKey = TZWND_List.Dialog.ZKey
            if ( CompareAttributeToAttribute( TZWINDOWL, "Dialog", "ZKey",
               TZWND_List, "Dialog", "ZKey" ) == 0 )
            { 
               //:DropView( TZWND_List )
               nZRetCode = DropView( TZWND_List );
               //:ELSE
            } 
            else
            { 
               //:DropMetaOI( vSubtask, TZWND_List )
               nZRetCode = DropMetaOI( vSubtask, TZWND_List );
            } 

            //:END
         } 

         //:END
         //:SET CURSOR FIRST TZDLG_List.W_MetaDef
         RESULT = SetCursorFirstEntity( TZDLG_List, "W_MetaDef", "" );
      } 

      //:END

      //:ELSE
   } 
   else
   { 

      //:GET VIEW TZWND_List NAMED "TZWND_List"
      RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask, zLEVEL_TASK );
      //:IF RESULT >= 0
      if ( RESULT >= 0 )
      { 
         //:IF TZWINDOWL.Dialog.ZKey = TZWND_List.Dialog.ZKey
         if ( CompareAttributeToAttribute( TZWINDOWL, "Dialog", "ZKey",
            TZWND_List, "Dialog", "ZKey" ) == 0 )
         { 
            //:DropView( TZWND_List )
            nZRetCode = DropView( TZWND_List );
            //:ELSE
         } 
         else
         { 
            //:DropMetaOI( vSubtask, TZWND_List )
            nZRetCode = DropMetaOI( vSubtask, TZWND_List );
         } 

         //:END
      } 

      //:END
      //:SET CURSOR FIRST TZDLG_List.W_MetaDef
      RESULT = SetCursorFirstEntity( TZDLG_List, "W_MetaDef", "" );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:CONVERT_ControlClassForWindow( VIEW ViewToWindow )

//:   VIEW TZWINDOWL REGISTERED AS TZWINDOWL
zOPER_EXPORT zSHORT OPERATION
CONVERT_ControlClassForWindow( zVIEW     ViewToWindow )
{
   zVIEW     TZWINDOWL = 0; 
   zSHORT    RESULT; 
   zSHORT    nZRetCode; 

   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", ViewToWindow, zLEVEL_TASK );

   //:// Indicate that the Class Conversion is for all Windows in the Dialog.
   //:TZWINDOWL.Dialog.wClassNameConvertType = "W"
   nZRetCode = SetAttributeFromString( TZWINDOWL, "Dialog",
      "wClassNameConvertType", "W" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:GOTO_SelectReusableMainMenu( VIEW vSubtask )

//:   VIEW TZWINDOWL  REGISTERED AS TZWINDOWL
zOPER_EXPORT zSHORT OPERATION
GOTO_SelectReusableMainMenu( zVIEW     vSubtask )
{
   zVIEW     TZWINDOWL = 0; 
   zSHORT    RESULT; 
   //:VIEW TZDLG_List REGISTERED AS TZDLG_List
   zVIEW     TZDLG_List = 0; 
   //:VIEW TZWND_List BASED ON LOD  TZWDLGSO
   zVIEW     TZWND_List = 0; 
   zSHORT    nZRetCode; 
   zSHORT    lTempInteger_0; 
   zSHORT    lTempInteger_1; 
   zSHORT    lTempInteger_2; 
   zLONG     lTempInteger_3; 
   zLONG     lTempInteger_4; 

   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   RESULT = GetViewByName( &TZDLG_List, "TZDLG_List", vSubtask, zLEVEL_TASK );

   //:TZWINDOWL.Dialog.wReusableSelectEntityName = "ReusableMainWindow"
   nZRetCode = SetAttributeFromString( TZWINDOWL, "Dialog",
      "wReusableSelectEntityName", "ReusableMainWindow" );
   //:IF TZWINDOWL.ReusableWindowSelection EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( TZWINDOWL,
      "ReusableWindowSelection" );
   if ( lTempInteger_0 == 0 )
   { 
      //:EXCLUDE TZWINDOWL.ReusableWindowSelection
      RESULT = ExcludeEntity( TZWINDOWL, "ReusableWindowSelection",
         zREPOS_AFTER );
   } 

   //:END
   //:IF TZWINDOWL.ReusableDialogSelection EXISTS
   lTempInteger_1 = CheckExistenceOfEntity( TZWINDOWL,
      "ReusableDialogSelection" );
   if ( lTempInteger_1 == 0 )
   { 
      //:EXCLUDE TZWINDOWL.ReusableDialogSelection
      RESULT = ExcludeEntity( TZWINDOWL, "ReusableDialogSelection",
         zREPOS_AFTER );
   } 

   //:END
   //:IF TZWINDOWL.ReusableMainWindow EXISTS
   lTempInteger_2 = CheckExistenceOfEntity( TZWINDOWL, "ReusableMainWindow" );
   if ( lTempInteger_2 == 0 )
   { 
      //:SET CURSOR FIRST TZDLG_List.W_MetaDef
      //:           WHERE TZDLG_List.W_MetaDef.CPLR_ZKey = TZWINDOWL.ReusableMainDialog.ZKey
      nZRetCode = GetIntegerFromAttribute( &lTempInteger_3, TZWINDOWL,
         "ReusableMainDialog", "ZKey" );
      RESULT = SetCursorFirstEntityByInteger( TZDLG_List, "W_MetaDef",
         "CPLR_ZKey", lTempInteger_3, "" );
      //:IF RESULT >= zCURSOR_SET
      if ( RESULT >= zCURSOR_SET )
      { 
         //:INCLUDE TZWINDOWL.ReusableDialogSelection FROM TZDLG_List.W_MetaDef
         RESULT = IncludeSubobjectFromSubobject( TZWINDOWL,
            "ReusableDialogSelection", TZDLG_List, "W_MetaDef", zPOS_AFTER );
         //:GET VIEW TZWND_List NAMED "TZWND_List"
         RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask,
            zLEVEL_TASK );
         //:IF RESULT >= 0
         if ( RESULT >= 0 )
         { 
            //:IF TZWND_List.Dialog.ZKey != TZWINDOWL.ReusableMainDialog.ZKey
            if ( CompareAttributeToAttribute( TZWND_List, "Dialog", "ZKey",
               TZWINDOWL, "ReusableMainDialog", "ZKey" ) != 0 )
            { 
               //:DropMetaOI( vSubtask, TZWND_List )
               nZRetCode = DropMetaOI( vSubtask, TZWND_List );
               //:TZWND_List = 0
               TZWND_List = 0;
            } 

            //:END
            //:ELSE
         } 
         else
         { 
            //:TZWND_List = 0
            TZWND_List = 0;
         } 

         //:END
         //:IF TZWND_List != 0
         if ( TZWND_List != 0 )
         { 
            //:SET CURSOR FIRST TZWND_List.Window
            //:           WHERE TZWND_List.Window.ZKey = TZWINDOWL.ReusableMainWindow.ZKey
            nZRetCode = GetIntegerFromAttribute( &lTempInteger_4, TZWINDOWL,
               "ReusableMainWindow", "ZKey" );
            RESULT = SetCursorFirstEntityByInteger( TZWND_List, "Window",
               "ZKey", lTempInteger_4, "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            { 
               //:INCLUDE TZWINDOWL.ReusableWindowSelection FROM TZWND_List.Window
               RESULT = IncludeSubobjectFromSubobject( TZWINDOWL,
                  "ReusableWindowSelection", TZWND_List, "Window", zPOS_AFTER );
               //:ELSE
            } 
            else
            { 
               //:SET CURSOR FIRST TZWND_List.Window
               RESULT = SetCursorFirstEntity( TZWND_List, "Window", "" );
            } 

            //:END
            //:ELSE
         } 
         else
         { 
            //:ActivateMetaOI( vSubtask, TZWND_List, TZDLG_List, zREFER_DIALOG_META, zSINGLE )
            nZRetCode = ActivateMetaOI( vSubtask, &TZWND_List, TZDLG_List,
               zREFER_DIALOG_META, zSINGLE );
            //:NAME VIEW TZWND_List "TZWND_List"
            nZRetCode = SetNameForView( TZWND_List, "TZWND_List", 0,
               zLEVEL_TASK );
         } 

         //:END
         //:ELSE
      } 
      else
      { 
         //:GET VIEW TZWND_List NAMED "TZWND_List"
         RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask,
            zLEVEL_TASK );
         //:IF RESULT >= 0
         if ( RESULT >= 0 )
         { 
            //:DropMetaOI( vSubtask, TZWND_List )
            nZRetCode = DropMetaOI( vSubtask, TZWND_List );
         } 

         //:END
         //:SET CURSOR FIRST TZDLG_List.W_MetaDef
         RESULT = SetCursorFirstEntity( TZDLG_List, "W_MetaDef", "" );
      } 

      //:END

      //:ELSE
   } 
   else
   { 

      //:GET VIEW TZWND_List NAMED "TZWND_List"
      RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask, zLEVEL_TASK );
      //:IF RESULT >= 0
      if ( RESULT >= 0 )
      { 
         //:DropMetaOI( vSubtask, TZWND_List )
         nZRetCode = DropMetaOI( vSubtask, TZWND_List );
      } 

      //:END
      //:SET CURSOR FIRST TZDLG_List.W_MetaDef
      RESULT = SetCursorFirstEntity( TZDLG_List, "W_MetaDef", "" );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:GOTO_SelectDefaultMainMenu( VIEW vSubtask )

//:   VIEW TZWINDOWL  REGISTERED AS TZWINDOWL
zOPER_EXPORT zSHORT OPERATION
GOTO_SelectDefaultMainMenu( zVIEW     vSubtask )
{
   zVIEW     TZWINDOWL = 0; 
   zSHORT    RESULT; 
   //:VIEW TZDLG_List REGISTERED AS TZDLG_List
   zVIEW     TZDLG_List = 0; 
   //:VIEW TZWND_List BASED ON LOD  TZWDLGSO
   zVIEW     TZWND_List = 0; 
   zSHORT    nZRetCode; 
   zSHORT    lTempInteger_0; 
   zSHORT    lTempInteger_1; 
   zSHORT    lTempInteger_2; 
   zLONG     lTempInteger_3; 
   zLONG     lTempInteger_4; 

   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   RESULT = GetViewByName( &TZDLG_List, "TZDLG_List", vSubtask, zLEVEL_TASK );

   //:TZWINDOWL.Dialog.wReusableSelectEntityName = "DefaultReusableMainWindow"
   nZRetCode = SetAttributeFromString( TZWINDOWL, "Dialog",
      "wReusableSelectEntityName", "DefaultReusableMainWindow" );
   //:IF TZWINDOWL.ReusableWindowSelection EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( TZWINDOWL,
      "ReusableWindowSelection" );
   if ( lTempInteger_0 == 0 )
   { 
      //:EXCLUDE TZWINDOWL.ReusableWindowSelection
      RESULT = ExcludeEntity( TZWINDOWL, "ReusableWindowSelection",
         zREPOS_AFTER );
   } 

   //:END
   //:IF TZWINDOWL.ReusableDialogSelection EXISTS
   lTempInteger_1 = CheckExistenceOfEntity( TZWINDOWL,
      "ReusableDialogSelection" );
   if ( lTempInteger_1 == 0 )
   { 
      //:EXCLUDE TZWINDOWL.ReusableDialogSelection
      RESULT = ExcludeEntity( TZWINDOWL, "ReusableDialogSelection",
         zREPOS_AFTER );
   } 

   //:END
   //:IF TZWINDOWL.DefaultReusableMainWindow EXISTS
   lTempInteger_2 = CheckExistenceOfEntity( TZWINDOWL,
      "DefaultReusableMainWindow" );
   if ( lTempInteger_2 == 0 )
   { 
      //:SET CURSOR FIRST TZDLG_List.W_MetaDef
      //:           WHERE TZDLG_List.W_MetaDef.CPLR_ZKey = TZWINDOWL.ReusableMainDialog.ZKey
      nZRetCode = GetIntegerFromAttribute( &lTempInteger_3, TZWINDOWL,
         "ReusableMainDialog", "ZKey" );
      RESULT = SetCursorFirstEntityByInteger( TZDLG_List, "W_MetaDef",
         "CPLR_ZKey", lTempInteger_3, "" );
      //:IF RESULT >= zCURSOR_SET
      if ( RESULT >= zCURSOR_SET )
      { 
         //:INCLUDE TZWINDOWL.ReusableDialogSelection FROM TZDLG_List.W_MetaDef
         RESULT = IncludeSubobjectFromSubobject( TZWINDOWL,
            "ReusableDialogSelection", TZDLG_List, "W_MetaDef", zPOS_AFTER );
         //:GET VIEW TZWND_List NAMED "TZWND_List"
         RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask,
            zLEVEL_TASK );
         //:IF RESULT >= 0
         if ( RESULT >= 0 )
         { 
            //:IF TZWND_List.Dialog.ZKey != TZWINDOWL.ReusableMainDialog.ZKey
            if ( CompareAttributeToAttribute( TZWND_List, "Dialog", "ZKey",
               TZWINDOWL, "ReusableMainDialog", "ZKey" ) != 0 )
            { 
               //:DropMetaOI( vSubtask, TZWND_List )
               nZRetCode = DropMetaOI( vSubtask, TZWND_List );
               //:TZWND_List = 0
               TZWND_List = 0;
            } 

            //:END
            //:ELSE
         } 
         else
         { 
            //:TZWND_List = 0
            TZWND_List = 0;
         } 

         //:END
         //:IF TZWND_List != 0
         if ( TZWND_List != 0 )
         { 
            //:SET CURSOR FIRST TZWND_List.Window
            //:           WHERE TZWND_List.Window.ZKey = TZWINDOWL.DefaultReusableMainWindow.ZKey
            nZRetCode = GetIntegerFromAttribute( &lTempInteger_4, TZWINDOWL,
               "DefaultReusableMainWindow", "ZKey" );
            RESULT = SetCursorFirstEntityByInteger( TZWND_List, "Window",
               "ZKey", lTempInteger_4, "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            { 
               //:INCLUDE TZWINDOWL.ReusableWindowSelection FROM TZWND_List.Window
               RESULT = IncludeSubobjectFromSubobject( TZWINDOWL,
                  "ReusableWindowSelection", TZWND_List, "Window", zPOS_AFTER );
               //:ELSE
            } 
            else
            { 
               //:SET CURSOR FIRST TZWND_List.Window
               RESULT = SetCursorFirstEntity( TZWND_List, "Window", "" );
            } 

            //:END
            //:ELSE
         } 
         else
         { 
            //:ActivateMetaOI( vSubtask, TZWND_List, TZDLG_List, zREFER_DIALOG_META, zSINGLE )
            nZRetCode = ActivateMetaOI( vSubtask, &TZWND_List, TZDLG_List,
               zREFER_DIALOG_META, zSINGLE );
            //:NAME VIEW TZWND_List "TZWND_List"
            nZRetCode = SetNameForView( TZWND_List, "TZWND_List", 0,
               zLEVEL_TASK );
         } 

         //:END
         //:ELSE
      } 
      else
      { 
         //:GET VIEW TZWND_List NAMED "TZWND_List"
         RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask,
            zLEVEL_TASK );
         //:IF RESULT >= 0
         if ( RESULT >= 0 )
         { 
            //:DropMetaOI( vSubtask, TZWND_List )
            nZRetCode = DropMetaOI( vSubtask, TZWND_List );
         } 

         //:END
         //:SET CURSOR FIRST TZDLG_List.W_MetaDef
         RESULT = SetCursorFirstEntity( TZDLG_List, "W_MetaDef", "" );
      } 

      //:END

      //:ELSE
   } 
   else
   { 

      //:GET VIEW TZWND_List NAMED "TZWND_List"
      RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask, zLEVEL_TASK );
      //:IF RESULT >= 0
      if ( RESULT >= 0 )
      { 
         //:DropMetaOI( vSubtask, TZWND_List )
         nZRetCode = DropMetaOI( vSubtask, TZWND_List );
      } 

      //:END
      //:SET CURSOR FIRST TZDLG_List.W_MetaDef
      RESULT = SetCursorFirstEntity( TZDLG_List, "W_MetaDef", "" );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:LOAD_SelectedDialog( VIEW vSubtask )

//:   VIEW TZWINDOWL  REGISTERED AS TZWINDOWL
zOPER_EXPORT zSHORT OPERATION
LOAD_SelectedDialog( zVIEW     vSubtask )
{
   zVIEW     TZWINDOWL = 0; 
   zSHORT    RESULT; 
   //:VIEW TZDLG_List REGISTERED AS TZDLG_List
   zVIEW     TZDLG_List = 0; 
   //:VIEW TZWND_List BASED ON LOD  TZWDLGSO
   zVIEW     TZWND_List = 0; 
   zSHORT    nZRetCode; 
   zSHORT    lTempInteger_0; 

   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   RESULT = GetViewByName( &TZDLG_List, "TZDLG_List", vSubtask, zLEVEL_TASK );

   //:// Make sure that TZWND_List is set up for the Dialog.
   //:GET VIEW TZWND_List NAMED "TZWND_List"
   RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask, zLEVEL_TASK );
   //:IF RESULT >= 0
   if ( RESULT >= 0 )
   { 
      //:IF TZWND_List.Dialog.ZKey != TZDLG_List.W_MetaDef.CPLR_ZKey
      if ( CompareAttributeToAttribute( TZWND_List, "Dialog", "ZKey",
         TZDLG_List, "W_MetaDef", "CPLR_ZKey" ) != 0 )
      { 
         //:IF TZWINDOWL.Dialog.ZKey = TZWND_List.Dialog.ZKey
         if ( CompareAttributeToAttribute( TZWINDOWL, "Dialog", "ZKey",
            TZWND_List, "Dialog", "ZKey" ) == 0 )
         { 
            //:DropView( TZWND_List )
            nZRetCode = DropView( TZWND_List );
            //:ELSE
         } 
         else
         { 
            //:DropMetaOI( vSubtask, TZWND_List )
            nZRetCode = DropMetaOI( vSubtask, TZWND_List );
         } 

         //:END
         //:TZWND_List = 0
         TZWND_List = 0;
      } 

      //:END
      //:ELSE
   } 
   else
   { 
      //:TZWND_List = 0
      TZWND_List = 0;
   } 

   //:END
   //:IF TZWND_List = 0
   if ( TZWND_List == 0 )
   { 
      //:IF TZDLG_List.W_MetaDef.CPLR_ZKey = TZWINDOWL.Dialog.ZKey
      if ( CompareAttributeToAttribute( TZDLG_List, "W_MetaDef", "CPLR_ZKey",
         TZWINDOWL, "Dialog", "ZKey" ) == 0 )
      { 
         //:CreateViewFromView( TZWND_List, TZWINDOWL )
         nZRetCode = CreateViewFromView( &TZWND_List, TZWINDOWL );
         //:NAME VIEW TZWND_List "TZWND_List"
         nZRetCode = SetNameForView( TZWND_List, "TZWND_List", 0, zLEVEL_TASK );
         //:ELSE
      } 
      else
      { 
         //:ActivateMetaOI( vSubtask, TZWND_List, TZDLG_List, zREFER_DIALOG_META, zSINGLE )
         nZRetCode = ActivateMetaOI( vSubtask, &TZWND_List, TZDLG_List,
            zREFER_DIALOG_META, zSINGLE );
         //:NAME VIEW TZWND_List "TZWND_List"
         nZRetCode = SetNameForView( TZWND_List, "TZWND_List", 0, zLEVEL_TASK );
      } 

      //:END
   } 

   //:END
   //:SET CURSOR FIRST TZWND_List.Window
   RESULT = SetCursorFirstEntity( TZWND_List, "Window", "" );

   //:// Make sure that the ReusableWindowSelection isn't included.
   //:IF TZWINDOWL.ReusableWindowSelection EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( TZWINDOWL,
      "ReusableWindowSelection" );
   if ( lTempInteger_0 == 0 )
   { 
      //:EXCLUDE TZWINDOWL.ReusableWindowSelection NONE
      RESULT = ExcludeEntity( TZWINDOWL, "ReusableWindowSelection",
         zREPOS_NONE );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SELECT_ReusableMenuWindow( VIEW vSubtask )

//:   VIEW TZWINDOWL  REGISTERED AS TZWINDOWL
zOPER_EXPORT zSHORT OPERATION
SELECT_ReusableMenuWindow( zVIEW     vSubtask )
{
   zVIEW     TZWINDOWL = 0; 
   zSHORT    RESULT; 
   //:VIEW TZDLG_List REGISTERED AS TZDLG_List
   zVIEW     TZDLG_List = 0; 
   //:VIEW TZWND_List REGISTERED AS TZWND_List
   zVIEW     TZWND_List = 0; 
   //:STRING ( 32 ) IncludeEntityName
   zCHAR     IncludeEntityName[ 33 ] = { 0 }; 
   //:SHORT         nRC
   zSHORT    nRC = 0; 
   zSHORT    lTempInteger_0; 
   zSHORT    lTempInteger_1; 
   zSHORT    nZRetCode; 

   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   RESULT = GetViewByName( &TZDLG_List, "TZDLG_List", vSubtask, zLEVEL_TASK );
   RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask, zLEVEL_TASK );

   //:IF TZWINDOWL.ReusableWindowSelection DOES NOT EXIST OR
   lTempInteger_0 = CheckExistenceOfEntity( TZWINDOWL,
      "ReusableWindowSelection" );
   //:   TZWINDOWL.ReusableDialogSelection DOES NOT EXIST
   lTempInteger_1 = CheckExistenceOfEntity( TZWINDOWL,
      "ReusableDialogSelection" );
   if ( lTempInteger_0 != 0 || lTempInteger_1 != 0 )
   { 

      //:MessageSend( vSubtask, "", "Select Reusable Menu",
      //:             "A Dialog or Window has not been selected.",
      //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 1 )
      nZRetCode = MessageSend( vSubtask, "", "Select Reusable Menu",
         "A Dialog or Window has not been selected.",
         zMSGQ_OBJECT_CONSTRAINT_ERROR, 1 );
      //:SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 )
      nZRetCode = SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
      //:RETURN -1
      return( -1 );
   } 

   //:END
   //:IncludeEntityName = TZWINDOWL.Dialog.wReusableSelectEntityName
   nZRetCode = GetVariableFromAttribute( IncludeEntityName, 0, 'S', 33,
      TZWINDOWL, "Dialog", "wReusableSelectEntityName", "", 0 );
   //:nRC = CheckExistenceOfEntity( TZWINDOWL, IncludeEntityName )
   nRC = CheckExistenceOfEntity( TZWINDOWL, IncludeEntityName );
   //:IF nRC >= 0
   if ( nRC >= 0 )
   { 
      //:ExcludeEntity( TZWINDOWL, IncludeEntityName, zREPOS_NONE )
      nZRetCode = ExcludeEntity( TZWINDOWL, IncludeEntityName, zREPOS_NONE );
   } 

   //:END
   //:IncludeSubobjectFromSubobject( TZWINDOWL, IncludeEntityName, TZWND_List, "Window", zPOS_AFTER )
   nZRetCode = IncludeSubobjectFromSubobject( TZWINDOWL, IncludeEntityName,
      TZWND_List, "Window", zPOS_AFTER );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:REMOVE_DefaultMainMenu( VIEW vSubtask )

//:   VIEW TZWINDOWL REGISTERED AS TZWINDOWL
zOPER_EXPORT zSHORT OPERATION
REMOVE_DefaultMainMenu( zVIEW     vSubtask )
{
   zVIEW     TZWINDOWL = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 

   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );

   //:IF TZWINDOWL.DefaultReusableMainWindow EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( TZWINDOWL,
      "DefaultReusableMainWindow" );
   if ( lTempInteger_0 == 0 )
   { 
      //:EXCLUDE TZWINDOWL.DefaultReusableMainWindow
      RESULT = ExcludeEntity( TZWINDOWL, "DefaultReusableMainWindow",
         zREPOS_AFTER );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:REMOVE_ReusableSideMenu( VIEW vSubtask )

//:   VIEW TZWINDOWL REGISTERED AS TZWINDOWL
zOPER_EXPORT zSHORT OPERATION
REMOVE_ReusableSideMenu( zVIEW     vSubtask )
{
   zVIEW     TZWINDOWL = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 

   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );

   //:IF TZWINDOWL.ReusableSideWindow EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( TZWINDOWL, "ReusableSideWindow" );
   if ( lTempInteger_0 == 0 )
   { 
      //:EXCLUDE TZWINDOWL.ReusableSideWindow
      RESULT = ExcludeEntity( TZWINDOWL, "ReusableSideWindow", zREPOS_AFTER );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:REMOVE_ReusableMainMenu( VIEW vSubtask )

//:   VIEW TZWINDOWL REGISTERED AS TZWINDOWL
zOPER_EXPORT zSHORT OPERATION
REMOVE_ReusableMainMenu( zVIEW     vSubtask )
{
   zVIEW     TZWINDOWL = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 

   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );

   //:IF TZWINDOWL.ReusableMainWindow EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( TZWINDOWL, "ReusableMainWindow" );
   if ( lTempInteger_0 == 0 )
   { 
      //:EXCLUDE TZWINDOWL.ReusableMainWindow
      RESULT = ExcludeEntity( TZWINDOWL, "ReusableMainWindow", zREPOS_AFTER );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:CONVERT_ControlClassForDialog( VIEW ViewToWindow )

//:   VIEW TZWINDOWL REGISTERED AS TZWINDOWL
zOPER_EXPORT zSHORT OPERATION
CONVERT_ControlClassForDialog( zVIEW     ViewToWindow )
{
   zVIEW     TZWINDOWL = 0; 
   zSHORT    RESULT; 
   zSHORT    nZRetCode; 

   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", ViewToWindow, zLEVEL_TASK );

   //:// Indicate that the Class Conversion is for all Windows in the Dialog.
   //:TZWINDOWL.Dialog.wClassNameConvertType = "D"
   nZRetCode = SetAttributeFromString( TZWINDOWL, "Dialog",
      "wClassNameConvertType", "D" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:CONVERT_ClassNames( VIEW ViewToWindow )

//:   VIEW TZWINDOWL REGISTERED AS TZWINDOWL
zOPER_EXPORT zSHORT OPERATION
CONVERT_ClassNames( zVIEW     ViewToWindow )
{
   zVIEW     TZWINDOWL = 0; 
   zSHORT    RESULT; 
   //:VIEW vDialog   BASED ON LOD  TZWDLGSO
   zVIEW     vDialog = 0; 
   zSHORT    nZRetCode; 

   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", ViewToWindow, zLEVEL_TASK );

   //:// Based on the Convert Type, convert Class Names for either the Dialog of the Window.
   //:CreateViewFromView( vDialog, TZWINDOWL )
   nZRetCode = CreateViewFromView( &vDialog, TZWINDOWL );
   //:IF TZWINDOWL.Dialog.wClassNameConvertType = "D"
   if ( CompareAttributeToString( TZWINDOWL, "Dialog", "wClassNameConvertType",
      "D" ) == 0 )
   { 
      //:FOR EACH vDialog.Window 
      RESULT = SetCursorFirstEntity( vDialog, "Window", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 
         //:CONVERT_ClassNamesRecursive( TZWINDOWL, vDialog )
         o_CONVERT_ClassNamesRecursive( TZWINDOWL, vDialog );
         RESULT = SetCursorNextEntity( vDialog, "Window", "" );
      } 

      //:END
      //:ELSE
   } 
   else
   { 
      //:CONVERT_ClassNamesRecursive( TZWINDOWL, vDialog )
      o_CONVERT_ClassNamesRecursive( TZWINDOWL, vDialog );
   } 

   //:END
   //:DropView( vDialog )
   nZRetCode = DropView( vDialog );
   return( 0 );
// END
} 


//:LOCAL OPERATION
//:CONVERT_ClassNamesRecursive( VIEW vDialogRoot BASED ON LOD  TZWDLGSO,
//:                             VIEW vControl    BASED ON LOD  TZWDLGSO )

//:   STRING ( 32 ) OriginalClassName
static zVOID
o_CONVERT_ClassNamesRecursive( zVIEW     vDialogRoot,
                               zVIEW     vControl )
{
   zCHAR     OriginalClassName[ 33 ] = { 0 }; 
   //:STRING ( 32 ) NewClassName
   zCHAR     NewClassName[ 33 ] = { 0 }; 
   zSHORT    nZRetCode; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:// Convert the Control Class Names.
   //:OriginalClassName = vDialogRoot.Dialog.wOriginalClassName 
   nZRetCode = GetVariableFromAttribute( OriginalClassName, 0, 'S', 33,
      vDialogRoot, "Dialog", "wOriginalClassName", "", 0 );
   //:NewClassName      = vDialogRoot.Dialog.wNewClassName 
   nZRetCode = GetVariableFromAttribute( NewClassName, 0, 'S', 33, vDialogRoot,
      "Dialog", "wNewClassName", "", 0 );
   //:FOR EACH vControl.Control
   RESULT = SetCursorFirstEntity( vControl, "Control", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF vControl.Control.CSS_Class = OriginalClassName
      if ( CompareAttributeToString( vControl, "Control", "CSS_Class",
         OriginalClassName ) == 0 )
      { 
         //:vControl.Control.CSS_Class = NewClassName
         nZRetCode = SetAttributeFromString( vControl, "Control", "CSS_Class",
            NewClassName );
      } 

      //:END
      //:IF vControl.CtrlCtrl EXISTS 
      lTempInteger_0 = CheckExistenceOfEntity( vControl, "CtrlCtrl" );
      if ( lTempInteger_0 == 0 )
      { 
         //:SetViewToSubobject( vControl, "CtrlCtrl" )
         nZRetCode = SetViewToSubobject( vControl, "CtrlCtrl" );
         //:CONVERT_ClassNamesRecursive( vDialogRoot, vControl )
         o_CONVERT_ClassNamesRecursive( vDialogRoot, vControl );
         //:ResetViewFromSubobject( vControl )
         nZRetCode = ResetViewFromSubobject( vControl );
      } 

      RESULT = SetCursorNextEntity( vControl, "Control", "" );
      //:END
   } 

   //:END
   return;
// END
} 


 
#ifdef __cplusplus
}
#endif
