	TITLE	C:\10C\A\oe\KZOEMMAA.C
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
;	COMDAT ??_C@_0DE@LLGA@Memory?5Management?5Error?$CB?5Wrong?5D@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DG@DHCM@Memory?5Management?3?5Inconsistent?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@EEMD@Zeidon?5Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@CBEG@Running?5in?5Server?5Mode?5and?5using@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@JKJL@Data?5Header?5Number?3?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@DDBI@?5?5Total?5Size?5?5?5?5?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@BOEP@?5?5Used?5Size?5?5?5?5?5?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@OFMA@?5?5Max?5free?5Blocksize?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@LPLM@?5?5Used?5Blocks?5?5?5?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@FNEN@?5?5Free?5Blocks?5?5?5?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@PHMM@Zero?5FreeLth?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@JAEC@TraceDataHeader?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CH@HDNL@?$CImm?$CJ?5Invalid?5fnAllocDataspace?5re@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@PEEN@Inconsistent?5Freespace?5Count?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@GKIL@Memory?5Management?5Error?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0FB@JIKN@?$CImm?$CJ?5fnAllocDataspace?5?$CI?$CFd?$CJ?5alloc@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EP@KINB@?$CImm?$CJ?5fnAllocDataspace?5?$CI?$CFd?$CJ?5alloc@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DD@GFFE@?$CImm?$CJ?5fnAllocDataspace?5for?5Anchor@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@OOLB@?$CImm?$CJ?5fnAllocDataspace?5unsuccessf@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EI@JPKG@FreeDataspace?3?5Memory?5to?5free?5al@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@ILLO@Memory?5to?5free?5already?5freed?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DF@DPJC@Memory?5Management?5Error?$CB?5Wrong?5D@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DH@GLJH@Memory?5Management?$CB?5Used?5memory?5s@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@PMAL@Freespace?5request?5invalid?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@BEKD@Data?5header?5request?5invalid?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DK@MPFG@Allocating?5new?5space?5for?5Task?5?$CI0@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
_DATA	SEGMENT
COMM	_g_bTraceDataspace:BYTE
_DATA	ENDS
PUBLIC	_fnAllocDataspace
PUBLIC	_fnStoreStringInDataspace
EXTRN	_strcpy:NEAR
EXTRN	_strlen:NEAR
EXTRN	_g_pfnGetPtr:DWORD
_TEXT	SEGMENT
_lpDataHeader$ = 8
_cpcName$ = 12
_lpReturnName$ = -4
_hDataspace$ = -8
_ulLth$7524 = -12
_fnStoreStringInDataspace PROC NEAR

; 95   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 96   :    zPCHAR lpReturnName;
; 97   :    zPVOID hDataspace = 0;

	mov	DWORD PTR _hDataspace$[ebp], 0

; 98   : 
; 99   :    if ( cpcName && cpcName[ 0 ] )

	cmp	DWORD PTR _cpcName$[ebp], 0
	je	SHORT $L7525
	mov	eax, DWORD PTR _cpcName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L7525

