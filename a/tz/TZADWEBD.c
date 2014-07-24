#define KZSYSSVC_INCL
#include "KZOENGAA.H" 
#include "TZ__OPRS.H" 
#include "ZDRVROPR.H" 
 
#ifdef __cplusplus
extern "C"
{
#endif
 
#include "ZEIDONOP.H"

zOPER_EXPORT zSHORT OPERATION
SELECT_VOR_ForAutodesign( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
REMOVE_PotentialAttributes( zVIEW     ViewToWindow );


zOPER_EXPORT zSHORT OPERATION
AUTODESIGN_Group( zVIEW     ViewToWindow );


static zSHORT
o_AutodesignGridCtrl( zVIEW     TZADCSDO,
                      zVIEW     TZWINDOWL,
                      zVIEW     TZCONTROL,
                      zVIEW     SelectedLOD,
                      zPCHAR    szDisplayUpdateFlag );


static zSHORT
o_BuildAutodesignGroupPotList( zVIEW     TZADCSDO,
                               zVIEW     SelectedLOD );


zOPER_EXPORT zSHORT OPERATION
SELECT_TopEntityForAutodesign( zVIEW     ViewToWindow );


static zSHORT
o_LocateTopEntityRecurs( zVIEW     TZADCSDO,
                         zVIEW     SelectedLOD,
                         zPCHAR    szTopEntityName );


zOPER_EXPORT zSHORT OPERATION
SELECT_PotentialAttributes( zVIEW     ViewToWindow );


static zSHORT
o_AutodesignUpdateCtrls( zVIEW     TZADCSDO,
                         zVIEW     TZWINDOWL,
                         zVIEW     TZCONTROL,
                         zVIEW     SelectedLOD );


//:DIALOG OPERATION
//:SELECT_VOR_ForAutodesign( VIEW ViewToWindow )

//:   VIEW SelectedLOD BASED ON LOD TZZOLODO
zOPER_EXPORT zSHORT OPERATION
SELECT_VOR_ForAutodesign( zVIEW     ViewToWindow )
{
   zVIEW     SelectedLOD = 0; 
   //:VIEW TZWINDOWL   BASED ON LOD TZWDLGSO
   zVIEW     TZWINDOWL = 0; 
   //:VIEW TZADCSDO    BASED ON LOD TZADCSDO
   zVIEW     TZADCSDO = 0; 
   //:SHORT nRC
   zSHORT    nRC = 0; 
   zSHORT    RESULT; 
   zLONG     lTempInteger_0; 
   zSHORT    lTempInteger_1; 


   //:// For the selected view, initialie a UI Spec for and create the list of selectable entities.
   //:GET VIEW TZWINDOWL NAMED "TZWINDOWL"
   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", ViewToWindow, zLEVEL_TASK );
   //:nRC = ActivateMetaOI_ByZKey( ViewToWindow, SelectedLOD, 0, zREFER_LOD_META, zSINGLE, TZWINDOWL.LOD.ZKey, 0 )
   GetIntegerFromAttribute( &lTempInteger_0, TZWINDOWL, "LOD", "ZKey" );
   nRC = ActivateMetaOI_ByZKey( ViewToWindow, &SelectedLOD, 0, zREFER_LOD_META, zSINGLE, lTempInteger_0, 0 );
   //:IF nRC < 0
   if ( nRC < 0 )
   { 
      //:MessageSend( ViewToWindow, "", "Autodesign Window Group",
      //:             "The Lod Object could not be read.", 
      //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Autodesign Window Group", "The Lod Object could not be read.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:RETURN -2
      return( -2 );
   } 

   //:END
   //:NAME VIEW SelectedLOD "AutodesignSelectedLOD"
   SetNameForView( SelectedLOD, "AutodesignSelectedLOD", 0, zLEVEL_TASK );

   //:ActivateEmptyMetaOI( ViewToWindow, TZADCSDO, zSOURCE_UIS_META, zSINGLE )
   ActivateEmptyMetaOI( ViewToWindow, &TZADCSDO, zSOURCE_UIS_META, zSINGLE );
   //:NAME VIEW TZADCSDO "TZADCSDO"
   SetNameForView( TZADCSDO, "TZADCSDO", 0, zLEVEL_TASK );
   //:CREATE ENTITY TZADCSDO.UI_Spec  
   RESULT = CreateEntity( TZADCSDO, "UI_Spec", zPOS_AFTER );

   //:// Clear any existing selections.
   //:IF TZADCSDO.FlatListSelectedEntity EXISTS
   lTempInteger_1 = CheckExistenceOfEntity( TZADCSDO, "FlatListSelectedEntity" );
   if ( lTempInteger_1 == 0 )
   { 
      //:DELETE ENTITY TZADCSDO.FlatListSelectedEntity  
      RESULT = DeleteEntity( TZADCSDO, "FlatListSelectedEntity", zPOS_NEXT );
   } 

   //:END
   //:FOR EACH TZADCSDO.FlatListPotentialAttribute 
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListPotentialAttribute", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:DELETE ENTITY TZADCSDO.FlatListPotentialAttribute NONE 
      RESULT = DeleteEntity( TZADCSDO, "FlatListPotentialAttribute", zREPOS_NONE );
      RESULT = SetCursorNextEntity( TZADCSDO, "FlatListPotentialAttribute", "" );
   } 

   //:END
   //:FOR EACH TZADCSDO.FlatListSelectedAttribute 
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:DELETE ENTITY TZADCSDO.FlatListSelectedAttribute NONE 
      RESULT = DeleteEntity( TZADCSDO, "FlatListSelectedAttribute", zREPOS_NONE );
      RESULT = SetCursorNextEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   } 

   //:END

   //:// Build Potential Flat List of entities.
   //:FOR EACH SelectedLOD.LOD_Entity 
   RESULT = SetCursorFirstEntity( SelectedLOD, "LOD_Entity", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:CREATE ENTITY TZADCSDO.FlatListPotentialTopEntity 
      RESULT = CreateEntity( TZADCSDO, "FlatListPotentialTopEntity", zPOS_AFTER );
      //:SetMatchingAttributesByName( TZADCSDO, "FlatListPotentialTopEntity", SelectedLOD, "LOD_Entity", zSET_ALL ) 
      SetMatchingAttributesByName( TZADCSDO, "FlatListPotentialTopEntity", SelectedLOD, "LOD_Entity", zSET_ALL );
      RESULT = SetCursorNextEntity( SelectedLOD, "LOD_Entity", "" );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:REMOVE_PotentialAttributes( VIEW ViewToWindow )

//:   VIEW TZADCSDO  REGISTERED AS TZADCSDO
zOPER_EXPORT zSHORT OPERATION
REMOVE_PotentialAttributes( zVIEW     ViewToWindow )
{
   zVIEW     TZADCSDO = 0; 
   zSHORT    RESULT; 
   //:VIEW TZADCSDO2 BASED ON LOD TZADCSDO
   zVIEW     TZADCSDO2 = 0; 
   //:STRING ( 1 ) szCreateEntityOnlyEntry
   zCHAR     szCreateEntityOnlyEntry[ 2 ] = { 0 }; 
   //:SHORT nRC
   zSHORT    nRC = 0; 

   RESULT = GetViewByName( &TZADCSDO, "TZADCSDO", ViewToWindow, zLEVEL_TASK );

   //:// Remove any selected Selected entries.
   //:FOR EACH TZADCSDO.FlatListSelectedAttribute 
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:nRC = GetSelectStateOfEntity( TZADCSDO, "FlatListSelectedAttribute" )
      nRC = GetSelectStateOfEntity( TZADCSDO, "FlatListSelectedAttribute" );
      //:IF nRC = 1
      if ( nRC == 1 )
      { 
         //:DELETE ENTITY TZADCSDO.FlatListSelectedAttribute NONE 
         RESULT = DeleteEntity( TZADCSDO, "FlatListSelectedAttribute", zREPOS_NONE );
      } 

      RESULT = SetCursorNextEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
      //:END
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:AUTODESIGN_Group( VIEW ViewToWindow )

//:   VIEW TZADCSDO    BASED ON LOD  TZADCSDO
zOPER_EXPORT zSHORT OPERATION
AUTODESIGN_Group( zVIEW     ViewToWindow )
{
   zVIEW     TZADCSDO = 0; 
   //:VIEW TZWINDOWL   BASED ON LOD  TZWDLGSO
   zVIEW     TZWINDOWL = 0; 
   //:VIEW TZCONTROL   BASED ON LOD  TZWDLGSO
   zVIEW     TZCONTROL = 0; 
   //:VIEW SelectedLOD BASED ON LOD  TZZOLODO
   zVIEW     SelectedLOD = 0; 
   //:STRING ( 32 ) szTag
   zCHAR     szTag[ 33 ] = { 0 }; 
   //:SHORT nRC
   zSHORT    nRC = 0; 
   zSHORT    RESULT; 


   //:// Make sure that at least one attribute has been selected.
   //:GET VIEW TZADCSDO NAMED "TZADCSDO"
   RESULT = GetViewByName( &TZADCSDO, "TZADCSDO", ViewToWindow, zLEVEL_TASK );
   //:IF RESULT < 0
   if ( RESULT < 0 )
   { 
      //:MessageSend( ViewToWindow, "", "Autodesign Window Group",
      //:             "At least one Attribute must be selected.", 
      //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Autodesign Window Group", "At least one Attribute must be selected.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:RETURN -2
      return( -2 );
   } 

   //:END
   //:SET CURSOR FIRST TZADCSDO.FlatListSelectedAttribute WHERE TZADCSDO.FlatListSelectedAttribute.AttributeName != ""
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   if ( RESULT > zCURSOR_UNCHANGED )
   { 
      while ( RESULT > zCURSOR_UNCHANGED && ( CompareAttributeToString( TZADCSDO, "FlatListSelectedAttribute", "AttributeName", "" ) == 0 ) )
      { 
         RESULT = SetCursorNextEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
      } 

   } 

   //:IF RESULT < zCURSOR_SET
   if ( RESULT < zCURSOR_SET )
   { 
      //:MessageSend( ViewToWindow, "", "Autodesign Window Group",
      //:             "At least one Attribute must be selected.", 
      //:             zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
      MessageSend( ViewToWindow, "", "Autodesign Window Group", "At least one Attribute must be selected.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
      //:SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 )
      SetWindowActionBehavior( ViewToWindow, zWAB_StayOnWindow, 0, 0 );
      //:RETURN -2
      return( -2 );
   } 

   //:END 

   //:// Build the grid or group of Text, Editbox, Checkbox, Calendar or Combobox controls depending
   //:// on the value of WebAutodesignGroupType.
   //:GET VIEW TZWINDOWL NAMED "TZWINDOWL"
   RESULT = GetViewByName( &TZWINDOWL, "TZWINDOWL", ViewToWindow, zLEVEL_TASK );
   //:GET VIEW TZCONTROL NAMED "TZCONTROL"
   RESULT = GetViewByName( &TZCONTROL, "TZCONTROL", ViewToWindow, zLEVEL_TASK );
   //:GET VIEW SelectedLOD NAMED "AutodesignSelectedLOD"
   RESULT = GetViewByName( &SelectedLOD, "AutodesignSelectedLOD", ViewToWindow, zLEVEL_TASK );
   //:AcceptSubobject( TZCONTROL, "Control" )
   AcceptSubobject( TZCONTROL, "Control" );

   //:IF TZADCSDO.UI_Spec.WebAutodesignGroupType = "D"
   if ( CompareAttributeToString( TZADCSDO, "UI_Spec", "WebAutodesignGroupType", "D" ) == 0 )
   { 
      //:// Go to build a Grid control for display only based on the specifications of FlatListSelectedAttribute.
      //:AutodesignGridCtrl( TZADCSDO, TZWINDOWL, TZCONTROL, SelectedLOD, "D" )
      o_AutodesignGridCtrl( TZADCSDO, TZWINDOWL, TZCONTROL, SelectedLOD, "D" );
      //:szTag = TZWINDOWL.Window.Tag 
      GetVariableFromAttribute( szTag, 0, 'S', 33, TZWINDOWL, "Window", "Tag", "", 0 );
      //:fnPainterCall( 8, ViewToWindow, 0, szTag )
      fnPainterCall( 8, ViewToWindow, 0, szTag );
      //:ELSE
   } 
   else
   { 
      //:IF TZADCSDO.UI_Spec.WebAutodesignGroupType = "U"
      if ( CompareAttributeToString( TZADCSDO, "UI_Spec", "WebAutodesignGroupType", "U" ) == 0 )
      { 
         //:// Go to build a Grid control for update based on the specifications of FlatListSelectedAttribute.
         //:AutodesignGridCtrl( TZADCSDO, TZWINDOWL, TZCONTROL, SelectedLOD, "U" )
         o_AutodesignGridCtrl( TZADCSDO, TZWINDOWL, TZCONTROL, SelectedLOD, "U" );
         //:szTag = TZWINDOWL.Window.Tag 
         GetVariableFromAttribute( szTag, 0, 'S', 33, TZWINDOWL, "Window", "Tag", "", 0 );
         //:fnPainterCall( 8, ViewToWindow, 0, szTag )
         fnPainterCall( 8, ViewToWindow, 0, szTag );
         //:ELSE
      } 
      else
      { 
         //:// Go to build a group of update controls based on the specifications of FlatListSelectedAttribute.
         //:AutodesignUpdateCtrls( TZADCSDO, TZWINDOWL, TZCONTROL, SelectedLOD )
         o_AutodesignUpdateCtrls( TZADCSDO, TZWINDOWL, TZCONTROL, SelectedLOD );
         //:szTag = TZWINDOWL.Window.Tag 
         GetVariableFromAttribute( szTag, 0, 'S', 33, TZWINDOWL, "Window", "Tag", "", 0 );
         //:fnPainterCall( 8, ViewToWindow, 0, szTag )
         fnPainterCall( 8, ViewToWindow, 0, szTag );
      } 

      //:END
   } 

   //:END
   return( 0 );
// END
} 


//:LOCAL OPERATION
//:AutodesignGridCtrl( VIEW TZADCSDO    BASED ON LOD TZADCSDO,
//:                    VIEW TZWINDOWL   BASED ON LOD TZWDLGSO,
//:                    VIEW TZCONTROL   BASED ON LOD TZWDLGSO,
//:                    VIEW SelectedLOD BASED ON LOD TZZOLODO,
//:                    STRING ( 1 ) szDisplayUpdateFlag )

//:   VIEW TZPESRCO BASED ON LOD TZPESRCO
static zSHORT
o_AutodesignGridCtrl( zVIEW     TZADCSDO,
                      zVIEW     TZWINDOWL,
                      zVIEW     TZCONTROL,
                      zVIEW     SelectedLOD,
                      zPCHAR    szDisplayUpdateFlag )
{
   zVIEW     TZPESRCO = 0; 
   //:INTEGER lGridWidth
   zLONG     lGridWidth = 0; 
   //:INTEGER lControlWidthChars
   zLONG     lControlWidthChars = 0; 
   //:INTEGER lControlWidth
   zLONG     lControlWidth = 0; 
   //:INTEGER lControlPosition
   zLONG     lControlPosition = 0; 
   //:INTEGER lTotalAttributeWidthsLT10
   zLONG     lTotalAttributeWidthsLT10 = 0; 
   //:INTEGER lTotalAttributeWidthsGT10
   zLONG     lTotalAttributeWidthsGT10 = 0; 
   //:INTEGER lWidth
   zLONG     lWidth = 0; 
   //:STRING ( 50 ) szPromptText
   zCHAR     szPromptText[ 51 ] = { 0 }; 
   //:STRING ( 32 ) szAttributeName
   zCHAR     szAttributeName[ 33 ] = { 0 }; 
   //:STRING ( 20 ) szControlType
   zCHAR     szControlType[ 21 ] = { 0 }; 
   zSHORT    RESULT; 
   zCHAR     szTempString_0[ 33 ]; 
   zCHAR     szTempString_1[ 33 ]; 
   zCHAR     szTempString_2[ 33 ]; 
   zCHAR     szTempString_3[ 33 ]; 


   //:// Build a Grid control, with a subentity for each FlatListSelectedAttribute entry.
   //:SET CURSOR FIRST TZADCSDO.FlatListSelectedAttribute  
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   //:GET VIEW TZPESRCO NAMED "TZPESRCO"
   RESULT = GetViewByName( &TZPESRCO, "TZPESRCO", TZADCSDO, zLEVEL_TASK );
   //:SET CURSOR FIRST TZPESRCO.ControlDef WHERE TZPESRCO.ControlDef.Tag = "Grid" 
   RESULT = SetCursorFirstEntityByString( TZPESRCO, "ControlDef", "Tag", "Grid", "" );
   //:CreateMetaEntity( TZWINDOWL, TZCONTROL, "CtrlCtrl", zPOS_AFTER )
   CreateMetaEntity( TZWINDOWL, TZCONTROL, "CtrlCtrl", zPOS_AFTER );
   //:SetViewToSubobject( TZCONTROL, "CtrlCtrl" )
   SetViewToSubobject( TZCONTROL, "CtrlCtrl" );
   //:INCLUDE TZCONTROL.ControlDef FROM TZPESRCO.ControlDef 
   RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "ControlDef", TZPESRCO, "ControlDef", zPOS_AFTER );
   //:TZCONTROL.Control.Tag = "Grid" + TZADCSDO.FlatListSelectedAttribute.EntityName 
   GetVariableFromAttribute( szTempString_1, 0, 'S', 33, TZADCSDO, "FlatListSelectedAttribute", "EntityName", "", 0 );
   ZeidonStringCopy( szTempString_0, 1, 0, "Grid", 1, 0, 33 );
   ZeidonStringConcat( szTempString_0, 1, 0, szTempString_1, 1, 0, 33 );
   SetAttributeFromString( TZCONTROL, "Control", "Tag", szTempString_0 );
   //:TZCONTROL.Control.SyncKey = 9999
   SetAttributeFromInteger( TZCONTROL, "Control", "SyncKey", 9999 );

   //:// Position and Size will be intially set from constants.
   //:TZCONTROL.Control.PSDLG_X = 5
   SetAttributeFromInteger( TZCONTROL, "Control", "PSDLG_X", 5 );
   //:TZCONTROL.Control.PSDLG_Y = 5
   SetAttributeFromInteger( TZCONTROL, "Control", "PSDLG_Y", 5 );
   //:TZCONTROL.Control.SZDLG_X = 410
   SetAttributeFromInteger( TZCONTROL, "Control", "SZDLG_X", 410 );
   //:TZCONTROL.Control.SZDLG_Y = 27
   SetAttributeFromInteger( TZCONTROL, "Control", "SZDLG_Y", 27 );

   //:// Build CtrlMap subobject for list entity, which is first entity in FlatListSelectedAttribute.
   //:CreateMetaEntity( TZWINDOWL, TZCONTROL, "CtrlMap", zPOS_AFTER )
   CreateMetaEntity( TZWINDOWL, TZCONTROL, "CtrlMap", zPOS_AFTER );
   //:SET CURSOR FIRST SelectedLOD.LOD_Entity WHERE SelectedLOD.LOD_Entity.Name = TZADCSDO.FlatListSelectedAttribute.EntityName 
   GetStringFromAttribute( szTempString_2, TZADCSDO, "FlatListSelectedAttribute", "EntityName" );
   RESULT = SetCursorFirstEntityByString( SelectedLOD, "LOD_Entity", "Name", szTempString_2, "" );
   //:INCLUDE TZCONTROL.CtrlMapLOD_Entity FROM SelectedLOD.LOD_Entity 
   RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "CtrlMapLOD_Entity", SelectedLOD, "LOD_Entity", zPOS_AFTER );
   //:INCLUDE TZCONTROL.CtrlMapView FROM TZWINDOWL.ViewObjRef 
   RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "CtrlMapView", TZWINDOWL, "ViewObjRef", zPOS_AFTER );

   //:// For large attribues (eg. length > 10), we will use a ratio of their size to the size of the grid minus the
   //:// lengths of smaller attributes
   //:// Total widths for all attributes, which will be used in ratios below.
   //:lTotalAttributeWidthsLT10 = 0
   lTotalAttributeWidthsLT10 = 0;
   //:lTotalAttributeWidthsGT10 = 0
   lTotalAttributeWidthsGT10 = 0;
   //:FOR EACH TZADCSDO.FlatListSelectedAttribute WHERE TZADCSDO.FlatListSelectedAttribute.AttributeName != ""
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      if ( CompareAttributeToString( TZADCSDO, "FlatListSelectedAttribute", "AttributeName", "" ) != 0 )
      { 
         //:lWidth = TZADCSDO.FlatListSelectedAttribute.ControlWidth
         GetIntegerFromAttribute( &lWidth, TZADCSDO, "FlatListSelectedAttribute", "ControlWidth" );
         //:IF lWidth > 10
         if ( lWidth > 10 )
         { 
            //:lTotalAttributeWidthsGT10 = lTotalAttributeWidthsGT10 + lWidth 
            lTotalAttributeWidthsGT10 = lTotalAttributeWidthsGT10 + lWidth;
            //:ELSE
         } 
         else
         { 
            //:IF lWidth < 4
            if ( lWidth < 4 )
            { 
               //:lWidth = 4    // We won't consider any control to be less than 4 characters. 
               lWidth = 4;
            } 

            //:END
            //:lTotalAttributeWidthsLT10 = lTotalAttributeWidthsLT10 + lWidth 
            lTotalAttributeWidthsLT10 = lTotalAttributeWidthsLT10 + lWidth;
         } 

      } 

      RESULT = SetCursorNextEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
      //:END
   } 

   //:END

   //:// Build subcontrol for each FlatListSelectedAttribute entry.
   //:lGridWidth = TZCONTROL.Control.SZDLG_X
   GetIntegerFromAttribute( &lGridWidth, TZCONTROL, "Control", "SZDLG_X" );
   //:lControlPosition = 0
   lControlPosition = 0;
   //:FOR EACH TZADCSDO.FlatListSelectedAttribute WHERE TZADCSDO.FlatListSelectedAttribute.AttributeName != ""
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      if ( CompareAttributeToString( TZADCSDO, "FlatListSelectedAttribute", "AttributeName", "" ) != 0 )
      { 
         //:CreateMetaEntity( TZWINDOWL, TZCONTROL, "CtrlCtrl", zPOS_AFTER )
         CreateMetaEntity( TZWINDOWL, TZCONTROL, "CtrlCtrl", zPOS_AFTER );
         //:SetViewToSubobject( TZCONTROL, "CtrlCtrl" )
         SetViewToSubobject( TZCONTROL, "CtrlCtrl" );
         //:szAttributeName = TZADCSDO.FlatListSelectedAttribute.AttributeName
         GetVariableFromAttribute( szAttributeName, 0, 'S', 33, TZADCSDO, "FlatListSelectedAttribute", "AttributeName", "", 0 );
         //:TZCONTROL.Control.Tag = "GridCtrl" + szAttributeName
         ZeidonStringCopy( szTempString_2, 1, 0, "GridCtrl", 1, 0, 33 );
         ZeidonStringConcat( szTempString_2, 1, 0, szAttributeName, 1, 0, 33 );
         SetAttributeFromString( TZCONTROL, "Control", "Tag", szTempString_2 );
         //:InsertSpacesInPrompt( szPromptText, TZCONTROL, szAttributeName, 100 )
         InsertSpacesInPrompt( szPromptText, TZCONTROL, szAttributeName, 100 );
         //:TZCONTROL.Control.Text = szPromptText
         SetAttributeFromString( TZCONTROL, "Control", "Text", szPromptText );

         //:// What Control is used depends first on whether the szDisplayUpdateFlag is update or display and then on a combination
         //:// of the Update flag for the Entity and the Domain of the attribute.
         //:IF szDisplayUpdateFlag = "D"
         if ( ZeidonStringCompare( szDisplayUpdateFlag, 1, 0, "D", 1, 0, 2 ) == 0 )
         { 
            //:// The request is for display only, so include the regular subedit control and disable the edit function.
            //:SET CURSOR FIRST TZPESRCO.ControlDef WHERE TZPESRCO.ControlDef.Tag = "GridEditCtl" 
            RESULT = SetCursorFirstEntityByString( TZPESRCO, "ControlDef", "Tag", "GridEditCtl", "" );
            //:INCLUDE TZCONTROL.ControlDef FROM TZPESRCO.ControlDef 
            RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "ControlDef", TZPESRCO, "ControlDef", zPOS_AFTER );
            //:TZCONTROL.Control.Disabled = "Y"
            SetAttributeFromString( TZCONTROL, "Control", "Disabled", "Y" );
            //:ELSE
         } 
         else
         { 
            //:// Determine if the Entity is updatable.
            //:SET CURSOR FIRST SelectedLOD.LOD_Entity WHERE SelectedLOD.LOD_Entity.Name = TZADCSDO.FlatListSelectedAttribute.EntityName 
            GetStringFromAttribute( szTempString_3, TZADCSDO, "FlatListSelectedAttribute", "EntityName" );
            RESULT = SetCursorFirstEntityByString( SelectedLOD, "LOD_Entity", "Name", szTempString_3, "" );
            //:IF SelectedLOD.LOD_Entity.Update = "Y"
            if ( CompareAttributeToString( SelectedLOD, "LOD_Entity", "Update", "Y" ) == 0 )
            { 
               //:// Build the Editbox, Checkbox, Calendar or Combobox controls depending on ControlType.
               //:szControlType = TZADCSDO.FlatListSelectedAttribute.ControlType
               GetVariableFromAttribute( szControlType, 0, 'S', 21, TZADCSDO, "FlatListSelectedAttribute", "ControlType", "", 0 );
               //:IF szControlType = "Checkbox" OR szControlType = "Combobox" OR szControlType = "Calendar"
               if ( ZeidonStringCompare( szControlType, 1, 0, "Checkbox", 1, 0, 21 ) == 0 || ZeidonStringCompare( szControlType, 1, 0, "Combobox", 1, 0, 21 ) == 0 || ZeidonStringCompare( szControlType, 1, 0, "Calendar", 1, 0, 21 ) == 0 )
               { 
                  //:SET CURSOR FIRST TZPESRCO.ControlDef WHERE TZPESRCO.ControlDef.Tag = szControlType
                  RESULT = SetCursorFirstEntityByString( TZPESRCO, "ControlDef", "Tag", szControlType, "" );
                  //:ELSE
               } 
               else
               { 
                  //:SET CURSOR FIRST TZPESRCO.ControlDef WHERE TZPESRCO.ControlDef.Tag = "GridEditCtl" 
                  RESULT = SetCursorFirstEntityByString( TZPESRCO, "ControlDef", "Tag", "GridEditCtl", "" );
               } 

               //:END
               //:INCLUDE TZCONTROL.ControlDef FROM TZPESRCO.ControlDef 
               RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "ControlDef", TZPESRCO, "ControlDef", zPOS_AFTER );
               //:ELSE
            } 
            else
            { 
               //:// Since Entity is not updatable, use regular display control.
               //:SET CURSOR FIRST TZPESRCO.ControlDef WHERE TZPESRCO.ControlDef.Tag = "GridEditCtl" 
               RESULT = SetCursorFirstEntityByString( TZPESRCO, "ControlDef", "Tag", "GridEditCtl", "" );
               //:INCLUDE TZCONTROL.ControlDef FROM TZPESRCO.ControlDef 
               RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "ControlDef", TZPESRCO, "ControlDef", zPOS_AFTER );
               //:TZCONTROL.Control.Disabled = "Y"
               SetAttributeFromString( TZCONTROL, "Control", "Disabled", "Y" );
            } 

            //:END
         } 

         //:END

         //:// Width of Control where the ControlWidth > 10 will be based on the ratio of each Attribute size to the total of all 
         //:// attributes with width greater than 10. (100 - lTotalAttributeWidthsLT10 is the total length to be applied for all strings > 10.)
         //:// Otherwise, width will simply be multiplied by 4 pixels.
         //:lWidth = TZADCSDO.FlatListSelectedAttribute.ControlWidth
         GetIntegerFromAttribute( &lWidth, TZADCSDO, "FlatListSelectedAttribute", "ControlWidth" );
         //:IF lWidth > 10
         if ( lWidth > 10 )
         { 
            //:lControlWidth = (( lWidth * ( 100 - lTotalAttributeWidthsLT10 )) / lTotalAttributeWidthsGT10 ) * 4
            lControlWidth = ( ( lWidth * ( 100 - lTotalAttributeWidthsLT10 ) ) / lTotalAttributeWidthsGT10 ) * 4;
            //:ELSE
         } 
         else
         { 
            //:IF lWidth < 4
            if ( lWidth < 4 )
            { 
               //:lWidth = 4    // We won't consider any control to be less than 4 characters. 
               lWidth = 4;
            } 

            //:END
            //:lControlWidth = lWidth * 4
            lControlWidth = lWidth * 4;
         } 

         //:END

         //:TZCONTROL.Control.PSDLG_X = lControlPosition
         SetAttributeFromInteger( TZCONTROL, "Control", "PSDLG_X", lControlPosition );
         //:TZCONTROL.Control.SZDLG_X = lControlWidth
         SetAttributeFromInteger( TZCONTROL, "Control", "SZDLG_X", lControlWidth );
         //:TZCONTROL.Control.PSDLG_Y = 0
         SetAttributeFromInteger( TZCONTROL, "Control", "PSDLG_Y", 0 );
         //:TZCONTROL.Control.SZDLG_Y = 15
         SetAttributeFromInteger( TZCONTROL, "Control", "SZDLG_Y", 15 );
         //:lControlPosition = lControlPosition + lControlWidth
         lControlPosition = lControlPosition + lControlWidth;

         //:// Build CtrlMap subobject for list control entity from Entity.Attribute of FlatListSelectedAttribute
         //:CreateMetaEntity( TZWINDOWL, TZCONTROL, "CtrlMap", zPOS_AFTER )
         CreateMetaEntity( TZWINDOWL, TZCONTROL, "CtrlMap", zPOS_AFTER );
         //:SET CURSOR FIRST SelectedLOD.LOD_Entity WHERE SelectedLOD.LOD_Entity.Name = TZADCSDO.FlatListSelectedAttribute.EntityName
         GetStringFromAttribute( szTempString_3, TZADCSDO, "FlatListSelectedAttribute", "EntityName" );
         RESULT = SetCursorFirstEntityByString( SelectedLOD, "LOD_Entity", "Name", szTempString_3, "" );
         //:SET CURSOR FIRST SelectedLOD.ER_Attribute WITHIN SelectedLOD.LOD_Entity 
         //:        WHERE SelectedLOD.ER_Attribute.Name = TZADCSDO.FlatListSelectedAttribute.AttributeName  
         GetStringFromAttribute( szTempString_3, TZADCSDO, "FlatListSelectedAttribute", "AttributeName" );
         RESULT = SetCursorFirstEntityByString( SelectedLOD, "ER_Attribute", "Name", szTempString_3, "LOD_Entity" );
         //:INCLUDE TZCONTROL.CtrlMapLOD_Attribute FROM SelectedLOD.LOD_Attribute 
         RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "CtrlMapLOD_Attribute", SelectedLOD, "LOD_Attribute", zPOS_AFTER );
         //:INCLUDE TZCONTROL.CtrlMapView FROM TZWINDOWL.ViewObjRef 
         RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "CtrlMapView", TZWINDOWL, "ViewObjRef", zPOS_AFTER );

         //:ResetViewFromSubobject( TZCONTROL )
         ResetViewFromSubobject( TZCONTROL );
      } 

      RESULT = SetCursorNextEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   } 

   //:END

   //:ResetViewFromSubobject( TZCONTROL )
   ResetViewFromSubobject( TZCONTROL );
   return( 0 );
