	TITLE	C:\10C\A\oe\KZOEDMAA.C
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
;	COMDAT ??_C@_0BO@PGDP@Domain?5has?5an?5unnamed?5Context?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@EEMD@Zeidon?5Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EE@ELLG@Operation?5?8?$CFs?8?5does?5not?5handle?5a@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@LGH@System?5Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08MEJN@TZDMD101?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@ECFE@Operation?0?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@JMFE@?0?5not?5found?5for?5Domain?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0FN@CICK@?$CItblh?$CJ?5Entry?5type?3?5?$CFd?5?5?5chType?3?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CB@OJIO@TZDME025?5?9?5Invalid?5table?5value?3?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_fnCallDomainOper@40
EXTRN	_memset:NEAR
_TEXT	SEGMENT
_lpTaskDomain$ = 12
_lEntryType$ = 16
_chType$ = 20
_lpData$ = 24
_cpcContextName$ = 28
_lpView$ = 32
_lpViewEntity$ = 36
_lpViewAttribute$ = 40
_ulMaxStringLth$ = 44
_DomainData$ = -44
_fnCallDomainOper@40 PROC NEAR

; 78   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH

; 79   :    zDomainOperData DomainData;
; 80   : 
; 81   :    zmemset( &DomainData, 0, sizeof( DomainData ) );

	push	41					; 00000029H
	push	0
	lea	eax, DWORD PTR _DomainData$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 82   : 
; 83   :    DomainData.lID              = 0;

	mov	DWORD PTR _DomainData$[ebp], 0

; 84   :    DomainData.cType            = chType;

	mov	cl, BYTE PTR _chType$[ebp]
	mov	BYTE PTR _DomainData$[ebp+4], cl

; 85   :    DomainData.lpData           = lpData;

	mov	edx, DWORD PTR _lpData$[ebp]
	mov	DWORD PTR _DomainData$[ebp+5], edx

; 86   :    DomainData.pszContextName   = (zPCHAR) cpcContextName;

	mov	eax, DWORD PTR _cpcContextName$[ebp]
	mov	DWORD PTR _DomainData$[ebp+9], eax

; 87   :    DomainData.zView            = lpView;

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR _DomainData$[ebp+13], ecx

; 88   :    DomainData.lpViewEntity     = lpViewEntity;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	DWORD PTR _DomainData$[ebp+17], edx

; 89   :    DomainData.lpViewAttribute  = lpViewAttribute;

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	mov	DWORD PTR _DomainData$[ebp+21], eax

; 90   :    DomainData.uMaxStringLength = ulMaxStringLth;

	mov	ecx, DWORD PTR _ulMaxStringLth$[ebp]
	mov	DWORD PTR _DomainData$[ebp+25], ecx

; 91   : 
; 92   :    // pfDomainOper is only set for DomainTypes:
; 93   :    // zDM_TYPE_EXPRESSION
; 94   :    // zDM_TYPE_ALGORITHM
; 95   :    // zDM_TYPE_TABLE
; 96   :    // and the domain type needs a Library name.
; 97   :    // Otherwise the Function pointer is NULL.
; 98   :    // 2000.01.19, RG
; 99   :    if ( *lpTaskDomain->pfDomainOper == 0 )

	mov	edx, DWORD PTR _lpTaskDomain$[ebp]
	cmp	DWORD PTR [edx+30], 0
	jne	SHORT $L7538

; 100  :       return( zDME_NOT_HANDLED );

	mov	ax, -10					; fffffff6H
	jmp	SHORT $L7535
$L7538:

; 101  : 
; 102  :    return( (zSHORT) (*lpTaskDomain->pfDomainOper)( lEntryType, &DomainData ) );

	lea	eax, DWORD PTR _DomainData$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lEntryType$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTaskDomain$[ebp]
	call	DWORD PTR [edx+30]
$L7535:

; 103  : }

	mov	esp, ebp
	pop	ebp
	ret	40					; 00000028H
_fnCallDomainOper@40 ENDP
_TEXT	ENDS
PUBLIC	_fnCallDomainOper2@36
_TEXT	SEGMENT
_lpTaskDomain$ = 12
_lEntryType$ = 16
_lpView$ = 20
_lpViewEntity$ = 24
_lpViewAttribute$ = 28
_lpSrcView$ = 32
_lpSrcViewEntity$ = 36
_lpSrcViewAttribute$ = 40
_DomainData$ = -44
_fnCallDomainOper2@36 PROC NEAR

; 128  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH

; 129  :    zDomainOperData DomainData;
; 130  : 
; 131  :    zmemset( &DomainData, 0, sizeof( DomainData ) );

	push	41					; 00000029H
	push	0
	lea	eax, DWORD PTR _DomainData$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 132  : 
; 133  :    DomainData.zView              = lpView;

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR _DomainData$[ebp+13], ecx

; 134  :    DomainData.lpViewEntity       = lpViewEntity;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	DWORD PTR _DomainData$[ebp+17], edx

; 135  :    DomainData.lpViewAttribute    = lpViewAttribute;

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	mov	DWORD PTR _DomainData$[ebp+21], eax

; 136  :    DomainData.zSrcView           = lpSrcView;

	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	mov	DWORD PTR _DomainData$[ebp+29], ecx

; 137  :    DomainData.lpSrcViewEntity    = lpSrcViewEntity;

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	DWORD PTR _DomainData$[ebp+33], edx

; 138  :    DomainData.lpSrcViewAttribute = lpSrcViewAttribute;

	mov	eax, DWORD PTR _lpSrcViewAttribute$[ebp]
	mov	DWORD PTR _DomainData$[ebp+37], eax

; 139  : 
; 140  :    // pfDomainOper is only set for DomainTypes:
; 141  :    // zDM_TYPE_EXPRESSION
; 142  :    // zDM_TYPE_ALGORITHM
; 143  :    // zDM_TYPE_TABLE
; 144  :    // and the domaintype need a Libraryname.
; 145  :    // Otherwise the Functionpointer is NULL
; 146  :    // 2000.01.19, RG
; 147  :    if ( *lpTaskDomain->pfDomainOper == 0 )

	mov	ecx, DWORD PTR _lpTaskDomain$[ebp]
	cmp	DWORD PTR [ecx+30], 0
	jne	SHORT $L7560

; 148  :       return( zDME_NOT_HANDLED );

	mov	ax, -10					; fffffff6H
	jmp	SHORT $L7558
$L7560:

; 149  : 
; 150  :    return( (zSHORT) (*lpTaskDomain->pfDomainOper)( lEntryType, &DomainData ) );

	lea	edx, DWORD PTR _DomainData$[ebp]
	push	edx
	mov	eax, DWORD PTR _lEntryType$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTaskDomain$[ebp]
	call	DWORD PTR [ecx+30]
$L7558:

; 151  : }

	mov	esp, ebp
	pop	ebp
	ret	36					; 00000024H
_fnCallDomainOper2@36 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BO@PGDP@Domain?5has?5an?5unnamed?5Context?$AA@ ; `string'
PUBLIC	??_C@_0N@EEMD@Zeidon?5Error?$AA@		; `string'
PUBLIC	_fnGetContext
EXTRN	_fnSysMessageBox@16:NEAR
EXTRN	__imp___stricmp:NEAR
EXTRN	_g_pfnGetPtr:DWORD
;	COMDAT ??_C@_0BO@PGDP@Domain?5has?5an?5unnamed?5Context?$AA@
; File C:\10C\A\oe\KZOEDMAA.C
_DATA	SEGMENT
??_C@_0BO@PGDP@Domain?5has?5an?5unnamed?5Context?$AA@ DB 'Domain has an u'
	DB	'nnamed Context', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@EEMD@Zeidon?5Error?$AA@
_DATA	SEGMENT
??_C@_0N@EEMD@Zeidon?5Error?$AA@ DB 'Zeidon Error', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpDomain$ = 8
_cpcContextName$ = 12
_lpSrchContext$ = -4
_lpZKey$7570 = -8
_lpName$7581 = -12
_fnGetContext PROC NEAR

; 168  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 169  :    zLPCONTEXT  lpSrchContext;
; 170  : 
; 171  :    lpSrchContext = zGETPTR( lpDomain->hFirstContext );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	mov	ecx, DWORD PTR [eax+47]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchContext$[ebp], eax

; 172  : 
; 173  :    // Check for presence of ZKey selection
; 174  :    if ( *cpcContextName == '\xff' )

	mov	edx, DWORD PTR _cpcContextName$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, -1
	jne	SHORT $L7569

; 176  :       LPZKEY lpZKey = (LPZKEY) cpcContextName;

	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	mov	DWORD PTR _lpZKey$7570[ebp], ecx
$L7573:

; 177  : 
; 178  :       while ( lpSrchContext )

	cmp	DWORD PTR _lpSrchContext$[ebp], 0
	je	SHORT $L7574

; 180  :          if ( lpSrchContext->lContextTok == lpZKey->lZKey )

	mov	edx, DWORD PTR _lpSrchContext$[ebp]
	mov	eax, DWORD PTR _lpZKey$7570[ebp]
	mov	ecx, DWORD PTR [edx+39]
	cmp	ecx, DWORD PTR [eax+1]
	jne	SHORT $L7575

; 181  :             break;

	jmp	SHORT $L7574
$L7575:

; 182  : 
; 183  :          lpSrchContext = zGETPTR( lpSrchContext->hNextContext );

	mov	edx, DWORD PTR _lpSrchContext$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchContext$[ebp], eax

; 184  :       }

	jmp	SHORT $L7573
$L7574:

; 186  :    else

	jmp	SHORT $L7580
$L7569:

; 188  :       while ( lpSrchContext )

	cmp	DWORD PTR _lpSrchContext$[ebp], 0
	je	SHORT $L7580

; 190  :          zPCHAR lpName = lpSrchContext->szName;

	mov	ecx, DWORD PTR _lpSrchContext$[ebp]
	add	ecx, 6
	mov	DWORD PTR _lpName$7581[ebp], ecx

