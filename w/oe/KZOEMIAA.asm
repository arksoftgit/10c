	TITLE	C:\10C\A\oe\KZOEMIAA.C
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
;	COMDAT ??_C@_01PJCK@?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_02HAKO@ON?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03CMJG@OFF?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EF@FKMI@MiGetSetViewTaskAppFlags?5setting@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_02CCEO@On?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03KLCE@Off?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@KILE@Trace?5dataspace?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DF@OHAL@?$CImi?$CJ?5List?5OE?5Memory?5?$CD?$CD?$CD?$CD?$CD?$CD?5BEGIN@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03NMFM@?$DP?$DP?$DP?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DO@PPCE@?5?5Memory?5?$FL?$CFx?$FN?5for?5Task?50x?$CF08x?5?5?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08DCJK@Shutdown?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06LOAA@Active?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DK@CLED@?5?5?5?$FL?$CFlx?$FN?5size?3?5?$CFld?$DL?5fs?5ceiling?3?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DB@JEPJ@?$CImi?$CJ?5List?5OE?5Memory?5?$CD?$CD?$CD?$CD?$CD?$CD?5END?5?$CD@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_MiGetParentEntityNameForView@12
EXTRN	_fnOperationCall:NEAR
EXTRN	_fnOperationReturn:NEAR
EXTRN	_fnValidViewEntity@16:NEAR
EXTRN	_strcpy:NEAR
EXTRN	_g_pfnGetPtr:DWORD
EXTRN	_fnIssueCoreError:NEAR
_TEXT	SEGMENT
_pchReturnString$ = 8
_lpView$ = 12
_cpcEntityName$ = 16
_lpCurrentTask$ = -20
_lpViewCsr$ = -4
_lpViewEntityCsr$ = -16
_lpViewEntity$ = -12
_nRC$ = -8
_lpParent$7534 = -24
_lpParentViewEntity$7535 = -28
_lpParent$7540 = -32
_lpViewSubobject$7544 = -36
_lpRecursViewEntity$7545 = -44
_lpParent$7546 = -40
_MiGetParentEntityNameForView@12 PROC NEAR

; 76   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH

; 77   :    LPTASK           lpCurrentTask;
; 78   :    LPVIEWCSR        lpViewCsr;
; 79   :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 80   :    LPVIEWENTITY     lpViewEntity;
; 81   :    zSHORT           nRC;
; 82   : 
; 83   :    // First initialize return string to null.
; 84   :    pchReturnString[ 0 ] = 0;

	mov	eax, DWORD PTR _pchReturnString$[ebp]
	mov	BYTE PTR [eax], 0