// END
} 


//:LOCAL OPERATION
//:BuildAutodesignGroupPotList( VIEW TZADCSDO    BASED ON LOD TZADCSDO,
//:                             VIEW SelectedLOD BASED ON LOD TZZOLODO )

//:   STRING ( 32 ) szAttributeName
static zSHORT
o_BuildAutodesignGroupPotList( zVIEW     TZADCSDO,
                               zVIEW     SelectedLOD )
{
   zCHAR     szAttributeName[ 33 ] = { 0 }; 
   //:STRING ( 32 ) szDomainName
   zCHAR     szDomainName[ 33 ] = { 0 }; 
   zSHORT    RESULT; 


   //:// Build the FlatListPotentialAttribute entries from the subobject starting with LOD_EntityParent.
   //:CREATE ENTITY TZADCSDO.FlatListPotentialAttribute 
   RESULT = CreateEntity( TZADCSDO, "FlatListPotentialAttribute", zPOS_AFTER );
   //:TZADCSDO.FlatListPotentialAttribute.EntityName       = SelectedLOD.LOD_EntityParent.Name 
   SetAttributeFromAttribute( TZADCSDO, "FlatListPotentialAttribute", "EntityName", SelectedLOD, "LOD_EntityParent", "Name" );
   //:TZADCSDO.FlatListPotentialAttribute.IndentEntityName = SelectedLOD.LOD_EntityParent.IndentName 
   SetAttributeFromAttribute( TZADCSDO, "FlatListPotentialAttribute", "IndentEntityName", SelectedLOD, "LOD_EntityParent", "IndentName" );
   //:SetMatchingAttributesByName( TZADCSDO, "FlatListPotentialAttribute", SelectedLOD, "LOD_EntityParent", zSET_ALL ) 
   SetMatchingAttributesByName( TZADCSDO, "FlatListPotentialAttribute", SelectedLOD, "LOD_EntityParent", zSET_ALL );

   //:FOR EACH SelectedLOD.LOD_AttributeRec 
   RESULT = SetCursorFirstEntity( SelectedLOD, "LOD_AttributeRec", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:CREATE ENTITY TZADCSDO.FlatListPotentialAttribute 
      RESULT = CreateEntity( TZADCSDO, "FlatListPotentialAttribute", zPOS_AFTER );
      //:szAttributeName = SelectedLOD.ER_AttributeRec.Name 
      GetVariableFromAttribute( szAttributeName, 0, 'S', 33, SelectedLOD, "ER_AttributeRec", "Name", "", 0 );
      //:szDomainName    = SelectedLOD.DomainRec.Name
      GetVariableFromAttribute( szDomainName, 0, 'S', 33, SelectedLOD, "DomainRec", "Name", "", 0 );
      //:SetMatchingAttributesByName( TZADCSDO, "FlatListPotentialAttribute", SelectedLOD, "LOD_EntityParent", zSET_ALL ) 
      SetMatchingAttributesByName( TZADCSDO, "FlatListPotentialAttribute", SelectedLOD, "LOD_EntityParent", zSET_ALL );
      //:TZADCSDO.FlatListPotentialAttribute.EntityName    = SelectedLOD.LOD_EntityParent.Name
      SetAttributeFromAttribute( TZADCSDO, "FlatListPotentialAttribute", "EntityName", SelectedLOD, "LOD_EntityParent", "Name" );
      //:TZADCSDO.FlatListPotentialAttribute.AttributeName = szAttributeName
      SetAttributeFromString( TZADCSDO, "FlatListPotentialAttribute", "AttributeName", szAttributeName );

      //:// Create Control Type based on Update characteristic of Entity and Domain.
      //:// A Domain of Y/N will create a Checkbox even if the entity is not updatable.
      //:IF SelectedLOD.DomainRec.Name = "Y/N" 
      if ( CompareAttributeToString( SelectedLOD, "DomainRec", "Name", "Y/N" ) == 0 )
      { 
         //:// Domain is Y/N.
         //:TZADCSDO.FlatListPotentialAttribute.ControlType   = "Checkbox"
         SetAttributeFromString( TZADCSDO, "FlatListPotentialAttribute", "ControlType", "Checkbox" );
         //:ELSE
      } 
      else
      { 
         //:IF TZADCSDO.FlatListPotentialTopEntity.Update = "Y"
         if ( CompareAttributeToString( TZADCSDO, "FlatListPotentialTopEntity", "Update", "Y" ) == 0 )
         { 
            //:IF SelectedLOD.DomainRec.Name = "Date" OR SelectedLOD.DomainRec.Name = "DateTime" 
            if ( CompareAttributeToString( SelectedLOD, "DomainRec", "Name", "Date" ) == 0 || CompareAttributeToString( SelectedLOD, "DomainRec", "Name", "DateTime" ) == 0 )
            { 
               //:// A Domain of Date will make the control a Calendar.
               //:TZADCSDO.FlatListPotentialAttribute.ControlType   = "Calendar"
               SetAttributeFromString( TZADCSDO, "FlatListPotentialAttribute", "ControlType", "Calendar" );
               //:ELSE
            } 
            else
            { 
               //:IF SelectedLOD.DomainRec.DomainType = "T"
               if ( CompareAttributeToString( SelectedLOD, "DomainRec", "DomainType", "T" ) == 0 )
               { 
                  //:// The Domain is a table, so make control a Combobox.
                  //:TZADCSDO.FlatListPotentialAttribute.ControlType   = "Combobox"
                  SetAttributeFromString( TZADCSDO, "FlatListPotentialAttribute", "ControlType", "Combobox" );
                  //:ELSE
               } 
               else
               { 
                  //:// If not a table, make control an Editbox.
                  //:TZADCSDO.FlatListPotentialAttribute.ControlType   = "Editbox"
                  SetAttributeFromString( TZADCSDO, "FlatListPotentialAttribute", "ControlType", "Editbox" );
               } 

               //:END
            } 

            //:END
            //:ELSE
         } 
         else
         { 
            //:// The entity is not updatable, so Control Type is "Text"
            //:TZADCSDO.FlatListPotentialAttribute.ControlType   = "Text"
            SetAttributeFromString( TZADCSDO, "FlatListPotentialAttribute", "ControlType", "Text" );
         } 

         //:END
      } 

      //:END

      //:// The Control Width of each Attribute will depend on Domain Type, as follows.
      //:IF SelectedLOD.DomainRec.DataType = "S"
      if ( CompareAttributeToString( SelectedLOD, "DomainRec", "DataType", "S" ) == 0 )
      { 
         //:// String length is just length of Domain or Attribute.
         //:IF SelectedLOD.ER_AttributeRec.Lth = ""
         if ( CompareAttributeToString( SelectedLOD, "ER_AttributeRec", "Lth", "" ) == 0 )
         { 
            //:TZADCSDO.FlatListPotentialAttribute.ControlWidth = SelectedLOD.DomainRec.MaxStringLth 
            SetAttributeFromAttribute( TZADCSDO, "FlatListPotentialAttribute", "ControlWidth", SelectedLOD, "DomainRec", "MaxStringLth" );
            //:ELSE
         } 
         else
         { 
            //:TZADCSDO.FlatListPotentialAttribute.ControlWidth = SelectedLOD.ER_AttributeRec.Lth 
            SetAttributeFromAttribute( TZADCSDO, "FlatListPotentialAttribute", "ControlWidth", SelectedLOD, "ER_AttributeRec", "Lth" );
         } 

         //:END
         //:ELSE 
      } 
      else
      { 
         //:IF SelectedLOD.DomainRec.DataType = "L" OR SelectedLOD.DomainRec.DataType = "M"
         if ( CompareAttributeToString( SelectedLOD, "DomainRec", "DataType", "L" ) == 0 || CompareAttributeToString( SelectedLOD, "DomainRec", "DataType", "M" ) == 0 )
         { 
            //:// Integer or Decimal length is 8.
            //:TZADCSDO.FlatListPotentialAttribute.ControlWidth = 8
            SetAttributeFromInteger( TZADCSDO, "FlatListPotentialAttribute", "ControlWidth", 8 );
            //:ELSE
         } 
         else
         { 
            //:IF SelectedLOD.DomainRec.DataType = "D" OR SelectedLOD.DomainRec.DataType = "T" OR SelectedLOD.DomainRec.DataType = "I"
            if ( CompareAttributeToString( SelectedLOD, "DomainRec", "DataType", "D" ) == 0 || CompareAttributeToString( SelectedLOD, "DomainRec", "DataType", "T" ) == 0 || CompareAttributeToString( SelectedLOD, "DomainRec", "DataType", "I" ) == 0 )
            { 
               //:// Date, DateTime or Time length is 10.
               //:TZADCSDO.FlatListPotentialAttribute.ControlWidth = 10
               SetAttributeFromInteger( TZADCSDO, "FlatListPotentialAttribute", "ControlWidth", 10 );
               //:ELSE 
            } 
            else
            { 
               //:// Anything else is 10.
               //:TZADCSDO.FlatListPotentialAttribute.ControlWidth = 10
               SetAttributeFromInteger( TZADCSDO, "FlatListPotentialAttribute", "ControlWidth", 10 );
            } 

            //:END
         } 

         //:END
      } 

      RESULT = SetCursorNextEntity( SelectedLOD, "LOD_AttributeRec", "" );
      //:END
   } 

   //:END

   //:// Process subentities.
   //:FOR EACH SelectedLOD.LOD_EntityChild 
   RESULT = SetCursorFirstEntity( SelectedLOD, "LOD_EntityChild", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:SetViewToSubobject( SelectedLOD, "LOD_EntityChild" )
      SetViewToSubobject( SelectedLOD, "LOD_EntityChild" );
      //:BuildAutodesignGroupPotList( TZADCSDO, SelectedLOD )
      o_BuildAutodesignGroupPotList( TZADCSDO, SelectedLOD );
      //:ResetViewFromSubobject( SelectedLOD )
      ResetViewFromSubobject( SelectedLOD );
      RESULT = SetCursorNextEntity( SelectedLOD, "LOD_EntityChild", "" );
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SELECT_TopEntityForAutodesign( VIEW ViewToWindow )

//:   VIEW TZADCSDO    REGISTERED AS TZADCSDO
zOPER_EXPORT zSHORT OPERATION
SELECT_TopEntityForAutodesign( zVIEW     ViewToWindow )
{
   zVIEW     TZADCSDO = 0; 
   zSHORT    RESULT; 
   //:VIEW SelectedLOD BASED ON LOD  TZZOLODO
   zVIEW     SelectedLOD = 0; 
   //:STRING ( 32 ) szTopEntityName
   zCHAR     szTopEntityName[ 33 ] = { 0 }; 
   //:SHORT         ReturnedLevel
   zSHORT    ReturnedLevel = 0; 
   //:SHORT         nRC
   zSHORT    nRC = 0; 
   zSHORT    lTempInteger_0; 

   RESULT = GetViewByName( &TZADCSDO, "TZADCSDO", ViewToWindow, zLEVEL_TASK );

   //:// Create a new selected Entity.
   //:IF TZADCSDO.FlatListSelectedEntity EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( TZADCSDO, "FlatListSelectedEntity" );
   if ( lTempInteger_0 == 0 )
   { 
      //:DELETE ENTITY TZADCSDO.FlatListSelectedEntity  
      RESULT = DeleteEntity( TZADCSDO, "FlatListSelectedEntity", zPOS_NEXT );
   } 

   //:END
   //:CREATE ENTITY TZADCSDO.FlatListSelectedEntity 
   RESULT = CreateEntity( TZADCSDO, "FlatListSelectedEntity", zPOS_AFTER );
   //:SetMatchingAttributesByName( TZADCSDO, "FlatListSelectedEntity", TZADCSDO, "FlatListPotentialTopEntity", zSET_ALL ) 
   SetMatchingAttributesByName( TZADCSDO, "FlatListSelectedEntity", TZADCSDO, "FlatListPotentialTopEntity", zSET_ALL );

   //:// Clear any existing selections.
   //:FOR EACH TZADCSDO.FlatListPotentialAttribute 
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListPotentialAttribute", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:DELETE ENTITY TZADCSDO.FlatListPotentialAttribute NONE 
      RESULT = DeleteEntity( TZADCSDO, "FlatListPotentialAttribute", zREPOS_NONE );
      RESULT = SetCursorNextEntity( TZADCSDO, "FlatListPotentialAttribute", "" );
   } 

   //:END
   //:FOR EACH TZADCSDO.FlatListSelectedAttribute 
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:DELETE ENTITY TZADCSDO.FlatListSelectedAttribute NONE 
      RESULT = DeleteEntity( TZADCSDO, "FlatListSelectedAttribute", zREPOS_NONE );
      RESULT = SetCursorNextEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   } 

   //:END

   //:// Build list of potential attributes to be selected. This will contain all subobject entities/attributes for
   //:// the selected Top Entity.
   //:GET VIEW SelectedLOD NAMED "AutodesignSelectedLOD"
   RESULT = GetViewByName( &SelectedLOD, "AutodesignSelectedLOD", ViewToWindow, zLEVEL_TASK );
   //:SET CURSOR FIRST SelectedLOD.LOD_EntityParent 
   RESULT = SetCursorFirstEntity( SelectedLOD, "LOD_EntityParent", "" );
   //:szTopEntityName = TZADCSDO.FlatListSelectedEntity.Name 
   GetVariableFromAttribute( szTopEntityName, 0, 'S', 33, TZADCSDO, "FlatListSelectedEntity", "Name", "", 0 );
   //:LocateTopEntityRecurs( TZADCSDO, SelectedLOD, szTopEntityName ) 
   o_LocateTopEntityRecurs( TZADCSDO, SelectedLOD, szTopEntityName );
   return( 0 );
// END
} 