; 191  : 
; 192  :          if ( lpName == 0 || lpName[ 0 ] == 0 )

	cmp	DWORD PTR _lpName$7581[ebp], 0
	je	SHORT $L7583
	mov	edx, DWORD PTR _lpName$7581[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L7582
$L7583:

; 194  :             // "KZOEE356 - Domain has an unnamed Context"
; 195  :             fnSysMessageBox( 0, "Zeidon Error",
; 196  :                              "Domain has an unnamed Context", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BO@PGDP@Domain?5has?5an?5unnamed?5Context?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@EEMD@Zeidon?5Error?$AA@ ; `string'
	push	0
	call	_fnSysMessageBox@16

; 199  :          else

	jmp	SHORT $L7587
$L7582:

; 200  :          if ( zstrcmpi( lpName, cpcContextName ) == 0 )

	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpName$7581[ebp]
	push	edx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7587

; 201  :                break;

	jmp	SHORT $L7580
$L7587:

; 202  : 
; 203  :          lpSrchContext = zGETPTR( lpSrchContext->hNextContext );

	mov	eax, DWORD PTR _lpSrchContext$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchContext$[ebp], eax

; 204  :       }

	jmp	SHORT $L7569
$L7580:

; 206  : 
; 207  :    return( lpSrchContext );

	mov	eax, DWORD PTR _lpSrchContext$[ebp]

; 208  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnGetContext ENDP
_TEXT	ENDS
PUBLIC	_GetContext@12
_TEXT	SEGMENT
_lpReturnContext$ = 8
_lpDomain$ = 12
_cpcContextName$ = 16
_GetContext@12 PROC NEAR

; 232  : {

	push	ebp
	mov	ebp, esp

; 233  :    // if no domain or no context name, return 0.
; 234  :    if ( lpDomain == 0 || cpcContextName == 0 || *cpcContextName == 0 )

	cmp	DWORD PTR _lpDomain$[ebp], 0
	je	SHORT $L7597
	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L7597
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L7596
$L7597:

; 236  :       *lpReturnContext = (zLPCONTEXT) 0;

	mov	edx, DWORD PTR _lpReturnContext$[ebp]
	mov	DWORD PTR [edx], 0

; 237  :       return( 0 );

	xor	ax, ax
	jmp	SHORT $L7595
$L7596:

; 239  : 
; 240  :    *lpReturnContext = fnGetContext( lpDomain, cpcContextName );

	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	call	_fnGetContext
	add	esp, 8
	mov	edx, DWORD PTR _lpReturnContext$[ebp]
	mov	DWORD PTR [edx], eax

; 241  : 
; 242  :    return( (*lpReturnContext) ? 1 : 0 );

	mov	eax, DWORD PTR _lpReturnContext$[ebp]
	xor	ecx, ecx
	cmp	DWORD PTR [eax], 0
	setne	cl
	mov	ax, cx
$L7595:

; 243  : }

	pop	ebp
	ret	12					; 0000000cH
_GetContext@12 ENDP
_TEXT	ENDS
PUBLIC	_GetDefaultContext@8
_TEXT	SEGMENT
_lpReturnContext$ = 8
_lpDomain$ = 12
_stZKeyTok$ = -8
_GetDefaultContext@8 PROC NEAR

; 266  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 267  :    ZKeyRecord stZKeyTok;
; 268  : 
; 269  :    // If no domain, return 0.
; 270  :    if ( lpDomain == 0 )

	cmp	DWORD PTR _lpDomain$[ebp], 0
	jne	SHORT $L7605

; 272  :       *lpReturnContext = (zLPCONTEXT) 0;

	mov	eax, DWORD PTR _lpReturnContext$[ebp]
	mov	DWORD PTR [eax], 0

; 273  :       return( 0 );

	xor	ax, ax
	jmp	SHORT $L7603
$L7605:

; 275  : 
; 276  :    if ( lpDomain->lDefaultContextZKey )

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	cmp	DWORD PTR [ecx+137], 0
	je	SHORT $L7607

; 278  :       stZKeyTok.ch1 = '\xff';

	mov	BYTE PTR _stZKeyTok$[ebp], -1

; 279  :       stZKeyTok.ch2 = '\x00';

	mov	BYTE PTR _stZKeyTok$[ebp+5], 0

; 280  :       stZKeyTok.lZKey = lpDomain->lDefaultContextZKey;

	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	eax, DWORD PTR [edx+137]
	mov	DWORD PTR _stZKeyTok$[ebp+1], eax

; 281  :       *lpReturnContext = fnGetContext( lpDomain, (zPCHAR) &stZKeyTok );

	lea	ecx, DWORD PTR _stZKeyTok$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	push	edx
	call	_fnGetContext
	add	esp, 8
	mov	ecx, DWORD PTR _lpReturnContext$[ebp]
	mov	DWORD PTR [ecx], eax

; 283  :    else

	jmp	SHORT $L7609
$L7607:

; 284  :       *lpReturnContext = fnGetContext( lpDomain, lpDomain->szName );

	mov	edx, DWORD PTR _lpDomain$[ebp]
	add	edx, 6
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	call	_fnGetContext
	add	esp, 8
	mov	ecx, DWORD PTR _lpReturnContext$[ebp]
	mov	DWORD PTR [ecx], eax
$L7609:

; 285  : 
; 286  :    return( (*lpReturnContext) ? 1 : 0 );

	mov	edx, DWORD PTR _lpReturnContext$[ebp]
	xor	eax, eax
	cmp	DWORD PTR [edx], 0
	setne	al
$L7603:

; 287  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_GetDefaultContext@8 ENDP
_TEXT	ENDS
PUBLIC	_SfGetDefaultContextForDomain@12
EXTRN	_fnOperationCall:NEAR
EXTRN	_fnOperationReturn:NEAR
EXTRN	_strcmp:NEAR
EXTRN	_SfGetApplicationForSubtask@8:NEAR
_TEXT	SEGMENT
_lpReturnContext$ = 8
_lpView$ = 12
_cpcDomainName$ = 16
_lpCurrentTask$ = -16
_lpApp$ = -12
_lpDomain$ = -4
_nRC$ = -8
_SfGetDefaultContextForDomain@12 PROC NEAR

; 314  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 315  :    LPTASK   lpCurrentTask;
; 316  :    LPAPP    lpApp;
; 317  :    LPDOMAIN lpDomain;
; 318  :    zSHORT   nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 319  : 
; 320  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 321  :    if ( (lpCurrentTask = fnOperationCall( iSfGetDefaultContextForDomain,
; 322  :                                           lpView, zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	23					; 00000017H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7621

; 324  :       *lpReturnContext = 0;

	mov	ecx, DWORD PTR _lpReturnContext$[ebp]
	mov	DWORD PTR [ecx], 0

; 325  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7616
$L7621:

; 327  : 
; 328  :    SfGetApplicationForSubtask( &lpApp, lpView );

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpApp$[ebp]
	push	eax
	call	_SfGetApplicationForSubtask@8

; 329  :    lpDomain = zGETPTR( lpApp->hFirstDomain );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR [ecx+72]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax
$L7624:

; 330  :    while ( lpDomain )

	cmp	DWORD PTR _lpDomain$[ebp], 0
	je	SHORT $L7625

; 332  :       if ( zstrcmp( lpDomain->szName, cpcDomainName ) == 0 )

	mov	eax, DWORD PTR _lpDomain$[ebp]
	movsx	ecx, BYTE PTR [eax+6]
	mov	edx, DWORD PTR _cpcDomainName$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L8310
	mov	ecx, DWORD PTR _cpcDomainName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	add	edx, 6
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -20+[ebp], eax
	jmp	SHORT $L8311
$L8310:
	mov	eax, DWORD PTR _lpDomain$[ebp]
	movsx	ecx, BYTE PTR [eax+6]
	mov	edx, DWORD PTR _cpcDomainName$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -20+[ebp], edx
$L8311:
	cmp	DWORD PTR -20+[ebp], 0
	jne	SHORT $L7632

; 334  :          nRC = GetDefaultContext( lpReturnContext, lpDomain );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpReturnContext$[ebp]
	push	ecx
	call	_GetDefaultContext@8
	mov	WORD PTR _nRC$[ebp], ax

; 335  :       // TraceLine( "SfGetDefaultContextForDomain Name: %s   Context: %s",
; 336  :       //            cpcDomainName, (*lpReturnContext)->szName );
; 337  :          break;

	jmp	SHORT $L7625
$L7632:

; 339  : 
; 340  :       lpDomain = zGETPTR( lpDomain->hNextDomain );

	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax

; 341  :    }

	jmp	SHORT $L7624
$L7625:

; 342  : 
; 343  :    fnOperationReturn( iSfGetDefaultContextForDomain, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	23					; 00000017H
	call	_fnOperationReturn
	add	esp, 8

; 344  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7616:

; 345  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SfGetDefaultContextForDomain@12 ENDP
_TEXT	ENDS
PUBLIC	_fnDomainProcessingRequired
EXTRN	_fnGetTaskDomain:NEAR
_TEXT	SEGMENT
_lpReturnTaskDomain$ = 8
_lpView$ = 12
_lpCurrentTask$ = 16
_lpDomain$ = 20
_lpTDTemp$ = -4
_lpTempDomain$ = -8
_fnDomainProcessingRequired PROC NEAR

; 365  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 366  :    LPTASKDOMAIN   lpTDTemp;
; 367  :    LPDOMAIN       lpTempDomain;
; 368  : 
; 369  :    *lpReturnTaskDomain = fnGetTaskDomain( lpView, lpCurrentTask, lpDomain );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnGetTaskDomain
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _lpReturnTaskDomain$[ebp]
	mov	DWORD PTR [ecx], eax

; 370  :    lpTDTemp = *lpReturnTaskDomain;

	mov	edx, DWORD PTR _lpReturnTaskDomain$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR _lpTDTemp$[ebp], eax

; 371  :    if ( lpTDTemp )

	cmp	DWORD PTR _lpTDTemp$[ebp], 0
	je	SHORT $L7647

; 373  :       lpTempDomain = zGETPTR( lpTDTemp->hDomain );

	mov	ecx, DWORD PTR _lpTDTemp$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempDomain$[ebp], eax

; 374  : 
; 375  :       if ( lpTDTemp->pfDomainOper ||
; 376  :            lpTempDomain->cDomainType == zDM_TYPE_TABLE ||
; 377  :            lpTempDomain->cDomainType == zDM_TYPE_FORMAT )

	mov	eax, DWORD PTR _lpTDTemp$[ebp]
	cmp	DWORD PTR [eax+30], 0
	jne	SHORT $L7648
	mov	ecx, DWORD PTR _lpTempDomain$[ebp]
	movsx	edx, BYTE PTR [ecx+65]
	cmp	edx, 84					; 00000054H
	je	SHORT $L7648
	mov	eax, DWORD PTR _lpTempDomain$[ebp]
	movsx	ecx, BYTE PTR [eax+65]
	cmp	ecx, 70					; 00000046H
	jne	SHORT $L7647
$L7648:

; 379  :          return( lpTempDomain->cDomainType );

	mov	edx, DWORD PTR _lpTempDomain$[ebp]
	mov	al, BYTE PTR [edx+65]
	jmp	SHORT $L7642
$L7647:

; 382  : 
; 383  :    return( 0 );

	xor	al, al
$L7642:

; 384  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnDomainProcessingRequired ENDP
_TEXT	ENDS
PUBLIC	_TableEntryForInternalValue@16
EXTRN	_TrueName@8:NEAR
EXTRN	_fnIssueCoreError:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpDomain$ = 12
_cpcContextName$ = 16
_lpInputValue$ = 20
_lpCurrentTask$ = -20
_lpContext$ = -8
_lpSrchTableEntry$ = -16
_chType$ = -4
_nRC$ = -12
_TableEntryForInternalValue@16 PROC NEAR

; 420  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 421  :    LPTASK         lpCurrentTask;
; 422  :    zLPCONTEXT     lpContext;
; 423  :    LPTABLEENTRY   lpSrchTableEntry;
; 424  :    zCHAR          chType;
; 425  :    zSHORT         nRC;
; 426  : 
; 427  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 428  :    if ( (lpCurrentTask = fnOperationCall( iTableEntryForInternalValue,
; 429  :                                           lpView, zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	352					; 00000160H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7663

; 431  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7657
$L7663:

; 433  : 
; 434  :    if ( cpcContextName == 0 || cpcContextName[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L7665
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	jne	SHORT $L7664
$L7665:

; 435  :       GetDefaultContext( &lpContext, lpDomain );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpContext$[ebp]
	push	ecx
	call	_GetDefaultContext@8

; 436  :    else

	jmp	SHORT $L7666
$L7664:

; 437  :       lpContext = fnGetContext( lpDomain, cpcContextName );

	mov	edx, DWORD PTR _cpcContextName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	call	_fnGetContext
	add	esp, 8
	mov	DWORD PTR _lpContext$[ebp], eax
$L7666:

; 438  : 
; 439  :    if ( lpContext == 0 )

	cmp	DWORD PTR _lpContext$[ebp], 0
	jne	SHORT $L7667

; 441  :       // "KZOEE350 - Context Not Valid for Domain"
; 442  :       fnIssueCoreError( lpCurrentTask, lpView, 8, 350, 0, lpDomain->szName,
; 443  :                         TrueName( cpcContextName, zSHOW_ZKEY ) );

	push	1
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	push	ecx
	call	_TrueName@8
	push	eax
	mov	edx, DWORD PTR _lpDomain$[ebp]
	add	edx, 6
	push	edx
	push	0
	push	350					; 0000015eH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 444  :       fnOperationReturn( iTableEntryForInternalValue, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	352					; 00000160H
	call	_fnOperationReturn
	add	esp, 8

; 445  :       return( -1 );

	or	ax, -1
	jmp	$L7657
$L7667:

; 447  : 
; 448  :    chType = lpDomain->cType;

	mov	eax, DWORD PTR _lpDomain$[ebp]
	mov	cl, BYTE PTR [eax+63]
	mov	BYTE PTR _chType$[ebp], cl

; 449  :    lpSrchTableEntry = zGETPTR( lpContext->hFirstTableEntry );

	mov	edx, DWORD PTR _lpContext$[ebp]
	mov	eax, DWORD PTR [edx+47]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchTableEntry$[ebp], eax
$L7670:

; 450  : 
; 451  :    while ( lpSrchTableEntry )

	cmp	DWORD PTR _lpSrchTableEntry$[ebp], 0
	je	SHORT $L7671

; 453  :       if ( chType == zTYPE_INTEGER || chType == zTYPE_DECIMAL )

	movsx	ecx, BYTE PTR _chType$[ebp]
	cmp	ecx, 76					; 0000004cH
	je	SHORT $L7673
	movsx	edx, BYTE PTR _chType$[ebp]
	cmp	edx, 77					; 0000004dH
	jne	SHORT $L7672
$L7673:

; 455  :          if ( lpSrchTableEntry->unInternal.lInteger ==
; 456  :                                                   *((zPLONG) lpInputValue) )

	mov	eax, DWORD PTR _lpSrchTableEntry$[ebp]
	mov	ecx, DWORD PTR _lpInputValue$[ebp]
	mov	edx, DWORD PTR [eax+26]
	cmp	edx, DWORD PTR [ecx]
	jne	SHORT $L7675

; 458  :             break;

	jmp	SHORT $L7671
$L7675:

; 461  :       else

	jmp	SHORT $L7680
$L7672:

; 463  :          if ( ((lpInputValue == 0 || *((zPCHAR) lpInputValue) == 0) &&
; 464  :                lpSrchTableEntry->unInternal.hStringValue == 0) ||
; 465  :               (lpSrchTableEntry->unInternal.hStringValue != 0 &&
; 466  :                zstrcmpi( zGETPTR( lpSrchTableEntry->unInternal.hStringValue ),
; 467  :                          (zPCHAR) lpInputValue ) == 0) )

	cmp	DWORD PTR _lpInputValue$[ebp], 0
	je	SHORT $L7683
	mov	eax, DWORD PTR _lpInputValue$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L7682
$L7683:
	mov	edx, DWORD PTR _lpSrchTableEntry$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L7681
$L7682:
	mov	eax, DWORD PTR _lpSrchTableEntry$[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	SHORT $L7680
	mov	ecx, DWORD PTR _lpInputValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrchTableEntry$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7680
$L7681:

; 469  :             break;

	jmp	SHORT $L7671
$L7680:

; 472  : 
; 473  :       lpSrchTableEntry = zGETPTR( lpSrchTableEntry->hNextTableEntry );

	mov	ecx, DWORD PTR _lpSrchTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchTableEntry$[ebp], eax

; 474  :    }

	jmp	SHORT $L7670
$L7671:

; 475  : 
; 476  :    if ( lpSrchTableEntry )

	cmp	DWORD PTR _lpSrchTableEntry$[ebp], 0
	je	SHORT $L7685

; 477  :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 478  :    else

	jmp	SHORT $L7686
$L7685:

; 479  :       nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1
$L7686:

; 480  : 
; 481  :    fnOperationReturn( iTableEntryForInternalValue, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	352					; 00000160H
	call	_fnOperationReturn
	add	esp, 8

; 482  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7657:

; 483  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_TableEntryForInternalValue@16 ENDP
_TEXT	ENDS
PUBLIC	_TableEntryIntToExt@20
EXTRN	_fnGetTextForTableEntry:NEAR
EXTRN	_strcpy:NEAR
_TEXT	SEGMENT
_pchReturnValue$ = 8
_lpView$ = 12
_lpDomain$ = 16
_cpcContext$ = 20
_lpInternalValue$ = 24
_lpCurrentTask$ = -20
_lpContext$ = -8
_lpSrchTableEntry$ = -16
_chType$ = -4
_nRC$ = -12
_pch$7726 = -24
_TableEntryIntToExt@20 PROC NEAR

; 523  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 524  :    LPTASK         lpCurrentTask;
; 525  :    zLPCONTEXT     lpContext;
; 526  :    LPTABLEENTRY   lpSrchTableEntry;
; 527  :    zCHAR          chType;
; 528  :    zSHORT         nRC;
; 529  : 
; 530  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 531  :    if ( (lpCurrentTask = fnOperationCall( iTableEntryIntToExt, lpView,
; 532  :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	351					; 0000015fH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7703

; 534  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7697
$L7703:

; 536  : 
; 537  :    if ( cpcContext == 0 || cpcContext[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContext$[ebp], 0
	je	SHORT $L7705
	mov	ecx, DWORD PTR _cpcContext$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	jne	SHORT $L7704
$L7705:

; 538  :       GetDefaultContext( &lpContext, lpDomain );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpContext$[ebp]
	push	ecx
	call	_GetDefaultContext@8

; 539  :    else

	jmp	SHORT $L7706
$L7704:

; 540  :       lpContext = fnGetContext( lpDomain, cpcContext );

	mov	edx, DWORD PTR _cpcContext$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	call	_fnGetContext
	add	esp, 8
	mov	DWORD PTR _lpContext$[ebp], eax
$L7706:

; 541  : 
; 542  :    if ( lpContext == 0 )

	cmp	DWORD PTR _lpContext$[ebp], 0
	jne	SHORT $L7707

; 544  :       // "KZOEE350 - Context Not Valid for Domain"
; 545  :       fnIssueCoreError( lpCurrentTask, lpView, 8, 350, 0, lpDomain->szName,
; 546  :                         TrueName( cpcContext, zSHOW_ZKEY ) );

	push	1
	mov	ecx, DWORD PTR _cpcContext$[ebp]
	push	ecx
	call	_TrueName@8
	push	eax
	mov	edx, DWORD PTR _lpDomain$[ebp]
	add	edx, 6
	push	edx
	push	0
	push	350					; 0000015eH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 547  :       fnOperationReturn( iTableEntryIntToExt, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	351					; 0000015fH
	call	_fnOperationReturn
	add	esp, 8

; 548  :       return( -1 );

	or	ax, -1
	jmp	$L7697
$L7707:

; 550  : 
; 551  :    chType = lpDomain->cType;

	mov	eax, DWORD PTR _lpDomain$[ebp]
	mov	cl, BYTE PTR [eax+63]
	mov	BYTE PTR _chType$[ebp], cl

; 552  :    lpSrchTableEntry = zGETPTR( lpContext->hFirstTableEntry );

	mov	edx, DWORD PTR _lpContext$[ebp]
	mov	eax, DWORD PTR [edx+47]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchTableEntry$[ebp], eax
$L7710:

; 553  : 
; 554  :    while ( lpSrchTableEntry )

	cmp	DWORD PTR _lpSrchTableEntry$[ebp], 0
	je	SHORT $L7711

; 556  :       if ( chType == zTYPE_INTEGER || chType == zTYPE_DECIMAL )

	movsx	ecx, BYTE PTR _chType$[ebp]
	cmp	ecx, 76					; 0000004cH
	je	SHORT $L7713
	movsx	edx, BYTE PTR _chType$[ebp]
	cmp	edx, 77					; 0000004dH
	jne	SHORT $L7712
$L7713:

; 558  :          if ( lpSrchTableEntry->unInternal.lInteger ==
; 559  :                                                 *((zPLONG) lpInternalValue) )

	mov	eax, DWORD PTR _lpSrchTableEntry$[ebp]
	mov	ecx, DWORD PTR _lpInternalValue$[ebp]
	mov	edx, DWORD PTR [eax+26]
	cmp	edx, DWORD PTR [ecx]
	jne	SHORT $L7715

; 561  :             break;

	jmp	SHORT $L7711
$L7715:

; 564  :       else

	jmp	SHORT $L7720
$L7712:

; 566  :          if ( ((lpInternalValue == 0 || *((zPCHAR) lpInternalValue) == 0) &&
; 567  :                lpSrchTableEntry->unInternal.hStringValue == 0) ||
; 568  :               (lpSrchTableEntry->unInternal.hStringValue != 0 &&
; 569  :                zstrcmpi( zGETPTR( lpSrchTableEntry->unInternal.hStringValue ),
; 570  :                          (zPCHAR) lpInternalValue ) == 0) )

	cmp	DWORD PTR _lpInternalValue$[ebp], 0
	je	SHORT $L7723
	mov	eax, DWORD PTR _lpInternalValue$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L7722
$L7723:
	mov	edx, DWORD PTR _lpSrchTableEntry$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L7721
$L7722:
	mov	eax, DWORD PTR _lpSrchTableEntry$[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	SHORT $L7720
	mov	ecx, DWORD PTR _lpInternalValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrchTableEntry$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7720
$L7721:

; 572  :             break;

	jmp	SHORT $L7711
$L7720:

; 575  : 
; 576  :       lpSrchTableEntry = zGETPTR( lpSrchTableEntry->hNextTableEntry );

	mov	ecx, DWORD PTR _lpSrchTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchTableEntry$[ebp], eax

; 577  :    }

	jmp	SHORT $L7710
$L7711:

; 578  : 
; 579  :    if ( lpSrchTableEntry )

	cmp	DWORD PTR _lpSrchTableEntry$[ebp], 0
	je	SHORT $L7725

; 581  :       zPCHAR pch;
; 582  : 
; 583  :       pch = fnGetTextForTableEntry( lpSrchTableEntry );

	mov	eax, DWORD PTR _lpSrchTableEntry$[ebp]
	push	eax
	call	_fnGetTextForTableEntry
	add	esp, 4
	mov	DWORD PTR _pch$7726[ebp], eax

; 584  :       if ( pch )

	cmp	DWORD PTR _pch$7726[ebp], 0
	je	SHORT $L7727

; 585  :          zstrcpy( pchReturnValue, pch );

	mov	ecx, DWORD PTR _pch$7726[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchReturnValue$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 586  :       else

	jmp	SHORT $L7728
$L7727:

; 587  :          pchReturnValue[ 0 ] = 0;

	mov	eax, DWORD PTR _pchReturnValue$[ebp]
	mov	BYTE PTR [eax], 0
$L7728:

; 588  : 
; 589  :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 591  :    else

	jmp	SHORT $L7729
$L7725:

; 593  :       pchReturnValue[ 0 ] = 0;

	mov	ecx, DWORD PTR _pchReturnValue$[ebp]
	mov	BYTE PTR [ecx], 0

; 594  :       nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1
$L7729:

; 596  : 
; 597  :    fnOperationReturn( iTableEntryIntToExt, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	351					; 0000015fH
	call	_fnOperationReturn
	add	esp, 8

; 598  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7697:

; 599  : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_TableEntryIntToExt@20 ENDP
_TEXT	ENDS
PUBLIC	_TableEntryExtToInt@20
_TEXT	SEGMENT
_lpReturnValue$ = 8
_lpView$ = 12
_lpDomain$ = 16
_cpcContext$ = 20
_cpcExternalValue$ = 24
_lpCurrentTask$ = -20
_lpContext$ = -8
_lpSrchTableEntry$ = -16
_chType$ = -4
_nRC$ = -12
_pch$7755 = -24
_TableEntryExtToInt@20 PROC NEAR

; 642  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 643  :    LPTASK         lpCurrentTask;
; 644  :    zLPCONTEXT     lpContext;
; 645  :    LPTABLEENTRY   lpSrchTableEntry;
; 646  :    zCHAR          chType;
; 647  :    zSHORT         nRC;
; 648  : 
; 649  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 650  :    if ( (lpCurrentTask = fnOperationCall( iTableEntryExtToInt, lpView,
; 651  :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	350					; 0000015eH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7746

; 653  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7740
$L7746:

; 655  : 
; 656  :    if ( cpcContext == 0 || cpcContext[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContext$[ebp], 0
	je	SHORT $L7748
	mov	ecx, DWORD PTR _cpcContext$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	jne	SHORT $L7747
$L7748:

; 657  :       GetDefaultContext( &lpContext, lpDomain );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpContext$[ebp]
	push	ecx
	call	_GetDefaultContext@8

; 658  :    else

	jmp	SHORT $L7749
$L7747:

; 659  :       lpContext = fnGetContext( lpDomain, cpcContext );

	mov	edx, DWORD PTR _cpcContext$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	call	_fnGetContext
	add	esp, 8
	mov	DWORD PTR _lpContext$[ebp], eax
$L7749:

; 660  : 
; 661  :    if ( lpContext == 0 )

	cmp	DWORD PTR _lpContext$[ebp], 0
	jne	SHORT $L7750

; 663  :       // "KZOEE350 - Context Not Valid for Domain"
; 664  :       fnIssueCoreError( lpCurrentTask, lpView, 8, 350, 0, lpDomain->szName,
; 665  :                         TrueName( cpcContext, zSHOW_ZKEY ) );

	push	1
	mov	ecx, DWORD PTR _cpcContext$[ebp]
	push	ecx
	call	_TrueName@8
	push	eax
	mov	edx, DWORD PTR _lpDomain$[ebp]
	add	edx, 6
	push	edx
	push	0
	push	350					; 0000015eH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 666  :       fnOperationReturn( iTableEntryExtToInt, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	350					; 0000015eH
	call	_fnOperationReturn
	add	esp, 8

; 667  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7740
$L7750:

; 669  : 
; 670  :    chType = lpDomain->cType;

	mov	eax, DWORD PTR _lpDomain$[ebp]
	mov	cl, BYTE PTR [eax+63]
	mov	BYTE PTR _chType$[ebp], cl

; 671  :    lpSrchTableEntry = zGETPTR( lpContext->hFirstTableEntry );

	mov	edx, DWORD PTR _lpContext$[ebp]
	mov	eax, DWORD PTR [edx+47]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchTableEntry$[ebp], eax
$L7753:

; 672  : 
; 673  :    while ( lpSrchTableEntry )

	cmp	DWORD PTR _lpSrchTableEntry$[ebp], 0
	je	SHORT $L7754

; 675  :       zPCHAR pch;
; 676  : 
; 677  :       pch = fnGetTextForTableEntry( lpSrchTableEntry );

	mov	ecx, DWORD PTR _lpSrchTableEntry$[ebp]
	push	ecx
	call	_fnGetTextForTableEntry
	add	esp, 4
	mov	DWORD PTR _pch$7755[ebp], eax

; 678  :       if ( pch )

	cmp	DWORD PTR _pch$7755[ebp], 0
	je	SHORT $L7756

; 680  :          if ( cpcExternalValue && cpcExternalValue[ 0 ] &&
; 681  :               zstrcmpi( pch, cpcExternalValue ) == 0 )

	cmp	DWORD PTR _cpcExternalValue$[ebp], 0
	je	SHORT $L7757
	mov	edx, DWORD PTR _cpcExternalValue$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L7757
	mov	ecx, DWORD PTR _cpcExternalValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pch$7755[ebp]
	push	edx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7757

; 683  :             break;

	jmp	SHORT $L7754
$L7757:

; 686  :       else

	jmp	SHORT $L7759
$L7756:

; 688  :          if ( cpcExternalValue == 0 || cpcExternalValue[ 0 ] == 0 )

	cmp	DWORD PTR _cpcExternalValue$[ebp], 0
	je	SHORT $L7760
	mov	eax, DWORD PTR _cpcExternalValue$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L7759
$L7760:

; 689  :             break;

	jmp	SHORT $L7754
$L7759:

; 691  : 
; 692  :       lpSrchTableEntry = zGETPTR( lpSrchTableEntry->hNextTableEntry );

	mov	edx, DWORD PTR _lpSrchTableEntry$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchTableEntry$[ebp], eax

; 693  :    }

	jmp	SHORT $L7753
$L7754:

; 694  : 
; 695  :    if ( lpSrchTableEntry )

	cmp	DWORD PTR _lpSrchTableEntry$[ebp], 0
	je	SHORT $L7762

; 697  :       if ( chType == zTYPE_INTEGER || chType == zTYPE_DECIMAL )

	movsx	ecx, BYTE PTR _chType$[ebp]
	cmp	ecx, 76					; 0000004cH
	je	SHORT $L7764
	movsx	edx, BYTE PTR _chType$[ebp]
	cmp	edx, 77					; 0000004dH
	jne	SHORT $L7763
$L7764:

; 699  :          // Integer or Decimal, internal table value to return is long
; 700  :          *((zPLONG) lpReturnValue) = lpSrchTableEntry->unInternal.lInteger;

	mov	eax, DWORD PTR _lpReturnValue$[ebp]
	mov	ecx, DWORD PTR _lpSrchTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	mov	DWORD PTR [eax], edx

; 702  :       else

	jmp	SHORT $L7770
$L7763:

; 704  :          // internal table value to return is string
; 705  :          if ( lpSrchTableEntry->unInternal.hStringValue )

	mov	eax, DWORD PTR _lpSrchTableEntry$[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	SHORT $L7767

; 707  :             zstrcpy( (zPCHAR) lpReturnValue,
; 708  :                      zGETPTR( lpSrchTableEntry->unInternal.hStringValue ) );

	mov	ecx, DWORD PTR _lpSrchTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpReturnValue$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 710  :          else

	jmp	SHORT $L7770
$L7767:

; 711  :             *((zPCHAR) lpReturnValue) = 0;

	mov	ecx, DWORD PTR _lpReturnValue$[ebp]
	mov	BYTE PTR [ecx], 0
$L7770:

; 713  : 
; 714  :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 716  :    else

	jmp	SHORT $L7772
$L7762:

; 718  :       if ( chType == zTYPE_INTEGER || chType == zTYPE_DECIMAL )

	movsx	edx, BYTE PTR _chType$[ebp]
	cmp	edx, 76					; 0000004cH
	je	SHORT $L7774
	movsx	eax, BYTE PTR _chType$[ebp]
	cmp	eax, 77					; 0000004dH
	jne	SHORT $L7773
$L7774:

; 719  :          *((zPLONG) lpReturnValue) = 0;

	mov	ecx, DWORD PTR _lpReturnValue$[ebp]
	mov	DWORD PTR [ecx], 0

; 720  :       else

	jmp	SHORT $L7776
$L7773:

; 721  :          *((zPCHAR) lpReturnValue) = 0;

	mov	edx, DWORD PTR _lpReturnValue$[ebp]
	mov	BYTE PTR [edx], 0
$L7776:

; 722  : 
; 723  :       nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1
$L7772:

; 725  : 
; 726  :    fnOperationReturn( iTableEntryExtToInt, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	350					; 0000015eH
	call	_fnOperationReturn
	add	esp, 8

; 727  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7740:

; 728  : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_TableEntryExtToInt@20 ENDP
_TEXT	ENDS
PUBLIC	_IsDataNull
EXTRN	_SysCompareDecimalToNull@4:NEAR
EXTRN	_lNullInteger:DWORD
_TEXT	SEGMENT
_pvData$ = 8
_chType$ = 12
_IsDataNull PROC NEAR

; 732  : {

	push	ebp
	mov	ebp, esp

; 733  :    // If the pvData input is null or points to a null char.
; 734  :    if ( pvData == 0 ||
; 735  :         (chType == zTYPE_STRING && *((zPCHAR) pvData) == 0) ||
; 736  :         (chType == zTYPE_INTEGER && *((zPLONG) pvData) == lNullInteger) ||
; 737  :         (chType == zTYPE_DECIMAL &&
; 738  :          SysCompareDecimalToNull( (zPDECIMAL) pvData ) == 0) )

	cmp	DWORD PTR _pvData$[ebp], 0
	je	SHORT $L7788
	movsx	eax, BYTE PTR _chType$[ebp]
	cmp	eax, 83					; 00000053H
	jne	SHORT $L7789
	mov	ecx, DWORD PTR _pvData$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	SHORT $L7788
$L7789:
	movsx	eax, BYTE PTR _chType$[ebp]
	cmp	eax, 76					; 0000004cH
	jne	SHORT $L7790
	mov	ecx, DWORD PTR _pvData$[ebp]
	mov	edx, DWORD PTR [ecx]
	cmp	edx, DWORD PTR _lNullInteger
	je	SHORT $L7788
$L7790:
	movsx	eax, BYTE PTR _chType$[ebp]
	cmp	eax, 77					; 0000004dH
	jne	SHORT $L7787
	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	call	_SysCompareDecimalToNull@4
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L7787
$L7788:

; 740  :       return( TRUE );

	mov	al, 1
	jmp	SHORT $L7783
$L7787:

; 742  : 
; 743  :    return( FALSE );

	xor	al, al
$L7783:

; 744  : }

	pop	ebp
	ret	0
_IsDataNull ENDP
_TEXT	ENDS
PUBLIC	_fnGetTableEntryForDomain@32
PUBLIC	??_C@_0EE@ELLG@Operation?5?8?$CFs?8?5does?5not?5handle?5a@ ; `string'
PUBLIC	??_C@_0N@LGH@System?5Error?$AA@			; `string'
PUBLIC	??_C@_08MEJN@TZDMD101?$AA@			; `string'
PUBLIC	??_C@_0M@ECFE@Operation?0?5?$AA@		; `string'
PUBLIC	??_C@_0BJ@JMFE@?0?5not?5found?5for?5Domain?3?5?$AA@ ; `string'
EXTRN	__imp__sprintf:NEAR
EXTRN	_memcpy:NEAR
EXTRN	_strcat:NEAR
EXTRN	_MessageSend@24:NEAR
;	COMDAT ??_C@_0EE@ELLG@Operation?5?8?$CFs?8?5does?5not?5handle?5a@
; File C:\10C\A\oe\KZOEDMAA.C
_DATA	SEGMENT
??_C@_0EE@ELLG@Operation?5?8?$CFs?8?5does?5not?5handle?5a@ DB 'Operation '
	DB	'''%s'' does not handle an Entry Type of %ld for domain ''%s'''
	DB	00H						; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@LGH@System?5Error?$AA@
_DATA	SEGMENT
??_C@_0N@LGH@System?5Error?$AA@ DB 'System Error', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08MEJN@TZDMD101?$AA@
_DATA	SEGMENT
??_C@_08MEJN@TZDMD101?$AA@ DB 'TZDMD101', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@ECFE@Operation?0?5?$AA@
_DATA	SEGMENT
??_C@_0M@ECFE@Operation?0?5?$AA@ DB 'Operation, ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@JMFE@?0?5not?5found?5for?5Domain?3?5?$AA@
_DATA	SEGMENT
??_C@_0BJ@JMFE@?0?5not?5found?5for?5Domain?3?5?$AA@ DB ', not found for D'
	DB	'omain: ', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntity$ = 12
_lpViewAttribute$ = 16
_lpDomain$ = 20
_cpcContextName$ = 24
_pvData$ = 28
_pvTablePosition$ = 32
_lFlag$ = 36
_lpTableEntry$ = -16
_lpSrchContext$ = -4
_pch$ = -8
_nRC$ = -12
_szWorkString$7813 = -276
_lpCurrentTask$7814 = -280
_lpTaskDomain$7816 = -20
_lEntryType$7818 = -284
_lpContext$7830 = -288
_fnGetTableEntryForDomain@32 PROC NEAR

; 752  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H

; 753  :    LPTABLEENTRY lpTableEntry;
; 754  :    zLPCONTEXT   lpSrchContext;
; 755  :    zPCHAR       pch;
; 756  :    zSHORT       nRC;
; 757  : 
; 758  :    // If the table Domain has an operation, call the Domain Operation, instead
; 759  :    // of continuing processing here.
; 760  :    if ( lpDomain->szDomainOper[ 0 ] )

	mov	eax, DWORD PTR _lpDomain$[ebp]
	movsx	ecx, BYTE PTR [eax+100]
	test	ecx, ecx
	je	$L7812

; 762  :       zCHAR        szWorkString[ 256 ];
; 763  :       LPTASK       lpCurrentTask = zGETPTR( lpView->hTask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentTask$7814[ebp], eax

; 764  :       LPTASKDOMAIN lpTaskDomain = fnGetTaskDomain( lpView, lpCurrentTask, lpDomain );

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$7814[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnGetTaskDomain
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpTaskDomain$7816[ebp], eax

; 765  :       if ( lpTaskDomain->pfDomainOper )

	mov	ecx, DWORD PTR _lpTaskDomain$7816[ebp]
	cmp	DWORD PTR [ecx+30], 0
	je	$L7817

; 767  :          zLONG lEntryType = (lFlag & 2) ? zDME_GET_NEXT_TBL_ENT_FOR_ATTR :
; 768  :                                           zDME_GET_FIRST_TBL_ENT_FOR_ATTR;

	mov	edx, DWORD PTR _lFlag$[ebp]
	and	edx, 2
	neg	edx
	sbb	edx, edx
	neg	edx
	add	edx, 4
	mov	DWORD PTR _lEntryType$7818[ebp], edx

; 769  :          nRC = fnCallDomainOper( lpCurrentTask, lpTaskDomain,
; 770  :                                  lEntryType,
; 771  :                                  lpDomain->cType, pvData,
; 772  :                                  cpcContextName, lpView,
; 773  :                                  lpViewEntity, lpViewAttribute, 256 );

	push	256					; 00000100H
	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	al, BYTE PTR [edx+63]
	push	eax
	mov	ecx, DWORD PTR _lEntryType$7818[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTaskDomain$7816[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$7814[ebp]
	push	eax
	call	_fnCallDomainOper@40
	mov	WORD PTR _nRC$[ebp], ax

; 774  :          if ( nRC == zDME_NOT_HANDLED )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -10				; fffffff6H
	jne	SHORT $L7819

; 776  :             zsprintf( szWorkString, "Operation '%s' does not handle an Entry "
; 777  :                       "Type of %ld for domain '%s'", lpDomain->szDomainOper,
; 778  :                       lEntryType, lpDomain->szName );

	mov	edx, DWORD PTR _lpDomain$[ebp]
	add	edx, 6
	push	edx
	mov	eax, DWORD PTR _lEntryType$7818[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	add	ecx, 100				; 00000064H
	push	ecx
	push	OFFSET FLAT:??_C@_0EE@ELLG@Operation?5?8?$CFs?8?5does?5not?5handle?5a@ ; `string'
	lea	edx, DWORD PTR _szWorkString$7813[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 20					; 00000014H

; 779  :             MessageSend( lpView, "TZDMD101", "System Error",
; 780  :                          szWorkString, zMSGQ_DOMAIN_ERROR, 0 );

	push	0
	push	200					; 000000c8H
	lea	eax, DWORD PTR _szWorkString$7813[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0N@LGH@System?5Error?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_08MEJN@TZDMD101?$AA@	; `string'
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_MessageSend@24
$L7819:

; 783  :       else

	jmp	SHORT $L7823
$L7817:

; 785  :          zstrcpy( szWorkString, "Operation, " );

	push	OFFSET FLAT:??_C@_0M@ECFE@Operation?0?5?$AA@ ; `string'
	lea	edx, DWORD PTR _szWorkString$7813[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 786  :          zstrcat( szWorkString, lpDomain->szDomainOper );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	add	eax, 100				; 00000064H
	push	eax
	lea	ecx, DWORD PTR _szWorkString$7813[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 787  :          zstrcat( szWorkString, ", not found for Domain: " );

	push	OFFSET FLAT:??_C@_0BJ@JMFE@?0?5not?5found?5for?5Domain?3?5?$AA@ ; `string'
	lea	edx, DWORD PTR _szWorkString$7813[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 788  :          zstrcat( szWorkString, lpDomain->szName );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	add	eax, 6
	push	eax
	lea	ecx, DWORD PTR _szWorkString$7813[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 789  :          MessageSend( lpView, "TZDMD101", "System Error",
; 790  :                       szWorkString, zMSGQ_DOMAIN_ERROR, 0 );

	push	0
	push	200					; 000000c8H
	lea	edx, DWORD PTR _szWorkString$7813[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0N@LGH@System?5Error?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_08MEJN@TZDMD101?$AA@	; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_MessageSend@24

; 791  :          nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1
$L7823:

; 793  : 
; 794  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7807
$L7812:

; 796  : 
; 797  :    if ( cpcContextName == 0 || cpcContextName[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L7827
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	jne	SHORT $L7826
$L7827:

; 798  :       GetDefaultContext( &lpSrchContext, lpDomain );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpSrchContext$[ebp]
	push	ecx
	call	_GetDefaultContext@8

; 799  :    else

	jmp	SHORT $L7828
$L7826:

; 800  :       lpSrchContext = fnGetContext( lpDomain, cpcContextName );

	mov	edx, DWORD PTR _cpcContextName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	call	_fnGetContext
	add	esp, 8
	mov	DWORD PTR _lpSrchContext$[ebp], eax
$L7828:

; 801  : 
; 802  :    if ( lFlag & 2 )  // next

	mov	ecx, DWORD PTR _lFlag$[ebp]
	and	ecx, 2
	test	ecx, ecx
	je	SHORT $L7829

; 804  :       zLPCONTEXT   lpContext;
; 805  : 
; 806  :       lpTableEntry = *((LPTABLEENTRY zFAR *) pvTablePosition );

	mov	edx, DWORD PTR _pvTablePosition$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR _lpTableEntry$[ebp], eax

; 807  :       lpTableEntry = zGETPTR( lpTableEntry->hNextTableEntry );

	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$[ebp], eax

; 808  :       if ( lpTableEntry == 0 )

	cmp	DWORD PTR _lpTableEntry$[ebp], 0
	jne	SHORT $L7833

; 809  :          return( -1 );

	or	ax, -1
	jmp	$L7807
$L7833:

; 810  : 
; 811  :       // Verify that the pvTablePosition is valid (i.e.  pointing to a
; 812  :       // TableEntry struct, context names match, pointing to the same domain).
; 813  :       lpContext = zGETPTR( lpTableEntry->hContext );

	mov	eax, DWORD PTR _lpTableEntry$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpContext$7830[ebp], eax

; 814  :       if ( lpTableEntry->nTableID != iTableEntry ||
; 815  :            lpContext != lpSrchContext ||
; 816  :            zGETPTR( lpContext->hDomain ) != lpDomain )

	mov	edx, DWORD PTR _lpTableEntry$[ebp]
	movsx	eax, WORD PTR [edx]
	cmp	eax, 10031				; 0000272fH
	jne	SHORT $L7837
	mov	ecx, DWORD PTR _lpContext$7830[ebp]
	cmp	ecx, DWORD PTR _lpSrchContext$[ebp]
	jne	SHORT $L7837
	mov	edx, DWORD PTR _lpContext$7830[ebp]
	mov	eax, DWORD PTR [edx+43]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpDomain$[ebp]
	je	SHORT $L7836
$L7837:

; 818  :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7807
$L7836:

; 821  :    else

	jmp	SHORT $L7838
$L7829:

; 823  :       if ( lpSrchContext == 0 )

	cmp	DWORD PTR _lpSrchContext$[ebp], 0
	jne	SHORT $L7839

; 825  :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7807
$L7839:

; 827  : 
; 828  :       // The context for this domain has been located. Save position
; 829  :       // of the table entry (for GetNextTableEntryForAttribute)
; 830  :       // in the pvTablePosition parameter.  Let the 'external'
; 831  :       // routine return the external value for the first table entry.
; 832  :       lpTableEntry = zGETPTR( lpSrchContext->hFirstTableEntry );

	mov	ecx, DWORD PTR _lpSrchContext$[ebp]
	mov	edx, DWORD PTR [ecx+47]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$[ebp], eax
$L7838:

; 834  : 
; 835  :    // 1/5/93 jap
; 836  :    // For attributes that are marked as required (may not be null),
; 837  :    // do not return any table entry whose internal value is null.
; 838  :    if ( lFlag & 1 )  // required

	mov	eax, DWORD PTR _lFlag$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L7844
$L7843:

; 840  :       while ( lpTableEntry )

	cmp	DWORD PTR _lpTableEntry$[ebp], 0
	je	SHORT $L7844

; 842  :          if ( (lpDomain->cType == zTYPE_INTEGER &&
; 843  :                lpTableEntry->unInternal.lInteger == lNullInteger) ||
; 844  :               (lpDomain->cType == zTYPE_DECIMAL &&
; 845  :                lpTableEntry->unInternal.lInteger == lNullInteger) ||
; 846  :               (lpDomain->cType == zTYPE_STRING &&
; 847  :                lpTableEntry->unInternal.hStringValue == 0) )

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	movsx	edx, BYTE PTR [ecx+63]
	cmp	edx, 76					; 0000004cH
	jne	SHORT $L7847
	mov	eax, DWORD PTR _lpTableEntry$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	cmp	ecx, DWORD PTR _lNullInteger
	je	SHORT $L7846
$L7847:
	mov	edx, DWORD PTR _lpDomain$[ebp]
	movsx	eax, BYTE PTR [edx+63]
	cmp	eax, 77					; 0000004dH
	jne	SHORT $L7848
	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	cmp	edx, DWORD PTR _lNullInteger
	je	SHORT $L7846
$L7848:
	mov	eax, DWORD PTR _lpDomain$[ebp]
	movsx	ecx, BYTE PTR [eax+63]
	cmp	ecx, 83					; 00000053H
	jne	SHORT $L7845
	mov	edx, DWORD PTR _lpTableEntry$[ebp]
	cmp	DWORD PTR [edx+26], 0
	jne	SHORT $L7845
$L7846:

; 849  :             lpTableEntry = zGETPTR( lpTableEntry->hNextTableEntry );

	mov	eax, DWORD PTR _lpTableEntry$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$[ebp], eax

; 851  :          else

	jmp	SHORT $L7850
$L7845:

; 852  :             break;

	jmp	SHORT $L7844
$L7850:

; 853  :       }

	jmp	SHORT $L7843
$L7844:

; 855  : 
; 856  :    // Return the external value in pvData.
; 857  :    if ( lpTableEntry )

	cmp	DWORD PTR _lpTableEntry$[ebp], 0
	je	SHORT $L7854

; 859  :       pch = fnGetTextForTableEntry( lpTableEntry );

	mov	edx, DWORD PTR _lpTableEntry$[ebp]
	push	edx
	call	_fnGetTextForTableEntry
	add	esp, 4
	mov	DWORD PTR _pch$[ebp], eax

; 860  :       if ( pch )

	cmp	DWORD PTR _pch$[ebp], 0
	je	SHORT $L7852

; 861  :          zstrcpy( (zPCHAR) pvData, pch );

	mov	eax, DWORD PTR _pch$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 862  :       else

	jmp	SHORT $L7854
$L7852:

; 863  :          *((zPCHAR) pvData ) = 0;

	mov	edx, DWORD PTR _pvData$[ebp]
	mov	BYTE PTR [edx], 0
$L7854:

; 865  : 
; 866  :    // Return the table position in pvTablePosition.
; 867  :    zmemcpy( pvTablePosition, (zPVOID) &lpTableEntry, sizeof( zPVOID ) );

	push	4
	lea	eax, DWORD PTR _lpTableEntry$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvTablePosition$[ebp]
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 868  : 
; 869  :    nRC = *((LPTABLEENTRY zFAR *) pvTablePosition) ? 0 : -1 ; // -1 is end of table

	mov	edx, DWORD PTR _pvTablePosition$[ebp]
	mov	eax, DWORD PTR [edx]
	neg	eax
	sbb	eax, eax
	neg	eax
	dec	eax
	mov	WORD PTR _nRC$[ebp], ax

; 870  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7807:

; 871  : }

	mov	esp, ebp
	pop	ebp
	ret	32					; 00000020H
_fnGetTableEntryForDomain@32 ENDP
_TEXT	ENDS
PUBLIC	_Table_Handler@36
PUBLIC	??_C@_0FN@CICK@?$CItblh?$CJ?5Entry?5type?3?5?$CFd?5?5?5chType?3?5@ ; `string'
PUBLIC	??_C@_0CB@OJIO@TZDME025?5?9?5Invalid?5table?5value?3?5@ ; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
EXTRN	_SysConvertDecimalToLong@8:NEAR
EXTRN	_SysConvertDecimalToString@12:NEAR
EXTRN	_SysConvertLongToDecimal@8:NEAR
EXTRN	_fnGetIntegerFromAttribute:NEAR
EXTRN	_fnGetDecimalFromAttribute:NEAR
EXTRN	_fnGetAddrForAttribute:NEAR
EXTRN	_TraceLineS@8:NEAR
EXTRN	_TraceLine:NEAR
EXTRN	_fnValidViewEntity@16:NEAR
EXTRN	_StoreValueInRecord@20:NEAR
EXTRN	_GetValueFromRecord@24:NEAR
EXTRN	_strlen:NEAR
EXTRN	__imp__strncpy:NEAR
EXTRN	_szNullS:DWORD
EXTRN	_SendDomainError@28:NEAR
EXTRN	__imp__atol:NEAR
EXTRN	__imp___ltoa:NEAR
EXTRN	_SysAssignDecimalFromNull@4:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\A\oe\KZOEDMAA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0FN@CICK@?$CItblh?$CJ?5Entry?5type?3?5?$CFd?5?5?5chType?3?5@
_DATA	SEGMENT
??_C@_0FN@CICK@?$CItblh?$CJ?5Entry?5type?3?5?$CFd?5?5?5chType?3?5@ DB '(t'
	DB	'blh) Entry type: %d   chType: %s   Context Name: %s   Entity '
	DB	'Name: %s   Attribute Name: %s', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CB@OJIO@TZDME025?5?9?5Invalid?5table?5value?3?5@
_DATA	SEGMENT
??_C@_0CB@OJIO@TZDME025?5?9?5Invalid?5table?5value?3?5@ DB 'TZDME025 - In'
	DB	'valid table value: ', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_szIntString$8247 = -820
_lInternalValue$8248 = -804
_lIntValue$8260 = -824
_pchContext$8261 = -828
_lEntryType$ = 8
_chType$ = 12
_pvData$ = 16
_cpcContextName$ = 20
_lpView$ = 24
_lpViewEntity$ = 28
_lpViewAttribute$ = 32
_ulMaxStringLth$ = 36
_pvTablePosition$ = 40
_szWorkString$ = -340
_szWorkString2$ = -600
_lWork$ = -20
_lpInternalValue$ = -76
_lplInteger$ = -16
_lpDomain$ = -4
_lpViewEntityTemp$ = -80
_lpViewEntityCsr$ = -608
_lpTaskDomain$ = -12
_lpCurrentTask$ = -604
_dTempValue$ = -72
_lTempValue$ = -32
_lTempValue2$ = -28
_nSeverity$ = -8
_nRC$ = -24
_szAttribValue$7970 = -736
_lpContext$8001 = -740
_nLth$8027 = -744
_bNull$8033 = -748
_pchAttribute$8046 = -752
_pchAttribute$8071 = -756
_pchContextName$8086 = -760
_lZero$8104 = -764
_lFlag$8142 = -768
_c$8148 = -780
_lpSrchContext$8149 = -776
_lpTableEntry$8150 = -784
_lpAttrValue$8151 = -772
_cAttrType$8152 = -788
_uAttrLth$8153 = -792
_pvDataToStore$8188 = -800
_lpOrigTableEntry$8189 = -796
_Table_Handler@36 PROC NEAR

; 937  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 876				; 0000036cH
	push	edi

; 938  :    zCHAR             szWorkString[ 257 ];
; 939  :    zCHAR             szWorkString2[ 257 ];
; 940  :    zLONG             lWork = 0;

	mov	DWORD PTR _lWork$[ebp], 0

; 941  :    zPVOID            lpInternalValue;
; 942  :    zPLONG            lplInteger;
; 943  :    LPDOMAIN          lpDomain;
; 944  :    LPVIEWENTITY      lpViewEntityTemp;
; 945  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 946  :    LPTASKDOMAIN      lpTaskDomain;
; 947  :    LPTASK            lpCurrentTask;
; 948  :    zDECIMAL          dTempValue;
; 949  :    zLONG             lTempValue;
; 950  :    zLONG             lTempValue2;
; 951  :    zSHORT            nSeverity;
; 952  :    zSHORT            nRC = zCALL_ERROR;  // default to in error status ...

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 953  : 
; 954  :    if ( lEntryType < 1 || lEntryType > 10 )

	cmp	DWORD PTR _lEntryType$[ebp], 1
	jl	SHORT $L7894
	cmp	DWORD PTR _lEntryType$[ebp], 10		; 0000000aH
	jle	SHORT $L7893
$L7894:

; 956  :       szWorkString[ 0 ] = chType;

	mov	al, BYTE PTR _chType$[ebp]
	mov	BYTE PTR _szWorkString$[ebp], al

; 957  :       szWorkString[ 1 ] = 0;

	mov	BYTE PTR _szWorkString$[ebp+1], 0

; 958  :       TraceLine( "(tblh) Entry type: %d   chType: %s   Context Name: %s   "
; 959  :                    "Entity Name: %s   Attribute Name: %s",
; 960  :                  lEntryType, szWorkString, cpcContextName,
; 961  :                  lpViewEntity->szName, lpViewAttribute->szName );

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lEntryType$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0FN@CICK@?$CItblh?$CJ?5Entry?5type?3?5?$CFd?5?5?5chType?3?5@ ; `string'
	call	_TraceLine
	add	esp, 24					; 00000018H
$L7893:

; 963  : 
; 964  :    lpDomain = zGETPTR( lpViewAttribute->hDomain );

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	mov	ecx, DWORD PTR [eax+198]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax

; 965  :    lpCurrentTask = zGETPTR( lpView->hTask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 966  : 
; 967  :    // If the table Domain has an operation, call the Domain Operation, instead
; 968  :    // of continuing processing here.
; 969  :    if ( lpDomain->szDomainOper[ 0 ] )

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	movsx	edx, BYTE PTR [ecx+100]
	test	edx, edx
	je	$L7898

; 971  :       lpTaskDomain = fnGetTaskDomain( lpView, lpCurrentTask, lpDomain );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnGetTaskDomain
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpTaskDomain$[ebp], eax

; 972  :       if ( lpTaskDomain->pfDomainOper )

	mov	eax, DWORD PTR _lpTaskDomain$[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	$L7899

; 974  :          nRC = fnCallDomainOper( lpCurrentTask, lpTaskDomain,
; 975  :                                  lEntryType, chType, pvData,
; 976  :                                  cpcContextName, lpView,
; 977  :                                  lpViewEntity, lpViewAttribute,
; 978  :                                  ulMaxStringLth );

	mov	ecx, DWORD PTR _ulMaxStringLth$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcContextName$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvData$[ebp]
	push	eax
	mov	cl, BYTE PTR _chType$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lEntryType$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTaskDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnCallDomainOper@40
	mov	WORD PTR _nRC$[ebp], ax

; 979  :          if ( nRC == zDME_NOT_HANDLED )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -10				; fffffff6H
	jne	SHORT $L7900

; 981  :             zsprintf( szWorkString, "Operation '%s' does not handle an Entry "
; 982  :                       "Type of %ld for domain '%s'", lpDomain->szDomainOper,
; 983  :                       lEntryType, lpDomain->szName );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	add	eax, 6
	push	eax
	mov	ecx, DWORD PTR _lEntryType$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	add	edx, 100				; 00000064H
	push	edx
	push	OFFSET FLAT:??_C@_0EE@ELLG@Operation?5?8?$CFs?8?5does?5not?5handle?5a@ ; `string'
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 20					; 00000014H

; 984  :             MessageSend( lpView, "TZDMD101", "System Error",
; 985  :                          szWorkString, zMSGQ_DOMAIN_ERROR, 0 );

	push	0
	push	200					; 000000c8H
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0N@LGH@System?5Error?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_08MEJN@TZDMD101?$AA@	; `string'
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_MessageSend@24
$L7900:

; 988  :       else

	jmp	SHORT $L7901
$L7899:

; 990  :          zstrcpy( szWorkString, "Operation, " );

	push	OFFSET FLAT:??_C@_0M@ECFE@Operation?0?5?$AA@ ; `string'
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 991  :          zstrcat( szWorkString, lpDomain->szDomainOper );

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	add	ecx, 100				; 00000064H
	push	ecx
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 992  :          zstrcat( szWorkString, ", not found for Domain: " );

	push	OFFSET FLAT:??_C@_0BJ@JMFE@?0?5not?5found?5for?5Domain?3?5?$AA@ ; `string'
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 993  :          zstrcat( szWorkString, lpDomain->szName );

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	add	ecx, 6
	push	ecx
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 994  :          MessageSend( lpView, "TZDMD101", "System Error",
; 995  :                       szWorkString, zMSGQ_DOMAIN_ERROR, 0 );

	push	0
	push	200					; 000000c8H
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0N@LGH@System?5Error?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_08MEJN@TZDMD101?$AA@	; `string'
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_MessageSend@24

; 996  :          nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1
$L7901:

; 998  : 
; 999  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7877
$L7898:

; 1001 : 
; 1002 :    // Determine the function request.
; 1003 :    switch ( lEntryType )
; 1004 :    {

	mov	edx, DWORD PTR _lEntryType$[ebp]
	mov	DWORD PTR -832+[ebp], edx
	mov	eax, DWORD PTR -832+[ebp]
	sub	eax, 1
	mov	DWORD PTR -832+[ebp], eax
	cmp	DWORD PTR -832+[ebp], 9
	ja	$L8284
	mov	ecx, DWORD PTR -832+[ebp]
	jmp	DWORD PTR $L8325[ecx*4]
$L7906:

; 1005 :       case zDME_VALIDATE_LPDATA:
; 1006 :       case zDME_SET_ATTRIBUTE:
; 1007 :          // If the pvData input is null or points to a null char, skip the
; 1008 :          // conversions, just null the attribute.
; 1009 :          if ( IsDataNull( pvData, chType ) )

	mov	dl, BYTE PTR _chType$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvData$[ebp]
	push	eax
	call	_IsDataNull
	add	esp, 8
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L7907

; 1011 :             if ( lpViewAttribute->cType == zTYPE_INTEGER )

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	cmp	edx, 76					; 0000004cH
	jne	SHORT $L7908

; 1012 :                lpInternalValue = (zPVOID) &lNullInteger;

	mov	DWORD PTR _lpInternalValue$[ebp], OFFSET FLAT:_lNullInteger

; 1013 :             else

	jmp	SHORT $L7913
$L7908:

; 1015 :                if ( lpViewAttribute->cType == zTYPE_DECIMAL )

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 77					; 0000004dH
	jne	SHORT $L7911

; 1017 :                   SysAssignDecimalFromNull( &dTempValue );

	lea	edx, DWORD PTR _dTempValue$[ebp]
	push	edx
	call	_SysAssignDecimalFromNull@4

; 1018 :                   lpInternalValue = (zPVOID) &dTempValue;

	lea	eax, DWORD PTR _dTempValue$[ebp]
	mov	DWORD PTR _lpInternalValue$[ebp], eax

; 1020 :                else

	jmp	SHORT $L7913
$L7911:

; 1021 :                   lpInternalValue = (zPVOID) szNullS;

	mov	ecx, DWORD PTR _szNullS
	mov	DWORD PTR _lpInternalValue$[ebp], ecx
$L7913:

; 1023 : 
; 1024 :             if ( lEntryType == zDME_SET_ATTRIBUTE )

	cmp	DWORD PTR _lEntryType$[ebp], 1
	jne	SHORT $L7915

; 1025 :                nRC = StoreValueInRecord( lpView, lpViewEntity,
; 1026 :                                          lpViewAttribute,
; 1027 :                                          lpInternalValue, 0 );

	push	0
	mov	edx, DWORD PTR _lpInternalValue$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_StoreValueInRecord@20
	mov	WORD PTR _nRC$[ebp], ax

; 1028 :             else

	jmp	SHORT $L7916
$L7915:

; 1029 :                nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L7916:

; 1030 : 
; 1031 :             return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7877
$L7907:

; 1033 : 
; 1034 :          switch ( chType )
; 1035 :          {

	mov	al, BYTE PTR _chType$[ebp]
	mov	BYTE PTR -836+[ebp], al
	cmp	BYTE PTR -836+[ebp], 76			; 0000004cH
	jl	$L7986
	cmp	BYTE PTR -836+[ebp], 77			; 0000004dH
	jle	$L7967
	cmp	BYTE PTR -836+[ebp], 83			; 00000053H
	je	SHORT $L7921
	jmp	$L7986
$L7921:

; 1036 :             case zTYPE_STRING:
; 1037 :                switch ( lpViewAttribute->cType )
; 1038 :                {

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	mov	dl, BYTE PTR [ecx+202]
	mov	BYTE PTR -840+[ebp], dl
	cmp	BYTE PTR -840+[ebp], 76			; 0000004cH
	jl	$L7954
	cmp	BYTE PTR -840+[ebp], 77			; 0000004dH
	jle	$L7934
	cmp	BYTE PTR -840+[ebp], 83			; 00000053H
	je	SHORT $L7926
	jmp	$L7954
$L7926:

; 1039 :                   case zTYPE_STRING:
; 1040 :                      if ( cpcContextName == 0 || cpcContextName[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L7928
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L7927
$L7928:

; 1042 :                         if ( TableEntryForInternalValue( lpView, lpDomain, 0,
; 1043 :                                                          pvData ) == 0 )

	mov	edx, DWORD PTR _pvData$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_TableEntryForInternalValue@16
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L7929

; 1045 :                            lpInternalValue = pvData;

	mov	eax, DWORD PTR _pvData$[ebp]
	mov	DWORD PTR _lpInternalValue$[ebp], eax

; 1046 :                            break;

	jmp	$L7923
$L7929:

; 1048 : 
; 1049 :                         if ( lEntryType == zDME_VALIDATE_LPDATA )

	cmp	DWORD PTR _lEntryType$[ebp], 10		; 0000000aH
	jne	SHORT $L7930

; 1050 :                            nSeverity = -1;

	mov	WORD PTR _nSeverity$[ebp], -1

; 1051 :                         else

	jmp	SHORT $L7931
$L7930:

; 1052 :                            nSeverity = 0;

	mov	WORD PTR _nSeverity$[ebp], 0
$L7931:

; 1053 : 
; 1054 :                         // "TZDME025 - Invalid table value "
; 1055 :                         TraceLineS( "TZDME025 - Invalid table value: ",
; 1056 :                                     (zPCHAR) pvData );

	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CB@OJIO@TZDME025?5?9?5Invalid?5table?5value?3?5@ ; `string'
	call	_TraceLineS@8

; 1057 :                         SendDomainError( lpView, lpDomain, nSeverity, 25, 0,
; 1058 :                                          lpViewEntity->szName,
; 1059 :                                          lpViewAttribute->szName );

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	25					; 00000019H
	mov	cx, WORD PTR _nSeverity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SendDomainError@28

; 1060 : 
; 1061 :                         return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L7927:

; 1065 :                         // convert from external to internal
; 1066 :                         nRC = TableEntryExtToInt( (zPVOID) szWorkString2, lpView,
; 1067 :                                                   lpDomain, cpcContextName,
; 1068 :                                                   (zPCHAR) pvData );

	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcContextName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szWorkString2$[ebp]
	push	edx
	call	_TableEntryExtToInt@20
	mov	WORD PTR _nRC$[ebp], ax

; 1069 :                         if ( nRC == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	SHORT $L7937

; 1071 :                            lpInternalValue = (zPVOID) szWorkString2;

	lea	ecx, DWORD PTR _szWorkString2$[ebp]
	mov	DWORD PTR _lpInternalValue$[ebp], ecx

; 1072 :                            break;

	jmp	$L7923
$L7937:

; 1074 : 
; 1075 :                         if ( lEntryType == zDME_VALIDATE_LPDATA )

	cmp	DWORD PTR _lEntryType$[ebp], 10		; 0000000aH
	jne	SHORT $L7939

; 1076 :                            nSeverity = -1;

	mov	WORD PTR _nSeverity$[ebp], -1

; 1077 :                         else

	jmp	SHORT $L7940
$L7939:

; 1078 :                            nSeverity = 0;

	mov	WORD PTR _nSeverity$[ebp], 0
$L7940:

; 1079 : 
; 1080 :                         // "TZDME025 - Invalid table value "
; 1081 :                         TraceLineS( "TZDME025 - Invalid table value: ",
; 1082 :                                     (zPCHAR) pvData );

	mov	edx, DWORD PTR _pvData$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CB@OJIO@TZDME025?5?9?5Invalid?5table?5value?3?5@ ; `string'
	call	_TraceLineS@8

; 1083 :                         SendDomainError( lpView, lpDomain, nSeverity, 25, 0,
; 1084 :                                          lpViewEntity->szName,
; 1085 :                                          lpViewAttribute->szName );

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	25					; 00000019H
	mov	dx, WORD PTR _nSeverity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SendDomainError@28

; 1086 : 
; 1087 :                         return( zCALL_ERROR ); // TableEntry not found, error

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L7934:

; 1089 : 
; 1090 :                   case zTYPE_INTEGER:
; 1091 :                   case zTYPE_DECIMAL:
; 1092 :                      if ( cpcContextName == 0 || cpcContextName[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L7944
	mov	edx, DWORD PTR _cpcContextName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	$L7943
$L7944:

; 1094 :                         // The value coming in (pvData) is string.  Since the
; 1095 :                         // attribute type is integer or decimal, the table type
; 1096 :                         // is integer. (Internal table types are only stored as
; 1097 :                         // strings and integers.)
; 1098 :                         lWork = zatol( (zPCHAR) pvData );

	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	DWORD PTR _lWork$[ebp], eax

; 1099 :                         if ( TableEntryForInternalValue( lpView, lpDomain,
; 1100 :                                                          lpDomain->szName,
; 1101 :                                                          (zPVOID) &lWork ) == 0 )

	lea	edx, DWORD PTR _lWork$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	add	eax, 6
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_TableEntryForInternalValue@16
	movsx	eax, ax
	test	eax, eax
	jne	SHORT $L7947

; 1103 :                            if ( lpViewAttribute->cType == zTYPE_DECIMAL )

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	cmp	edx, 77					; 0000004dH
	jne	SHORT $L7948

; 1105 :                               SysConvertLongToDecimal( lWork, &dTempValue );

	lea	eax, DWORD PTR _dTempValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lWork$[ebp]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 1106 :                               lpInternalValue = (zPVOID) &dTempValue;

	lea	edx, DWORD PTR _dTempValue$[ebp]
	mov	DWORD PTR _lpInternalValue$[ebp], edx

; 1108 :                            else

	jmp	SHORT $L7950
$L7948:

; 1109 :                               lpInternalValue = (zPVOID) &lWork;

	lea	eax, DWORD PTR _lWork$[ebp]
	mov	DWORD PTR _lpInternalValue$[ebp], eax
$L7950:

; 1110 : 
; 1111 :                            break;

	jmp	$L7923
$L7947:

; 1113 : 
; 1114 :                         if ( lEntryType == zDME_VALIDATE_LPDATA )

	cmp	DWORD PTR _lEntryType$[ebp], 10		; 0000000aH
	jne	SHORT $L7952

; 1115 :                            nSeverity = -1;

	mov	WORD PTR _nSeverity$[ebp], -1

; 1116 :                         else

	jmp	SHORT $L7953
$L7952:

; 1117 :                            nSeverity = 0;

	mov	WORD PTR _nSeverity$[ebp], 0
$L7953:

; 1118 : 
; 1119 :                         // "TZDME025 - Invalid table value "
; 1120 :                         SendDomainError( lpView, lpDomain, nSeverity, 25, 0,
; 1121 :                                          lpViewEntity->szName,
; 1122 :                                          lpViewAttribute->szName );

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	25					; 00000019H
	mov	ax, WORD PTR _nSeverity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SendDomainError@28

; 1123 :                         return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L7943:

; 1127 :                         // convert from external to internal
; 1128 :                         nRC = TableEntryExtToInt( (zPVOID) &lWork, lpView,
; 1129 :                                                   lpDomain, cpcContextName,
; 1130 :                                                   (zPCHAR) pvData );

	mov	eax, DWORD PTR _pvData$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lWork$[ebp]
	push	ecx
	call	_TableEntryExtToInt@20
	mov	WORD PTR _nRC$[ebp], ax

; 1131 :                         if ( nRC == 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jne	SHORT $L7957

; 1133 :                            if ( lpViewAttribute->cType == zTYPE_DECIMAL )

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 77					; 0000004dH
	jne	SHORT $L7958

; 1135 :                               SysConvertLongToDecimal( lWork, &dTempValue );

	lea	edx, DWORD PTR _dTempValue$[ebp]
	push	edx
	mov	eax, DWORD PTR _lWork$[ebp]
	push	eax
	call	_SysConvertLongToDecimal@8

; 1136 :                               lpInternalValue = (zPVOID) &dTempValue;

	lea	ecx, DWORD PTR _dTempValue$[ebp]
	mov	DWORD PTR _lpInternalValue$[ebp], ecx

; 1138 :                            else

	jmp	SHORT $L7960
$L7958:

; 1139 :                               lpInternalValue = (zPVOID) &lWork;

	lea	edx, DWORD PTR _lWork$[ebp]
	mov	DWORD PTR _lpInternalValue$[ebp], edx
$L7960:

; 1140 : 
; 1141 :                            break;

	jmp	$L7923
$L7957:

; 1143 : 
; 1144 :                         if ( lEntryType == zDME_VALIDATE_LPDATA )

	cmp	DWORD PTR _lEntryType$[ebp], 10		; 0000000aH
	jne	SHORT $L7962

; 1145 :                            nSeverity = -1;

	mov	WORD PTR _nSeverity$[ebp], -1

; 1146 :                         else

	jmp	SHORT $L7963
$L7962:

; 1147 :                            nSeverity = 0;

	mov	WORD PTR _nSeverity$[ebp], 0
$L7963:

; 1148 : 
; 1149 :                         // "TZDME025 - Invalid table value "
; 1150 :                         SendDomainError( lpView, lpDomain, nSeverity, 25, 0,
; 1151 :                                          lpViewEntity->szName,
; 1152 :                                          lpViewAttribute->szName );

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	25					; 00000019H
	mov	dx, WORD PTR _nSeverity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SendDomainError@28

; 1153 : 
; 1154 :                         return( zCALL_ERROR ); // TableEntry not found, error

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L7954:

; 1156 : 
; 1157 :                default:
; 1158 :                   if ( lEntryType == zDME_VALIDATE_LPDATA )

	cmp	DWORD PTR _lEntryType$[ebp], 10		; 0000000aH
	jne	SHORT $L7965

; 1159 :                      nSeverity = -1;

	mov	WORD PTR _nSeverity$[ebp], -1

; 1160 :                   else

	jmp	SHORT $L7966
$L7965:

; 1161 :                      nSeverity = 0;

	mov	WORD PTR _nSeverity$[ebp], 0
$L7966:

; 1162 : 
; 1163 :                   // "TZDME003 - Attribute type invalid for this Domain "
; 1164 :                   SendDomainError( lpView, lpDomain, nSeverity, 3, 0,
; 1165 :                                    lpViewEntity->szName,
; 1166 :                                    lpViewAttribute->szName );

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	3
	mov	cx, WORD PTR _nSeverity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SendDomainError@28

; 1167 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L7923:

; 1169 : 
; 1170 :                break;

	jmp	$L7918
$L7967:

; 1171 : 
; 1172 :             case zTYPE_INTEGER:
; 1173 :             case zTYPE_DECIMAL:
; 1174 :                if ( lpViewAttribute->cType != zTYPE_INTEGER &&
; 1175 :                     lpViewAttribute->cType != zTYPE_DECIMAL &&
; 1176 :                     lpViewAttribute->cType != zTYPE_STRING )

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	cmp	edx, 76					; 0000004cH
	je	SHORT $L7968
	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 77					; 0000004dH
	je	SHORT $L7968
	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	movsx	eax, BYTE PTR [edx+202]
	cmp	eax, 83					; 00000053H
	je	SHORT $L7968

; 1178 :                   // "TZDME003 - Attribute type invalid for this Domain "
; 1179 :                   SendDomainError( lpView, lpDomain, 0, 3, 0,
; 1180 :                                    lpViewEntity->szName,
; 1181 :                                    lpViewAttribute->szName );

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	3
	push	0
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SendDomainError@28

; 1182 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L7968:

; 1184 : 
; 1185 :                if ( lpViewAttribute->cType == zTYPE_STRING )

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	movsx	eax, BYTE PTR [edx+202]
	cmp	eax, 83					; 00000053H
	jne	$L7969

; 1187 :                   // Allow assignment of a number to string.
; 1188 :                   // We want the same behaviour,
; 1189 :                   //  as we get assigning a number to a normal string attribute.
; 1190 :                   // As the source is a number, there cannot be any context.
; 1191 : 
; 1192 :                   zCHAR szAttribValue[ 128 ] = { 0 };

	mov	BYTE PTR _szAttribValue$7970[ebp], 0
	mov	ecx, 31					; 0000001fH
	xor	eax, eax
	lea	edi, DWORD PTR _szAttribValue$7970[ebp+1]
	rep stosd
	stosw
	stosb

; 1193 : 
; 1194 :                   if ( chType == zTYPE_INTEGER )

	movsx	ecx, BYTE PTR _chType$[ebp]
	cmp	ecx, 76					; 0000004cH
	jne	SHORT $L7971

; 1196 :                      // Convert integer coming in to a string
; 1197 :                      if ( *((zPLONG) pvData) != lNullInteger )

	mov	edx, DWORD PTR _pvData$[ebp]
	mov	eax, DWORD PTR [edx]
	cmp	eax, DWORD PTR _lNullInteger
	je	SHORT $L7973

; 1198 :                         zltoa( *((zPLONG) pvData), szAttribValue );

	push	10					; 0000000aH
	lea	ecx, DWORD PTR _szAttribValue$7970[ebp]
	push	ecx
	mov	edx, DWORD PTR _pvData$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH
$L7973:

; 1200 :                   else

	jmp	SHORT $L7977
$L7971:

; 1202 :                      // Convert decimal coming in to a string
; 1203 :                      if ( SysCompareDecimalToNull( (zDECIMAL*) pvData ) != 0 )

	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	call	_SysCompareDecimalToNull@4
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L7977

; 1204 :                         SysConvertDecimalToString( (zDECIMAL*) pvData,
; 1205 :                                                    szAttribValue, -1 );

	push	-1
	lea	eax, DWORD PTR _szAttribValue$7970[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	call	_SysConvertDecimalToString@12
$L7977:

; 1207 : 
; 1208 :                   if ( TableEntryForInternalValue( lpView, lpDomain, 0,
; 1209 :                                                    szAttribValue ) == 0 )

	lea	edx, DWORD PTR _szAttribValue$7970[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_TableEntryForInternalValue@16
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L7979

; 1211 :                      lpInternalValue = szAttribValue;

	lea	eax, DWORD PTR _szAttribValue$7970[ebp]
	mov	DWORD PTR _lpInternalValue$[ebp], eax

; 1212 :                      break;

	jmp	$L7918
$L7979:

; 1214 : 
; 1215 :                   // "TZDME025 - Invalid table value "
; 1216 :                   SendDomainError( lpView, lpDomain, 0, 25, 0,
; 1217 :                                    lpViewEntity->szName,
; 1218 :                                    lpViewAttribute->szName );

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	25					; 00000019H
	push	0
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SendDomainError@28

; 1219 : 
; 1220 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L7969:

; 1222 : 
; 1223 :                // Decimal and integer values are treated the same in table lookup.
; 1224 :                if ( lpViewAttribute->cType == zTYPE_INTEGER )

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	movsx	eax, BYTE PTR [edx+202]
	cmp	eax, 76					; 0000004cH
	jne	SHORT $L7980

; 1225 :                   lTempValue = *((zPLONG) pvData);

	mov	ecx, DWORD PTR _pvData$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lTempValue$[ebp], edx

; 1226 :                else

	jmp	SHORT $L7982
$L7980:

; 1227 :                   SysConvertDecimalToLong( (zPDECIMAL) pvData, &lTempValue );

	lea	eax, DWORD PTR _lTempValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	call	_SysConvertDecimalToLong@8
$L7982:

; 1228 : 
; 1229 :                // We will always treat the setting of a table attribute value from
; 1230 :                // an integer or decimal as setting it from an internal value,
; 1231 :                // whether or not a Context Name is passed in.
; 1232 :                if ( TableEntryForInternalValue( lpView, lpDomain,
; 1233 :                                                 lpDomain->szName,
; 1234 :                                                 (zPVOID) &lTempValue ) == 0 )

	lea	edx, DWORD PTR _lTempValue$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	add	eax, 6
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_TableEntryForInternalValue@16
	movsx	eax, ax
	test	eax, eax
	jne	SHORT $L7985

; 1236 :                   lpInternalValue = pvData;

	mov	ecx, DWORD PTR _pvData$[ebp]
	mov	DWORD PTR _lpInternalValue$[ebp], ecx

; 1237 :                   break;

	jmp	SHORT $L7918
$L7985:

; 1241 :                   // "TZDME025 - Invalid table value "
; 1242 :                   SendDomainError( lpView, lpDomain, 0, 25, 0,
; 1243 :                                    lpViewEntity->szName,
; 1244 :                                    lpViewAttribute->szName );

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	25					; 00000019H
	push	0
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SendDomainError@28

; 1245 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L7986:

; 1247 : 
; 1248 :             default:
; 1249 :                // "TZDME001 - Invalid input data type "
; 1250 :                SendDomainError( lpView, lpDomain, 0, 1, 0,
; 1251 :                                 lpViewEntity->szName,
; 1252 :                                 lpViewAttribute->szName );

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	1
	push	0
	mov	edx, DWORD PTR _lpDomain$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SendDomainError@28

; 1253 :                return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L7918:

; 1255 : 
; 1256 :          if ( lEntryType == zDME_SET_ATTRIBUTE )

	cmp	DWORD PTR _lEntryType$[ebp], 1
	jne	SHORT $L7988

; 1258 :             nRC = StoreValueInRecord( lpView, lpViewEntity,
; 1259 :                                       lpViewAttribute, lpInternalValue, 0 );

	push	0
	mov	ecx, DWORD PTR _lpInternalValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_StoreValueInRecord@20
	mov	WORD PTR _nRC$[ebp], ax

; 1261 :          else

	jmp	SHORT $L7989
$L7988:

; 1262 :             nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L7989:

; 1263 : 
; 1264 :          return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7877
$L7990:

; 1265 : 
; 1266 :       case zDME_GET_VARIABLE:
; 1267 :          // We have already validated the ViewEntity prior to invoking the
; 1268 :          // Domain function.  We are doing the call again so that we may
; 1269 :          // easily retrieve the lpViewEntityCsr.
; 1270 :          lpViewEntityTemp = fnValidViewEntity( &lpViewEntityCsr, lpView,
; 1271 :                                                lpViewEntity->szName, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntityTemp$[ebp], eax

; 1272 :          if ( chType != zTYPE_STRING )

	movsx	edx, BYTE PTR _chType$[ebp]
	cmp	edx, 83					; 00000053H
	je	$L7991

; 1274 :             switch ( chType )
; 1275 :             {

	mov	al, BYTE PTR _chType$[ebp]
	mov	BYTE PTR -844+[ebp], al
	cmp	BYTE PTR -844+[ebp], 76			; 0000004cH
	je	SHORT $L7996
	cmp	BYTE PTR -844+[ebp], 77			; 0000004dH
	je	SHORT $L7998
	cmp	BYTE PTR -844+[ebp], 80			; 00000050H
	je	SHORT $L8000
	jmp	$L8012
$L7996:

; 1276 :                case zTYPE_INTEGER:
; 1277 :                   nRC = fnGetIntegerFromAttribute( (zPLONG) pvData, lpView,
; 1278 :                                                    lpViewEntityCsr,
; 1279 :                                                    lpViewAttribute );

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	call	_fnGetIntegerFromAttribute
	add	esp, 16					; 00000010H
	mov	WORD PTR _nRC$[ebp], ax

; 1280 :                   break;

	jmp	$L7993
$L7998:

; 1281 : 
; 1282 :                case zTYPE_DECIMAL:
; 1283 :                   nRC = fnGetDecimalFromAttribute( (zPDECIMAL) pvData, lpView,
; 1284 :                                                    lpViewEntityCsr,
; 1285 :                                                    lpViewAttribute );

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pvData$[ebp]
	push	edx
	call	_fnGetDecimalFromAttribute
	add	esp, 16					; 00000010H
	mov	WORD PTR _nRC$[ebp], ax

; 1286 :                   break;

	jmp	$L7993
$L8000:

; 1291 :                      zLPCONTEXT  lpContext;
; 1292 : 
; 1293 :                      lpContext = fnGetContext( zGETPTR( lpViewAttribute->hDomain ),
; 1294 :                                                cpcContextName );

	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	mov	edx, DWORD PTR [ecx+198]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnGetContext
	add	esp, 8
	mov	DWORD PTR _lpContext$8001[ebp], eax

; 1295 :                      if ( lpContext )

	cmp	DWORD PTR _lpContext$8001[ebp], 0
	je	SHORT $L8003

; 1297 :                         if ( lpContext->hEditString &&
; 1298 :                              *((zPCHAR) zGETPTR( lpContext->hEditString )) )

	mov	eax, DWORD PTR _lpContext$8001[ebp]
	cmp	DWORD PTR [eax+59], 0
	je	SHORT $L8006
	mov	ecx, DWORD PTR _lpContext$8001[ebp]
	mov	edx, DWORD PTR [ecx+59]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	movsx	eax, BYTE PTR [eax]
	test	eax, eax
	je	SHORT $L8006

; 1300 :                            zstrcpy( (zPCHAR) pvData,
; 1301 :                                     zGETPTR( lpContext->hEditString ) );

	mov	ecx, DWORD PTR _lpContext$8001[ebp]
	mov	edx, DWORD PTR [ecx+59]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _pvData$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 1303 :                         else

	jmp	SHORT $L8009
$L8006:

; 1304 :                            *((zPCHAR) pvData) = '\x00';

	mov	ecx, DWORD PTR _pvData$[ebp]
	mov	BYTE PTR [ecx], 0
$L8009:

; 1305 : 
; 1306 :                         nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1308 :                      else

	jmp	SHORT $L8011
$L8003:

; 1310 :                         // "TZDME008 - Could not find context for Domain "
; 1311 :                         SendDomainError( lpView, lpDomain, 0, 8, 0,
; 1312 :                                          lpViewEntity->szName,
; 1313 :                                          lpViewAttribute->szName );

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	8
	push	0
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SendDomainError@28

; 1314 :                         nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L8011:

; 1317 : 
; 1318 :                   break;

	jmp	SHORT $L7993
$L8012:

; 1319 : 
; 1320 :                default:
; 1321 :                   // "TZDME001 - Invalid input data type "
; 1322 :                   SendDomainError( lpView, lpDomain, 0, 1, 0,
; 1323 :                                    lpViewEntity->szName,
; 1324 :                                    lpViewAttribute->szName );

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	1
	push	0
	mov	edx, DWORD PTR _lpDomain$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SendDomainError@28

; 1325 : 
; 1326 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L7993:

; 1328 : 
; 1329 :             return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7877
$L7991:

; 1331 : 
; 1332 :          nRC = fnGetAddrForAttribute( (zCOREMEM) &lpInternalValue, lpView,
; 1333 :                                       lpViewEntityCsr, 0, lpViewAttribute );

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpInternalValue$[ebp]
	push	ecx
	call	_fnGetAddrForAttribute
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 1334 : 
; 1335 :          switch ( nRC )
; 1336 :          {

	movsx	edx, WORD PTR _nRC$[ebp]
	mov	DWORD PTR -848+[ebp], edx
	cmp	DWORD PTR -848+[ebp], -1
	je	SHORT $L8018
	cmp	DWORD PTR -848+[ebp], 0
	je	SHORT $L8020
	jmp	SHORT $L8021
$L8018:

; 1337 :             case -1:
; 1338 :                // If the value of the attribute is a 'null' value,
; 1339 :                // set the output to null
; 1340 :                *((zPCHAR) pvData) = 0;

	mov	eax, DWORD PTR _pvData$[ebp]
	mov	BYTE PTR [eax], 0

; 1341 :                return( -1 );

	or	ax, -1
	jmp	$L7877
$L8020:

; 1342 : 
; 1343 :             case 0:
; 1344 :                break;

	jmp	SHORT $L8015
$L8021:

; 1345 : 
; 1346 :             default:
; 1347 :                // error message issued from fnGetAddrForAttribute...
; 1348 :                return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L8015:

; 1350 : 
; 1351 :          // Perform a table lookup and conversion to external string value
; 1352 :          if ( lpViewAttribute->cType == zTYPE_DECIMAL )

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	cmp	edx, 77					; 0000004dH
	jne	SHORT $L8022

; 1354 :             SysConvertDecimalToLong( (zPDECIMAL) lpInternalValue, &lTempValue );

	lea	eax, DWORD PTR _lTempValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInternalValue$[ebp]
	push	ecx
	call	_SysConvertDecimalToLong@8

; 1355 :             nRC = TableEntryIntToExt( szWorkString2, lpView,
; 1356 :                                       lpDomain,
; 1357 :                                       cpcContextName, (zPVOID) &lTempValue );

	lea	edx, DWORD PTR _lTempValue$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _szWorkString2$[ebp]
	push	eax
	call	_TableEntryIntToExt@20
	mov	WORD PTR _nRC$[ebp], ax

; 1359 :          else

	jmp	SHORT $L8025
$L8022:

; 1361 :             nRC = TableEntryIntToExt( szWorkString2, lpView,
; 1362 :                                       lpDomain,
; 1363 :                                       cpcContextName, lpInternalValue );

	mov	ecx, DWORD PTR _lpInternalValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcContextName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szWorkString2$[ebp]
	push	edx
	call	_TableEntryIntToExt@20
	mov	WORD PTR _nRC$[ebp], ax
$L8025:

; 1365 : 
; 1366 :          if ( nRC == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	SHORT $L8030

; 1368 :             zULONG nLth = zstrlen( szWorkString2 );

	lea	ecx, DWORD PTR _szWorkString2$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _nLth$8027[ebp], eax

; 1369 : 
; 1370 :             if ( nLth <= ulMaxStringLth )

	mov	edx, DWORD PTR _nLth$8027[ebp]
	cmp	edx, DWORD PTR _ulMaxStringLth$[ebp]
	ja	SHORT $L8028

; 1371 :                zstrcpy( (zPCHAR) pvData, szWorkString2 );

	lea	eax, DWORD PTR _szWorkString2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 1372 :             else

	jmp	SHORT $L8030
$L8028:

; 1373 :                zstrncpy( (zPCHAR) pvData, szWorkString2, ulMaxStringLth );

	mov	edx, DWORD PTR _ulMaxStringLth$[ebp]
	push	edx
	lea	eax, DWORD PTR _szWorkString2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH
$L8030:

; 1375 : 
; 1376 :          return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7877
$L8032:

; 1380 :          // If the pvData input is null or points to a null char, skip the
; 1381 :          // conversions, just null the attribute.
; 1382 :          zBOOL bNull = IsDataNull( pvData, chType );

	mov	dl, BYTE PTR _chType$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvData$[ebp]
	push	eax
	call	_IsDataNull
	add	esp, 8
	mov	BYTE PTR _bNull$8033[ebp], al

; 1383 : 
; 1384 :          // We have already validated the ViewEntity prior to invoking the
; 1385 :          // Domain function.  We are doing the call again so that we may
; 1386 :          // easily retrieve the lpViewEntityCsr.
; 1387 :          lpViewEntityTemp = fnValidViewEntity( &lpViewEntityCsr, lpView,
; 1388 :                                                lpViewEntity->szName, 0 );

	push	0
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntityTemp$[ebp], eax

; 1389 :          switch ( chType )
; 1390 :          {

	mov	cl, BYTE PTR _chType$[ebp]
	mov	BYTE PTR -852+[ebp], cl
	cmp	BYTE PTR -852+[ebp], 76			; 0000004cH
	jl	$L8119
	cmp	BYTE PTR -852+[ebp], 77			; 0000004dH
	jle	$L8040
	cmp	BYTE PTR -852+[ebp], 83			; 00000053H
	je	SHORT $L8038
	jmp	$L8119
$L8038:

; 1391 :             case zTYPE_STRING:
; 1392 :                switch ( lpViewAttribute->cType )
; 1393 :                {

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	mov	al, BYTE PTR [edx+202]
	mov	BYTE PTR -856+[ebp], al
	cmp	BYTE PTR -856+[ebp], 76			; 0000004cH
	jl	$L8115
	cmp	BYTE PTR -856+[ebp], 77			; 0000004dH
	jle	$L8084
	cmp	BYTE PTR -856+[ebp], 83			; 00000053H
	je	SHORT $L8043
	jmp	$L8115
$L8043:

; 1394 :                   case zTYPE_STRING:
; 1395 :                      // String to string with no context, just compare the
; 1396 :                      // attribute to the variable.
; 1397 :                      if ( cpcContextName == 0 || cpcContextName[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L8045
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	jne	$L8044
$L8045:

; 1399 :                         zPCHAR  pchAttribute;
; 1400 : 
; 1401 :                         if ( bNull )

	mov	eax, DWORD PTR _bNull$8033[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8047

; 1402 :                            pvData = (zPVOID) "";

	mov	DWORD PTR _pvData$[ebp], OFFSET FLAT:??_C@_00A@?$AA@ ; `string'
$L8047:

; 1403 : 
; 1404 :                         fnGetAddrForAttribute( (zCOREMEM) &pchAttribute,
; 1405 :                                                lpView, lpViewEntityCsr, 0,
; 1406 :                                                lpViewAttribute );

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _pchAttribute$8046[ebp]
	push	ecx
	call	_fnGetAddrForAttribute
	add	esp, 20					; 00000014H

; 1407 :                         if ( lpViewAttribute->bCaseSens )

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 6
	and	eax, 1
	test	eax, eax
	je	SHORT $L8051

; 1408 :                            nRC = zstrcmp( pchAttribute, (zPCHAR) pvData );

	mov	ecx, DWORD PTR _pchAttribute$8046[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _pvData$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L8319
	mov	edx, DWORD PTR _pvData$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchAttribute$8046[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -860+[ebp], eax
	jmp	SHORT $L8320
$L8319:
	mov	ecx, DWORD PTR _pchAttribute$8046[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _pvData$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -860+[ebp], eax
$L8320:
	mov	cx, WORD PTR -860+[ebp]
	mov	WORD PTR _nRC$[ebp], cx

; 1409 :                         else

	jmp	SHORT $L8061
$L8051:

; 1410 :                            nRC = zstrcmpi( pchAttribute, (zPCHAR) pvData );

	mov	edx, DWORD PTR _pvData$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchAttribute$8046[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax
$L8061:

; 1411 : 
; 1412 :                         if ( nRC < 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jge	SHORT $L8063

; 1413 :                            nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1

; 1414 :                         else

	jmp	SHORT $L8065
$L8063:

; 1415 :                         if ( nRC > 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jle	SHORT $L8065

; 1416 :                            nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L8065:

; 1417 : 
; 1418 :                         return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7877
$L8044:

; 1422 :                         // String to string with context, convert input
; 1423 :                         // pvData from external to internal, not found
; 1424 :                         // returns -1, else compare the attribute to the
; 1425 :                         // returned internal value.
; 1426 :                         nRC = TableEntryExtToInt( (zPVOID) szWorkString,
; 1427 :                                                   lpView, lpDomain,
; 1428 :                                                   cpcContextName,
; 1429 :                                                   (zPCHAR) pvData );

	mov	eax, DWORD PTR _pvData$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	call	_TableEntryExtToInt@20
	mov	WORD PTR _nRC$[ebp], ax

; 1430 :                         if ( nRC < 0 && bNull )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jge	SHORT $L8069
	mov	eax, DWORD PTR _bNull$8033[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8069

; 1432 :                            szWorkString[ 0 ] = 0; // null is always acceptable

	mov	BYTE PTR _szWorkString$[ebp], 0

; 1433 :                            nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L8069:

; 1435 : 
; 1436 :                         if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	$L8070

; 1438 :                            zPCHAR   pchAttribute;
; 1439 : 
; 1440 :                            fnGetAddrForAttribute( (zCOREMEM) &pchAttribute,
; 1441 :                                                   lpView, lpViewEntityCsr, 0,
; 1442 :                                                   lpViewAttribute );

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _pchAttribute$8071[ebp]
	push	edx
	call	_fnGetAddrForAttribute
	add	esp, 20					; 00000014H

; 1443 :                            if ( lpViewAttribute->bCaseSens )

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 6
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8073

; 1444 :                               nRC = zstrcmp( pchAttribute, szWorkString );

	mov	edx, DWORD PTR _pchAttribute$8071[ebp]
	movsx	eax, BYTE PTR [edx]
	movsx	ecx, BYTE PTR _szWorkString$[ebp]
	cmp	eax, ecx
	jne	SHORT $L8321
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchAttribute$8071[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -864+[ebp], eax
	jmp	SHORT $L8322
$L8321:
	mov	ecx, DWORD PTR _pchAttribute$8071[ebp]
	movsx	edx, BYTE PTR [ecx]
	movsx	eax, BYTE PTR _szWorkString$[ebp]
	sub	edx, eax
	xor	ecx, ecx
	test	edx, edx
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -864+[ebp], ecx
$L8322:
	mov	dx, WORD PTR -864+[ebp]
	mov	WORD PTR _nRC$[ebp], dx

; 1445 :                            else

	jmp	SHORT $L8080
$L8073:

; 1446 :                               nRC = zstrcmpi( pchAttribute, szWorkString );

	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pchAttribute$8071[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax
$L8080:

; 1447 : 
; 1448 :                            if ( nRC < 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jge	SHORT $L8081

; 1449 :                               nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1

; 1450 :                            else

	jmp	SHORT $L8083
$L8081:

; 1451 :                            if ( nRC > 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jle	SHORT $L8083

; 1452 :                               nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L8083:

; 1453 : 
; 1454 :                            return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7877
$L8070:

; 1458 :                            // "TZDME025 - Invalid table value "
; 1459 :                            SendDomainError( lpView, lpDomain, 0, 25, 0,
; 1460 :                                             lpViewEntity->szName,
; 1461 :                                             lpViewAttribute->szName );

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	25					; 00000019H
	push	0
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SendDomainError@28

; 1462 :                            return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L8084:

; 1477 :                         zPCHAR  pchContextName;
; 1478 : 
; 1479 :                         if ( cpcContextName == 0 || cpcContextName[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L8088
	mov	edx, DWORD PTR _cpcContextName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L8087
$L8088:

; 1480 :                            pchContextName = lpDomain->szName;

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	add	ecx, 6
	mov	DWORD PTR _pchContextName$8086[ebp], ecx

; 1481 :                         else

	jmp	SHORT $L8089
$L8087:

; 1482 :                            pchContextName = (zPCHAR) cpcContextName;

	mov	edx, DWORD PTR _cpcContextName$[ebp]
	mov	DWORD PTR _pchContextName$8086[ebp], edx
$L8089:

; 1483 : 
; 1484 :                         if ( lpViewAttribute->cType == zTYPE_DECIMAL )

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 77					; 0000004dH
	jne	SHORT $L8091

; 1486 :                            nRC = TableEntryExtToInt( (zPVOID) &dTempValue, lpView, lpDomain,
; 1487 :                                                      pchContextName, (zPCHAR) pvData );

	mov	edx, DWORD PTR _pvData$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchContextName$8086[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _dTempValue$[ebp]
	push	eax
	call	_TableEntryExtToInt@20
	mov	WORD PTR _nRC$[ebp], ax

; 1488 :                            if ( nRC < 0 && bNull )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jge	SHORT $L8094
	mov	edx, DWORD PTR _bNull$8033[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L8094

; 1489 :                               lWork = lNullInteger; // null is always acceptable

	mov	eax, DWORD PTR _lNullInteger
	mov	DWORD PTR _lWork$[ebp], eax

; 1490 :                            else

	jmp	SHORT $L8098
$L8094:

; 1491 :                            if ( *((zPLONG) &dTempValue) == lNullInteger )

	mov	ecx, DWORD PTR _dTempValue$[ebp]
	cmp	ecx, DWORD PTR _lNullInteger
	jne	SHORT $L8097

; 1492 :                               lWork = lNullInteger;

	mov	edx, DWORD PTR _lNullInteger
	mov	DWORD PTR _lWork$[ebp], edx

; 1493 :                            else

	jmp	SHORT $L8098
$L8097:

; 1494 :                               SysConvertDecimalToLong( &dTempValue, &lWork );

	lea	eax, DWORD PTR _lWork$[ebp]
	push	eax
	lea	ecx, DWORD PTR _dTempValue$[ebp]
	push	ecx
	call	_SysConvertDecimalToLong@8
$L8098:

; 1495 : 
; 1496 :                            nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1498 :                         else

	jmp	SHORT $L8102
$L8091:

; 1500 :                            nRC = TableEntryExtToInt( (zPVOID) &lWork, lpView, lpDomain,
; 1501 :                                                      pchContextName, (zPCHAR) pvData );

	mov	edx, DWORD PTR _pvData$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchContextName$8086[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lWork$[ebp]
	push	eax
	call	_TableEntryExtToInt@20
	mov	WORD PTR _nRC$[ebp], ax

; 1502 :                            if ( nRC < 0 && bNull )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jge	SHORT $L8102
	mov	edx, DWORD PTR _bNull$8033[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L8102

; 1504 :                               lWork = lNullInteger; // null is always acceptable

	mov	eax, DWORD PTR _lNullInteger
	mov	DWORD PTR _lWork$[ebp], eax

; 1505 :                               nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L8102:

; 1508 : 
; 1509 :                         if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	$L8103

; 1511 :                            zLONG lZero = 0;

	mov	DWORD PTR _lZero$8104[ebp], 0

; 1512 : 
; 1513 :                            fnGetAddrForAttribute( (zCOREMEM) &lplInteger, lpView,
; 1514 :                                                   lpViewEntityCsr, 0, lpViewAttribute );

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lplInteger$[ebp]
	push	edx
	call	_fnGetAddrForAttribute
	add	esp, 20					; 00000014H

; 1515 : 
; 1516 :                            if ( lpViewAttribute->cType == zTYPE_DECIMAL )

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 77					; 0000004dH
	jne	SHORT $L8106

; 1518 :                               if ( SysCompareDecimalToNull( (zPDECIMAL) lplInteger ) == 0 )

	mov	edx, DWORD PTR _lplInteger$[ebp]
	push	edx
	call	_SysCompareDecimalToNull@4
	movsx	eax, ax
	test	eax, eax
	jne	SHORT $L8108

; 1519 :                                  lTempValue = lNullInteger;

	mov	ecx, DWORD PTR _lNullInteger
	mov	DWORD PTR _lTempValue$[ebp], ecx

; 1520 :                               else

	jmp	SHORT $L8109
$L8108:

; 1521 :                                  SysConvertDecimalToLong( (zPDECIMAL) lplInteger,
; 1522 :                                                           &lTempValue );

	lea	edx, DWORD PTR _lTempValue$[ebp]
	push	edx
	mov	eax, DWORD PTR _lplInteger$[ebp]
	push	eax
	call	_SysConvertDecimalToLong@8
$L8109:

; 1524 :                            else

	jmp	SHORT $L8111
$L8106:

; 1526 :                               lTempValue = *lplInteger;

	mov	ecx, DWORD PTR _lplInteger$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lTempValue$[ebp], edx
$L8111:

; 1528 : 
; 1529 :                            // for compatibility reasons:
; 1530 :                            //  NULL attribute compared to 0 matches
; 1531 :                            if ( lTempValue == lWork ||
; 1532 :                                 (lTempValue == lNullInteger && lWork == 0) )

	mov	eax, DWORD PTR _lTempValue$[ebp]
	cmp	eax, DWORD PTR _lWork$[ebp]
	je	SHORT $L8113
	mov	ecx, DWORD PTR _lTempValue$[ebp]
	cmp	ecx, DWORD PTR _lNullInteger
	jne	SHORT $L8112
	cmp	DWORD PTR _lWork$[ebp], 0
	jne	SHORT $L8112
$L8113:

; 1534 :                               return( 0 );

	xor	ax, ax
	jmp	$L7877
$L8112:

; 1536 :                            else
; 1537 :                               return( lTempValue < lWork ? -1 : 1 );

	mov	edx, DWORD PTR _lTempValue$[ebp]
	xor	eax, eax
	cmp	edx, DWORD PTR _lWork$[ebp]
	setge	al
	dec	eax
	and	al, -2					; fffffffeH
	add	eax, 1
	jmp	$L7877
$L8103:

; 1541 :                            if ( nRC == -1 )

	movsx	eax, WORD PTR _nRC$[ebp]
	cmp	eax, -1
	jne	SHORT $L8116

; 1543 :                               // "TZDME025 - Invalid table value "
; 1544 :                               SendDomainError( lpView, lpDomain, 0, 25, 0,
; 1545 :                                                lpViewEntity->szName,
; 1546 :                                                lpViewAttribute->szName );

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	25					; 00000019H
	push	0
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SendDomainError@28
$L8116:

; 1548 : 
; 1549 :                            return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L8115:

; 1552 : 
; 1553 :                   default:
; 1554 :                      // "TZDME001 - Invalid input data type "
; 1555 :                      SendDomainError( lpView, lpDomain, 0, 1, 0,
; 1556 :                                       lpViewEntity->szName,
; 1557 :                                       lpViewAttribute->szName );

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	1
	push	0
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SendDomainError@28

; 1558 :                      return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L8040:

; 1560 : 
; 1561 :             case zTYPE_INTEGER:
; 1562 :             case zTYPE_DECIMAL:
; 1563 : 
; 1564 :                // When both the variable coming in and the target Domain are
; 1565 :                // integer/decimal, we will do an internal value compare and
; 1566 :                // forget the Context. In all cases we will convert the values
; 1567 :                // to integer before making the compare.
; 1568 : 
; 1569 :                if ( lpViewAttribute->cType == zTYPE_INTEGER ||
; 1570 :                     lpViewAttribute->cType == zTYPE_DECIMAL )

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 76					; 0000004cH
	je	SHORT $L8120
	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	movsx	eax, BYTE PTR [edx+202]
	cmp	eax, 77					; 0000004dH
	jne	$L8119
$L8120:

; 1572 :                   if ( chType == zTYPE_DECIMAL )

	movsx	ecx, BYTE PTR _chType$[ebp]
	cmp	ecx, 77					; 0000004dH
	jne	SHORT $L8121

; 1573 :                      SysConvertDecimalToLong( (zPDECIMAL) pvData, &lTempValue );

	lea	edx, DWORD PTR _lTempValue$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvData$[ebp]
	push	eax
	call	_SysConvertDecimalToLong@8

; 1574 :                   else

	jmp	SHORT $L8123
$L8121:

; 1575 :                      lTempValue = (zLONG) *((zPLONG) pvData);

	mov	ecx, DWORD PTR _pvData$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lTempValue$[ebp], edx
$L8123:

; 1576 : 
; 1577 :                   fnGetAddrForAttribute( (zCOREMEM) &lplInteger, lpView,
; 1578 :                                           lpViewEntityCsr, 0, lpViewAttribute );

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lplInteger$[ebp]
	push	eax
	call	_fnGetAddrForAttribute
	add	esp, 20					; 00000014H

; 1579 : 
; 1580 :                   if ( lpViewAttribute->cType == zTYPE_DECIMAL )

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	cmp	edx, 77					; 0000004dH
	jne	SHORT $L8127

; 1582 :                      if ( SysCompareDecimalToNull( (zPDECIMAL) lplInteger ) == 0 )

	mov	eax, DWORD PTR _lplInteger$[ebp]
	push	eax
	call	_SysCompareDecimalToNull@4
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L8129

; 1583 :                         lTempValue2 = 0;

	mov	DWORD PTR _lTempValue2$[ebp], 0

; 1584 :                      else

	jmp	SHORT $L8130
$L8129:

; 1586 :                         SysConvertDecimalToLong( (zPDECIMAL) lplInteger,
; 1587 :                                                  &lTempValue2 );

	lea	edx, DWORD PTR _lTempValue2$[ebp]
	push	edx
	mov	eax, DWORD PTR _lplInteger$[ebp]
	push	eax
	call	_SysConvertDecimalToLong@8
$L8130:

; 1590 :                   else

	jmp	SHORT $L8134
$L8127:

; 1592 :                      if ( *lplInteger == lNullInteger )

	mov	ecx, DWORD PTR _lplInteger$[ebp]
	mov	edx, DWORD PTR [ecx]
	cmp	edx, DWORD PTR _lNullInteger
	jne	SHORT $L8133

; 1593 :                         lTempValue2 = 0;

	mov	DWORD PTR _lTempValue2$[ebp], 0

; 1594 :                      else

	jmp	SHORT $L8134
$L8133:

; 1595 :                         lTempValue2 = (zLONG) *((zPLONG) lplInteger);

	mov	eax, DWORD PTR _lplInteger$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _lTempValue2$[ebp], ecx
$L8134:

; 1597 : 
; 1598 :                   // Now do the compare.
; 1599 :                   if ( lTempValue == lTempValue2 )

	mov	edx, DWORD PTR _lTempValue$[ebp]
	cmp	edx, DWORD PTR _lTempValue2$[ebp]
	jne	SHORT $L8137

; 1600 :                      return( 0 );

	xor	ax, ax
	jmp	$L7877
$L8137:

; 1601 :                   else
; 1602 :                      return( (lTempValue2 < lTempValue) ? -1 : 1 );

	mov	eax, DWORD PTR _lTempValue2$[ebp]
	xor	ecx, ecx
	cmp	eax, DWORD PTR _lTempValue$[ebp]
	setge	cl
	dec	ecx
	and	ecx, -2					; fffffffeH
	add	ecx, 1
	mov	ax, cx
	jmp	$L7877
$L8119:

; 1604 :                else
; 1605 :                   ; // fall into default code, for error processing
; 1606 : 
; 1607 :             default:
; 1608 :                // "TZDME001 - Invalid input data type "
; 1609 :                SendDomainError( lpView, lpDomain, 0, 1, 0,
; 1610 :                                 lpViewEntity->szName,
; 1611 :                                 lpViewAttribute->szName );

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	1
	push	0
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SendDomainError@28

; 1612 :                return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L8035:

; 1623 :          zLONG lFlag;
; 1624 : 
; 1625 :          if ( lpViewAttribute->bRequired )

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 4
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8143

; 1626 :             lFlag = 1;

	mov	DWORD PTR _lFlag$8142[ebp], 1

; 1627 :          else

	jmp	SHORT $L8144
$L8143:

; 1628 :             lFlag = 0;

	mov	DWORD PTR _lFlag$8142[ebp], 0
$L8144:

; 1629 : 
; 1630 :          if ( lEntryType == zDME_GET_NEXT_TBL_ENT_FOR_ATTR )

	cmp	DWORD PTR _lEntryType$[ebp], 5
	jne	SHORT $L8145

; 1631 :            lFlag += 2;  // asking for next

	mov	edx, DWORD PTR _lFlag$8142[ebp]
	add	edx, 2
	mov	DWORD PTR _lFlag$8142[ebp], edx
$L8145:

; 1632 : 
; 1633 :          nRC = fnGetTableEntryForDomain( lpView, lpViewEntity, lpViewAttribute,
; 1634 :                                          lpDomain, cpcContextName,
; 1635 :                                          pvData, pvTablePosition, lFlag );

	mov	eax, DWORD PTR _lFlag$8142[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvTablePosition$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pvData$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnGetTableEntryForDomain@32
	mov	WORD PTR _nRC$[ebp], ax

; 1636 :          if ( nRC == zCALL_ERROR )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8146

; 1638 :             // "TZDME008 - Could not find context for Domain "
; 1639 :             SendDomainError( lpView, lpDomain, 0, 8, 0,
; 1640 :                              lpViewEntity->szName,
; 1641 :                              lpViewAttribute->szName );

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	8
	push	0
	mov	edx, DWORD PTR _lpDomain$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SendDomainError@28
$L8146:

; 1643 : 
; 1644 :          break;

	jmp	$L7903
$L8147:

; 1650 :          zCHAR             c;
; 1651 :          zLPCONTEXT        lpSrchContext;
; 1652 :          LPTABLEENTRY      lpTableEntry;
; 1653 :          zPVOID            lpAttrValue;
; 1654 :          zCHAR             cAttrType;
; 1655 :          zULONG            uAttrLth;
; 1656 : 
; 1657 :          nRC = GetValueFromRecord( lpView, lpViewEntity, lpViewAttribute,
; 1658 :                                    (zCOREMEM) &lpAttrValue,
; 1659 :                                    &cAttrType, &uAttrLth );

	lea	ecx, DWORD PTR _uAttrLth$8153[ebp]
	push	ecx
	lea	edx, DWORD PTR _cAttrType$8152[ebp]
	push	edx
	lea	eax, DWORD PTR _lpAttrValue$8151[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_GetValueFromRecord@24
	mov	WORD PTR _nRC$[ebp], ax

; 1660 :          if ( nRC )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L8155

; 1662 :             // error message issued by lower level routine...
; 1663 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7877
$L8155:

; 1665 : 
; 1666 :          if ( lpAttrValue == 0 )

	cmp	DWORD PTR _lpAttrValue$8151[ebp], 0
	jne	SHORT $L8156

; 1668 :             // Attribute value is null, it cannot be set to prev/next value
; 1669 :             nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1

; 1670 :             break;

	jmp	$L7903
$L8156:

; 1672 : 
; 1673 :          if ( cpcContextName == 0 || cpcContextName[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L8158
	mov	edx, DWORD PTR _cpcContextName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L8157
$L8158:

; 1674 :             GetDefaultContext( &lpSrchContext, lpDomain );

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpSrchContext$8149[ebp]
	push	edx
	call	_GetDefaultContext@8

; 1675 :          else

	jmp	SHORT $L8159
$L8157:

; 1676 :             lpSrchContext = fnGetContext( lpDomain, cpcContextName );

	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	call	_fnGetContext
	add	esp, 8
	mov	DWORD PTR _lpSrchContext$8149[ebp], eax
$L8159:

; 1677 : 
; 1678 :          c = lpDomain->cType;

	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	al, BYTE PTR [edx+63]
	mov	BYTE PTR _c$8148[ebp], al

; 1679 : 
; 1680 :          if ( lpSrchContext )

	cmp	DWORD PTR _lpSrchContext$8149[ebp], 0
	je	$L8160

; 1682 :             // The context for this domain has been located. Scan the table
; 1683 :             // for the current value of the attribute.
; 1684 :             lpTableEntry = zGETPTR( lpSrchContext->hFirstTableEntry );

	mov	ecx, DWORD PTR _lpSrchContext$8149[ebp]
	mov	edx, DWORD PTR [ecx+47]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$8150[ebp], eax
$L8163:

; 1685 :             while ( lpTableEntry )

	cmp	DWORD PTR _lpTableEntry$8150[ebp], 0
	je	$L8164

; 1687 :                if ( c == zTYPE_INTEGER )

	movsx	eax, BYTE PTR _c$8148[ebp]
	cmp	eax, 76					; 0000004cH
	jne	SHORT $L8165

; 1689 :                   if ( lpTableEntry->unInternal.lInteger ==
; 1690 :                        *((zPLONG)lpAttrValue) )

	mov	ecx, DWORD PTR _lpTableEntry$8150[ebp]
	mov	edx, DWORD PTR _lpAttrValue$8151[ebp]
	mov	eax, DWORD PTR [ecx+26]
	cmp	eax, DWORD PTR [edx]
	jne	SHORT $L8167

; 1691 :                      break;

	jmp	$L8164
$L8167:

; 1693 :                else

	jmp	$L8185
$L8165:

; 1695 :                   if ( lpTableEntry->unInternal.hStringValue )

	mov	ecx, DWORD PTR _lpTableEntry$8150[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	$L8169

; 1697 :                      if ( zstrcmp( zGETPTR( lpTableEntry->
; 1698 :                                                   unInternal.hStringValue ),
; 1699 :                                    (zPCHAR) lpAttrValue ) == 0 )

	mov	edx, DWORD PTR _lpTableEntry$8150[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _lpAttrValue$8151[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L8323
	mov	ecx, DWORD PTR _lpAttrValue$8151[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTableEntry$8150[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -868+[ebp], eax
	jmp	SHORT $L8324
$L8323:
	mov	ecx, DWORD PTR _lpTableEntry$8150[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	movsx	eax, BYTE PTR [eax]
	mov	ecx, DWORD PTR _lpAttrValue$8151[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -868+[ebp], ecx
$L8324:
	cmp	DWORD PTR -868+[ebp], 0
	jne	SHORT $L8182

; 1701 :                         break;

	jmp	SHORT $L8164
$L8182:

; 1704 :                   else

	jmp	SHORT $L8185
$L8169:

; 1706 :                      if ( *((zPCHAR) lpAttrValue) == 0 )

	mov	edx, DWORD PTR _lpAttrValue$8151[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L8185

; 1707 :                         break;

	jmp	SHORT $L8164
$L8185:

; 1710 : 
; 1711 :                lpTableEntry = zGETPTR( lpTableEntry->hNextTableEntry );

	mov	ecx, DWORD PTR _lpTableEntry$8150[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$8150[ebp], eax

; 1712 :             }

	jmp	$L8163
$L8164:

; 1713 : 
; 1714 :             if ( lpTableEntry )

	cmp	DWORD PTR _lpTableEntry$8150[ebp], 0
	je	$L8187

; 1716 :                zPVOID         pvDataToStore;
; 1717 :                LPTABLEENTRY   lpOrigTableEntry;
; 1718 : 
; 1719 :                // We have found the current table entry.  Now go up or down
; 1720 :                // depending on the input operation id. Also note that we
; 1721 :                // perform wrap around processing.
; 1722 : 
; 1723 :                lpOrigTableEntry = lpTableEntry; // used to prevent looping

	mov	eax, DWORD PTR _lpTableEntry$8150[ebp]
	mov	DWORD PTR _lpOrigTableEntry$8189[ebp], eax

; 1724 : 
; 1725 :                if ( lEntryType == zDME_SET_ATTRIBUTE_VALUE_NEXT )

	cmp	DWORD PTR _lEntryType$[ebp], 6
	jne	$L8190

; 1727 :                   lpTableEntry = zGETPTR( lpTableEntry->hNextTableEntry );

	mov	ecx, DWORD PTR _lpTableEntry$8150[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$8150[ebp], eax

; 1728 :                   if ( lpTableEntry == 0 )

	cmp	DWORD PTR _lpTableEntry$8150[ebp], 0
	jne	SHORT $L8192

; 1729 :                      lpTableEntry = zGETPTR( lpSrchContext->hFirstTableEntry );

	mov	eax, DWORD PTR _lpSrchContext$8149[ebp]
	mov	ecx, DWORD PTR [eax+47]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$8150[ebp], eax
$L8192:

; 1730 : 
; 1731 :                   if ( lpViewAttribute->bRequired &&
; 1732 :                        ((c == zTYPE_INTEGER &&
; 1733 :                          lpTableEntry->unInternal.lInteger == lNullInteger) ||
; 1734 :                         (c == zTYPE_STRING &&
; 1735 :                          lpTableEntry->unInternal.hStringValue == 0)) )

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	je	$L8199
	movsx	ecx, BYTE PTR _c$8148[ebp]
	cmp	ecx, 76					; 0000004cH
	jne	SHORT $L8196
	mov	edx, DWORD PTR _lpTableEntry$8150[ebp]
	mov	eax, DWORD PTR [edx+26]
	cmp	eax, DWORD PTR _lNullInteger
	je	SHORT $L8195
$L8196:
	movsx	ecx, BYTE PTR _c$8148[ebp]
	cmp	ecx, 83					; 00000053H
	jne	$L8199
	mov	edx, DWORD PTR _lpTableEntry$8150[ebp]
	cmp	DWORD PTR [edx+26], 0
	jne	$L8199
$L8195:

; 1737 :                      while ( TRUE )

	mov	eax, 1
	test	eax, eax
	je	$L8199

; 1739 :                         if ( (c == zTYPE_INTEGER &&
; 1740 :                               lpTableEntry->unInternal.lInteger == lNullInteger) ||
; 1741 :                              (c == zTYPE_STRING &&
; 1742 :                               lpTableEntry->unInternal.hStringValue == 0) )

	movsx	ecx, BYTE PTR _c$8148[ebp]
	cmp	ecx, 76					; 0000004cH
	jne	SHORT $L8202
	mov	edx, DWORD PTR _lpTableEntry$8150[ebp]
	mov	eax, DWORD PTR [edx+26]
	cmp	eax, DWORD PTR _lNullInteger
	je	SHORT $L8201
$L8202:
	movsx	ecx, BYTE PTR _c$8148[ebp]
	cmp	ecx, 83					; 00000053H
	jne	SHORT $L8200
	mov	edx, DWORD PTR _lpTableEntry$8150[ebp]
	cmp	DWORD PTR [edx+26], 0
	jne	SHORT $L8200
$L8201:

; 1744 :                            lpTableEntry =
; 1745 :                                     zGETPTR( lpTableEntry->hNextTableEntry );

	mov	eax, DWORD PTR _lpTableEntry$8150[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$8150[ebp], eax

; 1746 :                            if ( lpTableEntry == 0 )

	cmp	DWORD PTR _lpTableEntry$8150[ebp], 0
	jne	SHORT $L8204

; 1747 :                               lpTableEntry =
; 1748 :                                   zGETPTR( lpSrchContext->hFirstTableEntry );

	mov	edx, DWORD PTR _lpSrchContext$8149[ebp]
	mov	eax, DWORD PTR [edx+47]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$8150[ebp], eax
$L8204:

; 1749 : 
; 1750 :                            if ( lpTableEntry == lpOrigTableEntry )

	mov	ecx, DWORD PTR _lpTableEntry$8150[ebp]
	cmp	ecx, DWORD PTR _lpOrigTableEntry$8189[ebp]
	jne	SHORT $L8206

; 1751 :                               return( 1 ); // indicate cannot set value

	mov	ax, 1
	jmp	$L7877
$L8206:

; 1753 :                         else

	jmp	SHORT $L8207
$L8200:

; 1754 :                            break;

	jmp	SHORT $L8199
$L8207:

; 1755 :                      }

	jmp	$L8195
$L8199:

; 1758 :                else

	jmp	$L8217
$L8190:

; 1760 :                   // ( lEntryType == zDME_SET_ATTRIBUTE_VALUE_PREV )
; 1761 :                   lpTableEntry = zGETPTR( lpTableEntry->hPrevTableEntry );

	mov	edx, DWORD PTR _lpTableEntry$8150[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$8150[ebp], eax

; 1762 :                   if ( lpTableEntry == 0 )

	cmp	DWORD PTR _lpTableEntry$8150[ebp], 0
	jne	SHORT $L8210

; 1763 :                      lpTableEntry = zGETPTR( lpSrchContext->hLastTableEntry );

	mov	ecx, DWORD PTR _lpSrchContext$8149[ebp]
	mov	edx, DWORD PTR [ecx+51]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$8150[ebp], eax
$L8210:

; 1764 : 
; 1765 :                   if ( lpViewAttribute->bRequired &&
; 1766 :                        ((c == zTYPE_INTEGER &&
; 1767 :                          lpTableEntry->unInternal.lInteger == lNullInteger) ||
; 1768 :                         (c == zTYPE_STRING &&
; 1769 :                          lpTableEntry->unInternal.hStringValue == 0)) )

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 4
	and	ecx, 1
	test	ecx, ecx
	je	$L8217
	movsx	edx, BYTE PTR _c$8148[ebp]
	cmp	edx, 76					; 0000004cH
	jne	SHORT $L8214
	mov	eax, DWORD PTR _lpTableEntry$8150[ebp]
	mov	ecx, DWORD PTR [eax+26]
	cmp	ecx, DWORD PTR _lNullInteger
	je	SHORT $L8213
$L8214:
	movsx	edx, BYTE PTR _c$8148[ebp]
	cmp	edx, 83					; 00000053H
	jne	$L8217
	mov	eax, DWORD PTR _lpTableEntry$8150[ebp]
	cmp	DWORD PTR [eax+26], 0
	jne	$L8217
$L8213:

; 1771 :                      while ( TRUE )

	mov	ecx, 1
	test	ecx, ecx
	je	$L8217

; 1773 :                         if ( (c == zTYPE_INTEGER &&
; 1774 :                               lpTableEntry->unInternal.lInteger == lNullInteger) ||
; 1775 :                              (c == zTYPE_STRING &&
; 1776 :                               lpTableEntry->unInternal.hStringValue == 0) )

	movsx	edx, BYTE PTR _c$8148[ebp]
	cmp	edx, 76					; 0000004cH
	jne	SHORT $L8220
	mov	eax, DWORD PTR _lpTableEntry$8150[ebp]
	mov	ecx, DWORD PTR [eax+26]
	cmp	ecx, DWORD PTR _lNullInteger
	je	SHORT $L8219
$L8220:
	movsx	edx, BYTE PTR _c$8148[ebp]
	cmp	edx, 83					; 00000053H
	jne	SHORT $L8218
	mov	eax, DWORD PTR _lpTableEntry$8150[ebp]
	cmp	DWORD PTR [eax+26], 0
	jne	SHORT $L8218
$L8219:

; 1778 :                            lpTableEntry =
; 1779 :                                  zGETPTR( lpTableEntry->hPrevTableEntry );

	mov	ecx, DWORD PTR _lpTableEntry$8150[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$8150[ebp], eax

; 1780 :                            if ( lpTableEntry == 0 )

	cmp	DWORD PTR _lpTableEntry$8150[ebp], 0
	jne	SHORT $L8222

; 1781 :                               lpTableEntry =
; 1782 :                                  zGETPTR( lpSrchContext->hLastTableEntry );

	mov	eax, DWORD PTR _lpSrchContext$8149[ebp]
	mov	ecx, DWORD PTR [eax+51]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$8150[ebp], eax
$L8222:

; 1783 : 
; 1784 :                            if ( lpTableEntry == lpOrigTableEntry )

	mov	edx, DWORD PTR _lpTableEntry$8150[ebp]
	cmp	edx, DWORD PTR _lpOrigTableEntry$8189[ebp]
	jne	SHORT $L8224

; 1785 :                               return( 1 ); // indicate cannot set value

	mov	ax, 1
	jmp	$L7877
$L8224:

; 1787 :                         else

	jmp	SHORT $L8225
$L8218:

; 1788 :                            break;

	jmp	SHORT $L8217
$L8225:

; 1789 :                      }

	jmp	$L8213
$L8217:

; 1792 : 
; 1793 :                if ( c == zTYPE_INTEGER )

	movsx	eax, BYTE PTR _c$8148[ebp]
	cmp	eax, 76					; 0000004cH
	jne	SHORT $L8226

; 1795 :                   pvDataToStore = (zPVOID)
; 1796 :                                   &(lpTableEntry->unInternal.lInteger);

	mov	ecx, DWORD PTR _lpTableEntry$8150[ebp]
	add	ecx, 26					; 0000001aH
	mov	DWORD PTR _pvDataToStore$8188[ebp], ecx

; 1798 :                else

	jmp	SHORT $L8232
$L8226:

; 1800 :                   if ( lpTableEntry->unInternal.hStringValue )

	mov	edx, DWORD PTR _lpTableEntry$8150[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L8229

; 1801 :                      pvDataToStore = (zPVOID)
; 1802 :                             zGETPTR( lpTableEntry->unInternal.hStringValue );

	mov	eax, DWORD PTR _lpTableEntry$8150[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _pvDataToStore$8188[ebp], eax

; 1803 :                   else

	jmp	SHORT $L8232
$L8229:

; 1804 :                      pvDataToStore = (zPVOID) szNullS;

	mov	edx, DWORD PTR _szNullS
	mov	DWORD PTR _pvDataToStore$8188[ebp], edx
$L8232:

; 1806 : 
; 1807 :                nRC = StoreValueInRecord( lpView, lpViewEntity,
; 1808 :                                          lpViewAttribute,
; 1809 :                                          pvDataToStore, 0 );

	push	0
	mov	eax, DWORD PTR _pvDataToStore$8188[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_StoreValueInRecord@20
	mov	WORD PTR _nRC$[ebp], ax

; 1811 :             else

	jmp	SHORT $L8234
$L8187:

; 1813 :                // "TZDME025 - Invalid table value "
; 1814 :                SendDomainError( lpView, lpDomain, 0, 25, 0,
; 1815 :                                 lpViewEntity->szName,
; 1816 :                                 lpViewAttribute->szName );

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	25					; 00000019H
	push	0
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SendDomainError@28

; 1817 :                nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L8234:

; 1820 :          else

	jmp	SHORT $L8235
$L8160:

; 1822 :             // "TZDME008 - Could not find context for Domain "
; 1823 :             SendDomainError( lpView, lpDomain, 0, 8, 0,
; 1824 :                              lpViewEntity->szName,
; 1825 :                              lpViewAttribute->szName );

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	8
	push	0
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SendDomainError@28

; 1826 :             nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L8235:

; 1828 : 
; 1829 :          break;

	jmp	$L7903
$L8236:

; 1831 : 
; 1832 :       case zDME_ADD_TO_ATTRIBUTE:
; 1833 :          break;

	jmp	$L7903
$L8237:

; 1834 : 
; 1835 :       case zDME_GET_COMPARE_VALUE:
; 1836 :          //  -1 - pvData invalid, that is not found in table...
; 1837 :          //   0 - pvData unchanged, okay to use as is.
; 1838 :          //   1 - pvData returned, string value
; 1839 :          //   2 - pvData returned, integer value
; 1840 :          switch ( chType )
; 1841 :          {

	mov	al, BYTE PTR _chType$[ebp]
	mov	BYTE PTR -872+[ebp], al
	cmp	BYTE PTR -872+[ebp], 76			; 0000004cH
	je	SHORT $L8242
	cmp	BYTE PTR -872+[ebp], 83			; 00000053H
	je	$L8254
	jmp	$L8281
$L8242:

; 1842 :             case zTYPE_INTEGER:
; 1843 :                // Integer type data accepted only if the attribute data
; 1844 :                // type is integer.  If not zCALL_ERROR returned.
; 1845 :                if ( lpViewAttribute->cType != zTYPE_INTEGER )

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	cmp	edx, 76					; 0000004cH
	je	SHORT $L8243

; 1846 :                   break;

	jmp	$L8239
$L8243:

; 1847 : 
; 1848 :                // If both the variable and attribute are of type integer and
; 1849 :                // no context is specified, the variable is returned as is.
; 1850 :                if ( cpcContextName == 0 || cpcContextName[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L8245
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L8244
$L8245:

; 1851 :                   nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1852 :                else

	jmp	SHORT $L8252
$L8244:

; 1854 :                // If both the variable and attribute are of type integer
; 1855 :                // and a context is specified, convert the integer to a
; 1856 :                // a string, then locate the resultant string as
; 1857 :                // as an external value for the specified context,
; 1858 :                // and return the corresponding internal value.
; 1859 :                   zCHAR szIntString[ 16 ];
; 1860 :                   zLONG lInternalValue;
; 1861 : 
; 1862 :                   // convert to string then look up using context
; 1863 :                   zltoa( *((zPLONG) pvData), szIntString );

	push	10					; 0000000aH
	lea	edx, DWORD PTR _szIntString$8247[ebp]
	push	edx
	mov	eax, DWORD PTR _pvData$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 1864 :                   nRC = TableEntryExtToInt( (zPVOID) &lInternalValue,
; 1865 :                                             lpView,
; 1866 :                                             lpDomain,
; 1867 :                                             cpcContextName,
; 1868 :                                             (zPCHAR) szIntString );

	lea	edx, DWORD PTR _szIntString$8247[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lInternalValue$8248[ebp]
	push	eax
	call	_TableEntryExtToInt@20
	mov	WORD PTR _nRC$[ebp], ax

; 1869 :                   // If TableEntryExtToInt returns a not found (-1)
; 1870 :                   // just return that along to the caller of the
; 1871 :                   // Table_Handler. (zCALL_ERROR gets passed along too.)
; 1872 :                   if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	SHORT $L8252

; 1874 :                      nRC = 2;

	mov	WORD PTR _nRC$[ebp], 2

; 1875 :                      *((zPLONG) pvData) = lInternalValue;

	mov	edx, DWORD PTR _pvData$[ebp]
	mov	eax, DWORD PTR _lInternalValue$8248[ebp]
	mov	DWORD PTR [edx], eax
$L8252:

; 1878 : 
; 1879 :                break;

	jmp	$L8239
$L8254:

; 1880 : 
; 1881 :             case zTYPE_STRING:
; 1882 :                switch ( lpViewAttribute->cType )
; 1883 :                {

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	mov	dl, BYTE PTR [ecx+202]
	mov	BYTE PTR -876+[ebp], dl
	cmp	BYTE PTR -876+[ebp], 76			; 0000004cH
	je	SHORT $L8259
	cmp	BYTE PTR -876+[ebp], 83			; 00000053H
	je	SHORT $L8270
	jmp	$L8278
$L8259:

; 1886 :                         zLONG    lIntValue;
; 1887 :                         zPCHAR   pchContext;
; 1888 : 
; 1889 :                         if ( cpcContextName == 0 || cpcContextName[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L8263
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L8262
$L8263:

; 1890 :                            pchContext = lpDomain->szName;

	mov	edx, DWORD PTR _lpDomain$[ebp]
	add	edx, 6
	mov	DWORD PTR _pchContext$8261[ebp], edx

; 1891 :                         else

	jmp	SHORT $L8264
$L8262:

; 1892 :                            pchContext = (zPCHAR) cpcContextName;

	mov	eax, DWORD PTR _cpcContextName$[ebp]
	mov	DWORD PTR _pchContext$8261[ebp], eax
$L8264:

; 1893 : 
; 1894 :                         // If the variable is of type string and the
; 1895 :                         // attribute is of type integer, locate an external
; 1896 :                         // value, within the specified context (or default
; 1897 :                         // context if non specified), that matches the
; 1898 :                         // the variable and return the corresponding internal
; 1899 :                         // table value.
; 1900 :                         nRC = TableEntryExtToInt( (zPVOID) &lIntValue, lpView,
; 1901 :                                                   lpDomain,
; 1902 :                                                   pchContext,
; 1903 :                                                   (zPCHAR) pvData );

	mov	ecx, DWORD PTR _pvData$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchContext$8261[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lIntValue$8260[ebp]
	push	edx
	call	_TableEntryExtToInt@20
	mov	WORD PTR _nRC$[ebp], ax

; 1904 :                         // If TableEntryExtToInt returns a not found (-1)
; 1905 :                         // just return that along to the caller of the
; 1906 :                         // Table_Handler. (zCALL_ERROR gets passed along too.)
; 1907 :                         if ( nRC == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	SHORT $L8268

; 1909 :                            nRC = 2;

	mov	WORD PTR _nRC$[ebp], 2

; 1910 :                            *((zPLONG) pvData) = lIntValue;

	mov	ecx, DWORD PTR _pvData$[ebp]
	mov	edx, DWORD PTR _lIntValue$8260[ebp]
	mov	DWORD PTR [ecx], edx
$L8268:

; 1913 : 
; 1914 :                      break;

	jmp	$L8256
$L8270:

; 1915 : 
; 1916 :                   case zTYPE_STRING:
; 1917 :                      // If both the variable and attribute are of type string
; 1918 :                      // and no context is specified, return value as is.
; 1919 : 
; 1920 :                      /* DGC 1999.01.21 Used to be but don't know why:
; 1921 : 
; 1922 :                      if ( cpcContextName == 0 || cpcContextName[ 0 ] == 0 ||
; 1923 :                           zstrcmp( cpcContextName, lpDomain->szName ) == 0 )
; 1924 : 
; 1925 :                      I changed it because if the domain and context are the same
; 1926 :                      we shouldn't ignore it.
; 1927 :                      */
; 1928 :                      if ( cpcContextName == 0 || cpcContextName[ 0 ] == 0 )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L8272
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L8271
$L8272:

; 1929 :                         nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1930 :                      else

	jmp	SHORT $L8276
$L8271:

; 1932 :                         // If both the variable and the attribute are of type
; 1933 :                         // string and a context different from the Domain is
; 1934 :                         // specified, locate the external table value, with
; 1935 :                         // specified context, and return the corresponding
; 1936 :                         // internal value.
; 1937 :                         nRC = TableEntryExtToInt( (zPVOID) szWorkString, lpView,
; 1938 :                                                   lpDomain,
; 1939 :                                                   cpcContextName,
; 1940 :                                                   (zPCHAR) pvData );

	mov	edx, DWORD PTR _pvData$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_TableEntryExtToInt@20
	mov	WORD PTR _nRC$[ebp], ax

; 1941 :                         // If TableEntryExtToInt returns a not found (-1)
; 1942 :                         // just return that along to the caller of the
; 1943 :                         // Table_Handler. (zCALL_ERROR gets passed along too.)
; 1944 :                         if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	SHORT $L8276

; 1946 :                            nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1

; 1947 :                            zstrcpy( (zPCHAR) pvData, szWorkString );

	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvData$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8
$L8276:

; 1950 : 
; 1951 :                      break;

	jmp	SHORT $L8256
$L8278:

; 1952 : 
; 1953 :                   default:
; 1954 :                      if ( lEntryType == zDME_VALIDATE_LPDATA )

	cmp	DWORD PTR _lEntryType$[ebp], 10		; 0000000aH
	jne	SHORT $L8279

; 1955 :                         nSeverity = -1;

	mov	WORD PTR _nSeverity$[ebp], -1

; 1956 :                      else

	jmp	SHORT $L8280
$L8279:

; 1957 :                         nSeverity = 0;

	mov	WORD PTR _nSeverity$[ebp], 0
$L8280:

; 1958 : 
; 1959 :                      // "TZDME003 - Attribute type invalid for this Domain "
; 1960 :                      SendDomainError( lpView, lpDomain, nSeverity, 3, 0,
; 1961 :                                       lpViewEntity->szName,
; 1962 :                                       lpViewAttribute->szName );

	mov	ecx, DWORD PTR _lpViewAttribute$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	3
	mov	ax, WORD PTR _nSeverity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SendDomainError@28
$L8256:

; 1965 : 
; 1966 :                break;

	jmp	SHORT $L8239
$L8281:

; 1967 : 
; 1968 :             default:
; 1969 :                if ( lEntryType == zDME_VALIDATE_LPDATA )

	cmp	DWORD PTR _lEntryType$[ebp], 10		; 0000000aH
	jne	SHORT $L8282

; 1970 :                   nSeverity = -1;

	mov	WORD PTR _nSeverity$[ebp], -1

; 1971 :                else

	jmp	SHORT $L8283
$L8282:

; 1972 :                   nSeverity = 0;

	mov	WORD PTR _nSeverity$[ebp], 0
$L8283:

; 1973 : 
; 1974 :                // "TZDME001 - Invalid input data type "
; 1975 :                SendDomainError( lpView, lpDomain, nSeverity, 1, 0,
; 1976 :                                 lpViewEntity->szName,
; 1977 :                                 lpViewAttribute->szName );

	mov	eax, DWORD PTR _lpViewAttribute$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	1
	mov	dx, WORD PTR _nSeverity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SendDomainError@28
$L8239:

; 1980 : 
; 1981 :          break;

	jmp	SHORT $L7903
$L8284:

; 1982 : 
; 1983 :       default:
; 1984 :          if ( lEntryType == zDME_VALIDATE_LPDATA )

	cmp	DWORD PTR _lEntryType$[ebp], 10		; 0000000aH
	jne	SHORT $L8285

; 1985 :             nSeverity = -1;

	mov	WORD PTR _nSeverity$[ebp], -1

; 1986 :          else

	jmp	SHORT $L8286
$L8285:

; 1987 :             nSeverity = 0;

	mov	WORD PTR _nSeverity$[ebp], 0
$L8286:

; 1988 : 
; 1989 :          // "TZDME001 - Invalid input data type "
; 1990 :          SendDomainError( lpView, lpDomain, nSeverity, 1, 0,
; 1991 :                           lpViewEntity->szName,
; 1992 :                           lpViewAttribute->szName );

	mov	edx, DWORD PTR _lpViewAttribute$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	1
	mov	cx, WORD PTR _nSeverity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SendDomainError@28

; 1993 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7877
$L7903:

; 1995 : 
; 1996 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7877:

; 1997 : }

	pop	edi
	mov	esp, ebp
	pop	ebp
	ret	36					; 00000024H
$L8325:
	DD	$L7906
	DD	$L7990
	DD	$L8032
	DD	$L8035
	DD	$L8035
	DD	$L8147
	DD	$L8147
	DD	$L8236
	DD	$L8237
	DD	$L7906
_Table_Handler@36 ENDP
_TEXT	ENDS
END
