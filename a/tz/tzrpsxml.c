#define KZSYSSVC_INCL
#include "KZOENGAA.H"
#include "TZVMLIP.H"
#include "ZDRVROPR.H"

#ifdef __cplusplus
extern "C"
{
#endif

#include "ZEIDONOP.H"

static zSHORT
oTZRPSRCO_XML_PageHeaderFooter( zVIEW     vReportDef,
                                zVIEW     vSourceOI,
                                zPCHAR    szOutputLine,
                                zLONG     lFileHandle,
                                zPCHAR    szIndentationValue );


static zSHORT
oTZRPSRCO_GenerateXMLLine( zVIEW     ReportObject,
                           zLONG     lFileHandle,
                           zPCHAR    szOutputLine );


static zSHORT
oTZRPSRCO_GenerateXML_CtlRecurs( zVIEW     vReportDef,
                                 zVIEW     vSourceOIHier,
                                 zPCHAR    szDrivingObjectViewName,
                                 zPCHAR    szOutputLine,
                                 zLONG     lFileHandle,
                                 zPCHAR    szIndentationValue );


//:TRANSFORMATION OPERATION
//:GenerateXSLT_XML( VIEW vSourceOI,
//:                  STRING ( 32 )  szReportName,
//:                  STRING ( 500 ) szXMLFileName,
//:                  STRING ( 32 )  szTopEntityName )

//:   VIEW vReportDef     BASED ON LOD TZRPSRCO
zOPER_EXPORT zSHORT OPERATION
oTZRPSRCO_GenerateXSLT_XML( zVIEW     vSourceOI,
                            zPCHAR    szReportName,
                            zPCHAR    szXMLFileName,
                            zPCHAR    szTopEntityName )
{
   zVIEW     vReportDef = 0;
   //:VIEW vReportLODRecurs BASED ON LOD TZRPSRCO
   zVIEW     vReportLODRecurs = 0;
   //:VIEW vReportDefRoot BASED ON LOD TZRPSRCO
   zVIEW     vReportDefRoot = 0;
   //:VIEW vSourceOIHier
   zVIEW     vSourceOIHier = 0;
   //:VIEW vSourceOIDebug
   zVIEW     vSourceOIDebug = 0;
   //:VIEW vLOD           BASED ON LOD TZZOLODO
   zVIEW     vLOD = 0;
   //:VIEW vTaskLPLR  BASED ON LOD TZCMLPLO
   zVIEW     vTaskLPLR = 0;
   //:STRING ( 200 )  szMsg
   zCHAR     szMsg[ 201 ] = { 0 };
   //:STRING ( 200 )  szFileName
   zCHAR     szFileName[ 201 ] = { 0 };
   //:STRING ( 32 )   szReturnedEntityName
   zCHAR     szReturnedEntityName[ 33 ] = { 0 };
   //:STRING ( 32 )   szLastReturnedEntityName
   zCHAR     szLastReturnedEntityName[ 33 ] = { 0 };
   //:STRING ( 32 )   szParentEntityName
   zCHAR     szParentEntityName[ 33 ] = { 0 };
   //:STRING ( 32 )   szDrivingViewName
   zCHAR     szDrivingViewName[ 33 ] = { 0 };
   //:STRING ( 50 )   szIndentationValue
   zCHAR     szIndentationValue[ 51 ] = { 0 };
   //:STRING ( 50 )   szIndentationSubValue
   zCHAR     szIndentationSubValue[ 51 ] = { 0 };
   //:STRING ( 1 )    szInNodeFlag
   zCHAR     szInNodeFlag[ 2 ] = { 0 };
   //:STRING ( 5000 ) szOutputLine
   zCHAR     szOutputLine[ 5001 ] = { 0 };
   //:INTEGER         lFileHandle
   zLONG     lFileHandle = 0;
   //:INTEGER         Indentation
   zLONG     Indentation = 0;
   //:SHORT           ReturnedHierLevel
   zSHORT    ReturnedHierLevel = 0;
   //:SHORT           LastHierLevel
   zSHORT    LastHierLevel = 0;
   //:SHORT           nRC
   zSHORT    nRC = 0;
   zSHORT    lTempInteger_0;
   zSHORT    RESULT;


   //:// Build an XSLT XML FO object for the passed in application object and Report Definition.

   //:// First we need to activate the report def...
   //://szFileName = "c:\temp\mSAProfE.lod"
   //://GET VIEW vTaskLPLR NAMED "TaskLPLR"
   //://szFileName = vTaskLPLR.LPLR.ExecDir + "\"
   //:szFileName = "c:\lplr\zencas\bin\"
   ZeidonStringCopy( szFileName, 1, 0, "c:\\lplr\\zencas\\bin\\", 1, 0, 201 );
   //:szFileName = szFileName + szReportName + ".xrp"
   ZeidonStringConcat( szFileName, 1, 0, szReportName, 1, 0, 201 );
   ZeidonStringConcat( szFileName, 1, 0, ".xrp", 1, 0, 201 );
   //://ActivateOI_FromFile( vReportDef, "TZRPSRCO", vSourceOI, szFileName, zSINGLE )
   //:SfActivateSysOI_FromFile( vReportDef, "TZRPSRCO", vSourceOI, szFileName, zSINGLE )
   SfActivateSysOI_FromFile( &vReportDef, "TZRPSRCO", vSourceOI, szFileName, zSINGLE );

   //:// Get the Name of the Driving object, as we will need that in processing mapping.
   //:IF vReportDef.DrivingViewObjRef EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vReportDef, "DrivingViewObjRef" );
   if ( lTempInteger_0 == 0 )
   {
      //:szDrivingViewName = vReportDef.ViewObjRef.Name
      GetVariableFromAttribute( szDrivingViewName, 0, 'S', 33, vReportDef, "ViewObjRef", "Name", "", 0 );
      //:ELSE
   }
   else
   {
      //:szMsg = "The report must have a 'Driving View' set in the report details."
      ZeidonStringCopy( szMsg, 1, 0, "The report must have a 'Driving View' set in the report details.", 1, 0, 201 );
      //:MessageSend( vReportDef, "", "Generate XSLT",
      //:             szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 )
      MessageSend( vReportDef, "", "Generate XSLT", szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 );
      //:RETURN -1
      return( -1 );
   }

   //:END

   //:// Open XML output file.
   //://szFileName = "c:\temp\XSLT_OutputTest.xml"
   //:SysReadZeidonIni( -1, "[App.Zencas]", "XSLTDirectory", szFileName )
   SysReadZeidonIni( -1, "[App.Zencas]", "XSLTDirectory", szFileName );
   //:szFileName = szFileName + szXMLFileName + ".xml"
   ZeidonStringConcat( szFileName, 1, 0, szXMLFileName, 1, 0, 201 );
   ZeidonStringConcat( szFileName, 1, 0, ".xml", 1, 0, 201 );
   //:lFileHandle = SysOpenFile( vReportDef, szFileName, COREFILE_WRITE )
   lFileHandle = SysOpenFile( vReportDef, szFileName, COREFILE_WRITE );
   //:IF lFileHandle < 0
   if ( lFileHandle < 0 )
   {
      //:szMsg = "Cannot open XSLT Output File, " + szFileName
      ZeidonStringCopy( szMsg, 1, 0, "Cannot open XSLT Output File, ", 1, 0, 201 );
      ZeidonStringConcat( szMsg, 1, 0, szFileName, 1, 0, 201 );
      //:MessageSend( vReportDef, "", "Generate XSLT",
      //:             szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 )
      MessageSend( vReportDef, "", "Generate XSLT", szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 );
      //:RETURN -1
      return( -1 );
   }

   //:END

   //:// Make sure that the subobject entity name passed identifies a GroupSet in the Report Def.
   //:/*
   //:SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Tag = szTopEntityName
   //:IF RESULT < zCURSOR_SET
   //:   szMsg = "The Subobject Entity Name passed in does not match a Group Set Name in the Report Definition."
   //:   MessageSend( vReportDef, "", "Generate XSLT",
   //:                szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 )
   //:   RETURN -1
   //:END
   //:*/

   //:// Navigate the vSourceOI object/subobject hierarchically and create an XML node for each entity that has a corresponding
   //:// GroupSet entity in the Report Def.

   //:// Generate basic header.
   //:szOutputLine = "<?xml version=" + QUOTES + "1.0" + QUOTES + " encoding=" + QUOTES + "iso-8859-1" + QUOTES + "?>"
   ZeidonStringCopy( szOutputLine, 1, 0, "<?xml version=", 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, QUOTES, 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, "1.0", 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, QUOTES, 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, " encoding=", 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, QUOTES, 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, "iso-8859-1", 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, QUOTES, 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, "?>", 1, 0, 5001 );
   //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
   oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
   //:szOutputLine = "<zOI>"
   ZeidonStringCopy( szOutputLine, 1, 0, "<zOI>", 1, 0, 5001 );
   //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
   oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

   //:// KJS 01/10/13 - I think we should have the page header here...
   //:// I'm not sure that I want the <PageHeader> tag but I am putting that in for now.
   //:SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Type = "PH"
   RESULT = SetCursorFirstEntityByString( vReportDef, "GroupSet", "Type", "PH", "" );
   //:IF RESULT >= zCURSOR_SET
   if ( RESULT >= zCURSOR_SET )
   {
      //:szOutputLine = "<PageHeader>"
      ZeidonStringCopy( szOutputLine, 1, 0, "<PageHeader>", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
      //:XML_PageHeaderFooter( vReportDef, vSourceOI, szOutputLine, lFileHandle, szIndentationValue )
      oTZRPSRCO_XML_PageHeaderFooter( vReportDef, vSourceOI, szOutputLine, lFileHandle, szIndentationValue );
      //:szOutputLine = "</PageHeader>"
      ZeidonStringCopy( szOutputLine, 1, 0, "</PageHeader>", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
   }

   //:END

   //:// KJS 12/12/12 - I don't think we need this...
   //:// KJS 01/10/13 - Now adding this back in...
   //:szOutputLine = "   <GR_" + szTopEntityName + ">"
   ZeidonStringCopy( szOutputLine, 1, 0, "   <GR_", 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, szTopEntityName, 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
   //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
   oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

   //:// Process Top Entity Header, if it exists.
   //:CreateViewFromView( vReportLODRecurs, vReportDef )
   CreateViewFromView( &vReportLODRecurs, vReportDef );

   //:GenerateXML_LODRecurs( vReportDef, vReportLODRecurs, vSourceOI, szOutputLine, lFileHandle, szIndentationValue )
   oTZRPSRCO_GenerateXML_LODRecurs( vReportDef, vReportLODRecurs, vSourceOI, szOutputLine, lFileHandle, szIndentationValue );


   //:// KJS 12/12/12 - I don't think we need this...
   //:// KJS 01/10/13 - Now adding this back in...
   //:szOutputLine = "   </GR_" + szTopEntityName + ">"
   ZeidonStringCopy( szOutputLine, 1, 0, "   </GR_", 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, szTopEntityName, 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
   //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
   oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );


   //:// KJS 01/10/13 - I think we should have the page header here...
   //:// I'm not sure that I want the <PageHeader> tag but I am putting that in for now.
   //:SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Type = "PF"
   RESULT = SetCursorFirstEntityByString( vReportDef, "GroupSet", "Type", "PF", "" );
   //:IF RESULT >= zCURSOR_SET
   if ( RESULT >= zCURSOR_SET )
   {
      //:szOutputLine = "<PageFooter>"
      ZeidonStringCopy( szOutputLine, 1, 0, "<PageFooter>", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
      //:XML_PageHeaderFooter( vReportDef, vSourceOI, szOutputLine, lFileHandle, szIndentationValue )
      oTZRPSRCO_XML_PageHeaderFooter( vReportDef, vSourceOI, szOutputLine, lFileHandle, szIndentationValue );
      //:szOutputLine = "</PageFooter>"
      ZeidonStringCopy( szOutputLine, 1, 0, "</PageFooter>", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
   }

   //:END

   //:// Terminate and close the XML file.
   //:szOutputLine = "</zOI>"
   ZeidonStringCopy( szOutputLine, 1, 0, "</zOI>", 1, 0, 5001 );
   //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
   oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
   //:SysCloseFile( vReportDef, lFileHandle, 0 )
   SysCloseFile( vReportDef, lFileHandle, 0 );
   return( 0 );
// END
}


//:TRANSFORMATION OPERATION
//:GenerateXSLT_XMLOrig( VIEW vSourceOI,
//:                  STRING ( 32 )  szReportName,
//:                  STRING ( 500 ) szXMLFileName,
//:                  STRING ( 32 )  szTopEntityName )

//:   VIEW vReportDef     BASED ON LOD TZRPSRCO
zOPER_EXPORT zSHORT OPERATION
oTZRPSRCO_GenerateXSLT_XMLOrig( zVIEW     vSourceOI,
                                zPCHAR    szReportName,
                                zPCHAR    szXMLFileName,
                                zPCHAR    szTopEntityName )
{
   zVIEW     vReportDef = 0;
   //:VIEW vReportDefRoot BASED ON LOD TZRPSRCO
   zVIEW     vReportDefRoot = 0;
   //:VIEW vSourceOIHier
   zVIEW     vSourceOIHier = 0;
   //:VIEW vSourceOIDebug
   zVIEW     vSourceOIDebug = 0;
   //:VIEW vLOD           BASED ON LOD TZZOLODO
   zVIEW     vLOD = 0;
   //:VIEW vTaskLPLR  BASED ON LOD TZCMLPLO
   zVIEW     vTaskLPLR = 0;
   //:STRING ( 200 )  szMsg
   zCHAR     szMsg[ 201 ] = { 0 };
   //:STRING ( 200 )  szFileName
   zCHAR     szFileName[ 201 ] = { 0 };
   //:STRING ( 32 )   szReturnedEntityName
   zCHAR     szReturnedEntityName[ 33 ] = { 0 };
   //:STRING ( 32 )   szLastReturnedEntityName
   zCHAR     szLastReturnedEntityName[ 33 ] = { 0 };
   //:STRING ( 32 )   szParentEntityName
   zCHAR     szParentEntityName[ 33 ] = { 0 };
   //:STRING ( 32 )   szDrivingViewName
   zCHAR     szDrivingViewName[ 33 ] = { 0 };
   //:STRING ( 50 )   szIndentationValue
   zCHAR     szIndentationValue[ 51 ] = { 0 };
   //:STRING ( 50 )   szIndentationSubValue
   zCHAR     szIndentationSubValue[ 51 ] = { 0 };
   //:STRING ( 1 )    szInNodeFlag
   zCHAR     szInNodeFlag[ 2 ] = { 0 };
   //:STRING ( 5000 ) szOutputLine
   zCHAR     szOutputLine[ 5001 ] = { 0 };
   //:INTEGER         lFileHandle
   zLONG     lFileHandle = 0;
   //:INTEGER         Indentation
   zLONG     Indentation = 0;
   //:SHORT           ReturnedHierLevel
   zSHORT    ReturnedHierLevel = 0;
   //:SHORT           LastHierLevel
   zSHORT    LastHierLevel = 0;
   //:SHORT           nRC
   zSHORT    nRC = 0;
   zSHORT    lTempInteger_0;
   zSHORT    RESULT;
   zSHORT    lTempInteger_1;
   zSHORT    lTempInteger_2;
   zLONG     lTempInteger_3;
   zSHORT    lTempInteger_4;
   zSHORT    lTempInteger_5;
   zLONG     lTempInteger_6;
   zSHORT    lTempInteger_7;
   zLONG     lTempInteger_8;


   //:// Build an XSLT XML FO object for the passed in application object and Report Definition.

   //:// First we need to activate the report def...
   //://szFileName = "c:\temp\mSAProfE.lod"
   //://GET VIEW vTaskLPLR NAMED "TaskLPLR"
   //://szFileName = vTaskLPLR.LPLR.ExecDir + "\"
   //:szFileName = "c:\lplr\zencas\bin\"
   ZeidonStringCopy( szFileName, 1, 0, "c:\\lplr\\zencas\\bin\\", 1, 0, 201 );
   //:szFileName = szFileName + szReportName + ".xrp"
   ZeidonStringConcat( szFileName, 1, 0, szReportName, 1, 0, 201 );
   ZeidonStringConcat( szFileName, 1, 0, ".xrp", 1, 0, 201 );
   //://ActivateOI_FromFile( vReportDef, "TZRPSRCO", vSourceOI, szFileName, zSINGLE )
   //:SfActivateSysOI_FromFile( vReportDef, "TZRPSRCO", vSourceOI, szFileName, zSINGLE )
   SfActivateSysOI_FromFile( &vReportDef, "TZRPSRCO", vSourceOI, szFileName, zSINGLE );

   //:// Get the Name of the Driving object, as we will need that in processing mapping.
   //:IF vReportDef.DrivingViewObjRef EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vReportDef, "DrivingViewObjRef" );
   if ( lTempInteger_0 == 0 )
   {
      //:szDrivingViewName = vReportDef.ViewObjRef.Name
      GetVariableFromAttribute( szDrivingViewName, 0, 'S', 33, vReportDef, "ViewObjRef", "Name", "", 0 );
      //:ELSE
   }
   else
   {
      //:szMsg = "The report must have a 'Driving View' set in the report details."
      ZeidonStringCopy( szMsg, 1, 0, "The report must have a 'Driving View' set in the report details.", 1, 0, 201 );
      //:MessageSend( vReportDef, "", "Generate XSLT",
      //:             szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 )
      MessageSend( vReportDef, "", "Generate XSLT", szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 );
      //:RETURN -1
      return( -1 );
   }

   //:END

   //:// Open XML output file.
   //://szFileName = "c:\temp\XSLT_OutputTest.xml"
   //:SysReadZeidonIni( -1, "[App.Zencas]", "XSLTDirectory", szFileName )
   SysReadZeidonIni( -1, "[App.Zencas]", "XSLTDirectory", szFileName );
   //:szFileName = szFileName + szXMLFileName + ".xml"
   ZeidonStringConcat( szFileName, 1, 0, szXMLFileName, 1, 0, 201 );
   ZeidonStringConcat( szFileName, 1, 0, ".xml", 1, 0, 201 );
   //:lFileHandle = SysOpenFile( vReportDef, szFileName, COREFILE_WRITE )
   lFileHandle = SysOpenFile( vReportDef, szFileName, COREFILE_WRITE );
   //:IF lFileHandle < 0
   if ( lFileHandle < 0 )
   {
      //:szMsg = "Cannot open XSLT Output File, " + szFileName
      ZeidonStringCopy( szMsg, 1, 0, "Cannot open XSLT Output File, ", 1, 0, 201 );
      ZeidonStringConcat( szMsg, 1, 0, szFileName, 1, 0, 201 );
      //:MessageSend( vReportDef, "", "Generate XSLT",
      //:             szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 )
      MessageSend( vReportDef, "", "Generate XSLT", szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 );
      //:RETURN -1
      return( -1 );
   }

   //:END

   //:// Make sure that the subobject entity name passed identifies a GroupSet in the Report Def.
   //:SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Tag = szTopEntityName
   RESULT = SetCursorFirstEntityByString( vReportDef, "GroupSet", "Tag", szTopEntityName, "" );
   //:IF RESULT < zCURSOR_SET
   if ( RESULT < zCURSOR_SET )
   {
      //:szMsg = "The Subobject Entity Name passed in does not match a Group Set Name in the Report Definition."
      ZeidonStringCopy( szMsg, 1, 0, "The Subobject Entity Name passed in does not match a Group Set Name in the Report Definition.", 1, 0, 201 );
      //:MessageSend( vReportDef, "", "Generate XSLT",
      //:             szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 )
      MessageSend( vReportDef, "", "Generate XSLT", szMsg, zMSGQ_OBJECT_CONSTRAINT_WARNING, 0 );
      //:RETURN -1
      return( -1 );
   }

   //:END

   //:// Navigate the vSourceOI object/subobject hierarchically and create an XML node for each entity that has a corresponding
   //:// GroupSet entity in the Report Def.

   //:// Generate basic header.
   //:szOutputLine = "<?xml version=" + QUOTES + "1.0" + QUOTES + " encoding=" + QUOTES + "iso-8859-1" + QUOTES + "?>"
   ZeidonStringCopy( szOutputLine, 1, 0, "<?xml version=", 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, QUOTES, 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, "1.0", 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, QUOTES, 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, " encoding=", 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, QUOTES, 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, "iso-8859-1", 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, QUOTES, 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, "?>", 1, 0, 5001 );
   //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
   oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
   //:szOutputLine = "<zOI>"
   ZeidonStringCopy( szOutputLine, 1, 0, "<zOI>", 1, 0, 5001 );
   //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
   oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

   //:// KJS 01/10/13 - I think we should have the page header here...
   //:// I'm not sure that I want the <PageHeader> tag but I am putting that in for now.
   //:SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Type = "PH"
   RESULT = SetCursorFirstEntityByString( vReportDef, "GroupSet", "Type", "PH", "" );
   //:IF RESULT >= zCURSOR_SET
   if ( RESULT >= zCURSOR_SET )
   {
      //:szOutputLine = "<PageHeader>"
      ZeidonStringCopy( szOutputLine, 1, 0, "<PageHeader>", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
      //:szOutputLine = "</PageHeader>"
      ZeidonStringCopy( szOutputLine, 1, 0, "</PageHeader>", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
   }

   //:END


   //:// KJS 12/12/12 - I don't think we need this...
   //:// KJS 01/10/13 - Now adding this back in...
   //:szOutputLine = "   <GR_" + szTopEntityName + ">"
   ZeidonStringCopy( szOutputLine, 1, 0, "   <GR_", 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, szTopEntityName, 1, 0, 5001 );
   ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
   //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
   oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

   //:// Process Top Entity Header, if it exists.

   //:// Set to the first GroupSet which if it has a header would be the report header.
   //:SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Tag = szTopEntityName
   RESULT = SetCursorFirstEntityByString( vReportDef, "GroupSet", "Tag", szTopEntityName, "" );
   //:SET CURSOR FIRST vReportDef.Group WHERE vReportDef.Group.Type = "gh"
   RESULT = SetCursorFirstEntityByString( vReportDef, "Group", "Type", "gh", "" );
   //:IF RESULT >= zCURSOR_SET
   if ( RESULT >= zCURSOR_SET )
   {
      //:szOutputLine = szIndentationValue + "   <Header>"
      ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
      ZeidonStringConcat( szOutputLine, 1, 0, "   <Header>", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

      //:szIndentationSubValue = szIndentationValue + "      "
      ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
      ZeidonStringConcat( szIndentationSubValue, 1, 0, "      ", 1, 0, 51 );
      //:GenerateXML_CtlRecurs( vReportDef, vSourceOI, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue )
      oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOI, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue );

      //:szOutputLine = szIndentationValue + "   </Header>"
      ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
      ZeidonStringConcat( szOutputLine, 1, 0, "   </Header>", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
   }

   //:END

   //:// Loop through each of the topmost entities (which could be a root) based on the subobject entity name passed in,
   //:// processing each subobject hierarchically.

   //:nRC = SetCursorFirstEntity( vSourceOI, szTopEntityName, "" )
   nRC = SetCursorFirstEntity( vSourceOI, szTopEntityName, "" );

   //:LOOP WHILE nRC >= zCURSOR_SET
   while ( nRC >= zCURSOR_SET )
   {

      //:// Position on Top Entity Report Group.
      //:SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Tag = szTopEntityName
      RESULT = SetCursorFirstEntityByString( vReportDef, "GroupSet", "Tag", szTopEntityName, "" );

      //:// Open Top Entity.
      //:szOutputLine = "   <" + szTopEntityName + ">"
      ZeidonStringCopy( szOutputLine, 1, 0, "   <", 1, 0, 5001 );
      ZeidonStringConcat( szOutputLine, 1, 0, szTopEntityName, 1, 0, 5001 );
      ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

      //:szIndentationValue = "      "
      ZeidonStringCopy( szIndentationValue, 1, 0, "      ", 1, 0, 51 );

      //:// Note that we are already positioned on the Group Set for the topmost entity.

      //:// Go to generate an attribute entry for each attribute with mapping in the GroupSet.
      //:GenerateXML_CtlRecurs( vReportDef, vSourceOI, szDrivingViewName, szOutputLine, lFileHandle, szIndentationValue )
      oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOI, szDrivingViewName, szOutputLine, lFileHandle, szIndentationValue );

      //:// Close Top Entity.
      //:szOutputLine = "   </" + szTopEntityName + ">"
      ZeidonStringCopy( szOutputLine, 1, 0, "   </", 1, 0, 5001 );
      ZeidonStringConcat( szOutputLine, 1, 0, szTopEntityName, 1, 0, 5001 );
      ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

      //:// Process each subentity Hierarchically
      //:CreateViewFromView( vSourceOIHier, vSourceOI )
      CreateViewFromView( &vSourceOIHier, vSourceOI );
      //:NAME VIEW vSourceOIHier "vSourceOIHier"
      SetNameForView( vSourceOIHier, "vSourceOIHier", 0, zLEVEL_TASK );
      //:DefineHierarchicalCursor( vSourceOIHier, szTopEntityName )
      DefineHierarchicalCursor( vSourceOIHier, szTopEntityName );

      //:nRC = SetCursorNextEntityHierarchical( ReturnedHierLevel, szReturnedEntityName, vSourceOIHier )
      nRC = SetCursorNextEntityHierarchical( (zPUSHORT) &ReturnedHierLevel, szReturnedEntityName, vSourceOIHier );

      //:LOOP WHILE nRC >= zCURSOR_SET AND szReturnedEntityName != szTopEntityName
      while ( nRC >= zCURSOR_SET && ZeidonStringCompare( szReturnedEntityName, 1, 0, szTopEntityName, 1, 0, 33 ) != 0 )
      {

         //:// Process any Footer from the last group, if there was one AND we're NOT at a lower hierarchical level.
         //:IF szLastReturnedEntityName != szReturnedEntityName AND
         //:   ReturnedHierLevel >= LastHierLevel AND szInNodeFlag = "Y"
         if ( ZeidonStringCompare( szLastReturnedEntityName, 1, 0, szReturnedEntityName, 1, 0, 33 ) != 0 && ReturnedHierLevel >= LastHierLevel && ZeidonStringCompare( szInNodeFlag, 1, 0, "Y", 1, 0, 2 ) == 0 )
         {

            //:// Close any Entity Tag Pairs whose Hierarchical level is the same or less than this one.
            //:IF vReportDef.XML_Parent EXISTS
            lTempInteger_1 = CheckExistenceOfEntity( vReportDef, "XML_Parent" );
            if ( lTempInteger_1 == 0 )
            {
               //:LOOP WHILE vReportDef.XML_Parent EXISTS AND ReturnedHierLevel <= vReportDef.XML_Parent.HierarchicalLevel
               lTempInteger_2 = CheckExistenceOfEntity( vReportDef, "XML_Parent" );
               while ( lTempInteger_2 == 0 && CompareAttributeToInteger( vReportDef, "XML_Parent", "HierarchicalLevel", (zLONG) ReturnedHierLevel ) >= 0 )
               {
                  //:// Format Entity Terminator Tag.
                  //:szParentEntityName = vReportDef.XML_Parent.EntityName
                  GetVariableFromAttribute( szParentEntityName, 0, 'S', 33, vReportDef, "XML_Parent", "EntityName", "", 0 );

                  //:Indentation = vReportDef.XML_Parent.HierarchicalLevel - 1
                  GetIntegerFromAttribute( &lTempInteger_3, vReportDef, "XML_Parent", "HierarchicalLevel" );
                  Indentation = lTempInteger_3 - 1;
                  //:szIndentationValue = ""
                  ZeidonStringCopy( szIndentationValue, 1, 0, "", 1, 0, 51 );
                  //:LOOP WHILE Indentation > 0
                  while ( Indentation > 0 )
                  {
                     //:szIndentationValue = szIndentationValue + "   "
                     ZeidonStringConcat( szIndentationValue, 1, 0, "   ", 1, 0, 51 );
                     //:Indentation = Indentation - 1
                     Indentation = Indentation - 1;
                  }

                  //:END

                  //:szOutputLine = szIndentationValue + "   </" + szParentEntityName + "> "
                  ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
                  ZeidonStringConcat( szOutputLine, 1, 0, "   </", 1, 0, 5001 );
                  ZeidonStringConcat( szOutputLine, 1, 0, szParentEntityName, 1, 0, 5001 );
                  ZeidonStringConcat( szOutputLine, 1, 0, "> ", 1, 0, 5001 );
                  //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
                  oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

                  //:// If this isn't a repeat of the last entity, close the last entity Group.
                  //:// Also, create Footer, if there is one.
                  //:IF szLastReturnedEntityName != szReturnedEntityName
                  if ( ZeidonStringCompare( szLastReturnedEntityName, 1, 0, szReturnedEntityName, 1, 0, 33 ) != 0 )
                  {

                     //:// Create Footer if there is one.
                     //:// Process Header if there is one.
                     //:SET CURSOR FIRST vReportDef.Group WHERE vReportDef.Group.Type = "gf"
                     RESULT = SetCursorFirstEntityByString( vReportDef, "Group", "Type", "gf", "" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //:szOutputLine = szIndentationValue + "   <Footer>"
                        ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
                        ZeidonStringConcat( szOutputLine, 1, 0, "   <Footer>", 1, 0, 5001 );
                        //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
                        oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

                        //:szIndentationSubValue = szIndentationValue + "      "
                        ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
                        ZeidonStringConcat( szIndentationSubValue, 1, 0, "      ", 1, 0, 51 );
                        //:GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue )
                        oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue );
                        //:szOutputLine = szIndentationValue + "   </Footer>"
                        ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
                        ZeidonStringConcat( szOutputLine, 1, 0, "   </Footer>", 1, 0, 5001 );
                        //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
                        oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
                     }

                     //:END

                     //:// Close Group.
                     //:szOutputLine = szIndentationValue + "</GR_" + szParentEntityName + "> "
                     ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
                     ZeidonStringConcat( szOutputLine, 1, 0, "</GR_", 1, 0, 5001 );
                     ZeidonStringConcat( szOutputLine, 1, 0, szParentEntityName, 1, 0, 5001 );
                     ZeidonStringConcat( szOutputLine, 1, 0, "> ", 1, 0, 5001 );
                     //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
                     oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
                  }

                  //:END

                  //:DELETE ENTITY vReportDef.XML_Parent
                  RESULT = DeleteEntity( vReportDef, "XML_Parent", zPOS_NEXT );
                  lTempInteger_2 = CheckExistenceOfEntity( vReportDef, "XML_Parent" );
               }

               //:END
            }

            //:END

            //:szInNodeFlag = ""      // Turn off flag that indicates we are in a node.
            ZeidonStringCopy( szInNodeFlag, 1, 0, "", 1, 0, 2 );
         }


         //:END  // IF vReportDef.XML_Parent EXISTS

         //:// If the Entity returned has an attribute to display, create XML begin/termination pair and process attributes.
         //:SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Tag = szReturnedEntityName
         RESULT = SetCursorFirstEntityByString( vReportDef, "GroupSet", "Tag", szReturnedEntityName, "" );
         //:IF RESULT >= zCURSOR_SET
         if ( RESULT >= zCURSOR_SET )
         {

            //:// The Entity needs a Group node.

            //:szInNodeFlag = "Y"      // Turn on flag that indicates we are in a node for Footer processing.
            ZeidonStringCopy( szInNodeFlag, 1, 0, "Y", 1, 0, 2 );

            //:// Close any Entity Tag Pairs whose Hierarchical level is the same or less than this one.
            //:IF vReportDef.XML_Parent EXISTS
            lTempInteger_4 = CheckExistenceOfEntity( vReportDef, "XML_Parent" );
            if ( lTempInteger_4 == 0 )
            {
               //:LOOP WHILE vReportDef.XML_Parent EXISTS AND ReturnedHierLevel <= vReportDef.XML_Parent.HierarchicalLevel
               lTempInteger_5 = CheckExistenceOfEntity( vReportDef, "XML_Parent" );
               while ( lTempInteger_5 == 0 && CompareAttributeToInteger( vReportDef, "XML_Parent", "HierarchicalLevel", (zLONG) ReturnedHierLevel ) >= 0 )
               {
                  //:// Format Entity Terminator Tag.
                  //:szParentEntityName = vReportDef.XML_Parent.EntityName
                  GetVariableFromAttribute( szParentEntityName, 0, 'S', 33, vReportDef, "XML_Parent", "EntityName", "", 0 );

                  //:Indentation = vReportDef.XML_Parent.HierarchicalLevel - 1
                  GetIntegerFromAttribute( &lTempInteger_6, vReportDef, "XML_Parent", "HierarchicalLevel" );
                  Indentation = lTempInteger_6 - 1;
                  //:szIndentationValue = ""
                  ZeidonStringCopy( szIndentationValue, 1, 0, "", 1, 0, 51 );
                  //:LOOP WHILE Indentation > 0
                  while ( Indentation > 0 )
                  {
                     //:szIndentationValue = szIndentationValue + "   "
                     ZeidonStringConcat( szIndentationValue, 1, 0, "   ", 1, 0, 51 );
                     //:Indentation = Indentation - 1
                     Indentation = Indentation - 1;
                  }

                  //:END

                  //:szOutputLine = szIndentationValue + "   </" + szParentEntityName + "> "
                  ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
                  ZeidonStringConcat( szOutputLine, 1, 0, "   </", 1, 0, 5001 );
                  ZeidonStringConcat( szOutputLine, 1, 0, szParentEntityName, 1, 0, 5001 );
                  ZeidonStringConcat( szOutputLine, 1, 0, "> ", 1, 0, 5001 );
                  //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
                  oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

                  //:// If this isn't a repeat of the last entity, close the last entity Group.
                  //:// Also, create Footer, if there is one.
                  //:IF szLastReturnedEntityName != szReturnedEntityName
                  if ( ZeidonStringCompare( szLastReturnedEntityName, 1, 0, szReturnedEntityName, 1, 0, 33 ) != 0 )
                  {


                     //:// KJS 12/12/12 - Isn't this where we should do the footer?
                     //:// Create Footer if there is one.
                     //:// Process Header if there is one.
                     //:SET CURSOR FIRST vReportDef.Group WHERE vReportDef.Group.Type = "gf"
                     RESULT = SetCursorFirstEntityByString( vReportDef, "Group", "Type", "gf", "" );
                     //:IF RESULT >= zCURSOR_SET
                     if ( RESULT >= zCURSOR_SET )
                     {
                        //:szOutputLine = szIndentationValue + "   <Footer>"
                        ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
                        ZeidonStringConcat( szOutputLine, 1, 0, "   <Footer>", 1, 0, 5001 );
                        //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
                        oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

                        //:szIndentationSubValue = szIndentationValue + "      "
                        ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
                        ZeidonStringConcat( szIndentationSubValue, 1, 0, "      ", 1, 0, 51 );
                        //:GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue )
                        oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue );
                        //:szOutputLine = szIndentationValue + "   </Footer>"
                        ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
                        ZeidonStringConcat( szOutputLine, 1, 0, "   </Footer>", 1, 0, 5001 );
                        //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
                        oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
                     }

                     //:END

                     //:// Close Group.
                     //:szOutputLine = szIndentationValue + "</GR_" + szParentEntityName + "> "
                     ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
                     ZeidonStringConcat( szOutputLine, 1, 0, "</GR_", 1, 0, 5001 );
                     ZeidonStringConcat( szOutputLine, 1, 0, szParentEntityName, 1, 0, 5001 );
                     ZeidonStringConcat( szOutputLine, 1, 0, "> ", 1, 0, 5001 );
                     //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
                     oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
                  }

                  //:END

                  //:DELETE ENTITY vReportDef.XML_Parent
                  RESULT = DeleteEntity( vReportDef, "XML_Parent", zPOS_NEXT );
                  lTempInteger_5 = CheckExistenceOfEntity( vReportDef, "XML_Parent" );
               }

               //:END
            }

            //:END

            //:// Determine Indentation Characteristics.
            //:Indentation = ReturnedHierLevel - 1
            Indentation = ReturnedHierLevel - 1;
            //:szIndentationValue = ""
            ZeidonStringCopy( szIndentationValue, 1, 0, "", 1, 0, 51 );
            //:LOOP WHILE Indentation > 0
            while ( Indentation > 0 )
            {
               //:szIndentationValue = szIndentationValue + "   "
               ZeidonStringConcat( szIndentationValue, 1, 0, "   ", 1, 0, 51 );
               //:Indentation = Indentation - 1
               Indentation = Indentation - 1;
            }

            //:END

            //:// Format Opening Group and Entity Tags
            //:// Generate Group entry if the last Entity WAS NOT the same as the current Entity. Also add the Termination Entity in that case.
            //:SET CURSOR FIRST vReportDef.XML_Parent WHERE vReportDef.XML_Parent.EntityName = szReturnedEntityName
            RESULT = SetCursorFirstEntityByString( vReportDef, "XML_Parent", "EntityName", szReturnedEntityName, "" );
            //:IF RESULT < zCURSOR_SET
            if ( RESULT < zCURSOR_SET )
            {

               //:// If this entity isn't the same as the last one, also create an open Group entry and process a header..
               //:IF szLastReturnedEntityName != szReturnedEntityName
               if ( ZeidonStringCompare( szLastReturnedEntityName, 1, 0, szReturnedEntityName, 1, 0, 33 ) != 0 )
               {

                  //:// Create open Group.
                  //:szOutputLine = szIndentationValue + "<GR_" + szReturnedEntityName + ">"
                  ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
                  ZeidonStringConcat( szOutputLine, 1, 0, "<GR_", 1, 0, 5001 );
                  ZeidonStringConcat( szOutputLine, 1, 0, szReturnedEntityName, 1, 0, 5001 );
                  ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
                  //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
                  oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

                  //:// Process Header if there is one.
                  //:SET CURSOR FIRST vReportDef.Group WHERE vReportDef.Group.Type = "gh"
                  RESULT = SetCursorFirstEntityByString( vReportDef, "Group", "Type", "gh", "" );
                  //:IF RESULT >= zCURSOR_SET
                  if ( RESULT >= zCURSOR_SET )
                  {
                     //:szOutputLine = szIndentationValue + "   <Header>"
                     ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
                     ZeidonStringConcat( szOutputLine, 1, 0, "   <Header>", 1, 0, 5001 );
                     //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
                     oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

                     //:szIndentationSubValue = szIndentationValue + "      "
                     ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
                     ZeidonStringConcat( szIndentationSubValue, 1, 0, "      ", 1, 0, 51 );
                     //:GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue )
                     oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue );

                     //:szOutputLine = szIndentationValue + "   </Header>"
                     ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
                     ZeidonStringConcat( szOutputLine, 1, 0, "   </Header>", 1, 0, 5001 );
                     //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
                     oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
                  }

                  //:END
               }

               //:END

               //:// Add work entity for handling later close of the group..
               //:SET CURSOR LAST vReportDef.XML_Parent
               RESULT = SetCursorLastEntity( vReportDef, "XML_Parent", "" );
               //:CREATE ENTITY vReportDef.XML_Parent
               RESULT = CreateEntity( vReportDef, "XML_Parent", zPOS_AFTER );
               //:vReportDef.XML_Parent.EntityName        = szReturnedEntityName
               SetAttributeFromString( vReportDef, "XML_Parent", "EntityName", szReturnedEntityName );
               //:vReportDef.XML_Parent.HierarchicalLevel = ReturnedHierLevel
               SetAttributeFromInteger( vReportDef, "XML_Parent", "HierarchicalLevel", ReturnedHierLevel );
            }

            //:END
            //:szOutputLine = szIndentationValue + "   <" + szReturnedEntityName + ">"
            ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, "   <", 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, szReturnedEntityName, 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
            //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
            oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

            //:// Go to generate an attribute entry for each attribute with mapping in the Detail Group of the GroupSet.
            //:SET CURSOR FIRST vReportDef.Group WHERE vReportDef.Group.Type = "ga"
            RESULT = SetCursorFirstEntityByString( vReportDef, "Group", "Type", "ga", "" );
            //:szIndentationSubValue = szIndentationValue + "   "
            ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
            ZeidonStringConcat( szIndentationSubValue, 1, 0, "   ", 1, 0, 51 );

            //:GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue )
            oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue );
         }


         //:END  // SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Tag = szReturnedEntityName

         //:szLastReturnedEntityName = szReturnedEntityName   // We need to keep the last entity name for comparison.
         ZeidonStringCopy( szLastReturnedEntityName, 1, 0, szReturnedEntityName, 1, 0, 33 );
         //:nRC = SetCursorNextEntityHierarchical( ReturnedHierLevel, szReturnedEntityName, vSourceOIHier )
         nRC = SetCursorNextEntityHierarchical( (zPUSHORT) &ReturnedHierLevel, szReturnedEntityName, vSourceOIHier );
      }

      //:END

      //:// Write out any Remaining Tag Terminators in XML_Parent.
      //:SET CURSOR LAST vReportDef.XML_Parent
      RESULT = SetCursorLastEntity( vReportDef, "XML_Parent", "" );
      //:IF RESULT >= zCURSOR_SET
      if ( RESULT >= zCURSOR_SET )
      {
         //:LOOP WHILE vReportDef.XML_Parent EXISTS
         lTempInteger_7 = CheckExistenceOfEntity( vReportDef, "XML_Parent" );
         while ( lTempInteger_7 == 0 )
         {
            //:// Format Entity Terminator Tag.
            //:szParentEntityName = vReportDef.XML_Parent.EntityName
            GetVariableFromAttribute( szParentEntityName, 0, 'S', 33, vReportDef, "XML_Parent", "EntityName", "", 0 );

            //:Indentation = vReportDef.XML_Parent.HierarchicalLevel - 1
            GetIntegerFromAttribute( &lTempInteger_8, vReportDef, "XML_Parent", "HierarchicalLevel" );
            Indentation = lTempInteger_8 - 1;
            //:szIndentationValue = ""
            ZeidonStringCopy( szIndentationValue, 1, 0, "", 1, 0, 51 );
            //:LOOP WHILE Indentation > 0
            while ( Indentation > 0 )
            {
               //:szIndentationValue = szIndentationValue + "   "
               ZeidonStringConcat( szIndentationValue, 1, 0, "   ", 1, 0, 51 );
               //:Indentation = Indentation - 1
               Indentation = Indentation - 1;
            }

            //:END

            //:szOutputLine = szIndentationValue + "   </" + szParentEntityName + "> "
            ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, "   </", 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, szParentEntityName, 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, "> ", 1, 0, 5001 );
            //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
            oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

            //:// Create Footer if there is one.
            //:// Process Header if there is one.
            //:SET CURSOR FIRST vReportDef.Group WHERE vReportDef.Group.Type = "gf"
            RESULT = SetCursorFirstEntityByString( vReportDef, "Group", "Type", "gf", "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:szOutputLine = szIndentationValue + "   <Footer>"
               ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "   <Footer>", 1, 0, 5001 );
               //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
               oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

               //:szIndentationSubValue = szIndentationValue + "      "
               ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
               ZeidonStringConcat( szIndentationSubValue, 1, 0, "      ", 1, 0, 51 );
               //:GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue )
               oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue );
               //:szOutputLine = szIndentationValue + "   </Footer>"
               ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "   </Footer>", 1, 0, 5001 );
               //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
               oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
            }

            //:END

            //:szOutputLine = szIndentationValue + "</GR_" + szParentEntityName + ">"
            ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, "</GR_", 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, szParentEntityName, 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
            //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
            oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
            //:DELETE ENTITY vReportDef.XML_Parent
            RESULT = DeleteEntity( vReportDef, "XML_Parent", zPOS_NEXT );
            lTempInteger_7 = CheckExistenceOfEntity( vReportDef, "XML_Parent" );
         }

         //:END
      }

      //:END
      //:DropView( vSourceOIHier )
      DropView( vSourceOIHier );

      //:nRC = SetCursorNextEntity( vSourceOI, szTopEntityName, "" )
      nRC = SetCursorNextEntity( vSourceOI, szTopEntityName, "" );
   }

   //:END  // LOOP Through each szTopEntityName

   //:// Reposition on Top Entity Report Group for Footer.
   //:SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Tag = szTopEntityName
   RESULT = SetCursorFirstEntityByString( vReportDef, "GroupSet", "Tag", szTopEntityName, "" );

   //:// Process Top Entity Footer, if it exists.
   //:SET CURSOR FIRST vReportDef.Group WHERE vReportDef.Group.Type = "gf"
   RESULT = SetCursorFirstEntityByString( vReportDef, "Group", "Type", "gf", "" );
   //:IF RESULT >= zCURSOR_SET
   if ( RESULT >= zCURSOR_SET )
   {
      //:szOutputLine = szIndentationValue + "   <Footer>"
      ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
      ZeidonStringConcat( szOutputLine, 1, 0, "   <Footer>", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

      //:szIndentationSubValue = szIndentationValue + "      "
      ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
      ZeidonStringConcat( szIndentationSubValue, 1, 0, "      ", 1, 0, 51 );
      //:GenerateXML_CtlRecurs( vReportDef, vSourceOI, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue )
      oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOI, szDrivingViewName, szOutputLine, lFileHandle, szIndentationSubValue );

      //:szOutputLine = szIndentationValue + "   </Footer>"
      ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
      ZeidonStringConcat( szOutputLine, 1, 0, "   </Footer>", 1, 0, 5001 );
      //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
      oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
   }

   //:END

   //:// KJS 12/12/12 - I don't think we need this...
   //://szOutputLine = "   </GR_" + szTopEntityName + ">"
   //://GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )

   //:// Terminate and close the XML file.
   //:szOutputLine = "</zOI>"
   ZeidonStringCopy( szOutputLine, 1, 0, "</zOI>", 1, 0, 5001 );
   //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
   oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
   //:SysCloseFile( vReportDef, lFileHandle, 0 )
   SysCloseFile( vReportDef, lFileHandle, 0 );
   return( 0 );
// END
}