//:LOCAL OPERATION
static zSHORT
o_LocateTopEntityRecurs( zVIEW     TZADCSDO,
                         zVIEW     SelectedLOD,
                         zPCHAR    szTopEntityName )
{
   zSHORT    RESULT; 

   //:LocateTopEntityRecurs( VIEW TZADCSDO    BASED ON LOD TZADCSDO,
   //:                    VIEW SelectedLOD BASED ON LOD TZZOLODO,
   //:                    STRING ( 32 ) szTopEntityName )

   //:// Search each LOD_EntityParent recursively until the entity identified by TopEntityName is located.
   //:// Then process that subobject to create the FlatListPotentialAttribute entries in TZADCSDO.
   //:FOR EACH SelectedLOD.LOD_EntityParent 
   RESULT = SetCursorFirstEntity( SelectedLOD, "LOD_EntityParent", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:IF SelectedLOD.LOD_EntityParent.Name = szTopEntityName
      if ( CompareAttributeToString( SelectedLOD, "LOD_EntityParent", "Name", szTopEntityName ) == 0 )
      { 
         //:// We've got a match on Top Entity, so go to process the subobject creating FlatListPotentialAttribute entries.
         //:BuildAutodesignGroupPotList( TZADCSDO, SelectedLOD )
         o_BuildAutodesignGroupPotList( TZADCSDO, SelectedLOD );
         //:ELSE
      } 
      else
      { 
         //:// This isn't a match on Top Entity, so continue recursive search.
         //:SetViewToSubobject( SelectedLOD, "LOD_EntityChild" )
         SetViewToSubobject( SelectedLOD, "LOD_EntityChild" );
         //:LocateTopEntityRecurs( TZADCSDO, SelectedLOD, szTopEntityName )
         o_LocateTopEntityRecurs( TZADCSDO, SelectedLOD, szTopEntityName );
         //:ResetViewFromSubobject( SelectedLOD )
         ResetViewFromSubobject( SelectedLOD );
      } 

      RESULT = SetCursorNextEntity( SelectedLOD, "LOD_EntityParent", "" );
      //:END
   } 

   //:END
   return( 0 );
// END
} 


