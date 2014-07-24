	TITLE	C:\10C\A\oe\KZOEXMLA.C
	.386P
include listing.inc
if @Version gt 510
.model FLAT
else
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
_BSS	SEGMENT DWORD USE32 PUBLIC 'BSS'
_BSS	ENDS
$$SYMBOLS	SEGMENT BYTE USE32 'DEBSYM'
$$SYMBOLS	ENDS
$$TYPES	SEGMENT BYTE USE32 'DEBTYP'
$$TYPES	ENDS
_TLS	SEGMENT DWORD USE32 PUBLIC 'TLS'
_TLS	ENDS
;	COMDAT ??_C@_0BN@CPNA@KEY?5WAS?5BLOB?5?9?5NOT?5SUPPORTED?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08MNDP@?5?$CFs?$DN?$CC?$CFs?$CC?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03IDOL@?$DM?$CFs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_02OOND@?4?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@KMBD@?5zIncreFlags?$DN?$CC?$CFs?$CC?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01FAFK@?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09KJOA@?$DM?$CB?$FLCDATA?$FL?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04HDJJ@?5?$CFs?$DN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08OJHJ@?$FN?$FN?$DO?$DM?1?$CFs?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05NLEO@?$DM?1?$CFs?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@CLKD@?5zLevel?$DN?$CC?$CFld?$CC?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@FDNE@?5zEName?$DN?$CC?$CFs?$CC?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08JLEF@?4?4?4?4?4?4?4?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@CEJJ@?5zEKey?$DN?$CC?$CFlx?$CC?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@PCKP@?5zCursor?$DN?$CCY?$CC?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@FFBM@?5zSelect?$CFd?$DN?$CCY?$CC?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04GGNJ@?$DM?$CFs?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@IJPH@?$DMListEntryValue?5Name?$DN?$CC?$CFs?$CC?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@LFLB@CurrentValue?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@PFOL@?$DM?1ListEntryValue?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@GGBI@?$DMControl?5Name?$DN?$CC?$CFs?$CC?5Type?$DN?$CC?$CFs?$CC?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09KHJE@ListEntry?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@DALI@?$DMListEntry?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@IMJE@?$DMListEntry?5zSelect1?$DN?$CCY?$CC?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@BMND@?$DM?1ListEntry?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@NDAB@ComboValue?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@JEIO@?$DMComboValue?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@MLPJ@?$DMComboValue?5zSelect1?$DN?$CCY?$CC?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@JKC@?$DM?1ComboValue?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@DMN@?$DM?1Control?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07FNBF@Control?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@BABB@ListEntryValue?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CM@DIIJ@?$DM?$DPxml?5version?$DN?$CC1?40?$CC?5encoding?$DN?$CCis@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DF@PFPK@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CF@FHBM@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05LOON@?$DMzOI?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06EJFA@?$DM?1zOI?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@FEMM@?$CIxml?$CJ?5Element?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@NAAN@?$CIxml?$CJ?5Attrib?5?$CFs?5?$DN?5?$CFs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08BKDG@zAppName?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@DBIO@zObjectName?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@DGBK@zIncreFlags?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DA@NBNK@?$CIxml?$CJ?5Parent?5mismatch?5?$CI?$CFs?5?$CB?$DN?5?$CFs?$CJ@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@NHGM@XML?5Parser?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05NKPI@zEKey?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CN@IKCJ@?$CIxml?$CJ?5Could?5not?5find?5Entity?4Attr@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03PHMG@zOI?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06PGCJ@zLevel?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@BLNO@Located?5zLevel?5parsing?5XML?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05CKBG@Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06GMHC@zEName?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DD@LKE@?$CIxml?$CJ?5Could?5not?5find?5Entity?4Simp@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DD@JDBG@?$CIxml?$CJ?5ERROR?5?9?5Attribute?5without?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@NINK@Depth?5Error?5parsing?5XML?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CH@CKH@More?5than?5one?5zLEVEL_?5option?5req@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@MNMJ@with?5zLEVEL_SAME?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08NCCJ@vSubtask?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@OKDL@?$CFs?5at?5line?5?$CFd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@OPMH@?$CIxml?$CJ?5Error?5txt?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@ECNE@Error?5parsing?5XML?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01FCOA@?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04BAFE@?$CF?$CKs?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CH@JMAI@Invalid?5view?5for?5CommitOI_ToXML_@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_fnContainsSpecialChar@4
_TEXT	SEGMENT
_pchAttribValue$ = 8
_pch$ = -4
_lRC$ = -8
_fnContainsSpecialChar@4 PROC NEAR

; 143  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 144  :    zPCHAR pch;
; 145  :    zLONG  lRC = 0;

	mov	DWORD PTR _lRC$[ebp], 0

; 146  : 
; 147  :    for ( pch = pchAttribValue; *pch; pch++ )

	mov	eax, DWORD PTR _pchAttribValue$[ebp]
	mov	DWORD PTR _pch$[ebp], eax
	jmp	SHORT $L7867
$L7868:
	mov	ecx, DWORD PTR _pch$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$[ebp], ecx
$L7867:
	mov	edx, DWORD PTR _pch$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L7869

; 149  :       switch ( *pch )
; 150  :       {

	mov	ecx, DWORD PTR _pch$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	DWORD PTR -12+[ebp], edx
	mov	eax, DWORD PTR -12+[ebp]
	sub	eax, 9
	mov	DWORD PTR -12+[ebp], eax
	cmp	DWORD PTR -12+[ebp], 53			; 00000035H
	ja	SHORT $L7876
	mov	edx, DWORD PTR -12+[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR $L9149[edx]
	jmp	DWORD PTR $L9150[ecx*4]
$L7874:

; 151  :          case '&':
; 152  :          case '<':
; 153  :          case '>':
; 154  :          case '\'':
; 155  :          case '\"':
; 156  :             lRC++;

	mov	eax, DWORD PTR _lRC$[ebp]
	add	eax, 1
	mov	DWORD PTR _lRC$[ebp], eax

; 157  :             break;

	jmp	SHORT $L7871
$L7875:

; 158  : 
; 159  :          case '\n':
; 160  :          case '\r':
; 161  :          case '\t':
; 162  :             // These chars are alright so just break.
; 163  :             break;

	jmp	SHORT $L7871
$L7876:

; 164  : 
; 165  :          default:
; 166  :             if ( *pch < 32 || *pch > 127 )

	mov	ecx, DWORD PTR _pch$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 32					; 00000020H
	jl	SHORT $L7878
	mov	eax, DWORD PTR _pch$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 127				; 0000007fH
	jle	SHORT $L7877
$L7878:

; 167  :                lRC++;

	mov	edx, DWORD PTR _lRC$[ebp]
	add	edx, 1
	mov	DWORD PTR _lRC$[ebp], edx
$L7877:
$L7871:

; 172  :    }

	jmp	SHORT $L7868
$L7869:

; 173  : 
; 174  :    return( lRC );

	mov	eax, DWORD PTR _lRC$[ebp]

; 175  : }

	mov	esp, ebp
	pop	ebp
	ret	4
$L9150:
	DD	$L7875
	DD	$L7874
	DD	$L7876
$L9149:
	DB	0
	DB	0
	DB	2
	DB	2
	DB	0
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	1
	DB	2
	DB	2
	DB	2
	DB	1
	DB	1
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	1
	DB	2
	DB	1
_fnContainsSpecialChar@4 ENDP
_TEXT	ENDS
PUBLIC	_fnAppendKeyAttribs@8
PUBLIC	??_C@_0BN@CPNA@KEY?5WAS?5BLOB?5?9?5NOT?5SUPPORTED?$AA@ ; `string'
PUBLIC	??_C@_08MNDP@?5?$CFs?$DN?$CC?$CFs?$CC?$AA@	; `string'
EXTRN	__imp__sprintf:NEAR
EXTRN	_GetValueFromRecord@24:NEAR
EXTRN	_GetStringFromRecord@20:NEAR
EXTRN	_strcpy:NEAR
EXTRN	_strlen:NEAR
EXTRN	_g_pfnGetPtr:DWORD
EXTRN	_SysAllocMemory@20:NEAR
EXTRN	__imp___ltoa:NEAR
EXTRN	_SysFreeMemory@4:NEAR
;	COMDAT ??_C@_0BN@CPNA@KEY?5WAS?5BLOB?5?9?5NOT?5SUPPORTED?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_0BN@CPNA@KEY?5WAS?5BLOB?5?9?5NOT?5SUPPORTED?$AA@ DB 'KEY WAS BLOB -'
	DB	' NOT SUPPORTED', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_08MNDP@?5?$CFs?$DN?$CC?$CFs?$CC?$AA@
_DATA	SEGMENT
??_C@_08MNDP@?5?$CFs?$DN?$CC?$CFs?$CC?$AA@ DB ' %s="%s"', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpWriteInfo$ = 8
_lpViewEntity$ = 12
_lpViewAttrib$ = -20
_ulLth$ = -24
_pchTempValueBuffer$ = -16
_lTempBufferLth$ = -12
_hTempValueBuffer$ = -8
_nReturn$ = -4
_szAttribIdent$7896 = -524
_pchAttribValue$7897 = -528
_chType$7904 = -532
_lCharCount$7908 = -536
_pch$7910 = -540
_fnAppendKeyAttribs@8 PROC NEAR

; 180  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 544				; 00000220H

; 181  :    LPVIEWATTRIB lpViewAttrib;
; 182  :    zULONG       ulLth;
; 183  :    zPCHAR       pchTempValueBuffer = 0;

	mov	DWORD PTR _pchTempValueBuffer$[ebp], 0

; 184  :    zULONG       lTempBufferLth = 0;

	mov	DWORD PTR _lTempBufferLth$[ebp], 0

; 185  :    zLONG        hTempValueBuffer;
; 186  :    zSHORT       nReturn = zCALL_ERROR;

	mov	WORD PTR _nReturn$[ebp], -16		; fffffff0H

; 187  : 
; 188  :    for ( lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );
; 189  :          lpViewAttrib;
; 190  :          lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib ) )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+179]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	jmp	SHORT $L7893
$L7894:
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
$L7893:
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	$L7895

; 192  :       zCHAR         szAttribIdent[ 500 ];
; 193  :       zPCHAR        pchAttribValue;
; 194  :       // LPATTRIBFLAGS lpAttribFlags;
; 195  : 
; 196  :       if ( lpViewAttrib->szDerivedOper[ 0 ] &&
; 197  :            lpViewAttrib->bPersist == FALSE )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+213]
	test	edx, edx
	je	SHORT $L7898
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7898

; 199  :          continue;

	jmp	SHORT $L7894
$L7898:

; 201  : 
; 202  :       // Skip non-key attributes here.  Will be written as attribute later.
; 203  :       if ( lpViewAttrib->bKey == FALSE )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7899

; 204  :          continue;

	jmp	SHORT $L7894
$L7899:

; 205  : 
; 206  :       if ( lpViewAttrib->cType == zTYPE_BLOB )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	cmp	edx, 66					; 00000042H
	jne	SHORT $L7900

; 208  :          zstrcpy( szAttribIdent, "KEY WAS BLOB - NOT SUPPORTED" );

	push	OFFSET FLAT:??_C@_0BN@CPNA@KEY?5WAS?5BLOB?5?9?5NOT?5SUPPORTED?$AA@ ; `string'
	lea	eax, DWORD PTR _szAttribIdent$7896[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 210  :       else

	jmp	$L7941
$L7900:

; 211  :       if ( lpViewAttrib->cType == zTYPE_STRING )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	cmp	edx, 83					; 00000053H
	jne	$L7903

; 213  :          zCHAR  chType;
; 214  : 
; 215  :          // Get ptr to attr value.
; 216  :          GetValueFromRecord( lpWriteInfo->vTemp, lpViewEntity, lpViewAttrib,
; 217  :                              &pchAttribValue, &chType, &ulLth );

	lea	eax, DWORD PTR _ulLth$[ebp]
	push	eax
	lea	ecx, DWORD PTR _chType$7904[ebp]
	push	ecx
	lea	edx, DWORD PTR _pchAttribValue$7897[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+4]
	push	eax
	call	_GetValueFromRecord@24

; 218  : 
; 219  :          // Check to see if the attribute is NULL.  The we check ulLth = 1 for
; 220  :          // strings because the length contains the null-terminator.
; 221  :          if ( ulLth <= 1 || pchAttribValue == 0 )

	cmp	DWORD PTR _ulLth$[ebp], 1
	jbe	SHORT $L7906
	cmp	DWORD PTR _pchAttribValue$7897[ebp], 0
	jne	SHORT $L7905
$L7906:

; 223  :             // Key attributes should never be null, but if it is, put it out
; 224  :             // by sending an empty string.
; 225  :             szAttribIdent[ 0 ] = 0;

	mov	BYTE PTR _szAttribIdent$7896[ebp], 0

; 226  :             ulLth = 0;

	mov	DWORD PTR _ulLth$[ebp], 0

; 228  :          else

	jmp	$L7938
$L7905:

; 230  :             zLONG lCharCount;
; 231  :             ulLth--;  // Subtract the null-terminator from the length.

	mov	ecx, DWORD PTR _ulLth$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _ulLth$[ebp], ecx

; 232  : 
; 233  :             // Check to see how many chars there are that need to be
; 234  :             // translated (e.g. '&').
; 235  :             if ( (lCharCount = fnContainsSpecialChar( pchAttribValue ) ) )

	mov	edx, DWORD PTR _pchAttribValue$7897[ebp]
	push	edx
	call	_fnContainsSpecialChar@4
	mov	DWORD PTR _lCharCount$7908[ebp], eax
	cmp	DWORD PTR _lCharCount$7908[ebp], 0
	je	$L7909

; 237  :                zPCHAR pch;
; 238  : 
; 239  :                // We need to convert some characters into XML entities.  For
; 240  :                // example, change '&' into '&amp;'.
; 241  : 
; 242  :                // First create a temp buffer.  Make sure it's big enough to
; 243  :                // handle the buffer plus conversions.
; 244  :                if ( lTempBufferLth < ulLth + lCharCount * 6 )

	mov	eax, DWORD PTR _lCharCount$7908[ebp]
	imul	eax, 6
	mov	ecx, DWORD PTR _ulLth$[ebp]
	add	ecx, eax
	cmp	DWORD PTR _lTempBufferLth$[ebp], ecx
	jae	SHORT $L7911

; 246  :                   if ( pchTempValueBuffer )

	cmp	DWORD PTR _pchTempValueBuffer$[ebp], 0
	je	SHORT $L7912

; 247  :                      SysFreeMemory( hTempValueBuffer );

	mov	edx, DWORD PTR _hTempValueBuffer$[ebp]
	push	edx
	call	_SysFreeMemory@4
$L7912:

; 248  : 
; 249  :                   hTempValueBuffer = SysAllocMemory( &pchTempValueBuffer,
; 250  :                                                      ulLth + lCharCount * 6,
; 251  :                                                      0, 0, 0 );

	push	0
	push	0
	push	0
	mov	eax, DWORD PTR _lCharCount$7908[ebp]
	imul	eax, 6
	mov	ecx, DWORD PTR _ulLth$[ebp]
	add	ecx, eax
	push	ecx
	lea	edx, DWORD PTR _pchTempValueBuffer$[ebp]
	push	edx
	call	_SysAllocMemory@20
	mov	DWORD PTR _hTempValueBuffer$[ebp], eax

; 252  :                   if ( pchTempValueBuffer == 0 )

	cmp	DWORD PTR _pchTempValueBuffer$[ebp], 0
	jne	SHORT $L7913

; 253  :                      goto EndOfFunction;

	jmp	$EndOfFunction$7914
$L7913:

; 254  : 
; 255  :                   lTempBufferLth = ulLth + lCharCount * 6;

	mov	eax, DWORD PTR _lCharCount$7908[ebp]
	imul	eax, 6
	mov	ecx, DWORD PTR _ulLth$[ebp]
	add	ecx, eax
	mov	DWORD PTR _lTempBufferLth$[ebp], ecx
$L7911:

; 257  : 
; 258  :                // Now copy chars over, converting special ones.
; 259  :                for ( pch = pchTempValueBuffer;
; 260  :                      *pchAttribValue;
; 261  :                      pchAttribValue++ )

	mov	edx, DWORD PTR _pchTempValueBuffer$[ebp]
	mov	DWORD PTR _pch$7910[ebp], edx
	jmp	SHORT $L7915
$L7916:
	mov	eax, DWORD PTR _pchAttribValue$7897[ebp]
	add	eax, 1
	mov	DWORD PTR _pchAttribValue$7897[ebp], eax
$L7915:
	mov	ecx, DWORD PTR _pchAttribValue$7897[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	$L7917

; 263  :                   switch ( *pchAttribValue )
; 264  :                   {

	mov	eax, DWORD PTR _pchAttribValue$7897[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	DWORD PTR -544+[ebp], ecx
	mov	edx, DWORD PTR -544+[ebp]
	sub	edx, 9
	mov	DWORD PTR -544+[ebp], edx
	cmp	DWORD PTR -544+[ebp], 53		; 00000035H
	ja	$L7928
	mov	ecx, DWORD PTR -544+[ebp]
	xor	eax, eax
	mov	al, BYTE PTR $L9152[ecx]
	jmp	DWORD PTR $L9153[eax*4]
$L7922:

; 265  :                      case '&':
; 266  :                         *pch++ = '&';

	mov	edx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [edx], 38			; 00000026H
	mov	eax, DWORD PTR _pch$7910[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7910[ebp], eax

; 267  :                         *pch++ = 'a';

	mov	ecx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [ecx], 97			; 00000061H
	mov	edx, DWORD PTR _pch$7910[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$7910[ebp], edx

; 268  :                         *pch++ = 'm';

	mov	eax, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [eax], 109			; 0000006dH
	mov	ecx, DWORD PTR _pch$7910[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7910[ebp], ecx

; 269  :                         *pch++ = 'p';

	mov	edx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [edx], 112			; 00000070H
	mov	eax, DWORD PTR _pch$7910[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7910[ebp], eax

; 270  :                         *pch++ = ';';

	mov	ecx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [ecx], 59			; 0000003bH
	mov	edx, DWORD PTR _pch$7910[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$7910[ebp], edx

; 271  :                         break;

	jmp	$L7919
$L7923:

; 272  : 
; 273  :                      case '<':
; 274  :                         *pch++ = '&';

	mov	eax, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [eax], 38			; 00000026H
	mov	ecx, DWORD PTR _pch$7910[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7910[ebp], ecx

; 275  :                         *pch++ = 'l';

	mov	edx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [edx], 108			; 0000006cH
	mov	eax, DWORD PTR _pch$7910[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7910[ebp], eax

; 276  :                         *pch++ = 't';

	mov	ecx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [ecx], 116			; 00000074H
	mov	edx, DWORD PTR _pch$7910[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$7910[ebp], edx

; 277  :                         *pch++ = ';';

	mov	eax, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [eax], 59			; 0000003bH
	mov	ecx, DWORD PTR _pch$7910[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7910[ebp], ecx

; 278  :                         break;

	jmp	$L7919
$L7924:

; 279  : 
; 280  :                      case '>':
; 281  :                         *pch++ = '&';

	mov	edx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [edx], 38			; 00000026H
	mov	eax, DWORD PTR _pch$7910[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7910[ebp], eax

; 282  :                         *pch++ = 'g';

	mov	ecx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [ecx], 103			; 00000067H
	mov	edx, DWORD PTR _pch$7910[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$7910[ebp], edx

; 283  :                         *pch++ = 't';

	mov	eax, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [eax], 116			; 00000074H
	mov	ecx, DWORD PTR _pch$7910[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7910[ebp], ecx

; 284  :                         *pch++ = ';';

	mov	edx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [edx], 59			; 0000003bH
	mov	eax, DWORD PTR _pch$7910[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7910[ebp], eax

; 285  :                         break;

	jmp	$L7919
$L7925:

; 286  : 
; 287  :                      case '\'':
; 288  :                         *pch++ = '&';

	mov	ecx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [ecx], 38			; 00000026H
	mov	edx, DWORD PTR _pch$7910[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$7910[ebp], edx

; 289  :                         *pch++ = 'a';

	mov	eax, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [eax], 97			; 00000061H
	mov	ecx, DWORD PTR _pch$7910[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7910[ebp], ecx

; 290  :                         *pch++ = 'p';

	mov	edx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [edx], 112			; 00000070H
	mov	eax, DWORD PTR _pch$7910[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7910[ebp], eax

; 291  :                         *pch++ = 'o';

	mov	ecx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [ecx], 111			; 0000006fH
	mov	edx, DWORD PTR _pch$7910[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$7910[ebp], edx

; 292  :                         *pch++ = 's';

	mov	eax, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [eax], 115			; 00000073H
	mov	ecx, DWORD PTR _pch$7910[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7910[ebp], ecx

; 293  :                         *pch++ = ';';

	mov	edx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [edx], 59			; 0000003bH
	mov	eax, DWORD PTR _pch$7910[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7910[ebp], eax

; 294  :                         break;

	jmp	$L7919
$L7926:

; 295  : 
; 296  :                      case '\"':
; 297  :                         *pch++ = '&';

	mov	ecx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [ecx], 38			; 00000026H
	mov	edx, DWORD PTR _pch$7910[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$7910[ebp], edx

; 298  :                         *pch++ = 'q';

	mov	eax, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [eax], 113			; 00000071H
	mov	ecx, DWORD PTR _pch$7910[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7910[ebp], ecx

; 299  :                         *pch++ = 'u';

	mov	edx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [edx], 117			; 00000075H
	mov	eax, DWORD PTR _pch$7910[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7910[ebp], eax

; 300  :                         *pch++ = 'o';

	mov	ecx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [ecx], 111			; 0000006fH
	mov	edx, DWORD PTR _pch$7910[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$7910[ebp], edx

; 301  :                         *pch++ = 't';

	mov	eax, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [eax], 116			; 00000074H
	mov	ecx, DWORD PTR _pch$7910[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7910[ebp], ecx

; 302  :                         *pch++ = ';';

	mov	edx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [edx], 59			; 0000003bH
	mov	eax, DWORD PTR _pch$7910[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7910[ebp], eax

; 303  :                         break;

	jmp	$L7919
$L7927:

; 304  : 
; 305  :                      case '\n':
; 306  :                      case '\r':
; 307  :                      case '\t':
; 308  :                         *pch++ = *pchAttribValue;

	mov	ecx, DWORD PTR _pch$7910[ebp]
	mov	edx, DWORD PTR _pchAttribValue$7897[ebp]
	mov	al, BYTE PTR [edx]
	mov	BYTE PTR [ecx], al
	mov	ecx, DWORD PTR _pch$7910[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7910[ebp], ecx

; 309  :                         break;

	jmp	$L7919
$L7928:

; 310  : 
; 311  :                      default:
; 312  :                         if ( *pchAttribValue < 32 || *pchAttribValue > 127 )

	mov	edx, DWORD PTR _pchAttribValue$7897[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 32					; 00000020H
	jl	SHORT $L7930
	mov	ecx, DWORD PTR _pchAttribValue$7897[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 127				; 0000007fH
	jle	$L7929
$L7930:

; 314  :                            // Convert the char to '&#ddd;' where 'ddd' is its ASCII value.
; 315  :                            *pch++ = '&';

	mov	eax, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [eax], 38			; 00000026H
	mov	ecx, DWORD PTR _pch$7910[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7910[ebp], ecx

; 316  :                            *pch++ = '#';

	mov	edx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [edx], 35			; 00000023H
	mov	eax, DWORD PTR _pch$7910[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7910[ebp], eax

; 317  :                            zltoa( (zLONG) (zUCHAR) *pchAttribValue, pch );

	push	10					; 0000000aH
	mov	ecx, DWORD PTR _pch$7910[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchAttribValue$7897[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx]
	push	eax
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH
$L7934:

; 318  :                            while ( *++pch );       // Skip to null terminator.

	mov	ecx, DWORD PTR _pch$7910[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7910[ebp], ecx
	mov	edx, DWORD PTR _pch$7910[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L7935
	jmp	SHORT $L7934
$L7935:

; 319  :                            *pch++ = ';';

	mov	ecx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [ecx], 59			; 0000003bH
	mov	edx, DWORD PTR _pch$7910[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$7910[ebp], edx

; 321  :                         else

	jmp	SHORT $L7936
$L7929:

; 322  :                            *pch++ = *pchAttribValue;

	mov	eax, DWORD PTR _pch$7910[ebp]
	mov	ecx, DWORD PTR _pchAttribValue$7897[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR _pch$7910[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7910[ebp], eax
$L7936:
$L7919:

; 327  : 
; 328  :                } // for...

	jmp	$L7916
$L7917:

; 329  : 
; 330  :                // Now that we've translated the attribute's value into the
; 331  :                // temp buffer set attrib value ptr to point to the buffer.
; 332  :                *pch++ = 0;

	mov	ecx, DWORD PTR _pch$7910[ebp]
	mov	BYTE PTR [ecx], 0
	mov	edx, DWORD PTR _pch$7910[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$7910[ebp], edx

; 333  :                ulLth = (zLONG) (pch - pchTempValueBuffer) - 1;

	mov	eax, DWORD PTR _pch$7910[ebp]
	sub	eax, DWORD PTR _pchTempValueBuffer$[ebp]
	sub	eax, 1
	mov	DWORD PTR _ulLth$[ebp], eax

; 334  :                //pchAttribValue = pchTempValueBuffer;
; 335  :                zstrcpy( szAttribIdent, pchTempValueBuffer );

	mov	ecx, DWORD PTR _pchTempValueBuffer$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szAttribIdent$7896[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 338  :             else

	jmp	SHORT $L7938
$L7909:

; 340  :                zstrcpy( szAttribIdent, pchAttribValue );

	mov	eax, DWORD PTR _pchAttribValue$7897[ebp]
	push	eax
	lea	ecx, DWORD PTR _szAttribIdent$7896[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 341  :                ulLth = zstrlen( szAttribIdent );

	lea	edx, DWORD PTR _szAttribIdent$7896[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _ulLth$[ebp], eax
$L7938:

; 347  :       else

	jmp	SHORT $L7941
$L7903:

; 349  :          // Get attr value.  If return is -1 then the attr is NULL.
; 350  :          if ( GetStringFromRecord( lpWriteInfo->vTemp, lpViewEntity, lpViewAttrib,
; 351  :                                    szAttribIdent,
; 352  :                                    sizeof( szAttribIdent ) ) == -1 )

	push	500					; 000001f4H
	lea	eax, DWORD PTR _szAttribIdent$7896[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	call	_GetStringFromRecord@20
	movsx	edx, ax
	cmp	edx, -1
	jne	SHORT $L7940

; 354  :             // Attr is NULL.  Skip null attributes if flag is set.
; 355  :             szAttribIdent[ 0 ] = 0;

	mov	BYTE PTR _szAttribIdent$7896[ebp], 0

; 356  :             ulLth = 0;

	mov	DWORD PTR _ulLth$[ebp], 0

; 358  :          else

	jmp	SHORT $L7941
$L7940:

; 360  :             ulLth = zstrlen( szAttribIdent );

	lea	eax, DWORD PTR _szAttribIdent$7896[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _ulLth$[ebp], eax
$L7941:

; 363  : 
; 364  :       // Append the key attribute name and vaue to entity buffer.
; 365  :       zsprintf( &lpWriteInfo->szBuffer[ zstrlen( lpWriteInfo->szBuffer ) ],
; 366  :                 " %s=\"%s\"", lpViewAttrib->szName, szAttribIdent );

	lea	ecx, DWORD PTR _szAttribIdent$7896[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	push	OFFSET FLAT:??_C@_08MNDP@?5?$CFs?$DN?$CC?$CFs?$CC?$AA@ ; `string'
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	add	eax, 20					; 00000014H
	push	eax
	call	_strlen
	add	esp, 4
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	lea	edx, DWORD PTR [ecx+eax+20]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 367  : 
; 368  :    } // for each lpViewAttrib...

	jmp	$L7894
$L7895:

; 369  : 
; 370  :    nReturn = 0;

	mov	WORD PTR _nReturn$[ebp], 0
$EndOfFunction$7914:

; 371  : 
; 372  : EndOfFunction:
; 373  :    if ( pchTempValueBuffer )

	cmp	DWORD PTR _pchTempValueBuffer$[ebp], 0
	je	SHORT $L7943

; 374  :       SysFreeMemory( hTempValueBuffer );

	mov	eax, DWORD PTR _hTempValueBuffer$[ebp]
	push	eax
	call	_SysFreeMemory@4
$L7943:

; 375  : 
; 376  :    return( nReturn );

	mov	ax, WORD PTR _nReturn$[ebp]

; 377  : 
; 378  : } // fnWriteKeyAttribs

	mov	esp, ebp
	pop	ebp
	ret	8
$L9153:
	DD	$L7927
	DD	$L7926
	DD	$L7922
	DD	$L7925
	DD	$L7923
	DD	$L7924
	DD	$L7928
$L9152:
	DB	0
	DB	0
	DB	6
	DB	6
	DB	0
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	1
	DB	6
	DB	6
	DB	6
	DB	2
	DB	3
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	4
	DB	6
	DB	5
_fnAppendKeyAttribs@8 ENDP
_TEXT	ENDS
PUBLIC	_fnWriteAttribs@20
PUBLIC	??_C@_03IDOL@?$DM?$CFs?$AA@			; `string'
PUBLIC	??_C@_02OOND@?4?4?$AA@				; `string'
PUBLIC	??_C@_0BC@KMBD@?5zIncreFlags?$DN?$CC?$CFs?$CC?$AA@ ; `string'
PUBLIC	??_C@_01FAFK@?$DO?$AA@				; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_09KJOA@?$DM?$CB?$FLCDATA?$FL?$AA@		; `string'
PUBLIC	??_C@_04HDJJ@?5?$CFs?$DN?$AA@			; `string'
PUBLIC	??_C@_08OJHJ@?$FN?$FN?$DO?$DM?1?$CFs?$DO?$AA@	; `string'
PUBLIC	??_C@_05NLEO@?$DM?1?$CFs?$DO?$AA@		; `string'
EXTRN	_GetAttributeFlags@16:NEAR
EXTRN	_strcat:NEAR
EXTRN	_strcmp:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_03IDOL@?$DM?$CFs?$AA@
_DATA	SEGMENT
??_C@_03IDOL@?$DM?$CFs?$AA@ DB '<%s', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_02OOND@?4?4?$AA@
_DATA	SEGMENT
??_C@_02OOND@?4?4?$AA@ DB '..', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@KMBD@?5zIncreFlags?$DN?$CC?$CFs?$CC?$AA@
_DATA	SEGMENT
??_C@_0BC@KMBD@?5zIncreFlags?$DN?$CC?$CFs?$CC?$AA@ DB ' zIncreFlags="%s"', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_01FAFK@?$DO?$AA@
_DATA	SEGMENT
??_C@_01FAFK@?$DO?$AA@ DB '>', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_09KJOA@?$DM?$CB?$FLCDATA?$FL?$AA@
_DATA	SEGMENT
??_C@_09KJOA@?$DM?$CB?$FLCDATA?$FL?$AA@ DB '<![CDATA[', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_04HDJJ@?5?$CFs?$DN?$AA@
_DATA	SEGMENT
??_C@_04HDJJ@?5?$CFs?$DN?$AA@ DB ' %s=', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08OJHJ@?$FN?$FN?$DO?$DM?1?$CFs?$DO?$AA@
_DATA	SEGMENT
??_C@_08OJHJ@?$FN?$FN?$DO?$DM?1?$CFs?$DO?$AA@ DB ']]></%s>', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_05NLEO@?$DM?1?$CFs?$DO?$AA@
_DATA	SEGMENT
??_C@_05NLEO@?$DM?1?$CFs?$DO?$AA@ DB '</%s>', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTaskView$ = 8
_lpWriteInfo$ = 12
_nLevel$ = 16
_lpViewEntity$ = 20
_lFlags$ = 24
_lpViewAttrib$ = -532
_lpAttribFlags$ = -540
_szAttribTag$ = -520
_pchAttribValue$ = -528
_bCloseCDATA$ = -16
_chType$ = -12
_ulLth$ = -536
_pchTempValueBuffer$ = -524
_lTempBufferLth$ = -20
_hTempValueBuffer$ = -8
_bSkipIfNull$ = -544
_nReturn$ = -4
_szIncreFlags$7985 = -556
_lCharCount$8011 = -560
_pch$8013 = -564
_fnWriteAttribs@20 PROC NEAR

; 386  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 572				; 0000023cH

; 387  :    LPVIEWATTRIB  lpViewAttrib;
; 388  :    LPATTRIBFLAGS lpAttribFlags;
; 389  :    zCHAR         szAttribTag[ 500 ];
; 390  :    zPCHAR        pchAttribValue;
; 391  :    zBOOL         bCloseCDATA;
; 392  :    zCHAR         chType;
; 393  :    zULONG        ulLth;
; 394  :    zPCHAR        pchTempValueBuffer = 0;

	mov	DWORD PTR _pchTempValueBuffer$[ebp], 0

; 395  :    zULONG        lTempBufferLth = 0;

	mov	DWORD PTR _lTempBufferLth$[ebp], 0

; 396  :    zLONG         hTempValueBuffer;
; 397  :    zBOOL         bSkipIfNull;
; 398  :    zSHORT        nReturn = zCALL_ERROR;

	mov	WORD PTR _nReturn$[ebp], -16		; fffffff0H

; 399  : 
; 400  :    szAttribTag[ 0 ] = 0;  // initialize to empty string

	mov	BYTE PTR _szAttribTag$[ebp], 0

; 401  :    lTempBufferLth = 10000;

	mov	DWORD PTR _lTempBufferLth$[ebp], 10000	; 00002710H

; 402  :    hTempValueBuffer = SysAllocMemory( &pchTempValueBuffer, lTempBufferLth, 0, 0, 0 );

	push	0
	push	0
	push	0
	mov	eax, DWORD PTR _lTempBufferLth$[ebp]
	push	eax
	lea	ecx, DWORD PTR _pchTempValueBuffer$[ebp]
	push	ecx
	call	_SysAllocMemory@20
	mov	DWORD PTR _hTempValueBuffer$[ebp], eax

; 403  : 
; 404  :    for ( lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );
; 405  :          lpViewAttrib;
; 406  :          lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib ) )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+179]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	jmp	SHORT $L7970
$L7971:
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
$L7970:
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	$L7972

; 408  :       if ( lpViewAttrib->szDerivedOper[ 0 ] && lpViewAttrib->bPersist == FALSE )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+213]
	test	ecx, ecx
	je	SHORT $L7973
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+193]
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7973

; 410  :          continue;

	jmp	SHORT $L7971
$L7973:

; 412  : 
; 413  :       // Skip key attributes here.  Written with entity.
; 414  :       if ( (lpWriteInfo->lControl & zXML_KEYATTRIBSASIDENT) && lpViewAttrib->bKey )

	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	and	edx, 16					; 00000010H
	test	edx, edx
	je	SHORT $L7974
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7974

; 416  :          continue;

	jmp	SHORT $L7971
$L7974:

; 418  : 
; 419  :       GetAttributeFlags( &lpAttribFlags, lpWriteInfo->vTemp, lpViewEntity, lpViewAttrib );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	lea	eax, DWORD PTR _lpAttribFlags$[ebp]
	push	eax
	call	_GetAttributeFlags@16

; 420  : 
; 421  :       if ( (lFlags & 1) == 0 )  // not doing "simple attributes"

	mov	ecx, DWORD PTR _lFlags$[ebp]
	and	ecx, 1
	test	ecx, ecx
	jne	$L7998

; 423  :          if ( lpViewAttrib->szXML_SimpleName[ 0 ] == 0 )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	eax, BYTE PTR [edx+43]
	test	eax, eax
	jne	$L7976

; 425  :             if ( lpViewAttrib->szXML_ExternalName[ 0 ] == 0 )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+76]
	test	edx, edx
	jne	SHORT $L7977

; 426  :                zsprintf( szAttribTag, "<%s", lpViewAttrib->szName );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_03IDOL@?$DM?$CFs?$AA@	; `string'
	lea	ecx, DWORD PTR _szAttribTag$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 427  :             else

	jmp	SHORT $L7979
$L7977:

; 428  :                zsprintf( szAttribTag, "<%s", lpViewAttrib->szXML_ExternalName );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	add	edx, 76					; 0000004cH
	push	edx
	push	OFFSET FLAT:??_C@_03IDOL@?$DM?$CFs?$AA@	; `string'
	lea	eax, DWORD PTR _szAttribTag$[ebp]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH
$L7979:

; 429  : 
; 430  :             // If the user only wants updated attributes then skip attributes that
; 431  :             // aren't flagged as updated.
; 432  :             if ( lpWriteInfo->lControl & zXML_UPDATEDONLY )

	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	and	edx, 4
	test	edx, edx
	je	SHORT $L7981

; 434  :                if ( lpAttribFlags->u.bFlags.bUpdated == FALSE )

	mov	eax, DWORD PTR _lpAttribFlags$[ebp]
	mov	ecx, DWORD PTR [eax]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7981

; 435  :                   continue;   // Attr is null so skip it.

	jmp	$L7971
$L7981:

; 437  : 
; 438  :             // Usually we won't send null attributes.  However, if we have to send
; 439  :             // attribute flags we'll have to send it if it's been changed.
; 440  :             bSkipIfNull = TRUE;

	mov	BYTE PTR _bSkipIfNull$[ebp], 1

; 441  :             if ( lpWriteInfo->lControl & zXML_INCREFLAGS )

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+12]
	and	eax, 2
	test	eax, eax
	je	SHORT $L7983

; 443  :                if ( lpAttribFlags->u.bFlags.bUpdated )

	mov	ecx, DWORD PTR _lpAttribFlags$[ebp]
	mov	edx, DWORD PTR [ecx]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L7983

; 444  :                   bSkipIfNull = FALSE;

	mov	BYTE PTR _bSkipIfNull$[ebp], 0
$L7983:

; 446  : 
; 447  :             // Add incremental update flags if so specified.
; 448  :             if ( lpWriteInfo->lControl & zXML_INCREFLAGS )

	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	and	ecx, 2
	test	ecx, ecx
	je	$L7995

; 450  :                zCHAR szIncreFlags[ 10 ] = "..";

	mov	dx, WORD PTR ??_C@_02OOND@?4?4?$AA@
	mov	WORD PTR _szIncreFlags$7985[ebp], dx
	mov	al, BYTE PTR ??_C@_02OOND@?4?4?$AA@+2
	mov	BYTE PTR _szIncreFlags$7985[ebp+2], al
	xor	ecx, ecx
	mov	DWORD PTR _szIncreFlags$7985[ebp+3], ecx
	mov	WORD PTR _szIncreFlags$7985[ebp+7], cx
	mov	BYTE PTR _szIncreFlags$7985[ebp+9], cl

; 451  : 
; 452  :                if ( lpAttribFlags->u.bFlags.bActivated )

	mov	edx, DWORD PTR _lpAttribFlags$[ebp]
	mov	eax, DWORD PTR [edx]
	and	eax, 1
	test	eax, eax
	je	SHORT $L7987

; 453  :                   szIncreFlags[ ATTRIB_FLAGS_ACTIVATED_IDX ] = 'Y';

	mov	BYTE PTR _szIncreFlags$7985[ebp], 89	; 00000059H
$L7987:

; 454  : 
; 455  :                if ( lpAttribFlags->u.bFlags.bUpdated )

	mov	ecx, DWORD PTR _lpAttribFlags$[ebp]
	mov	edx, DWORD PTR [ecx]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L7988

; 456  :                   szIncreFlags[ ATTRIB_FLAGS_UPDATED_IDX ] = 'Y';

	mov	BYTE PTR _szIncreFlags$7985[ebp+1], 89	; 00000059H
$L7988:

; 457  : 
; 458  :                // Don't bother writing the incre flags if none are set.
; 459  :                if ( zstrcmp( szIncreFlags, ".." ) != 0 )

	movsx	eax, BYTE PTR _szIncreFlags$7985[ebp]
	movsx	ecx, BYTE PTR ??_C@_02OOND@?4?4?$AA@
	cmp	eax, ecx
	jne	SHORT $L9155
	push	OFFSET FLAT:??_C@_02OOND@?4?4?$AA@	; `string'
	lea	edx, DWORD PTR _szIncreFlags$7985[ebp]
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -568+[ebp], eax
	jmp	SHORT $L9156
$L9155:
	movsx	eax, BYTE PTR _szIncreFlags$7985[ebp]
	movsx	ecx, BYTE PTR ??_C@_02OOND@?4?4?$AA@
	sub	eax, ecx
	xor	edx, edx
	test	eax, eax
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -568+[ebp], edx
$L9156:
	cmp	DWORD PTR -568+[ebp], 0
	je	SHORT $L7995

; 461  :                   zsprintf( szAttribTag + zstrlen( szAttribTag ),
; 462  :                             " zIncreFlags=\"%s\"", szIncreFlags );

	lea	eax, DWORD PTR _szIncreFlags$7985[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BC@KMBD@?5zIncreFlags?$DN?$CC?$CFs?$CC?$AA@ ; `string'
	lea	ecx, DWORD PTR _szAttribTag$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	lea	edx, DWORD PTR _szAttribTag$[ebp+eax]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH
$L7995:

; 465  : 
; 466  :             zstrcat( szAttribTag, ">" );

	push	OFFSET FLAT:??_C@_01FAFK@?$DO?$AA@	; `string'
	lea	eax, DWORD PTR _szAttribTag$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 467  : 
; 468  :             bCloseCDATA = FALSE;

	mov	BYTE PTR _bCloseCDATA$[ebp], 0

; 470  :          else

	jmp	SHORT $L7998
$L7976:

; 472  :             continue;  // skip since it's simple

	jmp	$L7971
$L7998:

; 475  : 
; 476  :       if ( lpViewAttrib->cType == zTYPE_BLOB )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	cmp	edx, 66					; 00000042H
	jne	SHORT $L7999

; 478  :          // Get ptr to attr value.
; 479  :          GetValueFromRecord( lpWriteInfo->vTemp, lpViewEntity, lpViewAttrib,
; 480  :                              &pchAttribValue, &chType, &ulLth );

	lea	eax, DWORD PTR _ulLth$[ebp]
	push	eax
	lea	ecx, DWORD PTR _chType$[ebp]
	push	ecx
	lea	edx, DWORD PTR _pchAttribValue$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+4]
	push	eax
	call	_GetValueFromRecord@24

; 481  : 
; 482  :          // Check to see if the attribute is NULL.  The we check ulLth = 1 for
; 483  :          // strings because the length contains the null-terminator.
; 484  :          if ( ulLth == 0 )

	cmp	DWORD PTR _ulLth$[ebp], 0
	jne	SHORT $L8000

; 486  :             // Make sure we don't have to send attr flags.
; 487  :             if ( bSkipIfNull )

	mov	ecx, DWORD PTR _bSkipIfNull$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L8001

; 488  :                continue;   // Attr is null so skip it.

	jmp	$L7971
$L8001:

; 489  : 
; 490  :             // If we get here then the attribute is null but it's been
; 491  :             // modified so we need to send the attribute flags.  We do this
; 492  :             // by sending a null attribute.
; 493  :             pchAttribValue = "";

	mov	DWORD PTR _pchAttribValue$[ebp], OFFSET FLAT:??_C@_00A@?$AA@ ; `string'

; 495  :          else

	jmp	SHORT $L8003
$L8000:

; 497  :             zstrcat( szAttribTag, "<![CDATA[" );

	push	OFFSET FLAT:??_C@_09KJOA@?$DM?$CB?$FLCDATA?$FL?$AA@ ; `string'
	lea	edx, DWORD PTR _szAttribTag$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 498  :             bCloseCDATA = TRUE;

	mov	BYTE PTR _bCloseCDATA$[ebp], 1
$L8003:

; 501  :       else

	jmp	$L8041
$L7999:

; 502  :       if ( lpViewAttrib->cType == zTYPE_STRING )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 83					; 00000053H
	jne	$L8006

; 504  :          // Get ptr to attr value.
; 505  :          GetValueFromRecord( lpWriteInfo->vTemp, lpViewEntity, lpViewAttrib,
; 506  :                              &pchAttribValue, &chType, &ulLth );

	lea	edx, DWORD PTR _ulLth$[ebp]
	push	edx
	lea	eax, DWORD PTR _chType$[ebp]
	push	eax
	lea	ecx, DWORD PTR _pchAttribValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	call	_GetValueFromRecord@24

; 507  : 
; 508  :          // Check to see if the attribute is NULL.  The we check ulLth = 1 for
; 509  :          // strings because the length contains the null-terminator.
; 510  :          if ( ulLth <= 1 || pchAttribValue == 0 )

	cmp	DWORD PTR _ulLth$[ebp], 1
	jbe	SHORT $L8008
	cmp	DWORD PTR _pchAttribValue$[ebp], 0
	jne	SHORT $L8007
$L8008:

; 512  :             // Make sure we don't have to send attr flags.
; 513  :             if ( bSkipIfNull )

	mov	eax, DWORD PTR _bSkipIfNull$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8009

; 514  :                continue;   // attribute is null so skip it

	jmp	$L7971
$L8009:

; 515  : 
; 516  :             // If we get here then the attribute is null but it's been
; 517  :             // modified so we need to send the attribute flags.  We do this
; 518  :             // by sending a null attribute.
; 519  :             pchAttribValue = "";

	mov	DWORD PTR _pchAttribValue$[ebp], OFFSET FLAT:??_C@_00A@?$AA@ ; `string'

; 520  :             ulLth = 0;

	mov	DWORD PTR _ulLth$[ebp], 0

; 522  :          else

	jmp	$L8012
$L8007:

; 524  :             zLONG lCharCount;
; 525  :             ulLth--;  // subtract the null-terminator from the length

	mov	ecx, DWORD PTR _ulLth$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _ulLth$[ebp], ecx

; 526  : 
; 527  :             // Check to see how many chars there are that need to be translated (e.g. '&').
; 528  :             if ( (lCharCount = fnContainsSpecialChar( pchAttribValue )) )

	mov	edx, DWORD PTR _pchAttribValue$[ebp]
	push	edx
	call	_fnContainsSpecialChar@4
	mov	DWORD PTR _lCharCount$8011[ebp], eax
	cmp	DWORD PTR _lCharCount$8011[ebp], 0
	je	$L8012

; 530  :                zPCHAR pch;
; 531  : 
; 532  :                // We need to convert some characters into XML entities.  For example,
; 533  :                // change '&' into '&amp;'.
; 534  : 
; 535  :                // First create a temp buffer.  Make sure it's big enough to handle the
; 536  :                // buffer plus conversions.
; 537  :                if ( lTempBufferLth < ulLth + lCharCount * 6 )

	mov	eax, DWORD PTR _lCharCount$8011[ebp]
	imul	eax, 6
	mov	ecx, DWORD PTR _ulLth$[ebp]
	add	ecx, eax
	cmp	DWORD PTR _lTempBufferLth$[ebp], ecx
	jae	SHORT $L8014

; 539  :                   if ( pchTempValueBuffer )

	cmp	DWORD PTR _pchTempValueBuffer$[ebp], 0
	je	SHORT $L8015

; 540  :                      SysFreeMemory( hTempValueBuffer );

	mov	edx, DWORD PTR _hTempValueBuffer$[ebp]
	push	edx
	call	_SysFreeMemory@4
$L8015:

; 541  : 
; 542  :                   hTempValueBuffer = SysAllocMemory( &pchTempValueBuffer,
; 543  :                                                      ulLth + lCharCount * 6,
; 544  :                                                      0, 0, 0 );

	push	0
	push	0
	push	0
	mov	eax, DWORD PTR _lCharCount$8011[ebp]
	imul	eax, 6
	mov	ecx, DWORD PTR _ulLth$[ebp]
	add	ecx, eax
	push	ecx
	lea	edx, DWORD PTR _pchTempValueBuffer$[ebp]
	push	edx
	call	_SysAllocMemory@20
	mov	DWORD PTR _hTempValueBuffer$[ebp], eax

; 545  :                   if ( pchTempValueBuffer == 0 )

	cmp	DWORD PTR _pchTempValueBuffer$[ebp], 0
	jne	SHORT $L8016

; 546  :                      goto EndOfFunction;

	jmp	$EndOfFunction$8017
$L8016:

; 547  : 
; 548  :                   lTempBufferLth = ulLth + lCharCount * 6;

	mov	eax, DWORD PTR _lCharCount$8011[ebp]
	imul	eax, 6
	mov	ecx, DWORD PTR _ulLth$[ebp]
	add	ecx, eax
	mov	DWORD PTR _lTempBufferLth$[ebp], ecx
$L8014:

; 550  : 
; 551  :                // Now copy chars over, converting special ones.
; 552  :                for ( pch = pchTempValueBuffer;
; 553  :                      *pchAttribValue;
; 554  :                      pchAttribValue++ )

	mov	edx, DWORD PTR _pchTempValueBuffer$[ebp]
	mov	DWORD PTR _pch$8013[ebp], edx
	jmp	SHORT $L8018
$L8019:
	mov	eax, DWORD PTR _pchAttribValue$[ebp]
	add	eax, 1
	mov	DWORD PTR _pchAttribValue$[ebp], eax
$L8018:
	mov	ecx, DWORD PTR _pchAttribValue$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	$L8020

; 556  :                   switch ( *pchAttribValue )
; 557  :                   {

	mov	eax, DWORD PTR _pchAttribValue$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	DWORD PTR -572+[ebp], ecx
	mov	edx, DWORD PTR -572+[ebp]
	sub	edx, 9
	mov	DWORD PTR -572+[ebp], edx
	cmp	DWORD PTR -572+[ebp], 53		; 00000035H
	ja	$L8031
	mov	ecx, DWORD PTR -572+[ebp]
	xor	eax, eax
	mov	al, BYTE PTR $L9157[ecx]
	jmp	DWORD PTR $L9158[eax*4]
$L8025:

; 558  :                      case '&':
; 559  :                         *pch++ = '&';

	mov	edx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [edx], 38			; 00000026H
	mov	eax, DWORD PTR _pch$8013[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8013[ebp], eax

; 560  :                         *pch++ = 'a';

	mov	ecx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [ecx], 97			; 00000061H
	mov	edx, DWORD PTR _pch$8013[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8013[ebp], edx

; 561  :                         *pch++ = 'm';

	mov	eax, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [eax], 109			; 0000006dH
	mov	ecx, DWORD PTR _pch$8013[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8013[ebp], ecx

; 562  :                         *pch++ = 'p';

	mov	edx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [edx], 112			; 00000070H
	mov	eax, DWORD PTR _pch$8013[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8013[ebp], eax

; 563  :                         *pch++ = ';';

	mov	ecx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [ecx], 59			; 0000003bH
	mov	edx, DWORD PTR _pch$8013[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8013[ebp], edx

; 564  :                         break;

	jmp	$L8022
$L8026:

; 565  : 
; 566  :                      case '<':
; 567  :                         *pch++ = '&';

	mov	eax, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [eax], 38			; 00000026H
	mov	ecx, DWORD PTR _pch$8013[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8013[ebp], ecx

; 568  :                         *pch++ = 'l';

	mov	edx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [edx], 108			; 0000006cH
	mov	eax, DWORD PTR _pch$8013[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8013[ebp], eax

; 569  :                         *pch++ = 't';

	mov	ecx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [ecx], 116			; 00000074H
	mov	edx, DWORD PTR _pch$8013[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8013[ebp], edx

; 570  :                         *pch++ = ';';

	mov	eax, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [eax], 59			; 0000003bH
	mov	ecx, DWORD PTR _pch$8013[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8013[ebp], ecx

; 571  :                         break;

	jmp	$L8022
$L8027:

; 572  : 
; 573  :                      case '>':
; 574  :                         *pch++ = '&';

	mov	edx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [edx], 38			; 00000026H
	mov	eax, DWORD PTR _pch$8013[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8013[ebp], eax

; 575  :                         *pch++ = 'g';

	mov	ecx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [ecx], 103			; 00000067H
	mov	edx, DWORD PTR _pch$8013[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8013[ebp], edx

; 576  :                         *pch++ = 't';

	mov	eax, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [eax], 116			; 00000074H
	mov	ecx, DWORD PTR _pch$8013[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8013[ebp], ecx

; 577  :                         *pch++ = ';';

	mov	edx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [edx], 59			; 0000003bH
	mov	eax, DWORD PTR _pch$8013[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8013[ebp], eax

; 578  :                         break;

	jmp	$L8022
$L8028:

; 579  : 
; 580  :                      case '\'':
; 581  :                         *pch++ = '&';

	mov	ecx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [ecx], 38			; 00000026H
	mov	edx, DWORD PTR _pch$8013[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8013[ebp], edx

; 582  :                         *pch++ = 'a';

	mov	eax, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [eax], 97			; 00000061H
	mov	ecx, DWORD PTR _pch$8013[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8013[ebp], ecx

; 583  :                         *pch++ = 'p';

	mov	edx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [edx], 112			; 00000070H
	mov	eax, DWORD PTR _pch$8013[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8013[ebp], eax

; 584  :                         *pch++ = 'o';

	mov	ecx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [ecx], 111			; 0000006fH
	mov	edx, DWORD PTR _pch$8013[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8013[ebp], edx

; 585  :                         *pch++ = 's';

	mov	eax, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [eax], 115			; 00000073H
	mov	ecx, DWORD PTR _pch$8013[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8013[ebp], ecx

; 586  :                         *pch++ = ';';

	mov	edx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [edx], 59			; 0000003bH
	mov	eax, DWORD PTR _pch$8013[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8013[ebp], eax

; 587  :                         break;

	jmp	$L8022
$L8029:

; 588  : 
; 589  :                      case '\"':
; 590  :                         *pch++ = '&';

	mov	ecx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [ecx], 38			; 00000026H
	mov	edx, DWORD PTR _pch$8013[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8013[ebp], edx

; 591  :                         *pch++ = 'q';

	mov	eax, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [eax], 113			; 00000071H
	mov	ecx, DWORD PTR _pch$8013[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8013[ebp], ecx

; 592  :                         *pch++ = 'u';

	mov	edx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [edx], 117			; 00000075H
	mov	eax, DWORD PTR _pch$8013[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8013[ebp], eax

; 593  :                         *pch++ = 'o';

	mov	ecx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [ecx], 111			; 0000006fH
	mov	edx, DWORD PTR _pch$8013[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8013[ebp], edx

; 594  :                         *pch++ = 't';

	mov	eax, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [eax], 116			; 00000074H
	mov	ecx, DWORD PTR _pch$8013[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8013[ebp], ecx

; 595  :                         *pch++ = ';';

	mov	edx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [edx], 59			; 0000003bH
	mov	eax, DWORD PTR _pch$8013[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8013[ebp], eax

; 596  :                         break;

	jmp	$L8022
$L8030:

; 597  : 
; 598  :                      case '\n':
; 599  :                      case '\r':
; 600  :                      case '\t':
; 601  :                         *pch++ = *pchAttribValue;

	mov	ecx, DWORD PTR _pch$8013[ebp]
	mov	edx, DWORD PTR _pchAttribValue$[ebp]
	mov	al, BYTE PTR [edx]
	mov	BYTE PTR [ecx], al
	mov	ecx, DWORD PTR _pch$8013[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8013[ebp], ecx

; 602  :                         break;

	jmp	$L8022
$L8031:

; 603  : 
; 604  :                      default:
; 605  :                         if ( *pchAttribValue < 32 || *pchAttribValue > 127 )

	mov	edx, DWORD PTR _pchAttribValue$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 32					; 00000020H
	jl	SHORT $L8033
	mov	ecx, DWORD PTR _pchAttribValue$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 127				; 0000007fH
	jle	$L8032
$L8033:

; 607  :                            // Convert the char to '&#ddd;' where 'ddd' is its ASCII value.
; 608  :                            *pch++ = '&';

	mov	eax, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [eax], 38			; 00000026H
	mov	ecx, DWORD PTR _pch$8013[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8013[ebp], ecx

; 609  :                            *pch++ = '#';

	mov	edx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [edx], 35			; 00000023H
	mov	eax, DWORD PTR _pch$8013[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8013[ebp], eax

; 610  :                            zltoa( (zLONG) (zUCHAR) *pchAttribValue, pch );

	push	10					; 0000000aH
	mov	ecx, DWORD PTR _pch$8013[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchAttribValue$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx]
	push	eax
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH
$L8037:

; 611  :                            while ( *++pch )  // skip to null terminator

	mov	ecx, DWORD PTR _pch$8013[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8013[ebp], ecx
	mov	edx, DWORD PTR _pch$8013[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L8038

; 613  :                            }

	jmp	SHORT $L8037
$L8038:

; 614  : 
; 615  :                            *pch++ = ';';

	mov	ecx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [ecx], 59			; 0000003bH
	mov	edx, DWORD PTR _pch$8013[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8013[ebp], edx

; 617  :                         else

	jmp	SHORT $L8039
$L8032:

; 618  :                            *pch++ = *pchAttribValue;

	mov	eax, DWORD PTR _pch$8013[ebp]
	mov	ecx, DWORD PTR _pchAttribValue$[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR _pch$8013[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8013[ebp], eax
$L8039:
$L8022:

; 623  : 
; 624  :                } // for...

	jmp	$L8019
$L8020:

; 625  : 
; 626  :                // Now that we've translated the attribute's value into the
; 627  :                // temp buffer, set attribute value ptr to point to the buffer.
; 628  :                *pch++ = 0;

	mov	ecx, DWORD PTR _pch$8013[ebp]
	mov	BYTE PTR [ecx], 0
	mov	edx, DWORD PTR _pch$8013[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8013[ebp], edx

; 629  :                ulLth = (zLONG) (pch - pchTempValueBuffer) - 1;

	mov	eax, DWORD PTR _pch$8013[ebp]
	sub	eax, DWORD PTR _pchTempValueBuffer$[ebp]
	sub	eax, 1
	mov	DWORD PTR _ulLth$[ebp], eax

; 630  :                pchAttribValue = pchTempValueBuffer;

	mov	ecx, DWORD PTR _pchTempValueBuffer$[ebp]
	mov	DWORD PTR _pchAttribValue$[ebp], ecx
$L8012:

; 637  :       else

	jmp	SHORT $L8041
$L8006:

; 639  :          // Get attribute value.  If return is -1 then the attribute is NULL so skip it.
; 640  :          if ( GetStringFromRecord( lpWriteInfo->vTemp, lpViewEntity, lpViewAttrib,
; 641  :                                    pchTempValueBuffer, lTempBufferLth ) == -1 )

	mov	edx, DWORD PTR _lTempBufferLth$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchTempValueBuffer$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	call	_GetStringFromRecord@20
	movsx	edx, ax
	cmp	edx, -1
	jne	SHORT $L8043

; 643  :             // Attribute is NULL.  Skip null attributes if flag is set.
; 644  :             if ( bSkipIfNull )

	mov	eax, DWORD PTR _bSkipIfNull$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8043

; 645  :                continue;

	jmp	$L7971
$L8043:

; 647  : 
; 648  :          pchAttribValue = pchTempValueBuffer;

	mov	ecx, DWORD PTR _pchTempValueBuffer$[ebp]
	mov	DWORD PTR _pchAttribValue$[ebp], ecx

; 649  :          ulLth = zstrlen( pchAttribValue );

	mov	edx, DWORD PTR _pchAttribValue$[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _ulLth$[ebp], eax
$L8041:

; 651  : 
; 652  :       if ( lFlags & 1 )  // doing "simple attributes"

	mov	eax, DWORD PTR _lFlags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L8044

; 654  :          if ( lpViewAttrib->szXML_SimpleName[ 0 ] )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+43]
	test	edx, edx
	je	SHORT $L8047

; 656  :             zsprintf( szAttribTag, " %s=", lpViewAttrib->szXML_SimpleName );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	add	eax, 43					; 0000002bH
	push	eax
	push	OFFSET FLAT:??_C@_04HDJJ@?5?$CFs?$DN?$AA@ ; `string'
	lea	ecx, DWORD PTR _szAttribTag$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 657  :             if ( pchAttribValue[ 0 ] )

	mov	edx, DWORD PTR _pchAttribValue$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L8047

; 659  :                zsprintf( szAttribTag, " %s=\"%s\"", lpViewAttrib->szXML_SimpleName, pchAttribValue );

	mov	ecx, DWORD PTR _pchAttribValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	add	edx, 43					; 0000002bH
	push	edx
	push	OFFSET FLAT:??_C@_08MNDP@?5?$CFs?$DN?$CC?$CFs?$CC?$AA@ ; `string'
	lea	eax, DWORD PTR _szAttribTag$[ebp]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 660  :                zstrcat( lpWriteInfo->szBuffer, szAttribTag );

	lea	ecx, DWORD PTR _szAttribTag$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	add	edx, 20					; 00000014H
	push	edx
	call	_strcat
	add	esp, 8
$L8047:

; 664  :       else

	jmp	$L8057
$L8044:

; 666  :          if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_STARTATTRIB,
; 667  :                                          szAttribTag, 0, nLevel,
; 668  :                                          lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+10424]
	push	ecx
	mov	dx, WORD PTR _nLevel$[ebp]
	push	edx
	push	0
	lea	eax, DWORD PTR _szAttribTag$[ebp]
	push	eax
	push	16					; 00000010H
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [edx+10420]
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8049

; 670  :             goto EndOfFunction;

	jmp	$EndOfFunction$8017
$L8049:

; 672  : 
; 673  :          if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_ATTRIBVALUE,
; 674  :                                          pchAttribValue, ulLth, nLevel,
; 675  :                                          lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+10424]
	push	edx
	mov	ax, WORD PTR _nLevel$[ebp]
	push	eax
	mov	ecx, DWORD PTR _ulLth$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchAttribValue$[ebp]
	push	edx
	push	64					; 00000040H
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [ecx+10420]
	movsx	edx, ax
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8050

; 677  :             goto EndOfFunction;

	jmp	$EndOfFunction$8017
$L8050:

; 679  : 
; 680  :          // Close the attribute value.  If necessary close the CDATA section too.
; 681  :          if ( bCloseCDATA )

	mov	eax, DWORD PTR _bCloseCDATA$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8051

; 682  :             zsprintf( szAttribTag, "]]></%s>", lpViewAttrib->szName );

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_08OJHJ@?$FN?$FN?$DO?$DM?1?$CFs?$DO?$AA@ ; `string'
	lea	edx, DWORD PTR _szAttribTag$[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 683  :          else

	jmp	SHORT $L8056
$L8051:

; 685  :             if ( lpViewAttrib->szXML_ExternalName[ 0 ] == 0 )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+76]
	test	ecx, ecx
	jne	SHORT $L8054

; 686  :                zsprintf( szAttribTag, "</%s>", lpViewAttrib->szName );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	push	OFFSET FLAT:??_C@_05NLEO@?$DM?1?$CFs?$DO?$AA@ ; `string'
	lea	eax, DWORD PTR _szAttribTag$[ebp]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 687  :             else

	jmp	SHORT $L8056
$L8054:

; 688  :                zsprintf( szAttribTag, "</%s>", lpViewAttrib->szXML_ExternalName );

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	add	ecx, 76					; 0000004cH
	push	ecx
	push	OFFSET FLAT:??_C@_05NLEO@?$DM?1?$CFs?$DO?$AA@ ; `string'
	lea	edx, DWORD PTR _szAttribTag$[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH
$L8056:

; 690  : 
; 691  :          if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_ENDATTRIB,
; 692  :                                          szAttribTag, 0, nLevel,
; 693  :                                          lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+10424]
	push	ecx
	mov	dx, WORD PTR _nLevel$[ebp]
	push	edx
	push	0
	lea	eax, DWORD PTR _szAttribTag$[ebp]
	push	eax
	push	32					; 00000020H
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [edx+10420]
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8057

; 695  :             goto EndOfFunction;

	jmp	SHORT $EndOfFunction$8017
$L8057:

; 698  : 
; 699  :    } // for each lpViewAttrib...

	jmp	$L7971
$L7972:

; 700  : 
; 701  :    nReturn = 0;

	mov	WORD PTR _nReturn$[ebp], 0
$EndOfFunction$8017:

; 702  : 
; 703  : EndOfFunction:
; 704  :    if ( pchTempValueBuffer )

	cmp	DWORD PTR _pchTempValueBuffer$[ebp], 0
	je	SHORT $L8058

; 705  :       SysFreeMemory( hTempValueBuffer );

	mov	ecx, DWORD PTR _hTempValueBuffer$[ebp]
	push	ecx
	call	_SysFreeMemory@4
$L8058:

; 706  : 
; 707  :    return( nReturn );

	mov	ax, WORD PTR _nReturn$[ebp]

; 708  : 
; 709  : } // fnWriteAttribs

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
$L9158:
	DD	$L8030
	DD	$L8029
	DD	$L8025
	DD	$L8028
	DD	$L8026
	DD	$L8027
	DD	$L8031
$L9157:
	DB	0
	DB	0
	DB	6
	DB	6
	DB	0
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	1
	DB	6
	DB	6
	DB	6
	DB	2
	DB	3
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	4
	DB	6
	DB	5
_fnWriteAttribs@20 ENDP
_TEXT	ENDS
PUBLIC	_fnWriteEntityStartTag@12
PUBLIC	??_C@_0O@CLKD@?5zLevel?$DN?$CC?$CFld?$CC?$AA@	; `string'
PUBLIC	??_C@_0N@FDNE@?5zEName?$DN?$CC?$CFs?$CC?$AA@	; `string'
PUBLIC	??_C@_08JLEF@?4?4?4?4?4?4?4?4?$AA@		; `string'
PUBLIC	??_C@_0N@CEJJ@?5zEKey?$DN?$CC?$CFlx?$CC?$AA@	; `string'
PUBLIC	??_C@_0N@PCKP@?5zCursor?$DN?$CCY?$CC?$AA@	; `string'
PUBLIC	??_C@_0P@FFBM@?5zSelect?$CFd?$DN?$CCY?$CC?$AA@	; `string'
EXTRN	_fnEstablishViewForInstance:NEAR
EXTRN	_g_pfnGetHndl:DWORD
;	COMDAT ??_C@_0O@CLKD@?5zLevel?$DN?$CC?$CFld?$CC?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_0O@CLKD@?5zLevel?$DN?$CC?$CFld?$CC?$AA@ DB ' zLevel="%ld"', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@FDNE@?5zEName?$DN?$CC?$CFs?$CC?$AA@
_DATA	SEGMENT
??_C@_0N@FDNE@?5zEName?$DN?$CC?$CFs?$CC?$AA@ DB ' zEName="%s"', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_08JLEF@?4?4?4?4?4?4?4?4?$AA@
_DATA	SEGMENT
??_C@_08JLEF@?4?4?4?4?4?4?4?4?$AA@ DB '........', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@CEJJ@?5zEKey?$DN?$CC?$CFlx?$CC?$AA@
_DATA	SEGMENT
??_C@_0N@CEJJ@?5zEKey?$DN?$CC?$CFlx?$CC?$AA@ DB ' zEKey="%lx"', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@PCKP@?5zCursor?$DN?$CCY?$CC?$AA@
_DATA	SEGMENT
??_C@_0N@PCKP@?5zCursor?$DN?$CCY?$CC?$AA@ DB ' zCursor="Y"', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@FFBM@?5zSelect?$CFd?$DN?$CCY?$CC?$AA@
_DATA	SEGMENT
??_C@_0P@FFBM@?5zSelect?$CFd?$DN?$CCY?$CC?$AA@ DB ' zSelect%d="Y"', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTaskView$ = 8
_lpWriteInfo$ = 12
_lpEntityInstance$ = 16
_hViewEntity$ = -16
_lpViewEntity$ = -8
_pchEntityName$ = -24
_pchRealEntityName$ = -28
_lpAbstractChild$ = -4
_lpAbstractChildEntity$ = -20
_bEntityNameNeeded$ = -12
_lpParent$8098 = -32
_szIncreFlags$8113 = -44
_hEntityInstance$8134 = -52
_lpViewEntityCsr$8136 = -56
_lpSrchSelectedInstance$8137 = -48
_fnWriteEntityStartTag@12 PROC NEAR

; 715  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 60					; 0000003cH

; 716  :    LPVIEWENTITY     hViewEntity = lpEntityInstance->hViewEntity;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR _hViewEntity$[ebp], ecx

; 717  :    LPVIEWENTITY     lpViewEntity = zGETPTR( hViewEntity );

	mov	edx, DWORD PTR _hViewEntity$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 718  :    zPCHAR           pchEntityName = lpViewEntity->szName;

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	mov	DWORD PTR _pchEntityName$[ebp], eax

; 719  :    zPCHAR           pchRealEntityName;
; 720  :    LPENTITYINSTANCE lpAbstractChild = 0;

	mov	DWORD PTR _lpAbstractChild$[ebp], 0

; 721  :    LPVIEWENTITY     lpAbstractChildEntity;
; 722  :    zBOOL            bEntityNameNeeded = FALSE;

	mov	BYTE PTR _bEntityNameNeeded$[ebp], 0

; 723  : 
; 724  :    if ( lpViewEntity->szXML_Name[ 0 ] )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, BYTE PTR [ecx+47]
	test	edx, edx
	je	SHORT $L8075

; 725  :       pchRealEntityName = lpViewEntity->szXML_Name;

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 47					; 0000002fH
	mov	DWORD PTR _pchRealEntityName$[ebp], eax

; 726  :    else

	jmp	SHORT $L8076
$L8075:

; 727  :       pchRealEntityName = lpViewEntity->szName;

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	mov	DWORD PTR _pchRealEntityName$[ebp], ecx
$L8076:

; 728  : 
; 729  :    // Check to make sure we have written the start tag for the parent.  If we
; 730  :    // are only writing entities that are updated it's possible we haven't.
; 731  :    if ( lpEntityInstance->hParent &&
; 732  :         lpEntityInstance->nLevel > lpWriteInfo->lpSubobjectRoot->nLevel &&
; 733  :         lpWriteInfo->pchEntityName[ lpEntityInstance->nLevel - 1 ] == 0 )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [edx+30], 0
	je	SHORT $L8077
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+16]
	movsx	edx, WORD PTR [eax+58]
	cmp	ecx, edx
	jle	SHORT $L8077
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	cmp	DWORD PTR [edx+ecx*4+10016], 0
	jne	SHORT $L8077

; 735  :       // The entity name at this level is 0 so we haven't written the parent's start tag
; 736  :       // yet.  Do it now.
; 737  :       fnWriteEntityStartTag( lpTaskView, lpWriteInfo, zGETPTR( lpEntityInstance->hParent ) );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	call	_fnWriteEntityStartTag@12
$L8077:

; 739  : 
; 740  :    // If the entity is an abstract child then the attribute values have
; 741  :    // already been written so we don't need to write a start tag.
; 742  :    if ( lpViewEntity->bAbstractChild )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+239]
	shr	edx, 12					; 0000000cH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8079

; 743  :       return( 0 );

	xor	eax, eax
	jmp	$L8066
$L8079:

; 744  : 
; 745  :    // If the entity is flagged as an abstract entity we need to do some
; 746  :    // extra processing so we can "fold up" the abstract child entity.
; 747  :    if ( lpViewEntity->bAbstract )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+239]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	$L8097

; 749  :       // Search for the abstract child.
; 750  :       for ( lpAbstractChild = zGETPTR( lpEntityInstance->hNextHier );
; 751  :             lpAbstractChild;
; 752  :             lpAbstractChild = zGETPTR( lpAbstractChild->hNextHier ) )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpAbstractChild$[ebp], eax
	jmp	SHORT $L8083
$L8084:
	mov	ecx, DWORD PTR _lpAbstractChild$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpAbstractChild$[ebp], eax
$L8083:
	cmp	DWORD PTR _lpAbstractChild$[ebp], 0
	je	$L8085

; 754  :          // If the child instance is at the same level as the current instance
; 755  :          // then there are no more children of lpEntityInstance.
; 756  :          if ( lpAbstractChild->nLevel <= lpEntityInstance->nLevel )

	mov	eax, DWORD PTR _lpAbstractChild$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jg	SHORT $L8086

; 758  :             lpAbstractChild = 0;

	mov	DWORD PTR _lpAbstractChild$[ebp], 0

; 759  :             break;

	jmp	$L8085
$L8086:

; 761  : 
; 762  :          // If lpAbstractChild is not a direct child of lpEntityInstance then
; 763  :          // skip it (and its twins if it has any).
; 764  :          if ( lpAbstractChild->nLevel > lpEntityInstance->nLevel + 1 )

	mov	ecx, DWORD PTR _lpAbstractChild$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	add	ecx, 1
	cmp	edx, ecx
	jle	SHORT $L8087
$L8089:

; 766  :             while ( lpAbstractChild->hNextTwin )

	mov	edx, DWORD PTR _lpAbstractChild$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8090

; 767  :                lpAbstractChild = zGETPTR( lpAbstractChild->hNextTwin );

	mov	eax, DWORD PTR _lpAbstractChild$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpAbstractChild$[ebp], eax
	jmp	SHORT $L8089
$L8090:

; 768  : 
; 769  :             continue;

	jmp	SHORT $L8084
$L8087:

; 771  : 
; 772  :          lpAbstractChildEntity = zGETPTR( lpAbstractChild->hViewEntity );

	mov	edx, DWORD PTR _lpAbstractChild$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpAbstractChildEntity$[ebp], eax

; 773  :          if ( lpAbstractChildEntity->bAbstractChild )

	mov	ecx, DWORD PTR _lpAbstractChildEntity$[ebp]
	mov	edx, DWORD PTR [ecx+239]
	shr	edx, 12					; 0000000cH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8093

; 775  :             // We found what we want.
; 776  :             pchEntityName = lpAbstractChildEntity->szName;

	mov	eax, DWORD PTR _lpAbstractChildEntity$[ebp]
	add	eax, 14					; 0000000eH
	mov	DWORD PTR _pchEntityName$[ebp], eax

; 777  :             if ( lpAbstractChildEntity->szXML_Name[ 0 ] )

	mov	ecx, DWORD PTR _lpAbstractChildEntity$[ebp]
	movsx	edx, BYTE PTR [ecx+47]
	test	edx, edx
	je	SHORT $L8094

; 778  :                pchRealEntityName = lpAbstractChildEntity->szXML_Name;

	mov	eax, DWORD PTR _lpAbstractChildEntity$[ebp]
	add	eax, 47					; 0000002fH
	mov	DWORD PTR _pchRealEntityName$[ebp], eax

; 779  :             else

	jmp	SHORT $L8095
$L8094:

; 780  :                pchRealEntityName = lpAbstractChildEntity->szName;

	mov	ecx, DWORD PTR _lpAbstractChildEntity$[ebp]
	add	ecx, 14					; 0000000eH
	mov	DWORD PTR _pchRealEntityName$[ebp], ecx
$L8095:

; 781  : 
; 782  :             // Because we are going to "fold up" the abstract entity we
; 783  :             // need to store the Abstract entity name in the XML
; 784  :             bEntityNameNeeded = TRUE;

	mov	BYTE PTR _bEntityNameNeeded$[ebp], 1

; 785  : 
; 786  :             break;

	jmp	SHORT $L8085
$L8093:

; 788  :       }

	jmp	$L8084
$L8085:

; 789  : 
; 790  :       // Check to see if we found an abstract child of the entity.
; 791  :       if ( lpAbstractChild == 0 )

	cmp	DWORD PTR _lpAbstractChild$[ebp], 0
	jne	SHORT $L8097

; 793  :          // No abstract child.  This means we are going to use the regular
; 794  :          // name of the abstract entity (i.e. not fold up). However, if the
; 795  :          // abstract entity is *recursive* then we will use the recursive
; 796  :          // parent name instead.
; 797  :          if ( lpViewEntity->bRecursive )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8097

; 799  :             LPVIEWENTITY lpParent;
; 800  : 
; 801  :             // Find the recursive parent.
; 802  :             for ( lpParent = zGETPTR( lpViewEntity->hParent );
; 803  :                   lpParent->bRecursivePar == FALSE;
; 804  :                   lpParent = zGETPTR( lpParent->hParent ) )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$8098[ebp], eax
	jmp	SHORT $L8101
