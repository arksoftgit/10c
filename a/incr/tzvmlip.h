/////////////////////////////////////////////////////////////////////
//
// >>>TZVMLIP.H
//
// this is the header file for the wrapper functions to be used
//  from VML.
//
/////////////////////////////////////////////////////////////////////
//
//
// CHANGE LOG
//
// 2002.05.08  ASE
//    re-added zReplicate, zRTrim, zLTrim, zRight, zLeft, zMax, zMin, zAbs, zCeil,
//    zFloor, zSqrt, IsNumeric, zLike, zSoundex, zRemoveAllBlanks
//    zTrim renamed to zRTrim due to conflicts with zGlobal1.c
//
// 2002.03.04  DGC
//    Removed zReplicate, zTrim, zLTrim, zRight, zLeft, zMax, zMin, zAbs, zCeil,
//    zFloor, zSqrt, IsNumeric, zLike, zSoundex, zRemoveAllBlanks
//
// 2002.01.18  ASE
//    added 15 new operations
//
// 2001.10.08  HH
//    added FindFile functions.
//
// 2001.06.26  RG
//   added operation: GenFullQualPathFromRelPath
//
// 2000.11.28  HH
//   const char change zStartSystemCommand
//
// 2000.07.27  RG  Z2000
//   Added prototypes: zSearchSubString and zReplaceSubString
//
// 2000.06.11  BL  All
//   Added zCharToOem for ADW EXPORT
//
// 1999.08.06  BL  All  new operations
//
// 1999.04.22  US  Z10  New operation
//   new operation for searching and replacing in strings
// 1999.03.13  HH
//   new.
//