; 101  :       zULONG ulLth = zstrlen( cpcName ) + 1;

	mov	edx, DWORD PTR _cpcName$[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	add	eax, 1
	mov	DWORD PTR _ulLth$7524[ebp], eax

; 102  :       hDataspace = fnAllocDataspace( lpDataHeader, ulLth, 0, 0, iString );

	push	10103					; 00002777H
	push	0
	push	0
	mov	eax, DWORD PTR _ulLth$7524[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	push	ecx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hDataspace$[ebp], eax

; 103  :       if ( hDataspace )

	cmp	DWORD PTR _hDataspace$[ebp], 0
	je	SHORT $L7525

; 105  :          lpReturnName = zGETPTR( hDataspace );

	mov	edx, DWORD PTR _hDataspace$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpReturnName$[ebp], eax

; 106  :          zstrcpy( lpReturnName, cpcName );

	mov	eax, DWORD PTR _cpcName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpReturnName$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8
$L7525:

; 109  : 
; 110  :    return( (zPCHAR) hDataspace );

	mov	eax, DWORD PTR _hDataspace$[ebp]

; 111  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnStoreStringInDataspace ENDP
_TEXT	ENDS
PUBLIC	_fnChainFreespaces
PUBLIC	??_C@_0DE@LLGA@Memory?5Management?5Error?$CB?5Wrong?5D@ ; `string'
PUBLIC	??_C@_0DG@DHCM@Memory?5Management?3?5Inconsistent?5@ ; `string'
PUBLIC	??_C@_0N@EEMD@Zeidon?5Error?$AA@		; `string'
PUBLIC	_TraceDataHeader@8
EXTRN	_TraceLineI@8:NEAR
EXTRN	_SysMessageBox@16:NEAR
EXTRN	_fnSysLockCoreMutex@4:NEAR
EXTRN	_fnSysUnlockCoreMutex@4:NEAR
;	COMDAT ??_C@_0DE@LLGA@Memory?5Management?5Error?$CB?5Wrong?5D@
; File C:\10C\A\oe\KZOEMMAA.C
_DATA	SEGMENT
??_C@_0DE@LLGA@Memory?5Management?5Error?$CB?5Wrong?5D@ DB 'Memory Manage'
	DB	'ment Error! Wrong Dataspace Table ID: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DG@DHCM@Memory?5Management?3?5Inconsistent?5@
_DATA	SEGMENT
??_C@_0DG@DHCM@Memory?5Management?3?5Inconsistent?5@ DB 'Memory Managemen'
	DB	't: Inconsistent size of memory blocks', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@EEMD@Zeidon?5Error?$AA@
_DATA	SEGMENT
??_C@_0N@EEMD@Zeidon?5Error?$AA@ DB 'Zeidon Error', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpDataHeader$ = 8
_lpFreespace$ = -28
_lpSpace$ = -12
_lpNextSpace$ = -4
_pvEndOfBuffer$ = -20
_ulCntFreeSpaces$ = -24
_ulFree$ = -8
_ulUsed$ = -16
_fnChainFreespaces PROC NEAR

; 142  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 143  :    LPFREESPACE  lpFreespace; // last element of freespace chain
; 144  :    LPFREESPACE  lpSpace;     // actual space
; 145  :    LPFREESPACE  lpNextSpace; // next space
; 146  :    zPVOID       pvEndOfBuffer;
; 147  :    zULONG       ulCntFreeSpaces = 0;

	mov	DWORD PTR _ulCntFreeSpaces$[ebp], 0

; 148  :    zULONG       ulFree = 0;

	mov	DWORD PTR _ulFree$[ebp], 0

; 149  :    zULONG       ulUsed = 0;

	mov	DWORD PTR _ulUsed$[ebp], 0

; 150  : 
; 151  :    zLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysLockCoreMutex@4

; 152  : 
; 153  :    lpSpace = (LPFREESPACE)((zPCHAR) lpDataHeader + sizeof( DataHeaderRecord ));

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	add	eax, 64					; 00000040H
	mov	DWORD PTR _lpSpace$[ebp], eax

; 154  :    pvEndOfBuffer = (zPCHAR) lpDataHeader + sizeof( DataHeaderRecord ) +
; 155  :                                                  lpDataHeader->ulUseableSize;

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	lea	ecx, DWORD PTR [eax+edx+64]
	mov	DWORD PTR _pvEndOfBuffer$[ebp], ecx

; 156  :    lpFreespace = &lpDataHeader->Freespace;

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	add	edx, 46					; 0000002eH
	mov	DWORD PTR _lpFreespace$[ebp], edx
$L7546:

; 157  :    while ( (void *) lpSpace < pvEndOfBuffer )

	mov	eax, DWORD PTR _lpSpace$[ebp]
	cmp	eax, DWORD PTR _pvEndOfBuffer$[ebp]
	jae	$L7547

; 159  :       lpNextSpace = (LPFREESPACE) ((zPCHAR) lpSpace + lpSpace->ulFreeLth);

	mov	ecx, DWORD PTR _lpSpace$[ebp]
	mov	edx, DWORD PTR _lpSpace$[ebp]
	add	edx, DWORD PTR [ecx+6]
	mov	DWORD PTR _lpNextSpace$[ebp], edx

; 160  :       switch ( lpSpace->nTableID )
; 161  :       {

	mov	eax, DWORD PTR _lpSpace$[ebp]
	movsx	ecx, WORD PTR [eax]
	mov	DWORD PTR -32+[ebp], ecx
	cmp	DWORD PTR -32+[ebp], 10026		; 0000272aH
	je	$L7559
	cmp	DWORD PTR -32+[ebp], 10027		; 0000272bH
	je	SHORT $L7554
	cmp	DWORD PTR -32+[ebp], 10051		; 00002743H
	je	$L7559
	jmp	$L7560
$L7554:

; 164  :             if ( ((void *) lpNextSpace < pvEndOfBuffer) &&
; 165  :                  (lpNextSpace->nTableID == iFreespace) )

	mov	edx, DWORD PTR _lpNextSpace$[ebp]
	cmp	edx, DWORD PTR _pvEndOfBuffer$[ebp]
	jae	SHORT $L7556
	mov	eax, DWORD PTR _lpNextSpace$[ebp]
	movsx	ecx, WORD PTR [eax]
	cmp	ecx, 10027				; 0000272bH
	jne	SHORT $L7556

; 167  :                // Next memory space is also a freespace, so join both.
; 168  :                lpSpace->ulFreeLth += lpNextSpace->ulFreeLth;

	mov	edx, DWORD PTR _lpSpace$[ebp]
	mov	eax, DWORD PTR [edx+6]
	mov	ecx, DWORD PTR _lpNextSpace$[ebp]
	add	eax, DWORD PTR [ecx+6]
	mov	edx, DWORD PTR _lpSpace$[ebp]
	mov	DWORD PTR [edx+6], eax

; 170  :             else

	jmp	SHORT $L7557
$L7556:

; 172  :                // Next space is used so chain the space into the list.
; 173  :                if ( lpSpace->ulFreeLth > lpDataHeader->ulMaxEmptyBlockSize )

	mov	eax, DWORD PTR _lpSpace$[ebp]
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR [eax+6]
	cmp	edx, DWORD PTR [ecx+26]
	jbe	SHORT $L7558

; 174  :                   lpDataHeader->ulMaxEmptyBlockSize = lpSpace->ulFreeLth;

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR _lpSpace$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	mov	DWORD PTR [eax+26], edx
$L7558:

; 175  : 
; 176  :                ulCntFreeSpaces++;

	mov	eax, DWORD PTR _ulCntFreeSpaces$[ebp]
	add	eax, 1
	mov	DWORD PTR _ulCntFreeSpaces$[ebp], eax

; 177  : 
; 178  :                // Chain the space into the freespace list.
; 179  :                lpSpace->hNextFreespace = 0;

	mov	ecx, DWORD PTR _lpSpace$[ebp]
	mov	DWORD PTR [ecx+14], 0

; 180  :                ulFree += lpSpace->ulFreeLth;

	mov	edx, DWORD PTR _lpSpace$[ebp]
	mov	eax, DWORD PTR _ulFree$[ebp]
	add	eax, DWORD PTR [edx+6]
	mov	DWORD PTR _ulFree$[ebp], eax

; 181  :                lpFreespace->hNextFreespace = lpSpace->hFreespace;

	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	mov	edx, DWORD PTR _lpSpace$[ebp]
	mov	eax, DWORD PTR [edx+10]
	mov	DWORD PTR [ecx+14], eax

; 182  :                lpFreespace = lpSpace;

	mov	ecx, DWORD PTR _lpSpace$[ebp]
	mov	DWORD PTR _lpFreespace$[ebp], ecx

; 183  :                lpSpace = lpNextSpace;

	mov	edx, DWORD PTR _lpNextSpace$[ebp]
	mov	DWORD PTR _lpSpace$[ebp], edx
$L7557:

; 185  : 
; 186  :             break;

	jmp	SHORT $L7551
$L7559:

; 192  :             ulUsed += lpSpace->ulFreeLth;

	mov	eax, DWORD PTR _lpSpace$[ebp]
	mov	ecx, DWORD PTR _ulUsed$[ebp]
	add	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR _ulUsed$[ebp], ecx

; 193  :             lpSpace = lpNextSpace;

	mov	edx, DWORD PTR _lpNextSpace$[ebp]
	mov	DWORD PTR _lpSpace$[ebp], edx

; 194  :             break;

	jmp	SHORT $L7551
$L7560:

; 199  :          // SysMessageBox( "Zeidon Error", "Memory Management: "
; 200  :          //                "Wrong Dataspace Table ID", 0 );
; 201  :             TraceLineI( "Memory Management Error! Wrong Dataspace Table ID: ",
; 202  :                         lpSpace->nTableID );

	mov	eax, DWORD PTR _lpSpace$[ebp]
	movsx	ecx, WORD PTR [eax]
	push	ecx
	push	OFFSET FLAT:??_C@_0DE@LLGA@Memory?5Management?5Error?$CB?5Wrong?5D@ ; `string'
	call	_TraceLineI@8

; 203  :             return( lpSpace );

	mov	eax, DWORD PTR _lpSpace$[ebp]
	jmp	SHORT $L7531
$L7551:

; 206  :    }

	jmp	$L7546
$L7547:

; 207  : 
; 208  :    if ( (ulUsed + ulFree) != lpDataHeader->ulUseableSize )

	mov	edx, DWORD PTR _ulUsed$[ebp]
	add	edx, DWORD PTR _ulFree$[ebp]
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	cmp	edx, DWORD PTR [eax+10]
	je	SHORT $L7562

; 210  :       TraceDataHeader( lpDataHeader, TRUE );

	push	1
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	push	ecx
	call	_TraceDataHeader@8

; 211  :       SysMessageBox( 0, "Zeidon Error", "Memory Management: "
; 212  :                      "Inconsistent size of memory blocks", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0DG@DHCM@Memory?5Management?3?5Inconsistent?5@ ; `string'
	push	OFFSET FLAT:??_C@_0N@EEMD@Zeidon?5Error?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 213  :       zUNLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysUnlockCoreMutex@4

; 214  :       return( lpDataHeader );

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	jmp	SHORT $L7531
$L7562:

; 216  : 
; 217  :    lpDataHeader->ulCntFreeSpaces = ulCntFreeSpaces;

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR _ulCntFreeSpaces$[ebp]
	mov	DWORD PTR [edx+22], eax

; 218  : 
; 219  :    // Now all freed memory is chained into the list.
; 220  :    lpDataHeader->ulFreedMemSize = 0;

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR [ecx+30], 0

; 221  : 
; 222  :    zUNLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysUnlockCoreMutex@4

; 223  :    return( 0 );

	xor	eax, eax
$L7531:

; 224  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnChainFreespaces ENDP
_TEXT	ENDS
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_0CO@CBEG@Running?5in?5Server?5Mode?5and?5using@ ; `string'
PUBLIC	??_C@_0BI@JKJL@Data?5Header?5Number?3?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BI@DDBI@?5?5Total?5Size?5?5?5?5?5?5?5?5?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BI@BOEP@?5?5Used?5Size?5?5?5?5?5?5?5?5?5?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BI@OFMA@?5?5Max?5free?5Blocksize?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BI@LPLM@?5?5Used?5Blocks?5?5?5?5?5?5?5?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BI@FNEN@?5?5Free?5Blocks?5?5?5?5?5?5?5?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0N@PHMM@Zero?5FreeLth?$AA@		; `string'
PUBLIC	??_C@_0BA@JAEC@TraceDataHeader?$AA@		; `string'
EXTRN	_TraceLineS@8:NEAR
EXTRN	_g_bServerMode:BYTE
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\A\oe\KZOEMMAA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0CO@CBEG@Running?5in?5Server?5Mode?5and?5using@
_DATA	SEGMENT
??_C@_0CO@CBEG@Running?5in?5Server?5Mode?5and?5using@ DB 'Running in Serv'
	DB	'er Mode and using local memory', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@JKJL@Data?5Header?5Number?3?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BI@JKJL@Data?5Header?5Number?3?5?5?5?5?$AA@ DB 'Data Header Number'
	DB	':    ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@DDBI@?5?5Total?5Size?5?5?5?5?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BI@DDBI@?5?5Total?5Size?5?5?5?5?5?5?5?5?5?$DN?5?$AA@ DB '  Total S'
	DB	'ize         = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@BOEP@?5?5Used?5Size?5?5?5?5?5?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BI@BOEP@?5?5Used?5Size?5?5?5?5?5?5?5?5?5?5?$DN?5?$AA@ DB '  Used S'
	DB	'ize          = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@OFMA@?5?5Max?5free?5Blocksize?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BI@OFMA@?5?5Max?5free?5Blocksize?5?$DN?5?$AA@ DB '  Max free Block'
	DB	'size = ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@LPLM@?5?5Used?5Blocks?5?5?5?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BI@LPLM@?5?5Used?5Blocks?5?5?5?5?5?5?5?5?$DN?5?$AA@ DB '  Used Blo'
	DB	'cks        = ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@FNEN@?5?5Free?5Blocks?5?5?5?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BI@FNEN@?5?5Free?5Blocks?5?5?5?5?5?5?5?5?$DN?5?$AA@ DB '  Free Blo'
	DB	'cks        = ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@PHMM@Zero?5FreeLth?$AA@
_DATA	SEGMENT
??_C@_0N@PHMM@Zero?5FreeLth?$AA@ DB 'Zero FreeLth', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@JAEC@TraceDataHeader?$AA@
_DATA	SEGMENT
??_C@_0BA@JAEC@TraceDataHeader?$AA@ DB 'TraceDataHeader', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpDataHeader$ = 8
_bAll$ = 12
_lpSpace$ = -8
_pvEndOfBuffer$ = -16
_ulCntFreeSpaces$ = -20
_ulFree$ = -4
_ulUsed$ = -12
_TraceDataHeader@8 PROC NEAR

; 229  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 230  :    LPFREESPACE  lpSpace;     // actual space
; 231  :    zPVOID       pvEndOfBuffer;
; 232  :    zULONG       ulCntFreeSpaces = 0;

	mov	DWORD PTR _ulCntFreeSpaces$[ebp], 0

; 233  :    zULONG       ulFree = 0;

	mov	DWORD PTR _ulFree$[ebp], 0

; 234  :    zULONG       ulUsed = 0;

	mov	DWORD PTR _ulUsed$[ebp], 0

; 235  : 
; 236  :    if ( g_bServerMode )

	xor	eax, eax
	mov	al, BYTE PTR _g_bServerMode
	test	eax, eax
	je	SHORT $L7575

; 238  :       TraceLineS( "Running in Server Mode and using local memory", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CO@CBEG@Running?5in?5Server?5Mode?5and?5using@ ; `string'
	call	_TraceLineS@8

; 239  :       return;

	jmp	$L7585
$L7575:

; 241  : 
; 242  :    if ( bAll )  // if bAll is set, position to the very first DataHeader

	mov	ecx, DWORD PTR _bAll$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L7581
$L7580:

; 244  :       while ( lpDataHeader->hPrevDataHeader )

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	cmp	DWORD PTR [edx+42], 0
	je	SHORT $L7581

; 245  :          lpDataHeader = zGETPTR( lpDataHeader->hPrevDataHeader );

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDataHeader$[ebp], eax
	jmp	SHORT $L7580
$L7581:

; 247  : 
; 248  :    // Trace out specified DataHeader(s).
; 249  :    while ( lpDataHeader )

	cmp	DWORD PTR _lpDataHeader$[ebp], 0
	je	$L7585

; 251  :       fnChainFreespaces( lpDataHeader );  // recover freespace

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	push	edx
	call	_fnChainFreespaces
	add	esp, 4

; 252  : 
; 253  :       TraceLineI( "Data Header Number:    ",
; 254  :                   (unsigned long) lpDataHeader->hDataHandle >> 24 );

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 24					; 00000018H
	push	ecx
	push	OFFSET FLAT:??_C@_0BI@JKJL@Data?5Header?5Number?3?5?5?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 255  :       TraceLineI( "  Total Size         = ", lpDataHeader->ulUseableSize );

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	push	OFFSET FLAT:??_C@_0BI@DDBI@?5?5Total?5Size?5?5?5?5?5?5?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 256  :       TraceLineI( "  Used Size          = ", lpDataHeader->ulUsedSpace );

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	push	OFFSET FLAT:??_C@_0BI@BOEP@?5?5Used?5Size?5?5?5?5?5?5?5?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 257  :       TraceLineI( "  Max free Blocksize = ", lpDataHeader->ulMaxEmptyBlockSize );

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	push	OFFSET FLAT:??_C@_0BI@OFMA@?5?5Max?5free?5Blocksize?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 258  :       TraceLineI( "  Used Blocks        = ", lpDataHeader->ulCntUsedEntries );

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	push	OFFSET FLAT:??_C@_0BI@LPLM@?5?5Used?5Blocks?5?5?5?5?5?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 259  :       TraceLineI( "  Free Blocks        = ", lpDataHeader->ulCntFreeSpaces );

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	push	OFFSET FLAT:??_C@_0BI@FNEN@?5?5Free?5Blocks?5?5?5?5?5?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 260  : 
; 261  :       // Trace out the freespace here.
; 262  :       lpSpace = (LPFREESPACE) ((zPCHAR) lpDataHeader + sizeof( DataHeaderRecord ));

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	add	eax, 64					; 00000040H
	mov	DWORD PTR _lpSpace$[ebp], eax

; 263  :       pvEndOfBuffer = (zPCHAR) lpDataHeader + sizeof( DataHeaderRecord ) +
; 264  :                                                  lpDataHeader->ulUseableSize;

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	lea	ecx, DWORD PTR [eax+edx+64]
	mov	DWORD PTR _pvEndOfBuffer$[ebp], ecx
$L7600:

; 265  :       while ( (void *) lpSpace < pvEndOfBuffer )

	mov	edx, DWORD PTR _lpSpace$[ebp]
	cmp	edx, DWORD PTR _pvEndOfBuffer$[ebp]
	jae	SHORT $L7601

; 267  :          switch ( lpSpace->nTableID )
; 268  :          {

	mov	eax, DWORD PTR _lpSpace$[ebp]
	movsx	ecx, WORD PTR [eax]
	mov	DWORD PTR -24+[ebp], ecx

; 298  : 
; 299  :          if ( lpSpace->ulFreeLth == 0 )

	mov	edx, DWORD PTR _lpSpace$[ebp]
	cmp	DWORD PTR [edx+6], 0
	jne	SHORT $L7609

; 301  :             SysMessageBox( 0, "TraceDataHeader", "Zero FreeLth", -1 );

	push	-1
	push	OFFSET FLAT:??_C@_0N@PHMM@Zero?5FreeLth?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BA@JAEC@TraceDataHeader?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 302  :             break;

	jmp	SHORT $L7601
$L7609:

; 304  : 
; 305  :          lpSpace = (LPFREESPACE) ((zPCHAR) lpSpace + lpSpace->ulFreeLth);

	mov	eax, DWORD PTR _lpSpace$[ebp]
	mov	ecx, DWORD PTR _lpSpace$[ebp]
	add	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR _lpSpace$[ebp], ecx

; 306  :       }

	jmp	SHORT $L7600
$L7601:

; 307  : 
; 308  :       if ( bAll == FALSE )

	mov	edx, DWORD PTR _bAll$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	jne	SHORT $L7614

; 309  :          break;

	jmp	SHORT $L7585
$L7614:

; 310  : 
; 311  :       lpDataHeader = zGETPTR( lpDataHeader->hNextDataHeader );

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDataHeader$[ebp], eax

; 312  :    }

	jmp	$L7581
$L7585:

; 313  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_TraceDataHeader@8 ENDP
_TEXT	ENDS
PUBLIC	_fnListDataspaceLeak@12
_TEXT	SEGMENT
_fnListDataspaceLeak@12 PROC NEAR

; 435  : {

	push	ebp
	mov	ebp, esp

; 436  : }

	pop	ebp
	ret	12					; 0000000cH
_fnListDataspaceLeak@12 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0CH@HDNL@?$CImm?$CJ?5Invalid?5fnAllocDataspace?5re@ ; `string'
PUBLIC	??_C@_0BN@PEEN@Inconsistent?5Freespace?5Count?$AA@ ; `string'
PUBLIC	??_C@_0BK@GKIL@Memory?5Management?5Error?3?5?$AA@ ; `string'
PUBLIC	??_C@_0FB@JIKN@?$CImm?$CJ?5fnAllocDataspace?5?$CI?$CFd?$CJ?5alloc@ ; `string'
PUBLIC	??_C@_0EP@KINB@?$CImm?$CJ?5fnAllocDataspace?5?$CI?$CFd?$CJ?5alloc@ ; `string'
PUBLIC	??_C@_0DD@GFFE@?$CImm?$CJ?5fnAllocDataspace?5for?5Anchor@ ; `string'
PUBLIC	??_C@_0CO@OOLB@?$CImm?$CJ?5fnAllocDataspace?5unsuccessf@ ; `string'
PUBLIC	_fnInitializeDataspace
EXTRN	_TraceLineX@8:NEAR
EXTRN	_TraceLine:NEAR
EXTRN	_memcpy:NEAR
EXTRN	_memset:NEAR
EXTRN	_AnchorBlock:DWORD
EXTRN	_fnSysCreateHandle@8:NEAR
;	COMDAT ??_C@_0CH@HDNL@?$CImm?$CJ?5Invalid?5fnAllocDataspace?5re@
; File C:\10C\A\oe\KZOEMMAA.C
_DATA	SEGMENT
??_C@_0CH@HDNL@?$CImm?$CJ?5Invalid?5fnAllocDataspace?5re@ DB '(mm) Invali'
	DB	'd fnAllocDataspace request ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@PEEN@Inconsistent?5Freespace?5Count?$AA@
_DATA	SEGMENT
??_C@_0BN@PEEN@Inconsistent?5Freespace?5Count?$AA@ DB 'Inconsistent Frees'
	DB	'pace Count', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@GKIL@Memory?5Management?5Error?3?5?$AA@
_DATA	SEGMENT
??_C@_0BK@GKIL@Memory?5Management?5Error?3?5?$AA@ DB 'Memory Management E'
	DB	'rror: ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0FB@JIKN@?$CImm?$CJ?5fnAllocDataspace?5?$CI?$CFd?$CJ?5alloc@
_DATA	SEGMENT
??_C@_0FB@JIKN@?$CImm?$CJ?5fnAllocDataspace?5?$CI?$CFd?$CJ?5alloc@ DB '(m'
	DB	'm) fnAllocDataspace (%d) allocation over threshold for task: '
	DB	'0x%08x ======> %d', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EP@KINB@?$CImm?$CJ?5fnAllocDataspace?5?$CI?$CFd?$CJ?5alloc@
_DATA	SEGMENT
??_C@_0EP@KINB@?$CImm?$CJ?5fnAllocDataspace?5?$CI?$CFd?$CJ?5alloc@ DB '(m'
	DB	'm) fnAllocDataspace (%d) allocation over ceiling for task: 0x'
	DB	'%08x ======> %d', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DD@GFFE@?$CImm?$CJ?5fnAllocDataspace?5for?5Anchor@
_DATA	SEGMENT
??_C@_0DD@GFFE@?$CImm?$CJ?5fnAllocDataspace?5for?5Anchor@ DB '(mm) fnAllo'
	DB	'cDataspace for AnchorBlock unsuccessful', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CO@OOLB@?$CImm?$CJ?5fnAllocDataspace?5unsuccessf@
_DATA	SEGMENT
??_C@_0CO@OOLB@?$CImm?$CJ?5fnAllocDataspace?5unsuccessf@ DB '(mm) fnAlloc'
	DB	'Dataspace unsuccessful for size: ', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hFirstDataHeader$ = 8
_ulReqSize$ = 12
_nInitialize$ = 16
_chInitByte$ = 20
_nTableID$ = 24
_lpFirstDataHeader$ = -32
_lpDataHeader$ = -40
_lpPrevFreespace$ = -8
_lpNextFreespace$ = -28
_lpNewDataspace$ = -12
_lpCurrentTask$ = -52
_lpReturnPtr$ = -16
_hReturnPtr$ = -24
_hDataHeader$ = -20
_ulSize$ = -48
_ulAllocBytes$ = -4
_bMutexLocked$ = -44
_nAllocCnt$ = -36
_hNewDataHeader$7689 = -56
_lpNewDataHeader$7690 = -64
_pTmp$7691 = -60
_fnAllocDataspace PROC NEAR

; 465  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H

; 466  :    LPDATAHEADER  lpFirstDataHeader;
; 467  :    LPDATAHEADER  lpDataHeader;
; 468  :    LPFREESPACE   lpPrevFreespace;
; 469  :    LPFREESPACE   lpNextFreespace;
; 470  :    LPFREESPACE   lpNewDataspace;
; 471  :    LPTASK        lpCurrentTask;
; 472  :    zPCHAR        lpReturnPtr = 0;

	mov	DWORD PTR _lpReturnPtr$[ebp], 0

; 473  :    zPVOID        hReturnPtr;
; 474  :    zPVOID        hDataHeader;
; 475  :    zULONG        ulSize;
; 476  :    zULONG        ulAllocBytes;
; 477  :    zBOOL         bMutexLocked;
; 478  :    zSHORT        nAllocCnt;
; 479  : 
; 480  : #if 0 // debugging only
; 481  :    LPTASK lpMainTask = zGETPTR( AnchorBlock->hMainTask );
; 482  :    if ( (lpMainTask && hFirstDataHeader == lpMainTask->hFirstDataHeader) ||
; 483  :         hFirstDataHeader == AnchorBlock->hMainFirstDataHeader ||
; 484  :         hFirstDataHeader == (LPDATAHEADER) g_hAnchorBlock )
; 485  :    {
; 486  :       ulSize = 1;
; 487  :    }
; 488  :    else
; 489  :       ulSize = 0;
; 490  : #endif
; 491  : 
; 492  :    // Minimum allocation unit is MIN_MEM_BLOCKSIZE.
; 493  :    if ( ulReqSize < MIN_MEM_BLOCKSIZE )

	cmp	DWORD PTR _ulReqSize$[ebp], 16		; 00000010H
	jae	SHORT $L7648

; 494  :       ulReqSize = MIN_MEM_BLOCKSIZE;

	mov	DWORD PTR _ulReqSize$[ebp], 16		; 00000010H
$L7648:

; 495  : 
; 496  :    // Ensure that the requested space is on the required byte boundary.
; 497  :    // So we assure that a minimum of at least 4 Bytes is allocated.
; 498  :    if ( ulReqSize % zALIGN_MEM_SIZE )

	mov	eax, DWORD PTR _ulReqSize$[ebp]
	xor	edx, edx
	mov	ecx, 4
	div	ecx
	test	edx, edx
	je	SHORT $L7649

; 499  :       ulReqSize += zALIGN_MEM_SIZE - (ulReqSize % zALIGN_MEM_SIZE);

	mov	eax, DWORD PTR _ulReqSize$[ebp]
	xor	edx, edx
	mov	ecx, 4
	div	ecx
	mov	eax, 4
	sub	eax, edx
	mov	ecx, DWORD PTR _ulReqSize$[ebp]
	add	ecx, eax
	mov	DWORD PTR _ulReqSize$[ebp], ecx
$L7649:

; 500  : 
; 501  : #if 0
; 502  :    // If we're running in ServerMode, then we can allocate local memory.
; 503  :    if ( g_bServerMode )
; 504  :    {
; 505  :       lpReturnPtr = SysMalloc( ulReqSize );
; 506  :       if ( lpReturnPtr )
; 507  :       {
; 508  :          if ( nInitialize && chInitByte )
; 509  :             zmemset( lpReturnPtr, chInitByte, (unsigned int) ulReqSize );
; 510  : 
; 511  :          if ( nTableID && nTableID < iAttributeRecord )
; 512  :             memcpy( lpReturnPtr, &nTableID, sizeof( nTableID ) );
; 513  :       }
; 514  : 
; 515  :       return( lpReturnPtr );
; 516  :    }
; 517  : #endif
; 518  : 
; 519  :    // A quick hack to test things.  We're chaining everything off of the main
; 520  :    // system task.  dks 2006.05.07  change from 10B
; 521  : // if ( hFirstDataHeader != (LPDATAHEADER) g_hAnchorBlock )
; 522  : //    hFirstDataHeader = AnchorBlock->hMainFirstDataHeader;
; 523  : 
; 524  :    hDataHeader = hFirstDataHeader;

	mov	edx, DWORD PTR _hFirstDataHeader$[ebp]
	mov	DWORD PTR _hDataHeader$[ebp], edx

; 525  :    lpDataHeader = zGETPTR( hFirstDataHeader );

	mov	eax, DWORD PTR _hFirstDataHeader$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDataHeader$[ebp], eax

; 526  : 
; 527  :    // If this is not a valid alloc request, return "no good".
; 528  :    if ( lpDataHeader == 0 || ulReqSize <= 0 )

	cmp	DWORD PTR _lpDataHeader$[ebp], 0
	je	SHORT $L7652
	cmp	DWORD PTR _ulReqSize$[ebp], 0
	ja	SHORT $L7651
$L7652:

; 530  :       TraceLineI( "(mm) Invalid fnAllocDataspace request ", ulReqSize );

	mov	ecx, DWORD PTR _ulReqSize$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CH@HDNL@?$CImm?$CJ?5Invalid?5fnAllocDataspace?5re@ ; `string'
	call	_TraceLineI@8

; 531  :       return( 0 );

	xor	eax, eax
	jmp	$L7634
$L7651:

; 533  : 
; 534  :    lpFirstDataHeader = lpDataHeader;

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR _lpFirstDataHeader$[ebp], edx

; 535  :    lpCurrentTask = zGETPTR( lpFirstDataHeader->hTask );

	mov	eax, DWORD PTR _lpFirstDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 536  : 
; 537  :    // Add the size of the prefix to the size of the new chunk returned.
; 538  :    ulSize = ulReqSize + sizeof( FreespaceRecord );

	mov	edx, DWORD PTR _ulReqSize$[ebp]
	add	edx, 18					; 00000012H
	mov	DWORD PTR _ulSize$[ebp], edx

; 539  :    if ( lpCurrentTask )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	je	SHORT $L7656

; 540  :       lpCurrentTask->ulTrackTaskMemory += ulSize;

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	ecx, DWORD PTR [eax+162]
	add	ecx, DWORD PTR _ulSize$[ebp]
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	DWORD PTR [edx+162], ecx
$L7656:

; 541  : 
; 542  :    // Ensure that the total space is on the required byte boundary.
; 543  :    // The next two lines are commented out, because the FreespaceStruct
; 544  :    // has to be on the boundary anyway.
; 545  : // if ( ulSize % zALIGN_MEM_SIZE )
; 546  : //    ulSize += zALIGN_MEM_SIZE - (ulSize % zALIGN_MEM_SIZE);
; 547  : 
; 548  : // if ( ulSize == 62 || ulSize == 66 )
; 549  : //    TraceLineI( "AllocDataspace size: ", ulSize );
; 550  : 
; 551  :    // Single thread memory allocation/deallocation for memory allocated out of the
; 552  :    // AnchorBlock memory segment or for memory allocated for the system task.
; 553  :    if ( lpFirstDataHeader->hTask == AnchorBlock->hMainTask )

	mov	eax, DWORD PTR _lpFirstDataHeader$[ebp]
	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [eax+2]
	cmp	edx, DWORD PTR [ecx+106]
	jne	SHORT $L7657

; 555  :       bMutexLocked = TRUE;

	mov	BYTE PTR _bMutexLocked$[ebp], 1

; 556  :       zLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysLockCoreMutex@4

; 558  :    else

	jmp	SHORT $L7658
$L7657:

; 559  :       bMutexLocked = FALSE;

	mov	BYTE PTR _bMutexLocked$[ebp], 0
$L7658:

; 560  : 
; 561  :    // Logic completely changed because it was totally confusing (us).
; 562  :    nAllocCnt = 1;

	mov	WORD PTR _nAllocCnt$[ebp], 1
$L7659:

; 565  :       if ( lpDataHeader->ulCntFreeSpaces > 0 &&
; 566  :            lpDataHeader->ulMaxEmptyBlockSize > ulSize )

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	cmp	DWORD PTR [eax+22], 0
	jbe	$L7669
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	cmp	edx, DWORD PTR _ulSize$[ebp]
	jbe	$L7669

; 568  :          // It looks like there is enough space in this memory block.
; 569  :          lpPrevFreespace = &lpDataHeader->Freespace;

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	add	eax, 46					; 0000002eH
	mov	DWORD PTR _lpPrevFreespace$[ebp], eax

; 570  :          lpNextFreespace = zGETPTR( lpPrevFreespace->hNextFreespace );

	mov	ecx, DWORD PTR _lpPrevFreespace$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextFreespace$[ebp], eax

; 571  :          if ( lpNextFreespace == 0 )

	cmp	DWORD PTR _lpNextFreespace$[ebp], 0
	jne	SHORT $L7664

; 573  :             // Must not occur, because then ulCntFreeSpaces should be 0.
; 574  :          // SysMessageBox( "Zeidon Error", "Memory Management: "
; 575  :          //                "Inconsistent Freespace Count", 0 );
; 576  :             TraceLineS( "Memory Management Error: ",
; 577  :                         "Inconsistent Freespace Count" );

	push	OFFSET FLAT:??_C@_0BN@PEEN@Inconsistent?5Freespace?5Count?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BK@GKIL@Memory?5Management?5Error?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 578  : 
; 579  :             TraceDataHeader( lpDataHeader, FALSE ); // trace this header

	push	0
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	push	eax
	call	_TraceDataHeader@8

; 580  :          // fnChainFreespaces( lpDataHeader );
; 581  :          // TraceDataHeader( lpDataHeader, FALSE ); // trace this header again after chaining
; 582  :             continue;  // try it again, now the freespace count should be consistent again

	jmp	$L7660
$L7664:

; 589  : 
; 590  :          while ( lpNextFreespace )

	cmp	DWORD PTR _lpNextFreespace$[ebp], 0
	je	$L7669

; 592  :             // If a big enough freespace area is found, use it.
; 593  :             if ( lpNextFreespace->ulFreeLth >= ulSize )

	mov	ecx, DWORD PTR _lpNextFreespace$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	cmp	edx, DWORD PTR _ulSize$[ebp]
	jb	$L7670

; 595  :                // If there isn't enough room at the end of the found space to
; 596  :                // create a new freespace entry, return the whole available chunk.
; 597  :                if ( lpNextFreespace->ulFreeLth <
; 598  :                     (ulSize + sizeof( FreespaceRecord ) + MIN_MEM_BLOCKSIZE) )

	mov	eax, DWORD PTR _ulSize$[ebp]
	add	eax, 34					; 00000022H
	mov	ecx, DWORD PTR _lpNextFreespace$[ebp]
	cmp	DWORD PTR [ecx+6], eax
	jae	SHORT $L7672

; 600  :                   ulSize = lpNextFreespace->ulFreeLth;

	mov	edx, DWORD PTR _lpNextFreespace$[ebp]
	mov	eax, DWORD PTR [edx+6]
	mov	DWORD PTR _ulSize$[ebp], eax

; 601  : 
; 602  :                   // Chain last pointer ahead to next pointer.
; 603  :                   lpPrevFreespace->hNextFreespace = lpNextFreespace->hNextFreespace;

	mov	ecx, DWORD PTR _lpPrevFreespace$[ebp]
	mov	edx, DWORD PTR _lpNextFreespace$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR [ecx+14], eax

; 604  :                   lpDataHeader->ulCntFreeSpaces--;

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	sub	edx, 1
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR [eax+22], edx

; 606  :                else

	jmp	SHORT $L7673
$L7672:

; 608  :                   // Create a new Freespace chunk after the space being allocated and
; 609  :                   // point the previous dataspace chunk to the newly created chunk.
; 610  :                   lpNewDataspace = (LPFREESPACE) ((zPCHAR) lpNextFreespace + ulSize);

	mov	ecx, DWORD PTR _lpNextFreespace$[ebp]
	add	ecx, DWORD PTR _ulSize$[ebp]
	mov	DWORD PTR _lpNewDataspace$[ebp], ecx

; 611  :                   lpNewDataspace->hNextFreespace = lpNextFreespace->hNextFreespace;

	mov	edx, DWORD PTR _lpNewDataspace$[ebp]
	mov	eax, DWORD PTR _lpNextFreespace$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR [edx+14], ecx

; 612  :                   lpNewDataspace->nTableID = lpNextFreespace->nTableID;

	mov	edx, DWORD PTR _lpNewDataspace$[ebp]
	mov	eax, DWORD PTR _lpNextFreespace$[ebp]
	mov	cx, WORD PTR [eax]
	mov	WORD PTR [edx], cx

; 613  :                   lpNewDataspace->nPrevTableID = 0;

	mov	edx, DWORD PTR _lpNewDataspace$[ebp]
	mov	WORD PTR [edx+2], 0

; 614  : #ifdef ALLOC_FREE_TRACE
; 615  :                   lpNewDataspace->ulDebugID = ++(AnchorBlock->ulAllocCnt);  // pre-increment intended
; 616  : #endif
; 617  :                   lpNewDataspace->ulFreeLth = lpNextFreespace->ulFreeLth - ulSize;

	mov	eax, DWORD PTR _lpNextFreespace$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	sub	ecx, DWORD PTR _ulSize$[ebp]
	mov	edx, DWORD PTR _lpNewDataspace$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 618  :                   lpNewDataspace->hFreespace = fnSysCreateHandle( lpDataHeader, lpNewDataspace );

	mov	eax, DWORD PTR _lpNewDataspace$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	push	ecx
	call	_fnSysCreateHandle@8
	mov	edx, DWORD PTR _lpNewDataspace$[ebp]
	mov	DWORD PTR [edx+10], eax

; 619  :                   lpPrevFreespace->hNextFreespace = lpNewDataspace->hFreespace;

	mov	eax, DWORD PTR _lpPrevFreespace$[ebp]
	mov	ecx, DWORD PTR _lpNewDataspace$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	mov	DWORD PTR [eax+14], edx
$L7673:

; 623  : 
; 624  :                lpReturnPtr = (zPCHAR) lpNextFreespace;

	mov	eax, DWORD PTR _lpNextFreespace$[ebp]
	mov	DWORD PTR _lpReturnPtr$[ebp], eax

; 625  :                lpReturnPtr += sizeof( FreespaceRecord );

	mov	ecx, DWORD PTR _lpReturnPtr$[ebp]
	add	ecx, 18					; 00000012H
	mov	DWORD PTR _lpReturnPtr$[ebp], ecx

; 626  :                hReturnPtr = fnSysCreateHandle( lpDataHeader, lpReturnPtr );

	mov	edx, DWORD PTR _lpReturnPtr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	push	eax
	call	_fnSysCreateHandle@8
	mov	DWORD PTR _hReturnPtr$[ebp], eax

; 627  : 
; 628  :                // Point to the FreespaceStruct in front of the memory.
; 629  :                lpNewDataspace = (LPFREESPACE) lpReturnPtr - 1;

	mov	ecx, DWORD PTR _lpReturnPtr$[ebp]
	sub	ecx, 18					; 00000012H
	mov	DWORD PTR _lpNewDataspace$[ebp], ecx

; 630  : 
; 631  :                // Now initialize the FreespaceStruct in front of the memory.
; 632  : 
; 633  :                // Set the "next freespace pointer" in this used memory chunk
; 634  :                // to point back to the data header.
; 635  :                lpNextFreespace->hNextFreespace = (LPFREESPACE) hDataHeader;

	mov	edx, DWORD PTR _lpNextFreespace$[ebp]
	mov	eax, DWORD PTR _hDataHeader$[ebp]
	mov	DWORD PTR [edx+14], eax

; 636  : 
; 637  :                // For some reason ??? hFreespace of a used memory space must
; 638  :                // point to the beginning of the user memory area.
; 639  :                lpNextFreespace->hFreespace   = hReturnPtr;

	mov	ecx, DWORD PTR _lpNextFreespace$[ebp]
	mov	edx, DWORD PTR _hReturnPtr$[ebp]
	mov	DWORD PTR [ecx+10], edx

; 640  :                lpNextFreespace->nTableID     = iUsedFreespace;

	mov	eax, DWORD PTR _lpNextFreespace$[ebp]
	mov	WORD PTR [eax], 10026			; 0000272aH

; 641  :                lpNextFreespace->nUsedTableID = nTableID;

	mov	ecx, DWORD PTR _lpNextFreespace$[ebp]
	mov	dx, WORD PTR _nTableID$[ebp]
	mov	WORD PTR [ecx+4], dx

; 642  :                lpNextFreespace->ulFreeLth    = ulSize;

	mov	eax, DWORD PTR _lpNextFreespace$[ebp]
	mov	ecx, DWORD PTR _ulSize$[ebp]
	mov	DWORD PTR [eax+6], ecx

; 643  : 
; 644  :                lpDataHeader->ulCntUsedEntries++;

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+14]
	add	eax, 1
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR [ecx+14], eax

; 645  :                lpDataHeader->ulUsedSpace += ulSize;

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+18]
	add	eax, DWORD PTR _ulSize$[ebp]
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR [ecx+18], eax

; 646  : 
; 647  :                // Memory found so return the handle of the found memory space.
; 648  :                if ( lpReturnPtr )

	cmp	DWORD PTR _lpReturnPtr$[ebp], 0
	je	SHORT $L7682

; 650  :                   // Turn lpReturnPtr into a handle.
; 651  :                   if ( nInitialize )

	movsx	edx, WORD PTR _nInitialize$[ebp]
	test	edx, edx
	je	SHORT $L7681

; 652  :                      zmemset( lpReturnPtr, chInitByte, ulReqSize );

	mov	eax, DWORD PTR _ulReqSize$[ebp]
	push	eax
	movsx	ecx, BYTE PTR _chInitByte$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpReturnPtr$[ebp]
	push	edx
	call	_memset
	add	esp, 12					; 0000000cH
$L7681:

; 653  : 
; 654  :                   if ( nTableID && nTableID < iAttributeRecord )

	movsx	eax, WORD PTR _nTableID$[ebp]
	test	eax, eax
	je	SHORT $L7682
	movsx	ecx, WORD PTR _nTableID$[ebp]
	cmp	ecx, 10100				; 00002774H
	jge	SHORT $L7682

; 655  :                      memcpy( lpReturnPtr, &nTableID, sizeof( nTableID ) );

	push	2
	lea	edx, DWORD PTR _nTableID$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpReturnPtr$[ebp]
	push	eax
	call	_memcpy
	add	esp, 12					; 0000000cH
$L7682:

; 657  : 
; 658  : #ifdef ALLOC_FREE_TRACE
; 659  :                if ( AnchorBlock && nTableID != iAnchor )
; 660  :                {
; 661  :                   LPANCHOR lpAnchorBlock = AnchorBlock; // zGETPTR( g_hAnchorBlock );
; 662  :                   if ( lpAnchorBlock->bTraceMem )
; 663  :                   {
; 664  :                      zSHORT k;
; 665  :                      zLONG lHash = fnHashPointerAdd( lpAnchorBlock, (zPVOID) hReturnPtr, PrimeTable[ 4 ] );
; 666  :                      if ( lHash >= 0 )
; 667  :                      {
; 668  :                         lpAnchorBlock->pvMemId[ lHash ] = (zPVOID) hReturnPtr;
; 669  :                         lpAnchorBlock->lMemSize[ lHash ] = (zLONG) ulReqSize;
; 670  :                         lpAnchorBlock->pvMemTask[ lHash ] = zGETHNDL( lpCurrentTask );
; 671  : #if 1
; 672  :                         lBomb /= lBomb;
; 673  :                         lBomb++;
; 674  :                         for ( k = 0; SizeTable[ k ]; k++ )
; 675  :                         {
; 676  :                            if ( ulReqSize == SizeTable[ k ] && (AddressTable[ k ] == 0 || hReturnPtr == AddressTable[ k ]) )
; 677  :                            {
; 678  :                               TraceLine( "(mm) AllocDataspace: 0x%08x for task: 0x%08x allocated %d bytes at Id: %d",
; 679  :                                          lpAnchorBlock->pvMemId[ lHash ], lpAnchorBlock->pvMemTask[ lHash ],
; 680  :                                          lpAnchorBlock->lMemSize[ lHash ], lHash );
; 681  :                            }
; 682  :                         }
; 683  : #endif
; 684  :                      }
; 685  :                      else
; 686  :                         TraceLine( "(mm) AllocDataspace cannot Add: 0x%08x", hReturnPtr );
; 687  :                   }
; 688  :                }
; 689  : #endif
; 690  : 
; 691  :                if ( bMutexLocked )

	mov	ecx, DWORD PTR _bMutexLocked$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L7683

; 692  :                   zUNLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysUnlockCoreMutex@4
$L7683:

; 693  : 
; 694  :             // if ( lpNextFreespace->nUsedTableID == 10100 )
; 695  :             //    TraceLine( "AllocDataspace: (ID: %d %d) 0x%08x for Task: 0x%08x",
; 696  :             //               lpNextFreespace->nTableID, lpNextFreespace->nUsedTableID, lpNextFreespace, lpCurrentTask );
; 697  : 
; 698  :                return( hReturnPtr );

	mov	eax, DWORD PTR _hReturnPtr$[ebp]
	jmp	$L7634
$L7670:

; 700  : 
; 701  :             // Move on to next free chunk of space.
; 702  :             lpPrevFreespace = lpNextFreespace;

	mov	edx, DWORD PTR _lpNextFreespace$[ebp]
	mov	DWORD PTR _lpPrevFreespace$[ebp], edx

; 703  :             lpNextFreespace = zGETPTR( lpNextFreespace->hNextFreespace );

	mov	eax, DWORD PTR _lpNextFreespace$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextFreespace$[ebp], eax

; 704  : 
; 705  :          }  // while ( lpNextFreespace )

	jmp	$L7664
$L7669:

; 707  : 
; 708  :       // In this block there was no freespace that was big enough, so set the
; 709  :       // lMaxEmptyBlockSize at least 1 smaller than the desired size and try
; 710  :       // the next block.
; 711  :       if ( lpDataHeader->ulMaxEmptyBlockSize >= ulSize )

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+26]
	cmp	eax, DWORD PTR _ulSize$[ebp]
	jb	SHORT $L7685

; 712  :          lpDataHeader->ulMaxEmptyBlockSize = ulSize - 1;

	mov	ecx, DWORD PTR _ulSize$[ebp]
	sub	ecx, 1
	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR [edx+26], ecx
$L7685:

; 713  : 
; 714  :       // Go to the next block, or if it was the last one create a new block.
; 715  :       if ( lpDataHeader->hNextDataHeader )

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L7686

; 717  :          nAllocCnt++;

	mov	cx, WORD PTR _nAllocCnt$[ebp]
	add	cx, 1
	mov	WORD PTR _nAllocCnt$[ebp], cx

; 718  :          lpDataHeader = zGETPTR( lpDataHeader->hNextDataHeader );

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDataHeader$[ebp], eax

; 720  :       else

	jmp	$L7704
$L7686:

; 722  :          // We need a new shared memory block so create one and chain it in.
; 723  :          LPDATAHEADER hNewDataHeader;
; 724  :          LPDATAHEADER lpNewDataHeader;
; 725  :          void         *pTmp;
; 726  : 
; 727  :       // if ( AnchorBlock->nMemoryCeiling ||
; 728  :       //      AnchorBlock->nMemoryTraceThreshold )
; 729  :       // {
; 730  :       //    TraceLine( "(mm) fnAllocDataspace (%d) allocation for task: 0x%08x ======> Threshold: %d   Ceiling: %d",
; 731  :       //               nAllocCnt, lpFirstDataHeader->hTask,
; 732  :       //               AnchorBlock->nMemoryTraceThreshold, AnchorBlock->nMemoryCeiling );
; 733  :       // }
; 734  : 
; 735  :          if ( AnchorBlock->nMemoryTraceThreshold &&
; 736  :               nAllocCnt > AnchorBlock->nMemoryTraceThreshold )

	mov	ecx, DWORD PTR _AnchorBlock
	movsx	edx, WORD PTR [ecx+134]
	test	edx, edx
	je	SHORT $L7692
	movsx	eax, WORD PTR _nAllocCnt$[ebp]
	mov	ecx, DWORD PTR _AnchorBlock
	movsx	edx, WORD PTR [ecx+134]
	cmp	eax, edx
	jle	SHORT $L7692

; 738  :             TraceLine( "(mm) fnAllocDataspace (%d) allocation over threshold for task: 0x%08x ======> %d",
; 739  :                        nAllocCnt, AnchorBlock->nMemoryTraceThreshold );

	mov	eax, DWORD PTR _AnchorBlock
	movsx	ecx, WORD PTR [eax+134]
	push	ecx
	movsx	edx, WORD PTR _nAllocCnt$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0FB@JIKN@?$CImm?$CJ?5fnAllocDataspace?5?$CI?$CFd?$CJ?5alloc@ ; `string'
	call	_TraceLine
	add	esp, 12					; 0000000cH
$L7692:

; 741  : 
; 742  :          if ( AnchorBlock->nMemoryCeiling &&
; 743  :               nAllocCnt > AnchorBlock->nMemoryCeiling )

	mov	eax, DWORD PTR _AnchorBlock
	movsx	ecx, WORD PTR [eax+136]
	test	ecx, ecx
	je	SHORT $L7694
	movsx	edx, WORD PTR _nAllocCnt$[ebp]
	mov	eax, DWORD PTR _AnchorBlock
	movsx	ecx, WORD PTR [eax+136]
	cmp	edx, ecx
	jle	SHORT $L7694

; 745  :             TraceLine( "(mm) fnAllocDataspace (%d) allocation over ceiling for task: 0x%08x ======> %d",
; 746  :                        nAllocCnt, lpFirstDataHeader->hTask,
; 747  :                        AnchorBlock->nMemoryCeiling );

	mov	edx, DWORD PTR _AnchorBlock
	movsx	eax, WORD PTR [edx+136]
	push	eax
	mov	ecx, DWORD PTR _lpFirstDataHeader$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	movsx	eax, WORD PTR _nAllocCnt$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0EP@KINB@?$CImm?$CJ?5fnAllocDataspace?5?$CI?$CFd?$CJ?5alloc@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H

; 748  :             lpCurrentTask->bLoadAllocLimit = TRUE;

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	mov	edx, DWORD PTR [ecx+443]
	or	dh, 64					; 00000040H
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	DWORD PTR [eax+443], edx
$L7694:

; 750  : 
; 751  :          ulAllocBytes = AnchorBlock->lTaskAllocSize;

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+86]
	mov	DWORD PTR _ulAllocBytes$[ebp], edx

; 752  : 
; 753  :          if ( ulSize > ulAllocBytes )

	mov	eax, DWORD PTR _ulSize$[ebp]
	cmp	eax, DWORD PTR _ulAllocBytes$[ebp]
	jbe	SHORT $L7696

; 754  :             ulAllocBytes = ulSize + sizeof( FreespaceRecord );

	mov	ecx, DWORD PTR _ulSize$[ebp]
	add	ecx, 18					; 00000012H
	mov	DWORD PTR _ulAllocBytes$[ebp], ecx
$L7696:

; 755  : 
; 756  :          hNewDataHeader = (LPDATAHEADER) fnInitializeDataspace( lpCurrentTask,
; 757  :                                                                 (zCOREMEM) &pTmp,
; 758  :                                                                 lpDataHeader->nTableID,
; 759  :                                                                 0, ulAllocBytes, 0 );

	push	0
	mov	edx, DWORD PTR _ulAllocBytes$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	cx, WORD PTR [eax]
	push	ecx
	lea	edx, DWORD PTR _pTmp$7691[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnInitializeDataspace
	add	esp, 24					; 00000018H
	mov	DWORD PTR _hNewDataHeader$7689[ebp], eax

; 760  :          if ( hNewDataHeader )

	cmp	DWORD PTR _hNewDataHeader$7689[ebp], 0
	je	SHORT $L7700

; 762  :             lpNewDataHeader = zGETPTR( hNewDataHeader );

	mov	ecx, DWORD PTR _hNewDataHeader$7689[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewDataHeader$7690[ebp], eax

; 763  : 
; 764  :             // Chain next DataHeader to this DataHeader.
; 765  :             // I really don't know why the handle to the next Dataheader is
; 766  :             // stored in two variables???? (us)
; 767  :             lpNewDataHeader->lNextDataHandle = lpDataHeader->lNextDataHandle;

	mov	edx, DWORD PTR _lpNewDataHeader$7690[ebp]
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	mov	DWORD PTR [edx+34], ecx

; 768  :             lpNewDataHeader->hNextDataHeader = lpDataHeader->hNextDataHeader;

	mov	edx, DWORD PTR _lpNewDataHeader$7690[ebp]
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	mov	DWORD PTR [edx+38], ecx

; 769  :             lpNewDataHeader->hPrevDataHeader = (LPDATAHEADER) lpDataHeader->hDataHandle;

	mov	edx, DWORD PTR _lpNewDataHeader$7690[ebp]
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR [edx+42], ecx

; 770  :             lpNewDataHeader->hTask           = lpFirstDataHeader->hTask;

	mov	edx, DWORD PTR _lpNewDataHeader$7690[ebp]
	mov	eax, DWORD PTR _lpFirstDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR [edx+2], ecx

; 771  :             lpDataHeader->lNextDataHandle    = (zLONG) hNewDataHeader;

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR _hNewDataHeader$7689[ebp]
	mov	DWORD PTR [edx+34], eax

; 772  :             lpDataHeader->hNextDataHeader    = hNewDataHeader;

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR _hNewDataHeader$7689[ebp]
	mov	DWORD PTR [ecx+38], edx

; 773  :             lpDataHeader = lpNewDataHeader;

	mov	eax, DWORD PTR _lpNewDataHeader$7690[ebp]
	mov	DWORD PTR _lpDataHeader$[ebp], eax

; 775  :          else

	jmp	SHORT $L7704
$L7700:

; 777  :             TraceLineX( "(mm) fnAllocDataspace for AnchorBlock unsuccessful",
; 778  :                         (zLONG) AnchorBlock );

	mov	ecx, DWORD PTR _AnchorBlock
	push	ecx
	push	OFFSET FLAT:??_C@_0DD@GFFE@?$CImm?$CJ?5fnAllocDataspace?5for?5Anchor@ ; `string'
	call	_TraceLineX@8

; 779  :             if ( bMutexLocked )

	mov	edx, DWORD PTR _bMutexLocked$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L7707

; 780  :                zUNLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysUnlockCoreMutex@4
$L7707:

; 781  : 
; 782  :             return( 0 );

	xor	eax, eax
	jmp	SHORT $L7634
$L7704:

; 785  : 
; 786  :       hDataHeader = (zPVOID) lpDataHeader->hDataHandle;

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR _hDataHeader$[ebp], ecx
$L7660:

; 787  : 
; 788  :    } while ( lpDataHeader );

	cmp	DWORD PTR _lpDataHeader$[ebp], 0
	jne	$L7659

; 789  : 
; 790  :    if ( bMutexLocked )

	mov	edx, DWORD PTR _bMutexLocked$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L7709

; 791  :       zUNLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysUnlockCoreMutex@4
$L7709:

; 792  : 
; 793  :    TraceLineX( "(mm) fnAllocDataspace unsuccessful for size: ", ulReqSize );

	mov	eax, DWORD PTR _ulReqSize$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CO@OOLB@?$CImm?$CJ?5fnAllocDataspace?5unsuccessf@ ; `string'
	call	_TraceLineX@8

; 794  :    return( 0 );

	xor	eax, eax
$L7634:

; 795  : 
; 796  : } // end of:  fnAllocDataspace

	mov	esp, ebp
	pop	ebp
	ret	0
_fnAllocDataspace ENDP
_TEXT	ENDS
PUBLIC	??_C@_0EI@JPKG@FreeDataspace?3?5Memory?5to?5free?5al@ ; `string'
PUBLIC	??_C@_0BO@ILLO@Memory?5to?5free?5already?5freed?4?$AA@ ; `string'
PUBLIC	??_C@_0DF@DPJC@Memory?5Management?5Error?$CB?5Wrong?5D@ ; `string'
PUBLIC	??_C@_0DH@GLJH@Memory?5Management?$CB?5Used?5memory?5s@ ; `string'
PUBLIC	_fnFreeDataspace
EXTRN	_fnSysMessageBox@16:NEAR
EXTRN	_fnFreeSharedMemory@8:NEAR
;	COMDAT ??_C@_0EI@JPKG@FreeDataspace?3?5Memory?5to?5free?5al@
; File C:\10C\A\oe\KZOEMMAA.C
_DATA	SEGMENT
??_C@_0EI@JPKG@FreeDataspace?3?5Memory?5to?5free?5al@ DB 'FreeDataspace: '
	DB	'Memory to free already freed (ID: %d) 0x%08x   ++ 0x%08x', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@ILLO@Memory?5to?5free?5already?5freed?4?$AA@
_DATA	SEGMENT
??_C@_0BO@ILLO@Memory?5to?5free?5already?5freed?4?$AA@ DB 'Memory to free'
	DB	' already freed.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DF@DPJC@Memory?5Management?5Error?$CB?5Wrong?5D@
_DATA	SEGMENT
??_C@_0DF@DPJC@Memory?5Management?5Error?$CB?5Wrong?5D@ DB 'Memory Manage'
	DB	'ment Error! Wrong Dataheader Table ID: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DH@GLJH@Memory?5Management?$CB?5Used?5memory?5s@
_DATA	SEGMENT
??_C@_0DH@GLJH@Memory?5Management?$CB?5Used?5memory?5s@ DB 'Memory Manage'
	DB	'ment! Used memory size becomes negative: ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_Address$ = 8
_lpCurrentTask$ = -28
_nPrevTableID$ = -8
_ulSize$ = -20
_lpLong$ = -4
_lpDataHeader$ = -16
_lpFreespace$ = -24
_hTmp$ = -12
_lpFreespace1$7724 = -32
_lpnAddress$7735 = -36
_hDataHandle$7741 = -40
_lpPrevDataHeader$7742 = -44
_lpNextDataHeader$7745 = -48
_fnFreeDataspace PROC NEAR

; 815  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H

; 816  :    LPTASK        lpCurrentTask;
; 817  :    zSHORT        nPrevTableID;
; 818  :    zULONG        ulSize;
; 819  : // zULONG        ulFreeSize;  // the size of the freed space might be
; 820  :                               // joined with another freespace
; 821  :    zPLONG        lpLong;
; 822  :    LPDATAHEADER  lpDataHeader;
; 823  :    LPFREESPACE   lpFreespace;
; 824  :    zPVOID        hTmp;
; 825  : // LPFREESPACE   lpSearchFreespace;
; 826  : // LPFREESPACE   lpSearchPrevFreespace;
; 827  : // zPCHAR        lpSearch;
; 828  : 
; 829  :    if ( Address == 0 )

	cmp	DWORD PTR _Address$[ebp], 0
	jne	SHORT $L7721

; 830  :       return( 0 );

	xor	eax, eax
	jmp	$L7713
$L7721:

; 831  : 
; 832  : // if ( AnchorBlock->nStatus == 101 ) // DGC debugging hack.
; 833  : //    return( 0 );
; 834  : 
; 835  : #if 0
; 836  :    if ( g_bServerMode )
; 837  :    {
; 838  :       SysFree( Address );
; 839  :       return( 0 );
; 840  :    }
; 841  : #endif
; 842  : 
; 843  :    lpFreespace = (LPFREESPACE) Address;

	mov	eax, DWORD PTR _Address$[ebp]
	mov	DWORD PTR _lpFreespace$[ebp], eax

; 844  :    lpFreespace--;  // point to the FreespaceStruct in front of the memory

	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	sub	ecx, 18					; 00000012H
	mov	DWORD PTR _lpFreespace$[ebp], ecx

; 845  : 
; 846  :    // If it is an invalid request, return Address.
; 847  :    if ( lpFreespace->nTableID != iUsedFreespace &&
; 848  :         lpFreespace->nTableID != iUsedFreespace1 )

	mov	edx, DWORD PTR _lpFreespace$[ebp]
	movsx	eax, WORD PTR [edx]
	cmp	eax, 10026				; 0000272aH
	je	SHORT $L7723
	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	movsx	edx, WORD PTR [ecx]
	cmp	edx, 10051				; 00002743H
	je	SHORT $L7723

; 850  :       LPFREESPACE lpFreespace1 = lpFreespace;

	mov	eax, DWORD PTR _lpFreespace$[ebp]
	mov	DWORD PTR _lpFreespace1$7724[ebp], eax

; 851  : 
; 852  :       lpFreespace1++;

	mov	ecx, DWORD PTR _lpFreespace1$7724[ebp]
	add	ecx, 18					; 00000012H
	mov	DWORD PTR _lpFreespace1$7724[ebp], ecx

; 853  : 
; 854  : #ifdef ALLOC_FREE_TRACE
; 855  :       if ( AnchorBlock )
; 856  :       {
; 857  :          LPANCHOR lpAnchorBlock = AnchorBlock;  // zGETPTR( g_hAnchorBlock );
; 858  :          if ( lpAnchorBlock->bTraceMem )
; 859  :          {
; 860  :             zPVOID lHandle = (zPVOID) zGETHNDL( Address );
; 861  :             zLONG lHash = fnHashPointerRemove( lpAnchorBlock, lHandle, PrimeTable[ 4 ] );
; 862  : 
; 863  :             if ( lHash >= 0 )
; 864  :                TraceLine( "(mm) FreeDataspace located: 0x%08x for task: 0x%08x freed %d bytes at Id: %d",
; 865  :                           lpAnchorBlock->pvMemId[ lHash ], lpAnchorBlock->pvMemTask[ lHash ],
; 866  :                           lpAnchorBlock->lMemSize[ lHash ], lHash );
; 867  :             else
; 868  :                TraceLine( "(mm) FreeDataspace not found: 0x%08x", lHandle );
; 869  :          }
; 870  :       }
; 871  : #endif
; 872  : 
; 873  :       TraceLine( "FreeDataspace: Memory to free already freed (ID: %d) 0x%08x   ++ 0x%08x",
; 874  :                  lpFreespace->nTableID, lpFreespace, lpFreespace1 );

	mov	edx, DWORD PTR _lpFreespace1$7724[ebp]
	push	edx
	mov	eax, DWORD PTR _lpFreespace$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	movsx	edx, WORD PTR [ecx]
	push	edx
	push	OFFSET FLAT:??_C@_0EI@JPKG@FreeDataspace?3?5Memory?5to?5free?5al@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H

; 875  :       fnSysMessageBox( 0, "Zeidon Error", "Memory to free already freed.", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BO@ILLO@Memory?5to?5free?5already?5freed?4?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@EEMD@Zeidon?5Error?$AA@ ; `string'
	push	0
	call	_fnSysMessageBox@16

; 876  :    // fnIssueCoreError( 0, lpView, 16, 14, (zLONG) lpFreespace->nPrevTableID, 0, 0 );
; 877  :       return( Address );

	mov	eax, DWORD PTR _Address$[ebp]
	jmp	$L7713
$L7723:

; 879  : 
; 880  :    // TODO: We only need to lock the mutex when freeing memory from the
; 881  :    // system task.  However, the current state doesn't allow us to determine
; 882  :    // what the task is from the freespace struct.  We need to make a change
; 883  :    // that allows us to find the task and then check to see if the task is
; 884  :    // the system task before locking the mutex.
; 885  :    zLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysLockCoreMutex@4

; 886  : 
; 887  : #ifdef ALLOC_FREE_TRACE
; 888  :    if ( AnchorBlock )
; 889  :    {
; 890  :       LPANCHOR lpAnchorBlock = AnchorBlock;  // zGETPTR( g_hAnchorBlock );
; 891  :       if ( lpAnchorBlock->bTraceMem )
; 892  :       {
; 893  :          zPVOID lHandle = (zPVOID) zGETHNDL( Address );
; 894  :          zLONG lHash = fnHashPointerRemove( lpAnchorBlock, lHandle, PrimeTable[ 4 ] );
; 895  : 
; 896  :          if ( lHash >= 0 )
; 897  :          {
; 898  : #if 1
; 899  :             if ( lpAnchorBlock->lMemSize[ lHash ] < 0 )
; 900  :             {
; 901  :                lpAnchorBlock->lMemSize[ lHash ] *= -1;
; 902  :                TraceLine( "(mm) FreeDataspace: 0x%08x for task: 0x%08x freed (previous leak) %d bytes at Id: %d",
; 903  :                           lpAnchorBlock->pvMemId[ lHash ], lpAnchorBlock->pvMemTask[ lHash ],
; 904  :                           lpAnchorBlock->lMemSize[ lHash ], lHash );
; 905  :             }
; 906  :             else
; 907  :             if ( lpAnchorBlock->lMemSize[ lHash ] == 1428 )
; 908  :             {
; 909  :                TraceLine( "(mm) FreeDataspace: 0x%08x for task: 0x%08x freed %d bytes at Id: %d",
; 910  :                           lpAnchorBlock->pvMemId[ lHash ], lpAnchorBlock->pvMemTask[ lHash ],
; 911  :                           lpAnchorBlock->lMemSize[ lHash ], lHash );
; 912  :             }
; 913  : #else
; 914  :             TraceLine( "(mm) FreeDataspace: 0x%08x for task: 0x%08x freed %d bytes at Id: %d",
; 915  :                        lpAnchorBlock->pvMemId[ lHash ], lpAnchorBlock->pvMemTask[ lHash ],
; 916  :                        lpAnchorBlock->lMemSize[ lHash ], lHash );
; 917  : #endif
; 918  :             if ( lHash >= PrimeTable[ 4 ] && lHash <= lpAnchorBlock->lMemMax )
; 919  :             {
; 920  :                zLONG lLth = (lpAnchorBlock->lMemMax - lHash) * sizeof( zLONG );
; 921  :                if ( lLth )
; 922  :                {
; 923  :                   zmemcpy( lpAnchorBlock->pvMemId + lHash, lpAnchorBlock->pvMemId + lHash + 1, lLth );
; 924  :                   zmemcpy( lpAnchorBlock->lMemSize + lHash, lpAnchorBlock->lMemSize + lHash + 1, lLth );
; 925  :                   zmemcpy( lpAnchorBlock->pvMemTask + lHash, lpAnchorBlock->pvMemTask + lHash + 1, lLth );
; 926  :                }
; 927  : 
; 928  :                lpAnchorBlock->pvMemId[ lpAnchorBlock->lMemMax ] = 0;
; 929  :                lpAnchorBlock->lMemMax--;
; 930  :             }
; 931  :             else
; 932  :             if ( lHash >= 0 )
; 933  :                lpAnchorBlock->pvMemId[ lHash ] = 0;
; 934  :          }
; 935  :          else
; 936  :             TraceLine( "(mm) FreeDataspace cannot find 0x%08x", lHandle );
; 937  :       }
; 938  :    }
; 939  : #endif
; 940  : 
; 941  :    // The "next freespace pointer" in a used memory chunk points back to
; 942  :    // the data header.
; 943  :    // Retrieve Dataspace Header from alloc prefix
; 944  :    lpDataHeader = (LPDATAHEADER) zGETPTR( lpFreespace->hNextFreespace );

	mov	eax, DWORD PTR _lpFreespace$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDataHeader$[ebp], eax

; 945  :    lpCurrentTask = zGETPTR( lpDataHeader->hTask );

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 946  : 
; 947  :    // If the current task is in the process being deleted we don't need to
; 948  :    // worry about keeping track of the deallocations.  DeleteTask will delete
; 949  :    // the memory pages (i.e. DataHeaders) all at once.
; 950  :    if ( lpCurrentTask && lpCurrentTask->bShutdown )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	je	SHORT $L7730
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	mov	edx, DWORD PTR [ecx+443]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	je	SHORT $L7730

; 952  :       zUNLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysUnlockCoreMutex@4

; 953  :       return( 0 );

	xor	eax, eax
	jmp	$L7713
$L7730:

; 955  : 
; 956  :    // ### Emergency fix 24.4.1998,HH
; 957  :    // ### lpDataHeader = 0 in Frank Holzenthal's case.
; 958  :    // ### We assume that the address has been freed already.
; 959  :    // ### So, we just return (better than crash).
; 960  :    if ( lpDataHeader == 0 )

	cmp	DWORD PTR _lpDataHeader$[ebp], 0
	jne	SHORT $L7731

; 962  :       zUNLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysUnlockCoreMutex@4

; 963  :       return( 0 );

	xor	eax, eax
	jmp	$L7713
$L7731:

; 965  : 
; 966  :    // ###
; 967  :    if ( lpDataHeader->nTableID != iDataHeader )

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	movsx	ecx, WORD PTR [eax]
	cmp	ecx, 10002				; 00002712H
	je	SHORT $L7732

; 969  :       TraceLineI( "Memory Management Error! Wrong Dataheader Table ID: ",
; 970  :                   lpDataHeader->nTableID );

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	movsx	eax, WORD PTR [edx]
	push	eax
	push	OFFSET FLAT:??_C@_0DF@DPJC@Memory?5Management?5Error?$CB?5Wrong?5D@ ; `string'
	call	_TraceLineI@8
$L7732:

; 974  : 
; 975  :    // Why should we only lock the mutex when the "MainTask" is doing a free??
; 976  :    // We have to lock always to prevent one thread from changing the chains when
; 977  :    // a second one is doing a alloc or a free too.
; 978  :    /*if ( lpDataHeader->ulTaskID == AnchorBlock->lMainTaskID )  // TODO: only for main task because
; 979  :    {                                                            // otherwise the only one to change
; 980  :       zLOCK_MUTEX( zMUTEX_MEMORY );                             // the chain is the task itself,
; 981  :    }*/                                                          // which is single-threaded
; 982  : 
; 983  :    if ( lpCurrentTask )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	je	SHORT $L7734

; 984  :       lpCurrentTask->ulTrackTaskMemory -= lpFreespace->ulFreeLth;

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	mov	edx, DWORD PTR _lpFreespace$[ebp]
	mov	eax, DWORD PTR [ecx+162]
	sub	eax, DWORD PTR [edx+6]
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	mov	DWORD PTR [ecx+162], eax
$L7734:

; 985  : 
; 986  : // if ( lpFreespace->nUsedTableID == 10100 )
; 987  : //    TraceLine( "FreeDataspace: (ID: %d %d) 0x%08x for Task: 0x%08x",
; 988  : //               lpFreespace->nTableID, lpFreespace->nUsedTableID, lpFreespace, lpCurrentTask );
; 989  : 
; 990  : // TraceLine( "fnFreeDataspace freeing (%d) Freespace: 0x%08x",
; 991  : //            lpFreespace->ulDebugID, lpFreespace );
; 992  : 
; 993  :    // Get size of area to be freed.
; 994  :    ulSize = lpFreespace->ulFreeLth;

	mov	edx, DWORD PTR _lpFreespace$[ebp]
	mov	eax, DWORD PTR [edx+6]
	mov	DWORD PTR _ulSize$[ebp], eax

; 998  :       zPSHORT lpnAddress;
; 999  : 
; 1000 :       lpnAddress   = (zPSHORT) Address;

	mov	ecx, DWORD PTR _Address$[ebp]
	mov	DWORD PTR _lpnAddress$7735[ebp], ecx

; 1001 :       nPrevTableID = *lpnAddress;

	mov	edx, DWORD PTR _lpnAddress$7735[ebp]
	mov	ax, WORD PTR [edx]
	mov	WORD PTR _nPrevTableID$[ebp], ax

; 1003 : 
; 1004 :    // Clear out first few bytes of area in case an internal table was stored
; 1005 :    // there (so the table id is cleared).
; 1006 :    // Minimum size of an allocated block is 4 Bytes!
; 1007 :    lpLong = (zPLONG) Address;

	mov	ecx, DWORD PTR _Address$[ebp]
	mov	DWORD PTR _lpLong$[ebp], ecx

; 1008 :    *lpLong = 0;

	mov	edx, DWORD PTR _lpLong$[ebp]
	mov	DWORD PTR [edx], 0

; 1009 : 
; 1010 :    // Set user-data to all 0.
; 1011 : // zmemset( Address, 0,
; 1012 : //          (unsigned int) (ulSize - (sizeof( FreespaceRecord ))) );
; 1013 : 
; 1014 :    // Reset nTableID to Freespace
; 1015 :    lpFreespace->nTableID     = iFreespace;

	mov	eax, DWORD PTR _lpFreespace$[ebp]
	mov	WORD PTR [eax], 10027			; 0000272bH

; 1016 :    lpFreespace->nUsedTableID = 0;

	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	mov	WORD PTR [ecx+4], 0

; 1017 :    lpFreespace->nPrevTableID = nPrevTableID;

	mov	edx, DWORD PTR _lpFreespace$[ebp]
	mov	ax, WORD PTR _nPrevTableID$[ebp]
	mov	WORD PTR [edx+2], ax

; 1018 : 
; 1019 :    // Change the freespace handle to point to the current freespace structure
; 1020 :    // (it used to point to the useable space AFTER the freespace structure).
; 1021 :    hTmp = lpFreespace->hFreespace;

	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	mov	DWORD PTR _hTmp$[ebp], edx

; 1022 :    lpFreespace->hFreespace = fnSysCreateHandle( lpDataHeader, lpFreespace );

	mov	eax, DWORD PTR _lpFreespace$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	push	ecx
	call	_fnSysCreateHandle@8
	mov	edx, DWORD PTR _lpFreespace$[ebp]
	mov	DWORD PTR [edx+10], eax

; 1023 : 
; 1024 :    // Bump down used entries
; 1025 :    lpDataHeader->ulCntUsedEntries--;

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	sub	ecx, 1
	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR [edx+14], ecx

; 1026 :    lpDataHeader->ulUsedSpace -= lpFreespace->ulFreeLth;

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	mov	edx, DWORD PTR [eax+18]
	sub	edx, DWORD PTR [ecx+6]
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR [eax+18], edx

; 1027 :    lpDataHeader->ulFreedMemSize += lpFreespace->ulFreeLth;

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	mov	eax, DWORD PTR _lpFreespace$[ebp]
	add	edx, DWORD PTR [eax+6]
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR [ecx+30], edx

; 1028 :    if (lpDataHeader->ulUsedSpace & 0x80000000)

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+18]
	and	eax, -2147483648			; 80000000H
	test	eax, eax
	je	SHORT $L7738

; 1030 :       TraceLineI( "Memory Management! Used memory size becomes negative: ",
; 1031 :                   lpDataHeader->ulUsedSpace );

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	push	OFFSET FLAT:??_C@_0DH@GLJH@Memory?5Management?$CB?5Used?5memory?5s@ ; `string'
	call	_TraceLineI@8
$L7738:

; 1033 : 
; 1034 :    // We have now freed up an entry!  If the entry count is 0 and this is
; 1035 :    // not the first dataspace for the task, return the space to the system.
; 1036 :    if ( lpDataHeader->ulCntUsedEntries == 0 && lpDataHeader->hPrevDataHeader )

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	cmp	DWORD PTR [eax+14], 0
	jne	$L7740
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	cmp	DWORD PTR [ecx+42], 0
	je	SHORT $L7740

; 1038 :       zLONG        hDataHandle;
; 1039 :       LPDATAHEADER lpPrevDataHeader;
; 1040 : 
; 1041 :       hDataHandle = lpDataHeader->hDataHandle;

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+6]
	mov	DWORD PTR _hDataHandle$7741[ebp], eax

; 1042 :    // TraceLineI( "Free Block:          ", ((unsigned long) hDataHandle >> 24));
; 1043 : 
; 1044 :       // Chain Previous Dataspace to next Dataspace
; 1045 :       lpPrevDataHeader = zGETPTR( lpDataHeader->hPrevDataHeader );

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevDataHeader$7742[ebp], eax

; 1046 :       hDataHandle = lpPrevDataHeader->lNextDataHandle;

	mov	eax, DWORD PTR _lpPrevDataHeader$7742[ebp]
	mov	ecx, DWORD PTR [eax+34]
	mov	DWORD PTR _hDataHandle$7741[ebp], ecx

; 1047 :       lpPrevDataHeader->lNextDataHandle = lpDataHeader->lNextDataHandle;

	mov	edx, DWORD PTR _lpPrevDataHeader$7742[ebp]
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	mov	DWORD PTR [edx+34], ecx

; 1048 :       lpPrevDataHeader->hNextDataHeader = lpDataHeader->hNextDataHeader;

	mov	edx, DWORD PTR _lpPrevDataHeader$7742[ebp]
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	mov	DWORD PTR [edx+38], ecx

; 1049 :       if ( lpDataHeader->hNextDataHeader )

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	cmp	DWORD PTR [edx+38], 0
	je	SHORT $L7744

; 1051 :          LPDATAHEADER lpNextDataHeader;
; 1052 : 
; 1053 :          lpNextDataHeader = zGETPTR( lpDataHeader->hNextDataHeader );

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextDataHeader$7745[ebp], eax

; 1054 :          lpNextDataHeader->hPrevDataHeader = lpDataHeader->hPrevDataHeader;

	mov	edx, DWORD PTR _lpNextDataHeader$7745[ebp]
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	mov	DWORD PTR [edx+42], ecx
$L7744:

; 1056 : 
; 1057 :       fnFreeSharedMemory( lpCurrentTask, hDataHandle );

	mov	edx, DWORD PTR _hDataHandle$7741[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnFreeSharedMemory@8

; 1058 : 
; 1059 :       zUNLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysUnlockCoreMutex@4

; 1060 : 
; 1061 :       return( 0 );  // return 0 address for space freed

	xor	eax, eax
	jmp	SHORT $L7713
$L7740:

; 1063 : 
; 1064 :    hTmp = 0;

	mov	DWORD PTR _hTmp$[ebp], 0

; 1065 :    if ( lpDataHeader->ulFreedMemSize >
; 1066 :         lpDataHeader->ulUseableSize / GARBAGE_COLLECT_FACTOR )

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [ecx+10]
	xor	edx, edx
	mov	ecx, 20					; 00000014H
	div	ecx
	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	cmp	DWORD PTR [edx+30], eax
	jbe	SHORT $L7747

; 1068 :       // Now clean up all Freed Memory chunks that are not yet chained
; 1069 :       // into the freespace chain.
; 1070 :       hTmp = fnChainFreespaces( lpDataHeader );

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	push	eax
	call	_fnChainFreespaces
	add	esp, 4
	mov	DWORD PTR _hTmp$[ebp], eax
$L7747:

; 1072 : 
; 1073 :    zUNLOCK_MUTEX( zMUTEX_MEMORY );

	push	1
	call	_fnSysUnlockCoreMutex@4

; 1074 : 
; 1075 :    return( hTmp );  // return null for space freed

	mov	eax, DWORD PTR _hTmp$[ebp]
$L7713:

; 1076 : 
; 1077 : } // end of:  fnFreeDataspace

	mov	esp, ebp
	pop	ebp
	ret	0
_fnFreeDataspace ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BK@PMAL@Freespace?5request?5invalid?$AA@	; `string'
PUBLIC	??_C@_0BM@BEKD@Data?5header?5request?5invalid?$AA@ ; `string'
PUBLIC	_fnGetDataspaceLength
;	COMDAT ??_C@_0BK@PMAL@Freespace?5request?5invalid?$AA@
; File C:\10C\A\oe\KZOEMMAA.C
_DATA	SEGMENT
??_C@_0BK@PMAL@Freespace?5request?5invalid?$AA@ DB 'Freespace request inv'
	DB	'alid', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@BEKD@Data?5header?5request?5invalid?$AA@
_DATA	SEGMENT
??_C@_0BM@BEKD@Data?5header?5request?5invalid?$AA@ DB 'Data header reques'
	DB	't invalid', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_Address$ = 8
_lpDataHeader$ = -4
_lpFreespace$ = -8
_fnGetDataspaceLength PROC NEAR

; 1096 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 1097 :    LPDATAHEADER  lpDataHeader;
; 1098 :    LPFREESPACE   lpFreespace;
; 1099 : 
; 1100 :    if ( Address == 0 )

	cmp	DWORD PTR _Address$[ebp], 0
	jne	SHORT $L7753

; 1101 :       return( 0 );

	xor	eax, eax
	jmp	SHORT $L7750
$L7753:

; 1102 : 
; 1103 : #if 0
; 1104 :    if ( g_bServerMode )
; 1105 :       return( SysMemSize( Address ) );
; 1106 : #endif
; 1107 : 
; 1108 :    lpFreespace = (LPFREESPACE) Address;

	mov	eax, DWORD PTR _Address$[ebp]
	mov	DWORD PTR _lpFreespace$[ebp], eax

; 1109 :    lpFreespace--;

	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	sub	ecx, 18					; 00000012H
	mov	DWORD PTR _lpFreespace$[ebp], ecx

; 1110 : 
; 1111 :    // If it is an invalid request, return 0.
; 1112 :    if ( lpFreespace->nTableID != iUsedFreespace &&
; 1113 :         lpFreespace->nTableID != iUsedFreespace1 )

	mov	edx, DWORD PTR _lpFreespace$[ebp]
	movsx	eax, WORD PTR [edx]
	cmp	eax, 10026				; 0000272aH
	je	SHORT $L7755
	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	movsx	edx, WORD PTR [ecx]
	cmp	edx, 10051				; 00002743H
	je	SHORT $L7755

; 1115 :       fnSysMessageBox( 0, "Zeidon Error",
; 1116 :                        "Freespace request invalid", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BK@PMAL@Freespace?5request?5invalid?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@EEMD@Zeidon?5Error?$AA@ ; `string'
	push	0
	call	_fnSysMessageBox@16

; 1117 :    // fnIssueCoreError( 0, lpView, 16, 14, (zLONG) lpFreespace->nPrevTableID, 0, 0 );
; 1118 :       return( 0 );

	xor	eax, eax
	jmp	SHORT $L7750
$L7755:

; 1120 : 
; 1121 :    // Retrieve Dataspace Header from alloc prefix
; 1122 :    lpDataHeader = (LPDATAHEADER) zGETPTR( lpFreespace->hNextFreespace );

	mov	eax, DWORD PTR _lpFreespace$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDataHeader$[ebp], eax

; 1123 :    if ( lpDataHeader->nTableID != iDataHeader )

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	movsx	eax, WORD PTR [edx]
	cmp	eax, 10002				; 00002712H
	je	SHORT $L7759

; 1125 :       fnSysMessageBox( 0, "Zeidon Error",
; 1126 :                        "Data header request invalid", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BM@BEKD@Data?5header?5request?5invalid?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@EEMD@Zeidon?5Error?$AA@ ; `string'
	push	0
	call	_fnSysMessageBox@16

; 1127 :    // fnIssueCoreError( 0, lpView, 16, 15, 0, 0, 0 );
; 1128 :       return( 0 );

	xor	eax, eax
	jmp	SHORT $L7750
$L7759:

; 1130 : 
; 1131 :    // Get size of area
; 1132 :    return( lpFreespace->ulFreeLth - sizeof( FreespaceRecord ) );

	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	mov	eax, DWORD PTR [ecx+6]
	sub	eax, 18					; 00000012H
$L7750:

; 1133 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnGetDataspaceLength ENDP
_TEXT	ENDS
PUBLIC	??_C@_0DK@MPFG@Allocating?5new?5space?5for?5Task?5?$CI0@ ; `string'
EXTRN	_g_pfnGetHndl:DWORD
EXTRN	_fnAllocSharedMemory@16:NEAR
;	COMDAT ??_C@_0DK@MPFG@Allocating?5new?5space?5for?5Task?5?$CI0@
; File C:\10C\A\oe\KZOEMMAA.C
_DATA	SEGMENT
??_C@_0DK@MPFG@Allocating?5new?5space?5for?5Task?5?$CI0@ DB 'Allocating n'
	DB	'ew space for Task (0x%08x) [0x%08x] size = %d', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpCurrentTask$ = 8
_Address$ = 12
_ulBytes$ = 24
_cpcShareName$ = 28
_ulHandle$ = -12
_lpDataHeader$ = -8
_lpFreespace$ = -16
_ulTotalSize$ = -4
_fnInitializeDataspace PROC NEAR

; 1169 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 1170 :    zULONG       ulHandle = 0;

	mov	DWORD PTR _ulHandle$[ebp], 0

; 1171 :    LPDATAHEADER lpDataHeader;
; 1172 :    LPFREESPACE  lpFreespace;
; 1173 :    zULONG       ulTotalSize;
; 1174 : 
; 1175 : #if 0
; 1176 :    // If we're running in server mode then we will be allocating local memory,
; 1177 :    // so there's nothing to do.
; 1178 :    if ( g_bServerMode )
; 1179 :    {
; 1180 :       *Address = SysMalloc( ulBytes );
; 1181 :       return( (zLONG) *Address );
; 1182 :    }
; 1183 : #endif
; 1184 : 
; 1185 :    ulTotalSize = ulBytes + sizeof( DataHeaderRecord );

	mov	eax, DWORD PTR _ulBytes$[ebp]
	add	eax, 64					; 00000040H
	mov	DWORD PTR _ulTotalSize$[ebp], eax

; 1186 :    if ( ulTotalSize % zALIGN_MEM_SIZE )

	mov	eax, DWORD PTR _ulTotalSize$[ebp]
	xor	edx, edx
	mov	ecx, 4
	div	ecx
	test	edx, edx
	je	SHORT $L7780

; 1187 :       ulTotalSize += zALIGN_MEM_SIZE - ulTotalSize % zALIGN_MEM_SIZE;

	mov	eax, DWORD PTR _ulTotalSize$[ebp]
	xor	edx, edx
	mov	ecx, 4
	div	ecx
	mov	eax, 4
	sub	eax, edx
	mov	ecx, DWORD PTR _ulTotalSize$[ebp]
	add	ecx, eax
	mov	DWORD PTR _ulTotalSize$[ebp], ecx
$L7780:

; 1188 : 
; 1189 :    // Allocate space for shared memory + data header.
; 1190 :    ulHandle = fnAllocSharedMemory( (zCOREMEM) Address, lpCurrentTask,
; 1191 :                                    ulTotalSize, cpcShareName );

	mov	edx, DWORD PTR _cpcShareName$[ebp]
	push	edx
	mov	eax, DWORD PTR _ulTotalSize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _Address$[ebp]
	push	edx
	call	_fnAllocSharedMemory@16
	mov	DWORD PTR _ulHandle$[ebp], eax

; 1192 :    if ( *Address == 0 )

	mov	eax, DWORD PTR _Address$[ebp]
	cmp	DWORD PTR [eax], 0
	jne	SHORT $L7782

; 1193 :       return( 0 );

	xor	eax, eax
	jmp	$L7774
$L7782:

; 1194 : 
; 1195 :    // Initialize Header To Table.
; 1196 :    lpDataHeader = (LPDATAHEADER) *Address;

	mov	ecx, DWORD PTR _Address$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lpDataHeader$[ebp], edx

; 1197 : 
; 1198 :    // Clear header to 000000000...
; 1199 :    zmemset( lpDataHeader, 0, sizeof( DataHeaderRecord ) );

	push	64					; 00000040H
	push	0
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 1200 : 
; 1201 :    lpDataHeader->nTableID            = iDataHeader;

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	WORD PTR [ecx], 10002			; 00002712H

; 1202 :    lpDataHeader->ulMaxEmptyBlockSize = ulBytes;

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR _ulBytes$[ebp]
	mov	DWORD PTR [edx+26], eax

; 1203 :    lpDataHeader->hTask               = zGETHNDL( lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR [edx+2], eax

; 1204 :    lpDataHeader->hDataHandle         = ulHandle;

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR _ulHandle$[ebp]
	mov	DWORD PTR [eax+6], ecx

; 1205 :    lpDataHeader->ulUseableSize       = ulBytes; // + sizeof( DataHeaderRecord );

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR _ulBytes$[ebp]
	mov	DWORD PTR [edx+10], eax

; 1206 : 
; 1207 :    if ( g_bTraceDataspace )

	xor	ecx, ecx
	mov	cl, BYTE PTR _g_bTraceDataspace
	test	ecx, ecx
	je	SHORT $L7786

; 1209 :       TraceLine( "Allocating new space for Task (0x%08x) [0x%08x] size = %d",
; 1210 :                  lpDataHeader->hTask, lpDataHeader, lpDataHeader->ulUseableSize );

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	push	OFFSET FLAT:??_C@_0DK@MPFG@Allocating?5new?5space?5for?5Task?5?$CI0@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H
$L7786:

; 1212 : 
; 1213 :    // Initialize Table.
; 1214 :    lpFreespace = (LPFREESPACE) (lpDataHeader + 1);

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	add	ecx, 64					; 00000040H
	mov	DWORD PTR _lpFreespace$[ebp], ecx

; 1215 :    lpFreespace->hFreespace = fnSysCreateHandle( lpDataHeader, lpFreespace );

	mov	edx, DWORD PTR _lpFreespace$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	push	eax
	call	_fnSysCreateHandle@8
	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	mov	DWORD PTR [ecx+10], eax

; 1216 : 
; 1217 :    // Initialize the root freespace record contained in header record.
; 1218 : // lpDataHeader->Freespace.nTableID      = nTableID;
; 1219 :    lpDataHeader->Freespace.nTableID      = iFreespace;

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	WORD PTR [edx+46], 10027		; 0000272bH

; 1220 :    lpDataHeader->Freespace.nPrevTableID  = 0;

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	WORD PTR [eax+48], 0

; 1221 :    lpDataHeader->Freespace.ulFreeLth     = 0;  // this doesn't own any space

	mov	ecx, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR [ecx+52], 0

; 1222 :    lpDataHeader->ulCntFreeSpaces         = 1;  // there is one big initial freespace

	mov	edx, DWORD PTR _lpDataHeader$[ebp]
	mov	DWORD PTR [edx+22], 1

; 1223 :    lpDataHeader->Freespace.hNextFreespace = (LPFREESPACE) lpFreespace->hFreespace;

	mov	eax, DWORD PTR _lpDataHeader$[ebp]
	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	mov	DWORD PTR [eax+60], edx

; 1224 : 
; 1225 : // lpFreespace->nTableID       = nTableID;
; 1226 :    lpFreespace->nTableID       = iFreespace;

	mov	eax, DWORD PTR _lpFreespace$[ebp]
	mov	WORD PTR [eax], 10027			; 0000272bH

; 1227 :    lpFreespace->nPrevTableID   = 0;

	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	mov	WORD PTR [ecx+2], 0

; 1228 :    lpFreespace->ulFreeLth      = ulBytes;

	mov	edx, DWORD PTR _lpFreespace$[ebp]
	mov	eax, DWORD PTR _ulBytes$[ebp]
	mov	DWORD PTR [edx+6], eax

; 1229 :    lpFreespace->hNextFreespace = 0;

	mov	ecx, DWORD PTR _lpFreespace$[ebp]
	mov	DWORD PTR [ecx+14], 0

; 1230 : 
; 1231 :    return( ulHandle );   // return the handle to the new dataspace.

	mov	eax, DWORD PTR _ulHandle$[ebp]
$L7774:

; 1232 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnInitializeDataspace ENDP
_TEXT	ENDS
END