$L8102:
	mov	eax, DWORD PTR _lpParent$8098[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$8098[ebp], eax
$L8101:
	mov	edx, DWORD PTR _lpParent$8098[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 29					; 0000001dH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8103

; 806  :                // Nothing needs to be done here.
; 807  :             }

	jmp	SHORT $L8102
$L8103:

; 808  : 
; 809  :             // Use the recursive parent name as the XML entity name.
; 810  :             pchEntityName = lpParent->szName;

	mov	ecx, DWORD PTR _lpParent$8098[ebp]
	add	ecx, 14					; 0000000eH
	mov	DWORD PTR _pchEntityName$[ebp], ecx

; 811  :             if ( lpParent->szXML_Name[ 0 ] )

	mov	edx, DWORD PTR _lpParent$8098[ebp]
	movsx	eax, BYTE PTR [edx+47]
	test	eax, eax
	je	SHORT $L8104

; 812  :                pchRealEntityName = lpParent->szXML_Name;

	mov	ecx, DWORD PTR _lpParent$8098[ebp]
	add	ecx, 47					; 0000002fH
	mov	DWORD PTR _pchRealEntityName$[ebp], ecx

; 813  :             else

	jmp	SHORT $L8105
$L8104:

; 814  :                pchRealEntityName = lpParent->szName;

	mov	edx, DWORD PTR _lpParent$8098[ebp]
	add	edx, 14					; 0000000eH
	mov	DWORD PTR _pchRealEntityName$[ebp], edx
$L8105:

; 815  : 
; 816  :             // Set flag to indicate we want the abstract entity's name
; 817  :             // in the XML.
; 818  :             bEntityNameNeeded = TRUE;

	mov	BYTE PTR _bEntityNameNeeded$[ebp], 1
$L8097:

; 824  : 
; 825  :    // Set entity cursor to point to lpEntityInstance.
; 826  :    fnEstablishViewForInstance( lpWriteInfo->vTemp, 0, lpEntityInstance );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 827  : 
; 828  :    // Build Entity tag.
; 829  :    zsprintf( lpWriteInfo->szBuffer, "<%s", pchRealEntityName );

	mov	eax, DWORD PTR _pchRealEntityName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_03IDOL@?$DM?$CFs?$AA@	; `string'
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	add	ecx, 20					; 00000014H
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 830  : 
; 831  :    // Add key attributes as Identifiers of the entity (based on control flag).
; 832  :    if ( lpWriteInfo->lControl & zXML_KEYATTRIBSASIDENT )

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+12]
	and	eax, 16					; 00000010H
	test	eax, eax
	je	SHORT $L8106

; 833  :       fnAppendKeyAttribs( lpWriteInfo, lpViewEntity );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	push	edx
	call	_fnAppendKeyAttribs@8
$L8106:

; 834  : 
; 835  :    // Add Zeidon info if needed.
; 836  :    if ( lpWriteInfo->lControl & zXML_ZEIDONINFO )

	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8110

; 838  :       zsprintf( &lpWriteInfo->szBuffer[ zstrlen( lpWriteInfo->szBuffer ) ],
; 839  :                 " zLevel=\"%ld\"", (zLONG) lpEntityInstance->nLevel );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	push	eax
	push	OFFSET FLAT:??_C@_0O@CLKD@?5zLevel?$DN?$CC?$CFld?$CC?$AA@ ; `string'
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	add	ecx, 20					; 00000014H
	push	ecx
	call	_strlen
	add	esp, 4
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	lea	eax, DWORD PTR [edx+eax+20]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 840  : 
; 841  :       // If we have decided that we need the LOD entity name then add it.
; 842  :       if ( bEntityNameNeeded )

	mov	ecx, DWORD PTR _bEntityNameNeeded$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L8110

; 843  :          zsprintf( &lpWriteInfo->szBuffer[ zstrlen( lpWriteInfo->szBuffer ) ],
; 844  :                    " zEName=\"%s\"", lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0N@FDNE@?5zEName?$DN?$CC?$CFs?$CC?$AA@ ; `string'
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	add	eax, 20					; 00000014H
	push	eax
	call	_strlen
	add	esp, 4
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	lea	edx, DWORD PTR [ecx+eax+20]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH
$L8110:

; 846  : 
; 847  :    // Add incremental update flags if so specified.
; 848  :    if ( lpWriteInfo->lControl & zXML_INCREFLAGS )

	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	and	ecx, 2
	test	ecx, ecx
	je	$L8129

; 850  :       zCHAR szIncreFlags[ 10 ] = "........";

	mov	edx, DWORD PTR ??_C@_08JLEF@?4?4?4?4?4?4?4?4?$AA@
	mov	DWORD PTR _szIncreFlags$8113[ebp], edx
	mov	eax, DWORD PTR ??_C@_08JLEF@?4?4?4?4?4?4?4?4?$AA@+4
	mov	DWORD PTR _szIncreFlags$8113[ebp+4], eax
	mov	cl, BYTE PTR ??_C@_08JLEF@?4?4?4?4?4?4?4?4?$AA@+8
	mov	BYTE PTR _szIncreFlags$8113[ebp+8], cl
	xor	edx, edx
	mov	BYTE PTR _szIncreFlags$8113[ebp+9], dl

; 851  : 
; 852  :       if ( lpEntityInstance->u.nInd.bHangingEntity )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8115

; 853  :          szIncreFlags[ ENTITY_FLAGS_HANGING_IDX ] = 'Y';

	mov	BYTE PTR _szIncreFlags$8113[ebp], 89	; 00000059H
$L8115:

; 854  :       if ( lpEntityInstance->u.nInd.bCreated )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	je	SHORT $L8116

; 855  :          szIncreFlags[ ENTITY_FLAGS_CREATED_IDX ] = 'Y';

	mov	BYTE PTR _szIncreFlags$8113[ebp+1], 89	; 00000059H
$L8116:

; 856  :       if ( lpEntityInstance->u.nInd.bUpdated )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 2
	and	edx, 1
	test	edx, edx
	je	SHORT $L8117

; 857  :          szIncreFlags[ ENTITY_FLAGS_UPDATED_IDX ] = 'Y';

	mov	BYTE PTR _szIncreFlags$8113[ebp+2], 89	; 00000059H
$L8117:

; 858  :       if ( lpEntityInstance->u.nInd.bDeleted )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8118

; 859  :          szIncreFlags[ ENTITY_FLAGS_DELETED_IDX ] = 'Y';

	mov	BYTE PTR _szIncreFlags$8113[ebp+3], 89	; 00000059H
$L8118:

; 860  :       if ( lpEntityInstance->u.nInd.bExcluded )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	je	SHORT $L8119

; 861  :          szIncreFlags[ ENTITY_FLAGS_EXCLUDED_IDX ] = 'Y';

	mov	BYTE PTR _szIncreFlags$8113[ebp+4], 89	; 00000059H
$L8119:

; 862  :       if ( lpEntityInstance->u.nInd.bIncluded )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	je	SHORT $L8120

; 863  :          szIncreFlags[ ENTITY_FLAGS_INCLUDED_IDX ] = 'Y';

	mov	BYTE PTR _szIncreFlags$8113[ebp+5], 89	; 00000059H
$L8120:

; 864  :       if ( lpEntityInstance->u.nInd.bHidden )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8121

; 865  :          szIncreFlags[ ENTITY_FLAGS_HIDDEN_IDX ] = 'Y';

	mov	BYTE PTR _szIncreFlags$8113[ebp+6], 89	; 00000059H
$L8121:

; 866  :       if ( lpEntityInstance->u.nInd.bTemporal )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8122

; 867  :          szIncreFlags[ ENTITY_FLAGS_TEMPORAL_IDX ] = 'Y';

	mov	BYTE PTR _szIncreFlags$8113[ebp+7], 89	; 00000059H
$L8122:

; 868  : 
; 869  :       // Don't bother writing the incre flags if none are set.
; 870  :       if ( zstrcmp( szIncreFlags, "........" ) != 0 )

	movsx	ecx, BYTE PTR _szIncreFlags$8113[ebp]
	movsx	edx, BYTE PTR ??_C@_08JLEF@?4?4?4?4?4?4?4?4?$AA@
	cmp	ecx, edx
	jne	SHORT $L9161
	push	OFFSET FLAT:??_C@_08JLEF@?4?4?4?4?4?4?4?4?$AA@ ; `string'
	lea	eax, DWORD PTR _szIncreFlags$8113[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -60+[ebp], eax
	jmp	SHORT $L9162
$L9161:
	movsx	ecx, BYTE PTR _szIncreFlags$8113[ebp]
	movsx	edx, BYTE PTR ??_C@_08JLEF@?4?4?4?4?4?4?4?4?$AA@
	sub	ecx, edx
	xor	eax, eax
	test	ecx, ecx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -60+[ebp], eax
$L9162:
	cmp	DWORD PTR -60+[ebp], 0
	je	SHORT $L8129

; 871  :          zsprintf( &lpWriteInfo->szBuffer[ zstrlen( lpWriteInfo->szBuffer ) ],
; 872  :                    " zIncreFlags=\"%s\"", szIncreFlags );

	lea	ecx, DWORD PTR _szIncreFlags$8113[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BC@KMBD@?5zIncreFlags?$DN?$CC?$CFs?$CC?$AA@ ; `string'
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	add	edx, 20					; 00000014H
	push	edx
	call	_strlen
	add	esp, 4
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	lea	edx, DWORD PTR [ecx+eax+20]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH
$L8129:

; 874  : 
; 875  :    // Add entity key if so specified.
; 876  :    if ( lpWriteInfo->lControl & zXML_ENTITYKEYS )

	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	and	ecx, 8
	test	ecx, ecx
	je	SHORT $L8130

; 878  :       // Append the entity key.
; 879  :       zsprintf( &lpWriteInfo->szBuffer[ zstrlen( lpWriteInfo->szBuffer ) ],
; 880  :                 " zEKey=\"%lx\"", lpEntityInstance->ulKey );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+50]
	push	eax
	push	OFFSET FLAT:??_C@_0N@CEJJ@?5zEKey?$DN?$CC?$CFlx?$CC?$AA@ ; `string'
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	add	ecx, 20					; 00000014H
	push	ecx
	call	_strlen
	add	esp, 4
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	lea	eax, DWORD PTR [edx+eax+20]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH
$L8130:

; 882  : 
; 883  :    // Write cursor positions if requested.
; 884  :    if ( lpWriteInfo->lControl & zXML_SAVECURSORPOSITION ||
; 885  :         lpWriteInfo->lControl & zXML_ZEIDONINFO )

	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	and	edx, 64					; 00000040H
	test	edx, edx
	jne	SHORT $L8133
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	and	ecx, 1
	test	ecx, ecx
	je	$L8149
$L8133:

; 887  :       LPENTITYINSTANCE   hEntityInstance = zGETHNDL( lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hEntityInstance$8134[ebp], eax

; 888  :       LPVIEWENTITYCSR    lpViewEntityCsr;
; 889  :       LPSELECTEDINSTANCE lpSrchSelectedInstance;
; 890  : 
; 891  :       // Check to see if the current lpEntityInstance is selected by a csr.
; 892  :       // First find the cursor pointer.  If the entity is not recursive, then
; 893  :       // we can just get the cursor by quick addition.
; 894  :       if ( lpViewEntity->bRecursiveSt )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8138

; 896  :          lpViewEntityCsr = zGETPTR( lpWriteInfo->lpViewCsr->hRootViewEntityCsr );

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$8136[ebp], eax

; 897  :          lpViewEntityCsr += lpViewEntity->nHierNbr - lpViewEntityCsr->nHierNbr;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	mov	ecx, DWORD PTR _lpViewEntityCsr$8136[ebp]
	movsx	edx, WORD PTR [ecx+24]
	sub	eax, edx
	imul	eax, 30					; 0000001eH
	mov	ecx, DWORD PTR _lpViewEntityCsr$8136[ebp]
	add	ecx, eax
	mov	DWORD PTR _lpViewEntityCsr$8136[ebp], ecx

; 899  :       else

	jmp	SHORT $L8140
$L8138:

; 901  :          lpViewEntityCsr = zGETPTR( lpWriteInfo->lpViewCsr->hFirstOD_EntityCsr );

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$8136[ebp], eax

; 902  :          lpViewEntityCsr += lpViewEntity->nHierNbr - 1;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	sub	eax, 1
	imul	eax, 30					; 0000001eH
	mov	ecx, DWORD PTR _lpViewEntityCsr$8136[ebp]
	add	ecx, eax
	mov	DWORD PTR _lpViewEntityCsr$8136[ebp], ecx
$L8140:

; 905  : 
; 906  :       if ( zGETPTR( lpViewEntityCsr->hEntityInstance ) == lpEntityInstance )

	mov	edx, DWORD PTR _lpViewEntityCsr$8136[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpEntityInstance$[ebp]
	jne	SHORT $L8143

; 908  :          zsprintf( &lpWriteInfo->szBuffer[ zstrlen( lpWriteInfo->szBuffer ) ],
; 909  :                    " zCursor=\"Y\"" );

	push	OFFSET FLAT:??_C@_0N@PCKP@?5zCursor?$DN?$CCY?$CC?$AA@ ; `string'
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	add	ecx, 20					; 00000014H
	push	ecx
	call	_strlen
	add	esp, 4
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	lea	eax, DWORD PTR [edx+eax+20]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 8
$L8143:

; 911  : 
; 912  :       // Now check to see if the entity is selected.
; 913  :       for ( lpSrchSelectedInstance =
; 914  :                       zGETPTR( lpWriteInfo->lpViewCsr->hFirstSelectedInstance );
; 915  :             lpSrchSelectedInstance;
; 916  :             lpSrchSelectedInstance =
; 917  :                       zGETPTR( lpSrchSelectedInstance->hNextSelectedInstance ) )

	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchSelectedInstance$8137[ebp], eax
	jmp	SHORT $L8147
$L8148:
	mov	ecx, DWORD PTR _lpSrchSelectedInstance$8137[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchSelectedInstance$8137[ebp], eax
$L8147:
	cmp	DWORD PTR _lpSrchSelectedInstance$8137[ebp], 0
	je	SHORT $L8149

; 919  :          // Check to see if the current EI is selected.
; 920  :          if ( hEntityInstance != lpSrchSelectedInstance->xEntityInstance )

	mov	eax, DWORD PTR _lpSrchSelectedInstance$8137[ebp]
	mov	ecx, DWORD PTR _hEntityInstance$8134[ebp]
	cmp	ecx, DWORD PTR [eax+12]
	je	SHORT $L8150

; 921  :             continue;

	jmp	SHORT $L8148
$L8150:

; 922  : 
; 923  :          if ( hViewEntity != lpSrchSelectedInstance->hViewEntity )

	mov	edx, DWORD PTR _lpSrchSelectedInstance$8137[ebp]
	mov	eax, DWORD PTR _hViewEntity$[ebp]
	cmp	eax, DWORD PTR [edx+8]
	je	SHORT $L8151

; 924  :             continue;

	jmp	SHORT $L8148
$L8151:

; 925  : 
; 926  :          // We have found a selected instance.  Write out the info.
; 927  :          zsprintf( &lpWriteInfo->szBuffer[ zstrlen( lpWriteInfo->szBuffer ) ],
; 928  :                    " zSelect%d=\"Y\"", lpSrchSelectedInstance->nSelectSet );

	mov	ecx, DWORD PTR _lpSrchSelectedInstance$8137[ebp]
	movsx	edx, WORD PTR [ecx+6]
	push	edx
	push	OFFSET FLAT:??_C@_0P@FFBM@?5zSelect?$CFd?$DN?$CCY?$CC?$AA@ ; `string'
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	add	eax, 20					; 00000014H
	push	eax
	call	_strlen
	add	esp, 4
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	lea	edx, DWORD PTR [ecx+eax+20]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 929  :       }

	jmp	SHORT $L8148
$L8149:

; 931  : 
; 932  :    // I think this is the right place to add the "simple attributes".  dks 2009.11.19
; 933  :    fnWriteAttribs( lpTaskView, lpWriteInfo,
; 934  :                    (zSHORT) (lpEntityInstance->nLevel + 1), lpViewEntity, 1 );

	push	1
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	add	edx, 1
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	call	_fnWriteAttribs@20

; 935  : 
; 936  :    zstrcat( lpWriteInfo->szBuffer, ">" );

	push	OFFSET FLAT:??_C@_01FAFK@?$DO?$AA@	; `string'
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	add	edx, 20					; 00000014H
	push	edx
	call	_strcat
	add	esp, 8

; 937  : 
; 938  :    if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_STARTENTITY,
; 939  :                                    lpWriteInfo->szBuffer, 0,
; 940  :                                    lpEntityInstance->nLevel,
; 941  :                                    lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+10424]
	push	ecx
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	ax, WORD PTR [edx+58]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	add	ecx, 20					; 00000014H
	push	ecx
	push	4
	mov	edx, DWORD PTR _lpTaskView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [eax+10420]
	movsx	ecx, ax
	cmp	ecx, -16				; fffffff0H
	jne	SHORT $L8154

; 943  :       return( 0 );

	xor	eax, eax
	jmp	SHORT $L8066
$L8154:

; 945  : 
; 946  :    // Ok, we wrote the opening tag so set the name in the "entity stack".
; 947  :    lpWriteInfo->pchEntityName[ lpEntityInstance->nLevel ] = pchRealEntityName;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR _pchRealEntityName$[ebp]
	mov	DWORD PTR [ecx+eax*4+10020], edx

; 948  : 
; 949  :    return( lpAbstractChild );

	mov	eax, DWORD PTR _lpAbstractChild$[ebp]
$L8066:

; 950  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_fnWriteEntityStartTag@12 ENDP
_TEXT	ENDS
PUBLIC	_fnWriteAttribEntry@24
PUBLIC	??_C@_04GGNJ@?$DM?$CFs?$DO?$AA@			; `string'
;	COMDAT ??_C@_04GGNJ@?$DM?$CFs?$DO?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_04GGNJ@?$DM?$CFs?$DO?$AA@ DB '<%s>', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTaskView$ = 8
_lpWriteInfo$ = 12
_nLevel$ = 16
_lpViewEntity$ = 20
_pchAttribName$ = 24
_lpViewAttribValue$ = 28
_nReturn$ = -4
_ulLth$ = -528
_pchTempValueBuffer$ = -524
_lTempBufferLth$ = -16
_hTempValueBuffer$ = -12
_szAttribTag$ = -516
_pchAttribValue$ = -520
_chType$ = -8
_lCharCount$8181 = -532
_pch$8183 = -536
_fnWriteAttribEntry@24 PROC NEAR

; 959  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 540				; 0000021cH

; 960  :    zSHORT       nReturn = zCALL_ERROR;

	mov	WORD PTR _nReturn$[ebp], -16		; fffffff0H

; 961  :    zULONG       ulLth;
; 962  :    zPCHAR       pchTempValueBuffer = 0;

	mov	DWORD PTR _pchTempValueBuffer$[ebp], 0

; 963  :    zULONG       lTempBufferLth = 0;

	mov	DWORD PTR _lTempBufferLth$[ebp], 0

; 964  :    zLONG        hTempValueBuffer;
; 965  :    zCHAR        szAttribTag[ 500 ];
; 966  :    zPCHAR       pchAttribValue;
; 967  :    zCHAR        chType;
; 968  : 
; 969  :    zsprintf( szAttribTag, "<%s>", pchAttribName );

	mov	eax, DWORD PTR _pchAttribName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_04GGNJ@?$DM?$CFs?$DO?$AA@ ; `string'
	lea	ecx, DWORD PTR _szAttribTag$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 970  : 
; 971  :    // Treat the attribute lpViewAttribValue as the regular attribute and
; 972  :    // use its value.
; 973  :    GetValueFromRecord( lpWriteInfo->vOI, lpViewEntity, lpViewAttribValue,
; 974  :                         &pchAttribValue, &chType, &ulLth );

	lea	edx, DWORD PTR _ulLth$[ebp]
	push	edx
	lea	eax, DWORD PTR _chType$[ebp]
	push	eax
	lea	ecx, DWORD PTR _pchAttribValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttribValue$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	_GetValueFromRecord@24

; 975  : 
; 976  :    // Check to see if the attribute is NULL.  The we check ulLth = 1 for
; 977  :    // strings because the length contains the null-terminator.
; 978  :    if ( ulLth <= 1 || pchAttribValue == 0 )

	cmp	DWORD PTR _ulLth$[ebp], 1
	jbe	SHORT $L8179
	cmp	DWORD PTR _pchAttribValue$[ebp], 0
	jne	SHORT $L8178
$L8179:

; 980  :       // If we get here then the attribute is null but it's been
; 981  :       // modified so we need to send the attribute flags.  We do this
; 982  :       // by sending a null attribute.
; 983  :       pchAttribValue = "";

	mov	DWORD PTR _pchAttribValue$[ebp], OFFSET FLAT:??_C@_00A@?$AA@ ; `string'

; 984  :       ulLth = 0;

	mov	DWORD PTR _ulLth$[ebp], 0

; 986  :    else

	jmp	$L8182
$L8178:

; 988  :       zLONG lCharCount;
; 989  :       ulLth--;  // Subtract the null-terminator from the length.

	mov	eax, DWORD PTR _ulLth$[ebp]
	sub	eax, 1
	mov	DWORD PTR _ulLth$[ebp], eax

; 990  : 
; 991  :       // Check to see how many chars there are that need to be
; 992  :       // translated (e.g. '&').
; 993  :       if ( (lCharCount = fnContainsSpecialChar( pchAttribValue ) ) )

	mov	ecx, DWORD PTR _pchAttribValue$[ebp]
	push	ecx
	call	_fnContainsSpecialChar@4
	mov	DWORD PTR _lCharCount$8181[ebp], eax
	cmp	DWORD PTR _lCharCount$8181[ebp], 0
	je	$L8182

; 995  :          zPCHAR pch;
; 996  : 
; 997  :          // We need to convert some characters into XML entities.  For
; 998  :          // example, change '&' into '&amp;'.
; 999  : 
; 1000 :          // First create a temp buffer.  Make sure it's big enough to
; 1001 :          // handle the buffer plus conversions.
; 1002 :          if ( lTempBufferLth < ulLth + lCharCount * 6 )

	mov	edx, DWORD PTR _lCharCount$8181[ebp]
	imul	edx, 6
	mov	eax, DWORD PTR _ulLth$[ebp]
	add	eax, edx
	cmp	DWORD PTR _lTempBufferLth$[ebp], eax
	jae	SHORT $L8184

; 1004 :             hTempValueBuffer = SysAllocMemory( &pchTempValueBuffer,
; 1005 :                                                ulLth + lCharCount * 6,
; 1006 :                                                0, 0, 0 );

	push	0
	push	0
	push	0
	mov	ecx, DWORD PTR _lCharCount$8181[ebp]
	imul	ecx, 6
	mov	edx, DWORD PTR _ulLth$[ebp]
	add	edx, ecx
	push	edx
	lea	eax, DWORD PTR _pchTempValueBuffer$[ebp]
	push	eax
	call	_SysAllocMemory@20
	mov	DWORD PTR _hTempValueBuffer$[ebp], eax

; 1007 :             if ( pchTempValueBuffer == 0 )

	cmp	DWORD PTR _pchTempValueBuffer$[ebp], 0
	jne	SHORT $L8185

; 1008 :                goto EndOfFunction;

	jmp	$EndOfFunction$8186
$L8185:

; 1009 : 
; 1010 :             lTempBufferLth = ulLth + lCharCount * 6;

	mov	ecx, DWORD PTR _lCharCount$8181[ebp]
	imul	ecx, 6
	mov	edx, DWORD PTR _ulLth$[ebp]
	add	edx, ecx
	mov	DWORD PTR _lTempBufferLth$[ebp], edx
$L8184:

; 1012 : 
; 1013 :          // Now copy chars over, converting special ones.
; 1014 :          for ( pch = pchTempValueBuffer;
; 1015 :                *pchAttribValue;
; 1016 :                pchAttribValue++ )

	mov	eax, DWORD PTR _pchTempValueBuffer$[ebp]
	mov	DWORD PTR _pch$8183[ebp], eax
	jmp	SHORT $L8187
$L8188:
	mov	ecx, DWORD PTR _pchAttribValue$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchAttribValue$[ebp], ecx
$L8187:
	mov	edx, DWORD PTR _pchAttribValue$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	$L8189

; 1018 :             switch ( *pchAttribValue )
; 1019 :             {

	mov	ecx, DWORD PTR _pchAttribValue$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	DWORD PTR -540+[ebp], edx
	mov	eax, DWORD PTR -540+[ebp]
	sub	eax, 9
	mov	DWORD PTR -540+[ebp], eax
	cmp	DWORD PTR -540+[ebp], 53		; 00000035H
	ja	$L8200
	mov	edx, DWORD PTR -540+[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR $L9164[edx]
	jmp	DWORD PTR $L9165[ecx*4]
$L8194:

; 1020 :                case '&':
; 1021 :                   *pch++ = '&';

	mov	eax, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [eax], 38			; 00000026H
	mov	ecx, DWORD PTR _pch$8183[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8183[ebp], ecx

; 1022 :                   *pch++ = 'a';

	mov	edx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [edx], 97			; 00000061H
	mov	eax, DWORD PTR _pch$8183[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8183[ebp], eax

; 1023 :                   *pch++ = 'm';

	mov	ecx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [ecx], 109			; 0000006dH
	mov	edx, DWORD PTR _pch$8183[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8183[ebp], edx

; 1024 :                   *pch++ = 'p';

	mov	eax, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [eax], 112			; 00000070H
	mov	ecx, DWORD PTR _pch$8183[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8183[ebp], ecx

; 1025 :                   *pch++ = ';';

	mov	edx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [edx], 59			; 0000003bH
	mov	eax, DWORD PTR _pch$8183[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8183[ebp], eax

; 1026 :                   break;

	jmp	$L8191
$L8195:

; 1027 : 
; 1028 :                case '<':
; 1029 :                   *pch++ = '&';

	mov	ecx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [ecx], 38			; 00000026H
	mov	edx, DWORD PTR _pch$8183[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8183[ebp], edx

; 1030 :                   *pch++ = 'l';

	mov	eax, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [eax], 108			; 0000006cH
	mov	ecx, DWORD PTR _pch$8183[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8183[ebp], ecx

; 1031 :                   *pch++ = 't';

	mov	edx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [edx], 116			; 00000074H
	mov	eax, DWORD PTR _pch$8183[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8183[ebp], eax

; 1032 :                   *pch++ = ';';

	mov	ecx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [ecx], 59			; 0000003bH
	mov	edx, DWORD PTR _pch$8183[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8183[ebp], edx

; 1033 :                   break;

	jmp	$L8191
$L8196:

; 1034 : 
; 1035 :                case '>':
; 1036 :                   *pch++ = '&';

	mov	eax, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [eax], 38			; 00000026H
	mov	ecx, DWORD PTR _pch$8183[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8183[ebp], ecx

; 1037 :                   *pch++ = 'g';

	mov	edx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [edx], 103			; 00000067H
	mov	eax, DWORD PTR _pch$8183[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8183[ebp], eax

; 1038 :                   *pch++ = 't';

	mov	ecx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [ecx], 116			; 00000074H
	mov	edx, DWORD PTR _pch$8183[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8183[ebp], edx

; 1039 :                   *pch++ = ';';

	mov	eax, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [eax], 59			; 0000003bH
	mov	ecx, DWORD PTR _pch$8183[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8183[ebp], ecx

; 1040 :                   break;

	jmp	$L8191
$L8197:

; 1041 : 
; 1042 :                case '\'':
; 1043 :                   *pch++ = '&';

	mov	edx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [edx], 38			; 00000026H
	mov	eax, DWORD PTR _pch$8183[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8183[ebp], eax

; 1044 :                   *pch++ = 'a';

	mov	ecx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [ecx], 97			; 00000061H
	mov	edx, DWORD PTR _pch$8183[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8183[ebp], edx

; 1045 :                   *pch++ = 'p';

	mov	eax, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [eax], 112			; 00000070H
	mov	ecx, DWORD PTR _pch$8183[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8183[ebp], ecx

; 1046 :                   *pch++ = 'o';

	mov	edx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [edx], 111			; 0000006fH
	mov	eax, DWORD PTR _pch$8183[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8183[ebp], eax

; 1047 :                   *pch++ = 's';

	mov	ecx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [ecx], 115			; 00000073H
	mov	edx, DWORD PTR _pch$8183[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8183[ebp], edx

; 1048 :                   *pch++ = ';';

	mov	eax, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [eax], 59			; 0000003bH
	mov	ecx, DWORD PTR _pch$8183[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8183[ebp], ecx

; 1049 :                   break;

	jmp	$L8191
$L8198:

; 1050 : 
; 1051 :                case '\"':
; 1052 :                   *pch++ = '&';

	mov	edx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [edx], 38			; 00000026H
	mov	eax, DWORD PTR _pch$8183[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8183[ebp], eax

; 1053 :                   *pch++ = 'q';

	mov	ecx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [ecx], 113			; 00000071H
	mov	edx, DWORD PTR _pch$8183[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8183[ebp], edx

; 1054 :                   *pch++ = 'u';

	mov	eax, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [eax], 117			; 00000075H
	mov	ecx, DWORD PTR _pch$8183[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8183[ebp], ecx

; 1055 :                   *pch++ = 'o';

	mov	edx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [edx], 111			; 0000006fH
	mov	eax, DWORD PTR _pch$8183[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8183[ebp], eax

; 1056 :                   *pch++ = 't';

	mov	ecx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [ecx], 116			; 00000074H
	mov	edx, DWORD PTR _pch$8183[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8183[ebp], edx

; 1057 :                   *pch++ = ';';

	mov	eax, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [eax], 59			; 0000003bH
	mov	ecx, DWORD PTR _pch$8183[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8183[ebp], ecx

; 1058 :                   break;

	jmp	$L8191
$L8199:

; 1059 : 
; 1060 :                case '\n':
; 1061 :                case '\r':
; 1062 :                case '\t':
; 1063 :                   *pch++ = *pchAttribValue;

	mov	edx, DWORD PTR _pch$8183[ebp]
	mov	eax, DWORD PTR _pchAttribValue$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	mov	edx, DWORD PTR _pch$8183[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8183[ebp], edx

; 1064 :                   break;

	jmp	$L8191
$L8200:

; 1065 : 
; 1066 :                default:
; 1067 :                   if ( *pchAttribValue < 32 || *pchAttribValue > 127 )

	mov	eax, DWORD PTR _pchAttribValue$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 32					; 00000020H
	jl	SHORT $L8202
	mov	edx, DWORD PTR _pchAttribValue$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 127				; 0000007fH
	jle	$L8201
$L8202:

; 1069 :                      // Convert the char to '&#ddd;' where 'ddd' is its ASCII value.
; 1070 :                      *pch++ = '&';

	mov	ecx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [ecx], 38			; 00000026H
	mov	edx, DWORD PTR _pch$8183[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8183[ebp], edx

; 1071 :                      *pch++ = '#';

	mov	eax, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [eax], 35			; 00000023H
	mov	ecx, DWORD PTR _pch$8183[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8183[ebp], ecx

; 1072 :                      zltoa( (zLONG) (zUCHAR) *pchAttribValue, pch );

	push	10					; 0000000aH
	mov	edx, DWORD PTR _pch$8183[ebp]
	push	edx
	mov	eax, DWORD PTR _pchAttribValue$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax]
	push	ecx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH
$L8206:

; 1073 :                      while ( *++pch );       // Skip to null terminator.

	mov	edx, DWORD PTR _pch$8183[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$8183[ebp], edx
	mov	eax, DWORD PTR _pch$8183[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L8207
	jmp	SHORT $L8206
$L8207:

; 1074 :                      *pch++ = ';';

	mov	edx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [edx], 59			; 0000003bH
	mov	eax, DWORD PTR _pch$8183[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8183[ebp], eax

; 1076 :                   else

	jmp	SHORT $L8208
$L8201:

; 1077 :                      *pch++ = *pchAttribValue;

	mov	ecx, DWORD PTR _pch$8183[ebp]
	mov	edx, DWORD PTR _pchAttribValue$[ebp]
	mov	al, BYTE PTR [edx]
	mov	BYTE PTR [ecx], al
	mov	ecx, DWORD PTR _pch$8183[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$8183[ebp], ecx
$L8208:
$L8191:

; 1082 : 
; 1083 :          } // for...

	jmp	$L8188
$L8189:

; 1084 : 
; 1085 :          // Now that we've translated the attribute's value into the
; 1086 :          // temp buffer set attrib value ptr to point to the buffer.
; 1087 :          *pch++ = 0;

	mov	edx, DWORD PTR _pch$8183[ebp]
	mov	BYTE PTR [edx], 0
	mov	eax, DWORD PTR _pch$8183[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$8183[ebp], eax

; 1088 :          ulLth = (zLONG) ( pch - pchTempValueBuffer ) - 1;

	mov	ecx, DWORD PTR _pch$8183[ebp]
	sub	ecx, DWORD PTR _pchTempValueBuffer$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _ulLth$[ebp], ecx

; 1089 :          pchAttribValue = pchTempValueBuffer;

	mov	edx, DWORD PTR _pchTempValueBuffer$[ebp]
	mov	DWORD PTR _pchAttribValue$[ebp], edx
$L8182:

; 1094 : 
; 1095 :    if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_STARTATTRIB,
; 1096 :                                    szAttribTag, 0, nLevel,
; 1097 :                                    lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+10424]
	push	ecx
	mov	dx, WORD PTR _nLevel$[ebp]
	push	edx
	push	0
	lea	eax, DWORD PTR _szAttribTag$[ebp]
	push	eax
	push	16					; 00000010H
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [edx+10420]
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8210

; 1099 :       goto EndOfFunction;

	jmp	SHORT $EndOfFunction$8186
$L8210:

; 1101 : 
; 1102 :    if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_ATTRIBVALUE,
; 1103 :                                    pchAttribValue, ulLth, nLevel,
; 1104 :                                    lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+10424]
	push	edx
	mov	ax, WORD PTR _nLevel$[ebp]
	push	eax
	mov	ecx, DWORD PTR _ulLth$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchAttribValue$[ebp]
	push	edx
	push	64					; 00000040H
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [ecx+10420]
	movsx	edx, ax
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8211

; 1106 :       goto EndOfFunction;

	jmp	SHORT $EndOfFunction$8186
$L8211:

; 1108 : 
; 1109 :    // Close the attribute value.
; 1110 :    zsprintf( szAttribTag, "</%s>", pchAttribName );

	mov	eax, DWORD PTR _pchAttribName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_05NLEO@?$DM?1?$CFs?$DO?$AA@ ; `string'
	lea	ecx, DWORD PTR _szAttribTag$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 1111 : 
; 1112 :    if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_ENDATTRIB,
; 1113 :                                    szAttribTag, 0, nLevel,
; 1114 :                                    lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+10424]
	push	eax
	mov	cx, WORD PTR _nLevel$[ebp]
	push	ecx
	push	0
	lea	edx, DWORD PTR _szAttribTag$[ebp]
	push	edx
	push	32					; 00000020H
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [ecx+10420]
$EndOfFunction$8186:

; 1118 : 
; 1119 : EndOfFunction:
; 1120 :    if ( pchTempValueBuffer )

	cmp	DWORD PTR _pchTempValueBuffer$[ebp], 0
	je	SHORT $L8213

; 1121 :       SysFreeMemory( hTempValueBuffer );

	mov	eax, DWORD PTR _hTempValueBuffer$[ebp]
	push	eax
	call	_SysFreeMemory@4
$L8213:

; 1122 : 
; 1123 :    return( nReturn );

	mov	ax, WORD PTR _nReturn$[ebp]

; 1124 : 
; 1125 : } // fnWriteAttribEntry

	mov	esp, ebp
	pop	ebp
	ret	24					; 00000018H
$L9165:
	DD	$L8199
	DD	$L8198
	DD	$L8194
	DD	$L8197
	DD	$L8195
	DD	$L8196
	DD	$L8200
$L9164:
	DB	0
	DB	0
	DB	6
	DB	6
	DB	0
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	1
	DB	6
	DB	6
	DB	6
	DB	2
	DB	3
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	6
	DB	4
	DB	6
	DB	5
_fnWriteAttribEntry@24 ENDP
_TEXT	ENDS
PUBLIC	_fnWriteListEntryValue@16
PUBLIC	??_C@_0BL@IJPH@?$DMListEntryValue?5Name?$DN?$CC?$CFs?$CC?$DO?$AA@ ; `string'
PUBLIC	??_C@_0N@LFLB@CurrentValue?$AA@			; `string'
PUBLIC	??_C@_0BC@PFOL@?$DM?1ListEntryValue?$DO?$AA@	; `string'
;	COMDAT ??_C@_0BL@IJPH@?$DMListEntryValue?5Name?$DN?$CC?$CFs?$CC?$DO?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_0BL@IJPH@?$DMListEntryValue?5Name?$DN?$CC?$CFs?$CC?$DO?$AA@ DB '<Li'
	DB	'stEntryValue Name="%s">', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@LFLB@CurrentValue?$AA@
_DATA	SEGMENT
??_C@_0N@LFLB@CurrentValue?$AA@ DB 'CurrentValue', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@PFOL@?$DM?1ListEntryValue?$DO?$AA@
_DATA	SEGMENT
??_C@_0BC@PFOL@?$DM?1ListEntryValue?$DO?$AA@ DB '</ListEntryValue>', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTaskView$ = 8
_lpWriteInfo$ = 12
_nLevel$ = 16
_lpEntityInstance$ = 20
_lpViewAttrib$ = -512
_lpViewEntity$ = -8
_szWriteLine$ = -508
_chType$ = -4
_pchAttribName$ = -520
_ulLth$ = -516
_fnWriteListEntryValue@16 PROC NEAR

; 1132 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 520				; 00000208H

; 1133 :    LPVIEWATTRIB lpViewAttrib;
; 1134 :    LPVIEWENTITY lpViewEntity;
; 1135 :    zCHAR        szWriteLine[ 500 ];
; 1136 :    zCHAR        chType;
; 1137 :    zPCHAR       pchAttribName;
; 1138 :    zULONG       ulLth;
; 1139 : 
; 1140 :    // Get Name value.
; 1141 :    lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1142 :    lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+179]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 1143 :    GetValueFromRecord( lpWriteInfo->vOI, lpViewEntity, lpViewAttrib,
; 1144 :                        &pchAttribName, &chType, &ulLth );

	lea	ecx, DWORD PTR _ulLth$[ebp]
	push	ecx
	lea	edx, DWORD PTR _chType$[ebp]
	push	edx
	lea	eax, DWORD PTR _pchAttribName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_GetValueFromRecord@24

; 1145 : 
; 1146 :    // Create ListEntryValue line and write to file.
; 1147 :    zsprintf( szWriteLine, "<ListEntryValue Name=\"%s\">", pchAttribName );

	mov	edx, DWORD PTR _pchAttribName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BL@IJPH@?$DMListEntryValue?5Name?$DN?$CC?$CFs?$CC?$DO?$AA@ ; `string'
	lea	eax, DWORD PTR _szWriteLine$[ebp]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 1148 :    if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_STARTENTITY, szWriteLine,
; 1149 :                                    0, lpEntityInstance->nLevel,
; 1150 :                                    lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+10424]
	push	edx
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	push	ecx
	push	0
	lea	edx, DWORD PTR _szWriteLine$[ebp]
	push	edx
	push	4
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [ecx+10420]
	movsx	edx, ax
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8233

; 1152 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8223
$L8233:

; 1154 : 
; 1155 :    // Create CurrentValue data line and write to file.
; 1156 :    lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 1157 :    fnEstablishViewForInstance( lpWriteInfo->vOI, 0, lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1158 :    fnWriteAttribEntry( lpTaskView, lpWriteInfo, (zSHORT) (nLevel + 1),
; 1159 :                        lpViewEntity, "CurrentValue", lpViewAttrib );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0N@LFLB@CurrentValue?$AA@ ; `string'
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	movsx	ecx, WORD PTR _nLevel$[ebp]
	add	ecx, 1
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	call	_fnWriteAttribEntry@24

; 1160 : 
; 1161 :    // Create Close ListEntryValue line and write to file.
; 1162 :    if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_ENDENTITY,
; 1163 :                                    "</ListEntryValue>", 0,
; 1164 :                                    lpEntityInstance->nLevel,
; 1165 :                                    lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+10424]
	push	edx
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	push	ecx
	push	0
	push	OFFSET FLAT:??_C@_0BC@PFOL@?$DM?1ListEntryValue?$DO?$AA@ ; `string'
	push	8
	mov	edx, DWORD PTR _lpTaskView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [eax+10420]
	movsx	ecx, ax
	cmp	ecx, -16				; fffffff0H
	jne	SHORT $L8237

; 1167 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8223
$L8237:

; 1169 : 
; 1170 :    return( 0 );

	xor	ax, ax
$L8223:

; 1171 : 
; 1172 : } // fnWriteListEntryValue

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_fnWriteListEntryValue@16 ENDP
_TEXT	ENDS
PUBLIC	_fnWriteControlEntry@16
PUBLIC	??_C@_0BO@GGBI@?$DMControl?5Name?$DN?$CC?$CFs?$CC?5Type?$DN?$CC?$CFs?$CC?$DO?$AA@ ; `string'
PUBLIC	??_C@_09KHJE@ListEntry?$AA@			; `string'
PUBLIC	??_C@_0M@DALI@?$DMListEntry?$DO?$AA@		; `string'
PUBLIC	??_C@_0BJ@IMJE@?$DMListEntry?5zSelect1?$DN?$CCY?$CC?$DO?$AA@ ; `string'
PUBLIC	??_C@_0N@BMND@?$DM?1ListEntry?$DO?$AA@		; `string'
PUBLIC	??_C@_0L@NDAB@ComboValue?$AA@			; `string'
PUBLIC	??_C@_0N@JEIO@?$DMComboValue?$DO?$AA@		; `string'
PUBLIC	??_C@_0BK@MLPJ@?$DMComboValue?5zSelect1?$DN?$CCY?$CC?$DO?$AA@ ; `string'
PUBLIC	??_C@_0O@JKC@?$DM?1ComboValue?$DO?$AA@		; `string'
PUBLIC	??_C@_0L@DMN@?$DM?1Control?$DO?$AA@		; `string'
PUBLIC	_fnConvertEntity@12
;	COMDAT ??_C@_0BO@GGBI@?$DMControl?5Name?$DN?$CC?$CFs?$CC?5Type?$DN?$CC?$CFs?$CC?$DO?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_0BO@GGBI@?$DMControl?5Name?$DN?$CC?$CFs?$CC?5Type?$DN?$CC?$CFs?$CC?$DO?$AA@ DB '<'
	DB	'Control Name="%s" Type="%s">', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_09KHJE@ListEntry?$AA@
_DATA	SEGMENT
??_C@_09KHJE@ListEntry?$AA@ DB 'ListEntry', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@DALI@?$DMListEntry?$DO?$AA@
_DATA	SEGMENT
??_C@_0M@DALI@?$DMListEntry?$DO?$AA@ DB '<ListEntry>', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@IMJE@?$DMListEntry?5zSelect1?$DN?$CCY?$CC?$DO?$AA@
_DATA	SEGMENT
??_C@_0BJ@IMJE@?$DMListEntry?5zSelect1?$DN?$CCY?$CC?$DO?$AA@ DB '<ListEnt'
	DB	'ry zSelect1="Y">', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@BMND@?$DM?1ListEntry?$DO?$AA@
_DATA	SEGMENT
??_C@_0N@BMND@?$DM?1ListEntry?$DO?$AA@ DB '</ListEntry>', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@NDAB@ComboValue?$AA@
_DATA	SEGMENT
??_C@_0L@NDAB@ComboValue?$AA@ DB 'ComboValue', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@JEIO@?$DMComboValue?$DO?$AA@
_DATA	SEGMENT
??_C@_0N@JEIO@?$DMComboValue?$DO?$AA@ DB '<ComboValue>', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@MLPJ@?$DMComboValue?5zSelect1?$DN?$CCY?$CC?$DO?$AA@
_DATA	SEGMENT
??_C@_0BK@MLPJ@?$DMComboValue?5zSelect1?$DN?$CCY?$CC?$DO?$AA@ DB '<ComboV'
	DB	'alue zSelect1="Y">', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@JKC@?$DM?1ComboValue?$DO?$AA@
_DATA	SEGMENT
??_C@_0O@JKC@?$DM?1ComboValue?$DO?$AA@ DB '</ComboValue>', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@DMN@?$DM?1Control?$DO?$AA@
_DATA	SEGMENT
??_C@_0L@DMN@?$DM?1Control?$DO?$AA@ DB '</Control>', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTaskView$ = 8
_lpWriteInfo$ = 12
_nLevel$ = 16
_lpEntityInstance$ = 20
_lpViewAttrib$ = -544
_lpListEntryInstance$ = -16
_lpComboInstance$ = -24
_lpChildInstance$ = -556
_lpNextInstance$ = -40
_lpViewEntity$ = -32
_lpViewNextEntity$ = -12
_hEntityInstance$ = -36
_lpSrchSelectedInstance$ = -28
_szWriteLine$ = -540
_chType$ = -4
_pchAttribName$ = -560
_pchAttribType$ = -8
_pchEntityName$ = -552
_ulLth$ = -548
_nFlag$ = -20
_fnWriteControlEntry@16 PROC NEAR

; 1179 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 568				; 00000238H

; 1180 :    LPVIEWATTRIB     lpViewAttrib;
; 1181 :    LPENTITYINSTANCE lpListEntryInstance;
; 1182 :    LPENTITYINSTANCE lpComboInstance;
; 1183 :    LPENTITYINSTANCE lpChildInstance;
; 1184 :    LPENTITYINSTANCE lpNextInstance;
; 1185 :    LPVIEWENTITY     lpViewEntity;
; 1186 :    LPVIEWENTITY     lpViewNextEntity;
; 1187 :    LPENTITYINSTANCE hEntityInstance;
; 1188 :    LPSELECTEDINSTANCE lpSrchSelectedInstance;
; 1189 :    zCHAR            szWriteLine[ 500 ];
; 1190 :    zCHAR            chType;
; 1191 :    zPCHAR           pchAttribName;
; 1192 :    zPCHAR           pchAttribType;
; 1193 :    zPCHAR           pchEntityName;
; 1194 :    zULONG           ulLth;
; 1195 :    zSHORT           nFlag;
; 1196 : 
; 1197 :    // Get Name and Type values.
; 1198 :    lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1199 :    lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+179]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 1200 :    GetValueFromRecord( lpWriteInfo->vOI, lpViewEntity, lpViewAttrib,
; 1201 :                        &pchAttribName, &chType, &ulLth );

	lea	ecx, DWORD PTR _ulLth$[ebp]
	push	ecx
	lea	edx, DWORD PTR _chType$[ebp]
	push	edx
	lea	eax, DWORD PTR _pchAttribName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_GetValueFromRecord@24

; 1202 :    lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 1203 :    GetValueFromRecord( lpWriteInfo->vOI, lpViewEntity, lpViewAttrib,
; 1204 :                        &pchAttribType, &chType, &ulLth );

	lea	ecx, DWORD PTR _ulLth$[ebp]
	push	ecx
	lea	edx, DWORD PTR _chType$[ebp]
	push	edx
	lea	eax, DWORD PTR _pchAttribType$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_GetValueFromRecord@24

; 1205 : 
; 1206 :    // Create Control line and write to file
; 1207 :    zsprintf( szWriteLine, "<Control Name=\"%s\" Type=\"%s\">", pchAttribName, pchAttribType );

	mov	edx, DWORD PTR _pchAttribType$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchAttribName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BO@GGBI@?$DMControl?5Name?$DN?$CC?$CFs?$CC?5Type?$DN?$CC?$CFs?$CC?$DO?$AA@ ; `string'
	lea	ecx, DWORD PTR _szWriteLine$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 1208 :    if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_STARTENTITY, szWriteLine,
; 1209 :                                    0, lpEntityInstance->nLevel,
; 1210 :                                    lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+10424]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	push	edx
	push	0
	lea	eax, DWORD PTR _szWriteLine$[ebp]
	push	eax
	push	4
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [edx+10420]
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8269

; 1212 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8248
$L8269:

; 1214 : 
; 1215 :    // If there are ListEntry entries, process them.
; 1216 :    lpNextInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextInstance$[ebp], eax

; 1217 :    if ( lpNextInstance == 0 )

	cmp	DWORD PTR _lpNextInstance$[ebp], 0
	jne	SHORT $L8271

; 1218 :       pchEntityName = 0;

	mov	DWORD PTR _pchEntityName$[ebp], 0

; 1219 :    else

	jmp	SHORT $L8275
$L8271:

; 1221 :       lpViewNextEntity = zGETPTR( lpNextInstance->hViewEntity );

	mov	eax, DWORD PTR _lpNextInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewNextEntity$[ebp], eax

; 1222 :       if ( lpViewNextEntity == 0 )

	cmp	DWORD PTR _lpViewNextEntity$[ebp], 0
	jne	SHORT $L8274

; 1223 :          pchEntityName = 0;

	mov	DWORD PTR _pchEntityName$[ebp], 0

; 1224 :       else

	jmp	SHORT $L8275
$L8274:

; 1225 :          pchEntityName = lpViewNextEntity->szName;

	mov	edx, DWORD PTR _lpViewNextEntity$[ebp]
	add	edx, 14					; 0000000eH
	mov	DWORD PTR _pchEntityName$[ebp], edx
$L8275:

; 1227 : 
; 1228 :    if ( pchEntityName &&
; 1229 :         zstrcmp( pchEntityName, "ListEntry" ) == 0 )

	cmp	DWORD PTR _pchEntityName$[ebp], 0
	je	$L8282
	mov	eax, DWORD PTR _pchEntityName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	movsx	edx, BYTE PTR ??_C@_09KHJE@ListEntry?$AA@
	cmp	ecx, edx
	jne	SHORT $L9168
	push	OFFSET FLAT:??_C@_09KHJE@ListEntry?$AA@	; `string'
	mov	eax, DWORD PTR _pchEntityName$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -564+[ebp], eax
	jmp	SHORT $L9169
$L9168:
	mov	ecx, DWORD PTR _pchEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	movsx	eax, BYTE PTR ??_C@_09KHJE@ListEntry?$AA@
	sub	edx, eax
	xor	ecx, ecx
	test	edx, edx
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -564+[ebp], ecx
$L9169:
	cmp	DWORD PTR -564+[ebp], 0
	jne	$L8282

; 1231 :       // These are ListEntry entries.
; 1232 :       // Create the ListEntry lines here but process ListEntryValues in fnConvertEntity.
; 1233 :       for ( lpListEntryInstance = zGETPTR( lpEntityInstance->hNextHier );
; 1234 :             lpListEntryInstance;
; 1235 :             lpListEntryInstance = zGETPTR( lpListEntryInstance->hNextTwin ) )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpListEntryInstance$[ebp], eax
	jmp	SHORT $L8286
$L8287:
	mov	ecx, DWORD PTR _lpListEntryInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpListEntryInstance$[ebp], eax
$L8286:
	cmp	DWORD PTR _lpListEntryInstance$[ebp], 0
	je	$L8288

; 1237 :          nFlag = 0;

	mov	WORD PTR _nFlag$[ebp], 0

; 1238 :          fnEstablishViewForInstance( lpWriteInfo->vOI, 0, lpListEntryInstance );

	mov	eax, DWORD PTR _lpListEntryInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1239 :          lpViewEntity = zGETPTR( lpListEntryInstance->hViewEntity );

	mov	eax, DWORD PTR _lpListEntryInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1240 :          hEntityInstance = zGETHNDL( lpListEntryInstance );

	mov	edx, DWORD PTR _lpListEntryInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hEntityInstance$[ebp], eax

; 1241 : 
; 1242 :          // Now check to see if the entity is selected.
; 1243 :          for ( lpSrchSelectedInstance =
; 1244 :                         zGETPTR( lpWriteInfo->lpViewCsr->hFirstSelectedInstance );
; 1245 :                lpSrchSelectedInstance;
; 1246 :                lpSrchSelectedInstance =
; 1247 :                         zGETPTR( lpSrchSelectedInstance->hNextSelectedInstance ) )

	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchSelectedInstance$[ebp], eax
	jmp	SHORT $L8293
$L8294:
	mov	eax, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchSelectedInstance$[ebp], eax
$L8293:
	cmp	DWORD PTR _lpSrchSelectedInstance$[ebp], 0
	je	SHORT $L8295

; 1249 :             // Check to see if the current EI is selected.
; 1250 :             if ( hEntityInstance != lpSrchSelectedInstance->xEntityInstance )

	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	eax, DWORD PTR _hEntityInstance$[ebp]
	cmp	eax, DWORD PTR [edx+12]
	je	SHORT $L8296

; 1251 :                continue;

	jmp	SHORT $L8294
$L8296:

; 1252 : 
; 1253 :             if ( lpViewEntity != zGETPTR( lpSrchSelectedInstance->hViewEntity ))

	mov	ecx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	DWORD PTR _lpViewEntity$[ebp], eax
	je	SHORT $L8298

; 1254 :                continue;

	jmp	SHORT $L8294
$L8298:

; 1255 : 
; 1256 :             // We have found a selected instance.
; 1257 :             nFlag = 1;

	mov	WORD PTR _nFlag$[ebp], 1

; 1258 :          }

	jmp	SHORT $L8294
$L8295:

; 1259 : 
; 1260 :          if ( nFlag == 0 )

	movsx	eax, WORD PTR _nFlag$[ebp]
	test	eax, eax
	jne	SHORT $L8299

; 1261 :             zstrcpy( szWriteLine, "<ListEntry>" );

	push	OFFSET FLAT:??_C@_0M@DALI@?$DMListEntry?$DO?$AA@ ; `string'
	lea	ecx, DWORD PTR _szWriteLine$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 1262 :          else

	jmp	SHORT $L8301
$L8299:

; 1263 :             zstrcpy( szWriteLine, "<ListEntry zSelect1=\"Y\">" );

	push	OFFSET FLAT:??_C@_0BJ@IMJE@?$DMListEntry?5zSelect1?$DN?$CCY?$CC?$DO?$AA@ ; `string'
	lea	edx, DWORD PTR _szWriteLine$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8
$L8301:

; 1264 : 
; 1265 :          if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_STARTENTITY,
; 1266 :                                          szWriteLine, 0,
; 1267 :                                          lpListEntryInstance->nLevel,
; 1268 :                                          lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+10424]
	push	ecx
	mov	edx, DWORD PTR _lpListEntryInstance$[ebp]
	mov	ax, WORD PTR [edx+58]
	push	eax
	push	0
	lea	ecx, DWORD PTR _szWriteLine$[ebp]
	push	ecx
	push	4
	mov	edx, DWORD PTR _lpTaskView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [eax+10420]
	movsx	ecx, ax
	cmp	ecx, -16				; fffffff0H
	jne	SHORT $L8303

; 1270 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8248
$L8303:

; 1272 : 
; 1273 :          // Go to fnConvertEntity for the ListEntryValues.
; 1274 :          for ( lpChildInstance = zGETPTR( lpListEntryInstance->hNextHier );
; 1275 :                lpChildInstance;
; 1276 :                lpChildInstance = zGETPTR( lpChildInstance->hNextHier ) )

	mov	edx, DWORD PTR _lpListEntryInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildInstance$[ebp], eax
	jmp	SHORT $L8306
$L8307:
	mov	ecx, DWORD PTR _lpChildInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildInstance$[ebp], eax
$L8306:
	cmp	DWORD PTR _lpChildInstance$[ebp], 0
	je	SHORT $L8308

; 1278 :             // If the child instance is at the same level as the current instance
; 1279 :             // then there are no more children of lpListEntryInstance.
; 1280 :             if ( lpChildInstance->nLevel <= lpListEntryInstance->nLevel )

	mov	eax, DWORD PTR _lpChildInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpListEntryInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jg	SHORT $L8309

; 1281 :                break;

	jmp	SHORT $L8308
$L8309:

; 1282 : 
; 1283 :             // If lpChildInstance is not a direct child of lpListEntryInstance then
; 1284 :             // skip it (and it's twins if it has any).
; 1285 :             if ( lpChildInstance->nLevel > lpListEntryInstance->nLevel + 1 )

	mov	ecx, DWORD PTR _lpChildInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpListEntryInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	add	ecx, 1
	cmp	edx, ecx
	jle	SHORT $L8310
$L8312:

; 1287 :                while ( lpChildInstance->hNextTwin )

	mov	edx, DWORD PTR _lpChildInstance$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8313

; 1288 :                   lpChildInstance = zGETPTR( lpChildInstance->hNextTwin );

	mov	eax, DWORD PTR _lpChildInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildInstance$[ebp], eax
	jmp	SHORT $L8312
$L8313:

; 1289 : 
; 1290 :                continue;

	jmp	SHORT $L8307
$L8310:

; 1292 : 
; 1293 :             // Write the child instance to the XML stream.
; 1294 :             if ( fnConvertEntity( lpTaskView, lpWriteInfo, lpChildInstance ) != 0 )

	mov	edx, DWORD PTR _lpChildInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	call	_fnConvertEntity@12
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8315

; 1295 :                return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8248
$L8315:

; 1296 :          }

	jmp	$L8307
$L8308:

; 1297 : 
; 1298 :          zstrcpy( szWriteLine, "</ListEntry>" );

	push	OFFSET FLAT:??_C@_0N@BMND@?$DM?1ListEntry?$DO?$AA@ ; `string'
	lea	eax, DWORD PTR _szWriteLine$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 1299 :          fnEstablishViewForInstance( lpWriteInfo->vOI, 0, lpListEntryInstance );

	mov	ecx, DWORD PTR _lpListEntryInstance$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1300 :          if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_ENDENTITY, szWriteLine, 0,
; 1301 :                                          lpListEntryInstance->nLevel,
; 1302 :                                          lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+10424]
	push	edx
	mov	eax, DWORD PTR _lpListEntryInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	push	ecx
	push	0
	lea	edx, DWORD PTR _szWriteLine$[ebp]
	push	edx
	push	8
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [ecx+10420]
	movsx	edx, ax
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8317

; 1304 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8248
$L8317:

; 1306 :       }

	jmp	$L8287
$L8288:

; 1308 :    else

	jmp	$L8351
$L8282:

; 1309 :    // If there are ComboValue entries, process them.
; 1310 :    if ( pchEntityName &&
; 1311 :         zstrcmp( pchEntityName, "ComboValue" ) == 0 )

	cmp	DWORD PTR _pchEntityName$[ebp], 0
	je	$L8325
	mov	eax, DWORD PTR _pchEntityName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	movsx	edx, BYTE PTR ??_C@_0L@NDAB@ComboValue?$AA@
	cmp	ecx, edx
	jne	SHORT $L9170
	push	OFFSET FLAT:??_C@_0L@NDAB@ComboValue?$AA@ ; `string'
	mov	eax, DWORD PTR _pchEntityName$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -568+[ebp], eax
	jmp	SHORT $L9171
$L9170:
	mov	ecx, DWORD PTR _pchEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	movsx	eax, BYTE PTR ??_C@_0L@NDAB@ComboValue?$AA@
	sub	edx, eax
	xor	ecx, ecx
	test	edx, edx
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -568+[ebp], ecx
$L9171:
	cmp	DWORD PTR -568+[ebp], 0
	jne	$L8325

; 1313 :       // Process subentities.
; 1314 :       // Set the Control name in the "entity stack".
; 1315 :       fnEstablishViewForInstance( lpWriteInfo->vOI, 0, lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1316 :       pchEntityName = lpViewEntity->szName;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	mov	DWORD PTR _pchEntityName$[ebp], edx

; 1317 :       lpWriteInfo->pchEntityName[ lpEntityInstance->nLevel ] = pchEntityName;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR _pchEntityName$[ebp]
	mov	DWORD PTR [edx+ecx*4+10020], eax

; 1318 : 
; 1319 :       for ( lpComboInstance = zGETPTR( lpEntityInstance->hNextHier );
; 1320 :             lpComboInstance;
; 1321 :             lpComboInstance = zGETPTR( lpComboInstance->hNextTwin ) )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpComboInstance$[ebp], eax
	jmp	SHORT $L8329
$L8330:
	mov	eax, DWORD PTR _lpComboInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpComboInstance$[ebp], eax
$L8329:
	cmp	DWORD PTR _lpComboInstance$[ebp], 0
	je	$L8331

; 1323 :          nFlag = 0;

	mov	WORD PTR _nFlag$[ebp], 0

; 1324 :          fnEstablishViewForInstance( lpWriteInfo->vTemp, 0, lpComboInstance );

	mov	edx, DWORD PTR _lpComboInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1325 :          lpViewEntity = zGETPTR( lpComboInstance->hViewEntity );

	mov	edx, DWORD PTR _lpComboInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1326 :          hEntityInstance = zGETHNDL( lpComboInstance );

	mov	ecx, DWORD PTR _lpComboInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hEntityInstance$[ebp], eax

; 1327 : 
; 1328 :          // Now check to see if the entity is selected.
; 1329 :          for ( lpSrchSelectedInstance = zGETPTR( lpWriteInfo->lpViewCsr->hFirstSelectedInstance );
; 1330 :                lpSrchSelectedInstance;
; 1331 :                lpSrchSelectedInstance = zGETPTR( lpSrchSelectedInstance->hNextSelectedInstance ) )

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchSelectedInstance$[ebp], eax
	jmp	SHORT $L8336
$L8337:
	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchSelectedInstance$[ebp], eax
$L8336:
	cmp	DWORD PTR _lpSrchSelectedInstance$[ebp], 0
	je	SHORT $L8338

; 1333 :             // Check to see if the current EI is selected.
; 1334 :             if ( hEntityInstance != lpSrchSelectedInstance->xEntityInstance )

	mov	ecx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	edx, DWORD PTR _hEntityInstance$[ebp]
	cmp	edx, DWORD PTR [ecx+12]
	je	SHORT $L8339

; 1335 :                continue;

	jmp	SHORT $L8337
$L8339:

; 1336 : 
; 1337 :             if ( lpViewEntity != zGETPTR( lpSrchSelectedInstance->hViewEntity ))

	mov	eax, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	DWORD PTR _lpViewEntity$[ebp], eax
	je	SHORT $L8341

; 1338 :                continue;

	jmp	SHORT $L8337
$L8341:

; 1339 : 
; 1340 :             // We have found a selected instance.
; 1341 :             nFlag = 1;

	mov	WORD PTR _nFlag$[ebp], 1

; 1342 :          }

	jmp	SHORT $L8337
$L8338:

; 1343 :          if ( nFlag == 0 )

	movsx	edx, WORD PTR _nFlag$[ebp]
	test	edx, edx
	jne	SHORT $L8342

; 1344 :             zstrcpy( szWriteLine, "<ComboValue>" );

	push	OFFSET FLAT:??_C@_0N@JEIO@?$DMComboValue?$DO?$AA@ ; `string'
	lea	eax, DWORD PTR _szWriteLine$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 1345 :          else

	jmp	SHORT $L8344
$L8342:

; 1346 :             zstrcpy( szWriteLine, "<ComboValue zSelect1=\"Y\">" );

	push	OFFSET FLAT:??_C@_0BK@MLPJ@?$DMComboValue?5zSelect1?$DN?$CCY?$CC?$DO?$AA@ ; `string'
	lea	ecx, DWORD PTR _szWriteLine$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8
$L8344:

; 1347 : 
; 1348 :          if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_STARTENTITY,
; 1349 :                                          szWriteLine, 0,
; 1350 :                                          lpComboInstance->nLevel,
; 1351 :                                          lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+10424]
	push	eax
	mov	ecx, DWORD PTR _lpComboInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	push	edx
	push	0
	lea	eax, DWORD PTR _szWriteLine$[ebp]
	push	eax
	push	4
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [edx+10420]
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8346

; 1353 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8248
$L8346:

; 1355 : 
; 1356 :          // Write the attribs for the entity.
; 1357 :          fnWriteAttribs( lpTaskView, lpWriteInfo, (zSHORT) (lpComboInstance->nLevel + 1),
; 1358 :                          zGETPTR( lpComboInstance->hViewEntity), 0 );

	push	0
	mov	ecx, DWORD PTR _lpComboInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpComboInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	add	ecx, 1
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	call	_fnWriteAttribs@20

; 1359 :          zstrcpy( szWriteLine, "</ComboValue>" );

	push	OFFSET FLAT:??_C@_0O@JKC@?$DM?1ComboValue?$DO?$AA@ ; `string'
	lea	ecx, DWORD PTR _szWriteLine$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 1360 :          fnEstablishViewForInstance( lpWriteInfo->vOI, 0, lpComboInstance );

	mov	edx, DWORD PTR _lpComboInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1361 :          if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_ENDENTITY,
; 1362 :                                          szWriteLine, 0,
; 1363 :                                          lpComboInstance->nLevel,
; 1364 :                                          lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+10424]
	push	eax
	mov	ecx, DWORD PTR _lpComboInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	push	edx
	push	0
	lea	eax, DWORD PTR _szWriteLine$[ebp]
	push	eax
	push	8
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [edx+10420]
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8350

; 1366 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8248
$L8350:

; 1368 :       }

	jmp	$L8330
$L8331:

; 1370 :    else

	jmp	SHORT $L8351
$L8325:

; 1372 :       // No subobject entries.
; 1373 :       // Create CurrentValue data line and write to file.
; 1374 :       lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib );

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 1375 :       lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1376 :       fnEstablishViewForInstance( lpWriteInfo->vOI, 0, lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1377 :       fnWriteAttribEntry( lpTaskView, lpWriteInfo, (zSHORT) (nLevel + 1),
; 1378 :                           lpViewEntity, "CurrentValue", lpViewAttrib );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0N@LFLB@CurrentValue?$AA@ ; `string'
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	movsx	ecx, WORD PTR _nLevel$[ebp]
	add	ecx, 1
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	call	_fnWriteAttribEntry@24
$L8351:

; 1380 : 
; 1381 :    // Create Close Control line and write to file
; 1382 :    if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_ENDENTITY, "</Control>",
; 1383 :                                    0, lpEntityInstance->nLevel,
; 1384 :                                    lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+10424]
	push	edx
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	push	ecx
	push	0
	push	OFFSET FLAT:??_C@_0L@DMN@?$DM?1Control?$DO?$AA@ ; `string'
	push	8
	mov	edx, DWORD PTR _lpTaskView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [eax+10420]
	movsx	ecx, ax
	cmp	ecx, -16				; fffffff0H
	jne	SHORT $L8355

; 1386 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8248
$L8355:

; 1388 : 
; 1389 :    // Make sure we indicate that we ended the Control structure.
; 1390 :    lpWriteInfo->pchEntityName[ lpEntityInstance->nLevel ] = 0;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	DWORD PTR [ecx+eax*4+10020], 0

; 1391 : 
; 1392 :    return( 0 );

	xor	ax, ax
$L8248:

; 1393 : 
; 1394 : } // fnWriteControlEntry

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_fnWriteControlEntry@16 ENDP
_TEXT	ENDS
PUBLIC	??_C@_07FNBF@Control?$AA@			; `string'
PUBLIC	??_C@_0P@BABB@ListEntryValue?$AA@		; `string'
EXTRN	_fnEntityInstanceIsDead@4:NEAR
;	COMDAT ??_C@_07FNBF@Control?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_07FNBF@Control?$AA@ DB 'Control', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@BABB@ListEntryValue?$AA@
_DATA	SEGMENT
??_C@_0P@BABB@ListEntryValue?$AA@ DB 'ListEntryValue', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTaskView$ = 8
_lpWriteInfo$ = 12
_lpEntityInstance$ = 16
_lpChildInstance$ = -16
_lpViewEntity$ = -4
_pchEntityName$ = -12
_lSkipAttribFlag$ = -8
_lpAbstractChild$8374 = -20
_lpAbstractEntity$8395 = -24
_fnConvertEntity@12 PROC NEAR

; 1411 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 1412 :    LPENTITYINSTANCE lpChildInstance;
; 1413 :    LPVIEWENTITY     lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1414 :    zPCHAR           pchEntityName;
; 1415 :    zULONG           lSkipAttribFlag = 0;

	mov	DWORD PTR _lSkipAttribFlag$[ebp], 0

; 1416 : 
; 1417 :    // If entity is "dead" then don't worry about it or it's children.
; 1418 :    if ( fnEntityInstanceIsDead( lpEntityInstance ) )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	call	_fnEntityInstanceIsDead@4
	movsx	eax, ax
	test	eax, eax
	je	SHORT $L8369

; 1419 :       return( 0 );

	xor	ax, ax
	jmp	$L8363
$L8369:

; 1420 : 
; 1421 :    // Skip hidden instances unless we are sending incremental flags.
; 1422 :    if ( lpEntityInstance->u.nInd.bHidden )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8370

; 1424 :       if ( (lpWriteInfo->lControl & zXML_INCREFLAGS) == 0 )

	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	and	ecx, 2
	test	ecx, ecx
	jne	SHORT $L8371

; 1425 :          return( 0 );  // Nope...skip hidden instances.

	xor	ax, ax
	jmp	$L8363
$L8371:

; 1426 : 
; 1427 :       // Turn off the hidden flag so we can write it's values.
; 1428 :       lpEntityInstance->u.nInd.bHidden = FALSE;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	ah, -5					; fffffffbH
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax
$L8370:

; 1430 : 
; 1431 :    // If the entity is an abstract child then the attribute values have
; 1432 :    // already been written so don't write it.
; 1433 :    // If the UPDATEDONLY flag is on we only want to write entities that have
; 1434 :    // been updated.
; 1435 :    if ( lpViewEntity->bAbstractChild == FALSE &&
; 1436 :         ((lpWriteInfo->lControl & zXML_UPDATEDONLY) == 0 ||
; 1437 :           lpEntityInstance->u.nInd.bUpdated  ||
; 1438 :           lpEntityInstance->u.nInd.bCreated  ||
; 1439 :           lpEntityInstance->u.nInd.bDeleted  ||
; 1440 :           lpEntityInstance->u.nInd.bIncluded ||
; 1441 :           lpEntityInstance->u.nInd.bExcluded) )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+239]
	shr	eax, 12					; 0000000cH
	and	eax, 1
	test	eax, eax
	jne	$L8394
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	and	edx, 4
	test	edx, edx
	je	SHORT $L8373
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 2
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8373
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8373
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 3
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8373
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 5
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8373
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	je	$L8394
$L8373:

; 1443 :       LPENTITYINSTANCE lpAbstractChild = 0;

	mov	DWORD PTR _lpAbstractChild$8374[ebp], 0

; 1444 : 
; 1445 :       pchEntityName = lpViewEntity->szName;

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	mov	DWORD PTR _pchEntityName$[ebp], ecx

; 1446 :       if ( (lpWriteInfo->lControl & 256 ) &&
; 1447 :            zstrcmp( pchEntityName, "Control" ) == 0 )

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+12]
	and	eax, 256				; 00000100H
	test	eax, eax
	je	$L8381
	mov	ecx, DWORD PTR _pchEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	movsx	eax, BYTE PTR ??_C@_07FNBF@Control?$AA@
	cmp	edx, eax
	jne	SHORT $L9173
	push	OFFSET FLAT:??_C@_07FNBF@Control?$AA@	; `string'
	mov	ecx, DWORD PTR _pchEntityName$[ebp]
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -28+[ebp], eax
	jmp	SHORT $L9174
$L9173:
	mov	edx, DWORD PTR _pchEntityName$[ebp]
	movsx	eax, BYTE PTR [edx]
	movsx	ecx, BYTE PTR ??_C@_07FNBF@Control?$AA@
	sub	eax, ecx
	xor	edx, edx
	test	eax, eax
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -28+[ebp], edx
$L9174:
	cmp	DWORD PTR -28+[ebp], 0
	jne	SHORT $L8381

; 1449 :          fnEstablishViewForInstance( lpWriteInfo->vOI, 0, lpEntityInstance );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1450 :          fnWriteControlEntry( lpTaskView, lpWriteInfo,
; 1451 :                               lpEntityInstance->nLevel, lpEntityInstance );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	call	_fnWriteControlEntry@16

; 1452 :          lSkipAttribFlag = 1;

	mov	DWORD PTR _lSkipAttribFlag$[ebp], 1

; 1454 :       else

	jmp	$L8392
$L8381:

; 1455 :          if ( (lpWriteInfo->lControl & 256 ) &&
; 1456 :               zstrcmp( pchEntityName, "ListEntryValue" ) == 0 )

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+12]
	and	eax, 256				; 00000100H
	test	eax, eax
	je	$L8390
	mov	ecx, DWORD PTR _pchEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	movsx	eax, BYTE PTR ??_C@_0P@BABB@ListEntryValue?$AA@
	cmp	edx, eax
	jne	SHORT $L9175
	push	OFFSET FLAT:??_C@_0P@BABB@ListEntryValue?$AA@ ; `string'
	mov	ecx, DWORD PTR _pchEntityName$[ebp]
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -32+[ebp], eax
	jmp	SHORT $L9176
$L9175:
	mov	edx, DWORD PTR _pchEntityName$[ebp]
	movsx	eax, BYTE PTR [edx]
	movsx	ecx, BYTE PTR ??_C@_0P@BABB@ListEntryValue?$AA@
	sub	eax, ecx
	xor	edx, edx
	test	eax, eax
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -32+[ebp], edx
$L9176:
	cmp	DWORD PTR -32+[ebp], 0
	jne	SHORT $L8390

; 1458 :             fnEstablishViewForInstance( lpWriteInfo->vOI, 0, lpEntityInstance );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1459 :             fnWriteListEntryValue( lpTaskView, lpWriteInfo,
; 1460 :                                    lpEntityInstance->nLevel,
; 1461 :                                    lpEntityInstance );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	call	_fnWriteListEntryValue@16

; 1462 :             lSkipAttribFlag = 1;

	mov	DWORD PTR _lSkipAttribFlag$[ebp], 1

; 1464 :          else

	jmp	SHORT $L8392
$L8390:

; 1466 :             lpAbstractChild = fnWriteEntityStartTag( lpTaskView, lpWriteInfo,
; 1467 :                                                      lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	call	_fnWriteEntityStartTag@12
	mov	DWORD PTR _lpAbstractChild$8374[ebp], eax

; 1468 : 
; 1469 :             // Write the attribs for the entity.
; 1470 :             fnWriteAttribs( lpTaskView, lpWriteInfo,
; 1471 :                             (zSHORT) (lpEntityInstance->nLevel + 1), lpViewEntity, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	add	ecx, 1
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	call	_fnWriteAttribs@20
$L8392:

; 1473 : 
; 1474 :       // If the entity is abstract write the attribs of the abstract child.
; 1475 :       if ( lpAbstractChild )

	cmp	DWORD PTR _lpAbstractChild$8374[ebp], 0
	je	SHORT $L8394

; 1477 :          LPVIEWENTITY lpAbstractEntity = zGETPTR( lpAbstractChild->hViewEntity );

	mov	ecx, DWORD PTR _lpAbstractChild$8374[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpAbstractEntity$8395[ebp], eax

; 1478 : 
; 1479 :          // Set entity cursor to point to abstract child.
; 1480 :          fnEstablishViewForInstance( lpWriteInfo->vOI, 0, lpAbstractChild );

	mov	eax, DWORD PTR _lpAbstractChild$8374[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1481 : 
; 1482 :          // Write attribs for abstract child.  Note that we use the level of the parent.
; 1483 :          fnWriteAttribs( lpTaskView, lpWriteInfo,
; 1484 :                          (zSHORT) (lpEntityInstance->nLevel + 1), lpAbstractEntity, 0 );

	push	0
	mov	eax, DWORD PTR _lpAbstractEntity$8395[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	add	edx, 1
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	call	_fnWriteAttribs@20
$L8394:

; 1488 : 
; 1489 :    // Now write the child instances.
; 1490 :    if ( lSkipAttribFlag == 0 )

	cmp	DWORD PTR _lSkipAttribFlag$[ebp], 0
	jne	$L8403

; 1492 :       for ( lpChildInstance = zGETPTR( lpEntityInstance->hNextHier );
; 1493 :             lpChildInstance;
; 1494 :             lpChildInstance = zGETPTR( lpChildInstance->hNextHier ) )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildInstance$[ebp], eax
	jmp	SHORT $L8401
$L8402:
	mov	ecx, DWORD PTR _lpChildInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildInstance$[ebp], eax
$L8401:
	cmp	DWORD PTR _lpChildInstance$[ebp], 0
	je	SHORT $L8403

; 1496 :          // If the child instance is at the same level as the current instance
; 1497 :          // then there are no more children of lpEntityInstance.
; 1498 :          if ( lpChildInstance->nLevel <= lpEntityInstance->nLevel )

	mov	eax, DWORD PTR _lpChildInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jg	SHORT $L8404

; 1499 :             break;

	jmp	SHORT $L8403
$L8404:

; 1500 : 
; 1501 :          // If lpChildInstance is not a direct child of lpEntityInstance then
; 1502 :          // skip it (and it's twins if it has any).
; 1503 :          if ( lpChildInstance->nLevel > lpEntityInstance->nLevel + 1 )

	mov	ecx, DWORD PTR _lpChildInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	add	ecx, 1
	cmp	edx, ecx
	jle	SHORT $L8405
$L8407:

; 1505 :             while ( lpChildInstance->hNextTwin )

	mov	edx, DWORD PTR _lpChildInstance$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8408

; 1506 :                lpChildInstance = zGETPTR( lpChildInstance->hNextTwin );

	mov	eax, DWORD PTR _lpChildInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildInstance$[ebp], eax
	jmp	SHORT $L8407
$L8408:

; 1507 : 
; 1508 :             continue;

	jmp	SHORT $L8402
$L8405:

; 1510 : 
; 1511 :          // Write the child instance to the XML stream.
; 1512 :          if ( fnConvertEntity( lpTaskView, lpWriteInfo, lpChildInstance ) != 0 )

	mov	edx, DWORD PTR _lpChildInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	call	_fnConvertEntity@12
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8410

; 1513 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8363
$L8410:

; 1514 :       }

	jmp	SHORT $L8402
$L8403:

; 1516 : 
; 1517 :    // If we wrote a start tag for this entity then we need to write an 'end' tag.
; 1518 :    if ( lpWriteInfo->pchEntityName[ lpEntityInstance->nLevel ] != 0 )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	cmp	DWORD PTR [edx+ecx*4+10020], 0
	je	SHORT $L8411

; 1520 :       zsprintf( lpWriteInfo->szBuffer, "</%s>",
; 1521 :                 lpWriteInfo->pchEntityName[ lpEntityInstance->nLevel ] );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4+10020]
	push	eax
	push	OFFSET FLAT:??_C@_05NLEO@?$DM?1?$CFs?$DO?$AA@ ; `string'
	mov	ecx, DWORD PTR _lpWriteInfo$[ebp]
	add	ecx, 20					; 00000014H
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 1522 : 
; 1523 :       if ( (*lpWriteInfo->lpfnWrite)( lpTaskView, zXML_ENDENTITY,
; 1524 :                                       lpWriteInfo->szBuffer, 0,
; 1525 :                                       lpEntityInstance->nLevel,
; 1526 :                                       lpWriteInfo->lpPtr ) == zCALL_ERROR )

	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	mov	eax, DWORD PTR [edx+10424]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	add	eax, 20					; 00000014H
	push	eax
	push	8
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWriteInfo$[ebp]
	call	DWORD PTR [edx+10420]
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8412

; 1528 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8363
$L8412:

; 1530 : 
; 1531 :       // We've written the end tag so set the entity name in the "entity
; 1532 :       // stack" to 0 to indicate it's been written.
; 1533 :       lpWriteInfo->pchEntityName[ lpEntityInstance->nLevel ] = 0;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpWriteInfo$[ebp]
	mov	DWORD PTR [eax+edx*4+10020], 0
$L8411:

; 1535 : 
; 1536 :    return( 0 );

	xor	ax, ax
$L8363:

; 1537 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_fnConvertEntity@12 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0CM@DIIJ@?$DM?$DPxml?5version?$DN?$CC1?40?$CC?5encoding?$DN?$CCis@ ; `string'
PUBLIC	??_C@_0DF@PFPK@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@ ; `string'
PUBLIC	??_C@_0CF@FHBM@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@ ; `string'
PUBLIC	??_C@_05LOON@?$DMzOI?$DO?$AA@			; `string'
PUBLIC	??_C@_06EJFA@?$DM?1zOI?$DO?$AA@			; `string'
PUBLIC	_WriteSubobjectToXML@20
EXTRN	_fnOperationCall:NEAR
EXTRN	_fnOperationReturn:NEAR
EXTRN	_fnValidViewEntity@16:NEAR
EXTRN	_fnDropView@4:NEAR
EXTRN	_CreateViewFromViewForTask@12:NEAR
EXTRN	_fnEstablishCursorForView:NEAR
EXTRN	__chkstk:NEAR
;	COMDAT ??_C@_0CM@DIIJ@?$DM?$DPxml?5version?$DN?$CC1?40?$CC?5encoding?$DN?$CCis@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_0CM@DIIJ@?$DM?$DPxml?5version?$DN?$CC1?40?$CC?5encoding?$DN?$CCis@ DB '<'
	DB	'?xml version="1.0" encoding="iso-8859-1"?>', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DF@PFPK@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@
_DATA	SEGMENT
??_C@_0DF@PFPK@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@ DB '<'
	DB	'zOI zObjectName="%s" zAppName="%s" zIncreFlags="Y">', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CF@FHBM@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@
_DATA	SEGMENT
??_C@_0CF@FHBM@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@ DB '<'
	DB	'zOI zObjectName="%s" zAppName="%s">', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_05LOON@?$DMzOI?$DO?$AA@
_DATA	SEGMENT
??_C@_05LOON@?$DMzOI?$DO?$AA@ DB '<zOI>', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_06EJFA@?$DM?1zOI?$DO?$AA@
_DATA	SEGMENT
??_C@_06EJFA@?$DM?1zOI?$DO?$AA@ DB '</zOI>', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vOI$ = 8
_pchEntityName$ = 12
_lControl$ = 16
_lpfnWrite$ = 20
_lpPtr$ = 24
_lpCurrentTask$ = -11472
_szBuffer$ = -1004
_lpViewOI$ = -11468
_lpViewCsr$ = -4
_lpViewOD$ = -1012
_lpEntityInstance$ = -1020
_lpStartEntityInstance$ = -11464
_lpEndEntityInstance$ = -1024
_lpApp$ = -1028
_bCloseZOI$ = -11460
_WriteInfo$ = -11456
_pch$ = -1008
_nRC$ = -1016
_lpViewEntityCsr$8445 = -11476
_lpSearch$8466 = -11480
_WriteSubobjectToXML@20 PROC NEAR

; 1577 : {

	push	ebp
	mov	ebp, esp
	mov	eax, 11480				; 00002cd8H
	call	__chkstk
	push	edi

; 1578 :    LPTASK            lpCurrentTask;
; 1579 :    zCHAR             szBuffer[ 1000 ];
; 1580 :    LPVIEWOI          lpViewOI;
; 1581 :    LPVIEWCSR         lpViewCsr;
; 1582 :    LPVIEWOD          lpViewOD;
; 1583 :    LPENTITYINSTANCE  lpEntityInstance;
; 1584 :    LPENTITYINSTANCE  lpStartEntityInstance;
; 1585 :    LPENTITYINSTANCE  lpEndEntityInstance;
; 1586 :    LPAPP             lpApp;
; 1587 :    zBOOL             bCloseZOI = FALSE;

	mov	BYTE PTR _bCloseZOI$[ebp], 0

; 1588 :    WriteInfoRecord   WriteInfo = { 0 };

	mov	DWORD PTR _WriteInfo$[ebp], 0
	mov	ecx, 2606				; 00000a2eH
	xor	eax, eax
	lea	edi, DWORD PTR _WriteInfo$[ebp+4]
	rep stosd

; 1589 :    zPCHAR            pch;
; 1590 :    zSHORT            nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 1591 : 
; 1592 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 1593 :    if ( (lpCurrentTask = fnOperationCall( iWriteSubobjectToXML, vOI,
; 1594 :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	push	553					; 00000229H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8437

; 1596 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8423
$L8437:

; 1598 : 
; 1599 :    lpViewCsr = (LPVIEWCSR) zGETPTR( vOI->hViewCsr );

	mov	ecx, DWORD PTR _vOI$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1600 :    lpViewOI  = (LPVIEWOI)  zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1601 :    lpViewOD  = (LPVIEWOD)  zGETPTR( vOI->hViewOD );

	mov	edx, DWORD PTR _vOI$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 1602 : 
; 1603 :    // If the entity name was supplied, then verify it.
; 1604 :    if ( pchEntityName && pchEntityName[ 0 ] )

	cmp	DWORD PTR _pchEntityName$[ebp], 0
	je	$L8444
	mov	ecx, DWORD PTR _pchEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	$L8444

; 1606 :       LPVIEWENTITYCSR lpViewEntityCsr;
; 1607 : 
; 1608 :       if ( fnValidViewEntity( &lpViewEntityCsr, vOI, pchEntityName, 0 ) == 0 )

	push	0
	mov	eax, DWORD PTR _pchEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpViewEntityCsr$8445[ebp]
	push	edx
	call	_fnValidViewEntity@16
	test	eax, eax
	jne	SHORT $L8446

; 1610 :          fnOperationReturn( iWriteSubobjectToXML, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	553					; 00000229H
	call	_fnOperationReturn
	add	esp, 8

; 1611 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8423
$L8446:

; 1613 : 
; 1614 :       if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	ecx, DWORD PTR _lpViewEntityCsr$8445[ebp]
	cmp	DWORD PTR [ecx+26], 1
	jne	SHORT $L8448

; 1615 :          fnEstablishCursorForView( lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$8445[ebp]
	push	edx
	call	_fnEstablishCursorForView
	add	esp, 4
$L8448:

; 1616 : 
; 1617 :       lpStartEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$8445[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartEntityInstance$[ebp], eax

; 1618 :       lpEndEntityInstance   = zGETPTR( lpStartEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEndEntityInstance$[ebp], eax

; 1620 :    else

	jmp	SHORT $L8451
$L8444:

; 1622 :       lpStartEntityInstance = zGETPTR( lpViewOI->hRootEntityInstance );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartEntityInstance$[ebp], eax

; 1623 :       lpEndEntityInstance   = 0;

	mov	DWORD PTR _lpEndEntityInstance$[ebp], 0
$L8451:

; 1625 : 
; 1626 :    // If we are only writing the root of the subobject then stop at the next twin.
; 1627 :    if ( lControl & zXML_ROOTONLY )

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 32					; 00000020H
	test	eax, eax
	je	SHORT $L8453

; 1628 :       lpEndEntityInstance = zGETPTR( lpStartEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEndEntityInstance$[ebp], eax
$L8453:

; 1629 : 
; 1630 :    pch = "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>";

	mov	DWORD PTR _pch$[ebp], OFFSET FLAT:??_C@_0CM@DIIJ@?$DM?$DPxml?5version?$DN?$CC1?40?$CC?5encoding?$DN?$CCis@ ; `string'

; 1631 :    if ( (*lpfnWrite)( vOI, 0, pch, 0, 0, lpPtr ) == zCALL_ERROR )

	mov	eax, DWORD PTR _lpPtr$[ebp]
	push	eax
	push	0
	push	0
	mov	ecx, DWORD PTR _pch$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _vOI$[ebp]
	push	edx
	call	DWORD PTR _lpfnWrite$[ebp]
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8456

; 1633 :       fnOperationReturn( iWriteSubobjectToXML, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	553					; 00000229H
	call	_fnOperationReturn
	add	esp, 8

; 1634 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8423
$L8456:

; 1636 : 
; 1637 :    if ( lControl & zXML_ZEIDONINFO )

	mov	edx, DWORD PTR _lControl$[ebp]
	and	edx, 1
	test	edx, edx
	je	$L8457

; 1639 :       lpApp = zGETPTR( lpViewOD->hApp );

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpApp$[ebp], eax

; 1640 : 
; 1641 :       if ( lControl & zXML_INCREFLAGS )

	mov	edx, DWORD PTR _lControl$[ebp]
	and	edx, 2
	test	edx, edx
	je	SHORT $L8459

; 1642 :          zsprintf( szBuffer, "<zOI zObjectName=\"%s\" zAppName=\"%s\" "
; 1643 :                    "zIncreFlags=\"Y\">", lpViewOD->szName, lpApp->szName );

	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 6
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0DF@PFPK@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@ ; `string'
	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 1644 :       else

	jmp	SHORT $L8461
$L8459:

; 1645 :          zsprintf( szBuffer, "<zOI zObjectName=\"%s\" zAppName=\"%s\">",
; 1646 :                    lpViewOD->szName, lpApp->szName );

	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 6
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0CF@FHBM@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@ ; `string'
	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H
$L8461:

; 1647 : 
; 1648 :       if ( (*lpfnWrite)( vOI, zXML_STARTOI, szBuffer, 0, 0, lpPtr ) == zCALL_ERROR )

	mov	eax, DWORD PTR _lpPtr$[ebp]
	push	eax
	push	0
	push	0
	lea	ecx, DWORD PTR _szBuffer$[ebp]
	push	ecx
	push	1
	mov	edx, DWORD PTR _vOI$[ebp]
	push	edx
	call	DWORD PTR _lpfnWrite$[ebp]
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8463

; 1650 :          fnOperationReturn( iWriteSubobjectToXML, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	553					; 00000229H
	call	_fnOperationReturn
	add	esp, 8

; 1651 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8423
$L8463:

; 1653 : 
; 1654 :       bCloseZOI = TRUE;

	mov	BYTE PTR _bCloseZOI$[ebp], 1

; 1656 :    else

	jmp	$L8471
$L8457:

; 1657 :    // If we are writing multiple root entities then we'll write an enclosing tag.
; 1658 :    if ( (lControl & zXML_ROOTONLY ) == 0 && lpStartEntityInstance->hNextTwin )

	mov	edx, DWORD PTR _lControl$[ebp]
	and	edx, 32					; 00000020H
	test	edx, edx
	jne	$L8471
	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	$L8471

; 1660 :       LPENTITYINSTANCE lpSearch;
; 1661 : 
; 1662 :       // Check to see if there's a non-hidden EI
; 1663 :       for ( lpSearch = zGETPTR( lpStartEntityInstance->hNextTwin );
; 1664 :             lpSearch;
; 1665 :             lpSearch = zGETPTR( lpSearch->hNextTwin ) )

	mov	ecx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearch$8466[ebp], eax
	jmp	SHORT $L8469
$L8470:
	mov	eax, DWORD PTR _lpSearch$8466[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearch$8466[ebp], eax
$L8469:
	cmp	DWORD PTR _lpSearch$8466[ebp], 0
	je	SHORT $L8471

; 1667 :          // If it's hidden, skip it.
; 1668 :          if ( lpSearch->u.nInd.bHidden )

	mov	edx, DWORD PTR _lpSearch$8466[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8472

; 1669 :             continue;

	jmp	SHORT $L8470
$L8472:

; 1670 : 
; 1671 :          // Entity isn't hidden so write the root tag and break out.
; 1672 :          zstrcpy( szBuffer, "<zOI>" );

	push	OFFSET FLAT:??_C@_05LOON@?$DMzOI?$DO?$AA@ ; `string'
	lea	ecx, DWORD PTR _szBuffer$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 1673 :          if ( (*lpfnWrite)( vOI, zXML_STARTOI, szBuffer, 0, 0, lpPtr ) == zCALL_ERROR )

	mov	edx, DWORD PTR _lpPtr$[ebp]
	push	edx
	push	0
	push	0
	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	1
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	call	DWORD PTR _lpfnWrite$[ebp]
	movsx	edx, ax
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8474

; 1675 :             fnOperationReturn( iWriteSubobjectToXML, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	553					; 00000229H
	call	_fnOperationReturn
	add	esp, 8

; 1676 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8423
$L8474:

; 1678 : 
; 1679 :          bCloseZOI = TRUE;

	mov	BYTE PTR _bCloseZOI$[ebp], 1
$L8471:

; 1684 : 
; 1685 :    WriteInfo.vOI             = vOI;

	mov	ecx, DWORD PTR _vOI$[ebp]
	mov	DWORD PTR _WriteInfo$[ebp], ecx

; 1686 :    WriteInfo.lpViewCsr       = lpViewCsr;

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	DWORD PTR _WriteInfo$[ebp+8], edx

; 1687 :    WriteInfo.lControl        = lControl;

	mov	eax, DWORD PTR _lControl$[ebp]
	mov	DWORD PTR _WriteInfo$[ebp+12], eax

; 1688 :    WriteInfo.lpfnWrite       = lpfnWrite;

	mov	ecx, DWORD PTR _lpfnWrite$[ebp]
	mov	DWORD PTR _WriteInfo$[ebp+10420], ecx

; 1689 :    WriteInfo.lpPtr           = lpPtr;

	mov	edx, DWORD PTR _lpPtr$[ebp]
	mov	DWORD PTR _WriteInfo$[ebp+10424], edx

; 1690 :    WriteInfo.lpSubobjectRoot = lpStartEntityInstance;

	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	DWORD PTR _WriteInfo$[ebp+16], eax

; 1691 :    CreateViewFromViewForTask( &WriteInfo.vTemp, vOI, 0 );

	push	0
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	lea	edx, DWORD PTR _WriteInfo$[ebp+4]
	push	edx
	call	_CreateViewFromViewForTask@12

; 1692 : 
; 1693 :    // Loop through the EIs and write them out.
; 1694 :    for ( lpEntityInstance = lpStartEntityInstance;
; 1695 :          lpEntityInstance != lpEndEntityInstance;
; 1696 :          lpEntityInstance = zGETPTR( lpEntityInstance->hNextTwin ) )

	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
	jmp	SHORT $L8476
$L8477:
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L8476:
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	eax, DWORD PTR _lpEndEntityInstance$[ebp]
	je	SHORT $L8478

; 1698 :       if ( fnConvertEntity( vOI, &WriteInfo, lpEntityInstance ) != 0 )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	lea	edx, DWORD PTR _WriteInfo$[ebp]
	push	edx
	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	call	_fnConvertEntity@12
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L8479

; 1699 :          goto EndOfFunction;

	jmp	$EndOfFunction$8480
$L8479:

; 1700 :    }

	jmp	SHORT $L8477
$L8478:

; 1701 : 
; 1702 :    if ( bCloseZOI )

	mov	edx, DWORD PTR _bCloseZOI$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L8483

; 1704 :       pch = "</zOI>";

	mov	DWORD PTR _pch$[ebp], OFFSET FLAT:??_C@_06EJFA@?$DM?1zOI?$DO?$AA@ ; `string'

; 1705 :       if ( (*lpfnWrite)( vOI, zXML_ENDOI, pch, 0, 0, lpPtr ) == zCALL_ERROR )

	mov	eax, DWORD PTR _lpPtr$[ebp]
	push	eax
	push	0
	push	0
	mov	ecx, DWORD PTR _pch$[ebp]
	push	ecx
	push	2
	mov	edx, DWORD PTR _vOI$[ebp]
	push	edx
	call	DWORD PTR _lpfnWrite$[ebp]
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8483

; 1706 :          goto EndOfFunction;

	jmp	$EndOfFunction$8480
$L8483:

; 1708 : 
; 1709 :    // If we are writing incre flags then we might have turned off some hidden
; 1710 :    // flags.  Turn them back on.
; 1711 :    if ( lControl & zXML_INCREFLAGS )

	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 2
	test	ecx, ecx
	je	SHORT $L8488

; 1713 :       for ( lpEntityInstance = lpStartEntityInstance;
; 1714 :             lpEntityInstance != lpEndEntityInstance;
; 1715 :             lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier ) )

	mov	edx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	DWORD PTR _lpEntityInstance$[ebp], edx
	jmp	SHORT $L8486
$L8487:
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L8486:
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	edx, DWORD PTR _lpEndEntityInstance$[ebp]
	je	SHORT $L8488

; 1717 :          if ( lpEntityInstance->u.nInd.bDeleted || lpEntityInstance->u.nInd.bExcluded )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8490
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	je	SHORT $L8489
$L8490:

; 1718 :             lpEntityInstance->u.nInd.bHidden = TRUE;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	dh, 4
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx
$L8489:

; 1719 :       }

	jmp	SHORT $L8487
$L8488:

; 1721 : 
; 1722 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$EndOfFunction$8480:

; 1723 : 
; 1724 : EndOfFunction:
; 1725 :    if ( WriteInfo.vTemp != 0 )

	cmp	DWORD PTR _WriteInfo$[ebp+4], 0
	je	SHORT $L8491

; 1726 :       fnDropView( WriteInfo.vTemp );

	mov	ecx, DWORD PTR _WriteInfo$[ebp+4]
	push	ecx
	call	_fnDropView@4
$L8491:

; 1727 : 
; 1728 :    fnOperationReturn( iWriteSubobjectToXML, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	553					; 00000229H
	call	_fnOperationReturn
	add	esp, 8

; 1729 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8423:

; 1730 : }

	pop	edi
	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_WriteSubobjectToXML@20 ENDP
_TEXT	ENDS
PUBLIC	_WriteOI_ToXML@16
_TEXT	SEGMENT
_vOI$ = 8
_lControl$ = 12
_lpfnWrite$ = 16
_lpPtr$ = 20
_lpCurrentTask$ = -8
_nRC$ = -4
_WriteOI_ToXML@16 PROC NEAR

; 1748 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 1749 :    LPTASK            lpCurrentTask;
; 1750 :    zSHORT            nRC;
; 1751 : 
; 1752 :    // If task not active or disabled, return zCALL_ERROR.
; 1753 :    if ( (lpCurrentTask = fnOperationCall( iWriteOI_ToXML, vOI, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	push	550					; 00000226H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8503

; 1755 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8500
$L8503:

; 1757 : 
; 1758 :    nRC = WriteSubobjectToXML( vOI, 0, lControl, lpfnWrite, lpPtr );

	mov	ecx, DWORD PTR _lpPtr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpfnWrite$[ebp]
	push	edx
	mov	eax, DWORD PTR _lControl$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	call	_WriteSubobjectToXML@20
	mov	WORD PTR _nRC$[ebp], ax

; 1759 : 
; 1760 :    fnOperationReturn( iWriteOI_ToXML, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	550					; 00000226H
	call	_fnOperationReturn
	add	esp, 8

; 1761 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8500:

; 1762 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_WriteOI_ToXML@16 ENDP
_TEXT	ENDS
PUBLIC	_WriteMultipleOIs_ToXML@20
EXTRN	_fnValidView:NEAR
EXTRN	_SfGetApplicationForSubtask@8:NEAR
_TEXT	SEGMENT
_vOI$ = 8
_nViewCount$ = 12
_lControl$ = 16
_lpfnWrite$ = 20
_lpPtr$ = 24
_lpCurrentTask$ = -11460
_szBuffer$ = -1004
_lpViewOI$ = -11456
_lpViewCsr$ = -4
_lpViewOD$ = -1012
_lpEntityInstance$ = -1016
_lpApp$ = -1020
_WriteInfo$ = -11452
_pch$ = -1008
_k$ = -1024
_WriteMultipleOIs_ToXML@20 PROC NEAR

; 1770 : {

	push	ebp
	mov	ebp, esp
	mov	eax, 11460				; 00002cc4H
	call	__chkstk
	push	edi

; 1771 :    LPTASK            lpCurrentTask;
; 1772 :    zCHAR             szBuffer[ 1000 ];
; 1773 :    LPVIEWOI          lpViewOI;
; 1774 :    LPVIEWCSR         lpViewCsr;
; 1775 :    LPVIEWOD          lpViewOD;
; 1776 :    LPENTITYINSTANCE  lpEntityInstance;
; 1777 :    LPAPP             lpApp;
; 1778 :    WriteInfoRecord   WriteInfo = { 0 };

	mov	DWORD PTR _WriteInfo$[ebp], 0
	mov	ecx, 2606				; 00000a2eH
	xor	eax, eax
	lea	edi, DWORD PTR _WriteInfo$[ebp+4]
	rep stosd

; 1779 :    zPCHAR            pch;
; 1780 :    zSHORT            k;
; 1781 : 
; 1782 :    if ( nViewCount == 0 )

	movsx	eax, WORD PTR _nViewCount$[ebp]
	test	eax, eax
	jne	SHORT $L8525

; 1783 :       return( 0 );

	xor	ax, ax
	jmp	$L8514
$L8525:

; 1784 : 
; 1785 :    // If task not active or disabled, return zCALL_ERROR.
; 1786 :    if ( (lpCurrentTask = fnOperationCall( iWriteOI_ToXML, vOI[ 0 ], 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _vOI$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	push	550					; 00000226H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8526

; 1788 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8514
$L8526:

; 1790 : 
; 1791 :    for ( k = 0; k < nViewCount; k++ )

	mov	WORD PTR _k$[ebp], 0
	jmp	SHORT $L8527
$L8528:
	mov	ax, WORD PTR _k$[ebp]
	add	ax, 1
	mov	WORD PTR _k$[ebp], ax
$L8527:
	movsx	ecx, WORD PTR _k$[ebp]
	movsx	edx, WORD PTR _nViewCount$[ebp]
	cmp	ecx, edx
	jge	SHORT $L8529

; 1793 :       if ( fnValidView( lpCurrentTask, vOI[ k ] ) == 0 )

	movsx	eax, WORD PTR _k$[ebp]
	mov	ecx, DWORD PTR _vOI$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnValidView
	add	esp, 8
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L8530

; 1795 :          fnOperationReturn( iWriteOI_ToXML, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	550					; 00000226H
	call	_fnOperationReturn
	add	esp, 8

; 1796 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8514
$L8530:

; 1798 :    }

	jmp	SHORT $L8528
$L8529:

; 1799 : 
; 1800 :    lpViewOD = (LPVIEWOD) zGETPTR( vOI[ 0 ]->hViewOD );

	mov	eax, DWORD PTR _vOI$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 1801 : 
; 1802 :    pch = "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>";

	mov	DWORD PTR _pch$[ebp], OFFSET FLAT:??_C@_0CM@DIIJ@?$DM?$DPxml?5version?$DN?$CC1?40?$CC?5encoding?$DN?$CCis@ ; `string'

; 1803 :    if ( (*lpfnWrite)( vOI[ 0 ], 0, pch, 0, 0, lpPtr ) == zCALL_ERROR )

	mov	eax, DWORD PTR _lpPtr$[ebp]
	push	eax
	push	0
	push	0
	mov	ecx, DWORD PTR _pch$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _vOI$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	DWORD PTR _lpfnWrite$[ebp]
	movsx	ecx, ax
	cmp	ecx, -16				; fffffff0H
	jne	SHORT $L8533

; 1805 :       fnOperationReturn( iWriteOI_ToXML, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	550					; 00000226H
	call	_fnOperationReturn
	add	esp, 8

; 1806 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8514
$L8533:

; 1808 : 
; 1809 :    if ( lControl & zXML_ZEIDONINFO )

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 1
	test	eax, eax
	je	$L8537

; 1811 :       SfGetApplicationForSubtask( &lpApp, vOI[ 0 ] );

	mov	ecx, DWORD PTR _vOI$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	lea	eax, DWORD PTR _lpApp$[ebp]
	push	eax
	call	_SfGetApplicationForSubtask@8

; 1812 : 
; 1813 :       if ( lControl & zXML_INCREFLAGS )

	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 2
	test	ecx, ecx
	je	SHORT $L8535

; 1814 :          zsprintf( szBuffer, "<zOI zObjectName=\"%s\" zAppName=\"%s\" "
; 1815 :                    "zIncreFlags=\"Y\">", lpViewOD->szName, lpApp->szName );

	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 6
	push	edx
	mov	eax, DWORD PTR _lpViewOD$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0DF@PFPK@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@ ; `string'
	lea	ecx, DWORD PTR _szBuffer$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 1816 :       else

	jmp	SHORT $L8536
$L8535:

; 1817 :          zsprintf( szBuffer, "<zOI zObjectName=\"%s\" zAppName=\"%s\">",
; 1818 :                    lpViewOD->szName, lpApp->szName );

	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 6
	push	edx
	mov	eax, DWORD PTR _lpViewOD$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0CF@FHBM@?$DMzOI?5zObjectName?$DN?$CC?$CFs?$CC?5zAppName?$DN?$CC@ ; `string'
	lea	ecx, DWORD PTR _szBuffer$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H
$L8536:

; 1819 : 
; 1820 :       if ( (*lpfnWrite)( vOI[ 0 ], zXML_STARTOI, szBuffer, 0, 0, lpPtr ) == zCALL_ERROR )

	mov	edx, DWORD PTR _lpPtr$[ebp]
	push	edx
	push	0
	push	0
	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	1
	mov	ecx, DWORD PTR _vOI$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR _lpfnWrite$[ebp]
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8537

; 1822 :          fnOperationReturn( iWriteOI_ToXML, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	550					; 00000226H
	call	_fnOperationReturn
	add	esp, 8

; 1823 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8514
$L8537:

; 1826 : 
; 1827 :    WriteInfo.lControl  = lControl;

	mov	edx, DWORD PTR _lControl$[ebp]
	mov	DWORD PTR _WriteInfo$[ebp+12], edx

; 1828 :    WriteInfo.lpfnWrite = lpfnWrite;

	mov	eax, DWORD PTR _lpfnWrite$[ebp]
	mov	DWORD PTR _WriteInfo$[ebp+10420], eax

; 1829 :    WriteInfo.lpPtr     = lpPtr;

	mov	ecx, DWORD PTR _lpPtr$[ebp]
	mov	DWORD PTR _WriteInfo$[ebp+10424], ecx

; 1830 : 
; 1831 :    for ( k = 0; k < nViewCount; k++ )

	mov	WORD PTR _k$[ebp], 0
	jmp	SHORT $L8538
$L8539:
	mov	dx, WORD PTR _k$[ebp]
	add	dx, 1
	mov	WORD PTR _k$[ebp], dx
$L8538:
	movsx	eax, WORD PTR _k$[ebp]
	movsx	ecx, WORD PTR _nViewCount$[ebp]
	cmp	eax, ecx
	jge	$L8540

; 1833 :       lpViewCsr = (LPVIEWCSR) zGETPTR( vOI[ k ]->hViewCsr );

	movsx	edx, WORD PTR _k$[ebp]
	mov	eax, DWORD PTR _vOI$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1834 :       lpViewOI  = (LPVIEWOI)  zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1835 : 
; 1836 :       WriteInfo.vOI = vOI[ k ];

	movsx	edx, WORD PTR _k$[ebp]
	mov	eax, DWORD PTR _vOI$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR _WriteInfo$[ebp], ecx

; 1837 : 
; 1838 :       for ( lpEntityInstance = zGETPTR( lpViewOI->hRootEntityInstance );
; 1839 :             lpEntityInstance;
; 1840 :             lpEntityInstance = zGETPTR( lpEntityInstance->hNextTwin ) )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
	jmp	SHORT $L8547
$L8548:
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L8547:
	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L8549

; 1842 :          if ( fnConvertEntity( vOI[ 0 ], &WriteInfo, lpEntityInstance ) != 0 )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	lea	ecx, DWORD PTR _WriteInfo$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vOI$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	_fnConvertEntity@12
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L8550

; 1844 :             fnOperationReturn( iWriteOI_ToXML, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	550					; 00000226H
	call	_fnOperationReturn
	add	esp, 8

; 1845 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8514
$L8550:

; 1847 :       }

	jmp	SHORT $L8548
$L8549:

; 1848 :    }

	jmp	$L8539
$L8540:

; 1849 : 
; 1850 :    if ( lControl & zXML_ZEIDONINFO )

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L8552

; 1852 :       pch = "</zOI>";

	mov	DWORD PTR _pch$[ebp], OFFSET FLAT:??_C@_06EJFA@?$DM?1zOI?$DO?$AA@ ; `string'

; 1853 :       if ( (*lpfnWrite)( vOI[ 0 ], zXML_ENDOI, pch, 0, 0, lpPtr ) == zCALL_ERROR )

	mov	ecx, DWORD PTR _lpPtr$[ebp]
	push	ecx
	push	0
	push	0
	mov	edx, DWORD PTR _pch$[ebp]
	push	edx
	push	2
	mov	eax, DWORD PTR _vOI$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	DWORD PTR _lpfnWrite$[ebp]
	movsx	edx, ax
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8552

; 1855 :          fnOperationReturn( iWriteOI_ToXML, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	550					; 00000226H
	call	_fnOperationReturn
	add	esp, 8

; 1856 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8514
$L8552:

; 1859 : 
; 1860 :    // If we are writing incre flags then we might have turned off some hidden
; 1861 :    // flags.  Turn them back on.
; 1862 :    if ( lControl & zXML_INCREFLAGS )

	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 2
	test	ecx, ecx
	je	$L8556

; 1864 :       for ( k = 0; k < nViewCount; k++ )

	mov	WORD PTR _k$[ebp], 0
	jmp	SHORT $L8554
$L8555:
	mov	dx, WORD PTR _k$[ebp]
	add	dx, 1
	mov	WORD PTR _k$[ebp], dx
$L8554:
	movsx	eax, WORD PTR _k$[ebp]
	movsx	ecx, WORD PTR _nViewCount$[ebp]
	cmp	eax, ecx
	jge	$L8556

; 1866 :          lpViewCsr = (LPVIEWCSR) zGETPTR( vOI[ k ]->hViewCsr );

	movsx	edx, WORD PTR _k$[ebp]
	mov	eax, DWORD PTR _vOI$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1867 :          lpViewOI  = (LPVIEWOI)  zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1868 : 
; 1869 :          for ( lpEntityInstance = zGETPTR( lpViewOI->hRootEntityInstance );
; 1870 :                lpEntityInstance;
; 1871 :                lpEntityInstance = zGETPTR( lpEntityInstance->hNextTwin ) )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
	jmp	SHORT $L8563
$L8564:
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L8563:
	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L8565

; 1873 :             if ( lpEntityInstance->u.nInd.bDeleted ||
; 1874 :                  lpEntityInstance->u.nInd.bExcluded )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8567
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	je	SHORT $L8566
$L8567:

; 1876 :                lpEntityInstance->u.nInd.bHidden = TRUE;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	dh, 4
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx
$L8566:

; 1878 :          }

	jmp	SHORT $L8564
$L8565:

; 1879 :       }

	jmp	$L8555
$L8556:

; 1881 : 
; 1882 :    fnOperationReturn( iWriteOI_ToXML, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	550					; 00000226H
	call	_fnOperationReturn
	add	esp, 8

; 1883 :    return( 0 );

	xor	ax, ax
$L8514:

; 1884 : }

	pop	edi
	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_WriteMultipleOIs_ToXML@20 ENDP
_TEXT	ENDS
PUBLIC	_fnGetIdentifierValue@16
_TEXT	SEGMENT
_ppAtts$ = 12
_pchIdName$ = 16
_ppchIdValue$ = 20
_k$ = -4
_fnGetIdentifierValue@16 PROC NEAR

; 1892 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 1893 :    zSHORT k;
; 1894 : 
; 1895 :    *ppchIdValue = 0;

	mov	eax, DWORD PTR _ppchIdValue$[ebp]
	mov	DWORD PTR [eax], 0

; 1896 : 
; 1897 :    for ( k = 0; ppAtts[ k ] != 0; k += 2 )

	mov	WORD PTR _k$[ebp], 0
	jmp	SHORT $L8579
$L8580:
	mov	cx, WORD PTR _k$[ebp]
	add	cx, 2
	mov	WORD PTR _k$[ebp], cx
$L8579:
	movsx	edx, WORD PTR _k$[ebp]
	mov	eax, DWORD PTR _ppAtts$[ebp]
	cmp	DWORD PTR [eax+edx*4], 0
	je	SHORT $L8581

; 1899 :       if ( zstrcmp( ppAtts[ k ], pchIdName ) == 0 )

	movsx	ecx, WORD PTR _k$[ebp]
	mov	edx, DWORD PTR _ppAtts$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _pchIdName$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L9182
	mov	ecx, DWORD PTR _pchIdName$[ebp]
	push	ecx
	movsx	edx, WORD PTR _k$[ebp]
	mov	eax, DWORD PTR _ppAtts$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -8+[ebp], eax
	jmp	SHORT $L9183
$L9182:
	movsx	edx, WORD PTR _k$[ebp]
	mov	eax, DWORD PTR _ppAtts$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _pchIdName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -8+[ebp], eax
$L9183:
	cmp	DWORD PTR -8+[ebp], 0
	jne	SHORT $L8588

; 1901 :          *ppchIdValue = (zPCHAR) ppAtts[ k + 1 ];

	movsx	ecx, WORD PTR _k$[ebp]
	mov	edx, DWORD PTR _ppchIdValue$[ebp]
	mov	eax, DWORD PTR _ppAtts$[ebp]
	mov	ecx, DWORD PTR [eax+ecx*4+4]
	mov	DWORD PTR [edx], ecx

; 1902 :          return;

	jmp	SHORT $L8581
$L8588:

; 1904 :    }

	jmp	$L8580
$L8581:

; 1905 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_fnGetIdentifierValue@16 ENDP
_TEXT	ENDS
PUBLIC	_fnTraceAttributes@8
PUBLIC	??_C@_0BB@FEMM@?$CIxml?$CJ?5Element?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BF@NAAN@?$CIxml?$CJ?5Attrib?5?$CFs?5?$DN?5?$CFs?$AA@ ; `string'
EXTRN	_TraceLineS@8:NEAR
;	COMDAT ??_C@_0BB@FEMM@?$CIxml?$CJ?5Element?5?$DN?5?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_0BB@FEMM@?$CIxml?$CJ?5Element?5?$DN?5?$AA@ DB '(xml) Element = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@NAAN@?$CIxml?$CJ?5Attrib?5?$CFs?5?$DN?5?$CFs?$AA@
_DATA	SEGMENT
??_C@_0BF@NAAN@?$CIxml?$CJ?5Attrib?5?$CFs?5?$DN?5?$CFs?$AA@ DB '(xml) Att'
	DB	'rib %s = %s', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_cpcElementName$ = 8
_ppAtts$ = 12
_k$ = -4
_szMsg$8601 = -2004
_fnTraceAttributes@8 PROC NEAR

; 1910 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 2004				; 000007d4H

; 1911 :    zSHORT k;
; 1912 : 
; 1913 :    TraceLineS( "(xml) Element = ", cpcElementName );

	mov	eax, DWORD PTR _cpcElementName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BB@FEMM@?$CIxml?$CJ?5Element?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1914 :    for ( k = 0; ppAtts[ k ] != 0; k += 2 )

	mov	WORD PTR _k$[ebp], 0
	jmp	SHORT $L8598
$L8599:
	mov	cx, WORD PTR _k$[ebp]
	add	cx, 2
	mov	WORD PTR _k$[ebp], cx
$L8598:
	movsx	edx, WORD PTR _k$[ebp]
	mov	eax, DWORD PTR _ppAtts$[ebp]
	cmp	DWORD PTR [eax+edx*4], 0
	je	SHORT $L8600

; 1916 :       zCHAR szMsg[ 2000 ];
; 1917 : 
; 1918 :       zsprintf( szMsg, "(xml) Attrib %s = %s", ppAtts[ k ], ppAtts[ k + 1 ] );

	movsx	ecx, WORD PTR _k$[ebp]
	mov	edx, DWORD PTR _ppAtts$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4+4]
	push	eax
	movsx	ecx, WORD PTR _k$[ebp]
	mov	edx, DWORD PTR _ppAtts$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	push	eax
	push	OFFSET FLAT:??_C@_0BF@NAAN@?$CIxml?$CJ?5Attrib?5?$CFs?5?$DN?5?$CFs?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$8601[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 1919 :       TraceLineS( szMsg, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	edx, DWORD PTR _szMsg$8601[ebp]
	push	edx
	call	_TraceLineS@8

; 1920 :    }

	jmp	SHORT $L8599
$L8600:

; 1921 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_fnTraceAttributes@8 ENDP
_TEXT	ENDS
PUBLIC	_fnProcessOI_Element@8
PUBLIC	??_C@_08BKDG@zAppName?$AA@			; `string'
PUBLIC	??_C@_0M@DBIO@zObjectName?$AA@			; `string'
PUBLIC	??_C@_0M@DGBK@zIncreFlags?$AA@			; `string'
EXTRN	_ActivateEmptyObjectInstance@16:NEAR
EXTRN	_SfCreateSubtask@12:NEAR
EXTRN	_SfDropSubtask@8:NEAR
;	COMDAT ??_C@_08BKDG@zAppName?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_08BKDG@zAppName?$AA@ DB 'zAppName', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@DBIO@zObjectName?$AA@
_DATA	SEGMENT
??_C@_0M@DBIO@zObjectName?$AA@ DB 'zObjectName', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@DGBK@zIncreFlags?$AA@
_DATA	SEGMENT
??_C@_0M@DGBK@zIncreFlags?$AA@ DB 'zIncreFlags', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpInfo$ = 8
_ppAtts$ = 12
_pchObjectName$ = -12
_pchAppName$ = -8
_pch$ = -4
_fnProcessOI_Element@8 PROC NEAR

; 1926 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 1927 :    zPCHAR pchObjectName;
; 1928 :    zPCHAR pchAppName;
; 1929 :    zPCHAR pch;
; 1930 : 
; 1931 :    // Activate the subtask/application if it's needed.
; 1932 :    if ( lpInfo->vSubtask == 0 )

	mov	eax, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [eax+2], 0
	jne	SHORT $L8614

; 1934 :       fnGetIdentifierValue( lpInfo, ppAtts, "zAppName", &pchAppName );

	lea	ecx, DWORD PTR _pchAppName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_08BKDG@zAppName?$AA@	; `string'
	mov	edx, DWORD PTR _ppAtts$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpInfo$[ebp]
	push	eax
	call	_fnGetIdentifierValue@16

; 1935 :       if ( pchAppName == 0 ||
; 1936 :            SfCreateSubtask( &lpInfo->vSubtask, 0, pchAppName ) == zCALL_ERROR )

	cmp	DWORD PTR _pchAppName$[ebp], 0
	je	SHORT $L8615
	mov	ecx, DWORD PTR _pchAppName$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpInfo$[ebp]
	add	edx, 2
	push	edx
	call	_SfCreateSubtask@12
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8614
$L8615:

; 1938 :          lpInfo->bFatalError = TRUE;

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	BYTE PTR [ecx+4850], 1

; 1939 :          return;

	jmp	$L8620
$L8614:

; 1942 : 
; 1943 :    // Activate an empty object instance.
; 1944 :    fnGetIdentifierValue( lpInfo, ppAtts, "zObjectName", &pchObjectName );

	lea	edx, DWORD PTR _pchObjectName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0M@DBIO@zObjectName?$AA@ ; `string'
	mov	eax, DWORD PTR _ppAtts$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	push	ecx
	call	_fnGetIdentifierValue@16

; 1945 :    if ( pchObjectName == 0 ||
; 1946 :         ActivateEmptyObjectInstance( &lpInfo->vOI, pchObjectName,
; 1947 :                                      lpInfo->vSubtask,
; 1948 :                                      zMULTIPLE ) == zCALL_ERROR )

	cmp	DWORD PTR _pchObjectName$[ebp], 0
	je	SHORT $L8618
	push	256					; 00000100H
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	mov	ecx, DWORD PTR _pchObjectName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpInfo$[ebp]
	add	edx, 6
	push	edx
	call	_ActivateEmptyObjectInstance@16
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8617
$L8618:

; 1950 :       SfDropSubtask( lpInfo->vSubtask, 0 );

	push	0
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	_SfDropSubtask@8

; 1951 :       lpInfo->bFatalError = TRUE;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	BYTE PTR [eax+4850], 1

; 1952 :       return;

	jmp	SHORT $L8620
$L8617:

; 1954 : 
; 1955 :    // Check for incremental update flags.
; 1956 :    fnGetIdentifierValue( lpInfo, ppAtts, "zIncreFlags", &pch );

	lea	ecx, DWORD PTR _pch$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0M@DGBK@zIncreFlags?$AA@ ; `string'
	mov	edx, DWORD PTR _ppAtts$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpInfo$[ebp]
	push	eax
	call	_fnGetIdentifierValue@16

; 1957 :    if ( pch && *pch == 'Y' )

	cmp	DWORD PTR _pch$[ebp], 0
	je	SHORT $L8620
	mov	ecx, DWORD PTR _pch$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 89					; 00000059H
	jne	SHORT $L8620

; 1958 :       lpInfo->bIncreFlags = TRUE;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	BYTE PTR [eax+4852], 1
$L8620:

; 1959 : 
; 1960 : } // fnProcessOI_Element

	mov	esp, ebp
	pop	ebp
	ret	8
_fnProcessOI_Element@8 ENDP
_TEXT	ENDS
PUBLIC	_fnProcessEntityElement@16
PUBLIC	??_C@_0DA@NBNK@?$CIxml?$CJ?5Parent?5mismatch?5?$CI?$CFs?5?$CB?$DN?5?$CFs?$CJ@ ; `string'
PUBLIC	??_C@_0L@NHGM@XML?5Parser?$AA@			; `string'
PUBLIC	??_C@_05NKPI@zEKey?$AA@				; `string'
EXTRN	_SysMessageBox@16:NEAR
EXTRN	_fnSetViewToSubobject:NEAR
EXTRN	_fnResetViewFromSubobject:NEAR
EXTRN	_fnCreateEntity@20:NEAR
EXTRN	__imp__strtoul:NEAR
;	COMDAT ??_C@_0DA@NBNK@?$CIxml?$CJ?5Parent?5mismatch?5?$CI?$CFs?5?$CB?$DN?5?$CFs?$CJ@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_0DA@NBNK@?$CIxml?$CJ?5Parent?5mismatch?5?$CI?$CFs?5?$CB?$DN?5?$CFs?$CJ@ DB '('
	DB	'xml) Parent mismatch (%s != %s) for entity: %s', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@NHGM@XML?5Parser?$AA@
_DATA	SEGMENT
??_C@_0L@NHGM@XML?5Parser?$AA@ DB 'XML Parser', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_05NKPI@zEKey?$AA@
_DATA	SEGMENT
??_C@_05NKPI@zEKey?$AA@ DB 'zEKey', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpInfo$ = 8
_cpcElementName$ = 12
_pchEntityName$ = 16
_ppAtts$ = 20
_lpViewEntity$ = -20
_lpParent$ = -16
_lpEntityInstance$ = -8
_lpViewEntityCsr$ = -24
_pchFlag$ = -12
_nLevel$ = -4
_szMsg$8646 = -280
_lpViewCsr$8651 = -284
_lpWkViewEntity$8658 = -288
_lpViewCsr$8674 = -292
_lER_Tok$8681 = -300
_lpWkViewEntity$8682 = -296
_fnProcessEntityElement@16 PROC NEAR

; 1967 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 308				; 00000134H

; 1968 :    LPVIEWENTITY      lpViewEntity;
; 1969 :    LPVIEWENTITY      lpParent;
; 1970 :    LPENTITYINSTANCE  lpEntityInstance;
; 1971 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1972 :    zPCHAR            pchFlag;
; 1973 :    zSHORT            nLevel;
; 1974 : 
; 1975 :    // Create the entity
; 1976 :    lpViewEntity = fnValidViewEntity( &lpViewEntityCsr, lpInfo->vOI, pchEntityName, 0 );

	push	0
	mov	eax, DWORD PTR _pchEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1977 :    if ( lpViewEntity == 0 )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L8637

; 1979 :       lpInfo->bFatalError = TRUE;

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	BYTE PTR [ecx+4850], 1

; 1980 :       return;

	jmp	$L8691
$L8637:

; 1982 : 
; 1983 :    // Check to see if the parent of the current entity is an abstract child.
; 1984 :    // If it is, and if the current entity is the first child found under the
; 1985 :    // abstract child, we need to bump up nDepth because the abstract child
; 1986 :    // is really two entity instances.
; 1987 :    lpParent = zGETPTR( lpViewEntity->hParent );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$[ebp], eax

; 1988 :    if ( lpParent && lpInfo->lpViewEntity &&
; 1989 :         zstrcmp( lpParent->szName, lpInfo->lpViewEntity->szName ) != 0 )

	cmp	DWORD PTR _lpParent$[ebp], 0
	je	$L8645
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	$L8645
	mov	edx, DWORD PTR _lpParent$[ebp]
	movsx	eax, BYTE PTR [edx+14]
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	movsx	ecx, BYTE PTR [edx+14]
	cmp	eax, ecx
	jne	SHORT $L9187
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+22]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpParent$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -304+[ebp], eax
	jmp	SHORT $L9188
$L9187:
	mov	edx, DWORD PTR _lpParent$[ebp]
	movsx	eax, BYTE PTR [edx+14]
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	movsx	ecx, BYTE PTR [edx+14]
	sub	eax, ecx
	xor	edx, edx
	test	eax, eax
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -304+[ebp], edx
$L9188:
	cmp	DWORD PTR -304+[ebp], 0
	je	SHORT $L8645

; 1991 :       zCHAR  szMsg[ 256 ];
; 1992 : 
; 1993 :       zsprintf( szMsg, "(xml) Parent mismatch (%s != %s) for entity: %s",
; 1994 :                 lpInfo->lpViewEntity->szName, lpParent->szName, pchEntityName );

	mov	eax, DWORD PTR _pchEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpParent$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+22]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0DA@NBNK@?$CIxml?$CJ?5Parent?5mismatch?5?$CI?$CFs?5?$CB?$DN?5?$CFs?$CJ@ ; `string'
	lea	ecx, DWORD PTR _szMsg$8646[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 20					; 00000014H

; 1995 :       TraceLineS( szMsg, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	edx, DWORD PTR _szMsg$8646[ebp]
	push	edx
	call	_TraceLineS@8

; 1996 :       SysMessageBox( 0, "XML Parser", szMsg, -1 );

	push	-1
	lea	eax, DWORD PTR _szMsg$8646[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0L@NHGM@XML?5Parser?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 1997 :       lpInfo->bFatalError = TRUE;

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	BYTE PTR [ecx+4850], 1

; 1998 :       return;

	jmp	$L8691
$L8645:

; 2000 : 
; 2001 :    lpInfo->nDepth++;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	ax, WORD PTR [edx]
	add	ax, 1
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	WORD PTR [ecx], ax

; 2002 : 
; 2003 :    if ( lpParent && lpParent->bAbstractChild &&
; 2004 :         lpInfo->EntityInfo[ lpParent->nHierNbr ].bFirstUnderAbChild == FALSE )

	cmp	DWORD PTR _lpParent$[ebp], 0
	je	SHORT $L8649
	mov	edx, DWORD PTR _lpParent$[ebp]
	mov	eax, DWORD PTR [edx+239]
	shr	eax, 12					; 0000000cH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8649
	mov	ecx, DWORD PTR _lpParent$[ebp]
	movsx	edx, WORD PTR [ecx+217]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4+850]
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8649

; 2006 :       lpInfo->EntityInfo[ lpParent->nHierNbr ].bFirstUnderAbChild = TRUE;

	mov	edx, DWORD PTR _lpParent$[ebp]
	movsx	eax, WORD PTR [edx+217]
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+850]
	or	edx, 1
	mov	eax, DWORD PTR _lpParent$[ebp]
	movsx	ecx, WORD PTR [eax+217]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [eax+ecx*4+850], edx

; 2007 :       lpInfo->nDepth++;

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	dx, WORD PTR [ecx]
	add	dx, 1
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	WORD PTR [eax], dx
$L8649:

; 2009 : 
; 2010 :    nLevel = lpInfo->nDepth;

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	dx, WORD PTR [ecx]
	mov	WORD PTR _nLevel$[ebp], dx

; 2011 : 
; 2012 :    if ( lpViewEntityCsr->nLevel > nLevel )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	ecx, edx
	jle	SHORT $L8650

; 2014 :       LPVIEWCSR lpViewCsr = zGETPTR( lpInfo->vOI->hViewCsr );

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$8651[ebp], eax
$L8654:

; 2015 : 
; 2016 :       while ( lpViewEntityCsr->nLevel > nLevel &&
; 2017 :               lpViewCsr->hFirstViewSubobject )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	ecx, edx
	jle	SHORT $L8655
	mov	eax, DWORD PTR _lpViewCsr$8651[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	SHORT $L8655

; 2019 :          fnResetViewFromSubobject( lpInfo->vOI );

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	_fnResetViewFromSubobject
	add	esp, 4

; 2020 :       }

	jmp	SHORT $L8654
$L8655:

; 2022 :    else

	jmp	SHORT $L8657
$L8650:

; 2023 :    if ( lpViewEntityCsr->nLevel < nLevel && lpInfo->lpPrevEntityInstance )  // dks 2009.11.11

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	ecx, edx
	jge	SHORT $L8657
	mov	eax, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [eax+14], 0
	je	SHORT $L8657

; 2025 :       // The view entity csr level is < the entity level.
; 2026 :       // In this case, the current (last) instance must be the
; 2027 :       // parent of the instance we are about to create and
; 2028 :       // it must have recursive behaviour. Otherwise we will
; 2029 :       // drop out and issue a level error
; 2030 :       LPVIEWENTITY lpWkViewEntity =
; 2031 :                   zGETPTR( lpInfo->lpPrevEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$8658[ebp], eax

; 2032 : 
; 2033 :       fnSetViewToSubobject( lpInfo->vOI, lpWkViewEntity, 0 );

	push	0
	mov	ecx, DWORD PTR _lpWkViewEntity$8658[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	_fnSetViewToSubobject
	add	esp, 12					; 0000000cH
$L8657:

; 2035 : 
; 2036 :    fnCreateEntity( lpInfo->vOI, lpViewEntity, lpViewEntityCsr, zPOS_LAST, 0 );

	push	0
	push	2
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	_fnCreateEntity@20

; 2037 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2038 : 
; 2039 :    // Now set the flags for the entity.
; 2040 :    lpEntityInstance->u.nIndicators = 0;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+6], 0

; 2041 :    lpEntityInstance->u.nInd.bUpdated = TRUE;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	al, 4
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 2042 :    fnGetIdentifierValue( lpInfo, ppAtts, "zEKey", &pchFlag );

	lea	edx, DWORD PTR _pchFlag$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_05NKPI@zEKey?$AA@	; `string'
	mov	eax, DWORD PTR _ppAtts$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	push	ecx
	call	_fnGetIdentifierValue@16

; 2043 :    if ( pchFlag )

	cmp	DWORD PTR _pchFlag$[ebp], 0
	je	SHORT $L8663

; 2044 :       lpEntityInstance->ulKey = (zULONG) zxtol( pchFlag );

	push	16					; 00000010H
	push	0
	mov	edx, DWORD PTR _pchFlag$[ebp]
	push	edx
	call	DWORD PTR __imp__strtoul
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+50], eax
$L8663:

; 2045 : 
; 2046 :    // Store the indicators so we can re-set the flags after the attribute
; 2047 :    // values have been set.
; 2048 :    lpInfo->nIndicators[ lpInfo->nDepth ] = lpEntityInstance->u.nIndicators;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	movsx	eax, WORD PTR [edx]
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [edx+6]
	mov	DWORD PTR [ecx+eax*4+34], edx

; 2049 :    lpInfo->lpEntityInstance[ lpInfo->nDepth ] = lpEntityInstance;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	movsx	ecx, WORD PTR [eax]
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+ecx*4+434], eax

; 2050 : 
; 2051 :    lpInfo->lpViewEntity = lpViewEntity;

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	DWORD PTR [ecx+22], edx

; 2052 : 
; 2053 :    // If the entity is an abstract entity then we need to create the abstract
; 2054 :    // child, too.  UNLESS the element and entity names are the same.  If they
; 2055 :    // are the the abstract parent has no child under it and the element name
; 2056 :    // *is* the name of the abstract element.  If this is the case then we
; 2057 :    // don't need to create an abstract child.
; 2058 :    if ( lpViewEntity->bAbstract &&
; 2059 :         zstrcmp( cpcElementName, pchEntityName ) != 0 )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+239]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	$L8671
	mov	edx, DWORD PTR _cpcElementName$[ebp]
	movsx	eax, BYTE PTR [edx]
	mov	ecx, DWORD PTR _pchEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L9189
	mov	eax, DWORD PTR _pchEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcElementName$[ebp]
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -308+[ebp], eax
	jmp	SHORT $L9190
$L9189:
	mov	edx, DWORD PTR _cpcElementName$[ebp]
	movsx	eax, BYTE PTR [edx]
	mov	ecx, DWORD PTR _pchEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -308+[ebp], ecx
$L9190:
	cmp	DWORD PTR -308+[ebp], 0
	je	$L8671

; 2061 :       // Init/reset any info stored for each entity type.
; 2062 :       lpInfo->EntityInfo[ lpViewEntity->nHierNbr ].bFirstUnderAbChild = FALSE;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+850]
	and	edx, -2					; fffffffeH
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+217]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [eax+ecx*4+850], edx

; 2063 : 
; 2064 :       // The entity is abstract.  This means that the element name had better
; 2065 :       // be the name of an abstract child entity.
; 2066 :       lpViewEntity = fnValidViewEntity( &lpViewEntityCsr, lpInfo->vOI,
; 2067 :                                         cpcElementName, 0 );

	push	0
	mov	ecx, DWORD PTR _cpcElementName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 2068 : 
; 2069 :       if ( lpViewEntity == 0 )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L8672

; 2071 :          lpInfo->bFatalError = TRUE;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	BYTE PTR [edx+4850], 1

; 2072 :          return;

	jmp	$L8691
$L8672:

; 2074 : 
; 2075 :       nLevel++;

	mov	ax, WORD PTR _nLevel$[ebp]
	add	ax, 1
	mov	WORD PTR _nLevel$[ebp], ax

; 2076 :       if ( lpViewEntityCsr->nLevel > nLevel )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	edx, eax
	jle	SHORT $L8673

; 2078 :          LPVIEWCSR lpViewCsr = zGETPTR( lpInfo->vOI->hViewCsr );

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$8674[ebp], eax
$L8677:

; 2079 : 
; 2080 :          while ( lpViewEntityCsr->nLevel > nLevel &&
; 2081 :                  lpViewCsr->hFirstViewSubobject )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	edx, eax
	jle	SHORT $L8678
	mov	ecx, DWORD PTR _lpViewCsr$8674[ebp]
	cmp	DWORD PTR [ecx+30], 0
	je	SHORT $L8678

; 2083 :             fnResetViewFromSubobject( lpInfo->vOI );

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	_fnResetViewFromSubobject
	add	esp, 4

; 2084 :          }

	jmp	SHORT $L8677
$L8678:

; 2086 :       else

	jmp	$L8680
$L8673:

; 2087 :       if ( lpViewEntityCsr->nLevel < nLevel )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	edx, eax
	jge	$L8680

; 2089 :          zLONG lER_Tok;
; 2090 : 
; 2091 :          // The view entity csr level is < the entity level.
; 2092 :          // In this case, the current instance must be the
; 2093 :          // parent of the instance we are about to create and
; 2094 :          // it must have recursive behaviour. Otherwise we will
; 2095 :          // drop out and issue a level error
; 2096 :          LPVIEWENTITY lpWkViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$8682[ebp], eax

; 2097 : 
; 2098 :          fnSetViewToSubobject( lpInfo->vOI, lpWkViewEntity, 0 );

	push	0
	mov	eax, DWORD PTR _lpWkViewEntity$8682[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	_fnSetViewToSubobject
	add	esp, 12					; 0000000cH

; 2099 : 
; 2100 :          // We have just set view to subobject so that the abstract child is
; 2101 :          // in view.  This means that the parent of the abstract child is now
; 2102 :          // referenced by the recursive parent.  Find the recursive parent
; 2103 :          // and set lpInfo accordingly.
; 2104 :          lER_Tok = lpWkViewEntity->lEREntTok;

	mov	eax, DWORD PTR _lpWkViewEntity$8682[ebp]
	mov	ecx, DWORD PTR [eax+195]
	mov	DWORD PTR _lER_Tok$8681[ebp], ecx

; 2105 :          for ( lpWkViewEntity = zGETPTR( lpWkViewEntity->hParent );
; 2106 :                lpWkViewEntity->lEREntTok != lER_Tok;
; 2107 :                lpWkViewEntity = zGETPTR( lpWkViewEntity->hParent ) )

	mov	edx, DWORD PTR _lpWkViewEntity$8682[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$8682[ebp], eax
	jmp	SHORT $L8686
$L8687:
	mov	ecx, DWORD PTR _lpWkViewEntity$8682[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$8682[ebp], eax
$L8686:
	mov	eax, DWORD PTR _lpWkViewEntity$8682[ebp]
	mov	ecx, DWORD PTR [eax+195]
	cmp	ecx, DWORD PTR _lER_Tok$8681[ebp]
	je	SHORT $L8688

; 2109 :             // Nothing needs to be done here.
; 2110 :          }

	jmp	SHORT $L8687
$L8688:

; 2111 : 
; 2112 :          lpInfo->lpViewEntity = lpWkViewEntity;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR _lpWkViewEntity$8682[ebp]
	mov	DWORD PTR [edx+22], eax
$L8680:

; 2114 : 
; 2115 :       fnCreateEntity( lpInfo->vOI, lpViewEntity, lpViewEntityCsr, zPOS_LAST, 0 );

	push	0
	push	2
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	_fnCreateEntity@20

; 2116 : 
; 2117 :       lpInfo->lpAbstractChild   = lpViewEntity;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	DWORD PTR [edx+26], eax

; 2118 :       lpInfo->lpAbstractChildEI = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [ecx+18], eax

; 2120 :    else

	jmp	SHORT $L8691
$L8671:

; 2122 :       lpInfo->lpAbstractChild   = 0;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [edx+26], 0

; 2123 :       lpInfo->lpAbstractChildEI = 0;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [eax+18], 0
$L8691:

; 2125 : 
; 2126 : } // fnProcessEntityElement

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_fnProcessEntityElement@16 ENDP
_TEXT	ENDS
PUBLIC	_fnProcessAttribElement@12
PUBLIC	??_C@_0CN@IKCJ@?$CIxml?$CJ?5Could?5not?5find?5Entity?4Attr@ ; `string'
;	COMDAT ??_C@_0CN@IKCJ@?$CIxml?$CJ?5Could?5not?5find?5Entity?4Attr@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_0CN@IKCJ@?$CIxml?$CJ?5Could?5not?5find?5Entity?4Attr@ DB '(xml) Cou'
	DB	'ld not find Entity.Attribute: %s.%s', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpInfo$ = 8
_pchAttribName$ = 12
_ppAtts$ = 16
_lpViewEntity$ = -8
_lpViewAttrib$ = -12
_pchFlag$ = -4
_szMsg$8736 = -268
_fnProcessAttribElement@12 PROC NEAR

; 2132 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 280				; 00000118H

; 2133 :    LPVIEWENTITY lpViewEntity;
; 2134 :    LPVIEWATTRIB lpViewAttrib;
; 2135 :    zPCHAR       pchFlag;
; 2136 : 
; 2137 :    lpInfo->nDepth++;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	cx, WORD PTR [eax]
	add	cx, 1
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	WORD PTR [edx], cx

; 2138 : 
; 2139 :    lpViewEntity = lpInfo->lpViewEntity;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	mov	DWORD PTR _lpViewEntity$[ebp], ecx

; 2140 : 
; 2141 :    // Look for the attribute.  Note that we can't use fnValidViewAttrib( )
; 2142 :    // because it won't find hidden attributes.
; 2143 :    for ( lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );
; 2144 :          lpViewAttrib;
; 2145 :          lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib ) )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+179]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	jmp	SHORT $L8705
$L8706:
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
$L8705:
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	$L8707

; 2147 :       if ( zstrcmp( lpViewAttrib->szName, pchAttribName ) == 0 ||
; 2148 :            zstrcmp( lpViewAttrib->szXML_ExternalName, pchAttribName ) == 0 )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _pchAttribName$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L9192
	mov	ecx, DWORD PTR _pchAttribName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -272+[ebp], eax
	jmp	SHORT $L9193
$L9192:
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _pchAttribName$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -272+[ebp], edx
$L9193:
	cmp	DWORD PTR -272+[ebp], 0
	je	SHORT $L8721
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+76]
	mov	edx, DWORD PTR _pchAttribName$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L9194
	mov	ecx, DWORD PTR _pchAttribName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	add	edx, 76					; 0000004cH
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -276+[ebp], eax
	jmp	SHORT $L9195
$L9194:
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+76]
	mov	edx, DWORD PTR _pchAttribName$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -276+[ebp], edx
$L9195:
	cmp	DWORD PTR -276+[ebp], 0
	jne	SHORT $L8720
$L8721:

; 2149 :          break;

	jmp	SHORT $L8707
$L8720:

; 2150 :    }

	jmp	$L8706
$L8707:

; 2151 : 
; 2152 :    // If we didn't find it, check the abstract child entity.
; 2153 :    if ( lpViewAttrib == 0 && lpViewEntity->bAbstract )

	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	jne	$L8727
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+239]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	$L8727

; 2155 :       lpViewEntity = lpInfo->lpAbstractChild;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+26]
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 2156 :       for ( lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );
; 2157 :             lpViewAttrib;
; 2158 :             lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib ) )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+179]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	jmp	SHORT $L8725
$L8726:
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
$L8725:
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	SHORT $L8727

; 2160 :          if ( zstrcmp( lpViewAttrib->szName, pchAttribName ) == 0 )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _pchAttribName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L9196
	mov	eax, DWORD PTR _pchAttribName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -280+[ebp], eax
	jmp	SHORT $L9197
$L9196:
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _pchAttribName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -280+[ebp], ecx
$L9197:
	cmp	DWORD PTR -280+[ebp], 0
	jne	SHORT $L8734

; 2161 :             break;

	jmp	SHORT $L8727
$L8734:

; 2162 :       }

	jmp	SHORT $L8726
$L8727:

; 2164 : 
; 2165 :    if ( lpViewAttrib == 0 )

	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	jne	SHORT $L8735

; 2167 :       zCHAR  szMsg[ 256 ];
; 2168 : 
; 2169 :       zsprintf( szMsg, "(xml) Could not find Entity.Attribute: %s.%s",
; 2170 :                 lpViewEntity->szName, pchAttribName );

	mov	edx, DWORD PTR _pchAttribName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0CN@IKCJ@?$CIxml?$CJ?5Could?5not?5find?5Entity?4Attr@ ; `string'
	lea	ecx, DWORD PTR _szMsg$8736[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 2171 :       TraceLineS( szMsg, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	edx, DWORD PTR _szMsg$8736[ebp]
	push	edx
	call	_TraceLineS@8

; 2172 :       SysMessageBox( 0, "XML Parser", szMsg, -1 );

	push	-1
	lea	eax, DWORD PTR _szMsg$8736[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0L@NHGM@XML?5Parser?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 2173 :       lpInfo->bFatalError = -1; // set it to be a temporary error (to prevent endElement from occurring once)

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	BYTE PTR [ecx+4850], 255		; 000000ffH

; 2174 :       lpInfo->nDepth--;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	ax, WORD PTR [edx]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	WORD PTR [ecx], ax

; 2175 :       return;

	jmp	$L8738
$L8735:

; 2177 : 
; 2178 :    lpInfo->lpViewAttrib = lpViewAttrib;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	DWORD PTR [edx+30], eax

; 2179 : 
; 2180 :    // Get the attribute flags.
; 2181 :    lpInfo->AttribFlags.u.uFlags = 0;

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [ecx+846], 0

; 2182 :    lpInfo->AttribFlags.u.bFlags.bUpdated = TRUE;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+846]
	or	al, 2
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [ecx+846], eax

; 2183 :    fnGetIdentifierValue( lpInfo, ppAtts, "zIncreFlags", &pchFlag );

	lea	edx, DWORD PTR _pchFlag$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0M@DGBK@zIncreFlags?$AA@ ; `string'
	mov	eax, DWORD PTR _ppAtts$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	push	ecx
	call	_fnGetIdentifierValue@16

; 2184 :    if ( lpInfo->bIncreFlags && pchFlag )

	mov	edx, DWORD PTR _lpInfo$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+4852]
	test	eax, eax
	je	SHORT $L8738
	cmp	DWORD PTR _pchFlag$[ebp], 0
	je	SHORT $L8738

; 2186 :       lpInfo->AttribFlags.u.bFlags.bActivated =
; 2187 :                                  pchFlag[ ATTRIB_FLAGS_ACTIVATED_IDX ] == 'Y';

	mov	ecx, DWORD PTR _pchFlag$[ebp]
	movsx	edx, BYTE PTR [ecx]
	xor	eax, eax
	cmp	edx, 89					; 00000059H
	sete	al
	and	eax, 1
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+846]
	and	edx, -2					; fffffffeH
	or	edx, eax
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [eax+846], edx

; 2188 :       lpInfo->AttribFlags.u.bFlags.bUpdated =
; 2189 :                                  pchFlag[ ATTRIB_FLAGS_UPDATED_IDX ] == 'Y';

	mov	ecx, DWORD PTR _pchFlag$[ebp]
	movsx	edx, BYTE PTR [ecx+1]
	xor	eax, eax
	cmp	edx, 89					; 00000059H
	sete	al
	and	eax, 1
	shl	eax, 1
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+846]
	and	edx, -3					; fffffffdH
	or	edx, eax
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [eax+846], edx
$L8738:

; 2191 : 
; 2192 : } // fnProcessAttribElement

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_fnProcessAttribElement@12 ENDP
_TEXT	ENDS
PUBLIC	_startElement
PUBLIC	??_C@_03PHMG@zOI?$AA@				; `string'
PUBLIC	??_C@_06PGCJ@zLevel?$AA@			; `string'
PUBLIC	??_C@_0BL@BLNO@Located?5zLevel?5parsing?5XML?$AA@ ; `string'
PUBLIC	??_C@_05CKBG@Error?$AA@				; `string'
PUBLIC	??_C@_06GMHC@zEName?$AA@			; `string'
PUBLIC	??_C@_0DD@LKE@?$CIxml?$CJ?5Could?5not?5find?5Entity?4Simp@ ; `string'
PUBLIC	??_C@_0DD@JDBG@?$CIxml?$CJ?5ERROR?5?9?5Attribute?5without?5@ ; `string'
EXTRN	_TraceLine:NEAR
EXTRN	_StoreValueInRecord@20:NEAR
EXTRN	_StoreStringInRecord@16:NEAR
;	COMDAT ??_C@_03PHMG@zOI?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_03PHMG@zOI?$AA@ DB 'zOI', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_06PGCJ@zLevel?$AA@
_DATA	SEGMENT
??_C@_06PGCJ@zLevel?$AA@ DB 'zLevel', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@BLNO@Located?5zLevel?5parsing?5XML?$AA@
_DATA	SEGMENT
??_C@_0BL@BLNO@Located?5zLevel?5parsing?5XML?$AA@ DB 'Located zLevel pars'
	DB	'ing XML', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_05CKBG@Error?$AA@
_DATA	SEGMENT
??_C@_05CKBG@Error?$AA@ DB 'Error', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_06GMHC@zEName?$AA@
_DATA	SEGMENT
??_C@_06GMHC@zEName?$AA@ DB 'zEName', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DD@LKE@?$CIxml?$CJ?5Could?5not?5find?5Entity?4Simp@
_DATA	SEGMENT
??_C@_0DD@LKE@?$CIxml?$CJ?5Could?5not?5find?5Entity?4Simp@ DB '(xml) Coul'
	DB	'd not find Entity.SimpleAttribute: %s.%s', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DD@JDBG@?$CIxml?$CJ?5ERROR?5?9?5Attribute?5without?5@
_DATA	SEGMENT
??_C@_0DD@JDBG@?$CIxml?$CJ?5ERROR?5?9?5Attribute?5without?5@ DB '(xml) ER'
	DB	'ROR - Attribute without an entity.  Tag = ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_pvUserData$ = 8
_cpcElementName$ = 12
_ppAtts$ = 16
_pchEntityFlag$ = -4
_pchEntityName$ = -12
_lpInfo$ = -8
_lpViewEntity$8773 = -16
_lpParentViewEntity$8787 = -20
_k$8810 = -24
_lpViewAttrib$8815 = -28
_lpAttribFlags$8816 = -32
_startElement PROC NEAR

; 2200 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 52					; 00000034H

; 2201 :    zPCHAR       pchEntityFlag;
; 2202 :    zPCHAR       pchEntityName;
; 2203 :    LPPARSERINFO lpInfo = (LPPARSERINFO) pvUserData;

	mov	eax, DWORD PTR _pvUserData$[ebp]
	mov	DWORD PTR _lpInfo$[ebp], eax

; 2204 : 
; 2205 :    // If we've had a fatal error then just skip processing.
; 2206 :    if ( lpInfo->bFatalError )

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+4850]
	test	edx, edx
	je	SHORT $L8751

; 2207 :       return;

	jmp	$L8746
$L8751:

; 2208 : 
; 2209 :    #ifdef TRACE_XML
; 2210 :       fnTraceAttributes( cpcElementName, ppAtts );
; 2211 :    #endif
; 2212 : 
; 2213 :    // If the element name is "zOI" then get info from attributes.
; 2214 :    if ( zstrcmp( cpcElementName, "zOI" ) == 0 )

	mov	eax, DWORD PTR _cpcElementName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	movsx	edx, BYTE PTR ??_C@_03PHMG@zOI?$AA@
	cmp	ecx, edx
	jne	SHORT $L9199
	push	OFFSET FLAT:??_C@_03PHMG@zOI?$AA@	; `string'
	mov	eax, DWORD PTR _cpcElementName$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -36+[ebp], eax
	jmp	SHORT $L9200
$L9199:
	mov	ecx, DWORD PTR _cpcElementName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	movsx	eax, BYTE PTR ??_C@_03PHMG@zOI?$AA@
	sub	edx, eax
	xor	ecx, ecx
	test	edx, edx
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -36+[ebp], ecx
$L9200:
	cmp	DWORD PTR -36+[ebp], 0
	jne	SHORT $L8758

; 2216 :       lpInfo->bZeidonXML = TRUE;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	BYTE PTR [edx+4851], 1

; 2217 :       fnProcessOI_Element( lpInfo, ppAtts );

	mov	eax, DWORD PTR _ppAtts$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	push	ecx
	call	_fnProcessOI_Element@8

; 2218 :       return;

	jmp	$L8746
$L8758:

; 2220 :    else
; 2221 :    if ( lpInfo->vOI == 0 )

	mov	edx, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [edx+6], 0
	jne	SHORT $L8762

; 2223 :       if ( ActivateEmptyObjectInstance( &lpInfo->vOI, lpInfo->lpViewOD->szName,
; 2224 :                                         lpInfo->vSubtask, zMULTIPLE ) == zCALL_ERROR )

	push	256					; 00000100H
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+10]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	add	ecx, 6
	push	ecx
	call	_ActivateEmptyObjectInstance@16
	movsx	edx, ax
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8762

; 2226 :          lpInfo->bFatalError = TRUE;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	BYTE PTR [eax+4850], 1

; 2227 :          return;

	jmp	$L8746
$L8762:

; 2230 : 
; 2231 :    // Check to see if the tag is an entity.  It will be an entity if there
; 2232 :    // is an identifier called zLevel.
; 2233 :    fnGetIdentifierValue( lpInfo, ppAtts, "zLevel", &pchEntityFlag );

	lea	ecx, DWORD PTR _pchEntityFlag$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_06PGCJ@zLevel?$AA@	; `string'
	mov	edx, DWORD PTR _ppAtts$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpInfo$[ebp]
	push	eax
	call	_fnGetIdentifierValue@16

; 2234 :    if ( pchEntityFlag && *pchEntityFlag )

	cmp	DWORD PTR _pchEntityFlag$[ebp], 0
	je	SHORT $L8764
	mov	ecx, DWORD PTR _pchEntityFlag$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	SHORT $L8764

; 2236 :       // Trying to find out when this occurs ... dks 2009.11.13
; 2237 :       SysMessageBox( lpInfo->vSubtask, "Error", "Located zLevel parsing XML", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0BL@BLNO@Located?5zLevel?5parsing?5XML?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_05CKBG@Error?$AA@	; `string'
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	_SysMessageBox@16

; 2238 : 
; 2239 :       // Check to see if the entity name is supplied.  It will be supplied
; 2240 :       // if the entity name is different from the element name.
; 2241 :       fnGetIdentifierValue( lpInfo, ppAtts, "zEName", &pchEntityName );

	lea	edx, DWORD PTR _pchEntityName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_06GMHC@zEName?$AA@	; `string'
	mov	eax, DWORD PTR _ppAtts$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	push	ecx
	call	_fnGetIdentifierValue@16

; 2242 :       if ( pchEntityName == 0 || *pchEntityName == 0 )

	cmp	DWORD PTR _pchEntityName$[ebp], 0
	je	SHORT $L8769
	mov	edx, DWORD PTR _pchEntityName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L8768
$L8769:

; 2244 :          // It wasn't supplied so use the element name.
; 2245 :          pchEntityName = (zPCHAR) cpcElementName;

	mov	ecx, DWORD PTR _cpcElementName$[ebp]
	mov	DWORD PTR _pchEntityName$[ebp], ecx
$L8768:

; 2247 : 
; 2248 :       fnProcessEntityElement( lpInfo, cpcElementName, pchEntityName, ppAtts );

	mov	edx, DWORD PTR _ppAtts$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcElementName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpInfo$[ebp]
	push	edx
	call	_fnProcessEntityElement@16

; 2249 :       return;

	jmp	$L8746
$L8764:

; 2251 :    else
; 2252 :    if ( lpInfo->bZeidonXML == FALSE )

	mov	eax, DWORD PTR _lpInfo$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4851]
	test	ecx, ecx
	jne	$L8809

; 2254 :       LPVIEWENTITY lpViewEntity;
; 2255 : 
; 2256 :       // Check to see if the element name matches an entity name.
; 2257 :       for ( lpViewEntity = zGETPTR( lpInfo->lpViewOD->hFirstOD_Entity );
; 2258 :             lpViewEntity;
; 2259 :             lpViewEntity = zGETPTR( lpViewEntity->hNextHier ) )

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+10]
	mov	ecx, DWORD PTR [eax+224]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8773[ebp], eax
	jmp	SHORT $L8776
$L8777:
	mov	edx, DWORD PTR _lpViewEntity$8773[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8773[ebp], eax
$L8776:
	cmp	DWORD PTR _lpViewEntity$8773[ebp], 0
	je	SHORT $L8778

; 2261 :          if ( zstrcmp( cpcElementName, lpViewEntity->szName ) == 0 )

	mov	ecx, DWORD PTR _cpcElementName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _lpViewEntity$8773[ebp]
	movsx	ecx, BYTE PTR [eax+14]
	cmp	edx, ecx
	jne	SHORT $L9201
	mov	edx, DWORD PTR _lpViewEntity$8773[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _cpcElementName$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -40+[ebp], eax
	jmp	SHORT $L9202
$L9201:
	mov	ecx, DWORD PTR _cpcElementName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _lpViewEntity$8773[ebp]
	movsx	ecx, BYTE PTR [eax+14]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -40+[ebp], eax
$L9202:
	cmp	DWORD PTR -40+[ebp], 0
	jne	SHORT $L8785

; 2262 :             break;

	jmp	SHORT $L8778
$L8785:

; 2263 :       }

	jmp	SHORT $L8777
$L8778:

; 2264 : 
; 2265 :       if ( lpViewEntity == 0 )  // did not find entity the normal way

	cmp	DWORD PTR _lpViewEntity$8773[ebp], 0
	jne	$L8792

; 2267 :          LPVIEWENTITY lpParentViewEntity;
; 2268 : 
; 2269 :           // Check for entity using the XML entity name (to permit us to process duplicate XML entity names).
; 2270 :          for ( lpViewEntity = zGETPTR( lpInfo->lpViewOD->hFirstOD_Entity );
; 2271 :                lpViewEntity;
; 2272 :                lpViewEntity = zGETPTR( lpViewEntity->hNextHier ) )

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	mov	eax, DWORD PTR [edx+224]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8773[ebp], eax
	jmp	SHORT $L8790
$L8791:
	mov	ecx, DWORD PTR _lpViewEntity$8773[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8773[ebp], eax
$L8790:
	cmp	DWORD PTR _lpViewEntity$8773[ebp], 0
	je	$L8792

; 2274 :             if ( lpViewEntity->szXML_Name[ 0 ] )

	mov	eax, DWORD PTR _lpViewEntity$8773[ebp]
	movsx	ecx, BYTE PTR [eax+47]
	test	ecx, ecx
	je	$L8808

; 2276 :                if ( zstrcmp( cpcElementName, lpViewEntity->szXML_Name ) == 0 )

	mov	edx, DWORD PTR _cpcElementName$[ebp]
	movsx	eax, BYTE PTR [edx]
	mov	ecx, DWORD PTR _lpViewEntity$8773[ebp]
	movsx	edx, BYTE PTR [ecx+47]
	cmp	eax, edx
	jne	SHORT $L9203
	mov	eax, DWORD PTR _lpViewEntity$8773[ebp]
	add	eax, 47					; 0000002fH
	push	eax
	mov	ecx, DWORD PTR _cpcElementName$[ebp]
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L9204
$L9203:
	mov	edx, DWORD PTR _cpcElementName$[ebp]
	movsx	eax, BYTE PTR [edx]
	mov	ecx, DWORD PTR _lpViewEntity$8773[ebp]
	movsx	edx, BYTE PTR [ecx+47]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -44+[ebp], ecx
$L9204:
	cmp	DWORD PTR -44+[ebp], 0
	jne	SHORT $L8808

; 2278 :                   lpParentViewEntity = zGETPTR( lpViewEntity->hParent );

	mov	edx, DWORD PTR _lpViewEntity$8773[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentViewEntity$8787[ebp], eax

; 2279 :                   if ( zstrcmp( lpParentViewEntity->szName, lpInfo->lpViewEntity->szName ) == 0 )

	mov	ecx, DWORD PTR _lpParentViewEntity$8787[ebp]
	movsx	edx, BYTE PTR [ecx+14]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	movsx	eax, BYTE PTR [ecx+14]
	cmp	edx, eax
	jne	SHORT $L9205
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpParentViewEntity$8787[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -48+[ebp], eax
	jmp	SHORT $L9206
$L9205:
	mov	ecx, DWORD PTR _lpParentViewEntity$8787[ebp]
	movsx	edx, BYTE PTR [ecx+14]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	movsx	eax, BYTE PTR [ecx+14]
	sub	edx, eax
	xor	ecx, ecx
	test	edx, edx
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -48+[ebp], ecx
$L9206:
	cmp	DWORD PTR -48+[ebp], 0
	jne	SHORT $L8808

; 2280 :                      break;

	jmp	SHORT $L8792
$L8808:

; 2283 :          }

	jmp	$L8791
$L8792:

; 2285 : 
; 2286 :       if ( lpViewEntity )

	cmp	DWORD PTR _lpViewEntity$8773[ebp], 0
	je	$L8809

; 2288 :          zSHORT k;
; 2289 : 
; 2290 :       // TraceLine( "StartElement ParentEntity: %s   Entity: %s [%d]", lpInfo->lpViewEntity ? lpInfo->lpViewEntity->szName : "<root>", lpViewEntity->szName, nStartCnt );
; 2291 :          fnProcessEntityElement( lpInfo, lpViewEntity->szName, lpViewEntity->szName, ppAtts );

	mov	edx, DWORD PTR _ppAtts$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$8773[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$8773[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpInfo$[ebp]
	push	edx
	call	_fnProcessEntityElement@16

; 2292 :          if ( lpInfo->bFatalError )

	mov	eax, DWORD PTR _lpInfo$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4850]
	test	ecx, ecx
	je	SHORT $L8811

; 2293 :             return;

	jmp	$L8746
$L8811:

; 2294 : 
; 2295 :          // Let's look for "simple attributes" and set them if defined in the LOD.  We will not
; 2296 :          // get a startElement or an endElement for the simple attributes, so we have to take
; 2297 :          // care of everything right here and now.
; 2298 :          for ( k = 0; ppAtts[ k ] != 0; k += 2 )

	mov	WORD PTR _k$8810[ebp], 0
	jmp	SHORT $L8812
$L8813:
	mov	dx, WORD PTR _k$8810[ebp]
	add	dx, 2
	mov	WORD PTR _k$8810[ebp], dx
$L8812:
	movsx	eax, WORD PTR _k$8810[ebp]
	mov	ecx, DWORD PTR _ppAtts$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	$L8814

; 2300 :             LPVIEWATTRIB  lpViewAttrib;
; 2301 :             LPATTRIBFLAGS lpAttribFlags;
; 2302 : 
; 2303 :             // Look for the "simple attribute".
; 2304 :             for ( lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );
; 2305 :                   lpViewAttrib;
; 2306 :                   lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib ) )

	mov	edx, DWORD PTR _lpViewEntity$8773[ebp]
	mov	eax, DWORD PTR [edx+179]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$8815[ebp], eax
	jmp	SHORT $L8819
$L8820:
	mov	ecx, DWORD PTR _lpViewAttrib$8815[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$8815[ebp], eax
$L8819:
	cmp	DWORD PTR _lpViewAttrib$8815[ebp], 0
	je	SHORT $L8821

; 2308 :                if ( zstrcmp( lpViewAttrib->szXML_SimpleName, ppAtts[ k ] ) == 0 )

	mov	eax, DWORD PTR _lpViewAttrib$8815[ebp]
	movsx	ecx, BYTE PTR [eax+43]
	movsx	edx, WORD PTR _k$8810[ebp]
	mov	eax, DWORD PTR _ppAtts$[ebp]
	mov	edx, DWORD PTR [eax+edx*4]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L9207
	movsx	ecx, WORD PTR _k$8810[ebp]
	mov	edx, DWORD PTR _ppAtts$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$8815[ebp]
	add	ecx, 43					; 0000002bH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -52+[ebp], eax
	jmp	SHORT $L9208
$L9207:
	mov	edx, DWORD PTR _lpViewAttrib$8815[ebp]
	movsx	eax, BYTE PTR [edx+43]
	movsx	ecx, WORD PTR _k$8810[ebp]
	mov	edx, DWORD PTR _ppAtts$[ebp]
	mov	ecx, DWORD PTR [edx+ecx*4]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -52+[ebp], ecx
$L9208:
	cmp	DWORD PTR -52+[ebp], 0
	jne	SHORT $L8828

; 2309 :                   break;

	jmp	SHORT $L8821
$L8828:

; 2310 :             }

	jmp	SHORT $L8820
$L8821:

; 2311 : 
; 2312 :             // If we didn't find it, we're not too worried, but will trace the failure.
; 2313 :             if ( lpViewAttrib == 0 )

	cmp	DWORD PTR _lpViewAttrib$8815[ebp], 0
	jne	SHORT $L8829

; 2315 :                TraceLine( "(xml) Could not find Entity.SimpleAttribute: %s.%s",
; 2316 :                           lpViewEntity->szName, ppAtts[ k ] );

	movsx	edx, WORD PTR _k$8810[ebp]
	mov	eax, DWORD PTR _ppAtts$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$8773[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0DD@LKE@?$CIxml?$CJ?5Could?5not?5find?5Entity?4Simp@ ; `string'
	call	_TraceLine
	add	esp, 12					; 0000000cH

; 2318 :             else

	jmp	$L8831
$L8829:

; 2320 :             // TraceLine( "(xml) Processing Entity.SimpleAttribute: %s.%s=%s",
; 2321 :             //            lpViewEntity->szName, ppAtts[ k ], ppAtts[ k + 1 ] );
; 2322 : 
; 2323 :                if ( lpViewAttrib->cType == zTYPE_BLOB )

	mov	eax, DWORD PTR _lpViewAttrib$8815[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 66					; 00000042H
	jne	SHORT $L8832

; 2325 :                   StoreValueInRecord( lpInfo->vOI, lpViewEntity, lpViewAttrib,
; 2326 :                                       (zPCHAR) ppAtts[ k + 1 ], strlen( ppAtts[ k + 1 ] ) );

	movsx	edx, WORD PTR _k$8810[ebp]
	mov	eax, DWORD PTR _ppAtts$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4+4]
	push	ecx
	call	_strlen
	add	esp, 4
	push	eax
	movsx	edx, WORD PTR _k$8810[ebp]
	mov	eax, DWORD PTR _ppAtts$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4+4]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$8815[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$8773[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	_StoreValueInRecord@20

; 2328 :                else

	jmp	SHORT $L8834
$L8832:

; 2330 :                   StoreStringInRecord( lpInfo->vOI, lpViewEntity, lpViewAttrib,
; 2331 :                                        ppAtts[ k + 1 ] );

	movsx	eax, WORD PTR _k$8810[ebp]
	mov	ecx, DWORD PTR _ppAtts$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+4]
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$8815[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$8773[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	_StoreStringInRecord@16
$L8834:

; 2333 : 
; 2334 :                // Set attribute flags.
; 2335 :                GetAttributeFlags( &lpAttribFlags, lpInfo->vOI, lpViewEntity, lpViewAttrib );

	mov	ecx, DWORD PTR _lpViewAttrib$8815[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$8773[ebp]
	push	edx
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	lea	edx, DWORD PTR _lpAttribFlags$8816[ebp]
	push	edx
	call	_GetAttributeFlags@16

; 2336 :                lpAttribFlags->u.uFlags = lpInfo->AttribFlags.u.uFlags;

	mov	eax, DWORD PTR _lpAttribFlags$8816[ebp]
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+846]
	mov	DWORD PTR [eax], edx
$L8831:

; 2338 :          }

	jmp	$L8813
$L8814:

; 2339 : 
; 2340 :          return;

	jmp	SHORT $L8746
$L8809:

; 2343 : 
; 2344 :    if ( lpInfo->lpViewEntity == 0 )

	mov	eax, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [eax+22], 0
	jne	SHORT $L8835

; 2346 :       TraceLineS( "(xml) ERROR - Attribute without an entity.  Tag = ", cpcElementName );

	mov	ecx, DWORD PTR _cpcElementName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0DD@JDBG@?$CIxml?$CJ?5ERROR?5?9?5Attribute?5without?5@ ; `string'
	call	_TraceLineS@8

; 2347 :       return;

	jmp	SHORT $L8746
$L8835:

; 2349 : 
; 2350 :    // If we get here then the element must be an attribute.
; 2351 :    fnProcessAttribElement( lpInfo, cpcElementName, ppAtts );

	mov	edx, DWORD PTR _ppAtts$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcElementName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	push	ecx
	call	_fnProcessAttribElement@12
$L8746:

; 2352 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_startElement ENDP
_TEXT	ENDS
PUBLIC	_endElement
PUBLIC	??_C@_0BI@NINK@Depth?5Error?5parsing?5XML?$AA@	; `string'
;	COMDAT ??_C@_0BI@NINK@Depth?5Error?5parsing?5XML?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_0BI@NINK@Depth?5Error?5parsing?5XML?$AA@ DB 'Depth Error parsing XM'
	DB	'L', 00H					; `string'
_DATA	ENDS
_TEXT	SEGMENT
_pvUserData$ = 8
_lpInfo$ = -4
_lpViewAttrib$8848 = -12
_lpViewEntity$8849 = -8
_lpAttribFlags$8851 = -16
_endElement PROC NEAR

; 2357 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 2358 :    LPPARSERINFO lpInfo = (LPPARSERINFO) pvUserData;

	mov	eax, DWORD PTR _pvUserData$[ebp]
	mov	DWORD PTR _lpInfo$[ebp], eax

; 2359 : 
; 2360 :    #ifdef TRACE_XML
; 2361 :       TraceLineS( "(xml) End of element ", cpcElementName );
; 2362 :    #endif
; 2363 : 
; 2364 :    if ( lpInfo->bFatalError )

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+4850]
	test	edx, edx
	je	SHORT $L8845

; 2366 :       if ( lpInfo->bFatalError < 0 )

	mov	eax, DWORD PTR _lpInfo$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4850]
	test	ecx, ecx
	jge	SHORT $L8846

; 2367 :          lpInfo->bFatalError = 0;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	BYTE PTR [edx+4850], 0
$L8846:

; 2368 : 
; 2369 :       return;

	jmp	$L8842
$L8845:

; 2371 : 
; 2372 :    // If lpViewAttrib is not 0 then we've just finished reading attribute data.
; 2373 :    // Set the attribute value.
; 2374 :    if ( lpInfo->lpViewAttrib )

	mov	eax, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	$L8847

; 2376 :       LPVIEWATTRIB  lpViewAttrib = lpInfo->lpViewAttrib;

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	mov	DWORD PTR _lpViewAttrib$8848[ebp], edx

; 2377 :       LPVIEWENTITY  lpViewEntity = zGETPTR( lpViewAttrib->hViewEntity );

	mov	eax, DWORD PTR _lpViewAttrib$8848[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8849[ebp], eax

; 2378 :       LPATTRIBFLAGS lpAttribFlags;
; 2379 : 
; 2380 :       if ( lpViewAttrib->cType == zTYPE_BLOB )

	mov	edx, DWORD PTR _lpViewAttrib$8848[ebp]
	movsx	eax, BYTE PTR [edx+202]
	cmp	eax, 66					; 00000042H
	jne	SHORT $L8852

; 2382 :          StoreValueInRecord( lpInfo->vOI, lpViewEntity, lpViewAttrib,
; 2383 :                              lpInfo->pchAttributeBuffer,
; 2384 :                              lpInfo->nBufferCurrentUsed );

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+842]
	push	edx
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+834]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$8848[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$8849[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	_StoreValueInRecord@20

; 2386 :       else

	jmp	SHORT $L8853
$L8852:

; 2388 :          // Terminate the string.
; 2389 :          lpInfo->pchAttributeBuffer[ lpInfo->nBufferCurrentUsed ] = 0;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+834]
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+842]
	mov	BYTE PTR [ecx+eax], 0

; 2390 : 
; 2391 :          StoreStringInRecord( lpInfo->vOI, lpViewEntity, lpViewAttrib,
; 2392 :                               lpInfo->pchAttributeBuffer );

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+834]
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$8848[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$8849[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	_StoreStringInRecord@16
$L8853:

; 2394 : 
; 2395 :       // Set attribute flags.
; 2396 :       GetAttributeFlags( &lpAttribFlags, lpInfo->vOI, lpViewEntity, lpViewAttrib );

	mov	ecx, DWORD PTR _lpViewAttrib$8848[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$8849[ebp]
	push	edx
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	lea	edx, DWORD PTR _lpAttribFlags$8851[ebp]
	push	edx
	call	_GetAttributeFlags@16

; 2397 :       lpAttribFlags->u.uFlags = lpInfo->AttribFlags.u.uFlags;

	mov	eax, DWORD PTR _lpAttribFlags$8851[ebp]
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+846]
	mov	DWORD PTR [eax], edx

; 2398 : 
; 2399 :       // Set ptr to indicate we are no longer processing an attribute.
; 2400 :       lpInfo->lpViewAttrib = 0;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [eax+30], 0

; 2401 : 
; 2402 :       // Indicate Attr buffer is empty.
; 2403 :       lpInfo->nBufferCurrentUsed = 0;

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [ecx+842], 0

; 2405 :    else

	jmp	$L8861
$L8847:

; 2406 :    if ( lpInfo->lpViewEntity )

	mov	edx, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	$L8861

; 2408 :       // Must be the end of the entity.  This means that the current entity
; 2409 :       // is now the parent of lpViewEntity.
; 2410 :       lpInfo->lpViewEntity = zGETPTR( lpInfo->lpViewEntity->hParent );

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [ecx+22], eax

; 2411 : 
; 2412 :       // We are done with this entity so we can now set its incremental update flags.
; 2413 :       if ( lpInfo->lpEntityInstance[ lpInfo->nDepth ] == 0 ) // zero if error

	mov	edx, DWORD PTR _lpInfo$[ebp]
	movsx	eax, WORD PTR [edx]
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [ecx+eax*4+434], 0
	jne	SHORT $L8857

; 2414 :          SysMessageBox( lpInfo->vSubtask, "Error", "Depth Error parsing XML", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0BI@NINK@Depth?5Error?5parsing?5XML?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_05CKBG@Error?$AA@	; `string'
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	_SysMessageBox@16

; 2415 :       else

	jmp	SHORT $L8859
$L8857:

; 2416 :          lpInfo->lpEntityInstance[ lpInfo->nDepth ]->u.nIndicators = lpInfo->nIndicators [ lpInfo->nDepth ];

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	movsx	edx, WORD PTR [ecx]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	movsx	ecx, WORD PTR [eax]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+ecx*4+434]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [eax+edx*4+34]
	mov	DWORD PTR [ecx+6], edx
$L8859:

; 2417 : 
; 2418 :       // If there is an abstract child then copy the indicators.
; 2419 :       if ( lpInfo->lpAbstractChildEI )

	mov	eax, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [eax+18], 0
	je	SHORT $L8860

; 2420 :          lpInfo->lpAbstractChildEI->u.nIndicators = lpInfo->nIndicators [ lpInfo->nDepth ];

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	movsx	edx, WORD PTR [ecx]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [eax+edx*4+34]
	mov	DWORD PTR [ecx+6], edx
$L8860:

; 2421 : 
; 2422 :       // If the entity is an abstract child it may have had a child entity underneath it.
; 2423 :       // If so we need to decrement nDepth because the abstract child takes up two entities.
; 2424 :       if ( lpInfo->lpViewEntity &&
; 2425 :            lpInfo->EntityInfo[ lpInfo->lpViewEntity->nHierNbr ].bFirstUnderAbChild )

	mov	eax, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	SHORT $L8861
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	movsx	eax, WORD PTR [edx+217]
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+850]
	and	edx, 1
	test	edx, edx
	je	SHORT $L8861

; 2427 :          lpInfo->nDepth--;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	cx, WORD PTR [eax]
	sub	cx, 1
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	WORD PTR [edx], cx

; 2428 :          lpInfo->EntityInfo[ lpInfo->lpViewEntity->nHierNbr ].bFirstUnderAbChild = 0;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	movsx	edx, WORD PTR [ecx+217]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4+850]
	and	ecx, -2					; fffffffeH
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR [edx+22]
	movsx	edx, WORD PTR [eax+217]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [eax+edx*4+850], ecx

; 2429 :          lpInfo->lpViewEntity = zGETPTR( lpInfo->lpViewEntity->hParent );

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [ecx+22], eax
$L8861:

; 2432 : 
; 2433 :    // We're ending an element so depth is now one less.
; 2434 :    lpInfo->nDepth--;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	ax, WORD PTR [edx]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	WORD PTR [ecx], ax
$L8842:

; 2435 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_endElement ENDP
_TEXT	ENDS
PUBLIC	_GetElementData
EXTRN	_memcpy:NEAR
EXTRN	__imp__free:NEAR
EXTRN	__imp__malloc:NEAR
_TEXT	SEGMENT
_pvUserData$ = 8
_pchData$ = 12
_nLth$ = 16
_lpInfo$ = -4
_pchSrc$ = -8
_pchTgt$ = -12
_nNewSize$8878 = -16
_pchNewBuffer$8879 = -20
_GetElementData PROC NEAR

; 2441 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 2442 :    LPPARSERINFO lpInfo = (LPPARSERINFO) pvUserData;

	mov	eax, DWORD PTR _pvUserData$[ebp]
	mov	DWORD PTR _lpInfo$[ebp], eax

; 2443 :    zPCHAR       pchSrc, pchTgt;
; 2444 : 
; 2445 :    #ifdef TRACE_XML
; 2446 :       TraceBuffer( "(xml) Element data = ", (zPVOID) pchData, nLth );
; 2447 :    #endif
; 2448 : 
; 2449 :    // Ignore data unless we're reading attribute value data.
; 2450 :    if ( lpInfo->lpViewAttrib == 0 )

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [ecx+30], 0
	jne	SHORT $L8875

; 2451 :       return;

	jmp	$L8885
$L8875:

; 2452 : 
; 2453 :    if ( lpInfo->bFatalError == TRUE )

	mov	edx, DWORD PTR _lpInfo$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+4850]
	cmp	eax, 1
	jne	SHORT $L8876

; 2454 :       return;

	jmp	$L8885
$L8876:

; 2455 : 
; 2456 :    // The attribute value can come in chunks so we have to concatenate all
; 2457 :    // the chunks before we can set the attribute.  Allocate space big enough
; 2458 :    // to hold the current chunk.
; 2459 :    if ( lpInfo->nBufferPhysicalSize < nLth + lpInfo->nBufferCurrentUsed )

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR _nLth$[ebp]
	add	edx, DWORD PTR [ecx+842]
	mov	eax, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [eax+838], edx
	jge	SHORT $L8877

; 2461 :       int    nNewSize = nLth + lpInfo->nBufferCurrentUsed + 5000;

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+842]
	mov	eax, DWORD PTR _nLth$[ebp]
	lea	ecx, DWORD PTR [eax+edx+5000]
	mov	DWORD PTR _nNewSize$8878[ebp], ecx

; 2462 :       zPCHAR pchNewBuffer;
; 2463 : 
; 2464 :       // Allocate a new chunk.
; 2465 :       pchNewBuffer = malloc( nNewSize );

	mov	edx, DWORD PTR _nNewSize$8878[ebp]
	push	edx
	call	DWORD PTR __imp__malloc
	add	esp, 4
	mov	DWORD PTR _pchNewBuffer$8879[ebp], eax

; 2466 : 
; 2467 :       // If there was an old buffer then copy data to new buffer.
; 2468 :       if ( lpInfo->pchAttributeBuffer )

	mov	eax, DWORD PTR _lpInfo$[ebp]
	cmp	DWORD PTR [eax+834], 0
	je	SHORT $L8880

; 2470 :          zmemcpy( pchNewBuffer, lpInfo->pchAttributeBuffer,
; 2471 :                   lpInfo->nBufferCurrentUsed );

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR [ecx+842]
	push	edx
	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+834]
	push	ecx
	mov	edx, DWORD PTR _pchNewBuffer$8879[ebp]
	push	edx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 2472 : 
; 2473 :          free( lpInfo->pchAttributeBuffer );

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+834]
	push	ecx
	call	DWORD PTR __imp__free
	add	esp, 4
$L8880:

; 2475 : 
; 2476 :       lpInfo->pchAttributeBuffer  = pchNewBuffer;

	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	eax, DWORD PTR _pchNewBuffer$8879[ebp]
	mov	DWORD PTR [edx+834], eax

; 2477 :       lpInfo->nBufferPhysicalSize = nNewSize;

	mov	ecx, DWORD PTR _lpInfo$[ebp]
	mov	edx, DWORD PTR _nNewSize$8878[ebp]
	mov	DWORD PTR [ecx+838], edx
$L8877:

; 2479 : 
; 2480 :    // Append new data to the buffer.  Do it one char at a time so we can
; 2481 :    // convert special chars.
; 2482 :    pchTgt = &lpInfo->pchAttributeBuffer[ lpInfo->nBufferCurrentUsed ];

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+834]
	mov	edx, DWORD PTR _lpInfo$[ebp]
	add	ecx, DWORD PTR [edx+842]
	mov	DWORD PTR _pchTgt$[ebp], ecx

; 2483 :    for ( pchSrc = (zPCHAR) pchData;
; 2484 :          pchSrc != (zPCHAR) pchData + nLth;
; 2485 :          pchSrc++ )

	mov	eax, DWORD PTR _pchData$[ebp]
	mov	DWORD PTR _pchSrc$[ebp], eax
	jmp	SHORT $L8883
$L8884:
	mov	ecx, DWORD PTR _pchSrc$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchSrc$[ebp], ecx
$L8883:
	mov	edx, DWORD PTR _pchData$[ebp]
	add	edx, DWORD PTR _nLth$[ebp]
	cmp	DWORD PTR _pchSrc$[ebp], edx
	je	$L8885

; 2487 :       // We need to convert chars from their UTF-8 representation back to
; 2488 :       // their ASCII representation.  For char with hex value 0 - 7f it's
; 2489 :       // just a straight translation. Other chars need something special.
; 2490 :       if ( (zUCHAR) *pchSrc == 194 )

	mov	eax, DWORD PTR _pchSrc$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax]
	cmp	ecx, 194				; 000000c2H
	jne	SHORT $L8887

; 2492 :          // Next byte after 194 represents char.
; 2493 :          *pchTgt++ = *++pchSrc;

	mov	edx, DWORD PTR _pchSrc$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchSrc$[ebp], edx
	mov	eax, DWORD PTR _pchTgt$[ebp]
	mov	ecx, DWORD PTR _pchSrc$[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR _pchTgt$[ebp]
	add	eax, 1
	mov	DWORD PTR _pchTgt$[ebp], eax

; 2495 :       else

	jmp	SHORT $L8891
$L8887:

; 2496 :       if ( (zUCHAR) *pchSrc == 195 )

	mov	ecx, DWORD PTR _pchSrc$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx]
	cmp	edx, 195				; 000000c3H
	jne	SHORT $L8890

; 2498 :          // Next byte after 194 represents char.
; 2499 :          *pchTgt++ = *++pchSrc + 64;

	mov	eax, DWORD PTR _pchSrc$[ebp]
	add	eax, 1
	mov	DWORD PTR _pchSrc$[ebp], eax
	mov	ecx, DWORD PTR _pchSrc$[ebp]
	movsx	edx, BYTE PTR [ecx]
	add	edx, 64					; 00000040H
	mov	eax, DWORD PTR _pchTgt$[ebp]
	mov	BYTE PTR [eax], dl
	mov	ecx, DWORD PTR _pchTgt$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchTgt$[ebp], ecx

; 2501 :       else

	jmp	SHORT $L8891
$L8890:

; 2502 :          *pchTgt++ = *pchSrc;

	mov	edx, DWORD PTR _pchTgt$[ebp]
	mov	eax, DWORD PTR _pchSrc$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	mov	edx, DWORD PTR _pchTgt$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchTgt$[ebp], edx
$L8891:

; 2503 : 
; 2504 :       lpInfo->nBufferCurrentUsed++;

	mov	eax, DWORD PTR _lpInfo$[ebp]
	mov	ecx, DWORD PTR [eax+842]
	add	ecx, 1
	mov	edx, DWORD PTR _lpInfo$[ebp]
	mov	DWORD PTR [edx+842], ecx

; 2505 :    }

	jmp	$L8884
$L8885:

; 2506 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_GetElementData ENDP
_TEXT	ENDS
PUBLIC	_unknownEncodingHandler
EXTRN	_memset:NEAR
_TEXT	SEGMENT
_info$ = 16
_k$ = -4
_unknownEncodingHandler PROC NEAR

; 2512 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2513 :    int  k;
; 2514 : 
; 2515 :    zmemset( info, 0, sizeof( XML_Encoding ) );

	push	1036					; 0000040cH
	push	0
	mov	eax, DWORD PTR _info$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 2516 :    for ( k = 0; k < 256; k++ )

	mov	DWORD PTR _k$[ebp], 0
	jmp	SHORT $L8902
$L8903:
	mov	ecx, DWORD PTR _k$[ebp]
	add	ecx, 1
	mov	DWORD PTR _k$[ebp], ecx
$L8902:
	cmp	DWORD PTR _k$[ebp], 256			; 00000100H
	jge	SHORT $L8904

; 2517 :       info->map[ k ] = k;

	mov	edx, DWORD PTR _k$[ebp]
	mov	eax, DWORD PTR _info$[ebp]
	mov	ecx, DWORD PTR _k$[ebp]
	mov	DWORD PTR [eax+edx*4], ecx
	jmp	SHORT $L8903
$L8904:

; 2518 : 
; 2519 :    return( 1 );

	mov	eax, 1

; 2520 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_unknownEncodingHandler ENDP
_TEXT	ENDS
PUBLIC	??_C@_0CH@CKH@More?5than?5one?5zLEVEL_?5option?5req@ ; `string'
PUBLIC	??_C@_0BB@MNMJ@with?5zLEVEL_SAME?$AA@		; `string'
PUBLIC	??_C@_08NCCJ@vSubtask?$AA@			; `string'
PUBLIC	??_C@_0O@OKDL@?$CFs?5at?5line?5?$CFd?$AA@	; `string'
PUBLIC	??_C@_0BC@OPMH@?$CIxml?$CJ?5Error?5txt?3?5?$AA@	; `string'
PUBLIC	??_C@_0BC@ECNE@Error?5parsing?5XML?$AA@		; `string'
PUBLIC	_ActivateOI_FromXML@24
EXTRN	_fnResetView:NEAR
EXTRN	_XML_ParserCreate:NEAR
EXTRN	_XML_SetElementHandler:NEAR
EXTRN	_XML_SetCharacterDataHandler:NEAR
EXTRN	_ActivateViewObject@12:NEAR
EXTRN	_XML_SetUnknownEncodingHandler:NEAR
EXTRN	_XML_SetUserData:NEAR
EXTRN	_XML_Parse:NEAR
EXTRN	_XML_GetErrorCode:NEAR
EXTRN	_XML_GetCurrentLineNumber:NEAR
EXTRN	_XML_ParserFree:NEAR
EXTRN	_XML_ErrorString:NEAR
EXTRN	_AnchorBlock:DWORD
EXTRN	_fnIssueCoreError:NEAR
;	COMDAT ??_C@_0CH@CKH@More?5than?5one?5zLEVEL_?5option?5req@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_0CH@CKH@More?5than?5one?5zLEVEL_?5option?5req@ DB 'More than one zL'
	DB	'EVEL_ option requested', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@MNMJ@with?5zLEVEL_SAME?$AA@
_DATA	SEGMENT
??_C@_0BB@MNMJ@with?5zLEVEL_SAME?$AA@ DB 'with zLEVEL_SAME', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_08NCCJ@vSubtask?$AA@
_DATA	SEGMENT
??_C@_08NCCJ@vSubtask?$AA@ DB 'vSubtask', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@OKDL@?$CFs?5at?5line?5?$CFd?$AA@
_DATA	SEGMENT
??_C@_0O@OKDL@?$CFs?5at?5line?5?$CFd?$AA@ DB '%s at line %d', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@OPMH@?$CIxml?$CJ?5Error?5txt?3?5?$AA@
_DATA	SEGMENT
??_C@_0BC@OPMH@?$CIxml?$CJ?5Error?5txt?3?5?$AA@ DB '(xml) Error txt: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@ECNE@Error?5parsing?5XML?$AA@
_DATA	SEGMENT
??_C@_0BC@ECNE@Error?5parsing?5XML?$AA@ DB 'Error parsing XML', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lppView$ = 8
_pchOD_Name$ = 12
_vSubtask$ = 16
_lControl$ = 20
_pfnRead$ = 24
_lpPtr$ = 28
_pchBuffer$ = -16
_ulLth$ = -24
_l$ = -28
_bSystemObj$ = -4888
_lpViewOD$ = -4
_bDone$ = -12
_parser$ = -20
_ParserInfo$ = -4884
_nRC$ = -8
_lpViewCsr$8937 = -4892
_szMsg$8956 = -5892
_ActivateOI_FromXML@24 PROC NEAR

; 2582 : {

	push	ebp
	mov	ebp, esp
	mov	eax, 5892				; 00001704H
	call	__chkstk
	push	edi

; 2583 :    zPCHAR           pchBuffer;
; 2584 :    zULONG           ulLth;
; 2585 :    zLONG            l;
; 2586 :    zBOOL            bSystemObj;
; 2587 :    LPVIEWOD         lpViewOD;
; 2588 :    int              bDone      = FALSE;

	mov	DWORD PTR _bDone$[ebp], 0

; 2589 :    XML_Parser       parser     = XML_ParserCreate( 0 );

	push	0
	call	_XML_ParserCreate
	add	esp, 4
	mov	DWORD PTR _parser$[ebp], eax

; 2590 :    ParserInfoRecord ParserInfo = { 0 };

	mov	WORD PTR _ParserInfo$[ebp], 0
	mov	ecx, 1212				; 000004bcH
	xor	eax, eax
	lea	edi, DWORD PTR _ParserInfo$[ebp+2]
	rep stosd
	stosw
	stosb

; 2591 :    zSHORT           nRC        = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 2592 : 
; 2593 :    bSystemObj = (lControl & zACTIVATE_SYSTEM) ? TRUE : FALSE;

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 536870912				; 20000000H
	neg	eax
	sbb	eax, eax
	neg	eax
	mov	BYTE PTR _bSystemObj$[ebp], al

; 2594 : 
; 2595 :    // Verify only one zLEVEL_ option requested
; 2596 :    l = lControl & (zLEVEL_APPLICATION | zLEVEL_SYSTEM | zLEVEL_SAME);

	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 1036				; 0000040cH
	mov	DWORD PTR _l$[ebp], ecx

; 2597 :    if ( l && (-l & l) != l )

	cmp	DWORD PTR _l$[ebp], 0
	je	SHORT $L8927
	mov	edx, DWORD PTR _l$[ebp]
	neg	edx
	and	edx, DWORD PTR _l$[ebp]
	cmp	edx, DWORD PTR _l$[ebp]
	je	SHORT $L8927

; 2599 :       // error, More than one zLEVEL_ option requested
; 2600 :       // "KZOEE023 - Invalid parameter, "
; 2601 :       fnIssueCoreError( zGETPTR( vSubtask->hTask ), vSubtask, 8, 23, 0,
; 2602 :                         "More than one zLEVEL_ option requested", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0CH@CKH@More?5than?5one?5zLEVEL_?5option?5req@ ; `string'
	push	0
	push	23					; 00000017H
	push	8
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2603 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8917
$L8927:

; 2605 : 
; 2606 :    // If zLEVEL_SAME is requested
; 2607 :    if ( lControl & zLEVEL_SAME )

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 1024				; 00000400H
	test	eax, eax
	je	$L8946

; 2609 :       if ( vSubtask == 0 || vSubtask->hSubtask )

	cmp	DWORD PTR _vSubtask$[ebp], 0
	je	SHORT $L8932
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	cmp	DWORD PTR [ecx+18], 0
	je	SHORT $L8931
$L8932:

; 2611 :          // "KZOEE100 - Invalid View, view is a Subtask View"
; 2612 :          fnIssueCoreError( zGETPTR( vSubtask->hTask ), vSubtask, 8, 100, 0,
; 2613 :                            "vSubtask", "with zLEVEL_SAME" );

	push	OFFSET FLAT:??_C@_0BB@MNMJ@with?5zLEVEL_SAME?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_08NCCJ@vSubtask?$AA@	; `string'
	push	0
	push	100					; 00000064H
	push	8
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	mov	eax, DWORD PTR _vSubtask$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2614 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8917
$L8931:

; 2618 :          LPVIEWCSR lpViewCsr;
; 2619 : 
; 2620 :          // Turn off the 'same' indicator
; 2621 :          lControl ^= zLEVEL_SAME;

	mov	edx, DWORD PTR _lControl$[ebp]
	xor	edx, 1024				; 00000400H
	mov	DWORD PTR _lControl$[ebp], edx

; 2622 :          // To determine what the level is of the qualifying view
; 2623 :          //   1. Change vSubtask to point to the initial
; 2624 :          //      view created for the object instance
; 2625 :          //   2. Check for application level, if there use
; 2626 :          //      zLEVEL_APPLICATION.
; 2627 :          //   3. Check if the view task is the main task, if so use
; 2628 :          //      zLEVEL_SYSTEM.
; 2629 :          //   4. Use the task level...
; 2630 :          lpViewCsr = zGETPTR( vSubtask->hViewCsr );

	mov	eax, DWORD PTR _vSubtask$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$8937[ebp], eax
$L8940:

; 2631 :          while ( lpViewCsr->hNextViewCsr )

	mov	edx, DWORD PTR _lpViewCsr$8937[ebp]
	cmp	DWORD PTR [edx+2], 0
	je	SHORT $L8941

; 2632 :             lpViewCsr = zGETPTR( lpViewCsr->hNextViewCsr );

	mov	eax, DWORD PTR _lpViewCsr$8937[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$8937[ebp], eax
	jmp	SHORT $L8940
$L8941:

; 2633 : 
; 2634 :          vSubtask = zGETPTR( lpViewCsr->hView );

	mov	edx, DWORD PTR _lpViewCsr$8937[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _vSubtask$[ebp], eax

; 2635 :          if ( vSubtask->bApplicationView )

	mov	ecx, DWORD PTR _vSubtask$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	shr	edx, 3
	and	edx, 1
	test	edx, edx
	je	SHORT $L8944

; 2636 :             lControl |= zLEVEL_APPLICATION;

	mov	eax, DWORD PTR _lControl$[ebp]
	or	al, 4
	mov	DWORD PTR _lControl$[ebp], eax

; 2637 :          else

	jmp	SHORT $L8946
$L8944:

; 2638 :          if ( vSubtask->hTask == AnchorBlock->hMainTask )

	mov	ecx, DWORD PTR _vSubtask$[ebp]
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [ecx+14]
	cmp	eax, DWORD PTR [edx+106]
	jne	SHORT $L8946

; 2639 :             lControl |= zLEVEL_SYSTEM;

	mov	ecx, DWORD PTR _lControl$[ebp]
	or	ecx, 8
	mov	DWORD PTR _lControl$[ebp], ecx
$L8946:

; 2642 : 
; 2643 :    // Make sure request is for valid OD.
; 2644 :    lpViewOD = ActivateViewObject( vSubtask, pchOD_Name, bSystemObj );

	mov	dl, BYTE PTR _bSystemObj$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchOD_Name$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	call	_ActivateViewObject@12
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 2645 :    if ( lpViewOD == 0 )

	cmp	DWORD PTR _lpViewOD$[ebp], 0
	jne	SHORT $L8947

; 2646 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8917
$L8947:

; 2647 : 
; 2648 :    ParserInfo.vSubtask = vSubtask;

	mov	edx, DWORD PTR _vSubtask$[ebp]
	mov	DWORD PTR _ParserInfo$[ebp+2], edx

; 2649 :    ParserInfo.nDepth   = 0;

	mov	WORD PTR _ParserInfo$[ebp], 0

; 2650 : 
; 2651 :    if ( pchOD_Name && *pchOD_Name )

	cmp	DWORD PTR _pchOD_Name$[ebp], 0
	je	SHORT $L8949
	mov	eax, DWORD PTR _pchOD_Name$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L8949

; 2653 :       ParserInfo.lpViewOD = ActivateViewObject( vSubtask, pchOD_Name, 0 );

	push	0
	mov	edx, DWORD PTR _pchOD_Name$[ebp]
	push	edx
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	call	_ActivateViewObject@12
	mov	DWORD PTR _ParserInfo$[ebp+10], eax

; 2654 :       if ( ParserInfo.lpViewOD == 0 )

	cmp	DWORD PTR _ParserInfo$[ebp+10], 0
	jne	SHORT $L8949

; 2655 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8917
$L8949:

; 2657 : 
; 2658 :    XML_SetUserData( parser, &ParserInfo );

	lea	ecx, DWORD PTR _ParserInfo$[ebp]
	push	ecx
	mov	edx, DWORD PTR _parser$[ebp]
	push	edx
	call	_XML_SetUserData
	add	esp, 8

; 2659 :    XML_SetElementHandler( parser, startElement, endElement );

	push	OFFSET FLAT:_endElement
	push	OFFSET FLAT:_startElement
	mov	eax, DWORD PTR _parser$[ebp]
	push	eax
	call	_XML_SetElementHandler
	add	esp, 12					; 0000000cH

; 2660 :    XML_SetCharacterDataHandler( parser, GetElementData );

	push	OFFSET FLAT:_GetElementData
	mov	ecx, DWORD PTR _parser$[ebp]
	push	ecx
	call	_XML_SetCharacterDataHandler
	add	esp, 8

; 2661 :    XML_SetUnknownEncodingHandler( parser, unknownEncodingHandler, 0 );

	push	0
	push	OFFSET FLAT:_unknownEncodingHandler
	mov	edx, DWORD PTR _parser$[ebp]
	push	edx
	call	_XML_SetUnknownEncodingHandler
	add	esp, 12					; 0000000cH
$L8951:

; 2662 : 
; 2663 :    while ( bDone == FALSE )

	cmp	DWORD PTR _bDone$[ebp], 0
	jne	$L8952

; 2665 :       bDone = (int) (*pfnRead)( *lppView, &pchBuffer, &ulLth, lpPtr );

	mov	eax, DWORD PTR _lpPtr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _ulLth$[ebp]
	push	ecx
	lea	edx, DWORD PTR _pchBuffer$[ebp]
	push	edx
	mov	eax, DWORD PTR _lppView$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	DWORD PTR _pfnRead$[ebp]
	movsx	edx, ax
	mov	DWORD PTR _bDone$[ebp], edx

; 2666 :       if ( bDone )

	cmp	DWORD PTR _bDone$[ebp], 0
	je	SHORT $L8954

; 2667 :          pchBuffer[ ulLth ] = 0;

	mov	eax, DWORD PTR _pchBuffer$[ebp]
	add	eax, DWORD PTR _ulLth$[ebp]
	mov	BYTE PTR [eax], 0
$L8954:

; 2668 : 
; 2669 :       if ( !XML_Parse( parser, pchBuffer, ulLth, bDone ) )

	mov	ecx, DWORD PTR _bDone$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ulLth$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchBuffer$[ebp]
	push	eax
	mov	ecx, DWORD PTR _parser$[ebp]
	push	ecx
	call	_XML_Parse
	add	esp, 16					; 00000010H
	test	eax, eax
	jne	SHORT $L8955

; 2671 :          zCHAR szMsg[ 1000 ];
; 2672 : 
; 2673 :          zsprintf( szMsg, "%s at line %d",
; 2674 :                    XML_ErrorString( XML_GetErrorCode( parser ) ),
; 2675 :                    XML_GetCurrentLineNumber( parser ) );

	mov	edx, DWORD PTR _parser$[ebp]
	push	edx
	call	_XML_GetCurrentLineNumber
	add	esp, 4
	push	eax
	mov	eax, DWORD PTR _parser$[ebp]
	push	eax
	call	_XML_GetErrorCode
	add	esp, 4
	push	eax
	call	_XML_ErrorString
	add	esp, 4
	push	eax
	push	OFFSET FLAT:??_C@_0O@OKDL@?$CFs?5at?5line?5?$CFd?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$8956[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 2676 :          TraceLineS( "(xml) Error txt: ", szMsg );

	lea	edx, DWORD PTR _szMsg$8956[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BC@OPMH@?$CIxml?$CJ?5Error?5txt?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 2677 : 
; 2678 :          SysMessageBox( *lppView, "Error", "Error parsing XML", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0BC@ECNE@Error?5parsing?5XML?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_05CKBG@Error?$AA@	; `string'
	mov	eax, DWORD PTR _lppView$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_SysMessageBox@16

; 2679 :          nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 2680 :          break;

	jmp	SHORT $L8952
$L8955:

; 2682 :    }

	jmp	$L8951
$L8952:

; 2683 : 
; 2684 :    XML_ParserFree( parser );

	mov	edx, DWORD PTR _parser$[ebp]
	push	edx
	call	_XML_ParserFree
	add	esp, 4

; 2685 : 
; 2686 :    if ( ParserInfo.pchAttributeBuffer )

	cmp	DWORD PTR _ParserInfo$[ebp+834], 0
	je	SHORT $L8960

; 2687 :       free( ParserInfo.pchAttributeBuffer );

	mov	eax, DWORD PTR _ParserInfo$[ebp+834]
	push	eax
	call	DWORD PTR __imp__free
	add	esp, 4
$L8960:

; 2688 : 
; 2689 :    if ( ParserInfo.bFatalError )

	mov	ecx, DWORD PTR _ParserInfo$[ebp+4850]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L8961

; 2690 :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L8961:

; 2691 : 
; 2692 :    if ( nRC == zCALL_ERROR )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8962

; 2694 :       if ( ParserInfo.vOI )

	cmp	DWORD PTR _ParserInfo$[ebp+6], 0
	je	SHORT $L8963

; 2695 :          fnDropView( ParserInfo.vOI );

	mov	eax, DWORD PTR _ParserInfo$[ebp+6]
	push	eax
	call	_fnDropView@4
$L8963:

; 2696 : 
; 2697 :       *lppView = 0;

	mov	ecx, DWORD PTR _lppView$[ebp]
	mov	DWORD PTR [ecx], 0

; 2699 :    else

	jmp	SHORT $L8964
$L8962:

; 2701 :       *lppView = ParserInfo.vOI;

	mov	edx, DWORD PTR _lppView$[ebp]
	mov	eax, DWORD PTR _ParserInfo$[ebp+6]
	mov	DWORD PTR [edx], eax

; 2702 :       fnResetView( *lppView, 0 );

	push	0
	mov	ecx, DWORD PTR _lppView$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	_fnResetView
	add	esp, 8
$L8964:

; 2704 : 
; 2705 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8917:

; 2706 : 
; 2707 : } // ActivateOI_FromXML

	pop	edi
	mov	esp, ebp
	pop	ebp
	ret	24					; 00000018H
_ActivateOI_FromXML@24 ENDP
_TEXT	ENDS
PUBLIC	_fnReadXMLData@16
EXTRN	_SysReadFile@16:NEAR
_TEXT	SEGMENT
_lpTaskView$ = 8
_ppchReturnBuffer$ = 12
_pulReturnLth$ = 16
_lpData$ = 20
_pInfo$ = -4
_fnReadXMLData@16 PROC NEAR

; 2735 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2736 :    PXMLDATA pInfo = (PXMLDATA) lpData;

	mov	eax, DWORD PTR _lpData$[ebp]
	mov	DWORD PTR _pInfo$[ebp], eax

; 2737 : 
; 2738 :    *ppchReturnBuffer = pInfo->szReadBuffer;

	mov	ecx, DWORD PTR _ppchReturnBuffer$[ebp]
	mov	edx, DWORD PTR _pInfo$[ebp]
	mov	DWORD PTR [ecx], edx

; 2739 :    *pulReturnLth = SysReadFile( lpTaskView, pInfo->hFile,
; 2740 :                                 pInfo->szReadBuffer,
; 2741 :                                 sizeof( pInfo->szReadBuffer ) );

	push	5000					; 00001388H
	mov	eax, DWORD PTR _pInfo$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pInfo$[ebp]
	mov	edx, DWORD PTR [ecx+5000]
	push	edx
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	call	_SysReadFile@16
	mov	ecx, DWORD PTR _pulReturnLth$[ebp]
	mov	DWORD PTR [ecx], eax

; 2742 :    if ( *pulReturnLth < sizeof( pInfo->szReadBuffer ) )

	mov	edx, DWORD PTR _pulReturnLth$[ebp]
	cmp	DWORD PTR [edx], 5000			; 00001388H
	jae	SHORT $L8982

; 2743 :       return( TRUE );   // Nothing more to read.

	mov	ax, 1
	jmp	SHORT $L8983
$L8982:

; 2744 :    else
; 2745 :       return( FALSE );  // Still more info in file.

	xor	ax, ax
$L8983:

; 2746 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_fnReadXMLData@16 ENDP
_TEXT	ENDS
PUBLIC	_ActivateOI_FromXML_File@20
EXTRN	_SysOpenFile@12:NEAR
EXTRN	_SysCloseFile@12:NEAR
_TEXT	SEGMENT
_pvOI$ = 8
_pchOD_Name$ = 12
_vSubtask$ = 16
_pchFileName$ = 20
_lControl$ = 24
_lpCurrentTask$ = -5012
_XMLData$ = -5008
_nRC$ = -4
_ActivateOI_FromXML_File@20 PROC NEAR

; 2754 : {

	push	ebp
	mov	ebp, esp
	mov	eax, 5012				; 00001394H
	call	__chkstk

; 2755 :    LPTASK  lpCurrentTask;
; 2756 :    XMLDATA XMLData;
; 2757 :    zSHORT  nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 2758 : 
; 2759 :    // If task not active or disabled, return zCALL_ERROR.
; 2760 :    if ( (lpCurrentTask = fnOperationCall( iActivateOI_FromXML_File,
; 2761 :                                           vSubtask, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	push	551					; 00000227H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8998

; 2763 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8994
$L8998:

; 2765 : 
; 2766 :    if ( (vSubtask || (lControl & zACTIVATE_SYSTEM) == 0) &&
; 2767 :         fnValidView( lpCurrentTask, vSubtask ) == 0 )

	cmp	DWORD PTR _vSubtask$[ebp], 0
	jne	SHORT $L9000
	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 536870912				; 20000000H
	test	ecx, ecx
	jne	SHORT $L8999
$L9000:
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnValidView
	add	esp, 8
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L8999

; 2769 :       fnOperationReturn( iActivateOI_FromXML_File, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	551					; 00000227H
	call	_fnOperationReturn
	add	esp, 8

; 2770 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8994
$L8999:

; 2772 : 
; 2773 :    XMLData.hFile = SysOpenFile( vSubtask, pchFileName, COREFILE_READ );

	push	128					; 00000080H
	mov	eax, DWORD PTR _pchFileName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	call	_SysOpenFile@12
	mov	DWORD PTR _XMLData$[ebp+5000], eax

; 2774 :    if ( XMLData.hFile == -1 )

	cmp	DWORD PTR _XMLData$[ebp+5000], -1
	jne	SHORT $L9001

; 2776 :       //  "KZOEE071 - Error opening instance file "
; 2777 :       fnIssueCoreError( lpCurrentTask, vSubtask, 16, 71, 0, pchFileName, 0 );

	push	0
	mov	edx, DWORD PTR _pchFileName$[ebp]
	push	edx
	push	0
	push	71					; 00000047H
	push	16					; 00000010H
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2779 :    else

	jmp	SHORT $L9002
$L9001:

; 2781 :       nRC = ActivateOI_FromXML( pvOI, (zPCHAR) pchOD_Name, vSubtask, lControl,
; 2782 :                                 fnReadXMLData, (zPVOID) &XMLData );

	lea	edx, DWORD PTR _XMLData$[ebp]
	push	edx
	push	OFFSET FLAT:_fnReadXMLData@16
	mov	eax, DWORD PTR _lControl$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchOD_Name$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvOI$[ebp]
	push	eax
	call	_ActivateOI_FromXML@24
	mov	WORD PTR _nRC$[ebp], ax

; 2783 : 
; 2784 :       SysCloseFile( vSubtask, XMLData.hFile, 0 );

	push	0
	mov	ecx, DWORD PTR _XMLData$[ebp+5000]
	push	ecx
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_SysCloseFile@12
$L9002:

; 2786 : 
; 2787 :    fnOperationReturn( iActivateOI_FromXML_File, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	551					; 00000227H
	call	_fnOperationReturn
	add	esp, 8

; 2788 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8994:

; 2789 : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_ActivateOI_FromXML_File@20 ENDP
_TEXT	ENDS
PUBLIC	_fnWriteXML_ToFile@24
PUBLIC	??_C@_01FCOA@?5?$AA@				; `string'
PUBLIC	??_C@_04BAFE@?$CF?$CKs?5?$AA@			; `string'
EXTRN	_SysWriteLine@12:NEAR
EXTRN	_SysWriteLineLth@20:NEAR
;	COMDAT ??_C@_01FCOA@?5?$AA@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_01FCOA@?5?$AA@ DB ' ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_04BAFE@?$CF?$CKs?5?$AA@
_DATA	SEGMENT
??_C@_04BAFE@?$CF?$CKs?5?$AA@ DB '%*s ', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTaskView$ = 8
_lControl$ = 12
_pchText$ = 16
_nLevel$ = 24
_lpData$ = 28
_hFile$ = -4
_szBuffer$9023 = -504
_nIndent$9024 = -508
_fnWriteXML_ToFile@24 PROC NEAR

; 2798 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 508				; 000001fcH

; 2799 :    zLONG hFile = *((zPLONG) lpData);

	mov	eax, DWORD PTR _lpData$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _hFile$[ebp], ecx

; 2800 : 
; 2801 : // if ( lControl & zXML_STARTENTITY )  // too many blank lines as far as I can tell ... dks 2009.11.30
; 2802 : //    SysWriteLine( lpTaskView, hFile, "" );
; 2803 : 
; 2804 :    // Some XML elements will be indented.
; 2805 :    if ( lControl & (zXML_STARTATTRIB | zXML_STARTENTITY | zXML_ENDENTITY) )

	mov	edx, DWORD PTR _lControl$[ebp]
	and	edx, 28					; 0000001cH
	test	edx, edx
	je	SHORT $L9022

; 2807 :       if ( nLevel > 0 )

	movsx	eax, WORD PTR _nLevel$[ebp]
	test	eax, eax
	jle	SHORT $L9022

; 2809 :          zCHAR  szBuffer[ 500 ];
; 2810 :          zSHORT nIndent = nLevel * 3 - 2;

	movsx	ecx, WORD PTR _nLevel$[ebp]
	imul	ecx, 3
	sub	ecx, 2
	mov	WORD PTR _nIndent$9024[ebp], cx

; 2811 : 
; 2812 :          zsprintf( szBuffer, "%*s ", nIndent, " " );

	push	OFFSET FLAT:??_C@_01FCOA@?5?$AA@	; `string'
	movsx	edx, WORD PTR _nIndent$9024[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_04BAFE@?$CF?$CKs?5?$AA@ ; `string'
	lea	eax, DWORD PTR _szBuffer$9023[ebp]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 2813 :          SysWriteLineLth( lpTaskView, hFile, szBuffer, zstrlen( szBuffer ), FALSE );

	push	0
	lea	ecx, DWORD PTR _szBuffer$9023[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	push	eax
	lea	edx, DWORD PTR _szBuffer$9023[ebp]
	push	edx
	mov	eax, DWORD PTR _hFile$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	push	ecx
	call	_SysWriteLineLth@20
$L9022:

; 2816 : 
; 2817 :    if ( lControl & (zXML_STARTATTRIB | zXML_ATTRIBVALUE) )

	mov	edx, DWORD PTR _lControl$[ebp]
	and	edx, 80					; 00000050H
	test	edx, edx
	je	SHORT $L9027

; 2818 :       SysWriteLineLth( lpTaskView, hFile, pchText, zstrlen( pchText ), FALSE );

	push	0
	mov	eax, DWORD PTR _pchText$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	push	eax
	mov	ecx, DWORD PTR _pchText$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hFile$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	call	_SysWriteLineLth@20

; 2819 :    else

	jmp	SHORT $L9028
$L9027:

; 2820 :       SysWriteLine( lpTaskView, hFile, pchText );

	mov	ecx, DWORD PTR _pchText$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hFile$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	call	_SysWriteLine@12
$L9028:

; 2821 : 
; 2822 :    return( 0 );

	xor	ax, ax

; 2823 : }

	mov	esp, ebp
	pop	ebp
	ret	24					; 00000018H
_fnWriteXML_ToFile@24 ENDP
_TEXT	ENDS
PUBLIC	_CommitOI_ToXML_File@12
PUBLIC	??_C@_0CH@JMAI@Invalid?5view?5for?5CommitOI_ToXML_@ ; `string'
EXTRN	_fnGetApplicationForSubtask@8:NEAR
EXTRN	__imp__strchr:NEAR
EXTRN	_cDirSep:BYTE
EXTRN	_SysAppendcDirSep@4:NEAR
;	COMDAT ??_C@_0CH@JMAI@Invalid?5view?5for?5CommitOI_ToXML_@
; File C:\10C\A\oe\KZOEXMLA.C
_DATA	SEGMENT
??_C@_0CH@JMAI@Invalid?5view?5for?5CommitOI_ToXML_@ DB 'Invalid view for '
	DB	'CommitOI_ToXML_File: ', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vOI$ = 8
_pchFileName$ = 12
_nFlags$ = 16
_lpCurrentTask$ = -272
_szOpenFileName$ = -260
_hFile$ = -268
_nRC$ = -264
_lpApp$9044 = -276
_CommitOI_ToXML_File@12 PROC NEAR

; 2829 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 276				; 00000114H

; 2830 :    LPTASK lpCurrentTask;
; 2831 :    zCHAR  szOpenFileName[ zMAX_FILENAME_LTH + 1 ];
; 2832 :    zLONG  hFile;
; 2833 :    zSHORT nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 2834 : 
; 2835 :    if ( vOI == 0 )

	cmp	DWORD PTR _vOI$[ebp], 0
	jne	SHORT $L9040

; 2837 :       TraceLineS( "Invalid view for CommitOI_ToXML_File: ", pchFileName );

	mov	eax, DWORD PTR _pchFileName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CH@JMAI@Invalid?5view?5for?5CommitOI_ToXML_@ ; `string'
	call	_TraceLineS@8

; 2838 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L9035
$L9040:

; 2840 : 
; 2841 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 2842 :    if ( (lpCurrentTask = fnOperationCall( iCommitOI_ToXML_File, vOI,
; 2843 :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	push	552					; 00000228H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L9042

; 2845 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9035
$L9042:

; 2847 : 
; 2848 :    // If the file name is not qualfied, use the object dir for the application.
; 2849 :    if ( zstrchr( pchFileName, cDirSep ) == 0 )

	movsx	edx, BYTE PTR _cDirSep
	push	edx
	mov	eax, DWORD PTR _pchFileName$[ebp]
	push	eax
	call	DWORD PTR __imp__strchr
	add	esp, 8
	test	eax, eax
	jne	SHORT $L9043

; 2851 :       LPAPP lpApp;
; 2852 : 
; 2853 :       fnGetApplicationForSubtask( &lpApp, vOI );

	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpApp$9044[ebp]
	push	edx
	call	_fnGetApplicationForSubtask@8

; 2854 :       if ( lpApp )

	cmp	DWORD PTR _lpApp$9044[ebp], 0
	je	SHORT $L9045

; 2855 :          zstrcpy( szOpenFileName, lpApp->szObjectDir );

	mov	eax, DWORD PTR _lpApp$9044[ebp]
	add	eax, 347				; 0000015bH
	push	eax
	lea	ecx, DWORD PTR _szOpenFileName$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 2856 :       else

	jmp	SHORT $L9046
$L9045:

; 2858 :          lpApp = zGETPTR( AnchorBlock->hSystemApp );

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+110]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpApp$9044[ebp], eax

; 2859 :          zstrcpy( szOpenFileName, lpApp->szObjectDir );

	mov	ecx, DWORD PTR _lpApp$9044[ebp]
	add	ecx, 347				; 0000015bH
	push	ecx
	lea	edx, DWORD PTR _szOpenFileName$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8
$L9046:

; 2861 : 
; 2862 :       SysAppendcDirSep( szOpenFileName );

	lea	eax, DWORD PTR _szOpenFileName$[ebp]
	push	eax
	call	_SysAppendcDirSep@4

; 2864 :    else

	jmp	SHORT $L9048
$L9043:

; 2865 :       szOpenFileName[ 0 ] = 0;

	mov	BYTE PTR _szOpenFileName$[ebp], 0
$L9048:

; 2866 : 
; 2867 :    zstrcat( szOpenFileName, pchFileName );

	mov	ecx, DWORD PTR _pchFileName$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szOpenFileName$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 2868 : 
; 2869 :    hFile = SysOpenFile( vOI, szOpenFileName, COREFILE_WRITE );

	push	64					; 00000040H
	lea	eax, DWORD PTR _szOpenFileName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	call	_SysOpenFile@12
	mov	DWORD PTR _hFile$[ebp], eax

; 2870 :    if ( hFile == -1 )

	cmp	DWORD PTR _hFile$[ebp], -1
	jne	SHORT $L9049

; 2872 :       //  "KZOEE071 - Error opening instance file "
; 2873 :       fnIssueCoreError( lpCurrentTask, vOI, 16, 71, 0, pchFileName, 0 );

	push	0
	mov	edx, DWORD PTR _pchFileName$[ebp]
	push	edx
	push	0
	push	71					; 00000047H
	push	16					; 00000010H
	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2875 :    else

	jmp	SHORT $L9050
$L9049:

; 2877 :       nRC = WriteOI_ToXML( vOI, nFlags, fnWriteXML_ToFile, (zPVOID) &hFile );

	lea	edx, DWORD PTR _hFile$[ebp]
	push	edx
	push	OFFSET FLAT:_fnWriteXML_ToFile@24
	mov	eax, DWORD PTR _nFlags$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	call	_WriteOI_ToXML@16
	mov	WORD PTR _nRC$[ebp], ax

; 2878 :       SysCloseFile( vOI, hFile, 0 );

	push	0
	mov	edx, DWORD PTR _hFile$[ebp]
	push	edx
	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	call	_SysCloseFile@12
$L9050:

; 2880 : 
; 2881 :    fnOperationReturn( iCommitOI_ToXML_File, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	552					; 00000228H
	call	_fnOperationReturn
	add	esp, 8

; 2882 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L9035:

; 2883 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_CommitOI_ToXML_File@12 ENDP
_TEXT	ENDS
PUBLIC	_CommitSubobjectToXML_File@16
_TEXT	SEGMENT
_vOI$ = 8
_pchFileName$ = 12
_pchSubobjectRoot$ = 16
_nFlags$ = 20
_lpCurrentTask$ = -272
_szOpenFileName$ = -260
_hFile$ = -268
_nRC$ = -264
_lpApp$9068 = -276
_CommitSubobjectToXML_File@16 PROC NEAR

; 2890 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 276				; 00000114H

; 2891 :    LPTASK lpCurrentTask;
; 2892 :    zCHAR  szOpenFileName[ zMAX_FILENAME_LTH + 1 ];
; 2893 :    zLONG  hFile;
; 2894 :    zSHORT nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 2895 : 
; 2896 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 2897 :    if ( (lpCurrentTask = fnOperationCall( iCommitSubobjectToXML_File, vOI,
; 2898 :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	push	554					; 0000022aH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L9065

; 2900 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9060
$L9065:

; 2902 : 
; 2903 :    // If the file name is not qualfied, use the object dir for the application.
; 2904 :    if ( !zstrchr( (zPCHAR) pchFileName, cDirSep ) )

	movsx	ecx, BYTE PTR _cDirSep
	push	ecx
	mov	edx, DWORD PTR _pchFileName$[ebp]
	push	edx
	call	DWORD PTR __imp__strchr
	add	esp, 8
	test	eax, eax
	jne	SHORT $L9067

; 2906 :       LPAPP lpApp;
; 2907 : 
; 2908 :       fnGetApplicationForSubtask( &lpApp, vOI );

	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpApp$9068[ebp]
	push	ecx
	call	_fnGetApplicationForSubtask@8

; 2909 :       if ( lpApp )

	cmp	DWORD PTR _lpApp$9068[ebp], 0
	je	SHORT $L9069

; 2910 :          zstrcpy( szOpenFileName, lpApp->szObjectDir );

	mov	edx, DWORD PTR _lpApp$9068[ebp]
	add	edx, 347				; 0000015bH
	push	edx
	lea	eax, DWORD PTR _szOpenFileName$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 2911 :       else

	jmp	SHORT $L9070
$L9069:

; 2913 :          lpApp = zGETPTR( AnchorBlock->hSystemApp );

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+110]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpApp$9068[ebp], eax

; 2914 :          zstrcpy( szOpenFileName, lpApp->szObjectDir );

	mov	eax, DWORD PTR _lpApp$9068[ebp]
	add	eax, 347				; 0000015bH
	push	eax
	lea	ecx, DWORD PTR _szOpenFileName$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8
$L9070:

; 2916 : 
; 2917 :       SysAppendcDirSep( szOpenFileName );

	lea	edx, DWORD PTR _szOpenFileName$[ebp]
	push	edx
	call	_SysAppendcDirSep@4

; 2919 :    else

	jmp	SHORT $L9072
$L9067:

; 2920 :       szOpenFileName[ 0 ] = 0;

	mov	BYTE PTR _szOpenFileName$[ebp], 0
$L9072:

; 2921 : 
; 2922 :    zstrcat( szOpenFileName, pchFileName );

	mov	eax, DWORD PTR _pchFileName$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szOpenFileName$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 2923 : 
; 2924 :    hFile = SysOpenFile( vOI, szOpenFileName, COREFILE_WRITE );

	push	64					; 00000040H
	lea	edx, DWORD PTR _szOpenFileName$[ebp]
	push	edx
	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	call	_SysOpenFile@12
	mov	DWORD PTR _hFile$[ebp], eax

; 2925 :    if ( hFile == -1 )

	cmp	DWORD PTR _hFile$[ebp], -1
	jne	SHORT $L9073

; 2927 :       //  "KZOEE071 - Error opening instance file "
; 2928 :       fnIssueCoreError( lpCurrentTask, vOI, 16, 71, 0, pchFileName, 0 );

	push	0
	mov	ecx, DWORD PTR _pchFileName$[ebp]
	push	ecx
	push	0
	push	71					; 00000047H
	push	16					; 00000010H
	mov	edx, DWORD PTR _vOI$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2930 :    else

	jmp	SHORT $L9074
$L9073:

; 2932 :       nRC = WriteSubobjectToXML( vOI, pchSubobjectRoot, nFlags,
; 2933 :                                  fnWriteXML_ToFile, (zPVOID) &hFile );

	lea	ecx, DWORD PTR _hFile$[ebp]
	push	ecx
	push	OFFSET FLAT:_fnWriteXML_ToFile@24
	mov	edx, DWORD PTR _nFlags$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchSubobjectRoot$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	call	_WriteSubobjectToXML@20
	mov	WORD PTR _nRC$[ebp], ax

; 2934 :       SysCloseFile( vOI, hFile, 0 );

	push	0
	mov	edx, DWORD PTR _hFile$[ebp]
	push	edx
	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	call	_SysCloseFile@12
$L9074:

; 2936 : 
; 2937 :    fnOperationReturn( iCommitSubobjectToXML_File, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	554					; 0000022aH
	call	_fnOperationReturn
	add	esp, 8

; 2938 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L9060:

; 2939 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_CommitSubobjectToXML_File@16 ENDP
_TEXT	ENDS
END