#ifdef __cplusplus
extern "C"
{
#endif

zOPER_EXPORT void OPERATION
zSysTranslateString( zPCHAR szString, const char* szUpperLower );

zOPER_EXPORT int OPERATION
zSysReadLine( zVIEW  lpTaskView,
              zPCHAR szBuffer,
              zLONG  lFileHandle,
              zULONG ulMaxLen);

zOPER_EXPORT zSHORT OPERATION
zSysReadLineLth( zVIEW  lpTaskView,
                 zPCHAR szBuffer,
                 zLONG  lFileHandle,
                 zULONG uLth );

zOPER_EXPORT zSHORT OPERATION
zSearchAndReplace(zPCHAR  szTarget,
                  zCULONG ulTargetLen,
                  zCPCHAR szSearch,
                  zCPCHAR szReplace);
zOPER_EXPORT zSHORT OPERATION
zSearchAndReplaceWord( zPCHAR  pchTarget,
                       zULONG  ulTargetLth,
                       zCPCHAR cpcSearch,
                       zCPCHAR cpcReplace,
                       zCPCHAR cpcDelimiters );
zOPER_EXPORT zLONG OPERATION
zGetStringLen( zCPCHAR szSourceString );

zOPER_EXPORT zSHORT OPERATION
zStartSystemCommand( zVIEW  vViewToWindow,
                     zCPCHAR   szCommand );

zOPER_EXPORT zLONG OPERATION
zReadLine( zVIEW  lpTaskView,
           zPCHAR pszBuffer,
           zLONG  ulMaxStringLen,
           zLONG  ulFileHandle );

zOPER_EXPORT zSHORT OPERATION
zDialogIsActive( zPCHAR szDialogName );

zOPER_EXPORT zSHORT OPERATION
zToUpper( zCPCHAR szSourceString,
          zPCHAR  pszTargetString );

zOPER_EXPORT zLONG OPERATION
zGetDayOfYearFromDate( zCPCHAR szDateOrDateTime );

zOPER_EXPORT zLONG OPERATION
zGetDateFromDayOfYear(  zPCHAR   pszReturnDate,
                  zUSHORT  unYear,
                  zUSHORT  unDayOfYear );

zOPER_EXPORT zSHORT OPERATION
zStringIsDate( zCPCHAR szSourceString );

zOPER_EXPORT zSHORT OPERATION
zYearIsLeapYear( zSHORT nYear );

zOPER_EXPORT zSHORT OPERATION
zDateIsLeapYear( zCPCHAR szDateOrDateTime );

zOPER_EXPORT zSHORT OPERATION
zGetDecrementDate( zCPCHAR szSourceDate,
                   zPCHAR  pszTargetDate );

zOPER_EXPORT zSHORT OPERATION
zGetIncrementDate( zCPCHAR szSourceDate,
                   zPCHAR  pszTargetDate );

zOPER_EXPORT zSHORT OPERATION
zGetGermanNameOfMonth( zCPCHAR  szSourceDate,
                       zPCHAR   pszMonthName );

zOPER_EXPORT zSHORT OPERATION
zIntegerToString( zPCHAR   pszTargetString,
              zLONG     ulTargetStringLength,
              zLONG     ulValue );

zOPER_EXPORT zLONG OPERATION
zModulo( zLONG ulDivident,
       zLONG ulDivisor );

zOPER_EXPORT zLONG OPERATION
zGetStringWithoutBlank( zCPCHAR  szSourceString,
                        zPCHAR   pszTargetString );

zOPER_EXPORT zLONG OPERATION
zGetStringLenWithoutBlank( zCPCHAR szSourceString );

zOPER_EXPORT zSHORT OPERATION
zViewIsUpdateable( zVIEW vView );

zOPER_EXPORT zSHORT OPERATION
zFindTextValueInAttribute( zCPCHAR szTextValue,
                           zVIEW   vView,
                           zCPCHAR szEntityName,
                           zCPCHAR szAttributeName );

zOPER_EXPORT zSHORT OPERATION
zGetFirstEntityNameForView( zVIEW   vViewToInstance,
                            zPCHAR  pszEntityName );

zOPER_EXPORT zSHORT OPERATION
zGetNextEntityNameForView(    zVIEW    vViewToInstance,
                     zPCHAR   pszEntityName );

zOPER_EXPORT zSHORT OPERATION
zGetFirstAttributeNameForEntity( zVIEW    vViewToInstance,
                                 zCPCHAR  szEntityName,
                                 zPCHAR   pszAttributeName );

zOPER_EXPORT zSHORT OPERATION
zGetNextAttributeNameForEntity( zVIEW     vViewToInstance,
                                zCPCHAR   szEntityName,
                                zPCHAR    pszAttributeName );

zOPER_EXPORT zSHORT OPERATION
zLodContainsEntity( zVIEW    vViewToInstance,
                    zCPCHAR  szEntityNameToSearch );

zOPER_EXPORT zSHORT OPERATION
zLodContainsAttribute( zVIEW   vViewToInstance,
                       zCPCHAR szEntityName,
                       zCPCHAR szAttributeNameToSearch );

zOPER_EXPORT zLONG OPERATION
zStringToInteger( zCPCHAR szStr );

zOPER_EXPORT zLONG OPERATION
zCharToOem( zPCHAR szBuffer );

zOPER_EXPORT zSHORT OPERATION
zSearchSubString( zCPCHAR pszSearchString,
                  zCPCHAR pszSubString,
                  zCPCHAR pszDirection,
                  zSHORT  nPosition );

zOPER_EXPORT zSHORT OPERATION
zReplaceSubString( zPCHAR  pszTargetString,
                   zSHORT  nStartPos,
                   zSHORT  nEndPos,
                   zCPCHAR pszSubString );

zOPER_EXPORT zSHORT OPERATION
GenFullQualPathFromRelPath(char *szPathname,
                           char *szBasedir,
                           char *szOutput,
                           short nMaxLth );

zOPER_EXPORT zLONG OPERATION
FindFileStart( zCPCHAR szFileString,
               zPCHAR szReturnString );

zOPER_EXPORT zSHORT  OPERATION
FindFileNext( zLONG  lHandle,
              zPCHAR szReturnString );

zOPER_EXPORT zSHORT OPERATION
FindFileClose( zLONG ulHandle );

zOPER_EXPORT zSHORT OPERATION
zReplicate( zCPCHAR String, zUSHORT Repeats,
            zPCHAR OutString, zUSHORT OutStringLth );

zOPER_EXPORT zSHORT OPERATION
zRTrim( zCPCHAR String, zPCHAR OutString, zUSHORT OutStringLth );

zOPER_EXPORT zSHORT OPERATION
zLTrim( zCPCHAR String, zPCHAR OutString, zUSHORT OutStringLth );

zOPER_EXPORT zSHORT OPERATION
zRight( zCPCHAR String, zUSHORT Numright, zPCHAR OutString,
        zUSHORT OutStringLth );

zOPER_EXPORT zSHORT OPERATION
zLeft( zCPCHAR String, zUSHORT Numleft, zPCHAR OutString,
       zUSHORT OutStringLth );

zOPER_EXPORT zSHORT OPERATION
zRound( zVIEW     lpView,
        zPDECIMAL pdDecimalValue,
        zSHORT    nScales );

zOPER_EXPORT zSHORT OPERATION
zExponent( zVIEW       lpView,
           zPDECIMAL   pdDecimalReturnValue,
           zSHORT      nBase,
           zSHORT      nExponent );

zOPER_EXPORT zDECIMAL OPERATION
zMax( zVIEW lpView, zDECIMAL Value1, zDECIMAL Value2 );

zOPER_EXPORT zDECIMAL OPERATION
zMin( zVIEW lpView, zDECIMAL Value1, zDECIMAL Value2 );

zOPER_EXPORT zDECIMAL OPERATION
zAbs( zVIEW lpView, zDECIMAL Value );

zOPER_EXPORT zDECIMAL OPERATION
zCeil( zVIEW lpView, zDECIMAL Value );

zOPER_EXPORT zDECIMAL OPERATION
zFloor( zVIEW lpView, zDECIMAL Value );

zOPER_EXPORT zDECIMAL OPERATION
zSqrt( zVIEW lpView, zDECIMAL Value );

zOPER_EXPORT zSHORT OPERATION
IsNumeric( zCPCHAR String );

zOPER_EXPORT zSHORT OPERATION
zLike( zCPCHAR Wild, zCPCHAR String );

zOPER_EXPORT zSHORT OPERATION
zSoundex( zCPCHAR String, zPCHAR SoundexString );

zOPER_EXPORT zSHORT OPERATION
zRemoveAllBlanks( zCPCHAR cpcString, zPCHAR pchOutString, zUSHORT uOutStringLth );

zOPER_EXPORT zSHORT OPERATION
zExpungeAllSubstring( zPCHAR pchOriginal,
                      zPCHAR pchExpunge );

zOPER_EXPORT zSHORT OPERATION
zTagFromText( zCPCHAR cpcString, zPCHAR pchOutString, zUSHORT uOutStringLth );

zOPER_EXPORT zSHORT OPERATION
zGetDelimitedString( zPCHAR pchSource,
                     zPCHAR pchDelimiter,
                     zPCHAR pchResultString,
                     zSHORT nResultStringLth );

zOPER_EXPORT zSHORT OPERATION
zAppendQuotedString( zPCHAR pchTarget,
                     zPCHAR pchAppendString,
                     zPCHAR pchSkipString,
                     zPCHAR pchDfltQuoteChar );


#ifdef __cplusplus
}
#endif
