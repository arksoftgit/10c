	TITLE	C:\10C\A\oe\KZOECMAA.C
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
;	COMDAT ??_C@_09PDHB@?$CIS?9?$DODT?$CJ?0?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0HD@GMPL@Failure?5during?5standard?5call?0?5bu@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@LMDE@?6Object?5Def?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09CJA@?6Entity?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@LPFC@?6Attribute?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@IKOI@SetCursorFirstEntityByString?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@EHFF@SetCursorNextEntityByString?$AA@
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
;	COMDAT ??_C@_02GIEM@?0?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@JABP@fnSetEntityCursor?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@LMCH@?$CIcm?$CJ?5Invalid?5qualification?5type?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04KBML@?$CIL?9?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03OIDK@?$CJ?0?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09JMMI@?$CI?$DP?9?$DODT?$CJ?0?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08GFGC@?$CIS?9?$DOL?$CJ?0?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08EADA@?$CIS?9?$DOM?$CJ?0?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04KOHF@?$CIS?9?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04PDNN@?$CIM?9?$DO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EB@NEHK@?$CIcm?$CJ?5ERROR?5Unexpected?5Recursive?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@HOOF@Internal?5Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_fnSetEntityCursor
PUBLIC	_fnValidateCursorParameters
PUBLIC	_SetCursorNextEntity@12
EXTRN	_fnOperationReturn:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcScopingEntityName$ = 16
_lpCurrentTask$ = -24
_lpViewEntity$ = -12
_lpScopingViewEntity$ = -16
_lpViewEntityCsr$ = -20
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorNextEntity@12 PROC NEAR

; 103  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 104  :    LPTASK            lpCurrentTask;
; 105  :    LPVIEWENTITY      lpViewEntity;
; 106  :    LPVIEWENTITY      lpScopingViewEntity;
; 107  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 108  :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 109  :    zSHORT            nRC;
; 110  : 
; 111  :    // Validate parameters
; 112  :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 113  :                                            &lpViewEntity,
; 114  :                                            &lpScopingViewEntity,
; 115  :                                            &lpViewEntityCsr,
; 116  :                                            &lpScopingViewEntityCsr,
; 117  :                                            iSetCursorNextEntity,
; 118  :                                            lpView,
; 119  :                                            cpcEntityName,
; 120  :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	150					; 00000096H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7533

; 122  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L7526
$L7533:

; 124  : 
; 125  :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 126  :                             0, (zLONG) zPOS_NEXT,
; 127  :                             0, 0, 0, 0, lpScopingViewEntityCsr, 0,
; 128  :                             lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	ecx
	push	0
	push	0
	push	0
	push	0
	push	3
	push	0
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 129  : 
; 130  :    fnOperationReturn( iSetCursorNextEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	150					; 00000096H
	call	_fnOperationReturn
	add	esp, 8

; 131  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7526:

; 132  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetCursorNextEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorPrevEntity@12
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcScopingEntityName$ = 16
_lpCurrentTask$ = -24
_lpViewEntity$ = -12
_lpScopingViewEntity$ = -16
_lpViewEntityCsr$ = -20
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorPrevEntity@12 PROC NEAR

; 157  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 158  :    LPTASK            lpCurrentTask;
; 159  :    LPVIEWENTITY      lpViewEntity;
; 160  :    LPVIEWENTITY      lpScopingViewEntity;
; 161  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 162  :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 163  :    zSHORT            nRC;
; 164  : 
; 165  :    // Validate parameters
; 166  :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 167  :                                            &lpViewEntity,
; 168  :                                            &lpScopingViewEntity,
; 169  :                                            &lpViewEntityCsr,
; 170  :                                            &lpScopingViewEntityCsr,
; 171  :                                            iSetCursorPrevEntity,
; 172  :                                            lpView,
; 173  :                                            cpcEntityName,
; 174  :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	151					; 00000097H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7549

; 176  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L7542
$L7549:

; 178  : 
; 179  :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 180  :                             0, (zLONG) zPOS_PREV,
; 181  :                             0, 0, 0, 0, lpScopingViewEntityCsr, 0,
; 182  :                             lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	ecx
	push	0
	push	0
	push	0
	push	0
	push	4
	push	0
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 183  : 
; 184  :    fnOperationReturn( iSetCursorPrevEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	151					; 00000097H
	call	_fnOperationReturn
	add	esp, 8

; 185  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7542:

; 186  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetCursorPrevEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorScopeOI@12
PUBLIC	_SetEntityCursor@40
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nPos$ = 16
_nRC$ = -4
_SetCursorScopeOI@12 PROC NEAR

; 207  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 208  :    zSHORT nRC = SetEntityCursor( lpView, cpcEntityName, 0,
; 209  :                                  nPos | zQUAL_SCOPE_OI,
; 210  :                                  0, 0, 0, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	0
	push	0
	push	0
	movsx	eax, WORD PTR _nPos$[ebp]
	or	eax, 524288				; 00080000H
	push	eax
	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SetEntityCursor@40
	mov	WORD PTR _nRC$[ebp], ax

; 211  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 212  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetCursorScopeOI@12 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorFirstEntity@12
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcScopingEntityName$ = 16
_lpCurrentTask$ = -24
_lpViewEntity$ = -12
_lpScopingViewEntity$ = -16
_lpViewEntityCsr$ = -20
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorFirstEntity@12 PROC NEAR

; 233  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 234  :    LPTASK            lpCurrentTask;
; 235  :    LPVIEWENTITY      lpViewEntity;
; 236  :    LPVIEWENTITY      lpScopingViewEntity;
; 237  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 238  :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 239  :    zSHORT            nRC;
; 240  : 
; 241  :    // Validate parameters
; 242  :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 243  :                                            &lpViewEntity,
; 244  :                                            &lpScopingViewEntity,
; 245  :                                            &lpViewEntityCsr,
; 246  :                                            &lpScopingViewEntityCsr,
; 247  :                                            iSetCursorFirstEntity,
; 248  :                                            lpView,
; 249  :                                            cpcEntityName,
; 250  :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	152					; 00000098H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7573

; 252  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L7566
$L7573:

; 254  : 
; 255  :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 256  :                             0, (zLONG) zPOS_FIRST,
; 257  :                             0, 0, 0, 0, lpScopingViewEntityCsr, 0,
; 258  :                             lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	ecx
	push	0
	push	0
	push	0
	push	0
	push	1
	push	0
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 259  : 
; 260  :    fnOperationReturn( iSetCursorFirstEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	152					; 00000098H
	call	_fnOperationReturn
	add	esp, 8

; 261  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7566:

; 262  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetCursorFirstEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorLastEntity@12
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcScopingEntityName$ = 16
_lpCurrentTask$ = -24
_lpViewEntity$ = -12
_lpScopingViewEntity$ = -16
_lpViewEntityCsr$ = -20
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorLastEntity@12 PROC NEAR

; 283  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 284  :    LPTASK            lpCurrentTask;
; 285  :    LPVIEWENTITY      lpViewEntity;
; 286  :    LPVIEWENTITY      lpScopingViewEntity;
; 287  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 288  :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 289  :    zSHORT            nRC;
; 290  : 
; 291  :    // Validate parameters
; 292  :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 293  :                                            &lpViewEntity,
; 294  :                                            &lpScopingViewEntity,
; 295  :                                            &lpViewEntityCsr,
; 296  :                                            &lpScopingViewEntityCsr,
; 297  :                                            iSetCursorLastEntity,
; 298  :                                            lpView,
; 299  :                                            cpcEntityName,
; 300  :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	153					; 00000099H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7589

; 302  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L7582
$L7589:

; 304  : 
; 305  :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 306  :                             0, (zLONG) zPOS_LAST,
; 307  :                             0, 0, 0, 0, lpScopingViewEntityCsr, 0,
; 308  :                             lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	ecx
	push	0
	push	0
	push	0
	push	0
	push	2
	push	0
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 309  : 
; 310  :    fnOperationReturn( iSetCursorLastEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	153					; 00000099H
	call	_fnOperationReturn
	add	esp, 8

; 311  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7582:

; 312  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetCursorLastEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_fnQualOperatorMatchesRC
_TEXT	SEGMENT
_lOperator$ = 8
_nRC$ = 12
_fnQualOperatorMatchesRC PROC NEAR

; 330  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 331  :    switch ( nRC )
; 332  :    {

	movsx	eax, WORD PTR _nRC$[ebp]
	mov	DWORD PTR -4+[ebp], eax
	mov	ecx, DWORD PTR -4+[ebp]
	add	ecx, 16					; 00000010H
	mov	DWORD PTR -4+[ebp], ecx
	cmp	DWORD PTR -4+[ebp], 17			; 00000011H
	ja	SHORT $L7599
	mov	eax, DWORD PTR -4+[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR $L9823[eax]
	jmp	DWORD PTR $L9824[edx*4]
$L7602:

; 333  :       case -1:
; 334  :          if ( (lOperator & zQUAL_LESS_THAN) ||
; 335  :                lOperator == (zQUAL_NOT | zQUAL_EQUAL) )

	mov	ecx, DWORD PTR _lOperator$[ebp]
	and	ecx, 64					; 00000040H
	test	ecx, ecx
	jne	SHORT $L7604
	cmp	DWORD PTR _lOperator$[ebp], 144		; 00000090H
	jne	SHORT $L7603
$L7604:

; 337  :             return( 1 );

	mov	ax, 1
	jmp	SHORT $L7597
$L7603:

; 339  : 
; 340  :          break;

	jmp	SHORT $L7599
$L7605:

; 341  : 
; 342  :       case 0:
; 343  :          if ( (lOperator & zQUAL_EQUAL) && (lOperator & zQUAL_NOT) == 0 )

	mov	edx, DWORD PTR _lOperator$[ebp]
	and	edx, 16					; 00000010H
	test	edx, edx
	je	SHORT $L7606
	mov	eax, DWORD PTR _lOperator$[ebp]
	and	eax, 128				; 00000080H
	test	eax, eax
	jne	SHORT $L7606

; 345  :             return( 1 );

	mov	ax, 1
	jmp	SHORT $L7597
$L7606:

; 347  : 
; 348  :          break;

	jmp	SHORT $L7599
$L7607:

; 349  : 
; 350  :       case 1:
; 351  :          if ( (lOperator & zQUAL_GREATER_THAN) ||
; 352  :                lOperator == (zQUAL_NOT | zQUAL_EQUAL) )

	mov	ecx, DWORD PTR _lOperator$[ebp]
	and	ecx, 32					; 00000020H
	test	ecx, ecx
	jne	SHORT $L7609
	cmp	DWORD PTR _lOperator$[ebp], 144		; 00000090H
	jne	SHORT $L7608
$L7609:

; 354  :             return( 1 );

	mov	ax, 1
	jmp	SHORT $L7597
$L7608:

; 356  : 
; 357  :          break;

	jmp	SHORT $L7599
$L7610:

; 358  : 
; 359  :       case zCALL_ERROR:
; 360  :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7597
$L7599:

; 362  : 
; 363  :    return( 0 );

	xor	ax, ax
$L7597:

; 364  : }

	mov	esp, ebp
	pop	ebp
	ret	0
$L9824:
	DD	$L7610
	DD	$L7602
	DD	$L7605
	DD	$L7607
	DD	$L7599
$L9823:
	DB	0
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	1
	DB	2
	DB	3
_fnQualOperatorMatchesRC ENDP
_TEXT	ENDS
PUBLIC	_fnStringMatchesAttributeValue
EXTRN	_fnRecordForEntityAttr:NEAR
EXTRN	_strcmp:NEAR
EXTRN	__imp___stricmp:NEAR
EXTRN	_g_pfnGetPtr:DWORD
_TEXT	SEGMENT
_cpcStringValue$ = 8
_lOperator$ = 12
_lpEntityInstance$ = 16
_lpViewAttrib$ = 20
_lpRecord$ = -8
_nRC$ = -4
_lpExternalP$7626 = -12
_fnStringMatchesAttributeValue PROC NEAR

; 379  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 380  :    zPCHAR   lpRecord;
; 381  :    zSHORT   nRC;
; 382  : 
; 383  :    lpRecord = fnRecordForEntityAttr( lpEntityInstance, lpViewAttrib );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	call	_fnRecordForEntityAttr
	add	esp, 8
	mov	DWORD PTR _lpRecord$[ebp], eax

; 384  : 
; 385  :    if ( lpRecord && lpViewAttrib->cType == 'S' )

	cmp	DWORD PTR _lpRecord$[ebp], 0
	je	$L7623
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	eax, BYTE PTR [edx+202]
	cmp	eax, 83					; 00000053H
	jne	$L7623

; 387  :       lpRecord += lpViewAttrib->ulRecordOffset;

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR _lpRecord$[ebp]
	add	edx, DWORD PTR [ecx+250]
	mov	DWORD PTR _lpRecord$[ebp], edx

; 388  :       if ( lpRecord[ 0 ] == (zCHAR) '\xff' )

	mov	eax, DWORD PTR _lpRecord$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, -1
	jne	SHORT $L7625

; 390  :          zCOREMEM  lpExternalP;
; 391  : 
; 392  :          lpExternalP = (zCOREMEM) (lpRecord + 1);

	mov	edx, DWORD PTR _lpRecord$[ebp]
	add	edx, 1
	mov	DWORD PTR _lpExternalP$7626[ebp], edx

; 393  :          lpRecord = zGETPTR( *lpExternalP );

	mov	eax, DWORD PTR _lpExternalP$7626[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecord$[ebp], eax
$L7625:

; 395  : 
; 396  :       if ( lpViewAttrib->bCaseSens )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 6
	and	eax, 1
	test	eax, eax
	je	SHORT $L7629

; 397  :          nRC = zstrcmp( lpRecord, cpcStringValue );

	mov	ecx, DWORD PTR _lpRecord$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _cpcStringValue$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L9826
	mov	edx, DWORD PTR _cpcStringValue$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpRecord$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -16+[ebp], eax
	jmp	SHORT $L9827
$L9826:
	mov	ecx, DWORD PTR _lpRecord$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _cpcStringValue$[ebp]
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -16+[ebp], eax
$L9827:
	mov	cx, WORD PTR -16+[ebp]
	mov	WORD PTR _nRC$[ebp], cx

; 398  :       else

	jmp	SHORT $L7636
$L7629:

; 399  :          nRC = zstrcmpi( lpRecord, cpcStringValue );

	mov	edx, DWORD PTR _cpcStringValue$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpRecord$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax
$L7636:

; 400  : 
; 401  :       if ( nRC < 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jge	SHORT $L7637

; 402  :          nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1

; 403  :       else

	jmp	SHORT $L7639
$L7637:

; 404  :       if ( nRC > 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jle	SHORT $L7639

; 405  :          nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L7639:

; 406  : 
; 407  :       return( fnQualOperatorMatchesRC( lOperator, nRC ) );

	mov	ax, WORD PTR _nRC$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lOperator$[ebp]
	push	ecx
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	movsx	eax, ax
	jmp	SHORT $L7620
$L7623:

; 409  : 
; 410  :    // If the lpRecord is NULL and the string value is NULL, then they match.
; 411  :    if ( lpRecord == 0 && (cpcStringValue == 0 || *cpcStringValue == 0) )

	cmp	DWORD PTR _lpRecord$[ebp], 0
	jne	SHORT $L7640
	cmp	DWORD PTR _cpcStringValue$[ebp], 0
	je	SHORT $L7641
	mov	edx, DWORD PTR _cpcStringValue$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L7640
$L7641:

; 412  :       return( 1 );

	mov	eax, 1
	jmp	SHORT $L7620
$L7640:

; 413  : 
; 414  :    return( 0 ); // failure

	xor	eax, eax
$L7620:

; 415  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnStringMatchesAttributeValue ENDP
_TEXT	ENDS
PUBLIC	_fnAttrValueMatchesAttrValue
EXTRN	_fnGetVariableFromAttribute:NEAR
EXTRN	_fnCompareDateTimeToDateTime:NEAR
EXTRN	_fnCompareAttributeToVariable:NEAR
EXTRN	_fnInvokeDerivedOperation:NEAR
EXTRN	_memcmp:NEAR
EXTRN	_strcpy:NEAR
EXTRN	_fnEstablishViewForInstance:NEAR
EXTRN	_SysCompareDecimalToDecimal@8:NEAR
_TEXT	SEGMENT
_vAttrView$ = 8
_lOperator$ = 12
_lpSrcEntityInstance$ = 20
_lpSrcViewAttrib$ = 24
_lpSearchViewEntityCsr$ = 28
_lpSearchEntityInstance$ = 32
_lpSearchViewAttrib$ = 36
_lpCurrentTask$ = 40
_nRC$ = -8
_lpSrcRecord$ = -4
_lpSearchRecord$ = -12
_szWorkString$ = -268
_lpViewEntityCsrDA$7671 = -272
_lpExternalP$7681 = -276
_lpExternalP$7686 = -280
_lpuSrcBlobLth$7717 = -284
_lpuSearchBlobLth$7718 = -288
_lpExternalP$7719 = -292
_ulTossOut$7734 = -300
_lpViewEntityCsrForDomain$7735 = -296
_szContext$7738 = -344
_lpDomain$7739 = -308
_lpViewCsr$7741 = -304
_fnAttrValueMatchesAttrValue PROC NEAR

; 435  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 352				; 00000160H

; 436  :    zSHORT   nRC;
; 437  :    zPCHAR   lpSrcRecord;
; 438  :    zPCHAR   lpSearchRecord;
; 439  :    zCHAR    szWorkString[ 255 ];
; 440  : 
; 441  :    lpSrcRecord = fnRecordForEntityAttr( lpSrcEntityInstance,
; 442  :                                         lpSrcViewAttrib );

	mov	eax, DWORD PTR _lpSrcViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	ecx
	call	_fnRecordForEntityAttr
	add	esp, 8
	mov	DWORD PTR _lpSrcRecord$[ebp], eax

; 443  : 
; 444  :    lpSearchRecord = fnRecordForEntityAttr( lpSearchEntityInstance,
; 445  :                                            lpSearchViewAttrib );

	mov	edx, DWORD PTR _lpSearchViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	eax
	call	_fnRecordForEntityAttr
	add	esp, 8
	mov	DWORD PTR _lpSearchRecord$[ebp], eax

; 446  : 
; 447  :    // If both lpRecord are NULL then the attributes are NULL so they match.
; 448  :    if ( lpSrcRecord == 0 && lpSearchRecord == 0 )

	cmp	DWORD PTR _lpSrcRecord$[ebp], 0
	jne	SHORT $L7666
	cmp	DWORD PTR _lpSearchRecord$[ebp], 0
	jne	SHORT $L7666

; 449  :       return( 1 );

	mov	eax, 1
	jmp	$L7661
$L7666:

; 450  : 
; 451  :    // If only one of them is NULL, then they don't match.
; 452  :    if ( lpSrcRecord == 0 || lpSearchRecord == 0 )

	cmp	DWORD PTR _lpSrcRecord$[ebp], 0
	je	SHORT $L7668
	cmp	DWORD PTR _lpSearchRecord$[ebp], 0
	jne	SHORT $L7667
$L7668:

; 453  :       return( 0 );

	xor	eax, eax
	jmp	$L7661
$L7667:

; 454  : 
; 455  :    if ( lpSrcViewAttrib->cType == lpSearchViewAttrib->cType &&
; 456  :         lpSrcViewAttrib->hDomain == lpSearchViewAttrib->hDomain )

	mov	ecx, DWORD PTR _lpSrcViewAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	mov	eax, DWORD PTR _lpSearchViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	edx, ecx
	jne	$L7669
	mov	edx, DWORD PTR _lpSrcViewAttrib$[ebp]
	mov	eax, DWORD PTR _lpSearchViewAttrib$[ebp]
	mov	ecx, DWORD PTR [edx+198]
	cmp	ecx, DWORD PTR [eax+198]
	jne	$L7669

; 458  :       // If derived attribute for src, invoke operation now.
; 459  :       // If search attribute is derived, that was done at the
; 460  :       // beginning of fnSetEntityCursor.
; 461  :       if ( lpSrcViewAttrib->szDerivedOper[ 0 ] )

	mov	edx, DWORD PTR _lpSrcViewAttrib$[ebp]
	movsx	eax, BYTE PTR [edx+213]
	test	eax, eax
	je	SHORT $L7673

; 463  :          LPVIEWENTITYCSR lpViewEntityCsrDA =
; 464  :                            fnEstablishViewForInstance( vAttrView, 0,
; 465  :                                                        lpSrcEntityInstance );

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _vAttrView$[ebp]
	push	edx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsrDA$7671[ebp], eax

; 466  : 
; 467  :          nRC = fnInvokeDerivedOperation( vAttrView,
; 468  :                                          zGETPTR( lpViewEntityCsrDA->
; 469  :                                                             hViewEntity ),
; 470  :                                          lpSrcViewAttrib,
; 471  :                                          lpCurrentTask, zDERIVED_GET );

	push	2
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsrDA$7671[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	ecx, DWORD PTR _vAttrView$[ebp]
	push	ecx
	call	_fnInvokeDerivedOperation
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 472  :          if ( nRC == zCALL_ERROR )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L7673

; 473  :             return( nRC );

	movsx	eax, WORD PTR _nRC$[ebp]
	jmp	$L7661
$L7673:

; 475  : 
; 476  :       lpSrcRecord += lpSrcViewAttrib->ulRecordOffset;

	mov	eax, DWORD PTR _lpSrcViewAttrib$[ebp]
	mov	ecx, DWORD PTR _lpSrcRecord$[ebp]
	add	ecx, DWORD PTR [eax+250]
	mov	DWORD PTR _lpSrcRecord$[ebp], ecx

; 477  :       lpSearchRecord += lpSearchViewAttrib->ulRecordOffset;

	mov	edx, DWORD PTR _lpSearchViewAttrib$[ebp]
	mov	eax, DWORD PTR _lpSearchRecord$[ebp]
	add	eax, DWORD PTR [edx+250]
	mov	DWORD PTR _lpSearchRecord$[ebp], eax

; 478  :       switch ( lpSrcViewAttrib->cType )
; 479  :       {

	mov	ecx, DWORD PTR _lpSrcViewAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	mov	DWORD PTR -348+[ebp], edx
	mov	eax, DWORD PTR -348+[ebp]
	sub	eax, 66					; 00000042H
	mov	DWORD PTR -348+[ebp], eax
	cmp	DWORD PTR -348+[ebp], 18		; 00000012H
	ja	$L7675
	mov	edx, DWORD PTR -348+[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR $L9831[edx]
	jmp	DWORD PTR $L9832[ecx*4]
$L7678:

; 480  :          case zTYPE_STRING:
; 481  :             if ( lpSrcRecord[ 0 ] == (zCHAR) '\xff' )

	mov	eax, DWORD PTR _lpSrcRecord$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, -1
	jne	SHORT $L7680

; 483  :                zCOREMEM  lpExternalP;
; 484  : 
; 485  :                lpExternalP = (zCOREMEM) ( lpSrcRecord + 1 );

	mov	edx, DWORD PTR _lpSrcRecord$[ebp]
	add	edx, 1
	mov	DWORD PTR _lpExternalP$7681[ebp], edx

; 486  :                lpSrcRecord = zGETPTR( *lpExternalP );

	mov	eax, DWORD PTR _lpExternalP$7681[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcRecord$[ebp], eax
$L7680:

; 488  : 
; 489  :             if ( lpSearchRecord[ 0 ] == (zCHAR) '\xff' )

	mov	edx, DWORD PTR _lpSearchRecord$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, -1
	jne	SHORT $L7685

; 491  :                zCOREMEM  lpExternalP;
; 492  : 
; 493  :                lpExternalP = (zCOREMEM) ( lpSearchRecord + 1 );

	mov	ecx, DWORD PTR _lpSearchRecord$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lpExternalP$7686[ebp], ecx

; 494  :                lpSearchRecord = zGETPTR( *lpExternalP );

	mov	edx, DWORD PTR _lpExternalP$7686[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchRecord$[ebp], eax
$L7685:

; 496  : 
; 497  :             if ( lpSrcViewAttrib->bCaseSens )

	mov	ecx, DWORD PTR _lpSrcViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 6
	and	edx, 1
	test	edx, edx
	je	SHORT $L7689

; 498  :                nRC = zstrcmp( lpSrcRecord, lpSearchRecord );

	mov	eax, DWORD PTR _lpSrcRecord$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _lpSearchRecord$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L9829
	mov	ecx, DWORD PTR _lpSearchRecord$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcRecord$[ebp]
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -352+[ebp], eax
	jmp	SHORT $L9830
$L9829:
	mov	eax, DWORD PTR _lpSrcRecord$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _lpSearchRecord$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -352+[ebp], edx
$L9830:
	mov	ax, WORD PTR -352+[ebp]
	mov	WORD PTR _nRC$[ebp], ax

; 499  :             else

	jmp	SHORT $L7696
$L7689:

; 500  :                nRC = zstrcmpi( lpSrcRecord, lpSearchRecord );

	mov	ecx, DWORD PTR _lpSearchRecord$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcRecord$[ebp]
	push	edx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax
$L7696:

; 501  : 
; 502  :          // nRC = (nRC > 0) ? 1 : ((nRC < 0) ? -1 : 0);
; 503  :             if ( nRC < 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jge	SHORT $L7697

; 504  :                nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1

; 505  :             else

	jmp	SHORT $L7699
$L7697:

; 506  :             if ( nRC > 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jle	SHORT $L7699

; 507  :                nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L7699:

; 508  : 
; 509  :             return( fnQualOperatorMatchesRC( lOperator, nRC ) );

	mov	dx, WORD PTR _nRC$[ebp]
	push	edx
	mov	eax, DWORD PTR _lOperator$[ebp]
	push	eax
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	movsx	eax, ax
	jmp	$L7661
$L7700:

; 510  : 
; 511  :          case zTYPE_INTEGER:
; 512  :             if ( *((zPLONG) lpSrcRecord) == *((zPLONG) lpSearchRecord) )

	mov	ecx, DWORD PTR _lpSrcRecord$[ebp]
	mov	edx, DWORD PTR _lpSearchRecord$[ebp]
	mov	eax, DWORD PTR [ecx]
	cmp	eax, DWORD PTR [edx]
	jne	SHORT $L7703

; 513  :                nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 514  :             else

	jmp	SHORT $L7704
$L7703:

; 515  :                nRC = (*((zPLONG) lpSrcRecord) <
; 516  :                                           *((zPLONG) lpSearchRecord) ) ? -1 : 1;

	mov	ecx, DWORD PTR _lpSrcRecord$[ebp]
	mov	edx, DWORD PTR _lpSearchRecord$[ebp]
	mov	eax, DWORD PTR [ecx]
	xor	ecx, ecx
	cmp	eax, DWORD PTR [edx]
	setge	cl
	dec	ecx
	and	ecx, -2					; fffffffeH
	add	ecx, 1
	mov	WORD PTR _nRC$[ebp], cx
$L7704:

; 517  : 
; 518  :             return( fnQualOperatorMatchesRC( lOperator, nRC ) );

	mov	dx, WORD PTR _nRC$[ebp]
	push	edx
	mov	eax, DWORD PTR _lOperator$[ebp]
	push	eax
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	movsx	eax, ax
	jmp	$L7661
$L7707:

; 519  : 
; 520  :          case zTYPE_DECIMAL:
; 521  :             nRC = SysCompareDecimalToDecimal( (zPDECIMAL) lpSrcRecord,
; 522  :                                               (zPDECIMAL) lpSearchRecord );

	mov	ecx, DWORD PTR _lpSearchRecord$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcRecord$[ebp]
	push	edx
	call	_SysCompareDecimalToDecimal@8
	mov	WORD PTR _nRC$[ebp], ax

; 523  :             return( fnQualOperatorMatchesRC( lOperator, nRC ) );

	mov	ax, WORD PTR _nRC$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lOperator$[ebp]
	push	ecx
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	movsx	eax, ax
	jmp	$L7661
$L7710:

; 524  : 
; 525  :          case zTYPE_DATETIME:
; 526  :             nRC = fnCompareDateTimeToDateTime( (LPDTINTERNAL) lpSrcRecord,
; 527  :                                                (LPDTINTERNAL) lpSearchRecord );

	mov	edx, DWORD PTR _lpSearchRecord$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcRecord$[ebp]
	push	eax
	call	_fnCompareDateTimeToDateTime
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax

; 528  :             return( fnQualOperatorMatchesRC( lOperator, nRC ) );

	mov	cx, WORD PTR _nRC$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lOperator$[ebp]
	push	edx
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	movsx	eax, ax
	jmp	$L7661
$L7713:

; 529  : 
; 530  :          case zTYPE_BLOB:
; 531  :             if ( lpSrcRecord[ 0 ] == (zCHAR) '\xff' &&
; 532  :                  lpSearchRecord[ 0 ] == (zCHAR) '\xff' )

	mov	eax, DWORD PTR _lpSrcRecord$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, -1
	jne	$L7716
	mov	edx, DWORD PTR _lpSearchRecord$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, -1
	jne	$L7716

; 534  :                zPULONG  lpuSrcBlobLth;
; 535  :                zPULONG  lpuSearchBlobLth;
; 536  :                zCOREMEM lpExternalP;
; 537  : 
; 538  :                lpExternalP = (zCOREMEM) (lpSrcRecord + 1);

	mov	ecx, DWORD PTR _lpSrcRecord$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lpExternalP$7719[ebp], ecx

; 539  :                lpuSrcBlobLth  = (zPULONG) (lpExternalP + 1);

	mov	edx, DWORD PTR _lpExternalP$7719[ebp]
	add	edx, 4
	mov	DWORD PTR _lpuSrcBlobLth$7717[ebp], edx

; 540  :                lpSrcRecord = zGETPTR( *lpExternalP );

	mov	eax, DWORD PTR _lpExternalP$7719[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcRecord$[ebp], eax

; 541  :                lpExternalP = (zCOREMEM) (lpSearchRecord + 1);

	mov	edx, DWORD PTR _lpSearchRecord$[ebp]
	add	edx, 1
	mov	DWORD PTR _lpExternalP$7719[ebp], edx

; 542  :                lpuSearchBlobLth  = (zPULONG) (lpExternalP + 1);

	mov	eax, DWORD PTR _lpExternalP$7719[ebp]
	add	eax, 4
	mov	DWORD PTR _lpuSearchBlobLth$7718[ebp], eax

; 543  :                lpSearchRecord = zGETPTR( *lpExternalP );

	mov	ecx, DWORD PTR _lpExternalP$7719[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchRecord$[ebp], eax

; 544  : 
; 545  :                if ( *lpuSrcBlobLth != *lpuSearchBlobLth )

	mov	eax, DWORD PTR _lpuSrcBlobLth$7717[ebp]
	mov	ecx, DWORD PTR _lpuSearchBlobLth$7718[ebp]
	mov	edx, DWORD PTR [eax]
	cmp	edx, DWORD PTR [ecx]
	je	SHORT $L7726

; 546  :                   break;

	jmp	SHORT $L7675
$L7726:

; 547  : 
; 548  :                if ( zmemcmp( lpSrcRecord, lpSearchRecord,
; 549  :                              (int) *lpuSrcBlobLth ) == 0 )

	mov	eax, DWORD PTR _lpuSrcBlobLth$7717[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	mov	edx, DWORD PTR _lpSearchRecord$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcRecord$[ebp]
	push	eax
	call	_memcmp
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $L7728

; 551  :                   return( 1 );

	mov	eax, 1
	jmp	$L7661
$L7728:

; 553  : 
; 554  :                break;

	jmp	SHORT $L7675
$L7716:

; 556  :             else
; 557  :             if ( lpSrcRecord[ 0 ] != (zCHAR) '\xff' &&
; 558  :                  lpSearchRecord[ 0 ] != (zCHAR) '\xff' )

	mov	ecx, DWORD PTR _lpSrcRecord$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, -1
	je	SHORT $L7732
	mov	eax, DWORD PTR _lpSearchRecord$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, -1
	je	SHORT $L7732

; 560  :                return( 1 );

	mov	eax, 1
	jmp	$L7661
$L7732:
$L7675:

; 567  :    else

	jmp	$L7737
$L7669:

; 571  :       zULONG          ulTossOut;
; 572  :       LPVIEWENTITYCSR lpViewEntityCsrForDomain =
; 573  :                            fnEstablishViewForInstance( vAttrView, 0,
; 574  :                                                        lpSrcEntityInstance );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _vAttrView$[ebp]
	push	eax
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsrForDomain$7735[ebp], eax

; 575  : 
; 576  :       nRC = fnGetVariableFromAttribute( (zPVOID) szWorkString,
; 577  :                                         &ulTossOut,
; 578  :                                         zTYPE_STRING,
; 579  :                                         sizeof( szWorkString ),
; 580  :                                         vAttrView,
; 581  :                                         lpViewEntityCsrForDomain,
; 582  :                                         lpSrcViewAttrib,
; 583  :                                         0, lpCurrentTask, 0 );

	push	0
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpSrcViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsrForDomain$7735[ebp]
	push	eax
	mov	ecx, DWORD PTR _vAttrView$[ebp]
	push	ecx
	push	255					; 000000ffH
	push	83					; 00000053H
	lea	edx, DWORD PTR _ulTossOut$7734[ebp]
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_fnGetVariableFromAttribute
	add	esp, 40					; 00000028H
	mov	WORD PTR _nRC$[ebp], ax

; 584  :       if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	$L7737

; 586  :          zCHAR     szContext[ 33 ];
; 587  :          LPDOMAIN  lpDomain = zGETPTR( lpSrcViewAttrib->hDomain );

	mov	edx, DWORD PTR _lpSrcViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+198]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$7739[ebp], eax

; 588  :          LPVIEWCSR lpViewCsr = zGETPTR( lpSearchViewEntityCsr->hViewCsr );

	mov	ecx, DWORD PTR _lpSearchViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$7741[ebp], eax

; 589  : 
; 590  :          if ( lpDomain )

	cmp	DWORD PTR _lpDomain$7739[ebp], 0
	je	SHORT $L7743

; 591  :             zstrcpy( szContext, lpDomain->szName );

	mov	eax, DWORD PTR _lpDomain$7739[ebp]
	add	eax, 6
	push	eax
	lea	ecx, DWORD PTR _szContext$7738[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 592  :          else

	jmp	SHORT $L7744
$L7743:

; 593  :             szContext[ 0 ] = 0;

	mov	BYTE PTR _szContext$7738[ebp], 0
$L7744:

; 594  : 
; 595  :          nRC = fnCompareAttributeToVariable( zGETPTR( lpViewCsr->hView ),
; 596  :                                              lpSearchViewEntityCsr,
; 597  :                                              lpSearchViewAttrib,
; 598  :                                              (zPVOID) szWorkString,
; 599  :                                              zTYPE_STRING,
; 600  :                                              0,
; 601  :                                              szContext,
; 602  :                                              lpCurrentTask, 0 );

	push	0
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	lea	eax, DWORD PTR _szContext$7738[ebp]
	push	eax
	push	0
	push	83					; 00000053H
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSearchViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSearchViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewCsr$7741[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnCompareAttributeToVariable
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax

; 603  :          return( fnQualOperatorMatchesRC( lOperator, nRC ) );

	mov	ax, WORD PTR _nRC$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lOperator$[ebp]
	push	ecx
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	movsx	eax, ax
	jmp	SHORT $L7661
$L7737:

; 606  : 
; 607  :    // We should never get here.
; 608  :    return( 0 );

	xor	eax, eax
$L7661:

; 609  : }

	mov	esp, ebp
	pop	ebp
	ret	0
$L9832:
	DD	$L7713
	DD	$L7700
	DD	$L7707
	DD	$L7678
	DD	$L7710
	DD	$L7675
$L9831:
	DB	0
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	1
	DB	2
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	3
	DB	4
_fnAttrValueMatchesAttrValue ENDP
_TEXT	ENDS
PUBLIC	??_C@_09PDHB@?$CIS?9?$DODT?$CJ?0?5?$AA@		; `string'
PUBLIC	??_C@_0HD@GMPL@Failure?5during?5standard?5call?0?5bu@ ; `string'
PUBLIC	??_C@_0O@LMDE@?6Object?5Def?3?5?$AA@		; `string'
PUBLIC	??_C@_09CJA@?6Entity?3?5?$AA@			; `string'
PUBLIC	??_C@_0N@LPFC@?6Attribute?3?5?$AA@		; `string'
PUBLIC	??_C@_0BN@IKOI@SetCursorFirstEntityByString?$AA@ ; `string'
PUBLIC	_SetCursorFirstEntityByString@20
EXTRN	_SysMessageBox@16:NEAR
EXTRN	_fnValidViewAttrib:NEAR
EXTRN	_strcat:NEAR
EXTRN	_UfStringToDateTime@8:NEAR
EXTRN	_GetDefaultContext@8:NEAR
EXTRN	_fnIssueCoreError:NEAR
;	COMDAT ??_C@_09PDHB@?$CIS?9?$DODT?$CJ?0?5?$AA@
; File C:\10C\A\oe\KZOECMAA.C
_DATA	SEGMENT
??_C@_09PDHB@?$CIS?9?$DODT?$CJ?0?5?$AA@ DB '(S->DT), ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0HD@GMPL@Failure?5during?5standard?5call?0?5bu@
_DATA	SEGMENT
??_C@_0HD@GMPL@Failure?5during?5standard?5call?0?5bu@ DB 'Failure during '
	DB	'standard call, but would have been successful if the default '
	DB	'context was used.', 0aH, 'Probable User Error.', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@LMDE@?6Object?5Def?3?5?$AA@
_DATA	SEGMENT
??_C@_0O@LMDE@?6Object?5Def?3?5?$AA@ DB 0aH, 'Object Def: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_09CJA@?6Entity?3?5?$AA@
_DATA	SEGMENT
??_C@_09CJA@?6Entity?3?5?$AA@ DB 0aH, 'Entity: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@LPFC@?6Attribute?3?5?$AA@
_DATA	SEGMENT
??_C@_0N@LPFC@?6Attribute?3?5?$AA@ DB 0aH, 'Attribute: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@IKOI@SetCursorFirstEntityByString?$AA@
_DATA	SEGMENT
??_C@_0BN@IKOI@SetCursorFirstEntityByString?$AA@ DB 'SetCursorFirstEntity'
	DB	'ByString', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcAttributeName$ = 16
_cpcStringValue$ = 20
_cpcScopingEntityName$ = 24
_lpCurrentTask$ = -48
_lpViewEntity$ = -20
_lpViewAttrib$ = -24
_lpScopingViewEntity$ = -28
_lpViewEntityCsr$ = -44
_lpScopingViewEntityCsr$ = -16
_lpDefaultContext$ = -8
_lpDomain$ = -4
_nRC$ = -12
_lControl$ = -40
_stInternalDateTime$ = -36
_sz$7776 = -304
_nRC2$7784 = -308
_sz$7787 = -824
_lpViewOD$7788 = -312
_SetCursorFirstEntityByString@20 PROC NEAR

; 633  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 828				; 0000033cH

; 634  :    LPTASK                 lpCurrentTask;
; 635  :    LPVIEWENTITY           lpViewEntity;
; 636  :    LPVIEWATTRIB           lpViewAttrib;
; 637  :    LPVIEWENTITY           lpScopingViewEntity;
; 638  :    LPVIEWENTITYCSR        lpViewEntityCsr;
; 639  :    LPVIEWENTITYCSR        lpScopingViewEntityCsr;
; 640  :    zLPCONTEXT             lpDefaultContext;
; 641  :    LPDOMAIN               lpDomain;
; 642  :    zSHORT                 nRC;
; 643  :    zLONG                  lControl = zPOS_FIRST;

	mov	DWORD PTR _lControl$[ebp], 1

; 644  :    DateTimeInternalRecord stInternalDateTime;
; 645  : 
; 646  :    // Validate parameters
; 647  :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 648  :                                            &lpViewEntity,
; 649  :                                            &lpScopingViewEntity,
; 650  :                                            &lpViewEntityCsr,
; 651  :                                            &lpScopingViewEntityCsr,
; 652  :                                            iSetCursorFirstEntityByString,
; 653  :                                            lpView,
; 654  :                                            cpcEntityName,
; 655  :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	170					; 000000aaH
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7770

; 657  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7757
$L7770:

; 659  : 
; 660  :    if ( (lpViewAttrib = fnValidViewAttrib( lpView, lpViewEntity,
; 661  :                                            cpcAttributeName, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _cpcAttributeName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	jne	SHORT $L7771

; 663  :       fnOperationReturn( iSetCursorFirstEntityByString, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	170					; 000000aaH
	call	_fnOperationReturn
	add	esp, 8

; 664  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7757
$L7771:

; 666  : 
; 667  :    if ( cpcStringValue && *cpcStringValue )

	cmp	DWORD PTR _cpcStringValue$[ebp], 0
	je	$L7772
	mov	ecx, DWORD PTR _cpcStringValue$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	$L7772

; 669  :       // Check to see if the attribute is really a date/time field.  This is
; 670  :       // kind of a hack to allow setting cursors by datetimes.
; 671  :       if ( lpViewAttrib->cType == zTYPE_DATETIME )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 84					; 00000054H
	jne	$L7773

; 673  :          lControl |= zQUAL_DATETIME;

	mov	edx, DWORD PTR _lControl$[ebp]
	or	dh, 8
	mov	DWORD PTR _lControl$[ebp], edx

; 674  :          if ( UfStringToDateTime( cpcStringValue,
; 675  :                                   (LPDATETIME) &stInternalDateTime ) != 0 )

	lea	eax, DWORD PTR _stInternalDateTime$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcStringValue$[ebp]
	push	ecx
	call	_UfStringToDateTime@8
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L7775

; 677  :             zCHAR sz[ 256 ];
; 678  : 
; 679  :             // "KZOEE263 - Input Qualifier cannot be converted to
; 680  :             //  internal attribute data type"
; 681  :             zstrcpy( sz, "(S->DT), " );

	push	OFFSET FLAT:??_C@_09PDHB@?$CIS?9?$DODT?$CJ?0?5?$AA@ ; `string'
	lea	eax, DWORD PTR _sz$7776[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 682  :             zstrcat( sz, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _sz$7776[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 683  :             fnIssueCoreError( lpCurrentTask, lpView, 8, 263, 0, sz, lpViewAttrib->szName );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _sz$7776[ebp]
	push	ecx
	push	0
	push	263					; 00000107H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 684  : 
; 685  :             fnOperationReturn( iSetCursorFirstEntityByString, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	170					; 000000aaH
	call	_fnOperationReturn
	add	esp, 8

; 686  :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7757
$L7775:

; 688  : 
; 689  :          // Change StringValue to point to internal datetime struct.
; 690  :          cpcStringValue = (zPCHAR) &stInternalDateTime;

	lea	edx, DWORD PTR _stInternalDateTime$[ebp]
	mov	DWORD PTR _cpcStringValue$[ebp], edx

; 692  :       else

	jmp	SHORT $L7779
$L7773:

; 693  :          lControl |= zQUAL_STRING;

	mov	eax, DWORD PTR _lControl$[ebp]
	or	ah, 4
	mov	DWORD PTR _lControl$[ebp], eax
$L7779:

; 695  :    else

	jmp	SHORT $L7780
$L7772:

; 696  :       lControl |= zQUAL_ATTR_NULL;

	mov	ecx, DWORD PTR _lControl$[ebp]
	or	ch, -128				; ffffff80H
	mov	DWORD PTR _lControl$[ebp], ecx
$L7780:

; 697  : 
; 698  :    lpDomain = zGETPTR( lpViewAttrib->hDomain );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+198]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax

; 699  :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 700  :                             lpViewAttrib, lControl | zIGNORE_ERROR_358,
; 701  :                             (zPVOID) cpcStringValue,
; 702  :                             0, 0, 0, lpScopingViewEntityCsr,
; 703  :                             0, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	edx
	push	0
	push	0
	push	0
	mov	eax, DWORD PTR _cpcStringValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lControl$[ebp]
	or	ecx, 4194304				; 00400000H
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 704  :    if ( nRC < zCURSOR_SET && lpDomain &&
; 705  :         lpDomain->cDomainType == zDM_TYPE_TABLE )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jge	$L7786
	cmp	DWORD PTR _lpDomain$[ebp], 0
	je	$L7786
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	movsx	edx, BYTE PTR [ecx+65]
	cmp	edx, 84					; 00000054H
	jne	$L7786

; 707  :       zSHORT nRC2;
; 708  : 
; 709  :       nRC2 = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 710  :                                 lpViewAttrib,
; 711  :                                 lControl | zTEST_CSR_RESULT | zIGNORE_ERROR_358,
; 712  :                                 (zPVOID) cpcStringValue,
; 713  :                                 0, 0, 0, lpScopingViewEntityCsr,
; 714  :                                 (GetDefaultContext( &lpDefaultContext, lpDomain )
; 715  :                                   ? lpDefaultContext->szName : 0),
; 716  :                                 lpCurrentTask );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpDefaultContext$[ebp]
	push	ecx
	call	_GetDefaultContext@8
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L9834
	mov	eax, DWORD PTR _lpDefaultContext$[ebp]
	add	eax, 6
	mov	DWORD PTR -828+[ebp], eax
	jmp	SHORT $L9835
$L9834:
	mov	DWORD PTR -828+[ebp], 0
$L9835:
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR -828+[ebp]
	push	edx
	mov	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	push	0
	push	0
	push	0
	mov	ecx, DWORD PTR _cpcStringValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lControl$[ebp]
	or	edx, 65536				; 00010000H
	or	edx, 4194304				; 00400000H
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC2$7784[ebp], ax

; 717  :       if ( nRC2 >= zCURSOR_SET )

	movsx	ecx, WORD PTR _nRC2$7784[ebp]
	test	ecx, ecx
	jl	$L7786

; 719  :          zCHAR    sz[ 512 ];
; 720  :          LPVIEWOD lpViewOD = zGETPTR( lpView->hViewOD );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$7788[ebp], eax

; 721  : 
; 722  :          zstrcpy( sz, "Failure during standard call, but would have been "
; 723  :                       "successful if the default context was used.\n"
; 724  :                       "Probable User Error." );

	push	OFFSET FLAT:??_C@_0HD@GMPL@Failure?5during?5standard?5call?0?5bu@ ; `string'
	lea	ecx, DWORD PTR _sz$7787[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 725  :          zstrcat( sz, "\nObject Def: " );

	push	OFFSET FLAT:??_C@_0O@LMDE@?6Object?5Def?3?5?$AA@ ; `string'
	lea	edx, DWORD PTR _sz$7787[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 726  :          zstrcat( sz, lpViewOD->szName );

	mov	eax, DWORD PTR _lpViewOD$7788[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _sz$7787[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 727  :          zstrcat( sz, "\nEntity: " );

	push	OFFSET FLAT:??_C@_09CJA@?6Entity?3?5?$AA@ ; `string'
	lea	edx, DWORD PTR _sz$7787[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 728  :          zstrcat( sz, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	lea	ecx, DWORD PTR _sz$7787[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 729  :          zstrcat( sz, "\nAttribute: " );

	push	OFFSET FLAT:??_C@_0N@LPFC@?6Attribute?3?5?$AA@ ; `string'
	lea	edx, DWORD PTR _sz$7787[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 730  :          zstrcat( sz, lpViewAttrib->szName );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _sz$7787[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 731  :          SysMessageBox( lpView, "SetCursorFirstEntityByString", sz, 1 );

	push	1
	lea	edx, DWORD PTR _sz$7787[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BN@IKOI@SetCursorFirstEntityByString?$AA@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysMessageBox@16
$L7786:

; 734  : 
; 735  :    fnOperationReturn( iSetCursorFirstEntityByString, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	170					; 000000aaH
	call	_fnOperationReturn
	add	esp, 8

; 736  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7757:

; 737  : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_SetCursorFirstEntityByString@20 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorNextEntityByString@20
PUBLIC	??_C@_0BM@EHFF@SetCursorNextEntityByString?$AA@	; `string'
;	COMDAT ??_C@_0BM@EHFF@SetCursorNextEntityByString?$AA@
; File C:\10C\A\oe\KZOECMAA.C
_DATA	SEGMENT
??_C@_0BM@EHFF@SetCursorNextEntityByString?$AA@ DB 'SetCursorNextEntityBy'
	DB	'String', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcAttributeName$ = 16
_cpcStringValue$ = 20
_cpcScopingEntityName$ = 24
_lpCurrentTask$ = -48
_lpViewEntity$ = -20
_lpViewAttrib$ = -24
_lpScopingViewEntity$ = -28
_lpViewEntityCsr$ = -44
_lpScopingViewEntityCsr$ = -16
_lpDefaultContext$ = -8
_lpDomain$ = -4
_nRC$ = -12
_lControl$ = -40
_stInternalDateTime$ = -36
_sz$7824 = -304
_nRC2$7831 = -308
_sz$7834 = -824
_lpViewOD$7835 = -312
_SetCursorNextEntityByString@20 PROC NEAR

; 763  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 828				; 0000033cH

; 764  :    LPTASK                 lpCurrentTask;
; 765  :    LPVIEWENTITY           lpViewEntity;
; 766  :    LPVIEWATTRIB           lpViewAttrib;
; 767  :    LPVIEWENTITY           lpScopingViewEntity;
; 768  :    LPVIEWENTITYCSR        lpViewEntityCsr;
; 769  :    LPVIEWENTITYCSR        lpScopingViewEntityCsr;
; 770  :    zLPCONTEXT             lpDefaultContext;
; 771  :    LPDOMAIN               lpDomain;
; 772  :    zSHORT                 nRC;
; 773  :    zLONG                  lControl = zPOS_NEXT;

	mov	DWORD PTR _lControl$[ebp], 3

; 774  :    DateTimeInternalRecord stInternalDateTime;
; 775  : 
; 776  :    // Validate parameters
; 777  :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 778  :                                            &lpViewEntity,
; 779  :                                            &lpScopingViewEntity,
; 780  :                                            &lpViewEntityCsr,
; 781  :                                            &lpScopingViewEntityCsr,
; 782  :                                            iSetCursorNextEntityByString,
; 783  :                                            lpView,
; 784  :                                            cpcEntityName,
; 785  :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	171					; 000000abH
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7818

; 787  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7805
$L7818:

; 789  : 
; 790  :    if ( (lpViewAttrib = fnValidViewAttrib( lpView, lpViewEntity,
; 791  :                                            cpcAttributeName, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _cpcAttributeName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	jne	SHORT $L7819

; 793  :       fnOperationReturn( iSetCursorNextEntityByString, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	171					; 000000abH
	call	_fnOperationReturn
	add	esp, 8

; 794  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7805
$L7819:

; 796  : 
; 797  :    if ( cpcStringValue && *cpcStringValue )

	cmp	DWORD PTR _cpcStringValue$[ebp], 0
	je	$L7820
	mov	ecx, DWORD PTR _cpcStringValue$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	$L7820

; 799  :       // Check to see if the attribute is really a date/time field.  This is
; 800  :       // kind of a hack to allow setting cursors by datetimes.
; 801  :       if ( lpViewAttrib->cType == zTYPE_DATETIME )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 84					; 00000054H
	jne	$L7821

; 803  :          lControl |= zQUAL_DATETIME;

	mov	edx, DWORD PTR _lControl$[ebp]
	or	dh, 8
	mov	DWORD PTR _lControl$[ebp], edx

; 804  :          if ( UfStringToDateTime( cpcStringValue,
; 805  :                                   (LPDATETIME) &stInternalDateTime ) != 0 )

	lea	eax, DWORD PTR _stInternalDateTime$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcStringValue$[ebp]
	push	ecx
	call	_UfStringToDateTime@8
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L7823

; 807  :             zCHAR sz[ 256 ];
; 808  : 
; 809  :             // "KZOEE263 - Input Qualifier cannot be converted to
; 810  :             //  internal attribute data type"
; 811  :             zstrcpy( sz, "(S->DT), " );

	push	OFFSET FLAT:??_C@_09PDHB@?$CIS?9?$DODT?$CJ?0?5?$AA@ ; `string'
	lea	eax, DWORD PTR _sz$7824[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 812  :             zstrcat( sz, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _sz$7824[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 813  :             fnIssueCoreError( lpCurrentTask, lpView, 8, 263, 0, sz, lpViewAttrib->szName );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _sz$7824[ebp]
	push	ecx
	push	0
	push	263					; 00000107H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 814  : 
; 815  :             fnOperationReturn( iSetCursorFirstEntityByString, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	170					; 000000aaH
	call	_fnOperationReturn
	add	esp, 8

; 816  :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7805
$L7823:

; 818  : 
; 819  :          // Change StringValue to point to internal datetime struct.
; 820  :          cpcStringValue = (zPCHAR) &stInternalDateTime;

	lea	edx, DWORD PTR _stInternalDateTime$[ebp]
	mov	DWORD PTR _cpcStringValue$[ebp], edx

; 822  :       else

	jmp	SHORT $L7826
$L7821:

; 823  :          lControl |= zQUAL_STRING;

	mov	eax, DWORD PTR _lControl$[ebp]
	or	ah, 4
	mov	DWORD PTR _lControl$[ebp], eax
$L7826:

; 825  :    else

	jmp	SHORT $L7827
$L7820:

; 826  :       lControl |= zQUAL_ATTR_NULL;

	mov	ecx, DWORD PTR _lControl$[ebp]
	or	ch, -128				; ffffff80H
	mov	DWORD PTR _lControl$[ebp], ecx
$L7827:

; 827  : 
; 828  :    lpDomain = zGETPTR( lpViewAttrib->hDomain );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+198]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax

; 829  :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 830  :                             lpViewAttrib, lControl | zIGNORE_ERROR_358,
; 831  :                             (zPVOID) cpcStringValue,
; 832  :                             0, 0, 0, lpScopingViewEntityCsr,
; 833  :                             0, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	edx
	push	0
	push	0
	push	0
	mov	eax, DWORD PTR _cpcStringValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lControl$[ebp]
	or	ecx, 4194304				; 00400000H
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 834  :    if ( nRC < zCURSOR_SET && lpDomain &&
; 835  :         lpDomain->cDomainType == zDM_TYPE_TABLE )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jge	$L7833
	cmp	DWORD PTR _lpDomain$[ebp], 0
	je	$L7833
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	movsx	edx, BYTE PTR [ecx+65]
	cmp	edx, 84					; 00000054H
	jne	$L7833

; 837  :       zSHORT nRC2;
; 838  : 
; 839  :       nRC2 = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 840  :                                 lpViewAttrib,
; 841  :                                 lControl | zTEST_CSR_RESULT | zIGNORE_ERROR_358,
; 842  :                                 (zPVOID) cpcStringValue,
; 843  :                                 0, 0, 0, lpScopingViewEntityCsr,
; 844  :                                 (GetDefaultContext( &lpDefaultContext, lpDomain )
; 845  :                                   ? lpDefaultContext->szName : 0),
; 846  :                                 lpCurrentTask );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpDefaultContext$[ebp]
	push	ecx
	call	_GetDefaultContext@8
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L9837
	mov	eax, DWORD PTR _lpDefaultContext$[ebp]
	add	eax, 6
	mov	DWORD PTR -828+[ebp], eax
	jmp	SHORT $L9838
$L9837:
	mov	DWORD PTR -828+[ebp], 0
$L9838:
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR -828+[ebp]
	push	edx
	mov	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	push	0
	push	0
	push	0
	mov	ecx, DWORD PTR _cpcStringValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lControl$[ebp]
	or	edx, 65536				; 00010000H
	or	edx, 4194304				; 00400000H
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC2$7831[ebp], ax

; 847  :       if ( nRC2 >= zCURSOR_SET )

	movsx	ecx, WORD PTR _nRC2$7831[ebp]
	test	ecx, ecx
	jl	$L7833

; 849  :          zCHAR    sz[ 512 ];
; 850  :          LPVIEWOD lpViewOD = zGETPTR( lpView->hViewOD );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$7835[ebp], eax

; 851  : 
; 852  :          zstrcpy( sz, "Failure during standard call, but would have been "
; 853  :                       "successful if the default context was used.\n"
; 854  :                       "Probable User Error." );

	push	OFFSET FLAT:??_C@_0HD@GMPL@Failure?5during?5standard?5call?0?5bu@ ; `string'
	lea	ecx, DWORD PTR _sz$7834[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 855  :          zstrcat( sz, "\nObject Def: " );

	push	OFFSET FLAT:??_C@_0O@LMDE@?6Object?5Def?3?5?$AA@ ; `string'
	lea	edx, DWORD PTR _sz$7834[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 856  :          zstrcat( sz, lpViewOD->szName );

	mov	eax, DWORD PTR _lpViewOD$7835[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _sz$7834[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 857  :          zstrcat( sz, "\nEntity: " );

	push	OFFSET FLAT:??_C@_09CJA@?6Entity?3?5?$AA@ ; `string'
	lea	edx, DWORD PTR _sz$7834[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 858  :          zstrcat( sz, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	lea	ecx, DWORD PTR _sz$7834[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 859  :          zstrcat( sz, "\nAttribute: " );

	push	OFFSET FLAT:??_C@_0N@LPFC@?6Attribute?3?5?$AA@ ; `string'
	lea	edx, DWORD PTR _sz$7834[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 860  :          zstrcat( sz, lpViewAttrib->szName );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _sz$7834[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 861  :          SysMessageBox( lpView, "SetCursorNextEntityByString", sz, 1 );

	push	1
	lea	edx, DWORD PTR _sz$7834[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BM@EHFF@SetCursorNextEntityByString?$AA@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysMessageBox@16
$L7833:

; 864  : 
; 865  :    fnOperationReturn( iSetCursorNextEntityByString, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	171					; 000000abH
	call	_fnOperationReturn
	add	esp, 8

; 866  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7805:

; 867  : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_SetCursorNextEntityByString@20 ENDP
_TEXT	ENDS
PUBLIC	_fnIntegerMatchesAttributeValue
_TEXT	SEGMENT
_lIntegerValue$ = 8
_lOperator$ = 12
_lpEntityInstance$ = 16
_lpViewAttrib$ = 20
_lplLong$ = -4
_lpRecord$ = -12
_nRC$ = -8
_fnIntegerMatchesAttributeValue PROC NEAR

; 889  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 890  :    zPLONG   lplLong;
; 891  :    zPCHAR   lpRecord;
; 892  :    zSHORT   nRC;
; 893  : 
; 894  :    lpRecord = fnRecordForEntityAttr( lpEntityInstance, lpViewAttrib );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	call	_fnRecordForEntityAttr
	add	esp, 8
	mov	DWORD PTR _lpRecord$[ebp], eax

; 895  : 
; 896  :    if ( lpRecord && lpViewAttrib->cType == 'L' )

	cmp	DWORD PTR _lpRecord$[ebp], 0
	je	SHORT $L7851
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	eax, BYTE PTR [edx+202]
	cmp	eax, 76					; 0000004cH
	jne	SHORT $L7851

; 898  :       lpRecord += lpViewAttrib->ulRecordOffset;

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR _lpRecord$[ebp]
	add	edx, DWORD PTR [ecx+250]
	mov	DWORD PTR _lpRecord$[ebp], edx

; 899  :       lplLong  = (zPLONG) lpRecord;

	mov	eax, DWORD PTR _lpRecord$[ebp]
	mov	DWORD PTR _lplLong$[ebp], eax

; 900  :       if ( *lplLong == lIntegerValue )

	mov	ecx, DWORD PTR _lplLong$[ebp]
	mov	edx, DWORD PTR [ecx]
	cmp	edx, DWORD PTR _lIntegerValue$[ebp]
	jne	SHORT $L7853

; 901  :          nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 902  :       else

	jmp	SHORT $L7854
$L7853:

; 903  :          nRC = (*lplLong < lIntegerValue) ? -1 : 1;

	mov	eax, DWORD PTR _lplLong$[ebp]
	mov	ecx, DWORD PTR [eax]
	xor	edx, edx
	cmp	ecx, DWORD PTR _lIntegerValue$[ebp]
	setge	dl
	dec	edx
	and	edx, -2					; fffffffeH
	add	edx, 1
	mov	WORD PTR _nRC$[ebp], dx
$L7854:

; 904  : 
; 905  :       return( fnQualOperatorMatchesRC( lOperator, nRC ) );

	mov	ax, WORD PTR _nRC$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lOperator$[ebp]
	push	ecx
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	movsx	eax, ax
	jmp	SHORT $L7847
$L7851:

; 907  : 
; 908  :    return( 0 );  // failure

	xor	eax, eax
$L7847:

; 909  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnIntegerMatchesAttributeValue ENDP
_TEXT	ENDS
PUBLIC	_fnDecimalMatchesAttributeValue
_TEXT	SEGMENT
_dDecimalValue$ = 8
_lOperator$ = 48
_lpEntityInstance$ = 52
_lpViewAttrib$ = 56
_nRC$ = -4
_lpDecimal$ = -16
_lpRecord$ = -8
_lpViewOI$ = -12
_fnDecimalMatchesAttributeValue PROC NEAR

; 931  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 932  :    zSHORT    nRC;
; 933  :    zPDECIMAL lpDecimal;
; 934  :    zPCHAR    lpRecord;
; 935  :    LPVIEWOI  lpViewOI = zGETPTR( lpEntityInstance->hViewOI );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 936  : 
; 937  :    lpRecord = fnRecordForEntityAttr( lpEntityInstance, lpViewAttrib );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	call	_fnRecordForEntityAttr
	add	esp, 8
	mov	DWORD PTR _lpRecord$[ebp], eax

; 938  : 
; 939  :    if ( lpRecord && lpViewAttrib->cType == zTYPE_DECIMAL )

	cmp	DWORD PTR _lpRecord$[ebp], 0
	je	SHORT $L7870
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	cmp	edx, 77					; 0000004dH
	jne	SHORT $L7870

; 941  :       lpRecord += lpViewAttrib->ulRecordOffset;

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR _lpRecord$[ebp]
	add	ecx, DWORD PTR [eax+250]
	mov	DWORD PTR _lpRecord$[ebp], ecx

; 942  :       lpDecimal  = (zPDECIMAL) lpRecord;

	mov	edx, DWORD PTR _lpRecord$[ebp]
	mov	DWORD PTR _lpDecimal$[ebp], edx

; 943  :       nRC = SysCompareDecimalToDecimal( lpDecimal, &dDecimalValue );

	lea	eax, DWORD PTR _dDecimalValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDecimal$[ebp]
	push	ecx
	call	_SysCompareDecimalToDecimal@8
	mov	WORD PTR _nRC$[ebp], ax

; 944  :       return( fnQualOperatorMatchesRC( lOperator, nRC ) );

	mov	dx, WORD PTR _nRC$[ebp]
	push	edx
	mov	eax, DWORD PTR _lOperator$[ebp]
	push	eax
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	movsx	eax, ax
	jmp	SHORT $L7864
$L7870:

; 946  : 
; 947  :    return( 0 );  // failure

	xor	eax, eax
$L7864:

; 948  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnDecimalMatchesAttributeValue ENDP
_TEXT	ENDS
PUBLIC	_fnDateTimeMatchesAttributeValue@16
_TEXT	SEGMENT
_lpDateTime$ = 8
_lOperator$ = 12
_lpEntityInstance$ = 16
_lpViewAttrib$ = 20
_lpTempDateTime$ = -8
_nRC$ = -4
_lpRecord$ = -12
_fnDateTimeMatchesAttributeValue@16 PROC NEAR

; 970  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 971  :    LPDTINTERNAL lpTempDateTime;
; 972  :    zSHORT       nRC;
; 973  :    zPCHAR       lpRecord;
; 974  : 
; 975  :    lpRecord = fnRecordForEntityAttr( lpEntityInstance, lpViewAttrib );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	call	_fnRecordForEntityAttr
	add	esp, 8
	mov	DWORD PTR _lpRecord$[ebp], eax

; 976  : 
; 977  :    if ( lpRecord && lpViewAttrib->cType == zTYPE_DATETIME )

	cmp	DWORD PTR _lpRecord$[ebp], 0
	je	$L7885
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	eax, BYTE PTR [edx+202]
	cmp	eax, 84					; 00000054H
	jne	$L7885

; 979  :       lpRecord += lpViewAttrib->ulRecordOffset;

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR _lpRecord$[ebp]
	add	edx, DWORD PTR [ecx+250]
	mov	DWORD PTR _lpRecord$[ebp], edx

; 980  :       lpTempDateTime = (LPDTINTERNAL) lpRecord;

	mov	eax, DWORD PTR _lpRecord$[ebp]
	mov	DWORD PTR _lpTempDateTime$[ebp], eax

; 981  :       if ( lpTempDateTime->ulDateMinutes == lpDateTime->ulDateMinutes )

	mov	ecx, DWORD PTR _lpTempDateTime$[ebp]
	mov	edx, DWORD PTR _lpDateTime$[ebp]
	mov	eax, DWORD PTR [ecx]
	cmp	eax, DWORD PTR [edx]
	jne	SHORT $L7887

; 983  :          if ( lpTempDateTime->usTSeconds == lpDateTime->usTSeconds )

	mov	ecx, DWORD PTR _lpTempDateTime$[ebp]
	xor	edx, edx
	mov	dx, WORD PTR [ecx+4]
	mov	eax, DWORD PTR _lpDateTime$[ebp]
	xor	ecx, ecx
	mov	cx, WORD PTR [eax+4]
	cmp	edx, ecx
	jne	SHORT $L7888

; 984  :             nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 985  :          else

	jmp	SHORT $L7889
$L7888:

; 986  :             nRC = (lpTempDateTime->usTSeconds <
; 987  :                                        lpDateTime->usTSeconds) ? -1 : 1;

	mov	edx, DWORD PTR _lpTempDateTime$[ebp]
	xor	eax, eax
	mov	ax, WORD PTR [edx+4]
	mov	ecx, DWORD PTR _lpDateTime$[ebp]
	xor	edx, edx
	mov	dx, WORD PTR [ecx+4]
	xor	ecx, ecx
	cmp	eax, edx
	setge	cl
	dec	ecx
	and	ecx, -2					; fffffffeH
	add	ecx, 1
	mov	WORD PTR _nRC$[ebp], cx
$L7889:

; 989  :       else

	jmp	SHORT $L7890
$L7887:

; 990  :          nRC = (lpTempDateTime->ulDateMinutes <
; 991  :                                          lpDateTime->ulDateMinutes) ? -1 : 1;

	mov	edx, DWORD PTR _lpTempDateTime$[ebp]
	mov	eax, DWORD PTR _lpDateTime$[ebp]
	mov	ecx, DWORD PTR [edx]
	cmp	ecx, DWORD PTR [eax]
	sbb	edx, edx
	and	edx, -2					; fffffffeH
	add	edx, 1
	mov	WORD PTR _nRC$[ebp], dx
$L7890:

; 992  : 
; 993  :       return( fnQualOperatorMatchesRC( lOperator, nRC ) );

	mov	ax, WORD PTR _nRC$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lOperator$[ebp]
	push	ecx
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	movsx	eax, ax
	jmp	SHORT $L7881
$L7885:

; 995  : 
; 996  :    return( 0 );  // failure

	xor	eax, eax
$L7881:

; 997  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_fnDateTimeMatchesAttributeValue@16 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorFirstEntityByInteger@20
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcAttributeName$ = 16
_lIntegerValue$ = 20
_cpcScopingEntityName$ = 24
_lpCurrentTask$ = -28
_lpViewEntity$ = -12
_lpViewAttrib$ = -16
_lpScopingViewEntity$ = -20
_lpViewEntityCsr$ = -24
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorFirstEntityByInteger@20 PROC NEAR

; 1021 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 1022 :    LPTASK            lpCurrentTask;
; 1023 :    LPVIEWENTITY      lpViewEntity;
; 1024 :    LPVIEWATTRIB      lpViewAttrib;
; 1025 :    LPVIEWENTITY      lpScopingViewEntity;
; 1026 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1027 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 1028 :    zSHORT            nRC;
; 1029 : 
; 1030 :    // Validate parameters
; 1031 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1032 :                                            &lpViewEntity,
; 1033 :                                            &lpScopingViewEntity,
; 1034 :                                            &lpViewEntityCsr,
; 1035 :                                            &lpScopingViewEntityCsr,
; 1036 :                                            iSetCursorFirstEntityByInteger,
; 1037 :                                            lpView,
; 1038 :                                            cpcEntityName,
; 1039 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	172					; 000000acH
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7909

; 1041 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7901
$L7909:

; 1043 : 
; 1044 :    if ( (lpViewAttrib = fnValidViewAttrib( lpView, lpViewEntity,
; 1045 :                                            cpcAttributeName, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _cpcAttributeName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	jne	SHORT $L7910

; 1047 :       fnOperationReturn( iSetCursorFirstEntityByInteger, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	172					; 000000acH
	call	_fnOperationReturn
	add	esp, 8

; 1048 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7901
$L7910:

; 1050 : 
; 1051 :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 1052 :                             lpViewAttrib,
; 1053 :                             (zLONG) (zPOS_FIRST | zQUAL_INTEGER),
; 1054 :                             (zPVOID) &lIntegerValue,
; 1055 :                             0, 0, 0, lpScopingViewEntityCsr, 0,
; 1056 :                             lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	edx
	push	0
	push	0
	push	0
	lea	eax, DWORD PTR _lIntegerValue$[ebp]
	push	eax
	push	257					; 00000101H
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 1057 : 
; 1058 :    fnOperationReturn( iSetCursorFirstEntityByInteger, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	172					; 000000acH
	call	_fnOperationReturn
	add	esp, 8

; 1059 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7901:

; 1060 : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_SetCursorFirstEntityByInteger@20 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorNextEntityByInteger@20
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcAttributeName$ = 16
_lIntegerValue$ = 20
_cpcScopingEntityName$ = 24
_lpCurrentTask$ = -28
_lpViewEntity$ = -12
_lpViewAttrib$ = -16
_lpScopingViewEntity$ = -20
_lpViewEntityCsr$ = -24
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorNextEntityByInteger@20 PROC NEAR

; 1086 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 1087 :    LPTASK            lpCurrentTask;
; 1088 :    LPVIEWENTITY      lpViewEntity;
; 1089 :    LPVIEWATTRIB      lpViewAttrib;
; 1090 :    LPVIEWENTITY      lpScopingViewEntity;
; 1091 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1092 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 1093 :    zSHORT            nRC;
; 1094 : 
; 1095 :    // Validate parameters
; 1096 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1097 :                                            &lpViewEntity,
; 1098 :                                            &lpScopingViewEntity,
; 1099 :                                            &lpViewEntityCsr,
; 1100 :                                            &lpScopingViewEntityCsr,
; 1101 :                                            iSetCursorNextEntityByInteger,
; 1102 :                                            lpView,
; 1103 :                                            cpcEntityName,
; 1104 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	173					; 000000adH
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7932

; 1106 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7924
$L7932:

; 1108 : 
; 1109 :    if ( (lpViewAttrib = fnValidViewAttrib( lpView, lpViewEntity,
; 1110 :                                            cpcAttributeName, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _cpcAttributeName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	jne	SHORT $L7933

; 1112 :       fnOperationReturn( iSetCursorNextEntityByInteger, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	173					; 000000adH
	call	_fnOperationReturn
	add	esp, 8

; 1113 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7924
$L7933:

; 1115 : 
; 1116 :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 1117 :                             lpViewAttrib,
; 1118 :                             (zLONG) (zPOS_NEXT | zQUAL_INTEGER),
; 1119 :                             (zPVOID) &lIntegerValue,
; 1120 :                             0, 0, 0, lpScopingViewEntityCsr, 0,
; 1121 :                             lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	edx
	push	0
	push	0
	push	0
	lea	eax, DWORD PTR _lIntegerValue$[ebp]
	push	eax
	push	259					; 00000103H
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 1122 : 
; 1123 :    fnOperationReturn( iSetCursorNextEntityByInteger, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	173					; 000000adH
	call	_fnOperationReturn
	add	esp, 8

; 1124 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7924:

; 1125 : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_SetCursorNextEntityByInteger@20 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorFirstEntityByDecimal@56
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcAttributeName$ = 16
_dDecimalValue$ = 20
_cpcScopingEntityName$ = 60
_lpCurrentTask$ = -28
_lpViewEntity$ = -12
_lpViewAttrib$ = -16
_lpScopingViewEntity$ = -20
_lpViewEntityCsr$ = -24
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorFirstEntityByDecimal@56 PROC NEAR

; 1149 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 1150 :    LPTASK            lpCurrentTask;
; 1151 :    LPVIEWENTITY      lpViewEntity;
; 1152 :    LPVIEWATTRIB      lpViewAttrib;
; 1153 :    LPVIEWENTITY      lpScopingViewEntity;
; 1154 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1155 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 1156 :    zSHORT            nRC;
; 1157 : 
; 1158 :    // Validate parameters
; 1159 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1160 :                                            &lpViewEntity,
; 1161 :                                            &lpScopingViewEntity,
; 1162 :                                            &lpViewEntityCsr,
; 1163 :                                            &lpScopingViewEntityCsr,
; 1164 :                                            iSetCursorFirstEntityByDecimal,
; 1165 :                                            lpView,
; 1166 :                                            cpcEntityName,
; 1167 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	174					; 000000aeH
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7955

; 1169 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7947
$L7955:

; 1171 : 
; 1172 :    if ( (lpViewAttrib = fnValidViewAttrib( lpView, lpViewEntity,
; 1173 :                                            cpcAttributeName, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _cpcAttributeName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	jne	SHORT $L7956

; 1175 :       fnOperationReturn( iSetCursorFirstEntityByDecimal, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	174					; 000000aeH
	call	_fnOperationReturn
	add	esp, 8

; 1176 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7947
$L7956:

; 1178 : 
; 1179 :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 1180 :                             lpViewAttrib,
; 1181 :                             (zLONG) (zPOS_FIRST | zQUAL_DECIMAL),
; 1182 :                             (zPVOID) &dDecimalValue,
; 1183 :                             0, 0, 0, lpScopingViewEntityCsr, 0,
; 1184 :                             lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	edx
	push	0
	push	0
	push	0
	lea	eax, DWORD PTR _dDecimalValue$[ebp]
	push	eax
	push	513					; 00000201H
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 1185 : 
; 1186 :    fnOperationReturn( iSetCursorFirstEntityByDecimal, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	174					; 000000aeH
	call	_fnOperationReturn
	add	esp, 8

; 1187 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7947:

; 1188 : }

	mov	esp, ebp
	pop	ebp
	ret	56					; 00000038H
_SetCursorFirstEntityByDecimal@56 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorNextEntityByDecimal@56
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcAttributeName$ = 16
_dDecimalValue$ = 20
_cpcScopingEntityName$ = 60
_lpCurrentTask$ = -28
_lpViewEntity$ = -12
_lpViewAttrib$ = -16
_lpScopingViewEntity$ = -20
_lpViewEntityCsr$ = -24
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorNextEntityByDecimal@56 PROC NEAR

; 1214 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 1215 :    LPTASK            lpCurrentTask;
; 1216 :    LPVIEWENTITY      lpViewEntity;
; 1217 :    LPVIEWATTRIB      lpViewAttrib;
; 1218 :    LPVIEWENTITY      lpScopingViewEntity;
; 1219 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1220 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 1221 :    zSHORT            nRC;
; 1222 : 
; 1223 :    // Validate parameters
; 1224 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1225 :                                            &lpViewEntity,
; 1226 :                                            &lpScopingViewEntity,
; 1227 :                                            &lpViewEntityCsr,
; 1228 :                                            &lpScopingViewEntityCsr,
; 1229 :                                            iSetCursorNextEntityByDecimal,
; 1230 :                                            lpView,
; 1231 :                                            cpcEntityName,
; 1232 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	175					; 000000afH
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7978

; 1234 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7970
$L7978:

; 1236 : 
; 1237 :    if ( (lpViewAttrib = fnValidViewAttrib( lpView, lpViewEntity,
; 1238 :                                            cpcAttributeName, 0  )) == 0 )

	push	0
	mov	eax, DWORD PTR _cpcAttributeName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	jne	SHORT $L7979

; 1240 :       fnOperationReturn( iSetCursorNextEntityByDecimal, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	175					; 000000afH
	call	_fnOperationReturn
	add	esp, 8

; 1241 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7970
$L7979:

; 1243 : 
; 1244 :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 1245 :                             lpViewAttrib,
; 1246 :                             (zLONG) (zPOS_NEXT | zQUAL_DECIMAL),
; 1247 :                             (zPVOID) &dDecimalValue,
; 1248 :                             0, 0, 0, lpScopingViewEntityCsr, 0,
; 1249 :                             lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	edx
	push	0
	push	0
	push	0
	lea	eax, DWORD PTR _dDecimalValue$[ebp]
	push	eax
	push	515					; 00000203H
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 1250 : 
; 1251 :    fnOperationReturn( iSetCursorNextEntityByDecimal, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	175					; 000000afH
	call	_fnOperationReturn
	add	esp, 8

; 1252 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7970:

; 1253 : }

	mov	esp, ebp
	pop	ebp
	ret	56					; 00000038H
_SetCursorNextEntityByDecimal@56 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorRelativeEntity@16
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lPositionChange$ = 16
_cpcScopingEntityName$ = 20
_lpCurrentTask$ = -24
_lpViewEntity$ = -12
_lpScopingViewEntity$ = -16
_lpViewEntityCsr$ = -20
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorRelativeEntity@16 PROC NEAR

; 1279 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 1280 :    LPTASK            lpCurrentTask;
; 1281 :    LPVIEWENTITY      lpViewEntity;
; 1282 :    LPVIEWENTITY      lpScopingViewEntity;
; 1283 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1284 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 1285 :    zSHORT            nRC;
; 1286 : 
; 1287 :    // Validate parameters
; 1288 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1289 :                                            &lpViewEntity,
; 1290 :                                            &lpScopingViewEntity,
; 1291 :                                            &lpViewEntityCsr,
; 1292 :                                            &lpScopingViewEntityCsr,
; 1293 :                                            iSetCursorRelativeEntity,
; 1294 :                                            lpView,
; 1295 :                                            cpcEntityName,
; 1296 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	182					; 000000b6H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7998

; 1298 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L7991
$L7998:

; 1300 : 
; 1301 :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr, 0,
; 1302 :                             (zLONG) zPOS_RELATIVE, 0,
; 1303 :                             0, 0, lPositionChange,
; 1304 :                             lpScopingViewEntityCsr, 0,
; 1305 :                             lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lPositionChange$[ebp]
	push	edx
	push	0
	push	0
	push	0
	push	8
	push	0
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 1306 : 
; 1307 :    fnOperationReturn( iSetCursorRelativeEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	182					; 000000b6H
	call	_fnOperationReturn
	add	esp, 8

; 1308 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7991:

; 1309 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_SetCursorRelativeEntity@16 ENDP
_TEXT	ENDS
PUBLIC	_fnSelectedInstanceFarbler
PUBLIC	_GetRelativeEntityNumber@16
EXTRN	_g_pfnGetHndl:DWORD
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcScopingEntityName$ = 16
_lFlag$ = 20
_lpCurrentTask$ = -52
_lpViewCsr$ = -12
_lpViewEntity$ = -32
_lpScopingViewEntity$ = -36
_lpViewEntityCsr$ = -48
_lpScopingViewEntityCsr$ = -28
_lpSearchEntityInstance$ = -24
_nRC$ = -20
_lCount$ = -16
_nStopLevel$ = -8
_bSelectRelevant$ = -4
_nDesiredSelectState$ = -44
_l$ = -40
_GetRelativeEntityNumber@16 PROC NEAR

; 1343 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 52					; 00000034H

; 1344 :    LPTASK            lpCurrentTask;
; 1345 :    LPVIEWCSR         lpViewCsr;
; 1346 :    LPVIEWENTITY      lpViewEntity;
; 1347 :    LPVIEWENTITY      lpScopingViewEntity;
; 1348 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1349 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 1350 :    LPENTITYINSTANCE  lpSearchEntityInstance;
; 1351 :    zSHORT            nRC;
; 1352 :    zLONG             lCount;
; 1353 :    zSHORT            nStopLevel;
; 1354 :    zBOOL             bSelectRelevant;
; 1355 :    zSHORT            nDesiredSelectState;
; 1356 :    zLONG             l;
; 1357 : 
; 1358 :    if ( lFlag & zQUAL_SCOPE_OI )

	mov	eax, DWORD PTR _lFlag$[ebp]
	and	eax, 524288				; 00080000H
	test	eax, eax
	je	SHORT $L8023

; 1359 :       cpcScopingEntityName = (zCPCHAR) zSCOPE_OI;

	mov	DWORD PTR _cpcScopingEntityName$[ebp], 1
$L8023:

; 1360 : 
; 1361 :    // Validate parameters
; 1362 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1363 :                                            &lpViewEntity,
; 1364 :                                            &lpScopingViewEntity,
; 1365 :                                            &lpViewEntityCsr,
; 1366 :                                            &lpScopingViewEntityCsr,
; 1367 :                                            iGetRelativeEntityNumber,
; 1368 :                                            lpView,
; 1369 :                                            cpcEntityName,
; 1370 :                                            cpcScopingEntityName )) != 0 )

	mov	ecx, DWORD PTR _cpcScopingEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	183					; 000000b7H
	lea	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpScopingViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	SHORT $L8026

; 1372 :       return( nRC );

	movsx	eax, WORD PTR _nRC$[ebp]
	jmp	$L8009
$L8026:

; 1374 : 
; 1375 :    // If Selected and Unselected entities are requested, then the
; 1376 :    // Select state of the entity is not relevent.
; 1377 :    l = lFlag & (zQUAL_SELECTED | zQUAL_UNSELECTED);

	mov	ecx, DWORD PTR _lFlag$[ebp]
	and	ecx, 24576				; 00006000H
	mov	DWORD PTR _l$[ebp], ecx

; 1378 :    if ( l && (-l & l) == l )

	cmp	DWORD PTR _l$[ebp], 0
	je	SHORT $L8027
	mov	edx, DWORD PTR _l$[ebp]
	neg	edx
	and	edx, DWORD PTR _l$[ebp]
	cmp	edx, DWORD PTR _l$[ebp]
	jne	SHORT $L8027

; 1380 :       bSelectRelevant = TRUE;

	mov	BYTE PTR _bSelectRelevant$[ebp], 1

; 1381 :       nDesiredSelectState = (l == zQUAL_SELECTED);

	xor	eax, eax
	cmp	DWORD PTR _l$[ebp], 8192		; 00002000H
	sete	al
	mov	WORD PTR _nDesiredSelectState$[ebp], ax

; 1383 :    else

	jmp	SHORT $L8028
$L8027:

; 1384 :       bSelectRelevant = 0;

	mov	BYTE PTR _bSelectRelevant$[ebp], 0
$L8028:

; 1385 : 
; 1386 :    // Entity cursor and scoping entity established, now look
; 1387 :    // for a previous entity of the entity type within the
; 1388 :    // scoping entity
; 1389 :    lCount = 0;

	mov	DWORD PTR _lCount$[ebp], 0

; 1390 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1391 :    lpSearchEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 1392 :    if ( lpSearchEntityInstance == 0 )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	jne	SHORT $L8031

; 1394 :       fnOperationReturn( iGetRelativeEntityNumber, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	183					; 000000b7H
	call	_fnOperationReturn
	add	esp, 8

; 1395 :       return( zCURSOR_NULL );

	mov	eax, -3					; fffffffdH
	jmp	$L8009
$L8031:

; 1397 :    else
; 1398 :    if ( lpSearchEntityInstance->u.nInd.bHidden )

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8033

; 1400 :       fnOperationReturn( iGetRelativeEntityNumber, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	183					; 000000b7H
	call	_fnOperationReturn
	add	esp, 8

; 1401 :       return( zCURSOR_UNDEFINED );

	mov	eax, -2					; fffffffeH
	jmp	$L8009
$L8033:

; 1403 : 
; 1404 :    if ( cpcScopingEntityName != zSCOPE_OI &&
; 1405 :         (lpScopingViewEntityCsr == 0 ||
; 1406 :          lpScopingViewEntityCsr == zGETPTR( lpViewEntityCsr->hParent )) )

	cmp	DWORD PTR _cpcScopingEntityName$[ebp], 1
	je	$L8036
	cmp	DWORD PTR _lpScopingViewEntityCsr$[ebp], 0
	je	SHORT $L8037
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	DWORD PTR _lpScopingViewEntityCsr$[ebp], eax
	jne	SHORT $L8036
$L8037:

; 1408 :       while ( lpSearchEntityInstance->hPrevTwin )

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L8040

; 1410 :          lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevTwin );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 1411 :          if ( lpSearchEntityInstance->u.nInd.bHidden == FALSE &&
; 1412 :               (bSelectRelevant == FALSE ||
; 1413 :                (fnSelectedInstanceFarbler( lpViewCsr,
; 1414 :                                            lpViewEntity,
; 1415 :                                            zGETHNDL( lpSearchEntityInstance ), 1 )
; 1416 :                   == nDesiredSelectState)) )

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8043
	mov	ecx, DWORD PTR _bSelectRelevant$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L8044
	push	1
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	push	eax
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	push	ecx
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H
	movsx	edx, ax
	movsx	eax, WORD PTR _nDesiredSelectState$[ebp]
	cmp	edx, eax
	jne	SHORT $L8043
$L8044:

; 1418 :             lCount++;

	mov	ecx, DWORD PTR _lCount$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lCount$[ebp], ecx
$L8043:

; 1420 :       }

	jmp	SHORT $L8037
$L8040:

; 1422 :    else

	jmp	$L8053
$L8036:

; 1424 :       // We need to count within a scoping view entity csr
; 1425 :       if ( cpcScopingEntityName == zSCOPE_OI )

	cmp	DWORD PTR _cpcScopingEntityName$[ebp], 1
	jne	SHORT $L8047

; 1426 :          nStopLevel = 0;

	mov	WORD PTR _nStopLevel$[ebp], 0

; 1427 :       else

	jmp	SHORT $L8048
$L8047:

; 1428 :          nStopLevel = lpScopingViewEntityCsr->nLevel;

	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	ax, WORD PTR [edx+22]
	mov	WORD PTR _nStopLevel$[ebp], ax
$L8048:

; 1429 : 
; 1430 :       for ( lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevHier );
; 1431 :             lpSearchEntityInstance;
; 1432 :             lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevHier ) )

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
	jmp	SHORT $L8051
$L8052:
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
$L8051:
	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	$L8053

; 1434 :          if ( lpSearchEntityInstance->nLevel <= nStopLevel )

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nStopLevel$[ebp]
	cmp	eax, ecx
	jg	SHORT $L8054

; 1435 :             break;

	jmp	SHORT $L8053
$L8054:

; 1436 : 
; 1437 :          if ( zGETPTR( lpSearchEntityInstance->hViewEntity ) != lpViewEntity )

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpViewEntity$[ebp]
	je	SHORT $L8056

; 1438 :             continue;

	jmp	SHORT $L8052
$L8056:

; 1439 : 
; 1440 :          if ( lpSearchEntityInstance->nLevel != lpViewEntityCsr->nLevel )

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	cmp	edx, ecx
	je	SHORT $L8057

; 1441 :             continue;

	jmp	SHORT $L8052
$L8057:

; 1442 : 
; 1443 :          if ( lpSearchEntityInstance->u.nInd.bHidden )

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8058

; 1444 :             continue;

	jmp	SHORT $L8052
$L8058:

; 1445 : 
; 1446 :          if ( bSelectRelevant == FALSE ||
; 1447 :               fnSelectedInstanceFarbler( lpViewCsr, lpViewEntity,
; 1448 :                                          zGETHNDL( lpSearchEntityInstance ),
; 1449 :                                          1 ) == nDesiredSelectState )

	mov	ecx, DWORD PTR _bSelectRelevant$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L8061
	push	1
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	push	eax
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	push	ecx
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H
	movsx	edx, ax
	movsx	eax, WORD PTR _nDesiredSelectState$[ebp]
	cmp	edx, eax
	jne	SHORT $L8060
$L8061:

; 1451 :             lCount++;

	mov	ecx, DWORD PTR _lCount$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lCount$[ebp], ecx
$L8060:

; 1453 :       }

	jmp	$L8052
$L8053:

; 1455 : 
; 1456 :    fnOperationReturn( iGetRelativeEntityNumber, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	183					; 000000b7H
	call	_fnOperationReturn
	add	esp, 8

; 1457 :    return( lCount );

	mov	eax, DWORD PTR _lCount$[ebp]
$L8009:

; 1458 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_GetRelativeEntityNumber@16 ENDP
_TEXT	ENDS
PUBLIC	_fnCallListeners
PUBLIC	_fnResetCursorForViewChildren
PUBLIC	_SetCursorAbsolutePosition@12
EXTRN	_fnOperationCall:NEAR
EXTRN	_fnResetViewFromSubobject:NEAR
EXTRN	_SetViewToSubobject@8:NEAR
_TEXT	SEGMENT
_pchReturnEntityName$ = 8
_lpView$ = 12
_lPosition$ = 16
_lpCurrentTask$ = -24
_lpViewCsr$ = -4
_lpViewEntityCsr$ = -20
_lpSearchEntityInstance$ = -12
_lpViewOI$ = -16
_nRC$ = -8
_lpViewEntity$8089 = -28
_lpSearchViewEntity$8108 = -32
_SetCursorAbsolutePosition@12 PROC NEAR

; 1488 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 1489 :    LPTASK            lpCurrentTask;
; 1490 :    LPVIEWCSR         lpViewCsr;
; 1491 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1492 :    LPENTITYINSTANCE  lpSearchEntityInstance;
; 1493 :    LPVIEWOI          lpViewOI;
; 1494 :    zSHORT            nRC;
; 1495 : 
; 1496 :    // initial return entity name
; 1497 :    *pchReturnEntityName = 0;

	mov	eax, DWORD PTR _pchReturnEntityName$[ebp]
	mov	BYTE PTR [eax], 0

; 1498 : 
; 1499 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 1500 :    if ( (lpCurrentTask = fnOperationCall( iSetCursorAbsolutePosition,
; 1501 :                                           lpView, zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	187					; 000000bbH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8075

; 1503 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8068
$L8075:

; 1505 : 
; 1506 :    // Position must be greater than or equal zero.
; 1507 :    if ( lPosition < 0 )

	cmp	DWORD PTR _lPosition$[ebp], 0
	jge	SHORT $L8076

; 1509 :       fnOperationReturn( iSetCursorAbsolutePosition, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	187					; 000000bbH
	call	_fnOperationReturn
	add	esp, 8

; 1510 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8068
$L8076:

; 1512 : 
; 1513 :    // Get the root entity instance
; 1514 :    lpViewCsr              = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1515 :    lpViewOI               = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1516 :    lpSearchEntityInstance = zGETPTR( lpViewOI->hRootEntityInstance );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 1517 : 
; 1518 :    if ( lpSearchEntityInstance == 0 )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	jne	SHORT $L8080

; 1520 :       fnOperationReturn( iSetCursorAbsolutePosition, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	187					; 000000bbH
	call	_fnOperationReturn
	add	esp, 8

; 1521 :       return( zCURSOR_NULL );

	mov	ax, -3					; fffffffdH
	jmp	$L8068
$L8080:

; 1523 : 
; 1524 :    // count down the number of instances that are not hidden
; 1525 :    while ( lPosition > 0 || lpSearchEntityInstance->u.nInd.bHidden )

	cmp	DWORD PTR _lPosition$[ebp], 0
	jg	SHORT $L8084
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8083
$L8084:

; 1527 :       if ( lpSearchEntityInstance->u.nInd.bHidden == FALSE )

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8085

; 1528 :          lPosition--;

	mov	edx, DWORD PTR _lPosition$[ebp]
	sub	edx, 1
	mov	DWORD PTR _lPosition$[ebp], edx
$L8085:

; 1529 : 
; 1530 :       lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 1531 :       if ( lpSearchEntityInstance == 0 )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	jne	SHORT $L8087

; 1532 :          break;

	jmp	SHORT $L8083
$L8087:

; 1533 :    }

	jmp	SHORT $L8080
$L8083:

; 1534 : 
; 1535 :    if ( lPosition == 0 &&
; 1536 :         lpSearchEntityInstance && lpSearchEntityInstance->u.nInd.bHidden == FALSE )

	cmp	DWORD PTR _lPosition$[ebp], 0
	jne	$L8088
	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	$L8088
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	$L8088

; 1538 :       LPVIEWENTITY lpViewEntity = zGETPTR( lpSearchEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8089[ebp], eax

; 1539 : 
; 1540 :       // success
; 1541 : 
; 1542 :       // Check to see if the cursor is a hierarchical cursor.
; 1543 :       if ( lpViewCsr->hHierRootEntityInstance )

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	$L8091
$L8093:

; 1545 :          // Look for a View entity cursor which matches the entity instance.
; 1546 :          while ( TRUE )

	mov	ecx, 1
	test	ecx, ecx
	je	SHORT $L8094

; 1548 :             for ( lpViewEntityCsr = zGETPTR( lpViewCsr->hRootViewEntityCsr );
; 1549 :                   lpViewEntityCsr;
; 1550 :                   lpViewEntityCsr = zGETPTR( lpViewEntityCsr->hNextHier ) )

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax
	jmp	SHORT $L8097
$L8098:
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax
$L8097:
	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	SHORT $L8099

; 1552 :                if ( lpSearchEntityInstance->hViewEntity ==
; 1553 :                                                 lpViewEntityCsr->hViewEntity )

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [eax+2]
	cmp	edx, DWORD PTR [ecx+14]
	jne	SHORT $L8100

; 1555 :                   break;

	jmp	SHORT $L8099
$L8100:

; 1557 :             }

	jmp	SHORT $L8098
$L8099:

; 1558 : 
; 1559 :             if ( lpViewEntityCsr )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	SHORT $L8101

; 1560 :                break;

	jmp	SHORT $L8094
$L8101:

; 1561 : 
; 1562 :             fnResetViewFromSubobject( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnResetViewFromSubobject
	add	esp, 4

; 1563 :          }

	jmp	SHORT $L8093
$L8094:

; 1564 : 
; 1565 :          while ( lpViewEntityCsr->nLevel > lpSearchEntityInstance->nLevel )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	cmp	edx, ecx
	jle	SHORT $L8104

; 1566 :             fnResetViewFromSubobject( lpView );

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnResetViewFromSubobject
	add	esp, 4
	jmp	SHORT $L8094
$L8104:

; 1567 : 
; 1568 :          lpViewEntityCsr->hEntityInstance = zGETHNDL( lpSearchEntityInstance );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 1569 :          lpViewCsr->hHierEntityInstance = lpViewEntityCsr->hEntityInstance;

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+26], ecx

; 1570 :       // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 1571 :       //    SysMessageBox( 0, "SetCursorAbsolutePosition", "UNSET_CSR", -1 );
; 1572 : 
; 1573 :          fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnResetCursorForViewChildren
	add	esp, 4

; 1574 :          zstrcpy( pchReturnEntityName, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$8089[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _pchReturnEntityName$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 1575 :          nRC = zCURSOR_SET;

	mov	WORD PTR _nRC$[ebp], 0

; 1577 :       else

	jmp	$L8114
$L8091:

; 1579 :          lpViewEntityCsr = fnEstablishViewForInstance( lpView, 0,
; 1580 :                                                        lpSearchEntityInstance );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 1581 :          if ( lpViewEntity->bRecursive &&
; 1582 :               SetViewToSubobject( lpView, lpViewEntity->szName ) == 0 )

	mov	ecx, DWORD PTR _lpViewEntity$8089[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8107
	mov	eax, DWORD PTR _lpViewEntity$8089[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetViewToSubobject@8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L8107

; 1584 :             LPVIEWENTITY lpSearchViewEntity;
; 1585 : 
; 1586 :             // Find the recursive parent name.
; 1587 :             for ( lpSearchViewEntity = zGETPTR( lpSearchEntityInstance->hViewEntity );
; 1588 :                   lpSearchViewEntity->bRecursivePar == FALSE;
; 1589 :                   lpSearchViewEntity = zGETPTR( lpSearchViewEntity->hParent ) )

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8108[ebp], eax
	jmp	SHORT $L8111
$L8112:
	mov	edx, DWORD PTR _lpSearchViewEntity$8108[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8108[ebp], eax
$L8111:
	mov	ecx, DWORD PTR _lpSearchViewEntity$8108[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 29					; 0000001dH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8113

; 1591 :                ; // nothing needs to be done here.
; 1592 :             }

	jmp	SHORT $L8112
$L8113:

; 1593 : 
; 1594 :             zstrcpy( pchReturnEntityName, lpSearchViewEntity->szName );

	mov	eax, DWORD PTR _lpSearchViewEntity$8108[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _pchReturnEntityName$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 1595 :             nRC = zCURSOR_SET_RECURSIVECHILD;

	mov	WORD PTR _nRC$[ebp], 2

; 1597 :          else

	jmp	SHORT $L8114
$L8107:

; 1599 :             zstrcpy( pchReturnEntityName, lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$8089[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _pchReturnEntityName$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 1600 :             nRC = zCURSOR_SET;

	mov	WORD PTR _nRC$[ebp], 0
$L8114:

; 1603 : 
; 1604 :       fnCallListeners( lpView, pchReturnEntityName );

	mov	ecx, DWORD PTR _pchReturnEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnCallListeners
	add	esp, 8

; 1606 :    else

	jmp	SHORT $L8115
$L8088:

; 1608 :       // failure, just return zCURSOR_NULL for now...
; 1609 :       nRC = zCURSOR_NULL;

	mov	WORD PTR _nRC$[ebp], -3			; fffffffdH
$L8115:

; 1611 : 
; 1612 :    fnOperationReturn( iSetCursorAbsolutePosition, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	187					; 000000bbH
	call	_fnOperationReturn
	add	esp, 8

; 1613 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8068:

; 1614 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetCursorAbsolutePosition@12 ENDP
_TEXT	ENDS
PUBLIC	_GetAbsolutePositionForEntity@12
_TEXT	SEGMENT
_plReturnPosition$ = 8
_lpView$ = 12
_cpcEntityName$ = 16
_lpCurrentTask$ = -28
_lpViewCsr$ = -4
_lpViewEntity$ = -20
_lpViewEntityCsr$ = -24
_lpSearchEntityInstance$ = -16
_lCount$ = -12
_nRC$ = -8
_GetAbsolutePositionForEntity@12 PROC NEAR

; 1636 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 1637 :    LPTASK            lpCurrentTask;
; 1638 :    LPVIEWCSR         lpViewCsr;
; 1639 :    LPVIEWENTITY      lpViewEntity;
; 1640 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1641 :    LPENTITYINSTANCE  lpSearchEntityInstance;
; 1642 :    zLONG             lCount;
; 1643 :    zSHORT            nRC;
; 1644 : 
; 1645 :    *plReturnPosition = -1;   // init to -1

	mov	eax, DWORD PTR _plReturnPosition$[ebp]
	mov	DWORD PTR [eax], -1

; 1646 : 
; 1647 :    // Validate parameters
; 1648 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1649 :                                            &lpViewEntity,
; 1650 :                                            0,
; 1651 :                                            &lpViewEntityCsr,
; 1652 :                                            0,
; 1653 :                                            iGetAbsolutePositionForEntity,
; 1654 :                                            lpView,
; 1655 :                                            cpcEntityName,
; 1656 :                                            0 )) != 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	186					; 000000baH
	push	0
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	push	0
	lea	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	SHORT $L8130

; 1658 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8122
$L8130:

; 1660 : 
; 1661 :    // Entity cursor and scoping entity established, now look
; 1662 :    // for a previous entity of the entity type within the
; 1663 :    // scoping entity
; 1664 :    lCount = 0;

	mov	DWORD PTR _lCount$[ebp], 0

; 1665 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1666 :    lpSearchEntityInstance  = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 1667 :    if ( lpSearchEntityInstance == 0 )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	jne	SHORT $L8133

; 1669 :       fnOperationReturn( iGetAbsolutePositionForEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	186					; 000000baH
	call	_fnOperationReturn
	add	esp, 8

; 1670 :       return( zCURSOR_NULL );

	mov	ax, -3					; fffffffdH
	jmp	$L8122
$L8133:

; 1672 : 
; 1673 :    if ( lpSearchEntityInstance == UNSET_CSR ||
; 1674 :         lpSearchEntityInstance->u.nInd.bHidden )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 1
	je	SHORT $L8136
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8135
$L8136:

; 1676 :       fnOperationReturn( iGetAbsolutePositionForEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	186					; 000000baH
	call	_fnOperationReturn
	add	esp, 8

; 1677 :       return( zCURSOR_UNDEFINED );

	mov	ax, -2					; fffffffeH
	jmp	SHORT $L8122
$L8135:

; 1679 : 
; 1680 :    // We need to count entities.
; 1681 :    lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevHier );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
$L8139:

; 1682 :    while ( lpSearchEntityInstance )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L8140

; 1684 :       if ( lpSearchEntityInstance->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8141

; 1685 :          lCount++;

	mov	ecx, DWORD PTR _lCount$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lCount$[ebp], ecx
$L8141:

; 1686 : 
; 1687 :       lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevHier );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 1688 :    }

	jmp	SHORT $L8139
$L8140:

; 1689 : 
; 1690 :    *plReturnPosition = lCount;

	mov	ecx, DWORD PTR _plReturnPosition$[ebp]
	mov	edx, DWORD PTR _lCount$[ebp]
	mov	DWORD PTR [ecx], edx

; 1691 : 
; 1692 :    fnOperationReturn( iGetAbsolutePositionForEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	186					; 000000baH
	call	_fnOperationReturn
	add	esp, 8

; 1693 :    return( 0 );

	xor	ax, ax
$L8122:

; 1694 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_GetAbsolutePositionForEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_fnInstanceMatchesInstance
_TEXT	SEGMENT
_lpCompareInstance$ = 8
_lpSearchInstance$ = 12
_lpWrkEntityInstance$ = -4
_fnInstanceMatchesInstance PROC NEAR

; 1707 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 1708 :    LPENTITYINSTANCE lpWrkEntityInstance;
; 1709 : 
; 1710 :    if ( lpSearchInstance == lpCompareInstance )

	mov	eax, DWORD PTR _lpSearchInstance$[ebp]
	cmp	eax, DWORD PTR _lpCompareInstance$[ebp]
	jne	SHORT $L8150

; 1711 :       return( 1 );

	mov	eax, 1
	jmp	$L8148
$L8150:

; 1712 : 
; 1713 :    while ( lpSearchInstance->hPrevVsn )

	mov	ecx, DWORD PTR _lpSearchInstance$[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	SHORT $L8153

; 1714 :       lpSearchInstance = zGETPTR( lpSearchInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpSearchInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchInstance$[ebp], eax
	jmp	SHORT $L8150
$L8153:

; 1715 : 
; 1716 :    while ( lpCompareInstance->hPrevVsn )

	mov	ecx, DWORD PTR _lpCompareInstance$[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	SHORT $L8157

; 1717 :       lpCompareInstance = zGETPTR( lpCompareInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpCompareInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCompareInstance$[ebp], eax
	jmp	SHORT $L8153
$L8157:

; 1718 : 
; 1719 :    while ( lpSearchInstance )

	cmp	DWORD PTR _lpSearchInstance$[ebp], 0
	je	$L8161

; 1721 :       if ( lpSearchInstance == lpCompareInstance )

	mov	ecx, DWORD PTR _lpSearchInstance$[ebp]
	cmp	ecx, DWORD PTR _lpCompareInstance$[ebp]
	jne	SHORT $L8162

; 1722 :          return( 1 );

	mov	eax, 1
	jmp	$L8148
$L8162:

; 1723 : 
; 1724 :       if ( lpSearchInstance->hNextLinked )

	mov	edx, DWORD PTR _lpSearchInstance$[ebp]
	cmp	DWORD PTR [edx+42], 0
	je	SHORT $L8168

; 1726 :          for ( lpWrkEntityInstance = zGETPTR( lpSearchInstance->hNextLinked );
; 1727 :                lpWrkEntityInstance != lpSearchInstance;
; 1728 :                lpWrkEntityInstance =
; 1729 :                               zGETPTR( lpWrkEntityInstance->hNextLinked ) )

	mov	eax, DWORD PTR _lpSearchInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax
	jmp	SHORT $L8166
$L8167:
	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax
$L8166:
	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	cmp	ecx, DWORD PTR _lpSearchInstance$[ebp]
	je	SHORT $L8168

; 1731 :             if ( lpWrkEntityInstance == lpCompareInstance )

	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	cmp	edx, DWORD PTR _lpCompareInstance$[ebp]
	jne	SHORT $L8169

; 1732 :                return( 1 );

	mov	eax, 1
	jmp	SHORT $L8148
$L8169:

; 1733 :          }

	jmp	SHORT $L8167
$L8168:

; 1735 : 
; 1736 :       if ( lpCompareInstance->hNextVsn )

	mov	eax, DWORD PTR _lpCompareInstance$[ebp]
	cmp	DWORD PTR [eax+34], 0
	je	SHORT $L8170

; 1737 :          lpCompareInstance = zGETPTR( lpCompareInstance->hNextVsn );

	mov	ecx, DWORD PTR _lpCompareInstance$[ebp]
	mov	edx, DWORD PTR [ecx+34]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCompareInstance$[ebp], eax

; 1738 :       else

	jmp	SHORT $L8176
$L8170:

; 1740 :          lpSearchInstance = zGETPTR( lpSearchInstance->hNextVsn );

	mov	eax, DWORD PTR _lpSearchInstance$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchInstance$[ebp], eax
$L8175:

; 1741 :          while ( lpCompareInstance->hPrevVsn )

	mov	edx, DWORD PTR _lpCompareInstance$[ebp]
	cmp	DWORD PTR [edx+38], 0
	je	SHORT $L8176

; 1742 :             lpCompareInstance = zGETPTR( lpCompareInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpCompareInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCompareInstance$[ebp], eax
	jmp	SHORT $L8175
$L8176:

; 1744 :    }

	jmp	$L8157
$L8161:

; 1745 : 
; 1746 :    return( 0 );  // failure

	xor	eax, eax
$L8148:

; 1747 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnInstanceMatchesInstance ENDP
_TEXT	ENDS
PUBLIC	_SetCursorFirstEntityByAttr@28
_TEXT	SEGMENT
_lpCurrentTask$ = -40
_lpViewEntity$ = -16
_lpSrcViewEntity$ = -32
_lpScopingViewEntity$ = -24
_lpViewEntityCsr$ = -36
_lpSrcViewEntityCsr$ = -28
_lpScopingViewEntityCsr$ = -12
_lpViewAttrib$ = -20
_lpSrcViewAttrib$ = -4
_nRC$ = -8
_lpView$ = 8
_cpcEntityName$ = 12
_cpcAttributeName$ = 16
_lpSrcView$ = 20
_cpcSrcEntityName$ = 24
_cpcSrcAttributeName$ = 28
_cpcScopingEntityName$ = 32
_SetCursorFirstEntityByAttr@28 PROC NEAR

; 1775 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H

; 1776 :    LPTASK               lpCurrentTask;
; 1777 :    LPVIEWENTITY         lpViewEntity;
; 1778 :    LPVIEWENTITY         lpSrcViewEntity;
; 1779 :    LPVIEWENTITY         lpScopingViewEntity;
; 1780 :    LPVIEWENTITYCSR      lpViewEntityCsr;
; 1781 :    LPVIEWENTITYCSR      lpSrcViewEntityCsr;
; 1782 :    LPVIEWENTITYCSR      lpScopingViewEntityCsr;
; 1783 :    LPVIEWATTRIB         lpViewAttrib;
; 1784 :    LPVIEWATTRIB         lpSrcViewAttrib;
; 1785 :    zSHORT               nRC;
; 1786 : 
; 1787 :    // Validate parameters
; 1788 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1789 :                                            &lpViewEntity,
; 1790 :                                            &lpScopingViewEntity,
; 1791 :                                            &lpViewEntityCsr,
; 1792 :                                            &lpScopingViewEntityCsr,
; 1793 :                                            iSetCursorFirstEntityByAttr,
; 1794 :                                            lpView,
; 1795 :                                            cpcEntityName,
; 1796 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	176					; 000000b0H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8203

; 1798 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8192
$L8203:

; 1800 : 
; 1801 :    // Validate parameters
; 1802 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1803 :                                            &lpSrcViewEntity,
; 1804 :                                            0, // No scoping view entity
; 1805 :                                            &lpSrcViewEntityCsr,
; 1806 :                                            0,
; 1807 :                                            0, // do not pass oper id
; 1808 :                                            lpSrcView,
; 1809 :                                            cpcSrcEntityName,
; 1810 :                                            0 )) != 0 ) // No Src scoping ent

	push	0
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	push	0
	push	0
	lea	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	push	0
	lea	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8204

; 1812 :       fnOperationReturn( iSetCursorFirstEntityByAttr, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	176					; 000000b0H
	call	_fnOperationReturn
	add	esp, 8

; 1813 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8192
$L8204:

; 1815 : 
; 1816 :    // Validate the search attribute
; 1817 :    if ( (lpViewAttrib = fnValidViewAttrib( lpView, lpViewEntity,
; 1818 :                                            cpcAttributeName, 0 )) == 0 )

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
	jne	SHORT $L8205

; 1820 :       fnOperationReturn( iSetCursorFirstEntityByAttr, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	176					; 000000b0H
	call	_fnOperationReturn
	add	esp, 8

; 1821 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8192
$L8205:

; 1823 : 
; 1824 :    // Validate the qualification attribute
; 1825 :    if ( (lpSrcViewAttrib = fnValidViewAttrib( lpSrcView, lpSrcViewEntity,
; 1826 :                                               cpcSrcAttributeName, 0 )) == 0 )

	push	0
	mov	edx, DWORD PTR _cpcSrcAttributeName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpSrcViewAttrib$[ebp], eax
	cmp	DWORD PTR _lpSrcViewAttrib$[ebp], 0
	jne	SHORT $L8206

; 1828 :       fnOperationReturn( iSetCursorFirstEntityByAttr, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	176					; 000000b0H
	call	_fnOperationReturn
	add	esp, 8

; 1829 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8192
$L8206:

; 1831 : 
; 1832 :    // Now, position the cursor
; 1833 :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 1834 :                             lpViewAttrib,
; 1835 :                             (zLONG) (zPOS_FIRST | zQUAL_ENTITYATTR),
; 1836 :                             (zPVOID) lpSrcView, lpSrcViewEntityCsr,
; 1837 :                             lpSrcViewAttrib, 0,
; 1838 :                             lpScopingViewEntityCsr, 0,
; 1839 :                             lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpSrcViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	push	4097					; 00001001H
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 1840 : 
; 1841 :    fnOperationReturn( iSetCursorFirstEntityByAttr, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	176					; 000000b0H
	call	_fnOperationReturn
	add	esp, 8

; 1842 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8192:

; 1843 : }

	mov	esp, ebp
	pop	ebp
	ret	28					; 0000001cH
_SetCursorFirstEntityByAttr@28 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorNextEntityByAttr@28
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcAttributeName$ = 16
_lpSrcView$ = 20
_cpcSrcEntityName$ = 24
_cpcSrcAttributeName$ = 28
_cpcScopingEntityName$ = 32
_lpCurrentTask$ = -40
_lpViewEntity$ = -16
_lpSrcViewEntity$ = -32
_lpScopingViewEntity$ = -24
_lpViewEntityCsr$ = -36
_lpSrcViewEntityCsr$ = -28
_lpScopingViewEntityCsr$ = -12
_lpViewAttrib$ = -20
_lpSrcViewAttrib$ = -4
_nRC$ = -8
_SetCursorNextEntityByAttr@28 PROC NEAR

; 1871 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H

; 1872 :    LPTASK               lpCurrentTask;
; 1873 :    LPVIEWENTITY         lpViewEntity;
; 1874 :    LPVIEWENTITY         lpSrcViewEntity;
; 1875 :    LPVIEWENTITY         lpScopingViewEntity;
; 1876 :    LPVIEWENTITYCSR      lpViewEntityCsr;
; 1877 :    LPVIEWENTITYCSR      lpSrcViewEntityCsr;
; 1878 :    LPVIEWENTITYCSR      lpScopingViewEntityCsr;
; 1879 :    LPVIEWATTRIB         lpViewAttrib;
; 1880 :    LPVIEWATTRIB         lpSrcViewAttrib;
; 1881 :    zSHORT               nRC;
; 1882 : 
; 1883 :    // Validate parameters
; 1884 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1885 :                                            &lpViewEntity,
; 1886 :                                            &lpScopingViewEntity,
; 1887 :                                            &lpViewEntityCsr,
; 1888 :                                            &lpScopingViewEntityCsr,
; 1889 :                                            iSetCursorNextEntityByAttr,
; 1890 :                                            lpView,
; 1891 :                                            cpcEntityName,
; 1892 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	177					; 000000b1H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8235

; 1894 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8224
$L8235:

; 1896 : 
; 1897 :    // Validate parameters
; 1898 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1899 :                                            &lpSrcViewEntity,
; 1900 :                                            0, // No scoping view entity
; 1901 :                                            &lpSrcViewEntityCsr,
; 1902 :                                            0,
; 1903 :                                            0, // do not pass oper id
; 1904 :                                            lpSrcView,
; 1905 :                                            cpcSrcEntityName,
; 1906 :                                            0 )) != 0 ) //  no scoping entity

	push	0
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	push	0
	push	0
	lea	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	push	0
	lea	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8236

; 1908 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8224
$L8236:

; 1910 : 
; 1911 :    // Validate the search attribute
; 1912 :    if ( (lpViewAttrib = fnValidViewAttrib( lpView, lpViewEntity,
; 1913 :                                            cpcAttributeName, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _cpcAttributeName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	jne	SHORT $L8237

; 1915 :       fnOperationReturn( iSetCursorNextEntityByAttr, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	177					; 000000b1H
	call	_fnOperationReturn
	add	esp, 8

; 1916 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8224
$L8237:

; 1918 : 
; 1919 :    // Validate the qualification attribute
; 1920 :    if ( (lpSrcViewAttrib = fnValidViewAttrib( lpSrcView, lpSrcViewEntity,
; 1921 :                                               cpcSrcAttributeName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcSrcAttributeName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpSrcViewAttrib$[ebp], eax
	cmp	DWORD PTR _lpSrcViewAttrib$[ebp], 0
	jne	SHORT $L8238

; 1923 :       fnOperationReturn( iSetCursorNextEntityByAttr, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	177					; 000000b1H
	call	_fnOperationReturn
	add	esp, 8

; 1924 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8224
$L8238:

; 1926 : 
; 1927 :    // Now, position the cursor
; 1928 :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 1929 :                             lpViewAttrib,
; 1930 :                             (zLONG) (zPOS_NEXT | zQUAL_ENTITYATTR),
; 1931 :                             (zPVOID) lpSrcView, lpSrcViewEntityCsr,
; 1932 :                             lpSrcViewAttrib, 0,
; 1933 :                             lpScopingViewEntityCsr, 0,
; 1934 :                             lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpSrcViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	push	4099					; 00001003H
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 1935 : 
; 1936 :    fnOperationReturn( iSetCursorNextEntityByAttr, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	177					; 000000b1H
	call	_fnOperationReturn
	add	esp, 8

; 1937 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8224:

; 1938 : }

	mov	esp, ebp
	pop	ebp
	ret	28					; 0000001cH
_SetCursorNextEntityByAttr@28 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorFirstEntityByEntityCsr@20
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpSrcView$ = 16
_cpcSrcEntityName$ = 20
_cpcScopingEntityName$ = 24
_lpCurrentTask$ = -32
_lpViewEntity$ = -12
_lpSrcViewEntity$ = -24
_lpScopingViewEntity$ = -16
_lpViewEntityCsr$ = -28
_lpSrcViewEntityCsr$ = -20
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorFirstEntityByEntityCsr@20 PROC NEAR

; 1964 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 1965 :    LPTASK            lpCurrentTask;
; 1966 :    LPVIEWENTITY      lpViewEntity;
; 1967 :    LPVIEWENTITY      lpSrcViewEntity;
; 1968 :    LPVIEWENTITY      lpScopingViewEntity;
; 1969 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1970 :    LPVIEWENTITYCSR   lpSrcViewEntityCsr;
; 1971 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 1972 :    zSHORT            nRC;
; 1973 : 
; 1974 :    // Validate parameters
; 1975 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1976 :                                            &lpViewEntity,
; 1977 :                                            &lpScopingViewEntity,
; 1978 :                                            &lpViewEntityCsr,
; 1979 :                                            &lpScopingViewEntityCsr,
; 1980 :                                            iSetCursorFirstEntityByEntityCs,
; 1981 :                                            lpView,
; 1982 :                                            cpcEntityName,
; 1983 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	178					; 000000b2H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8261

; 1985 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8252
$L8261:

; 1987 : 
; 1988 :    // Validate parameters
; 1989 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 1990 :                                            &lpSrcViewEntity,
; 1991 :                                            0, // No scoping view entity
; 1992 :                                            &lpSrcViewEntityCsr,
; 1993 :                                            0,
; 1994 :                                            0, // do not pass oper id
; 1995 :                                            lpSrcView,
; 1996 :                                            cpcSrcEntityName,
; 1997 :                                            0 )) != 0 ) // no scoping entity

	push	0
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	push	0
	push	0
	lea	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	push	0
	lea	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8262

; 1999 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8252
$L8262:

; 2001 : 
; 2002 :    // Make sure the source view entity and the target view entity are
; 2003 :    // the same Entity type
; 2004 :    if ( lpViewEntity->lEREntTok != lpSrcViewEntity->lEREntTok )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+195]
	cmp	edx, DWORD PTR [ecx+195]
	je	SHORT $L8263

; 2006 :       // "KZOEE268 - Source and target entity types do not match"
; 2007 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 268, 0,
; 2008 :                         lpViewEntity->szName,
; 2009 :                         lpSrcViewEntity->szName );

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	268					; 0000010cH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2010 :       fnOperationReturn( iSetCursorFirstEntityByEntityCs, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	178					; 000000b2H
	call	_fnOperationReturn
	add	esp, 8

; 2011 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8252
$L8263:

; 2013 : 
; 2014 :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr, 0,
; 2015 :                             (zLONG) (zPOS_FIRST | zQUAL_ENTITYCSR),
; 2016 :                             (zPVOID) lpSrcView, lpSrcViewEntityCsr,
; 2017 :                             0, 0,
; 2018 :                             lpScopingViewEntityCsr, 0,
; 2019 :                             lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	push	0
	push	0
	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	push	2097153					; 00200001H
	push	0
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 2020 : 
; 2021 :    fnOperationReturn( iSetCursorFirstEntityByEntityCs, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	178					; 000000b2H
	call	_fnOperationReturn
	add	esp, 8

; 2022 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8252:

; 2023 : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_SetCursorFirstEntityByEntityCsr@20 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorNextEntityByEntityCsr@20
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpSrcView$ = 16
_cpcSrcEntityName$ = 20
_cpcScopingEntityName$ = 24
_lpCurrentTask$ = -32
_lpViewEntity$ = -12
_lpSrcViewEntity$ = -24
_lpScopingViewEntity$ = -16
_lpViewEntityCsr$ = -28
_lpSrcViewEntityCsr$ = -20
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorNextEntityByEntityCsr@20 PROC NEAR

; 2051 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 2052 :    LPTASK            lpCurrentTask;
; 2053 :    LPVIEWENTITY      lpViewEntity;
; 2054 :    LPVIEWENTITY      lpSrcViewEntity;
; 2055 :    LPVIEWENTITY      lpScopingViewEntity;
; 2056 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 2057 :    LPVIEWENTITYCSR   lpSrcViewEntityCsr;
; 2058 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 2059 :    zSHORT            nRC;
; 2060 : 
; 2061 :    // Validate parameters
; 2062 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 2063 :                                            &lpViewEntity,
; 2064 :                                            &lpScopingViewEntity,
; 2065 :                                            &lpViewEntityCsr,
; 2066 :                                            &lpScopingViewEntityCsr,
; 2067 :                                            iSetCursorNextEntityByEntityCsr,
; 2068 :                                            lpView,
; 2069 :                                            cpcEntityName,
; 2070 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	179					; 000000b3H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8286

; 2072 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8277
$L8286:

; 2074 : 
; 2075 :    // Validate parameters
; 2076 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 2077 :                                            &lpSrcViewEntity,
; 2078 :                                            0, // No scoping view entity
; 2079 :                                            &lpSrcViewEntityCsr,
; 2080 :                                            0,
; 2081 :                                            0, // do not pass oper id
; 2082 :                                            lpSrcView,
; 2083 :                                            cpcSrcEntityName,
; 2084 :                                            0 )) != 0 ) // no scoping entity

	push	0
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	push	0
	push	0
	lea	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	push	0
	lea	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8287

; 2086 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8277
$L8287:

; 2088 : 
; 2089 :    // Make sure the source view entity and the target view entity are
; 2090 :    // the same Entity type
; 2091 :    if ( lpViewEntity->lEREntTok != lpSrcViewEntity->lEREntTok )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+195]
	cmp	edx, DWORD PTR [ecx+195]
	je	SHORT $L8288

; 2093 :       // "KZOEE268 - Source and target entity types do not match"
; 2094 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 268, 0,
; 2095 :                         lpViewEntity->szName,
; 2096 :                         lpSrcViewEntity->szName );

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	268					; 0000010cH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2097 :       fnOperationReturn( iSetCursorNextEntityByEntityCsr, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	179					; 000000b3H
	call	_fnOperationReturn
	add	esp, 8

; 2098 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8277
$L8288:

; 2100 : 
; 2101 :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr, 0,
; 2102 :                             (zLONG) (zPOS_NEXT | zQUAL_ENTITYCSR),
; 2103 :                             (zPVOID) lpSrcView, lpSrcViewEntityCsr,
; 2104 :                             0, 0,
; 2105 :                             lpScopingViewEntityCsr, 0,
; 2106 :                             lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	push	0
	push	0
	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	push	2097155					; 00200003H
	push	0
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 2107 : 
; 2108 :    fnOperationReturn( iSetCursorNextEntityByEntityCsr, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	179					; 000000b3H
	call	_fnOperationReturn
	add	esp, 8

; 2109 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8277:

; 2110 : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_SetCursorNextEntityByEntityCsr@20 ENDP
_TEXT	ENDS
PUBLIC	_DefineHierarchicalCursor@8
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -20
_lpViewCsr$ = -4
_lpViewEntity$ = -8
_lpViewEntityCsr$ = -16
_lpRootViewEntityCsr$ = -12
_DefineHierarchicalCursor@8 PROC NEAR

; 2137 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 2138 :    LPTASK           lpCurrentTask;
; 2139 :    LPVIEWCSR        lpViewCsr;
; 2140 :    LPVIEWENTITY     lpViewEntity;
; 2141 :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 2142 :    LPVIEWENTITYCSR  lpRootViewEntityCsr;
; 2143 : 
; 2144 :    if ( fnValidateCursorParameters( &lpCurrentTask,
; 2145 :                                     &lpViewEntity,
; 2146 :                                     0,
; 2147 :                                     &lpViewEntityCsr,
; 2148 :                                     0,
; 2149 :                                     iDefineHierarchicalCursor,
; 2150 :                                     lpView,
; 2151 :                                     cpcEntityName,
; 2152 :                                     0 ) )

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	190					; 000000beH
	push	0
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	push	0
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8302

; 2154 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8296
$L8302:

; 2156 : 
; 2157 :    // Now that the parameters look OK set the hierarchical cursor in
; 2158 :    // the ViewCsr
; 2159 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2160 :    lpRootViewEntityCsr = zGETPTR( lpViewCsr->hRootViewEntityCsr );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootViewEntityCsr$[ebp], eax

; 2161 :    lpViewCsr->hHierRootEntityInstance = lpRootViewEntityCsr->hEntityInstance;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR _lpRootViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	mov	DWORD PTR [ecx+22], eax

; 2162 :    if ( lpViewEntityCsr )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	SHORT $L8305

; 2163 :       lpViewCsr->hHierEntityInstance = lpViewEntityCsr->hEntityInstance;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	mov	DWORD PTR [ecx+26], eax

; 2164 :    else

	jmp	SHORT $L8306
$L8305:

; 2165 :       lpViewCsr->hHierEntityInstance = UNSET_CSR;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	DWORD PTR [ecx+26], 1
$L8306:

; 2166 : 
; 2167 :    fnOperationReturn( iDefineHierarchicalCursor, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	190					; 000000beH
	call	_fnOperationReturn
	add	esp, 8

; 2168 :    return( 0 );

	xor	ax, ax
$L8296:

; 2169 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_DefineHierarchicalCursor@8 ENDP
_TEXT	ENDS
PUBLIC	_DropHierarchicalCursor@4
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -8
_lpViewCsr$ = -4
_DropHierarchicalCursor@4 PROC NEAR

; 2186 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 2187 :    LPTASK    lpCurrentTask;
; 2188 :    LPVIEWCSR lpViewCsr;
; 2189 : 
; 2190 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 2191 :    if ( (lpCurrentTask = fnOperationCall( iDropHierarchicalCursor,
; 2192 :                                           lpView, zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	191					; 000000bfH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8313

; 2194 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8310
$L8313:

; 2196 : 
; 2197 :    // We drop the cursor regardless of whether is is currently set or not.
; 2198 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2199 :    lpViewCsr->hHierRootEntityInstance = 0;

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	DWORD PTR [eax+22], 0

; 2200 :    lpViewCsr->hHierEntityInstance = 0;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	DWORD PTR [ecx+26], 0

; 2201 : 
; 2202 :    fnOperationReturn( iDropHierarchicalCursor, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	191					; 000000bfH
	call	_fnOperationReturn
	add	esp, 8

; 2203 :    return( 0 );

	xor	ax, ax
$L8310:

; 2204 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_DropHierarchicalCursor@4 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorNextEntityHierarchical@12
_TEXT	SEGMENT
_lpnReturnLevel$ = 8
_pchReturnEntityName$ = 12
_lpView$ = 16
_lpCurrentTask$ = -24
_lpViewCsr$ = -4
_lpViewEntityCsr$ = -20
_lpEntityInstance$ = -12
_nStartLevel$ = -16
_nRC$ = -8
_lpHierRootEntityInstance$8340 = -28
_lpViewEntity$8361 = -32
_SetCursorNextEntityHierarchical@12 PROC NEAR

; 2242 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 2243 :    LPTASK            lpCurrentTask;
; 2244 :    LPVIEWCSR         lpViewCsr;
; 2245 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 2246 :    LPENTITYINSTANCE  lpEntityInstance;
; 2247 :    zSHORT            nStartLevel;
; 2248 :    zSHORT            nRC;
; 2249 : 
; 2250 :    // Validate parameters.
; 2251 :    if ( fnValidateCursorParameters( &lpCurrentTask,
; 2252 :                                     0, 0, 0, 0,
; 2253 :                                     iSetCursorNextEntityHierarchica,
; 2254 :                                     lpView, 0, 0 ) )

	push	0
	push	0
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	192					; 000000c0H
	push	0
	push	0
	push	0
	push	0
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8328

; 2256 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8321
$L8328:

; 2258 : 
; 2259 :    // Default RC to zCURSOR_SET
; 2260 :    nRC = zCURSOR_SET;

	mov	WORD PTR _nRC$[ebp], 0

; 2261 : 
; 2262 :    // Get View Cursor
; 2263 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2264 :    lpEntityInstance = zGETPTR( lpViewCsr->hHierEntityInstance );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2265 :    if ( lpEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 1
	jne	SHORT $L8332

; 2267 :       lpEntityInstance = zGETPTR( lpViewCsr->hHierRootEntityInstance );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2268 :       lpViewEntityCsr = zGETPTR( lpViewCsr->hRootViewEntityCsr );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 2270 :    else

	jmp	$L8339
$L8332:

; 2272 :       nStartLevel = lpEntityInstance->nLevel;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	ax, WORD PTR [edx+58]
	mov	WORD PTR _nStartLevel$[ebp], ax

; 2273 :       lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L8338:

; 2276 :          LPENTITYINSTANCE lpHierRootEntityInstance =
; 2277 :                               zGETPTR( lpViewCsr->hHierRootEntityInstance );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpHierRootEntityInstance$8340[ebp], eax

; 2278 : 
; 2279 :          // Check to see if the EI is out of view.  This happens if the EI has
; 2280 :          // a level <= to the HierRoot EI *unless* the root level is 1.  If the
; 2281 :          // level is 1 then we have a multi-root OI and this is OK.
; 2282 :          if ( lpEntityInstance == 0 ||
; 2283 :               ( lpHierRootEntityInstance->nLevel > 1 &&
; 2284 :                 lpEntityInstance->nLevel <= lpHierRootEntityInstance->nLevel ) )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L8343
	mov	edx, DWORD PTR _lpHierRootEntityInstance$8340[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	eax, 1
	jle	SHORT $L8342
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpHierRootEntityInstance$8340[ebp]
	movsx	ecx, WORD PTR [eax+58]
	cmp	edx, ecx
	jg	SHORT $L8342
$L8343:

; 2286 :             nRC = zCURSOR_UNCHANGED;

	mov	WORD PTR _nRC$[ebp], -1

; 2287 :             break;

	jmp	$L8339
$L8342:

; 2289 : 
; 2290 :          // If entity instance is not deleted or excluded, look for
; 2291 :          // a View entity cursor which matches the entity instance.
; 2292 :          if ( lpEntityInstance->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	$L8358
$L8346:

; 2294 :             while ( TRUE )

	mov	ecx, 1
	test	ecx, ecx
	je	SHORT $L8347

; 2296 :                for ( lpViewEntityCsr = zGETPTR( lpViewCsr->hRootViewEntityCsr );
; 2297 :                      lpViewEntityCsr;
; 2298 :                      lpViewEntityCsr = zGETPTR( lpViewEntityCsr->hNextHier ) )

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax
	jmp	SHORT $L8350
$L8351:
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax
$L8350:
	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	SHORT $L8352

; 2300 :                   if ( lpEntityInstance->hViewEntity ==
; 2301 :                                               lpViewEntityCsr->hViewEntity )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [eax+2]
	cmp	edx, DWORD PTR [ecx+14]
	jne	SHORT $L8353

; 2303 :                      break;

	jmp	SHORT $L8352
$L8353:

; 2305 :                }

	jmp	SHORT $L8351
$L8352:

; 2306 : 
; 2307 :                if ( lpViewEntityCsr )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	SHORT $L8354

; 2308 :                   break;

	jmp	SHORT $L8347
$L8354:

; 2309 : 
; 2310 :                fnResetViewFromSubobject( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnResetViewFromSubobject
	add	esp, 4

; 2311 :             }

	jmp	SHORT $L8346
$L8347:

; 2312 : 
; 2313 :             while ( lpViewEntityCsr->nLevel > lpEntityInstance->nLevel )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	cmp	edx, ecx
	jle	SHORT $L8357

; 2314 :                fnResetViewFromSubobject( lpView );

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnResetViewFromSubobject
	add	esp, 4
	jmp	SHORT $L8347
$L8357:

; 2315 : 
; 2316 :             if ( lpViewEntityCsr->nLevel == lpEntityInstance->nLevel )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jne	SHORT $L8358

; 2317 :                break;

	jmp	SHORT $L8339
$L8358:

; 2319 : 
; 2320 :          lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2321 :       }

	jmp	$L8338
$L8339:

; 2323 : 
; 2324 :    // If nRC is zCURSOR_SET, set the entity instance in the cursor and reset
; 2325 :    // the cursor's children.
; 2326 :    if ( nRC == zCURSOR_SET )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	$L8367

; 2328 :       LPVIEWENTITY lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8361[ebp], eax

; 2329 : 
; 2330 :       lpViewEntityCsr->hEntityInstance = zGETHNDL( lpEntityInstance );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 2331 :    // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 2332 :    //    SysMessageBox( 0, "SetCursorAbsolutePosition", "UNSET_CSR", -1 );
; 2333 : 
; 2334 :       lpViewCsr->hHierEntityInstance = lpViewEntityCsr->hEntityInstance;

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+26], ecx

; 2335 :       fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnResetCursorForViewChildren
	add	esp, 4

; 2336 :       *lpnReturnLevel = lpEntityInstance->nLevel;

	mov	eax, DWORD PTR _lpnReturnLevel$[ebp]
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	mov	WORD PTR [eax], dx

; 2337 :       zstrcpy( pchReturnEntityName, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$8361[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _pchReturnEntityName$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 2338 : 
; 2339 :       lpViewEntity = zGETPTR( lpViewEntityCsr->hViewEntity );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8361[ebp], eax

; 2340 :       if ( lpViewEntity->bRecursive )

	mov	ecx, DWORD PTR _lpViewEntity$8361[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8365

; 2341 :          nRC = zCURSOR_SET_RECURSIVECHILD;

	mov	WORD PTR _nRC$[ebp], 2

; 2342 :       else

	jmp	SHORT $L8367
$L8365:

; 2343 :       if ( lpEntityInstance->nLevel < nStartLevel )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	cmp	ecx, edx
	jge	SHORT $L8367

; 2344 :          nRC = zCURSOR_SET_NEWPARENT;

	mov	WORD PTR _nRC$[ebp], 1
$L8367:

; 2346 : 
; 2347 :    fnOperationReturn( iSetCursorNextEntityHierarchica, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	192					; 000000c0H
	call	_fnOperationReturn
	add	esp, 8

; 2348 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8321:

; 2349 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetCursorNextEntityHierarchical@12 ENDP
_TEXT	ENDS
PUBLIC	_GetEntityNameForHierarchicalCsr@16
_TEXT	SEGMENT
_puReturnLevel$ = 8
_pchReturnEntityName$ = 12
_pulAbsolutePosition$ = 16
_lpView$ = 20
_lpCurrentTask$ = -16
_lpViewCsr$ = -4
_lpEntityInstance$ = -12
_nRC$ = -8
_lpViewEntity$8389 = -20
_GetEntityNameForHierarchicalCsr@16 PROC NEAR

; 2372 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 2373 :    LPTASK            lpCurrentTask;
; 2374 :    LPVIEWCSR         lpViewCsr;
; 2375 :    LPENTITYINSTANCE  lpEntityInstance;
; 2376 :    zSHORT            nRC;
; 2377 : 
; 2378 :    *pchReturnEntityName = 0;

	mov	eax, DWORD PTR _pchReturnEntityName$[ebp]
	mov	BYTE PTR [eax], 0

; 2379 :    *pulAbsolutePosition = 0;

	mov	ecx, DWORD PTR _pulAbsolutePosition$[ebp]
	mov	DWORD PTR [ecx], 0

; 2380 :    *puReturnLevel      = 0;

	mov	edx, DWORD PTR _puReturnLevel$[ebp]
	mov	WORD PTR [edx], 0

; 2381 : 
; 2382 :    // Validate parameters.
; 2383 :    if ( fnValidateCursorParameters( &lpCurrentTask, 0, 0, 0, 0,
; 2384 :                                     iGetEntityNameForHierarchicalCsr,
; 2385 :                                     lpView, 0, 0 ) )

	push	0
	push	0
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	193					; 000000c1H
	push	0
	push	0
	push	0
	push	0
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8381

; 2387 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8376
$L8381:

; 2389 : 
; 2390 :    // Get View Cursor.
; 2391 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2392 :    lpEntityInstance = zGETPTR( lpViewCsr->hHierEntityInstance );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2393 :    if ( lpEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 1
	jne	SHORT $L8385

; 2395 :       nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH

; 2397 :    else

	jmp	SHORT $L8388
$L8385:

; 2398 :    if ( lpEntityInstance == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	SHORT $L8387

; 2400 :       nRC = zCURSOR_NULL;

	mov	WORD PTR _nRC$[ebp], -3			; fffffffdH

; 2402 :    else

	jmp	SHORT $L8388
$L8387:

; 2404 :       LPVIEWENTITY lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8389[ebp], eax

; 2405 : 
; 2406 :       zstrcpy( pchReturnEntityName, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$8389[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _pchReturnEntityName$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 2407 :       *puReturnLevel = lpEntityInstance->nLevel;

	mov	edx, DWORD PTR _puReturnLevel$[ebp]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR [edx], cx

; 2408 : 
; 2409 :       // We need to count previous entities.
; 2410 :       for ( ;
; 2411 :             lpEntityInstance->hPrevHier;
; 2412 :             lpEntityInstance = zGETPTR( lpEntityInstance->hPrevHier ) )

	jmp	SHORT $L8392
$L8393:
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L8392:
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+18], 0
	je	SHORT $L8394

; 2414 :          if ( lpEntityInstance->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8395

; 2415 :             (*pulAbsolutePosition)++;

	mov	ecx, DWORD PTR _pulAbsolutePosition$[ebp]
	mov	edx, DWORD PTR [ecx]
	add	edx, 1
	mov	eax, DWORD PTR _pulAbsolutePosition$[ebp]
	mov	DWORD PTR [eax], edx
$L8395:

; 2416 :       }

	jmp	SHORT $L8393
$L8394:

; 2417 : 
; 2418 :       nRC = zCURSOR_SET;

	mov	WORD PTR _nRC$[ebp], 0
$L8388:

; 2420 : 
; 2421 :    fnOperationReturn( iGetEntityNameForHierarchicalCsr, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	193					; 000000c1H
	call	_fnOperationReturn
	add	esp, 8

; 2422 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8376:

; 2423 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_GetEntityNameForHierarchicalCsr@16 ENDP
_TEXT	ENDS
PUBLIC	_GetEntityKeyForHierarchicalCsr@16
_TEXT	SEGMENT
_pulReturnLevel$ = 8
_pchReturnEntityName$ = 12
_pulEntityKey$ = 16
_lpView$ = 20
_lpCurrentTask$ = -16
_lpViewCsr$ = -4
_lpEntityInstance$ = -12
_nRC$ = -8
_lpViewEntity$8417 = -20
_GetEntityKeyForHierarchicalCsr@16 PROC NEAR

; 2446 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 2447 :    LPTASK            lpCurrentTask;
; 2448 :    LPVIEWCSR         lpViewCsr;
; 2449 :    LPENTITYINSTANCE  lpEntityInstance;
; 2450 :    zSHORT            nRC;
; 2451 : 
; 2452 :    *pulReturnLevel      = 0;

	mov	eax, DWORD PTR _pulReturnLevel$[ebp]
	mov	DWORD PTR [eax], 0

; 2453 :    *pchReturnEntityName = 0;

	mov	ecx, DWORD PTR _pchReturnEntityName$[ebp]
	mov	BYTE PTR [ecx], 0

; 2454 :    *pulEntityKey        = 0;

	mov	edx, DWORD PTR _pulEntityKey$[ebp]
	mov	DWORD PTR [edx], 0

; 2455 : 
; 2456 :    // Validate parameters.
; 2457 :    if ( fnValidateCursorParameters( &lpCurrentTask, 0, 0, 0, 0,
; 2458 :                                     iGetEntityKeyForHierarchicalCsr,
; 2459 :                                     lpView, 0, 0 ) )

	push	0
	push	0
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	194					; 000000c2H
	push	0
	push	0
	push	0
	push	0
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8409

; 2461 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8404
$L8409:

; 2463 : 
; 2464 :    // Get View Cursor.
; 2465 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2466 :    lpEntityInstance = zGETPTR( lpViewCsr->hHierEntityInstance );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2467 :    if ( lpEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 1
	jne	SHORT $L8413

; 2469 :       nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH

; 2471 :    else

	jmp	SHORT $L8416
$L8413:

; 2472 :    if ( lpEntityInstance == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	SHORT $L8415

; 2474 :       nRC = zCURSOR_NULL;

	mov	WORD PTR _nRC$[ebp], -3			; fffffffdH

; 2476 :    else

	jmp	SHORT $L8416
$L8415:

; 2478 :       LPVIEWENTITY lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8417[ebp], eax

; 2479 : 
; 2480 :       zstrcpy( pchReturnEntityName, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$8417[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _pchReturnEntityName$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 2481 :       *pulReturnLevel = lpEntityInstance->nLevel;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	mov	ecx, DWORD PTR _pulReturnLevel$[ebp]
	mov	DWORD PTR [ecx], eax

; 2482 :       *pulEntityKey = lpEntityInstance->ulKey;

	mov	edx, DWORD PTR _pulEntityKey$[ebp]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+50]
	mov	DWORD PTR [edx], ecx

; 2483 :       nRC = zCURSOR_SET;

	mov	WORD PTR _nRC$[ebp], 0
$L8416:

; 2485 : 
; 2486 :    fnOperationReturn( iGetEntityKeyForHierarchicalCsr, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	194					; 000000c2H
	call	_fnOperationReturn
	add	esp, 8

; 2487 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8404:

; 2488 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_GetEntityKeyForHierarchicalCsr@16 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorFirstSelectedEntity@12
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcScopingEntityName$ = 16
_lpCurrentTask$ = -24
_lpViewEntity$ = -12
_lpScopingViewEntity$ = -16
_lpViewEntityCsr$ = -20
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorFirstSelectedEntity@12 PROC NEAR

; 2517 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 2518 :    LPTASK            lpCurrentTask;
; 2519 :    LPVIEWENTITY      lpViewEntity;
; 2520 :    LPVIEWENTITY      lpScopingViewEntity;
; 2521 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 2522 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 2523 :    zSHORT            nRC;
; 2524 : 
; 2525 :    // Validate parameters
; 2526 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 2527 :                                            &lpViewEntity,
; 2528 :                                            &lpScopingViewEntity,
; 2529 :                                            &lpViewEntityCsr,
; 2530 :                                            &lpScopingViewEntityCsr,
; 2531 :                                            iSetCursorFirstSelectedEntity,
; 2532 :                                            lpView,
; 2533 :                                            cpcEntityName,
; 2534 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	180					; 000000b4H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8432

; 2536 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L8425
$L8432:

; 2538 : 
; 2539 :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr, 0,
; 2540 :                             (zLONG) (zPOS_FIRST | zQUAL_SELECTED),
; 2541 :                             0, 0,
; 2542 :                             0, 0,
; 2543 :                             lpScopingViewEntityCsr, 0,
; 2544 :                             lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	ecx
	push	0
	push	0
	push	0
	push	0
	push	8193					; 00002001H
	push	0
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 2545 : 
; 2546 :    fnOperationReturn( iSetCursorFirstSelectedEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	180					; 000000b4H
	call	_fnOperationReturn
	add	esp, 8

; 2547 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8425:

; 2548 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetCursorFirstSelectedEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_SetCursorNextSelectedEntity@12
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcScopingEntityName$ = 16
_lpCurrentTask$ = -24
_lpViewEntity$ = -12
_lpScopingViewEntity$ = -16
_lpViewEntityCsr$ = -20
_lpScopingViewEntityCsr$ = -8
_nRC$ = -4
_SetCursorNextSelectedEntity@12 PROC NEAR

; 2580 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 2581 :    LPTASK            lpCurrentTask;
; 2582 :    LPVIEWENTITY      lpViewEntity;
; 2583 :    LPVIEWENTITY      lpScopingViewEntity;
; 2584 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 2585 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 2586 :    zSHORT            nRC;
; 2587 : 
; 2588 :    // Validate parameters
; 2589 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 2590 :                                            &lpViewEntity,
; 2591 :                                            &lpScopingViewEntity,
; 2592 :                                            &lpViewEntityCsr,
; 2593 :                                            &lpScopingViewEntityCsr,
; 2594 :                                            iSetCursorNextSelectedEntity,
; 2595 :                                            lpView,
; 2596 :                                            cpcEntityName,
; 2597 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	181					; 000000b5H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8448

; 2599 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L8441
$L8448:

; 2601 : 
; 2602 :    nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr, 0,
; 2603 :                             (zLONG) (zPOS_NEXT | zQUAL_SELECTED),
; 2604 :                             0, 0,
; 2605 :                             0, 0,
; 2606 :                             lpScopingViewEntityCsr, 0,
; 2607 :                             lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	ecx
	push	0
	push	0
	push	0
	push	0
	push	8195					; 00002003H
	push	0
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 2608 : 
; 2609 :    fnOperationReturn( iSetCursorNextSelectedEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	181					; 000000b5H
	call	_fnOperationReturn
	add	esp, 8

; 2610 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8441:

; 2611 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetCursorNextSelectedEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_SetSelectSetForView@8
_TEXT	SEGMENT
_lpView$ = 8
_nSelectSetID$ = 12
_lpCurrentTask$ = -16
_lpViewCsr$ = -8
_nRC$ = -12
_nWk$ = -4
_SetSelectSetForView@8 PROC NEAR

; 2637 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 2638 :    LPTASK            lpCurrentTask;
; 2639 :    LPVIEWCSR         lpViewCsr;
; 2640 :    zSHORT            nRC, nWk;
; 2641 : 
; 2642 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 2643 :    if ( (lpCurrentTask = fnOperationCall( iSetSelectSetForView,
; 2644 :                                           lpView, zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	129					; 00000081H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8460

; 2646 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8455
$L8460:

; 2648 : 
; 2649 :    if ( nSelectSetID < 1 || nSelectSetID > 16 )

	movsx	ecx, WORD PTR _nSelectSetID$[ebp]
	cmp	ecx, 1
	jl	SHORT $L8462
	movsx	edx, WORD PTR _nSelectSetID$[ebp]
	cmp	edx, 16					; 00000010H
	jle	SHORT $L8461
$L8462:

; 2651 :       // "KZOEE269 - Invalid Select Set ID, ID="
; 2652 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 269, ( zLONG ) nSelectSetID, 0, 0 );

	push	0
	push	0
	movsx	eax, WORD PTR _nSelectSetID$[ebp]
	push	eax
	push	269					; 0000010dH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2653 :       fnOperationReturn( iSetSelectSetForView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	129					; 00000081H
	call	_fnOperationReturn
	add	esp, 8

; 2654 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8455
$L8461:

; 2656 : 
; 2657 :    // Get the view csr
; 2658 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2659 : 
; 2660 :    // Determine the current select set
; 2661 :    nWk = lpViewCsr->nCurrentSelectSet;

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	cx, WORD PTR [eax+36]
	mov	WORD PTR _nWk$[ebp], cx

; 2662 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L8466:

; 2663 :    while ( nWk )

	movsx	edx, WORD PTR _nWk$[ebp]
	test	edx, edx
	je	SHORT $L8467

; 2665 :       nWk >>= 1;

	mov	ax, WORD PTR _nWk$[ebp]
	sar	ax, 1
	mov	WORD PTR _nWk$[ebp], ax

; 2666 :       nRC++;

	mov	cx, WORD PTR _nRC$[ebp]
	add	cx, 1
	mov	WORD PTR _nRC$[ebp], cx

; 2667 :    }

	jmp	SHORT $L8466
$L8467:

; 2668 : 
; 2669 :    if ( nRC != nSelectSetID )

	movsx	edx, WORD PTR _nRC$[ebp]
	movsx	eax, WORD PTR _nSelectSetID$[ebp]
	cmp	edx, eax
	je	SHORT $L8468

; 2671 :       nWk = 0x0001;

	mov	WORD PTR _nWk$[ebp], 1
$L8470:

; 2674 :          nSelectSetID--;

	mov	cx, WORD PTR _nSelectSetID$[ebp]
	sub	cx, 1
	mov	WORD PTR _nSelectSetID$[ebp], cx

; 2675 :          if ( nSelectSetID == 0 )

	movsx	edx, WORD PTR _nSelectSetID$[ebp]
	test	edx, edx
	jne	SHORT $L8472

; 2676 :             break;

	jmp	SHORT $L8471
$L8472:

; 2677 : 
; 2678 :          nWk <<= 1;

	mov	ax, WORD PTR _nWk$[ebp]
	shl	ax, 1
	mov	WORD PTR _nWk$[ebp], ax

; 2679 :       }

	jmp	SHORT $L8470
$L8471:

; 2680 : 
; 2681 :       lpViewCsr->nCurrentSelectSet = nWk;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	dx, WORD PTR _nWk$[ebp]
	mov	WORD PTR [ecx+36], dx
$L8468:

; 2683 : 
; 2684 :    fnOperationReturn( iSetSelectSetForView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	129					; 00000081H
	call	_fnOperationReturn
	add	esp, 8

; 2685 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8455:

; 2686 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SetSelectSetForView@8 ENDP
_TEXT	ENDS
PUBLIC	_GetSelectStateOfEntityForSet@12
PUBLIC	_GetSelectStateOfEntity@8
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nSelectSet$ = 16
_nRC$ = -4
_GetSelectStateOfEntityForSet@12 PROC NEAR

; 2711 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2712 :    zSHORT nRC;
; 2713 : 
; 2714 :    nRC = SetSelectSetForView( lpView, nSelectSet );

	mov	ax, WORD PTR _nSelectSet$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetSelectSetForView@8
	mov	WORD PTR _nRC$[ebp], ax

; 2715 :    if ( nRC >= 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jl	SHORT $L8481

; 2717 :       nSelectSet = nRC;

	mov	ax, WORD PTR _nRC$[ebp]
	mov	WORD PTR _nSelectSet$[ebp], ax

; 2718 :       nRC = GetSelectStateOfEntity( lpView, cpcEntityName );

	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_GetSelectStateOfEntity@8
	mov	WORD PTR _nRC$[ebp], ax

; 2719 :       SetSelectSetForView( lpView, nSelectSet );

	mov	ax, WORD PTR _nSelectSet$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetSelectSetForView@8
$L8481:

; 2721 : 
; 2722 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 2723 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_GetSelectStateOfEntityForSet@12 ENDP
_lpView$ = 8
_cpcEntityName$ = 12
_lpViewEntity$ = -12
_lpViewEntityCsr$ = -20
_lpEntityInstance$ = -8
_lpCurrentTask$ = -16
_nRC$ = -4
_GetSelectStateOfEntity@8 PROC NEAR

; 2751 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 2752 :    LPVIEWENTITY       lpViewEntity;
; 2753 :    LPVIEWENTITYCSR    lpViewEntityCsr;
; 2754 :    LPENTITYINSTANCE   lpEntityInstance;
; 2755 :    LPTASK             lpCurrentTask;
; 2756 :    zSHORT             nRC;
; 2757 : 
; 2758 :    if ( fnValidateCursorParameters( &lpCurrentTask,
; 2759 :                                     &lpViewEntity,
; 2760 :                                     0,
; 2761 :                                     &lpViewEntityCsr,
; 2762 :                                     0,
; 2763 :                                     iGetSelectStateOfEntity,
; 2764 :                                     lpView,
; 2765 :                                     cpcEntityName,
; 2766 :                                     0 ) )

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	112					; 00000070H
	push	0
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	push	0
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8492

; 2768 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8486
$L8492:

; 2770 : 
; 2771 :    // Scan to see if Entity is in the SelectedInstance chain
; 2772 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2773 :    if ( lpEntityInstance )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L8494

; 2775 :       nRC = fnSelectedInstanceFarbler( zGETPTR( lpViewEntityCsr->hViewCsr ),
; 2776 :                                        zGETPTR( lpEntityInstance->hViewEntity ),
; 2777 :                                        lpViewEntityCsr->hEntityInstance,
; 2778 :                                        1 );

	push	1
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H
	mov	WORD PTR _nRC$[ebp], ax

; 2780 :    else

	jmp	SHORT $L8497
$L8494:

; 2781 :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L8497:

; 2782 : 
; 2783 :    fnOperationReturn( iGetSelectStateOfEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	112					; 00000070H
	call	_fnOperationReturn
	add	esp, 8

; 2784 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8486:

; 2785 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_GetSelectStateOfEntity@8 ENDP
_TEXT	ENDS
PUBLIC	_SetAllSelStatesForEntityForSet@20
PUBLIC	_SetAllSelectStatesForEntity@16
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nState$ = 16
_nSelectSet$ = 20
_cpcScopingEntityName$ = 24
_nRC$ = -4
_SetAllSelStatesForEntityForSet@20 PROC NEAR

; 2814 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2815 :    zSHORT nRC;
; 2816 : 
; 2817 :    nRC = SetSelectSetForView( lpView, nSelectSet );

	mov	ax, WORD PTR _nSelectSet$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetSelectSetForView@8
	mov	WORD PTR _nRC$[ebp], ax

; 2818 :    if ( nRC >= 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jl	SHORT $L8510

; 2820 :       nSelectSet = nRC;

	mov	ax, WORD PTR _nRC$[ebp]
	mov	WORD PTR _nSelectSet$[ebp], ax

; 2821 :       nRC = SetAllSelectStatesForEntity( lpView, cpcEntityName,
; 2822 :                                          nState, cpcScopingEntityName );

	mov	ecx, DWORD PTR _cpcScopingEntityName$[ebp]
	push	ecx
	mov	dx, WORD PTR _nState$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetAllSelectStatesForEntity@16
	mov	WORD PTR _nRC$[ebp], ax

; 2823 :       SetSelectSetForView( lpView, nSelectSet );

	mov	dx, WORD PTR _nSelectSet$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SetSelectSetForView@8
$L8510:

; 2825 : 
; 2826 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 2827 : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_SetAllSelStatesForEntityForSet@20 ENDP
_TEXT	ENDS
EXTRN	_fnFreeDataspace:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nState$ = 16
_cpcScopingEntityName$ = 20
_lpCurrentTask$ = -40
_lpViewEntity$ = -20
_lpScopingViewEntity$ = -28
_lpViewCsr$ = -4
_lpViewOI$ = -32
_lpViewEntityCsr$ = -36
_lpScopingViewEntityCsr$ = -16
_lpScopingEntityInstance$ = -24
_lpSearchEntityInstance$ = -12
_nRC$ = -8
_hSelectedInstance$8535 = -52
_hSelectedInstancePrev$8536 = -56
_lpSelectedInstancePrev$8537 = -44
_lpSelectedInstance$8538 = -48
_lpSearchViewEntity$8550 = -60
_lpSearchViewEntity$8566 = -64
_nStopLevel$8581 = -68
_lpSearchViewEntity$8586 = -72
_SetAllSelectStatesForEntity@16 PROC NEAR

; 2857 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H

; 2858 :    LPTASK            lpCurrentTask;
; 2859 :    LPVIEWENTITY      lpViewEntity;
; 2860 :    LPVIEWENTITY      lpScopingViewEntity;
; 2861 :    LPVIEWCSR         lpViewCsr;
; 2862 :    LPVIEWOI          lpViewOI;
; 2863 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 2864 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 2865 :    LPENTITYINSTANCE  lpScopingEntityInstance;
; 2866 :    LPENTITYINSTANCE  lpSearchEntityInstance;
; 2867 :    zSHORT            nRC;
; 2868 : 
; 2869 :    // Validate parameters
; 2870 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 2871 :                                            &lpViewEntity,
; 2872 :                                            &lpScopingViewEntity,
; 2873 :                                            &lpViewEntityCsr,
; 2874 :                                            &lpScopingViewEntityCsr,
; 2875 :                                            iSetAllSelectStatesForEntity,
; 2876 :                                            lpView,
; 2877 :                                            cpcEntityName,
; 2878 :                                            cpcScopingEntityName )) != 0 )

	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	113					; 00000071H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8530

; 2880 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8519
$L8530:

; 2882 : 
; 2883 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2884 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 2885 : 
; 2886 :    if ( nState == 0 && (cpcEntityName == 0 || cpcEntityName[ 0 ] == 0) )

	movsx	ecx, WORD PTR _nState$[ebp]
	test	ecx, ecx
	jne	$L8533
	cmp	DWORD PTR _cpcEntityName$[ebp], 0
	je	SHORT $L8534
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	$L8533
$L8534:

; 2888 :       // This condition causes a deselect of all SelectedInstances for the
; 2889 :       // current select set for a view.
; 2890 :       LPSELECTEDINSTANCE hSelectedInstance = lpViewCsr->hFirstSelectedInstance;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	mov	DWORD PTR _hSelectedInstance$8535[ebp], edx

; 2891 :       LPSELECTEDINSTANCE hSelectedInstancePrev = 0;

	mov	DWORD PTR _hSelectedInstancePrev$8536[ebp], 0
$L8540:

; 2892 :       LPSELECTEDINSTANCE lpSelectedInstancePrev;
; 2893 :       LPSELECTEDINSTANCE lpSelectedInstance;
; 2894 : 
; 2895 :       while ( hSelectedInstance )

	cmp	DWORD PTR _hSelectedInstance$8535[ebp], 0
	je	$L8541

; 2897 :          lpSelectedInstance = zGETPTR( hSelectedInstance );

	mov	eax, DWORD PTR _hSelectedInstance$8535[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSelectedInstance$8538[ebp], eax

; 2898 : 
; 2899 :          // If the entity is selected for the current select set, drop the
; 2900 :          // selection for the current select set.  If there are no other
; 2901 :          // select bits set for the selected instance, drop the instance.
; 2902 : 
; 2903 :          lpSelectedInstance->nSelectSet &= ~(lpViewCsr->nCurrentSelectSet);

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	movsx	edx, WORD PTR [ecx+36]
	not	edx
	mov	eax, DWORD PTR _lpSelectedInstance$8538[ebp]
	mov	cx, WORD PTR [eax+6]
	and	cx, dx
	mov	edx, DWORD PTR _lpSelectedInstance$8538[ebp]
	mov	WORD PTR [edx+6], cx

; 2904 :          if ( lpSelectedInstance->nSelectSet == 0 )

	mov	eax, DWORD PTR _lpSelectedInstance$8538[ebp]
	movsx	ecx, WORD PTR [eax+6]
	test	ecx, ecx
	jne	SHORT $L8543

; 2906 :             if ( hSelectedInstancePrev )

	cmp	DWORD PTR _hSelectedInstancePrev$8536[ebp], 0
	je	SHORT $L8544

; 2908 :                lpSelectedInstancePrev = zGETPTR( hSelectedInstancePrev );

	mov	edx, DWORD PTR _hSelectedInstancePrev$8536[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSelectedInstancePrev$8537[ebp], eax

; 2909 :                hSelectedInstance = lpSelectedInstance->hNextSelectedInstance;

	mov	eax, DWORD PTR _lpSelectedInstance$8538[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR _hSelectedInstance$8535[ebp], ecx

; 2910 :                lpSelectedInstancePrev->hNextSelectedInstance = hSelectedInstance;

	mov	edx, DWORD PTR _lpSelectedInstancePrev$8537[ebp]
	mov	eax, DWORD PTR _hSelectedInstance$8535[ebp]
	mov	DWORD PTR [edx+2], eax

; 2912 :             else

	jmp	SHORT $L8546
$L8544:

; 2914 :                hSelectedInstance = lpSelectedInstance->hNextSelectedInstance;

	mov	ecx, DWORD PTR _lpSelectedInstance$8538[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR _hSelectedInstance$8535[ebp], edx

; 2915 :                lpViewCsr->hFirstSelectedInstance = hSelectedInstance;

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR _hSelectedInstance$8535[ebp]
	mov	DWORD PTR [eax+42], ecx
$L8546:

; 2917 : 
; 2918 :             fnFreeDataspace( lpSelectedInstance );

	mov	edx, DWORD PTR _lpSelectedInstance$8538[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 2920 :          else

	jmp	SHORT $L8547
$L8543:

; 2922 :             hSelectedInstancePrev = hSelectedInstance;

	mov	eax, DWORD PTR _hSelectedInstance$8535[ebp]
	mov	DWORD PTR _hSelectedInstancePrev$8536[ebp], eax

; 2923 :             hSelectedInstance = lpSelectedInstance->hNextSelectedInstance;

	mov	ecx, DWORD PTR _lpSelectedInstance$8538[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR _hSelectedInstance$8535[ebp], edx
$L8547:

; 2925 :       }

	jmp	$L8540
$L8541:

; 2926 : 
; 2927 :    // LPSELECTEDINSTANCE lpSelectedInstance;
; 2928 : 
; 2929 :    // while ( lpViewCsr->hFirstSelectedInstance )
; 2930 :    // {
; 2931 :    //    lpSelectedInstance = zGETPTR( lpViewCsr->hFirstSelectedInstance );
; 2932 :    //    lpViewCsr->hFirstSelectedInstance =
; 2933 :    //                      lpSelectedInstance->hNextSelectedInstance;
; 2934 :    //    fnFreeDataspace( lpSelectedInstance );
; 2935 :    // }
; 2936 : 
; 2937 :       fnOperationReturn( iSetAllSelectStatesForEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	113					; 00000071H
	call	_fnOperationReturn
	add	esp, 8

; 2938 :       return( 0 );

	xor	ax, ax
	jmp	$L8519
$L8533:

; 2940 : 
; 2941 :    // If scoping is zSCOPE_OI then we're changing all occurrences of cpcEntity.
; 2942 :    if ( cpcScopingEntityName == zSCOPE_OI )

	cmp	DWORD PTR _cpcScopingEntityName$[ebp], 1
	jne	$L8549

; 2944 :       LPVIEWENTITY lpSearchViewEntity;
; 2945 : 
; 2946 :       for ( lpSearchEntityInstance = zGETPTR( lpViewOI->hRootEntityInstance );
; 2947 :             lpSearchEntityInstance;
; 2948 :             lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier ) )

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
	jmp	SHORT $L8553
$L8554:
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
$L8553:
	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L8555

; 2950 :          lpSearchViewEntity = zGETPTR( lpSearchEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8550[ebp], eax

; 2951 :          if ( lpSearchViewEntity == lpViewEntity )

	mov	ecx, DWORD PTR _lpSearchViewEntity$8550[ebp]
	cmp	ecx, DWORD PTR _lpViewEntity$[ebp]
	jne	SHORT $L8557

; 2953 :             // We are not checking for hidden instances here, that
; 2954 :             // is being done in the Farbler routine to allow for
; 2955 :             // dynamic garbage collection.
; 2956 :             fnSelectedInstanceFarbler( lpViewCsr,
; 2957 :                                        lpSearchViewEntity,
; 2958 :                                        zGETHNDL( lpSearchEntityInstance ),
; 2959 :                                        (zSHORT) (nState > 0 ? 2 : 3 ) );

	movsx	edx, WORD PTR _nState$[ebp]
	xor	eax, eax
	test	edx, edx
	setle	al
	add	eax, 2
	push	eax
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	push	eax
	mov	edx, DWORD PTR _lpSearchViewEntity$8550[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	push	eax
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H
$L8557:

; 2961 :       }

	jmp	SHORT $L8554
$L8555:

; 2962 : 
; 2963 :       fnOperationReturn( iSetAllSelectStatesForEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	113					; 00000071H
	call	_fnOperationReturn
	add	esp, 8

; 2964 :       return( 0 );

	xor	ax, ax
	jmp	$L8519
$L8549:

; 2966 : 
; 2967 :    // See if scoping entity is the parent of the target entity.
; 2968 :    if ( lpScopingViewEntityCsr )

	cmp	DWORD PTR _lpScopingViewEntityCsr$[ebp], 0
	je	SHORT $L8560

; 2969 :       lpScopingEntityInstance = zGETPTR( lpScopingViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingEntityInstance$[ebp], eax

; 2970 :    else

	jmp	SHORT $L8562
$L8560:

; 2971 :       lpScopingViewEntityCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingViewEntityCsr$[ebp], eax
$L8562:

; 2972 : 
; 2973 :    if ( zGETPTR( lpViewEntityCsr->hParent ) == lpScopingViewEntityCsr )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	jne	$L8565

; 2975 :       LPVIEWENTITY lpSearchViewEntity = zGETPTR( lpViewEntityCsr->hViewEntity );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8566[ebp], eax

; 2976 : 
; 2977 :       lpSearchEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 2978 :       if ( lpSearchEntityInstance )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L8576
$L8571:

; 2980 :          while ( lpSearchEntityInstance->hPrevTwin )

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	SHORT $L8572

; 2981 :             lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevTwin );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
	jmp	SHORT $L8571
$L8572:

; 2982 : 
; 2983 :          while ( lpSearchEntityInstance )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L8576

; 2985 :             // We are not checking for hidden instances here, that
; 2986 :             // is being done in the Farbler routine to allow for
; 2987 :             // dynamic garbage collection.
; 2988 :             fnSelectedInstanceFarbler( lpViewCsr,
; 2989 :                                        lpSearchViewEntity,
; 2990 :                                        zGETHNDL( lpSearchEntityInstance ),
; 2991 :                                        (zSHORT) (nState > 0 ? 2 : 3 ) );

	movsx	eax, WORD PTR _nState$[ebp]
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	add	ecx, 2
	push	ecx
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	push	eax
	mov	eax, DWORD PTR _lpSearchViewEntity$8566[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	push	ecx
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H

; 2992 : 
; 2993 :             lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 2994 :          }

	jmp	SHORT $L8572
$L8576:

; 2997 :    else

	jmp	$L8585
$L8565:

; 2999 :       int nStopLevel = lpScopingViewEntityCsr->nLevel;

	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	DWORD PTR _nStopLevel$8581[ebp], edx

; 3000 : 
; 3001 :       lpSearchEntityInstance = zGETPTR( lpScopingEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpScopingEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
$L8584:

; 3002 :       while ( lpSearchEntityInstance &&
; 3003 :               lpSearchEntityInstance->nLevel > nStopLevel )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L8585
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	eax, DWORD PTR _nStopLevel$8581[ebp]
	jle	SHORT $L8585

; 3005 :          LPVIEWENTITY lpSearchViewEntity = zGETPTR( lpSearchEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8586[ebp], eax

; 3006 : 
; 3007 :          if ( lpSearchViewEntity == lpViewEntity &&
; 3008 :               lpSearchEntityInstance->nLevel == lpViewEntityCsr->nLevel )

	mov	eax, DWORD PTR _lpSearchViewEntity$8586[ebp]
	cmp	eax, DWORD PTR _lpViewEntity$[ebp]
	jne	SHORT $L8588
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	cmp	edx, ecx
	jne	SHORT $L8588

; 3010 :             // We are not checking for hidden instances here, that
; 3011 :             // is being done in the Farbler routine to allow for
; 3012 :             // dynamic garbage collection.
; 3013 :             fnSelectedInstanceFarbler( lpViewCsr, lpSearchViewEntity,
; 3014 :                                        zGETHNDL( lpSearchEntityInstance ),
; 3015 :                                        (zSHORT) (nState > 0 ? 2 : 3 ) );

	movsx	edx, WORD PTR _nState$[ebp]
	xor	eax, eax
	test	edx, edx
	setle	al
	add	eax, 2
	push	eax
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	push	eax
	mov	edx, DWORD PTR _lpSearchViewEntity$8586[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	push	eax
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H
$L8588:

; 3017 : 
; 3018 :          lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 3019 :       }

	jmp	SHORT $L8584
$L8585:

; 3021 : 
; 3022 :    fnOperationReturn( iSetAllSelectStatesForEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	113					; 00000071H
	call	_fnOperationReturn
	add	esp, 8

; 3023 :    return( 0 );

	xor	ax, ax
$L8519:

; 3024 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_SetAllSelectStatesForEntity@16 ENDP
_TEXT	ENDS
PUBLIC	_SetSelectStateOfEntityForSet@16
PUBLIC	_SetSelectStateOfEntity@12
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nState$ = 16
_nSelectSet$ = 20
_nRC$ = -4
_SetSelectStateOfEntityForSet@16 PROC NEAR

; 3053 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 3054 :    zSHORT nRC;
; 3055 : 
; 3056 :    nRC = SetSelectSetForView( lpView, nSelectSet );

	mov	ax, WORD PTR _nSelectSet$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetSelectSetForView@8
	mov	WORD PTR _nRC$[ebp], ax

; 3057 :    if ( nRC >= 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jl	SHORT $L8602

; 3059 :       nSelectSet = nRC;

	mov	ax, WORD PTR _nRC$[ebp]
	mov	WORD PTR _nSelectSet$[ebp], ax

; 3060 :       nRC = SetSelectStateOfEntity( lpView, cpcEntityName, nState );

	mov	cx, WORD PTR _nState$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SetSelectStateOfEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 3061 :       SetSelectSetForView( lpView, nSelectSet );

	mov	cx, WORD PTR _nSelectSet$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SetSelectSetForView@8
$L8602:

; 3063 : 
; 3064 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 3065 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_SetSelectStateOfEntityForSet@16 ENDP
_lpView$ = 8
_cpcEntityName$ = 12
_nState$ = 16
_lpCurrentTask$ = -20
_lpViewEntity$ = -12
_lpViewEntityCsr$ = -16
_lpEntityInstance$ = -8
_nRC$ = -4
_SetSelectStateOfEntity@12 PROC NEAR

; 3100 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 3101 :    LPTASK             lpCurrentTask;
; 3102 : // LPVIEWOI           lpViewOI;
; 3103 :    LPVIEWENTITY       lpViewEntity;
; 3104 :    LPVIEWENTITYCSR    lpViewEntityCsr;
; 3105 :    LPENTITYINSTANCE   lpEntityInstance;
; 3106 : // LPENTITYINSTANCE   lpScanEntityInstance;
; 3107 :    zSHORT             nRC;
; 3108 : 
; 3109 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 3110 :                                            &lpViewEntity,
; 3111 :                                            0,
; 3112 :                                            &lpViewEntityCsr,
; 3113 :                                            0,
; 3114 :                                            iSetSelectStateOfEntity,
; 3115 :                                            lpView,
; 3116 :                                            cpcEntityName,
; 3117 :                                            0 )) != 0 )

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	114					; 00000072H
	push	0
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	push	0
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8615

; 3119 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8609
$L8615:

; 3121 : 
; 3122 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 3123 : 
; 3124 :    // Scan to see if Entity is in the SelectedInstance chain.
; 3125 :    nRC = fnSelectedInstanceFarbler( zGETPTR( lpViewEntityCsr->hViewCsr ),
; 3126 :                                     zGETPTR( lpEntityInstance->hViewEntity ),
; 3127 :                                     lpViewEntityCsr->hEntityInstance, 1 );

	push	1
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H
	mov	WORD PTR _nRC$[ebp], ax

; 3128 :    if ( nRC == zCALL_ERROR )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8619

; 3130 :       fnOperationReturn( iSetSelectStateOfEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	114					; 00000072H
	call	_fnOperationReturn
	add	esp, 8

; 3131 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8609
$L8619:

; 3133 : 
; 3134 :    // DGC 6/2/97
; 3135 :    // It's possible that fnSelectedInstanceFarbler could change the selected
; 3136 :    // entity instance for lpViewEntityCsr.  Just in case get it again.
; 3137 :    // It's possible that this is not needed--I might know if I understood
; 3138 :    // fnSelectedInstanceFarbler more.
; 3139 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 3140 : 
; 3141 :    if ( nRC == 1 )

	movsx	eax, WORD PTR _nRC$[ebp]
	cmp	eax, 1
	jne	SHORT $L8621

; 3143 :       // Entity found in selected instance chain.
; 3144 : 
; 3145 :       if ( nState == 0 ) // deselect the instance

	movsx	ecx, WORD PTR _nState$[ebp]
	test	ecx, ecx
	jne	SHORT $L8622

; 3147 :          // remove Entity from the SelectedInstance chain
; 3148 :          nRC = fnSelectedInstanceFarbler( zGETPTR( lpViewEntityCsr->hViewCsr ),
; 3149 :                                           zGETPTR( lpEntityInstance->
; 3150 :                                                             hViewEntity ),
; 3151 :                                           lpViewEntityCsr->hEntityInstance, 3 );

	push	3
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H
	mov	WORD PTR _nRC$[ebp], ax

; 3152 :          nRC = (nRC > 0) ? (nRC - 1) : zCALL_ERROR; // indicate success,

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jle	SHORT $L9869
	movsx	eax, WORD PTR _nRC$[ebp]
	sub	eax, 1
	mov	DWORD PTR -24+[ebp], eax
	jmp	SHORT $L9870
$L9869:
	mov	DWORD PTR -24+[ebp], -16		; fffffff0H
$L9870:
	mov	cx, WORD PTR -24+[ebp]
	mov	WORD PTR _nRC$[ebp], cx
$L8622:

; 3162 :    else

	jmp	$L8630
$L8621:

; 3164 :       // Entity not in selected instance chain
; 3165 : 
; 3166 :       if ( nState ) // select the instance

	movsx	edx, WORD PTR _nState$[ebp]
	test	edx, edx
	je	SHORT $L8626

; 3168 :          // add to the chain
; 3169 :          nRC = fnSelectedInstanceFarbler( zGETPTR( lpViewEntityCsr->hViewCsr ),
; 3170 :                                           zGETPTR( lpEntityInstance->hViewEntity ),
; 3171 :                                           lpViewEntityCsr->hEntityInstance, 2 );

	push	2
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H
	mov	WORD PTR _nRC$[ebp], ax

; 3172 :          if ( nRC == zCALL_ERROR )

	movsx	eax, WORD PTR _nRC$[ebp]
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L8629

; 3174 :             fnOperationReturn( iSetSelectStateOfEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	114					; 00000072H
	call	_fnOperationReturn
	add	esp, 8

; 3175 :             return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L8609
$L8629:

; 3177 : 
; 3178 :          nRC = (nRC > 0) ? (nRC - 1) : zCALL_ERROR; // indicate success,

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jle	SHORT $L9871
	movsx	eax, WORD PTR _nRC$[ebp]
	sub	eax, 1
	mov	DWORD PTR -28+[ebp], eax
	jmp	SHORT $L9872
$L9871:
	mov	DWORD PTR -28+[ebp], -16		; fffffff0H
$L9872:
	mov	cx, WORD PTR -28+[ebp]
	mov	WORD PTR _nRC$[ebp], cx

; 3181 :       else

	jmp	SHORT $L8630
$L8626:

; 3182 :          nRC = 1; // indicate already deselected

	mov	WORD PTR _nRC$[ebp], 1
$L8630:

; 3184 : 
; 3185 :    fnOperationReturn( iSetSelectStateOfEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	114					; 00000072H
	call	_fnOperationReturn
	add	esp, 8

; 3186 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8609:

; 3187 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetSelectStateOfEntity@12 ENDP
_TEXT	ENDS
EXTRN	_fnAttributeValueNull:NEAR
EXTRN	_fnAllocDataspace:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_cpcAttributeName$ = 16
_lControl$ = 20
_pQualValue$ = 24
_cpcSrcEntityName$ = 28
_cpcSrcAttributeName$ = 32
_lRelPosition$ = 36
_cpcScopingEntityName$ = 40
_cpcContextName$ = 44
_lpCurrentTask$ = -48
_lpViewEntity$ = -20
_lpSrcViewEntity$ = -40
_lpScopingViewEntity$ = -32
_lpViewEntityCsr$ = -44
_lpSrcViewEntityCsr$ = -36
_lpScopingViewEntityCsr$ = -12
_lpViewEntityAttrib$ = -8
_lpSrcViewEntityAttrib$ = -24
_lQualRequest$ = -16
_bScopeOI$ = -28
_nRC$ = -4
_lpSearchEntityInstance$8683 = -52
_lAttribControl$8689 = -56
_lAttribControl$8697 = -60
_lpTempViewEntityCsr$8709 = -88
_lpTempEntityInstance$8710 = -68
_lpNextHier$8711 = -64
_lpTempViewEntity$8712 = -76
_lpTempViewCsr$8713 = -92
_hTempViewEntityCsr$8714 = -72
_hTempEntityInstance$8715 = -80
_hTempViewEntity$8716 = -84
_SetEntityCursor@40 PROC NEAR

; 3334 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 92					; 0000005cH

; 3335 :    LPTASK            lpCurrentTask;
; 3336 :    LPVIEWENTITY      lpViewEntity;
; 3337 :    LPVIEWENTITY      lpSrcViewEntity;
; 3338 :    LPVIEWENTITY      lpScopingViewEntity;
; 3339 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 3340 :    LPVIEWENTITYCSR   lpSrcViewEntityCsr;
; 3341 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 3342 :    LPVIEWATTRIB      lpViewEntityAttrib;
; 3343 :    LPVIEWATTRIB      lpSrcViewEntityAttrib;
; 3344 :    zLONG             lQualRequest;        // type of qualified request
; 3345 :    zBOOL             bScopeOI = FALSE;    // Scope OI

	mov	BYTE PTR _bScopeOI$[ebp], 0

; 3346 :    zSHORT            nRC;
; 3347 : 
; 3348 :    // First validate the lControl field to ensure that there are no
; 3349 :    // conflicting specifications.
; 3350 :    //
; 3351 :    // lControl must have at least one zPOS_ indicator set...
; 3352 : 
; 3353 :    if ( (lControl & (zPOS_ABS | zPOS_RELATIVE)) == 0 )

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 15					; 0000000fH
	test	eax, eax
	jne	SHORT $L8666

; 3354 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8651
$L8666:

; 3355 : 
; 3356 :    // Check for more than one qualifier request from 'set 1'
; 3357 :    lQualRequest = lControl & (zQUAL_OPERAND | zQUAL_ENTITYCSR);

	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 2137856				; 00209f00H
	mov	DWORD PTR _lQualRequest$[ebp], ecx

; 3358 :    if ( lQualRequest )

	cmp	DWORD PTR _lQualRequest$[ebp], 0
	je	SHORT $L8669

; 3360 :       if ( (-(lQualRequest) & lQualRequest) != lQualRequest &&
; 3361 :            lQualRequest != (zQUAL_ATTR_NULL | zQUAL_ENTITYATTR) )

	mov	edx, DWORD PTR _lQualRequest$[ebp]
	neg	edx
	and	edx, DWORD PTR _lQualRequest$[ebp]
	cmp	edx, DWORD PTR _lQualRequest$[ebp]
	je	SHORT $L8668
	cmp	DWORD PTR _lQualRequest$[ebp], 36864	; 00009000H
	je	SHORT $L8668

; 3363 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8651
$L8668:

; 3365 : 
; 3366 :       if ( (lControl & (zQUAL_GREATER_THAN | zQUAL_LESS_THAN)) ==
; 3367 :                                      (zQUAL_GREATER_THAN | zQUAL_LESS_THAN) )

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 96					; 00000060H
	cmp	eax, 96					; 00000060H
	jne	SHORT $L8669

; 3369 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8651
$L8669:

; 3372 : 
; 3373 :    // Another Doug special ...
; 3374 :    if ( lControl & (zQUAL_SCOPE_OI | zQUAL_ENTITYKEY) )

	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 8912896				; 00880000H
	test	ecx, ecx
	je	SHORT $L8670

; 3376 :       if ( (lControl & zQUAL_SCOPE_OI) ||
; 3377 :            cpcScopingEntityName == zSCOPE_OI ||
; 3378 :            cpcScopingEntityName == 0 || *cpcScopingEntityName == 0 )

	mov	edx, DWORD PTR _lControl$[ebp]
	and	edx, 524288				; 00080000H
	test	edx, edx
	jne	SHORT $L8673
	cmp	DWORD PTR _cpcScopingEntityName$[ebp], 1
	je	SHORT $L8673
	cmp	DWORD PTR _cpcScopingEntityName$[ebp], 0
	je	SHORT $L8673
	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L8672
$L8673:

; 3380 :          cpcScopingEntityName = zSCOPE_OI;

	mov	DWORD PTR _cpcScopingEntityName$[ebp], 1

; 3381 :          bScopeOI = TRUE;

	mov	BYTE PTR _bScopeOI$[ebp], 1
$L8672:

; 3384 :    else

	jmp	SHORT $L8677
$L8670:

; 3385 :    if ( cpcScopingEntityName == zSCOPE_OI )

	cmp	DWORD PTR _cpcScopingEntityName$[ebp], 1
	jne	SHORT $L8677

; 3386 :       bScopeOI = TRUE;

	mov	BYTE PTR _bScopeOI$[ebp], 1
$L8677:

; 3387 : 
; 3388 :    // Validate parameters.
; 3389 :    if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 3390 :                                            &lpViewEntity,
; 3391 :                                            &lpScopingViewEntity,
; 3392 :                                            &lpViewEntityCsr,
; 3393 :                                            &lpScopingViewEntityCsr,
; 3394 :                                            iSetEntityCursor,
; 3395 :                                            lpView,
; 3396 :                                            cpcEntityName,
; 3397 :                                            cpcScopingEntityName )) != 0 )

	mov	edx, DWORD PTR _cpcScopingEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	184					; 000000b8H
	lea	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L8678

; 3399 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8651
$L8678:

; 3401 : 
; 3402 :    // If we turned on SCOPE_OI via zQUAL_ENTITYKEY, but there is no scoping
; 3403 :    // view entity cursor, turn it back off (dks 2004.05.03)!
; 3404 :    if ( (lControl & zQUAL_ENTITYKEY) &&
; 3405 :         (lControl & zQUAL_SCOPE_OI) == 0 && // SCOPE_OI on ... not via zQUAL_ENTITYKEY
; 3406 :         (lControl & zRECURS) == 0 &&
; 3407 :         cpcScopingEntityName == (zCPCHAR) zSCOPE_OI )

	mov	edx, DWORD PTR _lControl$[ebp]
	and	edx, 8388608				; 00800000H
	test	edx, edx
	je	SHORT $L8687
	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 524288				; 00080000H
	test	eax, eax
	jne	SHORT $L8687
	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 131072				; 00020000H
	test	ecx, ecx
	jne	SHORT $L8687
	cmp	DWORD PTR _cpcScopingEntityName$[ebp], 1
	jne	SHORT $L8687

; 3409 :       if ( lpScopingViewEntityCsr )

	cmp	DWORD PTR _lpScopingViewEntityCsr$[ebp], 0
	je	SHORT $L8682

; 3411 :          LPENTITYINSTANCE lpSearchEntityInstance =
; 3412 :                              zGETPTR( lpScopingViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$8683[ebp], eax

; 3413 :          if ( lpSearchEntityInstance == 0 || lpSearchEntityInstance->hNextHier == 0 )

	cmp	DWORD PTR _lpSearchEntityInstance$8683[ebp], 0
	je	SHORT $L8686
	mov	ecx, DWORD PTR _lpSearchEntityInstance$8683[ebp]
	cmp	DWORD PTR [ecx+14], 0
	jne	SHORT $L8685
$L8686:

; 3415 :             cpcScopingEntityName = 0;

	mov	DWORD PTR _cpcScopingEntityName$[ebp], 0

; 3416 :             bScopeOI = FALSE;

	mov	BYTE PTR _bScopeOI$[ebp], 0
$L8685:

; 3419 :       else

	jmp	SHORT $L8687
$L8682:

; 3421 :          cpcScopingEntityName = 0;

	mov	DWORD PTR _cpcScopingEntityName$[ebp], 0

; 3422 :          bScopeOI = FALSE;

	mov	BYTE PTR _bScopeOI$[ebp], 0
$L8687:

; 3425 : 
; 3426 :    if ( lQualRequest & zQUAL_OPERAND )

	mov	edx, DWORD PTR _lQualRequest$[ebp]
	and	edx, 40704				; 00009f00H
	test	edx, edx
	je	SHORT $L8688

; 3428 :       zLONG lAttribControl = 0;

	mov	DWORD PTR _lAttribControl$8689[ebp], 0

; 3429 : 
; 3430 :       // Check to see if we should use hidden attributes.
; 3431 :       if ( lControl & zQUAL_ATTR_HIDDEN )

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 16777216				; 01000000H
	test	eax, eax
	je	SHORT $L8690

; 3432 :          lAttribControl = zALLOW_HIDDEN;

	mov	DWORD PTR _lAttribControl$8689[ebp], 1
$L8690:

; 3433 : 
; 3434 :       if ( (lpViewEntityAttrib =
; 3435 :             fnValidViewAttrib( lpView, lpViewEntity,
; 3436 :                                cpcAttributeName, lAttribControl )) == 0 )

	mov	ecx, DWORD PTR _lAttribControl$8689[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcAttributeName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpViewEntityAttrib$[ebp], eax
	cmp	DWORD PTR _lpViewEntityAttrib$[ebp], 0
	jne	SHORT $L8691

; 3438 :          fnOperationReturn( iSetEntityCursor, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	184					; 000000b8H
	call	_fnOperationReturn
	add	esp, 8

; 3439 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8651
$L8691:

; 3442 :    else

	jmp	SHORT $L8692
$L8688:

; 3443 :       lpViewEntityAttrib = 0;

	mov	DWORD PTR _lpViewEntityAttrib$[ebp], 0
$L8692:

; 3444 : 
; 3445 :    if ( lQualRequest & (zQUAL_ENTITYCSR | zQUAL_ENTITYATTR) )

	mov	eax, DWORD PTR _lQualRequest$[ebp]
	and	eax, 2101248				; 00201000H
	test	eax, eax
	je	$L8706

; 3447 :       // Validate parameters
; 3448 :       if ( (nRC = fnValidateCursorParameters( &lpCurrentTask,
; 3449 :                                               &lpSrcViewEntity,
; 3450 :                                               0, // No scoping view entity
; 3451 :                                               &lpSrcViewEntityCsr,
; 3452 :                                               0,
; 3453 :                                               0, // do not pass oper id
; 3454 :                                               (zVIEW) pQualValue,
; 3455 :                                               cpcSrcEntityName,
; 3456 :                                               0 )) != 0 ) // no scoping entity

	push	0
	mov	ecx, DWORD PTR _cpcSrcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pQualValue$[ebp]
	push	edx
	push	0
	push	0
	lea	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	eax
	push	0
	lea	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax
	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	SHORT $L8695

; 3458 :          fnOperationReturn( iSetEntityCursor, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	184					; 000000b8H
	call	_fnOperationReturn
	add	esp, 8

; 3459 :          return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8651
$L8695:

; 3461 : 
; 3462 :       if ( lQualRequest & zQUAL_ENTITYATTR )

	mov	edx, DWORD PTR _lQualRequest$[ebp]
	and	edx, 4096				; 00001000H
	test	edx, edx
	je	$L8696

; 3464 :          zLONG lAttribControl = 0;

	mov	DWORD PTR _lAttribControl$8697[ebp], 0

; 3465 : 
; 3466 :          // Check to see if we should use hidden attributes.
; 3467 :          if ( lControl & zQUAL_ATTR_HIDDEN )

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 16777216				; 01000000H
	test	eax, eax
	je	SHORT $L8698

; 3468 :             lAttribControl = zALLOW_HIDDEN;

	mov	DWORD PTR _lAttribControl$8697[ebp], 1
$L8698:

; 3469 : 
; 3470 :          lpSrcViewEntityAttrib =
; 3471 :                    fnValidViewAttrib( (zVIEW) pQualValue, lpSrcViewEntity,
; 3472 :                                       cpcSrcAttributeName, lAttribControl );

	mov	ecx, DWORD PTR _lAttribControl$8697[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcSrcAttributeName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	push	ecx
	call	_fnValidViewAttrib
	add	esp, 16					; 00000010H
	mov	DWORD PTR _lpSrcViewEntityAttrib$[ebp], eax

; 3473 :          if ( lpSrcViewEntityAttrib == 0 )

	cmp	DWORD PTR _lpSrcViewEntityAttrib$[ebp], 0
	jne	SHORT $L8700

; 3475 :             fnOperationReturn( iSetEntityCursor, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	184					; 000000b8H
	call	_fnOperationReturn
	add	esp, 8

; 3476 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8651
$L8700:

; 3478 : 
; 3479 :          // If SrcAttribute value is null, then the zQUAL_ATTR_NULL
; 3480 :          // qualifier must have been specified, else error...
; 3481 :          if ( fnAttributeValueNull( (zVIEW) pQualValue,
; 3482 :                                     zGETPTR( lpSrcViewEntityCsr->hEntityInstance ),
; 3483 :                                     lpSrcViewEntityAttrib ) &&
; 3484 :               (lQualRequest & zQUAL_ATTR_NULL) == 0 )

	mov	eax, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _pQualValue$[ebp]
	push	eax
	call	_fnAttributeValueNull
	add	esp, 12					; 0000000cH
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L8703
	mov	edx, DWORD PTR _lQualRequest$[ebp]
	and	edx, 32768				; 00008000H
	test	edx, edx
	jne	SHORT $L8703

; 3486 :             fnOperationReturn( iSetEntityCursor, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	184					; 000000b8H
	call	_fnOperationReturn
	add	esp, 8

; 3487 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8651
$L8703:

; 3489 :          else
; 3490 :             lControl &= zLBITS - zQUAL_ATTR_NULL; // turn off ...

	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ch, 127					; 0000007fH
	mov	DWORD PTR _lControl$[ebp], ecx

; 3492 :       else

	jmp	SHORT $L8705
$L8696:

; 3494 :          lpSrcViewEntityAttrib = 0;

	mov	DWORD PTR _lpSrcViewEntityAttrib$[ebp], 0
$L8705:

; 3496 : 
; 3497 :       // Make sure the source view entity and the target view entity are
; 3498 :       // the same Entity type.
; 3499 :       if ( lQualRequest & zQUAL_ENTITYCSR &&
; 3500 :            lpViewEntity->lEREntTok != lpSrcViewEntity->lEREntTok )

	mov	edx, DWORD PTR _lQualRequest$[ebp]
	and	edx, 2097152				; 00200000H
	test	edx, edx
	je	SHORT $L8706
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+195]
	cmp	edx, DWORD PTR [ecx+195]
	je	SHORT $L8706

; 3502 :          // "KZOEE268 - Source and target entity types do not match"
; 3503 :          fnIssueCoreError( lpCurrentTask, lpView, 8, 268, 0,
; 3504 :                            lpViewEntity->szName,
; 3505 :                            lpSrcViewEntity->szName );

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	268					; 0000010cH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3506 :          fnOperationReturn( iSetEntityCursor, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	184					; 000000b8H
	call	_fnOperationReturn
	add	esp, 8

; 3507 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8651
$L8706:

; 3510 : 
; 3511 :    if ( cpcScopingEntityName == zSCOPE_OI )

	cmp	DWORD PTR _cpcScopingEntityName$[ebp], 1
	jne	$L8708

; 3513 :       LPVIEWENTITYCSR      lpTempViewEntityCsr;
; 3514 :       LPENTITYINSTANCE     lpTempEntityInstance;
; 3515 :       LPVIEWENTITYCSR      lpNextHier;
; 3516 :       LPVIEWENTITY         lpTempViewEntity;
; 3517 :       LPVIEWCSR            lpTempViewCsr;
; 3518 :       zPVOID               hTempViewEntityCsr;
; 3519 :       zPVOID               hTempEntityInstance;
; 3520 :       zPVOID               hTempViewEntity;
; 3521 : 
; 3522 :       hTempViewEntityCsr  = fnAllocDataspace( lpCurrentTask->hFirstDataHeader,
; 3523 :                                               sizeof( ViewEntityCsrRecord ),
; 3524 :                                               1, 0, iViewEntityCsr );

	push	10023					; 00002727H
	push	0
	push	1
	push	30					; 0000001eH
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	eax, DWORD PTR [edx+94]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hTempViewEntityCsr$8714[ebp], eax

; 3525 :       hTempEntityInstance = fnAllocDataspace( lpCurrentTask->hFirstDataHeader,
; 3526 :                                               sizeof( EntityInstanceRecord ),
; 3527 :                                               1, 0, iEntityInstance );

	push	10024					; 00002728H
	push	0
	push	1
	push	68					; 00000044H
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	mov	edx, DWORD PTR [ecx+94]
	push	edx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hTempEntityInstance$8715[ebp], eax

; 3528 :       hTempViewEntity     = fnAllocDataspace( lpCurrentTask->hFirstDataHeader,
; 3529 :                                               sizeof( ViewEntityRecord ),
; 3530 :                                               1, 0, iViewEntity );

	push	10012					; 0000271cH
	push	0
	push	1
	push	251					; 000000fbH
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	ecx, DWORD PTR [eax+94]
	push	ecx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hTempViewEntity$8716[ebp], eax

; 3531 : 
; 3532 :       lpTempViewEntityCsr  = zGETPTR( hTempViewEntityCsr );

	mov	edx, DWORD PTR _hTempViewEntityCsr$8714[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempViewEntityCsr$8709[ebp], eax

; 3533 :       lpTempEntityInstance = zGETPTR( hTempEntityInstance );

	mov	eax, DWORD PTR _hTempEntityInstance$8715[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempEntityInstance$8710[ebp], eax

; 3534 :       lpTempViewEntity     = zGETPTR( hTempViewEntity );

	mov	ecx, DWORD PTR _hTempViewEntity$8716[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempViewEntity$8712[ebp], eax

; 3535 : 
; 3536 :       lpScopingViewEntityCsr = lpTempViewEntityCsr;

	mov	edx, DWORD PTR _lpTempViewEntityCsr$8709[ebp]
	mov	DWORD PTR _lpScopingViewEntityCsr$[ebp], edx

; 3537 :       lpScopingViewEntity    = lpTempViewEntity;

	mov	eax, DWORD PTR _lpTempViewEntity$8712[ebp]
	mov	DWORD PTR _lpScopingViewEntity$[ebp], eax

; 3538 : 
; 3539 :       lpTempViewEntityCsr->hViewEntity     = hTempViewEntity;

	mov	ecx, DWORD PTR _lpTempViewEntityCsr$8709[ebp]
	mov	edx, DWORD PTR _hTempViewEntity$8716[ebp]
	mov	DWORD PTR [ecx+14], edx

; 3540 :       lpTempViewEntityCsr->hEntityInstance = hTempEntityInstance;

	mov	eax, DWORD PTR _lpTempViewEntityCsr$8709[ebp]
	mov	ecx, DWORD PTR _hTempEntityInstance$8715[ebp]
	mov	DWORD PTR [eax+26], ecx

; 3541 :    // if ( lpTempViewEntityCsr->hEntityInstance == UNSET_CSR )
; 3542 :    //    SysMessageBox( 0, "SetEntityCursor", "UNSET_CSR", -1 );
; 3543 : 
; 3544 :       // Set lpNextHier for ViewEntityCsr
; 3545 :       // Set lpScopingViewEntityCsr->hNextHier
; 3546 :       lpTempViewCsr = zGETPTR( lpViewEntityCsr->hViewCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempViewCsr$8713[ebp], eax

; 3547 :       lpTempViewEntityCsr->hNextHier = lpTempViewCsr->hRootViewEntityCsr; // ???

	mov	ecx, DWORD PTR _lpTempViewEntityCsr$8709[ebp]
	mov	edx, DWORD PTR _lpTempViewCsr$8713[ebp]
	mov	eax, DWORD PTR [edx+18]
	mov	DWORD PTR [ecx+2], eax

; 3548 : 
; 3549 :       // Set lpScopingViewEntityCsr->hEntityInstance->hViewEntity.
; 3550 :       lpTempEntityInstance->hViewEntity = lpTempViewEntityCsr->hViewEntity;

	mov	ecx, DWORD PTR _lpTempEntityInstance$8710[ebp]
	mov	edx, DWORD PTR _lpTempViewEntityCsr$8709[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR [ecx+2], eax

; 3551 : 
; 3552 :       // set lpNextHier for ViewEntity
; 3553 :       // set lpScopingViewEntity->hNextHier
; 3554 :       lpNextHier = zGETPTR( lpTempViewEntityCsr->hNextHier );

	mov	ecx, DWORD PTR _lpTempViewEntityCsr$8709[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$8711[ebp], eax

; 3555 :       lpTempViewEntity->hNextHier = lpNextHier->hViewEntity;

	mov	eax, DWORD PTR _lpTempViewEntity$8712[ebp]
	mov	ecx, DWORD PTR _lpNextHier$8711[ebp]
	mov	edx, DWORD PTR [ecx+14]
	mov	DWORD PTR [eax+2], edx

; 3556 : 
; 3557 :       // Set lpNextHier for EntityInstance.
; 3558 :       // Set lpScopingViewEntityCsr->hEntityInstance->hNextHier.
; 3559 :       lpTempEntityInstance->hNextHier = lpNextHier->hEntityInstance;

	mov	eax, DWORD PTR _lpTempEntityInstance$8710[ebp]
	mov	ecx, DWORD PTR _lpNextHier$8711[ebp]
	mov	edx, DWORD PTR [ecx+26]
	mov	DWORD PTR [eax+14], edx

; 3560 : 
; 3561 :       nRC = fnSetEntityCursor( lpView, lpViewEntity,
; 3562 :                                lpViewEntityCsr, lpViewEntityAttrib,
; 3563 :                                lControl, (zPVOID) pQualValue,
; 3564 :                                lpSrcViewEntityCsr, lpSrcViewEntityAttrib,
; 3565 :                                lRelPosition,
; 3566 :                                lpScopingViewEntityCsr,
; 3567 :                                cpcContextName,
; 3568 :                                lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lRelPosition$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _pQualValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lControl$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 3569 : 
; 3570 :       fnFreeDataspace( lpTempViewEntityCsr );

	mov	eax, DWORD PTR _lpTempViewEntityCsr$8709[ebp]
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 3571 :       fnFreeDataspace( lpTempEntityInstance );

	mov	ecx, DWORD PTR _lpTempEntityInstance$8710[ebp]
	push	ecx
	call	_fnFreeDataspace
	add	esp, 4

; 3572 :       fnFreeDataspace( lpTempViewEntity );

	mov	edx, DWORD PTR _lpTempViewEntity$8712[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 3574 :    else

	jmp	SHORT $L8726
$L8708:

; 3576 :       nRC = fnSetEntityCursor( lpView, lpViewEntity,
; 3577 :                                lpViewEntityCsr, lpViewEntityAttrib,
; 3578 :                                lControl, (zPVOID) pQualValue,
; 3579 :                                lpSrcViewEntityCsr, lpSrcViewEntityAttrib,
; 3580 :                                lRelPosition,
; 3581 :                                lpScopingViewEntityCsr,
; 3582 :                                cpcContextName,
; 3583 :                                lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lRelPosition$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _pQualValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lControl$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax
$L8726:

; 3585 : 
; 3586 :    fnOperationReturn( iSetEntityCursor, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	184					; 000000b8H
	call	_fnOperationReturn
	add	esp, 8

; 3587 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8651:

; 3588 : }

	mov	esp, ebp
	pop	ebp
	ret	40					; 00000028H
_SetEntityCursor@40 ENDP
_TEXT	ENDS
PUBLIC	_fnScanEI_Scoping
PUBLIC	_fnScanEI_NoScoping
PUBLIC	??_C@_0EE@ELLG@Operation?5?8?$CFs?8?5does?5not?5handle?5a@ ; `string'
PUBLIC	??_C@_0N@LGH@System?5Error?$AA@			; `string'
PUBLIC	??_C@_08MEJN@TZDMD101?$AA@			; `string'
PUBLIC	??_C@_02GIEM@?0?5?$AA@				; `string'
PUBLIC	??_C@_0BC@JABP@fnSetEntityCursor?$AA@		; `string'
PUBLIC	??_C@_0CO@LMCH@?$CIcm?$CJ?5Invalid?5qualification?5type?5@ ; `string'
PUBLIC	??_C@_04KBML@?$CIL?9?$DO?$AA@			; `string'
PUBLIC	??_C@_03OIDK@?$CJ?0?5?$AA@			; `string'
PUBLIC	??_C@_09JMMI@?$CI?$DP?9?$DODT?$CJ?0?5?$AA@	; `string'
PUBLIC	??_C@_08GFGC@?$CIS?9?$DOL?$CJ?0?5?$AA@		; `string'
PUBLIC	??_C@_08EADA@?$CIS?9?$DOM?$CJ?0?5?$AA@		; `string'
PUBLIC	??_C@_04KOHF@?$CIS?9?$DO?$AA@			; `string'
PUBLIC	??_C@_04PDNN@?$CIM?9?$DO?$AA@			; `string'
EXTRN	_SysConvertDecimalToLong@8:NEAR
EXTRN	_SysConvertLongToDecimal@8:NEAR
EXTRN	__imp__sprintf:NEAR
EXTRN	_TraceLineS@8:NEAR
EXTRN	_fnValidNumericString:NEAR
EXTRN	_fnValidDecimalString:NEAR
EXTRN	_CreateViewFromViewForTask@12:NEAR
EXTRN	_DropView@4:NEAR
EXTRN	_ConvertDecimalToString@52:NEAR
EXTRN	_strlen:NEAR
EXTRN	_Table_Handler@36:NEAR
EXTRN	_fnDomainProcessingRequired:NEAR
EXTRN	_MessageSend@24:NEAR
EXTRN	_fnCallDomainOper@40:NEAR
EXTRN	_szNullS:DWORD
EXTRN	_lNullInteger:DWORD
EXTRN	_stNullDateTime:FWORD
EXTRN	_fnReclaimHiddenInstances@4:NEAR
EXTRN	__imp___ltoa:NEAR
EXTRN	_SysAssignDecimalFromNull@4:NEAR
;	COMDAT ??_C@_0EE@ELLG@Operation?5?8?$CFs?8?5does?5not?5handle?5a@
; File C:\10C\A\oe\KZOECMAA.C
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
;	COMDAT ??_C@_02GIEM@?0?5?$AA@
_DATA	SEGMENT
??_C@_02GIEM@?0?5?$AA@ DB ', ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@JABP@fnSetEntityCursor?$AA@
_DATA	SEGMENT
??_C@_0BC@JABP@fnSetEntityCursor?$AA@ DB 'fnSetEntityCursor', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CO@LMCH@?$CIcm?$CJ?5Invalid?5qualification?5type?5@
_DATA	SEGMENT
??_C@_0CO@LMCH@?$CIcm?$CJ?5Invalid?5qualification?5type?5@ DB '(cm) Inval'
	DB	'id qualification type with context:', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_04KBML@?$CIL?9?$DO?$AA@
_DATA	SEGMENT
??_C@_04KBML@?$CIL?9?$DO?$AA@ DB '(L->', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_03OIDK@?$CJ?0?5?$AA@
_DATA	SEGMENT
??_C@_03OIDK@?$CJ?0?5?$AA@ DB '), ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_09JMMI@?$CI?$DP?9?$DODT?$CJ?0?5?$AA@
_DATA	SEGMENT
??_C@_09JMMI@?$CI?$DP?9?$DODT?$CJ?0?5?$AA@ DB '(?->DT), ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_08GFGC@?$CIS?9?$DOL?$CJ?0?5?$AA@
_DATA	SEGMENT
??_C@_08GFGC@?$CIS?9?$DOL?$CJ?0?5?$AA@ DB '(S->L), ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_08EADA@?$CIS?9?$DOM?$CJ?0?5?$AA@
_DATA	SEGMENT
??_C@_08EADA@?$CIS?9?$DOM?$CJ?0?5?$AA@ DB '(S->M), ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_04KOHF@?$CIS?9?$DO?$AA@
_DATA	SEGMENT
??_C@_04KOHF@?$CIS?9?$DO?$AA@ DB '(S->', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_04PDNN@?$CIM?9?$DO?$AA@
_DATA	SEGMENT
??_C@_04PDNN@?$CIM?9?$DO?$AA@ DB '(M->', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntity$ = 12
_lpViewEntityCsr$ = 16
_lpViewEntityAttrib$ = 20
_lControl$ = 24
_pQualValue$ = 28
_lpSrcViewEntityCsr$ = 32
_lpSrcViewEntityAttrib$ = 36
_lRelPosition$ = 40
_lpScopingViewEntityCsr$ = 44
_cpcContextName$ = 48
_lpCurrentTask$ = 52
_lpSrcEntityInstance$ = -12
_lpViewCsr$ = -8
_lpViewOI$ = -324
_lAbsPosition$ = -308
_lQualRequest$ = -32
_lQualOperator$ = -20
_nDesiredSelectState$ = -320
_bSelectRelevant$ = -4
_bRelPosition$ = -304
_bSameParentKeepChildren$ = -316
_bRecurse$ = -16
_bCursorTest$ = -24
_vAttrView$ = -300
_cDomainType$ = -312
_cVariableType$ = -40
_unTemp$ = -296
_lTemp$ = -36
_nRC$ = -28
_ulTossout$8808 = -328
_szContext$8813 = -368
_lpTaskDomain$8814 = -372
_lpDomain$8815 = -332
_szMsg$8828 = -872
_lpTaskDomain$8847 = -876
_bSkipDomain$8848 = -880
_lpDomain$8870 = -884
_szMsg$8873 = -1384
_lpDomain$8886 = -1388
_sz$8918 = -1644
_n$8919 = -1648
_sz$8923 = -1904
_sz$8940 = -2160
_sz$8950 = -2416
_sz$8953 = -2672
_n$8954 = -2676
_sz$8967 = -2932
_n$8968 = -2936
_fnSetEntityCursor PROC NEAR

; 3613 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 2972				; 00000b9cH
	push	esi
	push	edi

; 3614 :    LPENTITYINSTANCE  lpSrcEntityInstance;
; 3615 :    LPVIEWCSR         lpViewCsr;
; 3616 :    LPVIEWOI          lpViewOI;
; 3617 :    zLONG    lAbsPosition;        // type of 'absolute' positioning
; 3618 :    zLONG    lQualRequest;        // type of qualified request
; 3619 :    zLONG    lQualOperator;       // qualification operator <,>,=,<=,>=,~...
; 3620 :    zSHORT   nDesiredSelectState; // 0 - unselected, 1 - selected
; 3621 :    zBOOL    bSelectRelevant;     // Set if select state of entity is relevent
; 3622 :    zBOOL    bRelPosition;        // Set if relative positioning to be done
; 3623 :    zBOOL    bSameParentKeepChildren; // This one's for you...
; 3624 :    zBOOL    bRecurse;            // if Set, search recursive subobject
; 3625 :    zBOOL    bCursorTest;         // if Set, only the return code for setting
; 3626 :                                  // the cursor is set, actual cursors are not
; 3627 :                                  // moved.
; 3628 :    zVIEW    vAttrView = 0;       // Used by fnQualifiedInstance, for use

	mov	DWORD PTR _vAttrView$[ebp], 0

; 3629 :                                  // with domains and derived attributes.
; 3630 :    zCHAR    cDomainType;
; 3631 :    zCHAR    cVariableType;
; 3632 :    union
; 3633 :    {
; 3634 :       zDECIMAL dDecimal;
; 3635 :       zLONG    lInteger;
; 3636 :       zCHAR    szString[ 256 ];
; 3637 :    } unTemp;
; 3638 : 
; 3639 :    zLONG    lTemp;
; 3640 :    zSHORT   nRC;
; 3641 : 
; 3642 :    // Check for recursive request
; 3643 :    bRecurse = lControl & zRECURS ? 1 : 0;

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 131072				; 00020000H
	neg	eax
	sbb	eax, eax
	neg	eax
	mov	BYTE PTR _bRecurse$[ebp], al

; 3644 : 
; 3645 :    // Check for Test Cursor movement option
; 3646 :    bCursorTest = lControl & zTEST_CSR_RESULT ? 1 : 0;

	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 65536				; 00010000H
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	mov	BYTE PTR _bCursorTest$[ebp], cl

; 3647 : 
; 3648 :    // Check for possibility of keeping the child cursors intact.
; 3649 :    bSameParentKeepChildren = lControl & zSPARENT_KEEPCHILDREN ? 1 : 0;

	mov	edx, DWORD PTR _lControl$[ebp]
	and	edx, 1048576				; 00100000H
	neg	edx
	sbb	edx, edx
	neg	edx
	mov	BYTE PTR _bSameParentKeepChildren$[ebp], dl

; 3650 : 
; 3651 :    // Check for "Entity Selected State " request
; 3652 :    lTemp = lControl & (zQUAL_SELECTED | zQUAL_UNSELECTED);

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 24576				; 00006000H
	mov	DWORD PTR _lTemp$[ebp], eax

; 3653 : 
; 3654 :    // If Selected and Unselected entities are requested, then the
; 3655 :    // Select state of the entity is not relevent.
; 3656 :    if ( lTemp && (-lTemp & lTemp) == lTemp )

	cmp	DWORD PTR _lTemp$[ebp], 0
	je	SHORT $L8775
	mov	ecx, DWORD PTR _lTemp$[ebp]
	neg	ecx
	and	ecx, DWORD PTR _lTemp$[ebp]
	cmp	ecx, DWORD PTR _lTemp$[ebp]
	jne	SHORT $L8775

; 3658 :       nDesiredSelectState = (lTemp == zQUAL_SELECTED);

	xor	edx, edx
	cmp	DWORD PTR _lTemp$[ebp], 8192		; 00002000H
	sete	dl
	mov	WORD PTR _nDesiredSelectState$[ebp], dx

; 3659 :       bSelectRelevant = TRUE;

	mov	BYTE PTR _bSelectRelevant$[ebp], 1

; 3661 :    else

	jmp	SHORT $L8776
$L8775:

; 3662 :       bSelectRelevant = FALSE;

	mov	BYTE PTR _bSelectRelevant$[ebp], 0
$L8776:

; 3663 : 
; 3664 :    // Relative and Absolute positioning requests may both be specified.
; 3665 : 
; 3666 :    // Relative positioning requested.
; 3667 :    if ( lControl & zPOS_RELATIVE )

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 8
	test	eax, eax
	je	SHORT $L8778

; 3668 :       bRelPosition = TRUE;

	mov	BYTE PTR _bRelPosition$[ebp], 1

; 3669 :    else

	jmp	SHORT $L8779
$L8778:

; 3670 :       bRelPosition = FALSE;

	mov	BYTE PTR _bRelPosition$[ebp], 0
$L8779:

; 3671 : 
; 3672 :    // Set Absolute positioning request.
; 3673 :    lAbsPosition = lControl & zPOS_ABS;

	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 7
	mov	DWORD PTR _lAbsPosition$[ebp], ecx

; 3674 : 
; 3675 :    // Set Qualification request
; 3676 :    lQualRequest = lControl & (zQUAL_INTEGER | zQUAL_DECIMAL | zQUAL_DATETIME |
; 3677 :                               zQUAL_STRING  | zQUAL_ENTITYCSR | zQUAL_ENTITYKEY |
; 3678 :                               zQUAL_ATTR_NULL | zQUAL_ENTITYATTR);

	mov	edx, DWORD PTR _lControl$[ebp]
	and	edx, 10526464				; 00a09f00H
	mov	DWORD PTR _lQualRequest$[ebp], edx

; 3679 : 
; 3680 :    // Set Qualification operator.
; 3681 :    if ( lQualRequest )

	cmp	DWORD PTR _lQualRequest$[ebp], 0
	je	SHORT $L8784

; 3683 :       lQualOperator = lControl & zQUAL_OPERATOR;

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 240				; 000000f0H
	mov	DWORD PTR _lQualOperator$[ebp], eax

; 3684 :       if ( (lQualOperator & (zQUAL_OPERATOR - zQUAL_NOT)) == 0 )

	mov	ecx, DWORD PTR _lQualOperator$[ebp]
	and	ecx, 112				; 00000070H
	test	ecx, ecx
	jne	SHORT $L8782

; 3685 :          lQualOperator |= zQUAL_EQUAL;

	mov	edx, DWORD PTR _lQualOperator$[ebp]
	or	edx, 16					; 00000010H
	mov	DWORD PTR _lQualOperator$[ebp], edx

; 3686 :       else

	jmp	SHORT $L8784
$L8782:

; 3688 :          if ( (lQualOperator & zQUAL_NOT) == zQUAL_NOT &&
; 3689 :               lQualOperator != (zQUAL_NOT | zQUAL_EQUAL) )

	mov	eax, DWORD PTR _lQualOperator$[ebp]
	and	eax, 128				; 00000080H
	cmp	eax, 128				; 00000080H
	jne	SHORT $L8784
	cmp	DWORD PTR _lQualOperator$[ebp], 144	; 00000090H
	je	SHORT $L8784

; 3691 :             lQualOperator = -lQualOperator & zQUAL_OPERATOR;

	mov	ecx, DWORD PTR _lQualOperator$[ebp]
	neg	ecx
	and	ecx, 240				; 000000f0H
	mov	DWORD PTR _lQualOperator$[ebp], ecx
$L8784:

; 3695 : 
; 3696 :    if ( lQualRequest == zQUAL_ATTR_NULL )

	cmp	DWORD PTR _lQualRequest$[ebp], 32768	; 00008000H
	jne	$L8787

; 3697 :       switch ( lpViewEntityAttrib->cType )
; 3698 :       {

	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	movsx	eax, BYTE PTR [edx+202]
	mov	DWORD PTR -2940+[ebp], eax
	mov	ecx, DWORD PTR -2940+[ebp]
	sub	ecx, 66					; 00000042H
	mov	DWORD PTR -2940+[ebp], ecx
	cmp	DWORD PTR -2940+[ebp], 18		; 00000012H
	ja	SHORT $L8787
	mov	eax, DWORD PTR -2940+[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR $L9877[eax]
	jmp	DWORD PTR $L9878[edx*4]
$L8790:

; 3699 :          case zTYPE_INTEGER:
; 3700 :             pQualValue = (zPVOID) &lNullInteger;

	mov	DWORD PTR _pQualValue$[ebp], OFFSET FLAT:_lNullInteger

; 3701 :             lQualRequest = zQUAL_INTEGER;

	mov	DWORD PTR _lQualRequest$[ebp], 256	; 00000100H

; 3702 :             break;

	jmp	SHORT $L8787
$L8792:

; 3703 : 
; 3704 :          case zTYPE_DECIMAL:
; 3705 :             SysAssignDecimalFromNull( &unTemp.dDecimal );

	lea	ecx, DWORD PTR _unTemp$[ebp]
	push	ecx
	call	_SysAssignDecimalFromNull@4

; 3706 :             pQualValue = (zPVOID) &unTemp.dDecimal;

	lea	edx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], edx

; 3707 :             lQualRequest = zQUAL_DECIMAL;

	mov	DWORD PTR _lQualRequest$[ebp], 512	; 00000200H

; 3708 :             break;

	jmp	SHORT $L8787
$L8794:

; 3709 : 
; 3710 :          case zTYPE_STRING:
; 3711 :             pQualValue = (zPVOID) szNullS;

	mov	eax, DWORD PTR _szNullS
	mov	DWORD PTR _pQualValue$[ebp], eax

; 3712 :             lQualRequest = zQUAL_STRING;

	mov	DWORD PTR _lQualRequest$[ebp], 1024	; 00000400H

; 3713 :             break;

	jmp	SHORT $L8787
$L8796:

; 3714 : 
; 3715 :          case zTYPE_DATETIME:
; 3716 :             pQualValue = (zPVOID) &stNullDateTime;

	mov	DWORD PTR _pQualValue$[ebp], OFFSET FLAT:_stNullDateTime

; 3717 :             lQualRequest = zQUAL_DATETIME;

	mov	DWORD PTR _lQualRequest$[ebp], 2048	; 00000800H

; 3718 :             break;

	jmp	SHORT $L8787
$L8798:

; 3719 : 
; 3720 :          case zTYPE_BLOB:
; 3721 :             // Search for null attribute not supported for these attribute types.
; 3722 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8787:

; 3724 : 
; 3725 :    // If Qualification request uses a source view, set the pointer to
; 3726 :    // the source entity instance.
; 3727 :    if ( lQualRequest & (zQUAL_ENTITYCSR | zQUAL_ENTITYATTR) )

	mov	ecx, DWORD PTR _lQualRequest$[ebp]
	and	ecx, 2101248				; 00201000H
	test	ecx, ecx
	je	$L8833

; 3729 :       lpSrcEntityInstance = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 3730 : 
; 3731 :       // If the search argument is a derived attribute, set it now.
; 3732 :       if ( lQualRequest == zQUAL_ENTITYATTR )

	cmp	DWORD PTR _lQualRequest$[ebp], 4096	; 00001000H
	jne	$L8833

; 3734 :          if ( lpSrcViewEntityAttrib->szDerivedOper[ 0 ] )

	mov	ecx, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+213]
	test	edx, edx
	je	SHORT $L8805

; 3736 :             nRC = fnInvokeDerivedOperation( (zVIEW) pQualValue,
; 3737 :                                             zGETPTR( lpSrcViewEntityCsr->
; 3738 :                                                                hViewEntity ),
; 3739 :                                             lpSrcViewEntityAttrib,
; 3740 :                                             lpCurrentTask, zDERIVED_GET );

	push	2
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	push	ecx
	call	_fnInvokeDerivedOperation
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 3741 :             if ( nRC == zCALL_ERROR )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8805

; 3742 :                return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8752
$L8805:

; 3744 : 
; 3745 :          if ( lpSrcViewEntityAttrib->cType != lpViewEntityAttrib->cType ||
; 3746 :               lpSrcViewEntityAttrib->hDomain != lpViewEntityAttrib->hDomain )

	mov	eax, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	movsx	eax, BYTE PTR [edx+202]
	cmp	ecx, eax
	jne	SHORT $L8807
	mov	ecx, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	mov	eax, DWORD PTR [ecx+198]
	cmp	eax, DWORD PTR [edx+198]
	je	$L8833
$L8807:

; 3748 :             zULONG   ulTossout;
; 3749 : 
; 3750 :             nRC = fnGetVariableFromAttribute( (zPVOID) &unTemp,
; 3751 :                                               &ulTossout,
; 3752 :                                               zTYPE_STRING,
; 3753 :                                               sizeof( unTemp.szString ),
; 3754 :                                               (zVIEW) pQualValue,
; 3755 :                                               lpSrcViewEntityCsr,
; 3756 :                                               lpSrcViewEntityAttrib,
; 3757 :                                               0, lpCurrentTask, 0 );

	push	0
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	push	ecx
	push	256					; 00000100H
	push	83					; 00000053H
	lea	edx, DWORD PTR _ulTossout$8808[ebp]
	push	edx
	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	call	_fnGetVariableFromAttribute
	add	esp, 40					; 00000028H
	mov	WORD PTR _nRC$[ebp], ax

; 3758 :             if ( nRC == 0 || nRC == zVAR_NULL )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L8812
	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -1
	jne	$L8833
$L8812:

; 3760 :                zCHAR          szContext[ 33 ];
; 3761 :                LPTASKDOMAIN   lpTaskDomain;
; 3762 :                LPDOMAIN       lpDomain;
; 3763 : 
; 3764 :                szContext[ 0 ] = 0;

	mov	BYTE PTR _szContext$8813[ebp], 0

; 3765 :                if ( cpcContextName && *cpcContextName )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L8816
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L8816

; 3766 :                   zstrcpy( szContext, cpcContextName );

	mov	edx, DWORD PTR _cpcContextName$[ebp]
	push	edx
	lea	eax, DWORD PTR _szContext$8813[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 3767 :                else

	jmp	SHORT $L8818
$L8816:

; 3768 :                if ( lpSrcViewEntityAttrib->hDomain )

	mov	ecx, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	cmp	DWORD PTR [ecx+198], 0
	je	SHORT $L8818

; 3770 :                   lpDomain = zGETPTR( lpSrcViewEntityAttrib->hDomain );

	mov	edx, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	mov	eax, DWORD PTR [edx+198]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$8815[ebp], eax

; 3771 :                   zstrcpy( szContext, lpDomain->szName );

	mov	ecx, DWORD PTR _lpDomain$8815[ebp]
	add	ecx, 6
	push	ecx
	lea	edx, DWORD PTR _szContext$8813[ebp]
	push	edx
	call	_strcpy
	add	esp, 8
$L8818:

; 3773 : 
; 3774 :                cDomainType =
; 3775 :                  fnDomainProcessingRequired( &lpTaskDomain,
; 3776 :                                              lpView,
; 3777 :                                              lpCurrentTask,
; 3778 :                                              zGETPTR( lpViewEntityAttrib->hDomain ) );

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+198]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpTaskDomain$8814[ebp]
	push	ecx
	call	_fnDomainProcessingRequired
	add	esp, 16					; 00000010H
	mov	BYTE PTR _cDomainType$[ebp], al

; 3779 :                if ( cDomainType && cDomainType != zDM_TYPE_FORMAT )

	movsx	edx, BYTE PTR _cDomainType$[ebp]
	test	edx, edx
	je	$L8833
	movsx	eax, BYTE PTR _cDomainType$[ebp]
	cmp	eax, 70					; 00000046H
	je	$L8833

; 3781 :                   if ( cDomainType == zDM_TYPE_TABLE )

	movsx	ecx, BYTE PTR _cDomainType$[ebp]
	cmp	ecx, 84					; 00000054H
	jne	SHORT $L8822

; 3783 :                      nRC = Table_Handler( zDME_GET_COMPARE_VALUE,
; 3784 :                                           zTYPE_STRING,
; 3785 :                                           (zPVOID) &unTemp,
; 3786 :                                           szContext,
; 3787 :                                           lpView,
; 3788 :                                           lpViewEntity,
; 3789 :                                           lpViewEntityAttrib,
; 3790 :                                           sizeof( unTemp ),
; 3791 :                                           (zPVOID) 0 );

	push	0
	push	256					; 00000100H
	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szContext$8813[ebp]
	push	edx
	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	push	83					; 00000053H
	push	9
	call	_Table_Handler@36
	mov	WORD PTR _nRC$[ebp], ax

; 3793 :                   else

	jmp	$L8827
$L8822:

; 3795 :                      nRC = fnCallDomainOper( lpCurrentTask, lpTaskDomain,
; 3796 :                                              zDME_GET_COMPARE_VALUE,
; 3797 :                                              zTYPE_STRING,
; 3798 :                                              (zPVOID) &unTemp,
; 3799 :                                              szContext,
; 3800 :                                              lpView,
; 3801 :                                              lpViewEntity,
; 3802 :                                              lpViewEntityAttrib,
; 3803 :                                              sizeof( unTemp ) );

	push	256					; 00000100H
	mov	ecx, DWORD PTR _lpViewEntityAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szContext$8813[ebp]
	push	ecx
	lea	edx, DWORD PTR _unTemp$[ebp]
	push	edx
	push	83					; 00000053H
	push	9
	mov	eax, DWORD PTR _lpTaskDomain$8814[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnCallDomainOper@40
	mov	WORD PTR _nRC$[ebp], ax

; 3804 :                      if ( nRC == zDME_NOT_HANDLED )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -10				; fffffff6H
	jne	SHORT $L8827

; 3806 :                         zCHAR szMsg[ 500 ];
; 3807 : 
; 3808 :                         zsprintf( szMsg, "Operation '%s' does not handle an Entry "
; 3809 :                                   "Type of %ld for domain '%s'", lpDomain->szDomainOper,
; 3810 :                                   zDME_GET_COMPARE_VALUE, lpDomain->szName );

	mov	eax, DWORD PTR _lpDomain$8815[ebp]
	add	eax, 6
	push	eax
	push	9
	mov	ecx, DWORD PTR _lpDomain$8815[ebp]
	add	ecx, 100				; 00000064H
	push	ecx
	push	OFFSET FLAT:??_C@_0EE@ELLG@Operation?5?8?$CFs?8?5does?5not?5handle?5a@ ; `string'
	lea	edx, DWORD PTR _szMsg$8828[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 20					; 00000014H

; 3811 :                         MessageSend( lpView, "TZDMD101", "System Error",
; 3812 :                                      szMsg, zMSGQ_DOMAIN_ERROR, 0 );

	push	0
	push	200					; 000000c8H
	lea	eax, DWORD PTR _szMsg$8828[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0N@LGH@System?5Error?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_08MEJN@TZDMD101?$AA@	; `string'
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_MessageSend@24

; 3813 :                         return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8827:

; 3816 : 
; 3817 :                   switch ( nRC )
; 3818 :                   {

	movsx	edx, WORD PTR _nRC$[ebp]
	mov	DWORD PTR -2944+[ebp], edx
	mov	eax, DWORD PTR -2944+[ebp]
	add	eax, 2
	mov	DWORD PTR -2944+[ebp], eax
	cmp	DWORD PTR -2944+[ebp], 5
	ja	$L8842
	mov	ecx, DWORD PTR -2944+[ebp]
	jmp	DWORD PTR $L9879[ecx*4]
$L8836:

; 3819 :                      case -2:
; 3820 :                         // This means we are going to do a lot of extra
; 3821 :                         // processing for domains (down in
; 3822 :                         // fnQualifiedInstance)
; 3823 :                         // Create 'Temporary' view for derived attribute
; 3824 :                         // and also for domain processing.
; 3825 :                         nRC = CreateViewFromViewForTask( &vAttrView, lpView, 0 );

	push	0
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _vAttrView$[ebp]
	push	eax
	call	_CreateViewFromViewForTask@12
	mov	WORD PTR _nRC$[ebp], ax

; 3826 :                         if ( nRC )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L8837

; 3827 :                            return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8752
$L8837:

; 3828 : 
; 3829 :                         break;

	jmp	$L8833
$L8838:

; 3830 : 
; 3831 :                      case 0:
; 3832 :                      case 1:
; 3833 :                         lQualRequest = zQUAL_STRING;

	mov	DWORD PTR _lQualRequest$[ebp], 1024	; 00000400H

; 3834 :                         pQualValue = &unTemp.szString;

	lea	edx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], edx

; 3835 :                         cpcContextName = 0;

	mov	DWORD PTR _cpcContextName$[ebp], 0

; 3836 :                         break;

	jmp	$L8833
$L8839:

; 3837 : 
; 3838 :                      case 2:
; 3839 :                         lQualRequest = zQUAL_INTEGER;

	mov	DWORD PTR _lQualRequest$[ebp], 256	; 00000100H

; 3840 :                         pQualValue = &unTemp.lInteger;

	lea	eax, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], eax

; 3841 :                         cpcContextName = 0;

	mov	DWORD PTR _cpcContextName$[ebp], 0

; 3842 :                         break;

	jmp	$L8833
$L8840:

; 3843 : 
; 3844 :                      case 3:
; 3845 :                         lQualRequest = zQUAL_DECIMAL;

	mov	DWORD PTR _lQualRequest$[ebp], 512	; 00000200H

; 3846 :                         pQualValue = &unTemp.dDecimal;

	lea	ecx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], ecx

; 3847 :                         cpcContextName = 0;

	mov	DWORD PTR _cpcContextName$[ebp], 0

; 3848 :                         break;

	jmp	$L8833
$L8841:

; 3849 : 
; 3850 :                      case -1:
; 3851 :                         // If we get here and we're dealing with a table
; 3852 :                         // domain then the qual value is not a valid domain
; 3853 :                         // value.  Show an error message UNLESS the caller
; 3854 :                         // indicated that this is OK.
; 3855 :                         if ( cDomainType == zDM_TYPE_TABLE &&
; 3856 :                              ( lControl & zIGNORE_ERROR_358 ) == 0 )

	movsx	edx, BYTE PTR _cDomainType$[ebp]
	cmp	edx, 84					; 00000054H
	jne	$L8842
	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 4194304				; 00400000H
	test	eax, eax
	jne	$L8842

; 3858 :                            lpDomain = zGETPTR( lpTaskDomain->hDomain );

	mov	ecx, DWORD PTR _lpTaskDomain$8814[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$8815[ebp], eax

; 3859 :                            zstrcat( unTemp.szString, ", " );

	push	OFFSET FLAT:??_C@_02GIEM@?0?5?$AA@	; `string'
	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 3860 :                            zstrcat( unTemp.szString,
; 3861 :                                     lpDomain->szName );

	mov	ecx, DWORD PTR _lpDomain$8815[ebp]
	add	ecx, 6
	push	ecx
	lea	edx, DWORD PTR _unTemp$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 3862 :                            zstrcat( unTemp.szString, ", " );

	push	OFFSET FLAT:??_C@_02GIEM@?0?5?$AA@	; `string'
	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 3863 :                            zstrcat( unTemp.szString,
; 3864 :                                     lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _unTemp$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 3865 :                            // "KZOEE358 - Value not in Context for Domain "
; 3866 :                            fnIssueCoreError( lpCurrentTask, lpView, 0, 358, 0,
; 3867 :                                              unTemp.szString,
; 3868 :                                              lpViewEntityAttrib->szName );

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _unTemp$[ebp]
	push	ecx
	push	0
	push	358					; 00000166H
	push	0
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH
$L8842:

; 3870 : 
; 3871 :                      default:
; 3872 :                         // error message should have been issued by domain.
; 3873 :                         return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8833:

; 3885 : 
; 3886 :    // If a context name is specified, see if the domain will give us a
; 3887 :    // simple internal data type to compare for, rather than call the
; 3888 :    // domain for every entity instance looked at.
; 3889 :    cDomainType = 0;

	mov	BYTE PTR _cDomainType$[ebp], 0

; 3890 :    if ( cpcContextName && *cpcContextName )

	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	$L8846
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	$L8846

; 3892 :       LPTASKDOMAIN   lpTaskDomain;
; 3893 :       zBOOL          bSkipDomain = FALSE;

	mov	BYTE PTR _bSkipDomain$8848[ebp], 0

; 3894 : 
; 3895 :       switch ( lQualRequest )
; 3896 :       {

	mov	eax, DWORD PTR _lQualRequest$[ebp]
	mov	DWORD PTR -2948+[ebp], eax
	cmp	DWORD PTR -2948+[ebp], 1024		; 00000400H
	jg	SHORT $L9875
	cmp	DWORD PTR -2948+[ebp], 1024		; 00000400H
	je	SHORT $L8855
	cmp	DWORD PTR -2948+[ebp], 256		; 00000100H
	je	SHORT $L8853
	cmp	DWORD PTR -2948+[ebp], 512		; 00000200H
	je	SHORT $L8857
	jmp	SHORT $L8860
$L9875:
	cmp	DWORD PTR -2948+[ebp], 4096		; 00001000H
	je	SHORT $L8859
	cmp	DWORD PTR -2948+[ebp], 2097152		; 00200000H
	je	SHORT $L8859
	jmp	SHORT $L8860
$L8853:

; 3897 :          case zQUAL_INTEGER:
; 3898 :             unTemp.lInteger = *((zPLONG) pQualValue);

	mov	ecx, DWORD PTR _pQualValue$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _unTemp$[ebp], edx

; 3899 :             cVariableType = zTYPE_INTEGER;

	mov	BYTE PTR _cVariableType$[ebp], 76	; 0000004cH

; 3900 :             break;

	jmp	SHORT $L8850
$L8855:

; 3901 : 
; 3902 :          case zQUAL_STRING:
; 3903 :             zstrcpy( unTemp.szString, (zPCHAR) pQualValue );

	mov	eax, DWORD PTR _pQualValue$[ebp]
	push	eax
	lea	ecx, DWORD PTR _unTemp$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 3904 :             cVariableType = zTYPE_STRING;

	mov	BYTE PTR _cVariableType$[ebp], 83	; 00000053H

; 3905 :             break;

	jmp	SHORT $L8850
$L8857:

; 3906 : 
; 3907 :          case zQUAL_DECIMAL:
; 3908 :             unTemp.dDecimal = *((zPDECIMAL) pQualValue);

	mov	esi, DWORD PTR _pQualValue$[ebp]
	mov	ecx, 10					; 0000000aH
	lea	edi, DWORD PTR _unTemp$[ebp]
	rep movsd

; 3909 :             cVariableType = zTYPE_DECIMAL;

	mov	BYTE PTR _cVariableType$[ebp], 77	; 0000004dH

; 3910 :             break;

	jmp	SHORT $L8850
$L8859:

; 3911 : 
; 3912 :          case zQUAL_ENTITYCSR:
; 3913 :          case zQUAL_ENTITYATTR:
; 3914 :             bSkipDomain = TRUE;

	mov	BYTE PTR _bSkipDomain$8848[ebp], 1

; 3915 :             break;

	jmp	SHORT $L8850
$L8860:

; 3916 : 
; 3917 :          default:
; 3918 :             TraceLineS( "(cm) Invalid qualification type with context:",
; 3919 :                         "fnSetEntityCursor" );

	push	OFFSET FLAT:??_C@_0BC@JABP@fnSetEntityCursor?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0CO@LMCH@?$CIcm?$CJ?5Invalid?5qualification?5type?5@ ; `string'
	call	_TraceLineS@8

; 3920 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8850:

; 3922 : 
; 3923 :       if ( lpViewEntityAttrib->hDomain && bSkipDomain == FALSE )

	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	cmp	DWORD PTR [edx+198], 0
	je	$L8863
	mov	eax, DWORD PTR _bSkipDomain$8848[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	$L8863

; 3925 :          cDomainType = fnDomainProcessingRequired( &lpTaskDomain, lpView,
; 3926 :                                                    lpCurrentTask,
; 3927 :                                                    zGETPTR( lpViewEntityAttrib->
; 3928 :                                                                   hDomain ) );

	mov	ecx, DWORD PTR _lpViewEntityAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+198]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpTaskDomain$8847[ebp]
	push	edx
	call	_fnDomainProcessingRequired
	add	esp, 16					; 00000010H
	mov	BYTE PTR _cDomainType$[ebp], al

; 3929 :          if ( cDomainType && cDomainType != zDM_TYPE_FORMAT )

	movsx	eax, BYTE PTR _cDomainType$[ebp]
	test	eax, eax
	je	$L8865
	movsx	ecx, BYTE PTR _cDomainType$[ebp]
	cmp	ecx, 70					; 00000046H
	je	$L8865

; 3931 :             if ( cDomainType == zDM_TYPE_TABLE )

	movsx	edx, BYTE PTR _cDomainType$[ebp]
	cmp	edx, 84					; 00000054H
	jne	SHORT $L8866

; 3933 :                nRC = Table_Handler( (zLONG) zDME_GET_COMPARE_VALUE,
; 3934 :                                     cVariableType,
; 3935 :                                     &unTemp,
; 3936 :                                     cpcContextName,
; 3937 :                                     lpView,
; 3938 :                                     lpViewEntity,
; 3939 :                                     lpViewEntityAttrib,
; 3940 :                                     sizeof( unTemp ),
; 3941 :                                     (zPVOID) 0 );

	push	0
	push	256					; 00000100H
	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	lea	ecx, DWORD PTR _unTemp$[ebp]
	push	ecx
	mov	dl, BYTE PTR _cVariableType$[ebp]
	push	edx
	push	9
	call	_Table_Handler@36
	mov	WORD PTR _nRC$[ebp], ax

; 3943 :             else

	jmp	$L8872
$L8866:

; 3945 :                LPDOMAIN lpDomain = zGETPTR( lpViewEntityAttrib->hDomain );

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+198]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$8870[ebp], eax

; 3946 : 
; 3947 :                nRC = fnCallDomainOper( lpCurrentTask, lpTaskDomain,
; 3948 :                                        zDME_GET_COMPARE_VALUE,
; 3949 :                                        cVariableType,
; 3950 :                                        &unTemp,
; 3951 :                                        cpcContextName,
; 3952 :                                        lpView,
; 3953 :                                        lpViewEntity,
; 3954 :                                        lpViewEntityAttrib,
; 3955 :                                        sizeof( unTemp ) );

	push	256					; 00000100H
	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcContextName$[ebp]
	push	edx
	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	mov	cl, BYTE PTR _cVariableType$[ebp]
	push	ecx
	push	9
	mov	edx, DWORD PTR _lpTaskDomain$8847[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnCallDomainOper@40
	mov	WORD PTR _nRC$[ebp], ax

; 3956 :                if ( nRC == zDME_NOT_HANDLED )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -10				; fffffff6H
	jne	SHORT $L8872

; 3958 :                   zCHAR szMsg[ 500 ];
; 3959 : 
; 3960 :                   zsprintf( szMsg, "Operation '%s' does not handle an Entry "
; 3961 :                             "Type of %ld for domain '%s'", lpDomain->szDomainOper,
; 3962 :                             zDME_GET_COMPARE_VALUE, lpDomain->szName );

	mov	edx, DWORD PTR _lpDomain$8870[ebp]
	add	edx, 6
	push	edx
	push	9
	mov	eax, DWORD PTR _lpDomain$8870[ebp]
	add	eax, 100				; 00000064H
	push	eax
	push	OFFSET FLAT:??_C@_0EE@ELLG@Operation?5?8?$CFs?8?5does?5not?5handle?5a@ ; `string'
	lea	ecx, DWORD PTR _szMsg$8873[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 20					; 00000014H

; 3963 :                   MessageSend( lpView, "TZDMD101", "System Error",
; 3964 :                                szMsg, zMSGQ_DOMAIN_ERROR, 0 );

	push	0
	push	200					; 000000c8H
	lea	edx, DWORD PTR _szMsg$8873[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0N@LGH@System?5Error?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_08MEJN@TZDMD101?$AA@	; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_MessageSend@24

; 3965 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8872:

; 3968 : 
; 3969 : //         -2 - lpData ignored, this tells SetEntityCursor that
; 3970 : //              it should invoked domain processing with the
; 3971 : //              zDME_COMPARE_ATTRIBUTE entry type, each time
; 3972 : //              that is determining if the EntityInstance
; 3973 : //              matches the requested qualifications.
; 3974 : //         -1 - lpData invalid
; 3975 : //          0 - lpData unchanged, okay to use as is.
; 3976 : //          1 - lpData returned, string value
; 3977 : //          2 - lpData returned, integer value
; 3978 : //          3 - lpData returned, decimal value
; 3979 : 
; 3980 :             switch ( nRC )
; 3981 :             {

	movsx	ecx, WORD PTR _nRC$[ebp]
	mov	DWORD PTR -2952+[ebp], ecx
	mov	edx, DWORD PTR -2952+[ebp]
	add	edx, 2
	mov	DWORD PTR -2952+[ebp], edx
	cmp	DWORD PTR -2952+[ebp], 5
	ja	$L8885
	mov	eax, DWORD PTR -2952+[ebp]
	jmp	DWORD PTR $L9880[eax*4]
$L8878:

; 3982 :                case -2:
; 3983 :                   // Create 'Temporary' view for derived attribute
; 3984 :                   // and also for domain processing.
; 3985 :                   nRC = CreateViewFromViewForTask( &vAttrView, lpView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _vAttrView$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12
	mov	WORD PTR _nRC$[ebp], ax

; 3986 :                   if ( nRC )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	SHORT $L8879

; 3987 :                      return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8752
$L8879:

; 3988 : 
; 3989 :                   break;

	jmp	$L8875
$L8880:

; 3990 : 
; 3991 :                case 0:
; 3992 :                   cpcContextName = 0;

	mov	DWORD PTR _cpcContextName$[ebp], 0

; 3993 :                   break;

	jmp	$L8875
$L8881:

; 3994 : 
; 3995 :                case 1:
; 3996 :                   cpcContextName = 0;

	mov	DWORD PTR _cpcContextName$[ebp], 0

; 3997 :                   lQualRequest = zQUAL_STRING;

	mov	DWORD PTR _lQualRequest$[ebp], 1024	; 00000400H

; 3998 :                   pQualValue = &unTemp.szString;

	lea	ecx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], ecx

; 3999 :                   break;

	jmp	$L8875
$L8882:

; 4000 : 
; 4001 :                case 2:
; 4002 :                   cpcContextName = 0;

	mov	DWORD PTR _cpcContextName$[ebp], 0

; 4003 :                   lQualRequest = zQUAL_INTEGER;

	mov	DWORD PTR _lQualRequest$[ebp], 256	; 00000100H

; 4004 :                   pQualValue = &unTemp.lInteger;

	lea	edx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], edx

; 4005 :                   break;

	jmp	$L8875
$L8883:

; 4006 : 
; 4007 :                case 3:
; 4008 :                   cpcContextName = 0;

	mov	DWORD PTR _cpcContextName$[ebp], 0

; 4009 :                   lQualRequest = zQUAL_DECIMAL;

	mov	DWORD PTR _lQualRequest$[ebp], 512	; 00000200H

; 4010 :                   pQualValue = &unTemp.dDecimal;

	lea	eax, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], eax

; 4011 :                   break;

	jmp	$L8875
$L8884:

; 4012 : 
; 4013 :                case -1:
; 4014 :                   if ( cDomainType == zDM_TYPE_TABLE &&
; 4015 :                        (lControl & zIGNORE_ERROR_358) == 0 )

	movsx	ecx, BYTE PTR _cDomainType$[ebp]
	cmp	ecx, 84					; 00000054H
	jne	$L8885
	mov	edx, DWORD PTR _lControl$[ebp]
	and	edx, 4194304				; 00400000H
	test	edx, edx
	jne	$L8885

; 4017 :                      LPDOMAIN lpDomain;
; 4018 : 
; 4019 :                      switch ( lQualRequest )
; 4020 :                      {

	mov	eax, DWORD PTR _lQualRequest$[ebp]
	mov	DWORD PTR -2956+[ebp], eax
	cmp	DWORD PTR -2956+[ebp], 256		; 00000100H
	je	SHORT $L8893
	cmp	DWORD PTR -2956+[ebp], 512		; 00000200H
	je	SHORT $L8895
	cmp	DWORD PTR -2956+[ebp], 1024		; 00000400H
	je	SHORT $L8891
	jmp	SHORT $L8888
$L8891:

; 4021 :                         case zQUAL_STRING:
; 4022 :                            zstrcpy( unTemp.szString, (zPCHAR) pQualValue );

	mov	ecx, DWORD PTR _pQualValue$[ebp]
	push	ecx
	lea	edx, DWORD PTR _unTemp$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 4023 :                            break;

	jmp	SHORT $L8888
$L8893:

; 4024 : 
; 4025 :                         case zQUAL_INTEGER:
; 4026 :                            zltoa( *((zPLONG) pQualValue), unTemp.szString );

	push	10					; 0000000aH
	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 4027 :                            break;

	jmp	SHORT $L8888
$L8895:

; 4028 : 
; 4029 :                         case zQUAL_DECIMAL:
; 4030 :                            ConvertDecimalToString( unTemp.szString, 0,
; 4031 :                                                    *((zPDECIMAL) pQualValue),
; 4032 :                                                    0 );

	push	0
	sub	esp, 40					; 00000028H
	mov	ecx, 10					; 0000000aH
	mov	esi, DWORD PTR _pQualValue$[ebp]
	mov	edi, esp
	rep movsd
	push	0
	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	call	_ConvertDecimalToString@52
$L8888:

; 4035 : 
; 4036 :                      lpDomain = zGETPTR( lpTaskDomain->hDomain );

	mov	ecx, DWORD PTR _lpTaskDomain$8847[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$8886[ebp], eax

; 4037 : 
; 4038 :                      zstrcat( unTemp.szString, ", " );

	push	OFFSET FLAT:??_C@_02GIEM@?0?5?$AA@	; `string'
	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 4039 :                      zstrcat( unTemp.szString,
; 4040 :                               lpDomain->szName );

	mov	ecx, DWORD PTR _lpDomain$8886[ebp]
	add	ecx, 6
	push	ecx
	lea	edx, DWORD PTR _unTemp$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 4041 :                      zstrcat( unTemp.szString, ", " );

	push	OFFSET FLAT:??_C@_02GIEM@?0?5?$AA@	; `string'
	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 4042 :                      zstrcat( unTemp.szString, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _unTemp$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 4043 :                      // "KZOEE358 - Value not in Context for Domain "
; 4044 :                      fnIssueCoreError( lpCurrentTask, lpView, 0, 358, 0,
; 4045 :                                        unTemp.szString,
; 4046 :                                        lpViewEntityAttrib->szName );

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _unTemp$[ebp]
	push	ecx
	push	0
	push	358					; 00000166H
	push	0
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH
$L8885:

; 4048 : 
; 4049 :                default:
; 4050 :                   // error message should have been issued by domain.
; 4051 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8875:

; 4054 :          else

	jmp	SHORT $L8899
$L8865:

; 4064 :                cpcContextName = 0;

	mov	DWORD PTR _cpcContextName$[ebp], 0
$L8899:

; 4072 :       else

	jmp	SHORT $L8901
$L8863:

; 4073 :          if ( bSkipDomain == FALSE )

	mov	ecx, DWORD PTR _bSkipDomain$8848[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L8901

; 4074 :             cpcContextName = 0;

	mov	DWORD PTR _cpcContextName$[ebp], 0
$L8901:

; 4076 :    else

	jmp	$L8904
$L8846:

; 4078 :       // No context specified.  If this is a qualified request for a
; 4079 :       // string, integer or decimal; insure that the attribute data
; 4080 :       // type matches, if not try to convert the qualifying value to
; 4081 :       // match the attribute value.
; 4082 :       switch ( lQualRequest )
; 4083 :       {

	mov	edx, DWORD PTR _lQualRequest$[ebp]
	mov	DWORD PTR -2960+[ebp], edx
	cmp	DWORD PTR -2960+[ebp], 1024		; 00000400H
	jg	SHORT $L9876
	cmp	DWORD PTR -2960+[ebp], 1024		; 00000400H
	je	$L8926
	cmp	DWORD PTR -2960+[ebp], 256		; 00000100H
	je	SHORT $L8907
	cmp	DWORD PTR -2960+[ebp], 512		; 00000200H
	je	$L8956
	jmp	$L8971
$L9876:
	cmp	DWORD PTR -2960+[ebp], 2048		; 00000800H
	je	$L8922
	jmp	$L8971
$L8907:

; 4084 :          case zQUAL_INTEGER:
; 4085 :             if ( lpViewEntityAttrib->cType == zTYPE_INTEGER )

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 76					; 0000004cH
	jne	SHORT $L8908

; 4086 :                break;

	jmp	$L8904
$L8908:

; 4087 : 
; 4088 :             switch ( lpViewEntityAttrib->cType )
; 4089 :             {

	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	mov	al, BYTE PTR [edx+202]
	mov	BYTE PTR -2964+[ebp], al
	cmp	BYTE PTR -2964+[ebp], 77		; 0000004dH
	je	SHORT $L8915
	cmp	BYTE PTR -2964+[ebp], 83		; 00000053H
	je	SHORT $L8913
	jmp	SHORT $L8917
$L8913:

; 4090 :                case zTYPE_STRING:
; 4091 :                   // convert integer qualifier to a string
; 4092 :                   zltoa( *((zPLONG) pQualValue), unTemp.szString );

	push	10					; 0000000aH
	lea	ecx, DWORD PTR _unTemp$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pQualValue$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 4093 :                   lQualRequest = zQUAL_STRING;

	mov	DWORD PTR _lQualRequest$[ebp], 1024	; 00000400H

; 4094 :                   pQualValue = &unTemp;

	lea	ecx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], ecx

; 4095 :                   break;

	jmp	$L8910
$L8915:

; 4096 : 
; 4097 :                case zTYPE_DECIMAL:
; 4098 :                   // convert integer qualifier to decimal
; 4099 :                   SysConvertLongToDecimal( *((zPLONG) pQualValue),
; 4100 :                                            &unTemp.dDecimal );

	lea	edx, DWORD PTR _unTemp$[ebp]
	push	edx
	mov	eax, DWORD PTR _pQualValue$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 4101 :                   lQualRequest = zQUAL_DECIMAL;

	mov	DWORD PTR _lQualRequest$[ebp], 512	; 00000200H

; 4102 :                   pQualValue = &unTemp;

	lea	edx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], edx

; 4103 :                   break;

	jmp	$L8910
$L8917:

; 4107 :                   zCHAR    sz[ 256 ];
; 4108 :                   zSHORT   n;
; 4109 : 
; 4110 :                   // "KZOEE263 - Input Qualifier cannot be converted to
; 4111 :                   //  internal attribute data type"
; 4112 :                   zstrcpy( sz, "(L->" );

	push	OFFSET FLAT:??_C@_04KBML@?$CIL?9?$DO?$AA@ ; `string'
	lea	eax, DWORD PTR _sz$8918[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 4113 :                   n = zstrlen( sz );

	lea	ecx, DWORD PTR _sz$8918[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	mov	WORD PTR _n$8919[ebp], ax

; 4114 :                   *( sz + n++ ) = lpViewEntityAttrib->cType;

	movsx	edx, WORD PTR _n$8919[ebp]
	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	mov	cl, BYTE PTR [eax+202]
	mov	BYTE PTR _sz$8918[ebp+edx], cl
	mov	dx, WORD PTR _n$8919[ebp]
	add	dx, 1
	mov	WORD PTR _n$8919[ebp], dx

; 4115 :                   *( sz + n++ ) = 0;

	movsx	eax, WORD PTR _n$8919[ebp]
	mov	BYTE PTR _sz$8918[ebp+eax], 0
	mov	cx, WORD PTR _n$8919[ebp]
	add	cx, 1
	mov	WORD PTR _n$8919[ebp], cx

; 4116 :                   zstrcat( sz, "), " );

	push	OFFSET FLAT:??_C@_03OIDK@?$CJ?0?5?$AA@	; `string'
	lea	edx, DWORD PTR _sz$8918[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 4117 :                   zstrcat( sz, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	lea	ecx, DWORD PTR _sz$8918[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 4118 :                   fnIssueCoreError( lpCurrentTask, lpView, 8, 263, 0, sz,
; 4119 :                                     lpViewEntityAttrib->szName );

	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	lea	eax, DWORD PTR _sz$8918[ebp]
	push	eax
	push	0
	push	263					; 00000107H
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4120 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8910:

; 4123 : 
; 4124 :             break;

	jmp	$L8904
$L8922:

; 4128 :             zCHAR    sz[ 256 ];
; 4129 : 
; 4130 :             if ( lpViewEntityAttrib->cType == zTYPE_DATETIME )

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 84					; 00000054H
	jne	SHORT $L8924

; 4131 :                break;

	jmp	$L8904
$L8924:

; 4132 : 
; 4133 :             // "KZOEE263 - Input Qualifier cannot be converted to
; 4134 :             //  internal attribute data type"
; 4135 :             zstrcpy( sz, "(?->DT), " );

	push	OFFSET FLAT:??_C@_09JMMI@?$CI?$DP?9?$DODT?$CJ?0?5?$AA@ ; `string'
	lea	edx, DWORD PTR _sz$8923[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 4136 :             zstrcat( sz, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	lea	ecx, DWORD PTR _sz$8923[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 4137 :             fnIssueCoreError( lpCurrentTask, lpView, 8, 263, 0, sz,
; 4138 :                               lpViewEntityAttrib->szName );

	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	lea	eax, DWORD PTR _sz$8923[ebp]
	push	eax
	push	0
	push	263					; 00000107H
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4139 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8926:

; 4141 : 
; 4142 :          case zQUAL_STRING:
; 4143 :             if ( lpViewEntityAttrib->cType == zTYPE_STRING )

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	cmp	ecx, 83					; 00000053H
	jne	SHORT $L8927

; 4144 :                break;

	jmp	$L8904
$L8927:

; 4145 : 
; 4146 :             switch ( lpViewEntityAttrib->cType )
; 4147 :             {

	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	mov	al, BYTE PTR [edx+202]
	mov	BYTE PTR -2968+[ebp], al
	cmp	BYTE PTR -2968+[ebp], 76		; 0000004cH
	je	SHORT $L8932
	cmp	BYTE PTR -2968+[ebp], 77		; 0000004dH
	je	$L8942
	jmp	$L8952
$L8932:

; 4148 :                case zTYPE_INTEGER:
; 4149 :                   // convert string qualifier to integer
; 4150 :                   if ( pQualValue == 0 || *((zPCHAR) pQualValue) == 0 )

	cmp	DWORD PTR _pQualValue$[ebp], 0
	je	SHORT $L8935
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	jne	SHORT $L8934
$L8935:

; 4152 :                      lQualRequest = zQUAL_INTEGER;

	mov	DWORD PTR _lQualRequest$[ebp], 256	; 00000100H

; 4153 :                      unTemp.lInteger = lNullInteger;

	mov	eax, DWORD PTR _lNullInteger
	mov	DWORD PTR _unTemp$[ebp], eax

; 4154 :                      pQualValue = &unTemp;

	lea	ecx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], ecx

; 4156 :                   else

	jmp	$L8939
$L8934:

; 4157 :                   if ( fnValidNumericString( &unTemp.lInteger,
; 4158 :                                              (zCPCHAR) pQualValue ) )

	mov	edx, DWORD PTR _pQualValue$[ebp]
	push	edx
	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	call	_fnValidNumericString
	add	esp, 8
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L8938

; 4160 :                      lQualRequest = zQUAL_INTEGER;

	mov	DWORD PTR _lQualRequest$[ebp], 256	; 00000100H

; 4161 :                      pQualValue = &unTemp.lInteger;

	lea	edx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], edx

; 4163 :                   else

	jmp	SHORT $L8939
$L8938:

; 4165 :                      zCHAR    sz[ 256 ];
; 4166 :                      // "KZOEE263 - Input Qualifier cannot be converted to
; 4167 :                      //  internal attribute data type"
; 4168 :                      zstrcpy( sz, "(S->L), " );

	push	OFFSET FLAT:??_C@_08GFGC@?$CIS?9?$DOL?$CJ?0?5?$AA@ ; `string'
	lea	eax, DWORD PTR _sz$8940[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 4169 :                      zstrcat( sz, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _sz$8940[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 4170 :                      fnIssueCoreError( lpCurrentTask, lpView, 8, 263, 0, sz,
; 4171 :                                        lpViewEntityAttrib->szName );

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _sz$8940[ebp]
	push	ecx
	push	0
	push	263					; 00000107H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4172 :                      return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8939:

; 4174 : 
; 4175 :                   break;

	jmp	$L8929
$L8942:

; 4176 : 
; 4177 :                case zTYPE_DECIMAL:
; 4178 :                   // convert string qualifier to decimal
; 4179 :                   if ( pQualValue == 0 || *((zPCHAR) pQualValue) == 0 )

	cmp	DWORD PTR _pQualValue$[ebp], 0
	je	SHORT $L8945
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	jne	SHORT $L8944
$L8945:

; 4181 :                      lQualRequest = zQUAL_DECIMAL;

	mov	DWORD PTR _lQualRequest$[ebp], 512	; 00000200H

; 4182 :                      SysAssignDecimalFromNull( &unTemp.dDecimal );

	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	call	_SysAssignDecimalFromNull@4

; 4183 :                      pQualValue = &unTemp;

	lea	ecx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], ecx

; 4185 :                   else

	jmp	$L8949
$L8944:

; 4186 :                   if ( fnValidDecimalString( &unTemp.dDecimal,
; 4187 :                                              (zCPCHAR) pQualValue ) )

	mov	edx, DWORD PTR _pQualValue$[ebp]
	push	edx
	lea	eax, DWORD PTR _unTemp$[ebp]
	push	eax
	call	_fnValidDecimalString
	add	esp, 8
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L8948

; 4189 :                      lQualRequest = zQUAL_DECIMAL;

	mov	DWORD PTR _lQualRequest$[ebp], 512	; 00000200H

; 4190 :                      pQualValue = &unTemp;

	lea	edx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], edx

; 4192 :                   else

	jmp	SHORT $L8949
$L8948:

; 4194 :                      zCHAR    sz[ 256 ];
; 4195 : 
; 4196 :                      // "KZOEE263 - Input Qualifier cannot be converted to
; 4197 :                      //  internal attribute data type"
; 4198 :                      zstrcpy( sz, "(S->M), " );

	push	OFFSET FLAT:??_C@_08EADA@?$CIS?9?$DOM?$CJ?0?5?$AA@ ; `string'
	lea	eax, DWORD PTR _sz$8950[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 4199 :                      zstrcat( sz, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _sz$8950[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 4200 :                      fnIssueCoreError( lpCurrentTask, lpView, 8, 263, 0, sz,
; 4201 :                                        lpViewEntityAttrib->szName );

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _sz$8950[ebp]
	push	ecx
	push	0
	push	263					; 00000107H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4202 :                      return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8949:

; 4204 : 
; 4205 :                   break;

	jmp	$L8929
$L8952:

; 4209 :                   zCHAR    sz[ 256 ];
; 4210 :                   zSHORT   n;
; 4211 : 
; 4212 :                   // "KZOEE263 - Input Qualifier cannot be converted to
; 4213 :                   //  internal attribute data type"
; 4214 :                   zstrcpy( sz, "(S->" );

	push	OFFSET FLAT:??_C@_04KOHF@?$CIS?9?$DO?$AA@ ; `string'
	lea	ecx, DWORD PTR _sz$8953[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 4215 :                   n = zstrlen( sz );

	lea	edx, DWORD PTR _sz$8953[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	mov	WORD PTR _n$8954[ebp], ax

; 4216 :                   *( sz + n++ ) = lpViewEntityAttrib->cType;

	movsx	eax, WORD PTR _n$8954[ebp]
	mov	ecx, DWORD PTR _lpViewEntityAttrib$[ebp]
	mov	dl, BYTE PTR [ecx+202]
	mov	BYTE PTR _sz$8953[ebp+eax], dl
	mov	ax, WORD PTR _n$8954[ebp]
	add	ax, 1
	mov	WORD PTR _n$8954[ebp], ax

; 4217 :                   *( sz + n++ ) = 0;

	movsx	ecx, WORD PTR _n$8954[ebp]
	mov	BYTE PTR _sz$8953[ebp+ecx], 0
	mov	dx, WORD PTR _n$8954[ebp]
	add	dx, 1
	mov	WORD PTR _n$8954[ebp], dx

; 4218 :                   zstrcat( sz, "), " );

	push	OFFSET FLAT:??_C@_03OIDK@?$CJ?0?5?$AA@	; `string'
	lea	eax, DWORD PTR _sz$8953[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 4219 :                   zstrcat( sz, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _sz$8953[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 4220 :                   fnIssueCoreError( lpCurrentTask, lpView, 8, 263, 0, sz,
; 4221 :                                     lpViewEntityAttrib->szName );

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _sz$8953[ebp]
	push	ecx
	push	0
	push	263					; 00000107H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4222 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8929:

; 4225 : 
; 4226 :             break;

	jmp	$L8904
$L8956:

; 4227 : 
; 4228 :          case zQUAL_DECIMAL:
; 4229 :             if ( lpViewEntityAttrib->cType == zTYPE_DECIMAL )

	mov	ecx, DWORD PTR _lpViewEntityAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+202]
	cmp	edx, 77					; 0000004dH
	jne	SHORT $L8957

; 4230 :                break;

	jmp	$L8904
$L8957:

; 4231 : 
; 4232 :             switch ( lpViewEntityAttrib->cType )
; 4233 :             {

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	mov	cl, BYTE PTR [eax+202]
	mov	BYTE PTR -2972+[ebp], cl
	cmp	BYTE PTR -2972+[ebp], 76		; 0000004cH
	je	SHORT $L8962
	cmp	BYTE PTR -2972+[ebp], 83		; 00000053H
	je	SHORT $L8964
	jmp	SHORT $L8966
$L8962:

; 4234 :                case zTYPE_INTEGER:
; 4235 :                   // convert decimal qualifier to integer
; 4236 :                   SysConvertDecimalToLong( (zPDECIMAL) pQualValue,
; 4237 :                                            &unTemp.lInteger );

	lea	edx, DWORD PTR _unTemp$[ebp]
	push	edx
	mov	eax, DWORD PTR _pQualValue$[ebp]
	push	eax
	call	_SysConvertDecimalToLong@8

; 4238 :                   lQualRequest = zQUAL_INTEGER;

	mov	DWORD PTR _lQualRequest$[ebp], 256	; 00000100H

; 4239 :                   pQualValue = &unTemp;

	lea	ecx, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], ecx

; 4240 :                   break;

	jmp	$L8959
$L8964:

; 4241 : 
; 4242 :                case zTYPE_STRING:
; 4243 :                   // convert decimal qualifier to string
; 4244 :                   ConvertDecimalToString( unTemp.szString, 0,
; 4245 :                                           *((zPDECIMAL)pQualValue), 0 );

	push	0
	sub	esp, 40					; 00000028H
	mov	ecx, 10					; 0000000aH
	mov	esi, DWORD PTR _pQualValue$[ebp]
	mov	edi, esp
	rep movsd
	push	0
	lea	edx, DWORD PTR _unTemp$[ebp]
	push	edx
	call	_ConvertDecimalToString@52

; 4246 :                   lQualRequest = zQUAL_STRING;

	mov	DWORD PTR _lQualRequest$[ebp], 1024	; 00000400H

; 4247 :                   pQualValue = &unTemp;

	lea	eax, DWORD PTR _unTemp$[ebp]
	mov	DWORD PTR _pQualValue$[ebp], eax

; 4248 :                   break;

	jmp	$L8959
$L8966:

; 4252 :                   zCHAR   sz[ 256 ];
; 4253 :                   zSHORT  n;
; 4254 : 
; 4255 :                   // "KZOEE263 - Input Qualifier cannot be converted to
; 4256 :                   //  internal attribute data type"
; 4257 :                   zstrcpy( sz, "(M->" );

	push	OFFSET FLAT:??_C@_04PDNN@?$CIM?9?$DO?$AA@ ; `string'
	lea	ecx, DWORD PTR _sz$8967[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 4258 :                   n = zstrlen( sz );

	lea	edx, DWORD PTR _sz$8967[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	mov	WORD PTR _n$8968[ebp], ax

; 4259 :                   *(sz + n++) = lpViewEntityAttrib->cType;

	movsx	eax, WORD PTR _n$8968[ebp]
	mov	ecx, DWORD PTR _lpViewEntityAttrib$[ebp]
	mov	dl, BYTE PTR [ecx+202]
	mov	BYTE PTR _sz$8967[ebp+eax], dl
	mov	ax, WORD PTR _n$8968[ebp]
	add	ax, 1
	mov	WORD PTR _n$8968[ebp], ax

; 4260 :                   *(sz + n++) = 0;

	movsx	ecx, WORD PTR _n$8968[ebp]
	mov	BYTE PTR _sz$8967[ebp+ecx], 0
	mov	dx, WORD PTR _n$8968[ebp]
	add	dx, 1
	mov	WORD PTR _n$8968[ebp], dx

; 4261 :                   zstrcat( sz, "), " );

	push	OFFSET FLAT:??_C@_03OIDK@?$CJ?0?5?$AA@	; `string'
	lea	eax, DWORD PTR _sz$8967[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 4262 :                   zstrcat( sz, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _sz$8967[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 4263 :                   fnIssueCoreError( lpCurrentTask, lpView, 8, 263, 0, sz,
; 4264 :                                     lpViewEntityAttrib->szName );

	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _sz$8967[ebp]
	push	ecx
	push	0
	push	263					; 00000107H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4265 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8752
$L8959:

; 4268 : 
; 4269 :             unTemp.dDecimal = *((zPDECIMAL) pQualValue);

	mov	esi, DWORD PTR _pQualValue$[ebp]
	mov	ecx, 10					; 0000000aH
	lea	edi, DWORD PTR _unTemp$[ebp]
	rep movsd
$L8971:
$L8904:

; 4278 : 
; 4279 :    // The following is necessary when we are not going to perform domain
; 4280 :    // processing, but the attribute is derived.
; 4281 : // if ( vAttrView == 0 &&
; 4282 : //      (((cpcContextName == 0 || cpcContextName[ 0 ] == 0) &&
; 4283 : //        lpViewEntityAttrib && lpViewEntityAttrib->szDerivedOper[ 0 ]) ||
; 4284 : //       (cDomainType == zDM_TYPE_FORMAT && cpcContextName && *cpcContextName)) )
; 4285 :    if ( vAttrView == 0 &&
; 4286 :         ((cpcContextName == 0 || cpcContextName[ 0 ] == 0) &&
; 4287 :          lpViewEntityAttrib && lpViewEntityAttrib->szDerivedOper[ 0 ]) )

	cmp	DWORD PTR _vAttrView$[ebp], 0
	jne	SHORT $L8974
	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L8973
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	jne	SHORT $L8974
$L8973:
	cmp	DWORD PTR _lpViewEntityAttrib$[ebp], 0
	je	SHORT $L8974
	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+213]
	test	ecx, ecx
	je	SHORT $L8974

; 4289 :       // Create 'Temporary' view for derived attribute.
; 4290 :       nRC = CreateViewFromViewForTask( &vAttrView, lpView, 0 );

	push	0
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _vAttrView$[ebp]
	push	eax
	call	_CreateViewFromViewForTask@12
	mov	WORD PTR _nRC$[ebp], ax

; 4291 :       if ( nRC )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L8974

; 4292 :          return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8752
$L8974:

; 4294 : 
; 4295 :    // DGC 10/9/96 - Tried to fix a bug.  The problem occurs when we are
; 4296 :    // setting a cursor from an attribute.  If the target attribute has a
; 4297 :    // domain different from the source attribute, then fnScanEI_NoScoping
; 4298 :    // will try to do something with vAttrView.  The problem is that vAttrView
; 4299 :    // is sometimes 0.  As a hack, we will set vAttrView to something.  This
; 4300 :    // shouldn't have any adverse affects.  Checking for zQUAL_ENTITYATTR
; 4301 :    // means that pQualValue is really a view.
; 4302 :    if ( lQualRequest == zQUAL_ENTITYATTR && vAttrView == 0 && pQualValue &&
; 4303 :         lpSrcViewEntityAttrib->hDomain != lpViewEntityAttrib->hDomain )

	cmp	DWORD PTR _lQualRequest$[ebp], 4096	; 00001000H
	jne	SHORT $L8977
	cmp	DWORD PTR _vAttrView$[ebp], 0
	jne	SHORT $L8977
	cmp	DWORD PTR _pQualValue$[ebp], 0
	je	SHORT $L8977
	mov	edx, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	mov	ecx, DWORD PTR [edx+198]
	cmp	ecx, DWORD PTR [eax+198]
	je	SHORT $L8977

; 4305 :       nRC = CreateViewFromViewForTask( &vAttrView, (zVIEW) pQualValue, 0 );

	push	0
	mov	edx, DWORD PTR _pQualValue$[ebp]
	push	edx
	lea	eax, DWORD PTR _vAttrView$[ebp]
	push	eax
	call	_CreateViewFromViewForTask@12
	mov	WORD PTR _nRC$[ebp], ax

; 4306 :       if ( nRC )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L8977

; 4307 :          return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8752
$L8977:

; 4309 : 
; 4310 :    // See if scoping entity is the parent of the target entity.
; 4311 :    if ( lpScopingViewEntityCsr == 0 ||
; 4312 :         (zGETPTR( lpViewEntityCsr->hParent ) == lpScopingViewEntityCsr &&
; 4313 :          bRecurse == FALSE) )

	cmp	DWORD PTR _lpScopingViewEntityCsr$[ebp], 0
	je	SHORT $L8980
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	jne	SHORT $L8979
	mov	ecx, DWORD PTR _bRecurse$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L8979
$L8980:

; 4315 :       nRC = fnScanEI_NoScoping( lpView,
; 4316 :                                 lpViewEntity,
; 4317 :                                 lpViewEntityCsr,
; 4318 :                                 lpViewEntityAttrib,
; 4319 :                                 pQualValue,
; 4320 :                                 lpSrcViewEntityCsr,
; 4321 :                                 lpSrcViewEntityAttrib,
; 4322 :                                 lRelPosition,
; 4323 :                                 lpScopingViewEntityCsr,
; 4324 :                                 cpcContextName,
; 4325 :                                 lpCurrentTask,
; 4326 :                                 lpSrcEntityInstance,
; 4327 :                                 vAttrView,
; 4328 :                                 lAbsPosition,
; 4329 :                                 lQualRequest,
; 4330 :                                 lQualOperator,
; 4331 :                                 nDesiredSelectState,
; 4332 :                                 bSelectRelevant,
; 4333 :                                 bRelPosition,
; 4334 :                                 bSameParentKeepChildren,
; 4335 :                                 bCursorTest );

	mov	dl, BYTE PTR _bCursorTest$[ebp]
	push	edx
	mov	al, BYTE PTR _bSameParentKeepChildren$[ebp]
	push	eax
	mov	cl, BYTE PTR _bRelPosition$[ebp]
	push	ecx
	mov	dl, BYTE PTR _bSelectRelevant$[ebp]
	push	edx
	mov	ax, WORD PTR _nDesiredSelectState$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lQualOperator$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lQualRequest$[ebp]
	push	edx
	mov	eax, DWORD PTR _lAbsPosition$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vAttrView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lRelPosition$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _pQualValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnScanEI_NoScoping
	add	esp, 84					; 00000054H
	mov	WORD PTR _nRC$[ebp], ax

; 4337 :    else

	jmp	SHORT $L8981
$L8979:

; 4339 :       nRC = fnScanEI_Scoping( lpView,
; 4340 :                               lpViewEntity,
; 4341 :                               lpViewEntityCsr,
; 4342 :                               lpViewEntityAttrib,
; 4343 :                               pQualValue,
; 4344 :                               lpSrcViewEntityCsr,
; 4345 :                               lpSrcViewEntityAttrib,
; 4346 :                               lRelPosition,
; 4347 :                               lpScopingViewEntityCsr,
; 4348 :                               cpcContextName,
; 4349 :                               lpCurrentTask,
; 4350 :                               lpSrcEntityInstance,
; 4351 :                               vAttrView,
; 4352 :                               lAbsPosition,
; 4353 :                               lQualRequest,
; 4354 :                               lQualOperator,
; 4355 :                               nDesiredSelectState,
; 4356 :                               bSelectRelevant,
; 4357 :                               bRelPosition,
; 4358 :                               bSameParentKeepChildren,
; 4359 :                               bRecurse,
; 4360 :                               bCursorTest );

	mov	dl, BYTE PTR _bCursorTest$[ebp]
	push	edx
	mov	al, BYTE PTR _bRecurse$[ebp]
	push	eax
	mov	cl, BYTE PTR _bSameParentKeepChildren$[ebp]
	push	ecx
	mov	dl, BYTE PTR _bRelPosition$[ebp]
	push	edx
	mov	al, BYTE PTR _bSelectRelevant$[ebp]
	push	eax
	mov	cx, WORD PTR _nDesiredSelectState$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lQualOperator$[ebp]
	push	edx
	mov	eax, DWORD PTR _lQualRequest$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lAbsPosition$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vAttrView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcContextName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lRelPosition$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnScanEI_Scoping
	add	esp, 88					; 00000058H
	mov	WORD PTR _nRC$[ebp], ax
$L8981:

; 4362 : 
; 4363 :    // Drop 'Temporary' view for derived attribute and also for
; 4364 :    // domain processing.
; 4365 :    if ( vAttrView )

	cmp	DWORD PTR _vAttrView$[ebp], 0
	je	SHORT $L8982

; 4366 :       DropView( vAttrView );

	mov	eax, DWORD PTR _vAttrView$[ebp]
	push	eax
	call	_DropView@4
$L8982:

; 4367 : 
; 4368 :    // We have set the cursor so it should point to a valid entity or the
; 4369 :    // result is undefined.  Now is a good time to try and clean up "dead"
; 4370 :    // entity instances.
; 4371 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 4372 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 4373 :    if ( lpViewOI->nHiddenCount > __RECLAIM_LIMIT__ )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	movsx	eax, WORD PTR [edx+24]
	cmp	eax, 20					; 00000014H
	jle	SHORT $L8985

; 4374 :       fnReclaimHiddenInstances( lpViewOI );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	push	ecx
	call	_fnReclaimHiddenInstances@4
$L8985:

; 4375 : 
; 4376 :    // Maintain the last accessed entity, so that it is possible to determine
; 4377 :    // which entity was accessed by the last successful "SET CURSOR".
; 4378 :    // Note:  we asked for the cursor to be set ...  so if it is unchanged it
; 4379 :    // is set!  zCURSOR_SET  // dks 2004.03.17
; 4380 :    if ( nRC >= zCURSOR_UNCHANGED && bCursorTest == FALSE )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -1
	jl	SHORT $L8986
	mov	eax, DWORD PTR _bCursorTest$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8986

; 4381 :       fnCallListeners( lpView, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnCallListeners
	add	esp, 8
$L8986:

; 4382 : 
; 4383 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8752:

; 4384 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	0
$L9878:
	DD	$L8798
	DD	$L8790
	DD	$L8792
	DD	$L8794
	DD	$L8796
	DD	$L8787
$L9877:
	DB	0
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	1
	DB	2
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	3
	DB	4
$L9879:
	DD	$L8836
	DD	$L8841
	DD	$L8838
	DD	$L8838
	DD	$L8839
	DD	$L8840
$L9880:
	DD	$L8878
	DD	$L8884
	DD	$L8880
	DD	$L8881
	DD	$L8882
	DD	$L8883
_fnSetEntityCursor ENDP
_TEXT	ENDS
PUBLIC	_fnQualifiedInstance
EXTRN	_CheckExistenceOfEntity@8:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntityCsr$ = 16
_lpViewEntityAttrib$ = 20
_pQualValue$ = 24
_lpSrcViewEntityCsr$ = 28
_lpSrcViewEntityAttrib$ = 32
_lRelPosition$ = 36
_cpcContextName$ = 44
_lpCurrentTask$ = 48
_lpSrcEntityInstance$ = 52
_vAttrView$ = 56
_lAbsPosition$ = 60
_lQualRequest$ = 64
_lQualOperator$ = 68
_nDesiredSelectState$ = 72
_bSelectRelevant$ = 76
_bRelPosition$ = 80
_bSameParentKeepChildren$ = 84
_bCursorTest$ = 88
_lpSearchEntityInstance$ = -16
_bAbsPosition_Forward$ = -12
_bDoRelPosition$ = -8
_lCurrRelPosition$ = -20
_nRC$ = -4
_lpViewEntity$9087 = -24
_lpEntityInstance$9095 = -28
_bFound$9098 = -32
_bForward$9099 = -36
_fnScanEI_NoScoping PROC NEAR

; 4408 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H

; 4409 :    LPENTITYINSTANCE lpSearchEntityInstance;
; 4410 :    zBOOL    bAbsPosition_Forward; // indicates direction of 'absolute' positioning
; 4411 :    zBOOL    bDoRelPosition = 0;

	mov	BYTE PTR _bDoRelPosition$[ebp], 0

; 4412 :    zLONG    lCurrRelPosition;
; 4413 :    zSHORT   nRC = zCURSOR_NULL;

	mov	WORD PTR _nRC$[ebp], -3			; fffffffdH

; 4414 : 
; 4415 :    // Relative positioning requested.
; 4416 :    lCurrRelPosition = bRelPosition ? lRelPosition : 0;

	mov	eax, DWORD PTR _bRelPosition$[ebp]
	and	eax, 255				; 000000ffH
	neg	eax
	sbb	eax, eax
	and	eax, DWORD PTR _lRelPosition$[ebp]
	mov	DWORD PTR _lCurrRelPosition$[ebp], eax

; 4417 : 
; 4418 :    lpSearchEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4419 :    if ( lpSearchEntityInstance )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	$L9112

; 4421 :       switch ( lAbsPosition )
; 4422 :       {

	mov	eax, DWORD PTR _lAbsPosition$[ebp]
	mov	DWORD PTR -40+[ebp], eax
	mov	ecx, DWORD PTR -40+[ebp]
	sub	ecx, 1
	mov	DWORD PTR -40+[ebp], ecx
	cmp	DWORD PTR -40+[ebp], 3
	ja	SHORT $L9059
	mov	edx, DWORD PTR -40+[ebp]
	jmp	DWORD PTR $L9886[edx*4]
$L9042:

; 4423 :          case zPOS_FIRST:
; 4424 :             // Back up to beginning of chain.
; 4425 :             bAbsPosition_Forward = TRUE;

	mov	BYTE PTR _bAbsPosition_Forward$[ebp], 1
$L9044:

; 4426 :             while ( lpSearchEntityInstance->hPrevTwin )

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	SHORT $L9045

; 4427 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevTwin );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
	jmp	SHORT $L9044
$L9045:

; 4428 : 
; 4429 :             break;

	jmp	SHORT $L9038
$L9048:

; 4430 : 
; 4431 :          case zPOS_NEXT:
; 4432 :             // Bump to next twin.
; 4433 :             bAbsPosition_Forward = TRUE;

	mov	BYTE PTR _bAbsPosition_Forward$[ebp], 1

; 4434 :             lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4435 :             break;

	jmp	SHORT $L9038
$L9051:

; 4436 : 
; 4437 :          case zPOS_PREV:
; 4438 :             // Bump to prev twin.
; 4439 :             bAbsPosition_Forward = FALSE;

	mov	BYTE PTR _bAbsPosition_Forward$[ebp], 0

; 4440 :             lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevTwin );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4441 :             break;

	jmp	SHORT $L9038
$L9054:

; 4442 : 
; 4443 :          case zPOS_LAST:
; 4444 :             // Go to the end of the chain.
; 4445 :             bAbsPosition_Forward = FALSE;

	mov	BYTE PTR _bAbsPosition_Forward$[ebp], 0
$L9056:

; 4446 :             while ( lpSearchEntityInstance->hNextTwin )

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	SHORT $L9057

; 4447 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
	jmp	SHORT $L9056
$L9057:

; 4448 : 
; 4449 :             break;

	jmp	SHORT $L9038
$L9059:

; 4450 : 
; 4451 :          default:
; 4452 :             // Relative positioning only ...
; 4453 :             lpSearchEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
$L9038:

; 4456 : 
; 4457 :       while ( lpSearchEntityInstance )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	$L9063

; 4459 :          if ( lpSearchEntityInstance->u.nInd.bHidden == FALSE )

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	$L9074

; 4461 :             // SelectState
; 4462 :             if ( (bSelectRelevant == FALSE ||
; 4463 :                  ((fnSelectedInstanceFarbler( zGETPTR( lpViewEntityCsr->hViewCsr ),
; 4464 :                                               zGETPTR( lpSearchEntityInstance->hViewEntity ),
; 4465 :                                               zGETHNDL( lpSearchEntityInstance ), 1 )
; 4466 :                               == nDesiredSelectState))) &&
; 4467 :                 // Qualification
; 4468 :                 // Determine if this lpSearchEntityInstance matches the
; 4469 :                 // requested qualifications.
; 4470 :                  (lQualRequest == 0 ||
; 4471 :                   fnQualifiedInstance( vAttrView,
; 4472 :                                        lQualRequest,
; 4473 :                                        lQualOperator,
; 4474 :                                        pQualValue,
; 4475 :                                        lpSearchEntityInstance,
; 4476 :                                        lpViewEntityCsr,
; 4477 :                                        lpViewEntityAttrib,
; 4478 :                                        lpSrcEntityInstance,
; 4479 :                                        lpSrcViewEntityCsr,
; 4480 :                                        lpSrcViewEntityAttrib,
; 4481 :                                        cpcContextName,
; 4482 :                                        lpCurrentTask )) )

	mov	edx, DWORD PTR _bSelectRelevant$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9069
	push	1
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	push	eax
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H
	movsx	edx, ax
	movsx	eax, WORD PTR _nDesiredSelectState$[ebp]
	cmp	edx, eax
	jne	SHORT $L9074
$L9069:
	cmp	DWORD PTR _lQualRequest$[ebp], 0
	je	SHORT $L9070
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcContextName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _pQualValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lQualOperator$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lQualRequest$[ebp]
	push	edx
	mov	eax, DWORD PTR _vAttrView$[ebp]
	push	eax
	call	_fnQualifiedInstance
	add	esp, 48					; 00000030H
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L9074
$L9070:

; 4484 :                // We have satisfied Select state and Qualification criteria,
; 4485 :                // see if we need to perform any relative positioning ...
; 4486 :                if ( bRelPosition )

	mov	edx, DWORD PTR _bRelPosition$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9071

; 4487 :                   if ( lCurrRelPosition == 0 )

	cmp	DWORD PTR _lCurrRelPosition$[ebp], 0
	jne	SHORT $L9072

; 4488 :                      break;

	jmp	$L9063
$L9072:

; 4491 :                      // If we are here, we are about to perform a
; 4492 :                      // relative positioning.
; 4493 :                      bDoRelPosition = TRUE;

	mov	BYTE PTR _bDoRelPosition$[ebp], 1

; 4495 :                else

	jmp	SHORT $L9074
$L9071:

; 4496 :                   break;

	jmp	$L9063
$L9074:

; 4499 : 
; 4500 :          if ( bDoRelPosition )

	mov	eax, DWORD PTR _bDoRelPosition$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9075

; 4502 :             // Time to perform a relative positioning move ...
; 4503 :             if ( lCurrRelPosition > 0 )

	cmp	DWORD PTR _lCurrRelPosition$[ebp], 0
	jle	SHORT $L9076

; 4505 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4506 :                lCurrRelPosition--;

	mov	eax, DWORD PTR _lCurrRelPosition$[ebp]
	sub	eax, 1
	mov	DWORD PTR _lCurrRelPosition$[ebp], eax

; 4508 :             else

	jmp	SHORT $L9078
$L9076:

; 4510 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevTwin );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4511 :                lCurrRelPosition++;

	mov	eax, DWORD PTR _lCurrRelPosition$[ebp]
	add	eax, 1
	mov	DWORD PTR _lCurrRelPosition$[ebp], eax
$L9078:

; 4513 : 
; 4514 :             bDoRelPosition = 0;  // reset indicator

	mov	BYTE PTR _bDoRelPosition$[ebp], 0

; 4516 :          else

	jmp	SHORT $L9083
$L9075:

; 4518 :             if ( bAbsPosition_Forward )

	mov	ecx, DWORD PTR _bAbsPosition_Forward$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9081

; 4519 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4520 :             else

	jmp	SHORT $L9083
$L9081:

; 4521 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevTwin );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
$L9083:

; 4523 :       } // end of while ( lpSearchEntityInstance )

	jmp	$L9038
$L9063:

; 4524 : 
; 4525 :       // We are now at the requested link in the chain, or we have
; 4526 :       // gone off one of the ends...
; 4527 :       if ( lpSearchEntityInstance )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	$L9085

; 4529 :          if ( lAbsPosition == 0 && lRelPosition == 0 )

	cmp	DWORD PTR _lAbsPosition$[ebp], 0
	jne	SHORT $L9086
	cmp	DWORD PTR _lRelPosition$[ebp], 0
	jne	SHORT $L9086

; 4531 :             LPVIEWENTITY lpViewEntity = zGETPTR( lpSearchEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$9087[ebp], eax

; 4532 : 
; 4533 :             // This is when only Relative positioning is requested and
; 4534 :             // the relative position specified was zero ...
; 4535 :             return( CheckExistenceOfEntity( lpView, lpViewEntity->szName ) );

	mov	edx, DWORD PTR _lpViewEntity$9087[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_CheckExistenceOfEntity@8
	jmp	$L9029
$L9086:

; 4537 : 
; 4538 :          nRC = zCURSOR_SET;

	mov	WORD PTR _nRC$[ebp], 0

; 4539 :          if ( bCursorTest == FALSE )

	mov	ecx, DWORD PTR _bCursorTest$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L9091

; 4541 :             if ( bSameParentKeepChildren == FALSE ||
; 4542 :                  zGETPTR( lpViewEntityCsr->hEntityInstance ) != lpSearchEntityInstance )

	mov	edx, DWORD PTR _bSameParentKeepChildren$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9092
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	je	SHORT $L9091
$L9092:

; 4544 :                lpViewEntityCsr->hEntityInstance = zGETHNDL( lpSearchEntityInstance );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 4545 :             // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 4546 :             //    SysMessageBox( 0, "ScanEI_NoScoping", "UNSET_CSR", -1 );
; 4547 : 
; 4548 :                fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L9091:

; 4552 :       else

	jmp	$L9112
$L9085:

; 4554 :          LPENTITYINSTANCE lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$9095[ebp], eax

; 4555 : 
; 4556 :          // We didn't find anything yet, so position on the first
; 4557 :          // unhidden entity instance and indicate zCURSOR_UNCHANGED.
; 4558 :          // If no unhidden entity instance exists, return zCURSOR_NULL.
; 4559 : 
; 4560 :          // If the current entity instance is not hidden, leave the sleeping
; 4561 :          // dogs alone, otherwise scan for a twin that is not hidden.
; 4562 :          if ( lpEntityInstance->u.nInd.bHidden )

	mov	edx, DWORD PTR _lpEntityInstance$9095[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	$L9097

; 4564 :             zBOOL bFound;
; 4565 :             zBOOL bForward;   // True, if we have been trying to move forward
; 4566 :                               // in the chain.
; 4567 :             bFound = FALSE;

	mov	BYTE PTR _bFound$9098[ebp], 0

; 4568 :             bForward = lAbsPosition ? bAbsPosition_Forward : (lRelPosition > 0);

	cmp	DWORD PTR _lAbsPosition$[ebp], 0
	je	SHORT $L9882
	mov	ecx, DWORD PTR _bAbsPosition_Forward$[ebp]
	and	ecx, 255				; 000000ffH
	mov	DWORD PTR -44+[ebp], ecx
	jmp	SHORT $L9883
$L9882:
	xor	edx, edx
	cmp	DWORD PTR _lRelPosition$[ebp], 0
	setg	dl
	mov	DWORD PTR -44+[ebp], edx
$L9883:
	mov	al, BYTE PTR -44+[ebp]
	mov	BYTE PTR _bForward$9099[ebp], al

; 4569 : 
; 4570 :             lpSearchEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
$L9102:

; 4571 :             while ( (bForward && lpSearchEntityInstance->hPrevTwin) ||
; 4572 :                     (bForward == FALSE && lpSearchEntityInstance->hNextTwin) )

	mov	eax, DWORD PTR _bForward$9099[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9105
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	jne	SHORT $L9104
$L9105:
	mov	edx, DWORD PTR _bForward$9099[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	jne	SHORT $L9103
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	SHORT $L9103
$L9104:

; 4574 :                lpSearchEntityInstance = bForward ?
; 4575 :                                zGETPTR( lpSearchEntityInstance->hPrevTwin ) :
; 4576 :                                zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _bForward$9099[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9884
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR -48+[ebp], eax
	jmp	SHORT $L9885
$L9884:
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR -48+[ebp], eax
$L9885:
	mov	eax, DWORD PTR -48+[ebp]
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4577 :                if ( lpSearchEntityInstance->u.nInd.bHidden == FALSE )

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9108

; 4579 :                   bFound = TRUE;

	mov	BYTE PTR _bFound$9098[ebp], 1

; 4580 :                   break;

	jmp	SHORT $L9103
$L9108:

; 4582 :             }

	jmp	SHORT $L9102
$L9103:

; 4583 : 
; 4584 :             if ( bFound )

	mov	eax, DWORD PTR _bFound$9098[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9109

; 4586 :                if ( bCursorTest == FALSE )

	mov	ecx, DWORD PTR _bCursorTest$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L9110

; 4588 :                   lpViewEntityCsr->hEntityInstance = zGETHNDL( lpSearchEntityInstance );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 4589 :                // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 4590 :                //    SysMessageBox( 0, "ScanEI_NoScoping2", "UNSET_CSR", -1 );
; 4591 : 
; 4592 :                   fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L9110:

; 4594 : 
; 4595 :                nRC = zCURSOR_UNCHANGED;  // to my way of thinking, this should not

	mov	WORD PTR _nRC$[ebp], -1
$L9109:

; 4603 :          else

	jmp	SHORT $L9112
$L9097:

; 4604 :             nRC = zCURSOR_UNCHANGED; // Not NULL and Not Found is UNCHANGED

	mov	WORD PTR _nRC$[ebp], -1
$L9112:

; 4607 : 
; 4608 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L9029:

; 4609 : }

	mov	esp, ebp
	pop	ebp
	ret	0
$L9886:
	DD	$L9042
	DD	$L9054
	DD	$L9048
	DD	$L9051
_fnScanEI_NoScoping ENDP
_lpNextHier$9219 = -44
_lpSrchViewEntity$9237 = -48
_lpTempEntityCsr$9287 = -60
_lpFoundEntityInstance$9288 = -56
_bRebuild$9289 = -52
_lpResetInstance$9314 = -64
_lpParent$9315 = -72
_lpResetCsr$9316 = -68
_bFound$9341 = -76
_bForward$9342 = -80
_lpView$ = 8
_lpViewEntity$ = 12
_lpViewEntityCsr$ = 16
_lpViewEntityAttrib$ = 20
_pQualValue$ = 24
_lpSrcViewEntityCsr$ = 28
_lpSrcViewEntityAttrib$ = 32
_lRelPosition$ = 36
_lpScopingViewEntityCsr$ = 40
_cpcContextName$ = 44
_lpCurrentTask$ = 48
_lpSrcEntityInstance$ = 52
_vAttrView$ = 56
_lAbsPosition$ = 60
_lQualRequest$ = 64
_lQualOperator$ = 68
_nDesiredSelectState$ = 72
_bSelectRelevant$ = 76
_bRelPosition$ = 80
_bSameParentKeepChildren$ = 84
_bRecurse$ = 88
_bCursorTest$ = 92
_lpSearchEntityInstance$ = -28
_bAbsPosition_Forward$ = -24
_bDoRelPosition$ = -20
_lCurrRelPosition$ = -32
_nRC$ = -16
_nStopLevel$ = -4
_bNewParent$ = -36
_bFound$ = -12
_lpRecursChild$ = -8
_lpPrevHier$9182 = -40
_fnScanEI_Scoping PROC NEAR

; 4634 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 92					; 0000005cH

; 4635 :    //
; 4636 :    // This processing occurs only when we have a Scoping Entity!
; 4637 :    //
; 4638 :    LPENTITYINSTANCE  lpSearchEntityInstance;
; 4639 :    zBOOL    bAbsPosition_Forward;// indicates direction of 'absolute' positioning
; 4640 :    zBOOL    bDoRelPosition = 0;

	mov	BYTE PTR _bDoRelPosition$[ebp], 0

; 4641 :    zLONG    lCurrRelPosition;
; 4642 :    zSHORT   nRC = zCURSOR_NULL;

	mov	WORD PTR _nRC$[ebp], -3			; fffffffdH

; 4643 : 
; 4644 :    zSHORT         nStopLevel;
; 4645 :    zBOOL          bNewParent;
; 4646 :    zBOOL          bFound;
; 4647 :    LPVIEWENTITY   lpRecursChild;
; 4648 : 
; 4649 : #ifdef  __CURSOR_PERFORMANCE__
; 4650 :    zBOOL          bDoTwins;
; 4651 :    zSHORT         nStopHier;
; 4652 :    LPVIEWCSR      lpViewCsr;
; 4653 :    LPVIEWOI       lpViewOI;
; 4654 :    LPVIEWENTITY   lpWkViewEntity;
; 4655 : 
; 4656 :    bDoTwins = !fnEntityInRecursivePath( lpViewEntity );
; 4657 :    nStopHier = 0;
; 4658 :    lpViewCsr = zGETPTR( lpView->hViewCsr );
; 4659 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );
; 4660 :    if ( lpViewOI->bMultipleRootLevels == FALSE )
; 4661 :    {
; 4662 :       lpWkViewEntity = zGETPTR( lpViewEntity->hNextHier );
; 4663 :       while ( lpWkViewEntity && lpWkViewEntity->nLevel != 2 )
; 4664 :          lpWkViewEntity = zGETPTR( lpWkViewEntity->hNextHier );
; 4665 :       if ( lpWkViewEntity )
; 4666 :          nStopHier = lpWkViewEntity->nHierNbr;
; 4667 :    }
; 4668 : #endif
; 4669 : 
; 4670 :    // Relative positioning requested
; 4671 :    lCurrRelPosition = bRelPosition ? lRelPosition : 0;

	mov	eax, DWORD PTR _bRelPosition$[ebp]
	and	eax, 255				; 000000ffH
	neg	eax
	sbb	eax, eax
	and	eax, DWORD PTR _lRelPosition$[ebp]
	mov	DWORD PTR _lCurrRelPosition$[ebp], eax

; 4672 : 
; 4673 :    nStopLevel = lpScopingViewEntityCsr->nLevel;

	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	dx, WORD PTR [ecx+22]
	mov	WORD PTR _nStopLevel$[ebp], dx

; 4674 :    bNewParent = 0;

	mov	BYTE PTR _bNewParent$[ebp], 0

; 4675 :    bFound = FALSE;

	mov	BYTE PTR _bFound$[ebp], 0

; 4676 : 
; 4677 :    switch ( lAbsPosition )
; 4678 :    {

	mov	eax, DWORD PTR _lAbsPosition$[ebp]
	mov	DWORD PTR -84+[ebp], eax
	mov	ecx, DWORD PTR -84+[ebp]
	sub	ecx, 1
	mov	DWORD PTR -84+[ebp], ecx
	cmp	DWORD PTR -84+[ebp], 3
	ja	$L9223
	mov	edx, DWORD PTR -84+[ebp]
	jmp	DWORD PTR $L9892[edx*4]
$L9172:

; 4679 :       case zPOS_FIRST:
; 4680 :          bAbsPosition_Forward = TRUE;

	mov	BYTE PTR _bAbsPosition_Forward$[ebp], 1

; 4681 :          lpSearchEntityInstance = zGETPTR( lpScopingViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4682 :          if ( lpSearchEntityInstance )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L9174

; 4683 :             lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
$L9174:

; 4684 : 
; 4685 :          // go to the start of the chain
; 4686 :          while ( lpSearchEntityInstance &&
; 4687 :                  lpSearchEntityInstance->nLevel > nStopLevel )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L9178
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	movsx	eax, WORD PTR _nStopLevel$[ebp]
	cmp	edx, eax
	jle	SHORT $L9178

; 4689 :             if ( lpSearchEntityInstance->hPrevTwin )

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	SHORT $L9179

; 4690 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevTwin );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4691 :             else

	jmp	SHORT $L9185
$L9179:

; 4693 :                LPENTITYINSTANCE lpPrevHier = zGETPTR( lpSearchEntityInstance->hPrevHier );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevHier$9182[ebp], eax

; 4694 : 
; 4695 :                if ( lpPrevHier && lpPrevHier->nLevel > nStopLevel )

	cmp	DWORD PTR _lpPrevHier$9182[ebp], 0
	je	SHORT $L9184
	mov	eax, DWORD PTR _lpPrevHier$9182[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStopLevel$[ebp]
	cmp	ecx, edx
	jle	SHORT $L9184

; 4696 :                   lpSearchEntityInstance = lpPrevHier;

	mov	eax, DWORD PTR _lpPrevHier$9182[ebp]
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4697 :                else

	jmp	SHORT $L9185
$L9184:

; 4698 :                   break;

	jmp	SHORT $L9178
$L9185:

; 4700 :          }

	jmp	SHORT $L9174
$L9178:

; 4701 : 
; 4702 :          break;

	jmp	$L9168
$L9187:

; 4703 : 
; 4704 :       case zPOS_NEXT:
; 4705 :          bAbsPosition_Forward = TRUE;

	mov	BYTE PTR _bAbsPosition_Forward$[ebp], 1

; 4706 :          lpSearchEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4707 :          if ( lpSearchEntityInstance )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L9195

; 4709 :             if ( bRecurse )

	mov	eax, DWORD PTR _bRecurse$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9190

; 4710 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4711 :             else

	jmp	SHORT $L9195
$L9190:

; 4712 :             if ( lpSearchEntityInstance->hNextTwin )

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	SHORT $L9193

; 4713 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4714 :             else

	jmp	SHORT $L9195
$L9193:

; 4716 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4717 :                bNewParent = TRUE;

	mov	BYTE PTR _bNewParent$[ebp], 1
$L9195:

; 4720 : 
; 4721 :          break;

	jmp	$L9168
$L9198:

; 4722 : 
; 4723 :       case zPOS_PREV:
; 4724 :          bAbsPosition_Forward = 0;

	mov	BYTE PTR _bAbsPosition_Forward$[ebp], 0

; 4725 :          lpSearchEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4726 :          if ( lpSearchEntityInstance )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L9206

; 4728 :             if ( bRecurse )

	mov	ecx, DWORD PTR _bRecurse$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9201

; 4730 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevHier );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4732 :             else

	jmp	SHORT $L9206
$L9201:

; 4733 :             if ( lpSearchEntityInstance->hPrevTwin )

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	SHORT $L9204

; 4734 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevTwin );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4735 :             else

	jmp	SHORT $L9206
$L9204:

; 4737 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevHier );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4738 :                bNewParent = TRUE;

	mov	BYTE PTR _bNewParent$[ebp], 1
$L9206:

; 4741 : 
; 4742 :          break;

	jmp	$L9168
$L9209:

; 4743 : 
; 4744 :       case zPOS_LAST:
; 4745 :          bAbsPosition_Forward = 0;

	mov	BYTE PTR _bAbsPosition_Forward$[ebp], 0

; 4746 :          lpSearchEntityInstance = zGETPTR( lpScopingViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4747 : 
; 4748 :          if ( lpSearchEntityInstance )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L9211

; 4749 :             lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
$L9211:

; 4750 : 
; 4751 :          // Go to the end of the chain.
; 4752 :          while ( lpSearchEntityInstance &&
; 4753 :                  lpSearchEntityInstance->nLevel > nStopLevel )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L9215
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	movsx	eax, WORD PTR _nStopLevel$[ebp]
	cmp	edx, eax
	jle	SHORT $L9215

; 4755 :             if ( lpSearchEntityInstance->hNextTwin )

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	SHORT $L9216

; 4756 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4757 :             else

	jmp	SHORT $L9222
$L9216:

; 4759 :                LPENTITYINSTANCE lpNextHier = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$9219[ebp], eax

; 4760 : 
; 4761 :                if ( lpNextHier && lpNextHier->nLevel > nStopLevel )

	cmp	DWORD PTR _lpNextHier$9219[ebp], 0
	je	SHORT $L9221
	mov	eax, DWORD PTR _lpNextHier$9219[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStopLevel$[ebp]
	cmp	ecx, edx
	jle	SHORT $L9221

; 4762 :                   lpSearchEntityInstance = lpNextHier;

	mov	eax, DWORD PTR _lpNextHier$9219[ebp]
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4763 :                else

	jmp	SHORT $L9222
$L9221:

; 4764 :                   break;

	jmp	SHORT $L9215
$L9222:

; 4766 :          }

	jmp	SHORT $L9211
$L9215:

; 4767 : 
; 4768 :          break;

	jmp	SHORT $L9168
$L9223:

; 4769 : 
; 4770 :       default:
; 4771 :          // Relative positioning only ...
; 4772 :          lpSearchEntityInstance  = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
$L9168:

; 4775 : 
; 4776 :    lpRecursChild = 0;

	mov	DWORD PTR _lpRecursChild$[ebp], 0

; 4777 :    if ( bRecurse )

	mov	eax, DWORD PTR _bRecurse$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	$L9232

; 4779 :       lpRecursChild = zGETPTR( lpViewEntity->hNextHier );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursChild$[ebp], eax
$L9228:

; 4780 :       while ( lpRecursChild &&
; 4781 :               lpRecursChild->nLevel > lpViewEntity->nLevel &&
; 4782 :               (lpRecursChild->lEREntTok != lpViewEntity->lEREntTok ||
; 4783 :                lpRecursChild->bRecursive == FALSE) )

	cmp	DWORD PTR _lpRecursChild$[ebp], 0
	je	SHORT $L9229
	mov	eax, DWORD PTR _lpRecursChild$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	cmp	ecx, eax
	jle	SHORT $L9229
	mov	ecx, DWORD PTR _lpRecursChild$[ebp]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+195]
	cmp	eax, DWORD PTR [edx+195]
	jne	SHORT $L9230
	mov	ecx, DWORD PTR _lpRecursChild$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9229
$L9230:

; 4785 :          lpRecursChild = zGETPTR( lpRecursChild->hNextHier );

	mov	eax, DWORD PTR _lpRecursChild$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursChild$[ebp], eax

; 4786 :       }

	jmp	SHORT $L9228
$L9229:

; 4787 : 
; 4788 :       if ( lpRecursChild == 0 || lpRecursChild->nLevel <= lpViewEntity->nLevel )

	cmp	DWORD PTR _lpRecursChild$[ebp], 0
	je	SHORT $L9233
	mov	edx, DWORD PTR _lpRecursChild$[ebp]
	movsx	eax, WORD PTR [edx+215]
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	cmp	eax, edx
	jg	SHORT $L9232
$L9233:

; 4789 :          lpRecursChild = 0;

	mov	DWORD PTR _lpRecursChild$[ebp], 0
$L9232:

; 4791 : 
; 4792 : 
; 4793 :    while ( lpSearchEntityInstance &&
; 4794 :            lpSearchEntityInstance->nLevel > nStopLevel )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	$L9236
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStopLevel$[ebp]
	cmp	ecx, edx
	jle	$L9236

; 4796 :       LPVIEWENTITY   lpSrchViewEntity;
; 4797 : 
; 4798 :       lpSrchViewEntity = zGETPTR( lpSearchEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchViewEntity$9237[ebp], eax

; 4799 :       if ( lpSearchEntityInstance->u.nInd.bHidden == FALSE &&
; 4800 : 
; 4801 :            (lpSrchViewEntity == lpViewEntity ||
; 4802 :             lpSrchViewEntity == lpRecursChild) &&
; 4803 : 
; 4804 :            (bRecurse ||
; 4805 :             lpSearchEntityInstance->nLevel == lpViewEntityCsr->nLevel) &&
; 4806 : 
; 4807 :            // SelectState
; 4808 :            (bSelectRelevant == FALSE ||
; 4809 :             (fnSelectedInstanceFarbler( zGETPTR( lpViewEntityCsr->hViewCsr ),
; 4810 :                                         zGETPTR( lpSearchEntityInstance->hViewEntity ),
; 4811 :                                         zGETHNDL( lpSearchEntityInstance ), 1 )
; 4812 :                                                    == nDesiredSelectState)) &&
; 4813 : 
; 4814 :            // Qualification
; 4815 :            (lQualRequest == 0 ||
; 4816 :             fnQualifiedInstance( vAttrView,
; 4817 :                                  lQualRequest,
; 4818 :                                  lQualOperator,
; 4819 :                                  pQualValue,
; 4820 :                                  lpSearchEntityInstance,
; 4821 :                                  lpViewEntityCsr,
; 4822 :                                  lpViewEntityAttrib,
; 4823 :                                  lpSrcEntityInstance,
; 4824 :                                  lpSrcViewEntityCsr,
; 4825 :                                  lpSrcViewEntityAttrib,
; 4826 :                                  cpcContextName,
; 4827 :                                  lpCurrentTask )) )

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	$L9250
	mov	ecx, DWORD PTR _lpSrchViewEntity$9237[ebp]
	cmp	ecx, DWORD PTR _lpViewEntity$[ebp]
	je	SHORT $L9243
	mov	edx, DWORD PTR _lpSrchViewEntity$9237[ebp]
	cmp	edx, DWORD PTR _lpRecursChild$[ebp]
	jne	$L9250
$L9243:
	mov	eax, DWORD PTR _bRecurse$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L9244
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	cmp	edx, ecx
	jne	$L9250
$L9244:
	mov	edx, DWORD PTR _bSelectRelevant$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9245
	push	1
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	push	eax
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnSelectedInstanceFarbler
	add	esp, 16					; 00000010H
	movsx	edx, ax
	movsx	eax, WORD PTR _nDesiredSelectState$[ebp]
	cmp	edx, eax
	jne	SHORT $L9250
$L9245:
	cmp	DWORD PTR _lQualRequest$[ebp], 0
	je	SHORT $L9246
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcContextName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntityAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _pQualValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lQualOperator$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lQualRequest$[ebp]
	push	edx
	mov	eax, DWORD PTR _vAttrView$[ebp]
	push	eax
	call	_fnQualifiedInstance
	add	esp, 48					; 00000030H
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L9250
$L9246:

; 4829 :          // We have satisfied Select state and Qualification criteria, see
; 4830 :          // if we need to perform any relative positioning ...
; 4831 :          if ( bRelPosition )

	mov	edx, DWORD PTR _bRelPosition$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9247

; 4833 :             if ( lCurrRelPosition == 0 )

	cmp	DWORD PTR _lCurrRelPosition$[ebp], 0
	jne	SHORT $L9248

; 4835 :                bFound = TRUE;

	mov	BYTE PTR _bFound$[ebp], 1

; 4836 :                break;

	jmp	$L9236
$L9248:

; 4840 :                // If we are in here, we are about to perform relative positioning.
; 4841 :                bDoRelPosition = TRUE;

	mov	BYTE PTR _bDoRelPosition$[ebp], 1

; 4844 :          else

	jmp	SHORT $L9250
$L9247:

; 4846 :             bFound = TRUE;

	mov	BYTE PTR _bFound$[ebp], 1

; 4847 :             break;

	jmp	$L9236
$L9250:

; 4850 : 
; 4851 :       if ( bDoRelPosition )

	mov	eax, DWORD PTR _bDoRelPosition$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	$L9251

; 4853 :          // Time to perform a relative positioning move ...
; 4854 :          if ( lCurrRelPosition > 0 )

	cmp	DWORD PTR _lCurrRelPosition$[ebp], 0
	jle	SHORT $L9252

; 4856 :             if ( bRecurse )

	mov	ecx, DWORD PTR _bRecurse$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9253

; 4857 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4858 :             else

	jmp	SHORT $L9258
$L9253:

; 4859 :             if ( lpSearchEntityInstance->hNextTwin )

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	SHORT $L9256

; 4860 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4861 :             else

	jmp	SHORT $L9258
$L9256:

; 4863 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4864 :                bNewParent = TRUE;

	mov	BYTE PTR _bNewParent$[ebp], 1
$L9258:

; 4866 : 
; 4867 :             lCurrRelPosition--;

	mov	eax, DWORD PTR _lCurrRelPosition$[ebp]
	sub	eax, 1
	mov	DWORD PTR _lCurrRelPosition$[ebp], eax

; 4869 :          else

	jmp	SHORT $L9260
$L9252:

; 4871 :             if ( bRecurse )

	mov	ecx, DWORD PTR _bRecurse$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9261

; 4873 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevHier );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4875 :             else

	jmp	SHORT $L9266
$L9261:

; 4877 :                if ( lpSearchEntityInstance->hPrevTwin )

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	SHORT $L9264

; 4878 :                   lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevTwin );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4879 :                else

	jmp	SHORT $L9266
$L9264:

; 4881 :                   lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevHier );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4882 :                   bNewParent = TRUE;

	mov	BYTE PTR _bNewParent$[ebp], 1
$L9266:

; 4885 : 
; 4886 :             lCurrRelPosition++;

	mov	eax, DWORD PTR _lCurrRelPosition$[ebp]
	add	eax, 1
	mov	DWORD PTR _lCurrRelPosition$[ebp], eax
$L9260:

; 4888 : 
; 4889 :          bDoRelPosition = 0;  // reset indicator

	mov	BYTE PTR _bDoRelPosition$[ebp], 0

; 4891 :       else

	jmp	$L9283
$L9251:

; 4893 :          //
; 4894 :          // perform absolute positioning fore or aft...
; 4895 :          //
; 4896 :          if ( bAbsPosition_Forward )

	mov	ecx, DWORD PTR _bAbsPosition_Forward$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9269

; 4898 :             if ( bRecurse )

	mov	edx, DWORD PTR _bRecurse$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9270

; 4900 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4911 :             else

	jmp	SHORT $L9275
$L9270:

; 4913 : #ifdef  __CURSOR_PERFORMANCE__
; 4914 :                if ( bDoTwins && lpSrchViewEntity == lpViewEntity )
; 4915 :                {
; 4916 :                   if ( lpSearchEntityInstance->hNextTwin )
; 4917 :                   {
; 4918 :                      lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );
; 4919 :                   }
; 4920 :                   else
; 4921 :                   {
; 4922 :                      bNewParent = TRUE;
; 4923 :                      while ( lpSearchEntityInstance &&
; 4924 :                              lpSearchEntityInstance->hNextTwin == 0 )
; 4925 :                      {
; 4926 :                         lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hParent );
; 4927 :                      }
; 4928 : 
; 4929 :                      if ( lpSearchEntityInstance )
; 4930 :                      {
; 4931 :                         lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );
; 4932 :                      }
; 4933 :                   }
; 4934 :                }
; 4935 :                else
; 4936 : #endif
; 4937 :                if ( lpSrchViewEntity == lpViewEntity &&
; 4938 :                     lpSearchEntityInstance->nLevel == lpViewEntityCsr->nLevel &&
; 4939 :                     lpSearchEntityInstance->hNextTwin )

	mov	edx, DWORD PTR _lpSrchViewEntity$9237[ebp]
	cmp	edx, DWORD PTR _lpViewEntity$[ebp]
	jne	SHORT $L9273
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	cmp	ecx, eax
	jne	SHORT $L9273
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	SHORT $L9273

; 4941 :                   lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4943 :                else

	jmp	SHORT $L9275
$L9273:

; 4945 :                   lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4946 :                   bNewParent = TRUE;

	mov	BYTE PTR _bNewParent$[ebp], 1
$L9275:

; 4960 :          else

	jmp	SHORT $L9283
$L9269:

; 4962 :             if ( bRecurse )

	mov	eax, DWORD PTR _bRecurse$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9278

; 4964 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevHier );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4966 :             else

	jmp	SHORT $L9283
$L9278:

; 4968 :                if ( lpSrchViewEntity == lpViewEntity &&
; 4969 :                     lpSearchEntityInstance->nLevel == lpViewEntityCsr->nLevel &&
; 4970 :                     lpSearchEntityInstance->hPrevTwin )

	mov	eax, DWORD PTR _lpSrchViewEntity$9237[ebp]
	cmp	eax, DWORD PTR _lpViewEntity$[ebp]
	jne	SHORT $L9281
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	cmp	edx, ecx
	jne	SHORT $L9281
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L9281

; 4972 :                   lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevTwin );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4974 :                else

	jmp	SHORT $L9283
$L9281:

; 4976 :                   lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevHier );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 4977 :                   bNewParent = TRUE;

	mov	BYTE PTR _bNewParent$[ebp], 1
$L9283:

; 4982 :    } // end of while (lpSearchEntityInstance)

	jmp	$L9232
$L9236:

; 4983 :    //      for when we have a scoping entity...
; 4984 : 
; 4985 :    if ( bFound )

	mov	ecx, DWORD PTR _bFound$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	$L9285

; 4987 :       if ( bRecurse )

	mov	edx, DWORD PTR _bRecurse$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	$L9286

; 4989 :          LPVIEWENTITYCSR   lpTempEntityCsr;
; 4990 :          LPENTITYINSTANCE  lpFoundEntityInstance;
; 4991 :          zBOOL             bRebuild;
; 4992 : 
; 4993 :          nRC = zCURSOR_SET;

	mov	WORD PTR _nRC$[ebp], 0

; 4994 :          bRebuild = FALSE;

	mov	BYTE PTR _bRebuild$9289[ebp], 0

; 4995 :          lpFoundEntityInstance = lpSearchEntityInstance;

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	DWORD PTR _lpFoundEntityInstance$9288[ebp], eax

; 4996 : 
; 4997 :          // First, try scanning up the to see if parentage and
; 4998 :          // ViewSubobjects are intact, if not chuck it out and then
; 4999 :          // rebuild it.
; 5000 :          if ( lpSearchEntityInstance->nLevel == lpViewEntityCsr->nLevel )

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	cmp	edx, ecx
	jne	$L9290

; 5002 :             if ( bCursorTest == FALSE )

	mov	edx, DWORD PTR _bCursorTest$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	jne	SHORT $L9293

; 5004 :                if ( bSameParentKeepChildren == FALSE ||
; 5005 :                     zGETPTR( lpViewEntityCsr->hEntityInstance ) != lpSearchEntityInstance )

	mov	eax, DWORD PTR _bSameParentKeepChildren$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9294
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	je	SHORT $L9293
$L9294:

; 5007 :                   lpViewEntityCsr->hEntityInstance = zGETHNDL( lpSearchEntityInstance );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 5008 :                   fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L9293:

; 5011 : 
; 5012 :             lpTempEntityCsr = lpViewEntityCsr;

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR _lpTempEntityCsr$9287[ebp], eax
$L9298:

; 5013 :             while ( lpTempEntityCsr->hParent &&
; 5014 :                     zGETPTR( lpTempEntityCsr->hParent ) != lpScopingViewEntityCsr )

	mov	ecx, DWORD PTR _lpTempEntityCsr$9287[ebp]
	cmp	DWORD PTR [ecx+10], 0
	je	SHORT $L9299
	mov	edx, DWORD PTR _lpTempEntityCsr$9287[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	je	SHORT $L9299

; 5016 :                lpTempEntityCsr = zGETPTR( lpTempEntityCsr->hParent );

	mov	ecx, DWORD PTR _lpTempEntityCsr$9287[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempEntityCsr$9287[ebp], eax

; 5017 :                lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hParent );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 5018 : 
; 5019 :                if ( (lpTempEntityCsr->hEntityInstance == UNSET_CSR ) ||
; 5020 :                     (zGETPTR( lpTempEntityCsr->hEntityInstance ) !=
; 5021 :                                                 lpSearchEntityInstance ) ||
; 5022 :                     (lpTempEntityCsr->nLevel != lpSearchEntityInstance->nLevel ) )

	mov	edx, DWORD PTR _lpTempEntityCsr$9287[ebp]
	cmp	DWORD PTR [edx+26], 1
	je	SHORT $L9305
	mov	eax, DWORD PTR _lpTempEntityCsr$9287[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	jne	SHORT $L9305
	mov	edx, DWORD PTR _lpTempEntityCsr$9287[ebp]
	movsx	eax, WORD PTR [edx+22]
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	cmp	eax, edx
	je	SHORT $L9304
$L9305:

; 5024 :                   bRebuild = TRUE;

	mov	BYTE PTR _bRebuild$9289[ebp], 1

; 5025 :                   break;

	jmp	SHORT $L9299
$L9304:

; 5027 :             }

	jmp	SHORT $L9298
$L9299:

; 5029 :          else

	jmp	SHORT $L9306
$L9290:

; 5030 :             bRebuild = TRUE;

	mov	BYTE PTR _bRebuild$9289[ebp], 1
$L9306:

; 5031 : 
; 5032 :          // if the entity instance level matches the view entity csr level,
; 5033 :          // then we should be okay.
; 5034 :          if ( bRebuild )

	mov	eax, DWORD PTR _bRebuild$9289[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9308

; 5036 :          // TraceLineS( "(cm) Levels do NOT match", " leveling..." );
; 5037 :             nRC = zCURSOR_SET_NEWPARENT;

	mov	WORD PTR _nRC$[ebp], 1

; 5038 :             if ( bCursorTest == FALSE )

	mov	ecx, DWORD PTR _bCursorTest$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L9308

; 5039 :                fnEstablishViewForInstance( lpView, lpViewEntityCsr,
; 5040 :                                            lpFoundEntityInstance );

	mov	edx, DWORD PTR _lpFoundEntityInstance$9288[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
$L9308:

; 5043 :       else

	jmp	$L9334
$L9286:

; 5045 :          nRC = zCURSOR_SET;

	mov	WORD PTR _nRC$[ebp], 0

; 5046 :          if ( lpSearchEntityInstance == zGETPTR( lpViewEntityCsr->hEntityInstance ) )

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], eax
	jne	SHORT $L9311

; 5048 :             if ( bCursorTest == FALSE && bSameParentKeepChildren == FALSE )

	mov	ecx, DWORD PTR _bCursorTest$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L9312
	mov	edx, DWORD PTR _bSameParentKeepChildren$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	jne	SHORT $L9312

; 5049 :                fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L9312:

; 5051 :          else

	jmp	$L9334
$L9311:

; 5053 :             LPENTITYINSTANCE lpResetInstance;
; 5054 :             LPVIEWENTITYCSR  lpParent;
; 5055 :             LPVIEWENTITYCSR  lpResetCsr;
; 5056 : 
; 5057 :             lpResetCsr      = lpViewEntityCsr;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR _lpResetCsr$9316[ebp], ecx

; 5058 :             lpResetInstance = lpSearchEntityInstance;

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	DWORD PTR _lpResetInstance$9314[ebp], edx

; 5059 :             lpParent        = zGETPTR( lpResetCsr->hParent );

	mov	eax, DWORD PTR _lpResetCsr$9316[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$9315[ebp], eax
$L9319:

; 5060 : 
; 5061 :             // Need to check for presence of parent, in order to
; 5062 :             // handle multiple roots.
; 5063 :             while ( lpParent &&
; 5064 :                     lpParent->hEntityInstance != lpResetInstance->hParent )

	cmp	DWORD PTR _lpParent$9315[ebp], 0
	je	SHORT $L9320
	mov	edx, DWORD PTR _lpParent$9315[ebp]
	mov	eax, DWORD PTR _lpResetInstance$9314[ebp]
	mov	ecx, DWORD PTR [edx+26]
	cmp	ecx, DWORD PTR [eax+30]
	je	SHORT $L9320

; 5066 :                lpResetCsr      = zGETPTR( lpResetCsr->hParent );

	mov	edx, DWORD PTR _lpResetCsr$9316[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpResetCsr$9316[ebp], eax

; 5067 :                lpResetInstance = zGETPTR( lpResetInstance->hParent );

	mov	ecx, DWORD PTR _lpResetInstance$9314[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpResetInstance$9314[ebp], eax

; 5068 :                lpParent        = zGETPTR( lpResetCsr->hParent );

	mov	eax, DWORD PTR _lpResetCsr$9316[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$9315[ebp], eax

; 5069 :             }

	jmp	SHORT $L9319
$L9320:

; 5070 : 
; 5071 :             if ( bCursorTest )

	mov	edx, DWORD PTR _bCursorTest$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9324

; 5073 :                if ( lpResetCsr != lpViewEntityCsr )

	mov	eax, DWORD PTR _lpResetCsr$9316[ebp]
	cmp	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	je	SHORT $L9325

; 5074 :                   nRC = zCURSOR_SET_NEWPARENT;

	mov	WORD PTR _nRC$[ebp], 1
$L9325:

; 5076 :             else

	jmp	$L9334
$L9324:

; 5078 :                lpResetCsr->hEntityInstance = zGETHNDL( lpResetInstance );

	mov	ecx, DWORD PTR _lpResetInstance$9314[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpResetCsr$9316[ebp]
	mov	DWORD PTR [edx+26], eax

; 5079 :             // if ( lpResetCsr->hEntityInstance == UNSET_CSR )
; 5080 :             //    SysMessageBox( 0, "ScanEI_Scoping", "UNSET_CSR", -1 );
; 5081 : 
; 5082 :                fnResetCursorForViewChildren( lpResetCsr );

	mov	eax, DWORD PTR _lpResetCsr$9316[ebp]
	push	eax
	call	_fnResetCursorForViewChildren
	add	esp, 4

; 5083 :                if ( lpResetCsr != lpViewEntityCsr )

	mov	ecx, DWORD PTR _lpResetCsr$9316[ebp]
	cmp	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	je	SHORT $L9334

; 5085 :                   nRC = zCURSOR_SET_NEWPARENT;

	mov	WORD PTR _nRC$[ebp], 1

; 5086 :                   lpViewEntityCsr->hEntityInstance = zGETHNDL( lpSearchEntityInstance );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 5087 :                // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 5088 :                //    SysMessageBox( 0, "ScanEI_Scoping2", "UNSET_CSR", -1 );
; 5089 : 
; 5090 :                   lpViewEntityCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 5091 :                   lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hParent );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax
$L9333:

; 5092 :                   while ( lpViewEntityCsr != lpResetCsr )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	eax, DWORD PTR _lpResetCsr$9316[ebp]
	je	SHORT $L9334

; 5094 :                      lpViewEntityCsr->hEntityInstance = zGETHNDL( lpSearchEntityInstance );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+26], eax

; 5095 :                   // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 5096 :                   //    SysMessageBox( 0, "ScanEI_Scoping3", "UNSET_CSR", -1 );
; 5097 : 
; 5098 :                      lpViewEntityCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 5099 :                      lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hParent );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 5100 :                   }

	jmp	SHORT $L9333
$L9334:

; 5106 :    else

	jmp	$L9355
$L9285:

; 5108 :       // We didn't find anything yet, so position on the first
; 5109 :       // unhidden entity instance and indicate zCURSOR_UNCHANGED.
; 5110 :       // If no unhidden entity instance exists, return zCURSOR_NULL.
; 5111 : 
; 5112 :       // If the current entity instance is not hidden, leave the
; 5113 :       // sleeping dogs alone, otherwise scan for a twin that is not hidden.
; 5114 :       lpSearchEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 5115 :       if ( lpSearchEntityInstance && lpSearchEntityInstance->u.nInd.bHidden )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	$L9340
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	$L9340

; 5117 :          zBOOL bFound;
; 5118 :          zBOOL bForward;   // True, if we have been trying to move
; 5119 :                            // forward in the chain
; 5120 : 
; 5121 :          bFound = FALSE;

	mov	BYTE PTR _bFound$9341[ebp], 0

; 5122 :          bForward = lAbsPosition ? bAbsPosition_Forward :
; 5123 :                                    (lRelPosition > 0);

	cmp	DWORD PTR _lAbsPosition$[ebp], 0
	je	SHORT $L9888
	mov	edx, DWORD PTR _bAbsPosition_Forward$[ebp]
	and	edx, 255				; 000000ffH
	mov	DWORD PTR -88+[ebp], edx
	jmp	SHORT $L9889
$L9888:
	xor	eax, eax
	cmp	DWORD PTR _lRelPosition$[ebp], 0
	setg	al
	mov	DWORD PTR -88+[ebp], eax
$L9889:
	mov	cl, BYTE PTR -88+[ebp]
	mov	BYTE PTR _bForward$9342[ebp], cl
$L9344:

; 5124 : 
; 5125 :          while ( (bForward && lpSearchEntityInstance->hPrevTwin) ||
; 5126 :                  (bForward == FALSE && lpSearchEntityInstance->hNextTwin) )

	mov	edx, DWORD PTR _bForward$9342[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9347
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [eax+26], 0
	jne	SHORT $L9346
$L9347:
	mov	ecx, DWORD PTR _bForward$9342[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L9345
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L9345
$L9346:

; 5128 :             lpSearchEntityInstance = bForward ?
; 5129 :                                zGETPTR( lpSearchEntityInstance->hPrevTwin ) :
; 5130 :                                zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	eax, DWORD PTR _bForward$9342[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9890
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR -92+[ebp], eax
	jmp	SHORT $L9891
$L9890:
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR -92+[ebp], eax
$L9891:
	mov	edx, DWORD PTR -92+[ebp]
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], edx

; 5131 :             if ( lpSearchEntityInstance->u.nInd.bHidden == FALSE )

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9350

; 5133 :                bFound = TRUE;

	mov	BYTE PTR _bFound$9341[ebp], 1

; 5134 :                break;

	jmp	SHORT $L9345
$L9350:

; 5136 :          }

	jmp	SHORT $L9344
$L9345:

; 5137 : 
; 5138 :          if ( bFound )

	mov	edx, DWORD PTR _bFound$9341[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9351

; 5140 :             if ( bCursorTest == FALSE )

	mov	eax, DWORD PTR _bCursorTest$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L9352

; 5142 :                lpViewEntityCsr->hEntityInstance = zGETHNDL( lpSearchEntityInstance );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+26], eax

; 5143 :             // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 5144 :             //    SysMessageBox( 0, "ScanEI_Scoping4", "UNSET_CSR", -1 );
; 5145 : 
; 5146 :                fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L9352:

; 5148 : 
; 5149 :             nRC = zCURSOR_UNCHANGED;

	mov	WORD PTR _nRC$[ebp], -1
$L9351:

; 5155 :       else

	jmp	SHORT $L9355
$L9340:

; 5156 :       if ( lpViewEntityCsr->hEntityInstance )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	SHORT $L9355

; 5157 :          nRC = zCURSOR_UNCHANGED; // Not NULL and Not found is UNCHANGED

	mov	WORD PTR _nRC$[ebp], -1
$L9355:

; 5160 : 
; 5161 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 5162 : }

	mov	esp, ebp
	pop	ebp
	ret	0
$L9892:
	DD	$L9172
	DD	$L9209
	DD	$L9187
	DD	$L9198
_fnScanEI_Scoping ENDP
_vAttrView$ = 8
_lQualRequest$ = 12
_lQualOperator$ = 16
_pQualValue$ = 20
_lpSearchEntityInstance$ = 24
_lpViewEntityCsr$ = 28
_lpViewAttrib$ = 32
_lpSrcEntityInstance$ = 36
_lpSrcViewEntityCsr$ = 40
_lpSrcViewAttrib$ = 44
_cpcContextName$ = 48
_lpCurrentTask$ = 52
_nRC$ = -4
_lpViewEntityCsrDA$9384 = -8
_lpViewEntityCsrForDomain$9395 = -12
_lpViewEntityCsrForDomain$9399 = -16
_lpViewEntityCsrForDomain$9403 = -20
_lpViewEntityCsrForDomain$9407 = -24
_fnQualifiedInstance PROC NEAR

; 5191 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH
	push	esi
	push	edi

; 5192 :    zSHORT   nRC;
; 5193 : 
; 5194 :    if ( lpViewAttrib && lpViewAttrib->szDerivedOper[ 0 ] &&
; 5195 :         lQualRequest != zQUAL_ENTITYCSR &&
; 5196 :         lQualRequest != zQUAL_ENTITYATTR &&
; 5197 :         !(lpViewAttrib->hDomain && cpcContextName && cpcContextName[ 0 ]) )

	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	$L9386
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+213]
	test	ecx, ecx
	je	SHORT $L9386
	cmp	DWORD PTR _lQualRequest$[ebp], 2097152	; 00200000H
	je	SHORT $L9386
	cmp	DWORD PTR _lQualRequest$[ebp], 4096	; 00001000H
	je	SHORT $L9386
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	cmp	DWORD PTR [edx+198], 0
	je	SHORT $L9383
	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L9383
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L9386
$L9383:

; 5199 :       LPVIEWENTITYCSR lpViewEntityCsrDA =
; 5200 :                         fnEstablishViewForInstance( vAttrView, 0,
; 5201 :                                                     lpSearchEntityInstance );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _vAttrView$[ebp]
	push	eax
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsrDA$9384[ebp], eax

; 5202 :       nRC = fnInvokeDerivedOperation( vAttrView,
; 5203 :                                       zGETPTR( lpViewEntityCsrDA->hViewEntity ),
; 5204 :                                       lpViewAttrib,
; 5205 :                                       lpCurrentTask, zDERIVED_GET );

	push	2
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsrDA$9384[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	edx, DWORD PTR _vAttrView$[ebp]
	push	edx
	call	_fnInvokeDerivedOperation
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 5206 :       if ( nRC == zCALL_ERROR )

	movsx	eax, WORD PTR _nRC$[ebp]
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L9386

; 5207 :          return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L9380
$L9386:

; 5209 : 
; 5210 :    switch ( lQualRequest )
; 5211 :    {

	mov	ecx, DWORD PTR _lQualRequest$[ebp]
	mov	DWORD PTR -28+[ebp], ecx
	cmp	DWORD PTR -28+[ebp], 2048		; 00000800H
	jg	SHORT $L9894
	cmp	DWORD PTR -28+[ebp], 2048		; 00000800H
	je	$L9401
	cmp	DWORD PTR -28+[ebp], 256		; 00000100H
	je	SHORT $L9393
	cmp	DWORD PTR -28+[ebp], 512		; 00000200H
	je	$L9397
	cmp	DWORD PTR -28+[ebp], 1024		; 00000400H
	je	$L9405
	jmp	$L9388
$L9894:
	cmp	DWORD PTR -28+[ebp], 4096		; 00001000H
	je	$L9410
	cmp	DWORD PTR -28+[ebp], 2097152		; 00200000H
	je	$L9409
	cmp	DWORD PTR -28+[ebp], 8388608		; 00800000H
	je	SHORT $L9391
	jmp	$L9388
$L9391:

; 5212 :       case zQUAL_ENTITYKEY:
; 5213 :          return( lpSearchEntityInstance->ulKey == *((zPULONG) pQualValue) );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR _pQualValue$[ebp]
	mov	ecx, DWORD PTR [edx+50]
	xor	edx, edx
	cmp	ecx, DWORD PTR [eax]
	sete	dl
	mov	ax, dx
	jmp	$L9380
$L9393:

; 5214 : 
; 5215 :       case zQUAL_INTEGER:
; 5216 :          if ( lpViewAttrib->hDomain && cpcContextName && *cpcContextName )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	cmp	DWORD PTR [eax+198], 0
	je	SHORT $L9394
	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L9394
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	SHORT $L9394

; 5218 :             LPVIEWENTITYCSR lpViewEntityCsrForDomain =
; 5219 :                         fnEstablishViewForInstance( vAttrView, 0,
; 5220 :                                                     lpSearchEntityInstance );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _vAttrView$[ebp]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsrForDomain$9395[ebp], eax

; 5221 :             nRC = fnCompareAttributeToVariable( vAttrView,
; 5222 :                                                 lpViewEntityCsrForDomain,
; 5223 :                                                 lpViewAttrib, pQualValue,
; 5224 :                                                 zTYPE_INTEGER, 0,
; 5225 :                                                 cpcContextName,
; 5226 :                                                 lpCurrentTask, 0 );

	push	0
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	push	0
	push	76					; 0000004cH
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsrForDomain$9395[ebp]
	push	eax
	mov	ecx, DWORD PTR _vAttrView$[ebp]
	push	ecx
	call	_fnCompareAttributeToVariable
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax

; 5227 :             return( fnQualOperatorMatchesRC( lQualOperator, nRC ) );

	mov	dx, WORD PTR _nRC$[ebp]
	push	edx
	mov	eax, DWORD PTR _lQualOperator$[ebp]
	push	eax
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	jmp	$L9380
$L9394:

; 5229 : 
; 5230 :          return( fnIntegerMatchesAttributeValue( *((zPLONG) pQualValue),
; 5231 :                                                  lQualOperator,
; 5232 :                                                  lpSearchEntityInstance,
; 5233 :                                                  lpViewAttrib ) );

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lQualOperator$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	_fnIntegerMatchesAttributeValue
	add	esp, 16					; 00000010H
	jmp	$L9380
$L9397:

; 5234 : 
; 5235 :       case zQUAL_DECIMAL:
; 5236 :          if ( lpViewAttrib->hDomain && cpcContextName && *cpcContextName )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	cmp	DWORD PTR [eax+198], 0
	je	SHORT $L9398
	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L9398
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	SHORT $L9398

; 5238 :             LPVIEWENTITYCSR lpViewEntityCsrForDomain =
; 5239 :                         fnEstablishViewForInstance( vAttrView, 0,
; 5240 :                                                     lpSearchEntityInstance );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _vAttrView$[ebp]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsrForDomain$9399[ebp], eax

; 5241 :             nRC = fnCompareAttributeToVariable( vAttrView,
; 5242 :                                                 lpViewEntityCsrForDomain,
; 5243 :                                                 lpViewAttrib, pQualValue,
; 5244 :                                                 zTYPE_DECIMAL, 0,
; 5245 :                                                 cpcContextName, lpCurrentTask, 0 );

	push	0
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	push	0
	push	77					; 0000004dH
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsrForDomain$9399[ebp]
	push	eax
	mov	ecx, DWORD PTR _vAttrView$[ebp]
	push	ecx
	call	_fnCompareAttributeToVariable
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax

; 5246 :             return( fnQualOperatorMatchesRC( lQualOperator, nRC ) );

	mov	dx, WORD PTR _nRC$[ebp]
	push	edx
	mov	eax, DWORD PTR _lQualOperator$[ebp]
	push	eax
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	jmp	$L9380
$L9398:

; 5248 : 
; 5249 :          return( fnDecimalMatchesAttributeValue( *((zPDECIMAL) pQualValue),
; 5250 :                                                  lQualOperator,
; 5251 :                                                  lpSearchEntityInstance,
; 5252 :                                                  lpViewAttrib ) );

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lQualOperator$[ebp]
	push	eax
	sub	esp, 40					; 00000028H
	mov	ecx, 10					; 0000000aH
	mov	esi, DWORD PTR _pQualValue$[ebp]
	mov	edi, esp
	rep movsd
	call	_fnDecimalMatchesAttributeValue
	add	esp, 52					; 00000034H
	jmp	$L9380
$L9401:

; 5253 : 
; 5254 :       case zQUAL_DATETIME:
; 5255 :          if ( lpViewAttrib->hDomain && cpcContextName && *cpcContextName )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	cmp	DWORD PTR [ecx+198], 0
	je	SHORT $L9402
	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L9402
	mov	edx, DWORD PTR _cpcContextName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L9402

; 5257 :             LPVIEWENTITYCSR lpViewEntityCsrForDomain =
; 5258 :                         fnEstablishViewForInstance( vAttrView, 0,
; 5259 :                                                     lpSearchEntityInstance );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _vAttrView$[ebp]
	push	edx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsrForDomain$9403[ebp], eax

; 5260 :             nRC = fnCompareAttributeToVariable( vAttrView,
; 5261 :                                                 lpViewEntityCsrForDomain,
; 5262 :                                                 lpViewAttrib, pQualValue,
; 5263 :                                                 zTYPE_DATETIME,
; 5264 :                                                 0, cpcContextName,
; 5265 :                                                 lpCurrentTask, 0 );

	push	0
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	push	ecx
	push	0
	push	84					; 00000054H
	mov	edx, DWORD PTR _pQualValue$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsrForDomain$9403[ebp]
	push	ecx
	mov	edx, DWORD PTR _vAttrView$[ebp]
	push	edx
	call	_fnCompareAttributeToVariable
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax

; 5266 :             return( fnQualOperatorMatchesRC( lQualOperator, nRC ) );

	mov	ax, WORD PTR _nRC$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lQualOperator$[ebp]
	push	ecx
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	jmp	$L9380
$L9402:

; 5268 : 
; 5269 :          return( fnDateTimeMatchesAttributeValue( (LPDTINTERNAL) pQualValue,
; 5270 :                                                   lQualOperator,
; 5271 :                                                   lpSearchEntityInstance,
; 5272 :                                                   lpViewAttrib ) );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lQualOperator$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pQualValue$[ebp]
	push	edx
	call	_fnDateTimeMatchesAttributeValue@16
	jmp	$L9380
$L9405:

; 5273 : 
; 5274 :       case zQUAL_STRING:
; 5275 :          if ( lpViewAttrib->hDomain && cpcContextName && *cpcContextName )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	cmp	DWORD PTR [eax+198], 0
	je	SHORT $L9406
	cmp	DWORD PTR _cpcContextName$[ebp], 0
	je	SHORT $L9406
	mov	ecx, DWORD PTR _cpcContextName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	SHORT $L9406

; 5277 :             LPVIEWENTITYCSR lpViewEntityCsrForDomain =
; 5278 :                         fnEstablishViewForInstance( vAttrView, 0,
; 5279 :                                                     lpSearchEntityInstance );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _vAttrView$[ebp]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsrForDomain$9407[ebp], eax

; 5280 :             nRC = fnCompareAttributeToVariable( vAttrView,
; 5281 :                                                 lpViewEntityCsrForDomain,
; 5282 :                                                 lpViewAttrib, pQualValue,
; 5283 :                                                 zTYPE_STRING,
; 5284 :                                                 0, cpcContextName,
; 5285 :                                                 lpCurrentTask, 0 );

	push	0
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcContextName$[ebp]
	push	eax
	push	0
	push	83					; 00000053H
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsrForDomain$9407[ebp]
	push	eax
	mov	ecx, DWORD PTR _vAttrView$[ebp]
	push	ecx
	call	_fnCompareAttributeToVariable
	add	esp, 36					; 00000024H
	mov	WORD PTR _nRC$[ebp], ax

; 5286 :             return( fnQualOperatorMatchesRC( lQualOperator, nRC ) );

	mov	dx, WORD PTR _nRC$[ebp]
	push	edx
	mov	eax, DWORD PTR _lQualOperator$[ebp]
	push	eax
	call	_fnQualOperatorMatchesRC
	add	esp, 8
	jmp	SHORT $L9380
$L9406:

; 5288 : 
; 5289 :          return( fnStringMatchesAttributeValue( (zCPCHAR) pQualValue,
; 5290 :                                                 lQualOperator,
; 5291 :                                                 lpSearchEntityInstance,
; 5292 :                                                 lpViewAttrib ) );

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lQualOperator$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pQualValue$[ebp]
	push	ecx
	call	_fnStringMatchesAttributeValue
	add	esp, 16					; 00000010H
	jmp	SHORT $L9380
$L9409:

; 5293 : 
; 5294 :       case zQUAL_ENTITYCSR:
; 5295 :          return( fnInstanceMatchesInstance( lpSrcEntityInstance,
; 5296 :                                             lpSearchEntityInstance ) );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	eax
	call	_fnInstanceMatchesInstance
	add	esp, 8
	jmp	SHORT $L9380
$L9410:

; 5297 : 
; 5298 :       case zQUAL_ENTITYATTR:
; 5299 :          return( fnAttrValueMatchesAttrValue( vAttrView,
; 5300 :                                               lQualOperator,
; 5301 :                                               lpSrcViewEntityCsr,
; 5302 :                                               lpSrcEntityInstance,
; 5303 :                                               lpSrcViewAttrib,
; 5304 :                                               lpViewEntityCsr,
; 5305 :                                               lpSearchEntityInstance,
; 5306 :                                               lpViewAttrib,
; 5307 :                                               lpCurrentTask ) );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lQualOperator$[ebp]
	push	edx
	mov	eax, DWORD PTR _vAttrView$[ebp]
	push	eax
	call	_fnAttrValueMatchesAttrValue
	add	esp, 36					; 00000024H
	jmp	SHORT $L9380
$L9388:

; 5309 : 
; 5310 :    return( 0 );

	xor	ax, ax
$L9380:

; 5311 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	0
_fnQualifiedInstance ENDP
_lpViewCsr$ = 8
_lpViewEntity$ = 12
_hEntityInstance$ = 16
_nFunction$ = 20
_lpSrchSelectedInstance$ = -12
_lpPrevSelectedInstance$ = -8
_lpPickSelectedInstance$ = -20
_hViewEntity$ = -16
_nRC$ = -4
_lpEntityInstance$9431 = -24
_lpOwningTask$9464 = -32
_lpViewOI$9465 = -36
_hInstance$9466 = -28
_lpView$9481 = -40
_fnSelectedInstanceFarbler PROC NEAR

; 5345 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H

; 5346 :    LPSELECTEDINSTANCE lpSrchSelectedInstance;
; 5347 :    LPSELECTEDINSTANCE lpPrevSelectedInstance;
; 5348 :    LPSELECTEDINSTANCE lpPickSelectedInstance;
; 5349 :    LPVIEWENTITY       hViewEntity = zGETHNDL( lpViewEntity );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hViewEntity$[ebp], eax

; 5350 :    zSHORT             nRC;
; 5351 : 
; 5352 :    lpSrchSelectedInstance = zGETPTR( lpViewCsr->hFirstSelectedInstance );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchSelectedInstance$[ebp], eax

; 5353 :    lpPrevSelectedInstance = 0;

	mov	DWORD PTR _lpPrevSelectedInstance$[ebp], 0

; 5354 :    nRC = 0;    // default to not successful

	mov	WORD PTR _nRC$[ebp], 0
$L9428:

; 5355 : 
; 5356 :    // Scan through the SelectedInstance chain.
; 5357 :    while ( lpSrchSelectedInstance )

	cmp	DWORD PTR _lpSrchSelectedInstance$[ebp], 0
	je	$L9429

; 5359 :       if ( hEntityInstance == lpSrchSelectedInstance->xEntityInstance &&
; 5360 :            hViewEntity == lpSrchSelectedInstance->hViewEntity )

	mov	eax, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	ecx, DWORD PTR _hEntityInstance$[ebp]
	cmp	ecx, DWORD PTR [eax+12]
	jne	$L9434
	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	eax, DWORD PTR _hViewEntity$[ebp]
	cmp	eax, DWORD PTR [edx+8]
	jne	$L9434

; 5362 :          LPENTITYINSTANCE lpEntityInstance = zGETPTR( hEntityInstance );

	mov	ecx, DWORD PTR _hEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$9431[ebp], eax

; 5363 : 
; 5364 :          // We have found the SelectedInstance, currently in the chain
; 5365 :          switch ( nFunction )
; 5366 :          {

	movsx	edx, WORD PTR _nFunction$[ebp]
	mov	DWORD PTR -44+[ebp], edx
	cmp	DWORD PTR -44+[ebp], 1
	je	SHORT $L9437
	cmp	DWORD PTR -44+[ebp], 2
	je	$L9447
	cmp	DWORD PTR -44+[ebp], 3
	je	$L9455
	jmp	$L9434
$L9437:

; 5367 :             case 1: // search function
; 5368 :                if ( lpEntityInstance->nTableID != iEntityInstance ||
; 5369 :                     lpEntityInstance->u.nInd.bHidden )

	mov	eax, DWORD PTR _lpEntityInstance$9431[ebp]
	movsx	ecx, WORD PTR [eax]
	cmp	ecx, 10024				; 00002728H
	jne	SHORT $L9439
	mov	edx, DWORD PTR _lpEntityInstance$9431[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L9438
$L9439:

; 5371 :                   // We've found the selected instance and the
; 5372 :                   // instance is either hidden or invalid, delete the
; 5373 :                   // select instance and pretend we never found it
; 5374 :                   if ( lpPrevSelectedInstance )

	cmp	DWORD PTR _lpPrevSelectedInstance$[ebp], 0
	je	SHORT $L9440

; 5376 :                      lpPrevSelectedInstance->hNextSelectedInstance =
; 5377 :                         lpSrchSelectedInstance->hNextSelectedInstance;

	mov	ecx, DWORD PTR _lpPrevSelectedInstance$[ebp]
	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	mov	DWORD PTR [ecx+2], eax

; 5378 :                      lpPickSelectedInstance =
; 5379 :                         zGETPTR( lpPrevSelectedInstance->hNextSelectedInstance );

	mov	ecx, DWORD PTR _lpPrevSelectedInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPickSelectedInstance$[ebp], eax

; 5381 :                   else

	jmp	SHORT $L9442
$L9440:

; 5383 :                      lpViewCsr->hFirstSelectedInstance =
; 5384 :                         lpSrchSelectedInstance->hNextSelectedInstance;

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+42], edx

; 5385 :                      lpPickSelectedInstance =
; 5386 :                         zGETPTR( lpViewCsr->hFirstSelectedInstance );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPickSelectedInstance$[ebp], eax
$L9442:

; 5388 : 
; 5389 :                   fnFreeDataspace( lpSrchSelectedInstance );

	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 5390 :                   nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1

; 5394 :                else

	jmp	SHORT $L9446
$L9438:

; 5396 :                   // find is successful, make sure the instance is selected
; 5397 :                   // for the requested select set
; 5398 :                   if ( lpViewCsr->nCurrentSelectSet &
; 5399 :                            lpSrchSelectedInstance->nSelectSet )

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	movsx	ecx, WORD PTR [eax+36]
	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	movsx	eax, WORD PTR [edx+6]
	and	ecx, eax
	test	ecx, ecx
	je	SHORT $L9445

; 5401 :                      nRC = 1; // find was successful

	mov	WORD PTR _nRC$[ebp], 1

; 5403 :                   else

	jmp	SHORT $L9446
$L9445:

; 5404 :                      nRC = 0; // find was un-successful

	mov	WORD PTR _nRC$[ebp], 0
$L9446:

; 5406 : 
; 5407 :                break;

	jmp	$L9434
$L9447:

; 5408 : 
; 5409 :             case 2: // add function
; 5410 :                if ( lpEntityInstance->nTableID != iEntityInstance ||
; 5411 :                     lpEntityInstance->u.nInd.bHidden )

	mov	ecx, DWORD PTR _lpEntityInstance$9431[ebp]
	movsx	edx, WORD PTR [ecx]
	cmp	edx, 10024				; 00002728H
	jne	SHORT $L9449
	mov	eax, DWORD PTR _lpEntityInstance$9431[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9448
$L9449:

; 5413 :                   // Drop from chain.
; 5414 :                   if ( lpPrevSelectedInstance )

	cmp	DWORD PTR _lpPrevSelectedInstance$[ebp], 0
	je	SHORT $L9450

; 5416 :                      lpPrevSelectedInstance->hNextSelectedInstance=
; 5417 :                         lpSrchSelectedInstance->hNextSelectedInstance;

	mov	edx, DWORD PTR _lpPrevSelectedInstance$[ebp]
	mov	eax, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR [edx+2], ecx

; 5418 :                      lpPickSelectedInstance =
; 5419 :                         zGETPTR( lpPrevSelectedInstance->hNextSelectedInstance );

	mov	edx, DWORD PTR _lpPrevSelectedInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPickSelectedInstance$[ebp], eax

; 5421 :                   else

	jmp	SHORT $L9452
$L9450:

; 5423 :                      lpViewCsr->hFirstSelectedInstance =
; 5424 :                         lpSrchSelectedInstance->hNextSelectedInstance;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	mov	DWORD PTR [ecx+42], eax

; 5425 :                      lpPickSelectedInstance =
; 5426 :                         zGETPTR( lpViewCsr->hFirstSelectedInstance );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPickSelectedInstance$[ebp], eax
$L9452:

; 5428 : 
; 5429 :                   fnFreeDataspace( lpSrchSelectedInstance );

	mov	eax, DWORD PTR _lpSrchSelectedInstance$[ebp]
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 5430 :                   nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1

; 5434 :                else

	jmp	SHORT $L9454
$L9448:

; 5436 :                   lpSrchSelectedInstance->nSelectSet |=
; 5437 :                                                 lpViewCsr->nCurrentSelectSet;

	mov	ecx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	ax, WORD PTR [ecx+6]
	or	ax, WORD PTR [edx+36]
	mov	ecx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	WORD PTR [ecx+6], ax

; 5438 :                   nRC = 2;

	mov	WORD PTR _nRC$[ebp], 2
$L9454:

; 5440 : 
; 5441 :                break;

	jmp	SHORT $L9434
$L9455:

; 5442 : 
; 5443 :             case 3: // delete function
; 5444 :                // Drop from chain.
; 5445 :                lpSrchSelectedInstance->nSelectSet &=
; 5446 :                                      (0xffff - lpViewCsr->nCurrentSelectSet);

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	movsx	eax, WORD PTR [edx+36]
	mov	ecx, 65535				; 0000ffffH
	sub	ecx, eax
	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	ax, WORD PTR [edx+6]
	and	ax, cx
	mov	ecx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	WORD PTR [ecx+6], ax

; 5447 :                if ( lpSrchSelectedInstance->nSelectSet == 0 )

	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	movsx	eax, WORD PTR [edx+6]
	test	eax, eax
	jne	SHORT $L9456

; 5449 :                   if ( lpPrevSelectedInstance )

	cmp	DWORD PTR _lpPrevSelectedInstance$[ebp], 0
	je	SHORT $L9457

; 5450 :                      lpPrevSelectedInstance->hNextSelectedInstance=
; 5451 :                         lpSrchSelectedInstance->hNextSelectedInstance;

	mov	ecx, DWORD PTR _lpPrevSelectedInstance$[ebp]
	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	mov	DWORD PTR [ecx+2], eax

; 5452 :                   else

	jmp	SHORT $L9458
$L9457:

; 5453 :                      lpViewCsr->hFirstSelectedInstance =
; 5454 :                         lpSrchSelectedInstance->hNextSelectedInstance;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	mov	DWORD PTR [ecx+42], eax
$L9458:

; 5455 : 
; 5456 :                   fnFreeDataspace( lpSrchSelectedInstance );

	mov	ecx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	push	ecx
	call	_fnFreeDataspace
	add	esp, 4
$L9456:

; 5458 : 
; 5459 :                nRC = 1; // deselect was successful

	mov	WORD PTR _nRC$[ebp], 1
$L9434:

; 5463 : 
; 5464 :       // -1 occurs on a search/add function and the EntityInstance is
; 5465 :       // hidden.
; 5466 :       if ( nRC == -1 )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -1
	jne	SHORT $L9459

; 5468 :          lpSrchSelectedInstance = lpPickSelectedInstance;

	mov	eax, DWORD PTR _lpPickSelectedInstance$[ebp]
	mov	DWORD PTR _lpSrchSelectedInstance$[ebp], eax

; 5469 :          nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 5471 :       else

	jmp	SHORT $L9460
$L9459:

; 5473 :          if ( nRC )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L9461

; 5474 :             break;

	jmp	SHORT $L9429
$L9461:

; 5475 : 
; 5476 :          lpPrevSelectedInstance = lpSrchSelectedInstance;

	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	DWORD PTR _lpPrevSelectedInstance$[ebp], edx

; 5477 :          lpSrchSelectedInstance =
; 5478 :             zGETPTR( lpSrchSelectedInstance->hNextSelectedInstance );

	mov	eax, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchSelectedInstance$[ebp], eax
$L9460:

; 5480 :    }

	jmp	$L9428
$L9429:

; 5481 : 
; 5482 :    // If nRC is 0, then the EntityInstance is not currently in the chain.
; 5483 :    if ( nRC == 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jne	$L9468

; 5485 :       LPTASK   lpOwningTask;
; 5486 :       LPVIEWOI lpViewOI;
; 5487 :       zPVOID   hInstance;
; 5488 : 
; 5489 :       switch ( nFunction )
; 5490 :       {

	movsx	eax, WORD PTR _nFunction$[ebp]
	mov	DWORD PTR -48+[ebp], eax
	cmp	DWORD PTR -48+[ebp], 2
	je	SHORT $L9472
	cmp	DWORD PTR -48+[ebp], 3
	je	$L9484
	jmp	$L9468
$L9472:

; 5491 :          case 1: // search function
; 5492 :             break;
; 5493 : 
; 5494 :          case 2: // add function
; 5495 :             //
; 5496 :             // Adding to the SelectedInstance chain...
; 5497 :             //
; 5498 :             lpViewOI     = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$9465[ebp], eax

; 5499 :             lpOwningTask = zGETPTR( lpViewOI->hTask );

	mov	eax, DWORD PTR _lpViewOI$9465[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOwningTask$9464[ebp], eax

; 5500 : 
; 5501 :             hInstance = fnAllocDataspace( lpOwningTask->hFirstDataHeader,
; 5502 :                                           sizeof( SelectedInstanceRecord ),
; 5503 :                                           1, 0, iSelectedInstance );

	push	10033					; 00002731H
	push	0
	push	1
	push	16					; 00000010H
	mov	edx, DWORD PTR _lpOwningTask$9464[ebp]
	mov	eax, DWORD PTR [edx+94]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hInstance$9466[ebp], eax

; 5504 :             lpSrchSelectedInstance = zGETPTR( hInstance );

	mov	ecx, DWORD PTR _hInstance$9466[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchSelectedInstance$[ebp], eax

; 5505 :             if ( lpSrchSelectedInstance )

	cmp	DWORD PTR _lpSrchSelectedInstance$[ebp], 0
	je	SHORT $L9477

; 5507 :                if ( lpPrevSelectedInstance )

	cmp	DWORD PTR _lpPrevSelectedInstance$[ebp], 0
	je	SHORT $L9478

; 5508 :                   lpPrevSelectedInstance->hNextSelectedInstance = hInstance;

	mov	edx, DWORD PTR _lpPrevSelectedInstance$[ebp]
	mov	eax, DWORD PTR _hInstance$9466[ebp]
	mov	DWORD PTR [edx+2], eax

; 5509 :                else

	jmp	SHORT $L9479
$L9478:

; 5510 :                   lpViewCsr->hFirstSelectedInstance = hInstance;

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR _hInstance$9466[ebp]
	mov	DWORD PTR [ecx+42], edx
$L9479:

; 5511 : 
; 5512 :                lpSrchSelectedInstance->hViewEntity     = hViewEntity;

	mov	eax, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	ecx, DWORD PTR _hViewEntity$[ebp]
	mov	DWORD PTR [eax+8], ecx

; 5513 :                lpSrchSelectedInstance->xEntityInstance = hEntityInstance;

	mov	edx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	eax, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [edx+12], eax

; 5514 :                lpSrchSelectedInstance->nSelectSet = lpViewCsr->nCurrentSelectSet;

	mov	ecx, DWORD PTR _lpSrchSelectedInstance$[ebp]
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	ax, WORD PTR [edx+36]
	mov	WORD PTR [ecx+6], ax

; 5515 : 
; 5516 :                nRC = 1; // select was successful

	mov	WORD PTR _nRC$[ebp], 1

; 5518 :             else

	jmp	SHORT $L9480
$L9477:

; 5520 :                // "KZOEE012 - Error allocating memory"
; 5521 :                zVIEW lpView = zGETPTR( lpViewCsr->hView );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpView$9481[ebp], eax

; 5522 :                fnIssueCoreError( zGETPTR( lpView->hTask ), lpView,
; 5523 :                                  20, 12, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	12					; 0000000cH
	push	20					; 00000014H
	mov	eax, DWORD PTR _lpView$9481[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$9481[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 5524 :                return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L9419
$L9480:

; 5526 : 
; 5527 :             break;

	jmp	SHORT $L9468
$L9484:

; 5528 : 
; 5529 :          case 3: // delete function
; 5530 :             nRC = 2;

	mov	WORD PTR _nRC$[ebp], 2
$L9468:

; 5534 : 
; 5535 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L9419:

; 5536 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnSelectedInstanceFarbler ENDP
_TEXT	ENDS
PUBLIC	_fnEstablishCursorForView
EXTRN	_fnValidViewCsr:NEAR
EXTRN	_fnValidViewEntity@16:NEAR
_TEXT	SEGMENT
_plpReturnTask$ = 8
_ppvReturnViewEntity$ = 12
_plpReturnScopingViewEntity$ = 16
_ppvReturnViewEntityCsr$ = 20
_plpReturnScopingViewEntityCsr$ = 24
_nOperationID$ = 28
_lpView$ = 32
_cpcEntityName$ = 36
_cpcScopingEntity$ = 40
_lpCurrentTask$ = -44
_lpViewCsr$ = -4
_lpViewOI$ = -36
_lpViewEntity$ = -20
_lpScopingViewEntity$ = -32
_lpViewEntityCsr$ = -40
_lpScopingViewEntityCsr$ = -16
_lpWorkViewEntityCsr$ = -28
_lpEntityInstance$ = -12
_lpScopingEntityInstance$ = -24
_bOperationIdxSet$ = -8
_lpTask$9543 = -48
_lpHierRootEntityInstance$9555 = -52
_lpTask$9558 = -56
_lpTask$9562 = -60
_lpTask$9567 = -64
_lpParent$9599 = -68
_lpTask$9620 = -72
_lpTask$9624 = -76
_lpTempViewEntity1$9626 = -80
_lpTempViewEntity2$9628 = -84
_fnValidateCursorParameters PROC NEAR

; 5563 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 88					; 00000058H

; 5564 :    LPTASK            lpCurrentTask;
; 5565 :    LPVIEWCSR         lpViewCsr;
; 5566 :    LPVIEWOI          lpViewOI;
; 5567 :    LPVIEWENTITY      lpViewEntity;
; 5568 :    LPVIEWENTITY      lpScopingViewEntity;
; 5569 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 5570 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 5571 :    LPVIEWENTITYCSR   lpWorkViewEntityCsr;
; 5572 :    LPENTITYINSTANCE  lpEntityInstance;
; 5573 :    LPENTITYINSTANCE  lpScopingEntityInstance;
; 5574 :    zBOOL             bOperationIdxSet = FALSE;

	mov	BYTE PTR _bOperationIdxSet$[ebp], 0

; 5575 : 
; 5576 :    // If task not active or disabled, return zCALL_ERROR.
; 5577 :    if ( nOperationID == 0 )

	movsx	eax, WORD PTR _nOperationID$[ebp]
	test	eax, eax
	jne	SHORT $L9515

; 5579 :       lpCurrentTask = *plpReturnTask;

	mov	ecx, DWORD PTR _plpReturnTask$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lpCurrentTask$[ebp], edx

; 5580 :       if ( fnValidViewCsr( lpCurrentTask, lpView ) == 0 )

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidViewCsr
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L9516

; 5581 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9503
$L9516:

; 5583 :    else

	jmp	SHORT $L9517
$L9515:

; 5585 :       if ( (lpCurrentTask = fnOperationCall( nOperationID, lpView,
; 5586 :                                              zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	cx, WORD PTR _nOperationID$[ebp]
	push	ecx
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L9518

; 5588 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9503
$L9518:

; 5590 : 
; 5591 :       bOperationIdxSet = TRUE;

	mov	BYTE PTR _bOperationIdxSet$[ebp], 1

; 5592 :       *plpReturnTask = lpCurrentTask;

	mov	edx, DWORD PTR _plpReturnTask$[ebp]
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	DWORD PTR [edx], eax
$L9517:

; 5594 : 
; 5595 :    // Get the view Object Instance for the view.
; 5596 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 5597 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 5598 : 
; 5599 :    // Validate that the entity exists.
; 5600 :    lpViewEntity    = 0;

	mov	DWORD PTR _lpViewEntity$[ebp], 0

; 5601 :    lpViewEntityCsr = 0;

	mov	DWORD PTR _lpViewEntityCsr$[ebp], 0

; 5602 :    if ( cpcEntityName &&
; 5603 :         (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 5604 :                                            lpView, cpcEntityName, 0 )) == 0 )

	cmp	DWORD PTR _cpcEntityName$[ebp], 0
	je	SHORT $L9521
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
	jne	SHORT $L9521

; 5606 :       if ( bOperationIdxSet )

	mov	edx, DWORD PTR _bOperationIdxSet$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9522

; 5607 :          fnOperationReturn( nOperationID, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	cx, WORD PTR _nOperationID$[ebp]
	push	ecx
	call	_fnOperationReturn
	add	esp, 8
$L9522:

; 5608 : 
; 5609 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9503
$L9521:

; 5611 : 
; 5612 :    // Validate that the entity scoping exists and is valid.
; 5613 :    lpScopingViewEntity    = 0;

	mov	DWORD PTR _lpScopingViewEntity$[ebp], 0

; 5614 :    lpScopingViewEntityCsr = 0;

	mov	DWORD PTR _lpScopingViewEntityCsr$[ebp], 0

; 5615 :    if ( lpViewEntity && (zLONG) cpcScopingEntity != (zLONG) zSCOPE_OI )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	$L9551
	cmp	DWORD PTR _cpcScopingEntity$[ebp], 1
	je	$L9551

; 5617 : #if 0 // DGC 1998.8.13 -- Following no longer needed?
; 5618 :       if ( (zLONG) cpcScopingEntity == (zLONG) zSCOPE_OI )
; 5619 :       {
; 5620 :          if ( lpViewOI->bMultipleRootLevels )
; 5621 :             ; // should be ok, continue
; 5622 :          else
; 5623 :          {
; 5624 :             //  "KZOEE105 - Invalid scoping Entity name for View"
; 5625 :             fnIssueCoreError( lpTask, lpView, 8, 105, 0,
; 5626 :                               lpViewEntity->szName, 0 );
; 5627 :             if ( bOperationIdxSet )
; 5628 :                fnOperationReturn( nOperationID, lpCurrentTask );
; 5629 : 
; 5630 :             return( zCALL_ERROR );
; 5631 :          }
; 5632 :       }
; 5633 :       else
; 5634 : #endif
; 5635 : 
; 5636 :       // If the scoping entity is the same as the target entity then we'll
; 5637 :       // just assume that there is no scoping entity.
; 5638 :       if ( cpcScopingEntity && zstrcmp( cpcScopingEntity, cpcEntityName ) == 0 )

	cmp	DWORD PTR _cpcScopingEntity$[ebp], 0
	je	SHORT $L9533
	mov	edx, DWORD PTR _cpcScopingEntity$[ebp]
	movsx	eax, BYTE PTR [edx]
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L9897
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcScopingEntity$[ebp]
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -88+[ebp], eax
	jmp	SHORT $L9898
$L9897:
	mov	edx, DWORD PTR _cpcScopingEntity$[ebp]
	movsx	eax, BYTE PTR [edx]
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -88+[ebp], ecx
$L9898:
	cmp	DWORD PTR -88+[ebp], 0
	jne	SHORT $L9533

; 5639 :          cpcScopingEntity = 0;

	mov	DWORD PTR _cpcScopingEntity$[ebp], 0
$L9533:

; 5640 : 
; 5641 :       if ( cpcScopingEntity && cpcScopingEntity[ 0 ] )

	cmp	DWORD PTR _cpcScopingEntity$[ebp], 0
	je	$L9534
	mov	edx, DWORD PTR _cpcScopingEntity$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	$L9534

; 5643 :          if ( (lpScopingViewEntity =
; 5644 :                          fnValidViewEntity( &lpScopingViewEntityCsr,
; 5645 :                                             lpView, cpcScopingEntity, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcScopingEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpScopingViewEntity$[ebp], eax
	cmp	DWORD PTR _lpScopingViewEntity$[ebp], 0
	jne	SHORT $L9535

; 5647 :             if ( bOperationIdxSet )

	mov	ecx, DWORD PTR _bOperationIdxSet$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9536

; 5648 :                fnOperationReturn( nOperationID, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	ax, WORD PTR _nOperationID$[ebp]
	push	eax
	call	_fnOperationReturn
	add	esp, 8
$L9536:

; 5649 : 
; 5650 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9503
$L9535:

; 5652 : 
; 5653 :          lpWorkViewEntityCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewEntityCsr$[ebp], eax
$L9539:

; 5654 :          while ( lpWorkViewEntityCsr &&
; 5655 :                  lpWorkViewEntityCsr != lpScopingViewEntityCsr )

	cmp	DWORD PTR _lpWorkViewEntityCsr$[ebp], 0
	je	SHORT $L9540
	mov	eax, DWORD PTR _lpWorkViewEntityCsr$[ebp]
	cmp	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	je	SHORT $L9540

; 5657 :             lpWorkViewEntityCsr = zGETPTR( lpWorkViewEntityCsr->hParent );

	mov	ecx, DWORD PTR _lpWorkViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewEntityCsr$[ebp], eax

; 5658 :          }

	jmp	SHORT $L9539
$L9540:

; 5659 : 
; 5660 :          if ( lpWorkViewEntityCsr == 0 )

	cmp	DWORD PTR _lpWorkViewEntityCsr$[ebp], 0
	jne	SHORT $L9542

; 5662 :             LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$9543[ebp], eax

; 5663 :             //  "KZOEE105 - Invalid scoping Entity name for View"
; 5664 :             fnIssueCoreError( lpTask, lpView, 8, 105, 0,
; 5665 :                               lpViewEntity->szName, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	105					; 00000069H
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$9543[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 5666 :             if ( bOperationIdxSet )

	mov	edx, DWORD PTR _bOperationIdxSet$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9545

; 5667 :                fnOperationReturn( nOperationID, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	cx, WORD PTR _nOperationID$[ebp]
	push	ecx
	call	_fnOperationReturn
	add	esp, 8
$L9545:

; 5668 : 
; 5669 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9503
$L9542:

; 5672 :       else

	jmp	SHORT $L9551
$L9534:

; 5674 :          lpScopingViewEntityCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingViewEntityCsr$[ebp], eax

; 5675 :          lpScopingViewEntity    = zGETPTR( lpViewEntity->hParent );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingViewEntity$[ebp], eax
$L9550:

; 5676 :          while ( lpScopingViewEntityCsr && lpScopingViewEntity->bHidden )

	cmp	DWORD PTR _lpScopingViewEntityCsr$[ebp], 0
	je	SHORT $L9551
	mov	eax, DWORD PTR _lpScopingViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 6
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9551

; 5678 :             lpScopingViewEntityCsr = zGETPTR( lpScopingViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingViewEntityCsr$[ebp], eax

; 5679 :             lpScopingViewEntity    = zGETPTR( lpScopingViewEntity->hParent );

	mov	ecx, DWORD PTR _lpScopingViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingViewEntity$[ebp], eax

; 5680 :          }

	jmp	SHORT $L9550
$L9551:

; 5683 : 
; 5684 :    // Validate that operation is consistent with hierarchical mode
; 5685 :    // of cursor.
; 5686 :    if ( lpViewCsr->hHierRootEntityInstance )

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	$L9554

; 5688 :       LPENTITYINSTANCE lpHierRootEntityInstance =
; 5689 :                            zGETPTR( lpViewCsr->hHierRootEntityInstance );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpHierRootEntityInstance$9555[ebp], eax

; 5690 : 
; 5691 :       if ( nOperationID < iDefineHierarchicalCursor &&
; 5692 :            nOperationID != iGetAbsolutePositionForEntity )

	movsx	eax, WORD PTR _nOperationID$[ebp]
	cmp	eax, 190				; 000000beH
	jge	SHORT $L9557
	movsx	ecx, WORD PTR _nOperationID$[ebp]
	cmp	ecx, 186				; 000000baH
	je	SHORT $L9557

; 5694 :          LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$9558[ebp], eax

; 5695 :          // "KZOEE264 - Invalid Operation for Hierarchical processing"
; 5696 :          fnIssueCoreError( lpTask, lpView, 8, 264, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	264					; 00000108H
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$9558[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 5697 :          if ( bOperationIdxSet )

	mov	eax, DWORD PTR _bOperationIdxSet$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9560

; 5698 :             fnOperationReturn( nOperationID, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	dx, WORD PTR _nOperationID$[ebp]
	push	edx
	call	_fnOperationReturn
	add	esp, 8
$L9560:

; 5699 : 
; 5700 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9503
$L9557:

; 5702 : 
; 5703 :       if ( lpHierRootEntityInstance->u.nInd.bHidden )

	mov	eax, DWORD PTR _lpHierRootEntityInstance$9555[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9561

; 5705 :          LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$9562[ebp], eax

; 5706 :          // "KZOEE267 - Hierarchical cursor is undefined"
; 5707 :          fnIssueCoreError( lpTask, lpView, 8, 267, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	267					; 0000010bH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$9562[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 5708 :          if ( bOperationIdxSet )

	mov	eax, DWORD PTR _bOperationIdxSet$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9564

; 5709 :             fnOperationReturn( nOperationID, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	dx, WORD PTR _nOperationID$[ebp]
	push	edx
	call	_fnOperationReturn
	add	esp, 8
$L9564:

; 5710 : 
; 5711 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9503
$L9561:

; 5714 :    else

	jmp	SHORT $L9566
$L9554:

; 5716 :       if ( nOperationID > iDefineHierarchicalCursor )

	movsx	eax, WORD PTR _nOperationID$[ebp]
	cmp	eax, 190				; 000000beH
	jle	SHORT $L9566

; 5718 :          LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$9567[ebp], eax

; 5719 :          // "KZOEE265 - Invalid Operation for non-Hierarchical processing"
; 5720 :          fnIssueCoreError( lpTask, lpView, 8, 265, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	265					; 00000109H
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$9567[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 5721 :          if ( bOperationIdxSet )

	mov	edx, DWORD PTR _bOperationIdxSet$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9569

; 5722 :             fnOperationReturn( nOperationID, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	cx, WORD PTR _nOperationID$[ebp]
	push	ecx
	call	_fnOperationReturn
	add	esp, 8
$L9569:

; 5723 : 
; 5724 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9503
$L9566:

; 5727 : 
; 5728 :    // Set View Entity and View Entity Cursor for caller
; 5729 :    if ( ppvReturnViewEntity )

	cmp	DWORD PTR _ppvReturnViewEntity$[ebp], 0
	je	SHORT $L9570

; 5731 :       *ppvReturnViewEntity            = lpViewEntity;

	mov	edx, DWORD PTR _ppvReturnViewEntity$[ebp]
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	DWORD PTR [edx], eax

; 5732 :       *ppvReturnViewEntityCsr         = lpViewEntityCsr;

	mov	ecx, DWORD PTR _ppvReturnViewEntityCsr$[ebp]
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx], edx
$L9570:

; 5734 : 
; 5735 :    if ( plpReturnScopingViewEntity )

	cmp	DWORD PTR _plpReturnScopingViewEntity$[ebp], 0
	je	SHORT $L9571

; 5737 :       *plpReturnScopingViewEntity     = lpScopingViewEntity;

	mov	eax, DWORD PTR _plpReturnScopingViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpScopingViewEntity$[ebp]
	mov	DWORD PTR [eax], ecx

; 5738 :       *plpReturnScopingViewEntityCsr  = lpScopingViewEntityCsr;

	mov	edx, DWORD PTR _plpReturnScopingViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	DWORD PTR [edx], eax
$L9571:

; 5740 : 
; 5741 :    // Establish any cursors marked as needing to be established
; 5742 :    // up the parent chain.
; 5743 :    lpEntityInstance = 0;

	mov	DWORD PTR _lpEntityInstance$[ebp], 0

; 5744 :    if ( lpViewEntityCsr )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	$L9619

; 5746 :       lpWorkViewEntityCsr = lpViewEntityCsr;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR _lpWorkViewEntityCsr$[ebp], ecx
$L9574:

; 5749 :          if ( lpWorkViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	edx, DWORD PTR _lpWorkViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+26], 1
	jne	SHORT $L9577

; 5751 :             fnEstablishCursorForView( lpWorkViewEntityCsr );

	mov	eax, DWORD PTR _lpWorkViewEntityCsr$[ebp]
	push	eax
	call	_fnEstablishCursorForView
	add	esp, 4

; 5752 :             break;

	jmp	SHORT $L9575
$L9577:

; 5754 : 
; 5755 :          if ( lpWorkViewEntityCsr == lpScopingViewEntityCsr )

	mov	ecx, DWORD PTR _lpWorkViewEntityCsr$[ebp]
	cmp	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	jne	SHORT $L9578

; 5757 :             break;

	jmp	SHORT $L9575
$L9578:

; 5759 : 
; 5760 :          lpWorkViewEntityCsr = zGETPTR( lpWorkViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpWorkViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewEntityCsr$[ebp], eax

; 5761 : 
; 5762 :          if ( lpWorkViewEntityCsr == 0 )

	cmp	DWORD PTR _lpWorkViewEntityCsr$[ebp], 0
	jne	SHORT $L9580

; 5763 :             break;

	jmp	SHORT $L9575
$L9580:

; 5764 :       }

	jmp	SHORT $L9574
$L9575:

; 5765 : 
; 5766 :       // Get Entity Instance pointer for scoping entity instance
; 5767 :       if ( lpScopingViewEntityCsr ) // set cursor for root of view

	cmp	DWORD PTR _lpScopingViewEntityCsr$[ebp], 0
	je	SHORT $L9581

; 5768 :          lpScopingEntityInstance = zGETPTR( lpScopingViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingEntityInstance$[ebp], eax

; 5769 :       else

	jmp	SHORT $L9583
$L9581:

; 5770 :          lpScopingEntityInstance = zGETPTR( lpViewCsr->hViewParentEntityInstance );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingEntityInstance$[ebp], eax
$L9583:

; 5771 : 
; 5772 :       if ( lpScopingEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpScopingEntityInstance$[ebp], 1
	jne	SHORT $L9586

; 5773 :          lpScopingEntityInstance = 0;

	mov	DWORD PTR _lpScopingEntityInstance$[ebp], 0
$L9586:

; 5774 : 
; 5775 :       if ( lpScopingEntityInstance == 0 )

	cmp	DWORD PTR _lpScopingEntityInstance$[ebp], 0
	jne	SHORT $L9594
$L9589:

; 5777 :          // If the scoping cursor looks NULL, then we have an either a NULL
; 5778 :          // cursor error or an undefined cursor error. Look up the parent
; 5779 :          // entity instance chain to see if the parent entity instance to
; 5780 :          // the NULL cursor has been deleted. If so then issue the undefined
; 5781 :          // error because issuing a NULL error in this case would be
; 5782 :          // confusing!!!
; 5783 : 
; 5784 :          // See if we can find a parent entity instance to the cursor by
; 5785 :          // giong up the scoping entity cursor chain
; 5786 :          while ( lpScopingViewEntityCsr &&
; 5787 :                  lpScopingViewEntityCsr->hEntityInstance == 0 )

	cmp	DWORD PTR _lpScopingViewEntityCsr$[ebp], 0
	je	SHORT $L9590
	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+26], 0
	jne	SHORT $L9590

; 5789 :             lpScopingViewEntityCsr = zGETPTR( lpScopingViewEntityCsr->hParent );

	mov	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingViewEntityCsr$[ebp], eax

; 5790 :          }

	jmp	SHORT $L9589
$L9590:

; 5791 : 
; 5792 :          // if no cursor was found for the NULL scoping entity instances
; 5793 :          // parent entity type, then use the ViewParentEntityInstance as
; 5794 :          // the scoping entity instances parent.
; 5795 :          if ( lpScopingViewEntityCsr )

	cmp	DWORD PTR _lpScopingViewEntityCsr$[ebp], 0
	je	SHORT $L9592

; 5797 :             lpScopingEntityInstance = zGETPTR( lpScopingViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingEntityInstance$[ebp], eax

; 5799 :          else

	jmp	SHORT $L9594
$L9592:

; 5800 :             lpScopingEntityInstance = zGETPTR( lpViewCsr->hViewParentEntityInstance );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingEntityInstance$[ebp], eax
$L9594:

; 5802 : 
; 5803 :       if ( lpScopingEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpScopingEntityInstance$[ebp], 1
	jne	SHORT $L9597

; 5804 :          lpScopingEntityInstance = 0;

	mov	DWORD PTR _lpScopingEntityInstance$[ebp], 0
$L9597:

; 5805 : 
; 5806 :       // Validate that the scoping entity instance has not been deleted. Note
; 5807 :       // that lpScopingEntityInstance may in fact be the a NULL
; 5808 :       // Scoping entity instances parent as a result of the above check.
; 5809 :       if ( lpScopingEntityInstance && lpScopingEntityInstance->u.nInd.bHidden )

	cmp	DWORD PTR _lpScopingEntityInstance$[ebp], 0
	je	$L9614
	mov	eax, DWORD PTR _lpScopingEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	$L9614
$L9601:

; 5811 :          LPENTITYINSTANCE  lpParent;
; 5812 : 
; 5813 :          // A hidden cursor has been found, the cursor is undefined ONLY if
; 5814 :          // one of its twins is NOT hidden at the highest hidden parent
; 5815 :          // level.
; 5816 :          while ( lpScopingEntityInstance->hParent )

	mov	edx, DWORD PTR _lpScopingEntityInstance$[ebp]
	cmp	DWORD PTR [edx+30], 0
	je	SHORT $L9602

; 5818 :             lpParent = zGETPTR( lpScopingEntityInstance->hParent );

	mov	eax, DWORD PTR _lpScopingEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$9599[ebp], eax

; 5819 :             if ( lpParent->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpParent$9599[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9604

; 5820 :                break;

	jmp	SHORT $L9602
$L9604:

; 5821 : 
; 5822 :             lpScopingEntityInstance = lpParent;

	mov	ecx, DWORD PTR _lpParent$9599[ebp]
	mov	DWORD PTR _lpScopingEntityInstance$[ebp], ecx

; 5823 :          }

	jmp	SHORT $L9601
$L9602:

; 5824 : 
; 5825 :          while ( lpScopingEntityInstance->hPrevTwin )

	mov	edx, DWORD PTR _lpScopingEntityInstance$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L9607

; 5826 :             lpScopingEntityInstance =
; 5827 :                               zGETPTR( lpScopingEntityInstance->hPrevTwin );

	mov	eax, DWORD PTR _lpScopingEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingEntityInstance$[ebp], eax
	jmp	SHORT $L9602
$L9607:

; 5828 : 
; 5829 :          while ( lpScopingEntityInstance )

	cmp	DWORD PTR _lpScopingEntityInstance$[ebp], 0
	je	SHORT $L9611

; 5831 :             if ( lpScopingEntityInstance->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpScopingEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9612

; 5832 :                break;

	jmp	SHORT $L9611
$L9612:

; 5833 : 
; 5834 :             lpScopingEntityInstance =
; 5835 :                               zGETPTR( lpScopingEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpScopingEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScopingEntityInstance$[ebp], eax

; 5836 :          }

	jmp	SHORT $L9607
$L9611:

; 5837 : 
; 5838 :          if ( lpScopingEntityInstance )

	cmp	DWORD PTR _lpScopingEntityInstance$[ebp], 0
	je	SHORT $L9614

; 5840 :             if ( bOperationIdxSet )

	mov	eax, DWORD PTR _bOperationIdxSet$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9615

; 5841 :                fnOperationReturn( nOperationID, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	dx, WORD PTR _nOperationID$[ebp]
	push	edx
	call	_fnOperationReturn
	add	esp, 8
$L9615:

; 5842 : 
; 5843 :             return( zCURSOR_UNDEFINED );

	mov	ax, -2					; fffffffeH
	jmp	$L9503
$L9614:

; 5846 : 
; 5847 :       // Get Entity Instance pointer
; 5848 :       if ( lpScopingViewEntityCsr && lpScopingEntityInstance == 0 )

	cmp	DWORD PTR _lpScopingViewEntityCsr$[ebp], 0
	je	SHORT $L9616
	cmp	DWORD PTR _lpScopingEntityInstance$[ebp], 0
	jne	SHORT $L9616

; 5849 :          lpEntityInstance = 0;

	mov	DWORD PTR _lpEntityInstance$[ebp], 0

; 5850 :       else

	jmp	SHORT $L9617
$L9616:

; 5851 :          lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L9617:

; 5852 : 
; 5853 :       // Now make sure a cursor exists for the view entity
; 5854 :       if ( lpEntityInstance == 0 &&
; 5855 :            nOperationID != iSetCursorFirstEntity           &&
; 5856 :            nOperationID != iSetCursorFirstEntityByAttr     &&
; 5857 :            nOperationID != iSetCursorFirstEntityByString   &&
; 5858 :            nOperationID != iSetCursorFirstEntityByInteger  &&
; 5859 :            nOperationID != iSetCursorFirstEntityByDecimal  &&
; 5860 :            nOperationID != iSetCursorFirstEntityByEntityCs &&
; 5861 :            nOperationID != iSetCursorFirstSelectedEntity   &&
; 5862 :            nOperationID != iSetAllSelectStatesForEntity    &&
; 5863 :            nOperationID != iSetEntityCursor                &&
; 5864 :            nOperationID != iSetCursorLastEntity            &&
; 5865 :            nOperationID != iGetRelativeEntityNumber        &&
; 5866 :            nOperationID != iGetSelectStateOfEntity )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	$L9619
	movsx	edx, WORD PTR _nOperationID$[ebp]
	cmp	edx, 152				; 00000098H
	je	$L9619
	movsx	eax, WORD PTR _nOperationID$[ebp]
	cmp	eax, 176				; 000000b0H
	je	$L9619
	movsx	ecx, WORD PTR _nOperationID$[ebp]
	cmp	ecx, 170				; 000000aaH
	je	$L9619
	movsx	edx, WORD PTR _nOperationID$[ebp]
	cmp	edx, 172				; 000000acH
	je	$L9619
	movsx	eax, WORD PTR _nOperationID$[ebp]
	cmp	eax, 174				; 000000aeH
	je	$L9619
	movsx	ecx, WORD PTR _nOperationID$[ebp]
	cmp	ecx, 178				; 000000b2H
	je	$L9619
	movsx	edx, WORD PTR _nOperationID$[ebp]
	cmp	edx, 180				; 000000b4H
	je	$L9619
	movsx	eax, WORD PTR _nOperationID$[ebp]
	cmp	eax, 113				; 00000071H
	je	$L9619
	movsx	ecx, WORD PTR _nOperationID$[ebp]
	cmp	ecx, 184				; 000000b8H
	je	SHORT $L9619
	movsx	edx, WORD PTR _nOperationID$[ebp]
	cmp	edx, 153				; 00000099H
	je	SHORT $L9619
	movsx	eax, WORD PTR _nOperationID$[ebp]
	cmp	eax, 183				; 000000b7H
	je	SHORT $L9619
	movsx	ecx, WORD PTR _nOperationID$[ebp]
	cmp	ecx, 112				; 00000070H
	je	SHORT $L9619

; 5868 :          LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$9620[ebp], eax

; 5869 :          //  "KZOEE253 - Entity cursor is NULL"
; 5870 :          fnIssueCoreError( lpTask, lpView, 8, 253, 0,
; 5871 :                            lpViewEntity->szName, 0 );

	push	0
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	253					; 000000fdH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$9620[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 5872 :          if ( bOperationIdxSet )

	mov	ecx, DWORD PTR _bOperationIdxSet$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9622

; 5873 :             fnOperationReturn( nOperationID, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	ax, WORD PTR _nOperationID$[ebp]
	push	eax
	call	_fnOperationReturn
	add	esp, 8
$L9622:

; 5874 : 
; 5875 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9503
$L9619:

; 5878 : 
; 5879 :    // Finally, make sure that the target entity instance
; 5880 :    // version indicator matches the scoping entity instance
; 5881 :    // version indicator. If not, then the target entity instance
; 5882 :    // is versioned and the scoping entity is not versioned. The target
; 5883 :    // entity instance must be set to the current version prior to
; 5884 :    // any normal cursor navigation can continue. If the indicators match,
; 5885 :    // then navigation can continue regardless of whether the target
; 5886 :    // and scoping entities are on a current or previous version.
; 5887 :    if ( lpEntityInstance && lpScopingEntityInstance &&
; 5888 :         lpEntityInstance->hNextVsn &&
; 5889 :         lpScopingEntityInstance->hNextVsn == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	$L9623
	cmp	DWORD PTR _lpScopingEntityInstance$[ebp], 0
	je	$L9623
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+34], 0
	je	$L9623
	mov	edx, DWORD PTR _lpScopingEntityInstance$[ebp]
	cmp	DWORD PTR [edx+34], 0
	jne	SHORT $L9623

; 5891 :       LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$9624[ebp], eax

; 5892 :       LPVIEWENTITY lpTempViewEntity1 =
; 5893 :                            zGETPTR( lpScopingViewEntityCsr->hViewEntity );

	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempViewEntity1$9626[ebp], eax

; 5894 :       LPVIEWENTITY lpTempViewEntity2 =
; 5895 :                            zGETPTR( lpViewEntityCsr->hViewEntity );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempViewEntity2$9628[ebp], eax

; 5896 : 
; 5897 :       // NOTE: This check is NOT BULLETPROOF, It needs some work to
; 5898 :       // Accurately determine a versioning mismatch!!!
; 5899 : 
; 5900 :       //  "KZOEE257 - Version mismatch between scoping and target "
; 5901 :       //  "           Entities"
; 5902 :       fnIssueCoreError( lpTask, lpView, 8, 257, 0,
; 5903 :                         lpTempViewEntity1->szName,
; 5904 :                         lpTempViewEntity2->szName );

	mov	eax, DWORD PTR _lpTempViewEntity2$9628[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpTempViewEntity1$9626[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	257					; 00000101H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$9624[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 5905 :       if ( bOperationIdxSet )

	mov	ecx, DWORD PTR _bOperationIdxSet$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9630

; 5906 :          fnOperationReturn( nOperationID, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	ax, WORD PTR _nOperationID$[ebp]
	push	eax
	call	_fnOperationReturn
	add	esp, 8
$L9630:

; 5907 : 
; 5908 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L9503
$L9623:

; 5910 : 
; 5911 :    // Everything is AOK, return
; 5912 :    return( 0 );

	xor	ax, ax
$L9503:

; 5913 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnValidateCursorParameters ENDP
_TEXT	ENDS
PUBLIC	_fnSetChildCursors
_TEXT	SEGMENT
_lpViewEntityCsr$ = 8
_lpResetViewEntityCsr$ = -8
_lpEntityInstance$ = -4
_nRootLevel$ = -12
_fnSetChildCursors PROC NEAR

; 5917 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 5918 :    LPVIEWENTITYCSR  lpResetViewEntityCsr;
; 5919 :    LPENTITYINSTANCE lpEntityInstance;
; 5920 :    zSHORT           nRootLevel;
; 5921 : 
; 5922 :    // We need to keep track of the level of the parent EI.
; 5923 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 5924 :    nRootLevel = lpEntityInstance->nLevel;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	ax, WORD PTR [edx+58]
	mov	WORD PTR _nRootLevel$[ebp], ax

; 5925 : 
; 5926 :    for ( lpResetViewEntityCsr = zGETPTR( lpViewEntityCsr->hNextHier );
; 5927 :          lpResetViewEntityCsr &&
; 5928 :             lpResetViewEntityCsr->nLevel > lpViewEntityCsr->nLevel;
; 5929 :          lpResetViewEntityCsr = zGETPTR( lpResetViewEntityCsr->hNextHier ) )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpResetViewEntityCsr$[ebp], eax
	jmp	SHORT $L9641
$L9642:
	mov	eax, DWORD PTR _lpResetViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpResetViewEntityCsr$[ebp], eax
$L9641:
	cmp	DWORD PTR _lpResetViewEntityCsr$[ebp], 0
	je	$L9643
	mov	edx, DWORD PTR _lpResetViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	cmp	eax, edx
	jle	$L9643

; 5931 :       // We only care about cursors that are immediate children of the parent.
; 5932 :       if ( lpResetViewEntityCsr->nLevel != lpViewEntityCsr->nLevel + 1 )

	mov	eax, DWORD PTR _lpResetViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	add	eax, 1
	cmp	ecx, eax
	je	SHORT $L9644

; 5933 :          continue;

	jmp	SHORT $L9642
$L9644:

; 5934 : 
; 5935 :       // Find the first lpEntityInstance that has the same hViewEntity as
; 5936 :       // the lpResetViewEntityCsr.
; 5937 :       for ( lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );
; 5938 :             lpEntityInstance && lpEntityInstance->nLevel > nRootLevel;
; 5939 :             lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier ) )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
	jmp	SHORT $L9647
$L9648:
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L9647:
	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L9649
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nRootLevel$[ebp]
	cmp	eax, ecx
	jle	SHORT $L9649

; 5941 :          if ( lpEntityInstance->hViewEntity == lpResetViewEntityCsr->hViewEntity )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR _lpResetViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [edx+2]
	cmp	ecx, DWORD PTR [eax+14]
	jne	SHORT $L9650

; 5943 :             // We found a match.  Set the cursor.
; 5944 :             lpResetViewEntityCsr->hEntityInstance = zGETHNDL( lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpResetViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 5945 :          // if ( lpResetViewEntityCsr->hEntityInstance == UNSET_CSR )
; 5946 :          //    SysMessageBox( 0, "fnSetChildCursors", "UNSET_CSR", -1 );
; 5947 : 
; 5948 :             // Call this function again to set the children of lpResetViewEntityCsr.
; 5949 :             fnSetChildCursors( lpResetViewEntityCsr );

	mov	edx, DWORD PTR _lpResetViewEntityCsr$[ebp]
	push	edx
	call	_fnSetChildCursors
	add	esp, 4

; 5950 : 
; 5951 :             // We're done with this cursor so break.
; 5952 :             break;

	jmp	SHORT $L9649
$L9650:

; 5954 : 
; 5955 :       } // for each lpEntityInstance....

	jmp	SHORT $L9648
$L9649:

; 5956 : 
; 5957 :    } // for each csr...

	jmp	$L9642
$L9643:

; 5958 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnSetChildCursors ENDP
_lpViewEntityCsr$ = 8
_lpResetViewEntityCsr$ = -4
_fnResetCursorForViewChildren PROC NEAR

; 5975 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 5976 :    LPVIEWENTITYCSR  lpResetViewEntityCsr;
; 5977 : 
; 5978 :    // First set all the cursors to UNSET.
; 5979 :    for ( lpResetViewEntityCsr = zGETPTR( lpViewEntityCsr->hNextHier );
; 5980 :          lpResetViewEntityCsr && lpResetViewEntityCsr->nLevel > lpViewEntityCsr->nLevel;
; 5981 :          lpResetViewEntityCsr = zGETPTR( lpResetViewEntityCsr->hNextHier ) )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpResetViewEntityCsr$[ebp], eax
	jmp	SHORT $L9658
$L9659:
	mov	edx, DWORD PTR _lpResetViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpResetViewEntityCsr$[ebp], eax
$L9658:
	cmp	DWORD PTR _lpResetViewEntityCsr$[ebp], 0
	je	SHORT $L9660
	mov	ecx, DWORD PTR _lpResetViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	cmp	edx, ecx
	jle	SHORT $L9660

; 5983 :       lpResetViewEntityCsr->hEntityInstance = UNSET_CSR;

	mov	edx, DWORD PTR _lpResetViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+26], 1

; 5984 :    // if ( lpResetViewEntityCsr->hEntityInstance == UNSET_CSR )  // happens way too much
; 5985 :    //    SysMessageBox( 0, "fnResetCursorForViewChildren", "UNSET_CSR", -1 );
; 5986 :    }

	jmp	SHORT $L9659
$L9660:

; 5987 : 
; 5988 :    // If the root entity cursor is unset then we can't set any
; 5989 :    // child cursors to point to EI's because there are no child EI's.
; 5990 :    if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR ||
; 5991 :         lpViewEntityCsr->hEntityInstance == 0 )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 1
	je	SHORT $L9664
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	jne	SHORT $L9663
$L9664:

; 5993 :       return;

	jmp	SHORT $L9654
$L9663:

; 5995 : 
; 5996 :    // We'll have to use a recursive call to set the child entities.  Each call
; 5997 :    // sets the cursors for the immediate children.
; 5998 :    fnSetChildCursors( lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnSetChildCursors
	add	esp, 4
$L9654:

; 5999 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnResetCursorForViewChildren ENDP
_TEXT	ENDS
PUBLIC	_fnNullCursorForViewChildren
_TEXT	SEGMENT
_lpViewEntityCsr$ = 8
_lpResetViewEntityCsr$ = -4
_fnNullCursorForViewChildren PROC NEAR

; 6016 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 6017 :    LPVIEWENTITYCSR  lpResetViewEntityCsr;
; 6018 : 
; 6019 :    lpResetViewEntityCsr = zGETPTR( lpViewEntityCsr->hNextHier );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpResetViewEntityCsr$[ebp], eax
$L9671:

; 6020 : 
; 6021 :    while ( lpResetViewEntityCsr &&
; 6022 :            lpResetViewEntityCsr->nLevel > lpViewEntityCsr->nLevel )

	cmp	DWORD PTR _lpResetViewEntityCsr$[ebp], 0
	je	SHORT $L9672
	mov	edx, DWORD PTR _lpResetViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	cmp	eax, edx
	jle	SHORT $L9672

; 6024 :       lpResetViewEntityCsr->hEntityInstance = 0;

	mov	eax, DWORD PTR _lpResetViewEntityCsr$[ebp]
	mov	DWORD PTR [eax+26], 0

; 6025 :       lpResetViewEntityCsr = zGETPTR( lpResetViewEntityCsr->hNextHier );

	mov	ecx, DWORD PTR _lpResetViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpResetViewEntityCsr$[ebp], eax

; 6026 :    }

	jmp	SHORT $L9671
$L9672:

; 6027 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnNullCursorForViewChildren ENDP
_TEXT	ENDS
PUBLIC	??_C@_0EB@NEHK@?$CIcm?$CJ?5ERROR?5Unexpected?5Recursive?5@ ; `string'
PUBLIC	??_C@_0P@HOOF@Internal?5Error?$AA@		; `string'
;	COMDAT ??_C@_0EB@NEHK@?$CIcm?$CJ?5ERROR?5Unexpected?5Recursive?5@
; File C:\10C\A\oe\KZOECMAA.C
_DATA	SEGMENT
??_C@_0EB@NEHK@?$CIcm?$CJ?5ERROR?5Unexpected?5Recursive?5@ DB '(cm) ERROR'
	DB	' Unexpected Recursive call to fnEstablishCursorForView', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@HOOF@Internal?5Error?$AA@
_DATA	SEGMENT
??_C@_0P@HOOF@Internal?5Error?$AA@ DB 'Internal Error', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpViewEntityCsr$ = 8
_lpViewCsr$ = -4
_lpSearchViewEntity$ = -36
_lpSetViewEntityCsr$ = -44
_lpScanViewEntityCsr$ = -16
_lpViewSubobject$ = -24
_lpSetEntityInstance$ = -32
_lpSearchEntityInstance$ = -20
_lpScanEntityInstance$ = -40
_nSetLevel$ = -12
_nSearchLevel$ = -28
_bFound$ = -8
_lpView$9734 = -48
_fnEstablishCursorForView PROC NEAR

; 6045 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H

; 6046 :    LPVIEWCSR        lpViewCsr;
; 6047 :    LPVIEWENTITY     lpSearchViewEntity;
; 6048 :    LPVIEWENTITYCSR  lpSetViewEntityCsr;
; 6049 :    LPVIEWENTITYCSR  lpScanViewEntityCsr;
; 6050 :    LPVIEWSUBOBJECT  lpViewSubobject;
; 6051 :    LPENTITYINSTANCE lpSetEntityInstance;
; 6052 :    LPENTITYINSTANCE lpSearchEntityInstance;
; 6053 :    LPENTITYINSTANCE lpScanEntityInstance;
; 6054 :    int              nSetLevel;
; 6055 :    int              nSearchLevel;
; 6056 :    int              bFound;
; 6057 : 
; 6058 :    lpViewCsr = zGETPTR( lpViewEntityCsr->hViewCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 6059 :    lpSetViewEntityCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSetViewEntityCsr$[ebp], eax

; 6060 :    if ( lpSetViewEntityCsr &&
; 6061 :         lpSetViewEntityCsr->hEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpSetViewEntityCsr$[ebp], 0
	je	SHORT $L9692
	mov	ecx, DWORD PTR _lpSetViewEntityCsr$[ebp]
	cmp	DWORD PTR [ecx+26], 1
	jne	SHORT $L9692

; 6063 :       fnEstablishCursorForView( lpSetViewEntityCsr );

	mov	edx, DWORD PTR _lpSetViewEntityCsr$[ebp]
	push	edx
	call	_fnEstablishCursorForView
	add	esp, 4

; 6064 :       if ( lpSetViewEntityCsr->hEntityInstance == NULL_CSR )

	mov	eax, DWORD PTR _lpSetViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 0
	jne	SHORT $L9692

; 6066 :          lpViewEntityCsr->hEntityInstance = NULL_CSR;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+26], 0

; 6067 :          return( NULL_CSR );

	xor	eax, eax
	jmp	$L9676
$L9692:

; 6070 : 
; 6071 :    // If we do not find a set cursor in the parent chain, then the
; 6072 :    // view MUST be on a subobject and the parent cursor to the view
; 6073 :    // is used as the set entity instance for establishing the cursor.
; 6074 :    if ( lpSetViewEntityCsr )

	cmp	DWORD PTR _lpSetViewEntityCsr$[ebp], 0
	je	SHORT $L9693

; 6076 :       lpSetEntityInstance = zGETPTR( lpSetViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpSetViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSetEntityInstance$[ebp], eax

; 6077 :       nSetLevel           = lpSetViewEntityCsr->nLevel;

	mov	ecx, DWORD PTR _lpSetViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	DWORD PTR _nSetLevel$[ebp], edx

; 6079 :    else

	jmp	SHORT $L9695
$L9693:

; 6081 :       lpSetEntityInstance = zGETPTR( lpViewCsr->hViewParentEntityInstance );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSetEntityInstance$[ebp], eax

; 6082 :       nSetLevel           = lpSetEntityInstance->nLevel;

	mov	edx, DWORD PTR _lpSetEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	mov	DWORD PTR _nSetLevel$[ebp], eax
$L9695:

; 6084 : 
; 6085 :    nSearchLevel    = lpViewEntityCsr->nLevel;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	DWORD PTR _nSearchLevel$[ebp], edx

; 6086 :    lpViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$[ebp], eax

; 6087 : 
; 6088 :    // Determine the view entity we need to look for, 99% of the time
; 6089 :    // it will be the view entity for the view cursor, otherwise it may
; 6090 :    // be the recursive entity for a folded up cursor when the current
; 6091 :    // view entity has no parent and is the root
; 6092 :    if ( lpViewEntityCsr->hParent || lpViewSubobject == 0 ||
; 6093 :         lpViewSubobject->hRecursViewEntity == 0 ||
; 6094 :         lpViewEntityCsr != lpViewSubobject->hRootCsr )

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+10], 0
	jne	SHORT $L9699
	cmp	DWORD PTR _lpViewSubobject$[ebp], 0
	je	SHORT $L9699
	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	cmp	DWORD PTR [eax+36], 0
	je	SHORT $L9699
	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	edx, DWORD PTR [ecx+14]
	je	SHORT $L9698
$L9699:

; 6096 :       lpSearchViewEntity = zGETPTR( lpViewEntityCsr->hViewEntity );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$[ebp], eax

; 6098 :    else

	jmp	SHORT $L9701
$L9698:

; 6099 :       lpSearchViewEntity = zGETPTR( lpViewSubobject->hRecursViewEntity );

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	mov	eax, DWORD PTR [edx+36]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$[ebp], eax
$L9701:

; 6100 : 
; 6101 :    if ( lpSetEntityInstance )

	cmp	DWORD PTR _lpSetEntityInstance$[ebp], 0
	je	SHORT $L9703

; 6102 :       lpSearchEntityInstance = zGETPTR( lpSetEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpSetEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 6103 :    else

	jmp	SHORT $L9705
$L9703:

; 6104 :       lpSearchEntityInstance = 0;

	mov	DWORD PTR _lpSearchEntityInstance$[ebp], 0
$L9705:

; 6105 : 
; 6106 :    bFound = FALSE;

	mov	DWORD PTR _bFound$[ebp], 0
$L9707:

; 6107 :    while ( lpSearchEntityInstance &&
; 6108 :            lpSearchEntityInstance->nLevel > nSetLevel )

	cmp	DWORD PTR _lpSearchEntityInstance$[ebp], 0
	je	SHORT $L9708
	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	cmp	ecx, DWORD PTR _nSetLevel$[ebp]
	jle	SHORT $L9708

; 6110 :       if ( lpSearchEntityInstance->nLevel == nSearchLevel &&
; 6111 :            zGETPTR( lpSearchEntityInstance->hViewEntity ) == lpSearchViewEntity )

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	eax, DWORD PTR _nSearchLevel$[ebp]
	jne	SHORT $L9710
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpSearchViewEntity$[ebp]
	jne	SHORT $L9710

; 6113 :          bFound = TRUE;

	mov	DWORD PTR _bFound$[ebp], 1

; 6114 :          break;

	jmp	SHORT $L9708
$L9710:

; 6116 : 
; 6117 :       lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 6118 :    }

	jmp	SHORT $L9707
$L9708:

; 6119 : 
; 6120 :    // We're out of the loop, if found, set all cursors up to the set parent.
; 6121 :    if ( bFound )

	cmp	DWORD PTR _bFound$[ebp], 0
	je	$L9712

; 6123 :       // If the found instance is hidden and the parent is not hidden go to
; 6124 :       // the first twin which is not hidden.
; 6125 :       if ( lpSearchEntityInstance->u.nInd.bHidden &&
; 6126 :            lpSetEntityInstance->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L9720
	mov	ecx, DWORD PTR _lpSetEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9720
$L9715:

; 6128 :          while ( lpSearchEntityInstance->u.nInd.bHidden &&
; 6129 :                  lpSearchEntityInstance->hNextTwin )

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9716
	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L9716

; 6131 :             lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 6132 :          }

	jmp	SHORT $L9715
$L9716:

; 6133 : 
; 6134 :          // If a non-hidden twin was not found, return to the first twin.
; 6135 :          while ( lpSearchEntityInstance->u.nInd.bHidden &&
; 6136 :                  lpSearchEntityInstance->hPrevTwin )

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L9720
	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	SHORT $L9720

; 6138 :             lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hPrevTwin );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$[ebp], eax

; 6139 :          }

	jmp	SHORT $L9716
$L9720:

; 6141 : 
; 6142 :       lpViewEntityCsr->hEntityInstance = zGETHNDL( lpSearchEntityInstance );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+26], eax

; 6143 :    // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 6144 :    //    SysMessageBox( 0, "fnEstablishCursorForView", "UNSET_CSR", -1 );
; 6145 : 
; 6146 :       lpScanViewEntityCsr  = zGETPTR( lpViewEntityCsr->hParent );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanViewEntityCsr$[ebp], eax

; 6147 :       lpScanEntityInstance = zGETPTR( lpSearchEntityInstance->hParent );

	mov	edx, DWORD PTR _lpSearchEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanEntityInstance$[ebp], eax
$L9726:

; 6148 :       while( lpScanViewEntityCsr != lpSetViewEntityCsr )

	mov	ecx, DWORD PTR _lpScanViewEntityCsr$[ebp]
	cmp	ecx, DWORD PTR _lpSetViewEntityCsr$[ebp]
	je	SHORT $L9727

; 6150 :          lpScanViewEntityCsr->hEntityInstance = zGETHNDL( lpScanEntityInstance );

	mov	edx, DWORD PTR _lpScanEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpScanViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 6151 :       // if ( lpScanViewEntityCsr->hEntityInstance == UNSET_CSR )
; 6152 :       //    SysMessageBox( 0, "fnEstablishCursorForView2", "UNSET_CSR", -1 );
; 6153 : 
; 6154 :          lpScanViewEntityCsr  = zGETPTR( lpScanViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpScanViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanViewEntityCsr$[ebp], eax

; 6155 :          lpScanEntityInstance = zGETPTR( lpScanEntityInstance->hParent );

	mov	ecx, DWORD PTR _lpScanEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanEntityInstance$[ebp], eax

; 6156 :       }

	jmp	SHORT $L9726
$L9727:

; 6158 :    else

	jmp	SHORT $L9733
$L9712:

; 6160 :       // If no cursor found, set cursor to null and recursively call ourself
; 6161 :       // to set our parent.
; 6162 :       lpSearchEntityInstance = 0;

	mov	DWORD PTR _lpSearchEntityInstance$[ebp], 0

; 6163 :       lpViewEntityCsr->hEntityInstance = 0;

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [eax+26], 0

; 6164 :       lpScanViewEntityCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanViewEntityCsr$[ebp], eax

; 6165 :       if ( lpScanViewEntityCsr != lpSetViewEntityCsr )

	mov	eax, DWORD PTR _lpScanViewEntityCsr$[ebp]
	cmp	eax, DWORD PTR _lpSetViewEntityCsr$[ebp]
	je	SHORT $L9733

; 6167 :          zVIEW lpView = zGETPTR( lpViewCsr->hView );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpView$9734[ebp], eax

; 6168 :          SysMessageBox( lpView, "Internal Error",
; 6169 :                         "(cm) ERROR Unexpected Recursive "
; 6170 :                         "call to fnEstablishCursorForView", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0EB@NEHK@?$CIcm?$CJ?5ERROR?5Unexpected?5Recursive?5@ ; `string'
	push	OFFSET FLAT:??_C@_0P@HOOF@Internal?5Error?$AA@ ; `string'
	mov	eax, DWORD PTR _lpView$9734[ebp]
	push	eax
	call	_SysMessageBox@16

; 6171 :          fnEstablishCursorForView( lpScanViewEntityCsr );

	mov	ecx, DWORD PTR _lpScanViewEntityCsr$[ebp]
	push	ecx
	call	_fnEstablishCursorForView
	add	esp, 4
$L9733:

; 6174 : 
; 6175 :    return( lpSearchEntityInstance );  // return instance set

	mov	eax, DWORD PTR _lpSearchEntityInstance$[ebp]
$L9676:

; 6176 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnEstablishCursorForView ENDP
_TEXT	ENDS
PUBLIC	_AddCursorListener@12
EXTRN	_SysGetProcessID@4:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpfnCursorListener$ = 12
_pvInstance$ = 16
_lpCurrentTask$ = -16
_lListenerProcess$ = -12
_lpCsrListener$ = -8
_hCsrListener$ = -4
_AddCursorListener@12 PROC NEAR

; 6196 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 6197 :    LPTASK           lpCurrentTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 6198 :    zLONG            lListenerProcess = SysGetProcessID( 0 );

	push	0
	call	_SysGetProcessID@4
	mov	DWORD PTR _lListenerProcess$[ebp], eax

; 6199 :    LPCURSORLISTENER lpCsrListener;
; 6200 :    LPCURSORLISTENER hCsrListener;
; 6201 : 
; 6202 : // TraceLine( "AddCursorListener for view: 0x%08x", lpView );
; 6203 : 
; 6204 :    // Check to see if it's already in the list.
; 6205 :    for ( lpCsrListener = zGETPTR( lpView->hFirstCursorListener );
; 6206 :          lpCsrListener;
; 6207 :          lpCsrListener = zGETPTR( lpCsrListener->hNextCursorListener ) )

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+34]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCsrListener$[ebp], eax
	jmp	SHORT $L9752
$L9753:
	mov	ecx, DWORD PTR _lpCsrListener$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCsrListener$[ebp], eax
$L9752:
	cmp	DWORD PTR _lpCsrListener$[ebp], 0
	je	SHORT $L9754

; 6209 :       if ( lpCsrListener->lpfnCursorListener == lpfnCursorListener &&
; 6210 :            lpCsrListener->pvListenerInstance == pvInstance &&
; 6211 :            lpCsrListener->lListenerProcess == lListenerProcess )

	mov	eax, DWORD PTR _lpCsrListener$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	cmp	ecx, DWORD PTR _lpfnCursorListener$[ebp]
	jne	SHORT $L9755
	mov	edx, DWORD PTR _lpCsrListener$[ebp]
	mov	eax, DWORD PTR [edx+8]
	cmp	eax, DWORD PTR _pvInstance$[ebp]
	jne	SHORT $L9755
	mov	ecx, DWORD PTR _lpCsrListener$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	cmp	edx, DWORD PTR _lListenerProcess$[ebp]
	jne	SHORT $L9755

; 6213 :          // The listener is already registered - just return.
; 6214 :          return( 0 );

	xor	ax, ax
	jmp	SHORT $L9744
$L9755:

; 6216 :    }

	jmp	SHORT $L9753
$L9754:

; 6217 : 
; 6218 :    hCsrListener = fnAllocDataspace( lpCurrentTask->hFirstDataHeader,
; 6219 :                                     sizeof( CursorListenerRecord ),
; 6220 :                                     1, 0, 0 );

	push	0
	push	0
	push	1
	push	20					; 00000014H
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	ecx, DWORD PTR [eax+94]
	push	ecx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hCsrListener$[ebp], eax

; 6221 :    lpCsrListener = zGETPTR( hCsrListener );

	mov	edx, DWORD PTR _hCsrListener$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCsrListener$[ebp], eax

; 6222 :    lpCsrListener->hNextCursorListener = lpView->hFirstCursorListener;

	mov	eax, DWORD PTR _lpCsrListener$[ebp]
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+34]
	mov	DWORD PTR [eax], edx

; 6223 :    lpView->hFirstCursorListener = hCsrListener;

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR _hCsrListener$[ebp]
	mov	DWORD PTR [eax+34], ecx

; 6224 : 
; 6225 :    lpCsrListener->lpfnCursorListener = lpfnCursorListener;

	mov	edx, DWORD PTR _lpCsrListener$[ebp]
	mov	eax, DWORD PTR _lpfnCursorListener$[ebp]
	mov	DWORD PTR [edx+4], eax

; 6226 :    lpCsrListener->pvListenerInstance = pvInstance;

	mov	ecx, DWORD PTR _lpCsrListener$[ebp]
	mov	edx, DWORD PTR _pvInstance$[ebp]
	mov	DWORD PTR [ecx+8], edx

; 6227 :    lpCsrListener->lListenerProcess   = lListenerProcess;

	mov	eax, DWORD PTR _lpCsrListener$[ebp]
	mov	ecx, DWORD PTR _lListenerProcess$[ebp]
	mov	DWORD PTR [eax+12], ecx

; 6228 :    lpCsrListener->hListenerTask      = lpView->hTask;

	mov	edx, DWORD PTR _lpCsrListener$[ebp]
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR [edx+16], ecx

; 6229 : 
; 6230 :    return( 0 );

	xor	ax, ax
$L9744:

; 6231 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_AddCursorListener@12 ENDP
_TEXT	ENDS
PUBLIC	_RemoveCursorListener@12
_TEXT	SEGMENT
_lpView$ = 8
_lpfnCursorListener$ = 12
_pvInstance$ = 16
_lListenerProcess$ = -12
_lpCsrListener$ = -8
_lpPrevCsrListener$ = -4
_RemoveCursorListener@12 PROC NEAR

; 6251 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 6252 :    zLONG            lListenerProcess = SysGetProcessID( 0 );

	push	0
	call	_SysGetProcessID@4
	mov	DWORD PTR _lListenerProcess$[ebp], eax

; 6253 :    LPCURSORLISTENER lpCsrListener;
; 6254 :    LPCURSORLISTENER lpPrevCsrListener = 0;

	mov	DWORD PTR _lpPrevCsrListener$[ebp], 0

; 6255 : 
; 6256 : // TraceLine( "RemoveCursorListener for view: 0x%08x", lpView );
; 6257 : 
; 6258 :    // Look for the cursor listener.
; 6259 :    for ( lpCsrListener = zGETPTR( lpView->hFirstCursorListener );
; 6260 :          lpCsrListener;
; 6261 :          lpCsrListener = zGETPTR( lpCsrListener->hNextCursorListener ) )

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCsrListener$[ebp], eax
	jmp	SHORT $L9770
$L9771:
	mov	edx, DWORD PTR _lpCsrListener$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCsrListener$[ebp], eax
$L9770:
	cmp	DWORD PTR _lpCsrListener$[ebp], 0
	je	SHORT $L9772

; 6263 :       if ( lpCsrListener->lpfnCursorListener == lpfnCursorListener &&
; 6264 :            lpCsrListener->pvListenerInstance == pvInstance &&
; 6265 :            lpCsrListener->lListenerProcess == lListenerProcess )

	mov	ecx, DWORD PTR _lpCsrListener$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	cmp	edx, DWORD PTR _lpfnCursorListener$[ebp]
	jne	SHORT $L9773
	mov	eax, DWORD PTR _lpCsrListener$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	cmp	ecx, DWORD PTR _pvInstance$[ebp]
	jne	SHORT $L9773
	mov	edx, DWORD PTR _lpCsrListener$[ebp]
	mov	eax, DWORD PTR [edx+12]
	cmp	eax, DWORD PTR _lListenerProcess$[ebp]
	jne	SHORT $L9773

; 6267 :          // If prev is 0 then we found the very first one.
; 6268 :          if ( lpPrevCsrListener == 0 )

	cmp	DWORD PTR _lpPrevCsrListener$[ebp], 0
	jne	SHORT $L9774

; 6269 :             lpView->hFirstCursorListener = lpCsrListener->hNextCursorListener;

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR _lpCsrListener$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR [ecx+34], eax

; 6270 :          else

	jmp	SHORT $L9775
$L9774:

; 6271 :             lpPrevCsrListener->hNextCursorListener = lpCsrListener->hNextCursorListener;

	mov	ecx, DWORD PTR _lpPrevCsrListener$[ebp]
	mov	edx, DWORD PTR _lpCsrListener$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR [ecx], eax
$L9775:

; 6272 : 
; 6273 :          fnFreeDataspace( lpCsrListener );

	mov	ecx, DWORD PTR _lpCsrListener$[ebp]
	push	ecx
	call	_fnFreeDataspace
	add	esp, 4

; 6274 :          return( 0 );

	xor	ax, ax
	jmp	SHORT $L9764
$L9773:

; 6276 : 
; 6277 :       lpPrevCsrListener = lpCsrListener;

	mov	edx, DWORD PTR _lpCsrListener$[ebp]
	mov	DWORD PTR _lpPrevCsrListener$[ebp], edx

; 6278 :    }

	jmp	SHORT $L9771
$L9772:

; 6279 : 
; 6280 :    return( -1 ); // not found

	or	ax, -1
$L9764:

; 6281 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_RemoveCursorListener@12 ENDP
_lpView$ = 8
_cpcEntityName$ = 12
_lpCsrListener$ = -8
_hCsrListener$ = -4
_lListenerProcess$ = -12
_fnCallListeners PROC NEAR

; 6286 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 6287 :    LPCURSORLISTENER lpCsrListener;
; 6288 :    LPCURSORLISTENER hCsrListener;
; 6289 :    zLONG            lListenerProcess = SysGetProcessID( 0 );

	push	0
	call	_SysGetProcessID@4
	mov	DWORD PTR _lListenerProcess$[ebp], eax

; 6290 : 
; 6291 :    lpCsrListener = zGETPTR( lpView->hFirstCursorListener );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCsrListener$[ebp], eax
$L9786:

; 6292 :    while ( lpCsrListener )

	cmp	DWORD PTR _lpCsrListener$[ebp], 0
	je	SHORT $L9787

; 6294 :       // We cannot issue a callback to another task.
; 6295 :    // if ( lpCsrListener->hListenerTask == hCurrentTask &&
; 6296 :       if ( lpCsrListener->lListenerProcess == lListenerProcess )

	mov	edx, DWORD PTR _lpCsrListener$[ebp]
	mov	eax, DWORD PTR [edx+12]
	cmp	eax, DWORD PTR _lListenerProcess$[ebp]
	jne	SHORT $L9788

; 6298 :          // call back
; 6299 :          (*lpCsrListener->lpfnCursorListener)
; 6300 :                   ( lpView, cpcEntityName, lpCsrListener->pvListenerInstance );

	mov	ecx, DWORD PTR _lpCsrListener$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCsrListener$[ebp]
	call	DWORD PTR [edx+4]
	add	esp, 12					; 0000000cH
$L9788:

; 6302 : 
; 6303 :       // There appears to be a bug in Microsoft's compiler.  If the following
; 6304 :       // are done in one line the resulting code crashes.
; 6305 :       hCsrListener = lpCsrListener->hNextCursorListener;

	mov	eax, DWORD PTR _lpCsrListener$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _hCsrListener$[ebp], ecx

; 6306 :       lpCsrListener = zGETPTR( hCsrListener );

	mov	edx, DWORD PTR _hCsrListener$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCsrListener$[ebp], eax

; 6307 :    }

	jmp	SHORT $L9786
$L9787:

; 6308 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnCallListeners ENDP
_TEXT	ENDS
END
