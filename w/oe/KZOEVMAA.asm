	TITLE	C:\10C\A\oe\KZOEVMAA.C
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
;	COMDAT ??_C@_0CA@CMPL@CreateView?5?$CFs?3?50x?$CF08x?5?5?5LOD?3?5?$CFs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CA@PGCC@SfCreateSysViewFromView?3?50x?$CF08x?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0HO@KFBJ@DropNameForView?5sending?5in?5view?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0GP@OHOK@DropNameForView?5sending?5in?5view?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@GIKG@DropNameForView?5Invalid?5scope?5fo@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@EMEP@DropNameForView?5Length?5Error?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DA@BIJC@DropNameForView?5Invalid?5Subtask?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0HN@NDNE@SetNameForView?5sending?5in?5view?5f@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0GO@LMDH@SetNameForView?5sending?5in?5view?5f@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CA@CCCN@?$CIvm?$CJ?5Invalid?5subtask?5?9?9?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EC@PBDN@?$CIvm?$CJ?5Naming?5non?9application?5leve@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@GIHG@?$CIvm?$CJ?5Invalid?5view?5?9?9?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CG@GNGP@?$CIvm?$CJ?5Invalid?5scoping?5level?5?9?9?5na@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@FIDN@GetViewByName?5now?5requires?5a?5val@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08BNKB@OE?5Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0HM@CFEK@GetViewByName?5sending?5in?5view?5fo@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0GN@MDJH@GetViewByName?5sending?5in?5view?5fo@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CM@BCGA@GetViewByName?5Invalid?5scope?5for?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@GMFL@GetViewByName?5Length?5Error?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@CMP@GetViewByName?5?9?5Empty?5name?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@BOP@GetViewByName?5Invalid?5Subtask?5vi@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CG@OLKB@GetViewByName?5Invalid?5view?5for?5N@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DA@NIDI@GetViewByName?5Invalid?5Subtask?5?$CIn@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09GJLM@NOT?5FOUND?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07DBNL@SUBTASK?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04LGGC@TASK?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@LKKI@APPLICATION?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06LDDL@SYSTEM?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07CNPM@UNKNOWN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03ENCN@ANY?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0GG@DEDH@GetViewByName?5TRANSIENT?5ERROR?5?$CI0@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@GLH@DropView?5?$CFs?3?50x?$CF08x?5?5?5LOD?3?5?$CFs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DA@FJAL@SfSetApplicationTask?5for?5App?3?5?$CFs@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@GNFE@SCOPE?5UNKNOWN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0GC@BDPF@SfTransferView?5trying?5to?5transfe@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07JCAB@BombZDr?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07FGLN@?$FLDebug?$FN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@CGJB@Recursive?5view?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@DHAO@Houston?5?4?4?4?5we?5have?5a?5problem?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09DGDA@?4Subtask?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DF@PNDH@View?5about?5to?5be?5dropped?5?$CI0x?$CF08x@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05BIEA@?$CIvm?$CJ?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@JDOC@Core?5Warning?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@BDPD@MainOI?5Invalid?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@MGBG@fnDropView?5Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@MIBK@Unexpected?5Invalid?5MainOI?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@EMIG@?$CIvm?$CJ?5Name?5cleanup?5error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05CKBG@Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CM@KCDH@Root?5cursors?5don?8t?5match?4?5?5Conta@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@OEDD@QuinSoft?5Internal?5Message?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_fnCreateEntityCsrHandle@12
EXTRN	_g_pfnGetHndl:DWORD
_TEXT	SEGMENT
_lpViewEntityCsr$ = 8
_lpViewCsr$ = 12
_nIndex$ = 16
_hndl$ = -4
_fnCreateEntityCsrHandle@12 PROC NEAR

; 89   : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 90   :    zLONG hndl;
; 91   : 
; 92   :    // If lpViewEntityCsr is 0 then the resulting handle is 0 too.
; 93   :    if ( lpViewEntityCsr == 0 )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	jne	SHORT $L7535

; 94   :       return( 0 );

	xor	eax, eax
	jmp	SHORT $L7533
$L7535:

; 95   : 
; 96   :    // Get the handle for the ViewCsr pointer.
; 97   :    hndl = (zLONG) zGETHNDL( lpViewCsr );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hndl$[ebp], eax

; 98   : 
; 99   :    // Set lpViewEntityCsr to a prev/next Csr (if nIndex is 0 nothing happens).
; 100  :    lpViewEntityCsr = lpViewEntityCsr + nIndex;

	movsx	ecx, WORD PTR _nIndex$[ebp]
	imul	ecx, 30					; 0000001eH
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	add	edx, ecx
	mov	DWORD PTR _lpViewEntityCsr$[ebp], edx

; 101  : 
; 102  :    // The new handle is created by adding the difference between the 2
; 103  :    // pointers (the offset) to the ViewCsr handle.
; 104  :    hndl = hndl + ((zLONG) lpViewEntityCsr - (zLONG) lpViewCsr);

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	sub	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR _hndl$[ebp]
	add	ecx, eax
	mov	DWORD PTR _hndl$[ebp], ecx

; 105  : 
; 106  :    return( (LPVIEWENTITYCSR) hndl );

	mov	eax, DWORD PTR _hndl$[ebp]
$L7533:

; 107  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_fnCreateEntityCsrHandle@12 ENDP
_TEXT	ENDS
PUBLIC	_SetViewReadOnly@4
EXTRN	_fnOperationCall:NEAR
EXTRN	_fnOperationReturn:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -4
_SetViewReadOnly@4 PROC NEAR

; 125  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 126  :    LPTASK   lpCurrentTask;
; 127  : 
; 128  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 129  :    if ( (lpCurrentTask = fnOperationCall( iSetViewReadOnly, lpView,
; 130  :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	217					; 000000d9H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7545

; 132  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7543
$L7545:

; 134  : 
; 135  :    // If we're here, success.
; 136  :    lpView->bReadOnly = TRUE;

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	or	edx, 64					; 00000040H
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [eax+30], edx

; 137  : 
; 138  :    fnOperationReturn( iSetViewReadOnly, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	217					; 000000d9H
	call	_fnOperationReturn
	add	esp, 8

; 139  :    return( 0 );

	xor	ax, ax
$L7543:

; 140  : }

	mov	esp, ebp
	pop	ebp
	ret	4
_SetViewReadOnly@4 ENDP
_TEXT	ENDS
PUBLIC	_SetViewUpdate@4
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -4
_SetViewUpdate@4 PROC NEAR

; 157  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 158  :    LPTASK   lpCurrentTask;
; 159  : 
; 160  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 161  :    if ( (lpCurrentTask = fnOperationCall( iSetViewReadOnly, lpView,
; 162  :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	217					; 000000d9H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7550

; 164  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7548
$L7550:

; 166  : 
; 167  :    // If we're here, success
; 168  :    lpView->bReadOnly = 0;

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	and	edx, -65				; ffffffbfH
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [eax+30], edx

; 169  : 
; 170  :    fnOperationReturn( iSetViewReadOnly, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	217					; 000000d9H
	call	_fnOperationReturn
	add	esp, 8

; 171  :    return( 0 );

	xor	ax, ax
$L7548:

; 172  : }

	mov	esp, ebp
	pop	ebp
	ret	4
_SetViewUpdate@4 ENDP
_TEXT	ENDS
PUBLIC	_SetViewFlags@8
_TEXT	SEGMENT
_lpView$ = 8
_lControl$ = 12
_lpCurrentTask$ = -4
_SetViewFlags@8 PROC NEAR

; 195  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 196  :    LPTASK   lpCurrentTask;
; 197  : 
; 198  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 199  :    if ( (lpCurrentTask = fnOperationCall( iSetViewFlags, lpView,
; 200  :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	222					; 000000deH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7557

; 202  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7555
$L7557:

; 204  : 
; 205  :    if ( lControl & zVF_MESSAGEONDROP )

	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7558

; 206  :       lpView->bFlagDropView = TRUE;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	or	ah, 4
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [ecx+30], eax

; 207  :    else

	jmp	SHORT $L7559
$L7558:

; 208  :       lpView->bFlagDropView = FALSE;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	and	ah, -5					; fffffffbH
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [ecx+30], eax
$L7559:

; 209  : 
; 210  :    if ( lControl & zVF_TRACEONDROP )

	mov	edx, DWORD PTR _lControl$[ebp]
	and	edx, 2
	test	edx, edx
	je	SHORT $L7560

; 211  :       lpView->bTraceDropView = TRUE;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	or	ch, 2
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [edx+30], ecx

; 212  :    else

	jmp	SHORT $L7561
$L7560:

; 213  :       lpView->bTraceDropView = FALSE;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	and	ch, -3					; fffffffdH
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [edx+30], ecx
$L7561:

; 214  : 
; 215  :    fnOperationReturn( iSetViewFlags, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	222					; 000000deH
	call	_fnOperationReturn
	add	esp, 8

; 216  :    return( 0 );

	xor	ax, ax
$L7555:

; 217  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SetViewFlags@8 ENDP
_TEXT	ENDS
PUBLIC	_GetViewFlags@4
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -8
_lReturn$ = -4
_GetViewFlags@4 PROC NEAR

; 237  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 238  :    LPTASK      lpCurrentTask;
; 239  :    zLONG       lReturn;
; 240  : 
; 241  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 242  :    if ( (lpCurrentTask = fnOperationCall( iGetViewFlags, lpView,
; 243  :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	224					; 000000e0H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7567

; 245  :       return( zCALL_ERROR );

	mov	eax, -16				; fffffff0H
	jmp	SHORT $L7564
$L7567:

; 247  : 
; 248  :    if ( lpView->bFlagDropView )

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	SHORT $L7568

; 249  :       lReturn |= zVF_MESSAGEONDROP;

	mov	eax, DWORD PTR _lReturn$[ebp]
	or	al, 1
	mov	DWORD PTR _lReturn$[ebp], eax
$L7568:

; 250  : 
; 251  :    fnOperationReturn( iGetViewFlags, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	224					; 000000e0H
	call	_fnOperationReturn
	add	esp, 8

; 252  :    return( 0 );

	xor	eax, eax
$L7564:

; 253  : }

	mov	esp, ebp
	pop	ebp
	ret	4
_GetViewFlags@4 ENDP
_TEXT	ENDS
PUBLIC	_CreateViewFromViewForTask@12
PUBLIC	_CreateViewTrace@16
PUBLIC	??_C@_0CA@CMPL@CreateView?5?$CFs?3?50x?$CF08x?5?5?5LOD?3?5?$CFs?$AA@ ; `string'
EXTRN	_TraceLine:NEAR
EXTRN	_g_pfnGetPtr:DWORD
;	COMDAT ??_C@_0CA@CMPL@CreateView?5?$CFs?3?50x?$CF08x?5?5?5LOD?3?5?$CFs?$AA@
; File C:\10C\A\oe\KZOEVMAA.C
_DATA	SEGMENT
??_C@_0CA@CMPL@CreateView?5?$CFs?3?50x?$CF08x?5?5?5LOD?3?5?$CFs?$AA@ DB 'C'
	DB	'reateView %s: 0x%08x   LOD: %s', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_cpcMsg$ = 8
_pvReturnView$ = 12
_vSrc$ = 16
_vTask$ = 20
_lpViewOD$ = -4
_nRC$ = -8
_CreateViewTrace@16 PROC NEAR

; 267  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 268  :    LPVIEWOD lpViewOD = zGETPTR( vSrc->hViewOD );

	mov	eax, DWORD PTR _vSrc$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 269  :    zSHORT   nRC;
; 270  : 
; 271  :    nRC = CreateViewFromViewForTask( pvReturnView, vSrc, vTask );

	mov	edx, DWORD PTR _vTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _vSrc$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvReturnView$[ebp]
	push	ecx
	call	_CreateViewFromViewForTask@12
	mov	WORD PTR _nRC$[ebp], ax

; 272  :    TraceLine( "CreateView %s: 0x%08x   LOD: %s", cpcMsg, *pvReturnView, lpViewOD->szName );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _pvReturnView$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	mov	edx, DWORD PTR _cpcMsg$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CA@CMPL@CreateView?5?$CFs?3?50x?$CF08x?5?5?5LOD?3?5?$CFs?$AA@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H

; 273  :    SetViewFlags( *pvReturnView, zVF_TRACEONDROP );

	push	2
	mov	eax, DWORD PTR _pvReturnView$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_SetViewFlags@8

; 274  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 275  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_CreateViewTrace@16 ENDP
_TEXT	ENDS
PUBLIC	_CreateViewFromView@8
_TEXT	SEGMENT
_pvReturnView$ = 8
_vSrc$ = 12
_CreateViewFromView@8 PROC NEAR

; 280  : {

	push	ebp
	mov	ebp, esp

; 281  :    return( CreateViewFromViewForTask( pvReturnView, vSrc, 0 ) );

	push	0
	mov	eax, DWORD PTR _vSrc$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvReturnView$[ebp]
	push	ecx
	call	_CreateViewFromViewForTask@12

; 282  : }

	pop	ebp
	ret	8
_CreateViewFromView@8 ENDP
_TEXT	ENDS
PUBLIC	_fnDeclareView@20
PUBLIC	_fnSetViewFromView
PUBLIC	_SfTransferView@12
_TEXT	SEGMENT
_pvReturnView$ = 8
_vSrc$ = 12
_vTask$ = 16
_lpCurrentTask$ = -16
_lpTask$ = -8
_vTemp$ = -12
_nRC$ = -4
_CreateViewFromViewForTask@12 PROC NEAR

; 303  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 304  :    LPTASK      lpCurrentTask;
; 305  :    LPTASK      lpTask;
; 306  :    zVIEW       vTemp;
; 307  :    zSHORT      nRC;
; 308  : 
; 309  : #ifdef DEBUG_VIEW
; 310  :    zLONG  k;
; 311  : 
; 312  :    if ( pvReturnView == 0 || g_lHighWaterView == -1 )
; 313  :    {
; 314  :       TraceLineS( "CreateViewFromView Initializing View Usage ===============================> ", "" );
; 315  :       DropView( 0 );
; 316  :       for ( k = 0; k < zMAX_VIEW_TEST; k++ )
; 317  :          g_pvView[ k ] = 0;
; 318  : 
; 319  :       g_lHighWaterView = 0;
; 320  :       if ( pvReturnView == 0 )
; 321  :          return( 0 );
; 322  :    }
; 323  : 
; 324  :    for ( k = 0; k < zMAX_VIEW_TEST; k++ )
; 325  :    {
; 326  :       if ( g_pvView[ k ] == 0 )
; 327  :          break;
; 328  :    }
; 329  : 
; 330  : #endif
; 331  : 
; 332  :    *pvReturnView = 0;  // init in case of error

	mov	eax, DWORD PTR _pvReturnView$[ebp]
	mov	DWORD PTR [eax], 0

; 333  : 
; 334  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 335  :    if ( (lpCurrentTask = fnOperationCall( iCreateViewFromView,
; 336  :                                           vSrc, zVALID_VIEW )) == 0 )

	push	1
	mov	ecx, DWORD PTR _vSrc$[ebp]
	push	ecx
	push	200					; 000000c8H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7598

; 338  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7593
$L7598:

; 340  : 
; 341  :    lpTask = lpCurrentTask;

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	DWORD PTR _lpTask$[ebp], edx

; 342  : 
; 343  :    if ( vSrc->bApplicationView )  // dks 2005.11.29

	mov	eax, DWORD PTR _vSrc$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7599

; 344  :       ;  // nothing to do
; 345  :    else

	jmp	SHORT $L7601
$L7599:

; 346  :    if ( vTask )

	cmp	DWORD PTR _vTask$[ebp], 0
	je	SHORT $L7601

; 347  :       lpTask = zGETPTR( vTask->hTask );

	mov	edx, DWORD PTR _vTask$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$[ebp], eax
$L7601:

; 348  : 
; 349  :    if ( (nRC = fnDeclareView( &vTemp, lpTask, vSrc, 0, 0 )) != 0 )

	push	0
	push	0
	mov	ecx, DWORD PTR _vSrc$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$[ebp]
	push	edx
	lea	eax, DWORD PTR _vTemp$[ebp]
	push	eax
	call	_fnDeclareView@20
	mov	WORD PTR _nRC$[ebp], ax
	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L7603

; 351  :       fnOperationReturn( iCreateViewFromView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	200					; 000000c8H
	call	_fnOperationReturn
	add	esp, 8

; 352  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L7593
$L7603:

; 354  : 
; 355  :    if ( vSrc->bApplicationView &&
; 356  :         (nRC = SfTransferView( vTemp, vSrc, zLEVEL_APPLICATION )) != 0 )

	mov	eax, DWORD PTR _vSrc$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7604
	push	4
	mov	edx, DWORD PTR _vSrc$[ebp]
	push	edx
	mov	eax, DWORD PTR _vTemp$[ebp]
	push	eax
	call	_SfTransferView@12
	mov	WORD PTR _nRC$[ebp], ax
	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L7604

; 358  :       fnOperationReturn( iCreateViewFromView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	200					; 000000c8H
	call	_fnOperationReturn
	add	esp, 8

; 359  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L7593
$L7604:

; 361  : 
; 362  :    if ( nRC == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	SHORT $L7605

; 364  : #ifdef DEBUG_VIEW
; 365  : 
; 366  :       LPVIEWOD lpViewOD = zGETPTR( vTemp->hViewOD );
; 367  : 
; 368  :       if ( zstrcmpi( lpViewOD->szName, "TZ__PRFO" ) == 0 )
; 369  :       {
; 370  :          TraceLine( "CreateViewFromView: 0x%08x   LOD: %s",
; 371  :                     vTemp, lpViewOD->szName );
; 372  :          if ( k >= zMAX_VIEW_TEST )
; 373  :             TraceLineS( "CreateView Error: ", "Memory Test Error" );
; 374  :          else
; 375  :          {
; 376  :             if ( g_lHighWaterView < k )
; 377  :                g_lHighWaterView = k;
; 378  : 
; 379  :             g_pvView[ k ] = (zPVOID) *pvReturnView;
; 380  :          }
; 381  :       }
; 382  : #endif
; 383  : 
; 384  :       nRC = fnSetViewFromView( vTemp, vSrc );

	mov	ecx, DWORD PTR _vSrc$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vTemp$[ebp]
	push	edx
	call	_fnSetViewFromView
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax

; 385  :       *pvReturnView = vTemp;

	mov	eax, DWORD PTR _pvReturnView$[ebp]
	mov	ecx, DWORD PTR _vTemp$[ebp]
	mov	DWORD PTR [eax], ecx
$L7605:

; 387  : 
; 388  : // {
; 389  : //    LPVIEWOD lpViewOD = zGETPTR( (*pvReturnView)->hViewOD );
; 390  : //    if ( zstrcmp( lpViewOD->szName, "TZRPSRCO" ) == 0 )
; 391  : //    {
; 392  : //       TraceLine( "CreateView: 0x%08x   LOD: %s", *pvReturnView, lpViewOD->szName );
; 393  : //    }
; 394  : // }
; 395  : 
; 396  :    fnOperationReturn( iCreateViewFromView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	200					; 000000c8H
	call	_fnOperationReturn
	add	esp, 8

; 397  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7593:

; 398  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_CreateViewFromViewForTask@12 ENDP
_TEXT	ENDS
PUBLIC	_SfCreateSysViewFromView@8
PUBLIC	??_C@_0CA@PGCC@SfCreateSysViewFromView?3?50x?$CF08x?$AA@ ; `string'
;	COMDAT ??_C@_0CA@PGCC@SfCreateSysViewFromView?3?50x?$CF08x?$AA@
; File C:\10C\A\oe\KZOEVMAA.C
_DATA	SEGMENT
??_C@_0CA@PGCC@SfCreateSysViewFromView?3?50x?$CF08x?$AA@ DB 'SfCreateSysV'
	DB	'iewFromView: 0x%08x', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_pvReturnView$ = 8
_vSrc$ = 12
_lpCurrentTask$ = -8
_nRC$ = -4
_SfCreateSysViewFromView@8 PROC NEAR

; 419  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 420  :    LPTASK      lpCurrentTask;
; 421  :    zSHORT      nRC;
; 422  : 
; 423  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 424  :    if ( (lpCurrentTask = fnOperationCall( iSfCreateSysViewFromView, vSrc,
; 425  :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _vSrc$[ebp]
	push	eax
	push	220					; 000000dcH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7613

; 427  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7610
$L7613:

; 429  : 
; 430  :    // Declare the new view as a system view.
; 431  :    if ( (nRC = fnDeclareView( pvReturnView, lpCurrentTask,
; 432  :                               vSrc, 0, 1 )) != 0 )

	push	1
	push	0
	mov	ecx, DWORD PTR _vSrc$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvReturnView$[ebp]
	push	eax
	call	_fnDeclareView@20
	mov	WORD PTR _nRC$[ebp], ax
	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L7614

; 434  :       fnOperationReturn( iSfCreateSysViewFromView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	220					; 000000dcH
	call	_fnOperationReturn
	add	esp, 8

; 435  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7610
$L7614:

; 437  : 
; 438  :    if ( vSrc->bApplicationView &&
; 439  :         (nRC = SfTransferView( *pvReturnView, vSrc, zLEVEL_APPLICATION )) != 0 )

	mov	eax, DWORD PTR _vSrc$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7615
	push	4
	mov	edx, DWORD PTR _vSrc$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvReturnView$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_SfTransferView@12
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7615

; 441  :       fnOperationReturn( iSfCreateSysViewFromView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	220					; 000000dcH
	call	_fnOperationReturn
	add	esp, 8

; 442  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L7610
$L7615:

; 444  : 
; 445  :    if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	SHORT $L7616

; 447  :       nRC = fnSetViewFromView( *pvReturnView, vSrc );

	mov	edx, DWORD PTR _vSrc$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvReturnView$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_fnSetViewFromView
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax

; 448  :       TraceLine( "SfCreateSysViewFromView: 0x%08x", *pvReturnView );

	mov	edx, DWORD PTR _pvReturnView$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	push	OFFSET FLAT:??_C@_0CA@PGCC@SfCreateSysViewFromView?3?50x?$CF08x?$AA@ ; `string'
	call	_TraceLine
	add	esp, 8
$L7616:

; 450  : 
; 451  :    fnOperationReturn( iSfCreateSysViewFromView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	220					; 000000dcH
	call	_fnOperationReturn
	add	esp, 8

; 452  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7610:

; 453  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SfCreateSysViewFromView@8 ENDP
_TEXT	ENDS
EXTRN	_ActivateViewObject@12:NEAR
EXTRN	_fnAllocDataspace:NEAR
EXTRN	_AnchorBlock:DWORD
EXTRN	_fnSysLockCoreMutex@4:NEAR
EXTRN	_fnSysUnlockCoreMutex@4:NEAR
_TEXT	SEGMENT
_pvReturnView$ = 8
_lpCurrentTask$ = 12
_lpView$ = 16
_cpcViewOD_Name$ = 20
_bSystemObject$ = 24
_hCurrentTask$ = -16
_lpViewOD$ = -8
_lpNewView$ = -4
_hNewView$ = -20
_nRC$ = -12
_fnDeclareView@20 PROC NEAR

; 483  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 484  :    LPTASK   hCurrentTask = zGETHNDL( lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hCurrentTask$[ebp], eax

; 485  :    LPVIEWOD lpViewOD;
; 486  :    zVIEW    lpNewView;
; 487  :    zPVOID   hNewView;
; 488  :    zSHORT   nRC;
; 489  : 
; 490  :    lpNewView = 0;

	mov	DWORD PTR _lpNewView$[ebp], 0

; 491  :    if ( cpcViewOD_Name )

	cmp	DWORD PTR _cpcViewOD_Name$[ebp], 0
	je	SHORT $L7635

; 492  :       lpViewOD = ActivateViewObject( lpView, cpcViewOD_Name, bSystemObject );

	mov	cl, BYTE PTR _bSystemObject$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcViewOD_Name$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_ActivateViewObject@12
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 493  :    else

	jmp	SHORT $L7640
$L7635:

; 494  :    if ( lpView == (zVIEW) -1 )  // creating a dummy view

	cmp	DWORD PTR _lpView$[ebp], -1
	jne	SHORT $L7638

; 495  :       lpViewOD = (LPVIEWOD) -1;

	mov	DWORD PTR _lpViewOD$[ebp], -1

; 496  :    else

	jmp	SHORT $L7640
$L7638:

; 497  :       lpViewOD = zGETPTR( lpView->hViewOD );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax
$L7640:

; 498  : 
; 499  :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 500  :    if ( lpViewOD )

	cmp	DWORD PTR _lpViewOD$[ebp], 0
	je	$L7642

; 502  :    // if ( lpCurrentTask == zGETPTR( AnchorBlock->hMainTask ) )
; 503  :    // if ( lpViewOD != (LPVIEWOD) -1 && zstrcmp( lpViewOD->szName, "DOMAINT" ) == 0 )
; 504  :    //    nRC /= nRC;
; 505  : 
; 506  :       // Allocate a View Record.
; 507  :       hNewView = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 508  :                                    sizeof( ViewRecord ), 1, 0, iView );

	push	10021					; 00002725H
	push	0
	push	1
	push	38					; 00000026H
	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+114]
	push	ecx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hNewView$[ebp], eax

; 509  :    // if ( hNewView == (zVIEW) 0x8310e4ca )
; 510  :    //    nRC /= nRC;
; 511  : 
; 512  :       lpNewView = zGETPTR( hNewView );

	mov	edx, DWORD PTR _hNewView$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewView$[ebp], eax

; 513  :       if ( lpNewView )

	cmp	DWORD PTR _lpNewView$[ebp], 0
	je	SHORT $L7645

; 515  :       // LPAPP lpApp;
; 516  : 
; 517  :          lpNewView->hTask = hCurrentTask;

	mov	eax, DWORD PTR _lpNewView$[ebp]
	mov	ecx, DWORD PTR _hCurrentTask$[ebp]
	mov	DWORD PTR [eax+14], ecx

; 518  :          if ( lpViewOD == (LPVIEWOD) -1 )

	cmp	DWORD PTR _lpViewOD$[ebp], -1
	jne	SHORT $L7647

; 519  :             lpNewView->hViewOD = 0;

	mov	edx, DWORD PTR _lpNewView$[ebp]
	mov	DWORD PTR [edx+6], 0

; 520  :          else

	jmp	SHORT $L7648
$L7647:

; 521  :             lpNewView->hViewOD = zGETHNDL( lpViewOD );

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpNewView$[ebp]
	mov	DWORD PTR [ecx+6], eax
$L7648:

; 532  :             if ( hCurrentTask == AnchorBlock->hMainTask )

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR _hCurrentTask$[ebp]
	cmp	eax, DWORD PTR [edx+106]
	jne	SHORT $L7650

; 533  :                zLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysLockCoreMutex@4
$L7650:

; 534  : 
; 535  :             lpNewView->hNextView = lpCurrentTask->hFirstView;

	mov	ecx, DWORD PTR _lpNewView$[ebp]
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	eax, DWORD PTR [edx+106]
	mov	DWORD PTR [ecx+2], eax

; 536  :             lpCurrentTask->hFirstView = hNewView;

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	mov	edx, DWORD PTR _hNewView$[ebp]
	mov	DWORD PTR [ecx+106], edx

; 537  : 
; 538  :             if ( hCurrentTask == AnchorBlock->hMainTask )

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR _hCurrentTask$[ebp]
	cmp	ecx, DWORD PTR [eax+106]
	jne	SHORT $L7651

; 539  :                zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4
$L7651:

; 542  :       else

	jmp	SHORT $L7652
$L7645:

; 543  :          nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L7652:

; 545  :    else

	jmp	SHORT $L7653
$L7642:

; 546  :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L7653:

; 547  : 
; 548  :    // Set return view.
; 549  :    *pvReturnView = lpNewView;

	mov	edx, DWORD PTR _pvReturnView$[ebp]
	mov	eax, DWORD PTR _lpNewView$[ebp]
	mov	DWORD PTR [edx], eax

; 550  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 551  : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_fnDeclareView@20 ENDP
_TEXT	ENDS
PUBLIC	_SetViewFromView@8
EXTRN	_fnValidView:NEAR
_TEXT	SEGMENT
_vTgt$ = 8
_vSrc$ = 12
_lpCurrentTask$ = -8
_nRC$ = -4
_SetViewFromView@8 PROC NEAR

; 575  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 576  :    LPTASK      lpCurrentTask;
; 577  :    zSHORT      nRC;
; 578  : 
; 579  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 580  :    if ( (lpCurrentTask = fnOperationCall( iSetViewFromView, vSrc,
; 581  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _vSrc$[ebp]
	push	eax
	push	201					; 000000c9H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7661

; 583  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7658
$L7661:

; 585  : 
; 586  :    if ( fnValidView( lpCurrentTask, vTgt ) == 0 )

	mov	ecx, DWORD PTR _vTgt$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnValidView
	add	esp, 8
	movsx	eax, ax
	test	eax, eax
	jne	SHORT $L7662

; 588  :       fnOperationReturn( iSetViewFromView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	201					; 000000c9H
	call	_fnOperationReturn
	add	esp, 8

; 589  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7658
$L7662:

; 591  : 
; 592  :    // Call fnSetViewFromView.
; 593  :    nRC = fnSetViewFromView( vTgt, vSrc );

	mov	edx, DWORD PTR _vSrc$[ebp]
	push	edx
	mov	eax, DWORD PTR _vTgt$[ebp]
	push	eax
	call	_fnSetViewFromView
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax

; 594  : 
; 595  :    // Success, return the good news.
; 596  :    fnOperationReturn( iSetViewFromView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	201					; 000000c9H
	call	_fnOperationReturn
	add	esp, 8

; 597  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7658:

; 598  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SetViewFromView@8 ENDP
_TEXT	ENDS
PUBLIC	_fnResetView
EXTRN	_fnDropViewCsr:NEAR
EXTRN	_memcpy:NEAR
EXTRN	_fnSelectedInstanceFarbler:NEAR
EXTRN	_fnFreeDataspace:NEAR
EXTRN	_fnIssueCoreError:NEAR
_TEXT	SEGMENT
_vTgt$ = 8
_vSrc$ = 12
_lpOwningTask$ = -44
_lpSrcViewOD$ = -16
_lpTgtViewOD$ = -52
_lpSrcViewOI$ = -64
_lpTgtViewOI$ = -24
_lpTgtViewCsr$ = -8
_lpSrcViewCsr$ = -4
_lpNewViewCsr$ = -60
_lpSrcViewEntityCsr$ = -72
_lpNewViewEntityCsr$ = -20
_lpSrcViewSubobject$ = -28
_lpNewViewSubobject$ = -40
_lpPrevNewViewSubobject$ = -12
_hNewViewCsr$ = -56
_ulViewSize$ = -36
_lEntities$ = -48
_hSrcViewEntityCsr$ = -32
_hNewViewEntityCsr$ = -68
_lpTask$7691 = -76
_szName1$7693 = -84
_szName2$7694 = -80
_lpParentViewEntityCsr$7745 = -92
_hParentViewEntityCsr$7746 = -88
_nParentHierNbr$7749 = -96
_lpTempParent$7750 = -100
_hNewViewSubobject$7759 = -104
_lpSrcSelectedInstance$7797 = -108
_lEntities$7802 = -112
_fnSetViewFromView PROC NEAR

; 614  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 112				; 00000070H

; 615  :    LPTASK            lpOwningTask;
; 616  :    LPVIEWOD          lpSrcViewOD;
; 617  :    LPVIEWOD          lpTgtViewOD;
; 618  :    LPVIEWOI          lpSrcViewOI;
; 619  :    LPVIEWOI          lpTgtViewOI;
; 620  :    LPVIEWCSR         lpTgtViewCsr;
; 621  :    LPVIEWCSR         lpSrcViewCsr;
; 622  :    LPVIEWCSR         lpNewViewCsr;
; 623  :    LPVIEWENTITYCSR   lpSrcViewEntityCsr;
; 624  :    LPVIEWENTITYCSR   lpNewViewEntityCsr;
; 625  :    LPVIEWSUBOBJECT   lpSrcViewSubobject;
; 626  :    LPVIEWSUBOBJECT   lpNewViewSubobject;
; 627  :    LPVIEWSUBOBJECT   lpPrevNewViewSubobject;
; 628  :    zPVOID            hNewViewCsr;
; 629  :    zULONG            ulViewSize;
; 630  :    zLONG             lEntities;
; 631  : 
; 632  :    // We use LPVIEWENTITYCSR instead of zPVOID to declare the following
; 633  :    // handles so that we can perform pointer arithmetic on it.
; 634  :    LPVIEWENTITYCSR   hSrcViewEntityCsr;
; 635  :    LPVIEWENTITYCSR   hNewViewEntityCsr;
; 636  : 
; 637  :    // If the ViewCsr for the source and target are the same, then
; 638  :    // there is nothing to do, return a 0.
; 639  :    if ( vSrc->hViewCsr == vTgt->hViewCsr )

	mov	eax, DWORD PTR _vSrc$[ebp]
	mov	ecx, DWORD PTR _vTgt$[ebp]
	mov	edx, DWORD PTR [eax+10]
	cmp	edx, DWORD PTR [ecx+10]
	jne	SHORT $L7686

; 640  :       return( 0 );

	xor	ax, ax
	jmp	$L7667
$L7686:

; 641  : 
; 642  :    lpSrcViewOD = zGETPTR( vSrc->hViewOD );

	mov	eax, DWORD PTR _vSrc$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewOD$[ebp], eax

; 643  :    lpTgtViewOD = zGETPTR( vTgt->hViewOD );

	mov	edx, DWORD PTR _vTgt$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewOD$[ebp], eax

; 644  : 
; 645  :    // Now make sure the source view object definition and the target
; 646  :    // view object definition are the same object definition. If not,
; 647  :    // we're in deep trouble so issue an error and get out pronto.
; 648  :    if ( lpSrcViewOD == 0 || lpSrcViewOD != lpSrcViewOD )

	cmp	DWORD PTR _lpSrcViewOD$[ebp], 0
	je	SHORT $L7690
	mov	ecx, DWORD PTR _lpSrcViewOD$[ebp]
	cmp	ecx, DWORD PTR _lpSrcViewOD$[ebp]
	je	SHORT $L7689
$L7690:

; 650  :       LPTASK lpTask = zGETPTR( vTgt->hTask );

	mov	edx, DWORD PTR _vTgt$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$7691[ebp], eax

; 651  :       zPCHAR  szName1;
; 652  :       zPCHAR  szName2;
; 653  : 
; 654  :       szName1 = 0;

	mov	DWORD PTR _szName1$7693[ebp], 0

; 655  :       if ( lpTgtViewOD )

	cmp	DWORD PTR _lpTgtViewOD$[ebp], 0
	je	SHORT $L7695

; 656  :          szName1 = lpTgtViewOD->szName;

	mov	ecx, DWORD PTR _lpTgtViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	mov	DWORD PTR _szName1$7693[ebp], ecx
$L7695:

; 657  : 
; 658  :       szName2 = 0;

	mov	DWORD PTR _szName2$7694[ebp], 0

; 659  :       if ( lpSrcViewOD )

	cmp	DWORD PTR _lpSrcViewOD$[ebp], 0
	je	SHORT $L7696

; 660  :          szName2 = lpSrcViewOD->szName;

	mov	edx, DWORD PTR _lpSrcViewOD$[ebp]
	add	edx, 10					; 0000000aH
	mov	DWORD PTR _szName2$7694[ebp], edx
$L7696:

; 661  : 
; 662  :       // "KZOEE274 - Target and Source views are different View Object types"
; 663  :       fnIssueCoreError( lpTask, vSrc, 8, 274, 0, szName1, szName2 );

	mov	eax, DWORD PTR _szName2$7694[ebp]
	push	eax
	mov	ecx, DWORD PTR _szName1$7693[ebp]
	push	ecx
	push	0
	push	274					; 00000112H
	push	8
	mov	edx, DWORD PTR _vSrc$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$7691[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 664  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7667
$L7689:

; 666  : 
; 667  :    lpSrcViewCsr   = zGETPTR( vSrc->hViewCsr );

	mov	ecx, DWORD PTR _vSrc$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewCsr$[ebp], eax

; 668  :    lpSrcViewOI    = zGETPTR( lpSrcViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewOI$[ebp], eax

; 669  :    lpOwningTask   = zGETPTR( lpSrcViewOI->hTask );

	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOwningTask$[ebp], eax

; 670  :    lpTgtViewCsr   = zGETPTR( vTgt->hViewCsr );

	mov	ecx, DWORD PTR _vTgt$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewCsr$[ebp], eax

; 671  : 
; 672  :    if ( lpTgtViewCsr )

	cmp	DWORD PTR _lpTgtViewCsr$[ebp], 0
	je	SHORT $L7701

; 673  :       lpTgtViewOI = zGETPTR( lpTgtViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpTgtViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewOI$[ebp], eax

; 674  :    else

	jmp	SHORT $L7703
$L7701:

; 675  :       lpTgtViewOI = 0;

	mov	DWORD PTR _lpTgtViewOI$[ebp], 0
$L7703:

; 676  : 
; 677  :    if ( lpSrcViewOI == lpTgtViewOI )

	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	cmp	edx, DWORD PTR _lpTgtViewOI$[ebp]
	jne	$L7704

; 679  :       lpNewViewCsr = lpTgtViewCsr;

	mov	eax, DWORD PTR _lpTgtViewCsr$[ebp]
	mov	DWORD PTR _lpNewViewCsr$[ebp], eax

; 680  :       hNewViewCsr  = zGETHNDL( lpNewViewCsr );

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hNewViewCsr$[ebp], eax

; 681  :       fnResetView( vTgt, 0 );   // Reset the target View

	push	0
	mov	edx, DWORD PTR _vTgt$[ebp]
	push	edx
	call	_fnResetView
	add	esp, 8

; 682  :       lpTgtViewCsr->hHierRootEntityInstance = lpSrcViewCsr->hHierRootEntityInstance;

	mov	eax, DWORD PTR _lpTgtViewCsr$[ebp]
	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	mov	DWORD PTR [eax+22], edx

; 683  :       lpTgtViewCsr->hHierEntityInstance = lpSrcViewCsr->hHierEntityInstance;

	mov	eax, DWORD PTR _lpTgtViewCsr$[ebp]
	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	mov	DWORD PTR [eax+26], edx

; 684  :       lpTgtViewCsr->hViewParentEntityInstance = lpSrcViewCsr->hViewParentEntityInstance;

	mov	eax, DWORD PTR _lpTgtViewCsr$[ebp]
	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	mov	DWORD PTR [eax+38], edx

; 685  :       lEntities = lpTgtViewCsr->uEntities;

	mov	eax, DWORD PTR _lpTgtViewCsr$[ebp]
	xor	ecx, ecx
	mov	cx, WORD PTR [eax+34]
	mov	DWORD PTR _lEntities$[ebp], ecx

; 686  :       hSrcViewEntityCsr  = lpSrcViewCsr->hFirstOD_EntityCsr;

	mov	edx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], eax

; 687  :       lpSrcViewEntityCsr = zGETPTR( lpSrcViewCsr->hFirstOD_EntityCsr );

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 688  :       hNewViewEntityCsr  = lpNewViewCsr->hFirstOD_EntityCsr;

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], ecx

; 689  :       lpNewViewEntityCsr = zGETPTR( lpNewViewCsr->hFirstOD_EntityCsr );

	mov	edx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax

; 690  :       if ( lpSrcViewCsr->hFirstViewSubobject == 0 )

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	cmp	DWORD PTR [ecx+30], 0
	jne	SHORT $L7708
$L7710:

; 692  :          while ( lEntities )

	cmp	DWORD PTR _lEntities$[ebp], 0
	je	SHORT $L7711

; 694  :             lpNewViewEntityCsr->hEntityInstance = lpSrcViewEntityCsr->hEntityInstance;

	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+26], ecx

; 695  :          // if ( lpNewViewEntityCsr->hEntityInstance == UNSET_CSR )
; 696  :          //    SysMessageBox( 0, "fnSetViewFromView", "UNSET_CSR", -1 );  // happens too much
; 697  : 
; 698  :             hSrcViewEntityCsr++;

	mov	edx, DWORD PTR _hSrcViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], edx

; 699  :             lpSrcViewEntityCsr++;

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 700  :             hNewViewEntityCsr++;

	mov	ecx, DWORD PTR _hNewViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], ecx

; 701  :             lpNewViewEntityCsr++;

	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], edx

; 702  : 
; 703  :             lEntities--;

	mov	eax, DWORD PTR _lEntities$[ebp]
	sub	eax, 1
	mov	DWORD PTR _lEntities$[ebp], eax

; 704  :          }

	jmp	SHORT $L7710
$L7711:

; 706  :       else

	jmp	$L7720
$L7708:

; 708  :          // Set root view entity csr.
; 709  :          while ( hSrcViewEntityCsr != lpSrcViewCsr->hRootViewEntityCsr )

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR _hSrcViewEntityCsr$[ebp]
	cmp	edx, DWORD PTR [ecx+18]
	je	SHORT $L7715

; 711  :             hSrcViewEntityCsr++;

	mov	eax, DWORD PTR _hSrcViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], eax

; 712  :             lpSrcViewEntityCsr++;

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], ecx

; 713  :             hNewViewEntityCsr++;

	mov	edx, DWORD PTR _hNewViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], edx

; 714  :             lpNewViewEntityCsr++;

	mov	eax, DWORD PTR _lpNewViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax

; 715  :          }

	jmp	SHORT $L7708
$L7715:

; 716  : 
; 717  :          lpNewViewCsr->hRootViewEntityCsr = hNewViewEntityCsr;

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	edx, DWORD PTR _hNewViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+18], edx

; 718  : 
; 719  :          // Reset first cursor in case root view csr is not the first csr.
; 720  :          hSrcViewEntityCsr  = lpSrcViewCsr->hFirstOD_EntityCsr;

	mov	eax, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], ecx

; 721  :          lpSrcViewEntityCsr = zGETPTR( lpSrcViewCsr->hFirstOD_EntityCsr );

	mov	edx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 722  :          hNewViewEntityCsr  = lpNewViewCsr->hFirstOD_EntityCsr;

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], edx

; 723  :          lpNewViewEntityCsr = zGETPTR( lpNewViewCsr->hFirstOD_EntityCsr );

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax
$L7719:

; 724  : 
; 725  :          while ( lEntities )

	cmp	DWORD PTR _lEntities$[ebp], 0
	je	$L7720

; 727  :             lpNewViewEntityCsr->hEntityInstance = lpSrcViewEntityCsr->hEntityInstance;

	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+26], ecx

; 728  :          // if ( lpNewViewEntityCsr->hEntityInstance == UNSET_CSR )
; 729  :          //    SysMessageBox( 0, "fnSetViewFromView2", "UNSET_CSR", -1 );  // happens too much
; 730  : 
; 731  :             lpNewViewEntityCsr->hViewEntity = lpSrcViewEntityCsr->hViewEntity;

	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR [edx+14], ecx

; 732  :             lpNewViewEntityCsr->nLevel = lpSrcViewEntityCsr->nLevel;

	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	cx, WORD PTR [eax+22]
	mov	WORD PTR [edx+22], cx

; 733  :             if ( lpSrcViewEntityCsr->hNextHier == 0 )

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+2], 0
	jne	SHORT $L7721

; 734  :                lpNewViewEntityCsr->hNextHier = 0;

	mov	eax, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	DWORD PTR [eax+2], 0
$L7721:

; 735  : 
; 736  :             if ( lpSrcViewEntityCsr->hPrevHier == 0 )

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	cmp	DWORD PTR [ecx+6], 0
	jne	SHORT $L7722

; 737  :                lpNewViewEntityCsr->hPrevHier = 0;

	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+6], 0
$L7722:

; 738  : 
; 739  :             if ( lpSrcViewEntityCsr->hParent == 0 )

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+10], 0
	jne	SHORT $L7723

; 740  :                lpNewViewEntityCsr->hParent = 0;

	mov	ecx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+10], 0
$L7723:

; 741  : 
; 742  :             hSrcViewEntityCsr++;

	mov	edx, DWORD PTR _hSrcViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], edx

; 743  :             lpSrcViewEntityCsr++;

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 744  :             hNewViewEntityCsr++;

	mov	ecx, DWORD PTR _hNewViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], ecx

; 745  :             lpNewViewEntityCsr++;

	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], edx

; 746  : 
; 747  :             lEntities--;

	mov	eax, DWORD PTR _lEntities$[ebp]
	sub	eax, 1
	mov	DWORD PTR _lEntities$[ebp], eax

; 748  :          }

	jmp	$L7719
$L7720:

; 751  :    else

	jmp	$L7742
$L7704:

; 753  :       // If the source and target ViewOI are not equal, we need to allocate
; 754  :       // a new ViewCsr and ViewEntityCsrs so we can drop the previous
; 755  :       // ViewCsr and appropriate cleanup will take place on the ViewOI
; 756  :       // previously referenced by the SrcView.
; 757  :       // Allocate space for View.
; 758  :       lEntities = lpSrcViewCsr->uEntities;

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	xor	edx, edx
	mov	dx, WORD PTR [ecx+34]
	mov	DWORD PTR _lEntities$[ebp], edx

; 759  :       ulViewSize = sizeof( ViewCsrRecord ) + (lEntities * sizeof( ViewEntityCsrRecord ));

	mov	eax, DWORD PTR _lEntities$[ebp]
	imul	eax, 30					; 0000001eH
	add	eax, 46					; 0000002eH
	mov	DWORD PTR _ulViewSize$[ebp], eax

; 760  : 
; 761  :       // Create a ViewOI Record.
; 762  :       hNewViewCsr = fnAllocDataspace( lpOwningTask->hFirstDataHeader,
; 763  :                                       ulViewSize, 0, 0, iViewCsr );

	push	10019					; 00002723H
	push	0
	push	0
	mov	ecx, DWORD PTR _ulViewSize$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpOwningTask$[ebp]
	mov	eax, DWORD PTR [edx+94]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hNewViewCsr$[ebp], eax

; 764  :       lpNewViewCsr = zGETPTR( hNewViewCsr );

	mov	ecx, DWORD PTR _hNewViewCsr$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewCsr$[ebp], eax

; 765  :       if ( lpNewViewCsr == 0 )

	cmp	DWORD PTR _lpNewViewCsr$[ebp], 0
	jne	SHORT $L7728

; 766  :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7667
$L7728:

; 767  : 
; 768  :       // Copy the information from the old view to the new view.
; 769  :       zmemcpy( lpNewViewCsr, lpSrcViewCsr, ulViewSize );

	mov	edx, DWORD PTR _ulViewSize$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 770  : 
; 771  :       // Initialize ViewEntityCsr records.
; 772  :       // Now go through and set the entity pointers.
; 773  :       hSrcViewEntityCsr  = lpSrcViewCsr->hFirstOD_EntityCsr;

	mov	edx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], eax

; 774  :       lpSrcViewEntityCsr = zGETPTR( lpSrcViewCsr->hFirstOD_EntityCsr );

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 775  :       hNewViewEntityCsr  = (zPVOID) ((zLONG) hNewViewCsr + sizeof( ViewCsrRecord ));

	mov	eax, DWORD PTR _hNewViewCsr$[ebp]
	add	eax, 46					; 0000002eH
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], eax

; 776  :       lpNewViewEntityCsr = (LPVIEWENTITYCSR) zGETPTR( hNewViewEntityCsr );

	mov	ecx, DWORD PTR _hNewViewEntityCsr$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax

; 777  :       lpNewViewCsr->hFirstOD_EntityCsr = hNewViewEntityCsr;

	mov	edx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	eax, DWORD PTR _hNewViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+14], eax
$L7736:

; 778  : 
; 779  :       // Set root view entity csr.
; 780  :       while ( hSrcViewEntityCsr != lpSrcViewCsr->hRootViewEntityCsr )

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR _hSrcViewEntityCsr$[ebp]
	cmp	edx, DWORD PTR [ecx+18]
	je	SHORT $L7737

; 782  :          hSrcViewEntityCsr++;

	mov	eax, DWORD PTR _hSrcViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], eax

; 783  :          lpSrcViewEntityCsr++;

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], ecx

; 784  :          hNewViewEntityCsr++;

	mov	edx, DWORD PTR _hNewViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], edx

; 785  :          lpNewViewEntityCsr++;

	mov	eax, DWORD PTR _lpNewViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax

; 786  :       }

	jmp	SHORT $L7736
$L7737:

; 787  : 
; 788  :       lpNewViewCsr->hRootViewEntityCsr  = hNewViewEntityCsr;

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	edx, DWORD PTR _hNewViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+18], edx

; 789  :       lpNewViewCsr->hHierRootEntityInstance = 0;

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	DWORD PTR [eax+22], 0

; 790  :       lpNewViewCsr->hHierEntityInstance = 0;

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	DWORD PTR [ecx+26], 0

; 791  :       lpNewViewCsr->hFirstSelectedInstance = 0;

	mov	edx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	DWORD PTR [edx+42], 0

; 792  : 
; 793  :       // Reset first cursor in case root view csr is not the first csr.
; 794  :       hSrcViewEntityCsr  = lpSrcViewCsr->hFirstOD_EntityCsr;

	mov	eax, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], ecx

; 795  :       lpSrcViewEntityCsr = zGETPTR( lpSrcViewCsr->hFirstOD_EntityCsr );

	mov	edx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 796  :       hNewViewEntityCsr  = lpNewViewCsr->hFirstOD_EntityCsr;

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], edx

; 797  :       lpNewViewEntityCsr = zGETPTR( lpNewViewCsr->hFirstOD_EntityCsr );

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax
$L7741:

; 798  : 
; 799  :       // Note: we use lEntities when initializing the ViewEntityCsr records
; 800  :       // because hierarchical pointers may have been zeroed by a call.
; 801  :       // to SetViewToSubobject.
; 802  :       while ( lEntities )

	cmp	DWORD PTR _lEntities$[ebp], 0
	je	$L7742

; 804  :          lpNewViewEntityCsr->hViewCsr = hNewViewCsr;

	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _hNewViewCsr$[ebp]
	mov	DWORD PTR [edx+18], eax

; 805  : 
; 806  :          if ( lpSrcViewEntityCsr->hNextHier )

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	cmp	DWORD PTR [ecx+2], 0
	je	SHORT $L7743

; 807  :             lpNewViewEntityCsr->hNextHier = hNewViewEntityCsr + 1;

	mov	edx, DWORD PTR _hNewViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	eax, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	DWORD PTR [eax+2], edx
$L7743:

; 808  : 
; 809  :          // If it's not the first ViewEntityCsr in the chain.
; 810  :          if ( hSrcViewEntityCsr != lpSrcViewCsr->hFirstOD_EntityCsr )

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR _hSrcViewEntityCsr$[ebp]
	cmp	edx, DWORD PTR [ecx+14]
	je	SHORT $L7748

; 812  :             LPVIEWENTITYCSR lpParentViewEntityCsr;
; 813  :             LPVIEWENTITYCSR hParentViewEntityCsr;
; 814  : 
; 815  :             // When establishing a parent cursor in the new view, we use the
; 816  :             // hierarchical number from the previous view instead of levels
; 817  :             // because levels may have been mucked with by calls to
; 818  :             // SetViewToSubobject which can cause erroneous parent setting.
; 819  :             if ( lpSrcViewEntityCsr->hPrevHier )

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+6], 0
	je	SHORT $L7747

; 820  :                lpNewViewEntityCsr->hPrevHier = hNewViewEntityCsr - 1;

	mov	ecx, DWORD PTR _hNewViewEntityCsr$[ebp]
	sub	ecx, 30					; 0000001eH
	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+6], ecx
$L7747:

; 821  : 
; 822  :             if ( lpSrcViewEntityCsr->hParent )

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+10], 0
	je	SHORT $L7748

; 824  :                zSHORT          nParentHierNbr;
; 825  :                LPVIEWENTITYCSR lpTempParent;
; 826  : 
; 827  :                hParentViewEntityCsr  = hNewViewEntityCsr - 1;

	mov	ecx, DWORD PTR _hNewViewEntityCsr$[ebp]
	sub	ecx, 30					; 0000001eH
	mov	DWORD PTR _hParentViewEntityCsr$7746[ebp], ecx

; 828  :                lpParentViewEntityCsr = lpNewViewEntityCsr - 1;

	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	sub	edx, 30					; 0000001eH
	mov	DWORD PTR _lpParentViewEntityCsr$7745[ebp], edx

; 829  : 
; 830  :                lpTempParent = zGETPTR( lpSrcViewEntityCsr->hParent );

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempParent$7750[ebp], eax

; 831  :                nParentHierNbr = lpTempParent->nHierNbr;

	mov	edx, DWORD PTR _lpTempParent$7750[ebp]
	mov	ax, WORD PTR [edx+24]
	mov	WORD PTR _nParentHierNbr$7749[ebp], ax
$L7753:

; 832  :                while ( lpParentViewEntityCsr->nHierNbr != nParentHierNbr )

	mov	ecx, DWORD PTR _lpParentViewEntityCsr$7745[ebp]
	movsx	edx, WORD PTR [ecx+24]
	movsx	eax, WORD PTR _nParentHierNbr$7749[ebp]
	cmp	edx, eax
	je	SHORT $L7754

; 834  :                   hParentViewEntityCsr--;

	mov	ecx, DWORD PTR _hParentViewEntityCsr$7746[ebp]
	sub	ecx, 30					; 0000001eH
	mov	DWORD PTR _hParentViewEntityCsr$7746[ebp], ecx

; 835  :                   lpParentViewEntityCsr--;

	mov	edx, DWORD PTR _lpParentViewEntityCsr$7745[ebp]
	sub	edx, 30					; 0000001eH
	mov	DWORD PTR _lpParentViewEntityCsr$7745[ebp], edx

; 836  :                }

	jmp	SHORT $L7753
$L7754:

; 837  : 
; 838  :                lpNewViewEntityCsr->hParent = hParentViewEntityCsr;

	mov	eax, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR _hParentViewEntityCsr$7746[ebp]
	mov	DWORD PTR [eax+10], ecx
$L7748:

; 843  : 
; 844  :          hSrcViewEntityCsr++;

	mov	edx, DWORD PTR _hSrcViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], edx

; 845  :          lpSrcViewEntityCsr++;

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 846  :          hNewViewEntityCsr++;

	mov	ecx, DWORD PTR _hNewViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], ecx

; 847  :          lpNewViewEntityCsr++;

	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], edx

; 848  : 
; 849  :          lEntities--;

	mov	eax, DWORD PTR _lEntities$[ebp]
	sub	eax, 1
	mov	DWORD PTR _lEntities$[ebp], eax

; 850  :       }

	jmp	$L7741
$L7742:

; 852  : 
; 853  :    // Now that the new view has been created, copy all of the view
; 854  :    // subobject records.
; 855  :    lpSrcViewSubobject = zGETPTR( lpSrcViewCsr->hFirstViewSubobject );

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewSubobject$[ebp], eax

; 856  :    lpNewViewCsr->hFirstViewSubobject = 0;

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	DWORD PTR [eax+30], 0

; 857  :    lpPrevNewViewSubobject = 0;

	mov	DWORD PTR _lpPrevNewViewSubobject$[ebp], 0
$L7757:

; 858  :    while ( lpSrcViewSubobject )

	cmp	DWORD PTR _lpSrcViewSubobject$[ebp], 0
	je	$L7758

; 860  :       zPVOID hNewViewSubobject;
; 861  : 
; 862  :       // Create a viewsubobject record and chain it to the ViewCsr.
; 863  :       hNewViewSubobject = fnAllocDataspace( lpOwningTask->hFirstDataHeader,
; 864  :                                             sizeof( ViewSubobjectRecord ), 1, 0,
; 865  :                                             iViewSubobject );

	push	10020					; 00002724H
	push	0
	push	1
	push	48					; 00000030H
	mov	ecx, DWORD PTR _lpOwningTask$[ebp]
	mov	edx, DWORD PTR [ecx+94]
	push	edx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hNewViewSubobject$7759[ebp], eax

; 866  :       lpNewViewSubobject = zGETPTR( hNewViewSubobject );

	mov	eax, DWORD PTR _hNewViewSubobject$7759[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewSubobject$[ebp], eax

; 867  :       if ( lpNewViewSubobject == 0 )

	cmp	DWORD PTR _lpNewViewSubobject$[ebp], 0
	jne	SHORT $L7764

; 869  :          if ( lpNewViewCsr == lpTgtViewCsr )

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	cmp	ecx, DWORD PTR _lpTgtViewCsr$[ebp]
	jne	SHORT $L7763

; 871  :             fnResetView( vTgt, 0 );   // reset the target view

	push	0
	mov	edx, DWORD PTR _vTgt$[ebp]
	push	edx
	call	_fnResetView
	add	esp, 8

; 873  :          else

	jmp	SHORT $L7764
$L7763:

; 875  :             while ( lpNewViewCsr->hFirstViewSubobject )

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	SHORT $L7767

; 877  :                lpNewViewSubobject = zGETPTR( lpNewViewCsr->hFirstViewSubobject );

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewSubobject$[ebp], eax

; 878  :                lpNewViewCsr->hFirstViewSubobject = lpNewViewSubobject->hNextViewSubobject;

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	ecx, DWORD PTR _lpNewViewSubobject$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+30], edx

; 879  :                fnFreeDataspace( lpNewViewSubobject );

	mov	eax, DWORD PTR _lpNewViewSubobject$[ebp]
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 880  :             }

	jmp	SHORT $L7763
$L7767:

; 881  : 
; 882  :             fnFreeDataspace( lpNewViewCsr );

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	push	ecx
	call	_fnFreeDataspace
	add	esp, 4

; 883  :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7667
$L7764:

; 886  : 
; 887  :       zmemcpy( (zPCHAR) lpNewViewSubobject, (zPCHAR) lpSrcViewSubobject,
; 888  :                sizeof( ViewSubobjectRecord ) );

	push	48					; 00000030H
	mov	edx, DWORD PTR _lpSrcViewSubobject$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpNewViewSubobject$[ebp]
	push	eax
	call	_memcpy
	add	esp, 12					; 0000000cH

; 889  : 
; 890  :       // Set appropriate view entity cursors in new subobject
; 891  :       // First, set lpViewParent csr. NOTE: the view parent
; 892  :       // Cursor may be NULL in the case of recursion when the
; 893  :       // recursive parent entity type is to root of the
; 894  :       // view object.
; 895  :       if ( lpSrcViewSubobject->hViewRootParentCsr )

	mov	ecx, DWORD PTR _lpSrcViewSubobject$[ebp]
	cmp	DWORD PTR [ecx+10], 0
	je	SHORT $L7772

; 897  :          hSrcViewEntityCsr  = lpSrcViewCsr->hFirstOD_EntityCsr;

	mov	edx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], eax

; 898  :          lpSrcViewEntityCsr = zGETPTR( lpSrcViewCsr->hFirstOD_EntityCsr );

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 899  :          hNewViewEntityCsr  = lpNewViewCsr->hFirstOD_EntityCsr;

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], ecx

; 900  :          lpNewViewEntityCsr = zGETPTR( lpNewViewCsr->hFirstOD_EntityCsr );

	mov	edx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax
$L7776:

; 901  :          while ( hSrcViewEntityCsr != lpSrcViewSubobject->hViewRootParentCsr )

	mov	ecx, DWORD PTR _lpSrcViewSubobject$[ebp]
	mov	edx, DWORD PTR _hSrcViewEntityCsr$[ebp]
	cmp	edx, DWORD PTR [ecx+10]
	je	SHORT $L7777

; 903  :             hSrcViewEntityCsr++;

	mov	eax, DWORD PTR _hSrcViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], eax

; 904  :             lpSrcViewEntityCsr++;

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], ecx

; 905  :             hNewViewEntityCsr++;

	mov	edx, DWORD PTR _hNewViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], edx

; 906  :             lpNewViewEntityCsr++;

	mov	eax, DWORD PTR _lpNewViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax

; 907  :          }

	jmp	SHORT $L7776
$L7777:

; 908  : 
; 909  :          lpNewViewSubobject->hViewRootParentCsr = hNewViewEntityCsr;

	mov	ecx, DWORD PTR _lpNewViewSubobject$[ebp]
	mov	edx, DWORD PTR _hNewViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+10], edx
$L7772:

; 911  : 
; 912  :       // Next set lpRootCsr
; 913  :       hSrcViewEntityCsr  = lpSrcViewCsr->hFirstOD_EntityCsr;

	mov	eax, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], ecx

; 914  :       lpSrcViewEntityCsr = zGETPTR( lpSrcViewCsr->hFirstOD_EntityCsr );

	mov	edx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 915  :       hNewViewEntityCsr  = lpNewViewCsr->hFirstOD_EntityCsr;

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], edx

; 916  :       lpNewViewEntityCsr = zGETPTR( lpNewViewCsr->hFirstOD_EntityCsr );

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax
$L7781:

; 917  :       while ( hSrcViewEntityCsr != lpSrcViewSubobject->hRootCsr )

	mov	edx, DWORD PTR _lpSrcViewSubobject$[ebp]
	mov	eax, DWORD PTR _hSrcViewEntityCsr$[ebp]
	cmp	eax, DWORD PTR [edx+14]
	je	SHORT $L7782

; 919  :          hSrcViewEntityCsr++;

	mov	ecx, DWORD PTR _hSrcViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], ecx

; 920  :          lpSrcViewEntityCsr++;

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], edx

; 921  :          hNewViewEntityCsr++;

	mov	eax, DWORD PTR _hNewViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], eax

; 922  :          lpNewViewEntityCsr++;

	mov	ecx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], ecx

; 923  :       }

	jmp	SHORT $L7781
$L7782:

; 924  : 
; 925  :       lpNewViewSubobject->hRootCsr = hNewViewEntityCsr;

	mov	edx, DWORD PTR _lpNewViewSubobject$[ebp]
	mov	eax, DWORD PTR _hNewViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+14], eax
$L7784:

; 926  : 
; 927  :       // Next, set lpLastDescCsr, note we do not reset lpSrcViewEntityCsr
; 928  :       // and lpNewViewEntityCsr because the last descendent must occur
; 929  :       // on the same or a subsequent cursor to the root cursor
; 930  :       while ( hSrcViewEntityCsr != lpSrcViewSubobject->hLastDescCsr )

	mov	ecx, DWORD PTR _lpSrcViewSubobject$[ebp]
	mov	edx, DWORD PTR _hSrcViewEntityCsr$[ebp]
	cmp	edx, DWORD PTR [ecx+20]
	je	SHORT $L7785

; 932  :          hSrcViewEntityCsr++;

	mov	eax, DWORD PTR _hSrcViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], eax

; 933  :          lpSrcViewEntityCsr++;

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], ecx

; 934  :          hNewViewEntityCsr++;

	mov	edx, DWORD PTR _hNewViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], edx

; 935  :          lpNewViewEntityCsr++;

	mov	eax, DWORD PTR _lpNewViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax

; 936  :       }

	jmp	SHORT $L7784
$L7785:

; 937  : 
; 938  :       lpNewViewSubobject->hLastDescCsr = hNewViewEntityCsr;

	mov	ecx, DWORD PTR _lpNewViewSubobject$[ebp]
	mov	edx, DWORD PTR _hNewViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+20], edx

; 939  : 
; 940  :       // Next, set RecursViewEntityCsr if set in old View Subobject.
; 941  :       if ( lpSrcViewSubobject->hRecursViewEntityCsr )

	mov	eax, DWORD PTR _lpSrcViewSubobject$[ebp]
	cmp	DWORD PTR [eax+40], 0
	je	SHORT $L7786

; 943  :          hSrcViewEntityCsr  = lpSrcViewCsr->hFirstOD_EntityCsr;

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], edx

; 944  :          lpSrcViewEntityCsr = zGETPTR( lpSrcViewCsr->hFirstOD_EntityCsr );

	mov	eax, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 945  :          hNewViewEntityCsr  = lpNewViewCsr->hFirstOD_EntityCsr;

	mov	edx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], eax

; 946  :          lpNewViewEntityCsr = zGETPTR( lpNewViewCsr->hFirstOD_EntityCsr );

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax
$L7790:

; 947  :          while ( hSrcViewEntityCsr != lpSrcViewSubobject->hRecursViewEntityCsr )

	mov	eax, DWORD PTR _lpSrcViewSubobject$[ebp]
	mov	ecx, DWORD PTR _hSrcViewEntityCsr$[ebp]
	cmp	ecx, DWORD PTR [eax+40]
	je	SHORT $L7791

; 949  :             hSrcViewEntityCsr++;

	mov	edx, DWORD PTR _hSrcViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _hSrcViewEntityCsr$[ebp], edx

; 950  :             lpSrcViewEntityCsr++;

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 951  :             hNewViewEntityCsr++;

	mov	ecx, DWORD PTR _hNewViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], ecx

; 952  :             lpNewViewEntityCsr++;

	mov	edx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], edx

; 953  :          }

	jmp	SHORT $L7790
$L7791:

; 954  : 
; 955  :          lpNewViewSubobject->hRecursViewEntityCsr = hNewViewEntityCsr;

	mov	eax, DWORD PTR _lpNewViewSubobject$[ebp]
	mov	ecx, DWORD PTR _hNewViewEntityCsr$[ebp]
	mov	DWORD PTR [eax+40], ecx
$L7786:

; 957  : 
; 958  :       if ( lpPrevNewViewSubobject )

	cmp	DWORD PTR _lpPrevNewViewSubobject$[ebp], 0
	je	SHORT $L7792

; 960  :          lpPrevNewViewSubobject->hNextViewSubobject = hNewViewSubobject;

	mov	edx, DWORD PTR _lpPrevNewViewSubobject$[ebp]
	mov	eax, DWORD PTR _hNewViewSubobject$7759[ebp]
	mov	DWORD PTR [edx+2], eax

; 961  :          lpNewViewSubobject->hPrevViewSubobject =
; 962  :                                           zGETHNDL( lpPrevNewViewSubobject );

	mov	ecx, DWORD PTR _lpPrevNewViewSubobject$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpNewViewSubobject$[ebp]
	mov	DWORD PTR [edx+6], eax

; 964  :       else

	jmp	SHORT $L7794
$L7792:

; 965  :          lpNewViewCsr->hFirstViewSubobject = hNewViewSubobject;

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	ecx, DWORD PTR _hNewViewSubobject$7759[ebp]
	mov	DWORD PTR [eax+30], ecx
$L7794:

; 966  : 
; 967  :       lpNewViewSubobject->hNextViewSubobject = 0;

	mov	edx, DWORD PTR _lpNewViewSubobject$[ebp]
	mov	DWORD PTR [edx+2], 0

; 968  :       lpPrevNewViewSubobject = lpNewViewSubobject;

	mov	eax, DWORD PTR _lpNewViewSubobject$[ebp]
	mov	DWORD PTR _lpPrevNewViewSubobject$[ebp], eax

; 969  :       lpSrcViewSubobject = zGETPTR( lpSrcViewSubobject->hNextViewSubobject );

	mov	ecx, DWORD PTR _lpSrcViewSubobject$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewSubobject$[ebp], eax

; 970  :    }

	jmp	$L7757
$L7758:

; 971  : 
; 972  :    // 'copy' the selected instance chain.
; 973  :    if ( lpSrcViewCsr->hFirstSelectedInstance )

	mov	eax, DWORD PTR _lpSrcViewCsr$[ebp]
	cmp	DWORD PTR [eax+42], 0
	je	$L7796

; 975  :       LPSELECTEDINSTANCE   lpSrcSelectedInstance;
; 976  : 
; 977  :       lpSrcSelectedInstance = zGETPTR( lpSrcViewCsr->hFirstSelectedInstance );

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcSelectedInstance$7797[ebp], eax
$L7800:

; 978  :       while ( lpSrcSelectedInstance )

	cmp	DWORD PTR _lpSrcSelectedInstance$7797[ebp], 0
	je	$L7801

; 980  :          zLONG    lEntities;
; 981  : 
; 982  :          lpNewViewEntityCsr = zGETPTR( lpNewViewCsr->hFirstOD_EntityCsr );

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax

; 983  :          hNewViewEntityCsr  = lpNewViewCsr->hFirstOD_EntityCsr;

	mov	edx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], eax

; 984  :          lEntities = lpNewViewCsr->uEntities;

	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	xor	edx, edx
	mov	dx, WORD PTR [ecx+34]
	mov	DWORD PTR _lEntities$7802[ebp], edx
$L7804:

; 987  :             if ( lpNewViewEntityCsr->hViewEntity == lpSrcSelectedInstance->hViewEntity )

	mov	eax, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR _lpSrcSelectedInstance$7797[ebp]
	mov	edx, DWORD PTR [eax+14]
	cmp	edx, DWORD PTR [ecx+8]
	jne	SHORT $L7807

; 989  :                break;

	jmp	SHORT $L7806
$L7807:

; 991  : 
; 992  :             lpNewViewEntityCsr++;

	mov	eax, DWORD PTR _lpNewViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _lpNewViewEntityCsr$[ebp], eax

; 993  :             hNewViewEntityCsr++;

	mov	ecx, DWORD PTR _hNewViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _hNewViewEntityCsr$[ebp], ecx

; 994  :             lEntities--;

	mov	edx, DWORD PTR _lEntities$7802[ebp]
	sub	edx, 1
	mov	DWORD PTR _lEntities$7802[ebp], edx

; 995  : 
; 996  :          } while ( lEntities > 0 );

	cmp	DWORD PTR _lEntities$7802[ebp], 0
	jg	SHORT $L7804
$L7806:

; 997  : 
; 998  :          // Set the current select set to the summ of the selections for the
; 999  :          // select instance.
; 1000 :          lpNewViewCsr->nCurrentSelectSet = lpSrcSelectedInstance->nSelectSet;

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	ecx, DWORD PTR _lpSrcSelectedInstance$7797[ebp]
	mov	dx, WORD PTR [ecx+6]
	mov	WORD PTR [eax+36], dx

; 1001 :          fnSelectedInstanceFarbler( zGETPTR( lpNewViewEntityCsr->hViewCsr ),
; 1002 :                                     zGETPTR( lpSrcSelectedInstance->hViewEntity ),
; 1003 :                                     lpSrcSelectedInstance->xEntityInstance, 2 );

	push	2
	mov	eax, DWORD PTR _lpSrcSelectedInstance$7797[ebp]
	mov	ecx, DWORD PTR [eax+12]
	push	ecx
	mov	edx, DWORD PTR _lpSrcSelectedInstance$7797[ebp]
	mov	eax, DWORD PTR [edx+8]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	ecx, DWORD PTR _lpNewViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H

; 1004 :          lpSrcSelectedInstance = zGETPTR( lpSrcSelectedInstance->hNextSelectedInstance );

	mov	eax, DWORD PTR _lpSrcSelectedInstance$7797[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcSelectedInstance$7797[ebp], eax

; 1005 :       }

	jmp	$L7800
$L7801:

; 1006 : 
; 1007 :       // After the selections in this view, reset the current select set
; 1008 :       // for the new view to match the source view.
; 1009 :       lpNewViewCsr->nCurrentSelectSet = lpSrcViewCsr->nCurrentSelectSet;

	mov	edx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	eax, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	cx, WORD PTR [eax+36]
	mov	WORD PTR [edx+36], cx
$L7796:

; 1011 : 
; 1012 :    // If we created a brand new ViewCsr, clear up the old view and
; 1013 :    // chain the new ViewCsr to the ViewOI.
; 1014 :    if ( lpNewViewCsr != lpTgtViewCsr )

	mov	edx, DWORD PTR _lpNewViewCsr$[ebp]
	cmp	edx, DWORD PTR _lpTgtViewCsr$[ebp]
	je	SHORT $L7811

; 1016 :       // Chain ViewCsr to ViewOI.
; 1017 :       lpNewViewCsr->hNextViewCsr = lpSrcViewOI->hFirstViewCsr;

	mov	eax, DWORD PTR _lpNewViewCsr$[ebp]
	mov	ecx, DWORD PTR _lpSrcViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	mov	DWORD PTR [eax+2], edx

; 1018 :       lpSrcViewOI->hFirstViewCsr = hNewViewCsr;

	mov	eax, DWORD PTR _lpSrcViewOI$[ebp]
	mov	ecx, DWORD PTR _hNewViewCsr$[ebp]
	mov	DWORD PTR [eax+10], ecx

; 1019 :       if ( lpTgtViewCsr )

	cmp	DWORD PTR _lpTgtViewCsr$[ebp], 0
	je	SHORT $L7812

; 1020 :          fnDropViewCsr( zGETPTR( vTgt->hViewCsr ) );

	mov	edx, DWORD PTR _vTgt$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnDropViewCsr
	add	esp, 4
$L7812:

; 1021 : 
; 1022 :       vTgt->hViewCsr = hNewViewCsr;

	mov	ecx, DWORD PTR _vTgt$[ebp]
	mov	edx, DWORD PTR _hNewViewCsr$[ebp]
	mov	DWORD PTR [ecx+10], edx

; 1023 :       lpNewViewCsr->hView = zGETHNDL( vTgt );

	mov	eax, DWORD PTR _vTgt$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpNewViewCsr$[ebp]
	mov	DWORD PTR [ecx+6], eax
$L7811:

; 1025 : 
; 1026 :    // Finally, copy read only bit from source to target.
; 1027 :    vTgt->bReadOnly = vSrc->bReadOnly;

	mov	edx, DWORD PTR _vSrc$[ebp]
	mov	eax, DWORD PTR [edx+30]
	shr	eax, 6
	and	eax, 1
	and	eax, 1
	shl	eax, 6
	mov	ecx, DWORD PTR _vTgt$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	and	edx, -65				; ffffffbfH
	or	edx, eax
	mov	eax, DWORD PTR _vTgt$[ebp]
	mov	DWORD PTR [eax+30], edx

; 1028 : 
; 1029 :    // We should be calling listeners to inform them that the cursor has been
; 1030 :    // set, but we don't know the (if any) entity name ... dks 2007.05.24
; 1031 : // fnCallListeners( lpView, ??????Entity->szName );
; 1032 : 
; 1033 :    return( 0 ); // success, return the good news

	xor	ax, ax
$L7667:

; 1034 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnSetViewFromView ENDP
_TEXT	ENDS
PUBLIC	_DropNameForView@16
PUBLIC	??_C@_0HO@KFBJ@DropNameForView?5sending?5in?5view?5@ ; `string'
PUBLIC	??_C@_0GP@OHOK@DropNameForView?5sending?5in?5view?5@ ; `string'
PUBLIC	??_C@_0CO@GIKG@DropNameForView?5Invalid?5scope?5fo@ ; `string'
PUBLIC	??_C@_0BP@EMEP@DropNameForView?5Length?5Error?3?5?$AA@ ; `string'
PUBLIC	??_C@_0DA@BIJC@DropNameForView?5Invalid?5Subtask?5@ ; `string'
EXTRN	_fnGetApplicationForSubtask@8:NEAR
EXTRN	_TraceLineS@8:NEAR
EXTRN	_fnValidSubtaskView:NEAR
EXTRN	_strcmp:NEAR
EXTRN	_strlen:NEAR
EXTRN	_g_nOE_TraceWarning:WORD
EXTRN	_g_vDefaultTaskView:DWORD
;	COMDAT ??_C@_0HO@KFBJ@DropNameForView?5sending?5in?5view?5@
; File C:\10C\A\oe\KZOEVMAA.C
_DATA	SEGMENT
??_C@_0HO@KFBJ@DropNameForView?5sending?5in?5view?5@ DB 'DropNameForView '
	DB	'sending in view for TRANSIENT task: %d (0x%08x)  should be fo'
	DB	'r task: %d (0x%08x) ... WILL NOT RESET TASK VIEW', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0GP@OHOK@DropNameForView?5sending?5in?5view?5@
_DATA	SEGMENT
??_C@_0GP@OHOK@DropNameForView?5sending?5in?5view?5@ DB 'DropNameForView '
	DB	'sending in view for task: %d (0x%08x)  should be for task: %d'
	DB	' (0x%08x) ... RESETTING TASK VIEW', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CO@GIKG@DropNameForView?5Invalid?5scope?5fo@
_DATA	SEGMENT
??_C@_0CO@GIKG@DropNameForView?5Invalid?5scope?5fo@ DB 'DropNameForView I'
	DB	'nvalid scope for View name: ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BP@EMEP@DropNameForView?5Length?5Error?3?5?$AA@
_DATA	SEGMENT
??_C@_0BP@EMEP@DropNameForView?5Length?5Error?3?5?$AA@ DB 'DropNameForVie'
	DB	'w Length Error: ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DA@BIJC@DropNameForView?5Invalid?5Subtask?5@
_DATA	SEGMENT
??_C@_0DA@BIJC@DropNameForView?5Invalid?5Subtask?5@ DB 'DropNameForView I'
	DB	'nvalid Subtask view for Name: ', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcName$ = 12
_lpSubtaskView$ = 16
_nLevel$ = 20
_lpCurrentTask$ = -28
_lpSubtask$ = -16
_lpViewName$ = -24
_lpPrevViewName$ = -12
_lpApp$ = -20
_hView$ = -4
_nRC$ = -8
_lpTempView$7871 = -32
_lpTask$7878 = -36
_lpTempView$7896 = -40
_lpTempView$7917 = -44
_lpTempView$7938 = -48
_DropNameForView@16 PROC NEAR

; 1059 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H

; 1060 :    LPTASK      lpCurrentTask;
; 1061 :    LPSUBTASK   lpSubtask;
; 1062 :    LPVIEWNAME  lpViewName;
; 1063 :    LPVIEWNAME  lpPrevViewName;
; 1064 :    LPAPP       lpApp;
; 1065 :    zPVOID      hView = zGETHNDL( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hView$[ebp], eax

; 1066 :    zSHORT      nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 1067 : 
; 1068 : #if 1
; 1069 :    if ( lpSubtaskView == 0 )

	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	jne	SHORT $L7832

; 1071 :       if ( g_vDefaultTaskView )

	cmp	DWORD PTR _g_vDefaultTaskView, 0
	je	SHORT $L7833

; 1072 :          lpSubtaskView = g_vDefaultTaskView;

	mov	ecx, DWORD PTR _g_vDefaultTaskView
	mov	DWORD PTR _lpSubtaskView$[ebp], ecx
$L7833:

; 1074 :    else

	jmp	$L7840
$L7832:

; 1075 :    if ( g_vDefaultTaskView && nLevel == zLEVEL_TASK )

	cmp	DWORD PTR _g_vDefaultTaskView, 0
	je	$L7840
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 2
	jne	$L7840

; 1077 :       if ( lpSubtaskView->hTask != g_vDefaultTaskView->hTask )

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	mov	ecx, DWORD PTR _g_vDefaultTaskView
	mov	edx, DWORD PTR [eax+14]
	cmp	edx, DWORD PTR [ecx+14]
	je	$L7840

; 1079 :          lpCurrentTask = zGETPTR( lpSubtaskView->hTask );

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 1080 :          if ( lpCurrentTask && lpCurrentTask->bTransientTask )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	je	SHORT $L7838
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	eax, DWORD PTR [edx+443]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L7838

; 1082 :             TraceLine( "DropNameForView sending in view for TRANSIENT task: %d (0x%08x)  "
; 1083 :                          "should be for task: %d (0x%08x) ... WILL NOT RESET TASK VIEW",
; 1084 :                        lpSubtaskView->hTask, lpSubtaskView->hTask,
; 1085 :                        g_vDefaultTaskView->hTask, g_vDefaultTaskView->hTask );

	mov	ecx, DWORD PTR _g_vDefaultTaskView
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	push	OFFSET FLAT:??_C@_0HO@KFBJ@DropNameForView?5sending?5in?5view?5@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H

; 1087 :          else

	jmp	SHORT $L7840
$L7838:

; 1089 :          // SysMessageBox( 0, "Zeidon OE", "DropNameForView now RESETTING TASK VIEW", 0 );
; 1090 :             if ( g_nOE_TraceWarning )

	movsx	eax, WORD PTR _g_nOE_TraceWarning
	test	eax, eax
	je	SHORT $L7841

; 1092 :                TraceLine( "DropNameForView sending in view for task: %d (0x%08x)  "
; 1093 :                             "should be for task: %d (0x%08x) ... RESETTING TASK VIEW",
; 1094 :                           lpSubtaskView->hTask, lpSubtaskView->hTask,
; 1095 :                           g_vDefaultTaskView->hTask, g_vDefaultTaskView->hTask );

	mov	ecx, DWORD PTR _g_vDefaultTaskView
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	push	OFFSET FLAT:??_C@_0GP@OHOK@DropNameForView?5sending?5in?5view?5@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H
$L7841:

; 1097 : 
; 1098 :             lpSubtaskView = g_vDefaultTaskView;

	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	DWORD PTR _lpSubtaskView$[ebp], eax
$L7840:

; 1102 : #endif
; 1103 : 
; 1104 :    // If task not active or disabled, return zCALL_ERROR.
; 1105 :    if ( (lpCurrentTask = fnOperationCall( iDropNameForView, lpView, zVALID_VIEW )) == 0 )

	push	1
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	205					; 000000cdH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7843

; 1106 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7823
$L7843:

; 1110 :       // Check for valid scope.
; 1111 :       if ( nLevel != zLEVEL_SUBTASK     && nLevel != zLEVEL_TASK   &&
; 1112 :            nLevel != zLEVEL_APPLICATION && nLevel != zLEVEL_SYSTEM &&
; 1113 :            nLevel != zLEVEL_ANY )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 1
	je	SHORT $L7847
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 2
	je	SHORT $L7847
	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 4
	je	SHORT $L7847
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 8
	je	SHORT $L7847
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 15					; 0000000fH
	je	SHORT $L7847

; 1115 :          TraceLineS( "DropNameForView Invalid scope for View name: ", cpcName );

	mov	ecx, DWORD PTR _cpcName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CO@GIKG@DropNameForView?5Invalid?5scope?5fo@ ; `string'
	call	_TraceLineS@8

; 1116 :          //  "KZOEE110 - Invalid scope for View name"
; 1117 :          fnIssueCoreError( lpCurrentTask, lpSubtaskView, 8, 110, (zLONG) nLevel, 0, 0 );

	push	0
	push	0
	movsx	edx, WORD PTR _nLevel$[ebp]
	push	edx
	push	110					; 0000006eH
	push	8
	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1118 :       // fnOperationReturn( iDropNameForView, lpCurrentTask );
; 1119 :          break;

	jmp	$L7846
$L7847:

; 1121 : 
; 1122 :       if ( cpcName == 0 || cpcName[ 0 ] == 0 ||
; 1123 :            zstrlen( cpcName ) > zZEIDON_NAME_LTH * 2 )

	cmp	DWORD PTR _cpcName$[ebp], 0
	je	SHORT $L7851
	mov	edx, DWORD PTR _cpcName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L7851
	mov	ecx, DWORD PTR _cpcName$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	cmp	eax, 64					; 00000040H
	jbe	SHORT $L7850
$L7851:

; 1125 :          TraceLineS( "DropNameForView Length Error: ", cpcName );

	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BP@EMEP@DropNameForView?5Length?5Error?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1126 :          fnIssueCoreError( lpCurrentTask, lpSubtaskView, 8, 450, 0, cpcName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcName$[ebp]
	push	eax
	push	0
	push	450					; 000001c2H
	push	8
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1127 :       // fnOperationReturn( iDropNameForView, lpCurrentTask );
; 1128 :          break;

	jmp	$L7846
$L7850:

; 1130 : 
; 1131 :    // if ( fnValidView( lpCurrentTask, lpView ) == 0 )
; 1132 :    // {
; 1133 :    //    fnOperationReturn( iDropNameForView, lpCurrentTask );
; 1134 :    //    return( zCALL_ERROR );
; 1135 :    // }
; 1136 : 
; 1137 :       // If user wants a subtask view make sure subtask is OK.
; 1138 :       if ( nLevel == zLEVEL_SUBTASK &&
; 1139 :            fnValidSubtaskView( lpCurrentTask, lpSubtaskView ) == 0 )

	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 1
	jne	SHORT $L7853
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnValidSubtaskView
	add	esp, 8
	movsx	eax, ax
	test	eax, eax
	jne	SHORT $L7853

; 1141 :          TraceLineS( "DropNameForView Invalid Subtask view for Name: ", cpcName );

	mov	ecx, DWORD PTR _cpcName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0DA@BIJC@DropNameForView?5Invalid?5Subtask?5@ ; `string'
	call	_TraceLineS@8

; 1142 :          break;  // view invalid

	jmp	$L7846
$L7853:

; 1144 : 
; 1145 :       // Depending on the scope parameter, look in the appropriate
; 1146 :       // name chain for the name being dropped.
; 1147 :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1148 :       if ( nLevel == zLEVEL_SUBTASK )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 1
	jne	$L7855

; 1150 :          // Look for the name in the subtask.
; 1151 :          lpSubtask = zGETPTR( lpSubtaskView->hSubtask );

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 1152 :          lpPrevViewName = 0;

	mov	DWORD PTR _lpPrevViewName$[ebp], 0

; 1153 :          lpViewName = zGETPTR( lpSubtask->hFirstViewName );

	mov	edx, DWORD PTR _lpSubtask$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L7859:

; 1154 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7860

; 1156 :             if ( zstrcmp( lpViewName->szName, cpcName ) == 0 )

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L9196
	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -52+[ebp], eax
	jmp	SHORT $L9197
$L9196:
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -52+[ebp], eax
$L9197:
	cmp	DWORD PTR -52+[ebp], 0
	jne	SHORT $L7867

; 1157 :                break;

	jmp	SHORT $L7860
$L7867:

; 1158 : 
; 1159 :             lpPrevViewName = lpViewName;

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR _lpPrevViewName$[ebp], ecx

; 1160 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1161 :          }

	jmp	SHORT $L7859
$L7860:

; 1162 : 
; 1163 :          // If the view name was found, remove the view from the subtask
; 1164 :          // chain and free up its storage.
; 1165 :          if ( lpViewName && (lpView == 0 || lpViewName->hView == hView) )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7869
	cmp	DWORD PTR _lpView$[ebp], 0
	je	SHORT $L7870
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	cmp	edx, DWORD PTR _hView$[ebp]
	jne	SHORT $L7869
$L7870:

; 1167 :             zVIEW lpTempView = zGETPTR( lpViewName->hView );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempView$7871[ebp], eax

; 1168 : 
; 1169 :             lpTempView->nViewNames--;

	mov	edx, DWORD PTR _lpTempView$7871[ebp]
	mov	ax, WORD PTR [edx+22]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpTempView$7871[ebp]
	mov	WORD PTR [ecx+22], ax

; 1170 :             if ( lpPrevViewName )

	cmp	DWORD PTR _lpPrevViewName$[ebp], 0
	je	SHORT $L7873

; 1171 :                lpPrevViewName->hNextViewName = lpViewName->hNextViewName;

	mov	edx, DWORD PTR _lpPrevViewName$[ebp]
	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR [edx+6], ecx

; 1172 :             else

	jmp	SHORT $L7874
$L7873:

; 1173 :                lpSubtask->hFirstViewName = lpViewName->hNextViewName;

	mov	edx, DWORD PTR _lpSubtask$[ebp]
	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR [edx+18], ecx
$L7874:

; 1174 : 
; 1175 :             fnFreeDataspace( lpViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 1177 :          else

	jmp	SHORT $L7875
$L7869:

; 1179 :             nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L7875:

; 1182 :       else

	jmp	$L7923
$L7855:

; 1183 :       if ( nLevel == zLEVEL_TASK )

	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 2
	jne	$L7877

; 1185 :          LPTASK     lpTask;
; 1186 : 
; 1187 :          // Look for the requested name in the task.  If a subtask view was
; 1188 :          // supplied use the task represented by the view.
; 1189 :          if ( lpSubtaskView )

	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	je	SHORT $L7879

; 1190 :             lpTask = zGETPTR( lpSubtaskView->hTask );

	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$7878[ebp], eax

; 1191 :          else

	jmp	SHORT $L7881
$L7879:

; 1192 :             lpTask = lpCurrentTask;

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	DWORD PTR _lpTask$7878[ebp], eax
$L7881:

; 1193 : 
; 1194 :          // Look for the name in the task.
; 1195 :          lpPrevViewName = 0;

	mov	DWORD PTR _lpPrevViewName$[ebp], 0

; 1196 :          lpViewName = zGETPTR( lpTask->hFirstViewName );

	mov	ecx, DWORD PTR _lpTask$7878[ebp]
	mov	edx, DWORD PTR [ecx+110]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L7884:

; 1197 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7885

; 1199 :             if ( zstrcmp( lpViewName->szName, cpcName ) == 0 )

	mov	eax, DWORD PTR _lpViewName$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _cpcName$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L9198
	mov	ecx, DWORD PTR _cpcName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewName$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -56+[ebp], eax
	jmp	SHORT $L9199
$L9198:
	mov	eax, DWORD PTR _lpViewName$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _cpcName$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -56+[ebp], edx
$L9199:
	cmp	DWORD PTR -56+[ebp], 0
	jne	SHORT $L7892

; 1200 :                break;

	jmp	SHORT $L7885
$L7892:

; 1201 : 
; 1202 :             lpPrevViewName = lpViewName;

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR _lpPrevViewName$[ebp], eax

; 1203 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1204 :          }

	jmp	SHORT $L7884
$L7885:

; 1205 : 
; 1206 :          // If the view name was found, remove the view from the task
; 1207 :          // chain and free up its storage.
; 1208 :          if ( lpViewName && (lpView == 0 || lpViewName->hView == hView) )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7894
	cmp	DWORD PTR _lpView$[ebp], 0
	je	SHORT $L7895
	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	cmp	ecx, DWORD PTR _hView$[ebp]
	jne	SHORT $L7894
$L7895:

; 1210 :             zVIEW lpTempView = zGETPTR( lpViewName->hView );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempView$7896[ebp], eax

; 1211 : 
; 1212 :             lpTempView->nViewNames--;

	mov	ecx, DWORD PTR _lpTempView$7896[ebp]
	mov	dx, WORD PTR [ecx+22]
	sub	dx, 1
	mov	eax, DWORD PTR _lpTempView$7896[ebp]
	mov	WORD PTR [eax+22], dx

; 1213 :             if ( lpPrevViewName )

	cmp	DWORD PTR _lpPrevViewName$[ebp], 0
	je	SHORT $L7898

; 1214 :                lpPrevViewName->hNextViewName = lpViewName->hNextViewName;

	mov	ecx, DWORD PTR _lpPrevViewName$[ebp]
	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	mov	DWORD PTR [ecx+6], eax

; 1215 :             else

	jmp	SHORT $L7899
$L7898:

; 1216 :                lpTask->hFirstViewName = lpViewName->hNextViewName;

	mov	ecx, DWORD PTR _lpTask$7878[ebp]
	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	mov	DWORD PTR [ecx+110], eax
$L7899:

; 1217 : 
; 1218 :             fnFreeDataspace( lpViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	push	ecx
	call	_fnFreeDataspace
	add	esp, 4

; 1220 :          else

	jmp	SHORT $L7900
$L7894:

; 1221 :             nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L7900:

; 1223 :       else

	jmp	$L7923
$L7877:

; 1224 :       if ( nLevel == zLEVEL_APPLICATION )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 4
	jne	$L7902

; 1226 :          // Look for the name at the application level.
; 1227 :          // The application level is determined by the view being named.
; 1228 :          // If the view being named is a subtask view, then the application
; 1229 :          // is the application for the subtask. Otherwise, if the view has
; 1230 :          // a ViewOD, the application is the app for the ViewOD. If all
; 1231 :          // else fails, we will use the application associated with the
; 1232 :          // task.
; 1233 :          fnGetApplicationForSubtask( &lpApp, lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpApp$[ebp]
	push	ecx
	call	_fnGetApplicationForSubtask@8

; 1234 :          lpPrevViewName = 0;

	mov	DWORD PTR _lpPrevViewName$[ebp], 0

; 1235 :          lpViewName = zGETPTR( lpApp->hFirstViewName );

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+1893]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L7905:

; 1236 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7906

; 1238 :             if ( zstrcmp( lpViewName->szName, cpcName ) == 0 )

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L9200
	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -60+[ebp], eax
	jmp	SHORT $L9201
$L9200:
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -60+[ebp], eax
$L9201:
	cmp	DWORD PTR -60+[ebp], 0
	jne	SHORT $L7913

; 1239 :                break;

	jmp	SHORT $L7906
$L7913:

; 1240 : 
; 1241 :             lpPrevViewName = lpViewName;

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR _lpPrevViewName$[ebp], ecx

; 1242 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1243 :          }

	jmp	SHORT $L7905
$L7906:

; 1244 : 
; 1245 :          // If the view name was found, remove the view from the application
; 1246 :          // chain and free up its storage
; 1247 :          if ( lpViewName && (lpView == 0 || lpViewName->hView == hView) )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7915
	cmp	DWORD PTR _lpView$[ebp], 0
	je	SHORT $L7916
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	cmp	edx, DWORD PTR _hView$[ebp]
	jne	SHORT $L7915
$L7916:

; 1249 :             zVIEW lpTempView = zGETPTR( lpViewName->hView );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempView$7917[ebp], eax

; 1250 : 
; 1251 :             lpTempView->nViewNames--;

	mov	edx, DWORD PTR _lpTempView$7917[ebp]
	mov	ax, WORD PTR [edx+22]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpTempView$7917[ebp]
	mov	WORD PTR [ecx+22], ax

; 1252 :             if ( lpPrevViewName )

	cmp	DWORD PTR _lpPrevViewName$[ebp], 0
	je	SHORT $L7919

; 1253 :                lpPrevViewName->hNextViewName = lpViewName->hNextViewName;

	mov	edx, DWORD PTR _lpPrevViewName$[ebp]
	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR [edx+6], ecx

; 1254 :             else

	jmp	SHORT $L7920
$L7919:

; 1255 :                lpApp->hFirstViewName = lpViewName->hNextViewName;

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR [edx+1893], ecx
$L7920:

; 1256 : 
; 1257 :             fnFreeDataspace( lpViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 1259 :          else

	jmp	SHORT $L7921
$L7915:

; 1260 :             nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L7921:

; 1262 :       else

	jmp	$L7923
$L7902:

; 1263 :       if ( nLevel == zLEVEL_SYSTEM )

	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 8
	jne	$L7923

; 1265 :          zLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysLockCoreMutex@4

; 1266 : 
; 1267 :          // First, see if the name exists at the system level.
; 1268 :          lpPrevViewName = 0;

	mov	DWORD PTR _lpPrevViewName$[ebp], 0

; 1269 :          lpViewName = zGETPTR( AnchorBlock->hFirstViewName );

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+1489]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L7926:

; 1270 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7927

; 1272 :             if ( zstrcmp( lpViewName->szName, cpcName ) == 0 )

	mov	eax, DWORD PTR _lpViewName$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _cpcName$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L9202
	mov	ecx, DWORD PTR _cpcName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewName$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -64+[ebp], eax
	jmp	SHORT $L9203
$L9202:
	mov	eax, DWORD PTR _lpViewName$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _cpcName$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -64+[ebp], edx
$L9203:
	cmp	DWORD PTR -64+[ebp], 0
	jne	SHORT $L7934

; 1273 :                break;

	jmp	SHORT $L7927
$L7934:

; 1274 : 
; 1275 :             lpPrevViewName = lpViewName;

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR _lpPrevViewName$[ebp], eax

; 1276 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1277 :          }

	jmp	SHORT $L7926
$L7927:

; 1278 : 
; 1279 :          // If the view name was found, remove the view from the system
; 1280 :          // chain and free up its storage.
; 1281 :          if ( lpViewName && (lpView == 0 || lpViewName->hView == hView) )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7936
	cmp	DWORD PTR _lpView$[ebp], 0
	je	SHORT $L7937
	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	cmp	ecx, DWORD PTR _hView$[ebp]
	jne	SHORT $L7936
$L7937:

; 1283 :             zVIEW lpTempView = zGETPTR( lpViewName->hView );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempView$7938[ebp], eax

; 1284 : 
; 1285 :             lpTempView->nViewNames--;

	mov	ecx, DWORD PTR _lpTempView$7938[ebp]
	mov	dx, WORD PTR [ecx+22]
	sub	dx, 1
	mov	eax, DWORD PTR _lpTempView$7938[ebp]
	mov	WORD PTR [eax+22], dx

; 1286 :             if ( lpPrevViewName )

	cmp	DWORD PTR _lpPrevViewName$[ebp], 0
	je	SHORT $L7940

; 1287 :                lpPrevViewName->hNextViewName = lpViewName->hNextViewName;

	mov	ecx, DWORD PTR _lpPrevViewName$[ebp]
	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	mov	DWORD PTR [ecx+6], eax

; 1288 :             else

	jmp	SHORT $L7941
$L7940:

; 1289 :                AnchorBlock->hFirstViewName = lpViewName->hNextViewName;

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	mov	DWORD PTR [ecx+1489], eax
$L7941:

; 1290 : 
; 1291 :             fnFreeDataspace( lpViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	push	ecx
	call	_fnFreeDataspace
	add	esp, 4

; 1293 :          else

	jmp	SHORT $L7942
$L7936:

; 1294 :             nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L7942:

; 1295 : 
; 1296 :          zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4
$L7923:

; 1298 : 
; 1299 :    } while ( FALSE );  // end of purist's goto

	xor	edx, edx
	test	edx, edx
	jne	$L7843
$L7846:

; 1300 : 
; 1301 :    fnOperationReturn( iDropNameForView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	205					; 000000cdH
	call	_fnOperationReturn
	add	esp, 8

; 1302 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7823:

; 1303 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_DropNameForView@16 ENDP
_TEXT	ENDS
PUBLIC	_GetNameForView@16
EXTRN	_strcpy:NEAR
_TEXT	SEGMENT
_pchReturnName$ = 8
_lpView$ = 12
_lpSubtaskView$ = 16
_nLevel$ = 20
_lpCurrentTask$ = -24
_lpSubtask$ = -12
_lpViewName$ = -20
_hView$ = -4
_lpApp$ = -16
_nRC$ = -8
_GetNameForView@16 PROC NEAR

; 1331 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 1332 :    LPTASK      lpCurrentTask;
; 1333 :    LPSUBTASK   lpSubtask;
; 1334 :    LPVIEWNAME  lpViewName;
; 1335 :    zPVOID      hView = zGETHNDL( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hView$[ebp], eax

; 1336 :    LPAPP       lpApp;
; 1337 :    zSHORT      nRC;
; 1338 : 
; 1339 :    // Clear out pchReturnName
; 1340 :    pchReturnName[ 0 ] = 0;

	mov	ecx, DWORD PTR _pchReturnName$[ebp]
	mov	BYTE PTR [ecx], 0

; 1341 : 
; 1342 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 1343 :    if ( (lpCurrentTask = fnOperationCall( iGetNameForView, lpView,
; 1344 :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	208					; 000000d0H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7959

; 1346 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7951
$L7959:

; 1348 : 
; 1349 :    if ( (nLevel == zLEVEL_SUBTASK || lpSubtaskView) &&
; 1350 :         (fnValidSubtaskView( lpCurrentTask, lpSubtaskView )) == 0 )

	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 1
	je	SHORT $L7961
	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	je	SHORT $L7960
$L7961:
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnValidSubtaskView
	add	esp, 8
	movsx	eax, ax
	test	eax, eax
	jne	SHORT $L7960

; 1352 :       fnOperationReturn( iGetNameForView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	208					; 000000d0H
	call	_fnOperationReturn
	add	esp, 8

; 1353 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7951
$L7960:

; 1355 : 
; 1356 :    // Check for valid scope.
; 1357 :    if ( nLevel != zLEVEL_SUBTASK     && nLevel != zLEVEL_TASK   &&
; 1358 :         nLevel != zLEVEL_APPLICATION && nLevel != zLEVEL_SYSTEM &&
; 1359 :         nLevel != zLEVEL_ANY )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 1
	je	SHORT $L7962
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 2
	je	SHORT $L7962
	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 4
	je	SHORT $L7962
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 8
	je	SHORT $L7962
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 15					; 0000000fH
	je	SHORT $L7962

; 1361 :       // "KZOEE110 - Invalid scope for View name"
; 1362 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 110, (zLONG) nLevel, 0, 0 );

	push	0
	push	0
	movsx	ecx, WORD PTR _nLevel$[ebp]
	push	ecx
	push	110					; 0000006eH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1363 :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L7962:

; 1365 : 
; 1366 :    // Depending on the scope parameter, check the appropriate
; 1367 :    // name chain for the view.  If nRC is set to a non-zero value, then the
; 1368 :    // view has been found and no further checking needs to be done.
; 1369 :    nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1

; 1370 :    if ( nLevel == zLEVEL_SUBTASK || (nLevel == zLEVEL_ANY && lpSubtaskView) )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 1
	je	SHORT $L7965
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 15					; 0000000fH
	jne	SHORT $L7970
	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	je	SHORT $L7970
$L7965:

; 1372 :       // Look for a named view in the subtask.
; 1373 :       lpSubtask = zGETPTR( lpSubtaskView->hSubtask );

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 1374 :       lpViewName = zGETPTR( lpSubtask->hFirstViewName );

	mov	edx, DWORD PTR _lpSubtask$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L7969:

; 1375 :       while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7970

; 1377 :          if ( lpViewName->hView == hView )

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	cmp	edx, DWORD PTR _hView$[ebp]
	jne	SHORT $L7971

; 1379 :             nRC = zLEVEL_SUBTASK;

	mov	WORD PTR _nRC$[ebp], 1

; 1380 :             break;

	jmp	SHORT $L7970
$L7971:

; 1382 : 
; 1383 :          lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1384 :       }

	jmp	SHORT $L7969
$L7970:

; 1386 : 
; 1387 :    if ( (nLevel == zLEVEL_TASK || nLevel == zLEVEL_ANY) && nRC < 0 )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 2
	je	SHORT $L7974
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 15					; 0000000fH
	jne	SHORT $L7978
$L7974:
	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jge	SHORT $L7978

; 1389 :       // Look for the view in the task names
; 1390 :       lpViewName = zGETPTR( lpCurrentTask->hFirstViewName );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	eax, DWORD PTR [edx+110]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L7977:

; 1391 :       while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7978

; 1393 :          if ( lpViewName->hView == hView )

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	cmp	edx, DWORD PTR _hView$[ebp]
	jne	SHORT $L7979

; 1395 :             nRC = zLEVEL_TASK;

	mov	WORD PTR _nRC$[ebp], 2

; 1396 :             break;

	jmp	SHORT $L7978
$L7979:

; 1398 : 
; 1399 :          lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1400 :       }

	jmp	SHORT $L7977
$L7978:

; 1402 : 
; 1403 :    if ( (nLevel == zLEVEL_APPLICATION || nLevel == zLEVEL_ANY) && nRC < 0 )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 4
	je	SHORT $L7982
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 15					; 0000000fH
	jne	SHORT $L7986
$L7982:
	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jge	SHORT $L7986

; 1405 :       // Look for the view at the application level.
; 1406 :       fnGetApplicationForSubtask( &lpApp, lpView );

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpApp$[ebp]
	push	eax
	call	_fnGetApplicationForSubtask@8

; 1407 :       lpViewName = zGETPTR( lpApp->hFirstViewName );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR [ecx+1893]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L7985:

; 1408 :       while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7986

; 1410 :          if ( lpViewName->hView == hView )

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	cmp	ecx, DWORD PTR _hView$[ebp]
	jne	SHORT $L7987

; 1412 :             nRC = zLEVEL_APPLICATION;

	mov	WORD PTR _nRC$[ebp], 4

; 1413 :             break;

	jmp	SHORT $L7986
$L7987:

; 1415 : 
; 1416 :          lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1417 :       }

	jmp	SHORT $L7985
$L7986:

; 1419 : 
; 1420 :    if ( (nLevel == zLEVEL_SYSTEM || nLevel == zLEVEL_ANY) && nRC < 0 )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 8
	je	SHORT $L7990
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 15					; 0000000fH
	jne	SHORT $L7989
$L7990:
	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jge	SHORT $L7989

; 1422 :       zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4

; 1423 : 
; 1424 :       // First, see if the name exists at the system level
; 1425 :       lpViewName = zGETPTR( AnchorBlock->hFirstViewName );

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+1489]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L7993:

; 1426 :       while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L7994

; 1428 :          if ( lpViewName->hView == hView )

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	cmp	ecx, DWORD PTR _hView$[ebp]
	jne	SHORT $L7995

; 1430 :             nRC = zLEVEL_SYSTEM;

	mov	WORD PTR _nRC$[ebp], 8

; 1431 :             break;

	jmp	SHORT $L7994
$L7995:

; 1433 : 
; 1434 :          lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1435 :       }

	jmp	SHORT $L7993
$L7994:

; 1436 : 
; 1437 :       zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4
$L7989:

; 1439 : 
; 1440 :    // If a name search was done, then see if the name was found.
; 1441 :    // If so, return the name in pchReturnName
; 1442 :    if ( nRC > 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jle	SHORT $L7997

; 1443 :       zstrcpy( pchReturnName, lpViewName->szName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _pchReturnName$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8
$L7997:

; 1444 : 
; 1445 :    fnOperationReturn( iGetNameForView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	208					; 000000d0H
	call	_fnOperationReturn
	add	esp, 8

; 1446 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7951:

; 1447 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_GetNameForView@16 ENDP
_TEXT	ENDS
PUBLIC	_fnDropView@4
PUBLIC	_SfSetSubtaskView@8
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentSubtaskView$ = 12
_lpCurrentTask$ = -4
_lpViewOD$8008 = -8
_lpSubtask$8011 = -12
_SfSetSubtaskView@8 PROC NEAR

; 1466 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 1467 :    LPTASK      lpCurrentTask;
; 1468 : 
; 1469 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 1470 :    if ( (lpCurrentTask = fnOperationCall( iSetSubtaskView, lpView,
; 1471 :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	207					; 000000cfH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8004

; 1473 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8002
$L8004:

; 1475 : 
; 1476 :    if ( (fnValidSubtaskView( lpCurrentTask, lpCurrentSubtaskView )) == 0 )

	mov	ecx, DWORD PTR _lpCurrentSubtaskView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnValidSubtaskView
	add	esp, 8
	movsx	eax, ax
	test	eax, eax
	jne	SHORT $L8005

; 1478 :       fnOperationReturn( iSetSubtaskView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	207					; 000000cfH
	call	_fnOperationReturn
	add	esp, 8

; 1479 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8002
$L8005:

; 1481 : 
; 1482 :    if ( lpView->hTask != lpCurrentSubtaskView->hTask )

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR _lpCurrentSubtaskView$[ebp]
	mov	ecx, DWORD PTR [edx+14]
	cmp	ecx, DWORD PTR [eax+14]
	je	SHORT $L8006

; 1484 :       //  "KZOEE111 - Attempt to set subtask view with a view from "
; 1485 :       //  "           another task"
; 1486 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 111, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	111					; 0000006fH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1487 :       fnOperationReturn( iSetSubtaskView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	207					; 000000cfH
	call	_fnOperationReturn
	add	esp, 8

; 1488 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8002
$L8006:

; 1490 : 
; 1491 :    if ( lpView->bApplicationView )

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	shr	eax, 3
	and	eax, 1
	test	eax, eax
	je	SHORT $L8007

; 1493 :       LPVIEWOD lpViewOD = zGETPTR( lpView->hViewOD );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8008[ebp], eax

; 1494 : 
; 1495 :       //  "KZOEE112 - Attempt to set subtask view attached to an application"
; 1496 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 112, 0, lpViewOD->szName, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewOD$8008[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	0
	push	112					; 00000070H
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1497 :       fnOperationReturn( iSetSubtaskView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	207					; 000000cfH
	call	_fnOperationReturn
	add	esp, 8

; 1498 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8002
$L8007:

; 1500 : 
; 1501 :    if ( lpView != lpCurrentSubtaskView )

	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	ecx, DWORD PTR _lpCurrentSubtaskView$[ebp]
	je	$L8015

; 1503 :       LPSUBTASK lpSubtask;
; 1504 : 
; 1505 :       if ( lpView->hSubtask )

	mov	edx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [edx+18], 0
	je	SHORT $L8012

; 1507 :          //  "KZOEE100 - Invalid View, view is already a Subtask View"
; 1508 :          fnIssueCoreError( lpCurrentTask, lpView, 8, 100, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	100					; 00000064H
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1509 :          fnOperationReturn( iSetSubtaskView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	207					; 000000cfH
	call	_fnOperationReturn
	add	esp, 8

; 1510 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8002
$L8012:

; 1512 : 
; 1513 :       lpView->hSubtask = lpCurrentSubtaskView->hSubtask;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR _lpCurrentSubtaskView$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	mov	DWORD PTR [eax+18], edx

; 1514 :       lpView->bViewLocked = TRUE;  // Subtask Views get locked automatically

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	or	ecx, 32					; 00000020H
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [edx+30], ecx

; 1515 :       lpCurrentSubtaskView->hSubtask = 0;

	mov	eax, DWORD PTR _lpCurrentSubtaskView$[ebp]
	mov	DWORD PTR [eax+18], 0

; 1516 :       lpCurrentSubtaskView->bViewLocked = 0; // Unlock view, no longer subtask

	mov	ecx, DWORD PTR _lpCurrentSubtaskView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	and	edx, -33				; ffffffdfH
	mov	eax, DWORD PTR _lpCurrentSubtaskView$[ebp]
	mov	DWORD PTR [eax+30], edx

; 1517 :       lpSubtask = zGETPTR( lpView->hSubtask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$8011[ebp], eax

; 1518 :       lpSubtask->hSubtaskView = zGETHNDL( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSubtask$8011[ebp]
	mov	DWORD PTR [ecx+14], eax

; 1519 : 
; 1520 :       // If the view has no ViewOD associated with it, then drop the view.
; 1521 :       if ( lpCurrentSubtaskView->hViewOD == 0 )

	mov	edx, DWORD PTR _lpCurrentSubtaskView$[ebp]
	cmp	DWORD PTR [edx+6], 0
	jne	SHORT $L8015

; 1522 :          fnDropView( lpCurrentSubtaskView );

	mov	eax, DWORD PTR _lpCurrentSubtaskView$[ebp]
	push	eax
	call	_fnDropView@4
$L8015:

; 1524 : 
; 1525 :    fnOperationReturn( iSetSubtaskView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	207					; 000000cfH
	call	_fnOperationReturn
	add	esp, 8

; 1526 :    return( 0 );

	xor	ax, ax
$L8002:

; 1527 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SfSetSubtaskView@8 ENDP
_TEXT	ENDS
PUBLIC	_SetDefaultViewForActiveTask@8
EXTRN	_SysGetProcessID@4:NEAR
EXTRN	_SysSendOE_Message@8:NEAR
EXTRN	_g_vRealTaskView:DWORD
EXTRN	__imp__atol:NEAR
EXTRN	_g_lProcessID:DWORD
_TEXT	SEGMENT
_vDefault$ = 8
_lFlag$ = 12
_vPrev$ = -8
_szTrace$ = -4
_lpTask$8026 = -12
_SetDefaultViewForActiveTask@8 PROC NEAR

; 1542 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 1543 :    zVIEW vPrev = g_vDefaultTaskView;

	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	DWORD PTR _vPrev$[ebp], eax

; 1544 :    zCHAR szTrace[ 2 ];
; 1545 : 
; 1546 :    if ( lFlag & 0x00000004 )

	mov	ecx, DWORD PTR _lFlag$[ebp]
	and	ecx, 4
	test	ecx, ecx
	je	SHORT $L8023

; 1548 :       vPrev = g_vRealTaskView;

	mov	edx, DWORD PTR _g_vRealTaskView
	mov	DWORD PTR _vPrev$[ebp], edx

; 1549 :       g_vRealTaskView = vDefault;

	mov	eax, DWORD PTR _vDefault$[ebp]
	mov	DWORD PTR _g_vRealTaskView, eax
$L8023:

; 1551 : 
; 1552 :    if ( lFlag & 0x00000001 )

	mov	ecx, DWORD PTR _lFlag$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8024

; 1554 :       g_vDefaultTaskView = vDefault;

	mov	edx, DWORD PTR _vDefault$[ebp]
	mov	DWORD PTR _g_vDefaultTaskView, edx

; 1555 :       g_lProcessID = SysGetProcessID( 0 );

	push	0
	call	_SysGetProcessID@4
	mov	DWORD PTR _g_lProcessID, eax
$L8024:

; 1557 : 
; 1558 :    if ( lFlag & 0x00000002 )

	mov	eax, DWORD PTR _lFlag$[ebp]
	and	eax, 2
	test	eax, eax
	je	SHORT $L8032

; 1560 :       LPTASK lpTask = 0;

	mov	DWORD PTR _lpTask$8026[ebp], 0

; 1561 : 
; 1562 :       if ( vDefault )

	cmp	DWORD PTR _vDefault$[ebp], 0
	je	SHORT $L8027

; 1563 :          lpTask  = zGETPTR( vDefault->hTask );

	mov	ecx, DWORD PTR _vDefault$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8026[ebp], eax

; 1564 :       else

	jmp	SHORT $L8030
$L8027:

; 1565 :       if ( g_vDefaultTaskView )

	cmp	DWORD PTR _g_vDefaultTaskView, 0
	je	SHORT $L8030

; 1566 :          lpTask = zGETPTR( g_vDefaultTaskView->hTask );

	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8026[ebp], eax
$L8030:

; 1567 : 
; 1568 :       if ( lpTask )

	cmp	DWORD PTR _lpTask$8026[ebp], 0
	je	SHORT $L8032

; 1569 :          lpTask->vWebSubtask = vDefault;

	mov	edx, DWORD PTR _lpTask$8026[ebp]
	mov	eax, DWORD PTR _vDefault$[ebp]
	mov	DWORD PTR [edx+28], eax
$L8032:

; 1571 : 
; 1572 :    szTrace[ 0 ] = (zCHAR) SysSendOE_Message( IDM_GETOEWARNINGTRACE, 0 );

	push	0
	push	215					; 000000d7H
	call	_SysSendOE_Message@8
	mov	BYTE PTR _szTrace$[ebp], al

; 1573 :    szTrace[ 1 ] = 0;

	mov	BYTE PTR _szTrace$[ebp+1], 0

; 1574 :    if ( szTrace[ 0 ] == 'n' || szTrace[ 0 ] == 'N' )

	movsx	ecx, BYTE PTR _szTrace$[ebp]
	cmp	ecx, 110				; 0000006eH
	je	SHORT $L8035
	movsx	edx, BYTE PTR _szTrace$[ebp]
	cmp	edx, 78					; 0000004eH
	jne	SHORT $L8034
$L8035:

; 1575 :       g_nOE_TraceWarning = 0;

	mov	WORD PTR _g_nOE_TraceWarning, 0

; 1576 :    else

	jmp	SHORT $L8039
$L8034:

; 1577 :    if ( szTrace[ 0 ] == 'y' || szTrace[ 0 ] == 'Y' )

	movsx	eax, BYTE PTR _szTrace$[ebp]
	cmp	eax, 121				; 00000079H
	je	SHORT $L8038
	movsx	ecx, BYTE PTR _szTrace$[ebp]
	cmp	ecx, 89					; 00000059H
	jne	SHORT $L8037
$L8038:

; 1578 :       g_nOE_TraceWarning = 99;

	mov	WORD PTR _g_nOE_TraceWarning, 99	; 00000063H

; 1579 :    else

	jmp	SHORT $L8039
$L8037:

; 1580 :       g_nOE_TraceWarning = (zSHORT) zatol( szTrace );

	lea	edx, DWORD PTR _szTrace$[ebp]
	push	edx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	WORD PTR _g_nOE_TraceWarning, ax
$L8039:

; 1581 : 
; 1582 :    return( vPrev );

	mov	eax, DWORD PTR _vPrev$[ebp]

; 1583 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SetDefaultViewForActiveTask@8 ENDP
_TEXT	ENDS
PUBLIC	_GetDefaultViewForActiveTask@0
_TEXT	SEGMENT
_GetDefaultViewForActiveTask@0 PROC NEAR

; 1587 : {

	push	ebp
	mov	ebp, esp

; 1588 :    return( g_vDefaultTaskView );

	mov	eax, DWORD PTR _g_vDefaultTaskView

; 1589 : }

	pop	ebp
	ret	0
_GetDefaultViewForActiveTask@0 ENDP
_TEXT	ENDS
PUBLIC	_SetNameForView@16
PUBLIC	??_C@_0HN@NDNE@SetNameForView?5sending?5in?5view?5f@ ; `string'
PUBLIC	??_C@_0GO@LMDH@SetNameForView?5sending?5in?5view?5f@ ; `string'
PUBLIC	??_C@_0CA@CCCN@?$CIvm?$CJ?5Invalid?5subtask?5?9?9?5name?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0EC@PBDN@?$CIvm?$CJ?5Naming?5non?9application?5leve@ ; `string'
PUBLIC	??_C@_0BN@GIHG@?$CIvm?$CJ?5Invalid?5view?5?9?9?5name?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0CG@GNGP@?$CIvm?$CJ?5Invalid?5scoping?5level?5?9?9?5na@ ; `string'
;	COMDAT ??_C@_0HN@NDNE@SetNameForView?5sending?5in?5view?5f@
; File C:\10C\A\oe\KZOEVMAA.C
_DATA	SEGMENT
??_C@_0HN@NDNE@SetNameForView?5sending?5in?5view?5f@ DB 'SetNameForView s'
	DB	'ending in view for TRANSIENT task: %d (0x%08x)  should be for'
	DB	' task: %d (0x%08x) ... WILL NOT RESET TASK VIEW', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0GO@LMDH@SetNameForView?5sending?5in?5view?5f@
_DATA	SEGMENT
??_C@_0GO@LMDH@SetNameForView?5sending?5in?5view?5f@ DB 'SetNameForView s'
	DB	'ending in view for task: %d (0x%08x)  should be for task: %d '
	DB	'(0x%08x) ... RESETTING TASK VIEW', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CA@CCCN@?$CIvm?$CJ?5Invalid?5subtask?5?9?9?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0CA@CCCN@?$CIvm?$CJ?5Invalid?5subtask?5?9?9?5name?5?$DN?5?$AA@ DB '('
	DB	'vm) Invalid subtask -- name = ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EC@PBDN@?$CIvm?$CJ?5Naming?5non?9application?5leve@
_DATA	SEGMENT
??_C@_0EC@PBDN@?$CIvm?$CJ?5Naming?5non?9application?5leve@ DB '(vm) Namin'
	DB	'g non-application level view at the application level: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@GIHG@?$CIvm?$CJ?5Invalid?5view?5?9?9?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BN@GIHG@?$CIvm?$CJ?5Invalid?5view?5?9?9?5name?5?$DN?5?$AA@ DB '(vm'
	DB	') Invalid view -- name = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CG@GNGP@?$CIvm?$CJ?5Invalid?5scoping?5level?5?9?9?5na@
_DATA	SEGMENT
??_C@_0CG@GNGP@?$CIvm?$CJ?5Invalid?5scoping?5level?5?9?9?5na@ DB '(vm) In'
	DB	'valid scoping level -- name = ', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcName$ = 12
_lpSubtaskView$ = 16
_nLevel$ = 20
_lpCurrentTask$ = -32
_lpTask$ = -12
_lpSubtask$ = -16
_lpViewName$ = -28
_hViewName$ = -4
_lpApp$ = -20
_bAutoDrop$ = -24
_nRC$ = -8
_lpTempView$8105 = -36
_lpTempView$8129 = -40
_lpTempView$8153 = -44
_lpTempView$8177 = -48
_SetNameForView@16 PROC NEAR

; 1629 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H

; 1630 :    LPTASK      lpCurrentTask;
; 1631 :    LPTASK      lpTask;
; 1632 :    LPSUBTASK   lpSubtask;
; 1633 :    LPVIEWNAME  lpViewName;
; 1634 :    zPVOID      hViewName;
; 1635 :    LPAPP       lpApp;
; 1636 :    zBOOL       bAutoDrop;
; 1637 :    zSHORT      nRC;
; 1638 : 
; 1639 : #if 1
; 1640 :    if ( lpSubtaskView == 0 )

	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	jne	SHORT $L8059

; 1642 :       if ( g_vDefaultTaskView )

	cmp	DWORD PTR _g_vDefaultTaskView, 0
	je	SHORT $L8060

; 1643 :          lpSubtaskView = g_vDefaultTaskView;  // must be called from Driver

	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	DWORD PTR _lpSubtaskView$[ebp], eax

; 1644 :       else

	jmp	SHORT $L8061
$L8060:

; 1645 :          lpSubtaskView = lpView;  // must be called from JSP

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR _lpSubtaskView$[ebp], ecx
$L8061:

; 1647 :    else

	jmp	$L8068
$L8059:

; 1648 :    if ( g_vDefaultTaskView && nLevel == zLEVEL_TASK )

	cmp	DWORD PTR _g_vDefaultTaskView, 0
	je	$L8068
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 2
	jne	$L8068

; 1650 :       if ( lpSubtaskView->hTask != g_vDefaultTaskView->hTask )

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	mov	ecx, DWORD PTR _g_vDefaultTaskView
	mov	edx, DWORD PTR [eax+14]
	cmp	edx, DWORD PTR [ecx+14]
	je	$L8068

; 1652 :          lpCurrentTask = zGETPTR( lpSubtaskView->hTask );

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 1653 :          if ( lpCurrentTask && lpCurrentTask->bTransientTask )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	je	SHORT $L8066
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	eax, DWORD PTR [edx+443]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8066

; 1655 :             TraceLine( "SetNameForView sending in view for TRANSIENT task: %d (0x%08x)  "
; 1656 :                          "should be for task: %d (0x%08x) ... WILL NOT RESET TASK VIEW",
; 1657 :                        lpSubtaskView->hTask, lpSubtaskView->hTask,
; 1658 :                        g_vDefaultTaskView->hTask, g_vDefaultTaskView->hTask );

	mov	ecx, DWORD PTR _g_vDefaultTaskView
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	push	OFFSET FLAT:??_C@_0HN@NDNE@SetNameForView?5sending?5in?5view?5f@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H

; 1660 :          else

	jmp	SHORT $L8068
$L8066:

; 1662 :          // SysMessageBox( 0, "Zeidon OE", "SetNameForView now RESETTING TASK VIEW", 0 );
; 1663 :             if ( g_nOE_TraceWarning )

	movsx	eax, WORD PTR _g_nOE_TraceWarning
	test	eax, eax
	je	SHORT $L8069

; 1665 :                TraceLine( "SetNameForView sending in view for task: %d (0x%08x)  "
; 1666 :                             "should be for task: %d (0x%08x) ... RESETTING TASK VIEW",
; 1667 :                           lpSubtaskView->hTask, lpSubtaskView->hTask,
; 1668 :                           g_vDefaultTaskView->hTask, g_vDefaultTaskView->hTask );

	mov	ecx, DWORD PTR _g_vDefaultTaskView
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	push	OFFSET FLAT:??_C@_0GO@LMDH@SetNameForView?5sending?5in?5view?5f@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H
$L8069:

; 1670 : 
; 1671 :             lpSubtaskView = g_vDefaultTaskView;

	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	DWORD PTR _lpSubtaskView$[ebp], eax
$L8068:

; 1675 : #endif
; 1676 : 
; 1677 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 1678 :    if ( (lpCurrentTask = fnOperationCall( iSetNameForView, lpView,
; 1679 :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	204					; 000000ccH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8071

; 1681 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8050
$L8071:

; 1683 : 
; 1684 :    if ( zstrlen( cpcName ) > zZEIDON_NAME_LTH * 2 )

	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	cmp	eax, 64					; 00000040H
	jbe	SHORT $L8072

; 1686 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 450, 0, cpcName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcName$[ebp]
	push	eax
	push	0
	push	450					; 000001c2H
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1687 :       fnOperationReturn( iSetNameForView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	204					; 000000ccH
	call	_fnOperationReturn
	add	esp, 8

; 1688 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8050
$L8072:

; 1690 : 
; 1691 : #if 0
; 1692 : // if ( zstrcmp( cpcName, "vERD_LPLR" ) == 0 )
; 1693 :    if ( cpcName[ 0 ] != '_' )
; 1694 :    TraceLine( "SetNameForView (0x%08x) %s   Task: 0x%08x   Level: %s",
; 1695 :               lpView, cpcName,
; 1696 :               lpSubtaskView ? lpSubtaskView->hTask : lpView->hTask,
; 1697 :               nLevel & 1 ? "SUBTASK" : nLevel & 2 ? "TASK" : nLevel & 4 ?
; 1698 :                 "APPLICATION" : nLevel & 8 ? "SYSTEM" : "UNKNOWN" );
; 1699 : #endif
; 1700 : 
; 1701 :    if ( (nLevel & zLEVEL_SUBTASK) &&
; 1702 :         (fnValidSubtaskView( lpCurrentTask, lpSubtaskView )) == 0 )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8073
	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnValidSubtaskView
	add	esp, 8
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L8073

; 1704 :       TraceLineS( "(vm) Invalid subtask -- name = ", cpcName );

	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CA@CCCN@?$CIvm?$CJ?5Invalid?5subtask?5?9?9?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1705 :       fnOperationReturn( iSetNameForView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	204					; 000000ccH
	call	_fnOperationReturn
	add	esp, 8

; 1706 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8050
$L8073:

; 1708 : 
; 1709 :    if ( (nLevel & zLEVEL_APPLICATION) || lpSubtaskView )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	and	ecx, 4
	test	ecx, ecx
	jne	SHORT $L8076
	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	je	$L8075
$L8076:

; 1711 :       // If level is application but lpSubtaskView is not specified, then
; 1712 :       // use the lpView.
; 1713 :       if ( lpSubtaskView == 0 )

	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	jne	SHORT $L8077

; 1714 :          lpSubtaskView = lpView;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR _lpSubtaskView$[ebp], edx
$L8077:

; 1715 : 
; 1716 :       // Since we are using the passed view in SetNameForView, we should
; 1717 :       // probably use the task of the passed view as the task on which to
; 1718 :       // hang the name.
; 1719 :       lpTask = zGETPTR( lpSubtaskView->hTask );

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$[ebp], eax

; 1720 :       if ( (nLevel & zLEVEL_APPLICATION) &&
; 1721 :            lpView->bApplicationView == FALSE &&
; 1722 :            lpTask->bApplicationTask == FALSE &&
; 1723 :            lpView->hTask != AnchorBlock->hMainTask )

	movsx	edx, WORD PTR _nLevel$[ebp]
	and	edx, 4
	test	edx, edx
	je	SHORT $L8079
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8079
	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+443]
	shr	eax, 13					; 0000000dH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8079
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [ecx+14]
	cmp	eax, DWORD PTR [edx+106]
	je	SHORT $L8079

; 1725 :       // static zSHORT k = 0;
; 1726 :       // zCHAR szDebug[ 2 ];
; 1727 : 
; 1728 :          TraceLineS( "(vm) Naming non-application level view at the application level: ",
; 1729 :                      cpcName );

	mov	ecx, DWORD PTR _cpcName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0EC@PBDN@?$CIvm?$CJ?5Naming?5non?9application?5leve@ ; `string'
	call	_TraceLineS@8
$L8079:

; 1738 : 
; 1739 :       if ( fnValidView( lpCurrentTask, lpSubtaskView ) == 0 )

	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnValidView
	add	esp, 8
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L8081

; 1741 :          TraceLineS( "(vm) Invalid view -- name = ", cpcName );

	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BN@GIHG@?$CIvm?$CJ?5Invalid?5view?5?9?9?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1742 :          fnOperationReturn( iSetNameForView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	204					; 000000ccH
	call	_fnOperationReturn
	add	esp, 8

; 1743 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8050
$L8081:

; 1746 :    else

	jmp	SHORT $L8083
$L8075:

; 1747 :       lpTask = lpCurrentTask;

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	mov	DWORD PTR _lpTask$[ebp], ecx
$L8083:

; 1748 : 
; 1749 :    if ( nLevel & zNAME_AUTODROP )

	movsx	edx, WORD PTR _nLevel$[ebp]
	and	edx, 64					; 00000040H
	test	edx, edx
	je	SHORT $L8084

; 1751 :       bAutoDrop = TRUE;

	mov	BYTE PTR _bAutoDrop$[ebp], 1

; 1752 :       nLevel -= zNAME_AUTODROP;

	mov	ax, WORD PTR _nLevel$[ebp]
	sub	ax, 64					; 00000040H
	mov	WORD PTR _nLevel$[ebp], ax

; 1754 :    else

	jmp	SHORT $L8085
$L8084:

; 1755 :       bAutoDrop = 0;

	mov	BYTE PTR _bAutoDrop$[ebp], 0
$L8085:

; 1756 : 
; 1757 :    // Check for valid scope.
; 1758 :    if ( (nLevel & zLEVEL_SUBTASK) == 0     && (nLevel & zLEVEL_TASK) == 0   &&
; 1759 :         (nLevel & zLEVEL_APPLICATION) == 0 && (nLevel & zLEVEL_SYSTEM) == 0 &&
; 1760 :         (nLevel & zLEVEL_ANY) == 0 )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8086
	movsx	edx, WORD PTR _nLevel$[ebp]
	and	edx, 2
	test	edx, edx
	jne	SHORT $L8086
	movsx	eax, WORD PTR _nLevel$[ebp]
	and	eax, 4
	test	eax, eax
	jne	SHORT $L8086
	movsx	ecx, WORD PTR _nLevel$[ebp]
	and	ecx, 8
	test	ecx, ecx
	jne	SHORT $L8086
	movsx	edx, WORD PTR _nLevel$[ebp]
	and	edx, 15					; 0000000fH
	test	edx, edx
	jne	SHORT $L8086

; 1762 :       //  "KZOEE110 - Invalid scope for View name"
; 1763 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 110, (zLONG) nLevel, 0, 0 );

	push	0
	push	0
	movsx	eax, WORD PTR _nLevel$[ebp]
	push	eax
	push	110					; 0000006eH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1764 :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 1765 :       TraceLineS( "(vm) Invalid scoping level -- name = ", cpcName );

	mov	eax, DWORD PTR _cpcName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CG@GNGP@?$CIvm?$CJ?5Invalid?5scoping?5level?5?9?9?5na@ ; `string'
	call	_TraceLineS@8
$L8086:

; 1767 : 
; 1768 :    // Depending on the scope parameter, check the appropriate name chain
; 1769 :    // for the name being created.
; 1770 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1771 :    if ( cpcName && cpcName[ 0 ] )

	cmp	DWORD PTR _cpcName$[ebp], 0
	je	$L8188
	mov	ecx, DWORD PTR _cpcName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	$L8188

; 1773 :       if ( nLevel == zLEVEL_SUBTASK )

	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 1
	jne	$L8090

; 1775 :          // First, see if the name exists in the subtask.
; 1776 :          lpSubtask = zGETPTR( lpSubtaskView->hSubtask );

	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 1777 :          lpViewName = zGETPTR( lpSubtask->hFirstViewName );

	mov	eax, DWORD PTR _lpSubtask$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8094:

; 1778 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8095

; 1780 :             if ( zstrcmp( lpViewName->szName, cpcName ) == 0 )

	mov	edx, DWORD PTR _lpViewName$[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _cpcName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L9209
	mov	eax, DWORD PTR _cpcName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -52+[ebp], eax
	jmp	SHORT $L9210
$L9209:
	mov	edx, DWORD PTR _lpViewName$[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _cpcName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -52+[ebp], ecx
$L9210:
	cmp	DWORD PTR -52+[ebp], 0
	jne	SHORT $L8102

; 1781 :                break;

	jmp	SHORT $L8095
$L8102:

; 1782 : 
; 1783 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1784 :          }

	jmp	SHORT $L8094
$L8095:

; 1785 : 
; 1786 :          // If the view name was found, change it to point to the view
; 1787 :          // just passed in.
; 1788 :          if ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8104

; 1790 :             zVIEW lpTempView = zGETPTR( lpViewName->hView );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempView$8105[ebp], eax

; 1791 : 
; 1792 :             lpTempView->nViewNames--;

	mov	eax, DWORD PTR _lpTempView$8105[ebp]
	mov	cx, WORD PTR [eax+22]
	sub	cx, 1
	mov	edx, DWORD PTR _lpTempView$8105[ebp]
	mov	WORD PTR [edx+22], cx

; 1793 :             lpViewName->hView = zGETHNDL( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR [ecx+2], eax

; 1794 :             lpView->nViewNames++;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	ax, WORD PTR [edx+22]
	add	ax, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [ecx+22], ax

; 1796 :          else

	jmp	$L8113
$L8104:

; 1798 :             hViewName = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 1799 :                                           sizeof( ViewNameRecord ), 0, 0,
; 1800 :                                           iViewName );

	push	10022					; 00002726H
	push	0
	push	0
	push	75					; 0000004bH
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+114]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hViewName$[ebp], eax

; 1801 :             lpViewName = zGETPTR( hViewName );

	mov	ecx, DWORD PTR _hViewName$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1802 :             if ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8111

; 1804 :                zstrcpy( lpViewName->szName, cpcName );

	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcpy
	add	esp, 8

; 1805 :                lpViewName->hView = zGETHNDL( lpView );

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR [edx+2], eax

; 1806 :                lpView->nViewNames++;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	cx, WORD PTR [eax+22]
	add	cx, 1
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [edx+22], cx

; 1807 :                lpViewName->hNextViewName = lpSubtask->hFirstViewName;

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR _lpSubtask$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	mov	DWORD PTR [eax+6], edx

; 1808 :                lpSubtask->hFirstViewName = hViewName;

	mov	eax, DWORD PTR _lpSubtask$[ebp]
	mov	ecx, DWORD PTR _hViewName$[ebp]
	mov	DWORD PTR [eax+18], ecx

; 1810 :             else

	jmp	SHORT $L8113
$L8111:

; 1811 :                nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L8113:

; 1814 :       else

	jmp	$L8186
$L8090:

; 1815 :       if ( nLevel == zLEVEL_TASK )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 2
	jne	$L8115

; 1817 :          // First, see if the name exists in the task.
; 1818 :          lpViewName = zGETPTR( lpTask->hFirstViewName );

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR [eax+110]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8118:

; 1819 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8119

; 1821 :             if ( zstrcmp( lpViewName->szName, cpcName ) == 0 )

	mov	edx, DWORD PTR _lpViewName$[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _cpcName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L9211
	mov	eax, DWORD PTR _cpcName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -56+[ebp], eax
	jmp	SHORT $L9212
$L9211:
	mov	edx, DWORD PTR _lpViewName$[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _cpcName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -56+[ebp], ecx
$L9212:
	cmp	DWORD PTR -56+[ebp], 0
	jne	SHORT $L8126

; 1822 :                break;

	jmp	SHORT $L8119
$L8126:

; 1823 : 
; 1824 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1825 :          }

	jmp	SHORT $L8118
$L8119:

; 1826 : 
; 1827 :          // If the view name was found, change it to point to the view
; 1828 :          // just passed in.
; 1829 :          if ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8128

; 1831 :             zVIEW lpTempView = zGETPTR( lpViewName->hView );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempView$8129[ebp], eax

; 1832 : 
; 1833 :             lpTempView->nViewNames--;

	mov	eax, DWORD PTR _lpTempView$8129[ebp]
	mov	cx, WORD PTR [eax+22]
	sub	cx, 1
	mov	edx, DWORD PTR _lpTempView$8129[ebp]
	mov	WORD PTR [edx+22], cx

; 1834 :             lpViewName->hView = zGETHNDL( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR [ecx+2], eax

; 1835 :             lpView->nViewNames++;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	ax, WORD PTR [edx+22]
	add	ax, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [ecx+22], ax

; 1836 :             lpView->bTaskNamed = TRUE;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	or	al, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [ecx+30], eax

; 1838 :          else

	jmp	$L8137
$L8128:

; 1840 :             hViewName = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 1841 :                                           sizeof( ViewNameRecord ), 0, 0,
; 1842 :                                           iViewName );

	push	10022					; 00002726H
	push	0
	push	0
	push	75					; 0000004bH
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+114]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hViewName$[ebp], eax

; 1843 :             lpViewName = zGETPTR( hViewName );

	mov	ecx, DWORD PTR _hViewName$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1844 :             if ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8135

; 1846 :                zstrcpy( lpViewName->szName, cpcName );

	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcpy
	add	esp, 8

; 1847 :                lpViewName->hView = zGETHNDL( lpView );

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR [edx+2], eax

; 1848 :                lpView->nViewNames++;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	cx, WORD PTR [eax+22]
	add	cx, 1
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [edx+22], cx

; 1849 :                lpView->bTaskNamed = TRUE;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	or	ecx, 1
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [edx+30], ecx

; 1850 :                lpViewName->hNextViewName = lpTask->hFirstViewName;

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+110]
	mov	DWORD PTR [eax+6], edx

; 1851 :                lpTask->hFirstViewName = hViewName;

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR _hViewName$[ebp]
	mov	DWORD PTR [eax+110], ecx

; 1853 :             else

	jmp	SHORT $L8137
$L8135:

; 1854 :                nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L8137:

; 1857 :       else

	jmp	$L8186
$L8115:

; 1858 :       if ( nLevel == zLEVEL_APPLICATION )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 4
	jne	$L8139

; 1860 :          // First, see if the name exists at the application level.
; 1861 :          // The application level is determined by the view being named.
; 1862 :          // If the view being named is a subtask view, then the application
; 1863 :          // is the application for the subtask. Otherwise, if the view has a
; 1864 :          // ViewOD, the application is the app for the ViewOD. If all else
; 1865 :          // fails, we will use the application associated with the task.
; 1866 : 
; 1867 :          fnGetApplicationForSubtask( &lpApp, lpSubtaskView );

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpApp$[ebp]
	push	ecx
	call	_fnGetApplicationForSubtask@8

; 1868 :          lpViewName = zGETPTR( lpApp->hFirstViewName );

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+1893]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8142:

; 1869 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8143

; 1871 :             if ( zstrcmp( lpViewName->szName, cpcName ) == 0 )

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L9213
	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -60+[ebp], eax
	jmp	SHORT $L9214
$L9213:
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -60+[ebp], eax
$L9214:
	cmp	DWORD PTR -60+[ebp], 0
	jne	SHORT $L8150

; 1872 :                break;

	jmp	SHORT $L8143
$L8150:

; 1873 : 
; 1874 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1875 :          }

	jmp	SHORT $L8142
$L8143:

; 1876 : 
; 1877 :          // If the view name was found, change it to point to the view
; 1878 :          // just passed in
; 1879 :          if ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8152

; 1881 :             zVIEW lpTempView = zGETPTR( lpViewName->hView );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempView$8153[ebp], eax

; 1882 : 
; 1883 :             lpTempView->nViewNames--;

	mov	edx, DWORD PTR _lpTempView$8153[ebp]
	mov	ax, WORD PTR [edx+22]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpTempView$8153[ebp]
	mov	WORD PTR [ecx+22], ax

; 1884 :             lpViewName->hView = zGETHNDL( lpView );

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR [ecx+2], eax

; 1885 :             lpView->nViewNames++;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	ax, WORD PTR [edx+22]
	add	ax, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [ecx+22], ax

; 1886 :             lpView->bApplicationNamed = TRUE;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	or	al, 2
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [ecx+30], eax

; 1888 :          else

	jmp	$L8161
$L8152:

; 1890 :             hViewName = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 1891 :                                           sizeof( ViewNameRecord ), 0, 0,
; 1892 :                                           iViewName );

	push	10022					; 00002726H
	push	0
	push	0
	push	75					; 0000004bH
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+114]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hViewName$[ebp], eax

; 1893 :             lpViewName = zGETPTR( hViewName );

	mov	ecx, DWORD PTR _hViewName$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1894 :             if ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8159

; 1896 :                zstrcpy( lpViewName->szName, cpcName );

	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcpy
	add	esp, 8

; 1897 :                lpViewName->hView = zGETHNDL( lpView );

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR [edx+2], eax

; 1898 :                lpView->nViewNames++;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	cx, WORD PTR [eax+22]
	add	cx, 1
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [edx+22], cx

; 1899 :                lpView->bApplicationNamed = TRUE;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	or	ecx, 2
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [edx+30], ecx

; 1900 :                lpViewName->hNextViewName = lpApp->hFirstViewName;

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR [ecx+1893]
	mov	DWORD PTR [eax+6], edx

; 1901 :                lpApp->hFirstViewName = hViewName;

	mov	eax, DWORD PTR _lpApp$[ebp]
	mov	ecx, DWORD PTR _hViewName$[ebp]
	mov	DWORD PTR [eax+1893], ecx

; 1903 :             else

	jmp	SHORT $L8161
$L8159:

; 1904 :                nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L8161:

; 1907 :       else

	jmp	$L8186
$L8139:

; 1908 :       if ( nLevel == zLEVEL_SYSTEM )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 8
	jne	$L8163

; 1910 :          zLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysLockCoreMutex@4

; 1911 : 
; 1912 :          // First, see if the name exists at the system level
; 1913 :          lpViewName = zGETPTR( AnchorBlock->hFirstViewName );

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+1489]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8166:

; 1914 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8167

; 1916 :             if ( zstrcmp( lpViewName->szName, cpcName ) == 0 )

	mov	edx, DWORD PTR _lpViewName$[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _cpcName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L9215
	mov	eax, DWORD PTR _cpcName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -64+[ebp], eax
	jmp	SHORT $L9216
$L9215:
	mov	edx, DWORD PTR _lpViewName$[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _cpcName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -64+[ebp], ecx
$L9216:
	cmp	DWORD PTR -64+[ebp], 0
	jne	SHORT $L8174

; 1917 :                break;

	jmp	SHORT $L8167
$L8174:

; 1918 : 
; 1919 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1920 :          }

	jmp	SHORT $L8166
$L8167:

; 1921 : 
; 1922 :          // If the view name was found, change it to point to the view
; 1923 :          // just passed in
; 1924 :          if ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8176

; 1926 :             zVIEW lpTempView = zGETPTR( lpViewName->hView );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempView$8177[ebp], eax

; 1927 : 
; 1928 :             lpTempView->nViewNames--;

	mov	eax, DWORD PTR _lpTempView$8177[ebp]
	mov	cx, WORD PTR [eax+22]
	sub	cx, 1
	mov	edx, DWORD PTR _lpTempView$8177[ebp]
	mov	WORD PTR [edx+22], cx

; 1929 :             lpViewName->hView = zGETHNDL( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR [ecx+2], eax

; 1930 :             lpView->nViewNames++;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	ax, WORD PTR [edx+22]
	add	ax, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [ecx+22], ax

; 1931 :             lpView->bSystemNamed = TRUE;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	or	al, 4
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [ecx+30], eax

; 1933 :          else

	jmp	$L8185
$L8176:

; 1935 :             hViewName = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 1936 :                                           sizeof( ViewNameRecord ), 0, 0,
; 1937 :                                           iViewName );

	push	10022					; 00002726H
	push	0
	push	0
	push	75					; 0000004bH
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+114]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hViewName$[ebp], eax

; 1938 :             lpViewName = zGETPTR( hViewName );

	mov	ecx, DWORD PTR _hViewName$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1939 :             if ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8183

; 1941 :                zstrcpy( lpViewName->szName, cpcName );

	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcpy
	add	esp, 8

; 1942 :                lpViewName->hView = zGETHNDL( lpView );

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR [edx+2], eax

; 1943 :                lpView->nViewNames++;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	cx, WORD PTR [eax+22]
	add	cx, 1
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [edx+22], cx

; 1944 :                lpView->bSystemNamed = TRUE;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	or	ecx, 4
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [edx+30], ecx

; 1945 :                lpViewName->hNextViewName = AnchorBlock->hFirstViewName;

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+1489]
	mov	DWORD PTR [eax+6], edx

; 1946 :                AnchorBlock->hFirstViewName = hViewName;

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR _hViewName$[ebp]
	mov	DWORD PTR [eax+1489], ecx

; 1948 :             else

	jmp	SHORT $L8185
$L8183:

; 1949 :                nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L8185:

; 1951 : 
; 1952 :          zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4

; 1954 :       else

	jmp	SHORT $L8186
$L8163:

; 1956 :          //  "KZOEE110 - Invalid scope for View name"
; 1957 :          fnIssueCoreError( lpCurrentTask, lpView, 8, 110, (zLONG) nLevel, 0, 0 );

	push	0
	push	0
	movsx	edx, WORD PTR _nLevel$[ebp]
	push	edx
	push	110					; 0000006eH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1958 :          lpViewName = 0;

	mov	DWORD PTR _lpViewName$[ebp], 0

; 1959 :          nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L8186:

; 1961 : 
; 1962 :       // Now that the name has been created, increment the autodrop
; 1963 :       // counter if autodrop was specified
; 1964 :       if ( bAutoDrop && lpViewName )

	mov	edx, DWORD PTR _bAutoDrop$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L8188
	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8188

; 1966 :          lpView->nAutoDropNames++;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	cx, WORD PTR [eax+24]
	add	cx, 1
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [edx+24], cx
$L8188:

; 1969 : 
; 1970 :    fnOperationReturn( iSetNameForView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	204					; 000000ccH
	call	_fnOperationReturn
	add	esp, 8

; 1971 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8050:

; 1972 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_SetNameForView@16 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0CI@FIDN@GetViewByName?5now?5requires?5a?5val@ ; `string'
PUBLIC	??_C@_08BNKB@OE?5Error?$AA@			; `string'
PUBLIC	??_C@_0HM@CFEK@GetViewByName?5sending?5in?5view?5fo@ ; `string'
PUBLIC	??_C@_0GN@MDJH@GetViewByName?5sending?5in?5view?5fo@ ; `string'
PUBLIC	??_C@_0CM@BCGA@GetViewByName?5Invalid?5scope?5for?5@ ; `string'
PUBLIC	??_C@_0BN@GMFL@GetViewByName?5Length?5Error?3?5?$AA@ ; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_0BL@CMP@GetViewByName?5?9?5Empty?5name?$AA@ ; `string'
PUBLIC	??_C@_0CO@BOP@GetViewByName?5Invalid?5Subtask?5vi@ ; `string'
PUBLIC	??_C@_0CG@OLKB@GetViewByName?5Invalid?5view?5for?5N@ ; `string'
PUBLIC	??_C@_0DA@NIDI@GetViewByName?5Invalid?5Subtask?5?$CIn@ ; `string'
PUBLIC	??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ ; `string'
PUBLIC	??_C@_09GJLM@NOT?5FOUND?$AA@			; `string'
PUBLIC	??_C@_07DBNL@SUBTASK?$AA@			; `string'
PUBLIC	??_C@_04LGGC@TASK?$AA@				; `string'
PUBLIC	??_C@_0M@LKKI@APPLICATION?$AA@			; `string'
PUBLIC	??_C@_06LDDL@SYSTEM?$AA@			; `string'
PUBLIC	??_C@_07CNPM@UNKNOWN?$AA@			; `string'
PUBLIC	??_C@_03ENCN@ANY?$AA@				; `string'
PUBLIC	??_C@_0GG@DEDH@GetViewByName?5TRANSIENT?5ERROR?5?$CI0@ ; `string'
PUBLIC	_GetViewByName@16
EXTRN	_SysMessageBox@16:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\A\oe\KZOEVMAA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0CI@FIDN@GetViewByName?5now?5requires?5a?5val@
_DATA	SEGMENT
??_C@_0CI@FIDN@GetViewByName?5now?5requires?5a?5val@ DB 'GetViewByName no'
	DB	'w requires a valid view', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08BNKB@OE?5Error?$AA@
_DATA	SEGMENT
??_C@_08BNKB@OE?5Error?$AA@ DB 'OE Error', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0HM@CFEK@GetViewByName?5sending?5in?5view?5fo@
_DATA	SEGMENT
??_C@_0HM@CFEK@GetViewByName?5sending?5in?5view?5fo@ DB 'GetViewByName se'
	DB	'nding in view for TRANSIENT task: %d (0x%08x)  should be for '
	DB	'task: %d (0x%08x) ... WILL NOT RESET TASK VIEW', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0GN@MDJH@GetViewByName?5sending?5in?5view?5fo@
_DATA	SEGMENT
??_C@_0GN@MDJH@GetViewByName?5sending?5in?5view?5fo@ DB 'GetViewByName se'
	DB	'nding in view for task: %d (0x%08x)  should be for task: %d ('
	DB	'0x%08x) ... RESETTING TASK VIEW', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CM@BCGA@GetViewByName?5Invalid?5scope?5for?5@
_DATA	SEGMENT
??_C@_0CM@BCGA@GetViewByName?5Invalid?5scope?5for?5@ DB 'GetViewByName In'
	DB	'valid scope for View name: ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@GMFL@GetViewByName?5Length?5Error?3?5?$AA@
_DATA	SEGMENT
??_C@_0BN@GMFL@GetViewByName?5Length?5Error?3?5?$AA@ DB 'GetViewByName Le'
	DB	'ngth Error: ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@CMP@GetViewByName?5?9?5Empty?5name?$AA@
_DATA	SEGMENT
??_C@_0BL@CMP@GetViewByName?5?9?5Empty?5name?$AA@ DB 'GetViewByName - Emp'
	DB	'ty name', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CO@BOP@GetViewByName?5Invalid?5Subtask?5vi@
_DATA	SEGMENT
??_C@_0CO@BOP@GetViewByName?5Invalid?5Subtask?5vi@ DB 'GetViewByName Inva'
	DB	'lid Subtask view for Name: ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CG@OLKB@GetViewByName?5Invalid?5view?5for?5N@
_DATA	SEGMENT
??_C@_0CG@OLKB@GetViewByName?5Invalid?5view?5for?5N@ DB 'GetViewByName In'
	DB	'valid view for Name: ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DA@NIDI@GetViewByName?5Invalid?5Subtask?5?$CIn@
_DATA	SEGMENT
??_C@_0DA@NIDI@GetViewByName?5Invalid?5Subtask?5?$CIn@ DB 'GetViewByName '
	DB	'Invalid Subtask (null) for Name: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@
_DATA	SEGMENT
??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ DB 'Zeidon DBHandler '
	DB	'Work Object', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_09GJLM@NOT?5FOUND?$AA@
_DATA	SEGMENT
??_C@_09GJLM@NOT?5FOUND?$AA@ DB 'NOT FOUND', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_07DBNL@SUBTASK?$AA@
_DATA	SEGMENT
??_C@_07DBNL@SUBTASK?$AA@ DB 'SUBTASK', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_04LGGC@TASK?$AA@
_DATA	SEGMENT
??_C@_04LGGC@TASK?$AA@ DB 'TASK', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@LKKI@APPLICATION?$AA@
_DATA	SEGMENT
??_C@_0M@LKKI@APPLICATION?$AA@ DB 'APPLICATION', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_06LDDL@SYSTEM?$AA@
_DATA	SEGMENT
??_C@_06LDDL@SYSTEM?$AA@ DB 'SYSTEM', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_07CNPM@UNKNOWN?$AA@
_DATA	SEGMENT
??_C@_07CNPM@UNKNOWN?$AA@ DB 'UNKNOWN', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_03ENCN@ANY?$AA@
_DATA	SEGMENT
??_C@_03ENCN@ANY?$AA@ DB 'ANY', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0GG@DEDH@GetViewByName?5TRANSIENT?5ERROR?5?$CI0@
_DATA	SEGMENT
??_C@_0GG@DEDH@GetViewByName?5TRANSIENT?5ERROR?5?$CI0@ DB 'GetViewByName '
	DB	'TRANSIENT ERROR (0x%08x/0x%08x)  %s   View/Task: 0x%08x/0x%08'
	DB	'x   Level: %s   RC ===> %s', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpSubtaskView$ = 16
_nLevel$ = 20
_lpCurrentTask$ = -28
_hCurrentTask$ = -20
_vSubtask$ = -16
_lpSubtask$ = -8
_lpViewName$ = -24
_lpApp$ = -12
_nRC$ = -4
_lpTask$8263 = -36
_lpVName$8264 = -32
_lpTask$8311 = -40
_pvReturnView$ = 8
_cpcName$ = 12
_GetViewByName@16 PROC NEAR

; 2009 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 100				; 00000064H

; 2010 :    LPTASK      lpCurrentTask;
; 2011 :    LPTASK      hCurrentTask;
; 2012 :    zVIEW       vSubtask;
; 2013 :    LPSUBTASK   lpSubtask;
; 2014 :    LPVIEWNAME  lpViewName;
; 2015 :    LPAPP       lpApp;
; 2016 :    zSHORT      nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 2017 : 
; 2018 :    *pvReturnView = 0;  // initialize return view to NULL

	mov	eax, DWORD PTR _pvReturnView$[ebp]
	mov	DWORD PTR [eax], 0

; 2019 : 
; 2020 :    vSubtask = lpSubtaskView;

	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	mov	DWORD PTR _vSubtask$[ebp], ecx

; 2021 : 
; 2022 :    if ( lpSubtaskView )

	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	je	SHORT $L8205

; 2023 :       hCurrentTask = lpSubtaskView->hTask;

	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR _hCurrentTask$[ebp], eax

; 2024 :    else

	jmp	SHORT $L8206
$L8205:

; 2025 :       hCurrentTask = 0;

	mov	DWORD PTR _hCurrentTask$[ebp], 0
$L8206:

; 2026 : 
; 2027 : #if 1
; 2028 :    if ( lpSubtaskView == 0 )

	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	jne	SHORT $L8207

; 2030 :       if ( g_vDefaultTaskView )

	cmp	DWORD PTR _g_vDefaultTaskView, 0
	je	SHORT $L8208

; 2031 :          lpSubtaskView = g_vDefaultTaskView;

	mov	ecx, DWORD PTR _g_vDefaultTaskView
	mov	DWORD PTR _lpSubtaskView$[ebp], ecx

; 2032 :       else

	jmp	SHORT $L8209
$L8208:

; 2033 :          SysMessageBox( 0, "OE Error", "GetViewByName now requires a valid view", -1 );

	push	-1
	push	OFFSET FLAT:??_C@_0CI@FIDN@GetViewByName?5now?5requires?5a?5val@ ; `string'
	push	OFFSET FLAT:??_C@_08BNKB@OE?5Error?$AA@	; `string'
	push	0
	call	_SysMessageBox@16
$L8209:

; 2035 :    else

	jmp	$L8218
$L8207:

; 2036 :    if ( g_vDefaultTaskView && nLevel == zLEVEL_TASK )

	cmp	DWORD PTR _g_vDefaultTaskView, 0
	je	$L8218
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 2
	jne	$L8218

; 2038 :       if ( lpSubtaskView->hTask != g_vDefaultTaskView->hTask )

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	mov	ecx, DWORD PTR _g_vDefaultTaskView
	mov	edx, DWORD PTR [eax+14]
	cmp	edx, DWORD PTR [ecx+14]
	je	$L8218

; 2040 :          lpCurrentTask = zGETPTR( lpSubtaskView->hTask );

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 2041 :          if ( lpCurrentTask && lpCurrentTask->bTransientTask )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	je	SHORT $L8216
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	eax, DWORD PTR [edx+443]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8216

; 2043 :             TraceLine( "GetViewByName sending in view for TRANSIENT task: %d (0x%08x)  "
; 2044 :                          "should be for task: %d (0x%08x) ... WILL NOT RESET TASK VIEW",
; 2045 :                        lpSubtaskView->hTask, lpSubtaskView->hTask,
; 2046 :                        g_vDefaultTaskView->hTask, g_vDefaultTaskView->hTask );

	mov	ecx, DWORD PTR _g_vDefaultTaskView
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	push	OFFSET FLAT:??_C@_0HM@CFEK@GetViewByName?5sending?5in?5view?5fo@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H

; 2048 :          else

	jmp	SHORT $L8218
$L8216:

; 2050 :          // SysMessageBox( 0, "Zeidon OE", "GetViewByName now RESETTING TASK VIEW", 0 );
; 2051 :             if ( g_nOE_TraceWarning )

	movsx	eax, WORD PTR _g_nOE_TraceWarning
	test	eax, eax
	je	SHORT $L8219

; 2053 :                TraceLine( "GetViewByName sending in view for task: %d (0x%08x)  "
; 2054 :                             "should be for task: %d (0x%08x) ... RESETTING TASK VIEW",
; 2055 :                           lpSubtaskView->hTask, lpSubtaskView->hTask,
; 2056 :                           g_vDefaultTaskView->hTask, g_vDefaultTaskView->hTask );

	mov	ecx, DWORD PTR _g_vDefaultTaskView
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	push	OFFSET FLAT:??_C@_0GN@MDJH@GetViewByName?5sending?5in?5view?5fo@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H
$L8219:

; 2058 : 
; 2059 :             lpSubtaskView = g_vDefaultTaskView;

	mov	eax, DWORD PTR _g_vDefaultTaskView
	mov	DWORD PTR _lpSubtaskView$[ebp], eax
$L8218:

; 2063 : #endif
; 2064 : 
; 2065 :    // If task not active or disabled, return zCALL_ERROR.
; 2066 :    if ( (lpCurrentTask = fnOperationCall( iGetViewByName, lpSubtaskView, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	push	ecx
	push	206					; 000000ceH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8221

; 2068 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8197
$L8221:

; 2078 :       // Check for valid scope.
; 2079 :       if ( nLevel != zLEVEL_SUBTASK     && nLevel != zLEVEL_TASK   &&
; 2080 :            nLevel != zLEVEL_APPLICATION && nLevel != zLEVEL_SYSTEM &&
; 2081 :            nLevel != zLEVEL_ANY )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 1
	je	SHORT $L8225
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 2
	je	SHORT $L8225
	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 4
	je	SHORT $L8225
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 8
	je	SHORT $L8225
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 15					; 0000000fH
	je	SHORT $L8225

; 2083 :          TraceLineS( "GetViewByName Invalid scope for View name: ", cpcName );

	mov	ecx, DWORD PTR _cpcName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CM@BCGA@GetViewByName?5Invalid?5scope?5for?5@ ; `string'
	call	_TraceLineS@8

; 2084 :          //  "KZOEE110 - Invalid scope for View name"
; 2085 :          fnIssueCoreError( lpCurrentTask, lpSubtaskView, 8, 110, (zLONG) nLevel, 0, 0 );

	push	0
	push	0
	movsx	edx, WORD PTR _nLevel$[ebp]
	push	edx
	push	110					; 0000006eH
	push	8
	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2086 :       // fnOperationReturn( iGetViewByName, lpCurrentTask );
; 2087 :          break;

	jmp	$L8224
$L8225:

; 2089 : 
; 2090 :       if ( cpcName == 0 || cpcName[ 0 ] == 0 ||
; 2091 :            zstrlen( cpcName ) > zZEIDON_NAME_LTH * 2 )

	cmp	DWORD PTR _cpcName$[ebp], 0
	je	SHORT $L8229
	mov	edx, DWORD PTR _cpcName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L8229
	mov	ecx, DWORD PTR _cpcName$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	cmp	eax, 64					; 00000040H
	jbe	SHORT $L8228
$L8229:

; 2093 :          if ( cpcName && cpcName[ 0 ] )

	cmp	DWORD PTR _cpcName$[ebp], 0
	je	SHORT $L8230
	mov	edx, DWORD PTR _cpcName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L8230

; 2095 :             TraceLineS( "GetViewByName Length Error: ", cpcName );

	mov	ecx, DWORD PTR _cpcName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BN@GMFL@GetViewByName?5Length?5Error?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 2096 :             fnIssueCoreError( lpCurrentTask, lpSubtaskView, 8, 450, 0, cpcName, 0 );

	push	0
	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	push	0
	push	450					; 000001c2H
	push	8
	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2098 :          else

	jmp	SHORT $L8232
$L8230:

; 2100 :             TraceLineS( "GetViewByName - Empty name", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BL@CMP@GetViewByName?5?9?5Empty?5name?$AA@ ; `string'
	call	_TraceLineS@8
$L8232:

; 2102 : 
; 2103 :       // fnOperationReturn( iGetViewByName, lpCurrentTask );
; 2104 :          break;

	jmp	$L8224
$L8228:

; 2106 : 
; 2107 :       // If user wants a subtask view make sure subtask is OK.
; 2108 :       if ( nLevel == zLEVEL_SUBTASK &&
; 2109 :            fnValidSubtaskView( lpCurrentTask, lpSubtaskView ) == 0 )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 1
	jne	SHORT $L8235
	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidSubtaskView
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L8235

; 2111 :          TraceLineS( "GetViewByName Invalid Subtask view for Name: ", cpcName );

	mov	eax, DWORD PTR _cpcName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CO@BOP@GetViewByName?5Invalid?5Subtask?5vi@ ; `string'
	call	_TraceLineS@8

; 2112 :          break;  // view invalid

	jmp	$L8224
$L8235:

; 2114 : 
; 2115 :       // If user specified ANY and specified a view make sure it's OK.
; 2116 :       if ( nLevel == zLEVEL_ANY &&
; 2117 :            fnValidSubtaskView( lpCurrentTask, lpSubtaskView ) == 0 )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 15					; 0000000fH
	jne	SHORT $L8237
	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnValidSubtaskView
	add	esp, 8
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L8237

; 2119 :          TraceLineS( "GetViewByName Invalid view for Name: ", cpcName );

	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CG@OLKB@GetViewByName?5Invalid?5view?5for?5N@ ; `string'
	call	_TraceLineS@8

; 2120 :          break;  // view invalid

	jmp	$L8224
$L8237:

; 2122 : 
; 2123 :       if ( nLevel == zLEVEL_APPLICATION || lpSubtaskView )

	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 4
	je	SHORT $L8240
	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	je	SHORT $L8245
$L8240:

; 2125 :          // If lpSubtaskView is not a subtask view, check to see if it's a
; 2126 :          // valid view.  (If lpSubtaskView is null, we know it's an invalid
; 2127 :          // view but we'll still call fnValidView to show the error message).
; 2128 :          if ( lpSubtaskView && lpSubtaskView->hSubtask == 0 )

	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	je	SHORT $L8241
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	cmp	DWORD PTR [ecx+18], 0
	jne	SHORT $L8241

; 2130 :             if ( fnValidView( lpCurrentTask, lpSubtaskView ) == 0 )

	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnValidView
	add	esp, 8
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L8242

; 2132 :                TraceLineS( "GetViewByName Invalid Subtask (null) for Name: ", cpcName );

	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0DA@NIDI@GetViewByName?5Invalid?5Subtask?5?$CIn@ ; `string'
	call	_TraceLineS@8

; 2133 :                break;  // view invalid

	jmp	$L8224
$L8242:

; 2136 :          else

	jmp	SHORT $L8245
$L8241:

; 2137 :          // lpSubtaskView is a subtask view--check for validity.
; 2138 :          if ( fnValidSubtaskView( lpCurrentTask, lpSubtaskView ) == 0 )

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidSubtaskView
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L8245

; 2140 :             TraceLineS( "GetViewByName Invalid Subtask view for Name: ", cpcName );

	mov	eax, DWORD PTR _cpcName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CO@BOP@GetViewByName?5Invalid?5Subtask?5vi@ ; `string'
	call	_TraceLineS@8

; 2141 :             break;  // view invalid

	jmp	$L8224
$L8245:

; 2144 : 
; 2145 :       // Depending on the scope parameter, look in the appropriate name chain
; 2146 :       // for the name requested.
; 2147 :       nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1

; 2148 :       lpViewName = 0;

	mov	DWORD PTR _lpViewName$[ebp], 0

; 2149 :       if ( nLevel == zLEVEL_SUBTASK || (nLevel == zLEVEL_ANY && lpSubtaskView) )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 1
	je	SHORT $L8247
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 15					; 0000000fH
	jne	$L8252
	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	je	$L8252
$L8247:

; 2151 :          // Look for the requested name in the subtask
; 2152 :          lpSubtask = zGETPTR( lpSubtaskView->hSubtask );

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 2153 :          lpViewName = zGETPTR( lpSubtask->hFirstViewName );

	mov	edx, DWORD PTR _lpSubtask$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8251:

; 2154 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8252

; 2156 :             if ( zstrcmp( lpViewName->szName, cpcName ) == 0 )

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L9218
	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L9219
$L9218:
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -44+[ebp], eax
$L9219:
	cmp	DWORD PTR -44+[ebp], 0
	jne	SHORT $L8259

; 2158 :                nRC = zLEVEL_SUBTASK;

	mov	WORD PTR _nRC$[ebp], 1

; 2159 :             // TraceLineS( "GetViewByName SUBTASK: ", cpcName );
; 2160 :                break;

	jmp	SHORT $L8252
$L8259:

; 2162 : 
; 2163 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2164 :          }

	jmp	SHORT $L8251
$L8252:

; 2166 : 
; 2167 :       if ( nLevel == zLEVEL_TASK || (nLevel == zLEVEL_ANY && nRC < 0) )

	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 2
	je	SHORT $L8262
	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 15					; 0000000fH
	jne	$L8272
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jge	$L8272
$L8262:

; 2169 :          LPTASK     lpTask;
; 2170 :          LPVIEWNAME lpVName;  // debugging only
; 2171 : 
; 2172 :          // Look for the requested name in the task.  If a subtask view was
; 2173 :          // supplied use the task represented by the view.
; 2174 :          if ( lpSubtaskView )

	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	je	SHORT $L8265

; 2175 :             lpTask = zGETPTR( lpSubtaskView->hTask );

	mov	eax, DWORD PTR _lpSubtaskView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8263[ebp], eax

; 2176 :          else

	jmp	SHORT $L8267
$L8265:

; 2177 :             lpTask = lpCurrentTask;

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	DWORD PTR _lpTask$8263[ebp], edx
$L8267:

; 2178 : 
; 2179 :       // TraceLineS( "GetViewByName looking for Task Level view by name: ",
; 2180 :       //             cpcName );
; 2181 :          for ( lpVName = zGETPTR( lpTask->hFirstViewName );
; 2182 :                lpVName;
; 2183 :                lpVName = zGETPTR( lpVName->hNextViewName ) )

	mov	eax, DWORD PTR _lpTask$8263[ebp]
	mov	ecx, DWORD PTR [eax+110]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpVName$8264[ebp], eax
	jmp	SHORT $L8270
$L8271:
	mov	edx, DWORD PTR _lpVName$8264[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpVName$8264[ebp], eax
$L8270:
	cmp	DWORD PTR _lpVName$8264[ebp], 0
	je	SHORT $L8272

; 2185 :          // if ( zstrcmp( cpcName, "vERD_LPLR" ) == 0 )
; 2186 :          // TraceLine( "GetViewByName at Task Level 0x%08x ViewName: %s",
; 2187 :          //            zGETHNDL( lpTask ), lpVName->szName );
; 2188 : 
; 2189 :             if ( zstrcmp( lpVName->szName, cpcName ) == 0 )

	mov	ecx, DWORD PTR _lpVName$8264[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L9220
	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpVName$8264[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -48+[ebp], eax
	jmp	SHORT $L9221
$L9220:
	mov	ecx, DWORD PTR _lpVName$8264[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -48+[ebp], eax
$L9221:
	cmp	DWORD PTR -48+[ebp], 0
	jne	SHORT $L8279

; 2191 :                nRC = zLEVEL_TASK;

	mov	WORD PTR _nRC$[ebp], 2

; 2192 :             // TraceLineS( "GetViewByName TASK found: ", cpcName );
; 2193 :                lpViewName = lpVName;  // debugging only

	mov	ecx, DWORD PTR _lpVName$8264[ebp]
	mov	DWORD PTR _lpViewName$[ebp], ecx

; 2194 :                break; // omitted for debugging only

	jmp	SHORT $L8272
$L8279:

; 2196 :          }

	jmp	SHORT $L8271
$L8272:

; 2198 : 
; 2199 :       if ( nLevel == zLEVEL_APPLICATION ||
; 2200 :            (nLevel == zLEVEL_ANY && lpSubtaskView && nRC < 0) )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 4
	je	SHORT $L8281
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 15					; 0000000fH
	jne	$L8285
	cmp	DWORD PTR _lpSubtaskView$[ebp], 0
	je	$L8285
	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jge	$L8285
$L8281:

; 2202 :          // Get the application from the subtask if the view is a subtask
; 2203 :          // view. Otherwise, get the application from the view object if
; 2204 :          // one is present. If all else fails, use the application from
; 2205 :          // the current task.
; 2206 :          fnGetApplicationForSubtask( &lpApp, lpSubtaskView );

	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpApp$[ebp]
	push	eax
	call	_fnGetApplicationForSubtask@8

; 2207 :          lpViewName = zGETPTR( lpApp->hFirstViewName );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR [ecx+1893]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8284:

; 2208 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8285

; 2210 :             if ( zstrcmp( lpViewName->szName, cpcName ) == 0 )

	mov	eax, DWORD PTR _lpViewName$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _cpcName$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L9222
	mov	ecx, DWORD PTR _cpcName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewName$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -52+[ebp], eax
	jmp	SHORT $L9223
$L9222:
	mov	eax, DWORD PTR _lpViewName$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _cpcName$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -52+[ebp], edx
$L9223:
	cmp	DWORD PTR -52+[ebp], 0
	jne	SHORT $L8292

; 2212 :                nRC = zLEVEL_APPLICATION;

	mov	WORD PTR _nRC$[ebp], 4

; 2213 :             // TraceLineS( "GetViewByName APPLICATION: ", cpcName );
; 2214 :                break;

	jmp	SHORT $L8285
$L8292:

; 2216 : 
; 2217 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2218 :          }

	jmp	SHORT $L8284
$L8285:

; 2220 : 
; 2221 :       if ( nLevel == zLEVEL_SYSTEM || (nLevel == zLEVEL_ANY && nRC < 0) )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 8
	je	SHORT $L8295
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 15					; 0000000fH
	jne	$L8294
	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jge	$L8294
$L8295:

; 2223 :          zLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysLockCoreMutex@4

; 2224 : 
; 2225 :          // Look for the requested name at the system level
; 2226 :          lpViewName = zGETPTR( AnchorBlock->hFirstViewName );

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+1489]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8298:

; 2227 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8299

; 2229 :             if ( zstrcmp( lpViewName->szName, cpcName ) == 0 )

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L9224
	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -56+[ebp], eax
	jmp	SHORT $L9225
$L9224:
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -56+[ebp], eax
$L9225:
	cmp	DWORD PTR -56+[ebp], 0
	jne	SHORT $L8306

; 2231 :                nRC = zLEVEL_SYSTEM;

	mov	WORD PTR _nRC$[ebp], 8

; 2232 :             // TraceLineS( "GetViewByName SYSTEM: ", cpcName );
; 2233 :                break;

	jmp	SHORT $L8299
$L8306:

; 2235 : 
; 2236 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2237 :          }

	jmp	SHORT $L8298
$L8299:

; 2238 : 
; 2239 :          zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4
$L8294:

; 2241 : 
; 2242 :    } while ( FALSE );  // end of purist's goto

	xor	eax, eax
	test	eax, eax
	jne	$L8221
$L8224:

; 2243 : 
; 2244 :    // If the return code from the search is > 0, then set the view to be
; 2245 :    // returned.
; 2246 :    if ( nRC > 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jle	SHORT $L8308

; 2248 :       // Set the view to be returned.
; 2249 :       *pvReturnView = zGETPTR( lpViewName->hView );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	ecx, DWORD PTR _pvReturnView$[ebp]
	mov	DWORD PTR [ecx], eax
$L8308:

; 2251 : 
; 2252 : #if 0
; 2253 :    if ( zstrcmp( "OpenCM_Metas", cpcName ) == 0 )
; 2254 :    {
; 2255 :       SysMessageBox( lpSubtaskView, "GetViewByName", "OpenCM_Metas", 0 );
; 2256 :       TraceLineS( "GetViewByName: ", "OpenCM_Metas" );
; 2257 :    }
; 2258 : #endif
; 2259 : 
; 2260 : #if 0
; 2261 :    if ( cpcName[ 0 ] != '_' )
; 2262 :    TraceLine( "GetViewByName (0x%08x) %s   View/Task: 0x%08x/0x%08x   Level: %s   RC ===> %s",
; 2263 :               *pvReturnView, cpcName, lpSubtaskView, lpSubtaskView->hTask,
; 2264 :               (nLevel & 0x000F) == 0x000F ? "ANY" :
; 2265 :                 nLevel & 1 ? "SUBTASK" : nLevel & 2 ? "TASK" : nLevel & 4 ?
; 2266 :                 "APPLICATION" : nLevel & 8 ? "SYSTEM" : "UNKNOWN",
; 2267 :               nRC <= 0 ? "NOT FOUND" :
; 2268 :                 nRC & 1 ? "SUBTASK" : nRC & 2 ? "TASK" : nRC & 4 ?
; 2269 :                 "APPLICATION" : nRC & 8 ? "SYSTEM" : "UNKNOWN" );
; 2270 : #endif
; 2271 : 
; 2272 : #if 1
; 2273 :    if ( *pvReturnView && hCurrentTask &&             // dks debug
; 2274 :         (*pvReturnView)->hTask != hCurrentTask )

	mov	edx, DWORD PTR _pvReturnView$[ebp]
	cmp	DWORD PTR [edx], 0
	je	$L8319
	cmp	DWORD PTR _hCurrentTask$[ebp], 0
	je	$L8319
	mov	eax, DWORD PTR _pvReturnView$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+14]
	cmp	edx, DWORD PTR _hCurrentTask$[ebp]
	je	$L8319

; 2276 :       LPTASK lpTask = zGETPTR( hCurrentTask );

	mov	eax, DWORD PTR _hCurrentTask$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8311[ebp], eax

; 2277 :       if ( lpTask && lpTask->bTransientTask &&
; 2278 :            zstrcmp( cpcName, "Zeidon DBHandler Work Object" ) != 0 )

	cmp	DWORD PTR _lpTask$8311[ebp], 0
	je	$L8319
	mov	ecx, DWORD PTR _lpTask$8311[ebp]
	mov	edx, DWORD PTR [ecx+443]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	$L8319
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	movsx	edx, BYTE PTR ??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@
	cmp	ecx, edx
	jne	SHORT $L9226
	push	OFFSET FLAT:??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ ; `string'
	mov	eax, DWORD PTR _cpcName$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -60+[ebp], eax
	jmp	SHORT $L9227
$L9226:
	mov	ecx, DWORD PTR _cpcName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	movsx	eax, BYTE PTR ??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@
	sub	edx, eax
	xor	ecx, ecx
	test	edx, edx
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -60+[ebp], ecx
$L9227:
	cmp	DWORD PTR -60+[ebp], 0
	je	$L8319

; 2280 :          TraceLine( "GetViewByName TRANSIENT ERROR (0x%08x/0x%08x)  %s   View/Task: 0x%08x/0x%08x   Level: %s   RC ===> %s",
; 2281 :                     *pvReturnView, (*pvReturnView)->hTask, cpcName, vSubtask, hCurrentTask,
; 2282 :                     (nLevel & 0x000F) == 0x000F ? "ANY" :
; 2283 :                       nLevel & 1 ? "SUBTASK" : nLevel & 2 ? "TASK" : nLevel & 4 ?
; 2284 :                       "APPLICATION" : nLevel & 8 ? "SYSTEM" : "UNKNOWN",
; 2285 :                     nRC <= 0 ? "NOT FOUND" :
; 2286 :                       nRC & 1 ? "SUBTASK" : nRC & 2 ? "TASK" : nRC & 4 ?
; 2287 :                       "APPLICATION" : nRC & 8 ? "SYSTEM" : "UNKNOWN" );

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jg	SHORT $L9236
	mov	DWORD PTR -64+[ebp], OFFSET FLAT:??_C@_09GJLM@NOT?5FOUND?$AA@ ; `string'
	jmp	SHORT $L9237
$L9236:
	movsx	eax, WORD PTR _nRC$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L9234
	mov	DWORD PTR -68+[ebp], OFFSET FLAT:??_C@_07DBNL@SUBTASK?$AA@ ; `string'
	jmp	SHORT $L9235
$L9234:
	movsx	ecx, WORD PTR _nRC$[ebp]
	and	ecx, 2
	test	ecx, ecx
	je	SHORT $L9232
	mov	DWORD PTR -72+[ebp], OFFSET FLAT:??_C@_04LGGC@TASK?$AA@ ; `string'
	jmp	SHORT $L9233
$L9232:
	movsx	edx, WORD PTR _nRC$[ebp]
	and	edx, 4
	test	edx, edx
	je	SHORT $L9230
	mov	DWORD PTR -76+[ebp], OFFSET FLAT:??_C@_0M@LKKI@APPLICATION?$AA@ ; `string'
	jmp	SHORT $L9231
$L9230:
	movsx	eax, WORD PTR _nRC$[ebp]
	and	eax, 8
	test	eax, eax
	je	SHORT $L9228
	mov	DWORD PTR -80+[ebp], OFFSET FLAT:??_C@_06LDDL@SYSTEM?$AA@ ; `string'
	jmp	SHORT $L9229
$L9228:
	mov	DWORD PTR -80+[ebp], OFFSET FLAT:??_C@_07CNPM@UNKNOWN?$AA@ ; `string'
$L9229:
	mov	ecx, DWORD PTR -80+[ebp]
	mov	DWORD PTR -76+[ebp], ecx
$L9231:
	mov	edx, DWORD PTR -76+[ebp]
	mov	DWORD PTR -72+[ebp], edx
$L9233:
	mov	eax, DWORD PTR -72+[ebp]
	mov	DWORD PTR -68+[ebp], eax
$L9235:
	mov	ecx, DWORD PTR -68+[ebp]
	mov	DWORD PTR -64+[ebp], ecx
$L9237:
	movsx	edx, WORD PTR _nLevel$[ebp]
	and	edx, 15					; 0000000fH
	cmp	edx, 15					; 0000000fH
	jne	SHORT $L9246
	mov	DWORD PTR -84+[ebp], OFFSET FLAT:??_C@_03ENCN@ANY?$AA@ ; `string'
	jmp	SHORT $L9247
$L9246:
	movsx	eax, WORD PTR _nLevel$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L9244
	mov	DWORD PTR -88+[ebp], OFFSET FLAT:??_C@_07DBNL@SUBTASK?$AA@ ; `string'
	jmp	SHORT $L9245
$L9244:
	movsx	ecx, WORD PTR _nLevel$[ebp]
	and	ecx, 2
	test	ecx, ecx
	je	SHORT $L9242
	mov	DWORD PTR -92+[ebp], OFFSET FLAT:??_C@_04LGGC@TASK?$AA@ ; `string'
	jmp	SHORT $L9243
$L9242:
	movsx	edx, WORD PTR _nLevel$[ebp]
	and	edx, 4
	test	edx, edx
	je	SHORT $L9240
	mov	DWORD PTR -96+[ebp], OFFSET FLAT:??_C@_0M@LKKI@APPLICATION?$AA@ ; `string'
	jmp	SHORT $L9241
$L9240:
	movsx	eax, WORD PTR _nLevel$[ebp]
	and	eax, 8
	test	eax, eax
	je	SHORT $L9238
	mov	DWORD PTR -100+[ebp], OFFSET FLAT:??_C@_06LDDL@SYSTEM?$AA@ ; `string'
	jmp	SHORT $L9239
$L9238:
	mov	DWORD PTR -100+[ebp], OFFSET FLAT:??_C@_07CNPM@UNKNOWN?$AA@ ; `string'
$L9239:
	mov	ecx, DWORD PTR -100+[ebp]
	mov	DWORD PTR -96+[ebp], ecx
$L9241:
	mov	edx, DWORD PTR -96+[ebp]
	mov	DWORD PTR -92+[ebp], edx
$L9243:
	mov	eax, DWORD PTR -92+[ebp]
	mov	DWORD PTR -88+[ebp], eax
$L9245:
	mov	ecx, DWORD PTR -88+[ebp]
	mov	DWORD PTR -84+[ebp], ecx
$L9247:
	mov	edx, DWORD PTR -64+[ebp]
	push	edx
	mov	eax, DWORD PTR -84+[ebp]
	push	eax
	mov	ecx, DWORD PTR _hCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvReturnView$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	mov	ecx, DWORD PTR _pvReturnView$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	push	OFFSET FLAT:??_C@_0GG@DEDH@GetViewByName?5TRANSIENT?5ERROR?5?$CI0@ ; `string'
	call	_TraceLine
	add	esp, 32					; 00000020H
$L8319:

; 2292 : #endif
; 2293 : 
; 2294 :    fnOperationReturn( iGetViewByName, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	206					; 000000ceH
	call	_fnOperationReturn
	add	esp, 8

; 2295 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8197:

; 2296 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_GetViewByName@16 ENDP
_TEXT	ENDS
PUBLIC	_SfGetFirstNamedView@16
_TEXT	SEGMENT
_pvReturnView$ = 8
_pchReturnName$ = 12
_lpView$ = 16
_nLevel$ = 20
_lpCurrentTask$ = -20
_lpSubtask$ = -8
_lpViewName$ = -16
_lpApp$ = -12
_nRC$ = -4
_SfGetFirstNamedView@16 PROC NEAR

; 2318 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 2319 :    LPTASK       lpCurrentTask;
; 2320 :    LPSUBTASK    lpSubtask;
; 2321 :    LPVIEWNAME   lpViewName;
; 2322 :    LPAPP        lpApp;
; 2323 :    zSHORT       nRC;
; 2324 : 
; 2325 :    *pvReturnView = 0;      // initialize return view to NULL

	mov	eax, DWORD PTR _pvReturnView$[ebp]
	mov	DWORD PTR [eax], 0

; 2326 :    pchReturnName[ 0 ] = 0; // initialize return name

	mov	ecx, DWORD PTR _pchReturnName$[ebp]
	mov	BYTE PTR [ecx], 0

; 2327 : 
; 2328 :    // If task not active or disabled, return zCALL_ERROR.
; 2329 :    if ( (lpCurrentTask = fnOperationCall( iSfGetFirstNamedView, lpView, 0 )) == 0 )

	push	0
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	218					; 000000daH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8343

; 2330 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8337
$L8343:

; 2331 : 
; 2332 :    if ( (nLevel == zLEVEL_SUBTASK) &&
; 2333 :         (fnValidSubtaskView( lpCurrentTask, lpView )) == 0 )

	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 1
	jne	SHORT $L8344
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnValidSubtaskView
	add	esp, 8
	movsx	eax, ax
	test	eax, eax
	jne	SHORT $L8344

; 2335 :       fnOperationReturn( iSfGetFirstNamedView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	218					; 000000daH
	call	_fnOperationReturn
	add	esp, 8

; 2336 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8337
$L8344:

; 2338 : 
; 2339 :    if ( (nLevel == zLEVEL_APPLICATION) &&
; 2340 :         (fnValidView( lpCurrentTask, lpView )) == 0 )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 4
	jne	SHORT $L8345
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidView
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L8345

; 2342 :       fnOperationReturn( iSfGetFirstNamedView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	218					; 000000daH
	call	_fnOperationReturn
	add	esp, 8

; 2343 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8337
$L8345:

; 2345 : 
; 2346 :    // Check for valid scope.
; 2347 :    if ( nLevel != zLEVEL_SUBTASK     && nLevel != zLEVEL_TASK   &&
; 2348 :         nLevel != zLEVEL_APPLICATION && nLevel != zLEVEL_SYSTEM )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 1
	je	SHORT $L8346
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 2
	je	SHORT $L8346
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 4
	je	SHORT $L8346
	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 8
	je	SHORT $L8346

; 2350 :       //  "KZOEE110 - Invalid scope for View name"
; 2351 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 110, (zLONG) nLevel, 0, 0 );

	push	0
	push	0
	movsx	edx, WORD PTR _nLevel$[ebp]
	push	edx
	push	110					; 0000006eH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2352 :       fnOperationReturn( iSfGetFirstNamedView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	218					; 000000daH
	call	_fnOperationReturn
	add	esp, 8

; 2353 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8337
$L8346:

; 2355 : 
; 2356 :    // Depending on the scope parameter, look in the appropriate
; 2357 :    // name chain for the name requested.
; 2358 :    lpViewName = 0;

	mov	DWORD PTR _lpViewName$[ebp], 0

; 2359 :    if ( nLevel == zLEVEL_SUBTASK )

	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 1
	jne	SHORT $L8348

; 2361 :       // Look for the requested name in the subtask.
; 2362 :       lpSubtask = zGETPTR( lpView->hSubtask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 2363 :       lpViewName = zGETPTR( lpSubtask->hFirstViewName );

	mov	eax, DWORD PTR _lpSubtask$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2364 :       nRC = zLEVEL_SUBTASK;

	mov	WORD PTR _nRC$[ebp], 1

; 2366 :    else

	jmp	SHORT $L8358
$L8348:

; 2367 :    if ( nLevel == zLEVEL_TASK )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 2
	jne	SHORT $L8352

; 2369 :       // Look for the requested name in the task.
; 2370 :       lpViewName = zGETPTR( lpCurrentTask->hFirstViewName );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	ecx, DWORD PTR [eax+110]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2371 :       nRC = zLEVEL_TASK;

	mov	WORD PTR _nRC$[ebp], 2

; 2373 :    else

	jmp	SHORT $L8358
$L8352:

; 2374 :    if ( nLevel == zLEVEL_APPLICATION )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 4
	jne	SHORT $L8355

; 2376 :       // Get the application from the subtask if the view is a subtask
; 2377 :       // view. Otherwise, get the application from the view object if
; 2378 :       // one is present. If all else fails, use the application from
; 2379 :       // the current task.
; 2380 : 
; 2381 :       fnGetApplicationForSubtask( &lpApp, lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpApp$[ebp]
	push	ecx
	call	_fnGetApplicationForSubtask@8

; 2382 :       lpViewName = zGETPTR( lpApp->hFirstViewName );

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+1893]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2383 :       nRC = zLEVEL_APPLICATION;

	mov	WORD PTR _nRC$[ebp], 4

; 2385 :    else

	jmp	SHORT $L8358
$L8355:

; 2386 :    if ( nLevel == zLEVEL_SYSTEM )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 8
	jne	SHORT $L8358

; 2388 :       // Look for the requested name at the system level.
; 2389 :       lpViewName = zGETPTR( AnchorBlock->hFirstViewName );

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+1489]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2390 :       nRC = zLEVEL_SYSTEM;

	mov	WORD PTR _nRC$[ebp], 8
$L8358:

; 2392 : 
; 2393 :    // If an lpViewName was found, return the view and name.
; 2394 :    if ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8360

; 2396 :       // Set the view to be returned
; 2397 :       *pvReturnView = zGETPTR( lpViewName->hView );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	ecx, DWORD PTR _pvReturnView$[ebp]
	mov	DWORD PTR [ecx], eax

; 2398 :       zstrcpy( pchReturnName, lpViewName->szName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _pchReturnName$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 2400 :    else

	jmp	SHORT $L8362
$L8360:

; 2401 :       nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1
$L8362:

; 2402 : 
; 2403 :    fnOperationReturn( iSfGetFirstNamedView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	218					; 000000daH
	call	_fnOperationReturn
	add	esp, 8

; 2404 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8337:

; 2405 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_SfGetFirstNamedView@16 ENDP
_TEXT	ENDS
PUBLIC	_SfGetNextNamedView@16
_TEXT	SEGMENT
_pvReturnView$ = 8
_pchReturnName$ = 12
_lpView$ = 16
_nLevel$ = 20
_lpCurrentTask$ = -20
_lpSubtask$ = -8
_lpViewName$ = -16
_lpApp$ = -12
_nRC$ = -4
_SfGetNextNamedView@16 PROC NEAR

; 2427 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 2428 :    LPTASK       lpCurrentTask;
; 2429 :    LPSUBTASK    lpSubtask;
; 2430 :    LPVIEWNAME   lpViewName;
; 2431 :    LPAPP        lpApp;
; 2432 :    zSHORT       nRC;
; 2433 : 
; 2434 :    *pvReturnView = 0;      // initialize return view to null

	mov	eax, DWORD PTR _pvReturnView$[ebp]
	mov	DWORD PTR [eax], 0

; 2435 : 
; 2436 :    // If task not active or disabled, return zCALL_ERROR.
; 2437 :    if ( (lpCurrentTask = fnOperationCall( iSfGetNextNamedView, lpView, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	219					; 000000dbH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8377

; 2438 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8371
$L8377:

; 2439 : 
; 2440 :    if ( (nLevel == zLEVEL_SUBTASK) &&
; 2441 :         (fnValidSubtaskView( lpCurrentTask, lpView )) == 0 )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 1
	jne	SHORT $L8378
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidSubtaskView
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L8378

; 2443 :       fnOperationReturn( iSfGetNextNamedView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	219					; 000000dbH
	call	_fnOperationReturn
	add	esp, 8

; 2444 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8371
$L8378:

; 2446 : 
; 2447 :    if ( (nLevel == zLEVEL_APPLICATION) &&
; 2448 :         (fnValidView( lpCurrentTask, lpView )) == 0 )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 4
	jne	SHORT $L8379
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnValidView
	add	esp, 8
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L8379

; 2450 :       fnOperationReturn( iSfGetNextNamedView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	219					; 000000dbH
	call	_fnOperationReturn
	add	esp, 8

; 2451 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8371
$L8379:

; 2453 : 
; 2454 :    // Check for valid scope.
; 2455 :    if ( nLevel != zLEVEL_SUBTASK     && nLevel != zLEVEL_TASK   &&
; 2456 :         nLevel != zLEVEL_APPLICATION && nLevel != zLEVEL_SYSTEM )

	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 1
	je	SHORT $L8380
	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 2
	je	SHORT $L8380
	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 4
	je	SHORT $L8380
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, 8
	je	SHORT $L8380

; 2458 :       //  "KZOEE110 - Invalid scope for View name"
; 2459 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 110, (zLONG) nLevel, 0, 0 );

	push	0
	push	0
	movsx	ecx, WORD PTR _nLevel$[ebp]
	push	ecx
	push	110					; 0000006eH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2460 :       fnOperationReturn( iSfGetNextNamedView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	219					; 000000dbH
	call	_fnOperationReturn
	add	esp, 8

; 2461 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8371
$L8380:

; 2463 : 
; 2464 :    // Depending on the scope parameter, look in the appropriate
; 2465 :    // name chain for the name requested.
; 2466 :    lpViewName = 0;

	mov	DWORD PTR _lpViewName$[ebp], 0

; 2467 :    if ( pchReturnName && pchReturnName[ 0 ] )

	cmp	DWORD PTR _pchReturnName$[ebp], 0
	je	$L8433
	mov	edx, DWORD PTR _pchReturnName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	$L8433

; 2469 :       if ( nLevel == zLEVEL_SUBTASK )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 1
	jne	$L8383

; 2471 :          // Look for the requested name in the subtask.
; 2472 :          lpSubtask  = zGETPTR( lpView->hSubtask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 2473 :          lpViewName = zGETPTR( lpSubtask->hFirstViewName );

	mov	ecx, DWORD PTR _lpSubtask$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8387:

; 2474 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8388

; 2476 :             if ( zstrcmp( lpViewName->szName, pchReturnName ) == 0 )

	mov	eax, DWORD PTR _lpViewName$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _pchReturnName$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L9251
	mov	ecx, DWORD PTR _pchReturnName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewName$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -24+[ebp], eax
	jmp	SHORT $L9252
$L9251:
	mov	eax, DWORD PTR _lpViewName$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _pchReturnName$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -24+[ebp], edx
$L9252:
	cmp	DWORD PTR -24+[ebp], 0
	jne	SHORT $L8395

; 2478 :                nRC = zLEVEL_SUBTASK;

	mov	WORD PTR _nRC$[ebp], 1

; 2479 :                lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2480 :                break;

	jmp	SHORT $L8388
$L8395:

; 2482 : 
; 2483 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2484 :          }

	jmp	SHORT $L8387
$L8388:

; 2486 :       else

	jmp	$L8433
$L8383:

; 2487 :       if ( nLevel == zLEVEL_TASK )

	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	ecx, 2
	jne	$L8399

; 2489 :          // Look for the requested name in the task.
; 2490 :          lpViewName = zGETPTR( lpCurrentTask->hFirstViewName );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	eax, DWORD PTR [edx+110]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8402:

; 2491 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8403

; 2493 :             if ( zstrcmp( lpViewName->szName, pchReturnName ) == 0 )

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _pchReturnName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L9253
	mov	edx, DWORD PTR _pchReturnName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -28+[ebp], eax
	jmp	SHORT $L9254
$L9253:
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _pchReturnName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -28+[ebp], eax
$L9254:
	cmp	DWORD PTR -28+[ebp], 0
	jne	SHORT $L8410

; 2495 :                nRC = zLEVEL_TASK;

	mov	WORD PTR _nRC$[ebp], 2

; 2496 :                lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2497 :                break;

	jmp	SHORT $L8403
$L8410:

; 2499 : 
; 2500 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2501 :          }

	jmp	SHORT $L8402
$L8403:

; 2503 :       else

	jmp	$L8433
$L8399:

; 2504 :       if ( nLevel == zLEVEL_APPLICATION )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 4
	jne	$L8414

; 2506 :          // Get the application from the subtask if the view is a subtask
; 2507 :          // view. Otherwise, get the application from the view object if
; 2508 :          // one is present. If all else fails, use the application from
; 2509 :          // the current task.
; 2510 :          fnGetApplicationForSubtask( &lpApp, lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpApp$[ebp]
	push	ecx
	call	_fnGetApplicationForSubtask@8

; 2511 :          lpViewName = zGETPTR( lpApp->hFirstViewName );

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+1893]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8417:

; 2512 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8418

; 2514 :             if ( zstrcmp( lpViewName->szName, pchReturnName ) == 0 )

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _pchReturnName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L9255
	mov	edx, DWORD PTR _pchReturnName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -32+[ebp], eax
	jmp	SHORT $L9256
$L9255:
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _pchReturnName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -32+[ebp], eax
$L9256:
	cmp	DWORD PTR -32+[ebp], 0
	jne	SHORT $L8425

; 2516 :                nRC = zLEVEL_APPLICATION;

	mov	WORD PTR _nRC$[ebp], 4

; 2517 :                lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2518 :                break;

	jmp	SHORT $L8418
$L8425:

; 2520 : 
; 2521 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2522 :          }

	jmp	SHORT $L8417
$L8418:

; 2524 :       else

	jmp	$L8433
$L8414:

; 2525 :       if ( nLevel == zLEVEL_SYSTEM )

	movsx	edx, WORD PTR _nLevel$[ebp]
	cmp	edx, 8
	jne	$L8433

; 2527 :          // Look for the requested name at the system level.
; 2528 :          lpViewName = zGETPTR( AnchorBlock->hFirstViewName );

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+1489]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8432:

; 2529 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8433

; 2531 :             if ( zstrcmp( lpViewName->szName, pchReturnName ) == 0 )

	mov	edx, DWORD PTR _lpViewName$[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _pchReturnName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L9257
	mov	eax, DWORD PTR _pchReturnName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewName$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -36+[ebp], eax
	jmp	SHORT $L9258
$L9257:
	mov	edx, DWORD PTR _lpViewName$[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _pchReturnName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -36+[ebp], ecx
$L9258:
	cmp	DWORD PTR -36+[ebp], 0
	jne	SHORT $L8440

; 2533 :                nRC = zLEVEL_SYSTEM;

	mov	WORD PTR _nRC$[ebp], 8

; 2534 :                lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2535 :                break;

	jmp	SHORT $L8433
$L8440:

; 2537 : 
; 2538 :             lpViewName = zGETPTR( lpViewName->hNextViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 2539 :          }

	jmp	SHORT $L8432
$L8433:

; 2542 : 
; 2543 :    // If an lpViewName was found, return the view and name.
; 2544 :    if ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	SHORT $L8443

; 2546 :       // Set the view to be returned.
; 2547 :       *pvReturnView = zGETPTR( lpViewName->hView );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	edx, DWORD PTR _pvReturnView$[ebp]
	mov	DWORD PTR [edx], eax

; 2548 :       zstrcpy( pchReturnName, lpViewName->szName );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _pchReturnName$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 2550 :    else

	jmp	SHORT $L8445
$L8443:

; 2552 :       pchReturnName[ 0 ] = 0;

	mov	edx, DWORD PTR _pchReturnName$[ebp]
	mov	BYTE PTR [edx], 0

; 2553 :       nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1
$L8445:

; 2555 : 
; 2556 :    fnOperationReturn( iSfGetNextNamedView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	219					; 000000dbH
	call	_fnOperationReturn
	add	esp, 8

; 2557 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8371:

; 2558 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_SfGetNextNamedView@16 ENDP
_TEXT	ENDS
PUBLIC	_ResetView@4
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -8
_nRC$ = -4
_ResetView@4 PROC NEAR

; 2578 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 2579 :    LPTASK  lpCurrentTask;
; 2580 :    zSHORT  nRC;
; 2581 : 
; 2582 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 2583 :    if ( (lpCurrentTask = fnOperationCall( iResetView, lpView,
; 2584 :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	211					; 000000d3H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8451

; 2586 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8448
$L8451:

; 2588 : 
; 2589 :    // Call fnResetView to reset the view.
; 2590 :    nRC = fnResetView( lpView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnResetView
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax

; 2591 : 
; 2592 :    // We're done, return success
; 2593 :    fnOperationReturn( iResetView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	211					; 000000d3H
	call	_fnOperationReturn
	add	esp, 8

; 2594 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8448:

; 2595 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_ResetView@4 ENDP
_TEXT	ENDS
PUBLIC	_ResetViewPositions@4
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -8
_nRC$ = -4
_ResetViewPositions@4 PROC NEAR

; 2615 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 2616 :    LPTASK  lpCurrentTask;
; 2617 :    zSHORT  nRC;
; 2618 : 
; 2619 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 2620 :    if ( (lpCurrentTask = fnOperationCall( iResetViewPositions, lpView,
; 2621 :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	221					; 000000ddH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8457

; 2623 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8454
$L8457:

; 2625 : 
; 2626 :    // Call fnResetView to reset the view without resetting select sets
; 2627 :    nRC = fnResetView( lpView, 1 );

	push	1
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnResetView
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax

; 2628 : 
; 2629 :    // We're done, return success
; 2630 :    fnOperationReturn( iResetViewPositions, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	221					; 000000ddH
	call	_fnOperationReturn
	add	esp, 8

; 2631 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8454:

; 2632 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_ResetViewPositions@4 ENDP
_TEXT	ENDS
PUBLIC	_fnSetViewToSubobject
PUBLIC	_SetViewToSubobject@8
EXTRN	_fnValidViewEntity@16:NEAR
EXTRN	_fnEntityNameFromCsr@4:NEAR
EXTRN	_fnEstablishCursorForView:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcSubobjectEntityName$ = 12
_lpCurrentTask$ = -28
_lpViewCsr$ = -4
_lpViewEntity$ = -16
_lpViewRootParentCsr$ = -20
_lpViewEntityCsr$ = -24
_lpEntityInstance$ = -12
_nRC$ = -8
_lpViewOI$8475 = -36
_lpViewOD$8477 = -32
_SetViewToSubobject@8 PROC NEAR

; 2658 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 2659 :    LPTASK            lpCurrentTask;
; 2660 :    LPVIEWCSR         lpViewCsr;
; 2661 :    LPVIEWENTITY      lpViewEntity;
; 2662 :    LPVIEWENTITYCSR   lpViewRootParentCsr;
; 2663 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 2664 :    LPENTITYINSTANCE  lpEntityInstance;
; 2665 :    zSHORT            nRC;
; 2666 : 
; 2667 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 2668 :    if ( (lpCurrentTask = fnOperationCall( iSetViewToSubobject, lpView,
; 2669 :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	202					; 000000caH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8470

; 2671 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8462
$L8470:

; 2673 : 
; 2674 :    // Get the ViewCsr for the view
; 2675 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2676 : 
; 2677 :    // Validate that the entity exists
; 2678 :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr, lpView,
; 2679 :                                            cpcSubobjectEntityName, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _cpcSubobjectEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L8472

; 2681 :       fnOperationReturn( iSetViewToSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	202					; 000000caH
	call	_fnOperationReturn
	add	esp, 8

; 2682 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8462
$L8472:

; 2684 : 
; 2685 :    // Check to make sure that the subobject entity is not the root
; 2686 :    // root of the view object definition
; 2687 :    if ( zGETPTR( lpViewCsr->hFirstOD_EntityCsr ) == lpViewEntityCsr )

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	jne	SHORT $L8474

; 2689 :       LPVIEWOI lpViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$8475[ebp], eax

; 2690 :       LPVIEWOD lpViewOD = zGETPTR( lpViewOI->hViewOD );

	mov	edx, DWORD PTR _lpViewOI$8475[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8477[ebp], eax

; 2691 : 
; 2692 :       //  "KZOEE271 - Subobject Entity is root of View Object Definition"
; 2693 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 271, 0,
; 2694 :                         fnEntityNameFromCsr( lpViewEntityCsr ),
; 2695 :                         lpViewOD->szName );

	mov	ecx, DWORD PTR _lpViewOD$8477[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnEntityNameFromCsr@4
	push	eax
	push	0
	push	271					; 0000010fH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2696 :       fnOperationReturn( iSetViewToSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	202					; 000000caH
	call	_fnOperationReturn
	add	esp, 8

; 2697 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8462
$L8474:

; 2699 : 
; 2700 :    // Check to make sure that the subobject entity is not already the
; 2701 :    // root of the view, if so return a 1
; 2702 :    if ( zGETPTR( lpViewCsr->hRootViewEntityCsr ) == lpViewEntityCsr )

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	jne	SHORT $L8480

; 2704 :       fnOperationReturn( iSetViewToSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	202					; 000000caH
	call	_fnOperationReturn
	add	esp, 8

; 2705 :       return( 1 );

	mov	ax, 1
	jmp	$L8462
$L8480:

; 2707 : 
; 2708 :    // Check to make sure that there is a parent entity instance for
; 2709 :    // the new root of the view
; 2710 :    if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 1
	jne	SHORT $L8482

; 2711 :       fnEstablishCursorForView( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnEstablishCursorForView
	add	esp, 4
$L8482:

; 2712 : 
; 2713 :    lpViewRootParentCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewRootParentCsr$[ebp], eax

; 2714 : 
; 2715 :    // We double check that the parent cursor does not need establishing
; 2716 :    // because create entity ( through another view ) might mark the
; 2717 :    // parent only as needing to be established.
; 2718 :    if ( lpViewRootParentCsr->hEntityInstance == UNSET_CSR )

	mov	ecx, DWORD PTR _lpViewRootParentCsr$[ebp]
	cmp	DWORD PTR [ecx+26], 1
	jne	SHORT $L8485

; 2719 :       fnEstablishCursorForView( lpViewRootParentCsr );

	mov	edx, DWORD PTR _lpViewRootParentCsr$[ebp]
	push	edx
	call	_fnEstablishCursorForView
	add	esp, 4
$L8485:

; 2720 : 
; 2721 :    if ( lpViewRootParentCsr->hEntityInstance == 0 )

	mov	eax, DWORD PTR _lpViewRootParentCsr$[ebp]
	cmp	DWORD PTR [eax+26], 0
	jne	SHORT $L8486

; 2723 :       //  "KZOEE272 - Subobject Parent Cursor is NULL"
; 2724 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 272, 0,
; 2725 :                         fnEntityNameFromCsr( lpViewEntityCsr ),
; 2726 :                         fnEntityNameFromCsr( lpViewRootParentCsr ) );

	mov	ecx, DWORD PTR _lpViewRootParentCsr$[ebp]
	push	ecx
	call	_fnEntityNameFromCsr@4
	push	eax
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnEntityNameFromCsr@4
	push	eax
	push	0
	push	272					; 00000110H
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2727 :       fnOperationReturn( iSetViewToSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	202					; 000000caH
	call	_fnOperationReturn
	add	esp, 8

; 2728 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8462
$L8486:

; 2730 : 
; 2731 :    // Make sure the parent cursor is defined
; 2732 :    lpEntityInstance = zGETPTR( lpViewRootParentCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewRootParentCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2733 :    if ( lpEntityInstance->u.nInd.bHidden )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8488

; 2735 :       //  "KZOEE273 - Parent Entity instance for View deleted"
; 2736 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 273, 0,
; 2737 :                         fnEntityNameFromCsr( lpViewRootParentCsr ), 0 );

	push	0
	mov	ecx, DWORD PTR _lpViewRootParentCsr$[ebp]
	push	ecx
	call	_fnEntityNameFromCsr@4
	push	eax
	push	0
	push	273					; 00000111H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2738 :       fnOperationReturn( iSetViewToSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	202					; 000000caH
	call	_fnOperationReturn
	add	esp, 8

; 2739 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8462
$L8488:

; 2741 : 
; 2742 :    // If we're in hierarchical mode, then reset is not allowed
; 2743 :    if ( lpViewCsr->hHierRootEntityInstance &&
; 2744 :         (lpViewCsr->hHierEntityInstance != lpViewEntityCsr->hEntityInstance ||
; 2745 :          lpViewEntity->bRecursive == FALSE) )

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8489
	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [eax+26]
	cmp	edx, DWORD PTR [ecx+26]
	jne	SHORT $L8490
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8489
$L8490:

; 2748 :       // "KZOEE266 - Invalid Operation for Hierarchical cursor position"
; 2749 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 266, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	266					; 0000010aH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2750 :       fnOperationReturn( iSetViewToSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	202					; 000000caH
	call	_fnOperationReturn
	add	esp, 8

; 2751 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8462
$L8489:

; 2753 : 
; 2754 :    // Call fnSetViewToSubobject to do the rest
; 2755 :    nRC = fnSetViewToSubobject( lpView, lpViewEntity, lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetViewToSubobject
	add	esp, 12					; 0000000cH
	mov	WORD PTR _nRC$[ebp], ax

; 2756 : 
; 2757 :    fnOperationReturn( iSetViewToSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	202					; 000000caH
	call	_fnOperationReturn
	add	esp, 8

; 2758 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8462:

; 2759 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SetViewToSubobject@8 ENDP
_TEXT	ENDS
PUBLIC	_fnResetViewFromSubobject
PUBLIC	_ResetViewFromSubobjectWithoutError@4
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -20
_lpViewCsr$ = -4
_lpViewSubobject$ = -12
_lpViewParentEntityInstance$ = -16
_nRC$ = -8
_ResetViewFromSubobjectWithoutError@4 PROC NEAR

; 2784 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 2785 :    LPTASK            lpCurrentTask;
; 2786 :    LPVIEWCSR         lpViewCsr;
; 2787 :    LPVIEWSUBOBJECT   lpViewSubobject;
; 2788 :    LPENTITYINSTANCE  lpViewParentEntityInstance;
; 2789 :    zSHORT            nRC;
; 2790 : 
; 2791 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 2792 :    if ( (lpCurrentTask = fnOperationCall( iResetViewFromSubobject, lpView,
; 2793 :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	203					; 000000cbH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8499

; 2795 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8493
$L8499:

; 2797 : 
; 2798 :    // Get the ViewCsr for the view
; 2799 :    lpViewCsr       = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2800 :    lpViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$[ebp], eax

; 2801 : 
; 2802 :    // Check to make sure that the subobject entity is not already the
; 2803 :    // root of the view
; 2804 :    if ( lpViewSubobject == 0 )

	cmp	DWORD PTR _lpViewSubobject$[ebp], 0
	jne	SHORT $L8502

; 2806 :       fnOperationReturn( iResetViewFromSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	203					; 000000cbH
	call	_fnOperationReturn
	add	esp, 8

; 2807 :       return( 1 );

	mov	ax, 1
	jmp	SHORT $L8493
$L8502:

; 2809 : 
; 2810 :    lpViewParentEntityInstance = zGETPTR( lpViewCsr->hViewParentEntityInstance );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewParentEntityInstance$[ebp], eax

; 2811 :    if ( lpViewParentEntityInstance->u.nInd.bHidden )

	mov	edx, DWORD PTR _lpViewParentEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8504

; 2813 :       //  "KZOEE273 - Parent Entity instance for View deleted"
; 2814 :    // fnIssueCoreError( lpCurrentTask, lpView, 8, 273, 0,
; 2815 :    //                   fnEntityNameFromInstance( lpViewParentEntityInstance ),
; 2816 :    //                   0 );
; 2817 :       fnOperationReturn( iResetViewFromSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	203					; 000000cbH
	call	_fnOperationReturn
	add	esp, 8

; 2818 :       return( -1 );

	or	ax, -1
	jmp	SHORT $L8493
$L8504:

; 2820 : 
; 2821 :    // If we're in hierarchical mode, then reset is not allowed
; 2822 :    if ( lpViewCsr->hHierRootEntityInstance )

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8505

; 2824 :       //  "KZOEE264 - Invalid Operation for Hierarchical processing"
; 2825 :    // fnIssueCoreError( lpCurrentTask, lpView, 8, 264, 0, 0, 0 );
; 2826 :       fnOperationReturn( iResetViewFromSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	203					; 000000cbH
	call	_fnOperationReturn
	add	esp, 8

; 2827 :       return( -2 );

	mov	ax, -2					; fffffffeH
	jmp	SHORT $L8493
$L8505:

; 2829 : 
; 2830 :    // OK subobject is in-hand, reset from the subobject to the
; 2831 :    // previous subobject level.
; 2832 :    nRC = fnResetViewFromSubobject( lpView );

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnResetViewFromSubobject
	add	esp, 4
	mov	WORD PTR _nRC$[ebp], ax

; 2833 : 
; 2834 :    fnOperationReturn( iResetViewFromSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	203					; 000000cbH
	call	_fnOperationReturn
	add	esp, 8

; 2835 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8493:

; 2836 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_ResetViewFromSubobjectWithoutError@4 ENDP
_TEXT	ENDS
PUBLIC	_ResetViewFromSubobject@4
EXTRN	_fnEntityNameFromInstance@4:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -20
_lpViewCsr$ = -4
_lpViewSubobject$ = -12
_lpViewParentEntityInstance$ = -16
_nRC$ = -8
_ResetViewFromSubobject@4 PROC NEAR

; 2859 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 2860 :    LPTASK            lpCurrentTask;
; 2861 :    LPVIEWCSR         lpViewCsr;
; 2862 :    LPVIEWSUBOBJECT   lpViewSubobject;
; 2863 :    LPENTITYINSTANCE  lpViewParentEntityInstance;
; 2864 :    zSHORT            nRC;
; 2865 : 
; 2866 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 2867 :    if ( (lpCurrentTask = fnOperationCall( iResetViewFromSubobject, lpView,
; 2868 :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	203					; 000000cbH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8514

; 2870 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8508
$L8514:

; 2872 : 
; 2873 :    // Get the ViewCsr for the view
; 2874 :    lpViewCsr       = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2875 :    lpViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$[ebp], eax

; 2876 : 
; 2877 :    // Check to make sure that the subobject entity is not already the
; 2878 :    // root of the view
; 2879 :    if ( lpViewSubobject == 0 )

	cmp	DWORD PTR _lpViewSubobject$[ebp], 0
	jne	SHORT $L8517

; 2881 :       fnOperationReturn( iResetViewFromSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	203					; 000000cbH
	call	_fnOperationReturn
	add	esp, 8

; 2882 :       return( 1 );

	mov	ax, 1
	jmp	$L8508
$L8517:

; 2884 : 
; 2885 :    lpViewParentEntityInstance = zGETPTR( lpViewCsr->hViewParentEntityInstance );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewParentEntityInstance$[ebp], eax

; 2886 :    if ( lpViewParentEntityInstance->u.nInd.bHidden )

	mov	edx, DWORD PTR _lpViewParentEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8519

; 2888 :       //  "KZOEE273 - Parent Entity instance for View deleted"
; 2889 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 273, 0,
; 2890 :                         fnEntityNameFromInstance( lpViewParentEntityInstance ),
; 2891 :                         0 );

	push	0
	mov	ecx, DWORD PTR _lpViewParentEntityInstance$[ebp]
	push	ecx
	call	_fnEntityNameFromInstance@4
	push	eax
	push	0
	push	273					; 00000111H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2892 :       fnOperationReturn( iResetViewFromSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	203					; 000000cbH
	call	_fnOperationReturn
	add	esp, 8

; 2893 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8508
$L8519:

; 2895 : 
; 2896 :    // If we're in hierarchical mode, then reset is not allowed
; 2897 :    if ( lpViewCsr->hHierRootEntityInstance )

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8520

; 2899 :       //  "KZOEE264 - Invalid Operation for Hierarchical processing"
; 2900 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 264, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	264					; 00000108H
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2901 :       fnOperationReturn( iResetViewFromSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	203					; 000000cbH
	call	_fnOperationReturn
	add	esp, 8

; 2902 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8508
$L8520:

; 2904 : 
; 2905 :    // OK subobject is in-hand, reset from the subobject to the
; 2906 :    // previous subobject level.
; 2907 :    nRC = fnResetViewFromSubobject( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnResetViewFromSubobject
	add	esp, 4
	mov	WORD PTR _nRC$[ebp], ax

; 2908 : 
; 2909 :    fnOperationReturn( iResetViewFromSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	203					; 000000cbH
	call	_fnOperationReturn
	add	esp, 8

; 2910 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8508:

; 2911 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_ResetViewFromSubobject@4 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BO@GLH@DropView?5?$CFs?3?50x?$CF08x?5?5?5LOD?3?5?$CFs?$AA@ ; `string'
PUBLIC	_DropView@4
PUBLIC	_DropViewTrace@8
;	COMDAT ??_C@_0BO@GLH@DropView?5?$CFs?3?50x?$CF08x?5?5?5LOD?3?5?$CFs?$AA@
; File C:\10C\A\oe\KZOEVMAA.C
_DATA	SEGMENT
??_C@_0BO@GLH@DropView?5?$CFs?3?50x?$CF08x?5?5?5LOD?3?5?$CFs?$AA@ DB 'Dro'
	DB	'pView %s: 0x%08x   LOD: %s', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_cpcMsg$ = 8
_lpView$ = 12
_lpViewOD$ = -4
_DropViewTrace@8 PROC NEAR

; 2935 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2936 :    LPVIEWOD lpViewOD = zGETPTR( lpView->hViewOD );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 2937 : //xif ( zstrcmp( lpViewOD->szName, "TZRPSRCO" ) == 0 )
; 2938 : //x{
; 2939 :       TraceLine( "DropView %s: 0x%08x   LOD: %s", cpcMsg, lpView, lpViewOD->szName );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcMsg$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BO@GLH@DropView?5?$CFs?3?50x?$CF08x?5?5?5LOD?3?5?$CFs?$AA@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H

; 2940 : //x}
; 2941 : 
; 2942 :    return( DropView( lpView ) );

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_DropView@4

; 2943 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_DropViewTrace@8 ENDP
_TEXT	ENDS
EXTRN	_fnInvokeOCEOperation:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -8
_nRC$ = -4
_lpViewOD$8537 = -12
_lpViewCsr$8540 = -16
_lpViewOI$8542 = -24
_lpFirstViewCsr$8544 = -20
_nState$8547 = -28
_DropView@4 PROC NEAR

; 2947 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 2948 :    LPTASK      lpCurrentTask;
; 2949 :    zSHORT      nRC;
; 2950 : 
; 2951 : #ifdef DEBUG_VIEW
; 2952 : 
; 2953 :    zLONG  k;
; 2954 : 
; 2955 :    if ( lpView == 0 )
; 2956 :    {
; 2957 :       LPVIEWOD lpViewOD;
; 2958 : 
; 2959 :       TraceLine( "DropView Reporting View Usage ===============================> High Water Mark: %d", g_lHighWaterView );
; 2960 :       for ( k = 0; k < g_lHighWaterView; k++ )
; 2961 :       {
; 2962 :          if ( g_pvView[ k ] )
; 2963 :          {
; 2964 :             lpViewOD = zGETPTR( g_pvView[ k ] );
; 2965 :             TraceLine( "== %06d ============> View: 0x%08x   LOD: %s",
; 2966 :                        k, g_pvView[ k ], lpViewOD->szName );
; 2967 :          }
; 2968 :       }
; 2969 : 
; 2970 :    // g_lHighWaterView = -1;
; 2971 :       return( 0 );
; 2972 :    }
; 2973 : 
; 2974 : #endif
; 2975 : 
; 2976 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 2977 :    if ( (lpCurrentTask = fnOperationCall( iDropView, lpView,
; 2978 :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	212					; 000000d4H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8534

; 2980 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8531
$L8534:

; 2982 : 
; 2983 :    if ( lpView->hSubtask )

	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [ecx+18], 0
	je	SHORT $L8535

; 2985 :       //  "KZOEE108 - Attempt to drop Subtask View"
; 2986 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 108, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	108					; 0000006cH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2987 :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 2989 :    else

	jmp	$L8536
$L8535:

; 2991 : #ifdef __ACTIVATE_CONSTRAINTS__
; 2992 :       LPVIEWOD lpViewOD = zGETPTR( lpView->hViewOD );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8537[ebp], eax

; 2993 : 
; 2994 :       // If we have a constraint for Dropping the OI, we need to
; 2995 :       // determine if we are the last view for this OI.  If so,
; 2996 :       // call the constraint operation.
; 2997 :       // Note: We drop the view no matter what the constraint operation
; 2998 :       // returns, so we don't check the return code.
; 2999 :       if ( lpViewOD->bDropOIConstraint )

	mov	eax, DWORD PTR _lpViewOD$8537[ebp]
	mov	ecx, DWORD PTR [eax+240]
	shr	ecx, 6
	and	ecx, 1
	test	ecx, ecx
	je	$L8546

; 3001 :          LPVIEWCSR lpViewCsr      = zGETPTR( lpView->hViewCsr );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$8540[ebp], eax

; 3002 :          LPVIEWOI  lpViewOI       = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$8540[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$8542[ebp], eax

; 3003 :          LPVIEWCSR lpFirstViewCsr = zGETPTR( lpViewOI->hFirstViewCsr );

	mov	eax, DWORD PTR _lpViewOI$8542[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstViewCsr$8544[ebp], eax

; 3004 : 
; 3005 :          if ( lpFirstViewCsr->hNextViewCsr == 0 )

	mov	edx, DWORD PTR _lpFirstViewCsr$8544[ebp]
	cmp	DWORD PTR [edx+2], 0
	jne	SHORT $L8546

; 3007 :             zSHORT nState = 0;

	mov	WORD PTR _nState$8547[ebp], 0

; 3008 : 
; 3009 :             if ( lpCurrentTask->bShutdown )

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	ecx, DWORD PTR [eax+443]
	shr	ecx, 5
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8548

; 3010 :                nState += zOCE_STATE_SHUTDOWN;

	mov	dx, WORD PTR _nState$8547[ebp]
	add	dx, 2
	mov	WORD PTR _nState$8547[ebp], dx
$L8548:

; 3011 : 
; 3012 :             fnInvokeOCEOperation( lpView, lpCurrentTask,
; 3013 :                                   zOCE_DROPOI, nState );

	mov	ax, WORD PTR _nState$8547[ebp]
	push	eax
	push	4
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnInvokeOCEOperation
	add	esp, 16					; 00000010H

; 3014 :             lpViewOI->bDropConstraintInvoked = TRUE;

	mov	eax, DWORD PTR _lpViewOI$8542[ebp]
	mov	ecx, DWORD PTR [eax+36]
	or	ecx, 64					; 00000040H
	mov	edx, DWORD PTR _lpViewOI$8542[ebp]
	mov	DWORD PTR [edx+36], ecx
$L8546:

; 3017 : #endif
; 3018 :       nRC = fnDropView( lpView ); // blew on this line 2006.07.03 dks1

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnDropView@4
	mov	WORD PTR _nRC$[ebp], ax
$L8536:

; 3020 : 
; 3021 :    fnOperationReturn( iDropView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	212					; 000000d4H
	call	_fnOperationReturn
	add	esp, 8

; 3022 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8531:

; 3023 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_DropView@4 ENDP
_TEXT	ENDS
PUBLIC	_SfGetFirstSubtaskView@8
_TEXT	SEGMENT
_pvReturnSubtask$ = 8
_vTaskView$ = 12
_lpCurrentTask$ = -12
_lpSubtask$ = -8
_nRC$ = -4
_SfGetFirstSubtaskView@8 PROC NEAR

; 3041 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 3042 :    LPTASK      lpCurrentTask;
; 3043 :    LPSUBTASK   lpSubtask;
; 3044 :    zSHORT      nRC;
; 3045 : 
; 3046 :    *pvReturnSubtask = 0;

	mov	eax, DWORD PTR _pvReturnSubtask$[ebp]
	mov	DWORD PTR [eax], 0

; 3047 : 
; 3048 :    // If task not active or disabled, return zCALL_ERROR.
; 3049 :    if ( (lpCurrentTask = fnOperationCall( iSfGetFirstSubtaskView, vTaskView, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _vTaskView$[ebp]
	push	ecx
	push	209					; 000000d1H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8557

; 3050 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8553
$L8557:

; 3051 : 
; 3052 :    // Get first subtask.
; 3053 :    lpSubtask = zGETPTR( lpCurrentTask->hFirstSubtask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 3054 :    if ( lpSubtask )

	cmp	DWORD PTR _lpSubtask$[ebp], 0
	je	SHORT $L8559

; 3056 :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 3057 :       *pvReturnSubtask = zGETPTR( lpSubtask->hSubtaskView );

	mov	ecx, DWORD PTR _lpSubtask$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	ecx, DWORD PTR _pvReturnSubtask$[ebp]
	mov	DWORD PTR [ecx], eax

; 3059 :    else

	jmp	SHORT $L8561
$L8559:

; 3061 :       nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L8561:

; 3063 : 
; 3064 :    fnOperationReturn( iSfGetFirstSubtaskView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	209					; 000000d1H
	call	_fnOperationReturn
	add	esp, 8

; 3065 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8553:

; 3066 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SfGetFirstSubtaskView@8 ENDP
_TEXT	ENDS
PUBLIC	_SfGetNextSubtaskView@8
_TEXT	SEGMENT
_pvReturnSubtask$ = 8
_lpSubtaskView$ = 12
_lpCurrentTask$ = -16
_lpNextSubtask$ = -12
_lpSubtask$ = -8
_nRC$ = -4
_SfGetNextSubtaskView@8 PROC NEAR

; 3086 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 3087 :    LPTASK      lpCurrentTask;
; 3088 :    LPSUBTASK   lpNextSubtask;
; 3089 :    LPSUBTASK   lpSubtask;
; 3090 :    zSHORT      nRC;
; 3091 : 
; 3092 :    *pvReturnSubtask = 0;

	mov	eax, DWORD PTR _pvReturnSubtask$[ebp]
	mov	DWORD PTR [eax], 0

; 3093 : 
; 3094 :    // If task not active or disabled, or subtask view invalid, return zCALL_ERROR.
; 3095 :    if ( (lpCurrentTask = fnOperationCall( iSfGetNextSubtaskView, lpSubtaskView,
; 3096 :                                           zVALID_SUBTASK_VIEW )) == 0 )

	push	3
	mov	ecx, DWORD PTR _lpSubtaskView$[ebp]
	push	ecx
	push	210					; 000000d2H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8571

; 3098 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8566
$L8571:

; 3100 : 
; 3101 :    // Get next subtask view based on the current subtask.
; 3102 :    lpSubtask     = zGETPTR( lpSubtaskView->hSubtask );

	mov	edx, DWORD PTR _lpSubtaskView$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 3103 :    lpNextSubtask = zGETPTR( lpSubtask->hNextSubtask );

	mov	ecx, DWORD PTR _lpSubtask$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextSubtask$[ebp], eax

; 3104 :    if ( lpNextSubtask )

	cmp	DWORD PTR _lpNextSubtask$[ebp], 0
	je	SHORT $L8574

; 3106 :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 3107 :       *pvReturnSubtask = zGETPTR( lpNextSubtask->hSubtaskView );

	mov	eax, DWORD PTR _lpNextSubtask$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	edx, DWORD PTR _pvReturnSubtask$[ebp]
	mov	DWORD PTR [edx], eax

; 3109 :    else

	jmp	SHORT $L8576
$L8574:

; 3111 :       nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L8576:

; 3113 : 
; 3114 :    fnOperationReturn( iSfGetNextSubtaskView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	210					; 000000d2H
	call	_fnOperationReturn
	add	esp, 8

; 3115 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8566:

; 3116 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SfGetNextSubtaskView@8 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0DA@FJAL@SfSetApplicationTask?5for?5App?3?5?$CFs@ ; `string'
PUBLIC	_SfSetApplicationTask@8
;	COMDAT ??_C@_0DA@FJAL@SfSetApplicationTask?5for?5App?3?5?$CFs@
; File C:\10C\A\oe\KZOEVMAA.C
_DATA	SEGMENT
??_C@_0DA@FJAL@SfSetApplicationTask?5for?5App?3?5?$CFs@ DB 'SfSetApplicat'
	DB	'ionTask for App: %s   Task: 0x%08x', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTaskView$ = 8
_lFlags$ = 12
_lpApp$ = -12
_lpTask$ = -8
_nRC$ = -4
_SfSetApplicationTask@8 PROC NEAR

; 3137 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 3138 :    LPAPP     lpApp;
; 3139 :    LPTASK    lpTask;
; 3140 :    zSHORT    nRC;
; 3141 : 
; 3142 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 3143 :    if ( lFlags != 0 ||
; 3144 :         (lpTask = fnOperationCall( iSfSetApplicationTask, lpTaskView,
; 3145 :                                    zVALID_VIEW )) == 0 )

	cmp	DWORD PTR _lFlags$[ebp], 0
	jne	SHORT $L8586
	push	1
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	push	225					; 000000e1H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpTask$[ebp], eax
	cmp	DWORD PTR _lpTask$[ebp], 0
	jne	SHORT $L8585
$L8586:

; 3147 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8581
$L8585:

; 3149 : 
; 3150 :    lpApp = zGETPTR( lpTask->hApp );

	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpApp$[ebp], eax

; 3151 :    if ( lpApp->hApplicationTask == 0 )

	mov	eax, DWORD PTR _lpApp$[ebp]
	cmp	DWORD PTR [eax+1901], 0
	jne	SHORT $L8588

; 3153 :       TraceLine( "SfSetApplicationTask for App: %s   Task: 0x%08x",
; 3154 :                  lpApp->szName, lpTaskView->hTask );

	mov	ecx, DWORD PTR _lpTaskView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 6
	push	eax
	push	OFFSET FLAT:??_C@_0DA@FJAL@SfSetApplicationTask?5for?5App?3?5?$CFs@ ; `string'
	call	_TraceLine
	add	esp, 12					; 0000000cH

; 3155 :       lpApp->hApplicationTask = lpTaskView->hTask;

	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR _lpTaskView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR [ecx+1901], eax

; 3156 :       lpTask->bApplicationTask = TRUE;

	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+443]
	or	dh, 32					; 00000020H
	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	DWORD PTR [eax+443], edx

; 3157 :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 3159 :    else

	jmp	SHORT $L8590
$L8588:

; 3161 :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L8590:

; 3163 : 
; 3164 :    fnOperationReturn( iSfSetApplicationTask, lpTask );

	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	push	225					; 000000e1H
	call	_fnOperationReturn
	add	esp, 8

; 3165 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8581:

; 3166 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SfSetApplicationTask@8 ENDP
_TEXT	ENDS
PUBLIC	_SfSetUserIdForTask@8
EXTRN	__imp__strncat:NEAR
_TEXT	SEGMENT
_lpTaskView$ = 8
_cpcUserId$ = 12
_lpTask$ = -4
_SfSetUserIdForTask@8 PROC NEAR

; 3187 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 3188 :    LPTASK    lpTask;
; 3189 : 
; 3190 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 3191 :    if ( (lpTask = fnOperationCall( iSfSetUserIdForTask, lpTaskView,
; 3192 :                                    zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	push	227					; 000000e3H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpTask$[ebp], eax
	cmp	DWORD PTR _lpTask$[ebp], 0
	jne	SHORT $L8597

; 3194 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8595
$L8597:

; 3196 : 
; 3197 :    lpTask->szUserId[ 0 ] = 0;

	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	BYTE PTR [ecx+244], 0

; 3198 :    zstrncat( lpTask->szUserId, cpcUserId, 33 );

	push	33					; 00000021H
	mov	edx, DWORD PTR _cpcUserId$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$[ebp]
	add	eax, 244				; 000000f4H
	push	eax
	call	DWORD PTR __imp__strncat
	add	esp, 12					; 0000000cH

; 3199 : 
; 3200 :    fnOperationReturn( iSfSetUserIdForTask, lpTask );

	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	push	227					; 000000e3H
	call	_fnOperationReturn
	add	esp, 8

; 3201 :    return( 0 );

	xor	ax, ax
$L8595:

; 3202 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SfSetUserIdForTask@8 ENDP
_TEXT	ENDS
PUBLIC	_SfGetUserIdForTask@8
_TEXT	SEGMENT
_lpTaskView$ = 8
_pchUserId$ = 12
_lpTask$ = -4
_SfGetUserIdForTask@8 PROC NEAR

; 3223 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 3224 :    LPTASK    lpTask;
; 3225 : 
; 3226 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 3227 :    if ( (lpTask = fnOperationCall( iSfGetUserIdForTask, lpTaskView,
; 3228 :                                    zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpTaskView$[ebp]
	push	eax
	push	226					; 000000e2H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpTask$[ebp], eax
	cmp	DWORD PTR _lpTask$[ebp], 0
	jne	SHORT $L8604

; 3230 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8602
$L8604:

; 3232 : 
; 3233 :    zstrcpy( pchUserId, lpTask->szUserId );

	mov	ecx, DWORD PTR _lpTask$[ebp]
	add	ecx, 244				; 000000f4H
	push	ecx
	mov	edx, DWORD PTR _pchUserId$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 3234 : 
; 3235 :    fnOperationReturn( iSfGetUserIdForTask, lpTask );

	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	push	226					; 000000e2H
	call	_fnOperationReturn
	add	esp, 8

; 3236 :    return( 0 );

	xor	ax, ax
$L8602:

; 3237 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SfGetUserIdForTask@8 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0O@GNFE@SCOPE?5UNKNOWN?$AA@		; `string'
PUBLIC	??_C@_0GC@BDPF@SfTransferView?5trying?5to?5transfe@ ; `string'
PUBLIC	??_C@_07JCAB@BombZDr?$AA@			; `string'
PUBLIC	??_C@_07FGLN@?$FLDebug?$FN?$AA@			; `string'
PUBLIC	??_C@_0P@CGJB@Recursive?5view?$AA@		; `string'
PUBLIC	??_C@_0BO@DHAO@Houston?5?4?4?4?5we?5have?5a?5problem?$AA@ ; `string'
EXTRN	_SysReadZeidonIni@16:NEAR
;	COMDAT ??_C@_0O@GNFE@SCOPE?5UNKNOWN?$AA@
; File C:\10C\A\oe\KZOEVMAA.C
_DATA	SEGMENT
??_C@_0O@GNFE@SCOPE?5UNKNOWN?$AA@ DB 'SCOPE UNKNOWN', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0GC@BDPF@SfTransferView?5trying?5to?5transfe@
_DATA	SEGMENT
??_C@_0GC@BDPF@SfTransferView?5trying?5to?5transfe@ DB 'SfTransferView tr'
	DB	'ying to transfer view (0x%08x %s) from Task: 0x%08x to Task: '
	DB	'0x%08x at Scope: %s', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_07JCAB@BombZDr?$AA@
_DATA	SEGMENT
??_C@_07JCAB@BombZDr?$AA@ DB 'BombZDr', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_07FGLN@?$FLDebug?$FN?$AA@
_DATA	SEGMENT
??_C@_07FGLN@?$FLDebug?$FN?$AA@ DB '[Debug]', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@CGJB@Recursive?5view?$AA@
_DATA	SEGMENT
??_C@_0P@CGJB@Recursive?5view?$AA@ DB 'Recursive view', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@DHAO@Houston?5?4?4?4?5we?5have?5a?5problem?$AA@
_DATA	SEGMENT
??_C@_0BO@DHAO@Houston?5?4?4?4?5we?5have?5a?5problem?$AA@ DB 'Houston ...'
	DB	' we have a problem', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpAppQualView$ = 12
_nScope$ = 16
_lpCurrentTask$ = -12
_plpFirstView$ = -4
_i$ = -8
_lpViewOD$8616 = -16
_lpViewOD$8627 = -20
_lpTask$8630 = -24
_lpApp$8632 = -28
_lpTask$8635 = -32
_lpSearchView$8640 = -36
_hView$8641 = -40
_lpApp$8650 = -44
_lpMainTask$8653 = -48
_szDebug$8658 = -52
_SfTransferView@12 PROC NEAR

; 3266 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H

; 3267 :    LPTASK      lpCurrentTask;
; 3268 :    zPVIEW      plpFirstView;
; 3269 :    int         i = 0;

	mov	DWORD PTR _i$[ebp], 0

; 3270 :    i = 1 / i;  // this should never be called ... dks 2006.07.10

	mov	eax, 1
	cdq
	idiv	DWORD PTR _i$[ebp]
	mov	DWORD PTR _i$[ebp], eax

; 3271 : 
; 3272 : #if 1
; 3273 :    if ( lpView && lpAppQualView && lpAppQualView->hTask != lpView->hTask )

	cmp	DWORD PTR _lpView$[ebp], 0
	je	$L8615
	cmp	DWORD PTR _lpAppQualView$[ebp], 0
	je	$L8615
	mov	eax, DWORD PTR _lpAppQualView$[ebp]
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [eax+14]
	cmp	edx, DWORD PTR [ecx+14]
	je	$L8615

; 3275 :       LPVIEWOD    lpViewOD = zGETPTR( lpView->hViewOD );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8616[ebp], eax

; 3276 :       TraceLine( "SfTransferView trying to transfer view (0x%08x %s) from Task: "
; 3277 :                     "0x%08x to Task: 0x%08x at Scope: %s",
; 3278 :                  lpView, lpViewOD->szName, lpView->hTask,
; 3279 :                  lpAppQualView ? lpAppQualView->hTask : 0,
; 3280 :                  nScope == zLEVEL_APPLICATION ? "APPLICATION" :
; 3281 :                  nScope == zLEVEL_SYSTEM ? "SYSTEM" : "SCOPE UNKNOWN" );

	movsx	edx, WORD PTR _nScope$[ebp]
	cmp	edx, 4
	jne	SHORT $L9274
	mov	DWORD PTR -56+[ebp], OFFSET FLAT:??_C@_0M@LKKI@APPLICATION?$AA@ ; `string'
	jmp	SHORT $L9275
$L9274:
	movsx	eax, WORD PTR _nScope$[ebp]
	cmp	eax, 8
	jne	SHORT $L9272
	mov	DWORD PTR -60+[ebp], OFFSET FLAT:??_C@_06LDDL@SYSTEM?$AA@ ; `string'
	jmp	SHORT $L9273
$L9272:
	mov	DWORD PTR -60+[ebp], OFFSET FLAT:??_C@_0O@GNFE@SCOPE?5UNKNOWN?$AA@ ; `string'
$L9273:
	mov	ecx, DWORD PTR -60+[ebp]
	mov	DWORD PTR -56+[ebp], ecx
$L9275:
	cmp	DWORD PTR _lpAppQualView$[ebp], 0
	je	SHORT $L9276
	mov	edx, DWORD PTR _lpAppQualView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR -64+[ebp], eax
	jmp	SHORT $L9277
$L9276:
	mov	DWORD PTR -64+[ebp], 0
$L9277:
	mov	ecx, DWORD PTR -56+[ebp]
	push	ecx
	mov	edx, DWORD PTR -64+[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	mov	edx, DWORD PTR _lpViewOD$8616[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0GC@BDPF@SfTransferView?5trying?5to?5transfe@ ; `string'
	call	_TraceLine
	add	esp, 24					; 00000018H
$L8615:

; 3283 : #endif
; 3284 : 
; 3285 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 3286 :    if ( (lpCurrentTask = fnOperationCall( iSfTransferView, lpView,
; 3287 :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	213					; 000000d5H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8620

; 3289 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8611
$L8620:

; 3291 : 
; 3292 :    // Verify validity of lpAppQualView if it was supplied.
; 3293 :    if ( (lpAppQualView || nScope == zLEVEL_APPLICATION) &&
; 3294 :         fnValidView( lpCurrentTask, lpAppQualView ) == 0 )

	cmp	DWORD PTR _lpAppQualView$[ebp], 0
	jne	SHORT $L8622
	movsx	edx, WORD PTR _nScope$[ebp]
	cmp	edx, 4
	jne	SHORT $L8621
$L8622:
	mov	eax, DWORD PTR _lpAppQualView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidView
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L8621

; 3296 :       fnOperationReturn( iSfTransferView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	213					; 000000d5H
	call	_fnOperationReturn
	add	esp, 8

; 3297 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8611
$L8621:

; 3299 : 
; 3300 :    // Check validity of nScope.
; 3301 :    if ( nScope != zLEVEL_APPLICATION && nScope != zLEVEL_SYSTEM )

	movsx	ecx, WORD PTR _nScope$[ebp]
	cmp	ecx, 4
	je	SHORT $L8623
	movsx	edx, WORD PTR _nScope$[ebp]
	cmp	edx, 8
	je	SHORT $L8623

; 3303 :       // Invalid scope parm passed.
; 3304 :       // "KZOEE110 - Invalid level for View name"
; 3305 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 110, (zLONG) nScope, 0, 0 );

	push	0
	push	0
	movsx	eax, WORD PTR _nScope$[ebp]
	push	eax
	push	110					; 0000006eH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3306 :       fnOperationReturn( iSfTransferView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	213					; 000000d5H
	call	_fnOperationReturn
	add	esp, 8

; 3307 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8611
$L8623:

; 3309 : 
; 3310 :    // If view is a subtask (hSubtask has been set), then transfer is
; 3311 :    // invalid--return zCALL_ERROR.
; 3312 :    if ( lpView->hSubtask )

	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [ecx+18], 0
	je	SHORT $L8625

; 3314 :       // "KZOEE100 - Invalid View, view is a Subtask View"
; 3315 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 100, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	100					; 00000064H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3316 :       fnOperationReturn( iSfTransferView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	213					; 000000d5H
	call	_fnOperationReturn
	add	esp, 8

; 3317 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8611
$L8625:

; 3319 : 
; 3320 :    // View cannot be connected to a valid object instance.  Check to see if
; 3321 :    // the cursor pointer points to anything--if it does, then the view has an
; 3322 :    // object instance and cannot be transferred.
; 3323 :    if ( lpView->hViewCsr )

	mov	edx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [edx+10], 0
	je	SHORT $L8626

; 3325 :       LPVIEWOD lpViewOD = zGETPTR( lpView->hViewOD );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8627[ebp], eax

; 3326 : 
; 3327 :       // "KZOEE113 - Invalid View, view contains an instance"
; 3328 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 113, 0, lpViewOD->szName, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewOD$8627[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	push	0
	push	113					; 00000071H
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3329 :       fnOperationReturn( iSfTransferView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	213					; 000000d5H
	call	_fnOperationReturn
	add	esp, 8

; 3330 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8611
$L8626:

; 3332 : 
; 3333 :    // We have validated everything ... for sure the level is APPLICATION or
; 3334 :    // SYSTEM when we get here.
; 3335 : 
; 3336 :    // Remove view from task or application.  First set the pointer to point
; 3337 :    // to the lpFirstView pointer in either the application structure or the
; 3338 :    // task structure depending on lpView->bApplicationView.
; 3339 :    if ( lpView->bApplicationView )

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8629

; 3341 :       LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8630[ebp], eax

; 3342 :       LPAPP  lpApp  = zGETPTR( lpTask->hApp );

	mov	ecx, DWORD PTR _lpTask$8630[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpApp$8632[ebp], eax

; 3343 : 
; 3344 :       plpFirstView = &(lpApp->hFirstView);

	mov	eax, DWORD PTR _lpApp$8632[ebp]
	add	eax, 1889				; 00000761H
	mov	DWORD PTR _plpFirstView$[ebp], eax

; 3346 :    else

	jmp	SHORT $L8634
$L8629:

; 3348 :       LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8635[ebp], eax

; 3349 : 
; 3350 :       plpFirstView = &(lpTask->hFirstView);

	mov	eax, DWORD PTR _lpTask$8635[ebp]
	add	eax, 106				; 0000006aH
	mov	DWORD PTR _plpFirstView$[ebp], eax
$L8634:

; 3352 : 
; 3353 :    // Remove lpView from the view chain.
; 3354 :    if ( *plpFirstView == zGETHNDL( lpView ) )

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _plpFirstView$[ebp]
	cmp	DWORD PTR [edx], eax
	jne	SHORT $L8638

; 3355 :       *plpFirstView = lpView->hNextView;

	mov	eax, DWORD PTR _plpFirstView$[ebp]
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax], edx

; 3356 :    else

	jmp	SHORT $L8648
$L8638:

; 3358 :       zVIEW  lpSearchView;
; 3359 :       zVIEW  hView = zGETHNDL( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hView$8641[ebp], eax

; 3360 : 
; 3361 :       lpSearchView = zGETPTR( *plpFirstView );

	mov	ecx, DWORD PTR _plpFirstView$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchView$8640[ebp], eax
$L8645:

; 3362 :       while ( lpSearchView && lpSearchView->hNextView != hView )   // DKS 2003.12.17

	cmp	DWORD PTR _lpSearchView$8640[ebp], 0
	je	SHORT $L8646
	mov	eax, DWORD PTR _lpSearchView$8640[ebp]
	mov	ecx, DWORD PTR [eax+2]
	cmp	ecx, DWORD PTR _hView$8641[ebp]
	je	SHORT $L8646

; 3363 :          lpSearchView = zGETPTR( lpSearchView->hNextView );

	mov	edx, DWORD PTR _lpSearchView$8640[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchView$8640[ebp], eax
	jmp	SHORT $L8645
$L8646:

; 3364 : 
; 3365 :       if ( lpSearchView )

	cmp	DWORD PTR _lpSearchView$8640[ebp], 0
	je	SHORT $L8648

; 3366 :          lpSearchView->hNextView = lpView->hNextView;

	mov	ecx, DWORD PTR _lpSearchView$8640[ebp]
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+2]
	mov	DWORD PTR [ecx+2], eax
$L8648:

; 3368 : 
; 3369 :    // Add view to application object or system task.  If scope is an
; 3370 :    // application, then find the target application from the AppQualView via
; 3371 :    // the View object definition.
; 3372 :    if ( nScope == zLEVEL_APPLICATION )

	movsx	ecx, WORD PTR _nScope$[ebp]
	cmp	ecx, 4
	jne	SHORT $L8649

; 3374 :       // If the app qual view has a subtask, then move the source view to
; 3375 :       // application pointed to by the subtask.  If the app qual view doesn't
; 3376 :       // have a subtask, then find the application through the app qual view
; 3377 :       // object definition.
; 3378 :       LPAPP lpApp;
; 3379 : 
; 3380 :       fnGetApplicationForSubtask( &lpApp, lpAppQualView );

	mov	edx, DWORD PTR _lpAppQualView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpApp$8650[ebp]
	push	eax
	call	_fnGetApplicationForSubtask@8

; 3381 : 
; 3382 :       lpView->hNextView = lpApp->hFirstView;

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR _lpApp$8650[ebp]
	mov	eax, DWORD PTR [edx+1889]
	mov	DWORD PTR [ecx+2], eax

; 3383 :       lpApp->hFirstView = zGETHNDL( lpView );

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpApp$8650[ebp]
	mov	DWORD PTR [edx+1889], eax

; 3384 :       lpView->hTask = AnchorBlock->hMainTask;  // view is now part of main  // don't do this ... dks 2004.10.14

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+106]
	mov	DWORD PTR [eax+14], edx

; 3385 :       lpView->bApplicationView = TRUE;         // indicate that scope is app

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	or	ecx, 8
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [edx+30], ecx

; 3387 :    else

	jmp	SHORT $L8652
$L8649:

; 3390 :       LPTASK lpMainTask = zGETPTR( AnchorBlock->hMainTask );

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+106]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpMainTask$8653[ebp], eax

; 3391 : 
; 3392 :       lpView->hNextView = lpMainTask->hFirstView;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR _lpMainTask$8653[ebp]
	mov	ecx, DWORD PTR [eax+106]
	mov	DWORD PTR [edx+2], ecx

; 3393 :       lpMainTask->hFirstView = zGETHNDL( lpView );

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpMainTask$8653[ebp]
	mov	DWORD PTR [ecx+106], eax

; 3394 :       lpView->hTask = AnchorBlock->hMainTask;  // view is now part of main

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+106]
	mov	DWORD PTR [edx+14], ecx

; 3395 :       lpView->bApplicationView = FALSE;        // indicate that scope is sys

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	and	al, -9					; fffffff7H
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [ecx+30], eax
$L8652:

; 3397 : 
; 3398 :    if ( lpView->hNextView == zGETHNDL( lpView ) )

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [ecx+2], eax
	jne	SHORT $L8661

; 3400 :       zCHAR szDebug[ 2 ];
; 3401 : 
; 3402 :       SysReadZeidonIni( -1, "[Debug]", "BombZDr", szDebug );

	lea	edx, DWORD PTR _szDebug$8658[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_07JCAB@BombZDr?$AA@	; `string'
	push	OFFSET FLAT:??_C@_07FGLN@?$FLDebug?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 3403 :       if ( szDebug[ 0 ] == 'Y' )

	movsx	eax, BYTE PTR _szDebug$8658[ebp]
	cmp	eax, 89					; 00000059H
	jne	SHORT $L8661

; 3404 :          SysMessageBox( 0, "Houston ... we have a problem", "Recursive view", -1 );

	push	-1
	push	OFFSET FLAT:??_C@_0P@CGJB@Recursive?5view?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BO@DHAO@Houston?5?4?4?4?5we?5have?5a?5problem?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16
$L8661:

; 3406 : 
; 3407 :    // If execution has fallen this far, then everything must have worked.
; 3408 :    fnOperationReturn( iSfTransferView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	213					; 000000d5H
	call	_fnOperationReturn
	add	esp, 8

; 3409 :    return( 0 );

	xor	ax, ax
$L8611:

; 3410 : }  // SfTransferView

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SfTransferView@12 ENDP
_TEXT	ENDS
PUBLIC	_SfLockView@4
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -4
_SfLockView@4 PROC NEAR

; 3432 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 3433 :    LPTASK      lpCurrentTask;
; 3434 : 
; 3435 :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 3436 :    if ( (lpCurrentTask = fnOperationCall( iSfLockView, lpView,
; 3437 :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	214					; 000000d6H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8668

; 3439 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8666
$L8668:

; 3441 : 
; 3442 :    // Mark the view as being locked.
; 3443 :    lpView->bViewLocked = TRUE;

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	or	edx, 32					; 00000020H
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [eax+30], edx

; 3444 : 
; 3445 :    // If execution has fallen this far then everything must have worked.
; 3446 :    fnOperationReturn( iSfLockView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	214					; 000000d6H
	call	_fnOperationReturn
	add	esp, 8

; 3447 :    return( 0 );

	xor	ax, ax
$L8666:

; 3448 : 
; 3449 : }  // SfLockView

	mov	esp, ebp
	pop	ebp
	ret	4
_SfLockView@4 ENDP
_TEXT	ENDS
PUBLIC	??_C@_09DGDA@?4Subtask?4?$AA@			; `string'
PUBLIC	??_C@_0DF@PNDH@View?5about?5to?5be?5dropped?5?$CI0x?$CF08x@ ; `string'
PUBLIC	??_C@_05BIEA@?$CIvm?$CJ?5?$AA@			; `string'
PUBLIC	??_C@_0N@JDOC@Core?5Warning?$AA@		; `string'
PUBLIC	??_C@_0P@BDPD@MainOI?5Invalid?$AA@		; `string'
PUBLIC	??_C@_0BB@MGBG@fnDropView?5Error?$AA@		; `string'
PUBLIC	??_C@_0BK@MIBK@Unexpected?5Invalid?5MainOI?$AA@	; `string'
PUBLIC	??_C@_0BI@EMIG@?$CIvm?$CJ?5Name?5cleanup?5error?$AA@ ; `string'
PUBLIC	??_C@_05CKBG@Error?$AA@				; `string'
EXTRN	__imp__sprintf:NEAR
EXTRN	_fnStartBrowseOfTaskList@8:NEAR
EXTRN	_fnEndBrowseOfTaskList@4:NEAR
EXTRN	_fnCheckIfViewOD_IsUsed@8:NEAR
EXTRN	_fnCallListeners:NEAR
EXTRN	_fnDeleteViewObject@4:NEAR
;	COMDAT ??_C@_09DGDA@?4Subtask?4?$AA@
; File C:\10C\A\oe\KZOEVMAA.C
_DATA	SEGMENT
??_C@_09DGDA@?4Subtask?4?$AA@ DB '.Subtask.', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DF@PNDH@View?5about?5to?5be?5dropped?5?$CI0x?$CF08x@
_DATA	SEGMENT
??_C@_0DF@PNDH@View?5about?5to?5be?5dropped?5?$CI0x?$CF08x@ DB 'View abou'
	DB	't to be dropped (0x%08x).  Object Name = %s', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_05BIEA@?$CIvm?$CJ?5?$AA@
_DATA	SEGMENT
??_C@_05BIEA@?$CIvm?$CJ?5?$AA@ DB '(vm) ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@JDOC@Core?5Warning?$AA@
_DATA	SEGMENT
??_C@_0N@JDOC@Core?5Warning?$AA@ DB 'Core Warning', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@BDPD@MainOI?5Invalid?$AA@
_DATA	SEGMENT
??_C@_0P@BDPD@MainOI?5Invalid?$AA@ DB 'MainOI Invalid', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@MGBG@fnDropView?5Error?$AA@
_DATA	SEGMENT
??_C@_0BB@MGBG@fnDropView?5Error?$AA@ DB 'fnDropView Error', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@MIBK@Unexpected?5Invalid?5MainOI?$AA@
_DATA	SEGMENT
??_C@_0BK@MIBK@Unexpected?5Invalid?5MainOI?$AA@ DB 'Unexpected Invalid Ma'
	DB	'inOI', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@EMIG@?$CIvm?$CJ?5Name?5cleanup?5error?$AA@
_DATA	SEGMENT
??_C@_0BI@EMIG@?$CIvm?$CJ?5Name?5cleanup?5error?$AA@ DB '(vm) Name cleanu'
	DB	'p error', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_05CKBG@Error?$AA@
_DATA	SEGMENT
??_C@_05CKBG@Error?$AA@ DB 'Error', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_hOwningTask$ = -12
_lpOwningTask$ = -24
_lpOwningApp$ = -20
_lpSubtask$ = -36
_lpViewCsr$ = -4
_lpViewName$ = -40
_lpPrevViewName$ = -28
_lpNextViewName$ = -32
_lpViewOD$ = -8
_hView$ = -16
_lpCsrListener$8693 = -44
_szMsg$8697 = -248
_pch$8698 = -48
_lpViewOD$8701 = -252
_lpMainOI$8710 = -256
_lpMainOI$8718 = -260
_lpSubtask$8757 = -264
_lpViewOD$8762 = -268
_lpSearchTask$8793 = -272
_lpSearchTask$8814 = -276
_lpSearchApp$8841 = -280
_lpSearchApp$8865 = -288
_bDone$8866 = -284
_lpSearchView$8871 = -292
_lpSearchView$8887 = -296
_fnDropView@4 PROC NEAR

; 3478 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 296				; 00000128H

; 3479 :    LPTASK      hOwningTask;
; 3480 :    LPTASK      lpOwningTask;
; 3481 :    LPAPP       lpOwningApp;
; 3482 :    LPSUBTASK   lpSubtask;
; 3483 :    LPVIEWCSR   lpViewCsr;
; 3484 :    LPVIEWNAME  lpViewName;
; 3485 :    LPVIEWNAME  lpPrevViewName;
; 3486 :    LPVIEWNAME  lpNextViewName;
; 3487 :    LPVIEWOD    lpViewOD;
; 3488 :    zPVOID      hView = zGETHNDL( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hView$[ebp], eax

; 3489 : 
; 3490 : #ifdef DEBUG_VIEW
; 3491 : 
; 3492 :    lpViewOD = zGETPTR( lpView->hViewOD );
; 3493 :    if ( lpViewOD && zstrcmpi( lpViewOD->szName, "TZ__PRFO" ) == 0 )
; 3494 :    {
; 3495 :       zLONG  k;
; 3496 : 
; 3497 :       TraceLine( "fnDropView: 0x%08x   LOD: %s", lpView, lpViewOD ? lpViewOD->szName : "???" );
; 3498 : 
; 3499 :       for ( k = 0; k < g_lHighWaterView; k++ )
; 3500 :       {
; 3501 :          if ( g_pvView[ k ] == (zPVOID) lpView )
; 3502 :          {
; 3503 :             g_pvView[ k ] = 0;
; 3504 :             break;
; 3505 :          }
; 3506 :       }
; 3507 : 
; 3508 :       if ( k >= zMAX_VIEW_TEST )
; 3509 :       {
; 3510 :          TraceLine( "DropView Error ... View Not Found: 0x%08x", lpView );
; 3511 :       }
; 3512 :    }
; 3513 : 
; 3514 : #endif
; 3515 : 
; 3516 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 3517 :    hOwningTask = lpView->hTask;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR _hOwningTask$[ebp], ecx

; 3518 :    lpOwningTask = zGETPTR( hOwningTask );

	mov	edx, DWORD PTR _hOwningTask$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOwningTask$[ebp], eax

; 3519 : 
; 3520 :    // Remove any cursor listeners.
; 3521 :    fnCallListeners( lpView, 0 ); // first call to inform of DropView

	push	0
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnCallListeners
	add	esp, 8
$L8691:

; 3522 :    while ( lpView->hFirstCursorListener )

	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [ecx+34], 0
	je	SHORT $L8692

; 3524 :       LPCURSORLISTENER lpCsrListener = zGETPTR( lpView->hFirstCursorListener );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+34]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCsrListener$8693[ebp], eax

; 3525 : 
; 3526 :       lpView->hFirstCursorListener = lpCsrListener->hNextCursorListener;

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR _lpCsrListener$8693[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR [ecx+34], eax

; 3527 :       fnFreeDataspace( lpCsrListener );

	mov	ecx, DWORD PTR _lpCsrListener$8693[ebp]
	push	ecx
	call	_fnFreeDataspace
	add	esp, 4

; 3528 :    }

	jmp	SHORT $L8691
$L8692:

; 3529 : 
; 3530 :    // Check to see if the user wants to pop up a warning when a view is dropped.
; 3531 :    if ( lpView->hViewOD &&
; 3532 :         (lpView->bFlagDropView || lpView->bTraceDropView) )

	mov	edx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [edx+6], 0
	je	$L8705
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8696
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	shr	eax, 9
	and	eax, 1
	test	eax, eax
	je	$L8705
$L8696:

; 3534 :       zCHAR    szMsg[ 200 ];
; 3535 :       zPCHAR   pch = ".Subtask.";

	mov	DWORD PTR _pch$8698[ebp], OFFSET FLAT:??_C@_09DGDA@?4Subtask?4?$AA@ ; `string'

; 3536 : 
; 3537 :       if ( lpView->hViewOD )

	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [ecx+6], 0
	je	SHORT $L8700

; 3539 :          LPVIEWOD lpViewOD = zGETPTR( lpView->hViewOD );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8701[ebp], eax

; 3540 :          pch = lpViewOD->szName;

	mov	ecx, DWORD PTR _lpViewOD$8701[ebp]
	add	ecx, 10					; 0000000aH
	mov	DWORD PTR _pch$8698[ebp], ecx
$L8700:

; 3542 : 
; 3543 :       zsprintf( szMsg, "View about to be dropped (0x%08x).  Object Name = %s",
; 3544 :                 lpView, pch );

	mov	edx, DWORD PTR _pch$8698[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0DF@PNDH@View?5about?5to?5be?5dropped?5?$CI0x?$CF08x@ ; `string'
	lea	ecx, DWORD PTR _szMsg$8697[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 3545 :       TraceLineS( "(vm) ", szMsg );

	lea	edx, DWORD PTR _szMsg$8697[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_05BIEA@?$CIvm?$CJ?5?$AA@ ; `string'
	call	_TraceLineS@8

; 3546 :       if ( lpView->bFlagDropView )

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8705

; 3547 :          SysMessageBox( lpView, "Core Warning", szMsg, 0 );

	push	0
	lea	edx, DWORD PTR _szMsg$8697[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0N@JDOC@Core?5Warning?$AA@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysMessageBox@16
$L8705:

; 3549 : 
; 3550 :    if ( lpViewCsr )

	cmp	DWORD PTR _lpViewCsr$[ebp], 0
	je	SHORT $L8707

; 3551 :       fnDropViewCsr( lpViewCsr ); //   // dks 2006.09.18 error while cleaning up client OE

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	push	ecx
	call	_fnDropViewCsr
	add	esp, 4
$L8707:

; 3552 : 
; 3553 :    // If the view is the "original" view as part of optimistic locking, then
; 3554 :    // we need to flag the "main" OI that the "original" view has been dropped.
; 3555 :    // Same thing with qualification view.
; 3556 :    if ( lpView->bOrigView )

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	shr	eax, 7
	and	eax, 1
	test	eax, eax
	je	SHORT $L8708

; 3558 :       if ( lpView->bInvalidMainOI == FALSE )

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	shr	edx, 4
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8709

; 3560 :          LPVIEWOI lpMainOI = zGETPTR( lpView->hMainOI );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpMainOI$8710[ebp], eax

; 3561 : 
; 3562 :          lpMainOI->vOriginalOI = 0;

	mov	edx, DWORD PTR _lpMainOI$8710[ebp]
	mov	DWORD PTR [edx+40], 0

; 3563 :          lpView->bOrigView = FALSE;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	and	cl, 127					; 0000007fH
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [edx+30], ecx

; 3565 :       else

	jmp	SHORT $L8712
$L8709:

; 3566 :          SysMessageBox( lpView, "fnDropView Error", "MainOI Invalid", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0P@BDPD@MainOI?5Invalid?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BB@MGBG@fnDropView?5Error?$AA@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysMessageBox@16
$L8712:

; 3568 :    else

	jmp	SHORT $L8720
$L8708:

; 3569 :    if ( lpView->bQualView )

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	shr	edx, 8
	and	edx, 1
	test	edx, edx
	je	SHORT $L8720

; 3571 :       if ( lpView->bInvalidMainOI == FALSE )

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 4
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8717

; 3573 :          LPVIEWOI lpMainOI = zGETPTR( lpView->hMainOI );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpMainOI$8718[ebp], eax

; 3574 : 
; 3575 :          lpMainOI->vQualOI = 0;

	mov	ecx, DWORD PTR _lpMainOI$8718[ebp]
	mov	DWORD PTR [ecx+44], 0

; 3576 :          lpView->bQualView = FALSE;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	and	ah, -2					; fffffffeH
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [ecx+30], eax

; 3578 :       else

	jmp	SHORT $L8720
$L8717:

; 3579 :          SysMessageBox( lpView, "fnDropView Error", "Unexpected Invalid MainOI", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BK@MIBK@Unexpected?5Invalid?5MainOI?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BB@MGBG@fnDropView?5Error?$AA@ ; `string'
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SysMessageBox@16
$L8720:

; 3581 : 
; 3582 :    // If the view is a subtask view, do not unchain it NOR remove it
; 3583 :    // from the task chain, simply NULL the ViewCsr pointer.
; 3584 :    if ( lpView->hSubtask )

	mov	eax, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [eax+18], 0
	je	SHORT $L8722

; 3586 :       lpView->hViewCsr = 0;

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR [ecx+10], 0

; 3587 :       return( 0 );

	xor	ax, ax
	jmp	$L8676
$L8722:

; 3589 : 
; 3590 :    // Drop all names for the view 1: first go through all the subtasks and
; 3591 :    // find all names for the view at any subtask level within the task.
; 3592 :    if ( lpView->nViewNames )

	mov	edx, DWORD PTR _lpView$[ebp]
	movsx	eax, WORD PTR [edx+22]
	test	eax, eax
	je	$L8727

; 3594 :       lpSubtask = zGETPTR( lpOwningTask->hFirstSubtask );

	mov	ecx, DWORD PTR _lpOwningTask$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax
$L8726:

; 3595 :       while ( lpSubtask )

	cmp	DWORD PTR _lpSubtask$[ebp], 0
	je	$L8727

; 3597 :          lpPrevViewName = 0;

	mov	DWORD PTR _lpPrevViewName$[ebp], 0

; 3598 :          lpViewName = zGETPTR( lpSubtask->hFirstViewName );

	mov	eax, DWORD PTR _lpSubtask$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8730:

; 3599 :          while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	$L8731

; 3601 :             lpNextViewName = zGETPTR( lpViewName->hNextViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextViewName$[ebp], eax

; 3602 :             if ( lpViewName->hView == hView )

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	cmp	edx, DWORD PTR _hView$[ebp]
	jne	SHORT $L8733

; 3604 :                if ( lpPrevViewName )

	cmp	DWORD PTR _lpPrevViewName$[ebp], 0
	je	SHORT $L8734

; 3605 :                   lpPrevViewName->hNextViewName = zGETHNDL( lpNextViewName );

	mov	eax, DWORD PTR _lpNextViewName$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpPrevViewName$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 3606 :                else

	jmp	SHORT $L8736
$L8734:

; 3607 :                   lpSubtask->hFirstViewName = zGETHNDL( lpNextViewName );

	mov	edx, DWORD PTR _lpNextViewName$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSubtask$[ebp]
	mov	DWORD PTR [ecx+18], eax
$L8736:

; 3608 : 
; 3609 :                lpView->nViewNames--;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	ax, WORD PTR [edx+22]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [ecx+22], ax

; 3610 :                fnFreeDataspace( lpViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 3611 :                if ( lpView->nViewNames == 0 )

	mov	eax, DWORD PTR _lpView$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	test	ecx, ecx
	jne	SHORT $L8738

; 3612 :                   break;

	jmp	SHORT $L8731
$L8738:

; 3614 :             else

	jmp	SHORT $L8739
$L8733:

; 3615 :                lpPrevViewName = lpViewName;

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR _lpPrevViewName$[ebp], edx
$L8739:

; 3616 : 
; 3617 :             lpViewName = lpNextViewName;

	mov	eax, DWORD PTR _lpNextViewName$[ebp]
	mov	DWORD PTR _lpViewName$[ebp], eax

; 3618 :          }

	jmp	$L8730
$L8731:

; 3619 : 
; 3620 :          if ( lpView->nViewNames == 0 )

	mov	ecx, DWORD PTR _lpView$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	test	edx, edx
	jne	SHORT $L8740

; 3621 :             break;

	jmp	SHORT $L8727
$L8740:

; 3622 : 
; 3623 :          lpSubtask = zGETPTR( lpSubtask->hNextSubtask );

	mov	eax, DWORD PTR _lpSubtask$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 3624 :       }

	jmp	$L8726
$L8727:

; 3626 : 
; 3627 :    // Drop all names for the view 2: if a name was created at the task
; 3628 :    // level, go through all names for the owning task and delete any
; 3629 :    // names found for the current view.
; 3630 :    if ( lpView->nViewNames && lpView->bTaskNamed )

	mov	edx, DWORD PTR _lpView$[ebp]
	movsx	eax, WORD PTR [edx+22]
	test	eax, eax
	je	$L8746
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	and	edx, 1
	test	edx, edx
	je	$L8746

; 3632 :       lpPrevViewName = 0;

	mov	DWORD PTR _lpPrevViewName$[ebp], 0

; 3633 :       lpViewName = zGETPTR( lpOwningTask->hFirstViewName );

	mov	eax, DWORD PTR _lpOwningTask$[ebp]
	mov	ecx, DWORD PTR [eax+110]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8745:

; 3634 :       while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	$L8746

; 3636 :          lpNextViewName = zGETPTR( lpViewName->hNextViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextViewName$[ebp], eax

; 3637 :          if ( lpViewName->hView == hView )

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	cmp	edx, DWORD PTR _hView$[ebp]
	jne	SHORT $L8748

; 3639 :             if ( lpPrevViewName )

	cmp	DWORD PTR _lpPrevViewName$[ebp], 0
	je	SHORT $L8749

; 3640 :                lpPrevViewName->hNextViewName = zGETHNDL( lpNextViewName );

	mov	eax, DWORD PTR _lpNextViewName$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpPrevViewName$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 3641 :             else

	jmp	SHORT $L8751
$L8749:

; 3642 :                lpOwningTask->hFirstViewName = zGETHNDL( lpNextViewName );

	mov	edx, DWORD PTR _lpNextViewName$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpOwningTask$[ebp]
	mov	DWORD PTR [ecx+110], eax
$L8751:

; 3643 : 
; 3644 :             lpView->nViewNames--;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	ax, WORD PTR [edx+22]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [ecx+22], ax

; 3645 :             fnFreeDataspace( lpViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 3646 :             if ( lpView->nViewNames == 0 )

	mov	eax, DWORD PTR _lpView$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	test	ecx, ecx
	jne	SHORT $L8753

; 3647 :                break;

	jmp	SHORT $L8746
$L8753:

; 3649 :          else

	jmp	SHORT $L8754
$L8748:

; 3650 :             lpPrevViewName = lpViewName;

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR _lpPrevViewName$[ebp], edx
$L8754:

; 3651 : 
; 3652 :          lpViewName = lpNextViewName;

	mov	eax, DWORD PTR _lpNextViewName$[ebp]
	mov	DWORD PTR _lpViewName$[ebp], eax

; 3653 :       }

	jmp	$L8745
$L8746:

; 3655 : 
; 3656 :    // Drop all names for the view 3: if a name was created at the
; 3657 :    // application level, go through all names for the application
; 3658 :    // and delete any names found for the current view.
; 3659 :    if ( lpView->nViewNames && lpView->bApplicationNamed )

	mov	ecx, DWORD PTR _lpView$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	test	edx, edx
	je	$L8770
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	$L8770

; 3661 :       if ( lpView->hSubtask )

	mov	edx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [edx+18], 0
	je	SHORT $L8756

; 3663 :          LPSUBTASK lpSubtask = zGETPTR( lpView->hSubtask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$8757[ebp], eax

; 3664 : 
; 3665 :          lpOwningApp = zGETPTR( lpSubtask->hApp );

	mov	edx, DWORD PTR _lpSubtask$8757[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOwningApp$[ebp], eax

; 3667 :       else

	jmp	SHORT $L8765
$L8756:

; 3668 :       if ( lpView->hViewOD )

	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [ecx+6], 0
	je	SHORT $L8761

; 3670 :          LPVIEWOD lpViewOD = zGETPTR( lpView->hViewOD );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8762[ebp], eax

; 3671 : 
; 3672 :          lpOwningApp = zGETPTR( lpViewOD->hApp );

	mov	ecx, DWORD PTR _lpViewOD$8762[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOwningApp$[ebp], eax

; 3674 :       else

	jmp	SHORT $L8765
$L8761:

; 3675 :          lpOwningApp = zGETPTR( lpOwningTask->hApp );

	mov	eax, DWORD PTR _lpOwningTask$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOwningApp$[ebp], eax
$L8765:

; 3676 : 
; 3677 :       lpPrevViewName = 0;

	mov	DWORD PTR _lpPrevViewName$[ebp], 0

; 3678 :       lpViewName = zGETPTR( lpOwningApp->hFirstViewName );

	mov	edx, DWORD PTR _lpOwningApp$[ebp]
	mov	eax, DWORD PTR [edx+1893]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8769:

; 3679 :       while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	$L8770

; 3681 :          lpNextViewName = zGETPTR( lpViewName->hNextViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextViewName$[ebp], eax

; 3682 :          if ( lpViewName->hView == hView )

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	cmp	ecx, DWORD PTR _hView$[ebp]
	jne	SHORT $L8772

; 3684 :             if ( lpPrevViewName )

	cmp	DWORD PTR _lpPrevViewName$[ebp], 0
	je	SHORT $L8773

; 3685 :                lpPrevViewName->hNextViewName = zGETHNDL( lpNextViewName );

	mov	edx, DWORD PTR _lpNextViewName$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpPrevViewName$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 3686 :             else

	jmp	SHORT $L8775
$L8773:

; 3687 :                lpOwningApp->hFirstViewName = zGETHNDL( lpNextViewName );

	mov	edx, DWORD PTR _lpNextViewName$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpOwningApp$[ebp]
	mov	DWORD PTR [ecx+1893], eax
$L8775:

; 3688 : 
; 3689 :             lpView->nViewNames--;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	ax, WORD PTR [edx+22]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [ecx+22], ax

; 3690 :             fnFreeDataspace( lpViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 3691 :             if ( lpView->nViewNames == 0 )

	mov	eax, DWORD PTR _lpView$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	test	ecx, ecx
	jne	SHORT $L8777

; 3692 :                break;

	jmp	SHORT $L8770
$L8777:

; 3694 :          else

	jmp	SHORT $L8778
$L8772:

; 3695 :             lpPrevViewName = lpViewName;

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR _lpPrevViewName$[ebp], edx
$L8778:

; 3696 : 
; 3697 :          lpViewName = lpNextViewName;

	mov	eax, DWORD PTR _lpNextViewName$[ebp]
	mov	DWORD PTR _lpViewName$[ebp], eax

; 3698 :       }

	jmp	$L8769
$L8770:

; 3700 : 
; 3701 :    // Drop all names for the view 4: if a name was created at
; 3702 :    // the system level, go through all names for the system
; 3703 :    // and delete any names found for the current view.
; 3704 :    if ( lpView->nViewNames && lpView->bSystemNamed )

	mov	ecx, DWORD PTR _lpView$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	test	edx, edx
	je	$L8779
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 2
	and	ecx, 1
	test	ecx, ecx
	je	$L8779

; 3706 :       zLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysLockCoreMutex@4

; 3707 : 
; 3708 :       lpPrevViewName = 0;

	mov	DWORD PTR _lpPrevViewName$[ebp], 0

; 3709 :       lpViewName = zGETPTR( AnchorBlock->hFirstViewName );

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+1489]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8782:

; 3710 :       while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	$L8783

; 3712 :          lpNextViewName = zGETPTR( lpViewName->hNextViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextViewName$[ebp], eax

; 3713 :          if ( lpViewName->hView == hView )

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	cmp	ecx, DWORD PTR _hView$[ebp]
	jne	SHORT $L8785

; 3715 :             if ( lpPrevViewName )

	cmp	DWORD PTR _lpPrevViewName$[ebp], 0
	je	SHORT $L8786

; 3716 :                lpPrevViewName->hNextViewName = zGETHNDL( lpNextViewName );

	mov	edx, DWORD PTR _lpNextViewName$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpPrevViewName$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 3717 :             else

	jmp	SHORT $L8788
$L8786:

; 3718 :                AnchorBlock->hFirstViewName = zGETHNDL( lpNextViewName );

	mov	edx, DWORD PTR _lpNextViewName$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _AnchorBlock
	mov	DWORD PTR [ecx+1489], eax
$L8788:

; 3719 : 
; 3720 :             lpView->nViewNames--;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	ax, WORD PTR [edx+22]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [ecx+22], ax

; 3721 :             fnFreeDataspace( lpViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 3722 :             if ( lpView->nViewNames == 0 )

	mov	eax, DWORD PTR _lpView$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	test	ecx, ecx
	jne	SHORT $L8790

; 3723 :                break;

	jmp	SHORT $L8783
$L8790:

; 3725 :          else

	jmp	SHORT $L8791
$L8785:

; 3726 :             lpPrevViewName = lpViewName;

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR _lpPrevViewName$[ebp], edx
$L8791:

; 3727 : 
; 3728 :          lpViewName = lpNextViewName;

	mov	eax, DWORD PTR _lpNextViewName$[ebp]
	mov	DWORD PTR _lpViewName$[ebp], eax

; 3729 :       }

	jmp	$L8782
$L8783:

; 3730 : 
; 3731 :       zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4
$L8779:

; 3733 : 
; 3734 :    // Drop all names for the view 5: if a name was created at the task
; 3735 :    // level, go through all tasks other than the owning task and see
; 3736 :    // if the view can be found in one of them.
; 3737 :    if ( lpView->nViewNames && lpView->bTaskNamed )

	mov	ecx, DWORD PTR _lpView$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	test	edx, edx
	je	$L8792
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	and	ecx, 1
	test	ecx, ecx
	je	$L8792

; 3739 :       LPTASK lpSearchTask;
; 3740 : 
; 3741 :       // Make sure nobody else is deleting a task.
; 3742 :       fnStartBrowseOfTaskList( lpView->hTask, FALSE );

	push	0
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	_fnStartBrowseOfTaskList@8

; 3743 : 
; 3744 :       lpSearchTask = zGETPTR( AnchorBlock->hFirstTask );

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+130]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchTask$8793[ebp], eax
$L8796:

; 3745 :       while ( lpSearchTask )

	cmp	DWORD PTR _lpSearchTask$8793[ebp], 0
	je	$L8797

; 3747 :          if ( lpSearchTask != lpOwningTask )

	mov	eax, DWORD PTR _lpSearchTask$8793[ebp]
	cmp	eax, DWORD PTR _lpOwningTask$[ebp]
	je	$L8802

; 3749 :             lpPrevViewName = 0;

	mov	DWORD PTR _lpPrevViewName$[ebp], 0

; 3750 :             lpViewName = zGETPTR( lpSearchTask->hFirstViewName );

	mov	ecx, DWORD PTR _lpSearchTask$8793[ebp]
	mov	edx, DWORD PTR [ecx+110]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8801:

; 3751 :             while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	$L8802

; 3753 :                lpNextViewName = zGETPTR( lpViewName->hNextViewName );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextViewName$[ebp], eax

; 3754 :                if ( lpViewName->hView == hView )

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+2]
	cmp	eax, DWORD PTR _hView$[ebp]
	jne	SHORT $L8804

; 3756 :                   if ( lpPrevViewName )

	cmp	DWORD PTR _lpPrevViewName$[ebp], 0
	je	SHORT $L8805

; 3757 :                      lpPrevViewName->hNextViewName = zGETHNDL( lpNextViewName );

	mov	ecx, DWORD PTR _lpNextViewName$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpPrevViewName$[ebp]
	mov	DWORD PTR [edx+6], eax

; 3758 :                   else

	jmp	SHORT $L8807
$L8805:

; 3759 :                      lpSearchTask->hFirstViewName = zGETHNDL( lpNextViewName );

	mov	eax, DWORD PTR _lpNextViewName$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSearchTask$8793[ebp]
	mov	DWORD PTR [ecx+110], eax
$L8807:

; 3760 : 
; 3761 :                   lpView->nViewNames--;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	ax, WORD PTR [edx+22]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [ecx+22], ax

; 3762 :                   fnFreeDataspace( lpViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 3763 :                   if ( lpView->nViewNames == 0 )

	mov	eax, DWORD PTR _lpView$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	test	ecx, ecx
	jne	SHORT $L8809

; 3764 :                      break;

	jmp	SHORT $L8802
$L8809:

; 3766 :                else

	jmp	SHORT $L8810
$L8804:

; 3767 :                   lpPrevViewName = lpViewName;

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR _lpPrevViewName$[ebp], edx
$L8810:

; 3768 : 
; 3769 :                lpViewName = lpNextViewName;

	mov	eax, DWORD PTR _lpNextViewName$[ebp]
	mov	DWORD PTR _lpViewName$[ebp], eax

; 3770 :             }

	jmp	$L8801
$L8802:

; 3772 :          if ( lpView->nViewNames == 0 )

	mov	ecx, DWORD PTR _lpView$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	test	edx, edx
	jne	SHORT $L8811

; 3773 :             break;

	jmp	SHORT $L8797
$L8811:

; 3774 : 
; 3775 :          lpSearchTask = zGETPTR( lpSearchTask->hNextTask );

	mov	eax, DWORD PTR _lpSearchTask$8793[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchTask$8793[ebp], eax

; 3776 :       }

	jmp	$L8796
$L8797:

; 3777 : 
; 3778 :       fnEndBrowseOfTaskList( FALSE );

	push	0
	call	_fnEndBrowseOfTaskList@4
$L8792:

; 3780 : 
; 3781 :    // Drop all names for the view 6: if a name still exists at this
; 3782 :    // point, then it must exist in a subtask for another task, search
; 3783 :    // all subtasks in the other tasks for a name for this view.
; 3784 :    if ( lpView->nViewNames )

	mov	edx, DWORD PTR _lpView$[ebp]
	movsx	eax, WORD PTR [edx+22]
	test	eax, eax
	je	$L8813

; 3786 :       LPTASK lpSearchTask;
; 3787 : 
; 3788 :       // Make sure nobody else is deleting a task.
; 3789 :       fnStartBrowseOfTaskList( lpView->hTask, FALSE );

	push	0
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	_fnStartBrowseOfTaskList@8

; 3790 : 
; 3791 :       lpSearchTask = zGETPTR( AnchorBlock->hFirstTask );

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+130]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchTask$8814[ebp], eax
$L8817:

; 3792 :       while ( lpSearchTask )

	cmp	DWORD PTR _lpSearchTask$8814[ebp], 0
	je	$L8818

; 3794 :          if ( lpSearchTask != lpOwningTask )

	mov	edx, DWORD PTR _lpSearchTask$8814[ebp]
	cmp	edx, DWORD PTR _lpOwningTask$[ebp]
	je	$L8823

; 3796 :             lpSubtask = zGETPTR( lpSearchTask->hFirstSubtask );

	mov	eax, DWORD PTR _lpSearchTask$8814[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax
$L8822:

; 3797 :             while ( lpSubtask )

	cmp	DWORD PTR _lpSubtask$[ebp], 0
	je	$L8823

; 3799 :                lpPrevViewName = 0;

	mov	DWORD PTR _lpPrevViewName$[ebp], 0

; 3800 :                lpViewName = zGETPTR( lpSubtask->hFirstViewName );

	mov	edx, DWORD PTR _lpSubtask$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8826:

; 3801 :                while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	$L8827

; 3803 :                   lpNextViewName = zGETPTR( lpViewName->hNextViewName );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextViewName$[ebp], eax

; 3804 :                   if ( lpViewName->hView == hView )

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	cmp	ecx, DWORD PTR _hView$[ebp]
	jne	SHORT $L8829

; 3806 :                      if ( lpPrevViewName )

	cmp	DWORD PTR _lpPrevViewName$[ebp], 0
	je	SHORT $L8830

; 3807 :                         lpPrevViewName->hNextViewName = zGETHNDL( lpNextViewName );

	mov	edx, DWORD PTR _lpNextViewName$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpPrevViewName$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 3808 :                      else

	jmp	SHORT $L8832
$L8830:

; 3809 :                         lpSubtask->hFirstViewName = zGETHNDL( lpNextViewName );

	mov	edx, DWORD PTR _lpNextViewName$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSubtask$[ebp]
	mov	DWORD PTR [ecx+18], eax
$L8832:

; 3810 : 
; 3811 :                      lpView->nViewNames--;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	ax, WORD PTR [edx+22]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [ecx+22], ax

; 3812 :                      fnFreeDataspace( lpViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 3813 :                      if ( lpView->nViewNames == 0 )

	mov	eax, DWORD PTR _lpView$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	test	ecx, ecx
	jne	SHORT $L8834

; 3814 :                         break;

	jmp	SHORT $L8827
$L8834:

; 3816 :                   else

	jmp	SHORT $L8835
$L8829:

; 3817 :                      lpPrevViewName = lpViewName;

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR _lpPrevViewName$[ebp], edx
$L8835:

; 3818 : 
; 3819 :                   lpViewName = lpNextViewName;

	mov	eax, DWORD PTR _lpNextViewName$[ebp]
	mov	DWORD PTR _lpViewName$[ebp], eax

; 3820 :                }

	jmp	$L8826
$L8827:

; 3821 : 
; 3822 :                if ( lpView->nViewNames == 0 )

	mov	ecx, DWORD PTR _lpView$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	test	edx, edx
	jne	SHORT $L8836

; 3823 :                   break;

	jmp	SHORT $L8823
$L8836:

; 3824 : 
; 3825 :                lpSubtask = zGETPTR( lpSubtask->hNextSubtask );

	mov	eax, DWORD PTR _lpSubtask$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 3826 :             }

	jmp	$L8822
$L8823:

; 3828 : 
; 3829 :          if ( lpView->nViewNames == 0 )

	mov	edx, DWORD PTR _lpView$[ebp]
	movsx	eax, WORD PTR [edx+22]
	test	eax, eax
	jne	SHORT $L8838

; 3830 :             break;

	jmp	SHORT $L8818
$L8838:

; 3831 : 
; 3832 :          lpSearchTask = zGETPTR( lpSearchTask->hNextTask );

	mov	ecx, DWORD PTR _lpSearchTask$8814[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchTask$8814[ebp], eax

; 3833 :       }

	jmp	$L8817
$L8818:

; 3834 : 
; 3835 :       fnEndBrowseOfTaskList( FALSE );

	push	0
	call	_fnEndBrowseOfTaskList@4
$L8813:

; 3837 : 
; 3838 :    // Drop all names for the view 7: if a name was created at the
; 3839 :    // application level, go through all apps other than the owning
; 3840 :    // app and see if the view can be found in one of them.
; 3841 :    if ( lpView->nViewNames && lpView->bApplicationNamed )

	mov	eax, DWORD PTR _lpView$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	test	ecx, ecx
	je	$L8840
	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	je	$L8840

; 3843 :       LPAPP  lpSearchApp;
; 3844 : 
; 3845 :       zLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysLockCoreMutex@4

; 3846 : 
; 3847 :       lpSearchApp = zGETPTR( AnchorBlock->hFirstApp );

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+126]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchApp$8841[ebp], eax
$L8844:

; 3848 :       while ( lpSearchApp )

	cmp	DWORD PTR _lpSearchApp$8841[ebp], 0
	je	$L8845

; 3850 :          if ( lpSearchApp != lpOwningApp )

	mov	eax, DWORD PTR _lpSearchApp$8841[ebp]
	cmp	eax, DWORD PTR _lpOwningApp$[ebp]
	je	$L8850

; 3852 :             lpPrevViewName = 0;

	mov	DWORD PTR _lpPrevViewName$[ebp], 0

; 3853 :             lpViewName = zGETPTR( lpSearchApp->hFirstViewName );

	mov	ecx, DWORD PTR _lpSearchApp$8841[ebp]
	mov	edx, DWORD PTR [ecx+1893]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax
$L8849:

; 3854 :             while ( lpViewName )

	cmp	DWORD PTR _lpViewName$[ebp], 0
	je	$L8850

; 3856 :                lpNextViewName = zGETPTR( lpViewName->hNextViewName );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextViewName$[ebp], eax

; 3857 :                if ( lpViewName->hView == hView )

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+2]
	cmp	eax, DWORD PTR _hView$[ebp]
	jne	SHORT $L8852

; 3859 :                   if ( lpPrevViewName )

	cmp	DWORD PTR _lpPrevViewName$[ebp], 0
	je	SHORT $L8853

; 3860 :                      lpPrevViewName->hNextViewName = zGETHNDL( lpNextViewName );

	mov	ecx, DWORD PTR _lpNextViewName$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpPrevViewName$[ebp]
	mov	DWORD PTR [edx+6], eax

; 3861 :                   else

	jmp	SHORT $L8855
$L8853:

; 3862 :                      lpSearchApp->hFirstViewName = zGETHNDL( lpNextViewName );

	mov	eax, DWORD PTR _lpNextViewName$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSearchApp$8841[ebp]
	mov	DWORD PTR [ecx+1893], eax
$L8855:

; 3863 : 
; 3864 :                   lpView->nViewNames--;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	ax, WORD PTR [edx+22]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	WORD PTR [ecx+22], ax

; 3865 :                   fnFreeDataspace( lpViewName );

	mov	edx, DWORD PTR _lpViewName$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 3866 :                   if ( lpView->nViewNames == 0 )

	mov	eax, DWORD PTR _lpView$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	test	ecx, ecx
	jne	SHORT $L8857

; 3867 :                      break;

	jmp	SHORT $L8850
$L8857:

; 3869 :                else

	jmp	SHORT $L8858
$L8852:

; 3870 :                   lpPrevViewName = lpViewName;

	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	DWORD PTR _lpPrevViewName$[ebp], edx
$L8858:

; 3871 : 
; 3872 :                lpViewName = lpNextViewName;

	mov	eax, DWORD PTR _lpNextViewName$[ebp]
	mov	DWORD PTR _lpViewName$[ebp], eax

; 3873 :             }

	jmp	$L8849
$L8850:

; 3875 : 
; 3876 :          if ( lpView->nViewNames == 0 )

	mov	ecx, DWORD PTR _lpView$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	test	edx, edx
	jne	SHORT $L8859

; 3877 :             break;

	jmp	SHORT $L8845
$L8859:

; 3878 : 
; 3879 :          lpSearchApp = zGETPTR( lpSearchApp->hNextApp );

	mov	eax, DWORD PTR _lpSearchApp$8841[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchApp$8841[ebp], eax

; 3880 :       }

	jmp	$L8844
$L8845:

; 3881 : 
; 3882 :       zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4
$L8840:

; 3884 : 
; 3885 :    // Whew, end of view name cleanup code.  If there is still a name here,
; 3886 :    // issue an internal name cleanup error.
; 3887 :    if ( lpView->nViewNames )

	mov	edx, DWORD PTR _lpView$[ebp]
	movsx	eax, WORD PTR [edx+22]
	test	eax, eax
	je	SHORT $L8861

; 3888 :       SysMessageBox( lpView, "Error", "(vm) Name cleanup error", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0BI@EMIG@?$CIvm?$CJ?5Name?5cleanup?5error?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_05CKBG@Error?$AA@	; `string'
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SysMessageBox@16
$L8861:

; 3889 : 
; 3890 :    // Unchain the view from its view chain, either in the task or app.
; 3891 :    //
; 3892 :    // Check to see if view is part of application chain and unchain it
; 3893 :    // if it is.
; 3894 :    if ( lpView->bApplicationView )

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	shr	eax, 3
	and	eax, 1
	test	eax, eax
	je	$L8864

; 3896 :       LPAPP  lpSearchApp;
; 3897 :       zBOOL  bDone = 0;

	mov	BYTE PTR _bDone$8866[ebp], 0

; 3898 : 
; 3899 :       zLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysLockCoreMutex@4

; 3900 : 
; 3901 :       lpSearchApp = zGETPTR( AnchorBlock->hFirstApp );

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+126]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchApp$8865[ebp], eax
$L8869:

; 3902 :       while ( lpSearchApp && bDone == FALSE )

	cmp	DWORD PTR _lpSearchApp$8865[ebp], 0
	je	$L8870
	mov	eax, DWORD PTR _bDone$8866[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	$L8870

; 3904 :          zVIEW  lpSearchView;
; 3905 : 
; 3906 :          if ( lpSearchApp->hFirstView == hView )

	mov	ecx, DWORD PTR _lpSearchApp$8865[ebp]
	mov	edx, DWORD PTR [ecx+1889]
	cmp	edx, DWORD PTR _hView$[ebp]
	jne	SHORT $L8872

; 3908 :             // Unchain view from view chain.
; 3909 :             lpSearchApp->hFirstView = lpView->hNextView;

	mov	eax, DWORD PTR _lpSearchApp$8865[ebp]
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+1889], edx

; 3910 :             bDone = TRUE;

	mov	BYTE PTR _bDone$8866[ebp], 1

; 3912 :          else

	jmp	$L8873
$L8872:

; 3914 :             lpSearchView = zGETPTR( lpSearchApp->hFirstView );

	mov	eax, DWORD PTR _lpSearchApp$8865[ebp]
	mov	ecx, DWORD PTR [eax+1889]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchView$8871[ebp], eax

; 3915 :             if ( lpSearchView )

	cmp	DWORD PTR _lpSearchView$8871[ebp], 0
	je	SHORT $L8878
$L8877:

; 3917 :                while ( lpSearchView->hNextView && bDone == FALSE )

	mov	edx, DWORD PTR _lpSearchView$8871[ebp]
	cmp	DWORD PTR [edx+2], 0
	je	SHORT $L8878
	mov	eax, DWORD PTR _bDone$8866[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8878

; 3919 :                   if ( lpSearchView->hNextView == hView )

	mov	ecx, DWORD PTR _lpSearchView$8871[ebp]
	mov	edx, DWORD PTR [ecx+2]
	cmp	edx, DWORD PTR _hView$[ebp]
	jne	SHORT $L8879

; 3921 :                      // Unchain view from view chain.
; 3922 :                      lpSearchView->hNextView = lpView->hNextView;

	mov	eax, DWORD PTR _lpSearchView$8871[ebp]
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+2], edx

; 3923 :                      bDone = TRUE;

	mov	BYTE PTR _bDone$8866[ebp], 1

; 3925 :                   else

	jmp	SHORT $L8880
$L8879:

; 3926 :                      lpSearchView = zGETPTR( lpSearchView->hNextView );

	mov	eax, DWORD PTR _lpSearchView$8871[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchView$8871[ebp], eax
$L8880:

; 3927 :                }

	jmp	SHORT $L8877
$L8878:

; 3929 : 
; 3930 :             lpSearchApp = zGETPTR( lpSearchApp->hNextApp );

	mov	edx, DWORD PTR _lpSearchApp$8865[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchApp$8865[ebp], eax
$L8873:

; 3932 :       }  // while...

	jmp	$L8869
$L8870:

; 3933 : 
; 3934 :       zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4

; 3937 :    else

	jmp	$L8894
$L8864:

; 3939 :       if ( hOwningTask == AnchorBlock->hMainTask )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR _hOwningTask$[ebp]
	cmp	edx, DWORD PTR [ecx+106]
	jne	SHORT $L8884

; 3940 :          zLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysLockCoreMutex@4
$L8884:

; 3941 : 
; 3942 :       // View is not part of application chain ... unchain from owning task.
; 3943 :       if ( lpOwningTask->hFirstView == hView )

	mov	eax, DWORD PTR _lpOwningTask$[ebp]
	mov	ecx, DWORD PTR [eax+106]
	cmp	ecx, DWORD PTR _hView$[ebp]
	jne	SHORT $L8885

; 3944 :          lpOwningTask->hFirstView = lpView->hNextView;

	mov	edx, DWORD PTR _lpOwningTask$[ebp]
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR [edx+106], ecx

; 3945 :       else

	jmp	SHORT $L8893
$L8885:

; 3947 :          zVIEW  lpSearchView;
; 3948 : 
; 3949 :          // Repair the view chain.
; 3950 :          for ( lpSearchView = zGETPTR( lpOwningTask->hFirstView );
; 3951 :                lpSearchView && lpSearchView->hNextView != hView;
; 3952 :                lpSearchView = zGETPTR( lpSearchView->hNextView ) )

	mov	edx, DWORD PTR _lpOwningTask$[ebp]
	mov	eax, DWORD PTR [edx+106]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchView$8887[ebp], eax
	jmp	SHORT $L8890
$L8891:
	mov	ecx, DWORD PTR _lpSearchView$8887[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchView$8887[ebp], eax
$L8890:
	cmp	DWORD PTR _lpSearchView$8887[ebp], 0
	je	SHORT $L8892
	mov	eax, DWORD PTR _lpSearchView$8887[ebp]
	mov	ecx, DWORD PTR [eax+2]
	cmp	ecx, DWORD PTR _hView$[ebp]
	je	SHORT $L8892

; 3954 :             // Nothing needs to be done here.
; 3955 :          }

	jmp	SHORT $L8891
$L8892:

; 3956 : 
; 3957 :          if ( lpSearchView )

	cmp	DWORD PTR _lpSearchView$8887[ebp], 0
	je	SHORT $L8893

; 3958 :             lpSearchView->hNextView = lpView->hNextView;

	mov	edx, DWORD PTR _lpSearchView$8887[ebp]
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR [edx+2], ecx
$L8893:

; 3960 : 
; 3961 :       if ( hOwningTask == AnchorBlock->hMainTask )

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR _hOwningTask$[ebp]
	cmp	eax, DWORD PTR [edx+106]
	jne	SHORT $L8894

; 3962 :          zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4
$L8894:

; 3965 : 
; 3966 :    lpViewOD = zGETPTR( lpView->hViewOD );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 3967 : 
; 3968 :    // If the ViewOD is flagged as deprecated, let's see if we can remove it.
; 3969 :    if ( lpViewOD && lpViewOD->bDeprecated &&
; 3970 :         fnCheckIfViewOD_IsUsed( lpView, lpViewOD ) == 0 )

	cmp	DWORD PTR _lpViewOD$[ebp], 0
	je	SHORT $L8896
	mov	eax, DWORD PTR _lpViewOD$[ebp]
	mov	ecx, DWORD PTR [eax+240]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8896
	mov	edx, DWORD PTR _lpViewOD$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnCheckIfViewOD_IsUsed@8
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L8896

; 3972 :       // View is not used by any tasks so it's safe to remove it.
; 3973 :       zLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysLockCoreMutex@4

; 3974 :       fnDeleteViewObject ( lpViewOD );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	push	edx
	call	_fnDeleteViewObject@4

; 3975 :       zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4
$L8896:

; 3977 : 
; 3978 :    // Finally, free the dataspace for the view.
; 3979 :    fnFreeDataspace( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 3980 :    return( 0 );

	xor	ax, ax
$L8676:

; 3981 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_fnDropView@4 ENDP
_TEXT	ENDS
EXTRN	_fnNullCursorForViewChildren:NEAR
EXTRN	_fnResetCursorForViewChildren:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntity$ = 12
_lpViewEntityCsr$ = 16
_nLevelChg$ = -36
_lpOwningTask$ = -20
_lpViewOI$ = -48
_lpViewCsr$ = -4
_lpViewRootParentCsr$ = -44
_lpRecursParentCsr$ = -8
_lpLastDescCsr$ = -40
_lpViewSubobject$ = -16
_lpPrevViewSubobject$ = -12
_hViewSubobject$ = -24
_lpWorkViewEntity$ = -32
_hViewEntityCsr$ = -28
_lpRecursParentEntity$8936 = -52
_lpWorkViewSubobject$8949 = -56
_nLevelChg$8955 = -64
_lpRootCsr$8956 = -60
_lpWorkCsr$8957 = -68
_hWorkCsr$8964 = -72
_lpFirstViewSubobject$8973 = -76
_lpNextHierCsr$8978 = -80
_fnSetViewToSubobject PROC NEAR

; 4004 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 80					; 00000050H

; 4005 :    zSHORT            nLevelChg;
; 4006 :    LPTASK            lpOwningTask;
; 4007 :    LPVIEWOI          lpViewOI;
; 4008 :    LPVIEWCSR         lpViewCsr;
; 4009 :    LPVIEWENTITYCSR   lpViewRootParentCsr;
; 4010 :    LPVIEWENTITYCSR   lpRecursParentCsr;
; 4011 :    LPVIEWENTITYCSR   lpLastDescCsr;
; 4012 :    LPVIEWSUBOBJECT   lpViewSubobject;
; 4013 :    LPVIEWSUBOBJECT   lpPrevViewSubobject;
; 4014 :    zPVOID            hViewSubobject;
; 4015 :    LPVIEWENTITY      lpWorkViewEntity;
; 4016 : 
; 4017 :    // Following handles are declared as pointers instead of zPVOID so that
; 4018 :    // we can use pointer arithmetic on them.
; 4019 :    LPVIEWENTITYCSR   hViewEntityCsr;
; 4020 : 
; 4021 :    // Get the ViewCsr associated with the view
; 4022 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 4023 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 4024 : 
; 4025 :    // Get the instance owning task so we can do allocates
; 4026 :    lpOwningTask = zGETPTR( lpViewOI->hTask );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOwningTask$[ebp], eax

; 4027 : 
; 4028 :    if ( lpViewEntityCsr == 0 )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	jne	SHORT $L8919

; 4030 :       lpViewEntityCsr = zGETPTR( lpViewCsr->hFirstOD_EntityCsr );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 4031 :       lpViewEntityCsr += ( lpViewEntity->nHierNbr - 1 );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	sub	eax, 1
	imul	eax, 30					; 0000001eH
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	add	ecx, eax
	mov	DWORD PTR _lpViewEntityCsr$[ebp], ecx
$L8919:

; 4033 : 
; 4034 :    // Create a handle for the view entity csr.
; 4035 :    hViewEntityCsr = fnCreateEntityCsrHandle( lpViewEntityCsr, lpViewCsr, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnCreateEntityCsrHandle@12
	mov	DWORD PTR _hViewEntityCsr$[ebp], eax

; 4036 : 
; 4037 :    if ( lpViewCsr->hRootViewEntityCsr == hViewEntityCsr )

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	cmp	edx, DWORD PTR _hViewEntityCsr$[ebp]
	jne	SHORT $L8921

; 4038 :       return( 1 );

	mov	ax, 1
	jmp	$L8903
$L8921:

; 4039 : 
; 4040 :    if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 1
	jne	SHORT $L8923

; 4041 :       fnEstablishCursorForView( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnEstablishCursorForView
	add	esp, 4
$L8923:

; 4042 : 
; 4043 :    lpViewRootParentCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewRootParentCsr$[ebp], eax

; 4044 : 
; 4045 :    // We double check that the parent cursor does not need establishing
; 4046 :    // because create entity ( through another view ) might mark the
; 4047 :    // parent only as needing to be established.
; 4048 :    if ( lpViewRootParentCsr->hEntityInstance == UNSET_CSR )

	mov	ecx, DWORD PTR _lpViewRootParentCsr$[ebp]
	cmp	DWORD PTR [ecx+26], 1
	jne	SHORT $L8926

; 4049 :       fnEstablishCursorForView( lpViewRootParentCsr );

	mov	edx, DWORD PTR _lpViewRootParentCsr$[ebp]
	push	edx
	call	_fnEstablishCursorForView
	add	esp, 4
$L8926:

; 4050 : 
; 4051 :    // Create a viewsubobject record for saving view switching info.
; 4052 :    hViewSubobject = fnAllocDataspace( lpOwningTask->hFirstDataHeader,
; 4053 :                                       sizeof( ViewSubobjectRecord ), 1, 0,
; 4054 :                                       iViewSubobject );

	push	10020					; 00002724H
	push	0
	push	1
	push	48					; 00000030H
	mov	eax, DWORD PTR _lpOwningTask$[ebp]
	mov	ecx, DWORD PTR [eax+94]
	push	ecx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hViewSubobject$[ebp], eax

; 4055 :    lpViewSubobject = (LPVIEWSUBOBJECT) zGETPTR( hViewSubobject );

	mov	edx, DWORD PTR _hViewSubobject$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$[ebp], eax

; 4056 :    if ( lpViewSubobject == 0 )

	cmp	DWORD PTR _lpViewSubobject$[ebp], 0
	jne	SHORT $L8930

; 4057 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8903
$L8930:

; 4058 : 
; 4059 :    // Next, look for a recursive parent to the entity to see if the
; 4060 :    // structure needs to be folded up recursively.
; 4061 :    lpRecursParentCsr = 0;

	mov	DWORD PTR _lpRecursParentCsr$[ebp], 0

; 4062 :    if ( lpViewEntity->bRecursive )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	$L8935

; 4064 :       lpPrevViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevViewSubobject$[ebp], eax

; 4065 :       lpRecursParentCsr = lpViewRootParentCsr;

	mov	ecx, DWORD PTR _lpViewRootParentCsr$[ebp]
	mov	DWORD PTR _lpRecursParentCsr$[ebp], ecx
$L8934:

; 4066 :       while ( lpRecursParentCsr )

	cmp	DWORD PTR _lpRecursParentCsr$[ebp], 0
	je	$L8935

; 4068 :          LPVIEWENTITY lpRecursParentEntity = zGETPTR( lpRecursParentCsr->hViewEntity );

	mov	edx, DWORD PTR _lpRecursParentCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursParentEntity$8936[ebp], eax

; 4069 : 
; 4070 :          if ( lpRecursParentEntity->lEREntTok == lpViewEntity->lEREntTok &&
; 4071 :               lpRecursParentCsr->nLevel < lpViewEntityCsr->nLevel )

	mov	ecx, DWORD PTR _lpRecursParentEntity$8936[ebp]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+195]
	cmp	eax, DWORD PTR [edx+195]
	jne	SHORT $L8938
	mov	ecx, DWORD PTR _lpRecursParentCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	cmp	edx, ecx
	jge	SHORT $L8938

; 4073 :             break;

	jmp	SHORT $L8935
$L8938:

; 4075 :          else
; 4076 :          if ( lpRecursParentCsr == zGETPTR( lpViewCsr->hFirstOD_EntityCsr ) )

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	DWORD PTR _lpRecursParentCsr$[ebp], eax
	jne	SHORT $L8941

; 4078 :             lpRecursParentCsr = 0;

	mov	DWORD PTR _lpRecursParentCsr$[ebp], 0

; 4079 :             break;

	jmp	SHORT $L8935
$L8941:

; 4081 :          else
; 4082 :          if ( lpRecursParentCsr->hParent )

	mov	ecx, DWORD PTR _lpRecursParentCsr$[ebp]
	cmp	DWORD PTR [ecx+10], 0
	je	SHORT $L8943

; 4084 :             lpRecursParentCsr = zGETPTR( lpRecursParentCsr->hParent );

	mov	edx, DWORD PTR _lpRecursParentCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursParentCsr$[ebp], eax

; 4086 :          else

	jmp	SHORT $L8945
$L8943:

; 4088 :             lpRecursParentCsr = zGETPTR( lpPrevViewSubobject->hViewRootParentCsr );

	mov	ecx, DWORD PTR _lpPrevViewSubobject$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursParentCsr$[ebp], eax

; 4089 :             lpPrevViewSubobject = zGETPTR( lpPrevViewSubobject->hNextViewSubobject );

	mov	eax, DWORD PTR _lpPrevViewSubobject$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevViewSubobject$[ebp], eax
$L8945:

; 4091 :       }

	jmp	$L8934
$L8935:

; 4093 : 
; 4094 :    // Set view parent entity instance.
; 4095 :    lpViewCsr->hViewParentEntityInstance = lpViewRootParentCsr->hEntityInstance;

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR _lpViewRootParentCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+38], ecx

; 4096 :    lpViewSubobject->hViewParentEntityInstance = lpViewRootParentCsr->hEntityInstance;

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	mov	eax, DWORD PTR _lpViewRootParentCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+26], ecx

; 4097 : 
; 4098 :    // Determine the level change for the recursive subobject.
; 4099 :    nLevelChg = 0;

	mov	WORD PTR _nLevelChg$[ebp], 0

; 4100 :    if ( lpRecursParentCsr ) // is it recursive

	cmp	DWORD PTR _lpRecursParentCsr$[ebp], 0
	je	$L8970

; 4102 :       LPVIEWSUBOBJECT lpWorkViewSubobject;
; 4103 : 
; 4104 :       lpViewSubobject->hRecursParentEntityInstance = lpRecursParentCsr->hEntityInstance;

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	mov	eax, DWORD PTR _lpRecursParentCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+44], ecx

; 4105 :       lpViewSubobject->hRecursViewEntityCsr = hViewEntityCsr;

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	mov	eax, DWORD PTR _hViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+40], eax

; 4106 :       lpViewSubobject->hRecursViewEntity = lpViewEntityCsr->hViewEntity;

	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR [ecx+36], eax

; 4107 :       nLevelChg = lpViewEntityCsr->nLevel - lpRecursParentCsr->nLevel;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	eax, DWORD PTR _lpRecursParentCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	sub	edx, ecx
	mov	WORD PTR _nLevelChg$[ebp], dx

; 4108 :       lpRecursParentCsr->hEntityInstance = lpViewEntityCsr->hEntityInstance;

	mov	edx, DWORD PTR _lpRecursParentCsr$[ebp]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+26], ecx

; 4109 :    // if ( lpRecursParentCsr->hEntityInstance == UNSET_CSR )
; 4110 :    //    SysMessageBox( 0, "fnSetViewToSubobject", "UNSET_CSR", -1 );
; 4111 : 
; 4112 :       lpViewEntityCsr = lpRecursParentCsr;

	mov	edx, DWORD PTR _lpRecursParentCsr$[ebp]
	mov	DWORD PTR _lpViewEntityCsr$[ebp], edx

; 4113 :       lpViewRootParentCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewRootParentCsr$[ebp], eax

; 4114 :       hViewEntityCsr = fnCreateEntityCsrHandle( lpViewEntityCsr, lpViewCsr, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnCreateEntityCsrHandle@12
	mov	DWORD PTR _hViewEntityCsr$[ebp], eax

; 4115 : 
; 4116 :       // Before resetting cursor for children, capture the current
; 4117 :       // root cursor positions for outstanding subobject views which
; 4118 :       // are subordinate to the recursive parent cursor and re-do
; 4119 :       // any recursive level changes which are subordinate to the
; 4120 :       // parent cursor.
; 4121 :       lpWorkViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewSubobject$8949[ebp], eax
$L8953:

; 4122 :       while ( lpWorkViewSubobject )

	cmp	DWORD PTR _lpWorkViewSubobject$8949[ebp], 0
	je	$L8954

; 4124 :          zSHORT          nLevelChg;
; 4125 :          LPVIEWENTITYCSR lpRootCsr;
; 4126 :          LPVIEWENTITYCSR lpWorkCsr;
; 4127 : 
; 4128 :          if ( lpWorkViewSubobject->nRootHierNbr <= lpRecursParentCsr->nHierNbr )

	mov	eax, DWORD PTR _lpWorkViewSubobject$8949[ebp]
	movsx	ecx, WORD PTR [eax+18]
	mov	edx, DWORD PTR _lpRecursParentCsr$[ebp]
	movsx	eax, WORD PTR [edx+24]
	cmp	ecx, eax
	jg	SHORT $L8958

; 4129 :             break;

	jmp	$L8954
$L8958:

; 4130 : 
; 4131 :          // Get current entity instance for reset.
; 4132 :          lpRootCsr = zGETPTR( lpWorkViewSubobject->hRootCsr );

	mov	ecx, DWORD PTR _lpWorkViewSubobject$8949[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootCsr$8956[ebp], eax

; 4133 :          lpWorkViewSubobject->hRootEntityInstance = lpRootCsr->hEntityInstance;

	mov	eax, DWORD PTR _lpWorkViewSubobject$8949[ebp]
	mov	ecx, DWORD PTR _lpRootCsr$8956[ebp]
	mov	edx, DWORD PTR [ecx+26]
	mov	DWORD PTR [eax+30], edx

; 4134 :          nLevelChg = lpWorkViewSubobject->nLevelChg;

	mov	eax, DWORD PTR _lpWorkViewSubobject$8949[ebp]
	mov	cx, WORD PTR [eax+34]
	mov	WORD PTR _nLevelChg$8955[ebp], cx

; 4135 :          if ( lpWorkViewSubobject->nLastDescHierNbr < lpViewCsr->uEntities )

	mov	edx, DWORD PTR _lpWorkViewSubobject$8949[ebp]
	movsx	eax, WORD PTR [edx+24]
	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	xor	edx, edx
	mov	dx, WORD PTR [ecx+34]
	cmp	eax, edx
	jge	SHORT $L8960

; 4137 :             lpWorkCsr = zGETPTR( lpWorkViewSubobject->hLastDescCsr );

	mov	eax, DWORD PTR _lpWorkViewSubobject$8949[ebp]
	mov	ecx, DWORD PTR [eax+20]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkCsr$8957[ebp], eax

; 4138 :             lpWorkCsr->hNextHier = fnCreateEntityCsrHandle( lpWorkCsr, lpViewCsr, 1 );

	push	1
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWorkCsr$8957[ebp]
	push	eax
	call	_fnCreateEntityCsrHandle@12
	mov	ecx, DWORD PTR _lpWorkCsr$8957[ebp]
	mov	DWORD PTR [ecx+2], eax
$L8960:

; 4140 : 
; 4141 :          // Reset hierarchical and parent pointers.
; 4142 :          lpWorkCsr = zGETPTR( lpWorkViewSubobject->hRootCsr );

	mov	edx, DWORD PTR _lpWorkViewSubobject$8949[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkCsr$8957[ebp], eax

; 4143 :          lpWorkCsr->hPrevHier = fnCreateEntityCsrHandle( lpWorkCsr, lpViewCsr, -1 );

	push	-1
	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWorkCsr$8957[ebp]
	push	edx
	call	_fnCreateEntityCsrHandle@12
	mov	ecx, DWORD PTR _lpWorkCsr$8957[ebp]
	mov	DWORD PTR [ecx+6], eax

; 4144 :          lpWorkCsr->hParent = lpWorkViewSubobject->hViewRootParentCsr;

	mov	edx, DWORD PTR _lpWorkCsr$8957[ebp]
	mov	eax, DWORD PTR _lpWorkViewSubobject$8949[ebp]
	mov	ecx, DWORD PTR [eax+10]
	mov	DWORD PTR [edx+10], ecx

; 4145 :       // if ( lpWorkCsr->hParent == (LPVIEWENTITYCSR) 1 )
; 4146 :       //    SysMessageBox( 0, "fnSetViewToSubobject", "1", -1 );
; 4147 : 
; 4148 :          // Redo the leveling of the recursive subobject which is
; 4149 :          // itself a subobject of a parent recursive subobject.
; 4150 :          if ( nLevelChg )

	movsx	edx, WORD PTR _nLevelChg$8955[ebp]
	test	edx, edx
	je	SHORT $L8963

; 4152 :             LPVIEWENTITYCSR hWorkCsr;
; 4153 : 
; 4154 :             hWorkCsr = fnCreateEntityCsrHandle( lpWorkCsr, lpViewCsr, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWorkCsr$8957[ebp]
	push	ecx
	call	_fnCreateEntityCsrHandle@12
	mov	DWORD PTR _hWorkCsr$8964[ebp], eax
$L8966:

; 4155 :             while ( hWorkCsr != lpWorkViewSubobject->hLastDescCsr )

	mov	edx, DWORD PTR _lpWorkViewSubobject$8949[ebp]
	mov	eax, DWORD PTR _hWorkCsr$8964[ebp]
	cmp	eax, DWORD PTR [edx+20]
	je	SHORT $L8967

; 4157 :                lpWorkCsr->nLevel -= nLevelChg;

	mov	ecx, DWORD PTR _lpWorkCsr$8957[ebp]
	mov	dx, WORD PTR [ecx+22]
	sub	dx, WORD PTR _nLevelChg$8955[ebp]
	mov	eax, DWORD PTR _lpWorkCsr$8957[ebp]
	mov	WORD PTR [eax+22], dx

; 4158 :                lpWorkCsr++;

	mov	ecx, DWORD PTR _lpWorkCsr$8957[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _lpWorkCsr$8957[ebp], ecx

; 4159 :                hWorkCsr++;

	mov	edx, DWORD PTR _hWorkCsr$8964[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _hWorkCsr$8964[ebp], edx

; 4160 :             }

	jmp	SHORT $L8966
$L8967:

; 4161 : 
; 4162 :             lpWorkCsr->nLevel -= nLevelChg; // change level of last desc

	mov	eax, DWORD PTR _lpWorkCsr$8957[ebp]
	mov	cx, WORD PTR [eax+22]
	sub	cx, WORD PTR _nLevelChg$8955[ebp]
	mov	edx, DWORD PTR _lpWorkCsr$8957[ebp]
	mov	WORD PTR [edx+22], cx
$L8963:

; 4164 : 
; 4165 :          lpWorkViewSubobject = zGETPTR( lpWorkViewSubobject->hNextViewSubobject );

	mov	eax, DWORD PTR _lpWorkViewSubobject$8949[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewSubobject$8949[ebp], eax

; 4166 :       }

	jmp	$L8953
$L8954:

; 4167 : 
; 4168 :       if ( lpViewEntityCsr->hEntityInstance )

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L8969

; 4169 :          fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnResetCursorForViewChildren
	add	esp, 4

; 4170 :       else

	jmp	SHORT $L8970
$L8969:

; 4171 :          fnNullCursorForViewChildren( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnNullCursorForViewChildren
	add	esp, 4
$L8970:

; 4173 : 
; 4174 :    // Continue setting subobject information for reset.
; 4175 :    lpWorkViewEntity = zGETPTR( lpViewEntityCsr->hViewEntity );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewEntity$[ebp], eax

; 4176 :    lpViewSubobject->hRootCsr           = hViewEntityCsr;

	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR _hViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+14], edx

; 4177 :    lpViewSubobject->nRootHierNbr       = lpWorkViewEntity->nHierNbr;

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR _lpWorkViewEntity$[ebp]
	mov	dx, WORD PTR [ecx+217]
	mov	WORD PTR [eax+18], dx

; 4178 :    lpViewSubobject->hViewRootParentCsr =
; 4179 :             fnCreateEntityCsrHandle( lpViewRootParentCsr, lpViewCsr, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewRootParentCsr$[ebp]
	push	ecx
	call	_fnCreateEntityCsrHandle@12
	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	mov	DWORD PTR [edx+10], eax

; 4180 :    lpViewSubobject->nLevelChg = nLevelChg;

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	cx, WORD PTR _nLevelChg$[ebp]
	mov	WORD PTR [eax+34], cx

; 4181 : 
; 4182 :    // Set the new root view entity cursor.
; 4183 :    lpViewCsr->hRootViewEntityCsr = hViewEntityCsr;

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR _hViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+18], eax

; 4184 : 
; 4185 :    // Chain view subobject on to view csr.
; 4186 :    if ( lpViewCsr->hFirstViewSubobject )

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [ecx+30], 0
	je	SHORT $L8972

; 4188 :       LPVIEWSUBOBJECT lpFirstViewSubobject;
; 4189 : 
; 4190 :       lpViewSubobject->hNextViewSubobject = lpViewCsr->hFirstViewSubobject;

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	mov	DWORD PTR [edx+2], ecx

; 4191 :       lpFirstViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstViewSubobject$8973[ebp], eax

; 4192 :       lpFirstViewSubobject->hPrevViewSubobject = hViewSubobject;

	mov	ecx, DWORD PTR _lpFirstViewSubobject$8973[ebp]
	mov	edx, DWORD PTR _hViewSubobject$[ebp]
	mov	DWORD PTR [ecx+6], edx
$L8972:

; 4194 : 
; 4195 :    lpViewCsr->hFirstViewSubobject = hViewSubobject;

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR _hViewSubobject$[ebp]
	mov	DWORD PTR [eax+30], ecx

; 4196 : 
; 4197 :    // Now, go from the current view position to the last descendent
; 4198 :    // of the entity view and adjust the levels if necessary.
; 4199 :    // Note: we do this loop whether or not an adjustment is necessary
; 4200 :    //       in order to get a pointer to the last descendent.
; 4201 :    lpLastDescCsr = lpViewEntityCsr;

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR _lpLastDescCsr$[ebp], edx
$L8976:

; 4204 :       LPVIEWENTITYCSR lpNextHierCsr;
; 4205 : 
; 4206 :       lpLastDescCsr->nLevel += nLevelChg;

	mov	eax, DWORD PTR _lpLastDescCsr$[ebp]
	mov	cx, WORD PTR [eax+22]
	add	cx, WORD PTR _nLevelChg$[ebp]
	mov	edx, DWORD PTR _lpLastDescCsr$[ebp]
	mov	WORD PTR [edx+22], cx

; 4207 :       lpNextHierCsr = zGETPTR( lpLastDescCsr->hNextHier );

	mov	eax, DWORD PTR _lpLastDescCsr$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHierCsr$8978[ebp], eax

; 4208 :       if ( lpNextHierCsr == 0 ||
; 4209 :            (lpNextHierCsr->hParent &&
; 4210 :             lpNextHierCsr->hParent == lpViewEntityCsr->hParent) )

	cmp	DWORD PTR _lpNextHierCsr$8978[ebp], 0
	je	SHORT $L8981
	mov	edx, DWORD PTR _lpNextHierCsr$8978[ebp]
	cmp	DWORD PTR [edx+10], 0
	je	SHORT $L8980
	mov	eax, DWORD PTR _lpNextHierCsr$8978[ebp]
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [eax+10]
	cmp	edx, DWORD PTR [ecx+10]
	jne	SHORT $L8980
$L8981:

; 4212 :          break;

	jmp	SHORT $L8977
$L8980:

; 4214 : 
; 4215 :       lpLastDescCsr = zGETPTR( lpLastDescCsr->hNextHier );

	mov	eax, DWORD PTR _lpLastDescCsr$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLastDescCsr$[ebp], eax

; 4216 :    }

	jmp	SHORT $L8976
$L8977:

; 4217 : 
; 4218 :    // Set last descendent information in lpViewSubobject.
; 4219 :    lpViewSubobject->hLastDescCsr =
; 4220 :                      fnCreateEntityCsrHandle( lpLastDescCsr, lpViewCsr, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpLastDescCsr$[ebp]
	push	eax
	call	_fnCreateEntityCsrHandle@12
	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	DWORD PTR [ecx+20], eax

; 4221 :    lpWorkViewEntity = zGETPTR( lpLastDescCsr->hViewEntity );

	mov	edx, DWORD PTR _lpLastDescCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewEntity$[ebp], eax

; 4222 :    lpViewSubobject->nLastDescHierNbr = lpWorkViewEntity->nHierNbr;

	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR _lpWorkViewEntity$[ebp]
	mov	ax, WORD PTR [edx+217]
	mov	WORD PTR [ecx+24], ax

; 4223 : 
; 4224 :    // Null the previous hierarchical pointer and parent pointer from
; 4225 :    // the target entity.
; 4226 :    lpViewEntityCsr->hParent   = 0;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+10], 0

; 4227 :    lpViewEntityCsr->hPrevHier = 0;

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+6], 0

; 4228 :    lpLastDescCsr->hNextHier   = 0;

	mov	eax, DWORD PTR _lpLastDescCsr$[ebp]
	mov	DWORD PTR [eax+2], 0

; 4229 :    return( 0 );

	xor	ax, ax
$L8903:

; 4230 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnSetViewToSubobject ENDP
_lpView$ = 8
_nControl$ = 12
_lpViewCsr$ = -4
_lpViewOI$ = -24
_lpViewOD$ = -12
_lpViewEntity$ = -16
_lpViewEntityCsr$ = -28
_lpRootEntityInstance$ = -8
_lpSelectedInstance$ = -20
_lpViewSubobject$9003 = -32
_lpParentCsr$9019 = -36
_fnResetView PROC NEAR

; 4255 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 4256 :    LPVIEWCSR           lpViewCsr;
; 4257 :    LPVIEWOI            lpViewOI;
; 4258 :    LPVIEWOD            lpViewOD;
; 4259 :    LPVIEWENTITY        lpViewEntity;
; 4260 :    LPVIEWENTITYCSR     lpViewEntityCsr;
; 4261 :    LPENTITYINSTANCE    lpRootEntityInstance;
; 4262 :    LPSELECTEDINSTANCE  lpSelectedInstance;
; 4263 : 
; 4264 :    // Get View Cursors for instance.
; 4265 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 4266 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 4267 :    lpViewOD  = zGETPTR( lpViewOI->hViewOD );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 4268 :    lpViewCsr->hHierRootEntityInstance = 0;

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	DWORD PTR [eax+22], 0

; 4269 :    lpViewCsr->hHierEntityInstance = 0;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	DWORD PTR [ecx+26], 0

; 4270 : 
; 4271 :    // If the view has any outstanding subobjects, delete the subobject
; 4272 :    // entries and reset the hierarchical and parent pointers in the
; 4273 :    // view cursors as well as the levels.
; 4274 :    if ( lpViewCsr->hFirstViewSubobject )

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [edx+30], 0
	je	$L8999
$L9001:

; 4276 :       while ( lpViewCsr->hFirstViewSubobject )

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	SHORT $L9002

; 4278 :          LPVIEWSUBOBJECT lpViewSubobject;
; 4279 : 
; 4280 :          lpViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$9003[ebp], eax

; 4281 :          lpViewCsr->hFirstViewSubobject =
; 4282 :                                     lpViewSubobject->hNextViewSubobject;

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR _lpViewSubobject$9003[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+30], edx

; 4283 :          fnFreeDataspace( lpViewSubobject );

	mov	eax, DWORD PTR _lpViewSubobject$9003[ebp]
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 4284 :       }

	jmp	SHORT $L9001
$L9002:

; 4285 : 
; 4286 :       // Now that we've blasted the subobject information, reset the
; 4287 :       // hierarchical pointers and parent pointers in the view cursors.
; 4288 :       lpViewEntity    = zGETPTR( lpViewOD->hFirstOD_Entity );

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	mov	edx, DWORD PTR [ecx+224]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 4289 :       lpViewEntityCsr = zGETPTR( lpViewCsr->hFirstOD_EntityCsr );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax
$L9008:

; 4290 :       while ( lpViewEntity )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	SHORT $L9009

; 4292 :          lpViewEntityCsr->nLevel = lpViewEntity->nLevel;

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	cx, WORD PTR [eax+215]
	mov	WORD PTR [edx+22], cx

; 4293 :          if ( lpViewEntity->hParent )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [edx+10], 0
	je	SHORT $L9010

; 4294 :             lpViewEntityCsr->hPrevHier =
; 4295 :                fnCreateEntityCsrHandle( lpViewEntityCsr, lpViewCsr, -1 );

	push	-1
	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnCreateEntityCsrHandle@12
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+6], eax
$L9010:

; 4296 : 
; 4297 :          if ( lpViewEntity->hNextHier )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [eax+2], 0
	je	SHORT $L9011

; 4298 :             lpViewEntityCsr->hNextHier =
; 4299 :                fnCreateEntityCsrHandle( lpViewEntityCsr, lpViewCsr, 1 );

	push	1
	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnCreateEntityCsrHandle@12
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+2], eax
$L9011:

; 4300 : 
; 4301 :          lpViewEntity = zGETPTR( lpViewEntity->hNextHier );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 4302 :          lpViewEntityCsr++;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _lpViewEntityCsr$[ebp], ecx

; 4303 :       }

	jmp	SHORT $L9008
$L9009:

; 4304 : 
; 4305 :       // Now reset the parent cursor pointers.
; 4306 :       lpViewEntityCsr = zGETPTR( lpViewCsr->hFirstOD_EntityCsr );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 4307 :       lpViewEntityCsr = zGETPTR( lpViewEntityCsr->hNextHier );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax
$L9016:

; 4308 :       while ( lpViewEntityCsr )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	SHORT $L9017

; 4310 :          if ( lpViewEntityCsr->hParent == 0 )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+10], 0
	jne	SHORT $L9018

; 4312 :             LPVIEWENTITYCSR  lpParentCsr;
; 4313 : 
; 4314 :             lpParentCsr = lpViewEntityCsr - 1;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	sub	ecx, 30					; 0000001eH
	mov	DWORD PTR _lpParentCsr$9019[ebp], ecx
$L9021:

; 4315 :             while ( lpParentCsr->nLevel != lpViewEntityCsr->nLevel - 1 )

	mov	edx, DWORD PTR _lpParentCsr$9019[ebp]
	movsx	eax, WORD PTR [edx+22]
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	sub	edx, 1
	cmp	eax, edx
	je	SHORT $L9022

; 4316 :                lpParentCsr--;

	mov	eax, DWORD PTR _lpParentCsr$9019[ebp]
	sub	eax, 30					; 0000001eH
	mov	DWORD PTR _lpParentCsr$9019[ebp], eax
	jmp	SHORT $L9021
$L9022:

; 4317 : 
; 4318 :             lpViewEntityCsr->hParent = fnCreateEntityCsrHandle( lpParentCsr, lpViewCsr, 0 );

	push	0
	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpParentCsr$9019[ebp]
	push	edx
	call	_fnCreateEntityCsrHandle@12
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+10], eax
$L9018:

; 4322 : 
; 4323 :          lpViewEntityCsr = zGETPTR( lpViewEntityCsr->hNextHier );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 4324 :       }

	jmp	SHORT $L9016
$L9017:

; 4325 : 
; 4326 :       lpViewCsr->hRootViewEntityCsr = lpViewCsr->hFirstOD_EntityCsr;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR [ecx+18], eax

; 4327 :       lpViewCsr->hViewParentEntityInstance = 0;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	DWORD PTR [ecx+38], 0
$L8999:

; 4329 : 
; 4330 :    // Clear any and all selected instances, unless asked not to.
; 4331 :    if ( (nControl & 1) == 0 )

	movsx	edx, WORD PTR _nControl$[ebp]
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9027
$L9026:

; 4333 :       while ( lpViewCsr->hFirstSelectedInstance )

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [eax+42], 0
	je	SHORT $L9027

; 4335 :          lpSelectedInstance = zGETPTR( lpViewCsr->hFirstSelectedInstance );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSelectedInstance$[ebp], eax

; 4336 :          lpViewCsr->hFirstSelectedInstance =
; 4337 :             lpSelectedInstance->hNextSelectedInstance;

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR _lpSelectedInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+42], edx

; 4338 : 
; 4339 :          fnFreeDataspace( lpSelectedInstance );

	mov	eax, DWORD PTR _lpSelectedInstance$[ebp]
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 4340 :       }

	jmp	SHORT $L9026
$L9027:

; 4342 : 
; 4343 :    // Reset the cursor for all the view children from the root.
; 4344 :    lpRootEntityInstance = zGETPTR( lpViewOI->hRootEntityInstance );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootEntityInstance$[ebp], eax

; 4345 :    if ( lpRootEntityInstance )

	cmp	DWORD PTR _lpRootEntityInstance$[ebp], 0
	je	SHORT $L9030

; 4347 :       lpViewEntityCsr = zGETPTR( lpViewCsr->hRootViewEntityCsr );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax
$L9033:

; 4348 :       while ( lpViewEntityCsr->hViewEntity !=
; 4349 :                                           lpRootEntityInstance->hViewEntity )

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _lpRootEntityInstance$[ebp]
	mov	ecx, DWORD PTR [edx+14]
	cmp	ecx, DWORD PTR [eax+2]
	je	SHORT $L9034

; 4351 :          lpViewEntityCsr = zGETPTR( lpViewEntityCsr->hNextHier );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 4352 :       }

	jmp	SHORT $L9033
$L9034:

; 4353 : 
; 4354 :       lpViewEntityCsr->hEntityInstance = zGETHNDL( lpRootEntityInstance );

	mov	ecx, DWORD PTR _lpRootEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+26], eax

; 4355 :    // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 4356 :    //    SysMessageBox( 0, "fnResetView", "UNSET_CSR", -1 );
; 4357 : 
; 4358 :       fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L9030:

; 4360 : 
; 4361 :    return( 0 );  // we're done, return success

	xor	ax, ax

; 4362 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnResetView ENDP
_TEXT	ENDS
PUBLIC	??_C@_0CM@KCDH@Root?5cursors?5don?8t?5match?4?5?5Conta@ ; `string'
PUBLIC	??_C@_0BK@OEDD@QuinSoft?5Internal?5Message?$AA@	; `string'
EXTRN	_SysDiagnosticMessage@16:NEAR
;	COMDAT ??_C@_0CM@KCDH@Root?5cursors?5don?8t?5match?4?5?5Conta@
; File C:\10C\A\oe\KZOEVMAA.C
_DATA	SEGMENT
??_C@_0CM@KCDH@Root?5cursors?5don?8t?5match?4?5?5Conta@ DB 'Root cursors '
	DB	'don''t match.  Contact QuinSoft', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@OEDD@QuinSoft?5Internal?5Message?$AA@
_DATA	SEGMENT
??_C@_0BK@OEDD@QuinSoft?5Internal?5Message?$AA@ DB 'QuinSoft Internal Mes'
	DB	'sage', 00H					; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_nLevelChg$ = -16
_lpViewCsr$ = -4
_lpRootCsr$ = -12
_lpWorkCsr$ = -20
_lpLastDescCsr$ = -24
_lpViewSubobject$ = -8
_lpNextViewSubobject$9058 = -28
_lpWorkViewSubobject$9064 = -32
_lpRecursChildEntityCsr$9065 = -36
_lpRecursChildEntityInstance$9066 = -40
_hRecursChildEntityInstance$9067 = -44
_lpNextViewSubobject$9082 = -48
_lpSubRootCsr$9091 = -56
_lpWorkEntityInstance$9092 = -52
_nLevelChg$9093 = -60
_lpFirstViewSubobject$9113 = -64
_fnResetViewFromSubobject PROC NEAR

; 4378 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H

; 4379 :    zSHORT            nLevelChg;
; 4380 :    LPVIEWCSR         lpViewCsr;
; 4381 :    LPVIEWENTITYCSR   lpRootCsr;
; 4382 :    LPVIEWENTITYCSR   lpWorkCsr;
; 4383 :    LPVIEWENTITYCSR   lpLastDescCsr;
; 4384 :    LPVIEWSUBOBJECT   lpViewSubobject;
; 4385 : 
; 4386 :    // Get the ViewCsr for the view.
; 4387 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 4388 :    lpRootCsr = zGETPTR( lpViewCsr->hRootViewEntityCsr );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootCsr$[ebp], eax

; 4389 :    lpViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$[ebp], eax

; 4390 :    if ( lpViewSubobject == 0 )

	cmp	DWORD PTR _lpViewSubobject$[ebp], 0
	jne	SHORT $L9049

; 4391 :       return( 1 );

	mov	ax, 1
	jmp	$L9039
$L9049:

; 4392 : 
; 4393 :    lpLastDescCsr = zGETPTR( lpViewSubobject->hLastDescCsr );

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLastDescCsr$[ebp], eax

; 4394 : 
; 4395 :    // Check to see if there is another subobject structure.  If there is then
; 4396 :    // the current cursor structure won't change, just the entity instances.
; 4397 :    if ( lpViewSubobject->hNextViewSubobject == 0 )

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	cmp	DWORD PTR [edx+2], 0
	jne	$L9051

; 4399 :       // No other subobject structures so change the cursor structure back to
; 4400 :       // its original form.
; 4401 :       lpRootCsr->hParent = lpViewSubobject->hViewRootParentCsr;

	mov	eax, DWORD PTR _lpRootCsr$[ebp]
	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	mov	DWORD PTR [eax+10], edx

; 4402 :    // if ( lpRootCsr->hParent == (LPVIEWENTITYCSR) 1 )
; 4403 :    //    SysMessageBox( 0, "fnResetViewFromSubobject", "1", -1 );
; 4404 : 
; 4405 :       lpRootCsr->hPrevHier = fnCreateEntityCsrHandle( lpRootCsr, lpViewCsr, -1 );

	push	-1
	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpRootCsr$[ebp]
	push	ecx
	call	_fnCreateEntityCsrHandle@12
	mov	edx, DWORD PTR _lpRootCsr$[ebp]
	mov	DWORD PTR [edx+6], eax

; 4406 :       if ( lpViewSubobject->nLastDescHierNbr < lpViewCsr->uEntities )

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	movsx	ecx, WORD PTR [eax+24]
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	xor	eax, eax
	mov	ax, WORD PTR [edx+34]
	cmp	ecx, eax
	jge	SHORT $L9052

; 4407 :          lpLastDescCsr->hNextHier = fnCreateEntityCsrHandle( lpLastDescCsr, lpViewCsr, 1 );

	push	1
	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpLastDescCsr$[ebp]
	push	edx
	call	_fnCreateEntityCsrHandle@12
	mov	ecx, DWORD PTR _lpLastDescCsr$[ebp]
	mov	DWORD PTR [ecx+2], eax
$L9052:

; 4408 : 
; 4409 :       // Reset RootViewCsr parent.
; 4410 :       lpWorkCsr = lpRootCsr;

	mov	edx, DWORD PTR _lpRootCsr$[ebp]
	mov	DWORD PTR _lpWorkCsr$[ebp], edx
$L9054:

; 4411 :       while ( lpWorkCsr->hParent )

	mov	eax, DWORD PTR _lpWorkCsr$[ebp]
	cmp	DWORD PTR [eax+10], 0
	je	SHORT $L9055

; 4412 :          lpWorkCsr = zGETPTR( lpWorkCsr->hParent );

	mov	ecx, DWORD PTR _lpWorkCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkCsr$[ebp], eax
	jmp	SHORT $L9054
$L9055:

; 4413 : 
; 4414 :       lpViewCsr->hRootViewEntityCsr = fnCreateEntityCsrHandle( lpWorkCsr, lpViewCsr, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWorkCsr$[ebp]
	push	ecx
	call	_fnCreateEntityCsrHandle@12
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	DWORD PTR [edx+18], eax

; 4416 :    // DGC 2000.1.31
; 4417 :    // Following code just for testing a theory ... can be removed at any time.
; 4418 :    else

	jmp	SHORT $L9060
$L9051:

; 4420 :       LPVIEWSUBOBJECT lpNextViewSubobject = zGETPTR( lpViewSubobject->hNextViewSubobject );

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextViewSubobject$9058[ebp], eax

; 4421 : 
; 4422 :       if ( lpNextViewSubobject->hRootCsr != lpViewSubobject->hRootCsr )

	mov	edx, DWORD PTR _lpNextViewSubobject$9058[ebp]
	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR [edx+14]
	cmp	ecx, DWORD PTR [eax+14]
	je	SHORT $L9060

; 4424 :          // We should never see this message.  The root cursors should always
; 4425 :          // be the same.
; 4426 :          SysDiagnosticMessage( lpView, "QuinSoft Internal Message",
; 4427 :                                "Root cursors don't match.  Contact QuinSoft", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0CM@KCDH@Root?5cursors?5don?8t?5match?4?5?5Conta@ ; `string'
	push	OFFSET FLAT:??_C@_0BK@OEDD@QuinSoft?5Internal?5Message?$AA@ ; `string'
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SysDiagnosticMessage@16
$L9060:

; 4430 : 
; 4431 :    // Get level change.
; 4432 :    nLevelChg = lpViewSubobject->nLevelChg;

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	cx, WORD PTR [eax+34]
	mov	WORD PTR _nLevelChg$[ebp], cx

; 4433 :    if ( nLevelChg )

	movsx	edx, WORD PTR _nLevelChg$[ebp]
	test	edx, edx
	je	$L9090

; 4435 :       LPVIEWSUBOBJECT  lpWorkViewSubobject;
; 4436 :       LPVIEWENTITYCSR  lpRecursChildEntityCsr;
; 4437 :       LPENTITYINSTANCE lpRecursChildEntityInstance;
; 4438 :       zPVOID           hRecursChildEntityInstance;
; 4439 : 
; 4440 :       lpWorkCsr = lpRootCsr;

	mov	eax, DWORD PTR _lpRootCsr$[ebp]
	mov	DWORD PTR _lpWorkCsr$[ebp], eax

; 4441 :       lpWorkCsr->nLevel -= nLevelChg;

	mov	ecx, DWORD PTR _lpWorkCsr$[ebp]
	mov	dx, WORD PTR [ecx+22]
	sub	dx, WORD PTR _nLevelChg$[ebp]
	mov	eax, DWORD PTR _lpWorkCsr$[ebp]
	mov	WORD PTR [eax+22], dx
$L9069:

; 4442 :       while ( lpWorkCsr != lpLastDescCsr )

	mov	ecx, DWORD PTR _lpWorkCsr$[ebp]
	cmp	ecx, DWORD PTR _lpLastDescCsr$[ebp]
	je	SHORT $L9070

; 4444 :          lpWorkCsr++;

	mov	edx, DWORD PTR _lpWorkCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _lpWorkCsr$[ebp], edx

; 4445 :          lpWorkCsr->nLevel -= nLevelChg;

	mov	eax, DWORD PTR _lpWorkCsr$[ebp]
	mov	cx, WORD PTR [eax+22]
	sub	cx, WORD PTR _nLevelChg$[ebp]
	mov	edx, DWORD PTR _lpWorkCsr$[ebp]
	mov	WORD PTR [edx+22], cx

; 4446 :       }

	jmp	SHORT $L9069
$L9070:

; 4447 : 
; 4448 :       // Reset the recursive parent entity cursor to the recursive
; 4449 :       // parent entity instance when SetViewToSubobject was called.
; 4450 :       lpRecursChildEntityInstance = zGETPTR( lpRootCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpRootCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursChildEntityInstance$9066[ebp], eax

; 4451 :       lpRootCsr->hEntityInstance = lpViewSubobject->hRecursParentEntityInstance;

	mov	edx, DWORD PTR _lpRootCsr$[ebp]
	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR [eax+44]
	mov	DWORD PTR [edx+26], ecx

; 4452 :    // if ( lpRootCsr->hEntityInstance == UNSET_CSR )
; 4453 :    //    SysMessageBox( 0, "fnResetViewFromSubobject", "UNSET_CSR", -1 );
; 4454 : 
; 4455 :       fnResetCursorForViewChildren( lpRootCsr );

	mov	edx, DWORD PTR _lpRootCsr$[ebp]
	push	edx
	call	_fnResetCursorForViewChildren
	add	esp, 4

; 4456 : 
; 4457 :       // Now reset the recursive childe entity cursor to the recursive
; 4458 :       // parents cursor value when the reset was called. Note: this
; 4459 :       // entity instance may be NULL.
; 4460 :       lpRecursChildEntityCsr = zGETPTR( lpViewSubobject->hRecursViewEntityCsr );

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR [eax+40]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursChildEntityCsr$9065[ebp], eax

; 4461 :       lpRecursChildEntityCsr->hEntityInstance = zGETHNDL( lpRecursChildEntityInstance );

	mov	edx, DWORD PTR _lpRecursChildEntityInstance$9066[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpRecursChildEntityCsr$9065[ebp]
	mov	DWORD PTR [ecx+26], eax

; 4462 :    // if ( lpRecursChildEntityCsr->hEntityInstance == UNSET_CSR )
; 4463 :    //    SysMessageBox( 0, "fnResetViewFromSubobject2", "UNSET_CSR", -1 );
; 4464 : 
; 4465 :       // Now re-establish all cursors up the path from the recursive
; 4466 :       // child to the recursive parent entity types in the event that
; 4467 :       // the recursive child's parent is NOT the recursive parent.
; 4468 :       hRecursChildEntityInstance = lpViewSubobject->hViewParentEntityInstance;

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	mov	eax, DWORD PTR [edx+26]
	mov	DWORD PTR _hRecursChildEntityInstance$9067[ebp], eax

; 4469 :       lpRecursChildEntityCsr = zGETPTR( lpRecursChildEntityCsr->hParent );

	mov	ecx, DWORD PTR _lpRecursChildEntityCsr$9065[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursChildEntityCsr$9065[ebp], eax
$L9076:

; 4470 :       while ( lpRecursChildEntityCsr != lpRootCsr )

	mov	eax, DWORD PTR _lpRecursChildEntityCsr$9065[ebp]
	cmp	eax, DWORD PTR _lpRootCsr$[ebp]
	je	SHORT $L9077

; 4472 :          lpRecursChildEntityCsr->hEntityInstance = hRecursChildEntityInstance;

	mov	ecx, DWORD PTR _lpRecursChildEntityCsr$9065[ebp]
	mov	edx, DWORD PTR _hRecursChildEntityInstance$9067[ebp]
	mov	DWORD PTR [ecx+26], edx

; 4473 :       // if ( lpRecursChildEntityCsr->hEntityInstance == UNSET_CSR )
; 4474 :       //    SysMessageBox( 0, "fnResetViewFromSubobject3", "UNSET_CSR", -1 );
; 4475 : 
; 4476 :          lpRecursChildEntityInstance = zGETPTR( hRecursChildEntityInstance );

	mov	eax, DWORD PTR _hRecursChildEntityInstance$9067[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursChildEntityInstance$9066[ebp], eax

; 4477 :          hRecursChildEntityInstance = lpRecursChildEntityInstance->hParent;

	mov	ecx, DWORD PTR _lpRecursChildEntityInstance$9066[ebp]
	mov	edx, DWORD PTR [ecx+30]
	mov	DWORD PTR _hRecursChildEntityInstance$9067[ebp], edx

; 4478 :          lpRecursChildEntityCsr = zGETPTR( lpRecursChildEntityCsr->hParent );

	mov	eax, DWORD PTR _lpRecursChildEntityCsr$9065[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursChildEntityCsr$9065[ebp], eax

; 4479 :       }

	jmp	SHORT $L9076
$L9077:

; 4480 : 
; 4481 :       // Now that we have reset the recursive view, see if a previous view
; 4482 :       // had been established which was subordinate to the recursive view.
; 4483 :       lpWorkViewSubobject = zGETPTR( lpViewSubobject->hNextViewSubobject );

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewSubobject$9064[ebp], eax

; 4484 :       if ( lpWorkViewSubobject &&
; 4485 :            lpWorkViewSubobject->nRootHierNbr > lpViewSubobject->nRootHierNbr )

	cmp	DWORD PTR _lpWorkViewSubobject$9064[ebp], 0
	je	$L9090
	mov	ecx, DWORD PTR _lpWorkViewSubobject$9064[ebp]
	movsx	edx, WORD PTR [ecx+18]
	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	movsx	ecx, WORD PTR [eax+18]
	cmp	edx, ecx
	jle	$L9090

; 4487 :          LPVIEWSUBOBJECT lpNextViewSubobject =
; 4488 :                            zGETPTR( lpWorkViewSubobject->hNextViewSubobject );

	mov	edx, DWORD PTR _lpWorkViewSubobject$9064[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextViewSubobject$9082[ebp], eax
$L9085:

; 4489 : 
; 4490 :          while ( lpNextViewSubobject &&
; 4491 :                  lpNextViewSubobject->nRootHierNbr >
; 4492 :                                              lpViewSubobject->nRootHierNbr )

	cmp	DWORD PTR _lpNextViewSubobject$9082[ebp], 0
	je	SHORT $L9086
	mov	ecx, DWORD PTR _lpNextViewSubobject$9082[ebp]
	movsx	edx, WORD PTR [ecx+18]
	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	movsx	ecx, WORD PTR [eax+18]
	cmp	edx, ecx
	jle	SHORT $L9086

; 4494 :             lpWorkViewSubobject = lpNextViewSubobject;

	mov	edx, DWORD PTR _lpNextViewSubobject$9082[ebp]
	mov	DWORD PTR _lpWorkViewSubobject$9064[ebp], edx

; 4495 :             lpNextViewSubobject =
; 4496 :                            zGETPTR( lpWorkViewSubobject->hNextViewSubobject );

	mov	eax, DWORD PTR _lpWorkViewSubobject$9064[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextViewSubobject$9082[ebp], eax

; 4497 :          }

	jmp	SHORT $L9085
$L9086:

; 4498 : 
; 4499 :          while ( lpWorkViewSubobject != lpViewSubobject )

	mov	edx, DWORD PTR _lpWorkViewSubobject$9064[ebp]
	cmp	edx, DWORD PTR _lpViewSubobject$[ebp]
	je	$L9090

; 4501 :             LPVIEWENTITYCSR   lpSubRootCsr;
; 4502 :             LPENTITYINSTANCE  lpWorkEntityInstance;
; 4503 :             int               nLevelChg;
; 4504 : 
; 4505 :             // Re-establish previous views from recursive view.
; 4506 :             // Here we restablish previous subordinate views to a recursive
; 4507 :             // view in the order in which they were initially established.
; 4508 :             lpSubRootCsr = zGETPTR( lpWorkViewSubobject->hRootCsr );

	mov	eax, DWORD PTR _lpWorkViewSubobject$9064[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubRootCsr$9091[ebp], eax

; 4509 :             lpSubRootCsr->hEntityInstance = lpWorkViewSubobject->hRootEntityInstance;

	mov	edx, DWORD PTR _lpSubRootCsr$9091[ebp]
	mov	eax, DWORD PTR _lpWorkViewSubobject$9064[ebp]
	mov	ecx, DWORD PTR [eax+30]
	mov	DWORD PTR [edx+26], ecx

; 4510 :          // if ( lpSubRootCsr->hEntityInstance == UNSET_CSR )
; 4511 :          //    SysMessageBox( 0, "fnResetViewFromSubobject4", "UNSET_CSR", -1 );
; 4512 : 
; 4513 :             if ( lpSubRootCsr->hEntityInstance )

	mov	edx, DWORD PTR _lpSubRootCsr$9091[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L9095

; 4515 :                fnResetCursorForViewChildren( lpSubRootCsr );

	mov	eax, DWORD PTR _lpSubRootCsr$9091[ebp]
	push	eax
	call	_fnResetCursorForViewChildren
	add	esp, 4

; 4516 : 
; 4517 :                // Set parent cursors from subobject csr to lpRootCsr.
; 4518 :                lpWorkCsr = zGETPTR( lpSubRootCsr->hParent );

	mov	ecx, DWORD PTR _lpSubRootCsr$9091[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkCsr$[ebp], eax

; 4519 :                lpWorkEntityInstance = zGETPTR( lpSubRootCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpSubRootCsr$9091[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkEntityInstance$9092[ebp], eax
$L9099:

; 4520 :                while ( lpWorkCsr && lpWorkCsr != lpRootCsr )

	cmp	DWORD PTR _lpWorkCsr$[ebp], 0
	je	SHORT $L9100
	mov	edx, DWORD PTR _lpWorkCsr$[ebp]
	cmp	edx, DWORD PTR _lpRootCsr$[ebp]
	je	SHORT $L9100

; 4522 :                   lpWorkEntityInstance = zGETPTR( lpWorkEntityInstance->hParent );

	mov	eax, DWORD PTR _lpWorkEntityInstance$9092[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkEntityInstance$9092[ebp], eax

; 4523 :                   lpWorkCsr = zGETPTR( lpWorkCsr->hParent );

	mov	edx, DWORD PTR _lpWorkCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkCsr$[ebp], eax

; 4524 :                }

	jmp	SHORT $L9099
$L9100:

; 4526 :             else

	jmp	SHORT $L9103
$L9095:

; 4527 :                fnNullCursorForViewChildren( lpSubRootCsr );

	mov	ecx, DWORD PTR _lpSubRootCsr$9091[ebp]
	push	ecx
	call	_fnNullCursorForViewChildren
	add	esp, 4
$L9103:

; 4528 : 
; 4529 :             // Now that we've reset a cursor, redo the leveling if a level
; 4530 :             // change is necessary.
; 4531 :             nLevelChg = lpWorkViewSubobject->nLevelChg;

	mov	edx, DWORD PTR _lpWorkViewSubobject$9064[ebp]
	movsx	eax, WORD PTR [edx+34]
	mov	DWORD PTR _nLevelChg$9093[ebp], eax

; 4532 :             lpWorkCsr = zGETPTR( lpWorkViewSubobject->hLastDescCsr );

	mov	ecx, DWORD PTR _lpWorkViewSubobject$9064[ebp]
	mov	edx, DWORD PTR [ecx+20]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkCsr$[ebp], eax

; 4533 :             lpWorkCsr->hNextHier = 0;

	mov	eax, DWORD PTR _lpWorkCsr$[ebp]
	mov	DWORD PTR [eax+2], 0

; 4534 :             lpWorkCsr = zGETPTR( lpWorkViewSubobject->hRootCsr );

	mov	ecx, DWORD PTR _lpWorkViewSubobject$9064[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkCsr$[ebp], eax

; 4535 :             lpWorkCsr->hPrevHier = 0;

	mov	eax, DWORD PTR _lpWorkCsr$[ebp]
	mov	DWORD PTR [eax+6], 0

; 4536 :             lpWorkCsr->hParent = 0;

	mov	ecx, DWORD PTR _lpWorkCsr$[ebp]
	mov	DWORD PTR [ecx+10], 0

; 4537 :             lpViewCsr->hRootViewEntityCsr =
; 4538 :                         fnCreateEntityCsrHandle( lpWorkCsr, lpViewCsr, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWorkCsr$[ebp]
	push	eax
	call	_fnCreateEntityCsrHandle@12
	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	DWORD PTR [ecx+18], eax

; 4539 :             lpViewCsr->hViewParentEntityInstance =
; 4540 :                         lpWorkViewSubobject->hViewParentEntityInstance;

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR _lpWorkViewSubobject$9064[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+38], ecx

; 4541 :             if ( nLevelChg )

	cmp	DWORD PTR _nLevelChg$9093[ebp], 0
	je	SHORT $L9109
$L9108:

; 4543 :                while( lpWorkCsr )

	cmp	DWORD PTR _lpWorkCsr$[ebp], 0
	je	SHORT $L9109

; 4545 :                   lpWorkCsr->nLevel += nLevelChg;

	mov	edx, DWORD PTR _lpWorkCsr$[ebp]
	mov	ax, WORD PTR [edx+22]
	add	ax, WORD PTR _nLevelChg$9093[ebp]
	mov	ecx, DWORD PTR _lpWorkCsr$[ebp]
	mov	WORD PTR [ecx+22], ax

; 4546 :                   lpWorkCsr = zGETPTR( lpWorkCsr->hNextHier );

	mov	edx, DWORD PTR _lpWorkCsr$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkCsr$[ebp], eax

; 4547 :                }

	jmp	SHORT $L9108
$L9109:

; 4549 : 
; 4550 :             // Whew, one done, re-establish the next sub view.
; 4551 :             lpWorkViewSubobject =
; 4552 :                         zGETPTR( lpWorkViewSubobject->hPrevViewSubobject );

	mov	ecx, DWORD PTR _lpWorkViewSubobject$9064[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewSubobject$9064[ebp], eax

; 4553 :          }

	jmp	$L9086
$L9090:

; 4556 : 
; 4557 :    // Unchain lpViewSubobject and return it to the system.
; 4558 :    lpViewCsr->hFirstViewSubobject = lpViewSubobject->hNextViewSubobject;

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+30], edx

; 4559 :    if ( lpViewCsr->hFirstViewSubobject )

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	SHORT $L9112

; 4561 :       LPVIEWSUBOBJECT lpFirstViewSubobject =
; 4562 :                                  zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstViewSubobject$9113[ebp], eax

; 4563 : 
; 4564 :       lpFirstViewSubobject->hPrevViewSubobject = 0;

	mov	eax, DWORD PTR _lpFirstViewSubobject$9113[ebp]
	mov	DWORD PTR [eax+6], 0

; 4565 : 
; 4566 :       // Gig, 11/4/92 - Reset View Parent Entity Instance.
; 4567 :       lpViewCsr->hViewParentEntityInstance =
; 4568 :                      lpFirstViewSubobject->hViewParentEntityInstance;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR _lpFirstViewSubobject$9113[ebp]
	mov	eax, DWORD PTR [edx+26]
	mov	DWORD PTR [ecx+38], eax

; 4570 :    else

	jmp	SHORT $L9115
$L9112:

; 4571 :       lpViewCsr->hViewParentEntityInstance = 0;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	DWORD PTR [ecx+38], 0
$L9115:

; 4572 : 
; 4573 :    fnFreeDataspace( lpViewSubobject );

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 4574 :    return( 0 );

	xor	ax, ax
$L9039:

; 4575 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnResetViewFromSubobject ENDP
_TEXT	ENDS
PUBLIC	_fnDropAllViewSubobjects
_TEXT	SEGMENT
_zView$ = 8
_lpViewCsr$ = -4
_lpViewSubobject$9124 = -8
_fnDropAllViewSubobjects PROC NEAR

; 4589 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 4590 :    LPVIEWCSR   lpViewCsr;
; 4591 : 
; 4592 :    lpViewCsr = zGETPTR( zView->hViewCsr );

	mov	eax, DWORD PTR _zView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax
$L9122:

; 4593 : 
; 4594 :    // Discard all subobject views.
; 4595 :    while ( lpViewCsr->hFirstViewSubobject )

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [edx+30], 0
	je	SHORT $L9123

; 4597 :       LPVIEWSUBOBJECT   lpViewSubobject;
; 4598 : 
; 4599 :       lpViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$9124[ebp], eax

; 4600 :       lpViewCsr->hFirstViewSubobject = lpViewSubobject->hNextViewSubobject;

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR _lpViewSubobject$9124[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR [edx+30], ecx

; 4601 :       fnFreeDataspace( lpViewSubobject );

	mov	edx, DWORD PTR _lpViewSubobject$9124[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 4602 :    }

	jmp	SHORT $L9122
$L9123:

; 4603 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnDropAllViewSubobjects ENDP
_TEXT	ENDS
END
