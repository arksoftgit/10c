#define KZSYSSVC_INCL
#include "KZOENGAA.H"
#include "TZ__OPRS.H"
#include "ZDRVROPR.H"
#include "tzlodopr.h"

#ifdef __cplusplus
extern "C"
{
#endif

#include "ZEIDONOP.H"

zSHORT zwTZPNCW2D_CopyOperationToFile( zVIEW, zSHORT );

zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_Init( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_Cancel( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_OK( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_DropViews( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_SelectDlg( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_CaptionRefresh( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_CaptionNewText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_CaptionDeleteText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_CaptionSaveText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_ControlBuildList( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_DIL_ControlBuildList( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_DIL_OptionBuildList( zVIEW     vSubtask );


static zVOID
o_NLS_ControlBuildListR( zVIEW     vDialog,
                         zVIEW     vDialogRecursive );


zOPER_EXPORT zSHORT OPERATION
NLS_ControlDeleteText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_ControlNewText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_ControlRefresh( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_OptionRefresh( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_OptionDeleteText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_ControlSaveText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_OptionBuildList( zVIEW     vSubtask );


static zVOID
o_NLS_OptionBuildListR( zVIEW     vDialog,
                        zVIEW     vDialogRecursive );


zOPER_EXPORT zSHORT OPERATION
NLS_OptionNewText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_OptionSaveText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_DIL_ControlSaveText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_DIL_ControlNewText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_DIL_ControlRefresh( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_DIL_ControlDeleteText( zVIEW     vSubtask );


static zSHORT
o_NLS_DIL_ControlBuildListR( zVIEW     vDialog,
                             zVIEW     vDialogRecursive );


static zVOID
o_NLS_DIL_OptionBuildListR( zVIEW     vDialog,
                            zVIEW     vDialogRecursive );


zOPER_EXPORT zSHORT OPERATION
NLS_DIL_OptionNewText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_DIL_OptionDeleteText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_DIL_OptionRefresh( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
NLS_DIL_OptionSaveText( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_PostBuild( zVIEW     vSubtask );


static zSHORT
o_SEL_CLONE_CheckValues( zVIEW     vSubtask,
                         zVIEW     vWork,
                         zVIEW     OrigWindow );


zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_SetWindowName( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_Set_WindowName( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_DisableFileFields( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_SetSourceFileState( zVIEW     vSubtask );


zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_SetFileName( zVIEW     vSubtask );


static zSHORT
o_SEL_CLONE_CreateDeleteLod( zVIEW     vSubtask,
                             zVIEW     vNewWindow );


static zSHORT
o_SEL_CLONE_CreateWorkLod( zVIEW     vSubtask,
                           zVIEW     vOrigWindow,
                           zVIEW     vNewWindow,
                           zPCHAR    szVML_Name,
                           zPCHAR    szC_Name );


static zSHORT
o_SEL_CLONE_CopyOperCode( zVIEW     vSubtask );


static zSHORT
o_SEL_CLONE_CopyCode( zVIEW     vSubtask,
                      zVIEW     vOrigWindow,
                      zVIEW     vNewWindow );


static zSHORT
o_SEL_CLONE_CreateSourceFile( zVIEW     vSubtask,
                              zVIEW     vDialog,
                              zPCHAR    szLanguageType,
                              zPCHAR    szName );


zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_CheckSourceFile( zVIEW     vSubtask );


static zSHORT
o_SEL_CLONE_GenerateSourceFileName( zVIEW     vSubtask,
                                    zVIEW     vTargetDialog,
                                    zPCHAR    szControlTag,
                                    zPCHAR    szFileName );


//:DIALOG OPERATION
//:SEL_CLONE_Init( VIEW vSubtask )

//:   VIEW WorkView   BASED ON LOD TZPNCTWO
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_Init( zVIEW     vSubtask )
{
   zVIEW     WorkView = 0; 
   //:VIEW DialogList BASED ON LOD TZCMLPLO
   zVIEW     DialogList = 0; 
   //:VIEW DialogLst  BASED ON LOD TZCMLPLO
   zVIEW     DialogLst = 0; 
   //:VIEW WindowList BASED ON LOD TZWDLGSO
   zVIEW     WindowList = 0; 
   //:VIEW TZWINDOWL  BASED ON LOD TZWDLGSO
   zVIEW     TZWINDOWL = 0; 
   //:VIEW CopyOperation BASED ON LOD TZEDWDEL
   zVIEW     CopyOperation = 0; 
   //:SHORT nRC
   zSHORT    nRC = 0; 
   zSHORT    RESULT; 
   zLONG     lTempInteger_0; 


   //:GET VIEW TZWINDOWL NAMED "TZWINDOWL"
   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );

   //:// Initialize Work Lod for Copy Operationcode
   //:ActivateEmptyObjectInstance( CopyOperation, "TZEDWDEL", vSubtask, zMULTIPLE )
   ActivateEmptyObjectInstance( &CopyOperation, "TZEDWDEL", vSubtask, zMULTIPLE );
   //:CREATE ENTITY CopyOperation.SourceFile AFTER
   RESULT = CreateEntity( CopyOperation, "SourceFile", zPOS_AFTER );
   //:SetNameForView( CopyOperation, "CopyOperation", vSubtask, zLEVEL_TASK )
   SetNameForView( CopyOperation, "CopyOperation", vSubtask, zLEVEL_TASK );

   //:// Initialize Dialog List
   //:RetrieveViewForMetaList( vSubtask, DialogLst, zREFER_DIALOG_META )
   RetrieveViewForMetaList( vSubtask, &DialogLst, zREFER_DIALOG_META );

   //:// create a new Object Instance
   //:ActivateOI_FromOI_ForTask( DialogList, DialogLst, 0, zSINGLE )
   ActivateOI_FromOI_ForTask( &DialogList, DialogLst, 0, zSINGLE );
   //:SetNameForView( DialogList, "TZDLG_List", vSubtask, zLEVEL_TASK )
   SetNameForView( DialogList, "TZDLG_List", vSubtask, zLEVEL_TASK );
   //:DropView( DialogLst )
   DropView( DialogLst );

   //:// if the current Dialog was not saved, will be added the DialogList
   //:SET CURSOR FIRST DialogList.W_MetaDef
   //:           WHERE DialogList.W_MetaDef.CPLR_ZKey = TZWINDOWL.Dialog.ZKey
   GetIntegerFromAttribute( &lTempInteger_0, TZWINDOWL, "Dialog", "ZKey" );
   RESULT = SetCursorFirstEntityByInteger( DialogList, "W_MetaDef", "CPLR_ZKey", lTempInteger_0, "" );
   //:IF RESULT < zCURSOR_SET
   if ( RESULT < zCURSOR_SET )
   { 
      //:CREATE ENTITY DialogList.W_MetaDef AFTER
      RESULT = CreateEntity( DialogList, "W_MetaDef", zPOS_AFTER );
      //:DialogList.W_MetaDef.CPLR_ZKey = TZWINDOWL.Dialog.ZKey
      SetAttributeFromAttribute( DialogList, "W_MetaDef", "CPLR_ZKey", TZWINDOWL, "Dialog", "ZKey" );
      //:DialogList.W_MetaDef.Name = TZWINDOWL.Dialog.Tag
      SetAttributeFromAttribute( DialogList, "W_MetaDef", "Name", TZWINDOWL, "Dialog", "Tag" );
   } 

   //:END

   //:// Order the list by name.
   //:OrderEntityForView( DialogList, "W_MetaDef", "Name A" )
   OrderEntityForView( DialogList, "W_MetaDef", "Name A" );

   //:// Initialize Window List
   //:ActivateEmptyObjectInstance( WindowList, "TZWDLGSO", vSubtask, zSINGLE )
   ActivateEmptyObjectInstance( &WindowList, "TZWDLGSO", vSubtask, zSINGLE );
   //:SetNameForView( WindowList, "TZWND_List", vSubtask, zLEVEL_TASK )
   SetNameForView( WindowList, "TZWND_List", vSubtask, zLEVEL_TASK );

   //:// Initialize Work OI
   //:nRC = GetViewByName( WorkView, "TZPNCTWO", vSubtask, zLEVEL_ANY )
   nRC = GetViewByName( &WorkView, "TZPNCTWO", vSubtask, zLEVEL_ANY );
   //:IF nRC < 0
   if ( nRC < 0 )
   { 
      //:ActivateEmptyObjectInstance( WorkView, "TZPNCTWO", vSubtask, zSINGLE )
      ActivateEmptyObjectInstance( &WorkView, "TZPNCTWO", vSubtask, zSINGLE );
      //:SetNameForView( WorkView, "TZPNCTWO", vSubtask, zLEVEL_TASK )
      SetNameForView( WorkView, "TZPNCTWO", vSubtask, zLEVEL_TASK );
      //:CREATE ENTITY WorkView.TZPNCTWO
      RESULT = CreateEntity( WorkView, "TZPNCTWO", zPOS_AFTER );
   } 

   //:END

   //:RETURN  0
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SEL_CLONE_Cancel( VIEW vSubtask )

//:   VIEW WindowList    BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_Cancel( zVIEW     vSubtask )
{
   zVIEW     WindowList = 0; 


   //:GetViewByName( WindowList, "TZWND_List", vSubtask, zLEVEL_ANY )
   GetViewByName( &WindowList, "TZWND_List", vSubtask, zLEVEL_ANY );

   //:DropMetaOI( vSubtask, WindowList )
   DropMetaOI( vSubtask, WindowList );
   //:SEL_CLONE_DropViews( vSubtask )
   SEL_CLONE_DropViews( vSubtask );

   //:RETURN  0
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SEL_CLONE_OK( VIEW vSubtask )

//:   VIEW OrigWindow    BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_OK( zVIEW     vSubtask )
{
   zVIEW     OrigWindow = 0; 
   //:VIEW TempWindow    BASED ON LOD TZWDLGSO
   zVIEW     TempWindow = 0; 
   //:VIEW NewWindow     BASED ON LOD TZWDLGSO
   zVIEW     NewWindow = 0; 
   //:VIEW ListWindow    BASED ON LOD TZWDLGSO
   zVIEW     ListWindow = 0; 
   //:VIEW vWork         BASED ON LOD TZPNCTWO
   zVIEW     vWork = 0; 
   //:VIEW vPE           BASED ON LOD TZPESRCO
   zVIEW     vPE = 0; 
   //:VIEW LOD_List      BASED ON LOD TZCMLPLO
   zVIEW     LOD_List = 0; 
   //:VIEW SourceLPLR    BASED ON LOD TZCMLPLO
   zVIEW     SourceLPLR = 0; 

   //:STRING ( 34 )   szTag
   zCHAR     szTag[ 35 ] = { 0 }; 
   //:STRING ( 34 )   szOrigTag
   zCHAR     szOrigTag[ 35 ] = { 0 }; 
   //:STRING ( 34 )   szNewTag
   zCHAR     szNewTag[ 35 ] = { 0 }; 
   //:SHORT           nRC
   zSHORT    nRC = 0; 
   zSHORT    lTempInteger_0; 
   zSHORT    lTempInteger_1; 


   //:GetViewByName( OrigWindow, "TZWND_List", vSubtask, zLEVEL_ANY )
   GetViewByName( &OrigWindow, "TZWND_List", vSubtask, zLEVEL_ANY );
   //:GetViewByName( vWork, "TZPNCTWO", vSubtask, zLEVEL_ANY )
   GetViewByName( &vWork, "TZPNCTWO", vSubtask, zLEVEL_ANY );

   //:nRC = SEL_CLONE_CheckValues( vSubtask, vWork, OrigWindow )
   nRC = o_SEL_CLONE_CheckValues( vSubtask, vWork, OrigWindow );
   //:IF nRC < 1
   if ( nRC < 1 )
   { 
      //:RETURN nRC
      return( nRC );
   } 

   //:END

   //:GetViewByName( TempWindow, "TZWINDOWL", vSubtask, zLEVEL_ANY )
   GetViewByName( &TempWindow, "TZWINDOWL", vSubtask, zLEVEL_ANY );
   //:CreateViewFromViewForTask( NewWindow, TempWindow, vSubtask )
   CreateViewFromViewForTask( &NewWindow, TempWindow, vSubtask );

   //:RetrieveViewForMetaList( vSubtask, SourceLPLR, zREFER_DOMAIN_META )
   RetrieveViewForMetaList( vSubtask, &SourceLPLR, zREFER_DOMAIN_META );
   //:GetStringFromAttribute( szTag, vWork, "TZPNCTWO", "WindowName" )
   GetStringFromAttribute( szTag, vWork, "TZPNCTWO", "WindowName" );
   //:GetStringFromAttribute( szOrigTag, OrigWindow, "Window", "Tag" )
   GetStringFromAttribute( szOrigTag, OrigWindow, "Window", "Tag" );
   //:GetStringFromAttribute( szNewTag, NewWindow, "Window", "Tag" )
   GetStringFromAttribute( szNewTag, NewWindow, "Window", "Tag" );
   //:IF szNewTag != szTag
   if ( ZeidonStringCompare( szNewTag, 1, 0, szTag, 1, 0, 35 ) != 0 )
   { 
      //:SetCursorFirstEntityByString( NewWindow, "Window", "Tag", szTag, 0 )
      SetCursorFirstEntityByString( NewWindow, "Window", "Tag", szTag, 0 );
   } 

   //:END

   //:GetStringFromAttribute( szNewTag, NewWindow, "Window", "Tag" )
   GetStringFromAttribute( szNewTag, NewWindow, "Window", "Tag" );
   //:IF vWork.TZPNCTWO.CloneFunction = "C"
   if ( CompareAttributeToString( vWork, "TZPNCTWO", "CloneFunction", "C" ) == 0 )
   { 
      //:IF CheckExistenceOfEntity( OrigWindow, "Window" ) = zCURSOR_SET
      lTempInteger_0 = CheckExistenceOfEntity( OrigWindow, "Window" );
      if ( lTempInteger_0 == zCURSOR_SET )
      { 

         //:// Copy Operation Code
         //:nRC = SEL_CLONE_CopyCode( vSubtask, OrigWindow, NewWindow )
         nRC = o_SEL_CLONE_CopyCode( vSubtask, OrigWindow, NewWindow );
         //:IF nRC < 0
         if ( nRC < 0 )
         { 
            //:DropView( NewWindow )
            DropView( NewWindow );
            //:SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 )
            SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
            //:RETURN -1
            return( -1 );
         } 

         //:END

         //:CloneWindow( NewWindow, OrigWindow, SourceLPLR, vSubtask )
         oTZWDLGSO_CloneWindow( NewWindow, OrigWindow, SourceLPLR, vSubtask );

         //:// Set new window name if name was entered.
         //:IF vWork.TZPNCTWO.WindowName != ""
         if ( CompareAttributeToString( vWork, "TZPNCTWO", "WindowName", "" ) != 0 )
         { 
            //:NewWindow.Window.Tag = vWork.TZPNCTWO.WindowName
            SetAttributeFromAttribute( NewWindow, "Window", "Tag", vWork, "TZPNCTWO", "WindowName" );
         } 

         //:END
         //:szTag = NewWindow.Window.Tag
         GetVariableFromAttribute( szTag, 0, 'S', 35, NewWindow, "Window", "Tag", "", 0 );
         //:IF GetViewByName( ListWindow, "TZWND_LIST_Subtask", vSubtask, zLEVEL_TASK ) > 0
         lTempInteger_1 = GetViewByName( &ListWindow, "TZWND_LIST_Subtask", vSubtask, zLEVEL_TASK );
         if ( lTempInteger_1 > 0 )
         { 
            //:RefreshCtrl( ListWindow, "ListBox1" )
            RefreshCtrl( ListWindow, "ListBox1" );
         } 

         //:END

         //:// The following function, and the one below it, generate pars errors, but
         //:// is ok anyway.  The C generates correctly in spite of the errors.  The main
         //:// problem occurs because fnPainterCall is not really a global operation.  It
         //:// is a local operation within TZPNTRAD, but is faked as a global so it can be
         //:// used here.  To make it work, you must add the following prototype to the
         //:// generated C:
         //://   zLONG OPERATION fnPainterCall( zSHORT nMsg, zVIEW vSubtask,
         //://                                  zVIEW vDialog, zPCHAR szParm );
         //:fnPainterCall( 11, vSubtask, 0, szTag )
         fnPainterCall( 11, vSubtask, 0, szTag );
      } 

      //:END
      //:ELSE
   } 
   else
   { 
      //:IF vWork.TZPNCTWO.CloneFunction = "M"
      if ( CompareAttributeToString( vWork, "TZPNCTWO", "CloneFunction", "M" ) == 0 )
      { 
         //:// Get View to Presentation Environment.
         //:RetrieveViewForMetaList( vSubtask, LOD_List, zREFER_PENV_META )
         RetrieveViewForMetaList( vSubtask, &LOD_List, zREFER_PENV_META );
         //:nRC = LoadZeidonPPE( vSubtask, vPE, zREFER_PENV_META, LOD_List,
         //:                    "Configuration Management", "" )
         nRC = LoadZeidonPPE( vSubtask, &vPE, zREFER_PENV_META, LOD_List, "Configuration Management", "" );
         //:IF nRC < 0
         if ( nRC < 0 )
         { 
            //:SetAttributeFromString( vWork, "TZPNCTWO", "WindowName", "" )
            SetAttributeFromString( vWork, "TZPNCTWO", "WindowName", "" );
            //:RETURN nRC
            return( nRC );
         } 

         //:END

         //:// Copy Operation Code
         //:nRC = SEL_CLONE_CopyCode( vSubtask, OrigWindow, NewWindow )
         nRC = o_SEL_CLONE_CopyCode( vSubtask, OrigWindow, NewWindow );
         //:IF nRC < 0
         if ( nRC < 0 )
         { 
            //:DropView( NewWindow )
            DropView( NewWindow );
            //:SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 )
            SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
            //:RETURN -1
            return( -1 );
         } 

         //:END

         //:MergeWindowComponents( NewWindow, OrigWindow, SourceLPLR, vPE, vSubtask )
         oTZWDLGSO_MergeWindowComponents( NewWindow, OrigWindow, SourceLPLR, vPE, vSubtask );
         //:fnPainterCall( 8, vSubtask, 0, szTag )
         fnPainterCall( 8, vSubtask, 0, szTag );
      } 

      //:END
   } 

   //:END

   //:IF OrigWindow.Dialog.ZKey != NewWindow.Dialog.ZKey
   if ( CompareAttributeToAttribute( OrigWindow, "Dialog", "ZKey", NewWindow, "Dialog", "ZKey" ) != 0 )
   { 
      //:DropMetaOI( vSubtask, OrigWindow )
      DropMetaOI( vSubtask, OrigWindow );
   } 

   //:END

   //:SEL_CLONE_DropViews( vSubtask )
   SEL_CLONE_DropViews( vSubtask );
   //:SetAttributeFromString( vWork, "TZPNCTWO", "WindowName", "" )
   SetAttributeFromString( vWork, "TZPNCTWO", "WindowName", "" );

   //:RETURN  0
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SEL_CLONE_DropViews( VIEW vSubtask )
//:   VIEW DialogList    BASED ON LOD TZCMLPLO
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_DropViews( zVIEW     vSubtask )
{
   zVIEW     DialogList = 0; 
   //:VIEW CopyOperation BASED ON LOD TZEDWDEL
   zVIEW     CopyOperation = 0; 
   //:VIEW CopyCode      BASED ON LOD TZEDWDEL
   zVIEW     CopyCode = 0; 
   //:VIEW DeleteOp      BASED ON LOD TZEDWDEL
   zVIEW     DeleteOp = 0; 
   zSHORT    lTempInteger_0; 
   zSHORT    lTempInteger_1; 


   //:GetViewByName( DialogList, "TZDLG_List", vSubtask, zLEVEL_ANY )
   GetViewByName( &DialogList, "TZDLG_List", vSubtask, zLEVEL_ANY );
   //:GetViewByName( CopyOperation, "CopyOperation", vSubtask, zLEVEL_TASK )
   GetViewByName( &CopyOperation, "CopyOperation", vSubtask, zLEVEL_TASK );

   //:DropObjectInstance( DialogList )
   DropObjectInstance( DialogList );
   //:DropObjectInstance( CopyOperation )
   DropObjectInstance( CopyOperation );

   //:IF GetViewByName( CopyCode, "CopyCode", vSubtask, zLEVEL_TASK ) > 0
   lTempInteger_0 = GetViewByName( &CopyCode, "CopyCode", vSubtask, zLEVEL_TASK );
   if ( lTempInteger_0 > 0 )
   { 
      //:DropObjectInstance( CopyCode )
      DropObjectInstance( CopyCode );
   } 

   //:END

   //:IF GetViewByName( DeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK ) > 0
   lTempInteger_1 = GetViewByName( &DeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK );
   if ( lTempInteger_1 > 0 )
   { 
      //:DropObjectInstance( DeleteOp )
      DropObjectInstance( DeleteOp );
   } 

   //:END

   //:RETURN 0
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SEL_CLONE_SelectDlg( VIEW vSubtask )

//:   VIEW DialogList BASED ON LOD TZCMLPLO
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_SelectDlg( zVIEW     vSubtask )
{
   zVIEW     DialogList = 0; 
   //:VIEW WindowList BASED ON LOD TZWDLGSO
   zVIEW     WindowList = 0; 
   //:VIEW CurrentW   BASED ON LOD TZWDLGSO
   zVIEW     CurrentW = 0; 
   zSHORT    lTempInteger_0; 
   zSHORT    lTempInteger_1; 
   zSHORT    RESULT; 


   //:// Activate Dialog Meta
   //:GetViewByName( DialogList, "TZDLG_List", vSubtask, zLEVEL_ANY )
   GetViewByName( &DialogList, "TZDLG_List", vSubtask, zLEVEL_ANY );
   //:GetViewByName( CurrentW, "TZWINDOWL", vSubtask, zLEVEL_ANY )
   GetViewByName( &CurrentW, "TZWINDOWL", vSubtask, zLEVEL_ANY );
   //:IF GetViewByName( WindowList, "TZWND_List", vSubtask, zLEVEL_ANY ) > 0
   lTempInteger_0 = GetViewByName( &WindowList, "TZWND_List", vSubtask, zLEVEL_ANY );
   if ( lTempInteger_0 > 0 )
   { 
      //:IF CheckExistenceOfEntity( WindowList, "Dialog" ) = zCURSOR_SET
      lTempInteger_1 = CheckExistenceOfEntity( WindowList, "Dialog" );
      if ( lTempInteger_1 == zCURSOR_SET )
      { 
         //:DropMetaOI( vSubtask, WindowList )
         DropMetaOI( vSubtask, WindowList );
         //:ELSE
      } 
      else
      { 
         //:DropObjectInstance( WindowList )
         DropObjectInstance( WindowList );
      } 

      //:END
   } 

   //:END

   //:// If the Dialog selected is the same as the Dialog currently
   //:// processed by the Painter, create a new view to it.  Otherwise
   //:// activate a new OI.
   //:IF DialogList.W_MetaDef.CPLR_ZKey = CurrentW.Dialog.ZKey
   if ( CompareAttributeToAttribute( DialogList, "W_MetaDef", "CPLR_ZKey", CurrentW, "Dialog", "ZKey" ) == 0 )
   { 
      //:CreateViewFromViewForTask( WindowList, CurrentW, vSubtask )
      CreateViewFromViewForTask( &WindowList, CurrentW, vSubtask );
      //:ELSE
   } 
   else
   { 
      //:ActivateMetaOI( vSubtask, WindowList, DialogList, zREFER_DIALOG_META, zSINGLE )
      ActivateMetaOI( vSubtask, &WindowList, DialogList, zREFER_DIALOG_META, zSINGLE );
   } 

   //:END

   //:SetNameForView( WindowList, "TZWND_List", vSubtask, zLEVEL_TASK )
   SetNameForView( WindowList, "TZWND_List", vSubtask, zLEVEL_TASK );

   //:OrderEntityForView( WindowList, "Window", "Tag A" )
   OrderEntityForView( WindowList, "Window", "Tag A" );
   //:SET CURSOR FIRST WindowList.Window
   RESULT = SetCursorFirstEntity( WindowList, "Window", "" );

   //:SEL_CLONE_SetSourceFileState( vSubtask )
   SEL_CLONE_SetSourceFileState( vSubtask );
   //:RefreshCtrl( vSubtask, "WindowList" )
   RefreshCtrl( vSubtask, "WindowList" );

   //:RETURN  0
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_CaptionRefresh( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_CaptionRefresh( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:// Before refreshing the Caption list box, set up the Profile XFER object with
   //:// the NLS attributes for the NLS edit boxes.  Also enable the edit boxes..
   //:IF vDialog.CaptionNLS_Text EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "CaptionNLS_Text" );
   if ( lTempInteger_0 == 0 )
   { 
      //:Profile.TZ.NLS_LanguageIndex = vDialog.CaptionNLS_Text.LanguageIndex
      SetAttributeFromAttribute( Profile, "TZ", "NLS_LanguageIndex", vDialog, "CaptionNLS_Text", "LanguageIndex" );
      //:Profile.TZ.NLS_LastText = vDialog.CaptionNLS_Text.Text
      SetAttributeFromAttribute( Profile, "TZ", "NLS_LastText", vDialog, "CaptionNLS_Text", "Text" );
      //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE )
      SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE );
      //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE )
      SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE );
      //:ELSE
   } 
   else
   { 
      //:// If there is no NLS entity, disable the edit boxes and set text to spaces.
      //:Profile.TZ.NLS_LastText = ""
      SetAttributeFromString( Profile, "TZ", "NLS_LastText", "" );
      //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, FALSE );
      //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, FALSE );
   } 

   //:END

   //:// Now refresh all three controls
   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   //:RefreshCtrl( vSubtask, "NLS_Text" )
   RefreshCtrl( vSubtask, "NLS_Text" );
   //:RefreshCtrl( vSubtask, "NLS_Code" )
   RefreshCtrl( vSubtask, "NLS_Code" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_CaptionNewText( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_CaptionNewText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:// Create the new entity with default values.  We will make sure that
   //:// the profile has a default LanguageIndex and the text is initialized
   //:// with original text.
   //:IF Profile.TZ.NLS_LanguageIndex = 0
   if ( CompareAttributeToInteger( Profile, "TZ", "NLS_LanguageIndex", 0 ) == 0 )
   { 
      //:Profile.TZ.NLS_LanguageIndex = 1
      SetAttributeFromInteger( Profile, "TZ", "NLS_LanguageIndex", 1 );
   } 

   //:END
   //:Profile.TZ.NLS_LastText = vDialog.Window.Caption
   SetAttributeFromAttribute( Profile, "TZ", "NLS_LastText", vDialog, "Window", "Caption" );

   //:CreateMetaEntity( vSubtask, vDialog, "CaptionNLS_Text", zPOS_AFTER )
   CreateMetaEntity( vSubtask, vDialog, "CaptionNLS_Text", zPOS_AFTER );
   //:vDialog.CaptionNLS_Text.Text = Profile.TZ.NLS_LastText
   SetAttributeFromAttribute( vDialog, "CaptionNLS_Text", "Text", Profile, "TZ", "NLS_LastText" );
   //:vDialog.CaptionNLS_Text.LanguageIndex = Profile.TZ.NLS_LanguageIndex
   SetAttributeFromAttribute( vDialog, "CaptionNLS_Text", "LanguageIndex", Profile, "TZ", "NLS_LanguageIndex" );

   //:// Allow the NLS edit boxes to be active and initialize text with original
   //:// text.

   //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE )
   SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE );
   //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE )
   SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE );
   //:RefreshCtrl( vSubtask, "NLS_Text" )
   RefreshCtrl( vSubtask, "NLS_Text" );
   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_CaptionDeleteText( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_CaptionDeleteText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );

   //:IF vDialog.CaptionNLS_Text EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "CaptionNLS_Text" );
   if ( lTempInteger_0 == 0 )
   { 
      //:DELETE ENTITY vDialog.CaptionNLS_Text
      RESULT = DeleteEntity( vDialog, "CaptionNLS_Text", zPOS_NEXT );
      //:NLS_CaptionRefresh( vSubtask )
      NLS_CaptionRefresh( vSubtask );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_CaptionSaveText( VIEW vSubtask )

//:   // On save, copy the Profile attributes that were entered in the window
//:   // over to the NLS_CaptionText entity.

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_CaptionSaveText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:IF vDialog.CaptionNLS_Text EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "CaptionNLS_Text" );
   if ( lTempInteger_0 == 0 )
   { 
      //:vDialog.CaptionNLS_Text.LanguageIndex = Profile.TZ.NLS_LanguageIndex
      SetAttributeFromAttribute( vDialog, "CaptionNLS_Text", "LanguageIndex", Profile, "TZ", "NLS_LanguageIndex" );
      //:vDialog.CaptionNLS_Text.Text = Profile.TZ.NLS_LastText
      SetAttributeFromAttribute( vDialog, "CaptionNLS_Text", "Text", Profile, "TZ", "NLS_LastText" );
   } 

   //:END

   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_ControlBuildList( VIEW vSubtask )

//:   VIEW vDialog          BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_ControlBuildList( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW vTZWINDOWL       BASED ON LOD TZWDLGSO
   zVIEW     vTZWINDOWL = 0; 
   //:VIEW vDialogRecursive BASED ON LOD TZWDLGSO
   zVIEW     vDialogRecursive = 0; 
   zSHORT    RESULT; 


   //:// Build the NLS_ControlText entries for processing NLS Control Text entries.
   //:GET VIEW vTZWINDOWL NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vTZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:CreateViewFromViewForTask( vDialog, vTZWINDOWL, vSubtask )
   CreateViewFromViewForTask( &vDialog, vTZWINDOWL, vSubtask );

   //:// First remove any entries that already exist.
   //:FOR EACH vDialog.NLS_Control
   RESULT = SetCursorFirstEntity( vDialog, "NLS_Control", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:EXCLUDE vDialog.NLS_Control NONE
      RESULT = ExcludeEntity( vDialog, "NLS_Control", zREPOS_NONE );
      RESULT = SetCursorNextEntity( vDialog, "NLS_Control", "" );
   } 

   //:END

   //:// Now, process all Control entities hierarchically to include new entries.

   //:SET CURSOR FIRST vDialog.Window
   RESULT = SetCursorFirstEntity( vDialog, "Window", "" );
   //:CreateViewFromViewForTask( vDialogRecursive, vDialog, vSubtask )
   CreateViewFromViewForTask( &vDialogRecursive, vDialog, vSubtask );

   //:FOR EACH vDialogRecursive.Control WITHIN vDialogRecursive.Dialog
   RESULT = SetCursorFirstEntity( vDialogRecursive, "Control", "Dialog" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF vDialogRecursive.Control.Text != ""
      if ( CompareAttributeToString( vDialogRecursive, "Control", "Text", "" ) != 0 )
      { 
         //:INCLUDE vDialog.NLS_Control FROM vDialogRecursive.Control
         RESULT = IncludeSubobjectFromSubobject( vDialog, "NLS_Control", vDialogRecursive, "Control", zPOS_AFTER );
      } 

      //:END
      //:FOR EACH vDialogRecursive.CtrlCtrl
      RESULT = SetCursorFirstEntity( vDialogRecursive, "CtrlCtrl", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 
         //:NLS_ControlBuildListR( vDialog, vDialogRecursive )
         o_NLS_ControlBuildListR( vDialog, vDialogRecursive );
         RESULT = SetCursorNextEntity( vDialogRecursive, "CtrlCtrl", "" );
      } 

      RESULT = SetCursorNextEntity( vDialogRecursive, "Control", "Dialog" );
      //:END
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_DIL_ControlBuildList( VIEW vSubtask )

//:   VIEW vDialog          BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_DIL_ControlBuildList( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW vTZWINDOWL       BASED ON LOD TZWDLGSO
   zVIEW     vTZWINDOWL = 0; 
   //:VIEW vDialogRecursive BASED ON LOD TZWDLGSO
   zVIEW     vDialogRecursive = 0; 
   zSHORT    RESULT; 


   //:// Build the NLS_DIL_Text entries for processing NLS DIL_ Text entries.
   //:GET VIEW vTZWINDOWL NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vTZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:CreateViewFromViewForTask( vDialog, vTZWINDOWL, vSubtask )
   CreateViewFromViewForTask( &vDialog, vTZWINDOWL, vSubtask );

   //:// First remove any entries that already exist.
   //:FOR EACH vDialog.NLS_DIL_Control
   RESULT = SetCursorFirstEntity( vDialog, "NLS_DIL_Control", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:EXCLUDE vDialog.NLS_DIL_Control NONE
      RESULT = ExcludeEntity( vDialog, "NLS_DIL_Control", zREPOS_NONE );
      RESULT = SetCursorNextEntity( vDialog, "NLS_DIL_Control", "" );
   } 

   //:END

   //:// Now, process all Control entities hierarchically to include new entries.

   //:SET CURSOR FIRST vDialog.Window
   RESULT = SetCursorFirstEntity( vDialog, "Window", "" );
   //:CreateViewFromViewForTask( vDialogRecursive, vDialog, vSubtask )
   CreateViewFromViewForTask( &vDialogRecursive, vDialog, vSubtask );

   //:FOR EACH vDialogRecursive.Control WITHIN vDialogRecursive.Dialog
   RESULT = SetCursorFirstEntity( vDialogRecursive, "Control", "Dialog" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF vDialogRecursive.Control.DIL_Text != ""
      if ( CompareAttributeToString( vDialogRecursive, "Control", "DIL_Text", "" ) != 0 )
      { 
         //:INCLUDE vDialog.NLS_DIL_Control FROM vDialogRecursive.Control
         RESULT = IncludeSubobjectFromSubobject( vDialog, "NLS_DIL_Control", vDialogRecursive, "Control", zPOS_AFTER );
      } 

      //:END
      //:FOR EACH vDialogRecursive.CtrlCtrl
      RESULT = SetCursorFirstEntity( vDialogRecursive, "CtrlCtrl", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 
         //:NLS_DIL_ControlBuildListR( vDialog, vDialogRecursive )
         o_NLS_DIL_ControlBuildListR( vDialog, vDialogRecursive );
         RESULT = SetCursorNextEntity( vDialogRecursive, "CtrlCtrl", "" );
      } 

      RESULT = SetCursorNextEntity( vDialogRecursive, "Control", "Dialog" );
      //:END
   } 

   //:END

   //:DropView( vDialog )
   DropView( vDialog );
   //:DropView( vDialogRecursive )
   DropView( vDialogRecursive );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_DIL_OptionBuildList( VIEW vSubtask )

//:   VIEW vDialog          BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_DIL_OptionBuildList( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW vTZWINDOWL       BASED ON LOD TZWDLGSO
   zVIEW     vTZWINDOWL = 0; 
   //:VIEW vDialogRecursive BASED ON LOD TZWDLGSO
   zVIEW     vDialogRecursive = 0; 
   zSHORT    RESULT; 


   //:// Build the NLS_DIL_Text entries for processing NLS DIL_ Text entries.
   //:GET VIEW vTZWINDOWL NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vTZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:CreateViewFromViewForTask( vDialog, vTZWINDOWL, vSubtask )
   CreateViewFromViewForTask( &vDialog, vTZWINDOWL, vSubtask );

   //:// First remove any entries that already exist.
   //:FOR EACH vDialog.NLS_DIL_Option
   RESULT = SetCursorFirstEntity( vDialog, "NLS_DIL_Option", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:EXCLUDE vDialog.NLS_DIL_Option NONE
      RESULT = ExcludeEntity( vDialog, "NLS_DIL_Option", zREPOS_NONE );
      RESULT = SetCursorNextEntity( vDialog, "NLS_DIL_Option", "" );
   } 

   //:END

   //:// Now, process all Option entities hierarchically to include new entries.

   //:SET CURSOR FIRST vDialog.Window
   RESULT = SetCursorFirstEntity( vDialog, "Window", "" );
   //:CreateViewFromViewForTask( vDialogRecursive, vDialog, vSubtask )
   CreateViewFromViewForTask( &vDialogRecursive, vDialog, vSubtask );

   //:FOR EACH vDialogRecursive.Option WITHIN vDialogRecursive.Dialog
   RESULT = SetCursorFirstEntity( vDialogRecursive, "Option", "Dialog" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF vDialogRecursive.Option.DIL_Text != ""
      if ( CompareAttributeToString( vDialogRecursive, "Option", "DIL_Text", "" ) != 0 )
      { 
         //:INCLUDE vDialog.NLS_DIL_Option FROM vDialogRecursive.Option
         RESULT = IncludeSubobjectFromSubobject( vDialog, "NLS_DIL_Option", vDialogRecursive, "Option", zPOS_AFTER );
      } 

      //:END
      //:FOR EACH vDialogRecursive.OptOpt
      RESULT = SetCursorFirstEntity( vDialogRecursive, "OptOpt", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 
         //:NLS_DIL_OptionBuildListR( vDialog, vDialogRecursive )
         o_NLS_DIL_OptionBuildListR( vDialog, vDialogRecursive );
         RESULT = SetCursorNextEntity( vDialogRecursive, "OptOpt", "" );
      } 

      RESULT = SetCursorNextEntity( vDialogRecursive, "Option", "Dialog" );
      //:END
   } 

   //:END
   return( 0 );
// END
} 


//:LOCAL OPERATION
static zVOID
o_NLS_ControlBuildListR( zVIEW     vDialog,
                         zVIEW     vDialogRecursive )
{
   zSHORT    RESULT; 

   //:NLS_ControlBuildListR( VIEW vDialog          BASED ON LOD TZWDLGSO,
   //:                    VIEW vDialogRecursive BASED ON LOD TZWDLGSO )

   //:// Recursive call to process sub Control

   //:SetViewToSubobject( vDialogRecursive, "CtrlCtrl" )
   SetViewToSubobject( vDialogRecursive, "CtrlCtrl" );

   //:FOR EACH vDialogRecursive.Control
   RESULT = SetCursorFirstEntity( vDialogRecursive, "Control", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF vDialogRecursive.Control.Text != ""
      if ( CompareAttributeToString( vDialogRecursive, "Control", "Text", "" ) != 0 )
      { 
         //:INCLUDE vDialog.NLS_Control FROM vDialogRecursive.Control
         RESULT = IncludeSubobjectFromSubobject( vDialog, "NLS_Control", vDialogRecursive, "Control", zPOS_AFTER );
      } 

      //:END
      //:FOR EACH vDialogRecursive.CtrlCtrl
      RESULT = SetCursorFirstEntity( vDialogRecursive, "CtrlCtrl", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 
         //:NLS_ControlBuildListR( vDialog, vDialogRecursive )
         o_NLS_ControlBuildListR( vDialog, vDialogRecursive );
         RESULT = SetCursorNextEntity( vDialogRecursive, "CtrlCtrl", "" );
      } 

      RESULT = SetCursorNextEntity( vDialogRecursive, "Control", "" );
      //:END
   } 

   //:END

   //:ResetViewFromSubobject( vDialogRecursive )
   ResetViewFromSubobject( vDialogRecursive );
   return;
// END
} 


//:DIALOG OPERATION
//:NLS_ControlDeleteText( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_ControlDeleteText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );

   //:IF vDialog.NLS_ControlText EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_ControlText" );
   if ( lTempInteger_0 == 0 )
   { 
      //:DELETE ENTITY vDialog.NLS_ControlText
      RESULT = DeleteEntity( vDialog, "NLS_ControlText", zPOS_NEXT );
      //:NLS_ControlRefresh( vSubtask )
      NLS_ControlRefresh( vSubtask );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_ControlNewText( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_ControlNewText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:// Create the new entity with default values.  We will make sure that
   //:// the profile has a default LanguageIndex and the text is initialized
   //:// with original text.
   //:IF Profile.TZ.NLS_LanguageIndex = 0
   if ( CompareAttributeToInteger( Profile, "TZ", "NLS_LanguageIndex", 0 ) == 0 )
   { 
      //:Profile.TZ.NLS_LanguageIndex = 1
      SetAttributeFromInteger( Profile, "TZ", "NLS_LanguageIndex", 1 );
   } 

   //:END
   //:Profile.TZ.NLS_LastText = vDialog.NLS_Control.Text
   SetAttributeFromAttribute( Profile, "TZ", "NLS_LastText", vDialog, "NLS_Control", "Text" );

   //:CreateMetaEntity( vSubtask, vDialog, "NLS_ControlText", zPOS_AFTER )
   CreateMetaEntity( vSubtask, vDialog, "NLS_ControlText", zPOS_AFTER );
   //:vDialog.NLS_ControlText.Text = Profile.TZ.NLS_LastText
   SetAttributeFromAttribute( vDialog, "NLS_ControlText", "Text", Profile, "TZ", "NLS_LastText" );
   //:vDialog.NLS_ControlText.LanguageIndex = Profile.TZ.NLS_LanguageIndex
   SetAttributeFromAttribute( vDialog, "NLS_ControlText", "LanguageIndex", Profile, "TZ", "NLS_LanguageIndex" );

   //:// Allow the NLS edit boxes to be active and initialize text with original text.
   //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE )
   SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE );
   //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE )
   SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE );
   //:RefreshCtrl( vSubtask, "NLS_Text" )
   RefreshCtrl( vSubtask, "NLS_Text" );
   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_ControlRefresh( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_ControlRefresh( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:// Before refreshing the Control list box, set up the Profile XFER object
   //:// with the NLS attributes for the NLS edit boxes.  Also enable the edit
   //:// boxes..
   //:IF vDialog.NLS_ControlText  EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_ControlText" );
   if ( lTempInteger_0 == 0 )
   { 
      //:Profile.TZ.NLS_LanguageIndex = vDialog.NLS_ControlText.LanguageIndex
      SetAttributeFromAttribute( Profile, "TZ", "NLS_LanguageIndex", vDialog, "NLS_ControlText", "LanguageIndex" );
      //:Profile.TZ.NLS_LastText = vDialog.NLS_ControlText.Text
      SetAttributeFromAttribute( Profile, "TZ", "NLS_LastText", vDialog, "NLS_ControlText", "Text" );
      //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE )
      SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE );
      //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE )
      SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE );
      //:ELSE
   } 
   else
   { 
      //:// If there is no NLS entity, disable the edit boxes and set text to spaces.
      //:Profile.TZ.NLS_LastText = ""
      SetAttributeFromString( Profile, "TZ", "NLS_LastText", "" );
      //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, FALSE );
      //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, FALSE );
   } 

   //:END

   //:// Now refresh all three controls
   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   //:RefreshCtrl( vSubtask, "NLS_Text" )
   RefreshCtrl( vSubtask, "NLS_Text" );
   //:RefreshCtrl( vSubtask, "NLS_Code" )
   RefreshCtrl( vSubtask, "NLS_Code" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_OptionRefresh( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_OptionRefresh( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:// Before refreshing the Option list box, set up the Profile XFER object
   //:// with the NLS attributes for the NLS edit boxes.  Also enable the edit
   //:// boxes..
   //:IF vDialog.NLS_OptionText  EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_OptionText" );
   if ( lTempInteger_0 == 0 )
   { 
      //:Profile.TZ.NLS_LanguageIndex = vDialog.NLS_OptionText.LanguageIndex
      SetAttributeFromAttribute( Profile, "TZ", "NLS_LanguageIndex", vDialog, "NLS_OptionText", "LanguageIndex" );
      //:Profile.TZ.NLS_LastText = vDialog.NLS_OptionText.Text
      SetAttributeFromAttribute( Profile, "TZ", "NLS_LastText", vDialog, "NLS_OptionText", "Text" );
      //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE )
      SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE );
      //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE )
      SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE );
      //:ELSE
   } 
   else
   { 
      //:// If there is no NLS entity, disable the edit boxes and set text to
      //:// spaces.
      //:Profile.TZ.NLS_LastText = ""
      SetAttributeFromString( Profile, "TZ", "NLS_LastText", "" );
      //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, FALSE );
      //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, FALSE );
   } 

   //:END

   //:// Now refresh all three controls
   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   //:RefreshCtrl( vSubtask, "NLS_Text" )
   RefreshCtrl( vSubtask, "NLS_Text" );
   //:RefreshCtrl( vSubtask, "NLS_Code" )
   RefreshCtrl( vSubtask, "NLS_Code" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_OptionDeleteText( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_OptionDeleteText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );

   //:IF vDialog.NLS_OptionText EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_OptionText" );
   if ( lTempInteger_0 == 0 )
   { 
      //:DELETE ENTITY vDialog.NLS_OptionText
      RESULT = DeleteEntity( vDialog, "NLS_OptionText", zPOS_NEXT );
      //:NLS_OptionRefresh( vSubtask )
      NLS_OptionRefresh( vSubtask );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_ControlSaveText( VIEW vSubtask )

//:   // On save, copy the Profile attributes that were entered in the window
//:   // over to the NLS_ControlText entity.

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_ControlSaveText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:IF vDialog.NLS_ControlText EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_ControlText" );
   if ( lTempInteger_0 == 0 )
   { 
      //:vDialog.NLS_ControlText.LanguageIndex = Profile.TZ.NLS_LanguageIndex
      SetAttributeFromAttribute( vDialog, "NLS_ControlText", "LanguageIndex", Profile, "TZ", "NLS_LanguageIndex" );
      //:vDialog.NLS_ControlText.Text = Profile.TZ.NLS_LastText
      SetAttributeFromAttribute( vDialog, "NLS_ControlText", "Text", Profile, "TZ", "NLS_LastText" );
   } 

   //:END

   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_OptionBuildList( VIEW vSubtask )

//:   VIEW vDialog          BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_OptionBuildList( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW vTZWINDOWL       BASED ON LOD TZWDLGSO
   zVIEW     vTZWINDOWL = 0; 
   //:VIEW vDialogRecursive BASED ON LOD TZWDLGSO
   zVIEW     vDialogRecursive = 0; 
   zSHORT    RESULT; 


   //:// Build the NLS_OptionText entries for processing NLS Option Text entries.
   //:GET VIEW vTZWINDOWL NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vTZWINDOWL, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:CreateViewFromViewForTask( vDialog, vTZWINDOWL, vSubtask )
   CreateViewFromViewForTask( &vDialog, vTZWINDOWL, vSubtask );

   //:// First remove any entries that already exist.
   //:FOR EACH vDialog.NLS_Option
   RESULT = SetCursorFirstEntity( vDialog, "NLS_Option", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:EXCLUDE vDialog.NLS_Option NONE
      RESULT = ExcludeEntity( vDialog, "NLS_Option", zREPOS_NONE );
      RESULT = SetCursorNextEntity( vDialog, "NLS_Option", "" );
   } 

   //:END

   //:// Now, process all Option entities hierarchically to include new entries.

   //:SET CURSOR FIRST vDialog.Window
   RESULT = SetCursorFirstEntity( vDialog, "Window", "" );
   //:CreateViewFromViewForTask( vDialogRecursive, vDialog, vSubtask )
   CreateViewFromViewForTask( &vDialogRecursive, vDialog, vSubtask );

   //:FOR EACH vDialogRecursive.Option WITHIN vDialogRecursive.Dialog
   RESULT = SetCursorFirstEntity( vDialogRecursive, "Option", "Dialog" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF vDialogRecursive.Option.Text != ""
      if ( CompareAttributeToString( vDialogRecursive, "Option", "Text", "" ) != 0 )
      { 
         //:INCLUDE vDialog.NLS_Option FROM vDialogRecursive.Option
         RESULT = IncludeSubobjectFromSubobject( vDialog, "NLS_Option", vDialogRecursive, "Option", zPOS_AFTER );
      } 

      //:END
      //:FOR EACH vDialogRecursive.OptOpt
      RESULT = SetCursorFirstEntity( vDialogRecursive, "OptOpt", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 
         //:NLS_OptionBuildListR( vDialog, vDialogRecursive )
         o_NLS_OptionBuildListR( vDialog, vDialogRecursive );
         RESULT = SetCursorNextEntity( vDialogRecursive, "OptOpt", "" );
      } 

      RESULT = SetCursorNextEntity( vDialogRecursive, "Option", "Dialog" );
      //:END
   } 

   //:END
   return( 0 );
// END
} 


//:LOCAL OPERATION
static zVOID
o_NLS_OptionBuildListR( zVIEW     vDialog,
                        zVIEW     vDialogRecursive )
{
   zSHORT    RESULT; 

   //:NLS_OptionBuildListR( VIEW vDialog          BASED ON LOD TZWDLGSO,
   //:                   VIEW vDialogRecursive BASED ON LOD TZWDLGSO )

   //:// Recursive call to process sub Option

   //:SetViewToSubobject( vDialogRecursive, "OptOpt" )
   SetViewToSubobject( vDialogRecursive, "OptOpt" );

   //:FOR EACH vDialogRecursive.Option
   RESULT = SetCursorFirstEntity( vDialogRecursive, "Option", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF vDialogRecursive.Option.Text != ""
      if ( CompareAttributeToString( vDialogRecursive, "Option", "Text", "" ) != 0 )
      { 
         //:INCLUDE vDialog.NLS_Option FROM vDialogRecursive.Option
         RESULT = IncludeSubobjectFromSubobject( vDialog, "NLS_Option", vDialogRecursive, "Option", zPOS_AFTER );
      } 

      //:END
      //:FOR EACH vDialogRecursive.OptOpt
      RESULT = SetCursorFirstEntity( vDialogRecursive, "OptOpt", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 
         //:NLS_OptionBuildListR( vDialog, vDialogRecursive )
         o_NLS_OptionBuildListR( vDialog, vDialogRecursive );
         RESULT = SetCursorNextEntity( vDialogRecursive, "OptOpt", "" );
      } 

      RESULT = SetCursorNextEntity( vDialogRecursive, "Option", "" );
      //:END
   } 

   //:END

   //:ResetViewFromSubobject( vDialogRecursive )
   ResetViewFromSubobject( vDialogRecursive );
   return;
// END
} 


//:DIALOG OPERATION
//:NLS_OptionNewText( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_OptionNewText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:// Create the new entity with default values.  We will make sure that
   //:// the profile has a default LanguageIndex and the text is initialized
   //:// with original text.
   //:IF Profile.TZ.NLS_LanguageIndex = 0
   if ( CompareAttributeToInteger( Profile, "TZ", "NLS_LanguageIndex", 0 ) == 0 )
   { 
      //:Profile.TZ.NLS_LanguageIndex = 1
      SetAttributeFromInteger( Profile, "TZ", "NLS_LanguageIndex", 1 );
   } 

   //:END
   //:Profile.TZ.NLS_LastText = vDialog.NLS_Option.Text
   SetAttributeFromAttribute( Profile, "TZ", "NLS_LastText", vDialog, "NLS_Option", "Text" );

   //:CreateMetaEntity( vSubtask, vDialog, "NLS_OptionText", zPOS_AFTER )
   CreateMetaEntity( vSubtask, vDialog, "NLS_OptionText", zPOS_AFTER );
   //:vDialog.NLS_OptionText.Text = Profile.TZ.NLS_LastText
   SetAttributeFromAttribute( vDialog, "NLS_OptionText", "Text", Profile, "TZ", "NLS_LastText" );
   //:vDialog.NLS_OptionText.LanguageIndex = Profile.TZ.NLS_LanguageIndex
   SetAttributeFromAttribute( vDialog, "NLS_OptionText", "LanguageIndex", Profile, "TZ", "NLS_LanguageIndex" );

   //:// Allow the NLS edit boxes to be active and initialize text with original
   //:// text.
   //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE )
   SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE );
   //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE )
   SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE );
   //:RefreshCtrl( vSubtask, "NLS_Text" )
   RefreshCtrl( vSubtask, "NLS_Text" );
   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_OptionSaveText( VIEW vSubtask )

//:   // On save, copy the Profile attributes that were entered in the window
//:   // over to the NLS_OptionText entity.

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_OptionSaveText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:IF vDialog.NLS_OptionText EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_OptionText" );
   if ( lTempInteger_0 == 0 )
   { 
      //:vDialog.NLS_OptionText.LanguageIndex = Profile.TZ.NLS_LanguageIndex
      SetAttributeFromAttribute( vDialog, "NLS_OptionText", "LanguageIndex", Profile, "TZ", "NLS_LanguageIndex" );
      //:vDialog.NLS_OptionText.Text = Profile.TZ.NLS_LastText
      SetAttributeFromAttribute( vDialog, "NLS_OptionText", "Text", Profile, "TZ", "NLS_LastText" );
   } 

   //:END

   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_DIL_ControlSaveText( VIEW vSubtask )

//:   // On save, copy the Profile attributes that were entered in the window
//:   // over to the NLS_DIL_Text entity.

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_DIL_ControlSaveText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:IF vDialog.NLS_ControlDIL_Text EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_ControlDIL_Text" );
   if ( lTempInteger_0 == 0 )
   { 
      //:vDialog.NLS_ControlDIL_Text.LanguageIndex = Profile.TZ.NLS_LanguageIndex
      SetAttributeFromAttribute( vDialog, "NLS_ControlDIL_Text", "LanguageIndex", Profile, "TZ", "NLS_LanguageIndex" );
      //:vDialog.NLS_ControlDIL_Text.Text = Profile.TZ.NLS_LastText
      SetAttributeFromAttribute( vDialog, "NLS_ControlDIL_Text", "Text", Profile, "TZ", "NLS_LastText" );
   } 

   //:END

   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_DIL_ControlNewText( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_DIL_ControlNewText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:// Create the new entity with default values.  We will make sure that
   //:// the profile has a default LanguageIndex and the text is initialized
   //:// with original text.
   //:IF Profile.TZ.NLS_LanguageIndex = 0
   if ( CompareAttributeToInteger( Profile, "TZ", "NLS_LanguageIndex", 0 ) == 0 )
   { 
      //:Profile.TZ.NLS_LanguageIndex = 1
      SetAttributeFromInteger( Profile, "TZ", "NLS_LanguageIndex", 1 );
   } 

   //:END
   //:Profile.TZ.NLS_LastText = vDialog.NLS_DIL_Control.DIL_Text
   SetAttributeFromAttribute( Profile, "TZ", "NLS_LastText", vDialog, "NLS_DIL_Control", "DIL_Text" );

   //:CreateMetaEntity( vSubtask, vDialog, "NLS_ControlDIL_Text", zPOS_AFTER )
   CreateMetaEntity( vSubtask, vDialog, "NLS_ControlDIL_Text", zPOS_AFTER );
   //:vDialog.NLS_ControlDIL_Text.Text = Profile.TZ.NLS_LastText
   SetAttributeFromAttribute( vDialog, "NLS_ControlDIL_Text", "Text", Profile, "TZ", "NLS_LastText" );
   //:vDialog.NLS_ControlDIL_Text.LanguageIndex = Profile.TZ.NLS_LanguageIndex
   SetAttributeFromAttribute( vDialog, "NLS_ControlDIL_Text", "LanguageIndex", Profile, "TZ", "NLS_LanguageIndex" );

   //:// Allow the NLS edit boxes to be active and initialize text with original
   //:// text.
   //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE )
   SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE );
   //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE )
   SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE );
   //:RefreshCtrl( vSubtask, "NLS_Text" )
   RefreshCtrl( vSubtask, "NLS_Text" );
   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_DIL_ControlRefresh( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_DIL_ControlRefresh( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:// Before refreshing the DIL list box, set up the Profile XFER object with
   //:// the NLS attributes for the NLS edit boxes.  Also enable the edit boxes..
   //:IF vDialog.NLS_ControlDIL_Text  EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_ControlDIL_Text" );
   if ( lTempInteger_0 == 0 )
   { 
      //:Profile.TZ.NLS_LanguageIndex = vDialog.NLS_ControlDIL_Text.LanguageIndex
      SetAttributeFromAttribute( Profile, "TZ", "NLS_LanguageIndex", vDialog, "NLS_ControlDIL_Text", "LanguageIndex" );
      //:Profile.TZ.NLS_LastText = vDialog.NLS_ControlDIL_Text.Text
      SetAttributeFromAttribute( Profile, "TZ", "NLS_LastText", vDialog, "NLS_ControlDIL_Text", "Text" );
      //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE )
      SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE );
      //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE )
      SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE );
      //:ELSE
   } 
   else
   { 
      //:// If there is no NLS entity, disable the edit boxes and set text to
      //:// spaces.
      //:Profile.TZ.NLS_LastText = ""
      SetAttributeFromString( Profile, "TZ", "NLS_LastText", "" );
      //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, FALSE );
      //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, FALSE );
   } 

   //:END

   //:// Now refresh all three controls
   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   //:RefreshCtrl( vSubtask, "NLS_Text" )
   RefreshCtrl( vSubtask, "NLS_Text" );
   //:RefreshCtrl( vSubtask, "NLS_Code" )
   RefreshCtrl( vSubtask, "NLS_Code" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_DIL_ControlDeleteText( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_DIL_ControlDeleteText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );

   //:IF vDialog.NLS_ControlDIL_Text EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_ControlDIL_Text" );
   if ( lTempInteger_0 == 0 )
   { 
      //:DELETE ENTITY vDialog.NLS_ControlDIL_Text
      RESULT = DeleteEntity( vDialog, "NLS_ControlDIL_Text", zPOS_NEXT );
      //:NLS_DIL_ControlRefresh( vSubtask )
      NLS_DIL_ControlRefresh( vSubtask );
   } 

   //:END
   return( 0 );
// END
} 


//:LOCAL OPERATION
static zSHORT
o_NLS_DIL_ControlBuildListR( zVIEW     vDialog,
                             zVIEW     vDialogRecursive )
{
   zSHORT    RESULT; 

   //:NLS_DIL_ControlBuildListR( VIEW vDialog          BASED ON LOD TZWDLGSO,
   //:                        VIEW vDialogRecursive BASED ON LOD TZWDLGSO )

   //:// Recursive call to process sub DIL_

   //:SetViewToSubobject( vDialogRecursive, "CtrlCtrl" )
   SetViewToSubobject( vDialogRecursive, "CtrlCtrl" );

   //:FOR EACH vDialogRecursive.Control
   RESULT = SetCursorFirstEntity( vDialogRecursive, "Control", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF vDialogRecursive.Control.DIL_Text != ""
      if ( CompareAttributeToString( vDialogRecursive, "Control", "DIL_Text", "" ) != 0 )
      { 
         //:INCLUDE vDialog.NLS_DIL_Control FROM vDialogRecursive.Control
         RESULT = IncludeSubobjectFromSubobject( vDialog, "NLS_DIL_Control", vDialogRecursive, "Control", zPOS_AFTER );
      } 

      //:END
      //:FOR EACH vDialogRecursive.CtrlCtrl
      RESULT = SetCursorFirstEntity( vDialogRecursive, "CtrlCtrl", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 
         //:NLS_DIL_ControlBuildListR( vDialog, vDialogRecursive )
         o_NLS_DIL_ControlBuildListR( vDialog, vDialogRecursive );
         RESULT = SetCursorNextEntity( vDialogRecursive, "CtrlCtrl", "" );
      } 

      RESULT = SetCursorNextEntity( vDialogRecursive, "Control", "" );
      //:END
   } 

   //:END

   //:ResetViewFromSubobject( vDialogRecursive )
   ResetViewFromSubobject( vDialogRecursive );
   return( 0 );
// END
} 


//:LOCAL OPERATION
static zVOID
o_NLS_DIL_OptionBuildListR( zVIEW     vDialog,
                            zVIEW     vDialogRecursive )
{
   zSHORT    RESULT; 

   //:NLS_DIL_OptionBuildListR( VIEW vDialog          BASED ON LOD TZWDLGSO,
   //:                       VIEW vDialogRecursive BASED ON LOD TZWDLGSO )

   //:// Recursive call to process sub DIL_

   //:SetViewToSubobject( vDialogRecursive, "CtrlCtrl" )
   SetViewToSubobject( vDialogRecursive, "CtrlCtrl" );

   //:FOR EACH vDialogRecursive.Option
   RESULT = SetCursorFirstEntity( vDialogRecursive, "Option", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF vDialogRecursive.Option.DIL_Text != ""
      if ( CompareAttributeToString( vDialogRecursive, "Option", "DIL_Text", "" ) != 0 )
      { 
         //:INCLUDE vDialog.NLS_DIL_Option FROM vDialogRecursive.Option
         RESULT = IncludeSubobjectFromSubobject( vDialog, "NLS_DIL_Option", vDialogRecursive, "Option", zPOS_AFTER );
      } 

      //:END
      //:FOR EACH vDialogRecursive.OptOpt
      RESULT = SetCursorFirstEntity( vDialogRecursive, "OptOpt", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 
         //:NLS_DIL_OptionBuildListR( vDialog, vDialogRecursive )
         o_NLS_DIL_OptionBuildListR( vDialog, vDialogRecursive );
         RESULT = SetCursorNextEntity( vDialogRecursive, "OptOpt", "" );
      } 

      RESULT = SetCursorNextEntity( vDialogRecursive, "Option", "" );
      //:END
   } 

   //:END

   //:ResetViewFromSubobject( vDialogRecursive )
   ResetViewFromSubobject( vDialogRecursive );
   return;
// END
} 


//:DIALOG OPERATION
//:NLS_DIL_OptionNewText( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_DIL_OptionNewText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:// Create the new entity with default values.  We will make sure that
   //:// the profile has a default LanguageIndex and the text is initialized with
   //:// original text.
   //:IF Profile.TZ.NLS_LanguageIndex = 0
   if ( CompareAttributeToInteger( Profile, "TZ", "NLS_LanguageIndex", 0 ) == 0 )
   { 
      //:Profile.TZ.NLS_LanguageIndex = 1
      SetAttributeFromInteger( Profile, "TZ", "NLS_LanguageIndex", 1 );
   } 

   //:END
   //:Profile.TZ.NLS_LastText = vDialog.NLS_DIL_Option.DIL_Text
   SetAttributeFromAttribute( Profile, "TZ", "NLS_LastText", vDialog, "NLS_DIL_Option", "DIL_Text" );

   //:CreateMetaEntity( vSubtask, vDialog, "NLS_OptionDIL_Text", zPOS_AFTER )
   CreateMetaEntity( vSubtask, vDialog, "NLS_OptionDIL_Text", zPOS_AFTER );
   //:vDialog.NLS_OptionDIL_Text.Text = Profile.TZ.NLS_LastText
   SetAttributeFromAttribute( vDialog, "NLS_OptionDIL_Text", "Text", Profile, "TZ", "NLS_LastText" );
   //:vDialog.NLS_OptionDIL_Text.LanguageIndex = Profile.TZ.NLS_LanguageIndex
   SetAttributeFromAttribute( vDialog, "NLS_OptionDIL_Text", "LanguageIndex", Profile, "TZ", "NLS_LanguageIndex" );

   //:// Allow the NLS edit boxes to be active and initialize text with original text.
   //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE )
   SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE );
   //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE )
   SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE );
   //:RefreshCtrl( vSubtask, "NLS_Text" )
   RefreshCtrl( vSubtask, "NLS_Text" );
   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_DIL_OptionDeleteText( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_DIL_OptionDeleteText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );

   //:IF vDialog.NLS_OptionDIL_Text EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_OptionDIL_Text" );
   if ( lTempInteger_0 == 0 )
   { 
      //:DELETE ENTITY vDialog.NLS_OptionDIL_Text
      RESULT = DeleteEntity( vDialog, "NLS_OptionDIL_Text", zPOS_NEXT );
      //:NLS_DIL_OptionRefresh( vSubtask )
      NLS_DIL_OptionRefresh( vSubtask );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_DIL_OptionRefresh( VIEW vSubtask )

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_DIL_OptionRefresh( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:// Before refreshing the DIL list box, set up the Profile XFER object with
   //:// the NLS attributes for the NLS edit boxes.  Also enable the edit boxes..
   //:IF vDialog.NLS_OptionDIL_Text  EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_OptionDIL_Text" );
   if ( lTempInteger_0 == 0 )
   { 
      //:Profile.TZ.NLS_LanguageIndex = vDialog.NLS_OptionDIL_Text.LanguageIndex
      SetAttributeFromAttribute( Profile, "TZ", "NLS_LanguageIndex", vDialog, "NLS_OptionDIL_Text", "LanguageIndex" );
      //:Profile.TZ.NLS_LastText = vDialog.NLS_OptionDIL_Text.Text
      SetAttributeFromAttribute( Profile, "TZ", "NLS_LastText", vDialog, "NLS_OptionDIL_Text", "Text" );
      //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE )
      SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, TRUE );
      //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE )
      SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, TRUE );
      //:ELSE
   } 
   else
   { 
      //:// If there is no NLS entity, disable the edit boxes and set text to spaces.
      //:Profile.TZ.NLS_LastText = ""
      SetAttributeFromString( Profile, "TZ", "NLS_LastText", "" );
      //:SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "NLS_Text", zCONTROL_STATUS_ENABLED, FALSE );
      //:SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "NLS_Code", zCONTROL_STATUS_ENABLED, FALSE );
   } 

   //:END

   //:// Now refresh all three controls
   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   //:RefreshCtrl( vSubtask, "NLS_Text" )
   RefreshCtrl( vSubtask, "NLS_Text" );
   //:RefreshCtrl( vSubtask, "NLS_Code" )
   RefreshCtrl( vSubtask, "NLS_Code" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:NLS_DIL_OptionSaveText( VIEW vSubtask )

//:   // On save, copy the Profile attributes that were entered in the window over
//:   // to the NLS_DIL_Text entity.

//:   VIEW vDialog BASED ON LOD TZWDLGSO
zOPER_EXPORT zSHORT OPERATION
NLS_DIL_OptionSaveText( zVIEW     vSubtask )
{
   zVIEW     vDialog = 0; 
   //:VIEW Profile BASED ON LOD TZ__PRFO
   zVIEW     Profile = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 


   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:GET VIEW Profile NAMED "ProfileXFER"
   RESULT = GetViewByName( &Profile, "ProfileXFER", vSubtask, zLEVEL_TASK );

   //:IF vDialog.NLS_OptionDIL_Text EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vDialog, "NLS_OptionDIL_Text" );
   if ( lTempInteger_0 == 0 )
   { 
      //:vDialog.NLS_OptionDIL_Text.LanguageIndex = Profile.TZ.NLS_LanguageIndex
      SetAttributeFromAttribute( vDialog, "NLS_OptionDIL_Text", "LanguageIndex", Profile, "TZ", "NLS_LanguageIndex" );
      //:vDialog.NLS_OptionDIL_Text.Text = Profile.TZ.NLS_LastText
      SetAttributeFromAttribute( vDialog, "NLS_OptionDIL_Text", "Text", Profile, "TZ", "NLS_LastText" );
   } 

   //:END

   //:RefreshCtrl( vSubtask, "NLS_ListBox" )
   RefreshCtrl( vSubtask, "NLS_ListBox" );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SEL_CLONE_PostBuild( VIEW vSubtask )

//:   VIEW vWork BASED ON LOD TZPNCTWO
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_PostBuild( zVIEW     vSubtask )
{
   zVIEW     vWork = 0; 


   //:GetViewByName( vWork, "TZPNCTWO", vSubtask, zLEVEL_ANY )
   GetViewByName( &vWork, "TZPNCTWO", vSubtask, zLEVEL_ANY );

   //:vWork.TZPNCTWO.WindowName = ""
   SetAttributeFromString( vWork, "TZPNCTWO", "WindowName", "" );

   //:IF vWork.TZPNCTWO.CloneFunction = "C"
   if ( CompareAttributeToString( vWork, "TZPNCTWO", "CloneFunction", "C" ) == 0 )
   { 
      //:SetWindowCaptionTitle( vSubtask, "Copy Dialog Window", 0 )
      SetWindowCaptionTitle( vSubtask, "Copy Dialog Window", 0 );
      //:SetCtrlState( vSubtask, "cbWindowName", zCONTROL_STATUS_VISIBLE, FALSE )
      SetCtrlState( vSubtask, "cbWindowName", zCONTROL_STATUS_VISIBLE, FALSE );
      //:SetCtrlState( vSubtask, "NewWindowName", zCONTROL_STATUS_VISIBLE, TRUE )
      SetCtrlState( vSubtask, "NewWindowName", zCONTROL_STATUS_VISIBLE, TRUE );
      //:ELSE
   } 
   else
   { 
      //:SetWindowCaptionTitle( vSubtask, "Merge Dialog Window", 0 )
      SetWindowCaptionTitle( vSubtask, "Merge Dialog Window", 0 );
      //:SetCtrlState( vSubtask, "cbWindowName", zCONTROL_STATUS_VISIBLE, TRUE )
      SetCtrlState( vSubtask, "cbWindowName", zCONTROL_STATUS_VISIBLE, TRUE );
      //:SetCtrlState( vSubtask, "NewWindowName", zCONTROL_STATUS_VISIBLE, FALSE )
      SetCtrlState( vSubtask, "NewWindowName", zCONTROL_STATUS_VISIBLE, FALSE );
   } 

   //:END

   //:SetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_CHECKED, 1 )
   SetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_CHECKED, 1 );
   //:SEL_CLONE_SelectDlg( vSubtask )
   SEL_CLONE_SelectDlg( vSubtask );
   //:SEL_CLONE_SetFileName( vSubtask )
   SEL_CLONE_SetFileName( vSubtask );
   return( 0 );
// END
} 


//:LOCAL OPERATION
//:SEL_CLONE_CheckValues( VIEW vSubtask,
//:                       VIEW vWork BASED ON LOD TZPNCTWO,
//:                       VIEW OrigWindow BASED ON LOD TZWDLGSO )

//:   VIEW TempWindow BASED ON LOD TZWDLGSO
static zSHORT
o_SEL_CLONE_CheckValues( zVIEW     vSubtask,
                         zVIEW     vWork,
                         zVIEW     OrigWindow )
{
   zVIEW     TempWindow = 0; 
   //:VIEW NewWindow  BASED ON LOD TZWDLGSO
   zVIEW     NewWindow = 0; 

   //:STRING ( 34 )   szTag
   zCHAR     szTag[ 35 ] = { 0 }; 
   //:STRING ( 34 )   szOrigTag
   zCHAR     szOrigTag[ 35 ] = { 0 }; 
   //:STRING (100 )   szMsg
   zCHAR     szMsg[ 101 ] = { 0 }; 
   //:SHORT           nRC
   zSHORT    nRC = 0; 
   zSHORT    lTempInteger_0; 
   zLONG     lTempInteger_1; 


   //://BL check Window Name
   //:GetStringFromAttribute( szOrigTag, OrigWindow, "Window", "Tag" )
   GetStringFromAttribute( szOrigTag, OrigWindow, "Window", "Tag" );
   //:GetStringFromAttribute( szTag, vWork, "TZPNCTWO", "WindowName" )
   GetStringFromAttribute( szTag, vWork, "TZPNCTWO", "WindowName" );

   //://Name is required
   //:IF szTag = ""
   if ( ZeidonStringCompare( szTag, 1, 0, "", 1, 0, 35 ) == 0 )
   { 
      //:szMsg = "Window Name is required."
      ZeidonStringCopy( szMsg, 1, 0, "Window Name is required.", 1, 0, 101 );
      //:MessageSend( vSubtask, "ZO00137", "Dialog Maintenance",
      //:             szMsg, zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( vSubtask, "ZO00137", "Dialog Maintenance", szMsg, zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
      //:SetFocusToCtrl( vSubtask, "NewWindowName" )
      SetFocusToCtrl( vSubtask, "NewWindowName" );
      //:RETURN -2
      return( -2 );
   } 

   //:END

   //:// check Source File Names
   //:nRC = SEL_CLONE_CheckSourceFile( vSubtask )
   nRC = SEL_CLONE_CheckSourceFile( vSubtask );
   //:IF nRC < 0
   if ( nRC < 0 )
   { 
      //:RETURN nRC
      return( nRC );
   } 

   //:END

   //://Name already exists
   //:GetViewByName( TempWindow, "TZWINDOWL", vSubtask, zLEVEL_ANY )
   GetViewByName( &TempWindow, "TZWINDOWL", vSubtask, zLEVEL_ANY );
   //:CreateViewFromViewForTask( NewWindow, TempWindow, vSubtask )
   CreateViewFromViewForTask( &NewWindow, TempWindow, vSubtask );
   //:IF SetCursorFirstEntityByString( NewWindow, "Window", "Tag",
   //:                                 szTag, 0 ) > zCURSOR_UNCHANGED
   lTempInteger_0 = SetCursorFirstEntityByString( NewWindow, "Window", "Tag", szTag, 0 );
   if ( lTempInteger_0 > zCURSOR_UNCHANGED )
   { 
      //:IF vWork.TZPNCTWO.CloneFunction = "C"   //copy window
      if ( CompareAttributeToString( vWork, "TZPNCTWO", "CloneFunction", "C" ) == 0 )
      { 
         //:szMsg = "Window '" + szTag + "' already exists. Replace existing Window?"
         ZeidonStringCopy( szMsg, 1, 0, "Window '", 1, 0, 101 );
         ZeidonStringConcat( szMsg, 1, 0, szTag, 1, 0, 101 );
         ZeidonStringConcat( szMsg, 1, 0, "' already exists. Replace existing Window?", 1, 0, 101 );
         //:ELSE   //merge window
      } 
      else
      { 
         //:szMsg = "Do you want to Merge " + szOrigTag +
         //:                                    " Window to '" + szTag + "'."
         ZeidonStringCopy( szMsg, 1, 0, "Do you want to Merge ", 1, 0, 101 );
         ZeidonStringConcat( szMsg, 1, 0, szOrigTag, 1, 0, 101 );
         ZeidonStringConcat( szMsg, 1, 0, " Window to '", 1, 0, 101 );
         ZeidonStringConcat( szMsg, 1, 0, szTag, 1, 0, 101 );
         ZeidonStringConcat( szMsg, 1, 0, "'.", 1, 0, 101 );
      } 

      //:END
      //:nRC = MessagePrompt( vSubtask, "ZO00138", "Dialog Maintenance",
      //:                     szMsg, 0, zBUTTONS_YESNO,
      //:                     zRESPONSE_NO, zICON_QUESTION )
      nRC = MessagePrompt( vSubtask, "ZO00138", "Dialog Maintenance", szMsg, 0, zBUTTONS_YESNO, zRESPONSE_NO, zICON_QUESTION );
      //:IF nRC = zRESPONSE_NO
      if ( nRC == zRESPONSE_NO )
      { 
         //:SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 )
         SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
         //:SetFocusToCtrl( vSubtask, "NewWindowName" )
         SetFocusToCtrl( vSubtask, "NewWindowName" );
         //:DropView( NewWindow )
         DropView( NewWindow );
         //:RETURN 0
         return( 0 );
         //:ELSE
      } 
      else
      { 
         //:IF fnPainterCall( 1, vSubtask, 0, szTag ) = 0
         lTempInteger_1 = fnPainterCall( 1, vSubtask, 0, szTag );
         if ( lTempInteger_1 == 0 )
         { 
            //://BL do not copy or merge window in the same Dialog with the same
            //://window
            //:IF OrigWindow.Dialog.ZKey = NewWindow.Dialog.ZKey AND
            //:   vWork.TZPNCTWO.WindowName = OrigWindow.Window.Tag
            if ( CompareAttributeToAttribute( OrigWindow, "Dialog", "ZKey", NewWindow, "Dialog", "ZKey" ) == 0 && CompareAttributeToAttribute( vWork, "TZPNCTWO", "WindowName", OrigWindow, "Window", "Tag" ) == 0 )
            { 
               //:   SetAttributeFromString( vWork, "TZPNCTWO", "WindowName", "" )
               SetAttributeFromString( vWork, "TZPNCTWO", "WindowName", "" );
               //:   RETURN  0
               return( 0 );
            } 

            //:END
            //://BL if merge window in the same Dialog, then do not delete
            //://window
            //:IF vWork.TZPNCTWO.CloneFunction = "C"
            if ( CompareAttributeToString( vWork, "TZPNCTWO", "CloneFunction", "C" ) == 0 )
            { 
               //:DeleteEntity( NewWindow, "Window", zREPOS_NEXT )
               DeleteEntity( NewWindow, "Window", zREPOS_NEXT );
            } 

            //:END
         } 

         //:END
      } 

      //:END
   } 

   //:END

   //:RETURN 1
   return( 1 );
// END
} 


//:DIALOG OPERATION
//:SEL_CLONE_SetWindowName( VIEW vSubtask )
//:   STRING (  33  )  szWindowTag
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_SetWindowName( zVIEW     vSubtask )
{
   zCHAR     szWindowTag[ 34 ] = { 0 }; 

   //:VIEW vTZPNCTWO REGISTERED AS TZPNCTWO
   zVIEW     vTZPNCTWO = 0; 
   zSHORT    RESULT; 

   RESULT = GetViewByName( &vTZPNCTWO, "TZPNCTWO", vSubtask, zLEVEL_TASK );

   //:GetCtrlText( vSubtask, "cbWindowName", szWindowTag, 33 )
   GetCtrlText( vSubtask, "cbWindowName", szWindowTag, 33 );
   //:SetAttributeFromString( vTZPNCTWO, "TZPNCTWO", "WindowName", szWindowTag )
   SetAttributeFromString( vTZPNCTWO, "TZPNCTWO", "WindowName", szWindowTag );
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SEL_CLONE_Set_WindowName( VIEW vSubtask )

//:   VIEW vTZPNCTWO REGISTERED AS TZPNCTWO
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_Set_WindowName( zVIEW     vSubtask )
{
   zVIEW     vTZPNCTWO = 0; 
   zSHORT    RESULT; 
   //:VIEW TZWND_List REGISTERED AS TZWND_List
   zVIEW     TZWND_List = 0; 

   RESULT = GetViewByName( &vTZPNCTWO, "TZPNCTWO", vSubtask, zLEVEL_TASK );
   RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask, zLEVEL_TASK );


   //:IF vTZPNCTWO.TZPNCTWO.CloneFunction = "C"
   if ( CompareAttributeToString( vTZPNCTWO, "TZPNCTWO", "CloneFunction", "C" ) == 0 )
   { 
      //:vTZPNCTWO.TZPNCTWO.WindowName = TZWND_List.Window.Tag
      SetAttributeFromAttribute( vTZPNCTWO, "TZPNCTWO", "WindowName", TZWND_List, "Window", "Tag" );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_DisableFileFields( zVIEW     vSubtask )
{
   zLONG     lTempInteger_0; 

   //:SEL_CLONE_DisableFileFields( VIEW vSubtask )

   //:IF GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_CHECKED ) = 1
   lTempInteger_0 = GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_CHECKED );
   if ( lTempInteger_0 == 1 )
   { 
      //:SEL_CLONE_SetSourceFileState( vSubtask )
      SEL_CLONE_SetSourceFileState( vSubtask );
      //:ELSE
   } 
   else
   { 
      //:SetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED, FALSE );
      //:SetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED, FALSE );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SEL_CLONE_SetSourceFileState( VIEW vSubtask )

//:   SHORT   nEnableVML
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_SetSourceFileState( zVIEW     vSubtask )
{
   zSHORT    nEnableVML = 0; 
   //:SHORT   nEnableC
   zSHORT    nEnableC = 0; 

   //:VIEW  vDialog      BASED ON LOD  TZWDLGSO
   zVIEW     vDialog = 0; 
   //:VIEW  TZWND_Copy   BASED ON LOD  TZWDLGSO
   zVIEW     TZWND_Copy = 0; 
   //:VIEW  TZWND_List   REGISTERED AS TZWND_List
   zVIEW     TZWND_List = 0; 
   zSHORT    RESULT; 
   //:VIEW  DialogList   REGISTERED AS TZDLG_List
   zVIEW     DialogList = 0; 
   zLONG     lTempInteger_0; 

   RESULT = GetViewByName( &TZWND_List, "TZWND_List", vSubtask, zLEVEL_TASK );
   RESULT = GetViewByName( &DialogList, "TZDLG_List", vSubtask, zLEVEL_TASK );

   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );

   //:nEnableVML = FALSE
   nEnableVML = FALSE;
   //:nEnableC   = FALSE
   nEnableC = FALSE;

   //:IF GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_CHECKED ) = 0
   lTempInteger_0 = GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_CHECKED );
   if ( lTempInteger_0 == 0 )
   { 
      //:RETURN 0
      return( 0 );
   } 

   //:END

   //:// if Source and Target Dialog identical, do not copy Operation Code
   //:IF DialogList.W_MetaDef.CPLR_ZKey = vDialog.Dialog.ZKey
   if ( CompareAttributeToAttribute( DialogList, "W_MetaDef", "CPLR_ZKey", vDialog, "Dialog", "ZKey" ) == 0 )
   { 
      //:SetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_ENABLED, FALSE );
      //:SetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED, FALSE );
      //:SetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED, FALSE )
      SetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED, FALSE );
      //:ELSE
   } 
   else
   { 
      //:CreateViewFromViewForTask( TZWND_Copy, TZWND_List, vSubtask )
      CreateViewFromViewForTask( &TZWND_Copy, TZWND_List, vSubtask );

      //:// Has Window a Operation, enable CheckBox for Copy Operation Code and
      //:// Edit Fields for Source File Name
      //:SET CURSOR FIRST TZWND_Copy.ActOper WITHIN TZWND_Copy.Window
      RESULT = SetCursorFirstEntity( TZWND_Copy, "ActOper", "Window" );
      //:IF RESULT >= zCURSOR_SET
      if ( RESULT >= zCURSOR_SET )
      { 
         //:SetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_ENABLED, TRUE )
         SetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_ENABLED, TRUE );

         //:// Has Window a Operation in a VML Source File ?
         //:SET CURSOR FIRST TZWND_Copy.SourceFileForOper WITHIN TZWND_Copy.Window
         //:    WHERE TZWND_Copy.SourceFileForOper.LanguageType = "V"
         RESULT = SetCursorFirstEntityByString( TZWND_Copy, "SourceFileForOper", "LanguageType", "V", "Window" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         { 
            //:nEnableVML = TRUE
            nEnableVML = TRUE;
         } 

         //:END

         //:// Has Window a Operation in a C Source File ?
         //:SET CURSOR FIRST TZWND_Copy.SourceFileForOper WITHIN TZWND_Copy.Window
         //:    WHERE TZWND_Copy.SourceFileForOper.LanguageType = "C"
         RESULT = SetCursorFirstEntityByString( TZWND_Copy, "SourceFileForOper", "LanguageType", "C", "Window" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         { 
            //:nEnableC = TRUE
            nEnableC = TRUE;
         } 

         //:END
         //:ELSE
      } 
      else
      { 
         //:// Window has no Operation
         //:SetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_ENABLED, FALSE )
         SetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_ENABLED, FALSE );
      } 

      //:END

      //:DropView( TZWND_Copy )
      DropView( TZWND_Copy );
      //:SetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED, nEnableVML )
      SetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED, (zLONG) nEnableVML );
      //:SetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED, nEnableC )
      SetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED, (zLONG) nEnableC );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SEL_CLONE_SetFileName( VIEW vSubtask )

//:   STRING ( 8 ) szFileName
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_SetFileName( zVIEW     vSubtask )
{
   zCHAR     szFileName[ 9 ] = { 0 }; 

   //:VIEW  vDialog       BASED ON LOD  TZWDLGSO
   zVIEW     vDialog = 0; 
   //:VIEW  vDialog_Copy  BASED ON LOD  TZWDLGSO
   zVIEW     vDialog_Copy = 0; 
   //:VIEW  CopyOperation REGISTERED AS CopyOperation
   zVIEW     CopyOperation = 0; 
   zSHORT    RESULT; 

   RESULT = GetViewByName( &CopyOperation, "CopyOperation", vSubtask, zLEVEL_TASK );

   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:CreateViewFromViewForTask( vDialog_Copy, vDialog, vSubtask )
   CreateViewFromViewForTask( &vDialog_Copy, vDialog, vSubtask );

   //:// set VML File Name
   //:szFileName = ""
   ZeidonStringCopy( szFileName, 1, 0, "", 1, 0, 9 );
   //:SET CURSOR FIRST vDialog_Copy.SourceFile
   //:           WHERE vDialog_Copy.SourceFile.LanguageType = "V"
   RESULT = SetCursorFirstEntityByString( vDialog_Copy, "SourceFile", "LanguageType", "V", "" );
   //:IF RESULT >= zCURSOR_SET
   if ( RESULT >= zCURSOR_SET )
   { 
      //:szFileName = vDialog_Copy.SourceFile.Name
      GetVariableFromAttribute( szFileName, 0, 'S', 9, vDialog_Copy, "SourceFile", "Name", "", 0 );
      //:ELSE
   } 
   else
   { 
      //:SEL_CLONE_GenerateSourceFileName( vSubtask, vDialog_Copy, "edVML_File", szFileName )
      o_SEL_CLONE_GenerateSourceFileName( vSubtask, vDialog_Copy, "edVML_File", szFileName );
   } 

   //:END
   //:CopyOperation.SourceFile.NameVML = szFileName
   SetAttributeFromString( CopyOperation, "SourceFile", "NameVML", szFileName );

   //:// set C File Name
   //:SET CURSOR FIRST vDialog_Copy.SourceFile
   //:           WHERE vDialog_Copy.SourceFile.LanguageType = "C"
   RESULT = SetCursorFirstEntityByString( vDialog_Copy, "SourceFile", "LanguageType", "C", "" );
   //:IF RESULT >= zCURSOR_SET
   if ( RESULT >= zCURSOR_SET )
   { 
      //:szFileName = vDialog_Copy.SourceFile.Name
      GetVariableFromAttribute( szFileName, 0, 'S', 9, vDialog_Copy, "SourceFile", "Name", "", 0 );
      //:ELSE
   } 
   else
   { 
      //:SEL_CLONE_GenerateSourceFileName( vSubtask, vDialog_Copy, "edC_File", szFileName )
      o_SEL_CLONE_GenerateSourceFileName( vSubtask, vDialog_Copy, "edC_File", szFileName );
   } 

   //:END
   //:CopyOperation.SourceFile.NameC = szFileName
   SetAttributeFromString( CopyOperation, "SourceFile", "NameC", szFileName );

   //:DropView( vDialog_Copy )
   DropView( vDialog_Copy );
   //:RefreshCtrl( vSubtask, "edVML_File" )
   RefreshCtrl( vSubtask, "edVML_File" );
   //:RefreshCtrl( vSubtask, "edC_File" )
   RefreshCtrl( vSubtask, "edC_File" );
   return( 0 );
// END
} 


//:LOCAL OPERATION
//:SEL_CLONE_CreateDeleteLod( VIEW vSubtask,
//:                           VIEW vNewWindow BASED ON LOD TZWDLGSO )

//:   VIEW vDeleteOp BASED ON LOD TZEDWDEL
static zSHORT
o_SEL_CLONE_CreateDeleteLod( zVIEW     vSubtask,
                             zVIEW     vNewWindow )
{
   zVIEW     vDeleteOp = 0; 
   zSHORT    lTempInteger_0; 
   zSHORT    RESULT; 
   zCHAR     szTempString_0[ 33 ]; 


   //:IF GetViewByName( vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK ) < 0
   lTempInteger_0 = GetViewByName( &vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK );
   if ( lTempInteger_0 < 0 )
   { 
      //:ActivateEmptyObjectInstance( vDeleteOp, "TZEDWDEL", vSubtask, zMULTIPLE )
      ActivateEmptyObjectInstance( &vDeleteOp, "TZEDWDEL", vSubtask, zMULTIPLE );
      //:SetNameForView( vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK )
      SetNameForView( vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK );
   } 

   //:END

   //:SET CURSOR FIRST vDeleteOp.SourceFile
   //:           WHERE vDeleteOp.SourceFile.Name = vNewWindow.SourceFile.Name
   GetStringFromAttribute( szTempString_0, vNewWindow, "SourceFile", "Name" );
   RESULT = SetCursorFirstEntityByString( vDeleteOp, "SourceFile", "Name", szTempString_0, "" );

   //:// Source File does not exists in Delete Lod, create it
   //:IF RESULT < zCURSOR_SET
   if ( RESULT < zCURSOR_SET )
   { 
      //:CREATE ENTITY vDeleteOp.SourceFile AFTER
      RESULT = CreateEntity( vDeleteOp, "SourceFile", zPOS_AFTER );
      //:SetMatchingAttributesByName( vDeleteOp,  "SourceFile",
      //:                             vNewWindow, "SourceFile", zSET_ALL )
      SetMatchingAttributesByName( vDeleteOp, "SourceFile", vNewWindow, "SourceFile", zSET_ALL );
   } 

   //:END

   //:CREATE ENTITY vDeleteOp.Operation AFTER
   RESULT = CreateEntity( vDeleteOp, "Operation", zPOS_AFTER );
   //:vDeleteOp.Operation.Name = vNewWindow.Operation.Name
   SetAttributeFromAttribute( vDeleteOp, "Operation", "Name", vNewWindow, "Operation", "Name" );

   //:RETURN 0
   return( 0 );
// END
} 


//:LOCAL OPERATION
//:SEL_CLONE_CreateWorkLod( VIEW vSubtask,
//:                         VIEW vOrigWindow BASED ON LOD TZWDLGSO,
//:                         VIEW vNewWindow  BASED ON LOD TZWDLGSO,
//:                         STRING ( 8 ) szVML_Name,
//:                         STRING ( 8 ) szC_Name )
//:   STRING (   8 )  szName
static zSHORT
o_SEL_CLONE_CreateWorkLod( zVIEW     vSubtask,
                           zVIEW     vOrigWindow,
                           zVIEW     vNewWindow,
                           zPCHAR    szVML_Name,
                           zPCHAR    szC_Name )
{
   zCHAR     szName[ 9 ] = { 0 }; 
   //:STRING (  32 )  szOperationName
   zCHAR     szOperationName[ 33 ] = { 0 }; 
   //:STRING (   1 )  szLanguageType
   zCHAR     szLanguageType[ 2 ] = { 0 }; 
   //:STRING (   3 )  szExtension
   zCHAR     szExtension[ 4 ] = { 0 }; 
   //:STRING ( 100 )  szMsg
   zCHAR     szMsg[ 101 ] = { 0 }; 
   //:SHORT           nRC
   zSHORT    nRC = 0; 

   //:VIEW  vCopyCode      BASED ON LOD  TZEDWDEL
   zVIEW     vCopyCode = 0; 
   //:VIEW  vDeleteOp      BASED ON LOD  TZEDWDEL
   zVIEW     vDeleteOp = 0; 
   //:VIEW  vOrigWindowC   REGISTERED AS TZWND_List
   zVIEW     vOrigWindowC = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 
   zSHORT    lTempInteger_1; 

   RESULT = GetViewByName( &vOrigWindowC, "TZWND_List", vSubtask, zLEVEL_TASK );

   //:// Create LOD for delete existing Operations
   //:IF GetViewByName( vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK ) >= 0
   lTempInteger_0 = GetViewByName( &vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK );
   if ( lTempInteger_0 >= 0 )
   { 
      //:DropObjectInstance( vDeleteOp )
      DropObjectInstance( vDeleteOp );
   } 

   //:END

   //:// Save Operations with assigned Source File
   //:ActivateEmptyObjectInstance( vCopyCode, "TZEDWDEL", vSubtask, zMULTIPLE )
   ActivateEmptyObjectInstance( &vCopyCode, "TZEDWDEL", vSubtask, zMULTIPLE );
   //:SetNameForView( vCopyCode, "CopyCode", vSubtask, zLEVEL_TASK )
   SetNameForView( vCopyCode, "CopyCode", vSubtask, zLEVEL_TASK );

   //:CreateViewFromViewForTask( vOrigWindowC, vOrigWindow, vSubtask )
   CreateViewFromViewForTask( &vOrigWindowC, vOrigWindow, vSubtask );
   //:FOR EACH vOrigWindowC.ActOper WITHIN vOrigWindowC.Window
   RESULT = SetCursorFirstEntity( vOrigWindowC, "ActOper", "Window" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //: szOperationName = vOrigWindowC.ActOper.Name
      GetVariableFromAttribute( szOperationName, 0, 'S', 33, vOrigWindowC, "ActOper", "Name", "", 0 );
      //: SET CURSOR FIRST vOrigWindowC.Operation WITHIN vOrigWindowC.Dialog
      //:            WHERE vOrigWindowC.Operation.Name = szOperationName
      RESULT = SetCursorFirstEntityByString( vOrigWindowC, "Operation", "Name", szOperationName, "Dialog" );
      //: szLanguageType = vOrigWindowC.SourceFile.LanguageType
      GetVariableFromAttribute( szLanguageType, 0, 'S', 2, vOrigWindowC, "SourceFile", "LanguageType", "", 0 );
      //: IF szLanguageType = "V"
      if ( ZeidonStringCompare( szLanguageType, 1, 0, "V", 1, 0, 2 ) == 0 )
      { 
         //: szName      = szVML_Name
         ZeidonStringCopy( szName, 1, 0, szVML_Name, 1, 0, 9 );
         //: szExtension = "VML"
         ZeidonStringCopy( szExtension, 1, 0, "VML", 1, 0, 4 );
         //:ELSE
      } 
      else
      { 
         //: szName      = szC_Name
         ZeidonStringCopy( szName, 1, 0, szC_Name, 1, 0, 9 );
         //: szExtension = "C"
         ZeidonStringCopy( szExtension, 1, 0, "C", 1, 0, 4 );
      } 

      //: END
      //: SET CURSOR FIRST vCopyCode.SourceFile
      //:            WHERE vCopyCode.SourceFile.Name = szName
      RESULT = SetCursorFirstEntityByString( vCopyCode, "SourceFile", "Name", szName, "" );
      //: // Source File does not exists in Work Lod, create it
      //: IF RESULT < zCURSOR_SET
      if ( RESULT < zCURSOR_SET )
      { 
         //: CREATE ENTITY vCopyCode.SourceFile AFTER
         RESULT = CreateEntity( vCopyCode, "SourceFile", zPOS_AFTER );
         //: vCopyCode.SourceFile.Name         = szName
         SetAttributeFromString( vCopyCode, "SourceFile", "Name", szName );
         //: vCopyCode.SourceFile.Subdirectory = ""
         SetAttributeFromString( vCopyCode, "SourceFile", "Subdirectory", "" );
         //: vCopyCode.SourceFile.LanguageType = szLanguageType
         SetAttributeFromString( vCopyCode, "SourceFile", "LanguageType", szLanguageType );
         //: vCopyCode.SourceFile.Extension    = szExtension
         SetAttributeFromString( vCopyCode, "SourceFile", "Extension", szExtension );
         //: vCopyCode.SourceFile.CopyFromFile = vOrigWindowC.SourceFile.Name
         SetAttributeFromAttribute( vCopyCode, "SourceFile", "CopyFromFile", vOrigWindowC, "SourceFile", "Name" );
      } 

      //: END
      //: SET CURSOR FIRST vCopyCode.Operation
      //:            WHERE vCopyCode.Operation.Name = szOperationName
      RESULT = SetCursorFirstEntityByString( vCopyCode, "Operation", "Name", szOperationName, "" );
      //: // Operation does not exists in Work Lod, create it
      //: IF RESULT < zCURSOR_SET
      if ( RESULT < zCURSOR_SET )
      { 
         //: CREATE ENTITY vCopyCode.Operation AFTER
         RESULT = CreateEntity( vCopyCode, "Operation", zPOS_AFTER );
         //: vCopyCode.Operation.Name = szOperationName
         SetAttributeFromString( vCopyCode, "Operation", "Name", szOperationName );

         //: // exists new Operation in Source Dialog
         //: SET CURSOR FIRST vNewWindow.Operation WITHIN vNewWindow.Dialog
         //:            WHERE vNewWindow.Operation.Name = szOperationName
         RESULT = SetCursorFirstEntityByString( vNewWindow, "Operation", "Name", szOperationName, "Dialog" );
         //: // Operation exists in Source Dialog, ask for overwrite
         //: IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         { 
            //: szMsg = "Operation '"
            ZeidonStringCopy( szMsg, 1, 0, "Operation '", 1, 0, 101 );
            //: szMsg = szMsg + szOperationName + "' already exists. Replace existing Operation?"
            ZeidonStringConcat( szMsg, 1, 0, szOperationName, 1, 0, 101 );
            ZeidonStringConcat( szMsg, 1, 0, "' already exists. Replace existing Operation?", 1, 0, 101 );
            //: nRC = MessagePrompt( vSubtask, "ZO00138", "Dialog Maintenance",
            //:                      szMsg, 1, zBUTTONS_YESNOCANCEL,
            //:                      zRESPONSE_NO, zICON_QUESTION )
            nRC = MessagePrompt( vSubtask, "ZO00138", "Dialog Maintenance", szMsg, 1, zBUTTONS_YESNOCANCEL, zRESPONSE_NO, zICON_QUESTION );
            //: IF nRC = zRESPONSE_CANCEL
            if ( nRC == zRESPONSE_CANCEL )
            { 
               //: DropView( vOrigWindowC )
               DropView( vOrigWindowC );
               //: DropObjectInstance( vCopyCode )
               DropObjectInstance( vCopyCode );
               //: IF GetViewByName( vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK ) >= 0
               lTempInteger_1 = GetViewByName( &vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK );
               if ( lTempInteger_1 >= 0 )
               { 
                  //: DropObjectInstance( vDeleteOp )
                  DropObjectInstance( vDeleteOp );
               } 

               //: END
               //: RETURN -1
               return( -1 );
               //:ELSE
            } 
            else
            { 
               //: IF nRC = zRESPONSE_YES
               if ( nRC == zRESPONSE_YES )
               { 
                  //: // Save Operation in Delete LOD
                  //: SEL_CLONE_CreateDeleteLod( vSubtask, vNewWindow )
                  o_SEL_CLONE_CreateDeleteLod( vSubtask, vNewWindow );
                  //:ELSE
               } 
               else
               { 
                  //: // Replace = NO, do not copy this Operation Code
                  //: DELETE ENTITY vCopyCode.Operation LAST
                  RESULT = DeleteEntity( vCopyCode, "Operation", zREPOS_LAST );
               } 

               //: END
            } 

            //: END
         } 

         //: END
      } 

      RESULT = SetCursorNextEntity( vOrigWindowC, "ActOper", "Window" );
      //: END
   } 

   //:END

   //:DropView( vOrigWindowC )
   DropView( vOrigWindowC );
   //:RETURN 0
   return( 0 );
// END
} 


//:LOCAL OPERATION
//:SEL_CLONE_CopyOperCode( VIEW vSubtask )

//:   VIEW  vCopyCode   BASED ON LOD  TZEDWDEL
static zSHORT
o_SEL_CLONE_CopyOperCode( zVIEW     vSubtask )
{
   zVIEW     vCopyCode = 0; 
   //:VIEW  vDeleteOp   BASED ON LOD  TZEDWDEL
   zVIEW     vDeleteOp = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 
   zSHORT    lTempInteger_1; 


   //:GET VIEW vCopyCode NAMED "CopyCode"
   RESULT = GetViewByName( &vCopyCode, "CopyCode", vSubtask, zLEVEL_TASK );

   //:// Step 1: Operation already exists in Target Dialog and user will replace existing
   //://         Operation, then delete Operation Code
   //:IF GetViewByName( vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK ) >= 0
   lTempInteger_0 = GetViewByName( &vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK );
   if ( lTempInteger_0 >= 0 )
   { 
      //:zwTZPNCW2D_CopyOperationToFile( vSubtask, 1 ) // 1 = zDELETE_OPERATION
      zwTZPNCW2D_CopyOperationToFile( vSubtask, 1 );
   } 

   //:END

   //:// Step 2: Copy Operation Code to Target Dialog
   //:FOR EACH vCopyCode.SourceFile
   RESULT = SetCursorFirstEntity( vCopyCode, "SourceFile", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //: FOR EACH vCopyCode.Operation
      RESULT = SetCursorFirstEntity( vCopyCode, "Operation", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      { 
         //:  // Delete old View for Editor
         //:  IF GetViewByName( vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK ) >= 0
         lTempInteger_1 = GetViewByName( &vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK );
         if ( lTempInteger_1 >= 0 )
         { 
            //:  DropObjectInstance( vDeleteOp )
            DropObjectInstance( vDeleteOp );
         } 

         //:  END
         //:  // Create LOD for Editor
         //:  ActivateEmptyObjectInstance( vDeleteOp, "TZEDWDEL", vSubtask, zMULTIPLE )
         ActivateEmptyObjectInstance( &vDeleteOp, "TZEDWDEL", vSubtask, zMULTIPLE );
         //:  SetNameForView( vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK )
         SetNameForView( vDeleteOp, "DeleteOp", vSubtask, zLEVEL_TASK );
         //:  // Editor will be copy Operation Code from 1. Source File
         //:  CREATE ENTITY vDeleteOp.SourceFile AFTER
         RESULT = CreateEntity( vDeleteOp, "SourceFile", zPOS_AFTER );
         //:  SetMatchingAttributesByName( vDeleteOp, "SourceFile",
         //:                               vCopyCode, "SourceFile", zSET_ALL )
         SetMatchingAttributesByName( vDeleteOp, "SourceFile", vCopyCode, "SourceFile", zSET_ALL );
         //:  vDeleteOp.SourceFile.Name = vCopyCode.SourceFile.CopyFromFile
         SetAttributeFromAttribute( vDeleteOp, "SourceFile", "Name", vCopyCode, "SourceFile", "CopyFromFile" );
         //:  CREATE ENTITY vDeleteOp.Operation AFTER
         RESULT = CreateEntity( vDeleteOp, "Operation", zPOS_AFTER );
         //:  vDeleteOp.Operation.Name = vCopyCode.Operation.Name
         SetAttributeFromAttribute( vDeleteOp, "Operation", "Name", vCopyCode, "Operation", "Name" );
         //:  // Editor will be copy Operation Code to 2. Source File
         //:  CREATE ENTITY vDeleteOp.SourceFile AFTER
         RESULT = CreateEntity( vDeleteOp, "SourceFile", zPOS_AFTER );
         //:  SetMatchingAttributesByName( vDeleteOp, "SourceFile",
         //:                               vCopyCode, "SourceFile", zSET_ALL )
         SetMatchingAttributesByName( vDeleteOp, "SourceFile", vCopyCode, "SourceFile", zSET_ALL );
         //:  zwTZPNCW2D_CopyOperationToFile( vSubtask, 3 ) // 3 = zCOPY_OPERATION
         zwTZPNCW2D_CopyOperationToFile( vSubtask, 3 );
         RESULT = SetCursorNextEntity( vCopyCode, "Operation", "" );
      } 

      RESULT = SetCursorNextEntity( vCopyCode, "SourceFile", "" );
      //: END
   } 

   //:END

   //:RETURN 0
   return( 0 );
// END
} 


//:LOCAL OPERATION
//:SEL_CLONE_CopyCode( VIEW vSubtask,
//:                    VIEW vOrigWindow    BASED ON LOD TZWDLGSO,
//:                    VIEW vNewWindow     BASED ON LOD TZWDLGSO )

//:   STRING (  8 )  szVML_Name
static zSHORT
o_SEL_CLONE_CopyCode( zVIEW     vSubtask,
                      zVIEW     vOrigWindow,
                      zVIEW     vNewWindow )
{
   zCHAR     szVML_Name[ 9 ] = { 0 }; 
   //:STRING (  8 )  szC_Name
   zCHAR     szC_Name[ 9 ] = { 0 }; 
   //:SHORT          nRC
   zSHORT    nRC = 0; 

   //:VIEW  CopyOperation REGISTERED AS CopyOperation
   zVIEW     CopyOperation = 0; 
   zSHORT    RESULT; 
   zLONG     lTempInteger_0; 
   zLONG     lTempInteger_1; 
   zLONG     lTempInteger_2; 
   zLONG     lTempInteger_3; 

   RESULT = GetViewByName( &CopyOperation, "CopyOperation", vSubtask, zLEVEL_TASK );

   //:// if no Copy Operation Code
   //:IF GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_CHECKED ) = 0
   //:   OR GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_ENABLED ) = 0
   lTempInteger_0 = GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_CHECKED );
   lTempInteger_1 = GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_ENABLED );
   if ( lTempInteger_0 == 0 || lTempInteger_1 == 0 )
   { 
      //:RETURN 0
      return( 0 );
   } 

   //:END

   //:szVML_Name = ""
   ZeidonStringCopy( szVML_Name, 1, 0, "", 1, 0, 9 );
   //:szC_Name   = ""
   ZeidonStringCopy( szC_Name, 1, 0, "", 1, 0, 9 );

   //:// create VML Source File
   //:IF GetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED ) = 1
   lTempInteger_2 = GetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED );
   if ( lTempInteger_2 == 1 )
   { 
      //:szVML_Name = CopyOperation.SourceFile.NameVML
      GetVariableFromAttribute( szVML_Name, 0, 'S', 9, CopyOperation, "SourceFile", "NameVML", "", 0 );
      //:// exists a VML File by that Name?
      //:SET CURSOR FIRST vNewWindow.SourceFile
      //:           WHERE vNewWindow.SourceFile.LanguageType = "V" AND
      //:                 vNewWindow.SourceFile.Name = szVML_Name
      RESULT = SetCursorFirstEntity( vNewWindow, "SourceFile", "" );
      if ( RESULT > zCURSOR_UNCHANGED )
      { 
         while ( RESULT > zCURSOR_UNCHANGED && ( CompareAttributeToString( vNewWindow, "SourceFile", "LanguageType", "V" ) != 0 || CompareAttributeToString( vNewWindow, "SourceFile", "Name", szVML_Name ) != 0 ) )
         { 
            RESULT = SetCursorNextEntity( vNewWindow, "SourceFile", "" );
         } 

      } 

      //:// Source File does not exists, create it in Dialog View
      //:IF RESULT < zCURSOR_SET
      if ( RESULT < zCURSOR_SET )
      { 
         //:SEL_CLONE_CreateSourceFile( vSubtask, vNewWindow, "V", szVML_Name )
         o_SEL_CLONE_CreateSourceFile( vSubtask, vNewWindow, "V", szVML_Name );
      } 

      //:END
   } 

   //:END

   //:// create C Source File
   //:IF GetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED ) = 1
   lTempInteger_3 = GetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED );
   if ( lTempInteger_3 == 1 )
   { 
      //:szC_Name = CopyOperation.SourceFile.NameC
      GetVariableFromAttribute( szC_Name, 0, 'S', 9, CopyOperation, "SourceFile", "NameC", "", 0 );
      //:// exists a VML File by that Name?
      //:SET CURSOR FIRST vNewWindow.SourceFile
      //:           WHERE vNewWindow.SourceFile.LanguageType = "C" AND
      //:                 vNewWindow.SourceFile.Name = szC_Name
      RESULT = SetCursorFirstEntity( vNewWindow, "SourceFile", "" );
      if ( RESULT > zCURSOR_UNCHANGED )
      { 
         while ( RESULT > zCURSOR_UNCHANGED && ( CompareAttributeToString( vNewWindow, "SourceFile", "LanguageType", "C" ) != 0 || CompareAttributeToString( vNewWindow, "SourceFile", "Name", szC_Name ) != 0 ) )
         { 
            RESULT = SetCursorNextEntity( vNewWindow, "SourceFile", "" );
         } 

      } 

      //:// Source File does not exists, create it in Dialog View
      //:IF RESULT < zCURSOR_SET
      if ( RESULT < zCURSOR_SET )
      { 
         //:SEL_CLONE_CreateSourceFile( vSubtask, vNewWindow, "C", szC_Name )
         o_SEL_CLONE_CreateSourceFile( vSubtask, vNewWindow, "C", szC_Name );
      } 

      //:END
   } 

   //:END

   //:nRC = SEL_CLONE_CreateWorkLod( vSubtask, vOrigWindow, vNewWindow,
   //:                               szVML_Name, szC_Name )
   nRC = o_SEL_CLONE_CreateWorkLod( vSubtask, vOrigWindow, vNewWindow, szVML_Name, szC_Name );
   //:IF nRC < 0
   if ( nRC < 0 )
   { 
      //:RETURN nRC
      return( nRC );
      //:ELSE
   } 
   else
   { 
      //:SEL_CLONE_CopyOperCode( vSubtask )
      o_SEL_CLONE_CopyOperCode( vSubtask );
   } 

   //:END

   //:RETURN 0
   return( 0 );
// END
} 


//:LOCAL OPERATION
static zSHORT
o_SEL_CLONE_CreateSourceFile( zVIEW     vSubtask,
                              zVIEW     vDialog,
                              zPCHAR    szLanguageType,
                              zPCHAR    szName )
{

   //:SEL_CLONE_CreateSourceFile( VIEW vSubtask,
   //:                         VIEW vDialog BASED ON LOD TZWDLGSO,
   //:                         STRING ( 1 ) szLanguageType,
   //:                         STRING ( 8 ) szName )

   //:// create the new Source File on FIRST position, because the operation
   //:// CloneWindow search the first source file with LanguageType
   //:CreateMetaEntity( vSubtask, vDialog, "SourceFile", zPOS_FIRST )
   CreateMetaEntity( vSubtask, vDialog, "SourceFile", zPOS_FIRST );
   //:vDialog.SourceFile.Name = szName
   SetAttributeFromString( vDialog, "SourceFile", "Name", szName );

   //:// Make sure that the Subdirectory attribute is null and that the
   //:// Extension attribute is set according to the Language type.
   //:vDialog.SourceFile.Subdirectory = ""
   SetAttributeFromString( vDialog, "SourceFile", "Subdirectory", "" );
   //:vDialog.SourceFile.LanguageType = szLanguageType
   SetAttributeFromString( vDialog, "SourceFile", "LanguageType", szLanguageType );

   //:IF szLanguageType = "V"
   if ( ZeidonStringCompare( szLanguageType, 1, 0, "V", 1, 0, 2 ) == 0 )
   { 
      //:vDialog.SourceFile.Extension = "VML"
      SetAttributeFromString( vDialog, "SourceFile", "Extension", "VML" );
      //:ELSE
   } 
   else
   { 
      //:vDialog.SourceFile.Extension = "C"
      SetAttributeFromString( vDialog, "SourceFile", "Extension", "C" );
   } 

   //:END

   //:RETURN 0
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SEL_CLONE_CheckSourceFile( VIEW vSubtask )

//:   STRING ( 8 )  szVML_File
zOPER_EXPORT zSHORT OPERATION
SEL_CLONE_CheckSourceFile( zVIEW     vSubtask )
{
   zCHAR     szVML_File[ 9 ] = { 0 }; 
   //:STRING ( 8 )  szC_File
   zCHAR     szC_File[ 9 ] = { 0 }; 

   //:VIEW  vDialog       BASED ON LOD  TZWDLGSO
   zVIEW     vDialog = 0; 
   //:VIEW  vDialog_Copy  BASED ON LOD  TZWDLGSO
   zVIEW     vDialog_Copy = 0; 
   //:VIEW  CopyOperation REGISTERED AS CopyOperation
   zVIEW     CopyOperation = 0; 
   zSHORT    RESULT; 
   zLONG     lTempInteger_0; 
   zLONG     lTempInteger_1; 
   zLONG     lTempInteger_2; 
   zLONG     lTempInteger_3; 
   zLONG     lTempInteger_4; 
   zLONG     lTempInteger_5; 

   RESULT = GetViewByName( &CopyOperation, "CopyOperation", vSubtask, zLEVEL_TASK );

   //:IF GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_CHECKED ) = 0
   //:   OR GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_ENABLED ) = 0
   lTempInteger_0 = GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_CHECKED );
   lTempInteger_1 = GetCtrlState( vSubtask, "cbCopyCode", zCONTROL_STATUS_ENABLED );
   if ( lTempInteger_0 == 0 || lTempInteger_1 == 0 )
   { 
      //:RETURN 0
      return( 0 );
   } 

   //:END

   //:GET VIEW vDialog NAMED "TZWINDOWL"
   RESULT = GetViewByName( &vDialog, "TZWINDOWL", vSubtask, zLEVEL_TASK );
   //:CreateViewFromViewForTask( vDialog_Copy, vDialog, vSubtask )
   CreateViewFromViewForTask( &vDialog_Copy, vDialog, vSubtask );

   //:// check VML Source File Name
   //:IF GetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED ) = 1
   lTempInteger_2 = GetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED );
   if ( lTempInteger_2 == 1 )
   { 
      //://Name is required
      //:szVML_File = CopyOperation.SourceFile.NameVML
      GetVariableFromAttribute( szVML_File, 0, 'S', 9, CopyOperation, "SourceFile", "NameVML", "", 0 );
      //:IF szVML_File = ""
      if ( ZeidonStringCompare( szVML_File, 1, 0, "", 1, 0, 9 ) == 0 )
      { 
         //:MessageSend( vSubtask, "ZO00137", "Dialog Maintenance",
         //:             "VML Source File Name is required.",
         //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
         MessageSend( vSubtask, "ZO00137", "Dialog Maintenance", "VML Source File Name is required.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
         //:SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 )
         SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
         //:SetFocusToCtrl( vSubtask, "edVML_File" )
         SetFocusToCtrl( vSubtask, "edVML_File" );
         //:DropView( vDialog_Copy )
         DropView( vDialog_Copy );
         //:RETURN -2
         return( -2 );
         //:ELSE
      } 
      else
      { 
         //:// exists a C File by that Name?
         //:SET CURSOR FIRST vDialog_Copy.SourceFile
         //:           WHERE vDialog_Copy.SourceFile.LanguageType = "C" AND
         //:                 vDialog_Copy.SourceFile.Name = szVML_File
         RESULT = SetCursorFirstEntity( vDialog_Copy, "SourceFile", "" );
         if ( RESULT > zCURSOR_UNCHANGED )
         { 
            while ( RESULT > zCURSOR_UNCHANGED && ( CompareAttributeToString( vDialog_Copy, "SourceFile", "LanguageType", "C" ) != 0 || CompareAttributeToString( vDialog_Copy, "SourceFile", "Name", szVML_File ) != 0 ) )
            { 
               RESULT = SetCursorNextEntity( vDialog_Copy, "SourceFile", "" );
            } 

         } 

         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         { 
            //:MessageSend( vSubtask, "ZO00137", "Dialog Maintenance",
            //:             "A C Source File already exists by that name.",
            //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
            MessageSend( vSubtask, "ZO00137", "Dialog Maintenance", "A C Source File already exists by that name.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
            //:SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 )
            SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
            //:SetFocusToCtrl( vSubtask, "edVML_File" )
            SetFocusToCtrl( vSubtask, "edVML_File" );
            //:DropView( vDialog_Copy )
            DropView( vDialog_Copy );
            //:RETURN -1
            return( -1 );
         } 

         //:END
      } 

      //:END
   } 

   //:END

   //:// check C Source File Name
   //:IF GetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED ) = 1
   lTempInteger_3 = GetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED );
   if ( lTempInteger_3 == 1 )
   { 
      //://Name is required
      //:szC_File = CopyOperation.SourceFile.NameC
      GetVariableFromAttribute( szC_File, 0, 'S', 9, CopyOperation, "SourceFile", "NameC", "", 0 );
      //:IF szC_File = ""
      if ( ZeidonStringCompare( szC_File, 1, 0, "", 1, 0, 9 ) == 0 )
      { 
         //:MessageSend( vSubtask, "ZO00137", "Dialog Maintenance",
         //:             "C Source File Name is required.",
         //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
         MessageSend( vSubtask, "ZO00137", "Dialog Maintenance", "C Source File Name is required.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
         //:SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 )
         SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
         //:SetFocusToCtrl( vSubtask, "edC_File" )
         SetFocusToCtrl( vSubtask, "edC_File" );
         //:DropView( vDialog_Copy )
         DropView( vDialog_Copy );
         //:RETURN -2
         return( -2 );
         //:ELSE
      } 
      else
      { 
         //:// exists a VML File by that Name?
         //:SET CURSOR FIRST vDialog_Copy.SourceFile
         //:           WHERE vDialog_Copy.SourceFile.LanguageType = "V" AND
         //:                 vDialog_Copy.SourceFile.Name = szC_File
         RESULT = SetCursorFirstEntity( vDialog_Copy, "SourceFile", "" );
         if ( RESULT > zCURSOR_UNCHANGED )
         { 
            while ( RESULT > zCURSOR_UNCHANGED && ( CompareAttributeToString( vDialog_Copy, "SourceFile", "LanguageType", "V" ) != 0 || CompareAttributeToString( vDialog_Copy, "SourceFile", "Name", szC_File ) != 0 ) )
            { 
               RESULT = SetCursorNextEntity( vDialog_Copy, "SourceFile", "" );
            } 

         } 

         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         { 
            //:MessageSend( vSubtask, "ZO00137", "Dialog Maintenance",
            //:             "A VML Source File already exists by that name.",
            //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
            MessageSend( vSubtask, "ZO00137", "Dialog Maintenance", "A VML Source File already exists by that name.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
            //:SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 )
            SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
            //:SetFocusToCtrl( vSubtask, "edC_File" )
            SetFocusToCtrl( vSubtask, "edC_File" );
            //:DropView( vDialog_Copy )
            DropView( vDialog_Copy );
            //:RETURN -1
            return( -1 );
         } 

         //:END
      } 

      //:END
   } 

   //:END

   //:// if VML and C File identical?
   //:IF GetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED ) = 1
   //:   AND GetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED ) = 1
   //:   AND szVML_File = szC_File
   lTempInteger_4 = GetCtrlState( vSubtask, "edVML_File", zCONTROL_STATUS_ENABLED );
   lTempInteger_5 = GetCtrlState( vSubtask, "edC_File", zCONTROL_STATUS_ENABLED );
   if ( lTempInteger_4 == 1 && lTempInteger_5 == 1 && ZeidonStringCompare( szVML_File, 1, 0, szC_File, 1, 0, 9 ) == 0 )
   { 
      //:   MessageSend( vSubtask, "ZO00137", "Dialog Maintenance",
      //:                "VML and C Source File Name are identical.",
      //:                zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( vSubtask, "ZO00137", "Dialog Maintenance", "VML and C Source File Name are identical.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:   SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( vSubtask, zWAB_StayOnWindow, 0, 0 );
      //:   SetFocusToCtrl( vSubtask, "edVML_File" )
      SetFocusToCtrl( vSubtask, "edVML_File" );
      //:   DropView( vDialog_Copy )
      DropView( vDialog_Copy );
      //:   RETURN -2
      return( -2 );
   } 

   //:END

   //:DropView( vDialog_Copy )
   DropView( vDialog_Copy );
   //:RETURN 0
   return( 0 );
// END
} 


//:LOCAL OPERATION
//:SEL_CLONE_GenerateSourceFileName( VIEW vSubtask,
//:                                  VIEW vTargetDialog BASED ON LOD TZWDLGSO,
//:                                  STRING ( 32 ) szControlTag,
//:                                  STRING (  8 ) szFileName )
//:   STRING ( 3 ) szIndex
static zSHORT
o_SEL_CLONE_GenerateSourceFileName( zVIEW     vSubtask,
                                    zVIEW     vTargetDialog,
                                    zPCHAR    szControlTag,
                                    zPCHAR    szFileName )
{
   zCHAR     szIndex[ 4 ] = { 0 }; 
   //:STRING ( 8 ) szVMLControl
   zCHAR     szVMLControl[ 9 ] = { 0 }; 
   //:SHORT        nPosition
   zSHORT    nPosition = 0; 
   //:SHORT        nIndex
   zSHORT    nIndex = 0; 
   //:SHORT        nRC
   zSHORT    nRC = 0; 

   //:VIEW CopyOperation REGISTERED AS CopyOperation
   zVIEW     CopyOperation = 0; 
   zSHORT    RESULT; 
   zSHORT    lTempInteger_0; 

   RESULT = GetViewByName( &CopyOperation, "CopyOperation", vSubtask, zLEVEL_TASK );

   //:IF vTargetDialog.SourceFile DOES not EXIST AND szControlTag = "edVML_File"
   lTempInteger_0 = CheckExistenceOfEntity( vTargetDialog, "SourceFile" );
   if ( lTempInteger_0 != 0 && ZeidonStringCompare( szControlTag, 1, 0, "edVML_File", 1, 0, 33 ) == 0 )
   { 
      //:szFileName = vTargetDialog.Dialog.Tag
      GetVariableFromAttribute( szFileName, 0, 'S', 9, vTargetDialog, "Dialog", "Tag", "", 0 );
      //:RETURN 0
      return( 0 );
   } 

   //:END

   //:nPosition = 0
   nPosition = 0;
   //:nIndex    = 1
   nIndex = 1;
   do 
   { 

      //:LOOP
      //:szFileName = vTargetDialog.Dialog.Tag
      GetVariableFromAttribute( szFileName, 0, 'S', 9, vTargetDialog, "Dialog", "Tag", "", 0 );
      //:nPosition = zstrlen( szFileName )
      nPosition = zstrlen( szFileName );
      //:IF nPosition > 6
      if ( nPosition > 6 )
      { 
         //:nPosition = 6
         nPosition = 6;
      } 

      //:END

      //:zltoa( nIndex, szIndex )
      zltoa( (zLONG) nIndex, szIndex );
      //:IF nIndex < 10
      if ( nIndex < 10 )
      { 
         //:szFileName[1 + nPosition:1] = "_"
         ZeidonStringCopy( szFileName, 1 + nPosition, 1, "_", 1, 0, 9 );
         //:szFileName[2 + nPosition:1] = szIndex
         ZeidonStringCopy( szFileName, 2 + nPosition, 1, szIndex, 1, 0, 9 );
         //:ELSE
      } 
      else
      { 
         //:IF nPosition = 6
         if ( nPosition == 6 )
         { 
            //:nPosition = nPosition - 1
            nPosition = nPosition - 1;
         } 

         //:END
         //:szFileName[1 + nPosition] = "_"
         ZeidonStringCopy( szFileName, 1 + nPosition, -1, "_", 1, 0, 9 );
         //:szFileName[2 + nPosition:2] = szIndex
         ZeidonStringCopy( szFileName, 2 + nPosition, 2, szIndex, 1, 0, 9 );
      } 

      //:END

      //:nIndex = nIndex + 1
      nIndex = nIndex + 1;

      //:nRC = SetCursorFirstEntityByString( vTargetDialog, "SourceFile",
      //:                                    "Name", szFileName, "" )
      nRC = SetCursorFirstEntityByString( vTargetDialog, "SourceFile", "Name", szFileName, "" );

      //:// if this Name identical with VML File Name
      //:IF szControlTag = "edC_File"
      if ( ZeidonStringCompare( szControlTag, 1, 0, "edC_File", 1, 0, 33 ) == 0 )
      { 
         //:szVMLControl = CopyOperation.SourceFile.NameVML
         GetVariableFromAttribute( szVMLControl, 0, 'S', 9, CopyOperation, "SourceFile", "NameVML", "", 0 );
         //:IF szVMLControl = szFileName
         if ( ZeidonStringCompare( szVMLControl, 1, 0, szFileName, 1, 0, 9 ) == 0 )
         { 
            //:nRC = zCURSOR_SET
            nRC = zCURSOR_SET;
         } 

         //:END
      } 

      //:END

      //:UNTIL nRC < zCURSOR_SET
   }  while ( ! ( nRC < zCURSOR_SET ) );


   //:RETURN 0
   return( 0 );
// END
} 


 
#ifdef __cplusplus
}
#endif