//:LOCAL OPERATION
//:XML_PageHeaderFooter( VIEW vReportDef BASED ON LOD TZRPSRCO,
//:                      VIEW vSourceOI,
//:                      STRING ( 5000 ) szOutputLine,
//:                      INTEGER         lFileHandle,
//:                      STRING ( 50 )   szIndentationValue )

//:   STRING ( 32 ) szEntityName
static zSHORT
oTZRPSRCO_XML_PageHeaderFooter( zVIEW     vReportDef,
                                zVIEW     vSourceOI,
                                zPCHAR    szOutputLine,
                                zLONG     lFileHandle,
                                zPCHAR    szIndentationValue )
{
   zCHAR     szEntityName[ 33 ] = { 0 };
   //:STRING ( 50 ) szIndentationSubValue
   zCHAR     szIndentationSubValue[ 51 ] = { 0 };
   zSHORT    lTempInteger_0;


   //:IF vReportDef.Control EXISTS
   lTempInteger_0 = CheckExistenceOfEntity( vReportDef, "Control" );
   if ( lTempInteger_0 == 0 )
   {
      //:szIndentationSubValue = szIndentationValue + "      "
      ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
      ZeidonStringConcat( szIndentationSubValue, 1, 0, "      ", 1, 0, 51 );
      //:GenerateXML_CtlRecurs( vReportDef, vSourceOI, szEntityName, szOutputLine, lFileHandle, szIndentationSubValue )
      oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOI, szEntityName, szOutputLine, lFileHandle, szIndentationSubValue );
   }

   //:END
   return( 0 );