//:DIALOG OPERATION
//:SELECT_PotentialAttributes( VIEW ViewToWindow )

//:   VIEW TZADCSDO  REGISTERED AS TZADCSDO
zOPER_EXPORT zSHORT OPERATION
SELECT_PotentialAttributes( zVIEW     ViewToWindow )
{
   zVIEW     TZADCSDO = 0; 
   zSHORT    RESULT; 
   //:VIEW TZADCSDO2 BASED ON LOD TZADCSDO
   zVIEW     TZADCSDO2 = 0; 
   //:STRING ( 1 ) szCreateEntityOnlyEntry
   zCHAR     szCreateEntityOnlyEntry[ 2 ] = { 0 }; 
   //:SHORT nRC
   zSHORT    nRC = 0; 
   zSHORT    lTempInteger_0; 

   RESULT = GetViewByName( &TZADCSDO, "TZADCSDO", ViewToWindow, zLEVEL_TASK );

   //:// First make sure that any currently Selected entry is selected on the Potential side, because we are going to
   //:// delete Selected entries and recreate them.
   //:FOR EACH TZADCSDO.FlatListSelectedAttribute 
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:SET CURSOR FIRST TZADCSDO.FlatListPotentialAttribute 
      //:           WHERE TZADCSDO.FlatListPotentialAttribute.EntityName    = TZADCSDO.FlatListSelectedAttribute.EntityName 
      //:             AND TZADCSDO.FlatListPotentialAttribute.AttributeName = TZADCSDO.FlatListSelectedAttribute.AttributeName 
      RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListPotentialAttribute", "" );
      if ( RESULT > zCURSOR_UNCHANGED )
      { 
         while ( RESULT > zCURSOR_UNCHANGED && ( CompareAttributeToAttribute( TZADCSDO, "FlatListPotentialAttribute", "EntityName", TZADCSDO, "FlatListSelectedAttribute", "EntityName" ) != 0 ||
                 CompareAttributeToAttribute( TZADCSDO, "FlatListPotentialAttribute", "AttributeName", TZADCSDO, "FlatListSelectedAttribute", "AttributeName" ) != 0 ) )
         { 
            RESULT = SetCursorNextEntity( TZADCSDO, "FlatListPotentialAttribute", "" );
         } 

      } 

      //:SetSelectStateOfEntity( TZADCSDO, "FlatListPotentialAttribute", 1 )
      SetSelectStateOfEntity( TZADCSDO, "FlatListPotentialAttribute", 1 );
      //:DELETE ENTITY TZADCSDO.FlatListSelectedAttribute NONE 
      RESULT = DeleteEntity( TZADCSDO, "FlatListSelectedAttribute", zREPOS_NONE );
      RESULT = SetCursorNextEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   } 

   //:END

   //:// Copy selected attributes from FlatListPotentialAttribute entries to FlatListSelectedAttribute entries.
   //:CreateViewFromView( TZADCSDO2, TZADCSDO )
   CreateViewFromView( &TZADCSDO2, TZADCSDO );
   //:FOR EACH TZADCSDO.FlatListPotentialAttribute 
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListPotentialAttribute", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      //:nRC = GetSelectStateOfEntity( TZADCSDO, "FlatListPotentialAttribute" )
      nRC = GetSelectStateOfEntity( TZADCSDO, "FlatListPotentialAttribute" );
      //:IF nRC = 1 AND TZADCSDO.FlatListPotentialAttribute.AttributeName != ""   // We will skip Entity only entries, since that 
      if ( nRC == 1 && CompareAttributeToString( TZADCSDO, "FlatListPotentialAttribute", "AttributeName", "" ) != 0 )
      { 
         //:                                                                      // simplifies the logic below.
         //:// Make sure that there is a current "Entity only" entry.
         //:szCreateEntityOnlyEntry = ""
         ZeidonStringCopy( szCreateEntityOnlyEntry, 1, 0, "", 1, 0, 2 );
         //:IF TZADCSDO.FlatListSelectedAttribute DOES NOT EXIST
         lTempInteger_0 = CheckExistenceOfEntity( TZADCSDO, "FlatListSelectedAttribute" );
         if ( lTempInteger_0 != 0 )
         { 
            //:szCreateEntityOnlyEntry = "Y"
            ZeidonStringCopy( szCreateEntityOnlyEntry, 1, 0, "Y", 1, 0, 2 );
            //:ELSE
         } 
         else
         { 
            //:IF TZADCSDO.FlatListSelectedAttribute.EntityName != TZADCSDO.FlatListPotentialAttribute.EntityName 
            if ( CompareAttributeToAttribute( TZADCSDO, "FlatListSelectedAttribute", "EntityName", TZADCSDO, "FlatListPotentialAttribute", "EntityName" ) != 0 )
            { 
               //:szCreateEntityOnlyEntry = "Y"
               ZeidonStringCopy( szCreateEntityOnlyEntry, 1, 0, "Y", 1, 0, 2 );
            } 

            //:END
         } 

         //:END
         //:IF szCreateEntityOnlyEntry = "Y"
         if ( ZeidonStringCompare( szCreateEntityOnlyEntry, 1, 0, "Y", 1, 0, 2 ) == 0 )
         { 
            //:CREATE ENTITY TZADCSDO.FlatListSelectedAttribute
            RESULT = CreateEntity( TZADCSDO, "FlatListSelectedAttribute", zPOS_AFTER );
            //:SetMatchingAttributesByName( TZADCSDO, "FlatListSelectedAttribute", TZADCSDO, "FlatListPotentialAttribute", zSET_ALL )
            SetMatchingAttributesByName( TZADCSDO, "FlatListSelectedAttribute", TZADCSDO, "FlatListPotentialAttribute", zSET_ALL );
            //:TZADCSDO.FlatListSelectedAttribute.AttributeName = ""    // Indicate this is not an Attribute entry.
            SetAttributeFromString( TZADCSDO, "FlatListSelectedAttribute", "AttributeName", "" );
            //:TZADCSDO.FlatListSelectedAttribute.ControlType   = ""
            SetAttributeFromString( TZADCSDO, "FlatListSelectedAttribute", "ControlType", "" );
            //:// Get Indented Name from the Entity only entry.
            //:SET CURSOR FIRST TZADCSDO2.FlatListPotentialAttribute 
            //:           WHERE TZADCSDO2.FlatListPotentialAttribute.EntityName = TZADCSDO.FlatListPotentialAttribute.EntityName 
            //:             AND TZADCSDO2.FlatListPotentialAttribute.IndentEntityName != "" 
            RESULT = SetCursorFirstEntity( TZADCSDO2, "FlatListPotentialAttribute", "" );
            if ( RESULT > zCURSOR_UNCHANGED )
            { 
               while ( RESULT > zCURSOR_UNCHANGED && ( CompareAttributeToAttribute( TZADCSDO2, "FlatListPotentialAttribute", "EntityName", TZADCSDO, "FlatListPotentialAttribute", "EntityName" ) != 0 ||
                       CompareAttributeToString( TZADCSDO2, "FlatListPotentialAttribute", "IndentEntityName", "" ) == 0 ) )
               { 
                  RESULT = SetCursorNextEntity( TZADCSDO2, "FlatListPotentialAttribute", "" );
               } 

            } 

            //:TZADCSDO.FlatListSelectedAttribute.IndentEntityName = TZADCSDO2.FlatListPotentialAttribute.IndentEntityName 
            SetAttributeFromAttribute( TZADCSDO, "FlatListSelectedAttribute", "IndentEntityName", TZADCSDO2, "FlatListPotentialAttribute", "IndentEntityName" );
         } 

         //:END
         //:CREATE ENTITY TZADCSDO.FlatListSelectedAttribute
         RESULT = CreateEntity( TZADCSDO, "FlatListSelectedAttribute", zPOS_AFTER );
         //:SetMatchingAttributesByName( TZADCSDO, "FlatListSelectedAttribute", TZADCSDO, "FlatListPotentialAttribute", zSET_ALL )
         SetMatchingAttributesByName( TZADCSDO, "FlatListSelectedAttribute", TZADCSDO, "FlatListPotentialAttribute", zSET_ALL );
         //:SetSelectStateOfEntity( TZADCSDO, "FlatListPotentialAttribute", 0 ) 
         SetSelectStateOfEntity( TZADCSDO, "FlatListPotentialAttribute", 0 );
      } 

      RESULT = SetCursorNextEntity( TZADCSDO, "FlatListPotentialAttribute", "" );
      //:END
   } 

   //:END
   //:DropView( TZADCSDO2 )
   DropView( TZADCSDO2 );
   return( 0 );