; 85   : 
; 86   :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 87   :    if ( (lpCurrentTask = fnOperationCall( iMiGetParentEntityNameForView,
; 88   :                                           lpView, zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	450					; 000001c2H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7528

; 90   :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7522
$L7528:

; 92   : 
; 93   :    // Set lpViewCsr
; 94   :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 95   : 
; 96   :    // Start off assuming we'll get a hit
; 97   :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 98   : 
; 99   :    // Validate that the entity exists
; 100  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 101  :                                            lpView, cpcEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7530

; 103  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7522
$L7530:

; 105  : 
; 106  :    // If view entity csr at level 1 (root), parent is null.
; 107  : 
; 108  :    if ( lpViewEntityCsr->nLevel == 1 )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	cmp	edx, 1
	jne	SHORT $L7531

; 109  :       ;  // done...
; 110  :    else

	jmp	$L7552
$L7531:

; 111  : 
; 112  :    // If view entity csr has a parent pass back its name.
; 113  :    if ( lpViewEntityCsr->hParent )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+10], 0
	je	SHORT $L7533

; 115  :       LPVIEWENTITYCSR lpParent;
; 116  :       LPVIEWENTITY    lpParentViewEntity;
; 117  : 
; 118  :       lpParent           = zGETPTR( lpViewEntityCsr->hParent );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$7534[ebp], eax

; 119  :       lpParentViewEntity = zGETPTR( lpParent->hViewEntity );

	mov	eax, DWORD PTR _lpParent$7534[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentViewEntity$7535[ebp], eax

; 120  : 
; 121  :       zstrcpy( pchReturnString, lpParentViewEntity->szName );

	mov	edx, DWORD PTR _lpParentViewEntity$7535[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _pchReturnString$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 123  :    else

	jmp	$L7552
$L7533:

; 124  : 
; 125  :    // if view entity csr level matches view entity level,
; 126  :    // return the view entity parent name
; 127  :    if ( lpViewEntityCsr->nLevel == lpViewEntity->nLevel )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	cmp	edx, ecx
	jne	SHORT $L7539

; 129  :       LPVIEWENTITY lpParent;
; 130  : 
; 131  :       lpParent = zGETPTR( lpViewEntity->hParent );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$7540[ebp], eax

; 132  :       zstrcpy( pchReturnString, lpParent->szName );

	mov	ecx, DWORD PTR _lpParent$7540[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _pchReturnString$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 134  :    else

	jmp	$L7552
$L7539:

; 135  : 
; 136  :    // Look for the recursive child in the subobject view
; 137  :    if ( lpViewCsr->hFirstViewSubobject )

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	SHORT $L7543

; 139  :       LPVIEWSUBOBJECT   lpViewSubobject;
; 140  :       LPVIEWENTITY      lpRecursViewEntity;
; 141  :       LPVIEWENTITY      lpParent;
; 142  : 
; 143  :       lpViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$7544[ebp], eax

; 144  :       if ( lpViewSubobject->hRecursViewEntity )

	mov	eax, DWORD PTR _lpViewSubobject$7544[ebp]
	cmp	DWORD PTR [eax+36], 0
	je	SHORT $L7548

; 146  :          lpRecursViewEntity = zGETPTR( lpViewSubobject->hRecursViewEntity );

	mov	ecx, DWORD PTR _lpViewSubobject$7544[ebp]
	mov	edx, DWORD PTR [ecx+36]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursViewEntity$7545[ebp], eax

; 147  :          lpParent           = zGETPTR( lpRecursViewEntity->hParent );

	mov	eax, DWORD PTR _lpRecursViewEntity$7545[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$7546[ebp], eax

; 148  :          zstrcpy( pchReturnString, lpParent->szName );

	mov	edx, DWORD PTR _lpParent$7546[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _pchReturnString$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 150  :       else

	jmp	SHORT $L7551
$L7548:

; 152  :          // "KZOEE300 - Problems finding a parent "
; 153  :          fnIssueCoreError( lpCurrentTask, lpView, 16, 300, 0, cpcEntityName, 0 );

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	push	0
	push	300					; 0000012cH
	push	16					; 00000010H
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 154  :          nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L7551:

; 157  :    else

	jmp	SHORT $L7552
$L7543:

; 159  :       // "KZOEE300 - Problems finding a parent "
; 160  :       fnIssueCoreError( lpCurrentTask, lpView, 16, 300, 0, cpcEntityName, 0 );

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	push	0
	push	300					; 0000012cH
	push	16					; 00000010H
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 161  :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L7552:

; 163  : 
; 164  :    fnOperationReturn( iMiGetParentEntityNameForView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	450					; 000001c2H
	call	_fnOperationReturn
	add	esp, 8

; 165  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7522:

; 166  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_MiGetParentEntityNameForView@12 ENDP
_TEXT	ENDS
PUBLIC	_MiGetInstanceID_ForView@4
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -12
_lpViewCsr$ = -4
_lRC$ = -8
_MiGetInstanceID_ForView@4 PROC NEAR

; 184  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 185  :    LPTASK      lpCurrentTask;
; 186  :    LPVIEWCSR   lpViewCsr;
; 187  :    zLONG       lRC;
; 188  : 
; 189  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 190  :    if ( (lpCurrentTask = fnOperationCall( iMiGetInstanceID_ForView, lpView,
; 191  :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	451					; 000001c3H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7559

; 193  :       return( zCALL_ERROR );

	mov	eax, -16				; fffffff0H
	jmp	SHORT $L7555
$L7559:

; 195  : 
; 196  :    lRC = zCALL_ERROR;

	mov	DWORD PTR _lRC$[ebp], -16		; fffffff0H

; 197  :    if ( lpView->hViewCsr )

	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [ecx+10], 0
	je	SHORT $L7560

; 199  :       lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 200  :       lRC = (zLONG) lpViewCsr->hViewOI;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	mov	DWORD PTR _lRC$[ebp], edx
$L7560:

; 202  : 
; 203  :    fnOperationReturn( iMiGetInstanceID_ForView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	451					; 000001c3H
	call	_fnOperationReturn
	add	esp, 8

; 204  :    return( lRC );

	mov	eax, DWORD PTR _lRC$[ebp]
$L7555:

; 205  : }

	mov	esp, ebp
	pop	ebp
	ret	4
_MiGetInstanceID_ForView@4 ENDP
_TEXT	ENDS
PUBLIC	_MiGetUpdateForView@4
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -4
_MiGetUpdateForView@4 PROC NEAR

; 223  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 224  :    LPTASK     lpCurrentTask;
; 225  : 
; 226  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 227  :    if ( (lpCurrentTask = fnOperationCall( iMiGetUpdateForView, lpView,
; 228  :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	452					; 000001c4H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7567

; 230  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7569
$L7567:

; 232  : 
; 233  :    fnOperationReturn( iMiGetUpdateForView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	452					; 000001c4H
	call	_fnOperationReturn
	add	esp, 8

; 234  :    if ( lpView->bReadOnly )

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	shr	eax, 6
	and	eax, 1
	test	eax, eax
	je	SHORT $L7568

; 235  :       return( 0 );       // NOT Updateable

	xor	ax, ax
	jmp	SHORT $L7569
$L7568:

; 236  :    else
; 237  :       return( 1 );       // Updateable

	mov	ax, 1
$L7569:

; 238  : }

	mov	esp, ebp
	pop	ebp
	ret	4
_MiGetUpdateForView@4 ENDP
_TEXT	ENDS
PUBLIC	_MiSetInstanceUpdateFlag@8
_TEXT	SEGMENT
_lpView$ = 8
_lFlag$ = 12
_lpCurrentTask$ = -16
_lpViewCsr$ = -4
_lpViewOI$ = -12
_bUpdated$ = -8
_MiSetInstanceUpdateFlag@8 PROC NEAR

; 260  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 261  :    LPTASK     lpCurrentTask;
; 262  :    LPVIEWCSR  lpViewCsr;
; 263  :    LPVIEWOI   lpViewOI;
; 264  :    zBOOL      bUpdated = FALSE;

	mov	BYTE PTR _bUpdated$[ebp], 0

; 265  : 
; 266  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 267  :    if ( (lpCurrentTask = fnOperationCall( iMiSetInstanceUpdateFlag, lpView,
; 268  :                                           zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	466					; 000001d2H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7579

; 270  :       return( zCALL_ERROR );

	mov	eax, -16				; fffffff0H
	jmp	$L7574
$L7579:

; 272  : 
; 273  :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 274  :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 275  : 
; 276  :    bUpdated = lpViewOI->bUpdated || lpViewOI->bUpdatedFile;

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8010
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8010
	mov	DWORD PTR -20+[ebp], 0
	jmp	SHORT $L8011
$L8010:
	mov	DWORD PTR -20+[ebp], 1
$L8011:
	mov	al, BYTE PTR -20+[ebp]
	mov	BYTE PTR _bUpdated$[ebp], al

; 277  :    lpViewOI->bUpdatedFile = lpViewOI->bUpdated = (lFlag & 0x00000001) ? TRUE : FALSE;

	mov	ecx, DWORD PTR _lFlag$[ebp]
	and	ecx, 1
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	and	ecx, 1
	shl	ecx, 4
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	and	al, -17					; ffffffefH
	or	eax, ecx
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [ecx+36], eax
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	shr	eax, 4
	and	eax, 1
	and	eax, 1
	shl	eax, 5
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	and	edx, -33				; ffffffdfH
	or	edx, eax
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [eax+36], edx

; 278  : 
; 279  :    fnOperationReturn( iMiSetInstanceUpdateFlag, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	466					; 000001d2H
	call	_fnOperationReturn
	add	esp, 8

; 280  :    return( bUpdated );

	mov	eax, DWORD PTR _bUpdated$[ebp]
	and	eax, 255				; 000000ffH
$L7574:

; 281  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_MiSetInstanceUpdateFlag@8 ENDP
_TEXT	ENDS
PUBLIC	_MiGetTypeForViewEntityAttr@12
EXTRN	_strcmp:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcAttribName$ = 16
_lpCurrentTask$ = -16
_lpViewOD$ = -4
_lpViewEntity$ = -8
_lpViewAttrib$ = -12
_MiGetTypeForViewEntityAttr@12 PROC NEAR

; 309  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 310  :    LPTASK        lpCurrentTask;
; 311  :    LPVIEWOD      lpViewOD;
; 312  :    LPVIEWENTITY  lpViewEntity;
; 313  :    LPVIEWATTRIB  lpViewAttrib = 0;

	mov	DWORD PTR _lpViewAttrib$[ebp], 0

; 314  : 
; 315  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 316  :    if ( (lpCurrentTask = fnOperationCall( iMiGetTypeForViewEntityAttr,
; 317  :                                           lpView, zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	467					; 000001d3H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7593

; 319  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7620
$L7593:

; 321  : 
; 322  :    // Get the view object definition for the view.
; 323  :    lpViewOD = zGETPTR( lpView->hViewOD );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 324  : 
; 325  :    // Now make sure that the entity is valid for the view.
; 326  :    for ( lpViewEntity = zGETPTR( lpViewOD->hFirstOD_Entity );
; 327  :          lpViewEntity;
; 328  :          lpViewEntity = zGETPTR( lpViewEntity->hNextHier ) )

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	mov	ecx, DWORD PTR [eax+224]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	jmp	SHORT $L7597
$L7598:
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax
$L7597:
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	$L7599

; 330  :       if ( zstrcmp( lpViewEntity->szName, cpcEntityName ) == 0 )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, BYTE PTR [ecx+14]
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L8013
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -20+[ebp], eax
	jmp	SHORT $L8014
$L8013:
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, BYTE PTR [ecx+14]
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -20+[ebp], eax
$L8014:
	cmp	DWORD PTR -20+[ebp], 0
	jne	SHORT $L7606

; 332  :          // Get first attribute for entity.
; 333  :          lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+179]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
$L7609:

; 334  : 
; 335  :          // Look for the attribute.
; 336  :          while ( lpViewAttrib )

	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	SHORT $L7610

; 338  :             if ( zstrcmp( lpViewAttrib->szName, cpcAttribName ) == 0 )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _cpcAttribName$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L8015
	mov	ecx, DWORD PTR _cpcAttribName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -24+[ebp], eax
	jmp	SHORT $L8016
$L8015:
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	mov	edx, DWORD PTR _cpcAttribName$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -24+[ebp], edx
$L8016:
	cmp	DWORD PTR -24+[ebp], 0
	jne	SHORT $L7617

; 340  :                break;

	jmp	SHORT $L7610
$L7617:

; 342  : 
; 343  :             lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 344  :          }

	jmp	SHORT $L7609
$L7610:

; 345  : 
; 346  :          break;  // we found the entity

	jmp	SHORT $L7599
$L7606:

; 348  :    }

	jmp	$L7598
$L7599:

; 349  : 
; 350  :    fnOperationReturn( iMiGetTypeForViewEntityAttr, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	467					; 000001d3H
	call	_fnOperationReturn
	add	esp, 8

; 351  :    if ( lpViewAttrib )

	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	SHORT $L7619

; 352  :       return( lpViewAttrib->cType );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ax, BYTE PTR [eax+202]
	jmp	SHORT $L7620
$L7619:

; 353  :    else
; 354  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
$L7620:

; 355  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_MiGetTypeForViewEntityAttr@12 ENDP
_TEXT	ENDS
PUBLIC	_MiGetUpdateForViewEntityAttr@16
EXTRN	_fnValidViewAttrib:NEAR
EXTRN	_fnEstablishCursorForView:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcAttributeName$ = 16
_nOption$ = 20
_lpCurrentTask$ = -20
_lpViewEntity$ = -8
_lpViewAttrib$ = -12
_lpViewEntityCsr$ = -16
_lpEntityInstance$ = -4
_MiGetUpdateForViewEntityAttr@16 PROC NEAR

; 379  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 380  :    LPTASK            lpCurrentTask;
; 381  :    LPVIEWENTITY      lpViewEntity;
; 382  :    LPVIEWATTRIB      lpViewAttrib;
; 383  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 384  :    LPENTITYINSTANCE  lpEntityInstance;
; 385  : 
; 386  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 387  :    if ( (lpCurrentTask = fnOperationCall( iMiGetUpdateForViewEntityAttr,
; 388  :                                           lpView, zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	453					; 000001c5H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7635

; 390  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7652
$L7635:

; 392  : 
; 393  :    // Validate that the entity exists.
; 394  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 395  :                                            lpView, cpcEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7636

; 397  :       fnOperationReturn( iMiGetUpdateForViewEntityAttr, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	453					; 000001c5H
	call	_fnOperationReturn
	add	esp, 8

; 398  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7652
$L7636:

; 400  : 
; 401  :    // Validate that the Attrib exists.
; 402  :    lpViewAttrib = 0;

	mov	DWORD PTR _lpViewAttrib$[ebp], 0

; 403  :    if ( cpcAttributeName && cpcAttributeName[ 0 ] &&
; 404  :         (lpViewAttrib = fnValidViewAttrib( lpView, lpViewEntity,
; 405  :                                            cpcAttributeName, 0 )) == 0 )

	cmp	DWORD PTR _cpcAttributeName$[ebp], 0
	je	SHORT $L7637
	mov	edx, DWORD PTR _cpcAttributeName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L7637
	push	0
	mov	ecx, DWORD PTR _cpcAttributeName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	jne	SHORT $L7637

; 407  :       fnOperationReturn( iMiGetUpdateForViewEntityAttr, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	453					; 000001c5H
	call	_fnOperationReturn
	add	esp, 8

; 408  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7652
$L7637:

; 410  : 
; 411  :    if ( nOption & zUPD_INCLUDE )

	movsx	edx, WORD PTR _nOption$[ebp]
	and	edx, 1
	test	edx, edx
	je	SHORT $L7641

; 413  :       fnOperationReturn( iMiGetUpdateForViewEntityAttr, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	453					; 000001c5H
	call	_fnOperationReturn
	add	esp, 8

; 414  :       if ( lpView->bReadOnly || lpViewEntity->bInclude == FALSE )

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	shr	edx, 6
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7640
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7639
$L7640:

; 415  :          return( 0 );

	xor	ax, ax
	jmp	$L7652
$L7639:

; 416  :       else
; 417  :          return( 1 );

	mov	ax, 1
	jmp	$L7652
$L7641:

; 419  : 
; 420  :    if ( lpView->bReadOnly || lpViewEntity->bUpdate == FALSE )

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	shr	eax, 6
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7643
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 2
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7645
$L7643:

; 422  :       fnOperationReturn( iMiGetUpdateForViewEntityAttr, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	453					; 000001c5H
	call	_fnOperationReturn
	add	esp, 8

; 423  :       if ( (nOption & zUPD_NONPERSIST) != 0 && lpViewAttrib && lpViewAttrib->bPersist == FALSE )

	movsx	ecx, WORD PTR _nOption$[ebp]
	and	ecx, 2
	test	ecx, ecx
	je	SHORT $L7644
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	SHORT $L7644
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+193]
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7644

; 424  :          return( 1 );

	mov	ax, 1
	jmp	$L7652
$L7644:

; 425  :       else
; 426  :          return( 0 );

	xor	ax, ax
	jmp	$L7652
$L7645:

; 428  : 
; 429  :    if ( lpViewAttrib == 0 || lpViewAttrib->bKey == FALSE )

	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	SHORT $L7647
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7646
$L7647:

; 431  :       fnOperationReturn( iMiGetUpdateForViewEntityAttr, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	453					; 000001c5H
	call	_fnOperationReturn
	add	esp, 8

; 432  :       return( 1 );

	mov	ax, 1
	jmp	SHORT $L7652
$L7646:

; 434  : 
; 435  :    // If we get here then the attribute is a key.  If the cursor is
; 436  :    // not established, get a cursor position on an entity instance.
; 437  :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 438  :    if ( lpEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 1
	jne	SHORT $L7650

; 439  :       lpEntityInstance = fnEstablishCursorForView( lpViewEntityCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnEstablishCursorForView
	add	esp, 4
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L7650:

; 440  : 
; 441  :    // If there is an entity instance and it has not been created, then
; 442  :    // we will say that the attribute cannot be updated because the
; 443  :    // attribute is a key and keys cannot be changed once they have
; 444  :    // been stored to a database, otherwise, we will return that the
; 445  :    // attribute can be updated.
; 446  :    fnOperationReturn( iMiGetUpdateForViewEntityAttr, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	453					; 000001c5H
	call	_fnOperationReturn
	add	esp, 8

; 447  :    if ( lpEntityInstance && lpEntityInstance->u.nInd.bCreated == FALSE )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7651
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7651

; 448  :       return( 0 );

	xor	ax, ax
	jmp	SHORT $L7652
$L7651:

; 449  :    else
; 450  :       return( 1 );

	mov	ax, 1
$L7652:

; 451  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_MiGetUpdateForViewEntityAttr@16 ENDP
_TEXT	ENDS
PUBLIC	_MiGetTemporalStateOfEntity@8
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -20
_lpViewEntity$ = -12
_lpViewEntityCsr$ = -16
_lpEntityInstance$ = -8
_nRC$ = -4
_lpPrevVsn$7675 = -24
_MiGetTemporalStateOfEntity@8 PROC NEAR

; 475  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 476  :    LPTASK            lpCurrentTask;
; 477  :    LPVIEWENTITY      lpViewEntity;
; 478  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 479  :    LPENTITYINSTANCE  lpEntityInstance;
; 480  :    zSHORT            nRC;
; 481  : 
; 482  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 483  :    if ( (lpCurrentTask = fnOperationCall( iMiGetTemporalStateOfEntity, lpView,
; 484  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	454					; 000001c6H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7663

; 486  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7657
$L7663:

; 488  : 
; 489  :    // Validate that the entity exists
; 490  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 491  :                                            lpView, cpcEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7664

; 493  :       fnOperationReturn( iMiGetTemporalStateOfEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	454					; 000001c6H
	call	_fnOperationReturn
	add	esp, 8

; 494  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7657
$L7664:

; 496  : 
; 497  :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 498  : 
; 499  :    // Establish cursor if necessary.
; 500  :    if ( lpEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 1
	jne	SHORT $L7667

; 501  :       lpEntityInstance = fnEstablishCursorForView( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnEstablishCursorForView
	add	esp, 4
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L7667:

; 502  : 
; 503  :    //
; 504  :    // 1. Check Cursor for null or undefined.
; 505  :    //
; 506  :    if ( lpEntityInstance == 0L )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	SHORT $L7668

; 507  :       nRC = zCURSOR_NULL;

	mov	WORD PTR _nRC$[ebp], -3			; fffffffdH

; 508  :    else

	jmp	$L7684
$L7668:

; 509  :    if ( lpEntityInstance->u.nInd.bHidden )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L7670

; 510  :       nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH

; 511  :    else

	jmp	$L7684
$L7670:

; 513  :    //
; 514  :    // 2. Check the EntityInstance for being marked as temporal.
; 515  :    //
; 516  :       if ( lpEntityInstance->u.nInd.bTemporal )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	je	SHORT $L7672

; 517  :          // Indicate Entity instance is a Temporal Entity.
; 518  :          nRC = zTES_TEMPORAL;

	mov	WORD PTR _nRC$[ebp], 2

; 519  :       else

	jmp	$L7684
$L7672:

; 520  :    //
; 521  :    // 3. Does Instance have a previous version
; 522  :    //
; 523  :       if ( lpEntityInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L7674

; 525  :          LPENTITYINSTANCE lpPrevVsn = zGETPTR( lpEntityInstance->hPrevVsn );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$7675[ebp], eax

; 526  : 
; 527  :          if ( lpPrevVsn->u.nInd.bPrevVsnRoot )

	mov	eax, DWORD PTR _lpPrevVsn$7675[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7677

; 529  :             // Indicate Entity instance is a Temporal Subobject Root.
; 530  :             nRC = zTES_SUBOBJECT_ROOT;

	mov	WORD PTR _nRC$[ebp], 3

; 532  :          else

	jmp	SHORT $L7678
$L7677:

; 534  :             // Indicate Entity instance is a child of a Temporal
; 535  :             // Subobject Root.
; 536  :             nRC = zTES_SUBOBJECT_CHILD;

	mov	WORD PTR _nRC$[ebp], 1
$L7678:

; 539  :       else

	jmp	SHORT $L7684
$L7674:

; 541  :    //
; 542  :    // 4. Is any parent Instance marked as a previous version
; 543  :    //
; 544  :          // Default to entity with no Temporal instances.
; 545  :          nRC = zTES_NONE;

	mov	WORD PTR _nRC$[ebp], 0

; 546  : 
; 547  :          // Go up the parent chain looking for an instance marked as
; 548  :          // a previous version.
; 549  :          for ( lpEntityInstance = zGETPTR( lpEntityInstance->hParent );
; 550  :                lpEntityInstance;
; 551  :                lpEntityInstance = zGETPTR( lpEntityInstance->hParent ) )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
	jmp	SHORT $L7682
$L7683:
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L7682:
	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7684

; 553  :             if ( lpEntityInstance->u.nInd.bPrevVersion || lpEntityInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 8
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7686
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [edx+38], 0
	je	SHORT $L7685
$L7686:

; 555  :                // Indicate entity instance is child of Temporal
; 556  :                // Subobject Root.
; 557  :                nRC = zTES_SUBOBJECT_CHILD;

	mov	WORD PTR _nRC$[ebp], 1

; 558  :                break;

	jmp	SHORT $L7684
$L7685:

; 560  :          }

	jmp	SHORT $L7683
$L7684:

; 563  : 
; 564  :    fnOperationReturn( iMiGetTemporalStateOfEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	454					; 000001c6H
	call	_fnOperationReturn
	add	esp, 8

; 565  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7657:

; 566  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_MiGetTemporalStateOfEntity@8 ENDP
_TEXT	ENDS
PUBLIC	_MiGetDateTimeForOI@8
EXTRN	_memcpy:NEAR
EXTRN	_memset:NEAR
_TEXT	SEGMENT
_pchDateTime$ = 8
_lpView$ = 12
_lpCurrentTask$ = -12
_lpViewCsr$ = -4
_lpViewOI$ = -8
_MiGetDateTimeForOI@8 PROC NEAR

; 585  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 586  :    LPTASK     lpCurrentTask;
; 587  :    LPVIEWCSR  lpViewCsr;
; 588  :    LPVIEWOI   lpViewOI;
; 589  : 
; 590  :    // First set return area to zeros
; 591  :    zmemset( pchDateTime, 0, sizeof( DateTimeRecord ) );

	push	6
	push	0
	mov	eax, DWORD PTR _pchDateTime$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 592  : 
; 593  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 594  :    if ( (lpCurrentTask = fnOperationCall( iMiGetDateTimeForOI, lpView,
; 595  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	455					; 000001c7H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7696

; 597  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7691
$L7696:

; 599  : 
; 600  :    // Set lpViewCsr
; 601  :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 602  :    lpViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 603  : 
; 604  :    // copy the DateTime of when the OI was created, into the return area.
; 605  :    zmemcpy( pchDateTime, (zPCHAR) &(lpViewOI->DateTime),
; 606  :             sizeof( DateTimeRecord ) );

	push	6
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	add	eax, 30					; 0000001eH
	push	eax
	mov	ecx, DWORD PTR _pchDateTime$[ebp]
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 607  : 
; 608  :    fnOperationReturn( iMiGetDateTimeForOI, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	455					; 000001c7H
	call	_fnOperationReturn
	add	esp, 8

; 609  :    return( 0 );

	xor	ax, ax
$L7691:

; 610  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_MiGetDateTimeForOI@8 ENDP
_TEXT	ENDS
PUBLIC	_MiGetERTokenForEntity@8
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -12
_lpViewEntityCsr$ = -8
_lpViewEntity$ = -4
_MiGetERTokenForEntity@8 PROC NEAR

; 629  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 630  :    LPTASK           lpCurrentTask;
; 631  :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 632  :    LPVIEWENTITY     lpViewEntity;
; 633  : 
; 634  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 635  :    if ( (lpCurrentTask = fnOperationCall( iMiGetERTokenForEntity, lpView,
; 636  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	456					; 000001c8H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7709

; 638  :       return( zCALL_ERROR );

	mov	eax, -16				; fffffff0H
	jmp	SHORT $L7705
$L7709:

; 640  : 
; 641  :    // Validate that the entity exists
; 642  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 643  :                                            lpView,
; 644  :                                            cpcEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7710

; 646  :       fnOperationReturn( iMiGetERTokenForEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	456					; 000001c8H
	call	_fnOperationReturn
	add	esp, 8

; 647  :       return( zCALL_ERROR );

	mov	eax, -16				; fffffff0H
	jmp	SHORT $L7705
$L7710:

; 649  : 
; 650  :    fnOperationReturn( iMiGetERTokenForEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	456					; 000001c8H
	call	_fnOperationReturn
	add	esp, 8

; 651  :    return( lpViewEntity->lEREntTok );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [eax+195]
$L7705:

; 652  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_MiGetERTokenForEntity@8 ENDP
_TEXT	ENDS
PUBLIC	??_C@_01PJCK@?4?$AA@				; `string'
PUBLIC	_MiGetKeyFromInstance@16
EXTRN	_fnGetStringFromAttribute:NEAR
EXTRN	_strcat:NEAR
;	COMDAT ??_C@_01PJCK@?4?$AA@
; File C:\10C\A\oe\KZOEMIAA.C
_DATA	SEGMENT
??_C@_01PJCK@?4?$AA@ DB '.', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_pchReturnString$ = 8
_nLth$ = 12
_lpView$ = 16
_cpcEntityName$ = 20
_lpCurrentTask$ = -24
_lpViewEntityCsr$ = -20
_lpViewEntity$ = -8
_lpViewAttrib$ = -12
_pch$ = -4
_nBytesLeft$ = -16
_nRC$7733 = -28
_MiGetKeyFromInstance@16 PROC NEAR

; 675  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 676  :    LPTASK           lpCurrentTask;
; 677  :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 678  :    LPVIEWENTITY     lpViewEntity;
; 679  :    LPVIEWATTRIB     lpViewAttrib;
; 680  :    zPCHAR           pch;
; 681  :    zSHORT           nBytesLeft;
; 682  : 
; 683  :    pchReturnString[ 0 ] = 0;   // init return string

	mov	eax, DWORD PTR _pchReturnString$[ebp]
	mov	BYTE PTR [eax], 0

; 684  : 
; 685  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 686  :    if ( (lpCurrentTask = fnOperationCall( iMiGetKeyFromInstance, lpView,
; 687  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	457					; 000001c9H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7726

; 689  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7719
$L7726:

; 691  : 
; 692  :    // Validate that the entity exists
; 693  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 694  :                                            lpView,
; 695  :                                            cpcEntityName, 0 )) == 0 )

	push	0
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7727

; 697  :       fnOperationReturn( iMiGetKeyFromInstance, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	457					; 000001c9H
	call	_fnOperationReturn
	add	esp, 8

; 698  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7719
$L7727:

; 700  : 
; 701  :    pch = pchReturnString; // set pointer

	mov	eax, DWORD PTR _pchReturnString$[ebp]
	mov	DWORD PTR _pch$[ebp], eax

; 702  :    nBytesLeft = nLth;

	mov	cx, WORD PTR _nLth$[ebp]
	mov	WORD PTR _nBytesLeft$[ebp], cx

; 703  :    for ( lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );
; 704  :          lpViewAttrib;
; 705  :          lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib ) )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+179]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	jmp	SHORT $L7730
$L7731:
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
$L7730:
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	$L7732

; 707  :       zSHORT   nRC;
; 708  : 
; 709  :       if ( lpViewAttrib->bKey == FALSE )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7734

; 710  :          continue;

	jmp	SHORT $L7731
$L7734:

; 711  : 
; 712  :       if ( nBytesLeft < nLth )

	movsx	edx, WORD PTR _nBytesLeft$[ebp]
	movsx	eax, WORD PTR _nLth$[ebp]
	cmp	edx, eax
	jge	SHORT $L7735

; 714  :          zstrcat( pch, "." );

	push	OFFSET FLAT:??_C@_01PJCK@?4?$AA@	; `string'
	mov	ecx, DWORD PTR _pch$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 715  :          pch++;

	mov	edx, DWORD PTR _pch$[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$[ebp], edx

; 716  :          nBytesLeft--;

	mov	ax, WORD PTR _nBytesLeft$[ebp]
	sub	ax, 1
	mov	WORD PTR _nBytesLeft$[ebp], ax
$L7735:

; 718  : 
; 719  :       if ( nBytesLeft < 1 )

	movsx	ecx, WORD PTR _nBytesLeft$[ebp]
	cmp	ecx, 1
	jge	SHORT $L7737

; 721  :          // we ran out of buffer space...
; 722  :          // "KZOEE301 - Return buffer not large enough to
; 723  :          //  contain concatenated keys"
; 724  :          fnIssueCoreError( lpCurrentTask, lpView, 8, 301, nLth,
; 725  :                            lpViewEntity->szName, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	movsx	eax, WORD PTR _nLth$[ebp]
	push	eax
	push	301					; 0000012dH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 726  :          fnOperationReturn( iMiGetKeyFromInstance, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	457					; 000001c9H
	call	_fnOperationReturn
	add	esp, 8

; 727  :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7719
$L7737:

; 729  : 
; 730  :       nRC = fnGetStringFromAttribute( pch, nBytesLeft,
; 731  :                                       lpView, lpViewEntityCsr,
; 732  :                                       lpViewAttrib, 0 );

	push	0
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	movsx	ecx, WORD PTR _nBytesLeft$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pch$[ebp]
	push	edx
	call	_fnGetStringFromAttribute
	add	esp, 24					; 00000018H
	mov	WORD PTR _nRC$7733[ebp], ax

; 733  : 
; 734  :       // -1 return means attribute was null.
; 735  :       // zCALL_ERROR for blobs...
; 736  :       if ( nRC )

	movsx	eax, WORD PTR _nRC$7733[ebp]
	test	eax, eax
	je	SHORT $L7738

; 738  :          fnOperationReturn( iMiGetKeyFromInstance, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	457					; 000001c9H
	call	_fnOperationReturn
	add	esp, 8

; 739  :          return( nRC );

	mov	ax, WORD PTR _nRC$7733[ebp]
	jmp	SHORT $L7719
$L7738:

; 741  : 
; 742  :       while ( *pch && nBytesLeft )

	mov	edx, DWORD PTR _pch$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L7741
	movsx	ecx, WORD PTR _nBytesLeft$[ebp]
	test	ecx, ecx
	je	SHORT $L7741

; 744  :          pch++;

	mov	edx, DWORD PTR _pch$[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$[ebp], edx

; 745  :          nBytesLeft--;

	mov	ax, WORD PTR _nBytesLeft$[ebp]
	sub	ax, 1
	mov	WORD PTR _nBytesLeft$[ebp], ax

; 746  :       }

	jmp	SHORT $L7738
$L7741:

; 747  : 
; 748  :    } // for...

	jmp	$L7731
$L7732:

; 749  : 
; 750  :    fnOperationReturn( iMiGetKeyFromInstance, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	457					; 000001c9H
	call	_fnOperationReturn
	add	esp, 8

; 751  :    return( nLth - nBytesLeft );

	movsx	eax, WORD PTR _nLth$[ebp]
	movsx	edx, WORD PTR _nBytesLeft$[ebp]
	sub	eax, edx
$L7719:

; 752  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_MiGetKeyFromInstance@16 ENDP
_TEXT	ENDS
PUBLIC	_MiGetObjectNameForView@8
_TEXT	SEGMENT
_pchReturnName$ = 8
_lpView$ = 12
_lpCurrentTask$ = -8
_lpViewOD$ = -4
_MiGetObjectNameForView@8 PROC NEAR

; 770  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 771  :    LPTASK     lpCurrentTask;
; 772  :    LPVIEWOD   lpViewOD;
; 773  : 
; 774  :    pchReturnName[ 0 ] = 0;  // init return name

	mov	eax, DWORD PTR _pchReturnName$[ebp]
	mov	BYTE PTR [eax], 0

; 775  : 
; 776  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 777  :    if ( (lpCurrentTask = fnOperationCall( iMiGetObjectNameForView, lpView,
; 778  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	460					; 000001ccH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7749

; 780  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7746
$L7749:

; 782  : 
; 783  :    if ( lpView->hViewOD == 0 )

	mov	edx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [edx+6], 0
	jne	SHORT $L7750

; 785  :       *pchReturnName = 0;

	mov	eax, DWORD PTR _pchReturnName$[ebp]
	mov	BYTE PTR [eax], 0

; 786  :       fnOperationReturn( iMiGetObjectNameForView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	460					; 000001ccH
	call	_fnOperationReturn
	add	esp, 8

; 787  :       return( 0 );

	xor	ax, ax
	jmp	SHORT $L7746
$L7750:

; 789  : 
; 790  :    lpViewOD = zGETPTR( lpView->hViewOD );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 791  :    zstrcpy( pchReturnName, lpViewOD->szName );

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _pchReturnName$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 792  : 
; 793  :    fnOperationReturn( iMiGetObjectNameForView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	460					; 000001ccH
	call	_fnOperationReturn
	add	esp, 8

; 794  :    return( 0 );

	xor	ax, ax
$L7746:

; 795  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_MiGetObjectNameForView@8 ENDP
_TEXT	ENDS
PUBLIC	_MiGetViewEntityForView@8
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -12
_lpViewEntityCsr$ = -8
_lpViewEntity$ = -4
_MiGetViewEntityForView@8 PROC NEAR

; 814  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 815  :    LPTASK           lpCurrentTask;
; 816  :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 817  :    LPVIEWENTITY     lpViewEntity;
; 818  : 
; 819  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 820  :    if ( (lpCurrentTask = fnOperationCall( iMiGetViewEntityForView, lpView,
; 821  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	458					; 000001caH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7760

; 823  :       return( 0 );

	xor	eax, eax
	jmp	SHORT $L7756
$L7760:

; 825  : 
; 826  :    if ( cpcEntityName == 0 )

	cmp	DWORD PTR _cpcEntityName$[ebp], 0
	jne	SHORT $L7761

; 828  :       fnOperationReturn( iMiGetViewEntityForView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	458					; 000001caH
	call	_fnOperationReturn
	add	esp, 8

; 829  :       return( (LPVIEWENTITY) zGETPTR( lpView->hViewOD ) );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	jmp	SHORT $L7756
$L7761:

; 831  : 
; 832  :    // Validate that the entity exists.
; 833  :    lpViewEntity = fnValidViewEntity( &lpViewEntityCsr, lpView, cpcEntityName, 0 );

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 834  : 
; 835  :    fnOperationReturn( iMiGetViewEntityForView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	458					; 000001caH
	call	_fnOperationReturn
	add	esp, 8

; 836  :    return( lpViewEntity );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
$L7756:

; 837  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_MiGetViewEntityForView@8 ENDP
_TEXT	ENDS
PUBLIC	_MiGetOI_ReleaseForView@8
_TEXT	SEGMENT
_lpView$ = 8
_pchReturnRelease$ = 12
_lpCurrentTask$ = -12
_lpViewCsr$ = -4
_lpViewOI$ = -8
_MiGetOI_ReleaseForView@8 PROC NEAR

; 859  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 860  :    LPTASK     lpCurrentTask;
; 861  :    LPVIEWCSR  lpViewCsr;
; 862  :    LPVIEWOI   lpViewOI;
; 863  : 
; 864  :    *pchReturnRelease = 0;   // ensure no junk in return value

	mov	eax, DWORD PTR _pchReturnRelease$[ebp]
	mov	BYTE PTR [eax], 0

; 865  : 
; 866  :    // If task not active or disabled, or view csr invalid, return 0.
; 867  :    if ( (lpCurrentTask = fnOperationCall( iMiGetOI_ReleaseForView, lpView,
; 868  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	461					; 000001cdH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7772

; 870  :       return( 0 );

	xor	ax, ax
	jmp	SHORT $L7768
$L7772:

; 872  : 
; 873  :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 874  :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 875  :    zstrcpy( pchReturnRelease, lpViewOI->szRelease );

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	add	eax, 56					; 00000038H
	push	eax
	mov	ecx, DWORD PTR _pchReturnRelease$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 876  :    fnOperationReturn( iMiGetOI_ReleaseForView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	461					; 000001cdH
	call	_fnOperationReturn
	add	esp, 8

; 877  :    return( 1 );

	mov	ax, 1
$L7768:

; 878  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_MiGetOI_ReleaseForView@8 ENDP
_TEXT	ENDS
PUBLIC	_MiSetOI_ReleaseForView@8
EXTRN	__imp__strncpy:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcNewRelease$ = 12
_lpCurrentTask$ = -12
_lpViewCsr$ = -4
_lpViewOI$ = -8
_MiSetOI_ReleaseForView@8 PROC NEAR

; 902  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 903  :    LPTASK     lpCurrentTask;
; 904  :    LPVIEWCSR  lpViewCsr;
; 905  :    LPVIEWOI   lpViewOI;
; 906  : 
; 907  :    // If task not active or disabled, or view csr invalid, return 0.
; 908  :    if ( (lpCurrentTask = fnOperationCall( iMiSetOI_ReleaseForView, lpView,
; 909  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	462					; 000001ceH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7783

; 911  :       return( 0 );

	xor	ax, ax
	jmp	SHORT $L7779
$L7783:

; 913  : 
; 914  :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 915  :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 916  :    zstrncpy( lpViewOI->szRelease, cpcNewRelease, 8 );

	push	8
	mov	edx, DWORD PTR _cpcNewRelease$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	add	eax, 56					; 00000038H
	push	eax
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 917  :    lpViewOI->szRelease[ 8 ] = 0;

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	BYTE PTR [ecx+64], 0

; 918  : 
; 919  :    fnOperationReturn( iMiSetOI_ReleaseForView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	462					; 000001ceH
	call	_fnOperationReturn
	add	esp, 8

; 920  :    return( 1 );

	mov	ax, 1
$L7779:

; 921  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_MiSetOI_ReleaseForView@8 ENDP
_TEXT	ENDS
PUBLIC	_MiCompareOI_ToRelease@8
EXTRN	__imp__strchr:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_pchCompareRelease$ = 12
_lpCurrentTask$ = -32
_lpViewCsr$ = -4
_lpViewOI$ = -28
_nReleaseOI$ = -12
_nReleaseCmpr$ = -24
_pchOI$ = -20
_pchCmpr$ = -8
_pchTemp$ = -16
_MiCompareOI_ToRelease@8 PROC NEAR

; 951  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 952  :    LPTASK            lpCurrentTask;
; 953  :    LPVIEWCSR         lpViewCsr;
; 954  :    LPVIEWOI          lpViewOI;
; 955  :    zSHORT            nReleaseOI;
; 956  :    zSHORT            nReleaseCmpr;
; 957  :    zPCHAR            pchOI;
; 958  :    zPCHAR            pchCmpr;
; 959  :    zPCHAR            pchTemp;
; 960  : 
; 961  :    // If task not active or disabled, or view csr invalid, return 0.
; 962  :    if ( (lpCurrentTask = fnOperationCall( iMiCompareOI_ReleaseToRelease,
; 963  :                                           lpView, zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	463					; 000001cfH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7799

; 965  :       return( 0 );

	xor	ax, ax
	jmp	$L7790
$L7799:

; 967  : 
; 968  :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 969  :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 970  : 
; 971  :    pchOI   = lpViewOI->szRelease;

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	add	edx, 56					; 00000038H
	mov	DWORD PTR _pchOI$[ebp], edx

; 972  :    pchCmpr = pchCompareRelease;

	mov	eax, DWORD PTR _pchCompareRelease$[ebp]
	mov	DWORD PTR _pchCmpr$[ebp], eax

; 973  : 
; 974  :    // if the number of digits preceding the '.' is larger in one release
; 975  :    // value than the other, that release value is larger
; 976  :    pchTemp = zstrchr( pchOI, '.' );

	push	46					; 0000002eH
	mov	ecx, DWORD PTR _pchOI$[ebp]
	push	ecx
	call	DWORD PTR __imp__strchr
	add	esp, 8
	mov	DWORD PTR _pchTemp$[ebp], eax

; 977  :    if ( pchTemp )

	cmp	DWORD PTR _pchTemp$[ebp], 0
	je	SHORT $L7802

; 978  :       nReleaseOI = pchTemp - pchOI;

	mov	edx, DWORD PTR _pchTemp$[ebp]
	sub	edx, DWORD PTR _pchOI$[ebp]
	mov	WORD PTR _nReleaseOI$[ebp], dx

; 979  :    else

	jmp	SHORT $L7803
$L7802:

; 980  :       nReleaseOI = 0;

	mov	WORD PTR _nReleaseOI$[ebp], 0
$L7803:

; 981  : 
; 982  :    pchTemp = zstrchr( pchCmpr, '.' );

	push	46					; 0000002eH
	mov	eax, DWORD PTR _pchCmpr$[ebp]
	push	eax
	call	DWORD PTR __imp__strchr
	add	esp, 8
	mov	DWORD PTR _pchTemp$[ebp], eax

; 983  :    if ( pchTemp )

	cmp	DWORD PTR _pchTemp$[ebp], 0
	je	SHORT $L7804

; 984  :       nReleaseCmpr = pchTemp - pchCmpr;

	mov	ecx, DWORD PTR _pchTemp$[ebp]
	sub	ecx, DWORD PTR _pchCmpr$[ebp]
	mov	WORD PTR _nReleaseCmpr$[ebp], cx

; 985  :    else

	jmp	SHORT $L7805
$L7804:

; 986  :       nReleaseCmpr = 0;

	mov	WORD PTR _nReleaseCmpr$[ebp], 0
$L7805:

; 987  : 
; 988  :    if ( nReleaseOI == nReleaseCmpr )

	movsx	edx, WORD PTR _nReleaseOI$[ebp]
	movsx	eax, WORD PTR _nReleaseCmpr$[ebp]
	cmp	edx, eax
	jne	$L7806

; 990  :       if ( pchOI && pchCmpr )

	cmp	DWORD PTR _pchOI$[ebp], 0
	je	SHORT $L7807
	cmp	DWORD PTR _pchCmpr$[ebp], 0
	je	SHORT $L7807

; 992  :          nReleaseCmpr = zstrcmp( pchOI, pchCmpr );

	mov	ecx, DWORD PTR _pchOI$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _pchCmpr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L8027
	mov	edx, DWORD PTR _pchCmpr$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchOI$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -36+[ebp], eax
	jmp	SHORT $L8028
$L8027:
	mov	ecx, DWORD PTR _pchOI$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _pchCmpr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -36+[ebp], eax
$L8028:
	mov	cx, WORD PTR -36+[ebp]
	mov	WORD PTR _nReleaseCmpr$[ebp], cx

; 993  :          if ( nReleaseCmpr < 0 )

	movsx	edx, WORD PTR _nReleaseCmpr$[ebp]
	test	edx, edx
	jge	SHORT $L7814

; 994  :             nReleaseCmpr = -1;

	mov	WORD PTR _nReleaseCmpr$[ebp], -1

; 995  :          else

	jmp	SHORT $L7816
$L7814:

; 996  :          if ( nReleaseCmpr > 0 )

	movsx	eax, WORD PTR _nReleaseCmpr$[ebp]
	test	eax, eax
	jle	SHORT $L7816

; 997  :             nReleaseCmpr = 1;

	mov	WORD PTR _nReleaseCmpr$[ebp], 1
$L7816:

; 999  :       else

	jmp	SHORT $L7821
$L7807:

; 1000 :       if ( pchOI )

	cmp	DWORD PTR _pchOI$[ebp], 0
	je	SHORT $L7818

; 1001 :          nReleaseCmpr = 1;

	mov	WORD PTR _nReleaseCmpr$[ebp], 1

; 1002 :       else

	jmp	SHORT $L7821
$L7818:

; 1003 :       if ( pchCmpr )

	cmp	DWORD PTR _pchCmpr$[ebp], 0
	je	SHORT $L7820

; 1004 :          nReleaseCmpr = -1;

	mov	WORD PTR _nReleaseCmpr$[ebp], -1

; 1005 :       else

	jmp	SHORT $L7821
$L7820:

; 1006 :          nReleaseCmpr = 0;

	mov	WORD PTR _nReleaseCmpr$[ebp], 0
$L7821:

; 1008 :    else

	jmp	SHORT $L7824
$L7806:

; 1009 :    if ( nReleaseOI > nReleaseCmpr )

	movsx	ecx, WORD PTR _nReleaseOI$[ebp]
	movsx	edx, WORD PTR _nReleaseCmpr$[ebp]
	cmp	ecx, edx
	jle	SHORT $L7823

; 1010 :       nReleaseCmpr = 1;

	mov	WORD PTR _nReleaseCmpr$[ebp], 1

; 1011 :    else

	jmp	SHORT $L7824
$L7823:

; 1012 :       nReleaseCmpr = -1;

	mov	WORD PTR _nReleaseCmpr$[ebp], -1
$L7824:

; 1013 : 
; 1014 :    fnOperationReturn( iMiCompareOI_ReleaseToRelease, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	463					; 000001cfH
	call	_fnOperationReturn
	add	esp, 8

; 1015 :    return( nReleaseCmpr );

	mov	ax, WORD PTR _nReleaseCmpr$[ebp]
$L7790:

; 1016 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_MiCompareOI_ToRelease@8 ENDP
_TEXT	ENDS
PUBLIC	_MiGetCardinalityForEntity@16
_TEXT	SEGMENT
_puCardMin$ = 8
_puCardMax$ = 12
_lpView$ = 16
_cpcEntityName$ = 20
_lpCurrentTask$ = -16
_lpViewEntityCsr$ = -12
_lpViewEntity$ = -8
_nRC$ = -4
_MiGetCardinalityForEntity@16 PROC NEAR

; 1040 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 1041 :    LPTASK            lpCurrentTask;
; 1042 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1043 :    LPVIEWENTITY      lpViewEntity;
; 1044 :    zSHORT            nRC;
; 1045 : 
; 1046 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 1047 :    if ( (lpCurrentTask = fnOperationCall( iMiGetCardinalityForEntity, lpView,
; 1048 :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	459					; 000001cbH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7838

; 1050 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7833
$L7838:

; 1052 : 
; 1053 :    // Validate that the entity exists
; 1054 :    lpViewEntity = fnValidViewEntity( &lpViewEntityCsr, lpView, cpcEntityName, 0 );

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1055 :    if ( lpViewEntity )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	SHORT $L7839

; 1057 :       *puCardMin = lpViewEntity->uCardMin;

	mov	ecx, DWORD PTR _puCardMin$[ebp]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	ax, WORD PTR [edx+219]
	mov	WORD PTR [ecx], ax

; 1058 :       *puCardMax = lpViewEntity->uCardMax;

	mov	ecx, DWORD PTR _puCardMax$[ebp]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	ax, WORD PTR [edx+221]
	mov	WORD PTR [ecx], ax

; 1059 :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1061 :    else

	jmp	SHORT $L7840
$L7839:

; 1062 :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L7840:

; 1063 : 
; 1064 :    fnOperationReturn( iMiGetCardinalityForEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	459					; 000001cbH
	call	_fnOperationReturn
	add	esp, 8

; 1065 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7833:

; 1066 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_MiGetCardinalityForEntity@16 ENDP
_TEXT	ENDS
PUBLIC	_MiHasPersistentChanges@4
EXTRN	_fnEntityInstanceIsDead@4:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -20
_lpViewCsr$ = -4
_lpViewOI$ = -16
_lpEntityInstance$ = -12
_nRC$ = -8
_lpViewEntity$7857 = -24
_MiHasPersistentChanges@4 PROC NEAR

; 1084 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 1085 :    LPTASK            lpCurrentTask;
; 1086 :    LPVIEWCSR         lpViewCsr;
; 1087 :    LPVIEWOI          lpViewOI;
; 1088 :    LPENTITYINSTANCE  lpEntityInstance;
; 1089 :    zSHORT            nRC = FALSE;

	mov	WORD PTR _nRC$[ebp], 0

; 1090 : 
; 1091 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 1092 :    if ( (lpCurrentTask = fnOperationCall( iMiHasPersistentChanges, lpView,
; 1093 :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	465					; 000001d1H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7849

; 1095 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7843
$L7849:

; 1097 : 
; 1098 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1099 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1100 : 
; 1101 :    for ( lpEntityInstance = zGETPTR( lpViewOI->hRootEntityInstance );
; 1102 :          lpEntityInstance;
; 1103 :          lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier ) )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
	jmp	SHORT $L7854
$L7855:
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L7854:
	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	$L7856

; 1105 :       LPVIEWENTITY lpViewEntity;
; 1106 : 
; 1107 :       // First check and make sure there are changes to the EI.
; 1108 :       if ( lpEntityInstance->u.nInd.bCreated == FALSE  &&
; 1109 :            lpEntityInstance->u.nInd.bDeleted == FALSE  &&
; 1110 :            lpEntityInstance->u.nInd.bIncluded == FALSE &&
; 1111 :            lpEntityInstance->u.nInd.bExcluded == FALSE &&
; 1112 :            lpEntityInstance->u.nInd.bUpdated == FALSE  &&
; 1113 :            lpEntityInstance->u.nInd.bDeleted == FALSE )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7858
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 3
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7858
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7858
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 4
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7858
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 2
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7858
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 3
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7858

; 1115 :          continue;

	jmp	SHORT $L7855
$L7858:

; 1117 : 
; 1118 :       if ( fnEntityInstanceIsDead( lpEntityInstance ) )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	call	_fnEntityInstanceIsDead@4
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L7859

; 1119 :          continue;

	jmp	$L7855
$L7859:

; 1120 : 
; 1121 :       lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$7857[ebp], eax

; 1122 :       if ( lpViewEntity->bDerived ||
; 1123 :            lpViewEntity->bDerivedPath ||
; 1124 :            lpViewEntity->bHasDB_Oper ) // added Phil/Doug 2005.10.17

	mov	ecx, DWORD PTR _lpViewEntity$7857[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 13					; 0000000dH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7862
	mov	eax, DWORD PTR _lpViewEntity$7857[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 14					; 0000000eH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7862
	mov	edx, DWORD PTR _lpViewEntity$7857[ebp]
	mov	eax, DWORD PTR [edx+239]
	and	eax, 1
	test	eax, eax
	je	SHORT $L7861
$L7862:

; 1126 :          continue;

	jmp	$L7855
$L7861:

; 1128 : 
; 1129 :       nRC = TRUE;

	mov	WORD PTR _nRC$[ebp], 1
$L7856:

; 1132 : 
; 1133 :    fnOperationReturn( iMiHasPersistentChanges, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	465					; 000001d1H
	call	_fnOperationReturn
	add	esp, 8

; 1134 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7843:

; 1135 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_MiHasPersistentChanges@4 ENDP
_TEXT	ENDS
PUBLIC	_MiGetActivateFlags@4
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -12
_lpViewCsr$ = -4
_lpViewOI$ = -8
_MiGetActivateFlags@4 PROC NEAR

; 1151 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 1152 :    LPTASK            lpCurrentTask;
; 1153 :    LPVIEWCSR         lpViewCsr;
; 1154 :    LPVIEWOI          lpViewOI;
; 1155 : 
; 1156 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 1157 :    if ( (lpCurrentTask = fnOperationCall( iMiGetActivateFlags, lpView,
; 1158 :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	464					; 000001d0H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7869

; 1160 :       return( zCALL_ERROR );

	mov	eax, -16				; fffffff0H
	jmp	SHORT $L7865
$L7869:

; 1162 : 
; 1163 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1164 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1165 : 
; 1166 :    fnOperationReturn( iMiGetActivateFlags, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	464					; 000001d0H
	call	_fnOperationReturn
	add	esp, 8

; 1167 :    return( lpViewOI->lActivateControl );

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [eax+48]
$L7865:

; 1168 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_MiGetActivateFlags@4 ENDP
_TEXT	ENDS
PUBLIC	_MiValidView@4
EXTRN	_SysValidAddress@12:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_MiValidView@4 PROC NEAR

; 1172 : {

	push	ebp
	mov	ebp, esp

; 1173 :    if ( lpView == 0 )

	cmp	DWORD PTR _lpView$[ebp], 0
	jne	SHORT $L7875

; 1174 :       return( FALSE );

	xor	ax, ax
	jmp	SHORT $L7874
$L7875:

; 1175 : 
; 1176 :    if ( SysValidAddress( (zPVOID) lpView,
; 1177 :                          (zLONG) sizeof( ViewRecord ), 1 ) )

	push	1
	push	38					; 00000026H
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysValidAddress@12
	test	eax, eax
	je	SHORT $L7880

; 1179 :       if ( lpView->nTableID == iView )

	mov	ecx, DWORD PTR _lpView$[ebp]
	movsx	edx, WORD PTR [ecx]
	cmp	edx, 10021				; 00002725H
	jne	SHORT $L7880

; 1180 :          return( TRUE );

	mov	ax, 1
	jmp	SHORT $L7874
$L7880:

; 1182 : 
; 1183 :    return( FALSE );

	xor	ax, ax
$L7874:

; 1184 : }

	pop	ebp
	ret	4
_MiValidView@4 ENDP
_TEXT	ENDS
PUBLIC	??_C@_02HAKO@ON?$AA@				; `string'
PUBLIC	??_C@_03CMJG@OFF?$AA@				; `string'
PUBLIC	??_C@_0EF@FKMI@MiGetSetViewTaskAppFlags?5setting@ ; `string'
PUBLIC	_MiGetSetViewTaskAppFlags@16
EXTRN	_TraceLine:NEAR
;	COMDAT ??_C@_02HAKO@ON?$AA@
; File C:\10C\A\oe\KZOEMIAA.C
_DATA	SEGMENT
??_C@_02HAKO@ON?$AA@ DB 'ON', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_03CMJG@OFF?$AA@
_DATA	SEGMENT
??_C@_03CMJG@OFF?$AA@ DB 'OFF', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EF@FKMI@MiGetSetViewTaskAppFlags?5setting@
_DATA	SEGMENT
??_C@_0EF@FKMI@MiGetSetViewTaskAppFlags?5setting@ DB 'MiGetSetViewTaskApp'
	DB	'Flags setting KeepAlive for Application: %s to %s', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lOption$ = 12
_pchTaskInfo$ = 16
_lFlag$ = 20
_lpTask$ = -8
_lpApp$ = -12
_lRC$ = -4
_bSetTo$7899 = -16
_MiGetSetViewTaskAppFlags@16 PROC NEAR

; 1210 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 1211 :    LPTASK     lpTask;
; 1212 :    LPAPP      lpApp = 0;

	mov	DWORD PTR _lpApp$[ebp], 0

; 1213 :    zLONG      lRC = 0;

	mov	DWORD PTR _lRC$[ebp], 0

; 1214 : 
; 1215 :    // If task not active or disabled, return 0.
; 1216 :    if ( (lpTask = fnOperationCall( iMiGetSetViewTaskAppFlags,
; 1217 :                                    lpView, zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	468					; 000001d4H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpTask$[ebp], eax
	cmp	DWORD PTR _lpTask$[ebp], 0
	jne	SHORT $L7893

; 1219 :       return( 0 );

	xor	eax, eax
	jmp	$L7889
$L7893:

; 1221 : 
; 1222 :    if ( lOption & 0x00000001 ) // Application KeepAlive

	mov	ecx, DWORD PTR _lOption$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7896

; 1224 :    // lRC /= lRC;
; 1225 :       lpApp = zGETPTR( lpTask->hApp );

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpApp$[ebp], eax

; 1226 :       if ( lpApp && lpApp->bKeepAlive )

	cmp	DWORD PTR _lpApp$[ebp], 0
	je	SHORT $L7896
	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR [ecx+1905]
	and	edx, 1
	test	edx, edx
	je	SHORT $L7896

; 1227 :          lRC = 1;

	mov	DWORD PTR _lRC$[ebp], 1
$L7896:

; 1229 : 
; 1230 :    if ( lFlag & 0x00000001 ) // set flag

	mov	eax, DWORD PTR _lFlag$[ebp]
	and	eax, 1
	test	eax, eax
	je	$L7897

; 1232 :       if ( lOption & 0x00000001 ) // Application KeepAlive

	mov	ecx, DWORD PTR _lOption$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7900

; 1234 :          zBOOL bSetTo = (lFlag & 0x00000002) ? 1 : 0;

	mov	edx, DWORD PTR _lFlag$[ebp]
	and	edx, 2
	neg	edx
	sbb	edx, edx
	neg	edx
	mov	BYTE PTR _bSetTo$7899[ebp], dl

; 1235 : 
; 1236 :          if ( lpApp )

	cmp	DWORD PTR _lpApp$[ebp], 0
	je	SHORT $L7900

; 1238 :             TraceLine( "MiGetSetViewTaskAppFlags setting KeepAlive for Application: %s to %s",
; 1239 :                        lpApp->szName, bSetTo == TRUE ? "ON" : "OFF" );

	mov	eax, DWORD PTR _bSetTo$7899[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L8034
	mov	DWORD PTR -20+[ebp], OFFSET FLAT:??_C@_02HAKO@ON?$AA@ ; `string'
	jmp	SHORT $L8035
$L8034:
	mov	DWORD PTR -20+[ebp], OFFSET FLAT:??_C@_03CMJG@OFF?$AA@ ; `string'
$L8035:
	mov	ecx, DWORD PTR -20+[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 6
	push	edx
	push	OFFSET FLAT:??_C@_0EF@FKMI@MiGetSetViewTaskAppFlags?5setting@ ; `string'
	call	_TraceLine
	add	esp, 12					; 0000000cH

; 1240 :             lpApp->bKeepAlive = bSetTo;

	mov	eax, DWORD PTR _bSetTo$7899[ebp]
	and	eax, 255				; 000000ffH
	and	eax, 1
	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR [ecx+1905]
	and	edx, -2					; fffffffeH
	or	edx, eax
	mov	eax, DWORD PTR _lpApp$[ebp]
	mov	DWORD PTR [eax+1905], edx
$L7900:

; 1243 : 
; 1244 :       if ( lOption & 0x00000002 ) // Task Title

	mov	ecx, DWORD PTR _lOption$[ebp]
	and	ecx, 2
	test	ecx, ecx
	je	SHORT $L7904

; 1246 :          zstrncpy( lpTask->szTaskTitle, pchTaskInfo, 127 );

	push	127					; 0000007fH
	mov	edx, DWORD PTR _pchTaskInfo$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$[ebp]
	add	eax, 311				; 00000137H
	push	eax
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 1247 :          lpTask->szTaskTitle[ 127 ] = 0;

	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	BYTE PTR [ecx+438], 0
$L7904:

; 1250 :    else

	jmp	SHORT $L7906
$L7897:

; 1251 :    if ( lOption & 0x00000002 ) // Task Title

	mov	edx, DWORD PTR _lOption$[ebp]
	and	edx, 2
	test	edx, edx
	je	SHORT $L7906

; 1253 :       zstrcpy( pchTaskInfo, lpTask->szTaskTitle );

	mov	eax, DWORD PTR _lpTask$[ebp]
	add	eax, 311				; 00000137H
	push	eax
	mov	ecx, DWORD PTR _pchTaskInfo$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8
$L7906:

; 1255 : 
; 1256 :    fnOperationReturn( iMiGetSetViewTaskAppFlags, lpTask );

	mov	edx, DWORD PTR _lpTask$[ebp]
	push	edx
	push	468					; 000001d4H
	call	_fnOperationReturn
	add	esp, 8

; 1257 :    return( lRC );

	mov	eax, DWORD PTR _lRC$[ebp]
$L7889:

; 1258 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_MiGetSetViewTaskAppFlags@16 ENDP
_TEXT	ENDS
PUBLIC	??_C@_02CCEO@On?$AA@				; `string'
PUBLIC	??_C@_03KLCE@Off?$AA@				; `string'
PUBLIC	??_C@_0BB@KILE@Trace?5dataspace?5?$AA@		; `string'
PUBLIC	??_C@_0DF@OHAL@?$CImi?$CJ?5List?5OE?5Memory?5?$CD?$CD?$CD?$CD?$CD?$CD?5BEGIN@ ; `string'
PUBLIC	??_C@_03NMFM@?$DP?$DP?$DP?$AA@			; `string'
PUBLIC	??_C@_0DO@PPCE@?5?5Memory?5?$FL?$CFx?$FN?5for?5Task?50x?$CF08x?5?5?5@ ; `string'
PUBLIC	??_C@_08DCJK@Shutdown?$AA@			; `string'
PUBLIC	??_C@_06LOAA@Active?$AA@			; `string'
PUBLIC	??_C@_0DK@CLED@?5?5?5?$FL?$CFlx?$FN?5size?3?5?$CFld?$DL?5fs?5ceiling?3?5@ ; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_0DB@JEPJ@?$CImi?$CJ?5List?5OE?5Memory?5?$CD?$CD?$CD?$CD?$CD?$CD?5END?5?$CD@ ; `string'
PUBLIC	_MiListOE_Memory@8
EXTRN	_TraceLineI@8:NEAR
EXTRN	__imp__sprintf:NEAR
EXTRN	_fnStartBrowseOfTaskList@8:NEAR
EXTRN	_fnEndBrowseOfTaskList@4:NEAR
EXTRN	_TraceLineS@8:NEAR
EXTRN	_g_bTraceDataspace:BYTE
EXTRN	_AnchorBlock:DWORD
EXTRN	_g_pfnGetHndl:DWORD
EXTRN	_fnSysLockCoreMutex@4:NEAR
EXTRN	_fnSysUnlockCoreMutex@4:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\A\oe\KZOEMIAA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_02CCEO@On?$AA@
_DATA	SEGMENT
??_C@_02CCEO@On?$AA@ DB 'On', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_03KLCE@Off?$AA@
_DATA	SEGMENT
??_C@_03KLCE@Off?$AA@ DB 'Off', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@KILE@Trace?5dataspace?5?$AA@
_DATA	SEGMENT
??_C@_0BB@KILE@Trace?5dataspace?5?$AA@ DB 'Trace dataspace ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DF@OHAL@?$CImi?$CJ?5List?5OE?5Memory?5?$CD?$CD?$CD?$CD?$CD?$CD?5BEGIN@
_DATA	SEGMENT
??_C@_0DF@OHAL@?$CImi?$CJ?5List?5OE?5Memory?5?$CD?$CD?$CD?$CD?$CD?$CD?5BEGIN@ DB '('
	DB	'mi) List OE Memory ###### BEGIN ###### Task: 0x%08x', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_03NMFM@?$DP?$DP?$DP?$AA@
_DATA	SEGMENT
??_C@_03NMFM@?$DP?$DP?$DP?$AA@ DB '???', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DO@PPCE@?5?5Memory?5?$FL?$CFx?$FN?5for?5Task?50x?$CF08x?5?5?5@
_DATA	SEGMENT
??_C@_0DO@PPCE@?5?5Memory?5?$FL?$CFx?$FN?5for?5Task?50x?$CF08x?5?5?5@ DB ' '
	DB	' Memory [%x] for Task 0x%08x   App: %s   Size: %d   Status: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_08DCJK@Shutdown?$AA@
_DATA	SEGMENT
??_C@_08DCJK@Shutdown?$AA@ DB 'Shutdown', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_06LOAA@Active?$AA@
_DATA	SEGMENT
??_C@_06LOAA@Active?$AA@ DB 'Active', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DK@CLED@?5?5?5?$FL?$CFlx?$FN?5size?3?5?$CFld?$DL?5fs?5ceiling?3?5@
_DATA	SEGMENT
??_C@_0DK@CLED@?5?5?5?$FL?$CFlx?$FN?5size?3?5?$CFld?$DL?5fs?5ceiling?3?5@ DB ' '
	DB	'  [%lx] size: %ld; fs ceiling: %ld; total fs: %ld ==> %s', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DB@JEPJ@?$CImi?$CJ?5List?5OE?5Memory?5?$CD?$CD?$CD?$CD?$CD?$CD?5END?5?$CD@
_DATA	SEGMENT
??_C@_0DB@JEPJ@?$CImi?$CJ?5List?5OE?5Memory?5?$CD?$CD?$CD?$CD?$CD?$CD?5END?5?$CD@ DB '('
	DB	'mi) List OE Memory ###### END ###### - total = ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_nLevel$ = 12
_szPageTable$ = -812
_szMsg$ = -520
_ulFreeBytes$ = -820
_ulTotalAlloc$ = -816
_hTask$ = -536
_lpTask$ = -528
_lpApp$ = -544
_hDataHeader$ = -532
_lpDataHeader$ = -552
_lpPrevFreespace$ = -4
_lpNextFreespace$ = -540
_by$ = -524
_k$ = -548
_MiListOE_Memory@8 PROC NEAR

; 1278 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 828				; 0000033cH

; 1279 :    zCHAR        szPageTable[ zSHR_MAX_PAGES + 1 ];
; 1280 :    zCHAR        szMsg[ 256 + zSHR_MAX_PAGES + 1 ];
; 1281 :    zULONG       ulFreeBytes;
; 1282 :    zULONG       ulTotalAlloc = 0;

	mov	DWORD PTR _ulTotalAlloc$[ebp], 0

; 1283 :    LPTASK       hTask = 0;

	mov	DWORD PTR _hTask$[ebp], 0

; 1284 :    LPTASK       lpTask;
; 1285 :    LPAPP        lpApp;
; 1286 :    LPDATAHEADER hDataHeader;
; 1287 :    LPDATAHEADER lpDataHeader;
; 1288 :    LPFREESPACE  lpPrevFreespace;
; 1289 :    LPFREESPACE  lpNextFreespace;
; 1290 :    zBYTE        by;
; 1291 :    zSHORT       k;
; 1292 : 
; 1293 :    if ( nLevel == -1 )

	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	eax, -1
	jne	SHORT $L7925

; 1295 :       g_bTraceDataspace = !g_bTraceDataspace;

	xor	ecx, ecx
	mov	cl, BYTE PTR _g_bTraceDataspace
	neg	ecx
	sbb	ecx, ecx
	inc	ecx
	mov	BYTE PTR _g_bTraceDataspace, cl

; 1296 :       TraceLineS( "Trace dataspace ", g_bTraceDataspace ? "On" : "Off" );

	xor	edx, edx
	mov	dl, BYTE PTR _g_bTraceDataspace
	test	edx, edx
	je	SHORT $L8037
	mov	DWORD PTR -824+[ebp], OFFSET FLAT:??_C@_02CCEO@On?$AA@ ; `string'
	jmp	SHORT $L8038
$L8037:
	mov	DWORD PTR -824+[ebp], OFFSET FLAT:??_C@_03KLCE@Off?$AA@ ; `string'
$L8038:
	mov	eax, DWORD PTR -824+[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BB@KILE@Trace?5dataspace?5?$AA@ ; `string'
	call	_TraceLineS@8
$L7925:

; 1298 : 
; 1299 :    if ( lpView )

	cmp	DWORD PTR _lpView$[ebp], 0
	je	SHORT $L7929

; 1300 :       hTask = lpView->hTask;

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	mov	DWORD PTR _hTask$[ebp], edx
$L7929:

; 1301 : 
; 1302 :    if ( hTask == 0 && AnchorBlock)

	cmp	DWORD PTR _hTask$[ebp], 0
	jne	SHORT $L7930
	cmp	DWORD PTR _AnchorBlock, 0
	je	SHORT $L7930

; 1303 :       hTask = AnchorBlock->hFirstTask;

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+130]
	mov	DWORD PTR _hTask$[ebp], ecx
$L7930:

; 1304 : 
; 1305 :    if ( hTask == 0 || (lpTask = zGETPTR( hTask )) == 0 )

	cmp	DWORD PTR _hTask$[ebp], 0
	je	SHORT $L7933
	mov	edx, DWORD PTR _hTask$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$[ebp], eax
	cmp	DWORD PTR _lpTask$[ebp], 0
	jne	SHORT $L7932
$L7933:

; 1306 :       return( 0 );

	xor	eax, eax
	jmp	$L7911
$L7932:

; 1307 : 
; 1308 :    TraceLine( "(mi) List OE Memory ###### BEGIN ###### Task: 0x%08x", hTask );

	mov	eax, DWORD PTR _hTask$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0DF@OHAL@?$CImi?$CJ?5List?5OE?5Memory?5?$CD?$CD?$CD?$CD?$CD?$CD?5BEGIN@ ; `string'
	call	_TraceLine
	add	esp, 8

; 1309 : 
; 1310 :    zLOCK_MUTEX( zMUTEX_SHAREDMEM );

	push	4
	call	_fnSysLockCoreMutex@4

; 1311 :    fnStartBrowseOfTaskList( lpTask, FALSE );

	push	0
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnStartBrowseOfTaskList@8

; 1312 : 
; 1313 :    // Make sure the task is a valid task
; 1314 :    for ( lpTask = zGETPTR( AnchorBlock->hFirstTask );
; 1315 :          lpTask;
; 1316 :          lpTask = zGETPTR( lpTask->hNextTask ) )

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+130]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$[ebp], eax
	jmp	SHORT $L7937
$L7938:
	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$[ebp], eax
$L7937:
	cmp	DWORD PTR _lpTask$[ebp], 0
	je	$L7939

; 1318 :       hTask = zGETHNDL( lpTask );

	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hTask$[ebp], eax

; 1319 :       by = (zBYTE) ((zULONG) hTask >> 24);

	mov	ecx, DWORD PTR _hTask$[ebp]
	shr	ecx, 24					; 00000018H
	mov	BYTE PTR _by$[ebp], cl

; 1320 :       lpApp = zGETPTR( lpTask->hApp );

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpApp$[ebp], eax

; 1321 :       zsprintf( szMsg, "  Memory [%x] for Task 0x%08x   App: %s   Size: %d   Status: ",
; 1322 :                 (zLONG) by, hTask, lpApp ? lpApp->szName : "???", lpTask->ulTrackTaskMemory );

	cmp	DWORD PTR _lpApp$[ebp], 0
	je	SHORT $L8039
	mov	ecx, DWORD PTR _lpApp$[ebp]
	add	ecx, 6
	mov	DWORD PTR -828+[ebp], ecx
	jmp	SHORT $L8040
$L8039:
	mov	DWORD PTR -828+[ebp], OFFSET FLAT:??_C@_03NMFM@?$DP?$DP?$DP?$AA@ ; `string'
$L8040:
	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+162]
	push	eax
	mov	ecx, DWORD PTR -828+[ebp]
	push	ecx
	mov	edx, DWORD PTR _hTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _by$[ebp]
	and	eax, 255				; 000000ffH
	push	eax
	push	OFFSET FLAT:??_C@_0DO@PPCE@?5?5Memory?5?$FL?$CFx?$FN?5for?5Task?50x?$CF08x?5?5?5@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 24					; 00000018H

; 1323 :       if ( lpTask->bShutdown )

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+443]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	je	SHORT $L7947

; 1325 :          TraceLineS( szMsg, "Shutdown" );

	push	OFFSET FLAT:??_C@_08DCJK@Shutdown?$AA@	; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_TraceLineS@8

; 1326 :          continue;

	jmp	$L7938
$L7947:

; 1328 :       else
; 1329 :          TraceLineS( szMsg, "Active" );

	push	OFFSET FLAT:??_C@_06LOAA@Active?$AA@	; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_TraceLineS@8

; 1330 : 
; 1331 :       k = sizeof( zCHAR ) * zSHR_MAX_PAGES;

	mov	WORD PTR _k$[ebp], 256			; 00000100H

; 1332 :       zmemset( szPageTable, '.', k );

	movsx	eax, WORD PTR _k$[ebp]
	push	eax
	push	46					; 0000002eH
	lea	ecx, DWORD PTR _szPageTable$[ebp]
	push	ecx
	call	_memset
	add	esp, 12					; 0000000cH

; 1333 :       szPageTable[ sizeof( zCHAR ) * zSHR_MAX_PAGES ] = 0;

	mov	BYTE PTR _szPageTable$[ebp+256], 0

; 1334 :       hDataHeader = lpTask->hFirstDataHeader;

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+94]
	mov	DWORD PTR _hDataHeader$[ebp], eax
$L7954:

; 1335 :       while ( hDataHeader )

	cmp	DWORD PTR _hDataHeader$[ebp], 0
	je	$L7955

; 1337 :          by = (zBYTE) ((zULONG) hDataHeader >> 24);

	mov	ecx, DWORD PTR _hDataHeader$[ebp]
	shr	ecx, 24					; 00000018H
	mov	BYTE PTR _by$[ebp], cl

; 1338 :          szPageTable[ by ] = 'Y';

	mov	edx, DWORD PTR _by$[ebp]
	and	edx, 255				; 000000ffH
	mov	BYTE PTR _szPageTable$[ebp+edx], 89	; 00000059H

; 1339 : 
; 1340 :          lpDataHeader = zGETPTR( hDataHeader );

	mov	eax, DWORD PTR _hDataHeader$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDataHeader$[ebp], eax

; 1341 :          ulTotalAlloc += lpDataHeader->ulUseableSize;

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR _ulTotalAlloc$[ebp]
	add	edx, DWORD PTR [ecx+10]
	mov	DWORD PTR _ulTotalAlloc$[ebp], edx

; 1342 : 
; 1343 : #if 1 //def WE_NEED_A_MUTEX_JUST_FOR_THIS???
; 1344 :          lpPrevFreespace = &lpDataHeader->Freespace;

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	add	eax, 46					; 0000002eH
	mov	DWORD PTR _lpPrevFreespace$[ebp], eax

; 1345 :          lpNextFreespace = zGETPTR( lpPrevFreespace->hNextFreespace );

	mov	ecx, DWORD PTR _lpPrevFreespace$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextFreespace$[ebp], eax

; 1346 : 
; 1347 :          // If lpNextFreespace is null, set it to lpPrevFreespace (the zero-
; 1348 :          // length Freespace link in the table header).
; 1349 :          if ( lpNextFreespace == 0 )

	cmp	DWORD PTR _lpNextFreespace$[ebp], 0
	jne	SHORT $L7960

; 1350 :             lpNextFreespace = lpPrevFreespace;

	mov	eax, DWORD PTR _lpPrevFreespace$[ebp]
	mov	DWORD PTR _lpNextFreespace$[ebp], eax
$L7960:

; 1351 : 
; 1352 :          // lpNextFreespace points to the first free chunk of space
; 1353 :          ulFreeBytes = 0;

	mov	DWORD PTR _ulFreeBytes$[ebp], 0
$L7962:

; 1354 :          while ( lpNextFreespace )

	cmp	DWORD PTR _lpNextFreespace$[ebp], 0
	je	SHORT $L7963

; 1356 :             ulFreeBytes += lpNextFreespace->ulFreeLth;

	mov	ecx, DWORD PTR _lpNextFreespace$[ebp]
	mov	edx, DWORD PTR _ulFreeBytes$[ebp]
	add	edx, DWORD PTR [ecx+6]
	mov	DWORD PTR _ulFreeBytes$[ebp], edx

; 1357 : 
; 1358 :             // Move on to next free chunk of space
; 1359 :             lpNextFreespace = zGETPTR( lpNextFreespace->hNextFreespace );

	mov	eax, DWORD PTR _lpNextFreespace$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextFreespace$[ebp], eax

; 1360 :          }

	jmp	SHORT $L7962
$L7963:

; 1361 : 
; 1362 :          k = sizeof( zCHAR ) * zSHR_MAX_PAGES - 1;

	mov	WORD PTR _k$[ebp], 255			; 000000ffH
$L7967:

; 1363 :          while ( szPageTable[ k ] == '.' )

	movsx	edx, WORD PTR _k$[ebp]
	movsx	eax, BYTE PTR _szPageTable$[ebp+edx]
	cmp	eax, 46					; 0000002eH
	jne	SHORT $L7968

; 1364 :             szPageTable[ k-- ] = 0;

	movsx	ecx, WORD PTR _k$[ebp]
	mov	BYTE PTR _szPageTable$[ebp+ecx], 0
	mov	dx, WORD PTR _k$[ebp]
	sub	dx, 1
	mov	WORD PTR _k$[ebp], dx
	jmp	SHORT $L7967
$L7968:

; 1365 : 
; 1366 :          zsprintf( szMsg, "   [%lx] size: %ld; fs ceiling: %ld; total fs: %ld ==> %s",
; 1367 :                    (zLONG) lpDataHeader, lpDataHeader->ulUseableSize,
; 1368 :                    lpDataHeader->ulMaxEmptyBlockSize, ulFreeBytes, szPageTable );

	lea	eax, DWORD PTR _szPageTable$[ebp]
	push	eax
	mov	ecx, DWORD PTR _ulFreeBytes$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0DK@CLED@?5?5?5?$FL?$CFlx?$FN?5size?3?5?$CFld?$DL?5fs?5ceiling?3?5@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 28					; 0000001cH

; 1369 : #else
; 1370 :          zsprintf( szMsg, "   [%lx] size: %ld; fs ceiling: %ld ==> %s",
; 1371 :                    (zLONG) lpDataHeader, lpDataHeader->lNumberOfEntries,
; 1372 :                    lpDataHeader->ulMaxEmptyBlockSize, szPageTable );
; 1373 : #endif
; 1374 :          TraceLineS( szMsg, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_TraceLineS@8

; 1375 : 
; 1376 :          hDataHeader = lpDataHeader->hNextDataHeader;

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	mov	DWORD PTR _hDataHeader$[ebp], ecx

; 1377 :       }

	jmp	$L7954
$L7955:

; 1378 :    }

	jmp	$L7938
$L7939:

; 1379 : 
; 1380 :    fnEndBrowseOfTaskList( FALSE );

	push	0
	call	_fnEndBrowseOfTaskList@4

; 1381 :    zUNLOCK_MUTEX( zMUTEX_SHAREDMEM );

	push	4
	call	_fnSysUnlockCoreMutex@4

; 1382 : 
; 1383 :    TraceLineI( "(mi) List OE Memory ###### END ###### - total = ",
; 1384 :                ulTotalAlloc );

	mov	edx, DWORD PTR _ulTotalAlloc$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0DB@JEPJ@?$CImi?$CJ?5List?5OE?5Memory?5?$CD?$CD?$CD?$CD?$CD?$CD?5END?5?$CD@ ; `string'
	call	_TraceLineI@8

; 1385 :    return( ulTotalAlloc );

	mov	eax, DWORD PTR _ulTotalAlloc$[ebp]
$L7911:

; 1386 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_MiListOE_Memory@8 ENDP
_TEXT	ENDS
PUBLIC	_MiEntityVersioned@8
EXTRN	_fnInstanceVersioned:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -20
_lpViewEntity$ = -12
_lpViewEntityCsr$ = -16
_lpEntityInstance$ = -8
_nRC$ = -4
_MiEntityVersioned@8 PROC NEAR

; 1405 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 1406 :    LPTASK            lpCurrentTask;
; 1407 :    LPVIEWENTITY      lpViewEntity;
; 1408 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1409 :    LPENTITYINSTANCE  lpEntityInstance;
; 1410 :    zSHORT            nRC;
; 1411 : 
; 1412 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 1413 :    if ( (lpCurrentTask = fnOperationCall( iMiEntityVersioned, lpView,
; 1414 :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	469					; 000001d5H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7983

; 1416 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7977
$L7983:

; 1418 : 
; 1419 :    // Validate that the entity exists
; 1420 :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 1421 :                                            lpView, cpcEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7984

; 1423 :       fnOperationReturn( iMiEntityVersioned, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	469					; 000001d5H
	call	_fnOperationReturn
	add	esp, 8

; 1424 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7977
$L7984:

; 1426 : 
; 1427 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1428 : 
; 1429 :    nRC = fnInstanceVersioned( lpEntityInstance );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	call	_fnInstanceVersioned
	add	esp, 4
	xor	dx, dx
	mov	dl, al
	mov	WORD PTR _nRC$[ebp], dx

; 1430 : 
; 1431 :    fnOperationReturn( iMiEntityVersioned, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	469					; 000001d5H
	call	_fnOperationReturn
	add	esp, 8

; 1432 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7977:

; 1433 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_MiEntityVersioned@8 ENDP
_TEXT	ENDS
END