// END
}


//:TRANSFORMATION OPERATION
//:GenerateXML_LODRecurs( VIEW vReportDef BASED ON LOD TZRPSRCO,
//:                       VIEW vReportDefRecurs BASED ON LOD TZRPSRCO,
//:                       VIEW vSourceOI,
//:                       STRING ( 5000 ) szOutputLine,
//:                       INTEGER         lFileHandle,
//:                       STRING ( 50 )   szIndentationValue )

//:   STRING ( 32 ) szEntityName
zOPER_EXPORT zSHORT OPERATION
oTZRPSRCO_GenerateXML_LODRecurs( zVIEW     vReportDef,
                                 zVIEW     vReportDefRecurs,
                                 zVIEW     vSourceOI,
                                 zPCHAR    szOutputLine,
                                 zLONG     lFileHandle,
                                 zPCHAR    szIndentationValue )
{
   zCHAR     szEntityName[ 33 ] = { 0 };
   //:STRING ( 50 ) szIndentationSubValue
   zCHAR     szIndentationSubValue[ 51 ] = { 0 };
   //:STRING ( 10 ) szCnt
   zCHAR     szCnt[ 11 ] = { 0 };
   //:SHORT nRC
   zSHORT    nRC = 0;
   //:INTEGER iCount
   zLONG     iCount = 0;
   zSHORT    RESULT;
   zSHORT    lTempInteger_0;
   zSHORT    lTempInteger_1;


   //:// Build one level of the PartialReportEntity subobject, matching the structure of the Driving LOD and
   //:// setting the ReportDisplayFlag entity for any entity with a corresponding GroupSet entity in the report, or having
   //:// a PartialReportEntityChild entity with a corresponding GroupSet entity. The flag is set to "D" if the entity has
   //:// a corresponding GroupSet entity and to a "C" if it has a child with a corresponding GroupSet entity.

   //:FOR EACH vReportDefRecurs.PartialReportEntity
   RESULT = SetCursorFirstEntity( vReportDefRecurs, "PartialReportEntity", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   {

      //:szEntityName = vReportDefRecurs.PartialReportEntity.Name
      GetVariableFromAttribute( szEntityName, 0, 'S', 33, vReportDefRecurs, "PartialReportEntity", "Name", "", 0 );
      //:
      //:// Loop through vSourceOI for each entity
      //:nRC = SetCursorFirstEntity( vSourceOI, szEntityName, "" )
      nRC = SetCursorFirstEntity( vSourceOI, szEntityName, "" );
      //:LOOP WHILE nRC >= zCURSOR_SET
      while ( nRC >= zCURSOR_SET )
      {

         //:IF vReportDefRecurs.PartialReportEntity.ReportDisplayFlag = "D"
         if ( CompareAttributeToString( vReportDefRecurs, "PartialReportEntity", "ReportDisplayFlag", "D" ) == 0 )
         {

            //:SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Tag = szEntityName
            RESULT = SetCursorFirstEntityByString( vReportDef, "GroupSet", "Tag", szEntityName, "" );
            //:IF RESULT < zCURSOR_SET
            if ( RESULT < zCURSOR_SET )
            {
            }

            //:// There is an error because the report should have a GroupSet for this.
            //:END

            //:SET CURSOR FIRST vReportDef.Group WHERE vReportDef.Group.Type = "gh"
            RESULT = SetCursorFirstEntityByString( vReportDef, "Group", "Type", "gh", "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:szOutputLine = szIndentationValue + "   <" + szEntityName + "Header>"
               ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "   <", 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, szEntityName, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "Header>", 1, 0, 5001 );
               //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
               oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

               //:szIndentationSubValue = szIndentationValue + "      "
               ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
               ZeidonStringConcat( szIndentationSubValue, 1, 0, "      ", 1, 0, 51 );
               //:GenerateXML_CtlRecurs( vReportDef, vSourceOI, szEntityName, szOutputLine, lFileHandle, szIndentationSubValue )
               oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOI, szEntityName, szOutputLine, lFileHandle, szIndentationSubValue );

               //:szOutputLine = szIndentationValue + "   </" + szEntityName + "Header>"
               ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "   </", 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, szEntityName, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "Header>", 1, 0, 5001 );
               //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
               oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
            }

            //:END

            //:// Go to generate an attribute entry for each attribute with mapping in the Detail Group of the GroupSet.
            //:SET CURSOR FIRST vReportDef.Group WHERE vReportDef.Group.Type = "ga"
            RESULT = SetCursorFirstEntityByString( vReportDef, "Group", "Type", "ga", "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {

               //:iCount = 1
               iCount = 1;

               //://LOOP WHILE nRC >= zCURSOR_SET

               //:szOutputLine = szIndentationValue + "   <" + szEntityName + ">"
               ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "   <", 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, szEntityName, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
               //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
               oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
               //:szIndentationSubValue = szIndentationValue + "   "
               ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
               ZeidonStringConcat( szIndentationSubValue, 1, 0, "   ", 1, 0, 51 );
               //:// Do we want to add a count?
               //:szOutputLine = szIndentationSubValue + "   <" + szEntityName + "_Cnt>"
               ZeidonStringCopy( szOutputLine, 1, 0, szIndentationSubValue, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "   <", 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, szEntityName, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "_Cnt>", 1, 0, 5001 );
               //:zIntegerToString( szCnt, 10, iCount )
               zIntegerToString( szCnt, 10, iCount );
               //:szOutputLine = szOutputLine + szCnt
               ZeidonStringConcat( szOutputLine, 1, 0, szCnt, 1, 0, 5001 );
               //:szOutputLine = szOutputLine + "</" + szEntityName + "_Cnt>"
               ZeidonStringConcat( szOutputLine, 1, 0, "</", 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, szEntityName, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "_Cnt>", 1, 0, 5001 );
               //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
               oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

               //:GenerateXML_CtlRecurs( vReportDef, vSourceOI, szEntityName, szOutputLine, lFileHandle, szIndentationSubValue )
               oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOI, szEntityName, szOutputLine, lFileHandle, szIndentationSubValue );

               //:// I think we want to see if there are child entities here...


               //:// Process any LOD subentities.
               //:IF vReportDefRecurs.PartialReportEntityChild EXISTS
               lTempInteger_0 = CheckExistenceOfEntity( vReportDefRecurs, "PartialReportEntityChild" );
               if ( lTempInteger_0 == 0 )
               {

                  //:SetViewToSubobject( vReportDefRecurs, "PartialReportEntityChild" )
                  SetViewToSubobject( vReportDefRecurs, "PartialReportEntityChild" );
                  //:szIndentationSubValue = szIndentationValue + "      "
                  ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
                  ZeidonStringConcat( szIndentationSubValue, 1, 0, "      ", 1, 0, 51 );
                  //:nRC = GenerateXML_LODRecurs( vReportDef,
                  //:                             vReportDefRecurs, vSourceOI, szOutputLine, lFileHandle, szIndentationSubValue )
                  nRC = oTZRPSRCO_GenerateXML_LODRecurs( vReportDef, vReportDefRecurs, vSourceOI, szOutputLine, lFileHandle, szIndentationSubValue );
                  //:ResetViewFromSubobject( vReportDefRecurs )
                  ResetViewFromSubobject( vReportDefRecurs );

                  //:// I think when we get here, we need to reset on the report GroupSet/Group because it has been changed when we go down levels.
                  //:SET CURSOR FIRST vReportDef.GroupSet WHERE vReportDef.GroupSet.Tag = szEntityName
                  RESULT = SetCursorFirstEntityByString( vReportDef, "GroupSet", "Tag", szEntityName, "" );
                  //:SET CURSOR FIRST vReportDef.Group WHERE vReportDef.Group.Type = "ga"
                  RESULT = SetCursorFirstEntityByString( vReportDef, "Group", "Type", "ga", "" );
               }

               //:END

               //:// End of checking for child entities...


               //:szOutputLine = szIndentationValue + "   </" + szEntityName + ">"
               ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "   </", 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, szEntityName, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
               //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
               oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
               //:iCount = iCount + 1
               iCount = iCount + 1;
            }

            //://END

            //:END

            //:SET CURSOR FIRST vReportDef.Group WHERE vReportDef.Group.Type = "gf"
            RESULT = SetCursorFirstEntityByString( vReportDef, "Group", "Type", "gf", "" );
            //:IF RESULT >= zCURSOR_SET
            if ( RESULT >= zCURSOR_SET )
            {
               //:szOutputLine = szIndentationValue + "   <" + szEntityName + "Footer>"
               ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "   <", 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, szEntityName, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "Footer>", 1, 0, 5001 );
               //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
               oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );

               //:szIndentationSubValue = szIndentationValue + "      "
               ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
               ZeidonStringConcat( szIndentationSubValue, 1, 0, "      ", 1, 0, 51 );
               //:GenerateXML_CtlRecurs( vReportDef, vSourceOI, szEntityName, szOutputLine, lFileHandle, szIndentationSubValue )
               oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOI, szEntityName, szOutputLine, lFileHandle, szIndentationSubValue );
               //:szOutputLine = szIndentationValue + "   </" + szEntityName + "Footer>"
               ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "   </", 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, szEntityName, 1, 0, 5001 );
               ZeidonStringConcat( szOutputLine, 1, 0, "Footer>", 1, 0, 5001 );
               //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
               oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
            }

            //:END

            //:ELSE
         }
         else
         {
            //:// Maybe the parent isn't being displayed but a child might be so check...
            //:
            //:IF vReportDefRecurs.PartialReportEntityChild EXISTS
            lTempInteger_1 = CheckExistenceOfEntity( vReportDefRecurs, "PartialReportEntityChild" );
            if ( lTempInteger_1 == 0 )
            {

               //:SetViewToSubobject( vReportDefRecurs, "PartialReportEntityChild" )
               SetViewToSubobject( vReportDefRecurs, "PartialReportEntityChild" );
               //:szIndentationSubValue = szIndentationValue + "      "
               ZeidonStringCopy( szIndentationSubValue, 1, 0, szIndentationValue, 1, 0, 51 );
               ZeidonStringConcat( szIndentationSubValue, 1, 0, "      ", 1, 0, 51 );
               //:nRC = GenerateXML_LODRecurs( vReportDef,
               //:                          vReportDefRecurs, vSourceOI, szOutputLine, lFileHandle, szIndentationSubValue )
               nRC = oTZRPSRCO_GenerateXML_LODRecurs( vReportDef, vReportDefRecurs, vSourceOI, szOutputLine, lFileHandle, szIndentationSubValue );
               //:ResetViewFromSubobject( vReportDefRecurs )
               ResetViewFromSubobject( vReportDefRecurs );
            }


            //:END
         }

         //:END

         //:nRC = SetCursorNextEntity( vSourceOI, szEntityName, "" )
         nRC = SetCursorNextEntity( vSourceOI, szEntityName, "" );
      }

      RESULT = SetCursorNextEntity( vReportDefRecurs, "PartialReportEntity", "" );
      //:END
   }

   //:
   //:END
   return( 0 );