//    
// END
} 


//:LOCAL OPERATION
//:AutodesignUpdateCtrls( VIEW TZADCSDO    BASED ON LOD TZADCSDO,
//:                       VIEW TZWINDOWL   BASED ON LOD TZWDLGSO,
//:                       VIEW TZCONTROL   BASED ON LOD TZWDLGSO,
//:                       VIEW SelectedLOD BASED ON LOD TZZOLODO )

//:   VIEW TZPESRCO BASED ON LOD TZPESRCO
static zSHORT
o_AutodesignUpdateCtrls( zVIEW     TZADCSDO,
                         zVIEW     TZWINDOWL,
                         zVIEW     TZCONTROL,
                         zVIEW     SelectedLOD )
{
   zVIEW     TZPESRCO = 0; 
   //:INTEGER lMaxPromptLength
   zLONG     lMaxPromptLength = 0; 
   //:INTEGER lPromptWidth
   zLONG     lPromptWidth = 0; 
   //:INTEGER lControlWidth
   zLONG     lControlWidth = 0; 
   //:INTEGER lControlPositionX
   zLONG     lControlPositionX = 0; 
   //:INTEGER lControlPositionY
   zLONG     lControlPositionY = 0; 
   //:INTEGER lControlHeight
   zLONG     lControlHeight = 0; 
   //:STRING ( 50 ) szPromptText
   zCHAR     szPromptText[ 51 ] = { 0 }; 
   //:STRING ( 32 ) szAttributeName
   zCHAR     szAttributeName[ 33 ] = { 0 }; 
   //:STRING ( 20 ) szControlType
   zCHAR     szControlType[ 21 ] = { 0 }; 
   //:SHORT   lPromptLength
   zSHORT    lPromptLength = 0; 
   zSHORT    RESULT; 
   zCHAR     szTempString_0[ 255 ]; 
   zCHAR     szTempString_1[ 33 ]; 
   zLONG     lTempInteger_0; 
   zCHAR     szTempString_2[ 33 ]; 
   zCHAR     szTempString_3[ 33 ]; 


   //:// Build a group of Text, Editbox, Checkbox, Calendar or Combobox controls from the entries in the
   //:// FlatListSelectedAttribute subobject. We will get a prompt/control pair for each entry in FlatListSelectedAttribute.

   //:// First loop through each FlatListSelectedAttribute entry and determine the value and maximum size of the prompt Text entries.
   //:lMaxPromptLength = 0
   lMaxPromptLength = 0;
   //:FOR EACH TZADCSDO.FlatListSelectedAttribute WHERE TZADCSDO.FlatListSelectedAttribute.AttributeName != ""
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      if ( CompareAttributeToString( TZADCSDO, "FlatListSelectedAttribute", "AttributeName", "" ) != 0 )
      { 
         //:szAttributeName = TZADCSDO.FlatListSelectedAttribute.AttributeName
         GetVariableFromAttribute( szAttributeName, 0, 'S', 33, TZADCSDO, "FlatListSelectedAttribute", "AttributeName", "", 0 );
         //:InsertSpacesInPrompt( szPromptText, TZCONTROL, szAttributeName, 100 )
         InsertSpacesInPrompt( szPromptText, TZCONTROL, szAttributeName, 100 );
         //:TZADCSDO.FlatListSelectedAttribute.PromptValue = szPromptText + ":"
         ZeidonStringCopy( szTempString_0, 1, 0, szPromptText, 1, 0, 255 );
         ZeidonStringConcat( szTempString_0, 1, 0, ":", 1, 0, 255 );
         SetAttributeFromString( TZADCSDO, "FlatListSelectedAttribute", "PromptValue", szTempString_0 );
         //:lPromptLength = GetStringLength( szPromptText )
         lPromptLength = (zSHORT) GetStringLength( szPromptText );
         //:IF lPromptLength > lMaxPromptLength
         if ( lPromptLength > lMaxPromptLength )
         { 
            //:lMaxPromptLength = lPromptLength
            lMaxPromptLength = lPromptLength;
         } 

      } 

      RESULT = SetCursorNextEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
      //:END
   } 

   //:END
   //:// To get max width of Prompts, each character is considered 4 pixels.
   //:lPromptWidth = lMaxPromptLength * 4
   lPromptWidth = lMaxPromptLength * 4;

   //:// The X position of each Control will be 1 pixel beyond the Prompt.
   //:lControlPositionX = 5 + lPromptWidth + 1
   lControlPositionX = 5 + lPromptWidth + 1;

   //:// The height of each prompt and control will be 12.
   //:lControlHeight = 12
   lControlHeight = 12;

   //:// Loop through each Attribute FlatListSelectedAttribute and generate a prompt/control pair.
   //:GET VIEW TZPESRCO NAMED "TZPESRCO"
   RESULT = GetViewByName( &TZPESRCO, "TZPESRCO", TZADCSDO, zLEVEL_TASK );
   //:SetViewToSubobject( TZCONTROL, "CtrlCtrl" )
   SetViewToSubobject( TZCONTROL, "CtrlCtrl" );
   //:lControlPositionY = 0
   lControlPositionY = 0;
   //:FOR EACH TZADCSDO.FlatListSelectedAttribute WHERE TZADCSDO.FlatListSelectedAttribute.AttributeName != ""
   RESULT = SetCursorFirstEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   { 
      if ( CompareAttributeToString( TZADCSDO, "FlatListSelectedAttribute", "AttributeName", "" ) != 0 )
      { 
         //:szAttributeName = TZADCSDO.FlatListSelectedAttribute.AttributeName
         GetVariableFromAttribute( szAttributeName, 0, 'S', 33, TZADCSDO, "FlatListSelectedAttribute", "AttributeName", "", 0 );

         //:// First create Prompt.
         //:SET CURSOR FIRST TZPESRCO.ControlDef WHERE TZPESRCO.ControlDef.Tag = "Text"
         RESULT = SetCursorFirstEntityByString( TZPESRCO, "ControlDef", "Tag", "Text", "" );
         //:szPromptText = TZADCSDO.FlatListSelectedAttribute.PromptValue 
         GetVariableFromAttribute( szPromptText, 0, 'S', 51, TZADCSDO, "FlatListSelectedAttribute", "PromptValue", "", 0 );
         //:CreateMetaEntity( TZWINDOWL, TZCONTROL, "Control", zPOS_AFTER )
         CreateMetaEntity( TZWINDOWL, TZCONTROL, "Control", zPOS_AFTER );
         //:TZCONTROL.Control.Tag = "Prompt" + szAttributeName 
         ZeidonStringCopy( szTempString_1, 1, 0, "Prompt", 1, 0, 33 );
         ZeidonStringConcat( szTempString_1, 1, 0, szAttributeName, 1, 0, 33 );
         SetAttributeFromString( TZCONTROL, "Control", "Tag", szTempString_1 );
         //:TZCONTROL.Control.Text = szPromptText
         SetAttributeFromString( TZCONTROL, "Control", "Text", szPromptText );
         //:INCLUDE TZCONTROL.ControlDef FROM TZPESRCO.ControlDef 
         RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "ControlDef", TZPESRCO, "ControlDef", zPOS_AFTER );
         //:TZCONTROL.Control.PSDLG_X = 0
         SetAttributeFromInteger( TZCONTROL, "Control", "PSDLG_X", 0 );
         //:TZCONTROL.Control.PSDLG_Y = lControlPositionY
         SetAttributeFromInteger( TZCONTROL, "Control", "PSDLG_Y", lControlPositionY );
         //:TZCONTROL.Control.SZDLG_X = lPromptWidth
         SetAttributeFromInteger( TZCONTROL, "Control", "SZDLG_X", lPromptWidth );
         //:TZCONTROL.Control.SZDLG_Y = 12
         SetAttributeFromInteger( TZCONTROL, "Control", "SZDLG_Y", 12 );

         //:// Next create Control based on FlatListSelectedAttribute.ControlType 
         //:szControlType = TZADCSDO.FlatListSelectedAttribute.ControlType 
         GetVariableFromAttribute( szControlType, 0, 'S', 21, TZADCSDO, "FlatListSelectedAttribute", "ControlType", "", 0 );
         //:// A Calendar is 53 pixels. Other controls are based on text size specified on FlatListSelectedAttribute.
         //:IF szControlType = "Calendar" 
         if ( ZeidonStringCompare( szControlType, 1, 0, "Calendar", 1, 0, 21 ) == 0 )
         { 
            //:lControlWidth = 53
            lControlWidth = 53;
            //:ELSE
         } 
         else
         { 
            //:lControlWidth = TZADCSDO.FlatListSelectedAttribute.ControlWidth * 5
            GetIntegerFromAttribute( &lTempInteger_0, TZADCSDO, "FlatListSelectedAttribute", "ControlWidth" );
            lControlWidth = lTempInteger_0 * 5;
         } 

         //:END
         //:SET CURSOR FIRST TZPESRCO.ControlDef WHERE TZPESRCO.ControlDef.Tag = szControlType
         RESULT = SetCursorFirstEntityByString( TZPESRCO, "ControlDef", "Tag", szControlType, "" );
         //:CreateMetaEntity( TZWINDOWL, TZCONTROL, "Control", zPOS_AFTER )
         CreateMetaEntity( TZWINDOWL, TZCONTROL, "Control", zPOS_AFTER );
         //:TZCONTROL.Control.Tag = "Ctrl" + szAttributeName 
         ZeidonStringCopy( szTempString_2, 1, 0, "Ctrl", 1, 0, 33 );
         ZeidonStringConcat( szTempString_2, 1, 0, szAttributeName, 1, 0, 33 );
         SetAttributeFromString( TZCONTROL, "Control", "Tag", szTempString_2 );
         //:INCLUDE TZCONTROL.ControlDef FROM TZPESRCO.ControlDef 
         RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "ControlDef", TZPESRCO, "ControlDef", zPOS_AFTER );
         //:TZCONTROL.Control.PSDLG_X = lControlPositionX
         SetAttributeFromInteger( TZCONTROL, "Control", "PSDLG_X", lControlPositionX );
         //:TZCONTROL.Control.PSDLG_Y = lControlPositionY
         SetAttributeFromInteger( TZCONTROL, "Control", "PSDLG_Y", lControlPositionY );
         //:TZCONTROL.Control.SZDLG_X = lControlWidth
         SetAttributeFromInteger( TZCONTROL, "Control", "SZDLG_X", lControlWidth );
         //:TZCONTROL.Control.SZDLG_Y = 12
         SetAttributeFromInteger( TZCONTROL, "Control", "SZDLG_Y", 12 );

         //:// Build CtrlMap subobject from Entity.Attribute of FlatListSelectedAttribute
         //:CreateMetaEntity( TZWINDOWL, TZCONTROL, "CtrlMap", zPOS_AFTER )
         CreateMetaEntity( TZWINDOWL, TZCONTROL, "CtrlMap", zPOS_AFTER );
         //:SET CURSOR FIRST SelectedLOD.LOD_Entity WHERE SelectedLOD.LOD_Entity.Name = TZADCSDO.FlatListSelectedAttribute.EntityName
         GetStringFromAttribute( szTempString_3, TZADCSDO, "FlatListSelectedAttribute", "EntityName" );
         RESULT = SetCursorFirstEntityByString( SelectedLOD, "LOD_Entity", "Name", szTempString_3, "" );
         //:SET CURSOR FIRST SelectedLOD.ER_Attribute WITHIN SelectedLOD.LOD_Entity 
         //:        WHERE SelectedLOD.ER_Attribute.Name = TZADCSDO.FlatListSelectedAttribute.AttributeName  
         GetStringFromAttribute( szTempString_3, TZADCSDO, "FlatListSelectedAttribute", "AttributeName" );
         RESULT = SetCursorFirstEntityByString( SelectedLOD, "ER_Attribute", "Name", szTempString_3, "LOD_Entity" );
         //:INCLUDE TZCONTROL.CtrlMapLOD_Attribute FROM SelectedLOD.LOD_Attribute 
         RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "CtrlMapLOD_Attribute", SelectedLOD, "LOD_Attribute", zPOS_AFTER );
         //:INCLUDE TZCONTROL.CtrlMapView FROM TZWINDOWL.ViewObjRef 
         RESULT = IncludeSubobjectFromSubobject( TZCONTROL, "CtrlMapView", TZWINDOWL, "ViewObjRef", zPOS_AFTER );


         //:lControlPositionY = lControlPositionY + lControlHeight
         lControlPositionY = lControlPositionY + lControlHeight;
      } 

      RESULT = SetCursorNextEntity( TZADCSDO, "FlatListSelectedAttribute", "" );
   } 

   //:   
   //:END
   //:ResetViewFromSubobject( TZCONTROL )
   ResetViewFromSubobject( TZCONTROL );
   return( 0 );
// END
} 


 
#ifdef __cplusplus
}
#endif
