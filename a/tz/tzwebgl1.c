#define KZSYSSVC_INCL
#include "KZOENGAA.H"
#include "TZVMLIP.H"
#include "ZDRVROPR.H"

#ifdef __cplusplus
extern "C"
{
#endif

#include "ZEIDONOP.H"

//:GLOBAL OPERATION
//:GenJSP_TableExport( VIEW vDialog BASED ON LOD TZWDLGSO,
//:                    INTEGER lFile,
//:                    STRING ( 10000 ) szWriteBuffer,
//:                    STRING ( 1 ) szNoPositioning )

//:   STRING ( 50 ) szControlType
zOPER_EXPORT zVOID OPERATION
GenJSP_TableExport( zVIEW     vDialog,
                    zLONG     lFile,
                    zPCHAR    szWriteBuffer,
                    zPCHAR    szNoPositioning )
{
   zCHAR     szControlType[ 51 ] = { 0 };
   //:STRING ( 50 ) szCtrlTag
   zCHAR     szCtrlTag[ 51 ] = { 0 };
   zSHORT    RESULT;
   zSHORT    lTempInteger_0;


   //:// Note that Control.SubType is an integer composed of multiple values,
   //:// but is always less than 12,000 for Domain Combos.
   //:FOR EACH vDialog.Control
   RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   {

      //:szControlType = vDialog.ControlDef.Tag
      GetVariableFromAttribute( szControlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
      //:szCtrlTag = vDialog.Control.Tag
      GetVariableFromAttribute( szCtrlTag, 0, 'S', 51, vDialog, "Control", "Tag", "", 0 );

      //:// Process Combobox entries
      //:IF szControlType = "Grid"
      if ( ZeidonStringCompare( szControlType, 1, 0, "Grid", 1, 0, 51 ) == 0 )
      {

         //:// For each table, we will create an export option that allows the user to
         //:// copy the contents of a table into excel.  The problem is that this only reflects
         //:// values of the table as the page is being built so if the table can be changed by
         //:// the user, those changes would not be seen unless the page was refreshed,  Don't create
         //:// this export option if "No Table Export" is a webcontrolproperty for the table.
         //:// Also don't create this export option if we are using absolute positioning.
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Table Export Option"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Table Export Option", "" );
         //:IF RESULT >= zCURSOR_SET AND szNoPositioning = "Y"
         if ( RESULT >= zCURSOR_SET && ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
         {

            //:szWriteBuffer = "function " + szCtrlTag + "ExportOnClick( )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "function ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "ExportOnClick( )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "{"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "{", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = "      // This is for indicating whether the user hit the window close box."
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      // This is for indicating whether the user hit the window close box.", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      isWindowClosing = false;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      isWindowClosing = false;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:// _IsDocDisabled code.
            //:szWriteBuffer = "   if ( _IsDocDisabled( ) == false )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( _IsDocDisabled( ) == false )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "      if (document.getElementById(^btmp" + szCtrlTag + "^).src.indexOf(^btn_expand^) >= 0 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      if (document.getElementById(^btmp", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^).src.indexOf(^btn_expand^) >= 0 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         document.getElementById(^gb" + szCtrlTag + "^).style.display = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         document.getElementById(^gb", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^).style.display = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         document.getElementById(^o" + szCtrlTag + "^).value = document.getElementById(^h" + szCtrlTag + "^).value;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         document.getElementById(^o", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^).value = document.getElementById(^h", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^).value;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         document.getElementById(^o" + szCtrlTag + "^).select();"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         document.getElementById(^o", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^).select();", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         document.getElementById('btmp" + szCtrlTag + "').src=^./images/btn_contract-o.gif^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         document.getElementById('btmp", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "').src=^./images/btn_contract-o.gif^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //://szWriteBuffer = "         document.getElementById(^spn" + szCtrlTag + "^).innerHTML = ^hide export data^;"
            //:szWriteBuffer = "         document.getElementById(^spn" + szCtrlTag + "^).innerHTML = ^Copy and paste content to excel^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         document.getElementById(^spn", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^).innerHTML = ^Copy and paste content to excel^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      else"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      else", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         document.getElementById(^gb" + szCtrlTag + "^).style.display = ^none^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         document.getElementById(^gb", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^).style.display = ^none^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         document.getElementById('btmp" + szCtrlTag + "').src=^./images/btn_expand.gif^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         document.getElementById('btmp", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "').src=^./images/btn_expand.gif^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //://szWriteBuffer = "         document.getElementById(^spn" + szCtrlTag + "^).innerHTML = ^export table data^; "
            //:szWriteBuffer = "         document.getElementById(^spn" + szCtrlTag + "^).innerHTML = ^Click here to display data for export^; "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         document.getElementById(^spn", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^).innerHTML = ^Click here to display data for export^; ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "   }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "}"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "}", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
         }

         //:END

         //:ELSE
      }
      else
      {
         //:// This is not a grid, so continue processing subobjects.
         //:IF vDialog.CtrlCtrl EXISTS
         lTempInteger_0 = CheckExistenceOfEntity( vDialog, "CtrlCtrl" );
         if ( lTempInteger_0 == 0 )
         {

            //:SetViewToSubobject( vDialog, "CtrlCtrl" )
            SetViewToSubobject( vDialog, "CtrlCtrl" );
            //:GenJSP_TableExport( vDialog, lFile, szWriteBuffer, szNoPositioning )
            GenJSP_TableExport( vDialog, lFile, szWriteBuffer, szNoPositioning );
            //:ResetViewFromSubobject( vDialog )
            ResetViewFromSubobject( vDialog );
         }


         //:END
      }

      RESULT = SetCursorNextEntity( vDialog, "Control", "" );
      //:END  // End of checking if this is a grid
   }


   //:END // FOR EACH vDialog.Control
   return;
// END
}


//:GLOBAL OPERATION
//:CreateNoPosStyleString( VIEW vDialog BASED ON LOD TZWDLGSO,
//:                        STRING ( 1024 ) szStyle,
//:                        STRING ( 100 ) szStyleExtraParm )

//:   STRING ( 100 )  szSize
zOPER_EXPORT zVOID OPERATION
CreateNoPosStyleString( zVIEW     vDialog,
                        zPCHAR    szStyle,
                        zPCHAR    szStyleExtraParm )
{
   zCHAR     szSize[ 101 ] = { 0 };


   //:CreateSizeString( vDialog, szSize )
   CreateSizeString( vDialog, szSize );
   //:FixStyleString( szStyle, szSize, "", szStyleExtraParm )
   FixStyleString( szStyle, szSize, "", szStyleExtraParm );
   return;
// END
}


//:GLOBAL OPERATION
//:CreateDisabledString( VIEW vDialog BASED ON LOD TZWDLGSO,
//:                      STRING ( 1024 ) szDisabled )

//:   INTEGER        lSubtype
zOPER_EXPORT zVOID OPERATION
CreateDisabledString( zVIEW     vDialog,
                      zPCHAR    szDisabled )
{
   zLONG     lSubtype = 0;
   //:INTEGER        lTemp
   zLONG     lTemp = 0;


   //:lSubtype = vDialog.Control.Subtype
   GetIntegerFromAttribute( &lSubtype, vDialog, "Control", "Subtype" );
   //:lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_DISABLED )
   lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_DISABLED );
   //:IF lTemp != 0
   if ( lTemp != 0 )
   {
      //:szDisabled = " disabled "
      ZeidonStringCopy( szDisabled, 1, 0, " disabled ", 1, 0, 1025 );
      //:ELSE
   }
   else
   {
      //:szDisabled = ""
      ZeidonStringCopy( szDisabled, 1, 0, "", 1, 0, 1025 );
   }

   //:END
   return;
// END
}


//:GLOBAL OPERATION
//:CreateAbsolPosStringTable( VIEW vDialog BASED ON LOD TZWDLGSO,
//:                           STRING ( 1024 ) szStyle,
//:                           INTEGER X_BASE,
//:                           INTEGER Y_BASE )

//:   STRING ( 10 )  szX_Pos
zOPER_EXPORT zVOID OPERATION
CreateAbsolPosStringTable( zVIEW     vDialog,
                           zPCHAR    szStyle,
                           zLONG     X_BASE,
                           zLONG     Y_BASE )
{
   zCHAR     szX_Pos[ 11 ] = { 0 };
   //:STRING ( 10 )  szY_Pos
   zCHAR     szY_Pos[ 11 ] = { 0 };
   //:DECIMAL        dDLUnits
   ZDecimal  dDLUnits = 0.0;
   zLONG     lTempInteger_0;
   zLONG     lTempInteger_1;


   //:PIX_PER_DU( vDialog, dDLUnits )
   PIX_PER_DU( vDialog, &dDLUnits );
   //:zIntegerToString( szX_Pos, 10, vDialog.Control.PSDLG_X * dDLUnits + X_BASE )
   GetIntegerFromAttribute( &lTempInteger_0, vDialog, "Control", "PSDLG_X" );
   zIntegerToString( szX_Pos, 10, lTempInteger_0 * dDLUnits + X_BASE );
   //:zIntegerToString( szY_Pos, 10, vDialog.Control.PSDLG_Y * dDLUnits + Y_BASE )
   GetIntegerFromAttribute( &lTempInteger_1, vDialog, "Control", "PSDLG_Y" );
   zIntegerToString( szY_Pos, 10, lTempInteger_1 * dDLUnits + Y_BASE );

   //:szStyle = "position:absolute;" +
   //:          "top:" + szY_Pos + "px;" +
   //:          "left:" + szX_Pos + "px;"
   ZeidonStringCopy( szStyle, 1, 0, "position:absolute;", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "top:", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, szY_Pos, 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "px;", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "left:", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, szX_Pos, 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "px;", 1, 0, 1025 );
   return;
// END
}


//:GLOBAL OPERATION
//:GenJSP_Action( VIEW vDialog     BASED ON LOD TZWDLGSO,
//:               VIEW vDialogRoot BASED ON LOD TZWDLGSO,
//:               INTEGER          lFile,
//:               STRING ( 10000 ) szWriteBuffer,
//:               STRING ( 255 )   szFormName,
//:               STRING ( 34 )    szActionName,
//:               INTEGER          lTraceLevel )

//:   VIEW vDialogTemp BASED ON LOD TZWDLGSO
zOPER_EXPORT zVOID OPERATION
GenJSP_Action( zVIEW     vDialog,
               zVIEW     vDialogRoot,
               zLONG     lFile,
               zPCHAR    szWriteBuffer,
               zPCHAR    szFormName,
               zPCHAR    szActionName,
               zLONG     lTraceLevel )
{
   zVIEW     vDialogTemp = 0;
   //:VIEW vDialogCtrl BASED ON LOD TZWDLGSO
   zVIEW     vDialogCtrl = 0;
   //:STRING ( 32 )    szViewName
   zCHAR     szViewName[ 33 ] = { 0 };
   //:STRING ( 32 )    szEntityName
   zCHAR     szEntityName[ 33 ] = { 0 };
   //:STRING ( 32 )    szContextName
   zCHAR     szContextName[ 33 ] = { 0 };
   //:STRING ( 32 )    szCtrlTag
   zCHAR     szCtrlTag[ 33 ] = { 0 };
   //:STRING ( 32 )    szDownloadViewName
   zCHAR     szDownloadViewName[ 33 ] = { 0 };
   //:STRING ( 32 )    szUploadViewName
   zCHAR     szUploadViewName[ 33 ] = { 0 };
   //:STRING ( 10 )    szMaxStringLength
   zCHAR     szMaxStringLength[ 11 ] = { 0 };
   //:STRING ( 50 )    szPrivateKey
   zCHAR     szPrivateKey[ 51 ] = { 0 };
   //:STRING ( 50 )    szPublicKey
   zCHAR     szPublicKey[ 51 ] = { 0 };
   //:STRING ( 1 )     InsertBlankFlag
   zCHAR     InsertBlankFlag[ 2 ] = { 0 };
   //:STRING ( 1 )     szCommentAdded
   zCHAR     szCommentAdded[ 2 ] = { 0 };
   //:STRING ( 1 )     szUploadTransferFileFlag
   zCHAR     szUploadTransferFileFlag[ 2 ] = { 0 };
   //:STRING ( 1 )     szPosDataCreated
   zCHAR     szPosDataCreated[ 2 ] = { 0 };
   //:INTEGER          lControl
   zLONG     lControl = 0;
   //:INTEGER          lMaxStringLength
   zLONG     lMaxStringLength = 0;
   //:INTEGER          lActionType
   zLONG     lActionType = 0;
   //:SHORT            nViewNameLth
   zSHORT    nViewNameLth = 0;
   //:SHORT            nGridParent
   zSHORT    nGridParent = 0;
   //:SHORT            nRC
   zSHORT    nRC = 0;
   zSHORT    RESULT;
   zSHORT    lTempInteger_0;
   zCHAR     szTempString_0[ 33 ];
   zCHAR     szTempString_1[ 33 ];
   zSHORT    lTempInteger_1;
   zCHAR     szTempString_2[ 33 ];
   zCHAR     szTempString_3[ 33 ];
   zCHAR     szTempString_4[ 33 ];
   zCHAR     szTempString_5[ 33 ];
   zCHAR     szTempString_6[ 33 ];
   zCHAR     szTempString_7[ 33 ];
   zCHAR     szTempString_8[ 33 ];
   zCHAR     szTempString_9[ 33 ];
   zSHORT    lTempInteger_2;
   zSHORT    lTempInteger_3;
   zSHORT    lTempInteger_4;
   zSHORT    lTempInteger_5;
   zSHORT    lTempInteger_6;
   zSHORT    lTempInteger_7;
   zCHAR     szTempString_10[ 33 ];
   zCHAR     szTempString_11[ 33 ];
   zCHAR     szTempString_12[ 33 ];
   zCHAR     szTempString_13[ 33 ];
   zCHAR     szTempString_14[ 33 ];
   zCHAR     szTempString_15[ 33 ];
   zCHAR     szTempString_16[ 33 ];
   zCHAR     szTempString_17[ 33 ];
   zCHAR     szTempString_18[ 33 ];
   zCHAR     szTempString_19[ 33 ];
   zCHAR     szTempString_20[ 33 ];
   zCHAR     szTempString_21[ 33 ];
   zSHORT    lTempInteger_8;
   zCHAR     szTempString_22[ 33 ];
   zCHAR     szTempString_23[ 33 ];
   zCHAR     szTempString_24[ 33 ];
   zCHAR     szTempString_25[ 33 ];
   zCHAR     szTempString_26[ 33 ];
   zCHAR     szTempString_27[ 33 ];
   zCHAR     szTempString_28[ 33 ];
   zCHAR     szTempString_29[ 33 ];
   zCHAR     szTempString_30[ 33 ];
   zCHAR     szTempString_31[ 33 ];
   zCHAR     szTempString_32[ 33 ];
   zCHAR     szTempString_33[ 33 ];
   zCHAR     szTempString_34[ 33 ];
   zCHAR     szTempString_35[ 33 ];
   zCHAR     szTempString_36[ 33 ];


   //:InsertBlankFlag = "N"
   ZeidonStringCopy( InsertBlankFlag, 1, 0, "N", 1, 0, 2 );

   //:szWriteBuffer = "   while ( bDone == 0 && strActionToProcess.equals( ^" + szActionName + "^ ) )"
   ZeidonStringCopy( szWriteBuffer, 1, 0, "   while ( bDone == 0 && strActionToProcess.equals( ^", 1, 0, 10001 );
   ZeidonStringConcat( szWriteBuffer, 1, 0, szActionName, 1, 0, 10001 );
   ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ) )", 1, 0, 10001 );
   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
   //:szWriteBuffer = "   {"
   ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
   //:szWriteBuffer = "      bDone = 1;"
   ZeidonStringCopy( szWriteBuffer, 1, 0, "      bDone = 1;", 1, 0, 10001 );
   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
   WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

   //:szWriteBuffer = "      session.setAttribute( ^ZeidonAction^, ^" + szActionName + "^ );" // Kelly wants this one? Not sure why - dks 2011.11.09
   ZeidonStringCopy( szWriteBuffer, 1, 0, "      session.setAttribute( ^ZeidonAction^, ^", 1, 0, 10001 );
   ZeidonStringConcat( szWriteBuffer, 1, 0, szActionName, 1, 0, 10001 );
   ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
   WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

   //://**********************************

   //:   // KJS 11/05/09
   //:   // If we unregister zeidon at the end of building this window, then when the user clicks an action,
   //:   // we need to call any Prebuild/Posbuild operations (that would build objects used on this page) before we
   //:   // call the action selected.
   //:IF vDialogRoot.Window.WEB_UnregisterZeidonWindow = "Y"
   if ( CompareAttributeToString( vDialogRoot, "Window", "WEB_UnregisterZeidonWindow", "Y" ) == 0 )
   {
      //:CreateViewFromViewForTask( vDialogTemp, vDialogRoot, 0 )
      CreateViewFromViewForTask( &vDialogTemp, vDialogRoot, 0 );
      //:szCommentAdded = "N"
      ZeidonStringCopy( szCommentAdded, 1, 0, "N", 1, 0, 2 );
      //:FOR EACH vDialogTemp.Action
      RESULT = SetCursorFirstEntity( vDialogTemp, "Action", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      {
         //:FOR EACH vDialogTemp.ActWndEvent
         RESULT = SetCursorFirstEntity( vDialogTemp, "ActWndEvent", "" );
         while ( RESULT > zCURSOR_UNCHANGED )
         {
            //:IF vDialogTemp.ActWndEvent.Type = 1 OR
            //:   vDialogTemp.ActWndEvent.Type = 2
            if ( CompareAttributeToInteger( vDialogTemp, "ActWndEvent", "Type", 1 ) == 0 || CompareAttributeToInteger( vDialogTemp, "ActWndEvent", "Type", 2 ) == 0 )
            {

               //:IF vDialogTemp.ActOper EXISTS
               lTempInteger_0 = CheckExistenceOfEntity( vDialogTemp, "ActOper" );
               if ( lTempInteger_0 == 0 )
               {

                  //:// Don't want to add this comment twice if there is an operation for both prebuild and posbuild.
                  //:IF szCommentAdded = "N"
                  if ( ZeidonStringCompare( szCommentAdded, 1, 0, "N", 1, 0, 2 ) == 0 )
                  {
                     //:szWriteBuffer = "      // Prebuild/Posbuild Operations."
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Prebuild/Posbuild Operations.", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "      // These are called because we Unregister Zeidon when this page is finished loading, so"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      // These are called because we Unregister Zeidon when this page is finished loading, so", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "      // these operations need to be called before any action code (for recreating objects etc)."
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      // these operations need to be called before any action code (for recreating objects etc).", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szCommentAdded = "Y"
                     ZeidonStringCopy( szCommentAdded, 1, 0, "Y", 1, 0, 2 );
                  }

                  //:END


                  //:szWriteBuffer = "      nOptRC = vAppSubtask.CallDialogOperation( strSessionId, ^" +
                  //:                vDialogTemp.Dialog.Tag + "^, ^" +
                  //:                vDialogTemp.ActOper.Name + "^, 1 );"
                  GetVariableFromAttribute( szTempString_0, 0, 'S', 33, vDialogTemp, "Dialog", "Tag", "", 0 );
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      nOptRC = vAppSubtask.CallDialogOperation( strSessionId, ^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_0, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                  GetVariableFromAttribute( szTempString_1, 0, 'S', 33, vDialogTemp, "ActOper", "Name", "", 0 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_1, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^, 1 );", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "      if ( nOptRC == 2 )"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nOptRC == 2 )", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "      {"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "         nRC = 2;  // do the ^error^ redirection"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = 2;  // do the ^error^ redirection", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "         break;"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         break;", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "      }"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               }

               //:END
            }

            RESULT = SetCursorNextEntity( vDialogTemp, "ActWndEvent", "" );
            //:END
         }

         RESULT = SetCursorNextEntity( vDialogTemp, "Action", "" );
         //:END
      }

      //:END
      //:DropView ( vDialogTemp )
      DropView( vDialogTemp );
   }


   //:END

   //://***********************************

   //:// Keep position on the Control that triggers the Action, if it exists.
   //:CreateViewFromView( vDialogCtrl, vDialog )
   CreateViewFromView( &vDialogCtrl, vDialog );
   //:NAME VIEW vDialogCtrl "vDialogCtrl"
   SetNameForView( vDialogCtrl, "vDialogCtrl", 0, zLEVEL_TASK );
   //:lControl = zQUAL_STRING + zPOS_FIRST + zRECURS
   lControl = zQUAL_STRING + zPOS_FIRST + zRECURS;
   //:nRC = SetEntityCursor( vDialogCtrl, "EventAct", "Tag", lControl, szActionName, "", "", 0, "Window", "" )
   nRC = SetEntityCursor( vDialogCtrl, "EventAct", "Tag", lControl, szActionName, "", "", 0, "Window", "" );
   //:IF nRC < zCURSOR_SET
   if ( nRC < zCURSOR_SET )
   {
      //:DropView( vDialogCtrl )
      DropView( vDialogCtrl );
      //:vDialogCtrl = 0
      vDialogCtrl = 0;
   }

   //:END

   //:lActionType = vDialog.Action.Type
   GetIntegerFromAttribute( &lActionType, vDialog, "Action", "Type" );
   //:IF lActionType = zWAB_StartBrowserHTML_Page
   if ( lActionType == zWAB_StartBrowserHTML_Page )
   {
      //:szWriteBuffer = "      strURL = vAppSubtask.MakeWebFileName( strSessionId, 0 ) + ^.html^;"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      strURL = vAppSubtask.MakeWebFileName( strSessionId, 0 ) + ^.html^;", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      vAppSubtask.DropName( strSessionId, strURL );"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      vAppSubtask.DropName( strSessionId, strURL );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
      //:ELSE
   }
   else
   {
      //:IF lActionType = zWAB_ProcessDownloadFile
      if ( lActionType == zWAB_ProcessDownloadFile )
      {
         //:// Download File constants
         //:szWriteBuffer = "      String sDownloadFile = null;"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      String sDownloadFile = null;", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      String sSourceFileNameOnly = null;"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      String sSourceFileNameOnly = null;", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      String sExtension = null;"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      String sExtension = null;", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      int l;"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      int l;", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      int x;"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      int x;", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

         //:// Download File mapping view: Mapping must be specified for download processing.
         //:IF vDialogCtrl = 0
         if ( vDialogCtrl == 0 )
         {
            //:MessageSend( vDialog, "", "Download File Generation",
            //:                         "The Control with 'Download File' action could not be located.",
            //:                         zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
            MessageSend( vDialog, "", "Download File Generation", "The Control with 'Download File' action could not be located.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
            //:ELSE
         }
         else
         {
            //:IF vDialogCtrl.CtrlMapER_Attribute DOES NOT EXIST
            lTempInteger_1 = CheckExistenceOfEntity( vDialogCtrl, "CtrlMapER_Attribute" );
            if ( lTempInteger_1 != 0 )
            {
               //:MessageSend( vDialog, "", "Download File Generation",
               //:                         "The Control with 'Download File' action must specify mapping for the source file name.",
               //:                         zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 )
               MessageSend( vDialog, "", "Download File Generation", "The Control with 'Download File' action must specify mapping for the source file name.", zMSGQ_OBJECT_CONSTRAINT_ERROR, 0 );
               //:ELSE
            }
            else
            {
               //:szDownloadViewName = vDialogCtrl.CtrlMapView.Name
               GetVariableFromAttribute( szDownloadViewName, 0, 'S', 33, vDialogCtrl, "CtrlMapView", "Name", "", 0 );
               //:szWriteBuffer = "      zeidon.zView " + szDownloadViewName + " = new zeidon.zView( strSessionId );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      zeidon.zView ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szDownloadViewName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, " = new zeidon.zView( strSessionId );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            }

            //:END
         }

         //:END
      }

      //:END
   }

   //:END

   //:// We need to determine if this Action is on a Group for File Transfer to Server, because we will not
   //:// generate the call to DoInputMapping in that case.
   //:szUploadTransferFileFlag = ""
   ZeidonStringCopy( szUploadTransferFileFlag, 1, 0, "", 1, 0, 2 );
   //:IF vDialogCtrl > 0
   if ( vDialogCtrl > 0 )
   {
      //:CreateViewFromView( vDialogTemp, vDialogCtrl )
      CreateViewFromView( &vDialogTemp, vDialogCtrl );
      //:ResetViewFromSubobject( vDialogTemp )
      ResetViewFromSubobject( vDialogTemp );
      //:SET CURSOR FIRST vDialogTemp.WebControlProperty WHERE vDialogTemp.WebControlProperty.Name = "File Transfer to Server"
      RESULT = SetCursorFirstEntityByString( vDialogTemp, "WebControlProperty", "Name", "File Transfer to Server", "" );
      //:IF RESULT >= zCURSOR_SET
      if ( RESULT >= zCURSOR_SET )
      {
         //:szUploadTransferFileFlag = "Y"
         ZeidonStringCopy( szUploadTransferFileFlag, 1, 0, "Y", 1, 0, 2 );
      }

      //:END
      //:DropView( vDialogTemp )
      DropView( vDialogTemp );
   }

   //:END

   //:// If this Action is for an Upload to Server File Transfer, we won't do normal input mapping, but we will map in the full target file name so
   //:// that we can process it, since we may not know the suffix from the source or even the file name from the source.
   //:IF szUploadTransferFileFlag = "Y"
   if ( ZeidonStringCompare( szUploadTransferFileFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
   {

      //://If there is mapping on the edit ("file") control, we want to put the
      //://filename that is being uploaded into that mapping.

      //:CreateViewFromView( vDialogTemp, vDialogCtrl )
      CreateViewFromView( &vDialogTemp, vDialogCtrl );
      //://I wanted to do the "SET CURSOR..." but because Control doesn't really have a parent
      //://the c code that gets generated is only looking for ControlDef under Control (not all controls) and so
      //://it is not finding it.
      //://SET CURSOR FIRST vDialogTemp.Control WHERE vDialogTemp.ControlDef.Tag = "EditBox"
      //:FOR EACH vDialogTemp.Control
      RESULT = SetCursorFirstEntity( vDialogTemp, "Control", "" );
      while ( RESULT > zCURSOR_UNCHANGED )
      {

         //:IF vDialogTemp.ControlDef.Tag = "EditBox"
         if ( CompareAttributeToString( vDialogTemp, "ControlDef", "Tag", "EditBox" ) == 0 )
         {
            //:                            //256
            //://Get the mapping
            //:SET CURSOR FIRST vDialogTemp.CtrlMapLOD_Attribute WITHIN vDialogTemp.Control
            RESULT = SetCursorFirstEntity( vDialogTemp, "CtrlMapLOD_Attribute", "Control" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:szUploadViewName = vDialogTemp.CtrlMapView.Name
               GetVariableFromAttribute( szUploadViewName, 0, 'S', 33, vDialogTemp, "CtrlMapView", "Name", "", 0 );
               //:szWriteBuffer = "      zeidon.zView " + szUploadViewName + " = new zeidon.zView( strSessionId );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      zeidon.zView ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szUploadViewName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, " = new zeidon.zView( strSessionId );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               //:szWriteBuffer = "      nRC = " + vDialogTemp.CtrlMapView.Name +
               //:                ".GetView( strSessionId, ^" + vDialogTemp.CtrlMapView.Name + "^, vAppSubtask );"
               GetVariableFromAttribute( szTempString_2, 0, 'S', 33, vDialogTemp, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_2, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_3, 0, 'S', 33, vDialogTemp, "CtrlMapView", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_3, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
               //:WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      if ( nRC <= 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC <= 0 )", 1, 0, 10001 );
               //:WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "         " + vDialogTemp.CtrlMapView.Name +
               //:         ".TraceLine( ^Invalid View: ^, ^" + szCtrlTag + "^ );"
               GetVariableFromAttribute( szTempString_4, 0, 'S', 33, vDialogTemp, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_4, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^Invalid View: ^, ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      else"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      else", 1, 0, 10001 );
               //:WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
               //:WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "         nRC = " + vDialogTemp.CtrlMapView.Name + ".CheckExistenceOfEntity( strSessionId, ^" +
               //:                vDialogTemp.CtrlMapRelatedEntity.Name + "^ );"
               GetVariableFromAttribute( szTempString_5, 0, 'S', 33, vDialogTemp, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_5, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_6, 0, 'S', 33, vDialogTemp, "CtrlMapRelatedEntity", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_6, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "         if ( nRC >= 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 )", 1, 0, 10001 );
               //:WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "            nRC = " +
               //:       vDialogTemp.CtrlMapView.Name +
               //:       ".SetAttribute( strSessionId, ^" +
               //:       vDialogTemp.CtrlMapRelatedEntity.Name + "^, ^" +
               //:       vDialogTemp.CtrlMapER_Attribute.Name + "^, strInputFileName );"
               GetVariableFromAttribute( szTempString_7, 0, 'S', 33, vDialogTemp, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_7, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttribute( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_8, 0, 'S', 33, vDialogTemp, "CtrlMapRelatedEntity", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_8, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_9, 0, 'S', 33, vDialogTemp, "CtrlMapER_Attribute", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_9, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, strInputFileName );", 1, 0, 10001 );
               //:WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
               //:WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialogTemp, lFile, szWriteBuffer, "^", 0 );
            }


            //:END
         }

         RESULT = SetCursorNextEntity( vDialogTemp, "Control", "" );
         //:END
      }

      //:END
      //:DropView( vDialogTemp )
      DropView( vDialogTemp );

      //:ELSE
   }
   else
   {
      //:// Input Mapping Option
      //:IF vDialog.Action.NoMap != "Y"
      if ( CompareAttributeToString( vDialog, "Action", "NoMap", "Y" ) != 0 )
      {
         //:szWriteBuffer = "      // Input Mapping"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Input Mapping", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      nRC = DoInputMapping( request, session, application );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = DoInputMapping( request, session, application );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      if ( nRC < 0 )"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC < 0 )", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         break;"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         break;", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
      }

      //:END
   }

   //:END

   //:// Check if this is an action for reCAPTCHA.  If so, add the code...
   //:IF lActionType = 35 OR lActionType = 55
   if ( lActionType == 35 || lActionType == 55 )
   {
      //:// We need to get the control for this action so we can retrieve the private and public keys.
      //:CreateViewFromView( vDialogTemp, vDialog )
      CreateViewFromView( &vDialogTemp, vDialog );
      //:lControl = zQUAL_STRING + zPOS_FIRST + zRECURS
      lControl = zQUAL_STRING + zPOS_FIRST + zRECURS;
      //:szCtrlTag = "reCAPTCHA"
      ZeidonStringCopy( szCtrlTag, 1, 0, "reCAPTCHA", 1, 0, 33 );
      //:IF SetEntityCursor( vDialogTemp, "WebControlProperty", "Name", lControl,
      //:                    szCtrlTag, "", "", 0, "Window", "" ) >= zCURSOR_SET
      lTempInteger_2 = SetEntityCursor( vDialogTemp, "WebControlProperty", "Name", lControl, szCtrlTag, "", "", 0, "Window", "" );
      if ( lTempInteger_2 >= zCURSOR_SET )
      {
         //:szPublicKey = vDialogTemp.Control.WebreCAPTCHAPublicKey
         GetVariableFromAttribute( szPublicKey, 0, 'S', 51, vDialogTemp, "Control", "WebreCAPTCHAPublicKey", "", 0 );
         //:szPrivateKey = vDialogTemp.Control.WebreCAPTCHAPrivateKey
         GetVariableFromAttribute( szPrivateKey, 0, 'S', 51, vDialogTemp, "Control", "WebreCAPTCHAPrivateKey", "", 0 );
      }


      //:END
      //:DropView( vDialogTemp )
      DropView( vDialogTemp );

      //:// create recaptcha without <noscript> tags
      //:szWriteBuffer = "      ReCaptcha captcha = ReCaptchaFactory.newReCaptcha(^" + szPublicKey + "^, ^" + szPrivateKey + "^, false);"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      ReCaptcha captcha = ReCaptchaFactory.newReCaptcha(^", 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szPublicKey, 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szPrivateKey, 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, "^, false);", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      ReCaptchaResponse response2 = captcha.checkAnswer(request.getRemoteAddr(), request.getParameter(^recaptcha_challenge_field^), request.getParameter(^recaptcha_response_field^));"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      ReCaptchaResponse response2 = captcha.checkAnswer(request.getRemoteAddr(), request.getParameter(^recaptcha_challenge_field^), request.getParameter(^recaptcha_response_field^));", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = ""
      ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      if (response2.isValid())"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      if (response2.isValid())", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      {"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         vAppSubtask.TraceLine(^reCAPTCHA Success^, ^^);"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         vAppSubtask.TraceLine(^reCAPTCHA Success^, ^^);", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      }"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      else"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      else", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      {"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         // The user has not entered in the correct response, do not go further."
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         // The user has not entered in the correct response, do not go further.", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         strErrorTitle = ^INCORRECT RECAPTCHA^;"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         strErrorTitle = ^INCORRECT RECAPTCHA^;", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         strErrorMsg = ^You typed the reCaptcha image incorrectly.  Please try again.^;"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         strErrorMsg = ^You typed the reCaptcha image incorrectly.  Please try again.^;", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         // No redirection, we are staying on this page."
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         // No redirection, we are staying on this page.", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         nRC = 0;"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = 0;", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         break;"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         break;", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      }"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
   }

   //:END

   //://KJS 11/15/07 - If there is a button or hottext on a grid, then we should position on the correct
   //://entity whether or not there is an operation.

   //://We don't want to create the code to position on the correct
   //://list entity twice.  So keep track...
   //:szPosDataCreated = "N"
   ZeidonStringCopy( szPosDataCreated, 1, 0, "N", 1, 0, 2 );

   //://Loop through each ActCtrl to see if there is a button or hot text
   //://on a grid that calls this action.  If so, then we need to
   //://get position on the correct item in the list.  This is the
   //://code to set position.  If there is more than one button/hottext
   //://in this list that calls the same action, make sure we don't
   //://create this code twice.
   //:FOR EACH vDialog.ActCtrl WITHIN vDialog.Action
   RESULT = SetCursorFirstEntity( vDialog, "ActCtrl", "Action" );
   while ( RESULT > zCURSOR_UNCHANGED )
   {

      //:szCtrlTag = vDialog.ActCtrl.Tag
      GetVariableFromAttribute( szCtrlTag, 0, 'S', 33, vDialog, "ActCtrl", "Tag", "", 0 );
      //:CreateViewFromViewForTask( vDialogTemp, vDialogRoot, 0 )
      CreateViewFromViewForTask( &vDialogTemp, vDialogRoot, 0 );
      //:NAME VIEW vDialogTemp "vDialogTemp"
      SetNameForView( vDialogTemp, "vDialogTemp", 0, zLEVEL_TASK );

      //:lControl = zQUAL_STRING + zPOS_FIRST + zRECURS
      lControl = zQUAL_STRING + zPOS_FIRST + zRECURS;
      //:IF SetEntityCursor( vDialogTemp, "Control", "Tag", lControl,
      //:                    szCtrlTag, "", "", 0,
      //:                    "Window", "" ) >= zCURSOR_SET AND
      //:   (vDialogTemp.ControlDef.Tag = "PushBtn" OR vDialogTemp.ControlDef.Tag = "GridEditCtl" OR
      //:    vDialogTemp.ControlDef.Tag = "Bitmap" OR vDialogTemp.ControlDef.Tag = "BitmapBtn" OR
      //:    vDialogTemp.ControlDef.Tag = "ComboBox" OR vDialogTemp.ControlDef.Tag = "GridComboCtl" )
      lTempInteger_3 = SetEntityCursor( vDialogTemp, "Control", "Tag", lControl, szCtrlTag, "", "", 0, "Window", "" );
      if ( lTempInteger_3 >= zCURSOR_SET && ( CompareAttributeToString( vDialogTemp, "ControlDef", "Tag", "PushBtn" ) == 0 || CompareAttributeToString( vDialogTemp, "ControlDef", "Tag", "GridEditCtl" ) == 0 ||
           CompareAttributeToString( vDialogTemp, "ControlDef", "Tag", "Bitmap" ) == 0 || CompareAttributeToString( vDialogTemp, "ControlDef", "Tag", "BitmapBtn" ) == 0 || CompareAttributeToString( vDialogTemp, "ControlDef", "Tag", "ComboBox" ) == 0 ||
           CompareAttributeToString( vDialogTemp, "ControlDef", "Tag", "GridComboCtl" ) == 0 ) )
      {
         //: //032609
         //://vDialogTemp.ControlDef.Key = 1020

         //:// Identify if this Control is inside a Grid.
         //:nRC = 0
         nRC = 0;
         //:nGridParent = 0
         nGridParent = 0;
         //:LOOP WHILE nRC = 0 AND nGridParent = 0
         while ( nRC == 0 && nGridParent == 0 )
         {
            //:nRC = ResetViewFromSubobject( vDialogTemp )
            nRC = ResetViewFromSubobject( vDialogTemp );
            //:IF nRC = 0 AND vDialogTemp.ControlDef EXISTS
            lTempInteger_4 = CheckExistenceOfEntity( vDialogTemp, "ControlDef" );
            if ( nRC == 0 && lTempInteger_4 == 0 )
            {
               //:IF vDialogTemp.ControlDef.Tag = "Grid"
               if ( CompareAttributeToString( vDialogTemp, "ControlDef", "Tag", "Grid" ) == 0 )
               {
                  //:// vDialogTemp.ControlDef.Key = 2010
                  //:// The parent of the this control is a Grid, so indicate for later.
                  //:nGridParent = 1
                  nGridParent = 1;
               }

               //:END
            }

            //:END
         }

         //:END

         //://If we successfully reset from the subcontrols and we are on a grid.
         //:IF nGridParent = 1
         if ( nGridParent == 1 )
         {

            //:IF vDialogTemp.CtrlMapView EXISTS AND
            lTempInteger_5 = CheckExistenceOfEntity( vDialogTemp, "CtrlMapView" );
            //:   vDialogTemp.CtrlMapLOD_Entity EXISTS AND szPosDataCreated = "N"
            lTempInteger_6 = CheckExistenceOfEntity( vDialogTemp, "CtrlMapLOD_Entity" );
            if ( lTempInteger_5 == 0 && lTempInteger_6 == 0 && ZeidonStringCompare( szPosDataCreated, 1, 0, "N", 1, 0, 2 ) == 0 )
            {

               //:szPosDataCreated = "Y"
               ZeidonStringCopy( szPosDataCreated, 1, 0, "Y", 1, 0, 2 );
               //:szWriteBuffer = "      // Position on the entity that was selected in the grid."
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Position on the entity that was selected in the grid.", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:// We have a "select button" or HotText in a list, so we need to set
               //:// up the code to set position on the proper list item.
               //:szViewName = vDialogTemp.CtrlMapView.Name
               GetVariableFromAttribute( szViewName, 0, 'S', 33, vDialogTemp, "CtrlMapView", "Name", "", 0 );
               //:szEntityName = vDialogTemp.CtrlMapLOD_Entity.Name
               GetVariableFromAttribute( szEntityName, 0, 'S', 33, vDialogTemp, "CtrlMapLOD_Entity", "Name", "", 0 );
               //:szWriteBuffer = "      String strEntityKey = (String) request.getParameter( ^zTableRowSelect^ );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strEntityKey = (String) request.getParameter( ^zTableRowSelect^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //://If this action is for the download button or for the upload button, we may have already created
               //://a view for this view name.  Don't create the view unless it's for a different view name.
               //:IF  ( szViewName != szDownloadViewName AND szViewName != szUploadViewName )
               if ( ZeidonStringCompare( szViewName, 1, 0, szDownloadViewName, 1, 0, 33 ) != 0 && ZeidonStringCompare( szViewName, 1, 0, szUploadViewName, 1, 0, 33 ) != 0 )
               {
                  //:szWriteBuffer = "      zeidon.zView " + szViewName + " = new zeidon.zView( strSessionId );"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      zeidon.zView ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, " = new zeidon.zView( strSessionId );", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               }

               //:END

               //:szWriteBuffer = "      nRC = " + szViewName + ".GetView( strSessionId, ^" + szViewName + "^, vAppSubtask );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:szWriteBuffer = "      if ( nRC > 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC > 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //://KJS Trace
               //:IF (lTraceLevel = 1)
               if ( lTraceLevel == 1 )
               {
                  //:szWriteBuffer = "         vAppSubtask.TraceLine( ^Got " + szViewName + " View Key: ^, strEntityKey );"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         vAppSubtask.TraceLine( ^Got ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, " View Key: ^, strEntityKey );", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               }

               //:END
               //:szWriteBuffer = "         nRC = " + szViewName + ".SetCursorEntityKey( strSessionId, ^" + szEntityName + "^, strEntityKey );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorEntityKey( strSessionId, ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szEntityName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, strEntityKey );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:szWriteBuffer = "         if ( nRC < 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC < 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "         {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "         // This is temp code because SetCursorEntityKey doesn't work on subobjects."
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         // This is temp code because SetCursorEntityKey doesn't work on subobjects.", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "            nRCk = " + szViewName + ".SetCursorFirst( strSessionId, ^" + szEntityName + "^, ^^ );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRCk = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSessionId, ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szEntityName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "            while ( nRCk >= 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "            while ( nRCk >= 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "            {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "               lEKey = " + szViewName + ".GetEntityKey( strSessionId, ^" + szEntityName + "^ );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "               lEKey = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetEntityKey( strSessionId, ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szEntityName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "               strKey = Integer.toString( lEKey );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "               strKey = Integer.toString( lEKey );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "               if ( strKey.equals( strEntityKey ) )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "               if ( strKey.equals( strEntityKey ) )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "               {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "               {", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "                  // Stop while loop because we have positioned on the correct entity."
               ZeidonStringCopy( szWriteBuffer, 1, 0, "                  // Stop while loop because we have positioned on the correct entity.", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "                  nRCk = -1;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "                  nRCk = -1;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "               }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "               }", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "               else"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "               else", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "                  nRCk = " + szViewName + ".SetCursorNext( strSessionId, ^" + szEntityName + "^, ^^ );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "                  nRCk = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorNext( strSessionId, ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szEntityName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "            }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "         }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:szWriteBuffer = "      }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               //://KJS Trace
               //:IF (lTraceLevel = 1)
               if ( lTraceLevel == 1 )
               {
                  //:szWriteBuffer = "      else"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      else", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "         vAppSubtask.TraceLine( ^Did not get " + szViewName + " View Key: ^, strEntityKey );"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         vAppSubtask.TraceLine( ^Did not get ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, " View Key: ^, strEntityKey );", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               }

               //:END
            }

            //:END
         }

         //:END  // IF nGridParent = 1
      }

      //:END  // IF SetEntityCursor ...

      //:DropView( vDialogTemp )
      DropView( vDialogTemp );
      RESULT = SetCursorNextEntity( vDialog, "ActCtrl", "Action" );
   }


   //:END  //FOR EACH vDialog.ActCtrl WITHIN vDialog.Action

   //:// Operation Option
   //:IF vDialog.ActOper EXISTS
   lTempInteger_7 = CheckExistenceOfEntity( vDialog, "ActOper" );
   if ( lTempInteger_7 == 0 )
   {

      //:szWriteBuffer = "      // Action Operation"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Action Operation", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

      //://FOR EACH Dialog.ActCtrl.Tag code from about was here.

      //:szWriteBuffer = "      nRC = 0;"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = 0;", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

      //://KJS Trace
      //:IF (lTraceLevel = 1)
      if ( lTraceLevel == 1 )
      {
         //:szWriteBuffer = "      vAppSubtask.TraceLine( ^CallDialogOperation: " + vDialog.Dialog.Tag + "." + vDialog.ActOper.Name + "  ^, ^^ );"
         GetVariableFromAttribute( szTempString_10, 0, 'S', 33, vDialog, "Dialog", "Tag", "", 0 );
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      vAppSubtask.TraceLine( ^CallDialogOperation: ", 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_10, 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, ".", 1, 0, 10001 );
         GetVariableFromAttribute( szTempString_11, 0, 'S', 33, vDialog, "ActOper", "Name", "", 0 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_11, 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, "  ^, ^^ );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      }

      //:END

      //:szWriteBuffer = "      nOptRC = vAppSubtask.CallDialogOperation( strSessionId, ^" +
      //:                vDialog.Dialog.Tag + "^, ^" +
      //:                vDialog.ActOper.Name + "^, 0 );"
      GetVariableFromAttribute( szTempString_12, 0, 'S', 33, vDialog, "Dialog", "Tag", "", 0 );
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      nOptRC = vAppSubtask.CallDialogOperation( strSessionId, ^", 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_12, 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
      GetVariableFromAttribute( szTempString_13, 0, 'S', 33, vDialog, "ActOper", "Name", "", 0 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_13, 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, "^, 0 );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

      //:// Handle any Next Window processing from Operation.
      //:szWriteBuffer = "      if ( nOptRC == 2 )"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nOptRC == 2 )", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      {"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         nRC = 2;  // do the ^error^ redirection"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = 2;  // do the ^error^ redirection", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         break;"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         break;", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      }"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

      //:IF  lActionType = zWAB_StartBrowserPDF_Page
      if ( lActionType == zWAB_StartBrowserPDF_Page )
      {
         //:// If we are copying to pdf, then we need to have a wait routine, otherwise, the jsp tries to open
         //:// the pdf file before it's actually created.
         //:szWriteBuffer = "      try{ "
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      try{ ", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         Thread.sleep(5000); "
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         Thread.sleep(5000); ", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      }catch(InterruptedException ie){ "
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      }catch(InterruptedException ie){ ", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         out.println(^error^); "
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         out.println(^error^); ", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      } "
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      } ", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
      }

      //:END

      //:// I know that if we are starting a pdf or html window then we do not need to do this.
      //:// There are probably more like Popup windows...
      //:IF  lActionType != zWAB_StartBrowserHTML_Page AND lActionType != zWAB_StartBrowserPDF_Page
      if ( lActionType != zWAB_StartBrowserHTML_Page && lActionType != zWAB_StartBrowserPDF_Page )
      {

         //:// Handle any Next Window processing from Operation.
         //:szWriteBuffer = "      // Dynamic Next Window"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Dynamic Next Window", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      nRC = vKZXMLPGO.CheckExistenceOfEntity( strSessionId, ^NextDialogWindow^ );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = vKZXMLPGO.CheckExistenceOfEntity( strSessionId, ^NextDialogWindow^ );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      if ( nRC >= 0 )"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC >= 0 )", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      {"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         strDialogName = vKZXMLPGO.GetString( strSessionId, ^NextDialogWindow^, ^DialogName^ );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         strDialogName = vKZXMLPGO.GetString( strSessionId, ^NextDialogWindow^, ^DialogName^ );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         strWindowName = vKZXMLPGO.GetString( strSessionId, ^NextDialogWindow^, ^WindowName^ );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         strWindowName = vKZXMLPGO.GetString( strSessionId, ^NextDialogWindow^, ^WindowName^ );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         strNextJSP_Name = strDialogName + strWindowName + ^.jsp^;"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         strNextJSP_Name = strDialogName + strWindowName + ^.jsp^;", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         vKZXMLPGO.DeleteEntity( strSessionId, ^NextDialogWindow^, nRepos );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         vKZXMLPGO.DeleteEntity( strSessionId, ^NextDialogWindow^, nRepos );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         strURL = response.encodeRedirectURL( strNextJSP_Name );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         strURL = response.encodeRedirectURL( strNextJSP_Name );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

         //://KJS Trace
         //:IF (lTraceLevel = 1)
         if ( lTraceLevel == 1 )
         {
            //:szWriteBuffer = "         vAppSubtask.TraceLine( ^Next Window Redirect to: ^, strURL );"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         vAppSubtask.TraceLine( ^Next Window Redirect to: ^, strURL );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         }

         //:END

         //:// Handle creation of return page for Function Call StartSubwindow.
         //:szWriteBuffer = "         nRC = vKZXMLPGO.CheckExistenceOfEntity( strSessionId, ^NextDialogWindow^ );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = vKZXMLPGO.CheckExistenceOfEntity( strSessionId, ^NextDialogWindow^ );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         if ( nRC >= 0 )"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 )", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "            strFunctionCall = vKZXMLPGO.GetString( strSessionId, ^NextDialogWindow^, ^FunctionCall^ );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "            strFunctionCall = vKZXMLPGO.GetString( strSessionId, ^NextDialogWindow^, ^FunctionCall^ );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         else"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         else", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "            strFunctionCall = ^^;"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "            strFunctionCall = ^^;", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

         //:szWriteBuffer = "         if ( strFunctionCall.equals( ^StartSubwindow^ ) )"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( strFunctionCall.equals( ^StartSubwindow^ ) )", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         {"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "            vKZXMLPGO.CreateEntity( strSessionId, ^PagePath^, vKZXMLPGO.zPOS_AFTER );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "            vKZXMLPGO.CreateEntity( strSessionId, ^PagePath^, vKZXMLPGO.zPOS_AFTER );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "            vKZXMLPGO.SetAttribute( strSessionId, ^PagePath^, ^LastPageName^, ^" +
         //:                szFormName + "^ );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "            vKZXMLPGO.SetAttribute( strSessionId, ^PagePath^, ^LastPageName^, ^", 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         }"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

         //:szWriteBuffer = "         nRC = 1;  // do the redirection"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = 1;  // do the redirection", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "         break;"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "         break;", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      }"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
      }

      //:END
   }


   //:END  //End of calling an operation

   //:IF lActionType = zWAB_StartBrowserHTML_Page
   if ( lActionType == zWAB_StartBrowserHTML_Page )
   {
      //:szWriteBuffer = "      vAppSubtask.SetName( strSessionId, strURL );"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      vAppSubtask.SetName( strSessionId, strURL );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:// KJS 03/05/08 - This was "nRC = 2 //do the error redirection" and I'm not sure why.
      //:// That resubmitted the current page and I assume this was done thinking this was how
      //:// the report page would be called but since the report popup is determined in AfterPageLoaded, we
      //:// don't need to resubmit the page.  Just keep building this current page.
      //://szWriteBuffer = "      nRC = 0;  // Don't need to redirect for popup window"
      //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      //:// KJS 09/15/10 - Now I want to do the redirect to the current page so that I don't get a "Resend" prompt
      //:// from the browser when I hit the "refresh" button.
      //:szWriteBuffer = "      // Stay on Window with Refresh"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Stay on Window with Refresh", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      strURL = response.encodeRedirectURL( ^" + vDialogRoot.Dialog.Tag + vDialogRoot.Window.Tag + ".jsp^ );"
      GetVariableFromAttribute( szTempString_14, 0, 'S', 33, vDialogRoot, "Dialog", "Tag", "", 0 );
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      strURL = response.encodeRedirectURL( ^", 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_14, 1, 0, 10001 );
      GetVariableFromAttribute( szTempString_15, 0, 'S', 33, vDialogRoot, "Window", "Tag", "", 0 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_15, 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, ".jsp^ );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      nRC = 1;  // do the redirection"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = 1;  // do the redirection", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
   }

   //:END

   //:   IF lActionType = zWAB_StartBrowserPDF_Page
   if ( lActionType == zWAB_StartBrowserPDF_Page )
   {
      //:// KJS 03/05/08 - This was "nRC = 2 //do the error redirection" and I'm not sure why.
      //:// That resubmitted the current page and I assume this was done thinking this was how
      //:// the report page would be called but since the report popup is determined in AfterPageLoaded, we
      //:// don't need to resubmit the page.  Just keep building this current page.
      //://szWriteBuffer = "      nRC = 0;  // Don't need to redirect for popup window"
      //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      //:// KJS 09/15/10 - Now I want to do the redirect to the current page so that I don't get a "Resend" prompt
      //:// from the browser when I hit the "refresh" button.
      //:szWriteBuffer = "      // Stay on Window with Refresh"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Stay on Window with Refresh", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      strURL = response.encodeRedirectURL( ^" + vDialogRoot.Dialog.Tag + vDialogRoot.Window.Tag + ".jsp^ );"
      GetVariableFromAttribute( szTempString_16, 0, 'S', 33, vDialogRoot, "Dialog", "Tag", "", 0 );
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      strURL = response.encodeRedirectURL( ^", 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_16, 1, 0, 10001 );
      GetVariableFromAttribute( szTempString_17, 0, 'S', 33, vDialogRoot, "Window", "Tag", "", 0 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_17, 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, ".jsp^ );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      nRC = 1;  // do the redirection"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = 1;  // do the redirection", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
   }

   //:END

   //:// Next Window Option
   //:IF lActionType = zWAB_StartModelessSubwindow          OR
   //:   lActionType = zWAB_StartModalSubwindow             OR
   //:   lActionType = zWAB_ReplaceWindowWithModelessWindow OR
   //:   lActionType = zWAB_ReplaceWindowWithModalWindow    OR
   //:   lActionType = 35                                   OR  //reCAPTCHA StartModalSubwindow
   //:   lActionType = 55  //reCAPTCHA ReplaceModalWindow
   if ( lActionType == zWAB_StartModelessSubwindow || lActionType == zWAB_StartModalSubwindow || lActionType == zWAB_ReplaceWindowWithModelessWindow || lActionType == zWAB_ReplaceWindowWithModalWindow || lActionType == 35 || lActionType == 55 )
   {
      //:IF InsertBlankFlag = "Y"
      if ( ZeidonStringCompare( InsertBlankFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
      {
         //:szWriteBuffer = ""
         ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:InsertBlankFlag = "N"
         ZeidonStringCopy( InsertBlankFlag, 1, 0, "N", 1, 0, 2 );
      }

      //:END

      //:szWriteBuffer = "      // Next Window"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Next Window", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

      //:IF lActionType = zWAB_StartBrowserHTML_Page
      if ( lActionType == zWAB_StartBrowserHTML_Page )
      {
         //:szWriteBuffer = "      vAppSubtask.SetName( strSessionId, strURL );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      vAppSubtask.SetName( strSessionId, strURL );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      strURL = response.encodeRedirectURL( strURL );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      strURL = response.encodeRedirectURL( strURL );", 1, 0, 10001 );
         //:ELSE
      }
      else
      {
         //:szWriteBuffer = "      strURL = response.encodeRedirectURL( ^" +
         //:                vDialog.Action.DialogName + vDialog.Action.WindowName + ".jsp^ );"
         GetVariableFromAttribute( szTempString_18, 0, 'S', 33, vDialog, "Action", "DialogName", "", 0 );
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      strURL = response.encodeRedirectURL( ^", 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_18, 1, 0, 10001 );
         GetVariableFromAttribute( szTempString_19, 0, 'S', 33, vDialog, "Action", "WindowName", "", 0 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_19, 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, ".jsp^ );", 1, 0, 10001 );
      }

      //:END
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

      //://KJS Trace
      //:IF (lTraceLevel = 1)
      if ( lTraceLevel == 1 )
      {
         //:szWriteBuffer = "      vAppSubtask.TraceLine( ^Next Window Redirect to: ^, strURL );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      vAppSubtask.TraceLine( ^Next Window Redirect to: ^, strURL );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      }

      //:END

      //:IF lActionType = zWAB_StartModelessSubwindow OR
      //:   lActionType = zWAB_StartModalSubwindow    OR
      //:   lActionType = 35 //reCAPTCHA StartModalSubwindow
      if ( lActionType == zWAB_StartModelessSubwindow || lActionType == zWAB_StartModalSubwindow || lActionType == 35 )
      {
         //:// Next Window is subwindow. Set up current window for return.
         //:szWriteBuffer = "      vKZXMLPGO.CreateEntity( strSessionId, ^PagePath^, vKZXMLPGO.zPOS_AFTER );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      vKZXMLPGO.CreateEntity( strSessionId, ^PagePath^, vKZXMLPGO.zPOS_AFTER );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      vKZXMLPGO.SetAttribute( strSessionId, ^PagePath^, ^LastPageName^, ^" +
         //:                szFormName + "^ );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      vKZXMLPGO.SetAttribute( strSessionId, ^PagePath^, ^LastPageName^, ^", 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      }

      //:END

      //:IF lActionType = zWAB_StartBrowserHTML_Page
      if ( lActionType == zWAB_StartBrowserHTML_Page )
      {
         //:// KJS 03/05/08 - This was "nRC = 2 //do the error redirection" and I'm not sure why.
         //:// That resubmitted the current page and I assume this was done thinking this was how
         //:// the report page would be called but since the report popup is determined in AfterPageLoaded, we
         //:// don't need to resubmit the page.  Just keep building this current page.
         //:szWriteBuffer = "      nRC = 0;  // Don't need to redirect for popup window"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = 0;  // Don't need to redirect for popup window", 1, 0, 10001 );
         //:ELSE
      }
      else
      {
         //:szWriteBuffer = "      nRC = 1;  // do the redirection"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = 1;  // do the redirection", 1, 0, 10001 );
      }

      //:END
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
   }


   //:END  //End of Next Window Option

   //:// This Action is Startup Web Popup WITH mapping, so set zOpenPopupWindow to the next page jsp.
   //:IF ( lActionType = zWAB_StartModalWebPopup OR lActionType = zWAB_StartModelessWebPopup ) AND vDialog.Action.NoMap = ""
   if ( ( lActionType == zWAB_StartModalWebPopup || lActionType == zWAB_StartModelessWebPopup ) && CompareAttributeToString( vDialog, "Action", "NoMap", "" ) == 0 )
   {
      //://This gets the value for the popup window so that in AfterPageLoaded, we can get this
      //://value and pop up the window.
      //:szWriteBuffer = "      strOpenPopupWindow = request.getParameter( ^zOpenPopupWindow^ );"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      strOpenPopupWindow = request.getParameter( ^zOpenPopupWindow^ );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      strPopupWindowSZX = request.getParameter( ^zPopupWindowSZX^ );"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      strPopupWindowSZX = request.getParameter( ^zPopupWindowSZX^ );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      strPopupWindowSZY = request.getParameter( ^zPopupWindowSZY^ );"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      strPopupWindowSZY = request.getParameter( ^zPopupWindowSZY^ );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      nRC = 0;  // No redirection, we want to open the popup"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = 0;  // No redirection, we want to open the popup", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
   }

   //:END

   //:// Same Window Refresh option
   //:IF lActionType = zWAB_StayOnWindowWithRefresh
   if ( lActionType == zWAB_StayOnWindowWithRefresh )
   {
      //:szWriteBuffer = "      // Stay on Window with Refresh"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Stay on Window with Refresh", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      strURL = response.encodeRedirectURL( ^" + vDialogRoot.Dialog.Tag + vDialogRoot.Window.Tag + ".jsp^ );"
      GetVariableFromAttribute( szTempString_20, 0, 'S', 33, vDialogRoot, "Dialog", "Tag", "", 0 );
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      strURL = response.encodeRedirectURL( ^", 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_20, 1, 0, 10001 );
      GetVariableFromAttribute( szTempString_21, 0, 'S', 33, vDialogRoot, "Window", "Tag", "", 0 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_21, 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, ".jsp^ );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      nRC = 1;  // do the redirection"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = 1;  // do the redirection", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
   }

   //:END

   //:// Return From Window Option
   //:IF lActionType = zWAB_ReturnToParent OR
   //:   lActionType = zWAB_ReturnToParentWithRefresh
   if ( lActionType == zWAB_ReturnToParent || lActionType == zWAB_ReturnToParentWithRefresh )
   {

      //:IF InsertBlankFlag = "Y"
      if ( ZeidonStringCompare( InsertBlankFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
      {
         //:szWriteBuffer = ""
         ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      }

      //:END

      //:szWriteBuffer = "      // Return to Last Window"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Return to Last Window", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      nRC = vKZXMLPGO.CheckExistenceOfEntity( strSessionId, ^PagePath^ );"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = vKZXMLPGO.CheckExistenceOfEntity( strSessionId, ^PagePath^ );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      if ( nRC >= 0 )"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC >= 0 )", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      {"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         strLastPage = vKZXMLPGO.GetString( strSessionId, ^PagePath^, ^LastPageName^ );"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         strLastPage = vKZXMLPGO.GetString( strSessionId, ^PagePath^, ^LastPageName^ );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         vKZXMLPGO.DeleteEntity( strSessionId, ^PagePath^, vKZXMLPGO.zREPOS_PREV );"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         vKZXMLPGO.DeleteEntity( strSessionId, ^PagePath^, vKZXMLPGO.zREPOS_PREV );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         strLastPage = strLastPage + ^.jsp^;"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         strLastPage = strLastPage + ^.jsp^;", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      }"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "      else"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      else", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      //:szWriteBuffer = "         strLastPage = ^" + szFormName + ".jsp^;"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "         strLastPage = ^", 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, ".jsp^;", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

      //:szWriteBuffer = "      strURL = response.encodeRedirectURL( strLastPage );"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      strURL = response.encodeRedirectURL( strLastPage );", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

      //://KJS Trace
      //:IF (lTraceLevel = 1)
      if ( lTraceLevel == 1 )
      {
         //:szWriteBuffer = "      vAppSubtask.TraceLine( ^Return Redirect to: ^, strURL );"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      vAppSubtask.TraceLine( ^Return Redirect to: ^, strURL );", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      }

      //:END
      //:// szWriteBuffer = "      return;"
      //:szWriteBuffer = "      nRC = 1;  // do the redirection"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = 1;  // do the redirection", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
   }

   //:END

   //:// Download File option.
   //:IF lActionType = zWAB_ProcessDownloadFile
   if ( lActionType == zWAB_ProcessDownloadFile )
   {

      //:// Note that we need vDialogCtrl to be positioned on Control that triggers the Action to get the attribute mapping from that Control.
      //:// This was evaluated earlier.

      //:IF vDialogCtrl > 0
      if ( vDialogCtrl > 0 )
      {
         //:IF vDialogCtrl.CtrlMapER_Attribute EXISTS
         lTempInteger_8 = CheckExistenceOfEntity( vDialogCtrl, "CtrlMapER_Attribute" );
         if ( lTempInteger_8 == 0 )
         {

            //:szWriteBuffer = "  "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "  ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      // Download File Processing"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Download File Processing", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:/*
            //:szWriteBuffer = "      sBrowser = request.getHeader(^User-Agent^);"
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            //:szWriteBuffer = "      boolean isFirefox = ( sBrowser != null && sBrowser.indexOf( ^Firefox/^ ) != -1 );"
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            //:szWriteBuffer = "      boolean isMSIE = ( sBrowser != null && sBrowser.indexOf( ^MSIE^ ) != -1 );"
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            //:szWriteBuffer = "      boolean isOpera = ( sBrowser != null && sBrowser.indexOf( ^Opera^ ) != -1 );"
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            //:*/

            //:szWriteBuffer = "      nRC = " + vDialogCtrl.CtrlMapView.Name + ".GetView( strSessionId, ^" + vDialogCtrl.CtrlMapView.Name + "^, vAppSubtask );"
            GetVariableFromAttribute( szTempString_22, 0, 'S', 33, vDialogCtrl, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_22, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
            GetVariableFromAttribute( szTempString_23, 0, 'S', 33, vDialogCtrl, "CtrlMapView", "Name", "", 0 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_23, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      if ( nRC > 0 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC > 0 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         nRC = " + vDialogCtrl.CtrlMapView.Name + ".CheckExistenceOfEntity( strSessionId, ^" +
            //:                                    vDialogCtrl.CtrlMapRelatedEntity.Name + "^ );"
            GetVariableFromAttribute( szTempString_24, 0, 'S', 33, vDialogCtrl, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_24, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^", 1, 0, 10001 );
            GetVariableFromAttribute( szTempString_25, 0, 'S', 33, vDialogCtrl, "CtrlMapRelatedEntity", "Name", "", 0 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_25, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         if ( nRC >= 0 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:IF vDialogCtrl.CtrlMapER_Domain.MaxStringLth > 254
            if ( CompareAttributeToInteger( vDialogCtrl, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
            {
               //:lMaxStringLength = vDialogCtrl.CtrlMapER_Domain.MaxStringLth
               GetIntegerFromAttribute( &lMaxStringLength, vDialogCtrl, "CtrlMapER_Domain", "MaxStringLth" );
               //:szMaxStringLength = lMaxStringLength
               ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
               //:ELSE
            }
            else
            {
               //:szMaxStringLength = "254"
               ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
            }

            //:END

            //:szWriteBuffer = "            sDownloadFile = " + vDialogCtrl.CtrlMapView.Name + ".GetStringFromAttributeByContext( strSessionId, ^" +
            //:                vDialogCtrl.CtrlMapRelatedEntity.Name + "^, ^" + vDialogCtrl.CtrlMapER_Attribute.Name + "^, ^^, " + szMaxStringLength + " );"
            GetVariableFromAttribute( szTempString_26, 0, 'S', 33, vDialogCtrl, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            sDownloadFile = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_26, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^", 1, 0, 10001 );
            GetVariableFromAttribute( szTempString_27, 0, 'S', 33, vDialogCtrl, "CtrlMapRelatedEntity", "Name", "", 0 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_27, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
            GetVariableFromAttribute( szTempString_28, 0, 'S', 33, vDialogCtrl, "CtrlMapER_Attribute", "Name", "", 0 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_28, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^^, ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //://KJS Trace
            //:IF (lTraceLevel = 1)
            if ( lTraceLevel == 1 )
            {
               //:szWriteBuffer = "            " + vDialogCtrl.CtrlMapView.Name + ".TraceLine( ^Download File Name: ^, sDownloadFile );"
               GetVariableFromAttribute( szTempString_29, 0, 'S', 33, vDialogCtrl, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_29, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^Download File Name: ^, sDownloadFile );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END

            //:szWriteBuffer = "         }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //://KJS Trace
            //:IF (lTraceLevel = 1)
            if ( lTraceLevel == 1 )
            {
               //:szWriteBuffer = "         else"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         else", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "            " + vDialogCtrl.CtrlMapView.Name + ".TraceLine( ^Entity does not exist: ^, ^" +
               //:                                 vDialogCtrl.CtrlMapView.Name + "." +
               //:                                 vDialogCtrl.CtrlMapRelatedEntity.Name + "^ );"
               GetVariableFromAttribute( szTempString_30, 0, 'S', 33, vDialogCtrl, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_30, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^Entity does not exist: ^, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_31, 0, 'S', 33, vDialogCtrl, "CtrlMapView", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_31, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_32, 0, 'S', 33, vDialogCtrl, "CtrlMapRelatedEntity", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_32, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END

            //:szWriteBuffer = "      }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //://KJS Trace
            //:IF (lTraceLevel = 1)
            if ( lTraceLevel == 1 )
            {
               //:szWriteBuffer = "      else"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      else", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "         " + vDialogCtrl.CtrlMapView.Name + ".TraceLine( ^Invalid View: ^, ^" + vDialogCtrl.CtrlMapView.Name + "^ );"
               GetVariableFromAttribute( szTempString_33, 0, 'S', 33, vDialogCtrl, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_33, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^Invalid View: ^, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_34, 0, 'S', 33, vDialogCtrl, "CtrlMapView", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_34, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END

            //:szWriteBuffer = "         // Replace any quotes."
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // Replace any quotes.", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = "         sDownloadFile = sDownloadFile.replaceAll(^\^^,^^);"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         sDownloadFile = sDownloadFile.replaceAll(^\\^^,^^);", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "         l = sDownloadFile.lastIndexOf(^.^);"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         l = sDownloadFile.lastIndexOf(^.^);", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         x = sDownloadFile.lastIndexOf(^\\^);"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         x = sDownloadFile.lastIndexOf(^\\\\^);", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = "         // If x > l then the filename has no extension and"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // If x > l then the filename has no extension and", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         // there must be a period in the directory name."
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // there must be a period in the directory name.", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         // Right now we are not using sExtension but just"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // Right now we are not using sExtension but just", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         // in case we want to change the encType I want"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // in case we want to change the encType I want", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         // to capture this."
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // to capture this.", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         if (x > l)"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         if (x > l)", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            sExtension = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            sExtension = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         else"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         else", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            sExtension = sDownloadFile.substring(l+1);"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            sExtension = sDownloadFile.substring(l+1);", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         // Get the filename only without directories."
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // Get the filename only without directories.", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         sSourceFileNameOnly = sDownloadFile.substring(x + 1);"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         sSourceFileNameOnly = sDownloadFile.substring(x + 1);", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = "         File InputFile = new File(sDownloadFile);"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         File InputFile = new File(sDownloadFile);", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         FileInputStream fis = new FileInputStream(InputFile); "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         FileInputStream fis = new FileInputStream(InputFile); ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         try"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         try", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //://KJS Trace
            //:IF (lTraceLevel = 1)
            if ( lTraceLevel == 1 )
            {
               //:szWriteBuffer = "            vAppSubtask.TraceLine( ^Download File: ^, ^Setting outputStream and attaching file^ );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "            vAppSubtask.TraceLine( ^Download File: ^, ^Setting outputStream and attaching file^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END

            //:szWriteBuffer = "            String contenttype = ^application/octet-stream^;  "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            String contenttype = ^application/octet-stream^;  ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            response.setContentType(contenttype);"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            response.setContentType(contenttype);", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            response.setHeader(^Content-Disposition^, ^attachment; filename=^ + sSourceFileNameOnly + ^;^);"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            response.setHeader(^Content-Disposition^, ^attachment; filename=^ + sSourceFileNameOnly + ^;^);", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            ServletOutputStream outStream = response.getOutputStream();"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            ServletOutputStream outStream = response.getOutputStream();", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            int c = 0;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            int c = 0;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            while ((c=fis.read())!=-1)"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            while ((c=fis.read())!=-1)", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "               outStream.write(c); "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "               outStream.write(c); ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            } "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            } ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            outStream.flush(); "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            outStream.flush(); ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            outStream.close();"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            outStream.close();", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         catch (Exception e) "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         catch (Exception e) ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         { "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         { ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            if (InputFile!=null && InputFile.exists()) "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            if (InputFile!=null && InputFile.exists()) ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            { "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            { ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "               //TraceLine"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "               //TraceLine", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "               vAppSubtask.TraceLine( ^Error downloading file: ^, sDownloadFile );"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "               vAppSubtask.TraceLine( ^Error downloading file: ^, sDownloadFile );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            } "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            } ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = "            fis.close();"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            fis.close();", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:// The end of the Action is the same as "Same Window Refresh" above.
            //:szWriteBuffer = "         // Stay on Window with Refresh"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // Stay on Window with Refresh", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         strURL = response.encodeRedirectURL( ^" + vDialogRoot.Dialog.Tag + vDialogRoot.Window.Tag + ".jsp^ );"
            GetVariableFromAttribute( szTempString_35, 0, 'S', 33, vDialogRoot, "Dialog", "Tag", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         strURL = response.encodeRedirectURL( ^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_35, 1, 0, 10001 );
            GetVariableFromAttribute( szTempString_36, 0, 'S', 33, vDialogRoot, "Window", "Tag", "", 0 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_36, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".jsp^ );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         nRC = 1;  // do the redirection"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = 1;  // do the redirection", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         }

         //:   //szWriteBuffer = "      } "
         //:   //WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
         //:END
      }

      //:END
   }

   //:END // Download File option.

   //:szWriteBuffer = "      break;"
   ZeidonStringCopy( szWriteBuffer, 1, 0, "      break;", 1, 0, 10001 );
   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
   //:szWriteBuffer = "   }"
   ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
   WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
   //:IF vDialogCtrl > 0
   if ( vDialogCtrl > 0 )
   {
      //:DropView( vDialogCtrl )
      DropView( vDialogCtrl );
   }

   //:END
   return;
// END
}


//:GLOBAL OPERATION
//:CreateRelPosString( VIEW vDialog BASED ON LOD TZWDLGSO,
//:                    STRING ( 1024 ) szStyle,
//:                    INTEGER X_BASE,
//:                    INTEGER Y_BASE )

//:   STRING ( 10 )  szX_Pos
zOPER_EXPORT zSHORT OPERATION
CreateRelPosString( zVIEW     vDialog,
                    zPCHAR    szStyle,
                    zLONG     X_BASE,
                    zLONG     Y_BASE )
{
   zCHAR     szX_Pos[ 11 ] = { 0 };
   //:STRING ( 10 )  szY_Pos
   zCHAR     szY_Pos[ 11 ] = { 0 };
   //:DECIMAL        dDLUnits
   ZDecimal  dDLUnits = 0.0;
   zLONG     lTempInteger_0;
   zLONG     lTempInteger_1;


   //:PIX_PER_DU( vDialog, dDLUnits )
   PIX_PER_DU( vDialog, &dDLUnits );
   //:zIntegerToString( szX_Pos, 10, vDialog.Control.PSDLG_X * dDLUnits + X_BASE )
   GetIntegerFromAttribute( &lTempInteger_0, vDialog, "Control", "PSDLG_X" );
   zIntegerToString( szX_Pos, 10, lTempInteger_0 * dDLUnits + X_BASE );
   //:zIntegerToString( szY_Pos, 10, vDialog.Control.PSDLG_Y * dDLUnits + Y_BASE )
   GetIntegerFromAttribute( &lTempInteger_1, vDialog, "Control", "PSDLG_Y" );
   zIntegerToString( szY_Pos, 10, lTempInteger_1 * dDLUnits + Y_BASE );

   //:szStyle = "position:relative;" +
   //:          "left:" + szX_Pos + "px;" +
   //:          "top:" + szY_Pos + "px;"
   ZeidonStringCopy( szStyle, 1, 0, "position:relative;", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "left:", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, szX_Pos, 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "px;", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "top:", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, szY_Pos, 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "px;", 1, 0, 1025 );
   return( 0 );
// END
}


//:GLOBAL OPERATION
//:CreateAbsolPosString( VIEW vDialog BASED ON LOD TZWDLGSO,
//:                      STRING ( 1024 ) szStyle,
//:                      INTEGER X_BASE,
//:                      INTEGER Y_BASE )

//:   STRING ( 10 )  szX_Pos
zOPER_EXPORT zSHORT OPERATION
CreateAbsolPosString( zVIEW     vDialog,
                      zPCHAR    szStyle,
                      zLONG     X_BASE,
                      zLONG     Y_BASE )
{
   zCHAR     szX_Pos[ 11 ] = { 0 };
   //:STRING ( 10 )  szY_Pos
   zCHAR     szY_Pos[ 11 ] = { 0 };
   //:DECIMAL        dDLUnits
   ZDecimal  dDLUnits = 0.0;
   zLONG     lTempInteger_0;
   zLONG     lTempInteger_1;


   //:PIX_PER_DU( vDialog, dDLUnits )
   PIX_PER_DU( vDialog, &dDLUnits );
   //:zIntegerToString( szX_Pos, 10, vDialog.Control.PSDLG_X * dDLUnits + X_BASE )
   GetIntegerFromAttribute( &lTempInteger_0, vDialog, "Control", "PSDLG_X" );
   zIntegerToString( szX_Pos, 10, lTempInteger_0 * dDLUnits + X_BASE );
   //:zIntegerToString( szY_Pos, 10, vDialog.Control.PSDLG_Y * dDLUnits + Y_BASE )
   GetIntegerFromAttribute( &lTempInteger_1, vDialog, "Control", "PSDLG_Y" );
   zIntegerToString( szY_Pos, 10, lTempInteger_1 * dDLUnits + Y_BASE );

   //:szStyle = "position:absolute;" +
   //:          "left:" + szX_Pos + "px;" +
   //:          "top:" + szY_Pos + "px;"
   ZeidonStringCopy( szStyle, 1, 0, "position:absolute;", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "left:", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, szX_Pos, 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "px;", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "top:", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, szY_Pos, 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "px;", 1, 0, 1025 );
   return( 0 );
// END
}


//:GLOBAL OPERATION
//:CreateSizeString( VIEW vDialog BASED ON LOD TZWDLGSO,
//:                  STRING ( 1024 ) szStyle )

//:   STRING ( 10 )  szWidth
zOPER_EXPORT zSHORT OPERATION
CreateSizeString( zVIEW     vDialog,
                  zPCHAR    szStyle )
{
   zCHAR     szWidth[ 11 ] = { 0 };
   //:STRING ( 10 )  szHeight
   zCHAR     szHeight[ 11 ] = { 0 };
   //:DECIMAL        dDLUnits
   ZDecimal  dDLUnits = 0.0;
   zLONG     lTempInteger_0;
   zLONG     lTempInteger_1;


   //:PIX_PER_DU( vDialog, dDLUnits )
   PIX_PER_DU( vDialog, &dDLUnits );
   //:zIntegerToString( szWidth, 10, vDialog.Control.SZDLG_X * dDLUnits )
   GetIntegerFromAttribute( &lTempInteger_0, vDialog, "Control", "SZDLG_X" );
   zIntegerToString( szWidth, 10, lTempInteger_0 * dDLUnits );
   //:zIntegerToString( szHeight, 10, vDialog.Control.SZDLG_Y * dDLUnits )
   GetIntegerFromAttribute( &lTempInteger_1, vDialog, "Control", "SZDLG_Y" );
   zIntegerToString( szHeight, 10, lTempInteger_1 * dDLUnits );

   //:szStyle = "width:" + szWidth + "px;height:" + szHeight + "px;"
   ZeidonStringCopy( szStyle, 1, 0, "width:", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, szWidth, 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "px;height:", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, szHeight, 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "px;", 1, 0, 1025 );
   return( 0 );
// END
}


//:GLOBAL OPERATION
//:CreateRelStyleString( VIEW vDialog BASED ON LOD TZWDLGSO,
//:                      STRING ( 1024 ) szStyle,
//:                      INTEGER X_BASE,
//:                      INTEGER Y_BASE,
//:                      STRING ( 100 ) szStyleExtraParm )

//:   STRING ( 100 )  szPosition
zOPER_EXPORT zSHORT OPERATION
CreateRelStyleString( zVIEW     vDialog,
                      zPCHAR    szStyle,
                      zLONG     X_BASE,
                      zLONG     Y_BASE,
                      zPCHAR    szStyleExtraParm )
{
   zCHAR     szPosition[ 101 ] = { 0 };
   //:STRING ( 100 )  szSize
   zCHAR     szSize[ 101 ] = { 0 };

   //:CreateSizeString( vDialog, szSize )
   CreateSizeString( vDialog, szSize );
   //:CreateRelPosString( vDialog, szPosition, X_BASE, Y_BASE )
   CreateRelPosString( vDialog, szPosition, X_BASE, Y_BASE );

   //:FixStyleString( szStyle, szSize, szPosition, szStyleExtraParm )
   FixStyleString( szStyle, szSize, szPosition, szStyleExtraParm );
   return( 0 );
// END
}


//:GLOBAL OPERATION
//:CreateAbsolStyleString( VIEW vDialog BASED ON LOD TZWDLGSO,
//:                        STRING ( 1024 ) szStyle,
//:                        INTEGER X_BASE,
//:                        INTEGER Y_BASE,
//:                        STRING ( 100 ) szStyleExtraParm )

//:   STRING ( 100 )  szPosition
zOPER_EXPORT zVOID OPERATION
CreateAbsolStyleString( zVIEW     vDialog,
                        zPCHAR    szStyle,
                        zLONG     X_BASE,
                        zLONG     Y_BASE,
                        zPCHAR    szStyleExtraParm )
{
   zCHAR     szPosition[ 101 ] = { 0 };
   //:STRING ( 100 )  szSize
   zCHAR     szSize[ 101 ] = { 0 };

   //:CreateSizeString( vDialog, szSize )
   CreateSizeString( vDialog, szSize );
   //:CreateAbsolPosString( vDialog, szPosition, X_BASE, Y_BASE )
   CreateAbsolPosString( vDialog, szPosition, X_BASE, Y_BASE );

   //:FixStyleString( szStyle, szSize, szPosition, szStyleExtraParm )
   FixStyleString( szStyle, szSize, szPosition, szStyleExtraParm );
   return;
// END
}


//:GLOBAL OPERATION
//:FixStyleString( STRING ( 1024 ) szStyle,
//:                STRING ( 100 ) szS1,   // position usually
//:                STRING ( 100 ) szS2,   //
//:                STRING ( 100 ) szSE )
zOPER_EXPORT zSHORT OPERATION
FixStyleString( zPCHAR    szStyle,
                zPCHAR    szS1,
                zPCHAR    szS2,
                zPCHAR    szSE )
{


   //:szStyle = "style=^" + szS1 + szS2 + szSE + "^"
   ZeidonStringCopy( szStyle, 1, 0, "style=^", 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, szS1, 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, szS2, 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, szSE, 1, 0, 1025 );
   ZeidonStringConcat( szStyle, 1, 0, "^", 1, 0, 1025 );
   return( 0 );
// END
}


//:GLOBAL OPERATION
//:PIX_PER_DU( VIEW vDialog BASED ON LOD TZWDLGSO, DECIMAL dDLUnits )
zOPER_EXPORT zSHORT OPERATION
PIX_PER_DU( zVIEW     vDialog,
            zPDECIMAL dDLUnits_Arg_ )
{
   zDECIMAL *dDLUnits = dDLUnits_Arg_;

   //:dDLUnits = 2.0
   *dDLUnits = (ZDecimal)( 2.0);
   return( 0 );
// END
}


//:GLOBAL OPERATION
//:GenJSP_OutputMapRecurs( VIEW vDialog BASED ON LOD TZWDLGSO,
//:                        INTEGER          lFile,
//:                        STRING ( 10000 ) szWriteBuffer,
//:                        STRING ( 255 )   szFormName )

//:   VIEW          vDialogParent
zOPER_EXPORT zVOID OPERATION
GenJSP_OutputMapRecurs( zVIEW     vDialog,
                        zLONG     lFile,
                        zPCHAR    szWriteBuffer,
                        zPCHAR    szFormName )
{
   zVIEW     vDialogParent = 0;
   //:STRING ( 50 ) szControlType
   zCHAR     szControlType[ 51 ] = { 0 };
   //:STRING ( 50 ) szCtrlTag
   zCHAR     szCtrlTag[ 51 ] = { 0 };
   //:STRING ( 50 ) szActionName
   zCHAR     szActionName[ 51 ] = { 0 };
   //:STRING ( 10 ) szSelectFunction
   zCHAR     szSelectFunction[ 11 ] = { 0 };
   //:STRING ( 10000 ) szJavaScript
   zCHAR     szJavaScript[ 10001 ] = { 0 };
   //:STRING ( 1 )  szCodeCreated
   zCHAR     szCodeCreated[ 2 ] = { 0 };
   //:SHORT         nGridParent
   zSHORT    nGridParent = 0;
   //:INTEGER       lSubtype
   zLONG     lSubtype = 0;
   //:SHORT         nRC
   zSHORT    nRC = 0;
   zSHORT    RESULT;
   zSHORT    lTempInteger_0;
   zSHORT    lTempInteger_1;
   zSHORT    lTempInteger_2;
   zSHORT    lTempInteger_3;
   zSHORT    lTempInteger_4;
   zSHORT    lTempInteger_5;


   //:// "ONCHANGE" FUNCTION GENERATION FOR COMBOBOX CONTROLS

   //:// Identify if this Control is inside a Grid by setting nGridParent.
   //:// Note by DonC on 9/7/07: I don't see why the following code is necessary as we know the
   //:// combobox is in a Grid because its type is "GridComboCtl".
   //:/*nGridParent = 0
   //:nRC = 0
   //:CreateViewFromView( vDialogParent, vDialog )
   //:LOOP WHILE nGridParent = 0 AND nRC = 0
   //:   nRC = ResetViewFromSubobject( vDialogParent )
   //:   IF nRC = 0 AND vDialogParent.ControlDef EXISTS
   //:      szControlType = vDialogParent.ControlDef.Tag
   //:      IF szControlType = "Grid"
   //:         nGridParent = 1
   //:      END
   //:   END
   //:END
   //:DropView( vDialogParent )*/

   //:// Note that Control.SubType is an integer composed of multiple values,
   //:// but is always less than 12,000 for Domain Combos.
   //:FOR EACH vDialog.Control
   RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   {

      //:szControlType = vDialog.ControlDef.Tag
      GetVariableFromAttribute( szControlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
      //:szCtrlTag = vDialog.Control.Tag
      GetVariableFromAttribute( szCtrlTag, 0, 'S', 51, vDialog, "Control", "Tag", "", 0 );

      //:// Set up Action data for combo boxes.
      //:IF vDialog.Event EXISTS
      lTempInteger_0 = CheckExistenceOfEntity( vDialog, "Event" );
      if ( lTempInteger_0 == 0 )
      {
         //:IF vDialog.Event.Type = 1
         if ( CompareAttributeToInteger( vDialog, "Event", "Type", 1 ) == 0 )
         {
            //:szSelectFunction = "OnChange"
            ZeidonStringCopy( szSelectFunction, 1, 0, "OnChange", 1, 0, 11 );
            //:ELSE
         }
         else
         {
            //:szSelectFunction = "OnBlur"
            ZeidonStringCopy( szSelectFunction, 1, 0, "OnBlur", 1, 0, 11 );
         }

         //:END
         //:ELSE
      }
      else
      {
         //:szSelectFunction = "OnChange"
         ZeidonStringCopy( szSelectFunction, 1, 0, "OnChange", 1, 0, 11 );
      }

      //:END

      //:// Process Combobox entries
      //:IF szControlType = "ComboBox" OR szControlType = "GridComboCtl"
      if ( ZeidonStringCompare( szControlType, 1, 0, "ComboBox", 1, 0, 51 ) == 0 || ZeidonStringCompare( szControlType, 1, 0, "GridComboCtl", 1, 0, 51 ) == 0 )
      {
         //:// The function statements for Combobox entries are primarily driven by:
         //:// 1. Whether the Combobox is Domain or select entity type.
         //:// 2. Whether there is an Action triggered by the combobox.
         //:// 3. Whether the Combobox is part of a Grid.

         //://Is this combobox in a grid?  You'd think you could just tell by the name "GridComboCtl but
         //://I can create a combobox outside the listbox and then move it into the grid and the type will
         //://still be "ComboBox".
         //:nGridParent = 0
         nGridParent = 0;
         //:nRC = 0
         nRC = 0;
         //:CreateViewFromView( vDialogParent, vDialog )
         CreateViewFromView( &vDialogParent, vDialog );
         //:nRC = ResetViewFromSubobject( vDialogParent )
         nRC = ResetViewFromSubobject( vDialogParent );
         //:IF nRC = 0 AND vDialogParent.ControlDef EXISTS
         lTempInteger_1 = CheckExistenceOfEntity( vDialogParent, "ControlDef" );
         if ( nRC == 0 && lTempInteger_1 == 0 )
         {
            //:szControlType = vDialogParent.ControlDef.Tag
            GetVariableFromAttribute( szControlType, 0, 'S', 51, vDialogParent, "ControlDef", "Tag", "", 0 );
            //:IF szControlType = "Grid"
            if ( ZeidonStringCompare( szControlType, 1, 0, "Grid", 1, 0, 51 ) == 0 )
            {
               //:nGridParent = 1
               nGridParent = 1;
            }

            //:END
         }

         //:END
         //:DropView( vDialogParent )
         DropView( vDialogParent );

         //://KJS 12/7/07 - We are going to add autoinclude and set foreign key comboboxes.
         //://so we will need to change the below statements.

         //:// function statement
         //:lSubtype = vDialog.Control.Subtype
         GetIntegerFromAttribute( &lSubtype, vDialog, "Control", "Subtype" );
         //:nRC = AreBitsSetInFlag( lSubtype, 61440 ) // 0x0000F000
         nRC = AreBitsSetInFlag( lSubtype, 61440 );
         //:IF nRC = 0   // IF vDialog.Control.Subtype < 12000  ==> Domain Combobox
         if ( nRC == 0 )
         {
            //:// Domain Combobox
            //:IF nGridParent = 0
            if ( nGridParent == 0 )
            {
               //:// Domain Combobox NOT in Grid.
               //:szWriteBuffer = "function " + szCtrlTag + szSelectFunction + "( )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "function ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectFunction, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "( )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:ELSE
            }
            else
            {
               //:// Domain Combobox IN Grid.
               //:// szWriteBuffer = "function " + szCtrlTag + szSelectFunction + "( hControl, Control )"
               //:szWriteBuffer = "function " + szCtrlTag + szSelectFunction + "( hControl, Control, strEntityKey )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "function ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectFunction, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "( hControl, Control, strEntityKey )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END
            //:ELSE
         }
         else
         {
            //:// Select type Combobox
            //:IF nGridParent = 0
            if ( nGridParent == 0 )
            {
               //:// Select Combobox NOT in Grid.
               //:szWriteBuffer = "function " + szCtrlTag + szSelectFunction + "( )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "function ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectFunction, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "( )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:ELSE
            }
            else
            {
               //:// Select Combobox IN Grid.
               //:szWriteBuffer = "function " + szCtrlTag + szSelectFunction + "( hControl, Control )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "function ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectFunction, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "( hControl, Control )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END
         }

         //:END

         //:szWriteBuffer = "{"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "{", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

         //:szWriteBuffer = "      // This is for indicating whether the user hit the window close box."
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      // This is for indicating whether the user hit the window close box.", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "      isWindowClosing = false;"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "      isWindowClosing = false;", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

         //:// _IsDocDisabled code.
         //:szWriteBuffer = "   if ( _IsDocDisabled( ) == false )"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( _IsDocDisabled( ) == false )", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         //:szWriteBuffer = "   {"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

         //:// If Action is SelectEnd, generate code to skip submit on tab.
         //:IF vDialog.EventAct EXISTS AND vDialog.Event.Type = 256
         lTempInteger_2 = CheckExistenceOfEntity( vDialog, "EventAct" );
         if ( lTempInteger_2 == 0 && CompareAttributeToInteger( vDialog, "Event", "Type", 256 ) == 0 )
         {
            //:szWriteBuffer = "   if (isChangedComboBox(document." + szFormName + "." + szCtrlTag + ") == false )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   if (isChangedComboBox(document.", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ") == false )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      return;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      return;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         }


         //:END

         //:// ACTION EXISTS
         //:lSubtype = vDialog.Control.Subtype
         GetIntegerFromAttribute( &lSubtype, vDialog, "Control", "Subtype" );
         //:nRC = AreBitsSetInFlag( lSubtype, 61440 ) // 0x0000F000
         nRC = AreBitsSetInFlag( lSubtype, 61440 );
         //:IF nRC = 0   // IF vDialog.Control.Subtype < 12000  ==> Domain Combobox
         if ( nRC == 0 )
         {
            //:// Domain Combobox
            //:IF nGridParent = 0
            if ( nGridParent == 0 )
            {
               //:// Domain Combobox NOT in Grid.
               //:szWriteBuffer = "      document." + szFormName + ".h" + szCtrlTag + ".value = " +
               //:                "document." + szFormName + "." + szCtrlTag + ".value;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".h", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".value = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "document.", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".value;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:ELSE
            }
            else
            {
               //:// Domain Combobox IN Grid.
               //:szWriteBuffer = "      hControl.value = Control.value;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      hControl.value = Control.value;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      document." + szFormName + ".zTableRowSelect.value = strEntityKey;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".zTableRowSelect.value = strEntityKey;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END
            //:ELSE
         }
         else
         {
            //:// Select type Combobox
            //:IF nGridParent = 0
            if ( nGridParent == 0 )
            {
               //://NOT in Grid
               //:szWriteBuffer = "      document." + szFormName + ".h" + szCtrlTag + ".value = " +
               //:                "document." + szFormName + "." + szCtrlTag + ".selectedIndex;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".h", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".value = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "document.", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".selectedIndex;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:ELSE
            }
            else
            {
               //://IN Grid
               //:szWriteBuffer = "      hControl.value = Control.selectedIndex;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      hControl.value = Control.selectedIndex;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      document." + szFormName + ".zTableRowSelect.value = strEntityKey;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".zTableRowSelect.value = strEntityKey;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END
         }

         //:END

         //:// Action Processing
         //:IF vDialog.EventAct EXISTS
         lTempInteger_3 = CheckExistenceOfEntity( vDialog, "EventAct" );
         if ( lTempInteger_3 == 0 )
         {

            //:// KJS 08/14/2009 - There may be times when we simply want to run the javascript code without submitting
            //:// this form.  The only problem is if this combobox is an auto include or a "set foreign key" then we have
            //:// to submit to allow this to happen.  If the combobox is not one of those and the action type is
            //:// zWAB_StayOnWindow and there is javascript code, then do not want to do the submit.

            //:szCodeCreated = "N"
            ZeidonStringCopy( szCodeCreated, 1, 0, "N", 1, 0, 2 );

            //:szJavaScript = vDialog.EventAct.WebJavaScript
            GetVariableFromAttribute( szJavaScript, 0, 'S', 10001, vDialog, "EventAct", "WebJavaScript", "", 0 );

            //:IF (vDialog.Control.Subtype >= 20480 AND vDialog.Control.Subtype <= 21252)  OR
            //:   (vDialog.Control.Subtype >= 36864 AND vDialog.Control.Subtype <= 45056)
            if ( ( CompareAttributeToInteger( vDialog, "Control", "Subtype", 20480 ) >= 0 && CompareAttributeToInteger( vDialog, "Control", "Subtype", 21252 ) <= 0 ) || ( CompareAttributeToInteger( vDialog, "Control", "Subtype", 36864 ) >= 0 &&
                 CompareAttributeToInteger( vDialog, "Control", "Subtype", 45056 ) <= 0 ) )
            {
               //:// "Auto include" or "set foreign key" combo box.  Do nothing.
               //:ELSE
            }
            else
            {
               //:// Not an "auto include" or "set foreign key" combobox and there is javascript code for
               //:// the action.
               //:IF vDialog.EventAct.Type = zWAB_StayOnWindow AND szJavaScript != ""
               if ( CompareAttributeToInteger( vDialog, "EventAct", "Type", zWAB_StayOnWindow ) == 0 && ZeidonStringCompare( szJavaScript, 1, 0, "", 1, 0, 10001 ) != 0 )
               {

                  //:// Create only the javascript code without the form submit.
                  //:szCodeCreated = "Y"
                  ZeidonStringCopy( szCodeCreated, 1, 0, "Y", 1, 0, 2 );
                  //:szWriteBuffer = "      // Javascript code entered by user."
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Javascript code entered by user.", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                  //:szWriteBuffer = szJavaScript
                  ZeidonStringCopy( szWriteBuffer, 1, 0, szJavaScript, 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                  //:szWriteBuffer = "      // END of Javascript code entered by user."
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      // END of Javascript code entered by user.", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               }

               //:END
            }

            //:END

            //:// The code for szWAB_StayOnWindow with Javascript code was not created so build this
            //:// the normal way with the action .submit.
            //:IF szCodeCreated = "N"
            if ( ZeidonStringCompare( szCodeCreated, 1, 0, "N", 1, 0, 2 ) == 0 )
            {
               //:// Only generate the DisableFormElements statement if there is an Action tied to the combobox.
               //:szWriteBuffer = "      _DisableFormElements( true );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      _DisableFormElements( true );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

               //:// KJS 10/28/10 - Testing this to see how using an hourglass would work while
               //:// the user is waiting for something to happen.
               //:szWriteBuffer = "      document.body.style.cursor = ^wait^;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.body.style.cursor = ^wait^;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

               //://KJS 11/16/2007 - We want to insert any javascript code that the
               //://user has entered for this action.  This will be put before the action
               //://generated code for submitting.  If the user wants to skip the
               //://generated code, the inserted code should end with a return.
               //:IF  szJavaScript != ""
               if ( ZeidonStringCompare( szJavaScript, 1, 0, "", 1, 0, 10001 ) != 0 )
               {
                  //:szWriteBuffer = "      // Javascript code entered by user."
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Javascript code entered by user.", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                  //:szWriteBuffer = szJavaScript
                  ZeidonStringCopy( szWriteBuffer, 1, 0, szJavaScript, 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                  //:szWriteBuffer = "      // END of Javascript code entered by user."
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      // END of Javascript code entered by user.", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               }

               //:END

               //:szActionName = vDialog.EventAct.Tag
               GetVariableFromAttribute( szActionName, 0, 'S', 51, vDialog, "EventAct", "Tag", "", 0 );
               //:szWriteBuffer = "      document." + szFormName + ".zAction.value = ^" + szActionName + "^;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".zAction.value = ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szActionName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      document." + szFormName + ".submit( );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".submit( );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END
            //:ELSE
         }
         else
         {
            //://There is no action but because this is an automatic include or a
            //://set foreign key combobox, there should be an action and a submit.
            //://We will call a generic one
            //:IF (vDialog.Control.Subtype >= 20480 AND vDialog.Control.Subtype <= 21252)  OR
            //:   (vDialog.Control.Subtype >= 36864 AND vDialog.Control.Subtype <= 45056)
            if ( ( CompareAttributeToInteger( vDialog, "Control", "Subtype", 20480 ) >= 0 && CompareAttributeToInteger( vDialog, "Control", "Subtype", 21252 ) <= 0 ) || ( CompareAttributeToInteger( vDialog, "Control", "Subtype", 36864 ) >= 0 &&
                 CompareAttributeToInteger( vDialog, "Control", "Subtype", 45056 ) <= 0 ) )
            {

               //:szActionName = "ZEIDON_ComboBoxSubmit"
               ZeidonStringCopy( szActionName, 1, 0, "ZEIDON_ComboBoxSubmit", 1, 0, 51 );
               //:szWriteBuffer = "      document." + szFormName + ".zAction.value = ^" + szActionName + "^;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".zAction.value = ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szActionName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      document." + szFormName + ".submit( );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".submit( );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }


            //:END
         }

         //:END

         //:szWriteBuffer = "   }"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

         //:szWriteBuffer = "}"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "}", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

         //:ELSE
      }
      else
      {
         //:IF szControlType = "ListBox"
         if ( ZeidonStringCompare( szControlType, 1, 0, "ListBox", 1, 0, 51 ) == 0 )
         {

            //://szWriteBuffer = "function " + szCtrlTag + szSelectFunction + "( )"
            //:szWriteBuffer = "function " + szCtrlTag +  "OnClick( )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "function ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "OnClick( )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "{"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "{", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// _IsDocDisabled code.
            //:szWriteBuffer = "   if ( _IsDocDisabled( ) == false )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( _IsDocDisabled( ) == false )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "      document." + szFormName + ".h" + szCtrlTag + ".value = " +
            //:             "document." + szFormName + "." + szCtrlTag + ".selectedIndex"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".h", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".value = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "document.", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".selectedIndex", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Action Processing
            //:IF vDialog.EventAct EXISTS
            lTempInteger_4 = CheckExistenceOfEntity( vDialog, "EventAct" );
            if ( lTempInteger_4 == 0 )
            {

               //:szJavaScript = vDialog.EventAct.WebJavaScript
               GetVariableFromAttribute( szJavaScript, 0, 'S', 10001, vDialog, "EventAct", "WebJavaScript", "", 0 );

               //:IF vDialog.EventAct.Type = zWAB_StayOnWindow AND szJavaScript != ""
               if ( CompareAttributeToInteger( vDialog, "EventAct", "Type", zWAB_StayOnWindow ) == 0 && ZeidonStringCompare( szJavaScript, 1, 0, "", 1, 0, 10001 ) != 0 )
               {

                  //:szWriteBuffer = "      // Javascript code entered by user."
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      // Javascript code entered by user.", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                  //:szWriteBuffer = szJavaScript
                  ZeidonStringCopy( szWriteBuffer, 1, 0, szJavaScript, 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                  //:szWriteBuffer = "      // END of Javascript code entered by user."
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      // END of Javascript code entered by user.", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                  //:ELSE
               }
               else
               {

                  //:// KJS 10/28/10 - Testing this to see how using an hourglass would work while
                  //:// the user is waiting for something to happen.
                  //:szWriteBuffer = "      document.body.style.cursor = ^wait^;"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.body.style.cursor = ^wait^;", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                  //:// Only generate the DisableFormElements statement if there is an Action tied to the combobox.
                  //:szWriteBuffer = "      _DisableFormElements( true );"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      _DisableFormElements( true );", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                  //:szActionName = vDialog.EventAct.Tag
                  GetVariableFromAttribute( szActionName, 0, 'S', 51, vDialog, "EventAct", "Tag", "", 0 );
                  //:szWriteBuffer = "      document." + szFormName + ".zAction.value = ^" + szActionName + "^;"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ".zAction.value = ^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szActionName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^;", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "      document." + szFormName + ".submit( );"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      document.", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szFormName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ".submit( );", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               }

               //:END
            }

            //:END

            //:szWriteBuffer = "   }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "}"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "}", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:ELSE
         }
         else
         {
            //:// This is not a combobox, so continue processing subobjects.
            //:IF vDialog.CtrlCtrl EXISTS
            lTempInteger_5 = CheckExistenceOfEntity( vDialog, "CtrlCtrl" );
            if ( lTempInteger_5 == 0 )
            {

               //:SetViewToSubobject( vDialog, "CtrlCtrl" )
               SetViewToSubobject( vDialog, "CtrlCtrl" );
               //:GenJSP_OutputMapRecurs( vDialog, lFile, szWriteBuffer, szFormName )
               GenJSP_OutputMapRecurs( vDialog, lFile, szWriteBuffer, szFormName );
               //:ResetViewFromSubobject( vDialog )
               ResetViewFromSubobject( vDialog );
            }


            //:END
         }

         //:END  // End of checking if this is a listbox
      }

      RESULT = SetCursorNextEntity( vDialog, "Control", "" );
      //:END  // End of checking if this is a combobox
   }


   //:END // FOR EACH vDialog.Control
   return;
// END
}


//:GLOBAL OPERATION
//:GenJSP_InputMapRecurs( VIEW vDialog BASED ON LOD TZWDLGSO,
//:                       STRING ( 32 )    ViewName,
//:                       INTEGER          lFile,
//:                       STRING ( 10000 ) szWriteBuffer,
//:                       INTEGER          lTableRowCnt )

//:   VIEW vDialog2 BASED ON LOD TZWDLGSO
zOPER_EXPORT zVOID OPERATION
GenJSP_InputMapRecurs( zVIEW     vDialog,
                       zPCHAR    ViewName,
                       zLONG     lFile,
                       zPCHAR    szWriteBuffer,
                       zLONG     lTableRowCnt )
{
   zVIEW     vDialog2 = 0;
   //:VIEW vDialog3 BASED ON LOD TZWDLGSO
   zVIEW     vDialog3 = 0;
   //:STRING ( 32 ) szContextName
   zCHAR     szContextName[ 33 ] = { 0 };
   //:STRING ( 32 ) szScopingEntityName
   zCHAR     szScopingEntityName[ 33 ] = { 0 };
   //:STRING ( 32 ) szListMappingEntityName
   zCHAR     szListMappingEntityName[ 33 ] = { 0 };
   //:STRING ( 50 ) szViewName
   zCHAR     szViewName[ 51 ] = { 0 };
   //:STRING ( 50 ) szControlType
   zCHAR     szControlType[ 51 ] = { 0 };
   //:STRING ( 50 ) szCtrlCtrlType
   zCHAR     szCtrlCtrlType[ 51 ] = { 0 };
   //:STRING ( 50 ) szCtrlTag
   zCHAR     szCtrlTag[ 51 ] = { 0 };
   //:STRING ( 50 ) szCheckBoxValue
   zCHAR     szCheckBoxValue[ 51 ] = { 0 };
   //:STRING ( 1 )  szFlag
   zCHAR     szFlag[ 2 ] = { 0 };
   //:STRING ( 2 )  szSuffix
   zCHAR     szSuffix[ 3 ] = { 0 };
   //:STRING ( 10 ) szMaxStringLength
   zCHAR     szMaxStringLength[ 11 ] = { 0 };
   //:STRING ( 1 )  szWCP_Edit
   zCHAR     szWCP_Edit[ 2 ] = { 0 };
   //:STRING ( 1 )  szhFlag
   zCHAR     szhFlag[ 2 ] = { 0 };
   //:STRING ( 1 )  szXSSEncode
   zCHAR     szXSSEncode[ 2 ] = { 0 };
   //:STRING ( 1 )  szSurveyGroupFlag
   zCHAR     szSurveyGroupFlag[ 2 ] = { 0 };
   //:INTEGER       lEditBox
   zLONG     lEditBox = 0;
   //:INTEGER       lSubtype
   zLONG     lSubtype = 0;
   //:INTEGER       lSubtypeX
   zLONG     lSubtypeX = 0;
   //:INTEGER       lTemp
   zLONG     lTemp = 0;
   //:INTEGER       lMaxStringLength
   zLONG     lMaxStringLength = 0;
   //:SHORT         nViewNameLth
   zSHORT    nViewNameLth = 0;
   //:SHORT         bResetToPlaceHolder
   zSHORT    bResetToPlaceHolder = 0;
   //:SHORT         nRC
   zSHORT    nRC = 0;
   zSHORT    RESULT;
   zSHORT    lTempInteger_0;
   zCHAR     szTempString_0[ 33 ];
   zCHAR     szTempString_1[ 33 ];
   zCHAR     szTempString_2[ 33 ];
   zSHORT    lTempInteger_1;
   zCHAR     szTempString_3[ 33 ];
   zCHAR     szTempString_4[ 33 ];
   zCHAR     szTempString_5[ 33 ];
   zSHORT    lTempInteger_2;
   zSHORT    lTempInteger_3;
   zSHORT    lTempInteger_4;
   zCHAR     szTempString_6[ 33 ];
   zCHAR     szTempString_7[ 33 ];
   zCHAR     szTempString_8[ 33 ];
   zCHAR     szTempString_9[ 33 ];
   zCHAR     szTempString_10[ 33 ];
   zCHAR     szTempString_11[ 33 ];
   zSHORT    lTempInteger_5;
   zCHAR     szTempString_12[ 33 ];
   zCHAR     szTempString_13[ 33 ];
   zCHAR     szTempString_14[ 33 ];
   zSHORT    lTempInteger_6;
   zCHAR     szTempString_15[ 33 ];
   zCHAR     szTempString_16[ 33 ];
   zCHAR     szTempString_17[ 33 ];
   zCHAR     szTempString_18[ 33 ];
   zCHAR     szTempString_19[ 33 ];
   zCHAR     szTempString_20[ 33 ];
   zCHAR     szTempString_21[ 33 ];
   zCHAR     szTempString_22[ 33 ];
   zCHAR     szTempString_23[ 33 ];
   zCHAR     szTempString_24[ 33 ];
   zCHAR     szTempString_25[ 33 ];
   zCHAR     szTempString_26[ 33 ];
   zCHAR     szTempString_27[ 33 ];
   zCHAR     szTempString_28[ 33 ];
   zCHAR     szTempString_29[ 33 ];
   zCHAR     szTempString_30[ 33 ];
   zCHAR     szTempString_31[ 33 ];
   zCHAR     szTempString_32[ 33 ];
   zCHAR     szTempString_33[ 33 ];
   zCHAR     szTempString_34[ 33 ];
   zCHAR     szTempString_35[ 33 ];
   zCHAR     szTempString_36[ 33 ];
   zCHAR     szTempString_37[ 33 ];
   zCHAR     szTempString_38[ 33 ];
   zCHAR     szTempString_39[ 33 ];
   zCHAR     szTempString_40[ 33 ];
   zCHAR     szTempString_41[ 33 ];
   zCHAR     szTempString_42[ 33 ];
   zCHAR     szTempString_43[ 33 ];
   zSHORT    lTempInteger_7;
   zCHAR     szTempString_44[ 33 ];
   zCHAR     szTempString_45[ 33 ];
   zCHAR     szTempString_46[ 33 ];
   zCHAR     szTempString_47[ 33 ];
   zCHAR     szTempString_48[ 33 ];
   zCHAR     szTempString_49[ 33 ];
   zCHAR     szTempString_50[ 33 ];
   zCHAR     szTempString_51[ 33 ];
   zCHAR     szTempString_52[ 33 ];
   zSHORT    lTempInteger_8;
   zCHAR     szTempString_53[ 33 ];
   zCHAR     szTempString_54[ 33 ];
   zCHAR     szTempString_55[ 33 ];
   zSHORT    lTempInteger_9;
   zSHORT    lTempInteger_10;
   zCHAR     szTempString_56[ 33 ];
   zCHAR     szTempString_57[ 33 ];
   zCHAR     szTempString_58[ 33 ];
   zCHAR     szTempString_59[ 33 ];
   zCHAR     szTempString_60[ 33 ];
   zCHAR     szTempString_61[ 33 ];
   zCHAR     szTempString_62[ 33 ];
   zCHAR     szTempString_63[ 33 ];
   zSHORT    lTempInteger_11;
   zCHAR     szTempString_64[ 33 ];
   zCHAR     szTempString_65[ 33 ];
   zCHAR     szTempString_66[ 33 ];
   zCHAR     szTempString_67[ 33 ];
   zSHORT    lTempInteger_12;
   zSHORT    lTempInteger_13;
   zSHORT    lTempInteger_14;
   zCHAR     szTempString_68[ 33 ];
   zCHAR     szTempString_69[ 33 ];
   zCHAR     szTempString_70[ 33 ];
   zCHAR     szTempString_71[ 33 ];
   zCHAR     szTempString_72[ 33 ];
   zSHORT    lTempInteger_15;
   zCHAR     szTempString_73[ 33 ];
   zCHAR     szTempString_74[ 33 ];
   zCHAR     szTempString_75[ 33 ];
   zSHORT    lTempInteger_16;
   zCHAR     szTempString_76[ 33 ];
   zCHAR     szTempString_77[ 33 ];
   zCHAR     szTempString_78[ 33 ];
   zCHAR     szTempString_79[ 33 ];
   zCHAR     szTempString_80[ 33 ];
   zCHAR     szTempString_81[ 33 ];
   zCHAR     szTempString_82[ 33 ];
   zCHAR     szTempString_83[ 33 ];
   zCHAR     szTempString_84[ 33 ];
   zCHAR     szTempString_85[ 33 ];
   zCHAR     szTempString_86[ 33 ];
   zCHAR     szTempString_87[ 33 ];
   zCHAR     szTempString_88[ 33 ];
   zSHORT    lTempInteger_17;
   zCHAR     szTempString_89[ 33 ];
   zCHAR     szTempString_90[ 33 ];
   zCHAR     szTempString_91[ 33 ];
   zCHAR     szTempString_92[ 33 ];
   zCHAR     szTempString_93[ 33 ];
   zCHAR     szTempString_94[ 33 ];
   zSHORT    lTempInteger_18;

   //:TraceLineS("*** DoInputMapping for view *** ",ViewName)
   TraceLineS( "*** DoInputMapping for view *** ", ViewName );

   //:// Handle mapping for the named view (ViewName) that was passed in.
   //:// Note that Control.SubType is an integer composed of multiple values,
   //:// but is always less than 12,000 for Domain Combos.  // not true!!!! // dks 2008.04.04
   //:FOR EACH vDialog.Control
   RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   {
      //:szControlType = vDialog.ControlDef.Tag
      GetVariableFromAttribute( szControlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
      //:TraceLineS("*** DoInputMapping looping through controls *** ",szControlType)
      TraceLineS( "*** DoInputMapping looping through controls *** ", szControlType );

      //:// To prevent cross-scripting attacks, we will run what was entered in the editbox field through some code that will
      //:// convert certain characters so that they are not html compatible (like "<" to "&lt;").  This is only for edit fields
      //:// where this is specified with XSS control property.
      //:szXSSEncode = ""
      ZeidonStringCopy( szXSSEncode, 1, 0, "", 1, 0, 2 );
      //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "XSS Encode"
      RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "XSS Encode", "" );
      //:IF RESULT >= zCURSOR_SET
      if ( RESULT >= zCURSOR_SET )
      {
         //:szXSSEncode = "Y"
         ZeidonStringCopy( szXSSEncode, 1, 0, "Y", 1, 0, 2 );
      }

      //:END

      //:szSurveyGroupFlag = ""
      ZeidonStringCopy( szSurveyGroupFlag, 1, 0, "", 1, 0, 2 );
      //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Survey Group"
      RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Survey Group", "" );
      //:IF RESULT >= zCURSOR_SET
      if ( RESULT >= zCURSOR_SET )
      {
         //:szSurveyGroupFlag = "Y"
         ZeidonStringCopy( szSurveyGroupFlag, 1, 0, "Y", 1, 0, 2 );
      }

      //:END

      //:lSubtype = vDialog.Control.Subtype
      GetIntegerFromAttribute( &lSubtype, vDialog, "Control", "Subtype" );
      //:lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_DISABLED )
      lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_DISABLED );
      //:IF lTemp != 0
      if ( lTemp != 0 )
      {
         //:// Disabled entries are skipped.
         //:ELSE
      }
      else
      {
         //:szCtrlTag = vDialog.Control.Tag
         GetVariableFromAttribute( szCtrlTag, 0, 'S', 51, vDialog, "Control", "Tag", "", 0 );
         //:// On 6/25/07, DonC eliminated the code that kept hidden fields from being mapped on input. Thus, hidden
         //:// fields are being mapped on both output and input.
         //:SET CURSOR FIRST vDialog.CtrlMapView WITHIN vDialog.Control
         //:           WHERE vDialog.CtrlMapView.Name = ViewName
         RESULT = SetCursorFirstEntityByString( vDialog, "CtrlMapView", "Name", ViewName, "Control" );
         //:IF RESULT >= zCURSOR_SET //AND vDialog.Control.WebCtrlType != "Hidden"
         if ( RESULT >= zCURSOR_SET )
         {

            //:szControlType = vDialog.ControlDef.Tag
            GetVariableFromAttribute( szControlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
            //:IF szControlType = "Text"     OR
            //:   szControlType = "EditBox"  OR
            //:   szControlType = "ComboBox"
            if ( ZeidonStringCompare( szControlType, 1, 0, "Text", 1, 0, 51 ) == 0 || ZeidonStringCompare( szControlType, 1, 0, "EditBox", 1, 0, 51 ) == 0 || ZeidonStringCompare( szControlType, 1, 0, "ComboBox", 1, 0, 51 ) == 0 )
            {

               //:szFlag = "8"   // SetAttribute.. will be by default Context.
               ZeidonStringCopy( szFlag, 1, 0, "8", 1, 0, 2 );
               //:ELSE
            }
            else
            {
               //:szFlag = "0"   // SetAttribute.. will NOT be by default Context.
               ZeidonStringCopy( szFlag, 1, 0, "0", 1, 0, 2 );
            }

            //:END

            //:IF szControlType = "EditBox"  OR
            //:   szControlType = "CheckBox" OR
            //:   szControlType = "MLEdit"   OR
            //:   szControlType = "RadioGrp"
            if ( ZeidonStringCompare( szControlType, 1, 0, "EditBox", 1, 0, 51 ) == 0 || ZeidonStringCompare( szControlType, 1, 0, "CheckBox", 1, 0, 51 ) == 0 || ZeidonStringCompare( szControlType, 1, 0, "MLEdit", 1, 0, 51 ) == 0 ||
                 ZeidonStringCompare( szControlType, 1, 0, "RadioGrp", 1, 0, 51 ) == 0 )
            {

               //:SET CURSOR FIRST vDialog.CtrlMapLOD_Attribute WITHIN vDialog.Control
               RESULT = SetCursorFirstEntity( vDialog, "CtrlMapLOD_Attribute", "Control" );
               //:IF RESULT >= zCURSOR_SET
               if ( RESULT >= zCURSOR_SET )
               {
                  //:IF vDialog.CtrlMapContext EXISTS
                  lTempInteger_0 = CheckExistenceOfEntity( vDialog, "CtrlMapContext" );
                  if ( lTempInteger_0 == 0 )
                  {
                     //:szContextName = vDialog.CtrlMapContext.Name
                     GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog, "CtrlMapContext", "Name", "", 0 );
                     //://If the user specifies a context name then we will use this
                     //://and not the default context.
                     //:szFlag = "0"
                     ZeidonStringCopy( szFlag, 1, 0, "0", 1, 0, 2 );
                     //:ELSE
                  }
                  else
                  {
                     //:szContextName = ""
                     ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                  }

                  //:END

                  //:szViewName = vDialog.CtrlMapView.Name
                  GetVariableFromAttribute( szViewName, 0, 'S', 51, vDialog, "CtrlMapView", "Name", "", 0 );
                  //:nViewNameLth = zstrlen( szViewName )
                  nViewNameLth = zstrlen( szViewName );

                  //:szWriteBuffer = "      // " + szControlType + ": " + szCtrlTag
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      // ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szControlType, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ": ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "      nRC = " + szViewName +
                  //:                                ".CheckExistenceOfEntity( strSID, ^" +
                  //:                                vDialog.CtrlMapRelatedEntity.Name + "^ );"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSID, ^", 1, 0, 10001 );
                  GetVariableFromAttribute( szTempString_0, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_0, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "      if ( nRC >= 0 )"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC >= 0 )", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "      {"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "         strMapValue = request.getParameter( ^" + szCtrlTag + "^ );"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         strMapValue = request.getParameter( ^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:IF szControlType = "EditBox" AND szXSSEncode = "Y"
                  if ( ZeidonStringCompare( szControlType, 1, 0, "EditBox", 1, 0, 51 ) == 0 && ZeidonStringCompare( szXSSEncode, 1, 0, "Y", 1, 0, 2 ) == 0 )
                  {
                     //:szWriteBuffer = "         strMapValue = ReplaceXSSValues( strMapValue );"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         strMapValue = ReplaceXSSValues( strMapValue );", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  }

                  //:END
                  //:szWriteBuffer = "         nRC = " + szViewName +
                  //:                                ".SetAttributeFromVariable( strSID, ^" +
                  //:                                vDialog.CtrlMapRelatedEntity.Name +
                  //:                                "^, ^" +
                  //:                                vDialog.CtrlMapER_Attribute.Name + "^,"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                  GetVariableFromAttribute( szTempString_1, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_1, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                  GetVariableFromAttribute( szTempString_2, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_2, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^,", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:zReplicate( " ", nViewNameLth, szWriteBuffer, 32 )
                  zReplicate( " ", nViewNameLth, szWriteBuffer, 32 );
                  //:szWriteBuffer = szWriteBuffer +
                  //:                "                                          strMapValue, 'S', 0, " +
                  //:                "^" + szContextName + "^, " + szFlag + " );"
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "                                          strMapValue, 'S', 0, ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szFlag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "         if ( nRC < 0 )"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC < 0 )", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "         {"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "            nMapError = nRC;"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "            nMapError = nRC;", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "            strError += ^" + szCtrlTag +
                  //:                "^ + ^\t^ + strMapValue + ^\t^;"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "            strError += ^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + ^\\t^ + strMapValue + ^\\t^;", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "         }"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "      }"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               }


               //:END
               //:ELSE
            }
            else
            {
               //:IF szControlType = "ComboBox"
               if ( ZeidonStringCompare( szControlType, 1, 0, "ComboBox", 1, 0, 51 ) == 0 )
               {

                  //:nRC = AreBitsSetInFlag( lSubtype, 61440 ) // 0x0000F000
                  nRC = AreBitsSetInFlag( lSubtype, 61440 );
                  //:IF nRC = 0   // IF vDialog.Control.Subtype < 12000  ==> Domain Combobox
                  if ( nRC == 0 )
                  {

                     //:// This is currently the same as Editbox above.
                     //:SET CURSOR FIRST vDialog.CtrlMapLOD_Attribute WITHIN vDialog.Control
                     RESULT = SetCursorFirstEntity( vDialog, "CtrlMapLOD_Attribute", "Control" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //:IF vDialog.CtrlMapContext EXISTS
                        lTempInteger_1 = CheckExistenceOfEntity( vDialog, "CtrlMapContext" );
                        if ( lTempInteger_1 == 0 )
                        {
                           //:szContextName = vDialog.CtrlMapContext.Name
                           GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog, "CtrlMapContext", "Name", "", 0 );
                           //://If the user specifies a context name then we will use this
                           //://and not the default context.
                           //:szFlag = "0"
                           ZeidonStringCopy( szFlag, 1, 0, "0", 1, 0, 2 );
                           //:ELSE
                        }
                        else
                        {
                           //:szContextName = ""
                           ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                        }

                        //:END

                        //:szViewName = vDialog.CtrlMapView.Name
                        GetVariableFromAttribute( szViewName, 0, 'S', 51, vDialog, "CtrlMapView", "Name", "", 0 );
                        //:nViewNameLth = zstrlen( szViewName )
                        nViewNameLth = zstrlen( szViewName );

                        //:szWriteBuffer = "      // " + szControlType + ": " + szCtrlTag
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "      // ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlType, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ": ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "      nRC = " + szViewName +
                        //:                          ".CheckExistenceOfEntity( strSID, ^" +
                        //:                          vDialog.CtrlMapRelatedEntity.Name + "^ );"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSID, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_3, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_3, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "      if ( nRC >= 0 )"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC >= 0 )", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "      {"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "         strMapValue = request.getParameter( ^h" +
                        //:             szCtrlTag + "^ );"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         strMapValue = request.getParameter( ^h", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                        //:szWriteBuffer = "         // If "
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         // If ", 1, 0, 10001 );
                        //:szWriteBuffer = "         if ( strMapValue != null )"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( strMapValue != null )", 1, 0, 10001 );
                        //:szWriteBuffer = "         {"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                        //:szWriteBuffer = "         }"  // Kelly ... purpose of these lines???
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );

                        //:szWriteBuffer = "         nRC = " + szViewName +
                        //:                             ".SetAttributeFromVariable( strSID, ^" +
                        //:                             vDialog.CtrlMapRelatedEntity.Name +
                        //:                             "^, ^" +
                        //:                             vDialog.CtrlMapER_Attribute.Name + "^,"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_4, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_4, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_5, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_5, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^,", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:zReplicate( " ", nViewNameLth, szWriteBuffer, 32 )
                        zReplicate( " ", nViewNameLth, szWriteBuffer, 32 );
                        //:szWriteBuffer = szWriteBuffer +
                        //:             "                                          strMapValue, 'S', 0, " +
                        //:             "^" + szContextName + "^, " + szFlag + " );"
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "                                          strMapValue, 'S', 0, ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szFlag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "         if ( nRC < 0 )"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC < 0 )", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "         {"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            nMapError = nRC;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            nMapError = nRC;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            strError += ^" + szCtrlTag +
                        //:             "^ + ^\t^ + strMapValue + ^\t^;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            strError += ^", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + ^\\t^ + strMapValue + ^\\t^;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "         }"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "      }"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                     }


                     //:END
                     //:ELSE
                  }
                  else
                  {
                     //:// Combobox with Auto Include or Set Position Only
                     //:// Note that this code is not executed if the view being
                     //:// passed is for the list mapping, instead of the edit
                     //:// mapping. Otherwise, the code would be generated twice,
                     //:// once when this routine is called for the edit view and
                     //:// once for the list view.
                     //:CreateViewFromView( vDialog2, vDialog )
                     CreateViewFromView( &vDialog2, vDialog );
                     //:SET CURSOR PREVIOUS vDialog2.CtrlMap
                     RESULT = SetCursorPrevEntity( vDialog2, "CtrlMap", "" );
                     //:IF RESULT < zCURSOR_SET
                     if ( RESULT < zCURSOR_SET )
                     {
                        //:// We were positioned on the first CtrlMap, which means we
                        //:// were being called for the edit view.
                        //:szWriteBuffer = "      // " + szControlType + ": " + szCtrlTag
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "      // ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlType, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ": ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                        //:// Position on second CtrlMap, which is for list mapping Attribute.
                        //:SET CURSOR NEXT vDialog2.CtrlMap
                        RESULT = SetCursorNextEntity( vDialog2, "CtrlMap", "" );

                        //:// Position on third CtrlMap, which is for list mapping Entity.
                        //:// If it is null, the list mapping entity is from the prior CtrlMap.
                        //:CreateViewFromView( vDialog3, vDialog2 )
                        CreateViewFromView( &vDialog3, vDialog2 );
                        //:SET CURSOR NEXT vDialog3.CtrlMap
                        RESULT = SetCursorNextEntity( vDialog3, "CtrlMap", "" );
                        //:IF vDialog3.CtrlMapLOD_Entity EXISTS
                        lTempInteger_2 = CheckExistenceOfEntity( vDialog3, "CtrlMapLOD_Entity" );
                        if ( lTempInteger_2 == 0 )
                        {
                           //:szListMappingEntityName = vDialog3.CtrlMapLOD_Entity.Name
                           GetVariableFromAttribute( szListMappingEntityName, 0, 'S', 33, vDialog3, "CtrlMapLOD_Entity", "Name", "", 0 );
                           //:ELSE
                        }
                        else
                        {
                           //:szListMappingEntityName = vDialog2.CtrlMapRelatedEntity.Name
                           GetVariableFromAttribute( szListMappingEntityName, 0, 'S', 33, vDialog2, "CtrlMapRelatedEntity", "Name", "", 0 );
                        }

                        //:END

                        //:// Position on fourth CtrlMap, which is for scoping Entity.
                        //:SET CURSOR NEXT vDialog3.CtrlMap
                        RESULT = SetCursorNextEntity( vDialog3, "CtrlMap", "" );
                        //:IF vDialog3.CtrlMapLOD_Entity EXISTS
                        lTempInteger_3 = CheckExistenceOfEntity( vDialog3, "CtrlMapLOD_Entity" );
                        if ( lTempInteger_3 == 0 )
                        {
                           //:szScopingEntityName = vDialog3.CtrlMapLOD_Entity.Name
                           GetVariableFromAttribute( szScopingEntityName, 0, 'S', 33, vDialog3, "CtrlMapLOD_Entity", "Name", "", 0 );
                           //:ELSE
                        }
                        else
                        {
                           //:szScopingEntityName = ""
                           ZeidonStringCopy( szScopingEntityName, 1, 0, "", 1, 0, 33 );
                        }

                        //:END

                        //:DropView( vDialog3 )
                        DropView( vDialog3 );

                        //:IF vDialog2.CtrlMapView EXISTS
                        lTempInteger_4 = CheckExistenceOfEntity( vDialog2, "CtrlMapView" );
                        if ( lTempInteger_4 == 0 )
                        {
                           //:szWriteBuffer = "      nRC = " + vDialog2.CtrlMapView.Name +
                           //:             ".GetView( strSID, ^" + vDialog2.CtrlMapView.Name + "^, vAS );"
                           GetVariableFromAttribute( szTempString_6, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_6, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSID, ^", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_7, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_7, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAS );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      if ( nRC > 0 )"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC > 0 )", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      {"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                           //:szWriteBuffer = "         strMapValue = request.getParameter( ^h" + szCtrlTag + "^ );"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         strMapValue = request.getParameter( ^h", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         if ( strMapValue != null )"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( strMapValue != null )", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         {"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "            nRelPos = java.lang.Integer.parseInt( strMapValue );"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRelPos = java.lang.Integer.parseInt( strMapValue );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                           //:IF vDialog.Control.Subtype >= 20480 AND vDialog.Control.Subtype <= 21252   // IF Auto Include
                           if ( CompareAttributeToInteger( vDialog, "Control", "Subtype", 20480 ) >= 0 && CompareAttributeToInteger( vDialog, "Control", "Subtype", 21252 ) <= 0 )
                           {
                              //:// For Auto Include, we must decrement nRelPos for blank entry.
                              //:szWriteBuffer = "            nRelPos--;    // For Auto Include combos, we need to decrement for the blank entry."
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRelPos--;    // For Auto Include combos, we need to decrement for the blank entry.", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           }

                           //:END

                           //:szWriteBuffer = "            nRC = " + vDialog2.CtrlMapView.Name +
                           //:             ".SetCursorFirst( strSID, ^" + szListMappingEntityName + "^, ^" + szScopingEntityName + "^ );"
                           GetVariableFromAttribute( szTempString_8, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRC = ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_8, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSID, ^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szListMappingEntityName, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "            if ( nRC >= 0 )"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( nRC >= 0 )", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "               " + vDialog2.CtrlMapView.Name +
                           //:             ".SetCursor( strSID, ^" + szListMappingEntityName + "^, nRelPos, ^" + szScopingEntityName + "^ );"
                           GetVariableFromAttribute( szTempString_9, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "               ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_9, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursor( strSID, ^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szListMappingEntityName, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^, nRelPos, ^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         }"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                           //:IF vDialog.Control.Subtype >= 36864 AND vDialog.Control.Subtype <= 45056   // IF Set Foreign Key
                           if ( CompareAttributeToInteger( vDialog, "Control", "Subtype", 36864 ) >= 0 && CompareAttributeToInteger( vDialog, "Control", "Subtype", 45056 ) <= 0 )
                           {
                              //://Set Foreign Key
                              //:szWriteBuffer = " "
                              ZeidonStringCopy( szWriteBuffer, 1, 0, " ", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         // Set Foreign Key Code "
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         // Set Foreign Key Code ", 1, 0, 10001 );
                              //://Check the existence of the edit mapping entity
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         nRC = " + vDialog.CtrlMapView.Name +
                              //:             ".CheckExistenceOfEntity( strSID, ^" +
                              //:             vDialog.CtrlMapRelatedEntity.Name + "^ );"
                              GetVariableFromAttribute( szTempString_10, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_10, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_11, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_11, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         if ( nRC >= 0 )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:IF vDialog2.CtrlMapContext EXISTS
                              lTempInteger_5 = CheckExistenceOfEntity( vDialog2, "CtrlMapContext" );
                              if ( lTempInteger_5 == 0 )
                              {
                                 //:szContextName = vDialog2.CtrlMapContext.Name
                                 GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog2, "CtrlMapContext", "Name", "", 0 );
                                 //://If the user specifies a context name then we will use this
                                 //://and not the default context.
                                 //:szFlag = "0"
                                 ZeidonStringCopy( szFlag, 1, 0, "0", 1, 0, 2 );
                                 //:ELSE
                              }
                              else
                              {
                                 //:szFlag = "8"
                                 ZeidonStringCopy( szFlag, 1, 0, "8", 1, 0, 2 );
                                 //:szContextName = ""
                                 ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                              }

                              //:END

                              //:IF vDialog2.CtrlMapER_Domain.MaxStringLth > 254
                              if ( CompareAttributeToInteger( vDialog2, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
                              {
                                 //:lMaxStringLength = vDialog2.CtrlMapER_Domain.MaxStringLth
                                 GetIntegerFromAttribute( &lMaxStringLength, vDialog2, "CtrlMapER_Domain", "MaxStringLth" );
                                 //:szMaxStringLength = lMaxStringLength
                                 ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
                                 //:ELSE
                              }
                              else
                              {
                                 //:szMaxStringLength = "254"
                                 ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
                              }

                              //:END

                              //:szWriteBuffer = "            strMapValue = " + vDialog2.CtrlMapView.Name +
                              //:".GetStringFromAttributeByContext( strSID, ^" +
                              //:vDialog2.CtrlMapRelatedEntity.Name + "^, ^" +
                              //:vDialog2.CtrlMapER_Attribute.Name + "^, ^" + szContextName + "^, " + szMaxStringLength + " );"
                              GetVariableFromAttribute( szTempString_12, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            strMapValue = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_12, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_13, 0, 'S', 33, vDialog2, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_13, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_14, 0, 'S', 33, vDialog2, "CtrlMapER_Attribute", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_14, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );


                              //:IF vDialog.CtrlMapContext EXISTS
                              lTempInteger_6 = CheckExistenceOfEntity( vDialog, "CtrlMapContext" );
                              if ( lTempInteger_6 == 0 )
                              {
                                 //:szContextName = vDialog.CtrlMapContext.Name
                                 GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog, "CtrlMapContext", "Name", "", 0 );
                                 //://If the user specifies a context name then we will use this
                                 //://and not the default context.
                                 //:szFlag = "0"
                                 ZeidonStringCopy( szFlag, 1, 0, "0", 1, 0, 2 );
                                 //:ELSE
                              }
                              else
                              {
                                 //:szFlag = "8"
                                 ZeidonStringCopy( szFlag, 1, 0, "8", 1, 0, 2 );
                                 //:szContextName = ""
                                 ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                              }

                              //:END

                              //:szWriteBuffer = "            nRC = " + vDialog.CtrlMapView.Name +
                              //:".SetAttributeFromVariable( strSID, ^" +
                              //:vDialog.CtrlMapRelatedEntity.Name + "^, ^" +
                              //:vDialog.CtrlMapER_Attribute.Name + "^, strMapValue, 'S', 0, ^" + szContextName + "^, " + szFlag + " );"
                              GetVariableFromAttribute( szTempString_15, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_15, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_16, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_16, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_17, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_17, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, strMapValue, 'S', 0, ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szFlag, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:szWriteBuffer = "         }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           }

                           //:END

                           //:// IF Auto Include
                           //:IF vDialog.Control.Subtype >= 20480 AND vDialog.Control.Subtype <= 21252   // IF Auto Include
                           if ( CompareAttributeToInteger( vDialog, "Control", "Subtype", 20480 ) >= 0 && CompareAttributeToInteger( vDialog, "Control", "Subtype", 21252 ) <= 0 )
                           {
                              //:// Auto Include only.
                              //:szWriteBuffer = " "
                              ZeidonStringCopy( szWriteBuffer, 1, 0, " ", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         // Auto Include Code "
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         // Auto Include Code ", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         // If the value is ^0^ then the user has selected the null entry, we do not want to do an include."
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         // If the value is ^0^ then the user has selected the null entry, we do not want to do an include.", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         // If there is an entity, we want to exclude it. "
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         // If there is an entity, we want to exclude it. ", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:szWriteBuffer = "         if ( !strMapValue.equals(^0^))"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( !strMapValue.equals(^0^))", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:szWriteBuffer = "            nRC = " + vDialog.CtrlMapView.Name +
                              //:             ".CheckExistenceOfEntity( strSID, ^" +
                              //:             vDialog.CtrlMapRelatedEntity.Name + "^ );"
                              GetVariableFromAttribute( szTempString_18, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_18, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_19, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_19, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            if ( nRC >= 0 )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( nRC >= 0 )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //://KJS 12/11/07 - Adding code to check if we are already positioned on the correct
                              //://Entity, so then we would not want to exclude and include.  Seems like this is only
                              //://going to matter if this combo box is in a grid.
                              //://KELLY121008
                              //:szWriteBuffer = "               // Only do the automatic include if this is a different entity"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               // Only do the automatic include if this is a different entity", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               strTemp = " + vDialog.CtrlMapView.Name + ".GetString( strSID, ^" +
                              //:             vDialog.CtrlMapRelatedEntity.Name + "^, ^" + vDialog.CtrlMapER_Attribute.Name + "^ );"
                              GetVariableFromAttribute( szTempString_20, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               strTemp = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_20, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetString( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_21, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_21, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_22, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_22, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );

                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:szWriteBuffer = "               if ( !strTemp.equals( " + vDialog2.CtrlMapView.Name +
                              //:             ".GetString( strSID, ^" +
                              //:             vDialog2.CtrlMapRelatedEntity.Name + "^, ^" + vDialog2.CtrlMapER_Attribute.Name + "^ ))) "
                              GetVariableFromAttribute( szTempString_23, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               if ( !strTemp.equals( ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_23, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetString( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_24, 0, 'S', 33, vDialog2, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_24, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_25, 0, 'S', 33, vDialog2, "CtrlMapER_Attribute", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_25, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ))) ", 1, 0, 10001 );

                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  " + vDialog.CtrlMapView.Name +
                              //:             ".ExcludeEntity( strSID, ^" +
                              //:             vDialog.CtrlMapRelatedEntity.Name +
                              //:             "^, " + vDialog.CtrlMapView.Name + ".zREPOS_NONE );"
                              GetVariableFromAttribute( szTempString_26, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_26, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".ExcludeEntity( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_27, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_27, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_28, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_28, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".zREPOS_NONE );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  " + vDialog.CtrlMapView.Name +
                              //:             ".IncludeSubobjectFromSubobject( strSID, ^" +
                              //:             vDialog.CtrlMapRelatedEntity.Name + "^, " +
                              //:             vDialog2.CtrlMapView.Name + ", ^" +
                              //:             vDialog2.CtrlMapRelatedEntity.Name +
                              //:             "^, " + vDialog.CtrlMapView.Name + ".zPOS_AFTER );"
                              GetVariableFromAttribute( szTempString_29, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_29, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".IncludeSubobjectFromSubobject( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_30, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_30, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_31, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_31, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ", ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_32, 0, 'S', 33, vDialog2, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_32, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_33, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_33, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".zPOS_AFTER );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:szWriteBuffer = "            }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            else"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            else", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  " + vDialog.CtrlMapView.Name +
                              //:             ".IncludeSubobjectFromSubobject( strSID, ^" +
                              //:             vDialog.CtrlMapRelatedEntity.Name + "^, " +
                              //:             vDialog2.CtrlMapView.Name + ", ^" +
                              //:             vDialog2.CtrlMapRelatedEntity.Name +
                              //:             "^, " + vDialog.CtrlMapView.Name + ".zPOS_AFTER );"
                              GetVariableFromAttribute( szTempString_34, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_34, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".IncludeSubobjectFromSubobject( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_35, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_35, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_36, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_36, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ", ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_37, 0, 'S', 33, vDialog2, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_37, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_38, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_38, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".zPOS_AFTER );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:szWriteBuffer = "         }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         else"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         else", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            nRC = " + vDialog.CtrlMapView.Name +
                              //:             ".CheckExistenceOfEntity( strSID, ^" +
                              //:             vDialog.CtrlMapRelatedEntity.Name + "^ );"
                              GetVariableFromAttribute( szTempString_39, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_39, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_40, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_40, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            if ( nRC >= 0 )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( nRC >= 0 )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  " + vDialog.CtrlMapView.Name +
                              //:             ".ExcludeEntity( strSID, ^" +
                              //:             vDialog.CtrlMapRelatedEntity.Name +
                              //:             "^, " + vDialog.CtrlMapView.Name + ".zREPOS_NONE );"
                              GetVariableFromAttribute( szTempString_41, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_41, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".ExcludeEntity( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_42, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_42, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_43, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_43, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".zREPOS_NONE );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           }


                           //:END

                           //:szWriteBuffer = "      }"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                           //:ELSE
                        }
                        else
                        {
                           //:MessageSend( vDialog, "", "XSL Generation",
                           //:          "Missing List Mapping.",
                           //:          zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 )
                           MessageSend( vDialog, "", "XSL Generation", "Missing List Mapping.", zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 );
                        }

                        //:END
                     }

                     //:END

                     //:DropView( vDialog2 )
                     DropView( vDialog2 );
                  }


                  //:END
                  //:ELSE
               }
               else
               {
                  //:IF szControlType = "ListBox"
                  if ( ZeidonStringCompare( szControlType, 1, 0, "ListBox", 1, 0, 51 ) == 0 )
                  {
                     //:szScopingEntityName = ""
                     ZeidonStringCopy( szScopingEntityName, 1, 0, "", 1, 0, 33 );
                     //:CreateViewFromView( vDialog2, vDialog )
                     CreateViewFromView( &vDialog2, vDialog );
                     //:SET CURSOR NEXT vDialog2.CtrlMap
                     RESULT = SetCursorNextEntity( vDialog2, "CtrlMap", "" );
                     //:IF vDialog2.CtrlMapLOD_Entity EXISTS
                     lTempInteger_7 = CheckExistenceOfEntity( vDialog2, "CtrlMapLOD_Entity" );
                     if ( lTempInteger_7 == 0 )
                     {
                        //:szScopingEntityName = vDialog2.CtrlMapLOD_Entity.Name
                        GetVariableFromAttribute( szScopingEntityName, 0, 'S', 33, vDialog2, "CtrlMapLOD_Entity", "Name", "", 0 );
                     }

                     //:END

                     //:szWriteBuffer = "      // " + szControlType + ": " + szCtrlTag
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      // ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szControlType, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ": ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //://szWriteBuffer = "      " + vDialog.CtrlMapView.Name +
                     //://                ".SetAllSelectStatesForEntity( strSID, ^" +
                     //://                vDialog.CtrlMapLOD_Entity.Name +
                     //://                "^, (short) 0, ^" + szScopingEntityName + "^ );"
                     //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     //://szWriteBuffer = "      " + vDialog.CtrlMapView.Name +
                     //://                ".SetCursorFirst( strSID, ^" +
                     //://                vDialog.CtrlMapLOD_Entity.Name +
                     //://                "^, ^" + szScopingEntityName + "^ );"
                     //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )

                     //:szWriteBuffer = "      strMapValue = request.getParameter( ^h" + szCtrlTag + "^ );"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      strMapValue = request.getParameter( ^h", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "      if ( strMapValue != null )"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( strMapValue != null )", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "      {"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         nRelPos = java.lang.Integer.parseInt( strMapValue );"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRelPos = java.lang.Integer.parseInt( strMapValue );", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         nRC = " + vDialog.CtrlMapView.Name +
                     //:          ".SetCursorFirst( strSID, ^" + vDialog.CtrlMapLOD_Entity.Name +
                     //:          "^, ^" + szScopingEntityName + "^ );"
                     GetVariableFromAttribute( szTempString_44, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_44, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSID, ^", 1, 0, 10001 );
                     GetVariableFromAttribute( szTempString_45, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_45, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         if ( nRC >= 0 )"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 )", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                     //:szWriteBuffer = "            " + vDialog.CtrlMapView.Name +
                     //:          ".SetCursor( strSID, ^" + vDialog.CtrlMapLOD_Entity.Name +
                     //:          "^, nRelPos, ^" + szScopingEntityName + "^ );"
                     GetVariableFromAttribute( szTempString_46, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_46, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursor( strSID, ^", 1, 0, 10001 );
                     GetVariableFromAttribute( szTempString_47, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_47, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "^, nRelPos, ^", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                     //://szWriteBuffer = "         " + vDialog.CtrlMapView.Name +
                     //://                ".SetSelectStateOfEntity( strSID, ^" +
                     //://                vDialog.CtrlMapLOD_Entity.Name + "^, (short) 1 );"
                     //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )

                     //:szWriteBuffer = "      }"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:DropView( vDialog2 )
                     DropView( vDialog2 );

                     //:ELSE
                  }
                  else
                  {
                     //:IF szControlType = "Calendar"
                     if ( ZeidonStringCompare( szControlType, 1, 0, "Calendar", 1, 0, 51 ) == 0 )
                     {
                        //:SET CURSOR FIRST vDialog.CtrlMapLOD_Attribute WITHIN vDialog.Control
                        RESULT = SetCursorFirstEntity( vDialog, "CtrlMapLOD_Attribute", "Control" );
                        //:IF RESULT >= zCURSOR_SET
                        if ( RESULT >= zCURSOR_SET )
                        {
                           //:szWriteBuffer = "      // " + szControlType + ": " + szCtrlTag
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      // ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szControlType, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ": ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szViewName = vDialog.CtrlMapView.Name
                           GetVariableFromAttribute( szViewName, 0, 'S', 51, vDialog, "CtrlMapView", "Name", "", 0 );
                           //:szWriteBuffer = "      nRC = " + szViewName +
                           //:              ".CheckExistenceOfEntity( strSID, ^" +
                           //:              vDialog.CtrlMapRelatedEntity.Name + "^ );"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSID, ^", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_48, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_48, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      if ( nRC >= 0 )"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC >= 0 )", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      {"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         strMapValue = request.getParameter( ^" + szCtrlTag + "^ );"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         strMapValue = request.getParameter( ^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         strDateFormat = request.getParameter( ^zDateFormat^ );"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         strDateFormat = request.getParameter( ^zDateFormat^ );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         nRC = " + vDialog.CtrlMapView.Name +
                           //:       ".SetAttributeFromVariable( strSID, ^" +
                           //:       vDialog.CtrlMapRelatedEntity.Name +
                           //:       "^, ^" + vDialog.CtrlMapER_Attribute.Name + "^,"
                           GetVariableFromAttribute( szTempString_49, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_49, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_50, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_50, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_51, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_51, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^,", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:zReplicate( " ", nViewNameLth, szWriteBuffer, 32 )
                           zReplicate( " ", nViewNameLth, szWriteBuffer, 32 );
                           //:szWriteBuffer = szWriteBuffer +
                           //:       "                                          strMapValue, 'S', 0, strDateFormat, 0 );"
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "                                          strMapValue, 'S', 0, strDateFormat, 0 );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         if ( nRC < 0 )"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC < 0 )", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         {"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "            nMapError = nRC;"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "            nMapError = nRC;", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "            strError += ^" + szCtrlTag +
                           //:       "^ + ^\t^ + strMapValue + ^\t^;"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "            strError += ^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + ^\\t^ + strMapValue + ^\\t^;", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         }"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      }"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                           //:WL_QC( vDialog, lFile, "", "^", 0 )
                           WL_QC( vDialog, lFile, "", "^", 0 );
                        }


                        //:END
                        //:ELSE
                     }
                     else
                     {
                        //:IF szControlType = "Grid"
                        if ( ZeidonStringCompare( szControlType, 1, 0, "Grid", 1, 0, 51 ) == 0 )
                        {

                           //:szCtrlTag = vDialog.Control.Tag
                           GetVariableFromAttribute( szCtrlTag, 0, 'S', 51, vDialog, "Control", "Tag", "", 0 );
                           //:szWriteBuffer = "      // " + szControlType + ": " + szCtrlTag
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      // ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szControlType, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ": ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      iTableRowCnt = 0;"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      iTableRowCnt = 0;", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                           //:// KJS 5/1/08 - Create a temp view to the grid view and loop through that creating the mapping.
                           //:// That way, if there are other grids on the page using the same view, we have not messed up
                           //:// the positioning for their mapping.
                           //:szWriteBuffer = "      // We are creating a temp view to the grid view so that if there are "
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      // We are creating a temp view to the grid view so that if there are ", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      // grids on the same window with the same view we do not mess up the "
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      // grids on the same window with the same view we do not mess up the ", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      // entity positions. "
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      // entity positions. ", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      vGridTmp.CreateViewFromView( strSID, " + vDialog.CtrlMapView.Name + " );"
                           GetVariableFromAttribute( szTempString_52, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      vGridTmp.CreateViewFromView( strSID, ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_52, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                           //:// See if a scoping entity has been specified, and if so, use it.
                           //:lSubtypeX = vDialog.Control.ExtendedStyle
                           GetIntegerFromAttribute( &lSubtypeX, vDialog, "Control", "ExtendedStyle" );
                           //:lSubtypeX = IsFlagSequenceSet( lSubtypeX, zSS_SCOPE_OI )
                           lSubtypeX = IsFlagSequenceSet( lSubtypeX, zSS_SCOPE_OI );
                           //:IF lSubtypeX = 0
                           if ( lSubtypeX == 0 )
                           {
                              //:CreateViewFromView( vDialog2, vDialog )
                              CreateViewFromView( &vDialog2, vDialog );
                              //:SET CURSOR NEXT vDialog2.CtrlMap
                              RESULT = SetCursorNextEntity( vDialog2, "CtrlMap", "" );
                              //:IF vDialog2.CtrlMapLOD_Entity EXISTS
                              lTempInteger_8 = CheckExistenceOfEntity( vDialog2, "CtrlMapLOD_Entity" );
                              if ( lTempInteger_8 == 0 )
                              {
                                 //:szScopingEntityName = vDialog2.CtrlMapLOD_Entity.Name
                                 GetVariableFromAttribute( szScopingEntityName, 0, 'S', 33, vDialog2, "CtrlMapLOD_Entity", "Name", "", 0 );
                                 //:ELSE
                              }
                              else
                              {
                                 //:szScopingEntityName = ""
                                 ZeidonStringCopy( szScopingEntityName, 1, 0, "", 1, 0, 33 );
                              }

                              //:END

                              //:DropView( vDialog2 )
                              DropView( vDialog2 );
                              //:szWriteBuffer = "      nRC = vGridTmp.SetCursorFirst( strSID, ^" +
                              //:vDialog.CtrlMapLOD_Entity.Name + "^, ^" + szScopingEntityName + "^ );"
                              GetVariableFromAttribute( szTempString_53, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = vGridTmp.SetCursorFirst( strSID, ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_53, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                              //:ELSE
                           }
                           else
                           {
                              //:szWriteBuffer = "      nRC = vGridTmp.SetCursorScopeOI( strSID, ^" +
                              //:vDialog.CtrlMapLOD_Entity.Name + "^, 1 ); // first" // zPOS_FIRST
                              GetVariableFromAttribute( szTempString_54, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = vGridTmp.SetCursorScopeOI( strSID, ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_54, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, 1 ); // first", 1, 0, 10001 );
                           }

                           //:END

                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      while ( nRC >= 0 )"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      while ( nRC >= 0 )", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      {"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         lEntityKey = " +
                           //:              "vGridTmp.GetEntityKey( strSID, ^" + vDialog.CtrlMapLOD_Entity.Name + "^ );"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         lEntityKey = ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "vGridTmp.GetEntityKey( strSID, ^", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_55, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_55, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         strEntityKey = Integer.toString( lEntityKey );"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         strEntityKey = Integer.toString( lEntityKey );", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "         iTableRowCnt++;"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         iTableRowCnt++;", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                           //:// szWriteBuffer = "         strSuffix = Integer.toString( iTableRowCnt );"
                           //:// WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )

                           //:// Process each subcontrol.
                           //:SetViewToSubobject( vDialog, "CtrlCtrl" )
                           SetViewToSubobject( vDialog, "CtrlCtrl" );
                           //:FOR EACH vDialog.Control
                           RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
                           while ( RESULT > zCURSOR_UNCHANGED )
                           {

                              //:szCtrlCtrlType = vDialog.ControlDef.Tag
                              GetVariableFromAttribute( szCtrlCtrlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );

                              //:IF szCtrlCtrlType = "GridSubCtl" AND vDialog.CtrlCtrl EXISTS
                              lTempInteger_9 = CheckExistenceOfEntity( vDialog, "CtrlCtrl" );
                              if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridSubCtl", 1, 0, 51 ) == 0 && lTempInteger_9 == 0 )
                              {
                                 //:SetViewToSubobject( vDialog, "CtrlCtrl" )
                                 SetViewToSubobject( vDialog, "CtrlCtrl" );
                                 //:bResetToPlaceHolder = 1
                                 bResetToPlaceHolder = 1;
                                 //:szCtrlCtrlType = vDialog.ControlDef.Tag
                                 GetVariableFromAttribute( szCtrlCtrlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
                                 //:ELSE
                              }
                              else
                              {
                                 //:bResetToPlaceHolder = 0
                                 bResetToPlaceHolder = 0;
                              }

                              //:END

                              //:szCtrlTag = vDialog.Control.Tag
                              GetVariableFromAttribute( szCtrlTag, 0, 'S', 51, vDialog, "Control", "Tag", "", 0 );
                              //:IF szCtrlCtrlType = "EditBox" OR
                              //:szCtrlCtrlType = "ComboBox" OR
                              //:szCtrlCtrlType = "GridEditCtl" OR
                              //:szCtrlCtrlType = "GridComboCtl"
                              if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "EditBox", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "ComboBox", 1, 0, 51 ) == 0 ||
                        ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridEditCtl", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridComboCtl", 1, 0, 51 ) == 0 )
                              {
                                 //:szFlag = "8"   // SetAttribute... will be by default Context.
                                 ZeidonStringCopy( szFlag, 1, 0, "8", 1, 0, 2 );
                                 //:ELSE
                              }
                              else
                              {
                                 //:szFlag = "0"   // SetAttribute... will NOT be by default Context.
                                 ZeidonStringCopy( szFlag, 1, 0, "0", 1, 0, 2 );
                              }

                              //:END

                              //:IF szCtrlCtrlType = "ComboBox" OR szCtrlCtrlType = "GridComboCtl"
                              if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "ComboBox", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridComboCtl", 1, 0, 51 ) == 0 )
                              {
                                 //://If this is a combobox, then we get our request.GetParameter from the
                                 //://hidden field (ex: hComboBox1)
                                 //:szhFlag = "h"
                                 ZeidonStringCopy( szhFlag, 1, 0, "h", 1, 0, 2 );
                                 //:ELSE
                              }
                              else
                              {
                                 //:szhFlag = ""
                                 ZeidonStringCopy( szhFlag, 1, 0, "", 1, 0, 2 );
                              }

                              //:END

                              //://KELLY - Would I want to make an "IF" statement here to check if this control id
                              //://is disabled.  If so, I assume I don't want to create any of the mapping code.

                              //:IF  vDialog.Control.Disabled != "Y"
                              if ( CompareAttributeToString( vDialog, "Control", "Disabled", "Y" ) != 0 )
                              {

                                 //://KJS 7/25/07 - Check if this control should be an edit control
                                 //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Edit"
                                 RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Edit", "" );
                                 //:IF RESULT >= zCURSOR_SET
                                 if ( RESULT >= zCURSOR_SET )
                                 {
                                    //:szWCP_Edit = "Y"
                                    ZeidonStringCopy( szWCP_Edit, 1, 0, "Y", 1, 0, 2 );
                                    //:ELSE
                                 }
                                 else
                                 {
                                    //:szWCP_Edit = "N"
                                    ZeidonStringCopy( szWCP_Edit, 1, 0, "N", 1, 0, 2 );
                                 }

                                 //:END

                                 //:// If this is an edit box, then set the mapping code.
                                 //:IF vDialog.Control.WebCtrlType = "Edit" OR szWCP_Edit = "Y"
                                 if ( CompareAttributeToString( vDialog, "Control", "WebCtrlType", "Edit" ) == 0 || ZeidonStringCompare( szWCP_Edit, 1, 0, "Y", 1, 0, 2 ) == 0 )
                                 {

                                    //:lEditBox = 1
                                    lEditBox = 1;

                                    //:szContextName = ""
                                    ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                                    //:SET CURSOR FIRST vDialog.CtrlMapLOD_Attribute WITHIN vDialog.Control
                                    RESULT = SetCursorFirstEntity( vDialog, "CtrlMapLOD_Attribute", "Control" );
                                    //:IF RESULT >= zCURSOR_SET
                                    if ( RESULT >= zCURSOR_SET )
                                    {
                                       //:IF vDialog.CtrlMapContext EXISTS
                                       lTempInteger_10 = CheckExistenceOfEntity( vDialog, "CtrlMapContext" );
                                       if ( lTempInteger_10 == 0 )
                                       {
                                          //:szContextName = vDialog.CtrlMapContext.Name
                                          GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog, "CtrlMapContext", "Name", "", 0 );
                                          //://If the user specifies a context name then we will use this
                                          //://and not the default context.
                                          //:szFlag = "0"
                                          ZeidonStringCopy( szFlag, 1, 0, "0", 1, 0, 2 );
                                          //:ELSE
                                       }
                                       else
                                       {
                                          //:szContextName = ""
                                          ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                                       }

                                       //:END
                                    }

                                    //:END

                                    //://szWriteBuffer = "         strTag = ^@" + szCtrlTag + "#^ + strEntityKey;"
                                    //:szWriteBuffer = "         strTag = ^" + szCtrlTag + "::^ + strEntityKey;"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         strTag = ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "::^ + strEntityKey;", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "         strMapValue = request.getParameter( strTag );"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         strMapValue = request.getParameter( strTag );", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                    //:// If strMapValue is null, then that means that this row of the grid is being hidden and so
                                    //:// no value was assigned.  If this is the case, then we do not want to process this row so ignore.
                                    //:szWriteBuffer = "         if ( strMapValue != null ) "
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( strMapValue != null ) ", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "         { "
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         { ", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                    //:IF vDialog.CtrlMapER_Domain.MaxStringLth > 254
                                    if ( CompareAttributeToInteger( vDialog, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
                                    {
                                       //:lMaxStringLength = vDialog.CtrlMapER_Domain.MaxStringLth
                                       GetIntegerFromAttribute( &lMaxStringLength, vDialog, "CtrlMapER_Domain", "MaxStringLth" );
                                       //:szMaxStringLength = lMaxStringLength
                                       ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
                                       //:ELSE
                                    }
                                    else
                                    {
                                       //:szMaxStringLength = "254"
                                       ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
                                    }

                                    //:END

                                    //:szWriteBuffer = "            strTemp = vGridTmp.GetStringFromAttributeByContext( strSID, ^" +
                                    //:                      vDialog.CtrlMapRelatedEntity.Name + "^, ^" + vDialog.CtrlMapER_Attribute.Name +
                                    //:                      "^, ^" + szContextName + "^, " + szMaxStringLength + " );"
                                    GetVariableFromAttribute( szTempString_56, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "            strTemp = vGridTmp.GetStringFromAttributeByContext( strSID, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_56, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    GetVariableFromAttribute( szTempString_57, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_57, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "            if ( strTemp.compareTo( strMapValue ) != 0 )"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( strTemp.compareTo( strMapValue ) != 0 )", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "            {"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "               nRC = vGridTmp.SetAttributeFromVariable( strSID, ^" +
                                    //:                       vDialog.CtrlMapRelatedEntity.Name + "^, ^" + vDialog.CtrlMapER_Attribute.Name +
                                    //:                       "^, strMapValue, 'S', 0, ^" + szContextName + "^, " + szFlag + " );"
                                    GetVariableFromAttribute( szTempString_58, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "               nRC = vGridTmp.SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_58, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    GetVariableFromAttribute( szTempString_59, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_59, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, strMapValue, 'S', 0, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szFlag, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "               if ( nRC < 0 )"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "               if ( nRC < 0 )", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "               {"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "               {", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "                  nMapError = nRC;"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "                  nMapError = nRC;", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "                  strError += strTag + ^\t^ + strMapValue + ^\t^;"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "                  strError += strTag + ^\\t^ + strMapValue + ^\\t^;", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "               }"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "               }", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "            }"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                                    //:szWriteBuffer = "         } "
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         } ", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );


                                    //:ELSE
                                 }
                                 else
                                 {
                                    //:lEditBox = 0
                                    lEditBox = 0;
                                 }

                                 //:END

                                 //:IF ( szCtrlCtrlType = "GridCheckCtl" OR szCtrlCtrlType = "CheckBox" ) AND vDialog.Control.Disabled != "Y" //DonC added 7/25/07
                                 if ( ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridCheckCtl", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "CheckBox", 1, 0, 51 ) == 0 ) &&
                        CompareAttributeToString( vDialog, "Control", "Disabled", "Y" ) != 0 )
                                 {

                                    //:szWriteBuffer = "         strTag = ^" + szCtrlTag + "^ + strEntityKey;"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         strTag = ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + strEntityKey;", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "         strMapValue" + szSuffix + " = request.getParameter( strTag );"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         strMapValue", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szSuffix, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, " = request.getParameter( strTag );", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "         if ( strMapValue" + szSuffix + " != null )"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( strMapValue", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szSuffix, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, " != null )", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szCheckBoxValue = vDialog.Control.RadioOrCheckboxValue
                                    GetVariableFromAttribute( szCheckBoxValue, 0, 'S', 51, vDialog, "Control", "RadioOrCheckboxValue", "", 0 );
                                    //:szWriteBuffer = "            vGridTmp.SetAttributeFromVariable( strSID, ^" +
                                    //:vDialog.CtrlMapRelatedEntity.Name +
                                    //:"^, ^" + vDialog.CtrlMapER_Attribute.Name +
                                    //:"^, ^" + szCheckBoxValue + "^, 'S', 0, ^^, 0 );"
                                    GetVariableFromAttribute( szTempString_60, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "            vGridTmp.SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_60, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    GetVariableFromAttribute( szTempString_61, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_61, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szCheckBoxValue, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, 'S', 0, ^^, 0 );", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "         else"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         else", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "'", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "'", 0 );
                                    //:szWriteBuffer = "            vGridTmp.SetAttributeFromVariable( strSID, ^" +
                                    //:vDialog.CtrlMapRelatedEntity.Name +
                                    //:"^, ^" + vDialog.CtrlMapER_Attribute.Name +
                                    //:"^, ^^, 'S', 0, ^^, 0 );"
                                    GetVariableFromAttribute( szTempString_62, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "            vGridTmp.SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_62, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    GetVariableFromAttribute( szTempString_63, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_63, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^^, 'S', 0, ^^, 0 );", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                                 }

                                 //:END

                                 //:IF szCtrlCtrlType = "ComboBox" OR
                                 //:szCtrlCtrlType = "GridComboCtl"
                                 if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "ComboBox", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridComboCtl", 1, 0, 51 ) == 0 )
                                 {

                                    //:lSubtype = vDialog.Control.Subtype
                                    GetIntegerFromAttribute( &lSubtype, vDialog, "Control", "Subtype" );
                                    //:lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_DISABLED )
                                    lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_DISABLED );
                                    //:IF lTemp = 0
                                    if ( lTemp == 0 )
                                    {
                                       //:IF vDialog.CtrlMapContext EXISTS
                                       lTempInteger_11 = CheckExistenceOfEntity( vDialog, "CtrlMapContext" );
                                       if ( lTempInteger_11 == 0 )
                                       {
                                          //:szContextName = vDialog.CtrlMapContext.Name
                                          GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog, "CtrlMapContext", "Name", "", 0 );
                                          //://If the user specifies a context name then we will use this
                                          //://and not the default context.
                                          //:szFlag = "0"
                                          ZeidonStringCopy( szFlag, 1, 0, "0", 1, 0, 2 );
                                          //:ELSE
                                       }
                                       else
                                       {
                                          //:szContextName = ""
                                          ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                                       }

                                       //:END

                                       //:lSubtype = vDialog.Control.Subtype
                                       GetIntegerFromAttribute( &lSubtype, vDialog, "Control", "Subtype" );
                                       //:nRC = AreBitsSetInFlag( lSubtype, 61440 ) // 0x0000F000
                                       nRC = AreBitsSetInFlag( lSubtype, 61440 );
                                       //:IF nRC = 0   // IF vDialog.Control.Subtype < 12000  ==> Domain Combobox
                                       if ( nRC == 0 )
                                       {

                                          //:szWriteBuffer = "         strTag = ^" + szhFlag + szCtrlTag + "^ + strEntityKey;"
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "         strTag = ^", 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, szhFlag, 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + strEntityKey;", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                          //:szWriteBuffer = "         strMapValue = request.getParameter( strTag );"
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "         strMapValue = request.getParameter( strTag );", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                          //:szWriteBuffer = "         if ( strMapValue != null ) "
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( strMapValue != null ) ", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                          //:szWriteBuffer = "         { "
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "         { ", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                          //:IF szCtrlCtrlType = "Calendar"
                                          if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "Calendar", 1, 0, 51 ) == 0 )
                                          {
                                             //:szWriteBuffer = "         strDateFormat = request.getParameter( ^zDateFormat^ );"
                                             ZeidonStringCopy( szWriteBuffer, 1, 0, "         strDateFormat = request.getParameter( ^zDateFormat^ );", 1, 0, 10001 );
                                             //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                             WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                             //:szWriteBuffer = "         nRC = vGridTmp" +
                                             //:".SetAttributeFromVariable( strSID, ^" +
                                             //:vDialog.CtrlMapRelatedEntity.Name +
                                             //:"^, ^" + vDialog.CtrlMapER_Attribute.Name +
                                             //:"^, strMapValue, 'S', 0, strDateFormat, 0 );"
                                             ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = vGridTmp", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                                             GetVariableFromAttribute( szTempString_64, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_64, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                             GetVariableFromAttribute( szTempString_65, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_65, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "^, strMapValue, 'S', 0, strDateFormat, 0 );", 1, 0, 10001 );
                                             //:ELSE
                                          }
                                          else
                                          {
                                             //:szWriteBuffer = "         nRC = vGridTmp" +
                                             //:".SetAttributeFromVariable( strSID, ^" +
                                             //:vDialog.CtrlMapRelatedEntity.Name +
                                             //:"^, ^" + vDialog.CtrlMapER_Attribute.Name +
                                             //:"^, strMapValue, 'S', 0, " +
                                             //:"^" + szContextName + "^, " + szFlag + " );"
                                             ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = vGridTmp", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                                             GetVariableFromAttribute( szTempString_66, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_66, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                             GetVariableFromAttribute( szTempString_67, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_67, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "^, strMapValue, 'S', 0, ", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "^", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szFlag, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                                          }

                                          //:END
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                          //:szWriteBuffer = "         if ( nRC < 0 )"
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC < 0 )", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                          //:szWriteBuffer = "         {"
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                          //:szWriteBuffer = "            nMapError = nRC;"
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "            nMapError = nRC;", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                          //:szWriteBuffer = "            strError += ^" + szCtrlTag +
                                          //: "^ + ^\t^ + strMapValue + ^\t^;"
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "            strError += ^", 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + ^\\t^ + strMapValue + ^\\t^;", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                          //:szWriteBuffer = "            break;"
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "            break;", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                          //:szWriteBuffer = "         } "
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "         } ", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                          //:szWriteBuffer = "         }"
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                                          //:// WL_QC( vDialog, lFile, "", "^", 0 )
                                          //:ELSE
                                       }
                                       else
                                       {

                                          //:// Combobox with Auto Include or Set Position Only
                                          //:// Note that this code is not executed if the view being
                                          //:// passed is for the list mapping, instead of the edit
                                          //:// mapping. Otherwise, the code would be generated twice,
                                          //:// once when this routine is called for the edit view and
                                          //:// once for the list view.
                                          //:CreateViewFromView( vDialog2, vDialog )
                                          CreateViewFromView( &vDialog2, vDialog );
                                          //:SET CURSOR PREVIOUS vDialog2.CtrlMap
                                          RESULT = SetCursorPrevEntity( vDialog2, "CtrlMap", "" );
                                          //:IF RESULT < zCURSOR_SET
                                          if ( RESULT < zCURSOR_SET )
                                          {
                                             //:// We were positioned on the first CtrlMap, which means we
                                             //:// were being called for the edit view.
                                             //:szWriteBuffer = "         // " + szControlType + ": " + szCtrlTag
                                             ZeidonStringCopy( szWriteBuffer, 1, 0, "         // ", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szControlType, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, ": ", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                                             //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                             WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                             //:// Position on second CtrlMap, which is for list mapping Attribute.
                                             //:SET CURSOR NEXT vDialog2.CtrlMap
                                             RESULT = SetCursorNextEntity( vDialog2, "CtrlMap", "" );

                                             //:// Position on third CtrlMap, which is for list mapping Entity.
                                             //:// If it is null, the list mapping entity is from the prior CtrlMap.
                                             //:CreateViewFromView( vDialog3, vDialog2 )
                                             CreateViewFromView( &vDialog3, vDialog2 );
                                             //:SET CURSOR NEXT vDialog3.CtrlMap
                                             RESULT = SetCursorNextEntity( vDialog3, "CtrlMap", "" );
                                             //:IF vDialog3.CtrlMapLOD_Entity EXISTS
                                             lTempInteger_12 = CheckExistenceOfEntity( vDialog3, "CtrlMapLOD_Entity" );
                                             if ( lTempInteger_12 == 0 )
                                             {
                                                //:szListMappingEntityName = vDialog3.CtrlMapLOD_Entity.Name
                                                GetVariableFromAttribute( szListMappingEntityName, 0, 'S', 33, vDialog3, "CtrlMapLOD_Entity", "Name", "", 0 );
                                                //:ELSE
                                             }
                                             else
                                             {
                                                //:szListMappingEntityName = vDialog2.CtrlMapRelatedEntity.Name
                                                GetVariableFromAttribute( szListMappingEntityName, 0, 'S', 33, vDialog2, "CtrlMapRelatedEntity", "Name", "", 0 );
                                             }

                                             //:END

                                             //:// Position on fourth CtrlMap, which is for scoping Entity.
                                             //:SET CURSOR NEXT vDialog3.CtrlMap
                                             RESULT = SetCursorNextEntity( vDialog3, "CtrlMap", "" );
                                             //:IF vDialog3.CtrlMapLOD_Entity EXISTS
                                             lTempInteger_13 = CheckExistenceOfEntity( vDialog3, "CtrlMapLOD_Entity" );
                                             if ( lTempInteger_13 == 0 )
                                             {
                                                //:szScopingEntityName = vDialog3.CtrlMapLOD_Entity.Name
                                                GetVariableFromAttribute( szScopingEntityName, 0, 'S', 33, vDialog3, "CtrlMapLOD_Entity", "Name", "", 0 );
                                                //:ELSE
                                             }
                                             else
                                             {
                                                //:szScopingEntityName = ""
                                                ZeidonStringCopy( szScopingEntityName, 1, 0, "", 1, 0, 33 );
                                             }

                                             //:END

                                             //:DropView( vDialog3 )
                                             DropView( vDialog3 );

                                             //:IF vDialog2.CtrlMapView EXISTS
                                             lTempInteger_14 = CheckExistenceOfEntity( vDialog2, "CtrlMapView" );
                                             if ( lTempInteger_14 == 0 )
                                             {
                                                //:szWriteBuffer = "         nRC = " + vDialog2.CtrlMapView.Name +
                                                //: ".GetView( strSID, ^" + vDialog2.CtrlMapView.Name + "^, vAS );"
                                                GetVariableFromAttribute( szTempString_68, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_68, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSID, ^", 1, 0, 10001 );
                                                GetVariableFromAttribute( szTempString_69, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_69, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAS );", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                //:szWriteBuffer = "         if ( nRC > 0 )"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC > 0 )", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                //:szWriteBuffer = "         {"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                                //://szWriteBuffer = "      // " + vDialog2.CtrlMapView.Name +
                                                //://                ".SetAllSelectStatesForEntity( strSID, ^" +
                                                //://                vDialog2.CtrlMapRelatedEntity.Name +
                                                //://                "^, (short) 0, ^" + szScopingEntityName + "^ );"
                                                //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )

                                                //:szWriteBuffer = "            strTag = ^" + szhFlag + szCtrlTag + "^ + strEntityKey;"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "            strTag = ^", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szhFlag, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + strEntityKey;", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                //:szWriteBuffer = "            strMapValue = request.getParameter( strTag );"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "            strMapValue = request.getParameter( strTag );", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                //:szWriteBuffer = "            if ( strMapValue != null )"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( strMapValue != null )", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                //:szWriteBuffer = "            {"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                //:szWriteBuffer = "               nRelPos = java.lang.Integer.parseInt( strMapValue );"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "               nRelPos = java.lang.Integer.parseInt( strMapValue );", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                //:IF vDialog.Control.Subtype >= 20480 AND vDialog.Control.Subtype <= 21252   // IF Auto Include
                                                if ( CompareAttributeToInteger( vDialog, "Control", "Subtype", 20480 ) >= 0 && CompareAttributeToInteger( vDialog, "Control", "Subtype", 21252 ) <= 0 )
                                                {
                                                   //:// For Auto Include, we must decrement nRelPos for blank entry.
                                                   //:szWriteBuffer = "                  nRelPos--;    // For Auto Include combos, we need to decrement for the blank entry."
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "                  nRelPos--;    // For Auto Include combos, we need to decrement for the blank entry.", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                }

                                                //:END
                                                //:szWriteBuffer = "               nRC = " + vDialog2.CtrlMapView.Name +
                                                //: ".SetCursorFirst( strSID, ^" + szListMappingEntityName + "^, ^" + szScopingEntityName + "^ );"
                                                GetVariableFromAttribute( szTempString_70, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "               nRC = ", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_70, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSID, ^", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szListMappingEntityName, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                //:szWriteBuffer = "               if ( nRC >= 0 )"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "               if ( nRC >= 0 )", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                //:szWriteBuffer = "                  " + vDialog2.CtrlMapView.Name +
                                                //: ".SetCursor( strSID, ^" + szListMappingEntityName + "^, nRelPos, ^" + szScopingEntityName + "^ );"
                                                GetVariableFromAttribute( szTempString_71, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "                  ", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_71, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursor( strSID, ^", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szListMappingEntityName, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "^, nRelPos, ^", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                //:szWriteBuffer = "            }"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                                //:IF vDialog.Control.Subtype >= 36864 AND vDialog.Control.Subtype <= 45056   // IF Set Foreign Key
                                                if ( CompareAttributeToInteger( vDialog, "Control", "Subtype", 36864 ) >= 0 && CompareAttributeToInteger( vDialog, "Control", "Subtype", 45056 ) <= 0 )
                                                {
                                                   //://Set Foreign Key
                                                   //:szWriteBuffer = " "
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, " ", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "            // Set Foreign Key Code "
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "            // Set Foreign Key Code ", 1, 0, 10001 );
                                                   //://Check the existence of the edit mapping entity
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "            nRC = vGridTmp" +
                                                   //: ".CheckExistenceOfEntity( strSID, ^" +
                                                   //: vDialog.CtrlMapRelatedEntity.Name + "^ );"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRC = vGridTmp", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSID, ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_72, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_72, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "            if ( nRC >= 0 )"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( nRC >= 0 )", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "            {"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                                   //:IF vDialog2.CtrlMapContext EXISTS
                                                   lTempInteger_15 = CheckExistenceOfEntity( vDialog2, "CtrlMapContext" );
                                                   if ( lTempInteger_15 == 0 )
                                                   {
                                                      //:szContextName = vDialog2.CtrlMapContext.Name
                                                      GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog2, "CtrlMapContext", "Name", "", 0 );
                                                      //://If the user specifies a context name then we will use this
                                                      //://and not the default context.
                                                      //:szFlag = "0"
                                                      ZeidonStringCopy( szFlag, 1, 0, "0", 1, 0, 2 );
                                                      //:ELSE
                                                   }
                                                   else
                                                   {
                                                      //:szFlag = "8"
                                                      ZeidonStringCopy( szFlag, 1, 0, "8", 1, 0, 2 );
                                                      //:szContextName = ""
                                                      ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                                                   }

                                                   //:END

                                                   //:IF vDialog2.CtrlMapER_Domain.MaxStringLth > 254
                                                   if ( CompareAttributeToInteger( vDialog2, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
                                                   {
                                                      //:lMaxStringLength = vDialog2.CtrlMapER_Domain.MaxStringLth
                                                      GetIntegerFromAttribute( &lMaxStringLength, vDialog2, "CtrlMapER_Domain", "MaxStringLth" );
                                                      //:szMaxStringLength = lMaxStringLength
                                                      ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
                                                      //:ELSE
                                                   }
                                                   else
                                                   {
                                                      //:szMaxStringLength = "254"
                                                      ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
                                                   }

                                                   //:END

                                                   //:szWriteBuffer = "               strMapValue = " + vDialog2.CtrlMapView.Name +
                                                   //:".GetStringFromAttributeByContext( strSID, ^" +
                                                   //:vDialog2.CtrlMapRelatedEntity.Name + "^, ^" +
                                                   //:vDialog2.CtrlMapER_Attribute.Name + "^, ^" + szContextName + "^, " + szMaxStringLength + " );"
                                                   GetVariableFromAttribute( szTempString_73, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "               strMapValue = ", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_73, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSID, ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_74, 0, 'S', 33, vDialog2, "CtrlMapRelatedEntity", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_74, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_75, 0, 'S', 33, vDialog2, "CtrlMapER_Attribute", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_75, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );


                                                   //:IF vDialog.CtrlMapContext EXISTS
                                                   lTempInteger_16 = CheckExistenceOfEntity( vDialog, "CtrlMapContext" );
                                                   if ( lTempInteger_16 == 0 )
                                                   {
                                                      //:szContextName = vDialog.CtrlMapContext.Name
                                                      GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog, "CtrlMapContext", "Name", "", 0 );
                                                      //://If the user specifies a context name then we will use this
                                                      //://and not the default context.
                                                      //:szFlag = "0"
                                                      ZeidonStringCopy( szFlag, 1, 0, "0", 1, 0, 2 );
                                                      //:ELSE
                                                   }
                                                   else
                                                   {
                                                      //:szFlag = "8"
                                                      ZeidonStringCopy( szFlag, 1, 0, "8", 1, 0, 2 );
                                                      //:szContextName = ""
                                                      ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                                                   }

                                                   //:END

                                                   //:szWriteBuffer = "               nRC = vGridTmp" +
                                                   //:".SetAttributeFromVariable( strSID, ^" +
                                                   //:vDialog.CtrlMapRelatedEntity.Name + "^, ^" +
                                                   //:vDialog.CtrlMapER_Attribute.Name + "^, strMapValue, 'S', 0, ^" + szContextName + "^, " + szFlag + " );"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "               nRC = vGridTmp", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_76, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_76, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_77, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_77, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^, strMapValue, 'S', 0, ^", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szFlag, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                                   //:szWriteBuffer = "            }"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                }

                                                //:END



                                                //:IF vDialog.Control.Subtype >= 20480 AND vDialog.Control.Subtype <= 21252   // IF Auto Include
                                                if ( CompareAttributeToInteger( vDialog, "Control", "Subtype", 20480 ) >= 0 && CompareAttributeToInteger( vDialog, "Control", "Subtype", 21252 ) <= 0 )
                                                {
                                                   //:// Auto Include only.
                                                   //:szWriteBuffer = " "
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, " ", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "            // Auto Include Code "
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "            // Auto Include Code ", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "            nRC = " + vDialog2.CtrlMapView.Name +
                                                   //: ".CheckExistenceOfEntity( strSID, ^" +
                                                   //: vDialog.CtrlMapRelatedEntity.Name + "^ );"
                                                   GetVariableFromAttribute( szTempString_78, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRC = ", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_78, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSID, ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_79, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_79, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "            if ( nRC >= 0 )"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( nRC >= 0 )", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "            {"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //://KJS 12/11/07 - Adding code to check if we are already positioned on the correct
                                                   //://Entity, so then we would not want to exclude and include.  Seems like this is only
                                                   //://going to matter if this combo box is in a grid.
                                                   //://KELLY3
                                                   //:szWriteBuffer = "               //Only do the automatic include if this is a different entity"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "               //Only do the automatic include if this is a different entity", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "               strTemp = vGridTmp.GetString( strSID, ^" +
                                                   //: vDialog.CtrlMapRelatedEntity.Name + "^, ^" + vDialog.CtrlMapER_Attribute.Name + "^ );"
                                                   GetVariableFromAttribute( szTempString_80, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "               strTemp = vGridTmp.GetString( strSID, ^", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_80, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_81, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_81, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );

                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                                   //:szWriteBuffer = "               if ( !strTemp.equals( " + vDialog2.CtrlMapView.Name +
                                                   //: ".GetString( strSID, ^" +
                                                   //: vDialog2.CtrlMapRelatedEntity.Name + "^, ^" + vDialog2.CtrlMapER_Attribute.Name + "^ ))) "
                                                   GetVariableFromAttribute( szTempString_82, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "               if ( !strTemp.equals( ", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_82, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetString( strSID, ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_83, 0, 'S', 33, vDialog2, "CtrlMapRelatedEntity", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_83, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_84, 0, 'S', 33, vDialog2, "CtrlMapER_Attribute", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_84, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ))) ", 1, 0, 10001 );

                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "               {"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "               {", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "                  vGridTmp" +
                                                   //: ".ExcludeEntity( strSID, ^" +
                                                   //: vDialog.CtrlMapRelatedEntity.Name +
                                                   //: "^, vGridTmp.zREPOS_NONE );"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "                  vGridTmp", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, ".ExcludeEntity( strSID, ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_85, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_85, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vGridTmp.zREPOS_NONE );", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "                  vGridTmp" +
                                                   //: ".IncludeSubobjectFromSubobject( strSID, ^" +
                                                   //: vDialog.CtrlMapRelatedEntity.Name + "^, " +
                                                   //: vDialog2.CtrlMapView.Name + ", ^" +
                                                   //: vDialog2.CtrlMapRelatedEntity.Name +
                                                   //: "^, vGridTmp.zPOS_AFTER );"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "                  vGridTmp", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, ".IncludeSubobjectFromSubobject( strSID, ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_86, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_86, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_87, 0, 'S', 33, vDialog2, "CtrlMapView", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_87, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, ", ^", 1, 0, 10001 );
                                                   GetVariableFromAttribute( szTempString_88, 0, 'S', 33, vDialog2, "CtrlMapRelatedEntity", "Name", "", 0 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_88, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vGridTmp.zPOS_AFTER );", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "               }"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "               }", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                   //:szWriteBuffer = "            }"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                                                   //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                                   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                                }

                                                //:END

                                                //:szWriteBuffer = "         }"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                                                //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                                                WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                                                //:ELSE  //IF vDialog2.CtrlMapView EXISTS
                                             }
                                             else
                                             {
                                                //:MessageSend( vDialog, "", "XSL Generation",
                                                //:"Missing List Mapping.",
                                                //:zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 )
                                                MessageSend( vDialog, "", "XSL Generation", "Missing List Mapping.", zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 );
                                             }

                                             //:END  //IF vDialog2.CtrlMapView EXISTS
                                          }

                                          //:END  //IF RESULT < zCURSOR_SET
                                       }


                                       //:END
                                    }

                                    //:END
                                 }

                                 //:END

                                 //:IF szCtrlCtrlType = "GridEditBox"  OR
                                 //:szCtrlCtrlType = "Calendar"
                                 if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridEditBox", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "Calendar", 1, 0, 51 ) == 0 )
                                 {

                                    //:lSubtype = vDialog.Control.Subtype
                                    GetIntegerFromAttribute( &lSubtype, vDialog, "Control", "Subtype" );
                                    //:lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_DISABLED )
                                    lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_DISABLED );
                                    //:IF lTemp = 0
                                    if ( lTemp == 0 )
                                    {
                                       //:IF vDialog.CtrlMapContext EXISTS
                                       lTempInteger_17 = CheckExistenceOfEntity( vDialog, "CtrlMapContext" );
                                       if ( lTempInteger_17 == 0 )
                                       {
                                          //:szContextName = vDialog.CtrlMapContext.Name
                                          GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog, "CtrlMapContext", "Name", "", 0 );
                                          //://If the user specifies a context name then we will use this
                                          //://and not the default context.
                                          //:szFlag = "0"
                                          ZeidonStringCopy( szFlag, 1, 0, "0", 1, 0, 2 );
                                          //:ELSE
                                       }
                                       else
                                       {
                                          //:szContextName = ""
                                          ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                                       }

                                       //:END

                                       //:szWriteBuffer = "         strTag = ^" + szhFlag + szCtrlTag + "^ + strEntityKey;"
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "         strTag = ^", 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, szhFlag, 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + strEntityKey;", 1, 0, 10001 );
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                       //:szWriteBuffer = "         strMapValue = request.getParameter( strTag );"
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "         strMapValue = request.getParameter( strTag );", 1, 0, 10001 );
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                       //:szWriteBuffer = "         if ( strMapValue != null ) "
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( strMapValue != null ) ", 1, 0, 10001 );
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                       //:szWriteBuffer = "         { "
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "         { ", 1, 0, 10001 );
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                       //:IF szCtrlCtrlType = "Calendar"
                                       if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "Calendar", 1, 0, 51 ) == 0 )
                                       {
                                          //:szWriteBuffer = "         strDateFormat = request.getParameter( ^zDateFormat^ );"
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "         strDateFormat = request.getParameter( ^zDateFormat^ );", 1, 0, 10001 );
                                          //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                          WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                          //:szWriteBuffer = "         nRC = vGridTmp" +
                                          //:".SetAttributeFromVariable( strSID, ^" +
                                          //:vDialog.CtrlMapRelatedEntity.Name +
                                          //:"^, ^" + vDialog.CtrlMapER_Attribute.Name +
                                          //:"^, strMapValue, 'S', 0, strDateFormat, 0 );"
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = vGridTmp", 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                                          GetVariableFromAttribute( szTempString_89, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_89, 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                          GetVariableFromAttribute( szTempString_90, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_90, 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, "^, strMapValue, 'S', 0, strDateFormat, 0 );", 1, 0, 10001 );
                                          //:ELSE
                                       }
                                       else
                                       {
                                          //:szWriteBuffer = "         nRC = vGridTmp" +
                                          //:".SetAttributeFromVariable( strSID, ^" +
                                          //:vDialog.CtrlMapRelatedEntity.Name +
                                          //:"^, ^" + vDialog.CtrlMapER_Attribute.Name +
                                          //:"^, strMapValue, 'S', 0, " +
                                          //:"^" + szContextName + "^, " + szFlag + " );"
                                          ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = vGridTmp", 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^", 1, 0, 10001 );
                                          GetVariableFromAttribute( szTempString_91, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_91, 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                          GetVariableFromAttribute( szTempString_92, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_92, 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, "^, strMapValue, 'S', 0, ", 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, "^", 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, szFlag, 1, 0, 10001 );
                                          ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                                       }

                                       //:END
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                       //:szWriteBuffer = "         if ( nRC < 0 )"
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC < 0 )", 1, 0, 10001 );
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                       //:szWriteBuffer = "         {"
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                       //:szWriteBuffer = "            nMapError = nRC;"
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "            nMapError = nRC;", 1, 0, 10001 );
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                       //:szWriteBuffer = "            strError += ^" + szCtrlTag +
                                       //: "^ + ^\t^ + strMapValue + ^\t^;"
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "            strError += ^", 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + ^\\t^ + strMapValue + ^\\t^;", 1, 0, 10001 );
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                       //:szWriteBuffer = "            break;"
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "            break;", 1, 0, 10001 );
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                       //:szWriteBuffer = "         } "
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "         } ", 1, 0, 10001 );
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                       //:szWriteBuffer = "         }"
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                                       //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                                       WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                                    }

                                    //:// WL_QC( vDialog, lFile, "", "^", 0 )
                                    //:END
                                 }

                                 //:END
                              }

                              //:END //IF vDialog.Control.Disabled != "Y"

                              //:IF bResetToPlaceHolder = 1
                              if ( bResetToPlaceHolder == 1 )
                              {
                                 //:ResetViewFromSubobject( vDialog )
                                 ResetViewFromSubobject( vDialog );
                              }

                              RESULT = SetCursorNextEntity( vDialog, "Control", "" );
                              //:END
                           }

                           //:END

                           //:ResetViewFromSubobject( vDialog )
                           ResetViewFromSubobject( vDialog );

                           //:// szWriteBuffer = ""
                           //:// WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           //:IF lSubtypeX = 0
                           if ( lSubtypeX == 0 )
                           {
                              //:szWriteBuffer = "         nRC = " +
                              //:    "vGridTmp.SetCursorNext( strSID, ^" +
                              //:    vDialog.CtrlMapLOD_Entity.Name +
                              //:    "^, ^" + szScopingEntityName + "^ );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "vGridTmp.SetCursorNext( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_93, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_93, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                              //:ELSE
                           }
                           else
                           {
                              //:szWriteBuffer = "         nRC = " +
                              //:    "vGridTmp.SetCursorScopeOI( strSID, ^" +
                              //:    vDialog.CtrlMapLOD_Entity.Name + "^,  3 ); // next" // zPOS_NEXT
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "vGridTmp.SetCursorScopeOI( strSID, ^", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_94, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_94, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^,  3 ); // next", 1, 0, 10001 );
                           }

                           //:END

                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "      }"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                           //:szWriteBuffer = "      vGridTmp.DropView(strSID);"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      vGridTmp.DropView(strSID);", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:ELSE
                        }
                        else
                        {
                           //:IF szControlType = "GroupBox" AND szSurveyGroupFlag = "Y"
                           if ( ZeidonStringCompare( szControlType, 1, 0, "GroupBox", 1, 0, 51 ) == 0 && ZeidonStringCompare( szSurveyGroupFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
                           {
                              //:// This is the survey group. Creating input mapping for this...
                              //:// **********************************************************
                              //:szWriteBuffer = "      String strQuestionCount;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strQuestionCount;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      String strQuestionID=^^;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strQuestionID=^^;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      String strQuestionType=^^;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strQuestionType=^^;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      String strQuestionName=^^;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strQuestionName=^^;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      String strQuestionAnswer=^^;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strQuestionAnswer=^^;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      String strQuestionChoiceID=^^;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strQuestionChoiceID=^^;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      String strAllowComment=^^;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strAllowComment=^^;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = ""
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      strQuestionCount = request.getParameter( ^SurveyQuestionCount^ );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      strQuestionCount = request.getParameter( ^SurveyQuestionCount^ );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      int iQuestionCount=Integer.parseInt(strQuestionCount);"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      int iQuestionCount=Integer.parseInt(strQuestionCount);", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = ""
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      for (int i=1; i<=iQuestionCount; i++)"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      for (int i=1; i<=iQuestionCount; i++)", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         strTemp = ^QuestionID^ + i;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         strTemp = ^QuestionID^ + i;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         strQuestionID = request.getParameter( strTemp );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         strQuestionID = request.getParameter( strTemp );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         strTemp = ^QuestionType^ + i;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         strTemp = ^QuestionType^ + i;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         strQuestionType= request.getParameter( strTemp );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         strQuestionType= request.getParameter( strTemp );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         strTemp = ^AllowComment^ + i;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         strTemp = ^AllowComment^ + i;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         strAllowComment= request.getParameter( strTemp );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         strAllowComment= request.getParameter( strTemp );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         " + ViewName + ".TraceLine( ^******* strQuestionType: ^, strQuestionType );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^******* strQuestionType: ^, strQuestionType );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         " + ViewName + ".TraceLine( ^******* strQuestionID:   ^, strQuestionID );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^******* strQuestionID:   ^, strQuestionID );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         "
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         nRC = " + ViewName + ".SetCursorFirst( strSID, ^SurveyQuestion^, ^ID^, strQuestionID, ^SurveyQuestionaire^ );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSID, ^SurveyQuestion^, ^ID^, strQuestionID, ^SurveyQuestionaire^ );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         if ( nRC >= 0 )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            if ( strQuestionType.equals(^Text^) )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( strQuestionType.equals(^Text^) )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         " + ViewName + ".TraceLine( ^******* Text   ^, ^^);"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^******* Text   ^, ^^);", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               strTemp = ^txtAnswer^ + strQuestionID;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               strTemp = ^txtAnswer^ + strQuestionID;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               strQuestionAnswer = request.getParameter( strTemp );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               strQuestionAnswer = request.getParameter( strTemp );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               nRC = " + ViewName + ".SetAttributeFromVariable( strSID, ^SurveyQuestion^, ^wTextAnswer^,"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^SurveyQuestion^, ^wTextAnswer^,", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                                                        strQuestionAnswer, 'S', 0, ^^, 0 );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                                                        strQuestionAnswer, 'S', 0, ^^, 0 );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            else if ( strQuestionType.equals(^Yes/No^) )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            else if ( strQuestionType.equals(^Yes/No^) )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "              strTemp = ^chkAnswer^ + strQuestionID;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "              strTemp = ^chkAnswer^ + strQuestionID;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            if ( strQuestionType.equals(^Multiple Choice Single Response^) || strQuestionType.equals(^Multiple Choice Multiple Response^) )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( strQuestionType.equals(^Multiple Choice Single Response^) | strQuestionType.equals(^Multiple Choice Multiple Response^) )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "              if ( strQuestionType.equals(^Multiple Choice Single Response^) )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "              if ( strQuestionType.equals(^Multiple Choice Single Response^) )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  // radio buttons"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  // radio buttons", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  strTemp = ^chkAnswer^ + i;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  strTemp = ^chkAnswer^ + i;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         " + ViewName + ".TraceLine( ^******* Radio Control:   ^, strTemp );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^******* Radio Control:   ^, strTemp );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  strQuestionAnswer = request.getParameter( strTemp );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  strQuestionAnswer = request.getParameter( strTemp );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         " + ViewName + ".TraceLine( ^******* Radio Answer:   ^, strQuestionAnswer );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^******* Radio Answer:   ^, strQuestionAnswer );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                 nRC = " + ViewName + ".SetAttributeFromVariable( strSID, ^SurveyQuestion^, ^wTextAnswer^,"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                 nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^SurveyQuestion^, ^wTextAnswer^,", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                                                           strQuestionAnswer, 'S', 0, ^^, 0 );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                                                           strQuestionAnswer, 'S', 0, ^^, 0 );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "              }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "              }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               else"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               else", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  // check boxes"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  // check boxes", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         " + ViewName + ".TraceLine( ^******* Checkbox   ^, ^^);"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^******* Checkbox   ^, ^^);", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                nRC = " + ViewName + ".SetCursorFirst( strSID, ^SurveyMultiChoiceOption^ );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSID, ^SurveyMultiChoiceOption^ );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                 while ( nRC == 0 )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                 while ( nRC == 0 )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                 {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                 {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                    strQuestionChoiceID = " + ViewName + ".GetString( strSID, ^SurveyMultiChoiceOption^, ^ID^ );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                    strQuestionChoiceID = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetString( strSID, ^SurveyMultiChoiceOption^, ^ID^ );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                    strTemp = ^chkAnswer^ + strQuestionChoiceID;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                    strTemp = ^chkAnswer^ + strQuestionChoiceID;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         " + ViewName + ".TraceLine( ^******* Checkbox Control:   ^, strTemp );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^******* Checkbox Control:   ^, strTemp );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                    strQuestionAnswer = request.getParameter( strTemp );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                    strQuestionAnswer = request.getParameter( strTemp );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         " + ViewName + ".TraceLine( ^******* Checkbox Answer:   ^, strQuestionAnswer );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^******* Checkbox Answer:   ^, strQuestionAnswer );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                    //if ( !strQuestionAnswer.equals(^^) )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                    //if ( !strQuestionAnswer.equals(^^) )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                    if ( strQuestionAnswer != null )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                    if ( strQuestionAnswer != null )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                       nRC = " + ViewName + ".SetAttributeFromVariable( strSID, ^SurveyMultiChoiceOption^, ^wSelectedAnswer^,"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                       nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^SurveyMultiChoiceOption^, ^wSelectedAnswer^,", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                                                                strQuestionChoiceID, 'S', 0, ^^, 0 );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                                                                strQuestionChoiceID, 'S', 0, ^^, 0 );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                      else"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                      else", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                       nRC = " + ViewName + ".SetAttributeFromVariable( strSID, ^SurveyMultiChoiceOption^, ^wSelectedAnswer^,"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                       nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^SurveyMultiChoiceOption^, ^wSelectedAnswer^,", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                                                                ^^, 'S', 0, ^^, 0 );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                                                                ^^, 'S', 0, ^^, 0 );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                       "
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                       ", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                    nRC = " + ViewName + ".SetCursorNext( strSID, ^SurveyMultiChoiceOption^ );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                    nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorNext( strSID, ^SurveyMultiChoiceOption^ );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                    " + ViewName + ".TraceLine( ^DoInputMapping SetCursorNext RC: ^, nRC );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                    ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^DoInputMapping SetCursorNext RC: ^, nRC );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                 }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                 }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:// Map Comment if it exists
                              //:szWriteBuffer = "            if ( strAllowComment.equals(^Y^) )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( strAllowComment.equals(^Y^) )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               strTemp = ^txtComment^ + strQuestionID;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               strTemp = ^txtComment^ + strQuestionID;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               strQuestionAnswer = request.getParameter( strTemp );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               strQuestionAnswer = request.getParameter( strTemp );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               nRC = " + ViewName + ".SetAttributeFromVariable( strSID, ^SurveyQuestion^, ^wComment^,"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttributeFromVariable( strSID, ^SurveyQuestion^, ^wComment^,", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                                                        strQuestionAnswer, 'S', 0, ^^, 0 );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                                                        strQuestionAnswer, 'S', 0, ^^, 0 );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:szWriteBuffer = "         }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           }

                           //:// *************************************************************
                           //:END // IF szControlType = "GroupBox"
                        }

                        //:END // IF szControlType = "Grid"
                     }

                     //:END // IF szControlType = "Calendar"
                  }

                  //:END // IF szControlType = "ListBox"
               }

               //:END // IF szControlType = "ComboBox"
            }

            //:END // IF szControlType = "EditBox" OR "CheckBox" OR "MLEdit" OR "RadioGrp"
            //:ELSE
         }
         else
         {
            //:IF vDialog.CtrlCtrl EXISTS
            lTempInteger_18 = CheckExistenceOfEntity( vDialog, "CtrlCtrl" );
            if ( lTempInteger_18 == 0 )
            {
               //:OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" )
               OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" );
               //:SetViewToSubobject( vDialog, "CtrlCtrl" )
               SetViewToSubobject( vDialog, "CtrlCtrl" );
               //:GenJSP_InputMapRecurs( vDialog, ViewName, lFile, szWriteBuffer, lTableRowCnt )
               GenJSP_InputMapRecurs( vDialog, ViewName, lFile, szWriteBuffer, lTableRowCnt );
               //:ResetViewFromSubobject( vDialog )
               ResetViewFromSubobject( vDialog );
            }

            //:END
         }

         //:END
      }

      RESULT = SetCursorNextEntity( vDialog, "Control", "" );
      //:END
   }

   //:END
   return;
// END
}


//:GLOBAL OPERATION
//:GenJSP_CrteCtrlsRecurs( VIEW vDialog      BASED ON LOD TZWDLGSO,
//:                        VIEW vGroupParent BASED ON LOD TZWDLGSO,
//:                        VIEW vDialogRoot  BASED ON LOD TZWDLGSO,
//:                        INTEGER           lFile,
//:                        STRING ( 10000 )  szWriteBuffer,
//:                        STRING ( 100 )    szIndent,
//:                        INTEGER           lTableRowCnt,
//:                        STRING ( 1 )      szNoPositioning,
//:                        INTEGER           lOffsetX,
//:                        INTEGER           lOffsetY )

//:   VIEW vDialog2 BASED ON LOD TZWDLGSO
zOPER_EXPORT zLONG OPERATION
GenJSP_CrteCtrlsRecurs( zVIEW     vDialog,
                        zVIEW     vGroupParent,
                        zVIEW     vDialogRoot,
                        zLONG     lFile,
                        zPCHAR    szWriteBuffer,
                        zPCHAR    szIndent,
                        zLONG     lTableRowCnt,
                        zPCHAR    szNoPositioning,
                        zLONG     lOffsetX,
                        zLONG     lOffsetY )
{
   zVIEW     vDialog2 = 0;
   //:VIEW vList    BASED ON LOD TZWDLGSO  // identifies attribute mapping for list entries
   zVIEW     vList = 0;
   //:VIEW vEntity  BASED ON LOD TZWDLGSO  // identifies entity mapping for list entries
   zVIEW     vEntity = 0;
   //:VIEW vScope   BASED ON LOD TZWDLGSO  // identifies scoping entity for list entries
   zVIEW     vScope = 0;
   //:STRING ( 32 )  szContextName
   zCHAR     szContextName[ 33 ] = { 0 };
   //:STRING ( 32 )  szScopingEntityName
   zCHAR     szScopingEntityName[ 33 ] = { 0 };
   //:STRING ( 32 )  szListEntityName
   zCHAR     szListEntityName[ 33 ] = { 0 };
   //:STRING ( 64 )  szViewName
   zCHAR     szViewName[ 65 ] = { 0 };
   //:STRING ( 32 )  szMapEntityName
   zCHAR     szMapEntityName[ 33 ] = { 0 };
   //:STRING ( 32 )  szMapAttributeName
   zCHAR     szMapAttributeName[ 33 ] = { 0 };
   //:STRING ( 32 )  szActionName
   zCHAR     szActionName[ 33 ] = { 0 };
   //:STRING ( 10 )  szSelectAction
   zCHAR     szSelectAction[ 11 ] = { 0 };
   //:STRING ( 10 )  szSelectFunction
   zCHAR     szSelectFunction[ 11 ] = { 0 };
   //:STRING ( 50 )  szCtrlTag
   zCHAR     szCtrlTag[ 51 ] = { 0 };
   //:STRING ( 50 )  szCtrlCtrlTag
   zCHAR     szCtrlCtrlTag[ 51 ] = { 0 };
   //:STRING ( 50 )  szControlType
   zCHAR     szControlType[ 51 ] = { 0 };
   //:STRING ( 50 )  szCtrlCtrlType
   zCHAR     szCtrlCtrlType[ 51 ] = { 0 };
   //:STRING ( 32 )  szListCtrlTag
   zCHAR     szListCtrlTag[ 33 ] = { 0 };
   //:STRING ( 100 ) szIndentGroup
   zCHAR     szIndentGroup[ 101 ] = { 0 };
   //:STRING ( 100 ) szIndentHold
   zCHAR     szIndentHold[ 101 ] = { 0 };
   //:STRING ( 100 ) szPosition
   zCHAR     szPosition[ 101 ] = { 0 };
   //:STRING ( 10 )  szColCount
   zCHAR     szColCount[ 11 ] = { 0 };
   //:STRING ( 100 ) szSort
   zCHAR     szSort[ 101 ] = { 0 };
   //:STRING ( 256 ) szAbsoluteStyle
   zCHAR     szAbsoluteStyle[ 257 ] = { 0 };
   //:STRING ( 20 )  szAbsoluteWidth
   zCHAR     szAbsoluteWidth[ 21 ] = { 0 };
   //:STRING ( 256 ) szRelStyle
   zCHAR     szRelStyle[ 257 ] = { 0 };
   //:STRING ( 256 ) szClass
   zCHAR     szClass[ 257 ] = { 0 };
   //:STRING ( 256 ) szTitle
   zCHAR     szTitle[ 257 ] = { 0 };
   //:STRING ( 256 ) szTitleHTML
   zCHAR     szTitleHTML[ 257 ] = { 0 };
   //:STRING ( 50 )  ListBoxDoubleClickAction
   zCHAR     ListBoxDoubleClickAction[ 51 ] = { 0 };
   //:STRING ( 16 )  szTabIndex
   zCHAR     szTabIndex[ 17 ] = { 0 };
   //:STRING ( 32 )  szSize
   zCHAR     szSize[ 33 ] = { 0 };
   //:STRING ( 16 )  szWidth
   zCHAR     szWidth[ 17 ] = { 0 };
   //:STRING ( 16 )  szHeight
   zCHAR     szHeight[ 17 ] = { 0 };
   //:STRING ( 1 )   szBorder
   zCHAR     szBorder[ 2 ] = { 0 };
   //:STRING ( 32 )  szRadioGroupName
   zCHAR     szRadioGroupName[ 33 ] = { 0 };
   //:STRING ( 256 ) szWidget
   zCHAR     szWidget[ 257 ] = { 0 };
   //:STRING ( 256 ) szText
   zCHAR     szText[ 257 ] = { 0 };
   //:STRING ( 64 )  szTerm
   zCHAR     szTerm[ 65 ] = { 0 };
   //:STRING ( 20 )  szJustify
   zCHAR     szJustify[ 21 ] = { 0 };
   //:STRING ( 50 )  szWebCtrlType
   zCHAR     szWebCtrlType[ 51 ] = { 0 };
   //:STRING ( 35 )  szControlTag
   zCHAR     szControlTag[ 36 ] = { 0 };
   //:STRING ( 85 )  szHTMLCtrlID
   zCHAR     szHTMLCtrlID[ 86 ] = { 0 };
   //:STRING ( 50 )  szGridView
   zCHAR     szGridView[ 51 ] = { 0 };
   //:STRING ( 50 )  szGridOrigViewName
   zCHAR     szGridOrigViewName[ 51 ] = { 0 };
   //:STRING ( 2 )   szSuffix
   zCHAR     szSuffix[ 3 ] = { 0 };
   //:STRING ( 10 )  szMaxStringLength
   zCHAR     szMaxStringLength[ 11 ] = { 0 };
   //:STRING ( 200 ) szItemTableHeader
   zCHAR     szItemTableHeader[ 201 ] = { 0 };
   //:STRING ( 50 )  szParentWebType
   zCHAR     szParentWebType[ 51 ] = { 0 };
   //:STRING ( 1 )   szRepeatingGroupFlag
   zCHAR     szRepeatingGroupFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szSurveyGroupFlag
   zCHAR     szSurveyGroupFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szGridGroupingFlag
   zCHAR     szGridGroupingFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szIncludeFileFlag
   zCHAR     szIncludeFileFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szNoHeightFlag
   zCHAR     szNoHeightFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szNoWidthFlag
   zCHAR     szNoWidthFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szSpanFlag
   zCHAR     szSpanFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szDivFlag
   zCHAR     szDivFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szToggleFlag
   zCHAR     szToggleFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   sziFrameFlag
   zCHAR     sziFrameFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szDashboardFlag
   zCHAR     szDashboardFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szScrollableFlag
   zCHAR     szScrollableFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szScrollingTable
   zCHAR     szScrollingTable[ 2 ] = { 0 };
   //:STRING ( 1 )   szFilterTable
   zCHAR     szFilterTable[ 2 ] = { 0 };
   //:STRING ( 1 )   szFileTransferFlag
   zCHAR     szFileTransferFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szGroupIsTable
   zCHAR     szGroupIsTable[ 2 ] = { 0 };
   //:STRING ( 1 )   szreCAPTCHAFlag
   zCHAR     szreCAPTCHAFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szTinyMCEFlag
   zCHAR     szTinyMCEFlag[ 2 ] = { 0 };
   //:STRING ( 1 )   szWCP_Edit
   zCHAR     szWCP_Edit[ 2 ] = { 0 };
   //:STRING ( 1 )   szWCP_Hidden
   zCHAR     szWCP_Hidden[ 2 ] = { 0 };
   //:STRING ( 1 )   szWCP_Multiline
   zCHAR     szWCP_Multiline[ 2 ] = { 0 };
   //:STRING ( 1 )   szWCP_EmailAddress
   zCHAR     szWCP_EmailAddress[ 2 ] = { 0 };
   //:STRING ( 1 )   szWCP_Hyperlink
   zCHAR     szWCP_Hyperlink[ 2 ] = { 0 };
   //:STRING ( 1 )   szWCP_AbsoluteWidth
   zCHAR     szWCP_AbsoluteWidth[ 2 ] = { 0 };
   //:STRING ( 1 )   szWCP_FirstOccurrenceOnly
   zCHAR     szWCP_FirstOccurrenceOnly[ 2 ] = { 0 };
   //:STRING ( 1 )   szFirstTimeThrough
   zCHAR     szFirstTimeThrough[ 2 ] = { 0 };
   //:STRING ( 1 )   szGridInGroup
   zCHAR     szGridInGroup[ 2 ] = { 0 };
   //:STRING ( 1 )   szTableExport
   zCHAR     szTableExport[ 2 ] = { 0 };
   //:STRING ( 10 )  szDisabled
   zCHAR     szDisabled[ 11 ] = { 0 };
   //:STRING ( 100 ) szStyle
   zCHAR     szStyle[ 101 ] = { 0 };
   //:DECIMAL        dDLUnits
   ZDecimal  dDLUnits = 0.0;
   //:INTEGER        LastY_Pos
   zLONG     LastY_Pos = 0;
   //:INTEGER        LastY_Height
   zLONG     LastY_Height = 0;
   //:INTEGER        LastY_PosGroup
   zLONG     LastY_PosGroup = 0;
   //:INTEGER        LastX_Pos
   zLONG     LastX_Pos = 0;
   //:INTEGER        LastX_Width
   zLONG     LastX_Width = 0;
   //:INTEGER        MaxY_HeightForLine
   zLONG     MaxY_HeightForLine = 0;
   //:INTEGER        X_Size
   zLONG     X_Size = 0;
   //:INTEGER        Y_Size
   zLONG     Y_Size = 0;
   //:INTEGER        X_Pos
   zLONG     X_Pos = 0;
   //:INTEGER        Y_Pos
   zLONG     Y_Pos = 0;
   //:INTEGER        nbsp_count
   zLONG     nbsp_count = 0;
   //:INTEGER        Size
   zLONG     Size = 0;
   //:INTEGER        Width
   zLONG     Width = 0;
   //:INTEGER        WidthPercent
   zLONG     WidthPercent = 0;
   //:INTEGER        lSubtype
   zLONG     lSubtype = 0;
   //:INTEGER        lSubtypeX
   zLONG     lSubtypeX = 0;
   //:INTEGER        lSort
   zLONG     lSort = 0;
   //:INTEGER        lHeader
   zLONG     lHeader = 0;
   //:INTEGER        lColCnt
   zLONG     lColCnt = 0;
   //:INTEGER        lCol
   zLONG     lCol = 0;
   //:INTEGER        lPushBtn
   zLONG     lPushBtn = 0;
   //:INTEGER        lEditBox
   zLONG     lEditBox = 0;
   //:INTEGER        lStyleX
   zLONG     lStyleX = 0;
   //:INTEGER        lTemp
   zLONG     lTemp = 0;
   //:INTEGER        lMaxStringLength
   zLONG     lMaxStringLength = 0;
   //:SHORT          bResetToPlaceHolder
   zSHORT    bResetToPlaceHolder = 0;
   //:SHORT          nRC
   zSHORT    nRC = 0;
   zSHORT    RESULT;
   zLONG     lTempInteger_0;
   zLONG     lTempInteger_1;
   zLONG     lTempInteger_2;
   zLONG     lTempInteger_3;
   zLONG     lTempInteger_4;
   zLONG     lTempInteger_5;
   zLONG     lTempInteger_6;
   zLONG     lTempInteger_7;
   zLONG     lTempInteger_8;
   zCHAR     szTempString_0[ 33 ];
   zCHAR     szTempString_1[ 33 ];
   zLONG     lTempInteger_9;
   zLONG     lTempInteger_10;
   zCHAR     szTempString_2[ 33 ];
   zCHAR     szTempString_3[ 33 ];
   zCHAR     szTempString_4[ 33 ];
   zCHAR     szTempString_5[ 33 ];
   zCHAR     szTempString_6[ 33 ];
   zCHAR     szTempString_7[ 33 ];
   zCHAR     szTempString_8[ 33 ];
   zCHAR     szTempString_9[ 33 ];
   zCHAR     szTempString_10[ 33 ];
   zCHAR     szTempString_11[ 33 ];
   zCHAR     szTempString_12[ 33 ];
   zCHAR     szTempString_13[ 33 ];
   zCHAR     szTempString_14[ 33 ];
   zCHAR     szTempString_15[ 33 ];
   zCHAR     szTempString_16[ 33 ];
   zCHAR     szTempString_17[ 33 ];
   zCHAR     szTempString_18[ 33 ];
   zCHAR     szTempString_19[ 33 ];
   zCHAR     szTempString_20[ 33 ];
   zCHAR     szTempString_21[ 33 ];
   zCHAR     szTempString_22[ 33 ];
   zCHAR     szTempString_23[ 33 ];
   zCHAR     szTempString_24[ 33 ];
   zCHAR     szTempString_25[ 33 ];
   zCHAR     szTempString_26[ 261 ];
   zCHAR     szTempString_27[ 33 ];
   zCHAR     szTempString_28[ 33 ];
   zCHAR     szTempString_29[ 33 ];
   zCHAR     szTempString_30[ 255 ];
   zCHAR     szTempString_31[ 33 ];
   zCHAR     szTempString_32[ 33 ];
   zCHAR     szTempString_33[ 255 ];
   zCHAR     szTempString_34[ 255 ];
   zCHAR     szTempString_35[ 261 ];
   zCHAR     szTempString_36[ 255 ];
   zSHORT    lTempInteger_11;
   zCHAR     szTempString_37[ 33 ];
   zCHAR     szTempString_38[ 33 ];
   zCHAR     szTempString_39[ 33 ];
   zCHAR     szTempString_40[ 33 ];
   zCHAR     szTempString_41[ 33 ];
   zCHAR     szTempString_42[ 33 ];
   zCHAR     szTempString_43[ 33 ];
   zCHAR     szTempString_44[ 33 ];
   zCHAR     szTempString_45[ 255 ];
   zSHORT    lTempInteger_12;
   zCHAR     szTempString_46[ 255 ];
   zSHORT    lTempInteger_13;
   zCHAR     szTempString_47[ 33 ];
   zCHAR     szTempString_48[ 33 ];
   zSHORT    lTempInteger_14;
   zCHAR     szTempString_49[ 33 ];
   zCHAR     szTempString_50[ 33 ];
   zCHAR     szTempString_51[ 255 ];
   zSHORT    lTempInteger_15;
   zCHAR     szTempString_52[ 33 ];
   zCHAR     szTempString_53[ 33 ];
   zSHORT    lTempInteger_16;
   zCHAR     szTempString_54[ 33 ];
   zCHAR     szTempString_55[ 33 ];
   zSHORT    lTempInteger_17;
   zCHAR     szTempString_56[ 33 ];
   zCHAR     szTempString_57[ 33 ];
   zCHAR     szTempString_58[ 33 ];
   zCHAR     szTempString_59[ 33 ];
   zSHORT    lTempInteger_18;
   zCHAR     szTempString_60[ 33 ];
   zCHAR     szTempString_61[ 33 ];
   zCHAR     szTempString_62[ 33 ];
   zCHAR     szTempString_63[ 33 ];
   zCHAR     szTempString_64[ 33 ];
   zCHAR     szTempString_65[ 33 ];
   zCHAR     szTempString_66[ 33 ];
   zCHAR     szTempString_67[ 33 ];
   zCHAR     szTempString_68[ 33 ];
   zCHAR     szTempString_69[ 33 ];
   zCHAR     szTempString_70[ 33 ];
   zCHAR     szTempString_71[ 33 ];
   zCHAR     szTempString_72[ 33 ];
   zCHAR     szTempString_73[ 33 ];
   zCHAR     szTempString_74[ 33 ];
   zCHAR     szTempString_75[ 255 ];
   zLONG     lTempInteger_19;
   zLONG     lTempInteger_20;
   zCHAR     szTempString_76[ 255 ];
   zCHAR     szTempString_77[ 255 ];
   zCHAR     szTempString_78[ 255 ];
   zLONG     lTempInteger_21;
   zLONG     lTempInteger_22;
   zLONG     lTempInteger_23;
   zSHORT    lTempInteger_24;
   zLONG     lTempInteger_25;
   zCHAR     szTempString_79[ 33 ];
   zCHAR     szTempString_80[ 33 ];
   zCHAR     szTempString_81[ 33 ];
   zCHAR     szTempString_82[ 33 ];
   zCHAR     szTempString_83[ 33 ];
   zCHAR     szTempString_84[ 33 ];
   zCHAR     szTempString_85[ 33 ];
   zCHAR     szTempString_86[ 255 ];
   zCHAR     szTempString_87[ 255 ];
   zCHAR     szTempString_88[ 255 ];
   zCHAR     szTempString_89[ 33 ];
   zCHAR     szTempString_90[ 255 ];
   zLONG     lTempInteger_26;
   zSHORT    lTempInteger_27;
   zCHAR     szTempString_91[ 33 ];
   zCHAR     szTempString_92[ 33 ];
   zSHORT    lTempInteger_28;
   zCHAR     szTempString_93[ 33 ];
   zCHAR     szTempString_94[ 33 ];
   zCHAR     szTempString_95[ 33 ];
   zCHAR     szTempString_96[ 33 ];
   zCHAR     szTempString_97[ 33 ];
   zCHAR     szTempString_98[ 33 ];
   zSHORT    lTempInteger_29;
   zCHAR     szTempString_99[ 33 ];
   zCHAR     szTempString_100[ 33 ];
   zCHAR     szTempString_101[ 33 ];
   zCHAR     szTempString_102[ 33 ];
   zSHORT    lTempInteger_30;
   zSHORT    lTempInteger_31;
   zCHAR     szTempString_103[ 33 ];
   zCHAR     szTempString_104[ 33 ];
   zCHAR     szTempString_105[ 33 ];
   zCHAR     szTempString_106[ 33 ];
   zCHAR     szTempString_107[ 33 ];
   zCHAR     szTempString_108[ 33 ];
   zCHAR     szTempString_109[ 33 ];
   zCHAR     szTempString_110[ 51 ];
   zCHAR     szTempString_111[ 33 ];
   zSHORT    lTempInteger_32;
   zCHAR     szTempString_112[ 33 ];
   zCHAR     szTempString_113[ 51 ];
   zCHAR     szTempString_114[ 33 ];
   zCHAR     szTempString_115[ 33 ];
   zCHAR     szTempString_116[ 33 ];
   zSHORT    lTempInteger_33;
   zCHAR     szTempString_117[ 33 ];
   zCHAR     szTempString_118[ 33 ];
   zSHORT    lTempInteger_34;
   zLONG     lTempInteger_35;
   zSHORT    lTempInteger_36;
   zCHAR     szTempString_119[ 255 ];
   zLONG     lTempInteger_37;
   zCHAR     szTempString_120[ 255 ];
   zLONG     lTempInteger_38;
   zSHORT    lTempInteger_39;
   zSHORT    lTempInteger_40;
   zSHORT    lTempInteger_41;
   zCHAR     szTempString_121[ 33 ];
   zCHAR     szTempString_122[ 33 ];
   zSHORT    lTempInteger_42;
   zCHAR     szTempString_123[ 33 ];
   zCHAR     szTempString_124[ 33 ];
   zCHAR     szTempString_125[ 33 ];
   zSHORT    lTempInteger_43;
   zCHAR     szTempString_126[ 33 ];
   zCHAR     szTempString_127[ 33 ];
   zSHORT    lTempInteger_44;
   zSHORT    lTempInteger_45;
   zCHAR     szTempString_128[ 33 ];
   zSHORT    lTempInteger_46;
   zSHORT    lTempInteger_47;
   zCHAR     szTempString_129[ 33 ];
   zCHAR     szTempString_130[ 33 ];
   zCHAR     szTempString_131[ 255 ];
   zSHORT    lTempInteger_48;
   zCHAR     szTempString_132[ 33 ];
   zCHAR     szTempString_133[ 261 ];
   zCHAR     szTempString_134[ 261 ];
   zCHAR     szTempString_135[ 255 ];
   zSHORT    lTempInteger_49;
   zCHAR     szTempString_136[ 33 ];
   zCHAR     szTempString_137[ 261 ];
   zCHAR     szTempString_138[ 261 ];
   zSHORT    lTempInteger_50;
   zCHAR     szTempString_139[ 33 ];
   zCHAR     szTempString_140[ 33 ];
   zCHAR     szTempString_141[ 33 ];
   zCHAR     szTempString_142[ 255 ];
   zCHAR     szTempString_143[ 255 ];
   zCHAR     szTempString_144[ 255 ];
   zCHAR     szTempString_145[ 33 ];
   zCHAR     szTempString_146[ 33 ];
   zCHAR     szTempString_147[ 33 ];
   zCHAR     szTempString_148[ 33 ];
   zCHAR     szTempString_149[ 33 ];
   zSHORT    lTempInteger_51;
   zCHAR     szTempString_150[ 33 ];
   zCHAR     szTempString_151[ 33 ];
   zCHAR     szTempString_152[ 33 ];
   zCHAR     szTempString_153[ 255 ];


   //:PIX_PER_DU( vDialog, dDLUnits )
   PIX_PER_DU( vDialog, &dDLUnits );

   //:// Generate the code for creating HTML statements for controls.
   //:// A major issue is determining which Controls are on the same row, as they need table entries
   //:// around them. Note that Groups must be handled differently from other Controls.

   //:// Make sure the Controls are ordered by row and column.

   //:szIndentHold = szIndent
   ZeidonStringCopy( szIndentHold, 1, 0, szIndent, 1, 0, 101 );

   //:// These variables are for if we are not using absolute positioning.
   //:LastY_Pos      = 0
   LastY_Pos = 0;
   //:LastY_Height   = 0
   LastY_Height = 0;
   //:LastY_PosGroup = 0
   LastY_PosGroup = 0;
   //:LastX_Pos      = 0
   LastX_Pos = 0;
   //:LastX_Width    = 0
   LastX_Width = 0;
   //:MaxY_HeightForLine = 0
   MaxY_HeightForLine = 0;
   //:szFirstTimeThrough = "Y"
   ZeidonStringCopy( szFirstTimeThrough, 1, 0, "Y", 1, 0, 2 );

   //:// Process each Control
   //:FOR EACH vDialog.Control
   RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   {

      //://zIntegerToString( szX_Pos, 10, vDialog.Control.PSDLG_X * dDLUnits + X_BASE )
      //://zIntegerToString( szY_Pos, 10, vDialog.Control.PSDLG_Y * dDLUnits + Y_BASE )

      //:// If szNoPositioning = "Y" then we are not using absolute positioning.  We need to
      //:// create some divs or spans to make this look similar to what's in the painter.
      //:IF  szNoPositioning = "Y"
      if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
      {

         //:// Need to reset the x positions
         //:IF  ( LastY_Pos < vDialog.Control.PSDLG_Y ) AND szFirstTimeThrough != "Y"
         if ( ( CompareAttributeToInteger( vDialog, "Control", "PSDLG_Y", LastY_Pos ) > 0 ) && ZeidonStringCompare( szFirstTimeThrough, 1, 0, "Y", 1, 0, 2 ) != 0 )
         {
            //://IF  ( LastY_Pos < vDialog.Control.PSDLG_Y ) AND LastY_Pos != 0
            //:szWriteBuffer = "</div>  <!-- End of a new line -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  <!-- End of a new line -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            //:LastX_Pos       = 0
            LastX_Pos = 0;
            //:LastX_Width     = 0
            LastX_Width = 0;

            //:// If we are using relative positioning, then we have automatically put
            //:// float:left on any groupboxes.  Because of this, I think if we are onto
            //:// a new row, then we should put a "clear" div in.
            //:szWriteBuffer = "<div style=^clear:both;^></div>  <!-- Moving to a new line, so do a clear -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div style=^clear:both;^></div>  <!-- Moving to a new line, so do a clear -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
         }


         //:END

         //:// We may have controls on the same line with varying heights.  When determining if there is
         //:// blank space in between these lines, make sure we are comparing the highest control.
         //:Y_Pos = LastY_Pos + LastY_Height
         Y_Pos = LastY_Pos + LastY_Height;
         //:IF  Y_Pos > MaxY_HeightForLine
         if ( Y_Pos > MaxY_HeightForLine )
         {
            //:MaxY_HeightForLine = Y_Pos
            MaxY_HeightForLine = Y_Pos;
         }

         //:END

         //:// Determine if there is blank space in between the y coordinates of the last
         //:// control and the current control.  If so, then we need to put in a div as a spacer control.
         //:IF  Y_Pos < vDialog.Control.PSDLG_Y
         if ( CompareAttributeToInteger( vDialog, "Control", "PSDLG_Y", Y_Pos ) > 0 )
         {

            //:   //TraceLineS("****  SPACE BETWEEN Ys *** ", vDialog.Control.Tag )
            //:   //Y_Size = ( vDialog.Control.PSDLG_Y - ( LastY_Pos + LastY_Height ) ) * dDLUnits + lOffsetY
            //:   Y_Size = ( vDialog.Control.PSDLG_Y - ( MaxY_HeightForLine ) ) * dDLUnits + lOffsetY
            GetIntegerFromAttribute( &lTempInteger_0, vDialog, "Control", "PSDLG_Y" );
            Y_Size = ( lTempInteger_0 - ( MaxY_HeightForLine ) ) * dDLUnits + lOffsetY;
            //:   X_Size = 100
            X_Size = 100;
            //:   zIntegerToString( szHeight, 16, Y_Size )
            zIntegerToString( szHeight, 16, Y_Size );
            //:   zIntegerToString( szWidth, 16, X_Size )
            zIntegerToString( szWidth, 16, X_Size );
            //:   szWriteBuffer = ""
            ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
            //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:   szWriteBuffer = " <!-- This is added as a line spacer -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, " <!-- This is added as a line spacer -->", 1, 0, 10001 );
            //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:   szWriteBuffer = "<div style=^height:" + szHeight + "px;width:" + szWidth + "px;^></div>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div style=^height:", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szHeight, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "px;width:", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szWidth, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "px;^></div>", 1, 0, 10001 );
            //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         }

         //:END

         //:// There should be a <div> surrounding each line.
         //:IF ( LastY_Pos < vDialog.Control.PSDLG_Y ) OR szFirstTimeThrough = "Y"
         if ( ( CompareAttributeToInteger( vDialog, "Control", "PSDLG_Y", LastY_Pos ) > 0 ) || ZeidonStringCompare( szFirstTimeThrough, 1, 0, "Y", 1, 0, 2 ) == 0 )
         {

            //:   LastY_Pos    = vDialog.Control.PSDLG_Y
            GetIntegerFromAttribute( &LastY_Pos, vDialog, "Control", "PSDLG_Y" );

            //:   // KJS 08/01/08 - Seems as though I need to give this div a width, otherwise,
            //:   // it many times places things on different lines.
            //:   //KELLY8
            //:   CreateViewFromView( vDialog2, vDialog )
            CreateViewFromView( &vDialog2, vDialog );

            //:   X_Size = vDialog2.Control.PSDLG_X + vDialog2.Control.SZDLG_X
            GetIntegerFromAttribute( &lTempInteger_1, vDialog2, "Control", "PSDLG_X" );
            GetIntegerFromAttribute( &lTempInteger_2, vDialog2, "Control", "SZDLG_X" );
            X_Size = lTempInteger_1 + lTempInteger_2;
            //:   SET CURSOR  NEXT vDialog2.Control
            RESULT = SetCursorNextEntity( vDialog2, "Control", "" );
            //:   // Loop through all the controls that are at the same y pos and see how wide they
            //:   // are.
            //:   LOOP  WHILE RESULT >= zCURSOR_SET AND LastY_Pos = vDialog2.Control.PSDLG_Y
            while ( RESULT >= zCURSOR_SET && CompareAttributeToInteger( vDialog2, "Control", "PSDLG_Y", LastY_Pos ) == 0 )
            {

               //:   //X_Size = X_Size + vDialog2.Control.SZDLG_X
               //:   X_Size = vDialog2.Control.PSDLG_X + vDialog2.Control.SZDLG_X
               GetIntegerFromAttribute( &lTempInteger_3, vDialog2, "Control", "PSDLG_X" );
               GetIntegerFromAttribute( &lTempInteger_4, vDialog2, "Control", "SZDLG_X" );
               X_Size = lTempInteger_3 + lTempInteger_4;
               //:   SET CURSOR  NEXT vDialog2.Control
               RESULT = SetCursorNextEntity( vDialog2, "Control", "" );
            }


            //:   END

            //:   DropView(vDialog2)
            DropView( vDialog2 );

            //:   X_Size = X_Size * dDLUnits + lOffsetY
            X_Size = X_Size * dDLUnits + lOffsetY;
            //:   // KJS 09/03/08 - does this help??
            //:   X_Size = X_Size + 1
            X_Size = X_Size + 1;
            //:   zIntegerToString( szWidth, 16, X_Size )
            zIntegerToString( szWidth, 16, X_Size );

            //:   szWriteBuffer = ""
            ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
            //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:   //szWriteBuffer = "<div style=^width:" + szWidth + "px;^>  <!-- Beginning of a new line -->"
            //:   szWriteBuffer = "<div>  <!-- Beginning of a new line -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div>  <!-- Beginning of a new line -->", 1, 0, 10001 );
            //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         }

         //:END

         //:X_Pos = LastX_Pos + LastX_Width
         X_Pos = LastX_Pos + LastX_Width;
         //:// If there is blank space to the left of a control put in a spacer control.
         //:IF X_Pos < vDialog.Control.PSDLG_X
         if ( CompareAttributeToInteger( vDialog, "Control", "PSDLG_X", X_Pos ) > 0 )
         {

            //://TraceLineS("****  SPACE BETWEEN Xs *** ", vDialog.Control.Tag )
            //:X_Size = ( vDialog.Control.PSDLG_X  - ( LastX_Pos + LastX_Width ) ) * dDLUnits + lOffsetX
            GetIntegerFromAttribute( &lTempInteger_5, vDialog, "Control", "PSDLG_X" );
            X_Size = ( lTempInteger_5 - ( LastX_Pos + LastX_Width ) ) * dDLUnits + lOffsetX;
            //:Y_Size = vDialog.Control.SZDLG_Y * dDLUnits + lOffsetY
            GetIntegerFromAttribute( &lTempInteger_6, vDialog, "Control", "SZDLG_Y" );
            Y_Size = lTempInteger_6 * dDLUnits + lOffsetY;
            //:zIntegerToString( szHeight, 16, Y_Size )
            zIntegerToString( szHeight, 16, Y_Size );
            //:zIntegerToString( szWidth, 16, X_Size )
            zIntegerToString( szWidth, 16, X_Size );

            //:// KJS 11/19/08 - Currently we are placing a span with spacers in between controls that have space between them.
            //:// If there is a div control (or grid or tab) in a row and there is space before it, then we should really
            //:// put a floating div there instead of a span.  10/07/09 - Added RadioGrp as well.
            //:IF vDialog.ControlDef.Tag = "GroupBox" OR vDialog.ControlDef.Tag = "Grid" OR
            //:   vDialog.ControlDef.Tag = "Tab" OR vDialog.ControlDef.Tag = "RadioGrp"
            if ( CompareAttributeToString( vDialog, "ControlDef", "Tag", "GroupBox" ) == 0 || CompareAttributeToString( vDialog, "ControlDef", "Tag", "Grid" ) == 0 || CompareAttributeToString( vDialog, "ControlDef", "Tag", "Tab" ) == 0 ||
                 CompareAttributeToString( vDialog, "ControlDef", "Tag", "RadioGrp" ) == 0 )
            {
               //://szWriteBuffer = "<div style=^height:" + szHeight + "px;width:" + szWidth + "px;float:left;^></div>   <!-- Width Spacer -->"
               //:// Taking out the height for this spacer since in IE this causes some issue.
               //:szWriteBuffer = "<div style=^height:1px;width:" + szWidth + "px;float:left;^></div>   <!-- Width Spacer -->"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div style=^height:1px;width:", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szWidth, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "px;float:left;^></div>   <!-- Width Spacer -->", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:ELSE
            }
            else
            {
               //:nbsp_count = X_Size / 5
               nbsp_count = X_Size / 5;
               //://TraceLineI("**** nbsp_count ", nbsp_count )

               //:IF  nbsp_count > 0
               if ( nbsp_count > 0 )
               {
                  //:szWriteBuffer = "<span style=^height:" + szHeight + "px;^>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<span style=^height:", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szHeight, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "px;^>", 1, 0, 10001 );
                  //:LOOP WHILE nbsp_count > 0
                  while ( nbsp_count > 0 )
                  {
                     //: nbsp_count = nbsp_count - 1
                     nbsp_count = nbsp_count - 1;
                     //: szWriteBuffer = szWriteBuffer + "&nbsp"
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "&nbsp", 1, 0, 10001 );
                  }

                  //:END
                  //:szWriteBuffer = szWriteBuffer + "</span>"
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "</span>", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               }

               //:END
            }

            //:END
         }


         //:END

         //:LastY_Pos    = vDialog.Control.PSDLG_Y
         GetIntegerFromAttribute( &LastY_Pos, vDialog, "Control", "PSDLG_Y" );
         //:LastY_Height = vDialog.Control.SZDLG_Y
         GetIntegerFromAttribute( &LastY_Height, vDialog, "Control", "SZDLG_Y" );
         //:LastX_Pos    = vDialog.Control.PSDLG_X
         GetIntegerFromAttribute( &LastX_Pos, vDialog, "Control", "PSDLG_X" );
         //:LastX_Width  = vDialog.Control.SZDLG_X
         GetIntegerFromAttribute( &LastX_Width, vDialog, "Control", "SZDLG_X" );
      }

      //:END

      //:szFirstTimeThrough = ""
      ZeidonStringCopy( szFirstTimeThrough, 1, 0, "", 1, 0, 2 );
      //:szControlType = vDialog.ControlDef.Tag
      GetVariableFromAttribute( szControlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
      //:szWebCtrlType = vDialog.Control.WebCtrlType
      GetVariableFromAttribute( szWebCtrlType, 0, 'S', 51, vDialog, "Control", "WebCtrlType", "", 0 );
      //:szIndent = szIndentHold + "   "
      ZeidonStringCopy( szIndent, 1, 0, szIndentHold, 1, 0, 101 );
      ZeidonStringConcat( szIndent, 1, 0, "   ", 1, 0, 101 );
      //:szCtrlTag = vDialog.Control.Tag
      GetVariableFromAttribute( szCtrlTag, 0, 'S', 51, vDialog, "Control", "Tag", "", 0 );

      //:szHTMLCtrlID = " id=^" + szCtrlTag + "^ name=^" + szCtrlTag + "^ "
      ZeidonStringCopy( szHTMLCtrlID, 1, 0, " id=^", 1, 0, 86 );
      ZeidonStringConcat( szHTMLCtrlID, 1, 0, szCtrlTag, 1, 0, 86 );
      ZeidonStringConcat( szHTMLCtrlID, 1, 0, "^ name=^", 1, 0, 86 );
      ZeidonStringConcat( szHTMLCtrlID, 1, 0, szCtrlTag, 1, 0, 86 );
      ZeidonStringConcat( szHTMLCtrlID, 1, 0, "^ ", 1, 0, 86 );

      //:IF szControlType = "GroupBox"
      if ( ZeidonStringCompare( szControlType, 1, 0, "GroupBox", 1, 0, 51 ) == 0 )
      {

         //:// Do I need to check if this is a groupbox and we are not using absolute positioning, then I want to
         //:// check if there are other groupboxes at this same PSDLG_Y.  If so, then these groups would need to
         //:// have a float:left applied to them.
         //:// Would I only want to do this once for the row?
         //:// Or, do I want to put a float on every div created and then create a <div style="clear:both;"</div> after
         //:// every row?
         //://IF  szNoPositioning = "Y" AND szCheckedRowForGroups         //END

         //:// InitializeRepeatingGroup for GroupBox

         //:// Check to see if this GroupBox has a WebControlProperty of "Table".  If so, then we will create this
         //:// as a table and try and position what is in this group box as a table.
         //:szGroupIsTable = ""
         ZeidonStringCopy( szGroupIsTable, 1, 0, "", 1, 0, 2 );
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Table"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Table", "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {
            //:szGroupIsTable = "Y"
            ZeidonStringCopy( szGroupIsTable, 1, 0, "Y", 1, 0, 2 );
         }

         //:END

         //:// There are times when the user wants to paint a div that has no height so it will grow with the
         //:// data within it.  This flags the div will have no height.
         //:szNoHeightFlag = ""
         ZeidonStringCopy( szNoHeightFlag, 1, 0, "", 1, 0, 2 );
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "No Height"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "No Height", "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {
            //:szNoHeightFlag = "Y"
            ZeidonStringCopy( szNoHeightFlag, 1, 0, "Y", 1, 0, 2 );
         }

         //:END

         //:// There are times when the user wants to paint a div that has no width so it will grow with the
         //:// data within it.  This flags the div will have no width.
         //:szNoWidthFlag = ""
         ZeidonStringCopy( szNoWidthFlag, 1, 0, "", 1, 0, 2 );
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "No Width"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "No Width", "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {
            //:szNoWidthFlag = "Y"
            ZeidonStringCopy( szNoWidthFlag, 1, 0, "Y", 1, 0, 2 );
         }

         //:END

         //:// KJS 05/01/09
         //:// When the user paints a grid, they may not want this grid (and any leading header text) to show
         //:// during run-time if there is no data for the grid.  If the user puts this grid and any other
         //:// controls in a groupbox with the control property of "Table Grouping", we will not display anything
         //:// within this groupbox if the grid has no data during run-time.
         //:szGridGroupingFlag = ""
         ZeidonStringCopy( szGridGroupingFlag, 1, 0, "", 1, 0, 2 );
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Grid Grouping"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Grid Grouping", "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {
            //:szGridGroupingFlag = "Y"
            ZeidonStringCopy( szGridGroupingFlag, 1, 0, "Y", 1, 0, 2 );
            //:// This div should not have any height or width.
            //:szNoHeightFlag = "Y"
            ZeidonStringCopy( szNoHeightFlag, 1, 0, "Y", 1, 0, 2 );
            //:szNoWidthFlag = "Y"
            ZeidonStringCopy( szNoWidthFlag, 1, 0, "Y", 1, 0, 2 );
         }

         //:END

         //:// Set flag for RepeatingGroup either from old szWebCtrlType or new WebControlProperty.
         //:// Repeating Group is used for the situation where a Group of controls is to be repeated for each controlling
         //:// entity, very much as is done in Reports. An example in Zencas is the page of student pictures and basic
         //:// information for either a class or an advisor.
         //:IF szWebCtrlType = "RepeatingGroup"
         if ( ZeidonStringCompare( szWebCtrlType, 1, 0, "RepeatingGroup", 1, 0, 51 ) == 0 )
         {
            //:szRepeatingGroupFlag = "Y"
            ZeidonStringCopy( szRepeatingGroupFlag, 1, 0, "Y", 1, 0, 2 );
            //:ELSE
         }
         else
         {
            //:szRepeatingGroupFlag = ""
            ZeidonStringCopy( szRepeatingGroupFlag, 1, 0, "", 1, 0, 2 );
            //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Repeating Group"
            RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Repeating Group", "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:szRepeatingGroupFlag = "Y"
               ZeidonStringCopy( szRepeatingGroupFlag, 1, 0, "Y", 1, 0, 2 );
            }

            //:END
         }

         //:END

         //:// Set flag for Survey Group, which is a repeating group for survey questions.
         //:szSurveyGroupFlag = ""
         ZeidonStringCopy( szSurveyGroupFlag, 1, 0, "", 1, 0, 2 );
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Survey Group"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Survey Group", "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {
            //:szSurveyGroupFlag = "Y"
            ZeidonStringCopy( szSurveyGroupFlag, 1, 0, "Y", 1, 0, 2 );
         }

         //:END

         //:// Set flag for FileTransfer, as all GroupBox and subcontrol processing is skipped for that case.
         //:szFileTransferFlag = ""
         ZeidonStringCopy( szFileTransferFlag, 1, 0, "", 1, 0, 2 );
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "File Transfer to Server"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "File Transfer to Server", "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {
            //:szFileTransferFlag = "Y"
            ZeidonStringCopy( szFileTransferFlag, 1, 0, "Y", 1, 0, 2 );
         }

         //:END

         //:szIncludeFileFlag = ""
         ZeidonStringCopy( szIncludeFileFlag, 1, 0, "", 1, 0, 2 );
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Include File"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Include File", "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {
            //:szIncludeFileFlag = "Y"
            ZeidonStringCopy( szIncludeFileFlag, 1, 0, "Y", 1, 0, 2 );
         }

         //:END

         //:// Wondering if somehow this should be different in the sense that a group box can only be
         //:// either div, include file, iframe, table etc. whereas the "No Height" etc. can go with
         //:// div but only div, "Include File" etc.  How would a user know?
         //:sziFrameFlag = ""
         ZeidonStringCopy( sziFrameFlag, 1, 0, "", 1, 0, 2 );
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "iFrame"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "iFrame", "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {
            //:sziFrameFlag = "Y"
            ZeidonStringCopy( sziFrameFlag, 1, 0, "Y", 1, 0, 2 );
         }

         //:END

         //:szDashboardFlag = ""
         ZeidonStringCopy( szDashboardFlag, 1, 0, "", 1, 0, 2 );
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Dashboard"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Dashboard", "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {
            //:szDashboardFlag = "Y"
            ZeidonStringCopy( szDashboardFlag, 1, 0, "Y", 1, 0, 2 );
         }

         //:END

         //:szreCAPTCHAFlag = ""
         ZeidonStringCopy( szreCAPTCHAFlag, 1, 0, "", 1, 0, 2 );
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "reCAPTCHA"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "reCAPTCHA", "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {
            //:szreCAPTCHAFlag = "Y"
            ZeidonStringCopy( szreCAPTCHAFlag, 1, 0, "Y", 1, 0, 2 );
         }

         //:END

         //:szToggleFlag = ""
         ZeidonStringCopy( szToggleFlag, 1, 0, "", 1, 0, 2 );
         //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Show/Hide Toggle"
         RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Show/Hide Toggle", "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {
            //:szToggleFlag = "Y"
            ZeidonStringCopy( szToggleFlag, 1, 0, "Y", 1, 0, 2 );
         }

         //:END

         //:// Set Group flags either from old szWebCtrlType or new WebControlProperty.
         //:IF szWebCtrlType = "Scrollable"
         if ( ZeidonStringCompare( szWebCtrlType, 1, 0, "Scrollable", 1, 0, 51 ) == 0 )
         {
            //:szScrollableFlag = "Y"
            ZeidonStringCopy( szScrollableFlag, 1, 0, "Y", 1, 0, 2 );
            //:ELSE
         }
         else
         {
            //:szScrollableFlag = ""
            ZeidonStringCopy( szScrollableFlag, 1, 0, "", 1, 0, 2 );
            //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Scrollable"
            RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Scrollable", "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:szScrollableFlag = "Y"
               ZeidonStringCopy( szScrollableFlag, 1, 0, "Y", 1, 0, 2 );
            }

            //:END
         }

         //:END
         //:IF szWebCtrlType = "Span"
         if ( ZeidonStringCompare( szWebCtrlType, 1, 0, "Span", 1, 0, 51 ) == 0 )
         {
            //:szSpanFlag = "Y"
            ZeidonStringCopy( szSpanFlag, 1, 0, "Y", 1, 0, 2 );
            //:ELSE
         }
         else
         {
            //:szSpanFlag = ""
            ZeidonStringCopy( szSpanFlag, 1, 0, "", 1, 0, 2 );
            //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Span"
            RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Span", "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:szSpanFlag = "Y"
               ZeidonStringCopy( szSpanFlag, 1, 0, "Y", 1, 0, 2 );
            }

            //:END
         }

         //:END
         //:IF szWebCtrlType = "Div"
         if ( ZeidonStringCompare( szWebCtrlType, 1, 0, "Div", 1, 0, 51 ) == 0 )
         {
            //:szDivFlag = "Y"
            ZeidonStringCopy( szDivFlag, 1, 0, "Y", 1, 0, 2 );
            //:ELSE
         }
         else
         {
            //:szDivFlag = ""
            ZeidonStringCopy( szDivFlag, 1, 0, "", 1, 0, 2 );
            //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Div"
            RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Div", "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:szDivFlag = "Y"
               ZeidonStringCopy( szDivFlag, 1, 0, "Y", 1, 0, 2 );
            }

            //:END
         }

         //:END
      }


      //:END

      //:// Initialize the szAbsoluteStyle variable with X and Y values.
      //:IF  szNoPositioning = "Y"
      if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
      {
         //:IF szControlType = "GroupBox" AND szNoHeightFlag = "Y" AND szNoWidthFlag = "Y"
         if ( ZeidonStringCompare( szControlType, 1, 0, "GroupBox", 1, 0, 51 ) == 0 && ZeidonStringCompare( szNoHeightFlag, 1, 0, "Y", 1, 0, 2 ) == 0 && ZeidonStringCompare( szNoWidthFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
         {
            //:szAbsoluteStyle = ""
            ZeidonStringCopy( szAbsoluteStyle, 1, 0, "", 1, 0, 257 );
            //:ELSE
         }
         else
         {
            //:IF szControlType = "GroupBox" AND szNoHeightFlag = "Y"
            if ( ZeidonStringCompare( szControlType, 1, 0, "GroupBox", 1, 0, 51 ) == 0 && ZeidonStringCompare( szNoHeightFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
            {
               //:// We might not want the groupbox to have a height (so it grows)
               //:zIntegerToString( szWidth, 10, vDialog.Control.SZDLG_X * dDLUnits )
               GetIntegerFromAttribute( &lTempInteger_7, vDialog, "Control", "SZDLG_X" );
               zIntegerToString( szWidth, 10, lTempInteger_7 * dDLUnits );
               //:szAbsoluteStyle = "style=^width:" + szWidth + "px;^"
               ZeidonStringCopy( szAbsoluteStyle, 1, 0, "style=^width:", 1, 0, 257 );
               ZeidonStringConcat( szAbsoluteStyle, 1, 0, szWidth, 1, 0, 257 );
               ZeidonStringConcat( szAbsoluteStyle, 1, 0, "px;^", 1, 0, 257 );
               //:ELSE
            }
            else
            {
               //:IF szControlType = "GroupBox" AND szNoWidthFlag = "Y"
               if ( ZeidonStringCompare( szControlType, 1, 0, "GroupBox", 1, 0, 51 ) == 0 && ZeidonStringCompare( szNoWidthFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
               {
                  //:// We might not want the groupbox to have a width (so it grows)
                  //:zIntegerToString( szHeight, 10, vDialog.Control.SZDLG_Y * dDLUnits )
                  GetIntegerFromAttribute( &lTempInteger_8, vDialog, "Control", "SZDLG_Y" );
                  zIntegerToString( szHeight, 10, lTempInteger_8 * dDLUnits );
                  //:szAbsoluteStyle = "style=^height:" + szHeight + "px;^"
                  ZeidonStringCopy( szAbsoluteStyle, 1, 0, "style=^height:", 1, 0, 257 );
                  ZeidonStringConcat( szAbsoluteStyle, 1, 0, szHeight, 1, 0, 257 );
                  ZeidonStringConcat( szAbsoluteStyle, 1, 0, "px;^", 1, 0, 257 );
                  //:ELSE
               }
               else
               {
                  //:CreateNoPosStyleString( vDialog, szAbsoluteStyle, "" )
                  CreateNoPosStyleString( vDialog, szAbsoluteStyle, "" );
               }

               //:END
            }

            //:END
         }

         //:END
         //:ELSE
      }
      else
      {
         //:CreateAbsolStyleString( vDialog, szAbsoluteStyle, lOffsetX, lOffsetY, "" )
         CreateAbsolStyleString( vDialog, szAbsoluteStyle, lOffsetX, lOffsetY, "" );
      }

      //:END

      //:szWriteBuffer = "<% /* " + szCtrlTag + ":" + szControlType + " */ %>"
      ZeidonStringCopy( szWriteBuffer, 1, 0, "<% /* ", 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, ":", 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, szControlType, 1, 0, 10001 );
      ZeidonStringConcat( szWriteBuffer, 1, 0, " */ %>", 1, 0, 10001 );
      //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
      WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

      //:// Check to see if this GroupBox has a WebControlProperty of "Table".  If so, then we will create this
      //:// as a table and try and position what is in this group box as a table.
      //:IF szControlType = "GroupBox" AND szGroupIsTable = "Y"
      if ( ZeidonStringCompare( szControlType, 1, 0, "GroupBox", 1, 0, 51 ) == 0 && ZeidonStringCompare( szGroupIsTable, 1, 0, "Y", 1, 0, 2 ) == 0 )
      {

         //:X_Size = vDialog.Control.SZDLG_X
         GetIntegerFromAttribute( &X_Size, vDialog, "Control", "SZDLG_X" );
         //:Y_Size = vDialog.Control.SZDLG_Y
         GetIntegerFromAttribute( &Y_Size, vDialog, "Control", "SZDLG_Y" );

         //:OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" )
         OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" );
         //:CreateViewFromView( vGroupParent, vDialog )
         CreateViewFromView( &vGroupParent, vDialog );
         //:// Create view for Group as a parent. This will be used in processing subcontrols to check for WebControlProperty.
         //:SetViewToSubobject( vDialog, "CtrlCtrl" )
         SetViewToSubobject( vDialog, "CtrlCtrl" );
         //:szIndentGroup = szIndent
         ZeidonStringCopy( szIndentGroup, 1, 0, szIndent, 1, 0, 101 );
         //:GenJSP_CrteGroupTable( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndent, lTableRowCnt, szNoPositioning )
         GenJSP_CrteGroupTable( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndent, lTableRowCnt, szNoPositioning );
         //:ResetViewFromSubobject( vDialog )
         ResetViewFromSubobject( vDialog );
         //:DropView( vGroupParent )
         DropView( vGroupParent );
         //:vGroupParent = 0
         vGroupParent = 0;
      }

      //:END

      //:// Inside this div there should be a grid control.  Look for the first grid control and check it's mapping.
      //:// During run-time, we will not display anything within this groupbox if the grid has no data.  If there is
      //:// other items in the group box don't worry about them.  Should we give an error message if this group box
      //:// has no grid?
      //:IF szControlType = "GroupBox" AND szGridGroupingFlag = "Y"
      if ( ZeidonStringCompare( szControlType, 1, 0, "GroupBox", 1, 0, 51 ) == 0 && ZeidonStringCompare( szGridGroupingFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
      {

         //:   // If we are not using absolute positioning, then make all the divs
         //:   // float left.
         //:   IF  szNoPositioning = "Y"
         if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
         {
            //:   zAppendQuotedString( szAbsoluteStyle, "float:left;", "style=", "^" )
            zAppendQuotedString( szAbsoluteStyle, "float:left;", "style=", "^" );
         }

         //:   END

         //:   szWriteBuffer = ""
         ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
         //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

         //:   // Div on a Group Control requests that all the controls inside the group line up one under the other.
         //:   szWriteBuffer = "<div" + szHTMLCtrlID + szAbsoluteStyle + ">  <!-- " + vDialog.Control.Tag + " --> "
         ZeidonStringCopy( szWriteBuffer, 1, 0, "<div", 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, szHTMLCtrlID, 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, ">  <!-- ", 1, 0, 10001 );
         GetVariableFromAttribute( szTempString_0, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_0, 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
         //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

         //:szViewName = ""
         ZeidonStringCopy( szViewName, 1, 0, "", 1, 0, 65 );
         //:szMapEntityName = ""
         ZeidonStringCopy( szMapEntityName, 1, 0, "", 1, 0, 33 );

         //:SetViewToSubobject( vDialog, "CtrlCtrl" )
         SetViewToSubobject( vDialog, "CtrlCtrl" );
         //:FOR EACH vDialog.Control
         RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
         while ( RESULT > zCURSOR_UNCHANGED )
         {
            //:IF vDialog.ControlDef.Tag = "Grid" AND szViewName = ""
            if ( CompareAttributeToString( vDialog, "ControlDef", "Tag", "Grid" ) == 0 && ZeidonStringCompare( szViewName, 1, 0, "", 1, 0, 65 ) == 0 )
            {
               //:// Should I get grid mapping here?
               //:szViewName = vDialog.CtrlMapView.Name
               GetVariableFromAttribute( szViewName, 0, 'S', 65, vDialog, "CtrlMapView", "Name", "", 0 );
               //:szMapEntityName = vDialog.CtrlMapLOD_Entity.Name
               GetVariableFromAttribute( szMapEntityName, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
            }

            RESULT = SetCursorNextEntity( vDialog, "Control", "" );
            //:END
         }

         //:END
         //:ResetViewFromSubobject( vDialog )
         ResetViewFromSubobject( vDialog );

         //:// If there was a grid with mapping, use these to check the existence of the entity and paint what's in the groupbox
         //:// if the entity exists.
         //:IF szViewName != "" AND szMapEntityName != ""
         if ( ZeidonStringCompare( szViewName, 1, 0, "", 1, 0, 65 ) != 0 && ZeidonStringCompare( szMapEntityName, 1, 0, "", 1, 0, 33 ) != 0 )
         {

            //:szWriteBuffer = "      <%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      <%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      nRC = " + szViewName + ".GetView( strSessionId, ^" + szViewName + "^, vAppSubtask );"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      if ( nRC > 0 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC > 0 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         nRC = " + szViewName + ".CheckExistenceOfEntity( strSessionId, ^" + szMapEntityName + "^ );"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szMapEntityName, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         if ( nRC >= 0 ) "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 ) ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      %>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      %>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //: // Generate everything within this groupbox.
            //:CreateViewFromView( vGroupParent, vDialog )
            CreateViewFromView( &vGroupParent, vDialog );
            //:// Create view for Group as a parent. This will be used in processing subcontrols to check for WebControlProperty.
            //:SetViewToSubobject( vDialog, "CtrlCtrl" )
            SetViewToSubobject( vDialog, "CtrlCtrl" );
            //:szIndentGroup = szIndent
            ZeidonStringCopy( szIndentGroup, 1, 0, szIndent, 1, 0, 101 );
            //:GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup,
            //:                        lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY )
            GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup, lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY );
            //:ResetViewFromSubobject( vDialog )
            ResetViewFromSubobject( vDialog );
            //:DropView( vGroupParent )
            DropView( vGroupParent );
            //:vGroupParent = 0
            vGroupParent = 0;


            //:szWriteBuffer = "      <%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      <%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
            //:// Do I drop the view here?
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      %>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      %>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:ELSE
         }
         else
         {
         }

         //:   // Should I give a message here that there is no grid within this groupbox or
         //:   // should I just ignore it?
         //:END
         //:   szWriteBuffer = "</div>  <!--  " + vDialog.Control.Tag + " --> "
         GetVariableFromAttribute( szTempString_1, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
         ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  <!--  ", 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_1, 1, 0, 10001 );
         ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
         //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
      }


      //:END

      //:IF szControlType = "GroupBox" AND szRepeatingGroupFlag = "" AND szFileTransferFlag = "" AND szGroupIsTable = "" AND
      //:   szGridGroupingFlag = "" AND szSurveyGroupFlag = ""
      if ( ZeidonStringCompare( szControlType, 1, 0, "GroupBox", 1, 0, 51 ) == 0 && ZeidonStringCompare( szRepeatingGroupFlag, 1, 0, "", 1, 0, 2 ) == 0 && ZeidonStringCompare( szFileTransferFlag, 1, 0, "", 1, 0, 2 ) == 0 &&
           ZeidonStringCompare( szGroupIsTable, 1, 0, "", 1, 0, 2 ) == 0 && ZeidonStringCompare( szGridGroupingFlag, 1, 0, "", 1, 0, 2 ) == 0 && ZeidonStringCompare( szSurveyGroupFlag, 1, 0, "", 1, 0, 2 ) == 0 )
      {


         //:// Is this clear even working???!!!
         //:IF szWebCtrlType = "Clear"
         if ( ZeidonStringCompare( szWebCtrlType, 1, 0, "Clear", 1, 0, 51 ) == 0 )
         {
            //:szWriteBuffer = "<div id='clear'></div>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div id='clear'></div>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            //:X_Size = vDialog.Control.PSDLG_X * dDLUnits + lOffsetX  // borrow these for a second
            GetIntegerFromAttribute( &lTempInteger_9, vDialog, "Control", "PSDLG_X" );
            X_Size = lTempInteger_9 * dDLUnits + lOffsetX;
            //:Y_Size = vDialog.Control.PSDLG_Y * dDLUnits + lOffsetY
            GetIntegerFromAttribute( &lTempInteger_10, vDialog, "Control", "PSDLG_Y" );
            Y_Size = lTempInteger_10 * dDLUnits + lOffsetY;
            //:OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" )
            OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" );
            //:// Create view for Group as a parent. This will be used in processing subcontrols to check for WebControlProperty.
            //:CreateViewFromView( vGroupParent, vDialog )
            CreateViewFromView( &vGroupParent, vDialog );
            //:SetViewToSubobject( vDialog, "CtrlCtrl" )
            SetViewToSubobject( vDialog, "CtrlCtrl" );
            //:szIndentGroup = szIndent
            ZeidonStringCopy( szIndentGroup, 1, 0, szIndent, 1, 0, 101 );
            //:GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup,
            //:                        lTableRowCnt, szNoPositioning, X_Size, Y_Size )
            GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup, lTableRowCnt, szNoPositioning, X_Size, Y_Size );
            //:ResetViewFromSubobject( vDialog )
            ResetViewFromSubobject( vDialog );
            //:DropView( vGroupParent )
            DropView( vGroupParent );
            //:vGroupParent = 0
            vGroupParent = 0;
            //:szWriteBuffer = ""
            ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:ELSE
         }
         else
         {
            //:IF szSpanFlag = "Y"
            if ( ZeidonStringCompare( szSpanFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
            {

               //:// Div on a Group Control requests that all the controls inside the group line up one under the other.
               //:szClass = vDialog.Control.CSS_Class
               GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
               //:IF szClass = ""
               if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
               {
                  //:szWriteBuffer = "<span" + szHTMLCtrlID + szAbsoluteStyle + ">"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<span", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szHTMLCtrlID, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer = "<span" + szHTMLCtrlID + "class=^" + szClass + "^ " + szAbsoluteStyle + ">"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<span", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szHTMLCtrlID, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "class=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );
               }

               //:END
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

               //:OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" )
               OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" );
               //:// Create view for Group as a parent. This will be used in processing subcontrols to check for WebControlProperty.
               //:CreateViewFromView( vGroupParent, vDialog )
               CreateViewFromView( &vGroupParent, vDialog );
               //:SetViewToSubobject( vDialog, "CtrlCtrl" )
               SetViewToSubobject( vDialog, "CtrlCtrl" );
               //:szIndentGroup = szIndent
               ZeidonStringCopy( szIndentGroup, 1, 0, szIndent, 1, 0, 101 );
               //:GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup,
               //:                     lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY )
               GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup, lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY );
               //:ResetViewFromSubobject( vDialog )
               ResetViewFromSubobject( vDialog );
               //:DropView( vGroupParent )
               DropView( vGroupParent );
               //:vGroupParent = 0
               vGroupParent = 0;
               //:szWriteBuffer = "</span>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</span>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:ELSE
            }
            else
            {
               //:IF szWebCtrlType = "DivScroll"
               if ( ZeidonStringCompare( szWebCtrlType, 1, 0, "DivScroll", 1, 0, 51 ) == 0 )
               {
                  //:// Div on a Group Control requests that all the controls inside the group line up one under the other.
                  //:zAppendQuotedString( szAbsoluteStyle, "overflow:auto;", "style=", "^" )
                  zAppendQuotedString( szAbsoluteStyle, "overflow:auto;", "style=", "^" );

                  //:// If we are not using absolute positioning, then make all the divs
                  //:// float left.
                  //:IF  szNoPositioning = "Y"
                  if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
                  {
                     //:zAppendQuotedString( szAbsoluteStyle, "float:left;", "style=", "^" )
                     zAppendQuotedString( szAbsoluteStyle, "float:left;", "style=", "^" );
                  }

                  //:END

                  //:szWriteBuffer = ""
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                  //:szClass = vDialog.Control.CSS_Class
                  GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
                  //:IF szClass = ""
                  if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
                  {
                     //:szWriteBuffer = "<div "+ szHTMLCtrlID + szAbsoluteStyle + ">  <!-- " + vDialog.Control.Tag + " --> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "<div ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szHTMLCtrlID, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ">  <!-- ", 1, 0, 10001 );
                     GetVariableFromAttribute( szTempString_2, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_2, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                     //:ELSE
                  }
                  else
                  {
                     //:szWriteBuffer = "<div" + szHTMLCtrlID + "class=^" + szClass + "^ " + szAbsoluteStyle + ">  <!-- " + vDialog.Control.Tag + " --> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "<div", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szHTMLCtrlID, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "class=^", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ">  <!-- ", 1, 0, 10001 );
                     GetVariableFromAttribute( szTempString_3, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_3, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                  }

                  //:END
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                  //:OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" )
                  OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" );
                  //:// Create view for Group as a parent. This will be used in processing subcontrols to check for WebControlProperty.
                  //:CreateViewFromView( vGroupParent, vDialog )
                  CreateViewFromView( &vGroupParent, vDialog );
                  //:SetViewToSubobject( vDialog, "CtrlCtrl" )
                  SetViewToSubobject( vDialog, "CtrlCtrl" );
                  //:szIndentGroup = szIndent
                  ZeidonStringCopy( szIndentGroup, 1, 0, szIndent, 1, 0, 101 );
                  //:GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup,
                  //:                  lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY )
                  GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup, lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY );
                  //:ResetViewFromSubobject( vDialog )
                  ResetViewFromSubobject( vDialog );
                  //:DropView( vGroupParent )
                  DropView( vGroupParent );
                  //:vGroupParent = 0
                  vGroupParent = 0;
                  //:szWriteBuffer = ""
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "</div>  <!-- " + szCtrlTag + " --> "
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  <!-- ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:ELSE
               }
               else
               {
                  //:IF  szDashboardFlag = "Y"
                  if ( ZeidonStringCompare( szDashboardFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
                  {

                     //:// If we are not using absolute positioning, then make all the divs
                     //:// float left.
                     //:IF  szNoPositioning = "Y"
                     if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
                     {
                        //:zAppendQuotedString( szAbsoluteStyle, "float:left;", "style=", "^" )
                        zAppendQuotedString( szAbsoluteStyle, "float:left;", "style=", "^" );
                     }

                     //:END

                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                     //:szClass = vDialog.Control.CSS_Class
                     GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
                     //:IF szClass = ""
                     if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
                     {
                        //:szWriteBuffer = "<div" + szHTMLCtrlID + szAbsoluteStyle + ">  <!-- " + vDialog.Control.Tag + " --> "
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "<div", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szHTMLCtrlID, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ">  <!-- ", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_4, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_4, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                        //:ELSE
                     }
                     else
                     {
                        //:szWriteBuffer = "<div" + szHTMLCtrlID + "class=^" + szClass + "^ " + szAbsoluteStyle + ">  <!-- " + vDialog.Control.Tag + " --> "
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "<div", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szHTMLCtrlID, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "class=^", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ">  <!-- ", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_5, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_5, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                     }

                     //:END
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                     //://*******************************  DASHBOARD CODE   ******************************************************

                     //:szWriteBuffer = "<% "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "<% ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   String szDashboardSource = ^^; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   String szDashboardSource = ^^; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   String szDashboardMore = ^^; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   String szDashboardMore = ^^; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   String szFunction = ^^; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   String szFunction = ^^; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   String szDisplayFrame = ^^; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   String szDisplayFrame = ^^; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   int iDashboardMax = 0; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iDashboardMax = 0; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   int iDashboardCnt = 1; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iDashboardCnt = 1; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   int iMaxColumns = 3; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iMaxColumns = 3; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   int iMaxInCol = 0; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iMaxInCol = 0; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   int iNbrInCol = 1; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iNbrInCol = 1; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   int iColStartNbr = 0; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iColStartNbr = 0; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   int iColEndNbr = 0; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iColEndNbr = 0; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   int iRemainder = 0; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iRemainder = 0; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   int iColNbr = 1; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iColNbr = 1; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   int iSortOrder = 0; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iSortOrder = 0; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   int i = 0; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   int i = 0; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   nRC = vKZXMLPGO.GetView( strSessionId, ^KZXMLPGO^, vAppSubtask ); "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   nRC = vKZXMLPGO.GetView( strSessionId, ^KZXMLPGO^, vAppSubtask ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   vKZXMLPGO.SetAttribute( strSessionId, ^Session^, ^DashboardFrameCount^, 1 ); "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   vKZXMLPGO.SetAttribute( strSessionId, ^Session^, ^DashboardFrameCount^, 1 ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   nRC = " + vDialog.CtrlMapView.Name + ".GetView( strSessionId, ^" + vDialog.CtrlMapView.Name + "^, vAppSubtask ); "
                     GetVariableFromAttribute( szTempString_6, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   nRC = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_6, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
                     GetVariableFromAttribute( szTempString_7, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_7, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   if ( nRC > 0 ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( nRC > 0 ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   { "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   { ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "      nRC = " + vDialog.CtrlMapView.Name + ".CheckExistenceOfEntity( strSessionId, ^DashboardFrameUser^ ); "
                     GetVariableFromAttribute( szTempString_8, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_8, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^DashboardFrameUser^ ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "      if ( nRC >= 0 ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC >= 0 ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "      { "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      { ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         //Order by Sort Order "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         //Order by Sort Order ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         //nRC = " + vDialog.CtrlMapView.Name + ".OrderEntityForView( strSessionId, " + vDialog.CtrlMapView.Name + ", ^DashboardFrameUser^, ^PresentationSortOrder A^); "
                     GetVariableFromAttribute( szTempString_9, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         //nRC = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_9, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".OrderEntityForView( strSessionId, ", 1, 0, 10001 );
                     GetVariableFromAttribute( szTempString_10, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_10, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ", ^DashboardFrameUser^, ^PresentationSortOrder A^); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         //" + vDialog.CtrlMapView.Name + ".TraceLine(^*** nRC after OrderEntityForView *** ^, nRC ); "
                     GetVariableFromAttribute( szTempString_11, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         //", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_11, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine(^*** nRC after OrderEntityForView *** ^, nRC ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         nRC = " + vDialog.CtrlMapView.Name + ".SetCursorFirst( strSessionId, ^DashboardFrameUser^, ^^ ); "
                     GetVariableFromAttribute( szTempString_12, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_12, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSessionId, ^DashboardFrameUser^, ^^ ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         while ( nRC >= 0 ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         while ( nRC >= 0 ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         { "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         { ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            szDisplayFrame = " + vDialog.CtrlMapView.Name + ".GetStringFromAttributeByContext( strSessionId, ^DashboardFrameUser^, ^ActiveOnCurrentDashboard^, ^^, 254 ); "
                     GetVariableFromAttribute( szTempString_13, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            szDisplayFrame = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_13, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^DashboardFrameUser^, ^ActiveOnCurrentDashboard^, ^^, 254 ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            if ( szDisplayFrame.equals( ^Y^ ) ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( szDisplayFrame.equals( ^Y^ ) ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            { "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            { ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               // When we've reached the max number of columns then "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               // When we've reached the max number of columns then ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               // start at column one again.   "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               // start at column one again.   ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               if (iColNbr > iMaxColumns ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               if (iColNbr > iMaxColumns ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                  iColNbr = 1; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                  iColNbr = 1; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               // Set what column this frame will be positioned in. "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               // Set what column this frame will be positioned in. ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               " + vDialog.CtrlMapView.Name + ".SetAttribute( strSessionId, ^DashboardFrameUser^, ^wColumnNbr^, iColNbr ); "
                     GetVariableFromAttribute( szTempString_14, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_14, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttribute( strSessionId, ^DashboardFrameUser^, ^wColumnNbr^, iColNbr ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               iDashboardMax++; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               iDashboardMax++; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               iColNbr++; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               iColNbr++; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            } "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            } ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            nRC =  " + vDialog.CtrlMapView.Name + ".SetCursorNext( strSessionId, ^DashboardFrameUser^, ^^ ); "
                     GetVariableFromAttribute( szTempString_15, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRC =  ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_15, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorNext( strSessionId, ^DashboardFrameUser^, ^^ ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         } "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         } ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "          "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "          ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         iRemainder = iDashboardMax % iMaxColumns;  // mod function  "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         iRemainder = iDashboardMax % iMaxColumns;  // mod function  ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         if ( iRemainder == 0 ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( iRemainder == 0 ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            iMaxInCol = (iDashboardMax / iMaxColumns); "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            iMaxInCol = (iDashboardMax / iMaxColumns); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         else "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         else ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            iMaxInCol = (iDashboardMax / iMaxColumns) + 1; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            iMaxInCol = (iDashboardMax / iMaxColumns) + 1; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         // Loop through each frame that is in the first column, then those in the "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         // Loop through each frame that is in the first column, then those in the ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         // second column etc.        "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         // second column etc.        ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         for  ( i=1; i <= iMaxColumns; i++ ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         for  ( i=1; i <= iMaxColumns; i++ ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         { "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         { ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            iColNbr = i; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            iColNbr = i; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            // If we are onto a new dashboard column, put the closing tag on the previous column "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            // If we are onto a new dashboard column, put the closing tag on the previous column ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            if ( i != 1 ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( i != 1 ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            { "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            { ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "%> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "%> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                  </div> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                  </div> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "<% "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "<% ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            } "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            } ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "%> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "%> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                  <div id=^column-<%=iColNbr%>^> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                  <div id=^column-<%=iColNbr%>^> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "<% "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "<% ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            // These variables are used in the Expand function. "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            // These variables are used in the Expand function. ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            iColStartNbr = iDashboardCnt; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            iColStartNbr = iDashboardCnt; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            iColEndNbr = (iColStartNbr + iMaxInCol) - 1; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            iColEndNbr = (iColStartNbr + iMaxInCol) - 1; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            if (iColEndNbr > iDashboardMax ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            if (iColEndNbr > iDashboardMax ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               iColEndNbr = iDashboardMax; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               iColEndNbr = iDashboardMax; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            nRC = " + vDialog.CtrlMapView.Name + ".SetCursorFirst( strSessionId, ^DashboardFrameUser^, ^wColumnNbr^, i, ^^ ); "
                     GetVariableFromAttribute( szTempString_16, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            nRC = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_16, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSessionId, ^DashboardFrameUser^, ^wColumnNbr^, i, ^^ ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            while ( nRC >= 0 ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            while ( nRC >= 0 ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            { "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            { ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               szDisplayFrame = " + vDialog.CtrlMapView.Name + ".GetStringFromAttributeByContext( strSessionId, ^DashboardFrameUser^, ^ActiveOnCurrentDashboard^, ^^, 254 ); "
                     GetVariableFromAttribute( szTempString_17, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               szDisplayFrame = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_17, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^DashboardFrameUser^, ^ActiveOnCurrentDashboard^, ^^, 254 ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               iSortOrder = " + vDialog.CtrlMapView.Name + ".GetInteger( strSessionId, ^DashboardFrameUser^, ^PresentationSortOrder^ ); "
                     GetVariableFromAttribute( szTempString_18, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               iSortOrder = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_18, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetInteger( strSessionId, ^DashboardFrameUser^, ^PresentationSortOrder^ ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               if ( iSortOrder <= 0 ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               if ( iSortOrder <= 0 ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               { "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               { ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                  iSortOrder = iDashboardCnt; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                  iSortOrder = iDashboardCnt; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                  " + vDialog.CtrlMapView.Name + ".TraceLine(^*** There is no sort order *** ^, iSortOrder ); "
                     GetVariableFromAttribute( szTempString_19, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                  ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_19, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine(^*** There is no sort order *** ^, iSortOrder ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               } "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               } ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               " + vDialog.CtrlMapView.Name + ".SetAttribute( strSessionId, ^DashboardFrameUser^, ^wFrameNbr^, iDashboardCnt ); "
                     GetVariableFromAttribute( szTempString_20, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_20, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetAttribute( strSessionId, ^DashboardFrameUser^, ^wFrameNbr^, iDashboardCnt ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               //" + vDialog.CtrlMapView.Name + ".TraceLine(^*** Dashboard Column *** ^, iColNbr ); "
                     GetVariableFromAttribute( szTempString_21, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               //", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_21, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine(^*** Dashboard Column *** ^, iColNbr ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               if ( szDisplayFrame.equals( ^Y^ ) ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               if ( szDisplayFrame.equals( ^Y^ ) ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               { "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               { ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                  szDashboardSource = " + vDialog.CtrlMapView.Name + ".GetStringFromAttributeByContext( strSessionId, ^DashboardFrame^, ^DashboardDisplayURL^, ^^, 254 ); "
                     GetVariableFromAttribute( szTempString_22, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                  szDashboardSource = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_22, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^DashboardFrame^, ^DashboardDisplayURL^, ^^, 254 ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                  szDashboardMore = " + vDialog.CtrlMapView.Name + ".GetStringFromAttributeByContext( strSessionId, ^DashboardFrame^, ^ExpandedDisplayURL^, ^^, 254 ); "
                     GetVariableFromAttribute( szTempString_23, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                  szDashboardMore = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_23, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^DashboardFrame^, ^ExpandedDisplayURL^, ^^, 254 ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                  szFunction = ^Expand(this, ^ + iDashboardCnt + ^, ^ + iColNbr + ^, ^ + iColStartNbr + ^, ^ + iColEndNbr + ^)^; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                  szFunction = ^Expand(this, ^ + iDashboardCnt + ^, ^ + iColNbr + ^, ^ + iColStartNbr + ^, ^ + iColEndNbr + ^)^; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                  //" + vDialog.CtrlMapView.Name + ".TraceLine(^*** Expand Function *** ^, szFunction );         "
                     GetVariableFromAttribute( szTempString_24, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                  //", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_24, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine(^*** Expand Function *** ^, szFunction );         ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "%> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "%> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                     <div id=^rpt-display-<%=iDashboardCnt%>^ class=^region-display^> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                     <div id=^rpt-display-<%=iDashboardCnt%>^ class=^region-display^> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                       <div class=^region-header^> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                       <div class=^region-header^> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                         <div id=^rpt-display-title-<%=iDashboardCnt%>^ class=^region-header-title^ >A Report <%=iSortOrder%> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                         <div id=^rpt-display-title-<%=iDashboardCnt%>^ class=^region-header-title^ >A Report <%=iSortOrder%> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                         </div> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                         </div> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                         <div id=^rpt-display-expand-<%=iDashboardCnt%>^ class=^region-header-title-expand^ title=^Expand^ onclick=^<%=szFunction%>^> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                         <div id=^rpt-display-expand-<%=iDashboardCnt%>^ class=^region-header-title-expand^ title=^Expand^ onclick=^<%=szFunction%>^> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                         </div> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                         </div> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                         <div id=^rpt-display-open-<%=iDashboardCnt%>^ class=^region-header-title-open^ title=^More Detail...^ onclick=^OpenFrame(this,'<%=szDashboardMore%>' );^> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                         <div id=^rpt-display-open-<%=iDashboardCnt%>^ class=^region-header-title-open^ title=^More Detail...^ onclick=^OpenFrame(this,'<%=szDashboardMore%>' );^> ", 1, 0,
                        10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                         </div> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                         </div> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                       </div> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                       </div> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                       <div id=^rpt-display-content-<%=iDashboardCnt%>^ class=^region-body-content^ > "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                       <div id=^rpt-display-content-<%=iDashboardCnt%>^ class=^region-body-content^ > ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                          <iframe src=^<%=szDashboardSource%>^ width=^100%^ height=^100%^> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                          <iframe src=^<%=szDashboardSource%>^ width=^100%^ height=^100%^> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                          </iframe> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                          </iframe> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                       </div> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                       </div> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                     </div> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                     </div> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "<% "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "<% ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "    "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "    ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                   iDashboardCnt++; "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                   iDashboardCnt++; ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               } // if ( szDisplayFrame.equals( ^Y^ ) ) "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               } // if ( szDisplayFrame.equals( ^Y^ ) ) ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "               nRC =  " + vDialog.CtrlMapView.Name + ".SetCursorNext( strSessionId, ^DashboardFrameUser^, ^wColumnNbr^, i, ^^ ); "
                     GetVariableFromAttribute( szTempString_25, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "               nRC =  ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_25, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorNext( strSessionId, ^DashboardFrameUser^, ^wColumnNbr^, i, ^^ ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            } // While "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            } // While ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "            //vComboBox2.DropView( strSessionId ); "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "            //vComboBox2.DropView( strSessionId ); ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         }  // For each i "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         }  // For each i ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         // Now close the last column div. "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         // Now close the last column div. ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "%> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "%> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "                  </div> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "                  </div> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "<% "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "<% ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = " "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, " ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "      } // if CheckExistenceOfEntity "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      } // if CheckExistenceOfEntity ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "   } "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "   } ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = ""
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "%> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "%> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                     //://*****************************************  END OF DASHBOARD   ********************************************************

                     //:szWriteBuffer = "</div>  <!-- " + szCtrlTag + " --> "
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  <!-- ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                     //:ELSE
                  }
                  else
                  {
                     //:IF  sziFrameFlag = "Y"
                     if ( ZeidonStringCompare( sziFrameFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
                     {

                        //:// If we are not using absolute positioning, then make all the divs
                        //:// float left.
                        //:IF  szNoPositioning = "Y"
                        if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
                        {
                           //:zAppendQuotedString( szAbsoluteStyle, "float:left;", "style=", "^" )
                           zAppendQuotedString( szAbsoluteStyle, "float:left;", "style=", "^" );
                        }

                        //:END

                        //:szWriteBuffer = ""
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                        //:// Div on a Group Control requests that all the controls inside the group line up one under the other.
                        //:szClass = vDialog.Control.CSS_Class
                        GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
                        //:IF szClass = ""
                        if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
                        {
                           //:szWriteBuffer = "<iframe " + szAbsoluteStyle + " name=^" + szCtrlTag + "^ id=^" + szCtrlTag + "^ src=^" + vDialog.Control.WebFileName + "^>  <!-- " + vDialog.Control.Tag + " --> "
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "<iframe ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " name=^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ src=^", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_26, 0, 'S', 261, vDialog, "Control", "WebFileName", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_26, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^>  <!-- ", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_27, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_27, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                           //:ELSE
                        }
                        else
                        {
                           //:szWriteBuffer = "<iframe class=^" + szClass + "^ " + szAbsoluteStyle + ">  <!-- " + vDialog.Control.Tag + " --> "
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "<iframe class=^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ">  <!-- ", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_28, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_28, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                        }

                        //:END
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                        //:szWriteBuffer = "</iframe>  <!-- " + vDialog.Control.Tag + " --> "
                        GetVariableFromAttribute( szTempString_29, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "</iframe>  <!-- ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_29, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                        //:ELSE
                     }
                     else
                     {
                        //:// Div is the default group for now so we don't have to check IF szDivFlag = "Y" for the moment.
                        //://IF szDivFlag = "Y"

                        //:// Add Scrollable if requested.
                        //:IF szScrollableFlag = "Y"
                        if ( ZeidonStringCompare( szScrollableFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
                        {
                           //:zAppendQuotedString( szAbsoluteStyle, "overflow:auto;", "style=", "^" )
                           zAppendQuotedString( szAbsoluteStyle, "overflow:auto;", "style=", "^" );
                        }

                        //:END

                        //:// If we are not using absolute positioning, then make all the divs
                        //:// float left.
                        //:IF  szNoPositioning = "Y"
                        if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
                        {
                           //:zAppendQuotedString( szAbsoluteStyle, "float:left;", "style=", "^" )
                           zAppendQuotedString( szAbsoluteStyle, "float:left;", "style=", "^" );
                        }

                        //:END

                        //:szWriteBuffer = ""
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                        //:// If this is a div we want to toggle
                        //:IF szToggleFlag = "Y"
                        if ( ZeidonStringCompare( szToggleFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
                        {
                           //:szWriteBuffer = "<div style=^float:left;^>  <!-- Div surrounding toggle --> "
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "<div style=^float:left;^>  <!-- Div surrounding toggle --> ", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "<div style=^height:20px;^><a href=^#^ onclick=^animatedcollapse.toggle('" + szCtrlTag + "');^ style=^^>" + vDialog.Control.Text + "</a></div>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "<div style=^height:20px;^><a href=^#^ onclick=^animatedcollapse.toggle('", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "');^ style=^^>", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_30, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_30, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "</a></div>", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        }

                        //:END


                        //:// Div on a Group Control requests that all the controls inside the group line up one under the other.
                        //:szClass = vDialog.Control.CSS_Class
                        GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
                        //:IF szClass = ""
                        if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
                        {
                           //:szWriteBuffer = "<div" + szHTMLCtrlID + szAbsoluteStyle + ">  <!-- " + vDialog.Control.Tag + " --> "
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "<div", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szHTMLCtrlID, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ">  <!-- ", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_31, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_31, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                           //:ELSE
                        }
                        else
                        {
                           //:szWriteBuffer = "<div" + szHTMLCtrlID + "class=^" + szClass + "^ " + szAbsoluteStyle + ">  <!-- " + vDialog.Control.Tag + " --> "
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "<div", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szHTMLCtrlID, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "class=^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ">  <!-- ", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_32, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_32, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                        }

                        //:END
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                        //:// Should we put reCAPTCHA code here???  Or should I have done this up above?
                        //:IF szreCAPTCHAFlag = "Y"
                        if ( ZeidonStringCompare( szreCAPTCHAFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
                        {
                           //:szWriteBuffer = "<script type=^text/javascript^"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "<script type=^text/javascript^", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "   src=^https://api-secure.recaptcha.net/challenge?k=" + vDialog.Control.WebreCAPTCHAPublicKey + "^"
                           GetVariableFromAttribute( szTempString_33, 0, 'S', 255, vDialog, "Control", "WebreCAPTCHAPublicKey", "", 0 );
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "   src=^https://api-secure.recaptcha.net/challenge?k=", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_33, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "</script>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "</script>", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                           //:szWriteBuffer = "<noscript>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "<noscript>", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "   <iframe src=^https://api-secure.recaptcha.net/noscript?k=" + vDialog.Control.WebreCAPTCHAPublicKey + "^"
                           GetVariableFromAttribute( szTempString_34, 0, 'S', 255, vDialog, "Control", "WebreCAPTCHAPublicKey", "", 0 );
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "   <iframe src=^https://api-secure.recaptcha.net/noscript?k=", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_34, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "       height=^300^ width=^500^ frameborder=^0^></iframe><br>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "       height=^300^ width=^500^ frameborder=^0^></iframe><br>", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "   <textarea name=^recaptcha_challenge_field^ rows=^3^ cols=^40^>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "   <textarea name=^recaptcha_challenge_field^ rows=^3^ cols=^40^>", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "   </textarea>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "   </textarea>", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "   <input type=^hidden^ name=^recaptcha_response_field^"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "   <input type=^hidden^ name=^recaptcha_response_field^", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "       value=^manual_challenge^"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "       value=^manual_challenge^", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:szWriteBuffer = "</noscript>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "</noscript>", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                           //:ELSE
                        }
                        else
                        {

                           //:// KJS 09/19/08 - Adding the ability to include a file inside a div.  I am assuming that if there
                           //:// is an include file, there will be nothing else inside the div so we dont' need to call
                           //:// GenJSP_CrteCtrlsRecurs.
                           //:IF szIncludeFileFlag = "Y"
                           if ( ZeidonStringCompare( szIncludeFileFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
                           {

                              //:szWriteBuffer = ""
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "<%@include file=^" + vDialog.Control.WebFileName + "^ %>"
                              GetVariableFromAttribute( szTempString_35, 0, 'S', 261, vDialog, "Control", "WebFileName", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "<%@include file=^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_35, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^ %>", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = ""
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:ELSE
                           }
                           else
                           {
                              //:// Only put this in if there was no web type.  We might want to change this later.
                              //:IF szDivFlag = ""
                              if ( ZeidonStringCompare( szDivFlag, 1, 0, "", 1, 0, 2 ) == 0 )
                              {
                                 //:IF vDialog.Control.Text != ""
                                 if ( CompareAttributeToString( vDialog, "Control", "Text", "" ) != 0 )
                                 {
                                    //:szWriteBuffer = "<div " + szHTMLCtrlID + ">" + vDialog.Control.Text + "</div>"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "<div ", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szHTMLCtrlID, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );
                                    GetVariableFromAttribute( szTempString_36, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_36, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "</div>", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 }

                                 //:END
                              }

                              //:END

                              //:IF szToggleFlag = "Y"
                              if ( ZeidonStringCompare( szToggleFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
                              {
                                 //:szWriteBuffer = "<script type=^text/javascript^>animatedcollapse.addDiv('" + szCtrlTag + "', 'fade=400,hide=1,persist=1');animatedcollapse.init();</script>"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "<script type=^text/javascript^>animatedcollapse.addDiv('", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "', 'fade=400,hide=1,persist=1');animatedcollapse.init();</script>", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              }

                              //:END

                              //:OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" )
                              OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" );
                              //:// Create view for Group as a parent. This will be used in processing subcontrols to check for WebControlProperty.
                              //:CreateViewFromView( vGroupParent, vDialog )
                              CreateViewFromView( &vGroupParent, vDialog );
                              //://TraceLineS("*** About to call recurs code from div *** ", vDialog.Control.Tag )
                              //:SetViewToSubobject( vDialog, "CtrlCtrl" )
                              SetViewToSubobject( vDialog, "CtrlCtrl" );
                              //:szIndentGroup = szIndent
                              ZeidonStringCopy( szIndentGroup, 1, 0, szIndent, 1, 0, 101 );
                              //:GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup,
                              //:         lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY )
                              GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup, lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY );
                              //:ResetViewFromSubobject( vDialog )
                              ResetViewFromSubobject( vDialog );
                              //:DropView( vGroupParent )
                              DropView( vGroupParent );
                              //:vGroupParent = 0
                              vGroupParent = 0;
                           }

                           //:END
                        }

                        //:END

                        //:IF szToggleFlag = "Y"
                        if ( ZeidonStringCompare( szToggleFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
                        {
                           //:szWriteBuffer = "</div> <!-- End Div for surrounding toggle --> "
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "</div> <!-- End Div for surrounding toggle --> ", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        }

                        //:END

                        //:szWriteBuffer = ""
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "</div>  <!--  " + szCtrlTag + " --> "
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  <!--  ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " --> ", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     }

                     //:END
                  }

                  //:END
               }

               //:END
            }

            //:END
         }

         //:END

         //:ELSE  // Not a groupbox
      }
      else
      {
         //:IF szControlType = "Text"  // TEXT
         if ( ZeidonStringCompare( szControlType, 1, 0, "Text", 1, 0, 51 ) == 0 )
         {
            //:TraceLineS("*** Creating Text *** ", szCtrlTag )
            TraceLineS( "*** Creating Text *** ", szCtrlTag );
            //:GenJSP_CrteText( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndent, szCtrlTag,
            //:                 szJustify, szNoPositioning, lOffsetX, lOffsetY )
            GenJSP_CrteText( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndent, szCtrlTag, szJustify, szNoPositioning, lOffsetX, lOffsetY );
         }

         //:END

         //:IF szControlType = "EditBox"  // EDITBOX
         if ( ZeidonStringCompare( szControlType, 1, 0, "EditBox", 1, 0, 51 ) == 0 )
         {
            //:GenJSP_CrteEditBox( vDialog, lFile, szWriteBuffer, szIndent, szCtrlTag,
            //:                    "", szJustify, szNoPositioning, lOffsetX, lOffsetY )
            GenJSP_CrteEditBox( vDialog, lFile, szWriteBuffer, szIndent, szCtrlTag, "", szJustify, szNoPositioning, lOffsetX, lOffsetY );
         }

         //:END

         //:IF szControlType = "Calendar"  // CALENDAR
         if ( ZeidonStringCompare( szControlType, 1, 0, "Calendar", 1, 0, 51 ) == 0 )
         {
            //:GenJSP_CrteCalendar( vDialog, lFile, szWriteBuffer, szIndent, szCtrlTag,
            //:                     "", szJustify, szNoPositioning, lOffsetX, lOffsetY )
            GenJSP_CrteCalendar( vDialog, lFile, szWriteBuffer, szIndent, szCtrlTag, "", szJustify, szNoPositioning, lOffsetX, lOffsetY );
         }

         //:END

         //:IF szControlType = "RadioGrp" // RADIO BUTTON GROUP
         if ( ZeidonStringCompare( szControlType, 1, 0, "RadioGrp", 1, 0, 51 ) == 0 )
         {
            //:szRadioGroupName = szCtrlTag
            ZeidonStringCopy( szRadioGroupName, 1, 0, szCtrlTag, 1, 0, 33 );
            //:szWriteBuffer = "<% strErrorMapValue = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<% strErrorMapValue = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:IF vDialog.CtrlMapView EXISTS
            lTempInteger_11 = CheckExistenceOfEntity( vDialog, "CtrlMapView" );
            if ( lTempInteger_11 == 0 )
            {
               //:szWriteBuffer = "   nRC = " + vDialog.CtrlMapView.Name +
               //:                ".GetView( strSessionId, ^" + vDialog.CtrlMapView.Name + "^, vAppSubtask );"
               GetVariableFromAttribute( szTempString_37, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_37, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_38, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_38, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   if ( nRC <= 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( nRC <= 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      " + vDialog.CtrlMapView.Name +
               //:                ".TraceLine( ^Invalid View: ^, ^" + szCtrlTag + "^ );"
               GetVariableFromAttribute( szTempString_39, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_39, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^Invalid View: ^, ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   else"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   else", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      nRC = " + vDialog.CtrlMapView.Name +
               //:                ".CheckExistenceOfEntity( strSessionId, ^" +
               //:                vDialog.CtrlMapRelatedEntity.Name + "^ );"
               GetVariableFromAttribute( szTempString_40, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_40, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_41, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_41, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      if ( nRC >= 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC >= 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "         strRadioGroupValue = " +
               //:                vDialog.CtrlMapView.Name + ".GetString( strSessionId, ^" +
               //:                vDialog.CtrlMapRelatedEntity.Name + "^, ^" +
               //:                vDialog.CtrlMapER_Attribute.Name + "^ );"
               GetVariableFromAttribute( szTempString_42, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         strRadioGroupValue = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_42, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetString( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_43, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_43, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_44, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_44, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END

            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //://KJS 11/14/07 - I don't think there should always be a box around radio buttons.
            //://I'm going to do this like the way group box is (or was).  If there is text
            //://to go on the box then we will create <fieldset.  If there is no text then
            //://we will create a div.
            //://KJS 10/07/09 - I added the id to this <div but then realized that the radio buttons also have this
            //://id, so I am adding "gb" in front of the control tag.  Not sure how much we care that this div has
            //://an id and name but think it should.
            //:IF vDialog.Control.Text = ""
            if ( CompareAttributeToString( vDialog, "Control", "Text", "" ) == 0 )
            {
               //://szWriteBuffer = "<div id=^gb" + szCtrlTag + "^ name=^gb" + szCtrlTag + "^ " + szAbsoluteStyle + ">"     Kelly 2012.06.15
               //:szWriteBuffer = "<div id=^gb" + szCtrlTag + "^ name=^gb" + szCtrlTag + "^ style=^float:left;^>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div id=^gb", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ name=^gb", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ style=^float:left;^>", 1, 0, 10001 );
               //:ELSE
            }
            else
            {
               //:szWriteBuffer = "<fieldset " + szAbsoluteStyle + ">"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<fieldset ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );
            }

            //:END
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:IF vDialog.Control.Text != ""
            if ( CompareAttributeToString( vDialog, "Control", "Text", "" ) != 0 )
            {
               //:szWriteBuffer = "<div>" + vDialog.Control.Text + "</div>"
               GetVariableFromAttribute( szTempString_45, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div>", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_45, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "</div>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END

            //:OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" )
            OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" );
            //:SetViewToSubobject( vDialog, "CtrlCtrl" )
            SetViewToSubobject( vDialog, "CtrlCtrl" );
            //:szIndentGroup = szIndent + "   "
            ZeidonStringCopy( szIndentGroup, 1, 0, szIndent, 1, 0, 101 );
            ZeidonStringConcat( szIndentGroup, 1, 0, "   ", 1, 0, 101 );
            //:GenJSP_CrteCtrlsRadio( vDialog, lFile, szWriteBuffer, szIndentGroup,
            //:                       szRadioGroupName, szNoPositioning, lOffsetX, lOffsetY )
            GenJSP_CrteCtrlsRadio( vDialog, lFile, szWriteBuffer, szIndentGroup, szRadioGroupName, szNoPositioning, lOffsetX, lOffsetY );
            //:ResetViewFromSubobject( vDialog )
            ResetViewFromSubobject( vDialog );
            //:IF vDialog.Control.Text = ""
            if ( CompareAttributeToString( vDialog, "Control", "Text", "" ) == 0 )
            {
               //:szWriteBuffer = "</div>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>", 1, 0, 10001 );
               //:ELSE
            }
            else
            {
               //:szWriteBuffer = "</fieldset>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</fieldset>", 1, 0, 10001 );
            }

            //:END
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
         }


         //:END

         //:IF szControlType = "CheckBox"  // CHECKBOX
         if ( ZeidonStringCompare( szControlType, 1, 0, "CheckBox", 1, 0, 51 ) == 0 )
         {
            //:GenJSP_CrteCheckBox( vDialog, lFile, szWriteBuffer, szIndent, szCtrlTag,
            //:                     "", szJustify, szNoPositioning, lOffsetX, lOffsetY )
            GenJSP_CrteCheckBox( vDialog, lFile, szWriteBuffer, szIndent, szCtrlTag, "", szJustify, szNoPositioning, lOffsetX, lOffsetY );
         }

         //:END

         //:IF szControlType = "PushBtn"  // PUSH BUTTON
         if ( ZeidonStringCompare( szControlType, 1, 0, "PushBtn", 1, 0, 51 ) == 0 )
         {
            //:szActionName = ""
            ZeidonStringCopy( szActionName, 1, 0, "", 1, 0, 33 );
            //:IF vDialog.EventAct EXISTS
            lTempInteger_12 = CheckExistenceOfEntity( vDialog, "EventAct" );
            if ( lTempInteger_12 == 0 )
            {
               //:szActionName = vDialog.EventAct.Tag
               GetVariableFromAttribute( szActionName, 0, 'S', 33, vDialog, "EventAct", "Tag", "", 0 );
               //:nRC = zstrcmpi( szActionName, "alt-f4" )
               nRC = zstrcmpi( szActionName, "alt-f4" );
               //:IF nRC = 0
               if ( nRC == 0 )
               {
                  //:szActionName = "AltF4"
                  ZeidonStringCopy( szActionName, 1, 0, "AltF4", 1, 0, 33 );
               }

               //:END
            }

            //:END

            //:CreateTabIndexString( vDialog, szTabIndex )
            CreateTabIndexString( vDialog, szTabIndex );
            //:szAbsoluteStyle = szAbsoluteStyle + szTabIndex
            ZeidonStringConcat( szAbsoluteStyle, 1, 0, szTabIndex, 1, 0, 257 );
            //:// szWriteBuffer = "<button name=^" + szCtrlTag + "^ onclick=^" +
            //://                 szActionName + "( )^ " + "value=^^" + szAbsoluteStyle +
            //://                 ">" + vDialog.Control.Text + "</button>"

            //:szText = vDialog.Control.Text
            GetVariableFromAttribute( szText, 0, 'S', 257, vDialog, "Control", "Text", "", 0 );
            //:// Set Class as either null or with Class value.
            //:IF vDialog.Control.CSS_Class = ""
            if ( CompareAttributeToString( vDialog, "Control", "CSS_Class", "" ) == 0 )
            {
               //:szClass = ""
               ZeidonStringCopy( szClass, 1, 0, "", 1, 0, 257 );
               //:ELSE
            }
            else
            {
               //:szClass = "class=^" + vDialog.Control.CSS_Class + "^ "
               GetVariableFromAttribute( szTempString_46, 0, 'S', 255, vDialog, "Control", "CSS_Class", "", 0 );
               ZeidonStringCopy( szClass, 1, 0, "class=^", 1, 0, 257 );
               ZeidonStringConcat( szClass, 1, 0, szTempString_46, 1, 0, 257 );
               ZeidonStringConcat( szClass, 1, 0, "^ ", 1, 0, 257 );
            }

            //:END

            //://If we put a title on the control, when the mouse is hovered over the control, this text will display.
            //:szTitleHTML = ""
            ZeidonStringCopy( szTitleHTML, 1, 0, "", 1, 0, 257 );
            //:szTitle = vDialog.Control.DIL_Text
            GetVariableFromAttribute( szTitle, 0, 'S', 257, vDialog, "Control", "DIL_Text", "", 0 );
            //:IF szTitle != ""
            if ( ZeidonStringCompare( szTitle, 1, 0, "", 1, 0, 257 ) != 0 )
            {
               //:szTitleHTML = " title=^" + szTitle + "^ "
               ZeidonStringCopy( szTitleHTML, 1, 0, " title=^", 1, 0, 257 );
               ZeidonStringConcat( szTitleHTML, 1, 0, szTitle, 1, 0, 257 );
               ZeidonStringConcat( szTitleHTML, 1, 0, "^ ", 1, 0, 257 );
            }

            //:END

            //://KJS 10/19/07 - Added title.
            //:/*
            //:IF szWebCtrlType = "Button"
            //:   szWidget = "<button type=^button^ " + szClass + szTitleHTML + "name=^"
            //:   szTerm = szText + "</button>"
            //:   szText = ""
            //:ELSE
            //:   szWidget = "<input type=^submit^ " + szClass + szTitleHTML + "name=^"
            //:   szTerm = ""
            //:END
            //:*/
            //:   szWidget = "<button type=^button^ " + szClass + szTitleHTML + "name=^"
            ZeidonStringCopy( szWidget, 1, 0, "<button type=^button^ ", 1, 0, 257 );
            ZeidonStringConcat( szWidget, 1, 0, szClass, 1, 0, 257 );
            ZeidonStringConcat( szWidget, 1, 0, szTitleHTML, 1, 0, 257 );
            ZeidonStringConcat( szWidget, 1, 0, "name=^", 1, 0, 257 );
            //:   szTerm = szText + "</button>"
            ZeidonStringCopy( szTerm, 1, 0, szText, 1, 0, 65 );
            ZeidonStringConcat( szTerm, 1, 0, "</button>", 1, 0, 65 );
            //:   szText = ""
            ZeidonStringCopy( szText, 1, 0, "", 1, 0, 257 );

            //:szParentWebType = ""
            ZeidonStringCopy( szParentWebType, 1, 0, "", 1, 0, 51 );
            //:IF vGroupParent != 0
            if ( vGroupParent != 0 )
            {
               //:SET CURSOR FIRST vGroupParent.WebControlProperty WHERE vGroupParent.WebControlProperty.Name = "Relative Positioning"
               RESULT = SetCursorFirstEntityByString( vGroupParent, "WebControlProperty", "Name", "Relative Positioning", "" );
               //:IF RESULT >= zCURSOR_SET
               if ( RESULT >= zCURSOR_SET )
               {
                  //:szParentWebType = "RelativePos"
                  ZeidonStringCopy( szParentWebType, 1, 0, "RelativePos", 1, 0, 51 );
                  //:ELSE
               }
               else
               {
                  //:szParentWebType = vGroupParent.Control.WebCtrlType
                  GetVariableFromAttribute( szParentWebType, 0, 'S', 51, vGroupParent, "Control", "WebCtrlType", "", 0 );
               }

               //:END
            }

            //:END
            //:IF szParentWebType = "Div" OR szParentWebType = "DivScroll" OR
            //:   szParentWebType = "Span"
            if ( ZeidonStringCompare( szParentWebType, 1, 0, "Div", 1, 0, 51 ) == 0 || ZeidonStringCompare( szParentWebType, 1, 0, "DivScroll", 1, 0, 51 ) == 0 || ZeidonStringCompare( szParentWebType, 1, 0, "Span", 1, 0, 51 ) == 0 )
            {

               //:szWriteBuffer = "<p></p>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<p></p>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:CreateSizeString( vDialog, szSize )
               CreateSizeString( vDialog, szSize );
               //:szWriteBuffer = szWidget + szCtrlTag + "^ id=^" + szCtrlTag + "^ value=^" + szText + "^ onclick=^" +
               //:                szActionName + "( )^ " + "style=^" + szSize + "^>" + szTerm
               ZeidonStringCopy( szWriteBuffer, 1, 0, szWidget, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ value=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szText, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ onclick=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szActionName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "( )^ ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "style=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szSize, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^>", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTerm, 1, 0, 10001 );
               //:ELSE
            }
            else
            {
               //:szWriteBuffer = szWidget + szCtrlTag + "^ id=^" + szCtrlTag + "^ value=^" + szText + "^ onclick=^" +
               //:                szActionName + "( )^ " + szAbsoluteStyle + ">" + szTerm
               ZeidonStringCopy( szWriteBuffer, 1, 0, szWidget, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ value=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szText, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ onclick=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szActionName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "( )^ ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTerm, 1, 0, 10001 );
            }

            //:END
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
         }

         //:END  //End of PushBtn

         //:IF szControlType = "ComboBox"  // COMBOBOX
         if ( ZeidonStringCompare( szControlType, 1, 0, "ComboBox", 1, 0, 51 ) == 0 )
         {
            //:GenJSP_CrteComboBox( vDialog, lFile, szWriteBuffer, szIndentGroup, szCtrlTag, "", szNoPositioning, lOffsetX, lOffsetY )
            GenJSP_CrteComboBox( vDialog, lFile, szWriteBuffer, szIndentGroup, szCtrlTag, "", szNoPositioning, lOffsetX, lOffsetY );
         }

         //:END

         //:IF szControlType = "Bitmap" OR szControlType = "BitmapBtn"  // BITMAP or JPG
         if ( ZeidonStringCompare( szControlType, 1, 0, "Bitmap", 1, 0, 51 ) == 0 || ZeidonStringCompare( szControlType, 1, 0, "BitmapBtn", 1, 0, 51 ) == 0 )
         {
            //:GenJSP_CrteJPG( vDialog, lFile, szWriteBuffer, szIndentGroup, szCtrlTag, szNoPositioning, lOffsetX, lOffsetY )
            GenJSP_CrteJPG( vDialog, lFile, szWriteBuffer, szIndentGroup, szCtrlTag, szNoPositioning, lOffsetX, lOffsetY );
         }

         //:END

         //:IF szControlType = "ListBox"  // LISTBOX
         if ( ZeidonStringCompare( szControlType, 1, 0, "ListBox", 1, 0, 51 ) == 0 )
         {
            //:GenJSP_CrteListBox( vDialog, lFile, szWriteBuffer, szIndentGroup, szCtrlTag, szNoPositioning, lOffsetX, lOffsetY )
            GenJSP_CrteListBox( vDialog, lFile, szWriteBuffer, szIndentGroup, szCtrlTag, szNoPositioning, lOffsetX, lOffsetY );
         }

         //:END  // IF szControlType = "ListBox"

         //:IF szControlType = "GroupBox" AND szRepeatingGroupFlag = "Y"  // REPEATING GROUP
         if ( ZeidonStringCompare( szControlType, 1, 0, "GroupBox", 1, 0, 51 ) == 0 && ZeidonStringCompare( szRepeatingGroupFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
         {

            //:szWriteBuffer = ""
            ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //://szWriteBuffer = "<% /* REPEATING GROUP BEGIN */ %>"
            //:szWriteBuffer = "<!-- REPEATING GROUP BEGIN -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<!-- REPEATING GROUP BEGIN -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Begin with JSP first cursor loop.
            //:IF vDialog.CtrlMapView EXISTS
            lTempInteger_13 = CheckExistenceOfEntity( vDialog, "CtrlMapView" );
            if ( lTempInteger_13 == 0 )
            {
               //:szWriteBuffer = "   nRC = " + vDialog.CtrlMapView.Name + ".GetView( strSessionId, ^" +
               //:                vDialog.CtrlMapView.Name + "^, vAppSubtask );"
               GetVariableFromAttribute( szTempString_47, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_47, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_48, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_48, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   if ( nRC > 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( nRC > 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:// See if a scoping entity has been specified, and if so, use it.
               //:CreateViewFromView( vDialog2, vDialog )
               CreateViewFromView( &vDialog2, vDialog );
               //:SET CURSOR NEXT vDialog2.CtrlMap
               RESULT = SetCursorNextEntity( vDialog2, "CtrlMap", "" );
               //:IF vDialog2.CtrlMapLOD_Entity EXISTS
               lTempInteger_14 = CheckExistenceOfEntity( vDialog2, "CtrlMapLOD_Entity" );
               if ( lTempInteger_14 == 0 )
               {
                  //:szScopingEntityName = vDialog2.CtrlMapLOD_Entity.Name
                  GetVariableFromAttribute( szScopingEntityName, 0, 'S', 33, vDialog2, "CtrlMapLOD_Entity", "Name", "", 0 );
                  //:ELSE
               }
               else
               {
                  //:szScopingEntityName = ""
                  ZeidonStringCopy( szScopingEntityName, 1, 0, "", 1, 0, 33 );
               }

               //:END

               //:DropView( vDialog2 )
               DropView( vDialog2 );

               //:szWriteBuffer = "      nRC = " + vDialog.CtrlMapView.Name +
               //:                ".SetCursorFirst( strSessionId, ^" + vDialog.CtrlMapLOD_Entity.Name +
               //:                "^, ^" + szScopingEntityName + "^ );"
               GetVariableFromAttribute( szTempString_49, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_49, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_50, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_50, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      while ( nRC >= 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      while ( nRC >= 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END

            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:// Process GroupBox begin.

            //://KJS 09/11/08 - Now that we can generate using relative positioning, this
            //:// repeating group doesn't work right.  Instead of using fieldset, I will use the
            //:// div.
            //:IF  szNoPositioning = "Y"
            if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
            {
               //:szClass = vDialog.Control.CSS_Class
               GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
               //:IF szClass = ""
               if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
               {
                  //:szWriteBuffer = "<div " + szAbsoluteStyle + "> <!-- div for repeating group --> "
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<div ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "> <!-- div for repeating group --> ", 1, 0, 10001 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer = "<div class=^" + szClass + "^ " + szAbsoluteStyle + ">  <!-- div for repeating group -->"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ">  <!-- div for repeating group -->", 1, 0, 10001 );
               }

               //:END
               //:ELSE
            }
            else
            {
               //:CreateRelStyleString( vDialog, szRelStyle, 0, 0, "" )
               CreateRelStyleString( vDialog, szRelStyle, 0, 0, "" );
               //:szClass = vDialog.Control.CSS_Class
               GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
               //:IF szClass = ""
               if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
               {
                  //:szWriteBuffer = "<fieldset " + szRelStyle + ">"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<fieldset ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szRelStyle, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer = "<fieldset class=^" + szClass + "^ " + szRelStyle + ">"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<fieldset class=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szRelStyle, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );
               }

               //:END
            }

            //:END

            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:IF vDialog.Control.Text != ""
            if ( CompareAttributeToString( vDialog, "Control", "Text", "" ) != 0 )
            {
               //:szWriteBuffer = "<div>" + vDialog.Control.Text + "</div>"
               GetVariableFromAttribute( szTempString_51, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div>", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_51, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "</div>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END
            //:szWriteBuffer = ""
            ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Process fields on GroupBox.
            //:OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" )
            OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_Y A PSDLG_X A" );
            //:// Create view for Group as a parent. This will be used in processing subcontrols to check for WebControlProperty.
            //:CreateViewFromView( vGroupParent, vDialog )
            CreateViewFromView( &vGroupParent, vDialog );
            //:SetViewToSubobject( vDialog, "CtrlCtrl" )
            SetViewToSubobject( vDialog, "CtrlCtrl" );
            //:szIndentGroup = szIndent + "   "
            ZeidonStringCopy( szIndentGroup, 1, 0, szIndent, 1, 0, 101 );
            ZeidonStringConcat( szIndentGroup, 1, 0, "   ", 1, 0, 101 );
            //:GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup,
            //:                        lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY )
            GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup, lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY );
            //:ResetViewFromSubobject( vDialog )
            ResetViewFromSubobject( vDialog );
            //:DropView( vGroupParent )
            DropView( vGroupParent );
            //:vGroupParent = 0
            vGroupParent = 0;

            //:// Process GroupBox end.
            //:IF  szNoPositioning = "Y"
            if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
            {
               //:szWriteBuffer = "</div>   <!-- end div for repeating group -->"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>   <!-- end div for repeating group -->", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "<div style=^clear:both;^></div> <!-- clear before each repeating group -->"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div style=^clear:both;^></div> <!-- clear before each repeating group -->", 1, 0, 10001 );
               //:ELSE
            }
            else
            {
               //:szWriteBuffer = "</fieldset>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</fieldset>", 1, 0, 10001 );
            }

            //:END

            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Conclude with JSP next cursor loop.
            //:IF vDialog.CtrlMapView EXISTS
            lTempInteger_15 = CheckExistenceOfEntity( vDialog, "CtrlMapView" );
            if ( lTempInteger_15 == 0 )
            {
               //:szWriteBuffer = "         nRC = " + vDialog.CtrlMapView.Name +
               //:                ".SetCursorNext( strSessionId, ^" + vDialog.CtrlMapLOD_Entity.Name +
               //:                "^, ^" + szScopingEntityName + "^ );"
               GetVariableFromAttribute( szTempString_52, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_52, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorNext( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_53, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_53, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }


            //:END

            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = ""
            ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //://szWriteBuffer = "<% /* REPEATING GROUP END */ %>"
            //:szWriteBuffer = "<!-- REPEATING GROUP END -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<!-- REPEATING GROUP END -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
         }


         //:END  // END OF REPEATING GROUP

         //:// SURVEY GROUP
         //:IF szControlType = "GroupBox" AND szSurveyGroupFlag = "Y" AND vDialog.CtrlMapView EXISTS
         lTempInteger_16 = CheckExistenceOfEntity( vDialog, "CtrlMapView" );
         if ( ZeidonStringCompare( szControlType, 1, 0, "GroupBox", 1, 0, 51 ) == 0 && ZeidonStringCompare( szSurveyGroupFlag, 1, 0, "Y", 1, 0, 2 ) == 0 && lTempInteger_16 == 0 )
         {

            //:szWriteBuffer = ""
            ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<!-- SURVEY GROUP BEGIN -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<!-- SURVEY GROUP BEGIN -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            //:szClass = vDialog.Control.CSS_Class
            GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
            //:IF szClass = ""
            if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
            {
               //:szWriteBuffer = "<div> <!-- surrounding div for survey --> "
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div> <!-- surrounding div for survey --> ", 1, 0, 10001 );
               //:ELSE
            }
            else
            {
               //:szWriteBuffer = "<div class=^" + szClass + "^>  <!-- surrounding div for survey -->"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^>  <!-- surrounding div for survey -->", 1, 0, 10001 );
            }

            //:END
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   int iQuestionCount = 0;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iQuestionCount = 0;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   int iQuestionInGroupCount = 0;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   int iQuestionInGroupCount = 0;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   String szQuestion = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   String szQuestion = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   String szTblMultChName = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   String szTblMultChName = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   String szCheckType = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   String szCheckType = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   String strBtnTwo = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   String strBtnTwo = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   String strBtnOne = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   String strBtnOne = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   String szGroupNbr = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   String szGroupNbr = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:// First begin with Question Group loop.
            //:szWriteBuffer = "   nRC = " + vDialog.CtrlMapView.Name + ".GetView( strSessionId, ^" +
            //:             vDialog.CtrlMapView.Name + "^, vAppSubtask );"
            GetVariableFromAttribute( szTempString_54, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   nRC = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_54, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
            GetVariableFromAttribute( szTempString_55, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_55, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   if ( nRC > 0 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( nRC > 0 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// See if a scoping entity has been specified, and if so, use it.
            //:CreateViewFromView( vDialog2, vDialog )
            CreateViewFromView( &vDialog2, vDialog );
            //:SET CURSOR NEXT vDialog2.CtrlMap
            RESULT = SetCursorNextEntity( vDialog2, "CtrlMap", "" );
            //:IF vDialog2.CtrlMapLOD_Entity EXISTS
            lTempInteger_17 = CheckExistenceOfEntity( vDialog2, "CtrlMapLOD_Entity" );
            if ( lTempInteger_17 == 0 )
            {
               //:szScopingEntityName = vDialog2.CtrlMapLOD_Entity.Name
               GetVariableFromAttribute( szScopingEntityName, 0, 'S', 33, vDialog2, "CtrlMapLOD_Entity", "Name", "", 0 );
               //:ELSE
            }
            else
            {
               //:szScopingEntityName = ""
               ZeidonStringCopy( szScopingEntityName, 1, 0, "", 1, 0, 33 );
            }

            //:END

            //:DropView( vDialog2 )
            DropView( vDialog2 );

            //:szWriteBuffer = "      nRC = " + vDialog.CtrlMapView.Name +
            //:             ".CheckExistenceOfEntity( strSessionId, ^SurveyQuestionGroup^ );"
            GetVariableFromAttribute( szTempString_56, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_56, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^SurveyQuestionGroup^ );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "      if ( nRC >= 0 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC >= 0 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          szGroupNbr = " + vDialog.CtrlMapView.Name +
            //:      ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestionaire^, ^wCurrentSurveyGroup^, ^^, 254 );"
            GetVariableFromAttribute( szTempString_57, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          szGroupNbr = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_57, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestionaire^, ^wCurrentSurveyGroup^, ^^, 254 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         nRC = " + vDialog.CtrlMapView.Name +
            //:             ".SetCursorFirst( strSessionId, ^SurveyQuestionGroup^" +
            //:             ", ^wOrder^, szGroupNbr, ^^ );"
            GetVariableFromAttribute( szTempString_58, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_58, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSessionId, ^SurveyQuestionGroup^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ", ^wOrder^, szGroupNbr, ^^ );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "      if ( nRC >= 0 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC >= 0 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szGroupName = " + vDialog.CtrlMapView.Name +
            //:      ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestionGroup^, ^Name^, ^^, 254 );"
            GetVariableFromAttribute( szTempString_59, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szGroupName = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_59, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestionGroup^, ^Name^, ^^, 254 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = "<div class=^surveygroup^> <!-- div for survey question group --> "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^surveygroup^> <!-- div for survey question group --> ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<span><%=szGroupName%></span>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<span><%=szGroupName%></span>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "</div> <!-- end div for survey question group --> "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</div> <!-- end div for survey question group --> ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = "<div class=^surveygroupspacing^> <!-- div for survey question group spacing --> "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^surveygroupspacing^> <!-- div for survey question group spacing --> ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //: szWriteBuffer = "</div> <!-- end div for survey question group spacing --> "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</div> <!-- end div for survey question group spacing --> ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:// Now go through question loop.
            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// See if a scoping entity has been specified, and if so, use it.
            //:CreateViewFromView( vDialog2, vDialog )
            CreateViewFromView( &vDialog2, vDialog );
            //:SET CURSOR NEXT vDialog2.CtrlMap
            RESULT = SetCursorNextEntity( vDialog2, "CtrlMap", "" );
            //:IF vDialog2.CtrlMapLOD_Entity EXISTS
            lTempInteger_18 = CheckExistenceOfEntity( vDialog2, "CtrlMapLOD_Entity" );
            if ( lTempInteger_18 == 0 )
            {
               //:szScopingEntityName = vDialog2.CtrlMapLOD_Entity.Name
               GetVariableFromAttribute( szScopingEntityName, 0, 'S', 33, vDialog2, "CtrlMapLOD_Entity", "Name", "", 0 );
               //:ELSE
            }
            else
            {
               //:szScopingEntityName = ""
               ZeidonStringCopy( szScopingEntityName, 1, 0, "", 1, 0, 33 );
            }

            //:END

            //:DropView( vDialog2 )
            DropView( vDialog2 );

            //:szWriteBuffer = "      nRC = " + vDialog.CtrlMapView.Name +
            //:             ".SetCursorFirst( strSessionId, ^" + "SurveyQuestion" +
            //:             "^, ^^ );"
            GetVariableFromAttribute( szTempString_60, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_60, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSessionId, ^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "SurveyQuestion", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^^ );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      while ( nRC >= 0 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      while ( nRC >= 0 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Get the Question
            //:szWriteBuffer = "          iQuestionCount = iQuestionCount + 1;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          iQuestionCount = iQuestionCount + 1;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          szQuestion = " + vDialog.CtrlMapView.Name +
            //:      ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^Number^, ^^, 254 );"
            GetVariableFromAttribute( szTempString_61, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          szQuestion = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_61, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^Number^, ^^, 254 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          if ( szQuestion.length() > 0 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          if ( szQuestion.length() > 0 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "             szQuestion = szQuestion + ^. ^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "             szQuestion = szQuestion + ^. ^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          szQuestion = szQuestion + " + vDialog.CtrlMapView.Name +
            //:      ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^Question^, ^^, 254 );"
            GetVariableFromAttribute( szTempString_62, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          szQuestion = szQuestion + ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_62, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^Question^, ^^, 254 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szQuestionID = " + vDialog.CtrlMapView.Name +
            //:      ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^ID^, ^^, 254 );"
            GetVariableFromAttribute( szTempString_63, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szQuestionID = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_63, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^ID^, ^^, 254 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szHelp = " + vDialog.CtrlMapView.Name +
            //:      ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^HelpDescription^, ^^, 254 );"
            GetVariableFromAttribute( szTempString_64, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szHelp = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_64, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^HelpDescription^, ^^, 254 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szType = " + vDialog.CtrlMapView.Name +
            //:      ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^Type^, ^^, 254 );"
            GetVariableFromAttribute( szTempString_65, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szType = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_65, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^Type^, ^^, 254 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szCommentFlag = " + vDialog.CtrlMapView.Name +
            //:      ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^AllowCommentFlag^, ^^, 1 );"
            GetVariableFromAttribute( szTempString_66, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szCommentFlag = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_66, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^AllowCommentFlag^, ^^, 1 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szQuestionIDName = ^QuestionID^ + iQuestionCount;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szQuestionIDName = ^QuestionID^ + iQuestionCount;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szQuestionTypeName = ^QuestionType^ + iQuestionCount;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szQuestionTypeName = ^QuestionType^ + iQuestionCount;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szAllowCommentName = ^AllowComment^ + iQuestionCount;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szAllowCommentName = ^AllowComment^ + iQuestionCount;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szIsOptional = ^IsOptionalt^ + iQuestionCount;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szIsOptional = ^IsOptionalt^ + iQuestionCount;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szResponseIsOptional = " + vDialog.CtrlMapView.Name +
            //:      ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^ResponseIsOptional^, ^^, 1 );"
            GetVariableFromAttribute( szTempString_67, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szResponseIsOptional = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_67, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^ResponseIsOptional^, ^^, 1 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szQuestionHelp = " + vDialog.CtrlMapView.Name +
            //:      ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^HelpDescription^, ^^, 254 );"
            GetVariableFromAttribute( szTempString_68, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szQuestionHelp = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_68, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^HelpDescription^, ^^, 254 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:// THIS IS WHERE WE WOULD CREATE THE VARIOUS QUESTIONS ETC>

            //:// We have a couple of hidden inputs to keep track of the question id and the type.
            //:szWriteBuffer = "   <input name=^<%=szQuestionIDName%>^ id=^<%=szQuestionIDName%>^ type=^hidden^ value=^<%=szQuestionID%>^>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   <input name=^<%=szQuestionIDName%>^ id=^<%=szQuestionIDName%>^ type=^hidden^ value=^<%=szQuestionID%>^>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   <input name=^<%=szQuestionTypeName%>^ id=^<%=szQuestionTypeName%>^ type=^hidden^ value=^<%=szType%>^>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   <input name=^<%=szQuestionTypeName%>^ id=^<%=szQuestionTypeName%>^ type=^hidden^ value=^<%=szType%>^>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   <input name=^<%=szAllowCommentName%>^ id=^<%=szAllowCommentName%>^ type=^hidden^ value=^<%=szCommentFlag%>^>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   <input name=^<%=szAllowCommentName%>^ id=^<%=szAllowCommentName%>^ type=^hidden^ value=^<%=szCommentFlag%>^>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   <input name=^<%=szIsOptional%>^ id=^<%=szIsOptional%>^ type=^hidden^ value=^<%=szResponseIsOptional%>^>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   <input name=^<%=szIsOptional%>^ id=^<%=szIsOptional%>^ type=^hidden^ value=^<%=szResponseIsOptional%>^>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = "<div class=^surveyquestion^> <!-- div for survey question --> "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^surveyquestion^> <!-- div for survey question --> ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<span title=^<%=szQuestionHelp%>^ ><%=szQuestion%></span>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<span title=^<%=szQuestionHelp%>^ ><%=szQuestion%></span>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "</div> <!-- end div for survey question --> "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</div> <!-- end div for survey question --> ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<div style=^height:5px;^></div>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div style=^height:5px;^></div>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = ""
            ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Create Question Text
            //:szWriteBuffer = "<div class=^surveyquestionanswers^>  <!-- div around survey answers --> "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^surveyquestionanswers^>  <!-- div around survey answers --> ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Check if this is single answer or multiple choice
            //:szWriteBuffer = "   if ( szType.equals(^Text^) ) // Text Answer"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( szType.equals(^Text^) ) // Text Answer", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Single Question code
            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   // MLEdit: mleTextAnswer"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   // MLEdit: mleTextAnswer", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   String szTxtAnswerName = ^txtAnswer^ + szQuestionID;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   String szTxtAnswerName = ^txtAnswer^ + szQuestionID;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   strErrorMapValue = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   strErrorMapValue = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   strErrorMapValue = " + vDialog.CtrlMapView.Name + ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^wTextAnswer^, ^^, 10000 );"
            GetVariableFromAttribute( szTempString_69, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   strErrorMapValue = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_69, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^wTextAnswer^, ^^, 10000 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<div >  <!-- textarea answer -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div >  <!-- textarea answer -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<textarea name=^<%=szTxtAnswerName%>^ id=^<%=szTxtAnswerName%>^ style=^width:700px;height:94px;border:'2px solid';border-style:'groove';^ wrap=^wrap^><%=strErrorMapValue%></textarea>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<textarea name=^<%=szTxtAnswerName%>^ id=^<%=szTxtAnswerName%>^ style=^width:700px;height:94px;border:'2px solid';border-style:'groove';^ wrap=^wrap^><%=strErrorMapValue%></textarea>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "</div >  <!-- end textarea answer -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</div >  <!-- end textarea answer -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// End of Single Question code

            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   else if ( szType.equals(^Yes/No^) ) // Yes/No Answer"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   else if ( szType.equals(^Yes/No^) ) // Yes/No Answer", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   else"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   else", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Start of Multiple choice code
            //:szWriteBuffer = "      if ( szType.equals(^Multiple Choice Single Response^) ) // Multiple Choice Single Answer"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( szType.equals(^Multiple Choice Single Response^) ) // Multiple Choice Single Answer", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         szCheckType = ^radio^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         szCheckType = ^radio^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      else"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      else", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         szCheckType = ^checkbox^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         szCheckType = ^checkbox^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         szTblMultChName = ^tblMultChoice^ + iQuestionCount;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         szTblMultChName = ^tblMultChoice^ + iQuestionCount;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //://Create table that will list multiple choice answers
            //:   // Check if this should be a radio or checkbox.
            //:szWriteBuffer = "<table  cols=2 style=^^  name=^<%=szTblMultChName%>^ id=^<%=szTblMultChName%>^>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<table  cols=2 style=^^  name=^<%=szTblMultChName%>^ id=^<%=szTblMultChName%>^>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<tbody>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<tbody>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      iTableRowCnt = 0;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      iTableRowCnt = 0;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //://szWriteBuffer = "      int    lEntityKey;"
            //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            //://szWriteBuffer = "      String strEntityKey;"
            //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            //:szWriteBuffer = "      String strTag;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strTag;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      String strchkAnswer = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strchkAnswer = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      String strchkAnswerName = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strchkAnswerName = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      String strchkAnswerId = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strchkAnswerId = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      String strAnswerText = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strAnswerText = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      String strQuestionChoiceID = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strQuestionChoiceID = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      zeidon.zView vtblMultChoice = new zeidon.zView( strSessionId );"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      zeidon.zView vtblMultChoice = new zeidon.zView( strSessionId );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      vtblMultChoice.CreateViewFromView( strSessionId, " + vDialog.CtrlMapView.Name + " );"
            GetVariableFromAttribute( szTempString_70, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      vtblMultChoice.CreateViewFromView( strSessionId, ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_70, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      nRC2 = vtblMultChoice.SetCursorFirst( strSessionId, ^SurveyMultiChoiceOption^, ^^ );"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC2 = vtblMultChoice.SetCursorFirst( strSessionId, ^SurveyMultiChoiceOption^, ^^ );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      while ( nRC2 >= 0 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      while ( nRC2 >= 0 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         iTableRowCnt++;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         iTableRowCnt++;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //://szWriteBuffer = "         lEntityKey = vtblMultChoice.GetEntityKey( strSessionId, ^SurveyMultiChoiceOption^ );"
            //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            //://szWriteBuffer = "         strEntityKey = Integer.toString( lEntityKey );"
            //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )

            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         strchkAnswer = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         strchkAnswer = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         strAnswerText = vtblMultChoice.GetStringFromAttributeByContext( strSessionId, ^SurveyMultiChoiceOption^, ^OptionText^, ^^, 200 );"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         strAnswerText = vtblMultChoice.GetStringFromAttributeByContext( strSessionId, ^SurveyMultiChoiceOption^, ^OptionText^, ^^, 200 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         strchkAnswer = vtblMultChoice.GetStringFromAttributeByContext( strSessionId, ^SurveyMultiChoiceOption^, ^wSelectedAnswer^, ^^, 200 );"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         strchkAnswer = vtblMultChoice.GetStringFromAttributeByContext( strSessionId, ^SurveyMultiChoiceOption^, ^wSelectedAnswer^, ^^, 200 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         strQuestionChoiceID = vtblMultChoice.GetStringFromAttributeByContext( strSessionId, ^SurveyMultiChoiceOption^, ^ID^, ^^, 200 );"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         strQuestionChoiceID = vtblMultChoice.GetStringFromAttributeByContext( strSessionId, ^SurveyMultiChoiceOption^, ^ID^, ^^, 200 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "         if ( szCheckType.equals(^radio^) )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( szCheckType.equals(^radio^) )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            strchkAnswerName = ^chkAnswer^ + iQuestionCount;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            strchkAnswerName = ^chkAnswer^ + iQuestionCount;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         else"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         else", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            strchkAnswerName = ^chkAnswer^ + strQuestionChoiceID;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            strchkAnswerName = ^chkAnswer^ + strQuestionChoiceID;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         strchkAnswerId = ^chkAnswer^ + strQuestionChoiceID;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         strchkAnswerId = ^chkAnswer^ + strQuestionChoiceID;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //://szWriteBuffer = "         if ( strchkAnswer.equals( ^Y^ ) )"
            //:szWriteBuffer = "         if ( strchkAnswer.equals( strQuestionChoiceID ) )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( strchkAnswer.equals( strQuestionChoiceID ) )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            strchkAnswer = ^<input name='^ + strchkAnswerName + ^' id='^ + strchkAnswerId + ^' value='^ + strQuestionChoiceID + ^' type='^ + szCheckType + ^'  CHECKED >^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            strchkAnswer = ^<input name='^ + strchkAnswerName + ^' id='^ + strchkAnswerId + ^' value='^ + strQuestionChoiceID + ^' type='^ + szCheckType + ^'  CHECKED >^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         else"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         else", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            strchkAnswer = ^<input name='^ + strchkAnswerName + ^' id='^ + strchkAnswerId + ^' value='^ + strQuestionChoiceID + ^' type='^ + szCheckType + ^' >^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            strchkAnswer = ^<input name='^ + strchkAnswerName + ^' id='^ + strchkAnswerId + ^' value='^ + strQuestionChoiceID + ^' type='^ + szCheckType + ^' >^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<tr>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<tr>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "   <td style=^width:15px;^ nowrap><%=strchkAnswer%></td>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   <td style=^width:15px;^ nowrap><%=strchkAnswer%></td>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   <td nowrap><%=strAnswerText%></td>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   <td nowrap><%=strAnswerText%></td>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "</tr>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</tr>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         nRC2 = vtblMultChoice.SetCursorNext( strSessionId, ^SurveyMultiChoiceOption^, ^^ );"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC2 = vtblMultChoice.SetCursorNext( strSessionId, ^SurveyMultiChoiceOption^, ^^ );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      nRC2 = vtblMultChoice.DropView( strSessionId );"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC2 = vtblMultChoice.DropView( strSessionId );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "</tbody>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</tbody>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "</table>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</table>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// End of Multiple choice code

            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:// END OF CREATING VARIOUS QUESTIONS

            //:szWriteBuffer = "</div>  <!-- div around survey answers --> "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  <!-- div around survey answers --> ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Does question allow a comment

            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   if ( szCommentFlag.equals(^Y^) )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( szCommentFlag.equals(^Y^) )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          String szCommentText = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          String szCommentText = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "          szCommentText = " + vDialog.CtrlMapView.Name +
            //:     ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^RequestCommentText^, ^^, 0 );"
            GetVariableFromAttribute( szTempString_71, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "          szCommentText = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_71, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^RequestCommentText^, ^^, 0 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      if ( szCommentText.equals(^^) )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( szCommentText.equals(^^) )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         szCommentText = ^Comment^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         szCommentText = ^Comment^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<div style=^height:24px^></div>  <!-- Spacer before comment -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div style=^height:24px^></div>  <!-- Spacer before comment -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<div class=^surveyquestioncommenttext^>  <!-- div for comment -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^surveyquestioncommenttext^>  <!-- div for comment -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<span><%=szCommentText%></span>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<span><%=szCommentText%></span>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "</div>  <!-- End of comment -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  <!-- End of comment -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<div style=^height:5px;^></div>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div style=^height:5px;^></div>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<div class=^surveyquestioncomment^>  <!-- div comment text answer -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^surveyquestioncomment^>  <!-- div comment text answer -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   // MLEdit: MLEdit1"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   // MLEdit: MLEdit1", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      String szCommentName = ^txtComment^ + szQuestionID;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      String szCommentName = ^txtComment^ + szQuestionID;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   strErrorMapValue = ^^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   strErrorMapValue = ^^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   strErrorMapValue = " + vDialog.CtrlMapView.Name + ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^wComment^, ^^, 10000 );"
            GetVariableFromAttribute( szTempString_72, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   strErrorMapValue = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_72, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^SurveyQuestion^, ^wComment^, ^^, 10000 );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<textarea name=^<%=szCommentName%>^ id=^<%=szCommentName%>^ style=^width:700px;height:94px;border:'2px solid';border-style:'groove';^ wrap=^wrap^><%=strErrorMapValue%></textarea>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<textarea name=^<%=szCommentName%>^ id=^<%=szCommentName%>^ style=^width:700px;height:94px;border:'2px solid';border-style:'groove';^ wrap=^wrap^><%=strErrorMapValue%></textarea>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "</div>  <!-- comment text answer -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  <!-- comment text answer -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:// End of Question Comment


            //:// Spacing between questions
            //:szWriteBuffer = "<div class=^surveyquestionspacing^></div> <!-- spacing between survey questions -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^surveyquestionspacing^></div> <!-- spacing between survey questions -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Loop to next Question.
            //:szWriteBuffer = "         nRC = " + vDialog.CtrlMapView.Name +
            //:             ".SetCursorNext( strSessionId, ^" + "SurveyQuestion" +
            //:             "^, ^" + szScopingEntityName + "^ );"
            GetVariableFromAttribute( szTempString_73, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_73, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorNext( strSessionId, ^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "SurveyQuestion", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "      }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:// Loop to next Question Group.
            //:szWriteBuffer = "         nRC = " + vDialog.CtrlMapView.Name +
            //:             ".SetCursorNext( strSessionId, ^" + "SurveyQuestionGroup" +
            //:             "^, ^" + szScopingEntityName + "^ );"
            GetVariableFromAttribute( szTempString_74, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_74, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorNext( strSessionId, ^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "SurveyQuestionGroup", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );



            //:// This is where we create the buttons at the bottom of the page.
            //:// Create Next and Prev buttons if necessary and when we are on the last page
            //:// create the Done button.  These assume that there are the following actions
            //:// in the dialog for this page: SUBMIT_Survey, NEXT_SurveyPage and PREV_SurveyPage
            //:szWriteBuffer = "         // This is where we create the buttons at the bottom of the page.  "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // This is where we create the buttons at the bottom of the page.  ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         // Create Next and Prev buttons if necessary and when we are on the last page"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // Create Next and Prev buttons if necessary and when we are on the last page", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         // create the Done button.  These assume that there are the following actions"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // create the Done button.  These assume that there are the following actions", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         // in the dialog for this page: SUBMIT_Survey, NEXT_SurveyPage and PREV_SurveyPage"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         // in the dialog for this page: SUBMIT_Survey, NEXT_SurveyPage and PREV_SurveyPage", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         if ( nRC >= 0 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            strBtnTwo = ^<button type='button' name='btnNext' id='btnNext' value='' onclick='NEXT_SurveyPage( )'>Next-></button>^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            strBtnTwo = ^<button type='button' name='btnNext' id='btnNext' value='' onclick='NEXT_SurveyPage( )'>Next-></button>^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            if ( Integer.parseInt(szGroupNbr) > 1 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( Integer.parseInt(szGroupNbr) > 1 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            strBtnOne = ^<button type='button' name='btnPrev' id='btnPrev' value='' onclick='PREV_SurveyPage( )'><-Prev</button>^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            strBtnOne = ^<button type='button' name='btnPrev' id='btnPrev' value='' onclick='PREV_SurveyPage( )'><-Prev</button>^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         else"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         else", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            strBtnTwo = ^<button type='button' name='btnSubmit' id='btnSubmit' value='' onclick='SUBMIT_Survey( )'>Submit Survey</button>^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            strBtnTwo = ^<button type='button' name='btnSubmit' id='btnSubmit' value='' onclick='SUBMIT_Survey( )'>Submit Survey</button>^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            if ( Integer.parseInt(szGroupNbr) > 1 )"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( Integer.parseInt(szGroupNbr) > 1 )", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            {"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            strBtnOne = ^<button type='button' name='btnPrev' id='btnPrev' value='' onclick='PREV_SurveyPage( )'><-Prev</button>^;"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            strBtnOne = ^<button type='button' name='btnPrev' id='btnPrev' value='' onclick='PREV_SurveyPage( )'><-Prev</button>^;", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "            }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "         }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = "      }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "   }"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = "   <input name=^SurveyQuestionCount^ id=^SurveyQuestionCount^ type=^hidden^ value=<%=iQuestionCount%>>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "   <input name=^SurveyQuestionCount^ id=^SurveyQuestionCount^ type=^hidden^ value=<%=iQuestionCount%>>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "</div>  <!-- end div for survey -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  <!-- end div for survey -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = "<div class=^surveybuttons^>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^surveybuttons^>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<table>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<table>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<tr>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<tr>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<td><%=strBtnOne%></td>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<td><%=strBtnOne%></td>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<td><%=strBtnTwo%></td>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<td><%=strBtnTwo%></td>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "</tr>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</tr>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "</table>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</table>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "</div>  "
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  ", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

            //:szWriteBuffer = ""
            ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<!-- SURVEY GROUP END -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<!-- SURVEY GROUP END -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
         }


         //:END  // END OF SURVEY GROUP

         //:// Generation of the Tab control
         //:IF szControlType = "Tab"
         if ( ZeidonStringCompare( szControlType, 1, 0, "Tab", 1, 0, 51 ) == 0 )
         {

            //:IF  vDialog.Control.CSS_Class != ""
            if ( CompareAttributeToString( vDialog, "Control", "CSS_Class", "" ) != 0 )
            {
               //:szClass = "tab-pane " + vDialog.Control.CSS_Class
               GetVariableFromAttribute( szTempString_75, 0, 'S', 255, vDialog, "Control", "CSS_Class", "", 0 );
               ZeidonStringCopy( szClass, 1, 0, "tab-pane ", 1, 0, 257 );
               ZeidonStringConcat( szClass, 1, 0, szTempString_75, 1, 0, 257 );
               //:ELSE
            }
            else
            {
               //:szClass = "tab-pane"
               ZeidonStringCopy( szClass, 1, 0, "tab-pane", 1, 0, 257 );
            }

            //:END

            //:// If we are using relative positioning, don't give the tab a height.
            //:IF  szNoPositioning = "Y"
            if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
            {
               //:// We might not want the groupbox to have a height (so it grows)
               //:zIntegerToString( szWidth, 10, vDialog.Control.SZDLG_X * dDLUnits )
               GetIntegerFromAttribute( &lTempInteger_19, vDialog, "Control", "SZDLG_X" );
               zIntegerToString( szWidth, 10, lTempInteger_19 * dDLUnits );
               //:szAbsoluteStyle = "style=^width:" + szWidth + "px;^"
               ZeidonStringCopy( szAbsoluteStyle, 1, 0, "style=^width:", 1, 0, 257 );
               ZeidonStringConcat( szAbsoluteStyle, 1, 0, szWidth, 1, 0, 257 );
               ZeidonStringConcat( szAbsoluteStyle, 1, 0, "px;^", 1, 0, 257 );
            }

            //:END

            //:// Create the parent tab control
            //:szWriteBuffer = ""
            ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "<div id=^" + szCtrlTag + "^ class=^" + szClass + "^ " + szAbsoluteStyle + "> <!-- Beginning of Tab Control " + szCtrlTag + " -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<div id=^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^ class=^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "> <!-- Beginning of Tab Control ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, " -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //://<script type="text/javascript">tp1 = new WebFXTabPane( document.getElementById( "tabPane1" ) );</script>
            //:szWriteBuffer = "<script type=^text/javascript^>" + szCtrlTag + " = new WebFXTabPane( document.getElementById( ^" + szCtrlTag + "^ ) );</script>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<script type=^text/javascript^>", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, " = new WebFXTabPane( document.getElementById( ^", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ) );</script>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:zIntegerToString( szHeight, 10, vDialog.Control.SZDLG_Y * dDLUnits )
            GetIntegerFromAttribute( &lTempInteger_20, vDialog, "Control", "SZDLG_Y" );
            zIntegerToString( szHeight, 10, lTempInteger_20 * dDLUnits );

            //:// If we are using relative positioning, don't give each tab page a height.
            //:IF  szNoPositioning = "Y"
            if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
            {
               //:szStyle = ""
               ZeidonStringCopy( szStyle, 1, 0, "", 1, 0, 101 );
               //:ELSE
            }
            else
            {
               //:szStyle = "style=^height:" + szHeight + "px;^"
               ZeidonStringCopy( szStyle, 1, 0, "style=^height:", 1, 0, 101 );
               ZeidonStringConcat( szStyle, 1, 0, szHeight, 1, 0, 101 );
               ZeidonStringConcat( szStyle, 1, 0, "px;^", 1, 0, 101 );
            }

            //:END

            //:// Set to the ctrl subobject to loop thru the tabs on the tab control
            //:SetViewToSubobject( vDialog, "CtrlCtrl" )
            SetViewToSubobject( vDialog, "CtrlCtrl" );
            //:OrderEntityForView( vDialog, "Control", "Type A" )
            OrderEntityForView( vDialog, "Control", "Type A" );

            //:FOR EACH vDialog.Control
            RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
            while ( RESULT > zCURSOR_UNCHANGED )
            {

               //:szCtrlCtrlTag = vDialog.Control.Tag
               GetVariableFromAttribute( szCtrlCtrlTag, 0, 'S', 51, vDialog, "Control", "Tag", "", 0 );

               //:IF  vDialog.Control.CSS_Class != ""
               if ( CompareAttributeToString( vDialog, "Control", "CSS_Class", "" ) != 0 )
               {
                  //:szClass = "tab-page " + vDialog.Control.CSS_Class
                  GetVariableFromAttribute( szTempString_76, 0, 'S', 255, vDialog, "Control", "CSS_Class", "", 0 );
                  ZeidonStringCopy( szClass, 1, 0, "tab-page ", 1, 0, 257 );
                  ZeidonStringConcat( szClass, 1, 0, szTempString_76, 1, 0, 257 );
                  //:ELSE
               }
               else
               {
                  //:szClass = "tab-page "
                  ZeidonStringCopy( szClass, 1, 0, "tab-page ", 1, 0, 257 );
               }

               //:END

               //:// Currently there are three actions associated with the tab (premapoi, postmapoi and preleae) currently I can only see
               //:// onclick working so I am not going to worry about pre-leae yet.  Also, we are not differenciating between the
               //:// premapoi and postmapoi, just take the action if one of these exists.
               //:szActionName = ""
               ZeidonStringCopy( szActionName, 1, 0, "", 1, 0, 33 );
               //:FOR  EACH  vDialog.EventAct
               RESULT = SetCursorFirstEntity( vDialog, "EventAct", "" );
               while ( RESULT > zCURSOR_UNCHANGED )
               {
                  //:IF  vDialog.Event.Type = "1" OR vDialog.Event.Type = "3"
                  if ( CompareAttributeToString( vDialog, "Event", "Type", "1" ) == 0 || CompareAttributeToString( vDialog, "Event", "Type", "3" ) == 0 )
                  {
                     //:szActionName = vDialog.EventAct.Tag
                     GetVariableFromAttribute( szActionName, 0, 'S', 33, vDialog, "EventAct", "Tag", "", 0 );
                     //:nRC = zstrcmpi( szActionName, "alt-f4" )
                     nRC = zstrcmpi( szActionName, "alt-f4" );
                     //:IF nRC = 0
                     if ( nRC == 0 )
                     {
                        //:szActionName = "AltF4"
                        ZeidonStringCopy( szActionName, 1, 0, "AltF4", 1, 0, 33 );
                     }

                     //:END
                  }

                  RESULT = SetCursorNextEntity( vDialog, "EventAct", "" );
                  //:END
               }

               //:END

               //:szWriteBuffer = "<div id=^" + szCtrlCtrlTag + "^ class=^" + szClass + "^ " + szStyle + "> <!-- Tab item " + szCtrlCtrlTag + " -->"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div id=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ class=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szStyle, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "> <!-- Tab item ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, " -->", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:IF  szActionName = ""
               if ( ZeidonStringCompare( szActionName, 1, 0, "", 1, 0, 33 ) == 0 )
               {
                  //:szWriteBuffer = "<h2 class=^tab^><span>" + vDialog.Control.Text +"</span></h2>"
                  GetVariableFromAttribute( szTempString_77, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<h2 class=^tab^><span>", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_77, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "</span></h2>", 1, 0, 10001 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer = "<h2 class=^tab^><span onclick=^" + szActionName + "();^>" + vDialog.Control.Text +"</span></h2>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<h2 class=^tab^><span onclick=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szActionName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "();^>", 1, 0, 10001 );
                  GetVariableFromAttribute( szTempString_78, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_78, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "</span></h2>", 1, 0, 10001 );
               }

               //:END
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "<script type=^text/javascript^>" + szCtrlTag + ".addTabPage( document.getElementById( ^" + szCtrlCtrlTag + "^ ) );</script>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<script type=^text/javascript^>", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".addTabPage( document.getElementById( ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ) );</script>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

               //:szIndentGroup = szIndent
               ZeidonStringCopy( szIndentGroup, 1, 0, szIndent, 1, 0, 101 );
               //:CreateViewFromView( vGroupParent, vDialog )
               CreateViewFromView( &vGroupParent, vDialog );
               //://Set to ctrl subobject and generate the controls that are on this tab
               //:SetViewToSubobject( vDialog, "CtrlCtrl" )
               SetViewToSubobject( vDialog, "CtrlCtrl" );
               //:GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup,
               //:                        lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY )
               GenJSP_CrteCtrlsRecurs( vDialog, vGroupParent, vDialogRoot, lFile, szWriteBuffer, szIndentGroup, lTableRowCnt, szNoPositioning, lOffsetX, lOffsetY );

               //:ResetViewFromSubobject( vDialog )
               ResetViewFromSubobject( vDialog );
               //:DropView( vGroupParent )
               DropView( vGroupParent );
               //:vGroupParent = 0
               vGroupParent = 0;
               //:szWriteBuffer = "</div> <!-- End of Tab item " + szCtrlCtrlTag + " -->"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</div> <!-- End of Tab item ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, " -->", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               RESULT = SetCursorNextEntity( vDialog, "Control", "" );
            }


            //:END

            //:ResetViewFromSubobject( vDialog )
            ResetViewFromSubobject( vDialog );
            //:szWriteBuffer = "</div> <!-- End of Tab Control " + szCtrlTag + " -->"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</div> <!-- End of Tab Control ", 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
            ZeidonStringConcat( szWriteBuffer, 1, 0, " -->", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            //:szWriteBuffer = "<script type=^text/javascript^>setupAllTabs();</script>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<script type=^text/javascript^>setupAllTabs();</script>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
         }

         //:END  // End of tab control

         //://********************** START OF GRID ***********************************

         //:IF szControlType = "Grid"   // SPREADSHEET
         if ( ZeidonStringCompare( szControlType, 1, 0, "Grid", 1, 0, 51 ) == 0 )
         {

            //:// For each table, we will create an export option that allows the user to
            //:// copy the contents of a table into excel.  The problem is that this only reflects
            //:// values of the table as the page is being built so if the table can be changed by
            //:// the user, those changes would not be seen unless the page was refreshed,  Don't create
            //:// this export option if "No Table Export" is a webcontrolproperty for the table.
            //:// Also don't create this export option if we are using absolute positioning.
            //:szTableExport = ""
            ZeidonStringCopy( szTableExport, 1, 0, "", 1, 0, 2 );
            //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Table Export Option"
            RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Table Export Option", "" );
            //:IF RESULT >= zCURSOR_SET AND szNoPositioning = "Y"
            if ( RESULT >= zCURSOR_SET && ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
            {
               //:szTableExport = "Y"
               ZeidonStringCopy( szTableExport, 1, 0, "Y", 1, 0, 2 );
            }

            //:END

            //:lSubtypeX = vDialog.Control.ExtendedStyle
            GetIntegerFromAttribute( &lSubtypeX, vDialog, "Control", "ExtendedStyle" );

            //:// #define zSS_SORTEDHEADERS 0x00040000 = 262144
            //:// #define zSS_REMEMBERSORT  0x00020000 = 131072

            //:lSort = IsFlagSequenceSet( lSubtypeX, 262144 )
            lSort = IsFlagSequenceSet( lSubtypeX, 262144 );
            //:IF lSort = 0
            if ( lSort == 0 )
            {
               //:lSort = IsFlagSequenceSet( lSubtypeX, 131072 )
               lSort = IsFlagSequenceSet( lSubtypeX, 131072 );
            }

            //:END

            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:lTableRowCnt = lTableRowCnt + 1   // Set up iTableRowCnt variable suffix.
            lTableRowCnt = lTableRowCnt + 1;
            //:szSuffix = lTableRowCnt
            ZeidonStringConvertFromNumber( szSuffix, 1, 0, 2, lTableRowCnt, (ZDecimal) 0.0, "I" );
            //:// X_Size = vDialog.Control.SZDLG_X
            //:// Width = X_Size * 2
            //:// zIntegerToString( szWidth, 10, Width )

            //://KJS 02/12/08 - We had been looping through CtrlCtrl instead of setting
            //://the view to the subobject but if there is a hidden column, then
            //://we don't want to count that column so we need to look at the web properties.
            //:SetViewToSubobject( vDialog, "CtrlCtrl" )  // vDialog positioned on sub-controls
            SetViewToSubobject( vDialog, "CtrlCtrl" );
            //:lColCnt = 0
            lColCnt = 0;
            //:FOR EACH vDialog.Control
            RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
            while ( RESULT > zCURSOR_UNCHANGED )
            {
               //:SET CURSOR  FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Hidden"
               RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Hidden", "" );
               //://Don't count this if it is hidden.
               //:IF RESULT < zCURSOR_SET
               if ( RESULT < zCURSOR_SET )
               {
                  //:lColCnt = lColCnt + 1
                  lColCnt = lColCnt + 1;
               }

               RESULT = SetCursorNextEntity( vDialog, "Control", "" );
               //:END
            }

            //:END
            //:ResetViewFromSubobject( vDialog )  // vDialog positioned on Grid
            ResetViewFromSubobject( vDialog );

            //://lColCnt = 0
            //://FOR EACH vDialog.CtrlCtrl
            //://   lColCnt = lColCnt + 1
            //://END

            //://KJS 7/26/07 - Previously the "cols=..." was only being added to the
            //://table def if the headers were sortable.  In trying to get the absolute width
            //://to work for individual columns, it seems I need this set so I am going to always
            //://set "cols=...".
            //:szColCount = ""
            ZeidonStringCopy( szColCount, 1, 0, "", 1, 0, 11 );
            //:IF  lColCnt > 0
            if ( lColCnt > 0 )
            {
               //:zIntegerToString( szPosition, 10, lColCnt )
               zIntegerToString( szPosition, 10, lColCnt );
               //:szColCount = " cols=" + szPosition
               ZeidonStringCopy( szColCount, 1, 0, " cols=", 1, 0, 11 );
               ZeidonStringConcat( szColCount, 1, 0, szPosition, 1, 0, 11 );
            }

            //:END

            //:szClass = vDialog.Control.CSS_Class
            GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
            //://If there is no sorting of headers...
            //:IF lSort = 0
            if ( lSort == 0 )
            {
               //:IF szClass = ""
               if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
               {
                  //:szSort = ""
                  ZeidonStringCopy( szSort, 1, 0, "", 1, 0, 101 );
                  //:ELSE
               }
               else
               {
                  //:szSort = "class=^" + szClass + "^"
                  ZeidonStringCopy( szSort, 1, 0, "class=^", 1, 0, 101 );
                  ZeidonStringConcat( szSort, 1, 0, szClass, 1, 0, 101 );
                  ZeidonStringConcat( szSort, 1, 0, "^", 1, 0, 101 );
               }

               //:END
               //:// TraceLineS( "Table not sorted: ", vDialog.Control.Tag )
               //:ELSE
            }
            else
            {
               //://Headers are being sorted
               //:// TraceLineS( "Table sorted: ", vDialog.Control.Tag )
               //:IF szClass = ""
               if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
               {
                  //:szSort = "class=^sortable^ "
                  ZeidonStringCopy( szSort, 1, 0, "class=^sortable^ ", 1, 0, 101 );
                  //:ELSE
               }
               else
               {
                  //:szSort = "class=^sortable " + szClass + "^ "
                  ZeidonStringCopy( szSort, 1, 0, "class=^sortable ", 1, 0, 101 );
                  ZeidonStringConcat( szSort, 1, 0, szClass, 1, 0, 101 );
                  ZeidonStringConcat( szSort, 1, 0, "^ ", 1, 0, 101 );
               }

               //:END
            }

            //:END

            //:// Reset szPosition from using is above as the column count.
            //:szPosition = ""
            ZeidonStringCopy( szPosition, 1, 0, "", 1, 0, 101 );

            //:// If szNoPositioning is null then we are using absolute positioning.
            //:IF  szNoPositioning = ""
            if ( ZeidonStringCompare( szNoPositioning, 1, 0, "", 1, 0, 2 ) == 0 )
            {
               //:// Set up "top" and "left" positions for absolute positioning.
               //:CreateAbsolPosStringTable( vDialog, szPosition, 0, 0 )
               CreateAbsolPosStringTable( vDialog, szPosition, 0, 0 );
            }

            //:END

            //:IF szTableExport = "Y"
            if ( ZeidonStringCompare( szTableExport, 1, 0, "Y", 1, 0, 2 ) == 0 )
            {
               //:// KJS 09/29/10 - Trying to set up a system for displaying a table's values as output so the user
               //:// can cut and paste this into excel.  The textarea we will create should be as wide as the
               //:// grid.
               //:szWriteBuffer = "<div class=^tableexport^>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^tableexport^>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "<img src=^./images/btn_expand.gif^ name=^btmp" + szCtrlTag + "^ id=^btmp" + szCtrlTag + "^ " +
               //:                "onclick=^" + szCtrlTag + "ExportOnClick( )^ style=^width:16px;height:14px;^ alt=^ExportBmp^ >"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<img src=^./images/btn_expand.gif^ name=^btmp", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^btmp", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "onclick=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "ExportOnClick( )^ style=^width:16px;height:14px;^ alt=^ExportBmp^ >", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //://szWriteBuffer = "<span name=^spn" + szCtrlTag + "^ id=^spn" + szCtrlTag + "^>export table data</span>"
               //:szWriteBuffer = "<span name=^spn" + szCtrlTag + "^ id=^spn" + szCtrlTag + "^>Click here to display data for export</span>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<span name=^spn", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^spn", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^>Click here to display data for export</span>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:PIX_PER_DU( vDialog, dDLUnits )
               PIX_PER_DU( vDialog, &dDLUnits );
               //:zIntegerToString( szWidth, 10, vDialog.Control.SZDLG_X * dDLUnits )
               GetIntegerFromAttribute( &lTempInteger_21, vDialog, "Control", "SZDLG_X" );
               zIntegerToString( szWidth, 10, lTempInteger_21 * dDLUnits );
               //:szWriteBuffer = "<div name=^gb" + szCtrlTag + "^ id=^gb" + szCtrlTag + "^ style=^width:" +
               //:                 szWidth + "px;height:70px;display:none;^>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div name=^gb", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^gb", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ style=^width:", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szWidth, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "px;height:70px;display:none;^>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "<textarea name=^o" + szCtrlTag + "^ id=^o" + szCtrlTag + "^ style=^width:" +
               //:                 szWidth + "px;height:50px;border:'2px solid';border-style:'groove';^ wrap=^wrap^></textarea> <!-- textarea for table values output  -->"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<textarea name=^o", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^o", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ style=^width:", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szWidth, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "px;height:50px;border:'2px solid';border-style:'groove';^ wrap=^wrap^></textarea> <!-- textarea for table values output  -->", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "</div>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "</div>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            }

            //:END


            //:// If Absolute Width is requested, add Width to szPosition.
            //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Absolute Width"
            RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Absolute Width", "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:PIX_PER_DU( vDialog, dDLUnits )
               PIX_PER_DU( vDialog, &dDLUnits );
               //:zIntegerToString( szWidth, 10, vDialog.Control.SZDLG_X * dDLUnits )
               GetIntegerFromAttribute( &lTempInteger_22, vDialog, "Control", "SZDLG_X" );
               zIntegerToString( szWidth, 10, lTempInteger_22 * dDLUnits );
               //:szPosition = szPosition + "width:" + szWidth + "px;"
               ZeidonStringConcat( szPosition, 1, 0, "width:", 1, 0, 101 );
               ZeidonStringConcat( szPosition, 1, 0, szWidth, 1, 0, 101 );
               ZeidonStringConcat( szPosition, 1, 0, "px;", 1, 0, 101 );
            }

            //:   // The width in percent of the table will be the pixel width divided by 400. Multiplying by 100 gives
            //:   // an integer value of the percent.
            //:   //WidthPercent = (Width * 100) / 400
            //:   //szWidth = WidthPercent
            //:END

            //:szClass = vDialog.Control.CSS_Class
            GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );

            //:szWebCtrlType = ""
            ZeidonStringCopy( szWebCtrlType, 1, 0, "", 1, 0, 51 );
            //:IF vGroupParent != 0
            if ( vGroupParent != 0 )
            {
               //:SET CURSOR FIRST vGroupParent.WebControlProperty WHERE vGroupParent.WebControlProperty.Name = "Relative Positioning"
               RESULT = SetCursorFirstEntityByString( vGroupParent, "WebControlProperty", "Name", "Relative Positioning", "" );
               //:IF RESULT >= zCURSOR_SET
               if ( RESULT >= zCURSOR_SET )
               {
                  //:szWebCtrlType = "RelativePos"
                  ZeidonStringCopy( szWebCtrlType, 1, 0, "RelativePos", 1, 0, 51 );
                  //:ELSE
               }
               else
               {
                  //:szWebCtrlType = vGroupParent.Control.WebCtrlType
                  GetVariableFromAttribute( szWebCtrlType, 0, 'S', 51, vGroupParent, "Control", "WebCtrlType", "", 0 );
               }

               //:END
            }

            //:END

            //:// KJS 6/19/08 - We want to add filtering on a table.  If the user chooses the web control property "Filter Rows" then
            //:// they need to have an attribute on the table entity called wHideTableRow.  If this attribute is set to "Y" then
            //:// that entity will not be displayed in the table.
            //:szFilterTable = ""
            ZeidonStringCopy( szFilterTable, 1, 0, "", 1, 0, 2 );
            //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Filter Rows (wHideTableRow='Y')"
            RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Filter Rows (wHideTableRow='Y')", "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:szFilterTable = "Y"
               ZeidonStringCopy( szFilterTable, 1, 0, "Y", 1, 0, 2 );
            }

            //:END

            //:// KJS 05/06/09 - I am placing this div around the <table> being generated so that if there is a
            //:// WebGridNoDataMessage, I can create this message under the table lined up with the table.  Otherwise,
            //:// I need to save any spacing that happens before this grid.
            //:IF vDialog.Control.WebNoGridDataMessage != ""
            if ( CompareAttributeToString( vDialog, "Control", "WebNoGridDataMessage", "" ) != 0 )
            {
               //:szWriteBuffer = "<div style=^float:left^>  <!-- Div around the table, this is for the message if no data -->"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div style=^float:left^>  <!-- Div around the table, this is for the message if no data -->", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            }

            //:END

            //:szScrollingTable = ""
            ZeidonStringCopy( szScrollingTable, 1, 0, "", 1, 0, 2 );
            //://KJS 04/10/08 - Want to try and add a scrolling table with stationary headings.
            //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Scrolling Table"
            RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Scrolling Table", "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:szScrollingTable = "Y"
               ZeidonStringCopy( szScrollingTable, 1, 0, "Y", 1, 0, 2 );
               //:szWriteBuffer = "<div class=^tableScroll^ "
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<div class=^tableScroll^ ", 1, 0, 10001 );
               //:PIX_PER_DU( vDialog, dDLUnits )
               PIX_PER_DU( vDialog, &dDLUnits );
               //:zIntegerToString( szHeight, 10, vDialog.Control.SZDLG_Y * dDLUnits )
               GetIntegerFromAttribute( &lTempInteger_23, vDialog, "Control", "SZDLG_Y" );
               zIntegerToString( szHeight, 10, lTempInteger_23 * dDLUnits );
               //:// For the scrollable table we need to give the table a height.
               //:szPosition = szPosition + "height:" + szHeight + "px;"
               ZeidonStringConcat( szPosition, 1, 0, "height:", 1, 0, 101 );
               ZeidonStringConcat( szPosition, 1, 0, szHeight, 1, 0, 101 );
               ZeidonStringConcat( szPosition, 1, 0, "px;", 1, 0, 101 );

               //:IF szWebCtrlType = "RelativePos" OR szWebCtrlType = "Span"
               if ( ZeidonStringCompare( szWebCtrlType, 1, 0, "RelativePos", 1, 0, 51 ) == 0 || ZeidonStringCompare( szWebCtrlType, 1, 0, "Span", 1, 0, 51 ) == 0 )
               {
                  //:szWriteBuffer= szWriteBuffer + " style=^position:relative;width:" + szWidth + "px;height:" + szHeight + "px;^>"
                  ZeidonStringConcat( szWriteBuffer, 1, 0, " style=^position:relative;width:", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szWidth, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "px;height:", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szHeight, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "px;^>", 1, 0, 10001 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer= szWriteBuffer + " style=^" + szPosition + "^>"
                  ZeidonStringConcat( szWriteBuffer, 1, 0, " style=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szPosition, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^>", 1, 0, 10001 );
               }

               //:END
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

               //:szWriteBuffer = "<table name=^" + szCtrlTag + "^ id=^" + szCtrlTag + "^ cellspacing=0 " + szSort + szColCount + "  >"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<table name=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ cellspacing=0 ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szSort, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szColCount, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "  >", 1, 0, 10001 );
               //:ELSE
            }
            else
            {

               //:IF szWebCtrlType = "RelativePos" OR szWebCtrlType = "Span"
               if ( ZeidonStringCompare( szWebCtrlType, 1, 0, "RelativePos", 1, 0, 51 ) == 0 || ZeidonStringCompare( szWebCtrlType, 1, 0, "Span", 1, 0, 51 ) == 0 )
               {
                  //:szWriteBuffer = "<table " + szSort + szColCount + " style=^position:relative^  name=^" + szCtrlTag + "^ id=^" + szCtrlTag + "^>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<table ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szSort, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szColCount, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, " style=^position:relative^  name=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^>", 1, 0, 10001 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer = "<table " + szSort + szColCount + " style=^" + szPosition + "^  name=^" + szCtrlTag + "^ id=^" + szCtrlTag + "^>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<table ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szSort, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szColCount, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, " style=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szPosition, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^  name=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^>", 1, 0, 10001 );
               }

               //:END
            }

            //:END

            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:// Process Grid Headings, unless "NoHeadings" is requested.
            //:// Create a Class statement for each column in the list.
            //:lSubtype = vDialog.Control.Subtype
            GetIntegerFromAttribute( &lSubtype, vDialog, "Control", "Subtype" );
            //:lHeader = IsFlagSequenceSet( lSubtype, 262144 ) // zSS_HIDEROWHEADER = zCONTROL_SPECIFIC_1
            lHeader = IsFlagSequenceSet( lSubtype, 262144 );
            //:IF lHeader = 0     // NoHeader was not set
            if ( lHeader == 0 )
            {
               //:IF lSort = 0
               if ( lSort == 0 )
               {
                  //:szWriteBuffer = "<thead><tr>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<thead><tr>", 1, 0, 10001 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer = "<thead bgcolor=green><tr>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<thead bgcolor=green><tr>", 1, 0, 10001 );
               }

               //:END

               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

               //:OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_X A" )
               OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_X A" );
               //:SetViewToSubobject( vDialog, "CtrlCtrl" )  // vDialog positioned on sub-controls
               SetViewToSubobject( vDialog, "CtrlCtrl" );
               //:lCol = 0
               lCol = 0;

               //://Loop through each field in the grid and create the headers
               //:FOR EACH vDialog.Control
               RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
               while ( RESULT > zCURSOR_UNCHANGED )
               {

                  //:szCtrlCtrlType = vDialog.ControlDef.Tag
                  GetVariableFromAttribute( szCtrlCtrlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
                  //:IF szCtrlCtrlType = "GridSubCtl" AND vDialog.CtrlCtrl EXISTS
                  lTempInteger_24 = CheckExistenceOfEntity( vDialog, "CtrlCtrl" );
                  if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridSubCtl", 1, 0, 51 ) == 0 && lTempInteger_24 == 0 )
                  {
                     //:SetViewToSubobject( vDialog, "CtrlCtrl" )  // vDialog positioned on sub-sub-controls
                     SetViewToSubobject( vDialog, "CtrlCtrl" );
                     //:bResetToPlaceHolder = 1
                     bResetToPlaceHolder = 1;
                     //:szCtrlCtrlType = vDialog.ControlDef.Tag
                     GetVariableFromAttribute( szCtrlCtrlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
                     //:ELSE
                  }
                  else
                  {
                     //:bResetToPlaceHolder = 0
                     bResetToPlaceHolder = 0;
                  }

                  //:END

                  //://KJS 2/12/2008
                  //:SET CURSOR  FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Hidden"
                  RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Hidden", "" );

                  //://Don't ceate a header if this control is hidden
                  //:IF RESULT < zCURSOR_SET
                  if ( RESULT < zCURSOR_SET )
                  {

                     //:IF szCtrlCtrlType = "PushBtn"  // PUSH BUTTON
                     if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "PushBtn", 1, 0, 51 ) == 0 )
                     {
                        //:lPushBtn = 1
                        lPushBtn = 1;
                        //:ELSE
                     }
                     else
                     {
                        //:lPushBtn = 0
                        lPushBtn = 0;
                     }

                     //:END

                     //://KJS 7/26/07 - If we want "Absolute Width" for this control, we should put the
                     //://width on the <th> as well as on the <td>.
                     //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Absolute Width"
                     RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Absolute Width", "" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //:szWCP_AbsoluteWidth = "Y"
                        ZeidonStringCopy( szWCP_AbsoluteWidth, 1, 0, "Y", 1, 0, 2 );
                        //:ELSE
                     }
                     else
                     {
                        //:szWCP_AbsoluteWidth = "N"
                        ZeidonStringCopy( szWCP_AbsoluteWidth, 1, 0, "N", 1, 0, 2 );
                     }

                     //:END

                     //:// If Absolute Width is requested.
                     //:szAbsoluteWidth = ""
                     ZeidonStringCopy( szAbsoluteWidth, 1, 0, "", 1, 0, 21 );
                     //:IF szWCP_AbsoluteWidth = "Y"
                     if ( ZeidonStringCompare( szWCP_AbsoluteWidth, 1, 0, "Y", 1, 0, 2 ) == 0 )
                     {
                        //:PIX_PER_DU( vDialog, dDLUnits )
                        PIX_PER_DU( vDialog, &dDLUnits );
                        //:zIntegerToString( szWidth, 10, vDialog.Control.SZDLG_X * dDLUnits )
                        GetIntegerFromAttribute( &lTempInteger_25, vDialog, "Control", "SZDLG_X" );
                        zIntegerToString( szWidth, 10, lTempInteger_25 * dDLUnits );
                        //:szAbsoluteWidth = "width:" + szWidth + "px;"
                        ZeidonStringCopy( szAbsoluteWidth, 1, 0, "width:", 1, 0, 21 );
                        ZeidonStringConcat( szAbsoluteWidth, 1, 0, szWidth, 1, 0, 21 );
                        ZeidonStringConcat( szAbsoluteWidth, 1, 0, "px;", 1, 0, 21 );
                     }

                     //:END

                     //:// Set Grid Title either from static text or variable.
                     //:SET CURSOR FIRST vDialog.CtrlMap WHERE vDialog.CtrlMap.Tag = "Variable Header"
                     RESULT = SetCursorFirstEntityByString( vDialog, "CtrlMap", "Tag", "Variable Header", "" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //://Yes, there is a variable header.
                        //:IF szWriteBuffer != "   }"
                        if ( ZeidonStringCompare( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 ) != 0 )
                        {
                           //:// The last entry was NOT a variable text, so create the "<%" statement.
                           //:szWriteBuffer = "<%"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        }

                        //:END
                        //:szWriteBuffer = "   nRC = " + vDialog.CtrlMapView.Name +
                        //:                ".GetView( strSessionId, ^" + vDialog.CtrlMapView.Name + "^, vAppSubtask );"
                        GetVariableFromAttribute( szTempString_79, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "   nRC = ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_79, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_80, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_80, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "   if ( nRC >= 0 )"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( nRC >= 0 )", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "   {"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "      nRC =  " + vDialog.CtrlMapView.Name +
                        //:             ".CheckExistenceOfEntity( strSessionId, ^" + vDialog.CtrlMapRelatedEntity.Name + "^ );"
                        GetVariableFromAttribute( szTempString_81, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC =  ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_81, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_82, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_82, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "      if ( nRC >= 0 )"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC >= 0 )", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:IF vDialog.CtrlMapER_Domain.MaxStringLth > 254
                        if ( CompareAttributeToInteger( vDialog, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
                        {
                           //:lMaxStringLength = vDialog.CtrlMapER_Domain.MaxStringLth
                           GetIntegerFromAttribute( &lMaxStringLength, vDialog, "CtrlMapER_Domain", "MaxStringLth" );
                           //:szMaxStringLength = lMaxStringLength
                           ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
                           //:ELSE
                        }
                        else
                        {
                           //:szMaxStringLength = "254"
                           ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
                        }

                        //:END
                        //:szWriteBuffer = "         strErrorMapValue =  " + vDialog.CtrlMapView.Name +
                        //:             ".GetStringFromAttributeByContext( strSessionId, ^" + vDialog.CtrlMapRelatedEntity.Name +
                        //:             "^, ^" + vDialog.CtrlMapER_Attribute.Name + "^, ^^, " + szMaxStringLength + " );"
                        GetVariableFromAttribute( szTempString_83, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         strErrorMapValue =  ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_83, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_84, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_84, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_85, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_85, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^^, ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "       else"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "       else", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "          strErrorMapValue = ^^;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "          strErrorMapValue = ^^;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "   }"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "    else"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "    else", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "       strErrorMapValue = ^^;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "       strErrorMapValue = ^^;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "   if ( strErrorMapValue.length( ) > 0 )"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( strErrorMapValue.length( ) > 0 )", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "   {"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "%>"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:IF  szAbsoluteWidth = ""
                        if ( ZeidonStringCompare( szAbsoluteWidth, 1, 0, "", 1, 0, 21 ) == 0 )
                        {
                           //:szWriteBuffer = "   <th><%=strErrorMapValue%></th>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "   <th><%=strErrorMapValue%></th>", 1, 0, 10001 );
                           //:ELSE
                        }
                        else
                        {
                           //:szWriteBuffer = "   <th style=^" + szAbsoluteWidth + "^><%=strErrorMapValue%></th>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "   <th style=^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteWidth, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^><%=strErrorMapValue%></th>", 1, 0, 10001 );
                        }

                        //:END
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "<%"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:IF szTableExport = "Y"
                        if ( ZeidonStringCompare( szTableExport, 1, 0, "Y", 1, 0, 2 ) == 0 )
                        {
                           //:// KJS 09/29/10
                           //:szWriteBuffer = "      strTblOutput = strTblOutput + strErrorMapValue + ^\t^;"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "      strTblOutput = strTblOutput + strErrorMapValue + ^\\t^;", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        }

                        //:END

                        //:szWriteBuffer = "   }"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:ELSE
                     }
                     else
                     {
                        //:// The Title is a constant.
                        //:IF szWriteBuffer = "   }"
                        if ( ZeidonStringCompare( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 ) == 0 )
                        {
                           //:// The last entry was a variable text, so create the "%>" statement.
                           //:szWriteBuffer = "%>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        }

                        //:END

                        //:// If this is sortable and this is a pushbutton on the grid...
                        //:IF lSort != 0 AND lPushBtn != 0
                        if ( lSort != 0 && lPushBtn != 0 )
                        {
                           //:IF  szAbsoluteWidth = ""
                           if ( ZeidonStringCompare( szAbsoluteWidth, 1, 0, "", 1, 0, 21 ) == 0 )
                           {
                              //:szWriteBuffer = "   <th class=^gridheading^>" + vDialog.Control.Text
                              GetVariableFromAttribute( szTempString_86, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "   <th class=^gridheading^>", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_86, 1, 0, 10001 );
                              //:ELSE
                           }
                           else
                           {
                              //:szWriteBuffer = "   <th style=^" + szAbsoluteWidth + "^ class=^gridheading^>" + vDialog.Control.Text
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "   <th style=^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteWidth, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^ class=^gridheading^>", 1, 0, 10001 );
                              GetVariableFromAttribute( szTempString_87, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_87, 1, 0, 10001 );
                           }

                           //:END
                           //:ELSE
                        }
                        else
                        {
                           //:IF  szAbsoluteWidth = ""
                           if ( ZeidonStringCompare( szAbsoluteWidth, 1, 0, "", 1, 0, 21 ) == 0 )
                           {
                              //:szWriteBuffer = "   <th"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "   <th", 1, 0, 10001 );
                              //:ELSE
                           }
                           else
                           {
                              //:szWriteBuffer = "   <th style=^" + szAbsoluteWidth + "^"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "   <th style=^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteWidth, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^", 1, 0, 10001 );
                           }

                           //:END

                           //://If this column is for a checkbox with no header text, we are creating a checkbox so that
                           //://the user can "select all" for this column.  Because of this, we do not want this
                           //://column to be able to sort.  Put on the class "gridheading" which keeps this column
                           //://from sorting.
                           //:IF vDialog.Control.Text = "" AND ( vDialog.ControlDef.Tag = "GridCheckCtl" OR vDialog.ControlDef.Tag = "CheckBox" )
                           if ( CompareAttributeToString( vDialog, "Control", "Text", "" ) == 0 && ( CompareAttributeToString( vDialog, "ControlDef", "Tag", "GridCheckCtl" ) == 0 ||
                        CompareAttributeToString( vDialog, "ControlDef", "Tag", "CheckBox" ) == 0 ) )
                           {
                              //:szWriteBuffer = szWriteBuffer + " class=^gridheading^"
                              ZeidonStringConcat( szWriteBuffer, 1, 0, " class=^gridheading^", 1, 0, 10001 );
                           }

                           //:END

                           //://Put the ending on the tag and the text if there is any.
                           //:szWriteBuffer = szWriteBuffer + ">" + vDialog.Control.Text
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_88, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_88, 1, 0, 10001 );
                        }

                        //:END

                        //://KJS 10/19/07 - If there is no Text and the control is a checkbox, then we want to create a
                        //://checkbox in the header with an onclick to "CheckAllInGrid"
                        //://Need to put class="gridheading" on <th>.
                        //://I shouldn't have to do this for the variable headers (code up above) because we are only doing this
                        //://if there is no header text.
                        //:IF vDialog.Control.Text = "" AND ( vDialog.ControlDef.Tag = "GridCheckCtl" OR vDialog.ControlDef.Tag = "CheckBox" )
                        if ( CompareAttributeToString( vDialog, "Control", "Text", "" ) == 0 && ( CompareAttributeToString( vDialog, "ControlDef", "Tag", "GridCheckCtl" ) == 0 ||
                        CompareAttributeToString( vDialog, "ControlDef", "Tag", "CheckBox" ) == 0 ) )
                        {
                           //:szWriteBuffer = szWriteBuffer + "<input type=^checkbox^ onclick=^CheckAllInGrid(this,'" + vDialog.Control.Tag +"')^>"
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "<input type=^checkbox^ onclick=^CheckAllInGrid(this,'", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_89, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_89, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "')^>", 1, 0, 10001 );
                           //:ELSE
                        }
                        else
                        {
                           //:szWriteBuffer = szWriteBuffer + ""
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                        }

                        //:END

                        //:szWriteBuffer = szWriteBuffer + "</th>"
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "</th>", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                        //:IF szTableExport = "Y"
                        if ( ZeidonStringCompare( szTableExport, 1, 0, "Y", 1, 0, 2 ) == 0 )
                        {
                           //:// KJS 09/29/10
                           //:// If this is simply a checkbox for checking values in the table then we don't want to include this
                           //:// in the strTblOutput string.
                           //:szWriteBuffer = "<%"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           //:IF vDialog.Control.Text != ""
                           if ( CompareAttributeToString( vDialog, "Control", "Text", "" ) != 0 )
                           {
                              //:szWriteBuffer = "         strTblOutput = strTblOutput + ^" + vDialog.Control.Text + "^ + ^\t^;"
                              GetVariableFromAttribute( szTempString_90, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         strTblOutput = strTblOutput + ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_90, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + ^\\t^;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:ELSE
                           }
                           else
                           {
                              //:IF vDialog.Control.Text = "" AND vDialog.ControlDef.Tag != "GridCheckCtl" AND vDialog.ControlDef.Tag != "CheckBox"
                              if ( CompareAttributeToString( vDialog, "Control", "Text", "" ) == 0 && CompareAttributeToString( vDialog, "ControlDef", "Tag", "GridCheckCtl" ) != 0 &&
                        CompareAttributeToString( vDialog, "ControlDef", "Tag", "CheckBox" ) != 0 )
                              {
                                 //:szWriteBuffer = "   strTblOutput = strTblOutput + ^\t^;"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "   strTblOutput = strTblOutput + ^\\t^;", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              }

                              //:END
                           }

                           //:END
                           //:szWriteBuffer = "%>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        }

                        //:END
                     }

                     //:END
                  }


                  //:END //End of checking if the current control is hidden.

                  //:IF bResetToPlaceHolder = 1
                  if ( bResetToPlaceHolder == 1 )
                  {
                     //:ResetViewFromSubobject( vDialog )  // vDialog positioned on sub-controls
                     ResetViewFromSubobject( vDialog );
                  }

                  RESULT = SetCursorNextEntity( vDialog, "Control", "" );
                  //:END
               }


               //:END  //End of looping through each field in the grid and creating the headers.

               //:// If the last entry was a variable text, create the "" statement.
               //:IF szWriteBuffer = "   }"
               if ( ZeidonStringCompare( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 ) == 0 )
               {
                  //:szWriteBuffer = "%>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer = ""
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               }

               //:END

               //:ResetViewFromSubobject( vDialog )  // vDialog positioned on Grid
               ResetViewFromSubobject( vDialog );

               //:IF szTableExport = "Y"
               if ( ZeidonStringCompare( szTableExport, 1, 0, "Y", 1, 0, 2 ) == 0 )
               {
                  //:// We need to add a carriage return and line feed to strTblOutput
                  //:szWriteBuffer = "   <%"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "   <%", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "   strTblOutput = strTblOutput + ^\r\n^;"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "   strTblOutput = strTblOutput + ^\\r\\n^;", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "   %>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "   %>", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               }

               //:END

               //:szWriteBuffer = "</tr></thead>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</tr></thead>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            }

            //:END

            //:IF szScrollingTable = "Y"
            if ( ZeidonStringCompare( szScrollingTable, 1, 0, "Y", 1, 0, 2 ) == 0 )
            {
               //:// Make tbody's height 50px (this might not always be right) less than the div height.  Otherwise you get a
               //:// scrollbar within the scrollbar.
               //:zIntegerToString( szHeight, 10, vDialog.Control.SZDLG_Y * dDLUnits - 50 )
               GetIntegerFromAttribute( &lTempInteger_26, vDialog, "Control", "SZDLG_Y" );
               zIntegerToString( szHeight, 10, lTempInteger_26 * dDLUnits - 50 );
               //:szWriteBuffer = "<tbody height=^" + szHeight + "px;^>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<tbody height=^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szHeight, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "px;^>", 1, 0, 10001 );
               //:ELSE
            }
            else
            {
               //:szWriteBuffer = "<tbody>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<tbody>", 1, 0, 10001 );
            }

            //:END
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:szWriteBuffer = "<%"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:IF vDialog.CtrlMapView EXISTS
            lTempInteger_27 = CheckExistenceOfEntity( vDialog, "CtrlMapView" );
            if ( lTempInteger_27 == 0 )
            {

               //:// szWriteBuffer = "   zeidon.zView " + vDialog.CtrlMapView.Name + " = new zeidon.zView( strSessionId );"
               //:// WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               //://szWriteBuffer = "      int    iTableRowCnt" + szSuffix + " = 0;"
               //:szWriteBuffer = "   iTableRowCnt = 0;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   iTableRowCnt = 0;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   nRC = " + vDialog.CtrlMapView.Name +
               //:                ".GetView( strSessionId, ^" + vDialog.CtrlMapView.Name + "^, vAppSubtask );"
               GetVariableFromAttribute( szTempString_91, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_91, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_92, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_92, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   if ( nRC > 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( nRC > 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //://szWriteBuffer = "      int    iTableRowCnt" + szSuffix + " = 0;"
               //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               //:szWriteBuffer = "      int    lEntityKey;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      int    lEntityKey;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      String strEntityKey;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strEntityKey;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      String strButtonName;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strButtonName;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      String strOdd;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strOdd;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      String strTag;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strTag;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:IF szFilterTable = "Y"
               if ( ZeidonStringCompare( szFilterTable, 1, 0, "Y", 1, 0, 2 ) == 0 )
               {
                  //:szWriteBuffer = "      String strFilter;"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      String strFilter;", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               }

               //:END

               //://szWriteBuffer = "      iTableRowCnt = 0;"
               //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )

               //:OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_X A" )
               OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_X A" );
               //:SetViewToSubobject( vDialog, "CtrlCtrl" )  // vDialog positioned on sub-controls
               SetViewToSubobject( vDialog, "CtrlCtrl" );

               //:// Create a work variable for each column in the list.
               //:FOR EACH vDialog.Control
               RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
               while ( RESULT > zCURSOR_UNCHANGED )
               {

                  //:szCtrlCtrlType = vDialog.ControlDef.Tag
                  GetVariableFromAttribute( szCtrlCtrlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
                  //:IF szCtrlCtrlType = "GridSubCtl" AND vDialog.CtrlCtrl EXISTS
                  lTempInteger_28 = CheckExistenceOfEntity( vDialog, "CtrlCtrl" );
                  if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridSubCtl", 1, 0, 51 ) == 0 && lTempInteger_28 == 0 )
                  {
                     //:SetViewToSubobject( vDialog, "CtrlCtrl" )  // vDialog positioned on sub-sub-controls
                     SetViewToSubobject( vDialog, "CtrlCtrl" );
                     //:bResetToPlaceHolder = 1
                     bResetToPlaceHolder = 1;
                     //:szCtrlCtrlType = vDialog.ControlDef.Tag
                     GetVariableFromAttribute( szCtrlCtrlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
                     //:ELSE
                  }
                  else
                  {
                     //:bResetToPlaceHolder = 0
                     bResetToPlaceHolder = 0;
                  }

                  //:END

                  //:// KJS 12/14/07 - I added Combobox and GridComboCtl to this because if there is a combobox,
                  //:// we already get the variables for the combobox while creating the combobox html code.
                  //:IF szCtrlCtrlType != "PushBtn" AND szCtrlCtrlType != "ComboBox" AND szCtrlCtrlType != "GridComboCtl"
                  if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "PushBtn", 1, 0, 51 ) != 0 && ZeidonStringCompare( szCtrlCtrlType, 1, 0, "ComboBox", 1, 0, 51 ) != 0 && ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridComboCtl", 1, 0, 51 ) != 0 )
                  {
                     //:szWriteBuffer = "      String str" + vDialog.Control.Tag + ";"
                     GetVariableFromAttribute( szTempString_93, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      String str", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_93, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ";", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:IF szCtrlCtrlType = "GridCheckCtl" OR szCtrlCtrlType = "CheckBox"
                     if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridCheckCtl", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "CheckBox", 1, 0, 51 ) == 0 )
                     {
                        //:// Checkboxes need the extra work value.
                        //:szWriteBuffer = "      String str" + vDialog.Control.Tag + "Value;"
                        GetVariableFromAttribute( szTempString_94, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "      String str", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_94, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "Value;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     }

                     //:END
                  }

                  //:END

                  //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Edit"
                  RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Edit", "" );
                  //:IF RESULT >= zCURSOR_SET
                  if ( RESULT >= zCURSOR_SET )
                  {
                     //:szWCP_Edit = "Y"
                     ZeidonStringCopy( szWCP_Edit, 1, 0, "Y", 1, 0, 2 );
                     //:ELSE
                  }
                  else
                  {
                     //:szWCP_Edit = "N"
                     ZeidonStringCopy( szWCP_Edit, 1, 0, "N", 1, 0, 2 );
                  }

                  //:END

                  //:IF vDialog.Control.WebCtrlType = "Edit" OR szWCP_Edit = "Y"
                  if ( CompareAttributeToString( vDialog, "Control", "WebCtrlType", "Edit" ) == 0 || ZeidonStringCompare( szWCP_Edit, 1, 0, "Y", 1, 0, 2 ) == 0 )
                  {
                     //:szListCtrlTag = vDialog.Control.Tag
                     GetVariableFromAttribute( szListCtrlTag, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                     //:szWriteBuffer = "      String str" + szListCtrlTag + "ErrorColor;"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      String str", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "ErrorColor;", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  }

                  //:END

                  //:// KJS 05/06/09 - First Occurrence Only is when the user wants to show only the first occurrence of a value in
                  //:// a table column.  We need to keep track of the last value for the column so we need to create a variable to
                  //:// hold the last value.
                  //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "First Occurrence Only"
                  RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "First Occurrence Only", "" );
                  //:IF RESULT >= zCURSOR_SET
                  if ( RESULT >= zCURSOR_SET )
                  {
                     //:szWriteBuffer = "      String str" + vDialog.Control.Tag + "LV = ^^;  // Last value of this column "
                     GetVariableFromAttribute( szTempString_95, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      String str", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_95, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "LV = ^^;  // Last value of this column ", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  }

                  //:END

                  //:// If the Grid entry requests URL Mapping, generate the variable definition here.
                  //:SET CURSOR FIRST vDialog.CtrlMap WHERE vDialog.CtrlMap.Tag = "Hyperlink URL"
                  RESULT = SetCursorFirstEntityByString( vDialog, "CtrlMap", "Tag", "Hyperlink URL", "" );
                  //:IF RESULT >= zCURSOR_SET
                  if ( RESULT >= zCURSOR_SET )
                  {
                     //:// Define variable for URL Mapping.
                     //:szWriteBuffer = "      String str" + vDialog.Control.Tag + "_URL;"
                     GetVariableFromAttribute( szTempString_96, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "      String str", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_96, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "_URL;", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  }

                  //:END

                  //:IF bResetToPlaceHolder = 1
                  if ( bResetToPlaceHolder == 1 )
                  {
                     //:ResetViewFromSubobject( vDialog )  // vDialog positioned on sub-controls
                     ResetViewFromSubobject( vDialog );
                  }

                  RESULT = SetCursorNextEntity( vDialog, "Control", "" );
                  //:END
               }

               //:END

               //:ResetViewFromSubobject( vDialog )  // vDialog positioned on Grid
               ResetViewFromSubobject( vDialog );
               //:szWriteBuffer = "      "
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      ", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:// KJS 5/1/08 - Jeff is a pain in the butt so I need to add this code.
               //:// We are creating a temporary view to the table view so that when we loop through the
               //:// entities to create this grid, we do not lose the original entity position.
               //:// If you have several grids on one page mapped to the same entity path, when one grid was
               //:// being painted, that messed up the position of the other grids.
               //:szGridView = "v" + vDialog.Control.Tag
               GetVariableFromAttribute( szTempString_97, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
               ZeidonStringCopy( szGridView, 1, 0, "v", 1, 0, 51 );
               ZeidonStringConcat( szGridView, 1, 0, szTempString_97, 1, 0, 51 );
               //:szGridOrigViewName = vDialog.CtrlMapView.Name
               GetVariableFromAttribute( szGridOrigViewName, 0, 'S', 51, vDialog, "CtrlMapView", "Name", "", 0 );

               //:szWriteBuffer = "      zeidon.zView " + szGridView + " = new zeidon.zView( strSessionId );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      zeidon.zView ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, " = new zeidon.zView( strSessionId );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      " + szGridView + ".CreateViewFromView( strSessionId, " + vDialog.CtrlMapView.Name + " );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".CreateViewFromView( strSessionId, ", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_98, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_98, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:// See if a scoping entity has been specified, and if so, use it.
               //:lSubtypeX = vDialog.Control.ExtendedStyle
               GetIntegerFromAttribute( &lSubtypeX, vDialog, "Control", "ExtendedStyle" );
               //:lSubtypeX = IsFlagSequenceSet( lSubtypeX, zSS_SCOPE_OI )
               lSubtypeX = IsFlagSequenceSet( lSubtypeX, zSS_SCOPE_OI );
               //:IF lSubtypeX = 0
               if ( lSubtypeX == 0 )
               {
                  //:CreateViewFromView( vDialog2, vDialog )
                  CreateViewFromView( &vDialog2, vDialog );
                  //:SET CURSOR NEXT vDialog2.CtrlMap
                  RESULT = SetCursorNextEntity( vDialog2, "CtrlMap", "" );
                  //:IF vDialog2.CtrlMapLOD_Entity EXISTS
                  lTempInteger_29 = CheckExistenceOfEntity( vDialog2, "CtrlMapLOD_Entity" );
                  if ( lTempInteger_29 == 0 )
                  {
                     //:szScopingEntityName = vDialog2.CtrlMapLOD_Entity.Name
                     GetVariableFromAttribute( szScopingEntityName, 0, 'S', 33, vDialog2, "CtrlMapLOD_Entity", "Name", "", 0 );
                     //:ELSE
                  }
                  else
                  {
                     //:szScopingEntityName = ""
                     ZeidonStringCopy( szScopingEntityName, 1, 0, "", 1, 0, 33 );
                  }

                  //:END

                  //:DropView( vDialog2 )
                  DropView( vDialog2 );
                  //:szWriteBuffer = "      nRC2 = " + szGridView +
                  //:                ".SetCursorFirst( strSessionId, ^" + vDialog.CtrlMapLOD_Entity.Name +
                  //:                "^, ^" + szScopingEntityName + "^ );"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC2 = ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSessionId, ^", 1, 0, 10001 );
                  GetVariableFromAttribute( szTempString_99, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_99, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer = "      nRC2 = " + szGridView +
                  //:                ".SetCursorScopeOI( strSessionId, ^" + vDialog.CtrlMapLOD_Entity.Name + "^, 1 ); // first" // zPOS_FIRST
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC2 = ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorScopeOI( strSessionId, ^", 1, 0, 10001 );
                  GetVariableFromAttribute( szTempString_100, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_100, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^, 1 ); // first", 1, 0, 10001 );
               }

               //:END

               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      while ( nRC2 >= 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      while ( nRC2 >= 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:// Create an "IF" statement to filter rows if one of the web control properties was "Filter Rows"
               //:IF  szFilterTable = "Y"
               if ( ZeidonStringCompare( szFilterTable, 1, 0, "Y", 1, 0, 2 ) == 0 )
               {

                  //:szWriteBuffer = "         strFilter = " + szGridView +
                  //:             ".GetStringFromAttributeByContext( strSessionId, ^" + vDialog.CtrlMapLOD_Entity.Name +
                  //:             "^, ^wHideTableRow^, ^^, 1 );"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         strFilter = ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^", 1, 0, 10001 );
                  GetVariableFromAttribute( szTempString_101, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_101, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^wHideTableRow^, ^^, 1 );", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                  //:szWriteBuffer = "         // If the attribute wHideTableRow is null then we want to show this row."
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         // If the attribute wHideTableRow is null then we want to show this row.", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "         if ( strFilter.length( ) == 0 )"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( strFilter.length( ) == 0 )", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "         {"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               }

               //:END

               //://szWriteBuffer = "         strOdd = (iTableRowCnt" + szSuffix + " % 2) != 0 ? ^ class='odd'^ : ^^;"
               //:szWriteBuffer = "         strOdd = (iTableRowCnt % 2) != 0 ? ^ class='odd'^ : ^^;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         strOdd = (iTableRowCnt % 2) != 0 ? ^ class='odd'^ : ^^;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //://szWriteBuffer = "         iTableRowCnt" + szSuffix + "++;"
               //://WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               //:szWriteBuffer = "         iTableRowCnt++;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         iTableRowCnt++;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               //:// szWriteBuffer = "         strSuffix" + szSuffix + " = Integer.toString( iTableRowCnt" + szSuffix + " );"
               //:// WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )

               //:szWriteBuffer = "         lEntityKey = " + szGridView +
               //:                ".GetEntityKey( strSessionId, ^" + vDialog.CtrlMapLOD_Entity.Name + "^ );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         lEntityKey = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetEntityKey( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_102, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_102, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "         strEntityKey = Integer.toString( lEntityKey );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         strEntityKey = Integer.toString( lEntityKey );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "         strButtonName = ^SelectButton^ + strEntityKey;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         strButtonName = ^SelectButton^ + strEntityKey;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

               //:// Process the subcontrols for mapping.
               //:SetViewToSubobject( vDialog, "CtrlCtrl" )  // vDialog positioned on sub-controls
               SetViewToSubobject( vDialog, "CtrlCtrl" );
               //:// szIndentGroup = szIndent + "   "

               //:// Get the mapping attributes for each column in the table.
               //:FOR EACH vDialog.Control
               RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
               while ( RESULT > zCURSOR_UNCHANGED )
               {

                  //:szCtrlCtrlType = vDialog.ControlDef.Tag
                  GetVariableFromAttribute( szCtrlCtrlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
                  //:IF szCtrlCtrlType = "GridSubCtl" AND vDialog.CtrlCtrl EXISTS
                  lTempInteger_30 = CheckExistenceOfEntity( vDialog, "CtrlCtrl" );
                  if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridSubCtl", 1, 0, 51 ) == 0 && lTempInteger_30 == 0 )
                  {
                     //:SetViewToSubobject( vDialog, "CtrlCtrl" )  // vDialog positioned on sub-sub-controls
                     SetViewToSubobject( vDialog, "CtrlCtrl" );
                     //:bResetToPlaceHolder = 1
                     bResetToPlaceHolder = 1;
                     //:szCtrlCtrlType = vDialog.ControlDef.Tag
                     GetVariableFromAttribute( szCtrlCtrlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
                     //:ELSE
                  }
                  else
                  {
                     //:bResetToPlaceHolder = 0
                     bResetToPlaceHolder = 0;
                  }

                  //:END

                  //:szJustify = ""
                  ZeidonStringCopy( szJustify, 1, 0, "", 1, 0, 21 );
                  //:lSubtype = vDialog.Control.Subtype
                  GetIntegerFromAttribute( &lSubtype, vDialog, "Control", "Subtype" );
                  //:lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_CENTERJUSTIFY )
                  lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_CENTERJUSTIFY );
                  //:IF lTemp != 0
                  if ( lTemp != 0 )
                  {
                     //:szJustify = " align=^center^"
                     ZeidonStringCopy( szJustify, 1, 0, " align=^center^", 1, 0, 21 );
                     //:ELSE
                  }
                  else
                  {
                     //:lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_RIGHTJUSTIFY )
                     lTemp = IsFlagSequenceSet( lSubtype, zCONTROL_RIGHTJUSTIFY );
                     //:IF lTemp != 0
                     if ( lTemp != 0 )
                     {
                        //:szJustify = " align=^right^"
                        ZeidonStringCopy( szJustify, 1, 0, " align=^right^", 1, 0, 21 );
                     }

                     //:END
                  }

                  //:END

                  //:// Position on display mapping value, which is CtrlMap named "Displayed Text" or unnamed CtrlMap.
                  //:SET CURSOR FIRST vDialog.CtrlMap WHERE vDialog.CtrlMap.Tag = "Displayed Text"
                  RESULT = SetCursorFirstEntityByString( vDialog, "CtrlMap", "Tag", "Displayed Text", "" );
                  //:IF RESULT < zCURSOR_SET
                  if ( RESULT < zCURSOR_SET )
                  {
                     //:SET CURSOR FIRST vDialog.CtrlMapLOD_Attribute WITHIN vDialog.Control
                     //:           WHERE vDialog.CtrlMap.Tag = ""
                     RESULT = SetCursorFirstEntity( vDialog, "CtrlMapLOD_Attribute", "Control" );
                     if ( RESULT > zCURSOR_UNCHANGED )
                     {
                        while ( RESULT > zCURSOR_UNCHANGED && ( CompareAttributeToString( vDialog, "CtrlMap", "Tag", "" ) != 0 ) )
                        {
                           RESULT = SetCursorNextEntity( vDialog, "CtrlMapLOD_Attribute", "Control" );
                        }

                     }

                  }

                  //:END

                  //:// Grid Control Mapping
                  //:// We don't generate mapping for Push Button or if there wasn't mapping.
                  //:// KJS 12/14/07 - I added Combobox and GridComboCtl to this because if there is a combobox,
                  //:// we already get the variables for the combobox while creating the combobox html code.
                  //:IF szCtrlCtrlType != "PushBtn" AND szCtrlCtrlType != "BitmapBtn" AND
                  //:   szCtrlCtrlType != "ComboBox" AND szCtrlCtrlType != "GridComboCtl" AND
                  //:   RESULT >= zCURSOR_SET
                  if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "PushBtn", 1, 0, 51 ) != 0 && ZeidonStringCompare( szCtrlCtrlType, 1, 0, "BitmapBtn", 1, 0, 51 ) != 0 && ZeidonStringCompare( szCtrlCtrlType, 1, 0, "ComboBox", 1, 0, 51 ) != 0 &&
                       ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridComboCtl", 1, 0, 51 ) != 0 && RESULT >= zCURSOR_SET )
                  {
                     //:// Regular text

                     //:szListCtrlTag = vDialog.Control.Tag
                     GetVariableFromAttribute( szListCtrlTag, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                     //:szControlTag = "str" + szListCtrlTag
                     ZeidonStringCopy( szControlTag, 1, 0, "str", 1, 0, 36 );
                     ZeidonStringConcat( szControlTag, 1, 0, szListCtrlTag, 1, 0, 36 );
                     //:szWriteBuffer = "         " + szControlTag + " = ^^;"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, " = ^^;", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                     //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Edit"
                     RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Edit", "" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //:szWCP_Edit = "Y"
                        ZeidonStringCopy( szWCP_Edit, 1, 0, "Y", 1, 0, 2 );
                        //:ELSE
                     }
                     else
                     {
                        //:szWCP_Edit = "N"
                        ZeidonStringCopy( szWCP_Edit, 1, 0, "N", 1, 0, 2 );
                     }

                     //:END

                     //://IF RESULT >= zCURSOR_SET OR vDialog.Control.WebCtrlType = "Edit"
                     //:IF vDialog.Control.WebCtrlType = "Edit" OR szWCP_Edit = "Y"
                     if ( CompareAttributeToString( vDialog, "Control", "WebCtrlType", "Edit" ) == 0 || ZeidonStringCompare( szWCP_Edit, 1, 0, "Y", 1, 0, 2 ) == 0 )
                     {
                        //:lEditBox = 1
                        lEditBox = 1;
                        //:szWriteBuffer = "         " + szControlTag + "ErrorColor = ^^;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "ErrorColor = ^^;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:ELSE
                     }
                     else
                     {
                        //:lEditBox = 0
                        lEditBox = 0;
                     }

                     //:END

                     //:IF vDialog.CtrlMapContext EXISTS
                     lTempInteger_31 = CheckExistenceOfEntity( vDialog, "CtrlMapContext" );
                     if ( lTempInteger_31 == 0 )
                     {
                        //:szContextName = vDialog.CtrlMapContext.Name
                        GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog, "CtrlMapContext", "Name", "", 0 );
                        //:ELSE
                     }
                     else
                     {
                        //:szContextName = ""
                        ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                     }

                     //:END

                     //:szWriteBuffer = "         nRC = " + szGridView +
                     //:             ".CheckExistenceOfEntity( strSessionId, ^" + vDialog.CtrlMapRelatedEntity.Name + "^ );"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^", 1, 0, 10001 );
                     GetVariableFromAttribute( szTempString_103, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_103, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     //:szWriteBuffer = "         if ( nRC >= 0 )"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 )", 1, 0, 10001 );
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                     //:IF lEditBox = 1
                     if ( lEditBox == 1 )
                     {

                        //:szWriteBuffer = "         {"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            strTag = ^" + szListCtrlTag + "::^ + strEntityKey;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            strTag = ^", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "::^ + strEntityKey;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            strErrorMapValue = vAppSubtask.CheckError( strSessionId, strTag, strErrorTitle );"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            strErrorMapValue = vAppSubtask.CheckError( strSessionId, strTag, strErrorTitle );", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            if ( strErrorMapValue.length( ) > 0 )"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( strErrorMapValue.length( ) > 0 )", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            {"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "               " + szControlTag + "ErrorColor = ^ style='color: red'^;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "               ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "ErrorColor = ^ style='color: red'^;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "               " + szControlTag + " = strErrorMapValue;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "               ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " = strErrorMapValue;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            }"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            else"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            else", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            {"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:IF vDialog.CtrlMapER_Domain.MaxStringLth > 254
                        if ( CompareAttributeToInteger( vDialog, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
                        {
                           //:lMaxStringLength = vDialog.CtrlMapER_Domain.MaxStringLth
                           GetIntegerFromAttribute( &lMaxStringLength, vDialog, "CtrlMapER_Domain", "MaxStringLth" );
                           //:szMaxStringLength = lMaxStringLength
                           ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
                           //:ELSE
                        }
                        else
                        {
                           //:szMaxStringLength = "254"
                           ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
                        }

                        //:END

                        //:szWriteBuffer = "               " + szControlTag + " = " + szGridView +
                        //:             ".GetStringFromAttributeByContext( strSessionId, ^" + vDialog.CtrlMapRelatedEntity.Name +
                        //:             "^, ^" + vDialog.CtrlMapER_Attribute.Name + "^, ^" + szContextName + "^, " + szMaxStringLength + " );"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "               ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " = ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_104, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_104, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_105, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_105, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            }"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "         }"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );

                        //:ELSE
                     }
                     else
                     {
                        //:IF vDialog.CtrlMapER_Domain.MaxStringLth > 254
                        if ( CompareAttributeToInteger( vDialog, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
                        {
                           //:lMaxStringLength = vDialog.CtrlMapER_Domain.MaxStringLth
                           GetIntegerFromAttribute( &lMaxStringLength, vDialog, "CtrlMapER_Domain", "MaxStringLth" );
                           //:szMaxStringLength = lMaxStringLength
                           ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
                           //:ELSE
                        }
                        else
                        {
                           //:szMaxStringLength = "254"
                           ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
                        }

                        //:END

                        //:IF szCtrlCtrlType = "Calendar"
                        if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "Calendar", 1, 0, 51 ) == 0 )
                        {
                           //:szWriteBuffer = "            " + szControlTag + " = " + szGridView +
                           //:          ".GetStringFromAttributeByContext( strSessionId, ^" + vDialog.CtrlMapRelatedEntity.Name +
                           //:          "^, ^" + vDialog.CtrlMapER_Attribute.Name + "^, strDateFormat, " + szMaxStringLength + " );"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " = ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_106, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_106, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_107, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_107, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^, strDateFormat, ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                           //:ELSE
                        }
                        else
                        {
                           //:szWriteBuffer = "            " + szControlTag + " = " + szGridView +
                           //:          ".GetStringFromAttributeByContext( strSessionId, ^" + vDialog.CtrlMapRelatedEntity.Name +
                           //:          "^, ^" + vDialog.CtrlMapER_Attribute.Name + "^, ^" + szContextName + "^, " + szMaxStringLength + " );"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " = ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_108, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_108, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                           GetVariableFromAttribute( szTempString_109, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_109, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                        }

                        //:END
                     }

                     //:END
                     //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                     WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                     //:// KJS 05/06/09 - Check if the user wants this column to show only the first occurrence of the column value.
                     //:// All other occurrences of a value are null.
                     //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "First Occurrence Only"
                     RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "First Occurrence Only", "" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //:   szWriteBuffer = "            // Only show the first occurrence of this column value."
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            // Only show the first occurrence of this column value.", 1, 0, 10001 );
                        //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:   szWriteBuffer = "            if ( " + szControlTag + ".equals(" + szControlTag + "LV" + ") )"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ".equals(", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "LV", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ") )", 1, 0, 10001 );
                        //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:   szWriteBuffer = "            {"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                        //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:   szWriteBuffer = "               " + szControlTag + "LV = " + szControlTag + ";"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "               ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "LV = ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ";", 1, 0, 10001 );
                        //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:   szWriteBuffer = "               " + szControlTag + " = ^^;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "               ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " = ^^;", 1, 0, 10001 );
                        //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:   szWriteBuffer = "            }"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                        //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:   szWriteBuffer = "            else "
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            else ", 1, 0, 10001 );
                        //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:   szWriteBuffer = "               " + szControlTag + "LV = " + szControlTag + ";"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "               ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "LV = ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ";", 1, 0, 10001 );
                        //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                     }

                     //:END

                     //:// Checkbox mapping is different here.
                     //:IF szCtrlCtrlType = "GridCheckCtl" OR szCtrlCtrlType = "CheckBox"
                     if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridCheckCtl", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "CheckBox", 1, 0, 51 ) == 0 )
                     {
                        //:// If the value of the checkbox for not being checked is anything but null, the
                        //:// .length( ) wouldn't work properly.  All checkboxes would be checked.  Changing this...
                        //:szWriteBuffer = "         if ( " + szControlTag + ".equals( ^" + vDialog.Control.RadioOrCheckboxValue + "^ ) )"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ".equals( ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_110, 0, 'S', 51, vDialog, "Control", "RadioOrCheckboxValue", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_110, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ) )", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:ELSE
                     }
                     else
                     {
                        //:IF szTableExport = "Y"
                        if ( ZeidonStringCompare( szTableExport, 1, 0, "Y", 1, 0, 2 ) == 0 )
                        {
                           //:// KJS 09/29/10 - for table output
                           //:szWriteBuffer = "         strTblOutput = strTblOutput + " + szControlTag + " + ^\t^;"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         strTblOutput = strTblOutput + ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " + ^\\t^;", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                        }

                        //:END

                        //:szWriteBuffer = "         if ( " + szControlTag + ".length( ) == 0 )"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ".length( ) == 0 )", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                     }

                     //:END

                     //:// Checkbox mapping is different here.
                     //:IF szCtrlCtrlType = "GridCheckCtl" OR szCtrlCtrlType = "CheckBox"
                     if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridCheckCtl", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "CheckBox", 1, 0, 51 ) == 0 )
                     {

                        //://KJS 10/19/07 - We want to add "title" to controls and should I add class here as well?

                        //://If we put a title on the control, when the mouse is hovered over the control, this text will display.
                        //:szTitleHTML = ""
                        ZeidonStringCopy( szTitleHTML, 1, 0, "", 1, 0, 257 );
                        //:szTitle = vDialog.Control.DIL_Text
                        GetVariableFromAttribute( szTitle, 0, 'S', 257, vDialog, "Control", "DIL_Text", "", 0 );
                        //:IF szTitle != ""
                        if ( ZeidonStringCompare( szTitle, 1, 0, "", 1, 0, 257 ) != 0 )
                        {
                           //:szTitleHTML = " title='" + szTitle + "' "
                           ZeidonStringCopy( szTitleHTML, 1, 0, " title='", 1, 0, 257 );
                           ZeidonStringConcat( szTitleHTML, 1, 0, szTitle, 1, 0, 257 );
                           ZeidonStringConcat( szTitleHTML, 1, 0, "' ", 1, 0, 257 );
                        }

                        //:END

                        //://KJS 7/26/07 - Added disabled option for the checkbox.
                        //:CreateDisabledString( vDialog, szDisabled )
                        CreateDisabledString( vDialog, szDisabled );

                        //:szWriteBuffer = "         {"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            " + szControlTag + "Value = ^" + vDialog.Control.Tag +
                        //:                "^ + strEntityKey;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "Value = ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_111, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_111, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + strEntityKey;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                        //:// KJS 11/16/10 - adding an action to the checkbox inside a grid. Currently the GridCheckbox
                        //:// doesn't allow an action but we can copy in a normal checkbox which has an action.
                        //:IF vDialog.EventAct EXISTS
                        lTempInteger_32 = CheckExistenceOfEntity( vDialog, "EventAct" );
                        if ( lTempInteger_32 == 0 )
                        {
                           //:szText = " onclick='" + vDialog.EventAct.Tag + "( this.id )'"
                           GetVariableFromAttribute( szTempString_112, 0, 'S', 33, vDialog, "EventAct", "Tag", "", 0 );
                           ZeidonStringCopy( szText, 1, 0, " onclick='", 1, 0, 257 );
                           ZeidonStringConcat( szText, 1, 0, szTempString_112, 1, 0, 257 );
                           ZeidonStringConcat( szText, 1, 0, "( this.id )'", 1, 0, 257 );
                           //:ELSE
                        }
                        else
                        {
                           //:szText = ""
                           ZeidonStringCopy( szText, 1, 0, "", 1, 0, 257 );
                        }

                        //:END

                        //:szWriteBuffer = "            " + szControlTag +
                        //:                " = ^<input name='^ + " + szControlTag + "Value + ^' id='^ + " + szControlTag +
                        //:                "Value + ^' value='Y' type='checkbox'  CHECKED " +
                        //:                szDisabled + szTitleHTML + szText + "> ^;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " = ^<input name='^ + ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "Value + ^' id='^ + ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "Value + ^' value='Y' type='checkbox'  CHECKED ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szDisabled, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szText, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "> ^;", 1, 0, 10001 );
                        //://szWriteBuffer = "            " + szControlTag + " = ^<input name='^ + " + szControlTag +
                        //://                "Value + ^' value='Y' type='checkbox' CHECKED " + szDisabled + szTitleHTML + "> ^;"
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:// KJS 09/29/10 - for table output
                        //:// If this is a checkbox with no text then this is only for selecting table rows, only add
                        //:// this to strTblOutput.if this checkbox has a text value (this is what is shown in the table header).
                        //:// This is code for when the checkbox is checked so put in the checked value.
                        //:IF szTableExport = "Y" AND vDialog.Control.Text != ""
                        if ( ZeidonStringCompare( szTableExport, 1, 0, "Y", 1, 0, 2 ) == 0 && CompareAttributeToString( vDialog, "Control", "Text", "" ) != 0 )
                        {
                           //:szWriteBuffer = "         strTblOutput = strTblOutput + ^" + vDialog.Control.RadioOrCheckboxValue + "^ + ^\t^;"
                           GetVariableFromAttribute( szTempString_113, 0, 'S', 51, vDialog, "Control", "RadioOrCheckboxValue", "", 0 );
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         strTblOutput = strTblOutput + ^", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_113, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + ^\\t^;", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                        }

                        //:END

                        //:szWriteBuffer = "         }"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "         else"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         else", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "         {"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            " + szControlTag + "Value = ^" + vDialog.Control.Tag +
                        //:                "^ + strEntityKey;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "Value = ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_114, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_114, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^ + strEntityKey;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "            " + szControlTag +
                        //:                " = ^<input name='^ + " + szControlTag + "Value + ^' id='^ + " + szControlTag +
                        //:                "Value + ^' value='Y' type='checkbox' " +
                        //:                szDisabled + szTitleHTML + szText + "> ^;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " = ^<input name='^ + ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "Value + ^' id='^ + ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "Value + ^' value='Y' type='checkbox' ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szDisabled, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szText, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "> ^;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:// KJS 09/29/10 - for table output
                        //:// If this is a checkbox with no text then this is only for selecting table rows, only add
                        //:// this to strTblOutput.if this checkbox has a text value (this is what is shown in the table header).
                        //:// This is code for when the checkbox is not checked (there is no value) so just add the tab.
                        //:IF szTableExport = "Y" AND vDialog.Control.Text != ""
                        if ( ZeidonStringCompare( szTableExport, 1, 0, "Y", 1, 0, 2 ) == 0 && CompareAttributeToString( vDialog, "Control", "Text", "" ) != 0 )
                        {
                           //:szWriteBuffer = "         strTblOutput = strTblOutput + ^\t^;"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "         strTblOutput = strTblOutput + ^\\t^;", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                        }

                        //:END
                        //:szWriteBuffer = "         }"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                        //:ELSE
                     }
                     else
                     {
                        //:IF vDialog.Control.WebCtrlType = "Edit" OR szWCP_Edit = "Y" OR szCtrlCtrlType = "Calendar" OR
                        //:   szCtrlCtrlType = "ComboBox" OR szCtrlCtrlType = "GridComboCtl"
                        if ( CompareAttributeToString( vDialog, "Control", "WebCtrlType", "Edit" ) == 0 || ZeidonStringCompare( szWCP_Edit, 1, 0, "Y", 1, 0, 2 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "Calendar", 1, 0, 51 ) == 0 ||
                        ZeidonStringCompare( szCtrlCtrlType, 1, 0, "ComboBox", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridComboCtl", 1, 0, 51 ) == 0 )
                        {
                           //:szWriteBuffer = "            " + szControlTag + " = ^^;"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " = ^^;", 1, 0, 10001 );
                           //:ELSE
                        }
                        else
                        {
                           //:szWriteBuffer = "            " + szControlTag + " = ^&nbsp^;"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, " = ^&nbsp^;", 1, 0, 10001 );
                        }

                        //:END
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                     }

                     //:END

                     //:// If the Grid entry requests URL Mapping, generate the code here.
                     //:SET CURSOR FIRST vDialog.CtrlMap WHERE vDialog.CtrlMap.Tag = "Hyperlink URL"
                     RESULT = SetCursorFirstEntityByString( vDialog, "CtrlMap", "Tag", "Hyperlink URL", "" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //:szControlTag = "str" + vDialog.Control.Tag + "_URL"
                        GetVariableFromAttribute( szTempString_115, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                        ZeidonStringCopy( szControlTag, 1, 0, "str", 1, 0, 36 );
                        ZeidonStringConcat( szControlTag, 1, 0, szTempString_115, 1, 0, 36 );
                        ZeidonStringConcat( szControlTag, 1, 0, "_URL", 1, 0, 36 );
                        //:szWriteBuffer = "         " + szControlTag + " = ^^;"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " = ^^;", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "         nRC = " + szGridView +
                        //:             ".CheckExistenceOfEntity( strSessionId, ^" + vDialog.CtrlMapRelatedEntity.Name + "^ );"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_116, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_116, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:szWriteBuffer = "         if ( nRC >= 0 )"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 )", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        //:IF vDialog.CtrlMapER_Domain.MaxStringLth > 254
                        if ( CompareAttributeToInteger( vDialog, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
                        {
                           //:lMaxStringLength = vDialog.CtrlMapER_Domain.MaxStringLth
                           GetIntegerFromAttribute( &lMaxStringLength, vDialog, "CtrlMapER_Domain", "MaxStringLth" );
                           //:szMaxStringLength = lMaxStringLength
                           ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
                           //:ELSE
                        }
                        else
                        {
                           //:szMaxStringLength = "254"
                           ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
                        }

                        //:END
                        //:IF vDialog.CtrlMapContext EXISTS
                        lTempInteger_33 = CheckExistenceOfEntity( vDialog, "CtrlMapContext" );
                        if ( lTempInteger_33 == 0 )
                        {
                           //:szContextName = vDialog.CtrlMapContext.Name
                           GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog, "CtrlMapContext", "Name", "", 0 );
                           //:ELSE
                        }
                        else
                        {
                           //:szContextName = ""
                           ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                        }

                        //:END
                        //:szWriteBuffer = "            " + szControlTag + " = " + szGridView +
                        //:                ".GetStringFromAttributeByContext( strSessionId, ^" + vDialog.CtrlMapRelatedEntity.Name +
                        //:                "^, ^" + vDialog.CtrlMapER_Attribute.Name + "^, ^" + szContextName + "^, " + szMaxStringLength + " );"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "            ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szControlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " = ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_117, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_117, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_118, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_118, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                        //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                        WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                     }

                     //:END
                  }


                  //:END

                  //:IF bResetToPlaceHolder = 1
                  if ( bResetToPlaceHolder == 1 )
                  {
                     //:ResetViewFromSubobject( vDialog )  // vDialog positioned on sub-controls
                     ResetViewFromSubobject( vDialog );
                  }

                  RESULT = SetCursorNextEntity( vDialog, "Control", "" );
                  //:END
               }

               //:END

               //:ResetViewFromSubobject( vDialog )  // vDialog positioned on Grid
               ResetViewFromSubobject( vDialog );
               //:// szWriteBuffer = "         strEntityID = " + szGridView +
               //://                 ".GetString( strSessionId, ^" + vDialog.CtrlMapLOD_Entity.Name + "^, ^ID^ );"
               //:// WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )

               //:szWriteBuffer = "%>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

               //:// Create the table entries with values.
               //:szWriteBuffer = "<tr<%=strOdd%>>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<tr<%=strOdd%>>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

               //:OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_X A" )
               OrderEntityForView( vDialog, "CtrlCtrl", "PSDLG_X A" );
               //:SetViewToSubobject( vDialog, "CtrlCtrl" )  // vDialog positioned on sub-controls
               SetViewToSubobject( vDialog, "CtrlCtrl" );
               //:lCol = 0
               lCol = 0;
               //:FOR EACH vDialog.Control   // Loop to create table columns.
               RESULT = SetCursorFirstEntity( vDialog, "Control", "" );
               while ( RESULT > zCURSOR_UNCHANGED )
               {

                  //:szCtrlCtrlType = vDialog.ControlDef.Tag
                  GetVariableFromAttribute( szCtrlCtrlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
                  //:IF szCtrlCtrlType = "GridSubCtl" AND vDialog.CtrlCtrl EXISTS
                  lTempInteger_34 = CheckExistenceOfEntity( vDialog, "CtrlCtrl" );
                  if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridSubCtl", 1, 0, 51 ) == 0 && lTempInteger_34 == 0 )
                  {
                     //:SetViewToSubobject( vDialog, "CtrlCtrl" )  // vDialog positioned on sub-sub-controls
                     SetViewToSubobject( vDialog, "CtrlCtrl" );
                     //:bResetToPlaceHolder = 1
                     bResetToPlaceHolder = 1;
                     //:szCtrlCtrlType = vDialog.ControlDef.Tag
                     GetVariableFromAttribute( szCtrlCtrlType, 0, 'S', 51, vDialog, "ControlDef", "Tag", "", 0 );
                     //:ELSE
                  }
                  else
                  {
                     //:bResetToPlaceHolder = 0
                     bResetToPlaceHolder = 0;
                  }

                  //:END

                  //:// Set up "<td" constant with optional Class.
                  //:// !!! KJS 01/16/09

                  //:// KJS 01/16/09 - I am putting in "WRAP" as a Web Control Property because I think it's confusing
                  //:// to have the Wrap option on a different screen (under "Common" button).  I would think you would
                  //:// choose, "Absolute Width" and then choose "WRAP" if you want your field to wrap.  Should I instead
                  //:// have a web property of "Absolute Width Wrap"??  so you only have to add one property instead of
                  //:// two?
                  //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "WRAP"
                  RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "WRAP", "" );
                  //:IF RESULT >= zCURSOR_SET
                  if ( RESULT >= zCURSOR_SET )
                  {
                     //:szItemTableHeader = "<td"
                     ZeidonStringCopy( szItemTableHeader, 1, 0, "<td", 1, 0, 201 );
                     //:ELSE
                  }
                  else
                  {
                     //:// Under the "Common" button there is a checkbox for "Wrap".  Need to check this as well as
                     //:// the webcontrol property.
                     //:IF vDialog.Control.WebWrap = "Y"
                     if ( CompareAttributeToString( vDialog, "Control", "WebWrap", "Y" ) == 0 )
                     {
                        //:szItemTableHeader = "<td"
                        ZeidonStringCopy( szItemTableHeader, 1, 0, "<td", 1, 0, 201 );
                        //:ELSE
                     }
                     else
                     {
                        //:szItemTableHeader = "<td nowrap"
                        ZeidonStringCopy( szItemTableHeader, 1, 0, "<td nowrap", 1, 0, 201 );
                     }

                     //:END
                  }


                  //:END

                  //:CreateDisabledString( vDialog, szDisabled )
                  CreateDisabledString( vDialog, szDisabled );

                  //:// The id attribute is a unique identification for an HTML element.
                  //:// The id attribute is often used with CSS or JavaScript (using the HTML DOM)
                  //:// to style or change the HTML element with the specified unique id.
                  //:// The id must be unique within the HTML document, this means that you can only
                  //:// use the id once on a page, but re-use it on another page.
                  //://
                  //:// Naming rules:
                  //://  - Must begin with a letter A-Z or a-z
                  //://  - Can be followed by: letters (A-Za-z), digits (0-9), hyphens ("-"),
                  //://    underscores ("_"), colons (":"), and periods (".")
                  //://  - Values are case-sensitive
                  //://
                  //:// dks 2008.12.10 - Because of the above statements regarding valid id's for HTML
                  //:// elements, I believe the following Hidden generation should produce invalid HTML.

                  //://KJS 2/12/2008 - If this control is a hidden control, then we do not care what other web controls
                  //://properties there might be.  Create this as a hidden field. This does not have <td> tags.
                  //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Hidden"
                  RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Hidden", "" );
                  //:IF RESULT >= zCURSOR_SET
                  if ( RESULT >= zCURSOR_SET )
                  {
                     //:szListCtrlTag = vDialog.Control.Tag
                     GetVariableFromAttribute( szListCtrlTag, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );
                     //:szWriteBuffer = "<input type=^hidden^ value=^<%=str" + szListCtrlTag + "%>^ " +
                     //:                       "name=^" + szListCtrlTag + "::<%=strEntityKey%>^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^>"
                     ZeidonStringCopy( szWriteBuffer, 1, 0, "<input type=^hidden^ value=^<%=str", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "%>^ ", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "name=^", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ id=^", 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                     ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^>", 1, 0, 10001 );

                     //:ELSE
                  }
                  else
                  {
                     //://Not a hidden control.

                     //://KJS 7/25/07 - Look for values in the WebControlProperties.
                     //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Edit"
                     RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Edit", "" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //:szWCP_Edit = "Y"
                        ZeidonStringCopy( szWCP_Edit, 1, 0, "Y", 1, 0, 2 );
                        //:ELSE
                     }
                     else
                     {
                        //:szWCP_Edit = "N"
                        ZeidonStringCopy( szWCP_Edit, 1, 0, "N", 1, 0, 2 );
                     }

                     //:END

                     //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Multiline"
                     RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Multiline", "" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //:szWCP_Multiline = "Y"
                        ZeidonStringCopy( szWCP_Multiline, 1, 0, "Y", 1, 0, 2 );
                        //:ELSE
                     }
                     else
                     {
                        //:szWCP_Multiline = "N"
                        ZeidonStringCopy( szWCP_Multiline, 1, 0, "N", 1, 0, 2 );
                     }

                     //:END

                     //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "EmailAddress"
                     RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "EmailAddress", "" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //:szWCP_EmailAddress = "Y"
                        ZeidonStringCopy( szWCP_EmailAddress, 1, 0, "Y", 1, 0, 2 );
                        //:ELSE
                     }
                     else
                     {
                        //:szWCP_EmailAddress = "N"
                        ZeidonStringCopy( szWCP_EmailAddress, 1, 0, "N", 1, 0, 2 );
                     }

                     //:END

                     //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "Absolute Width"
                     RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "Absolute Width", "" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //:szWCP_AbsoluteWidth = "Y"
                        ZeidonStringCopy( szWCP_AbsoluteWidth, 1, 0, "Y", 1, 0, 2 );
                        //:ELSE
                     }
                     else
                     {
                        //:szWCP_AbsoluteWidth = "N"
                        ZeidonStringCopy( szWCP_AbsoluteWidth, 1, 0, "N", 1, 0, 2 );
                     }

                     //:END

                     //:// If Absolute Width is requested, add Width to szItemTableHeader.
                     //:IF szWCP_AbsoluteWidth = "Y"
                     if ( ZeidonStringCompare( szWCP_AbsoluteWidth, 1, 0, "Y", 1, 0, 2 ) == 0 )
                     {
                        //:PIX_PER_DU( vDialog, dDLUnits )
                        PIX_PER_DU( vDialog, &dDLUnits );
                        //:zIntegerToString( szWidth, 10, vDialog.Control.SZDLG_X * dDLUnits )
                        GetIntegerFromAttribute( &lTempInteger_35, vDialog, "Control", "SZDLG_X" );
                        zIntegerToString( szWidth, 10, lTempInteger_35 * dDLUnits );
                        //:szItemTableHeader = szItemTableHeader + " style=^width:" + szWidth + "px;^"
                        ZeidonStringConcat( szItemTableHeader, 1, 0, " style=^width:", 1, 0, 201 );
                        ZeidonStringConcat( szItemTableHeader, 1, 0, szWidth, 1, 0, 201 );
                        ZeidonStringConcat( szItemTableHeader, 1, 0, "px;^", 1, 0, 201 );
                     }

                     //:END

                     //://If we put a title on the control, when the mouse is hovered over the control, this text will display.
                     //:szTitleHTML = ""
                     ZeidonStringCopy( szTitleHTML, 1, 0, "", 1, 0, 257 );
                     //:szTitle = vDialog.Control.DIL_Text
                     GetVariableFromAttribute( szTitle, 0, 'S', 257, vDialog, "Control", "DIL_Text", "", 0 );
                     //:IF szTitle != ""
                     if ( ZeidonStringCompare( szTitle, 1, 0, "", 1, 0, 257 ) != 0 )
                     {
                        //:szTitleHTML = " title=^" + szTitle + "^ "
                        ZeidonStringCopy( szTitleHTML, 1, 0, " title=^", 1, 0, 257 );
                        ZeidonStringConcat( szTitleHTML, 1, 0, szTitle, 1, 0, 257 );
                        ZeidonStringConcat( szTitleHTML, 1, 0, "^ ", 1, 0, 257 );
                     }

                     //:END

                     //:szClass = vDialog.Control.CSS_Class
                     GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
                     //:IF szClass != "" AND szCtrlCtrlType != "PushBtn"  // Don't add Class here for Push Button.
                     if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) != 0 && ZeidonStringCompare( szCtrlCtrlType, 1, 0, "PushBtn", 1, 0, 51 ) != 0 )
                     {
                        //:szItemTableHeader = szItemTableHeader + " class=^" + szClass + "^"
                        ZeidonStringConcat( szItemTableHeader, 1, 0, " class=^", 1, 0, 201 );
                        ZeidonStringConcat( szItemTableHeader, 1, 0, szClass, 1, 0, 201 );
                        ZeidonStringConcat( szItemTableHeader, 1, 0, "^", 1, 0, 201 );
                     }

                     //:END

                     //://KJS 10/19/07 - Added title
                     //:IF szTitle != "" AND szCtrlCtrlType != "PushBtn"  // Don't add title here for Push Button.
                     if ( ZeidonStringCompare( szTitle, 1, 0, "", 1, 0, 257 ) != 0 && ZeidonStringCompare( szCtrlCtrlType, 1, 0, "PushBtn", 1, 0, 51 ) != 0 )
                     {
                        //:szItemTableHeader = szItemTableHeader + szTitleHTML
                        ZeidonStringConcat( szItemTableHeader, 1, 0, szTitleHTML, 1, 0, 201 );
                     }

                     //:END

                     //:IF szCtrlCtrlType = "PushBtn"
                     if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "PushBtn", 1, 0, 51 ) == 0 )
                     {
                        //:IF szWriteBuffer = "   }"
                        if ( ZeidonStringCompare( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 ) == 0 )
                        {
                           //:// The last entry was a variable text, so create the "%>" statement.
                           //:szWriteBuffer = "%>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                           //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                           WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                        }

                        //:END

                        //:// Push Button
                        //:szActionName = ""
                        ZeidonStringCopy( szActionName, 1, 0, "", 1, 0, 33 );
                        //:IF vDialog.EventAct EXISTS
                        lTempInteger_36 = CheckExistenceOfEntity( vDialog, "EventAct" );
                        if ( lTempInteger_36 == 0 )
                        {
                           //:szActionName = vDialog.EventAct.Tag
                           GetVariableFromAttribute( szActionName, 0, 'S', 33, vDialog, "EventAct", "Tag", "", 0 );
                        }

                        //:END

                        //:// Set Class as either null or with Class value.
                        //:IF vDialog.Control.CSS_Class = ""
                        if ( CompareAttributeToString( vDialog, "Control", "CSS_Class", "" ) == 0 )
                        {
                           //:szClass = ""
                           ZeidonStringCopy( szClass, 1, 0, "", 1, 0, 257 );
                           //:ELSE
                        }
                        else
                        {
                           //:szClass = "class=^" + vDialog.Control.CSS_Class + "^ "
                           GetVariableFromAttribute( szTempString_119, 0, 'S', 255, vDialog, "Control", "CSS_Class", "", 0 );
                           ZeidonStringCopy( szClass, 1, 0, "class=^", 1, 0, 257 );
                           ZeidonStringConcat( szClass, 1, 0, szTempString_119, 1, 0, 257 );
                           ZeidonStringConcat( szClass, 1, 0, "^ ", 1, 0, 257 );
                        }

                        //:END

                        //://KJS 7/26/07 - Added DISABLED option.
                        //://KJS 10/19/07 - Added title

                        //:// KJS 06/22/09 - I am noticing that there is no width for a push button
                        //:// in a grid.  I'm thinking there should be so I am going to get the
                        //:// width here (buttons don't have a WebControlProperty of Absolute Width).
                        //:PIX_PER_DU( vDialog, dDLUnits )
                        PIX_PER_DU( vDialog, &dDLUnits );
                        //:zIntegerToString( szWidth, 10, vDialog.Control.SZDLG_X * dDLUnits )
                        GetIntegerFromAttribute( &lTempInteger_37, vDialog, "Control", "SZDLG_X" );
                        zIntegerToString( szWidth, 10, lTempInteger_37 * dDLUnits );
                        //:szStyle = " style=^width:" + szWidth + "px;^ "
                        ZeidonStringCopy( szStyle, 1, 0, " style=^width:", 1, 0, 101 );
                        ZeidonStringConcat( szStyle, 1, 0, szWidth, 1, 0, 101 );
                        ZeidonStringConcat( szStyle, 1, 0, "px;^ ", 1, 0, 101 );

                        //:// szWriteBuffer = "   " + szItemTableHeader + "><input type=^submit^ " + szTitleHTML + szClass + "name=<%=strButtonName%> onclick=^" + szActionName +
                        //://                 "( this.id )^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ value=^" + vDialog.Control.Text + "^" + szDisabled + "></td>"
                        //:szWriteBuffer = "   " + szItemTableHeader + "><button type=^button^ " + szTitleHTML + szClass + "name=<%=strButtonName%> onclick=^" + szActionName +
                        //:                "( this.id )^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ " + szStyle + szDisabled + ">"+
                        //:                vDialog.Control.Text + "</button></td>"
                        ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "><button type=^button^ ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "name=<%=strButtonName%> onclick=^", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szActionName, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "( this.id )^ id=^", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ ", 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szStyle, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szDisabled, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );
                        GetVariableFromAttribute( szTempString_120, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_120, 1, 0, 10001 );
                        ZeidonStringConcat( szWriteBuffer, 1, 0, "</button></td>", 1, 0, 10001 );
                        //:ELSE
                     }
                     else
                     {
                        //:szListCtrlTag = vDialog.Control.Tag
                        GetVariableFromAttribute( szListCtrlTag, 0, 'S', 33, vDialog, "Control", "Tag", "", 0 );

                        //:// If Title is variable mapping, only create entries for columns with titles.
                        //:CreateViewFromView( vDialog2, vDialog )
                        CreateViewFromView( &vDialog2, vDialog );
                        //:// SET CURSOR NEXT vDialog2.CtrlMap WHERE vDialog2.CtrlMap.Tag = "Variable Header"
                        //:// IF RESULT >= zCURSOR_SET AND vDialog2.CtrlMapLOD_Attribute EXISTS
                        //://    szWriteBuffer = "   " + szItemTableHeader + "><%=str" + szListCtrlTag + "%></td>"
                        //://    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                        //:// ELSE
                        //:IF szCtrlCtrlType = "ComboBox" OR szCtrlCtrlType = "GridComboCtl"
                        if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "ComboBox", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridComboCtl", 1, 0, 51 ) == 0 )
                        {

                           //://IF szWCP_AbsoluteWidth = "Y"
                           //:   PIX_PER_DU( vDialog, dDLUnits )
                           PIX_PER_DU( vDialog, &dDLUnits );
                           //:   zIntegerToString( szWidth, 10, vDialog.Control.SZDLG_X * dDLUnits )
                           GetIntegerFromAttribute( &lTempInteger_38, vDialog, "Control", "SZDLG_X" );
                           zIntegerToString( szWidth, 10, lTempInteger_38 * dDLUnits );
                           //:   //szItemTableHeader = szItemTableHeader + " style=^width:" + szWidth + "px;^"
                           //://END

                           //://szViewName = vDialog.CtrlMapView.Name
                           //:szViewName = szGridView
                           ZeidonStringCopy( szViewName, 1, 0, szGridView, 1, 0, 65 );
                           //:szMapEntityName = vDialog.CtrlMapRelatedEntity.Name
                           GetVariableFromAttribute( szMapEntityName, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                           //:szMapAttributeName = vDialog.CtrlMapER_Attribute.Name
                           GetVariableFromAttribute( szMapAttributeName, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );

                           //:szWriteBuffer = "   " + szItemTableHeader + ">" // <td nowrap>
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                           ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );

                           //:IF vDialog.Event EXISTS
                           lTempInteger_39 = CheckExistenceOfEntity( vDialog, "Event" );
                           if ( lTempInteger_39 == 0 )
                           {
                              //:IF vDialog.Event.Type = 1
                              if ( CompareAttributeToInteger( vDialog, "Event", "Type", 1 ) == 0 )
                              {
                                 //:szSelectAction   = "onchange"
                                 ZeidonStringCopy( szSelectAction, 1, 0, "onchange", 1, 0, 11 );
                                 //:szSelectFunction = "OnChange"
                                 ZeidonStringCopy( szSelectFunction, 1, 0, "OnChange", 1, 0, 11 );
                                 //:ELSE
                              }
                              else
                              {
                                 //:szSelectAction   = "onblur"
                                 ZeidonStringCopy( szSelectAction, 1, 0, "onblur", 1, 0, 11 );
                                 //:szSelectFunction = "OnBlur"
                                 ZeidonStringCopy( szSelectFunction, 1, 0, "OnBlur", 1, 0, 11 );
                              }

                              //:END
                              //:ELSE
                           }
                           else
                           {
                              //:szSelectAction   = "onchange"
                              ZeidonStringCopy( szSelectAction, 1, 0, "onchange", 1, 0, 11 );
                              //:szSelectFunction = "OnChange"
                              ZeidonStringCopy( szSelectFunction, 1, 0, "OnChange", 1, 0, 11 );
                           }

                           //:END

                           //://Can be a domain combo box or a table combo box
                           //:lSubtype = vDialog.Control.Subtype
                           GetIntegerFromAttribute( &lSubtype, vDialog, "Control", "Subtype" );
                           //:nRC = AreBitsSetInFlag( lSubtype, 61440 ) // 0x0000F000
                           nRC = AreBitsSetInFlag( lSubtype, 61440 );
                           //:IF nRC = 0   // IF vDialog.Control.Subtype < 12000  ==> Domain Combobox
                           if ( nRC == 0 )
                           {

                              //://Domain combo box

                              //:// szWriteBuffer = szWriteBuffer + "<input name=^h" + szListCtrlTag + "::<%=strEntityKey%>^ id=^h" + szListCtrlTag + "::<%=strEntityKey%>^ type=^hidden^ value=^<%=str" + szListCtrlTag + "%>^ >"
                              //:// WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )

                              //://KELLY - Do I need to add DISABLED here?

                              //://032609

                              //:IF szClass = ""
                              if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
                              {
                                 //:szWriteBuffer = szWriteBuffer + "<select name=^" + szListCtrlTag + "::<%=strEntityKey%>^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ size=^1^" + szTitleHTML + " style=^width:" + szWidth + "px;^ " +
                                 //:                szDisabled + szSelectAction + "=^" +
                                 //:                szListCtrlTag + szSelectFunction + "( h" + szListCtrlTag + "::<%=strEntityKey%>," + szListCtrlTag + "::<%=strEntityKey%>, <%=strEntityKey%> )^>"
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "<select name=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ id=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ size=^1^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, " style=^width:", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szWidth, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "px;^ ", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szDisabled, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectAction, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectFunction, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "( h", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>,", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>, <%=strEntityKey%> )^>", 1, 0, 10001 );
                                 //:ELSE
                              }
                              else
                              {
                                 //:szWriteBuffer = szWriteBuffer + "<select class=^" + szClass + "^ name=^" + szListCtrlTag + "::<%=strEntityKey%>^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ size=^1^" + szTitleHTML +
                                 //:               " style=^width:" + szWidth + "px;^ " + szDisabled + szSelectAction + "=^" + szListCtrlTag + szSelectFunction + "( h" + szListCtrlTag + "::<%=strEntityKey%>," +
                                 //:               szListCtrlTag + "::<%=strEntityKey%>, <%=strEntityKey%> )^>"
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "<select class=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "^ name=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ id=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ size=^1^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, " style=^width:", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szWidth, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "px;^ ", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szDisabled, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectAction, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectFunction, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "( h", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>,", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>, <%=strEntityKey%> )^>", 1, 0, 10001 );
                              }

                              //:END

                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "<%"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:// szWriteBuffer = "      nRC = " + szViewName + ".GetView( strSessionId, ^" + szViewName + "^, vAppSubtask );"

                              //:// This view should be the same as the view we are getting for the grid so we don't need to retrieve
                              //:// it again.  Set nRC = 1 so that we go into the IF statement (should really take that out).
                              //:szWriteBuffer = "      nRC = 1;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = 1;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      if ( nRC > 0 )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC > 0 )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         int    nRowCnt= 0;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         int    nRowCnt= 0;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         Vector ComboVector;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         Vector ComboVector;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                              //:IF vDialog.CtrlMapER_Domain.MaxStringLth > 254
                              if ( CompareAttributeToInteger( vDialog, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
                              {
                                 //:lMaxStringLength = vDialog.CtrlMapER_Domain.MaxStringLth
                                 GetIntegerFromAttribute( &lMaxStringLength, vDialog, "CtrlMapER_Domain", "MaxStringLth" );
                                 //:szMaxStringLength = lMaxStringLength
                                 ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
                                 //:ELSE
                              }
                              else
                              {
                                 //:szMaxStringLength = "254"
                                 ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
                              }

                              //:END

                              //:/***** 04/26/11 */
                              //:szWriteBuffer = "         nRC = " + szViewName +
                              //:         ".CheckExistenceOfEntity( strSessionId, ^" +
                              //:         szMapEntityName + "^ );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szMapEntityName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         if ( nRC >= 0 )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:/*****/
                              //:szWriteBuffer = "            strComboCurrentValue = " + szViewName + ".GetStringFromAttributeByContext( strSessionId, ^" + szMapEntityName + "^, ^" +
                              //:                szMapAttributeName + "^, ^^, " + szMaxStringLength + " );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            strComboCurrentValue = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szMapEntityName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szMapAttributeName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^^, ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         ComboVector = " + szViewName + ".GetTableListForAttribute( strSessionId, ^" + szMapEntityName + "^, ^" + szMapAttributeName + "^, ^^ );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         ComboVector = ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetTableListForAttribute( strSessionId, ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szMapEntityName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szMapAttributeName, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^^ );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         nRowCnt = (int) ComboVector.size( );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRowCnt = (int) ComboVector.size( );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         int k;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         int k;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         int nFirst;"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         int nFirst;", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         if ( nRowCnt > 0 ) "
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRowCnt > 0 ) ", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                              //:IF vDialog.CtrlMapER_Attribute.NotNull = "Y"
                              if ( CompareAttributeToString( vDialog, "CtrlMapER_Attribute", "NotNull", "Y" ) == 0 )
                              {
                                 //:// Generate code when attribute IS required.
                                 //:szWriteBuffer = "            // Code for required attribute, which doesn't allow a blank entry."
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "            // Code for required attribute, which doesn't allow a blank entry.", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "            nFirst = (ComboVector.elementAt( 0 ) == ^^) ? 1 : 0;"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "            nFirst = (ComboVector.elementAt( 0 ) == ^^) ? 1 : 0;", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                 //:ELSE
                              }
                              else
                              {
                                 //:// Generate code when attribute is NOT required.
                                 //:szWriteBuffer = "            // Code for NOT required attribute, which makes sure a blank entry exists."
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "            // Code for NOT required attribute, which makes sure a blank entry exists.", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "            if ( ComboVector.elementAt( 0 ) != ^^ )"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "            if ( ComboVector.elementAt( 0 ) != ^^ )", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "            {"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "               if ( strComboCurrentValue == ^^ )"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "               if ( strComboCurrentValue == ^^ )", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "               {"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "               {", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "%>"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "                  <option selected=^selected^ value=^^></option>"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "                  <option selected=^selected^ value=^^></option>", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "<%"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "               }"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "               }", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "               else"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "               else", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "               {"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "               {", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "%>"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "                  <option value=^^></option>"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "                  <option value=^^></option>", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "<%"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "               }"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "               }", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "            }"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                                 //:szWriteBuffer = "            nFirst = 0;"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "            nFirst = 0;", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              }

                              //:END

                              //:szWriteBuffer = "            for ( k = nFirst; k < nRowCnt; k++ )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            for ( k = nFirst; k < nRowCnt; k++ )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               strErrorMapValue = (String) ComboVector.elementAt( k );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               strErrorMapValue = (String) ComboVector.elementAt( k );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               if ( strErrorMapValue.length( ) != 0 )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               if ( strErrorMapValue.length( ) != 0 )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  if ( strComboCurrentValue.equals( strErrorMapValue ) )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  if ( strComboCurrentValue.equals( strErrorMapValue ) )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "%>"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                     <option selected=^selected^ value=^<%=strErrorMapValue%>^><%=strErrorMapValue%></option>"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                     <option selected=^selected^ value=^<%=strErrorMapValue%>^><%=strErrorMapValue%></option>", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "<%"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  else"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  else", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  {"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  {", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "%>"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                     <option value=^<%=strErrorMapValue%>^><%=strErrorMapValue%></option>"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                     <option value=^<%=strErrorMapValue%>^><%=strErrorMapValue%></option>", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "<%"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "                  }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "                  }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "               }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "               }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "            }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "            }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "         }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "      } //if ( nRowCnt > 0 )"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      } //if ( nRowCnt > 0 )", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "%>"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:szWriteBuffer = "   </select>"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "   </select>", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:// szWriteBuffer = szWriteBuffer + "<input name=^h" + szListCtrlTag + "::<%=strEntityKey%>^ id=^h" + szListCtrlTag + "::<%=strEntityKey%>^ type=^hidden^ value=^<%=str" + szListCtrlTag + "%>^ >"
                              //:szWriteBuffer = "<input name=^h" + szListCtrlTag + "::<%=strEntityKey%>^ id=^h" + szListCtrlTag + "::<%=strEntityKey%>^ type=^hidden^ value=^<%=strComboCurrentValue%>^ >"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "<input name=^h", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ id=^h", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ type=^hidden^ value=^<%=strComboCurrentValue%>^ >", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:ELSE
                           }
                           else
                           {

                              //:// Select type combo box
                              //:CreateViewFromViewForTask( vList, vDialog, 0 )
                              CreateViewFromViewForTask( &vList, vDialog, 0 );
                              //:SET CURSOR NEXT vList.CtrlMap
                              RESULT = SetCursorNextEntity( vList, "CtrlMap", "" );
                              //:CreateViewFromViewForTask( vEntity, vList, 0 )
                              CreateViewFromViewForTask( &vEntity, vList, 0 );
                              //:SET CURSOR NEXT vEntity.CtrlMap
                              RESULT = SetCursorNextEntity( vEntity, "CtrlMap", "" );
                              //:CreateViewFromViewForTask( vScope, vEntity, 0 )
                              CreateViewFromViewForTask( &vScope, vEntity, 0 );
                              //:SET CURSOR NEXT vScope.CtrlMap
                              RESULT = SetCursorNextEntity( vScope, "CtrlMap", "" );

                              //:// The Select Action is either onblur or onchange depending on the following.
                              //:// 1. If no Action, use onchange because this allows using keystrokes in the control.
                              //:// 2. If Action is SelectChange, use onchange.
                              //:// 3. If Action is SelectEnd, use onfocusout.
                              //:IF vDialog.Event EXISTS
                              lTempInteger_40 = CheckExistenceOfEntity( vDialog, "Event" );
                              if ( lTempInteger_40 == 0 )
                              {
                                 //:IF vDialog.Event.Type = 1
                                 if ( CompareAttributeToInteger( vDialog, "Event", "Type", 1 ) == 0 )
                                 {
                                    //:szSelectAction   = "onchange"
                                    ZeidonStringCopy( szSelectAction, 1, 0, "onchange", 1, 0, 11 );
                                    //:szSelectFunction = "OnChange"
                                    ZeidonStringCopy( szSelectFunction, 1, 0, "OnChange", 1, 0, 11 );
                                    //:ELSE
                                 }
                                 else
                                 {
                                    //:szSelectAction   = "onblur"
                                    ZeidonStringCopy( szSelectAction, 1, 0, "onblur", 1, 0, 11 );
                                    //:szSelectFunction = "OnBlur"
                                    ZeidonStringCopy( szSelectFunction, 1, 0, "OnBlur", 1, 0, 11 );
                                 }

                                 //:END
                                 //:ELSE
                              }
                              else
                              {
                                 //:szSelectAction = "onchange"
                                 ZeidonStringCopy( szSelectAction, 1, 0, "onchange", 1, 0, 11 );
                                 //:szSelectFunction = "OnChange"
                                 ZeidonStringCopy( szSelectFunction, 1, 0, "OnChange", 1, 0, 11 );
                              }

                              //:END


                              //:szWriteBuffer = "   " + szItemTableHeader + ">" // <td nowrap>
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );

                              //:IF szClass = ""
                              if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
                              {
                                 //:// szWriteBuffer = szWriteBuffer + "<select name=^" + szListCtrlTag + "::<%=strEntityKey%>^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ size=^1^" + szTitleHTML + " style=^width:152px;height:20px;^ " +
                                 //:szWriteBuffer = szWriteBuffer + "<select name=^" + szListCtrlTag + "::<%=strEntityKey%>^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ size=^1^" + szTitleHTML + " style=^width:" + szWidth + "px;^ " +
                                 //:                szDisabled + szSelectAction + "=^" +
                                 //:                szListCtrlTag + szSelectFunction + "( h" + szListCtrlTag + "::<%=strEntityKey%>," + szListCtrlTag + "::<%=strEntityKey%>, <%=strEntityKey%> )^>"
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "<select name=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ id=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ size=^1^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, " style=^width:", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szWidth, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "px;^ ", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szDisabled, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectAction, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectFunction, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "( h", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>,", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>, <%=strEntityKey%> )^>", 1, 0, 10001 );
                                 //:ELSE
                              }
                              else
                              {
                                 //:szWriteBuffer = szWriteBuffer + "<select class=^" + szClass + "^ name=^" + szListCtrlTag + "::<%=strEntityKey%>^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ size=^1^" + szTitleHTML +
                                 //:               " style=^width:" + szWidth + "px;^ " + szDisabled + szSelectAction + "=^" + szListCtrlTag + szSelectFunction + "( h" + szListCtrlTag + "::<%=strEntityKey%>," +
                                 //:               szListCtrlTag + "::<%=strEntityKey%>, <%=strEntityKey%> )^>"
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "<select class=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "^ name=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ id=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ size=^1^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, " style=^width:", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szWidth, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "px;^ ", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szDisabled, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectAction, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szSelectFunction, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "( h", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>,", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>, <%=strEntityKey%> )^>", 1, 0, 10001 );
                              }

                              //:END
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                              //:szWriteBuffer = "<%"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:IF vDialog.CtrlMapView EXISTS
                              lTempInteger_41 = CheckExistenceOfEntity( vDialog, "CtrlMapView" );
                              if ( lTempInteger_41 == 0 )
                              {
                                 //:szWriteBuffer = "   nRC = " + vList.CtrlMapView.Name +
                                 //:                ".GetView( strSessionId, ^" + vList.CtrlMapView.Name + "^, vAppSubtask );"
                                 GetVariableFromAttribute( szTempString_121, 0, 'S', 33, vList, "CtrlMapView", "Name", "", 0 );
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "   nRC = ", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_121, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
                                 GetVariableFromAttribute( szTempString_122, 0, 'S', 33, vList, "CtrlMapView", "Name", "", 0 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_122, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "   if ( nRC > 0 )"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( nRC > 0 )", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "   {"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "         strComboCurrentValue = ^^;"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "         strComboCurrentValue = ^^;", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "      zeidon.zView v" + szListCtrlTag + " = new zeidon.zView( strSessionId );"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "      zeidon.zView v", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, " = new zeidon.zView( strSessionId );", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                 //:// If mapping is specified, set up the value to be used in selecting
                                 //:// the correct entry.
                                 //:IF vDialog.CtrlMapLOD_Attribute EXISTS
                                 lTempInteger_42 = CheckExistenceOfEntity( vDialog, "CtrlMapLOD_Attribute" );
                                 if ( lTempInteger_42 == 0 )
                                 {
                                    //:IF vDialog.CtrlMapView.Name = szGridOrigViewName
                                    if ( CompareAttributeToString( vDialog, "CtrlMapView", "Name", szGridOrigViewName ) == 0 )
                                    {
                                       //:szWriteBuffer = "      nRC = 1;"
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = 1;", 1, 0, 10001 );
                                       //:szViewName = szGridView
                                       ZeidonStringCopy( szViewName, 1, 0, szGridView, 1, 0, 65 );
                                       //:ELSE
                                    }
                                    else
                                    {
                                       //:szWriteBuffer = "      nRC = " + vDialog.CtrlMapView.Name +
                                       //:                ".GetView( strSessionId, ^" + vDialog.CtrlMapView.Name +
                                       //:                "^, vAppSubtask );"
                                       GetVariableFromAttribute( szTempString_123, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_123, 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
                                       GetVariableFromAttribute( szTempString_124, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_124, 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
                                       //:szViewName = vDialog.CtrlMapView.Name
                                       GetVariableFromAttribute( szViewName, 0, 'S', 65, vDialog, "CtrlMapView", "Name", "", 0 );
                                    }

                                    //:END
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "      if ( nRC > 0 )"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC > 0 )", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "      {"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "         nRC = " + szViewName + ".CheckExistenceOfEntity( strSessionId, ^" +
                                    //:                vDialog.CtrlMapRelatedEntity.Name + "^ );"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC = ", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^", 1, 0, 10001 );
                                    GetVariableFromAttribute( szTempString_125, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_125, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "         if ( nRC >= 0 )"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( nRC >= 0 )", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:IF vDialog.CtrlMapContext EXISTS
                                    lTempInteger_43 = CheckExistenceOfEntity( vDialog, "CtrlMapContext" );
                                    if ( lTempInteger_43 == 0 )
                                    {
                                       //:szContextName = vDialog.CtrlMapContext.Name
                                       GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog, "CtrlMapContext", "Name", "", 0 );
                                       //:ELSE
                                    }
                                    else
                                    {
                                       //:szContextName = ""
                                       ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                                    }

                                    //:END

                                    //:IF vDialog.CtrlMapER_Domain.MaxStringLth > 254
                                    if ( CompareAttributeToInteger( vDialog, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
                                    {
                                       //:lMaxStringLength = vDialog.CtrlMapER_Domain.MaxStringLth
                                       GetIntegerFromAttribute( &lMaxStringLength, vDialog, "CtrlMapER_Domain", "MaxStringLth" );
                                       //:szMaxStringLength = lMaxStringLength
                                       ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
                                       //:ELSE
                                    }
                                    else
                                    {
                                       //:szMaxStringLength = "254"
                                       ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
                                    }

                                    //:END

                                    //:szWriteBuffer = "            strComboCurrentValue = " + szViewName + ".GetStringFromAttributeByContext( strSessionId, ^" +
                                    //:         vDialog.CtrlMapRelatedEntity.Name + "^, ^" +
                                    //:         vDialog.CtrlMapER_Attribute.Name + "^, ^" + szContextName + "^, " + szMaxStringLength + " );"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "            strComboCurrentValue = ", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szViewName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^", 1, 0, 10001 );
                                    GetVariableFromAttribute( szTempString_126, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_126, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    GetVariableFromAttribute( szTempString_127, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_127, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "      }"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                                    //:ELSE
                                 }
                                 else
                                 {
                                    //:szWriteBuffer = "      strComboCurrentValue = ^^;"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      strComboCurrentValue = ^^;", 1, 0, 10001 );
                                 }

                                 //:END
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                 //:// See if a list entity has been specified, and if so, use it.
                                 //:IF vEntity.CtrlMapLOD_Entity EXISTS
                                 lTempInteger_44 = CheckExistenceOfEntity( vEntity, "CtrlMapLOD_Entity" );
                                 if ( lTempInteger_44 == 0 )
                                 {
                                    //:szListEntityName = vEntity.CtrlMapLOD_Entity.Name
                                    GetVariableFromAttribute( szListEntityName, 0, 'S', 33, vEntity, "CtrlMapLOD_Entity", "Name", "", 0 );
                                    //:ELSE
                                 }
                                 else
                                 {
                                    //:szListEntityName = vList.CtrlMapRelatedEntity.Name
                                    GetVariableFromAttribute( szListEntityName, 0, 'S', 33, vList, "CtrlMapRelatedEntity", "Name", "", 0 );
                                 }

                                 //:END

                                 //:// See if a scoping entity has been specified, and if so, use it.
                                 //:lSubtype = vDialog.Control.Subtype
                                 GetIntegerFromAttribute( &lSubtype, vDialog, "Control", "Subtype" );
                                 //:lSubtype = IsFlagSequenceSet( lSubtype, zCOMBOBOX_SCOPE_OI )
                                 lSubtype = IsFlagSequenceSet( lSubtype, zCOMBOBOX_SCOPE_OI );
                                 //:IF lSubtype = 0
                                 if ( lSubtype == 0 )
                                 {
                                    //:IF vScope.CtrlMapLOD_Entity EXISTS
                                    lTempInteger_45 = CheckExistenceOfEntity( vScope, "CtrlMapLOD_Entity" );
                                    if ( lTempInteger_45 == 0 )
                                    {
                                       //:szScopingEntityName = vScope.CtrlMapLOD_Entity.Name
                                       GetVariableFromAttribute( szScopingEntityName, 0, 'S', 33, vScope, "CtrlMapLOD_Entity", "Name", "", 0 );
                                       //:ELSE
                                    }
                                    else
                                    {
                                       //:szScopingEntityName = ""
                                       ZeidonStringCopy( szScopingEntityName, 1, 0, "", 1, 0, 33 );
                                    }

                                    //:END
                                 }

                                 //:END

                                 //:szWriteBuffer = "      v" + szListCtrlTag + ".CreateViewFromView( strSessionId, " + vList.CtrlMapView.Name + " );"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "      v", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, ".CreateViewFromView( strSessionId, ", 1, 0, 10001 );
                                 GetVariableFromAttribute( szTempString_128, 0, 'S', 33, vList, "CtrlMapView", "Name", "", 0 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_128, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "      nComboCnt = 0;"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "      nComboCnt = 0;", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:   szWriteBuffer = "      strComboSelectedValue = ^0^;"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "      strComboSelectedValue = ^0^;", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                                 //:// Auto Include
                                 //:IF vDialog.Control.Subtype >= 20480 AND vDialog.Control.Subtype <= 21252   // IF Auto Include
                                 if ( CompareAttributeToInteger( vDialog, "Control", "Subtype", 20480 ) >= 0 && CompareAttributeToInteger( vDialog, "Control", "Subtype", 21252 ) <= 0 )
                                 {
                                    //:szWriteBuffer = ""
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "      // For Auto Include, process null entry."
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      // For Auto Include, process null entry.", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "      nComboCnt++;"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      nComboCnt++;", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "      if ( strComboCurrentValue == null )"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( strComboCurrentValue == null )", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "      {"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "%>"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "         <option selected=^selected^ value=^^></option>"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         <option selected=^selected^ value=^^></option>", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "<%"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "      }"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "      else"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      else", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "      {"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "%>"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "         <option value=^^></option>"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         <option value=^^></option>", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "<%"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                    //:szWriteBuffer = "      }"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                                 }

                                 //:END

                                 //:IF lSubtype = 0
                                 if ( lSubtype == 0 )
                                 {
                                    //:szWriteBuffer = "      nRC = v" + szListCtrlTag + ".SetCursorFirst( strSessionId, ^" +
                                    //:                             szListEntityName + "^, ^" + szScopingEntityName + "^ );"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = v", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorFirst( strSessionId, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szListEntityName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                                    //:ELSE
                                 }
                                 else
                                 {
                                    //:szWriteBuffer = "      nRC = v" + szListCtrlTag + ".SetCursorScopeOI( strSessionId, ^" + szListEntityName + "^, 1 ); // first" // zPOS_FIRST
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = v", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorScopeOI( strSessionId, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szListEntityName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, 1 ); // first", 1, 0, 10001 );
                                 }

                                 //:END

                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "      while ( nRC >= 0 )"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "      while ( nRC >= 0 )", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "      {"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:IF vList.CtrlMapLOD_Attribute EXISTS
                                 lTempInteger_46 = CheckExistenceOfEntity( vList, "CtrlMapLOD_Attribute" );
                                 if ( lTempInteger_46 == 0 )
                                 {
                                    //:IF vList.CtrlMapContext EXISTS
                                    lTempInteger_47 = CheckExistenceOfEntity( vList, "CtrlMapContext" );
                                    if ( lTempInteger_47 == 0 )
                                    {
                                       //:szContextName = vList.CtrlMapContext.Name
                                       GetVariableFromAttribute( szContextName, 0, 'S', 33, vList, "CtrlMapContext", "Name", "", 0 );
                                       //:ELSE
                                    }
                                    else
                                    {
                                       //:szContextName = ""
                                       ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
                                    }

                                    //:END


                                    //:IF vList.CtrlMapER_Domain.MaxStringLth > 254
                                    if ( CompareAttributeToInteger( vList, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
                                    {
                                       //:lMaxStringLength = vList.CtrlMapER_Domain.MaxStringLth
                                       GetIntegerFromAttribute( &lMaxStringLength, vList, "CtrlMapER_Domain", "MaxStringLth" );
                                       //:szMaxStringLength = lMaxStringLength
                                       ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
                                       //:ELSE
                                    }
                                    else
                                    {
                                       //:szMaxStringLength = "254"
                                       ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
                                    }

                                    //:END

                                    //:szWriteBuffer = "         strErrorMapValue = v" + szListCtrlTag +
                                    //:                ".GetStringFromAttributeByContext( strSessionId, ^" +
                                    //:                vList.CtrlMapRelatedEntity.Name + "^, ^" +
                                    //:                vList.CtrlMapER_Attribute.Name + "^, ^" +
                                    //:                szContextName + "^, " + szMaxStringLength + " );"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         strErrorMapValue = v", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^", 1, 0, 10001 );
                                    GetVariableFromAttribute( szTempString_129, 0, 'S', 33, vList, "CtrlMapRelatedEntity", "Name", "", 0 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_129, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    GetVariableFromAttribute( szTempString_130, 0, 'S', 33, vList, "CtrlMapER_Attribute", "Name", "", 0 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_130, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
                                    //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                    WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 }

                                 //:END

                                 //:szWriteBuffer = "         if ( strComboCurrentValue.equals( strErrorMapValue ) )"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( strComboCurrentValue.equals( strErrorMapValue ) )", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "         {"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "%>"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "            <option selected=^selected^ value=^<%=strErrorMapValue%>^><%=strErrorMapValue%></option>"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "            <option selected=^selected^ value=^<%=strErrorMapValue%>^><%=strErrorMapValue%></option>", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "<%"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:   szWriteBuffer = "            strComboSelectedValue = Integer.toString( nComboCnt );"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "            strComboSelectedValue = Integer.toString( nComboCnt );", 1, 0, 10001 );
                                 //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:   szWriteBuffer = "         }"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                                 //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:   szWriteBuffer = "         else"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "         else", 1, 0, 10001 );
                                 //:   WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:   szWriteBuffer = "         {"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "         {", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "%>"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "            <option value=^<%=strErrorMapValue%>^><%=strErrorMapValue%></option>"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "            <option value=^<%=strErrorMapValue%>^><%=strErrorMapValue%></option>", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "<%"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:szWriteBuffer = "         }"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                                 //:szWriteBuffer = "         nComboCnt++;"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "         nComboCnt++;", 1, 0, 10001 );
                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:IF lSubtype = 0
                                 if ( lSubtype == 0 )
                                 {
                                    //:szWriteBuffer = "         nRC =  v" + szListCtrlTag +
                                    //:                ".SetCursorNext( strSessionId, ^" + szListEntityName +
                                    //:                "^, ^" + szScopingEntityName + "^ );"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC =  v", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorNext( strSessionId, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szListEntityName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                                    //:ELSE
                                 }
                                 else
                                 {
                                    //:szWriteBuffer = "         nRC =  v" + szListCtrlTag +
                                    //:                ".SetCursorScopeOI( strSessionId, ^" + szListEntityName + "^, 3 ); // next" // zPOS_NEXT
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC =  v", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorScopeOI( strSessionId, ^", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szListEntityName, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "^, 3 ); // next", 1, 0, 10001 );
                                 }

                                 //:END

                                 //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                                 WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                                 //:DropView( vList )
                                 DropView( vList );
                                 //:DropView( vEntity )
                                 DropView( vEntity );
                                 //:DropView( vScope )
                                 DropView( vScope );
                              }

                              //:END

                              //:szWriteBuffer = "      }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                              //:szWriteBuffer = "      v" + szListCtrlTag + ".DropView( strSessionId );"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "      v", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ".DropView( strSessionId );", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

                              //:szWriteBuffer = "   }"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "%>"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:szWriteBuffer = "   </select>"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "   </select>", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                              //:szWriteBuffer = "<input name=^h" + szListCtrlTag + "::<%=strEntityKey%>^ id=^h" + szListCtrlTag + "::<%=strEntityKey%>^ type=^hidden^ value=^<%=strComboSelectedValue%>^ >"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "<input name=^h", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ id=^h", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ type=^hidden^ value=^<%=strComboSelectedValue%>^ >", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                           }


                           //:END  //IF vDialog.Control.Subtype < 12000 (domain combobox)
                           //:szWriteBuffer = "   </td>"
                           ZeidonStringCopy( szWriteBuffer, 1, 0, "   </td>", 1, 0, 10001 );

                           //:ELSE
                        }
                        else
                        {
                           //:IF szCtrlCtrlType = "Calendar"
                           if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "Calendar", 1, 0, 51 ) == 0 )
                           {
                              //:szWriteBuffer = "   " + szItemTableHeader + ">"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );
                              //://KJS 7/26/07 - Added DISABLED option.
                              //:szWriteBuffer = szWriteBuffer + "<input name=^" + szListCtrlTag + "::<%=strEntityKey%>^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ "
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "<input name=^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ id=^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ ", 1, 0, 10001 );
                              //:szWriteBuffer = szWriteBuffer + "style=^width:80px^ type=^text^" + szDisabled + " value=^<%=str" + szListCtrlTag + "%>^ />"
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "style=^width:80px^ type=^text^", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szDisabled, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, " value=^<%=str", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "%>^ />", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "              <img src=^images/scw.gif^ title=^Select Date^ alt=^Select Date^ " + szDisabled + " "
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "              <img src=^images/scw.gif^ title=^Select Date^ alt=^Select Date^ ", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szDisabled, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, " ", 1, 0, 10001 );
                              //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                              WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                              //:szWriteBuffer = "              onclick=^scwShow( document.getElementById( '" + szListCtrlTag + "::<%=strEntityKey%>' ), this );^ /></td>"
                              ZeidonStringCopy( szWriteBuffer, 1, 0, "              onclick=^scwShow( document.getElementById( '", 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                              ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>' ), this );^ /></td>", 1, 0, 10001 );
                              //:ELSE
                           }
                           else
                           {
                              //:IF vDialog.Control.WebCtrlType = "Edit" OR szWCP_Edit = "Y"
                              if ( CompareAttributeToString( vDialog, "Control", "WebCtrlType", "Edit" ) == 0 || ZeidonStringCompare( szWCP_Edit, 1, 0, "Y", 1, 0, 2 ) == 0 )
                              {
                                 //:X_Size = vDialog.Control.SZDLG_X
                                 GetIntegerFromAttribute( &X_Size, vDialog, "Control", "SZDLG_X" );
                                 //:Size = X_Size / 3
                                 Size = X_Size / 3;
                                 //:zIntegerToString( szSize, 10, Size )
                                 zIntegerToString( szSize, 10, Size );
                                 //://KJS 7/26/07 - Added DISABLED option.
                                 //://KJS 10/19/07 - Added title
                                 //:szWriteBuffer = "   " + szItemTableHeader + "><input size=^" + szSize + "^ value=^<%=str" + szListCtrlTag + "%>^<%=str" + szListCtrlTag +
                                 //:                 "ErrorColor%> name=^" + szListCtrlTag + "::<%=strEntityKey%>^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ " + szTitleHTML + szDisabled + "></td>"
                                 ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "><input size=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szSize, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "^ value=^<%=str", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "%>^<%=str", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "ErrorColor%> name=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ id=^", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ ", 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, szDisabled, 1, 0, 10001 );
                                 ZeidonStringConcat( szWriteBuffer, 1, 0, "></td>", 1, 0, 10001 );
                                 //:ELSE
                              }
                              else
                              {
                                 //:IF vDialog.Control.WebCtrlType = "Multiline" OR szWCP_Multiline = "Y"
                                 if ( CompareAttributeToString( vDialog, "Control", "WebCtrlType", "Multiline" ) == 0 || ZeidonStringCompare( szWCP_Multiline, 1, 0, "Y", 1, 0, 2 ) == 0 )
                                 {
                                    //:// KJS 09/26/2008 - Taking out the <pre> because it makes the grid too large (can't do a "WRAP" on the
                                    //:// <td>.  I don't think in a grid that we would want that.
                                    //:szWriteBuffer = "   " + szItemTableHeader + "><%=str" + szListCtrlTag + "%></td>"
                                    ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "><%=str", 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                    ZeidonStringConcat( szWriteBuffer, 1, 0, "%></td>", 1, 0, 10001 );
                                    //:// szWriteBuffer = "   " + szItemTableHeader + "><pre><%=str" + szListCtrlTag + "%></pre></td>"
                                    //:ELSE
                                 }
                                 else
                                 {
                                    //:IF vDialog.Control.WebCtrlType = "EmailAddress" OR szWCP_EmailAddress = "Y"
                                    if ( CompareAttributeToString( vDialog, "Control", "WebCtrlType", "EmailAddress" ) == 0 || ZeidonStringCompare( szWCP_EmailAddress, 1, 0, "Y", 1, 0, 2 ) == 0 )
                                    {
                                       //:szWriteBuffer = "   " + szItemTableHeader + " class=^Email^><%=str" + szListCtrlTag + "%></td>"
                                       ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, " class=^Email^><%=str", 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                       ZeidonStringConcat( szWriteBuffer, 1, 0, "%></td>", 1, 0, 10001 );
                                       //:ELSE
                                    }
                                    else
                                    {
                                       //://KJS 11/18/2007 - Adding Bitmap as a grid control
                                       //:IF szCtrlCtrlType = "Bitmap"
                                       if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "Bitmap", 1, 0, 51 ) == 0 )
                                       {

                                          //:szText = ""
                                          ZeidonStringCopy( szText, 1, 0, "", 1, 0, 257 );
                                          //:IF vDialog.Control.Text != ""
                                          if ( CompareAttributeToString( vDialog, "Control", "Text", "" ) != 0 )
                                          {
                                             //:szText = " alt=^" + vDialog.Control.Text + "^ "
                                             GetVariableFromAttribute( szTempString_131, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                                             ZeidonStringCopy( szText, 1, 0, " alt=^", 1, 0, 257 );
                                             ZeidonStringConcat( szText, 1, 0, szTempString_131, 1, 0, 257 );
                                             ZeidonStringConcat( szText, 1, 0, "^ ", 1, 0, 257 );
                                          }

                                          //:END
                                          //:IF vDialog.EventAct EXISTS
                                          lTempInteger_48 = CheckExistenceOfEntity( vDialog, "EventAct" );
                                          if ( lTempInteger_48 == 0 )
                                          {
                                             //:szWriteBuffer = "   " + szItemTableHeader + "><a href=^#^ name=^" + szListCtrlTag + "^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ ^onclick=^" +
                                             //: vDialog.EventAct.Tag + "( this.id )^><img src=^" + vDialog.Control.WebFileName + "^ " + szTitleHTML + szText + "></a></td>"
                                             ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "><a href=^#^ name=^", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ ^onclick=^", 1, 0, 10001 );
                                             GetVariableFromAttribute( szTempString_132, 0, 'S', 33, vDialog, "EventAct", "Tag", "", 0 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_132, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "( this.id )^><img src=^", 1, 0, 10001 );
                                             GetVariableFromAttribute( szTempString_133, 0, 'S', 261, vDialog, "Control", "WebFileName", "", 0 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_133, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szText, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "></a></td>", 1, 0, 10001 );
                                             //:ELSE
                                          }
                                          else
                                          {
                                             //:szWriteBuffer = "   " + szItemTableHeader + "><a href=^#^ name=^" + szListCtrlTag + "^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ ><img src=^" +
                                             //: vDialog.Control.WebFileName + "^ " + szTitleHTML + szText + "></a></td>"
                                             ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "><a href=^#^ name=^", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ ><img src=^", 1, 0, 10001 );
                                             GetVariableFromAttribute( szTempString_134, 0, 'S', 261, vDialog, "Control", "WebFileName", "", 0 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_134, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, szText, 1, 0, 10001 );
                                             ZeidonStringConcat( szWriteBuffer, 1, 0, "></a></td>", 1, 0, 10001 );
                                          }

                                          //:END
                                          //:ELSE
                                       }
                                       else
                                       {
                                          //://DKS 02/01/2008 - Adding BitmapBtn as a grid control
                                          //:IF szCtrlCtrlType = "BitmapBtn"
                                          if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "BitmapBtn", 1, 0, 51 ) == 0 )
                                          {

                                             //:IF vDialog.Control.Text != ""
                                             if ( CompareAttributeToString( vDialog, "Control", "Text", "" ) != 0 )
                                             {
                                                //:szText = "alt=^" + vDialog.Control.Text + "^"
                                                GetVariableFromAttribute( szTempString_135, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                                                ZeidonStringCopy( szText, 1, 0, "alt=^", 1, 0, 257 );
                                                ZeidonStringConcat( szText, 1, 0, szTempString_135, 1, 0, 257 );
                                                ZeidonStringConcat( szText, 1, 0, "^", 1, 0, 257 );
                                                //:ELSE
                                             }
                                             else
                                             {
                                                //:szText = ""
                                                ZeidonStringCopy( szText, 1, 0, "", 1, 0, 257 );
                                             }

                                             //:END

                                             //:IF vDialog.EventAct EXISTS
                                             lTempInteger_49 = CheckExistenceOfEntity( vDialog, "EventAct" );
                                             if ( lTempInteger_49 == 0 )
                                             {
                                                //:szWriteBuffer = "   " + szItemTableHeader + "><a href=^#^ name=^" + szListCtrlTag + "^ onclick=^" + vDialog.EventAct.Tag +
                                                //: "( this.id )^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^><img src=^" + vDialog.Control.WebFileName + "^ " + szTitleHTML + szText + " /></a></td>"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "><a href=^#^ name=^", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "^ onclick=^", 1, 0, 10001 );
                                                GetVariableFromAttribute( szTempString_136, 0, 'S', 33, vDialog, "EventAct", "Tag", "", 0 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_136, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "( this.id )^ id=^", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^><img src=^", 1, 0, 10001 );
                                                GetVariableFromAttribute( szTempString_137, 0, 'S', 261, vDialog, "Control", "WebFileName", "", 0 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_137, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szText, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, " /></a></td>", 1, 0, 10001 );
                                                //:ELSE
                                             }
                                             else
                                             {
                                                //:szWriteBuffer = "   " + szItemTableHeader + "><a href=^#^  name=^" + szListCtrlTag +
                                                //: "^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^ ><img src=^" + vDialog.Control.WebFileName + "^ " + szTitleHTML + szText + " /></a></td>"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "><a href=^#^  name=^", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^ ><img src=^", 1, 0, 10001 );
                                                GetVariableFromAttribute( szTempString_138, 0, 'S', 261, vDialog, "Control", "WebFileName", "", 0 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_138, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szText, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, " /></a></td>", 1, 0, 10001 );
                                             }

                                             //:END

                                             //:ELSE
                                          }
                                          else
                                          {
                                             //:IF szCtrlCtrlType = "GridCheckCtl" OR szCtrlCtrlType = "CheckBox"
                                             if ( ZeidonStringCompare( szCtrlCtrlType, 1, 0, "GridCheckCtl", 1, 0, 51 ) == 0 || ZeidonStringCompare( szCtrlCtrlType, 1, 0, "CheckBox", 1, 0, 51 ) == 0 )
                                             {
                                                //:// KJS 11/16/10 - I needed to add this because if I copy a CheckBox into a grid that
                                                //:// has an EventAct (action) then previously it was creating an <a href.  GridCheckCtl
                                                //:// does not have EventActs but normal Checkboxes do..
                                                //:szWriteBuffer = "   " + szItemTableHeader + "><%=str" + szListCtrlTag + "%></td>"
                                                ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "><%=str", 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                                ZeidonStringConcat( szWriteBuffer, 1, 0, "%></td>", 1, 0, 10001 );
                                                //:ELSE
                                             }
                                             else
                                             {
                                                //:IF vDialog.EventAct EXISTS
                                                lTempInteger_50 = CheckExistenceOfEntity( vDialog, "EventAct" );
                                                if ( lTempInteger_50 == 0 )
                                                {
                                                   //:// Right now the only EventAct on a regular grid subcontrol is HotText (now there is Bitmap and BitmapBtn)
                                                   //:// Process HotText Action the same as for the Text Control.
                                                   //:// KJS 11/16/10 - A normal checkbox copied into a grid can have an EventAct.
                                                   //://KJS 10/19/07 - added title
                                                   //:IF vDialog.EventAct.Type = 45    // Type 45 is Hyperlink Action.
                                                   if ( CompareAttributeToInteger( vDialog, "EventAct", "Type", 45 ) == 0 )
                                                   {
                                                      //:// For a Hyperlink in a Grid, we assume there is ALWAYS both "Displayed Text" mapping and
                                                      //:// "Hyperlink URL" mapping, which have been set above.
                                                      //:szWriteBuffer = "   " + szItemTableHeader + "><a href=^<%=str" + szListCtrlTag + "_URL%>^ " + szTitleHTML + "><%=str" + szListCtrlTag + "%></a></td>"
                                                      ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, "><a href=^<%=str", 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, "_URL%>^ ", 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, "><%=str", 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, "%></a></td>", 1, 0, 10001 );
                                                      //:ELSE
                                                   }
                                                   else
                                                   {
                                                      //:// This is HotText mapping to an Action.
                                                      //:szWriteBuffer = "   " + szItemTableHeader + "><a href=^#^ onclick=^" + vDialog.EventAct.Tag + "( this.id )^ id=^" + szListCtrlTag + "::<%=strEntityKey%>^" + szTitleHTML + "><%=str" + szListCtrlTag + "%></a></td>"
                                                      ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, "><a href=^#^ onclick=^", 1, 0, 10001 );
                                                      GetVariableFromAttribute( szTempString_139, 0, 'S', 33, vDialog, "EventAct", "Tag", "", 0 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_139, 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, "( this.id )^ id=^", 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, "::<%=strEntityKey%>^", 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, "><%=str", 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                                      ZeidonStringConcat( szWriteBuffer, 1, 0, "%></a></td>", 1, 0, 10001 );
                                                   }

                                                   //:END
                                                   //:ELSE
                                                }
                                                else
                                                {
                                                   //:// Regular default Grid subcontrol.
                                                   //:szWriteBuffer = "   " + szItemTableHeader + "><%=str" + szListCtrlTag + "%></td>"
                                                   ZeidonStringCopy( szWriteBuffer, 1, 0, "   ", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szItemTableHeader, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "><%=str", 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, szListCtrlTag, 1, 0, 10001 );
                                                   ZeidonStringConcat( szWriteBuffer, 1, 0, "%></td>", 1, 0, 10001 );
                                                }

                                                //:END
                                             }

                                             //:END // szCtrlCtrlType = "GridCheckCtl" OR szCtrlCtrlType = "CheckBox"
                                          }

                                          //:END // szCtrlCtrlType = "BitmapBtn"
                                       }

                                       //:END // szCtrlCtrlType = "Bitmap"
                                    }

                                    //:END // WebCtrlType = "EmailAddress"
                                 }

                                 //:END // WebCtrlType = "Multiline"
                              }

                              //:END // WebCtrlType = "Edit"
                           }

                           //:END // szCtrlCtrlType = "Calendar"
                        }

                        //:END // szCtrlCtrlType = "ComboBox"
                        //://END
                        //:DropView( vDialog2 )
                        DropView( vDialog2 );
                     }

                     //:END // End ELSE of PushButton
                  }

                  //:END // End ELSE of checking if this is a hidden field
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

                  //:IF bResetToPlaceHolder = 1
                  if ( bResetToPlaceHolder == 1 )
                  {
                     //:ResetViewFromSubobject( vDialog )  // vDialog positioned on sub-controls
                     ResetViewFromSubobject( vDialog );
                  }

                  RESULT = SetCursorNextEntity( vDialog, "Control", "" );
                  //:END
               }

               //:END  // Loop to create table columns.

               //:IF szTableExport = "Y"
               if ( ZeidonStringCompare( szTableExport, 1, 0, "Y", 1, 0, 2 ) == 0 )
               {
                  //:// We need to add a carriage return and line feed to strTblOutput
                  //:szWriteBuffer = "   <%"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "   <%", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "   strTblOutput = strTblOutput + ^\r\n^;"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "   strTblOutput = strTblOutput + ^\\r\\n^;", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "   %>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "   %>", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               }

               //:END

               //:ResetViewFromSubobject( vDialog )  // vDialog positioned on Grid
               ResetViewFromSubobject( vDialog );

               //:// If the last entry was a variable text, create the "<%" statement.
               //:IF szWriteBuffer = "   }"
               if ( ZeidonStringCompare( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 ) == 0 )
               {
                  //:szWriteBuffer = "%>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer = ""
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               }

               //:END

               //:szWriteBuffer = "</tr>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</tr>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               //:szWriteBuffer = "<%"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //://If on this table we are filtering rows, we need to add the closing bracket for the "if ( strFilter.length == 0 ) statement
               //:IF  szFilterTable = "Y"
               if ( ZeidonStringCompare( szFilterTable, 1, 0, "Y", 1, 0, 2 ) == 0 )
               {

                  //:szWriteBuffer = "         }"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         }", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               }

               //:END

               //:IF lSubtypeX = 0
               if ( lSubtypeX == 0 )
               {
                  //:szWriteBuffer = "         nRC2 = " + szGridView +
                  //:                ".SetCursorNext( strSessionId, ^" + vDialog.CtrlMapLOD_Entity.Name +
                  //:                "^, ^" + szScopingEntityName + "^ );"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC2 = ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorNext( strSessionId, ^", 1, 0, 10001 );
                  GetVariableFromAttribute( szTempString_140, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_140, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szScopingEntityName, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer = "         nRC2 = " + szGridView +
                  //:                ".SetCursorScopeOI( strSessionId, ^" + vDialog.CtrlMapLOD_Entity.Name + "^,  3 ); // next" // zPOS_NEXT
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         nRC2 = ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ".SetCursorScopeOI( strSessionId, ^", 1, 0, 10001 );
                  GetVariableFromAttribute( szTempString_141, 0, 'S', 33, vDialog, "CtrlMapLOD_Entity", "Name", "", 0 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_141, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^,  3 ); // next", 1, 0, 10001 );
               }

               //:END

               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      nRC2 = " + szGridView + ".DropView( strSessionId );"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC2 = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szGridView, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".DropView( strSessionId );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            }

            //:END

            //:szWriteBuffer = "%>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "</tbody>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</tbody>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
            //:szWriteBuffer = "</table>"
            ZeidonStringCopy( szWriteBuffer, 1, 0, "</table>", 1, 0, 10001 );
            //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
            WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

            //:// Put ending div for the scrollable table with stationary headings
            //:IF  szScrollingTable = "Y"
            if ( ZeidonStringCompare( szScrollingTable, 1, 0, "Y", 1, 0, 2 ) == 0 )
            {
               //:szWriteBuffer = "</div>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            }

            //:END

            //:IF szTableExport = "Y"
            if ( ZeidonStringCompare( szTableExport, 1, 0, "Y", 1, 0, 2 ) == 0 )
            {
               //:// KJS 09/29/10 - Hidden text area that will hold table values as output.  I have two of these because I am assuming the
               //:// user would want to see the output in a text area above the table but because we build the output string as we
               //:// build the table, then we need to store this value after the table.  We will copy the values from this table
               //:// to the text area created above.  Or could I simply build javascript code here that would copy strTblOutput to
               //:// the correct textarea?
               //:szWriteBuffer = "<textarea name=^h" + szCtrlTag + "^ id=^h" + szCtrlTag + "^ style=^display:none;^ ><%=strTblOutput%></textarea> <!-- textarea for table values output  -->"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<textarea name=^h", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^h", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ style=^display:none;^ ><%=strTblOutput%></textarea> <!-- textarea for table values output  -->", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );

               //:szWriteBuffer = "<script type=^text/javascript^>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<script type=^text/javascript^>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "document.getElementById(^o"+ szCtrlTag + "^).value = document.getElementById(^h"+ szCtrlTag + "^).value;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "document.getElementById(^o", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^).value = document.getElementById(^h", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^).value;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "</script>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</script>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            }

            //:END

            //:// If the user has entered a WebGridNoDataMessage for this grid, then create
            //:// code to check if there was no data and if so, display this message to the
            //:// user in a <span>.
            //:// I believe I would need to know if there is a spacer in front of the grid, if
            //:// so, then I would assume I would put that spacer in front of this message
            //:// as well.
            //:// What if I put this message as part of the table?  Do a colspan and then
            //:// put this message in?  But then I wouldn't have the class.
            //:IF vDialog.Control.WebNoGridDataMessage != ""
            if ( CompareAttributeToString( vDialog, "Control", "WebNoGridDataMessage", "" ) != 0 )
            {

               //:szWriteBuffer = "      <%"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      <%", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      if ( iTableRowCnt == 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( iTableRowCnt == 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      {", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      %>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      %>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:IF vDialog.Control.WebNoGridDataMsgClass = ""
               if ( CompareAttributeToString( vDialog, "Control", "WebNoGridDataMsgClass", "" ) == 0 )
               {
                  //:szWriteBuffer = "<span style=^^>" + vDialog.Control.WebNoGridDataMessage + "</span>"
                  GetVariableFromAttribute( szTempString_142, 0, 'S', 255, vDialog, "Control", "WebNoGridDataMessage", "", 0 );
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<span style=^^>", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_142, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "</span>", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:ELSE
               }
               else
               {
                  //:szWriteBuffer = "<span class=^" + vDialog.Control.WebNoGridDataMsgClass + "^ style=^^>" +
                  //:                 vDialog.Control.WebNoGridDataMessage + "</span>"
                  GetVariableFromAttribute( szTempString_143, 0, 'S', 255, vDialog, "Control", "WebNoGridDataMsgClass", "", 0 );
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<span class=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_143, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ style=^^>", 1, 0, 10001 );
                  GetVariableFromAttribute( szTempString_144, 0, 'S', 255, vDialog, "Control", "WebNoGridDataMessage", "", 0 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_144, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "</span>", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               }

               //:END

               //:szWriteBuffer = "      <%"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      <%", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      }", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      %>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      %>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:// KJS 05/06/09 - I am putting a div with style float:left around the tables so that if there
               //:// is a message to display if the table has no data, then this message will line up with the
               //:// table.  Not sure if placing this div will affect how the tables are painted but I hope not.
               //:szWriteBuffer = "</div>  <!-- End of div around table -->"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  <!-- End of div around table -->", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            }

            //:END
         }


         //:END  // IF szControlType = "Grid"

         //://********************** END OF GRID ***********************************

         //:IF szControlType = "MLEdit"  // MLEDIT
         if ( ZeidonStringCompare( szControlType, 1, 0, "MLEdit", 1, 0, 51 ) == 0 )
         {
            //:SET CURSOR FIRST vDialog.CtrlMapLOD_Attribute WITHIN vDialog.Control
            RESULT = SetCursorFirstEntity( vDialog, "CtrlMapLOD_Attribute", "Control" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:szWriteBuffer = "<%"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "<%", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   // " + szControlType + ": " + szCtrlTag
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   // ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szControlType, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ": ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   strErrorMapValue = ^^;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   strErrorMapValue = ^^;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   nRC = " + vDialog.CtrlMapView.Name + ".GetView( strSessionId, ^" +
               //:                vDialog.CtrlMapView.Name + "^, vAppSubtask );"
               GetVariableFromAttribute( szTempString_145, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_145, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetView( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_146, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_146, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, vAppSubtask );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   if ( nRC <= 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   if ( nRC <= 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      " + vDialog.CtrlMapView.Name + ".TraceLine( ^Invalid View: ^, ^" + szCtrlTag + "^ );"
               GetVariableFromAttribute( szTempString_147, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_147, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".TraceLine( ^Invalid View: ^, ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   else"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   else", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   {"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   {", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      nRC = " + vDialog.CtrlMapView.Name +
               //:                ".CheckExistenceOfEntity( strSessionId, ^" + vDialog.CtrlMapRelatedEntity.Name + "^ );"
               GetVariableFromAttribute( szTempString_148, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      nRC = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_148, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".CheckExistenceOfEntity( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_149, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_149, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^ );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "      if ( nRC >= 0 )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( nRC >= 0 )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:szContextName = ""
               ZeidonStringCopy( szContextName, 1, 0, "", 1, 0, 33 );
               //:IF vDialog.CtrlMapContext EXISTS
               lTempInteger_51 = CheckExistenceOfEntity( vDialog, "CtrlMapContext" );
               if ( lTempInteger_51 == 0 )
               {
                  //:szContextName = vDialog.CtrlMapContext.Name
                  GetVariableFromAttribute( szContextName, 0, 'S', 33, vDialog, "CtrlMapContext", "Name", "", 0 );
               }

               //:END

               //:IF vDialog.CtrlMapER_Domain.MaxStringLth > 254
               if ( CompareAttributeToInteger( vDialog, "CtrlMapER_Domain", "MaxStringLth", 254 ) > 0 )
               {
                  //:lMaxStringLength = vDialog.CtrlMapER_Domain.MaxStringLth
                  GetIntegerFromAttribute( &lMaxStringLength, vDialog, "CtrlMapER_Domain", "MaxStringLth" );
                  //:szMaxStringLength = lMaxStringLength
                  ZeidonStringConvertFromNumber( szMaxStringLength, 1, 0, 10, lMaxStringLength, (ZDecimal) 0.0, "I" );
                  //:ELSE
               }
               else
               {
                  //:szMaxStringLength = "254"
                  ZeidonStringCopy( szMaxStringLength, 1, 0, "254", 1, 0, 11 );
               }

               //:END

               //:szWriteBuffer = "         strErrorMapValue = " +
               //:                vDialog.CtrlMapView.Name + ".GetStringFromAttributeByContext( strSessionId, ^" +
               //:                vDialog.CtrlMapRelatedEntity.Name + "^, ^" +
               //:                vDialog.CtrlMapER_Attribute.Name + "^, ^" +
               //:                szContextName + "^, " + szMaxStringLength + " );"
               GetVariableFromAttribute( szTempString_150, 0, 'S', 33, vDialog, "CtrlMapView", "Name", "", 0 );
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         strErrorMapValue = ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_150, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, ".GetStringFromAttributeByContext( strSessionId, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_151, 0, 'S', 33, vDialog, "CtrlMapRelatedEntity", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_151, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
               GetVariableFromAttribute( szTempString_152, 0, 'S', 33, vDialog, "CtrlMapER_Attribute", "Name", "", 0 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_152, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ^", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szContextName, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, "^, ", 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, szMaxStringLength, 1, 0, 10001 );
               ZeidonStringConcat( szWriteBuffer, 1, 0, " );", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:// KJS 02/15/11 - Thinking I need to add code to change values returned as null to "".
               //:szWriteBuffer = "         if ( strErrorMapValue == null )"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "         if ( strErrorMapValue == null )", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "            strErrorMapValue = ^^;"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "            strErrorMapValue = ^^;", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
               //:szWriteBuffer = "   }"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "   }", 1, 0, 10001 );

               //:lStyleX = vDialog.Control.ExtendedStyle
               GetIntegerFromAttribute( &lStyleX, vDialog, "Control", "ExtendedStyle" );
               //:lTemp = IsFlagSequenceSet( lStyleX, zCONTROLX_PREFILL )
               lTemp = IsFlagSequenceSet( lStyleX, zCONTROLX_PREFILL );
               //:IF lTemp != 0
               if ( lTemp != 0 )
               {
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
                  //:szWriteBuffer = "      if ( strErrorMapValue.length( ) == 0 )"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "      if ( strErrorMapValue.length( ) == 0 )", 1, 0, 10001 );
                  //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
                  WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );
                  //:szWriteBuffer = "         strErrorMapValue = ^" + vDialog.Control.Text + "^;"
                  GetVariableFromAttribute( szTempString_153, 0, 'S', 255, vDialog, "Control", "Text", "", 0 );
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "         strErrorMapValue = ^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTempString_153, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^;", 1, 0, 10001 );
               }

               //:END

               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 0 );

               //:szWriteBuffer = "%>"
               ZeidonStringCopy( szWriteBuffer, 1, 0, "%>", 1, 0, 10001 );
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
               //:X_Size = vDialog.Control.SZDLG_X
               GetIntegerFromAttribute( &X_Size, vDialog, "Control", "SZDLG_X" );
               //:Size = X_Size / 4
               Size = X_Size / 4;
               //:zIntegerToString( szSize, 10, Size )
               zIntegerToString( szSize, 10, Size );
               //:Y_Size = vDialog.Control.SZDLG_Y
               GetIntegerFromAttribute( &Y_Size, vDialog, "Control", "SZDLG_Y" );
               //:Size = Y_Size / 12
               Size = Y_Size / 12;
               //:zIntegerToString( szHeight, 10, Size )
               zIntegerToString( szHeight, 10, Size );

               //:IF vDialog.Control.VisibleBorder = "Y"
               if ( CompareAttributeToString( vDialog, "Control", "VisibleBorder", "Y" ) == 0 )
               {
                  //:zAppendQuotedString( szAbsoluteStyle, "border:'4px solid';border-style:'groove';", "style=", "^" )
                  zAppendQuotedString( szAbsoluteStyle, "border:'4px solid';border-style:'groove';", "style=", "^" );
                  //:ELSE
               }
               else
               {
                  //:zAppendQuotedString( szAbsoluteStyle, "border:'2px solid';border-style:'groove';", "style=", "^" )
                  zAppendQuotedString( szAbsoluteStyle, "border:'2px solid';border-style:'groove';", "style=", "^" );
               }

               //:END

               //:SET CURSOR FIRST vDialog.WebControlProperty WHERE vDialog.WebControlProperty.Name = "wysiwyg TinyMCE"
               RESULT = SetCursorFirstEntityByString( vDialog, "WebControlProperty", "Name", "wysiwyg TinyMCE", "" );
               //:IF RESULT >= zCURSOR_SET
               if ( RESULT >= zCURSOR_SET )
               {
                  //:szTinyMCEFlag = "Y"
                  ZeidonStringCopy( szTinyMCEFlag, 1, 0, "Y", 1, 0, 2 );
               }

               //:END

               //:IF vDialog.Control.WebCtrlType = "wysiwygEditor" OR szTinyMCEFlag = "Y"
               if ( CompareAttributeToString( vDialog, "Control", "WebCtrlType", "wysiwygEditor" ) == 0 || ZeidonStringCompare( szTinyMCEFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
               {

                  //:szClass = vDialog.Control.CSS_Class
                  GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
                  //:IF szClass = ""
                  if ( ZeidonStringCompare( szClass, 1, 0, "", 1, 0, 257 ) == 0 )
                  {
                     //:szClass = "mceSimple"  // "mceSimple" is TinyMCE default
                     ZeidonStringCopy( szClass, 1, 0, "mceSimple", 1, 0, 257 );
                  }

                  //:END

                  //:szWriteBuffer = "<textarea name=^" + szCtrlTag + "^ id=^" + szCtrlTag +
                  //:                "^ class=^" + szClass + "^ " + szTitleHTML +
                  //:                szAbsoluteStyle + ">" +
                  //:                "<%=strErrorMapValue%></textarea>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<textarea name=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ class=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, ">", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "<%=strErrorMapValue%></textarea>", 1, 0, 10001 );

                  //:ELSE
               }
               else
               {
                  //:szClass = ""
                  ZeidonStringCopy( szClass, 1, 0, "", 1, 0, 257 );
                  //:szClass = vDialog.Control.CSS_Class
                  GetVariableFromAttribute( szClass, 0, 'S', 257, vDialog, "Control", "CSS_Class", "", 0 );
                  //:CreateTabIndexString( vDialog, szTabIndex )
                  CreateTabIndexString( vDialog, szTabIndex );
                  //:szWriteBuffer = "<textarea name=^" + szCtrlTag + "^ id=^" + szCtrlTag + "^ " + szTitleHTML +
                  //:                "class=^" + szClass + "^ " +
                  //:                szAbsoluteStyle + szTabIndex + " wrap=^wrap^>" +
                  //:                "<%=strErrorMapValue%></textarea>"
                  ZeidonStringCopy( szWriteBuffer, 1, 0, "<textarea name=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ id=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szCtrlTag, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTitleHTML, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "class=^", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szClass, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "^ ", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szAbsoluteStyle, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, szTabIndex, 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, " wrap=^wrap^>", 1, 0, 10001 );
                  ZeidonStringConcat( szWriteBuffer, 1, 0, "<%=strErrorMapValue%></textarea>", 1, 0, 10001 );
               }


               //:END
               //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
               WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
            }

            //:END
         }

         //:END   //IF szControlType = "MLEdit"
      }

      RESULT = SetCursorNextEntity( vDialog, "Control", "" );
      //:END
   }

   //:END // FOR EACH

   //:// I am creating a div for every new y position.  Need to close this.  This
   //:// will not be correct if there are no controls.
   //:// If szFirstTimeThrough = "Y" then that means we were on a groupbox that doesn't have
   //:// any controls inside it.  If that's true, we didn't create the beginning <div so don't create
   //:// the closing div.
   //:// Only do this if we are positioning with relative positioning.
   //:IF  szNoPositioning = "Y"
   if ( ZeidonStringCompare( szNoPositioning, 1, 0, "Y", 1, 0, 2 ) == 0 )
   {
      //:IF szFirstTimeThrough = ""
      if ( ZeidonStringCompare( szFirstTimeThrough, 1, 0, "", 1, 0, 2 ) == 0 )
      {
         //:szWriteBuffer = "</div>  <!-- End of a new line -->"
         ZeidonStringCopy( szWriteBuffer, 1, 0, "</div>  <!-- End of a new line -->", 1, 0, 10001 );
         //:WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 )
         WL_QC( vDialog, lFile, szWriteBuffer, "^", 1 );
      }

      //:END
   }

   //:END
   return( 0 );
//    // szIndent = szIndentHold
// END
}



#ifdef __cplusplus
}
#endif