// END
}


//:LOCAL OPERATION
static zSHORT
oTZRPSRCO_GenerateXMLLine( zVIEW     ReportObject,
                           zLONG     lFileHandle,
                           zPCHAR    szOutputLine )
{

   //:GenerateXMLLine( VIEW ReportObject BASED ON LOD TZRPSRCO,
   //:           INTEGER lFileHandle,
   //:           STRING ( 5000 ) szOutputLine )

   //:// This is just a SysWriteLine with an options TraceLineS statement.
   //:TraceLineS( "*** Line: ", szOutputLine )
   TraceLineS( "*** Line: ", szOutputLine );
   //:SysWriteLine( ReportObject, lFileHandle, szOutputLine )
   SysWriteLine( ReportObject, lFileHandle, szOutputLine );
   return( 0 );
// END
}


//:LOCAL OPERATION
//:GenerateXML_CtlRecurs( VIEW vReportDef BASED ON LOD TZRPSRCO,
//:                       VIEW vSourceOIHier,
//:                       STRING ( 32 )   szDrivingObjectViewName,
//:                       STRING ( 5000 ) szOutputLine,
//:                       INTEGER         lFileHandle,
//:                       STRING ( 50 )   szIndentationValue )

//:   VIEW vMappingOI
static zSHORT
oTZRPSRCO_GenerateXML_CtlRecurs( zVIEW     vReportDef,
                                 zVIEW     vSourceOIHier,
                                 zPCHAR    szDrivingObjectViewName,
                                 zPCHAR    szOutputLine,
                                 zLONG     lFileHandle,
                                 zPCHAR    szIndentationValue )
{
   zVIEW     vMappingOI = 0;
   //:VIEW vSourceOI
   zVIEW     vSourceOI = 0;
   //:STRING ( 32 )   szEntityName
   zCHAR     szEntityName[ 33 ] = { 0 };
   //:STRING ( 32 )   szAttributeName
   zCHAR     szAttributeName[ 33 ] = { 0 };
   //:STRING ( 32 )   szMappingName
   zCHAR     szMappingName[ 33 ] = { 0 };
   //:STRING ( 5000 ) szReturnedAttributeValue
   zCHAR     szReturnedAttributeValue[ 5001 ] = { 0 };
   //:STRING ( 5000 ) szConvertedAttributeValue
   zCHAR     szConvertedAttributeValue[ 5001 ] = { 0 };
   //:STRING ( 200 )  szMsg
   zCHAR     szMsg[ 201 ] = { 0 };
   zSHORT    RESULT;
   zSHORT    lTempInteger_0;
   zSHORT    lTempInteger_1;


   //:// Generate an attribute entry for each attribute with mapping in the GroupSet. Note that these are all at the same
   //:// hierarchical level since we're assuming no tables within a GroupSet. However, the controls in the GroupSet may well be
   //:// organized hierarchically and must thus be processed recursively.

   //:// Sort the Controls in position order so they will be in the same order as in the XSLT. (This probably isn't
   //:// necessary, but it will simply debugging.)
   //:OrderEntityForView( vReportDef, "Control", "PSDLG_Y A PSDLG_X A" )
   OrderEntityForView( vReportDef, "Control", "PSDLG_Y A PSDLG_X A" );

   //:// Process each Control. The processing rule is simple:
   //:// If the control has mapping, build an XML node.
   //:// If the control doesn't have mapping, ignore it.
   //:// The only issue is that we must step down a level if the Control has a subcontrol.

   //:FOR EACH vReportDef.Control
   RESULT = SetCursorFirstEntity( vReportDef, "Control", "" );
   while ( RESULT > zCURSOR_UNCHANGED )
   {
      //:IF vReportDef.CtrlCtrl EXISTS
      lTempInteger_0 = CheckExistenceOfEntity( vReportDef, "CtrlCtrl" );
      if ( lTempInteger_0 == 0 )
      {
         //:SetViewToSubobject( vReportDef, "CtrlCtrl" )
         SetViewToSubobject( vReportDef, "CtrlCtrl" );
         //:GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingObjectViewName, szOutputLine, lFileHandle, szIndentationValue )
         oTZRPSRCO_GenerateXML_CtlRecurs( vReportDef, vSourceOIHier, szDrivingObjectViewName, szOutputLine, lFileHandle, szIndentationValue );
         //:ResetViewFromSubobject( vReportDef )
         ResetViewFromSubobject( vReportDef );
         //:ELSE
      }
      else
      {

         //:IF vReportDef.CtrlMapER_Attribute EXISTS
         lTempInteger_1 = CheckExistenceOfEntity( vReportDef, "CtrlMapER_Attribute" );
         if ( lTempInteger_1 == 0 )
         {
            //:// Format XML Line for Attribute.
            //:szReturnedAttributeValue = ""
            ZeidonStringCopy( szReturnedAttributeValue, 1, 0, "", 1, 0, 5001 );
            //:szConvertedAttributeValue = ""
            ZeidonStringCopy( szConvertedAttributeValue, 1, 0, "", 1, 0, 5001 );
            //:szAttributeName = vReportDef.CtrlMapER_Attribute.Name
            GetVariableFromAttribute( szAttributeName, 0, 'S', 33, vReportDef, "CtrlMapER_Attribute", "Name", "", 0 );
            //:szEntityName    = vReportDef.CtrlMapRelatedEntity.Name
            GetVariableFromAttribute( szEntityName, 0, 'S', 33, vReportDef, "CtrlMapRelatedEntity", "Name", "", 0 );
            //:IF vReportDef.CtrlMapView.Name = szDrivingObjectViewName   // Check if mapping if from Driving Object View.
            if ( CompareAttributeToString( vReportDef, "CtrlMapView", "Name", szDrivingObjectViewName ) == 0 )
            {
               //:// Mapping is from hierarchical view.
               //:CreateViewFromView( vSourceOI, vSourceOIHier )
               CreateViewFromView( &vSourceOI, vSourceOIHier );
               //:GetStringFromAttributeByContext( szReturnedAttributeValue, vSourceOI, szEntityName, szAttributeName, "", 5000 )
               GetStringFromAttributeByContext( szReturnedAttributeValue, vSourceOI, szEntityName, szAttributeName, "", 5000 );
               //:DropView( vSourceOI )
               DropView( vSourceOI );
               //:ELSE
            }
            else
            {
               //:// Mapping is from separate view.
               //:szMappingName = vReportDef.CtrlMapView.Name
               GetVariableFromAttribute( szMappingName, 0, 'S', 33, vReportDef, "CtrlMapView", "Name", "", 0 );
               //:GET VIEW vMappingOI NAMED szMappingName
               RESULT = GetViewByName( &vMappingOI, szMappingName, vReportDef, zLEVEL_TASK );
               //:GetStringFromAttributeByContext( szReturnedAttributeValue, vMappingOI, szEntityName, szAttributeName, "", 5000 )
               GetStringFromAttributeByContext( szReturnedAttributeValue, vMappingOI, szEntityName, szAttributeName, "", 5000 );
            }

            //:END

            //:ConvertXML_SpecialCharacters( vReportDef, szConvertedAttributeValue, szReturnedAttributeValue, 5000 )
            ConvertXML_SpecialCharacters( vReportDef, szConvertedAttributeValue, szReturnedAttributeValue, 5000 );
            //://szConvertedAttributeValue = szReturnedAttributeValue

            //:szOutputLine = szIndentationValue + "  " + "<" + szEntityName + "." + szAttributeName + ">" + szConvertedAttributeValue
            ZeidonStringCopy( szOutputLine, 1, 0, szIndentationValue, 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, "  ", 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, "<", 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, szEntityName, 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, ".", 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, szAttributeName, 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, szConvertedAttributeValue, 1, 0, 5001 );
            //:szOutputLine = szOutputLine + "</" + szEntityName + "." + szAttributeName + ">"
            ZeidonStringConcat( szOutputLine, 1, 0, "</", 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, szEntityName, 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, ".", 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, szAttributeName, 1, 0, 5001 );
            ZeidonStringConcat( szOutputLine, 1, 0, ">", 1, 0, 5001 );
            //:GenerateXMLLine( vReportDef, lFileHandle, szOutputLine )
            oTZRPSRCO_GenerateXMLLine( vReportDef, lFileHandle, szOutputLine );
         }


         //:END
      }

      RESULT = SetCursorNextEntity( vReportDef, "Control", "" );
      //:END
   }

   //:END
   return( 0 );
// END
}



#ifdef __cplusplus
}
#endif
