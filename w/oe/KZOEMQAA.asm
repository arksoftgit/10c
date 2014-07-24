	TITLE	C:\10C\A\oe\KZOEMQAA.C
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
;	COMDAT ??_C@_08JIIE@KZMSGQOO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04KHMB@QMsg?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CH@DILJ@MessageSend?5Task?5Error?3?5?$CFs?5?5?$CFs?5?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CP@DHOD@MessageSend?5Interface?5Inactive?3?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@IADP@Message?5Interface?5Inactive?3?5?$CFs?5?$CF@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CM@LDEE@MessageSend?5Recursive?5Error?3?5?$CFs?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CN@PJMD@MessageSend?5Interface?5Active?3?5?$CFs@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@BDGH@WebUserErrorMessages?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EM@CPND@MessagePrompt?5Trying?5to?5pop?5up?5a@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09NBP@ZeidonWeb?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06DPMO@Client?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05LDDM@Title?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04BNNJ@Text?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04ODNG@View?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CF@PEEM@MessagePrompt?5Task?5Error?3?5?$CFs?5?5?$CFs@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@IFDH@Interface?5Inactive?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CK@MJKJ@MessagePrompt?5Recursive?5Error?3?5?$CF@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DD@HLOO@MessagePrompt?5Trying?5to?5pop?5up?5a@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04FCOP@Type?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CN@DBII@MessagePromptForInput?5Task?5Error@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DC@GIEP@MessagePromptForInput?5Recursive?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@FPIH@MessagePresent?5Task?5Error?3?5?$CFd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CD@OKDI@MessagePresent?5Recursive?5Error?3?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@EKFD@TaskAppRecord?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@DNBO@fnFindMQInterface?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@PICA@MQInterfaceRecord?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@ODIO@Cannot?5load?5Message?5Object?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@LGH@System?5Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??_C@_08JIIE@KZMSGQOO?$AA@			; `string'
PUBLIC	??_C@_04KHMB@QMsg?$AA@				; `string'
PUBLIC	_fnGetMsgQ@12
EXTRN	_ActivateEmptyObjectInstance@16:NEAR
EXTRN	_CreateViewFromViewForTask@12:NEAR
EXTRN	_GetViewByName@16:NEAR
EXTRN	_SetNameForView@16:NEAR
EXTRN	_DropView@4:NEAR
EXTRN	_CheckExistenceOfEntity@8:NEAR
EXTRN	_SetCursorFirstEntityByInteger@20:NEAR
EXTRN	_SfLockView@4:NEAR
EXTRN	_g_pfnGetPtr:DWORD
EXTRN	_szlId:DWORD
EXTRN	_szl__MSGQ:DWORD
EXTRN	_szlTask:DWORD
;	COMDAT ??_C@_08JIIE@KZMSGQOO?$AA@
; File C:\10C\A\oe\KZOEMQAA.C
_DATA	SEGMENT
??_C@_08JIIE@KZMSGQOO?$AA@ DB 'KZMSGQOO', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_04KHMB@QMsg?$AA@
_DATA	SEGMENT
??_C@_04KHMB@QMsg?$AA@ DB 'QMsg', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vSubtask$ = 8
_lpTask$ = 12
_lFlag$ = 16
_lpCurrentTask$ = -8
_vMsgQ$ = -4
_fnGetMsgQ@12 PROC NEAR

; 82   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 83   :    LPTASK lpCurrentTask;
; 84   :    zVIEW  vMsgQ;
; 85   : 
; 86   :    if ( lpTask )

	cmp	DWORD PTR _lpTask$[ebp], 0
	je	SHORT $L7582

; 87   :       lpCurrentTask = (LPTASK) lpTask;

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 88   :    else

	jmp	SHORT $L7584
$L7582:

; 89   :       lpCurrentTask = zGETPTR( vSubtask->hTask );

	mov	ecx, DWORD PTR _vSubtask$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
$L7584:

; 90   : 
; 91   :    GetViewByName( &vMsgQ, szl__MSGQ, vSubtask, zLEVEL_TASK );

	push	2
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _szl__MSGQ
	push	ecx
	lea	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_GetViewByName@16

; 92   :    if ( vMsgQ == 0 )

	cmp	DWORD PTR _vMsgQ$[ebp], 0
	jne	SHORT $L7588

; 94   :       if ( lpCurrentTask->vWebSubtask )

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	cmp	DWORD PTR [eax+28], 0
	je	SHORT $L7588

; 96   :          if ( ActivateEmptyObjectInstance( &vMsgQ, "KZMSGQOO",
; 97   :                                            lpCurrentTask->vWebSubtask,
; 98   :                                            zMULTIPLE ) >= 0 )

	push	256					; 00000100H
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	push	OFFSET FLAT:??_C@_08JIIE@KZMSGQOO?$AA@	; `string'
	lea	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_ActivateEmptyObjectInstance@16
	movsx	ecx, ax
	test	ecx, ecx
	jl	SHORT $L7588

; 100  :             SetNameForView( vMsgQ, szl__MSGQ,
; 101  :                             lpCurrentTask->vWebSubtask, zLEVEL_TASK );

	push	2
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	eax, DWORD PTR [edx+28]
	push	eax
	mov	ecx, DWORD PTR _szl__MSGQ
	push	ecx
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetNameForView@16
$L7588:

; 105  : 
; 106  :    if ( vMsgQ )

	cmp	DWORD PTR _vMsgQ$[ebp], 0
	je	SHORT $L7594

; 108  :       CreateViewFromViewForTask( &vMsgQ, vMsgQ, 0 );

	push	0
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	lea	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_CreateViewFromViewForTask@12

; 109  : 
; 110  :       // We're gonna pop up a message box.  It's possible that the driver
; 111  :       // will try to clean up any non-named, non-locked views.  Prevent
; 112  :       // the temp view from being cleaned up by locking it.
; 113  :       SfLockView( vMsgQ );

	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SfLockView@4

; 114  :       if ( lFlag & 0x00000001 )  // determine if there are QMsg records

	movsx	eax, WORD PTR _lFlag$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L7594

; 116  :          if ( lpCurrentTask->vWebSubtask )

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	cmp	DWORD PTR [ecx+28], 0
	je	SHORT $L7594

; 118  :             if ( SetCursorFirstEntityByInteger( vMsgQ, szlTask, szlId,
; 119  :                                                 (zLONG) lpCurrentTask->vWebSubtask,
; 120  :                                                 0 ) != 0 ||
; 121  :                  CheckExistenceOfEntity( vMsgQ, "QMsg" ) != 0 )

	push	0
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	eax, DWORD PTR [edx+28]
	push	eax
	mov	ecx, DWORD PTR _szlId
	push	ecx
	mov	edx, DWORD PTR _szlTask
	push	edx
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_SetCursorFirstEntityByInteger@20
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L7595
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_CheckExistenceOfEntity@8
	movsx	eax, ax
	test	eax, eax
	je	SHORT $L7594
$L7595:

; 123  :                DropView( vMsgQ );

	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_DropView@4

; 124  :                vMsgQ = 0;  // there are no QMsg records for this task

	mov	DWORD PTR _vMsgQ$[ebp], 0
$L7594:

; 129  : 
; 130  :    return( vMsgQ );

	mov	eax, DWORD PTR _vMsgQ$[ebp]

; 131  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_fnGetMsgQ@12 ENDP
_TEXT	ENDS
PUBLIC	_fnFindMQInterface
PUBLIC	??_C@_0CH@DILJ@MessageSend?5Task?5Error?3?5?$CFs?5?5?$CFs?5?5@ ; `string'
PUBLIC	??_C@_0CP@DHOD@MessageSend?5Interface?5Inactive?3?5@ ; `string'
PUBLIC	??_C@_0CI@IADP@Message?5Interface?5Inactive?3?5?$CFs?5?$CF@ ; `string'
PUBLIC	??_C@_0CM@LDEE@MessageSend?5Recursive?5Error?3?5?$CFs?5@ ; `string'
PUBLIC	??_C@_0CN@PJMD@MessageSend?5Interface?5Active?3?5?$CFs@ ; `string'
PUBLIC	??_C@_0BF@BDGH@WebUserErrorMessages?$AA@	; `string'
PUBLIC	??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@		; `string'
PUBLIC	??_C@_0EM@CPND@MessagePrompt?5Trying?5to?5pop?5up?5a@ ; `string'
PUBLIC	??_C@_09NBP@ZeidonWeb?$AA@			; `string'
PUBLIC	??_C@_06DPMO@Client?$AA@			; `string'
PUBLIC	??_C@_05LDDM@Title?$AA@				; `string'
PUBLIC	??_C@_04BNNJ@Text?$AA@				; `string'
PUBLIC	??_C@_04ODNG@View?$AA@				; `string'
PUBLIC	_MessageSend@24
EXTRN	_SetAttributeFromInteger@16:NEAR
EXTRN	__imp__sprintf:NEAR
EXTRN	_SysMessageBox@16:NEAR
EXTRN	_TraceLine:NEAR
EXTRN	_IssueError@16:NEAR
EXTRN	_fnOperationCall:NEAR
EXTRN	_fnOperationReturn:NEAR
EXTRN	_SysReadZeidonIni@16:NEAR
EXTRN	_SetAttributeFromVariable@32:NEAR
EXTRN	_CreateEntity@12:NEAR
EXTRN	_g_pchMQI:BYTE
EXTRN	_SetAttributeFromString@16:NEAR
;	COMDAT ??_C@_0CH@DILJ@MessageSend?5Task?5Error?3?5?$CFs?5?5?$CFs?5?5@
; File C:\10C\A\oe\KZOEMQAA.C
_DATA	SEGMENT
??_C@_0CH@DILJ@MessageSend?5Task?5Error?3?5?$CFs?5?5?$CFs?5?5@ DB 'Messag'
	DB	'eSend Task Error: %s  %s  %s  %d', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CP@DHOD@MessageSend?5Interface?5Inactive?3?5@
_DATA	SEGMENT
??_C@_0CP@DHOD@MessageSend?5Interface?5Inactive?3?5@ DB 'MessageSend Inte'
	DB	'rface Inactive: %s  %s  %s  %d', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@IADP@Message?5Interface?5Inactive?3?5?$CFs?5?$CF@
_DATA	SEGMENT
??_C@_0CI@IADP@Message?5Interface?5Inactive?3?5?$CFs?5?$CF@ DB 'Message I'
	DB	'nterface Inactive: %s %s %s %d', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CM@LDEE@MessageSend?5Recursive?5Error?3?5?$CFs?5@
_DATA	SEGMENT
??_C@_0CM@LDEE@MessageSend?5Recursive?5Error?3?5?$CFs?5@ DB 'MessageSend '
	DB	'Recursive Error: %s  %s  %s  %d', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CN@PJMD@MessageSend?5Interface?5Active?3?5?$CFs@
_DATA	SEGMENT
??_C@_0CN@PJMD@MessageSend?5Interface?5Active?3?5?$CFs@ DB 'MessageSend I'
	DB	'nterface Active: %s  %s  %s  %d', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@BDGH@WebUserErrorMessages?$AA@
_DATA	SEGMENT
??_C@_0BF@BDGH@WebUserErrorMessages?$AA@ DB 'WebUserErrorMessages', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@
_DATA	SEGMENT
??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ DB '[ObjectEngine]', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EM@CPND@MessagePrompt?5Trying?5to?5pop?5up?5a@
_DATA	SEGMENT
??_C@_0EM@CPND@MessagePrompt?5Trying?5to?5pop?5up?5a@ DB 'MessagePrompt T'
	DB	'rying to pop up a Web message box: %s for WebSubtask: 0x%08x', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_09NBP@ZeidonWeb?$AA@
_DATA	SEGMENT
??_C@_09NBP@ZeidonWeb?$AA@ DB 'ZeidonWeb', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_06DPMO@Client?$AA@
_DATA	SEGMENT
??_C@_06DPMO@Client?$AA@ DB 'Client', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_05LDDM@Title?$AA@
_DATA	SEGMENT
??_C@_05LDDM@Title?$AA@ DB 'Title', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_04BNNJ@Text?$AA@
_DATA	SEGMENT
??_C@_04BNNJ@Text?$AA@ DB 'Text', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_04ODNG@View?$AA@
_DATA	SEGMENT
??_C@_04ODNG@View?$AA@ DB 'View', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vSubtask$ = 8
_cpcMsgId$ = 12
_cpcTitle$ = 16
_cpcMsgText$ = 20
_lMsgType$ = 24
_bBeep$ = 28
_lpCurrentTask$ = -28
_lpMQInterface$ = -8
_vMsgQ$ = -24
_nRC$ = -4
_sz$ = -20
_szMsg$7622 = -540
_pfn$7652 = -544
_pfn$7657 = -548
_MessageSend@24 PROC NEAR

; 165  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 548				; 00000224H

; 166  :    LPTASK         lpCurrentTask;
; 167  :    LPMQINTERFACE  lpMQInterface;
; 168  :    zVIEW          vMsgQ;
; 169  : // zPLONG         lplTaskID;
; 170  :    zSHORT         nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 171  :    zCHAR          sz[ 10 ];
; 172  : 
; 173  :    lpCurrentTask = fnOperationCall( iMessageSend, vSubtask, 0 );

	push	0
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	push	360					; 00000168H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 174  :    if ( lpCurrentTask == 0 )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7615

; 176  :       TraceLine( "MessageSend Task Error: %s  %s  %s  %d",
; 177  :                  cpcMsgId, cpcTitle, cpcMsgText, lMsgType );

	mov	ecx, DWORD PTR _lMsgType$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcMsgText$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcTitle$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcMsgId$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CH@DILJ@MessageSend?5Task?5Error?3?5?$CFs?5?5?$CFs?5?5@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H
$L7615:

; 179  : 
; 180  : // lplTaskID = &lpCurrentTask->lTaskID;
; 181  : 
; 182  : #ifdef __DO_MSGOBJ__
; 183  : // if ( fnValidView( lpCurrentTask, vSubtask ) == 0 )
; 184  : // {
; 185  : //    fnOperationReturn( iMessageSend, lpCurrentTask );
; 186  : //    return( nRC );
; 187  : // }
; 188  : 
; 189  :    lpMQInterface = fnFindMQInterface( vSubtask, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	call	_fnFindMQInterface
	add	esp, 8
	mov	DWORD PTR _lpMQInterface$[ebp], eax

; 190  : 
; 191  :    if ( lpMQInterface == 0 || lpMQInterface->pfnMQ[ 0 ] == 0 )

	cmp	DWORD PTR _lpMQInterface$[ebp], 0
	je	SHORT $L7618
	mov	ecx, DWORD PTR _lpMQInterface$[ebp]
	cmp	DWORD PTR [ecx+6], 0
	jne	SHORT $L7617
$L7618:

; 193  :       TraceLine( "MessageSend Interface Inactive: %s  %s  %s  %d",
; 194  :                  cpcMsgId, cpcTitle, cpcMsgText, lMsgType );

	mov	edx, DWORD PTR _lMsgType$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcMsgText$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcTitle$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcMsgId$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CP@DHOD@MessageSend?5Interface?5Inactive?3?5@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H

; 195  :       if ( lpCurrentTask == 0 || lpCurrentTask->vWebSubtask == 0 )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	je	SHORT $L7621
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	cmp	DWORD PTR [eax+28], 0
	jne	SHORT $L7620
$L7621:

; 197  :          zCHAR szMsg[ 512 ];
; 198  : 
; 199  :          zsprintf( szMsg, "Message Interface Inactive: %s %s %s %d",
; 200  :                    cpcMsgId, cpcTitle, cpcMsgText, lMsgType );

	mov	ecx, DWORD PTR _lMsgType$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcMsgText$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcTitle$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcMsgId$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@IADP@Message?5Interface?5Inactive?3?5?$CFs?5?$CF@ ; `string'
	lea	edx, DWORD PTR _szMsg$7622[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 24					; 00000018H

; 201  :          SysMessageBox( vSubtask, g_pchMQI[ 0 ], szMsg, 1 );

	push	1
	lea	eax, DWORD PTR _szMsg$7622[ebp]
	push	eax
	mov	ecx, DWORD PTR _g_pchMQI
	push	ecx
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_SysMessageBox@16
$L7620:

; 204  :    else

	jmp	$L7627
$L7617:

; 205  :    if ( lpMQInterface->bRecursiveCall )

	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7625

; 207  :       TraceLine( "MessageSend Recursive Error: %s  %s  %s  %d",
; 208  :                  cpcMsgId, cpcTitle, cpcMsgText, lMsgType );

	mov	edx, DWORD PTR _lMsgType$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcMsgText$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcTitle$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcMsgId$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CM@LDEE@MessageSend?5Recursive?5Error?3?5?$CFs?5@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H

; 212  :    else

	jmp	$L7627
$L7625:

; 214  :       TraceLine( "MessageSend Interface Active: %s  %s  %s  %d",
; 215  :                  cpcMsgId, cpcTitle, cpcMsgText, lMsgType );

	mov	eax, DWORD PTR _lMsgType$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcMsgText$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcTitle$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcMsgId$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CN@PJMD@MessageSend?5Interface?5Active?3?5?$CFs@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H

; 216  :       lpMQInterface->bRecursiveCall = TRUE;

	mov	ecx, DWORD PTR _lpMQInterface$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	or	edx, 1
	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	DWORD PTR [eax+2], edx

; 217  :       vMsgQ = fnGetMsgQ( vSubtask, lpCurrentTask, 0 );

	push	0
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_fnGetMsgQ@12
	mov	DWORD PTR _vMsgQ$[ebp], eax

; 218  : 
; 219  :       // If the zeidon.ini requests that all messages be sent to the User, but
; 220  :       // there is not a valid message object, we will simply exit, because we
; 221  :       // cannot get a message back to the User.
; 222  :       SysReadZeidonIni( -1, "[ObjectEngine]", "WebUserErrorMessages", sz );

	lea	eax, DWORD PTR _sz$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BF@BDGH@WebUserErrorMessages?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 223  :       if ( (sz[ 0 ] == 'Y' || sz[ 0 ] == 'y') && vMsgQ == 0 )

	movsx	ecx, BYTE PTR _sz$[ebp]
	cmp	ecx, 89					; 00000059H
	je	SHORT $L7632
	movsx	edx, BYTE PTR _sz$[ebp]
	cmp	edx, 121				; 00000079H
	jne	SHORT $L7631
$L7632:
	cmp	DWORD PTR _vMsgQ$[ebp], 0
	jne	SHORT $L7631

; 224  :          nRC = -16;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 225  :       else

	jmp	$L7659
$L7631:

; 227  :          // When running on the Web, messages will be sent back to the End User if:
; 228  :          // 1. The error message type is Domain, Constraint Error or Constraint Warning. (These
; 229  :          //    messages should always be returned to the End User.)
; 230  :          // 2. The zeidon.ini variable, WebUserErrorMessages, is set to Y. (This allows us to have
; 231  :          //    messages pop up when debugging but to be sent back to the User in production).
; 232  :          if ( lpCurrentTask->vWebSubtask )

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	cmp	DWORD PTR [eax+28], 0
	je	$L7634

; 234  :             if ( sz[ 0 ] == 'Y' || sz[ 0 ] == 'y' ||
; 235  :                  lMsgType == zMSGQ_DOMAIN_ERROR ||
; 236  :                  lMsgType == zMSGQ_OBJECT_CONSTRAINT_ERROR ||
; 237  :                  lMsgType == zMSGQ_OBJECT_CONSTRAINT_WARNING ||
; 238  :                  lMsgType == zMSGQ_REQUIRED_DATA_ITEM_ERROR )

	movsx	ecx, BYTE PTR _sz$[ebp]
	cmp	ecx, 89					; 00000059H
	je	SHORT $L7636
	movsx	edx, BYTE PTR _sz$[ebp]
	cmp	edx, 121				; 00000079H
	je	SHORT $L7636
	cmp	DWORD PTR _lMsgType$[ebp], 200		; 000000c8H
	je	SHORT $L7636
	cmp	DWORD PTR _lMsgType$[ebp], 300		; 0000012cH
	je	SHORT $L7636
	cmp	DWORD PTR _lMsgType$[ebp], 100		; 00000064H
	je	SHORT $L7636
	cmp	DWORD PTR _lMsgType$[ebp], 400		; 00000190H
	jne	$L7635
$L7636:

; 240  :                if ( vMsgQ )

	cmp	DWORD PTR _vMsgQ$[ebp], 0
	je	$L7637

; 242  :                   TraceLine( "MessagePrompt Trying to pop up a Web message box: %s for WebSubtask: 0x%08x",
; 243  :                              cpcMsgText, lpCurrentTask->vWebSubtask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	push	ecx
	mov	edx, DWORD PTR _cpcMsgText$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0EM@CPND@MessagePrompt?5Trying?5to?5pop?5up?5a@ ; `string'
	call	_TraceLine
	add	esp, 12					; 0000000cH

; 244  :                   if ( SetCursorFirstEntityByInteger( vMsgQ, szlTask, szlId,
; 245  :                                                       (zLONG) lpCurrentTask->vWebSubtask,
; 246  :                                                       0 ) != 0 )

	push	0
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	push	ecx
	mov	edx, DWORD PTR _szlId
	push	edx
	mov	eax, DWORD PTR _szlTask
	push	eax
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_SetCursorFirstEntityByInteger@20
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L7640

; 248  :                   // TraceLine( "MessageSend Creating Task Entity: %s  %s  %s  %d",
; 249  :                   //            cpcMsgId, cpcTitle, cpcMsgText, lMsgType );
; 250  :                      CreateEntity( vMsgQ, szlTask, zPOS_LAST );

	push	2
	mov	eax, DWORD PTR _szlTask
	push	eax
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_CreateEntity@12

; 251  :                   // TraceLine( "MessageSend Created Task Entity: %s  %s  %s  %d",
; 252  :                   //            cpcMsgId, cpcTitle, cpcMsgText, lMsgType );
; 253  :                      SetAttributeFromVariable( vMsgQ, szlTask, szlId,
; 254  :                                                &lpCurrentTask->vWebSubtask,
; 255  :                                                zTYPE_INTEGER,
; 256  :                                                0, 0, 0 );

	push	0
	push	0
	push	0
	push	76					; 0000004cH
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	add	edx, 28					; 0000001cH
	push	edx
	mov	eax, DWORD PTR _szlId
	push	eax
	mov	ecx, DWORD PTR _szlTask
	push	ecx
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetAttributeFromVariable@32

; 257  :                      SetAttributeFromVariable( vMsgQ, szlTask, "Client",
; 258  :                                                "ZeidonWeb", zTYPE_STRING, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	83					; 00000053H
	push	OFFSET FLAT:??_C@_09NBP@ZeidonWeb?$AA@	; `string'
	push	OFFSET FLAT:??_C@_06DPMO@Client?$AA@	; `string'
	mov	eax, DWORD PTR _szlTask
	push	eax
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_SetAttributeFromVariable@32
$L7640:

; 260  : 
; 261  :                // TraceLine( "MessageSend Creating QMsg Entity: %s  %s  %s  %d",
; 262  :                //            cpcMsgId, cpcTitle, cpcMsgText, lMsgType );
; 263  :                   CreateEntity( vMsgQ, "QMsg", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_CreateEntity@12

; 264  :                // TraceLine( "MessageSend Created QMsg Entity: %s  %s  %s  %d",
; 265  :                //            cpcMsgId, cpcTitle, cpcMsgText, lMsgType );
; 266  :                   SetAttributeFromString( vMsgQ, "QMsg", szlId, cpcMsgId );

	mov	eax, DWORD PTR _cpcMsgId$[ebp]
	push	eax
	mov	ecx, DWORD PTR _szlId
	push	ecx
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetAttributeFromString@16

; 267  :                   SetAttributeFromString( vMsgQ, "QMsg", "Title", cpcTitle );

	mov	eax, DWORD PTR _cpcTitle$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_05LDDM@Title?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_SetAttributeFromString@16

; 268  :                   SetAttributeFromString( vMsgQ, "QMsg", "Text", cpcMsgText );

	mov	edx, DWORD PTR _cpcMsgText$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_04BNNJ@Text?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_SetAttributeFromString@16

; 269  :                   SetAttributeFromInteger( vMsgQ, "QMsg", "View", (zLONG) vSubtask );

	mov	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_04ODNG@View?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetAttributeFromInteger@16

; 271  :                else

	jmp	SHORT $L7649
$L7637:

; 273  :                   // We are in the Web without a valid view (problem "Invalid View" error), so simply return with error code.
; 274  :                   nRC = -1;

	mov	WORD PTR _nRC$[ebp], -1
$L7649:

; 277  :             else

	jmp	SHORT $L7654
$L7635:

; 279  :                if ( vMsgQ )

	cmp	DWORD PTR _vMsgQ$[ebp], 0
	je	SHORT $L7651

; 281  :                   MQ_MessageSend pfn = (MQ_MessageSend) lpMQInterface->pfnMQ[ 0 ];

	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR _pfn$7652[ebp], ecx

; 282  :                // TraceLineS( "MessagePrompt Trying to pop up a message box: ",
; 283  :                //             cpcMsgText );
; 284  :                   nRC = (*pfn)( vMsgQ, vSubtask, cpcMsgId, cpcTitle,
; 285  :                                 cpcMsgText, lMsgType, bBeep );

	mov	dx, WORD PTR _bBeep$[ebp]
	push	edx
	mov	eax, DWORD PTR _lMsgType$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcMsgText$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcTitle$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcMsgId$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	DWORD PTR _pfn$7652[ebp]
	mov	WORD PTR _nRC$[ebp], ax

; 286  :                   DropView( vMsgQ );

	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_DropView@4

; 288  :                else

	jmp	SHORT $L7654
$L7651:

; 289  :                   IssueError( vSubtask, 0, 0, cpcMsgText );

	mov	ecx, DWORD PTR _cpcMsgText$[ebp]
	push	ecx
	push	0
	push	0
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_IssueError@16
$L7654:

; 292  :          else

	jmp	SHORT $L7659
$L7634:

; 294  :             if ( vMsgQ )

	cmp	DWORD PTR _vMsgQ$[ebp], 0
	je	SHORT $L7656

; 296  :                MQ_MessageSend pfn = (MQ_MessageSend) lpMQInterface->pfnMQ[ 0 ];

	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR _pfn$7657[ebp], ecx

; 297  :             // TraceLineS( "MessagePrompt Trying to pop up a message box: ",
; 298  :             //             cpcMsgText );
; 299  :                nRC = (*pfn)( vMsgQ, vSubtask, cpcMsgId, cpcTitle,
; 300  :                           cpcMsgText, lMsgType, bBeep );

	mov	dx, WORD PTR _bBeep$[ebp]
	push	edx
	mov	eax, DWORD PTR _lMsgType$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcMsgText$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcTitle$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcMsgId$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	DWORD PTR _pfn$7657[ebp]
	mov	WORD PTR _nRC$[ebp], ax

; 301  :                DropView( vMsgQ );

	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_DropView@4

; 303  :             else

	jmp	SHORT $L7659
$L7656:

; 304  :                IssueError( vSubtask, 0, 0, cpcMsgText );

	mov	ecx, DWORD PTR _cpcMsgText$[ebp]
	push	ecx
	push	0
	push	0
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_IssueError@16
$L7659:

; 307  : 
; 308  :       lpMQInterface->bRecursiveCall = FALSE;

	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	and	ecx, -2					; fffffffeH
	mov	edx, DWORD PTR _lpMQInterface$[ebp]
	mov	DWORD PTR [edx+2], ecx
$L7627:

; 310  : 
; 311  : #endif
; 312  : 
; 313  :    if ( lpCurrentTask )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	je	SHORT $L7660

; 314  :       fnOperationReturn( iMessageSend, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	360					; 00000168H
	call	_fnOperationReturn
	add	esp, 8
$L7660:

; 315  : 
; 316  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 317  : }

	mov	esp, ebp
	pop	ebp
	ret	24					; 00000018H
_MessageSend@24 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0CF@PEEM@MessagePrompt?5Task?5Error?3?5?$CFs?5?5?$CFs@ ; `string'
PUBLIC	??_C@_0BD@IFDH@Interface?5Inactive?$AA@		; `string'
PUBLIC	??_C@_0CK@MJKJ@MessagePrompt?5Recursive?5Error?3?5?$CF@ ; `string'
PUBLIC	??_C@_0DD@HLOO@MessagePrompt?5Trying?5to?5pop?5up?5a@ ; `string'
PUBLIC	??_C@_04FCOP@Type?$AA@				; `string'
PUBLIC	_MessagePrompt@32
EXTRN	_TraceLineS@8:NEAR
;	COMDAT ??_C@_0CF@PEEM@MessagePrompt?5Task?5Error?3?5?$CFs?5?5?$CFs@
; File C:\10C\A\oe\KZOEMQAA.C
_DATA	SEGMENT
??_C@_0CF@PEEM@MessagePrompt?5Task?5Error?3?5?$CFs?5?5?$CFs@ DB 'MessageP'
	DB	'rompt Task Error: %s  %s  %s', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@IFDH@Interface?5Inactive?$AA@
_DATA	SEGMENT
??_C@_0BD@IFDH@Interface?5Inactive?$AA@ DB 'Interface Inactive', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CK@MJKJ@MessagePrompt?5Recursive?5Error?3?5?$CF@
_DATA	SEGMENT
??_C@_0CK@MJKJ@MessagePrompt?5Recursive?5Error?3?5?$CF@ DB 'MessagePrompt'
	DB	' Recursive Error: %s  %s  %s', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DD@HLOO@MessagePrompt?5Trying?5to?5pop?5up?5a@
_DATA	SEGMENT
??_C@_0DD@HLOO@MessagePrompt?5Trying?5to?5pop?5up?5a@ DB 'MessagePrompt T'
	DB	'rying to pop up a Web message box: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_04FCOP@Type?$AA@
_DATA	SEGMENT
??_C@_04FCOP@Type?$AA@ DB 'Type', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vSubtask$ = 8
_cpcMsgId$ = 12
_cpcTitle$ = 16
_cpcMsgText$ = 20
_bBeep$ = 24
_nButtons$ = 28
_nDefaultButton$ = 32
_nIcon$ = 36
_lpCurrentTask$ = -16
_lpMQInterface$ = -8
_vMsgQ$ = -12
_nRC$ = -4
_pfn$7705 = -20
_MessagePrompt@32 PROC NEAR

; 383  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 384  :    LPTASK         lpCurrentTask;
; 385  :    LPMQINTERFACE  lpMQInterface;
; 386  : // zPLONG         lplTaskID;
; 387  :    zVIEW          vMsgQ;
; 388  :    zSHORT         nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 389  : 
; 390  :    lpCurrentTask = fnOperationCall( iMessagePrompt, vSubtask, 0 );

	push	0
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	push	361					; 00000169H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 391  :    if ( lpCurrentTask == 0 )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7682

; 393  :       TraceLine( "MessagePrompt Task Error: %s  %s  %s",
; 394  :                  cpcMsgId, cpcTitle, cpcMsgText );

	mov	ecx, DWORD PTR _cpcMsgText$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcTitle$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcMsgId$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CF@PEEM@MessagePrompt?5Task?5Error?3?5?$CFs?5?5?$CFs@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H
$L7682:

; 396  : 
; 397  : // lplTaskID = &lpCurrentTask->lTaskID;
; 398  : 
; 399  : #ifdef __DO_MSGOBJ__
; 400  : // if ( fnValidView( lpCurrentTask, vSubtask ) == 0 )
; 401  : // {
; 402  : //    fnOperationReturn( iMessagePrompt, lpCurrentTask );
; 403  : //    return( nRC );
; 404  : // }
; 405  : 
; 406  :    lpMQInterface = fnFindMQInterface( vSubtask, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_fnFindMQInterface
	add	esp, 8
	mov	DWORD PTR _lpMQInterface$[ebp], eax

; 407  : 
; 408  :    if ( lpMQInterface == 0 || lpMQInterface->pfnMQ[ 1 ] == 0 )

	cmp	DWORD PTR _lpMQInterface$[ebp], 0
	je	SHORT $L7685
	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	cmp	DWORD PTR [eax+10], 0
	jne	SHORT $L7684
$L7685:

; 410  :       SysMessageBox( vSubtask, g_pchMQI[ 1 ], "Interface Inactive", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0BD@IFDH@Interface?5Inactive?$AA@ ; `string'
	mov	ecx, DWORD PTR _g_pchMQI+4
	push	ecx
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_SysMessageBox@16

; 411  :       SysMessageBox( vSubtask, cpcTitle, cpcMsgText, 1 );

	push	1
	mov	eax, DWORD PTR _cpcMsgText$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcTitle$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_SysMessageBox@16

; 413  :    else

	jmp	$L7690
$L7684:

; 414  :    if ( lpMQInterface->bRecursiveCall )

	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7688

; 416  :       TraceLine( "MessagePrompt Recursive Error: %s  %s  %s",
; 417  :                  cpcMsgId, cpcTitle, cpcMsgText );

	mov	edx, DWORD PTR _cpcMsgText$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcTitle$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcMsgId$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CK@MJKJ@MessagePrompt?5Recursive?5Error?3?5?$CF@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H

; 421  :    else

	jmp	$L7690
$L7688:

; 423  :       lpMQInterface->bRecursiveCall = TRUE;

	mov	edx, DWORD PTR _lpMQInterface$[ebp]
	mov	eax, DWORD PTR [edx+2]
	or	al, 1
	mov	ecx, DWORD PTR _lpMQInterface$[ebp]
	mov	DWORD PTR [ecx+2], eax

; 424  : 
; 425  :       GetViewByName( &vMsgQ, szl__MSGQ, vSubtask, zLEVEL_TASK );

	push	2
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	mov	eax, DWORD PTR _szl__MSGQ
	push	eax
	lea	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_GetViewByName@16

; 426  :       if ( vMsgQ == 0 )

	cmp	DWORD PTR _vMsgQ$[ebp], 0
	jne	SHORT $L7693

; 428  :          if ( lpCurrentTask->vWebSubtask )

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	cmp	DWORD PTR [edx+28], 0
	je	SHORT $L7693

; 430  :             if ( ActivateEmptyObjectInstance( &vMsgQ, "KZMSGQOO",
; 431  :                                               lpCurrentTask->vWebSubtask,
; 432  :                                               zMULTIPLE ) >= 0 )

	push	256					; 00000100H
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	push	ecx
	push	OFFSET FLAT:??_C@_08JIIE@KZMSGQOO?$AA@	; `string'
	lea	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_ActivateEmptyObjectInstance@16
	movsx	eax, ax
	test	eax, eax
	jl	SHORT $L7693

; 434  :                SetNameForView( vMsgQ, szl__MSGQ,
; 435  :                                lpCurrentTask->vWebSubtask, zLEVEL_TASK );

	push	2
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	mov	eax, DWORD PTR _szl__MSGQ
	push	eax
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_SetNameForView@16
$L7693:

; 439  : 
; 440  :       if ( vMsgQ )

	cmp	DWORD PTR _vMsgQ$[ebp], 0
	je	$L7694

; 442  :          CreateViewFromViewForTask( &vMsgQ, vMsgQ, 0 );

	push	0
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	lea	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_CreateViewFromViewForTask@12

; 443  : 
; 444  :          // We're gonna pop up a message box.  It's possible that the driver
; 445  :          // will try to clean up any non-named, non-locked views.  Prevent
; 446  :          // the temp view from being cleaned up by locking it.
; 447  :          SfLockView( vMsgQ );

	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_SfLockView@4

; 448  :          if ( lpCurrentTask->vWebSubtask )

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	cmp	DWORD PTR [edx+28], 0
	je	$L7695

; 450  :             TraceLineS( "MessagePrompt Trying to pop up a Web message box: ",
; 451  :                         cpcMsgText );

	mov	eax, DWORD PTR _cpcMsgText$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0DD@HLOO@MessagePrompt?5Trying?5to?5pop?5up?5a@ ; `string'
	call	_TraceLineS@8

; 452  :             if ( SetCursorFirstEntityByInteger( vMsgQ, szlTask, szlId,
; 453  :                                                 (zLONG) lpCurrentTask->vWebSubtask,
; 454  :                                                 0 ) != 0 )

	push	0
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	mov	eax, DWORD PTR _szlId
	push	eax
	mov	ecx, DWORD PTR _szlTask
	push	ecx
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetCursorFirstEntityByInteger@20
	movsx	eax, ax
	test	eax, eax
	je	SHORT $L7698

; 456  :                CreateEntity( vMsgQ, szlTask, zPOS_LAST );

	push	2
	mov	ecx, DWORD PTR _szlTask
	push	ecx
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_CreateEntity@12

; 457  :                SetAttributeFromVariable( vMsgQ, szlTask, szlId,
; 458  :                                          &lpCurrentTask->vWebSubtask,
; 459  :                                          zTYPE_INTEGER,
; 460  :                                          0, 0, 0 );

	push	0
	push	0
	push	0
	push	76					; 0000004cH
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	add	eax, 28					; 0000001cH
	push	eax
	mov	ecx, DWORD PTR _szlId
	push	ecx
	mov	edx, DWORD PTR _szlTask
	push	edx
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_SetAttributeFromVariable@32

; 461  :                SetAttributeFromVariable( vMsgQ, szlTask, "Client",
; 462  :                                          "ZeidonWeb", zTYPE_STRING, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	83					; 00000053H
	push	OFFSET FLAT:??_C@_09NBP@ZeidonWeb?$AA@	; `string'
	push	OFFSET FLAT:??_C@_06DPMO@Client?$AA@	; `string'
	mov	ecx, DWORD PTR _szlTask
	push	ecx
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetAttributeFromVariable@32
$L7698:

; 464  : 
; 465  :             CreateEntity( vMsgQ, "QMsg", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_CreateEntity@12

; 466  :             SetAttributeFromString( vMsgQ, "QMsg", szlId, cpcMsgId );

	mov	ecx, DWORD PTR _cpcMsgId$[ebp]
	push	ecx
	mov	edx, DWORD PTR _szlId
	push	edx
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_SetAttributeFromString@16

; 467  :             SetAttributeFromString( vMsgQ, "QMsg", "Title", cpcTitle );

	mov	ecx, DWORD PTR _cpcTitle$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_05LDDM@Title?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetAttributeFromString@16

; 468  :             SetAttributeFromString( vMsgQ, "QMsg", "Text", cpcMsgText );

	mov	eax, DWORD PTR _cpcMsgText$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_04BNNJ@Text?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_SetAttributeFromString@16

; 469  :             SetAttributeFromInteger( vMsgQ, "QMsg", "View", (zLONG) vSubtask );

	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_04ODNG@View?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_SetAttributeFromInteger@16

; 470  :             if ( nButtons == 4 ) // zBUTTONS_OKCANCEL

	movsx	ecx, WORD PTR _nButtons$[ebp]
	cmp	ecx, 4
	jne	SHORT $L7702

; 471  :                SetAttributeFromInteger( vMsgQ, "QMsg", "Type", -1 );  // prompt

	push	-1
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04KHMB@QMsg?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetAttributeFromInteger@16
$L7702:

; 473  :          else

	jmp	SHORT $L7704
$L7695:

; 475  :             MQ_MessagePrompt pfn = lpMQInterface->pfnMQ[ 1 ];

	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	mov	DWORD PTR _pfn$7705[ebp], ecx

; 476  :          // TraceLineS( "MessagePrompt Trying to pop up a message box: ",
; 477  :          //             cpcMsgText );
; 478  :             nRC = (*pfn)( vMsgQ, vSubtask, cpcMsgId, cpcTitle,
; 479  :                           cpcMsgText, bBeep, nButtons,
; 480  :                           nDefaultButton, nIcon );

	mov	dx, WORD PTR _nIcon$[ebp]
	push	edx
	mov	ax, WORD PTR _nDefaultButton$[ebp]
	push	eax
	mov	cx, WORD PTR _nButtons$[ebp]
	push	ecx
	mov	dx, WORD PTR _bBeep$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcMsgText$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcTitle$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcMsgId$[ebp]
	push	edx
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	DWORD PTR _pfn$7705[ebp]
	mov	WORD PTR _nRC$[ebp], ax
$L7704:

; 482  : 
; 483  :          DropView( vMsgQ );

	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_DropView@4
$L7694:

; 485  : 
; 486  :       lpMQInterface->bRecursiveCall = FALSE;

	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	and	ecx, -2					; fffffffeH
	mov	edx, DWORD PTR _lpMQInterface$[ebp]
	mov	DWORD PTR [edx+2], ecx
$L7690:

; 488  : 
; 489  : #endif
; 490  : 
; 491  :    if ( lpCurrentTask )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	je	SHORT $L7706

; 492  :       fnOperationReturn( iMessagePrompt, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	361					; 00000169H
	call	_fnOperationReturn
	add	esp, 8
$L7706:

; 493  : 
; 494  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 495  : }

	mov	esp, ebp
	pop	ebp
	ret	32					; 00000020H
_MessagePrompt@32 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0CN@DBII@MessagePromptForInput?5Task?5Error@ ; `string'
PUBLIC	??_C@_0DC@GIEP@MessagePromptForInput?5Recursive?5@ ; `string'
PUBLIC	_MessagePromptForInput@28
;	COMDAT ??_C@_0CN@DBII@MessagePromptForInput?5Task?5Error@
; File C:\10C\A\oe\KZOEMQAA.C
_DATA	SEGMENT
??_C@_0CN@DBII@MessagePromptForInput?5Task?5Error@ DB 'MessagePromptForIn'
	DB	'put Task Error: %s  %s  %s', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DC@GIEP@MessagePromptForInput?5Recursive?5@
_DATA	SEGMENT
??_C@_0DC@GIEP@MessagePromptForInput?5Recursive?5@ DB 'MessagePromptForIn'
	DB	'put Recursive Error: %s  %s  %s', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vSubtask$ = 8
_cpcMsgId$ = 12
_cpcTitle$ = 16
_cpcMsgText$ = 20
_bBeep$ = 24
_pchReturnBuffer$ = 28
_usBufferLth$ = 32
_lpCurrentTask$ = -16
_lpMQInterface$ = -8
_vMsgQ$ = -12
_nRC$ = -4
_pfn$7735 = -20
_MessagePromptForInput@28 PROC NEAR

; 529  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 530  :    LPTASK         lpCurrentTask;
; 531  :    LPMQINTERFACE  lpMQInterface;
; 532  : // zPLONG         lplTaskID;
; 533  :    zVIEW          vMsgQ;
; 534  :    zSHORT         nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 535  : 
; 536  :    lpCurrentTask = fnOperationCall( iMessagePromptForInput, vSubtask, 0 );

	push	0
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	push	362					; 0000016aH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 537  :    if ( lpCurrentTask == 0 )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7726

; 539  :       TraceLine( "MessagePromptForInput Task Error: %s  %s  %s",
; 540  :                  cpcMsgId, cpcTitle, cpcMsgText );

	mov	ecx, DWORD PTR _cpcMsgText$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcTitle$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcMsgId$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CN@DBII@MessagePromptForInput?5Task?5Error@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H
$L7726:

; 542  : 
; 543  : // lplTaskID = &lpCurrentTask->lTaskID;
; 544  : 
; 545  : #ifdef __DO_MSGOBJ__
; 546  : // if ( fnValidView( lpCurrentTask, vSubtask ) == 0 )
; 547  : // {
; 548  : //    fnOperationReturn( iMessagePromptForInput, lpCurrentTask );
; 549  : //    return( nRC );
; 550  : // }
; 551  : 
; 552  :    lpMQInterface = fnFindMQInterface( vSubtask, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_fnFindMQInterface
	add	esp, 8
	mov	DWORD PTR _lpMQInterface$[ebp], eax

; 553  : 
; 554  :    if ( lpMQInterface == 0 || lpMQInterface->pfnMQ[ 2 ] == 0 )

	cmp	DWORD PTR _lpMQInterface$[ebp], 0
	je	SHORT $L7729
	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	cmp	DWORD PTR [eax+14], 0
	jne	SHORT $L7728
$L7729:

; 556  :       SysMessageBox( vSubtask, g_pchMQI[ 2 ], "Interface Inactive", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0BD@IFDH@Interface?5Inactive?$AA@ ; `string'
	mov	ecx, DWORD PTR _g_pchMQI+8
	push	ecx
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_SysMessageBox@16

; 557  :       SysMessageBox( vSubtask, cpcTitle, cpcMsgText, 1 );

	push	1
	mov	eax, DWORD PTR _cpcMsgText$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcTitle$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_SysMessageBox@16

; 559  :    else

	jmp	$L7733
$L7728:

; 560  :    if ( lpMQInterface->bRecursiveCall )

	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7731

; 562  :       TraceLine( "MessagePromptForInput Recursive Error: %s  %s  %s",
; 563  :                  cpcMsgId, cpcTitle, cpcMsgText );

	mov	edx, DWORD PTR _cpcMsgText$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcTitle$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcMsgId$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0DC@GIEP@MessagePromptForInput?5Recursive?5@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H

; 567  :    else

	jmp	$L7733
$L7731:

; 569  :       lpMQInterface->bRecursiveCall = TRUE;

	mov	edx, DWORD PTR _lpMQInterface$[ebp]
	mov	eax, DWORD PTR [edx+2]
	or	al, 1
	mov	ecx, DWORD PTR _lpMQInterface$[ebp]
	mov	DWORD PTR [ecx+2], eax

; 570  : 
; 571  :       GetViewByName( &vMsgQ, szl__MSGQ, vSubtask, zLEVEL_TASK );

	push	2
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	mov	eax, DWORD PTR _szl__MSGQ
	push	eax
	lea	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_GetViewByName@16

; 572  :       if ( vMsgQ )

	cmp	DWORD PTR _vMsgQ$[ebp], 0
	je	SHORT $L7734

; 574  :          MQ_MessagePromptForInput pfn;
; 575  : 
; 576  :       // TraceLineS( "MessagePromptForInput Trying to pop up a message box: ",
; 577  :       //             cpcMsgText );
; 578  :          pfn = lpMQInterface->pfnMQ[ 2 ];

	mov	edx, DWORD PTR _lpMQInterface$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR _pfn$7735[ebp], eax

; 579  :          CreateViewFromViewForTask( &vMsgQ, vMsgQ, 0 );

	push	0
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	lea	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12

; 580  :          nRC = (*pfn)( vMsgQ, vSubtask, cpcMsgId, cpcTitle,
; 581  :                        cpcMsgText, bBeep, pchReturnBuffer, usBufferLth );

	mov	ax, WORD PTR _usBufferLth$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pchReturnBuffer$[ebp]
	push	ecx
	mov	dx, WORD PTR _bBeep$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcMsgText$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcTitle$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcMsgId$[ebp]
	push	edx
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	DWORD PTR _pfn$7735[ebp]
	mov	WORD PTR _nRC$[ebp], ax

; 582  :          DropView( vMsgQ );

	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_DropView@4
$L7734:

; 584  : 
; 585  :       lpMQInterface->bRecursiveCall = FALSE;

	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	and	ecx, -2					; fffffffeH
	mov	edx, DWORD PTR _lpMQInterface$[ebp]
	mov	DWORD PTR [edx+2], ecx
$L7733:

; 587  : #endif
; 588  : 
; 589  :    if ( lpCurrentTask )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	je	SHORT $L7736

; 590  :       fnOperationReturn( iMessagePromptForInput, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	362					; 0000016aH
	call	_fnOperationReturn
	add	esp, 8
$L7736:

; 591  : 
; 592  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 593  : }

	mov	esp, ebp
	pop	ebp
	ret	28					; 0000001cH
_MessagePromptForInput@28 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BO@FPIH@MessagePresent?5Task?5Error?3?5?$CFd?$AA@ ; `string'
PUBLIC	??_C@_0CD@OKDI@MessagePresent?5Recursive?5Error?3?5@ ; `string'
PUBLIC	_MessagePresent@12
;	COMDAT ??_C@_0BO@FPIH@MessagePresent?5Task?5Error?3?5?$CFd?$AA@
; File C:\10C\A\oe\KZOEMQAA.C
_DATA	SEGMENT
??_C@_0BO@FPIH@MessagePresent?5Task?5Error?3?5?$CFd?$AA@ DB 'MessagePrese'
	DB	'nt Task Error: %d', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CD@OKDI@MessagePresent?5Recursive?5Error?3?5@
_DATA	SEGMENT
??_C@_0CD@OKDI@MessagePresent?5Recursive?5Error?3?5@ DB 'MessagePresent R'
	DB	'ecursive Error: %d', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vSubtask$ = 8
_lEventType$ = 12
_vMsgQ$ = 16
_lpCurrentTask$ = -12
_lpMQInterface$ = -8
_nRC$ = -4
_pfn$7757 = -16
_MessagePresent@12 PROC NEAR

; 621  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 622  :    LPTASK         lpCurrentTask;
; 623  :    LPMQINTERFACE  lpMQInterface;
; 624  : // zPLONG         lplTaskID;
; 625  :    zSHORT         nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 626  : 
; 627  :    lpCurrentTask = fnOperationCall( iMessagePresent, vSubtask, 0 );

	push	0
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	push	363					; 0000016bH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 628  :    if ( lpCurrentTask == 0 )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7747

; 630  :       TraceLine( "MessagePresent Task Error: %d", lEventType );

	mov	ecx, DWORD PTR _lEventType$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BO@FPIH@MessagePresent?5Task?5Error?3?5?$CFd?$AA@ ; `string'
	call	_TraceLine
	add	esp, 8
$L7747:

; 632  : 
; 633  : // lplTaskID = &lpCurrentTask->lTaskID;
; 634  : 
; 635  : #ifdef __DO_MSGOBJ__
; 636  : // if ( fnValidView( lpCurrentTask, vSubtask ) == 0 )
; 637  : // {
; 638  : //    fnOperationReturn( iMessagePresent, lpCurrentTask );
; 639  : //    return( nRC );
; 640  : // }
; 641  : 
; 642  :    lpMQInterface = fnFindMQInterface( vSubtask, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	call	_fnFindMQInterface
	add	esp, 8
	mov	DWORD PTR _lpMQInterface$[ebp], eax

; 643  : 
; 644  :    if ( lpMQInterface == 0 || lpMQInterface->pfnMQ[ 3 ] == 0 )

	cmp	DWORD PTR _lpMQInterface$[ebp], 0
	je	SHORT $L7750
	mov	ecx, DWORD PTR _lpMQInterface$[ebp]
	cmp	DWORD PTR [ecx+18], 0
	jne	SHORT $L7749
$L7750:

; 646  :       SysMessageBox( vSubtask, g_pchMQI[ 3 ], "Interface Inactive", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0BD@IFDH@Interface?5Inactive?$AA@ ; `string'
	mov	edx, DWORD PTR _g_pchMQI+12
	push	edx
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	call	_SysMessageBox@16

; 648  :    else

	jmp	$L7754
$L7749:

; 649  :    if ( lpMQInterface->bRecursiveCall )

	mov	ecx, DWORD PTR _lpMQInterface$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	and	edx, 1
	test	edx, edx
	je	SHORT $L7752

; 651  :       TraceLine( "MessagePresent Recursive Error: %d", lEventType );

	mov	eax, DWORD PTR _lEventType$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CD@OKDI@MessagePresent?5Recursive?5Error?3?5@ ; `string'
	call	_TraceLine
	add	esp, 8

; 655  :    else

	jmp	SHORT $L7754
$L7752:

; 657  :       lpMQInterface->bRecursiveCall = TRUE;

	mov	ecx, DWORD PTR _lpMQInterface$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	or	edx, 1
	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	DWORD PTR [eax+2], edx

; 658  : 
; 659  :       if ( vMsgQ == 0 )

	cmp	DWORD PTR _vMsgQ$[ebp], 0
	jne	SHORT $L7755

; 660  :          GetViewByName( &vMsgQ, szl__MSGQ, vSubtask, zLEVEL_TASK );

	push	2
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _szl__MSGQ
	push	edx
	lea	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_GetViewByName@16
$L7755:

; 661  : 
; 662  :       if ( vMsgQ ) // **HH**

	cmp	DWORD PTR _vMsgQ$[ebp], 0
	je	SHORT $L7756

; 664  :          MQ_MessagePresent pfn;
; 665  : 
; 666  :       // TraceLineS( "MessagePresent Trying to pop up a message box", "" );
; 667  :          pfn = (MQ_MessagePresent) lpMQInterface->pfnMQ[ 3 ];

	mov	ecx, DWORD PTR _lpMQInterface$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	mov	DWORD PTR _pfn$7757[ebp], edx

; 668  :          CreateViewFromViewForTask( &vMsgQ, vMsgQ, 0 );

	push	0
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	lea	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_CreateViewFromViewForTask@12

; 669  :          nRC = (*pfn)( vMsgQ, vSubtask, lEventType );

	mov	edx, DWORD PTR _lEventType$[ebp]
	push	edx
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	DWORD PTR _pfn$7757[ebp]
	mov	WORD PTR _nRC$[ebp], ax

; 670  :          DropView( vMsgQ );

	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_DropView@4
$L7756:

; 672  : 
; 673  :       lpMQInterface->bRecursiveCall = FALSE;

	mov	eax, DWORD PTR _lpMQInterface$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	and	ecx, -2					; fffffffeH
	mov	edx, DWORD PTR _lpMQInterface$[ebp]
	mov	DWORD PTR [edx+2], ecx
$L7754:

; 675  : #endif
; 676  : 
; 677  :    if ( lpCurrentTask )

	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	je	SHORT $L7759

; 678  :       fnOperationReturn( iMessagePresent, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	363					; 0000016bH
	call	_fnOperationReturn
	add	esp, 8
$L7759:

; 679  : 
; 680  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 681  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_MessagePresent@12 ENDP
_TEXT	ENDS
PUBLIC	_fnFindTaskApp
EXTRN	_fnGetApplicationForSubtask@8:NEAR
_TEXT	SEGMENT
_vSubtask$ = 8
_lpTask$ = 12
_lpApp$ = -8
_lpTaskApp$ = -12
_lpMQInterface$ = -4
_fnFindMQInterface PROC NEAR

; 697  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 698  :    LPAPP          lpApp;
; 699  :    LPTASKAPP      lpTaskApp;
; 700  :    LPMQINTERFACE  lpMQInterface;
; 701  : 
; 702  :    // DGC 12/2/96 Use Core function.
; 703  :    fnGetApplicationForSubtask( &lpApp, vSubtask );

	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpApp$[ebp]
	push	ecx
	call	_fnGetApplicationForSubtask@8

; 704  : 
; 705  :    // If a task is coming up, then it may not yet be tied to an
; 706  :    // application, in this case get out fast.
; 707  :    if ( lpApp == 0 )

	cmp	DWORD PTR _lpApp$[ebp], 0
	jne	SHORT $L7768

; 708  :       return( 0 );

	xor	eax, eax
	jmp	SHORT $L7764
$L7768:

; 709  : 
; 710  :    // Find the appropriate TaskAppRecord.
; 711  :    lpTaskApp = fnFindTaskApp( vSubtask, lpTask, lpApp );

	mov	edx, DWORD PTR _lpApp$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	call	_fnFindTaskApp
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpTaskApp$[ebp], eax

; 712  : 
; 713  :    if ( lpTaskApp == 0 )

	cmp	DWORD PTR _lpTaskApp$[ebp], 0
	jne	SHORT $L7769

; 714  :       return( 0 );

	xor	eax, eax
	jmp	SHORT $L7764
$L7769:

; 717  :       // TaskAppRecord for the application was found on the chain.
; 718  :       lpMQInterface = zGETPTR( lpTaskApp->hMQInterface );

	mov	edx, DWORD PTR _lpTaskApp$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpMQInterface$[ebp], eax

; 720  : 
; 721  :    return( lpMQInterface );

	mov	eax, DWORD PTR _lpMQInterface$[ebp]
$L7764:

; 722  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnFindMQInterface ENDP
_TEXT	ENDS
PUBLIC	??_C@_0O@EKFD@TaskAppRecord?$AA@		; `string'
PUBLIC	??_C@_0BC@DNBO@fnFindMQInterface?$AA@		; `string'
PUBLIC	??_C@_0BC@PICA@MQInterfaceRecord?$AA@		; `string'
PUBLIC	??_C@_0BN@ODIO@Cannot?5load?5Message?5Object?3?5?$AA@ ; `string'
PUBLIC	??_C@_0N@LGH@System?5Error?$AA@			; `string'
EXTRN	_SysGetProc@8:NEAR
EXTRN	_SysGetProcessID@4:NEAR
EXTRN	_SysLoadLibraryWithErrFlag@12:NEAR
EXTRN	_strcpy:NEAR
EXTRN	_strcat:NEAR
EXTRN	_strcmp:NEAR
EXTRN	_fnAllocDataspace:NEAR
EXTRN	_fnFreeDataspace:NEAR
EXTRN	_AnchorBlock:DWORD
EXTRN	_g_pfnGetHndl:DWORD
EXTRN	_szlMessageObject:DWORD
EXTRN	_fnSysLockCoreMutex@4:NEAR
EXTRN	_fnSysUnlockCoreMutex@4:NEAR
EXTRN	_fnIssueCoreError:NEAR
EXTRN	_SysFreeLibrary@8:NEAR
;	COMDAT ??_C@_0O@EKFD@TaskAppRecord?$AA@
; File C:\10C\A\oe\KZOEMQAA.C
_DATA	SEGMENT
??_C@_0O@EKFD@TaskAppRecord?$AA@ DB 'TaskAppRecord', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@DNBO@fnFindMQInterface?$AA@
_DATA	SEGMENT
??_C@_0BC@DNBO@fnFindMQInterface?$AA@ DB 'fnFindMQInterface', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@PICA@MQInterfaceRecord?$AA@
_DATA	SEGMENT
??_C@_0BC@PICA@MQInterfaceRecord?$AA@ DB 'MQInterfaceRecord', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@ODIO@Cannot?5load?5Message?5Object?3?5?$AA@
_DATA	SEGMENT
??_C@_0BN@ODIO@Cannot?5load?5Message?5Object?3?5?$AA@ DB 'Cannot load Mes'
	DB	'sage Object: ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@LGH@System?5Error?$AA@
_DATA	SEGMENT
??_C@_0N@LGH@System?5Error?$AA@ DB 'System Error', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vSubtask$ = 8
_lpTask$ = 12
_lpApp$ = 16
_lpTaskApp$ = -8
_hTaskApp$ = -16
_bCorrectProcess$ = -12
_lProcessID$ = -4
_lpLibrary$7791 = -20
_lpViewOD$7797 = -28
_lpMQInterface$7798 = -32
_hMQInterface$7799 = -36
_hLibrary$7800 = -24
_lpTask$7805 = -40
_bMutexLocked$7810 = -44
_lpTask$7816 = -48
_szMsg$7836 = -560
_k$7841 = -564
_lpTask$7846 = -568
_fnFindTaskApp PROC NEAR

; 740  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 572				; 0000023cH

; 741  :    LPTASKAPP   lpTaskApp;
; 742  :    zPVOID      hTaskApp;
; 743  :    zBOOL       bCorrectProcess = TRUE;

	mov	BYTE PTR _bCorrectProcess$[ebp], 1

; 744  :    zLONG lProcessID = SysGetProcessID( 0 );

	push	0
	call	_SysGetProcessID@4
	mov	DWORD PTR _lProcessID$[ebp], eax

; 745  : 
; 746  :    // Scan the TaskApp chain for the matching application.
; 747  :    if ( lpTask )

	cmp	DWORD PTR _lpTask$[ebp], 0
	je	SHORT $L7783

; 749  :       for ( lpTaskApp = zGETPTR( lpTask->hFirstTaskApp );
; 750  :             lpTaskApp;
; 751  :             lpTaskApp = zGETPTR( lpTaskApp->hNextTaskApp ) )

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR [eax+102]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTaskApp$[ebp], eax
	jmp	SHORT $L7786
$L7787:
	mov	edx, DWORD PTR _lpTaskApp$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTaskApp$[ebp], eax
$L7786:
	cmp	DWORD PTR _lpTaskApp$[ebp], 0
	je	SHORT $L7788

; 753  :          if ( lpTaskApp->lProcessID == lProcessID &&
; 754  :               zGETPTR( lpTaskApp->hApp ) == lpApp )

	mov	ecx, DWORD PTR _lpTaskApp$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	cmp	edx, DWORD PTR _lProcessID$[ebp]
	jne	SHORT $L7790
	mov	eax, DWORD PTR _lpTaskApp$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpApp$[ebp]
	jne	SHORT $L7790

; 756  :             // Ensure it is for the correct process.
; 757  :             LPLIBRARY lpLibrary = zGETPTR( lpTaskApp->hLibrary );

	mov	edx, DWORD PTR _lpTaskApp$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLibrary$7791[ebp], eax

; 758  : 
; 759  :             if ( lpLibrary && lpLibrary->lProcessID != lProcessID )

	cmp	DWORD PTR _lpLibrary$7791[ebp], 0
	je	SHORT $L7793
	mov	ecx, DWORD PTR _lpLibrary$7791[ebp]
	mov	edx, DWORD PTR [ecx+271]
	cmp	edx, DWORD PTR _lProcessID$[ebp]
	je	SHORT $L7793

; 760  :                bCorrectProcess = FALSE;

	mov	BYTE PTR _bCorrectProcess$[ebp], 0
$L7793:

; 761  : 
; 762  :             break;

	jmp	SHORT $L7788
$L7790:

; 764  :       }

	jmp	SHORT $L7787
$L7788:

; 766  :    else

	jmp	SHORT $L7794
$L7783:

; 767  :       lpTaskApp = 0;

	mov	DWORD PTR _lpTaskApp$[ebp], 0
$L7794:

; 768  : 
; 769  :    if ( lpTaskApp == 0 || bCorrectProcess == FALSE )

	cmp	DWORD PTR _lpTaskApp$[ebp], 0
	je	SHORT $L7796
	mov	eax, DWORD PTR _bCorrectProcess$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	$L7845
$L7796:

; 771  :       LPVIEWOD       lpViewOD;
; 772  :       LPMQINTERFACE  lpMQInterface;
; 773  :       zPVOID         hMQInterface;
; 774  :       LPLIBRARY      hLibrary;
; 775  : 
; 776  :       // If the application was not found on the TaskApp chain, create
; 777  :       // a new TaskAppRecord for this application and put it on the chain.
; 778  :       if ( lpTaskApp == 0 ) // need to allocate Task/Interface object

	cmp	DWORD PTR _lpTaskApp$[ebp], 0
	jne	SHORT $L7801

; 780  :          hTaskApp = fnAllocDataspace( lpTask->hFirstDataHeader,
; 781  :                                       sizeof( TaskAppRecord ),
; 782  :                                       1, 0, iTaskApp );

	push	10037					; 00002735H
	push	0
	push	1
	push	26					; 0000001aH
	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+94]
	push	edx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hTaskApp$[ebp], eax

; 783  :          lpTaskApp = zGETPTR( hTaskApp );

	mov	eax, DWORD PTR _hTaskApp$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTaskApp$[ebp], eax

; 784  :          lpTaskApp->lProcessID = lProcessID;

	mov	ecx, DWORD PTR _lpTaskApp$[ebp]
	mov	edx, DWORD PTR _lProcessID$[ebp]
	mov	DWORD PTR [ecx+14], edx
$L7801:

; 786  : 
; 787  :       if ( lpTaskApp == 0 )

	cmp	DWORD PTR _lpTaskApp$[ebp], 0
	jne	SHORT $L7804

; 789  :          LPTASK lpTask = zGETPTR( vSubtask->hTask );

	mov	eax, DWORD PTR _vSubtask$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$7805[ebp], eax

; 790  :          // "KZOEE012 - Error allocating memory"
; 791  :          fnIssueCoreError( lpTask, vSubtask, 20, 12, 0,
; 792  :                            "fnFindMQInterface", "TaskAppRecord" );

	push	OFFSET FLAT:??_C@_0O@EKFD@TaskAppRecord?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BC@DNBO@fnFindMQInterface?$AA@ ; `string'
	push	0
	push	12					; 0000000cH
	push	20					; 00000014H
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$7805[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 793  :          return( 0 );

	xor	eax, eax
	jmp	$L7778
$L7804:

; 795  : 
; 796  :       if ( bCorrectProcess ) // true if we allocated Task/Interface object

	mov	ecx, DWORD PTR _bCorrectProcess$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	$L7809

; 798  :          zBOOL bMutexLocked;
; 799  : 
; 800  :          lpTaskApp->hTask = zGETHNDL( lpTask );

	mov	edx, DWORD PTR _lpTask$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpTaskApp$[ebp]
	mov	DWORD PTR [ecx+10], eax

; 801  :          lpTaskApp->hApp  = zGETHNDL( lpApp );

	mov	edx, DWORD PTR _lpApp$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpTaskApp$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 802  : 
; 803  :          // Alloc space for the MessageQueue processing entry points.
; 804  :          hMQInterface = fnAllocDataspace( lpTask->hFirstDataHeader,
; 805  :                                           sizeof( MQInterfaceRecord ), 1, 0,
; 806  :                                           iMQInterface );

	push	10047					; 0000273fH
	push	0
	push	1
	push	22					; 00000016H
	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+94]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hMQInterface$7799[ebp], eax

; 807  :          lpMQInterface = zGETPTR( hMQInterface );

	mov	ecx, DWORD PTR _hMQInterface$7799[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpMQInterface$7798[ebp], eax

; 808  :          if ( lpMQInterface == 0 )

	cmp	DWORD PTR _lpMQInterface$7798[ebp], 0
	jne	SHORT $L7815

; 810  :             LPTASK lpTask = zGETPTR( vSubtask->hTask );

	mov	edx, DWORD PTR _vSubtask$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$7816[ebp], eax

; 811  :             // "KZOEE012 - Error allocating memory"
; 812  :             fnIssueCoreError( lpTask, vSubtask, 20, 12, 0, "fnFindMQInterface",
; 813  :                               "MQInterfaceRecord" );

	push	OFFSET FLAT:??_C@_0BC@PICA@MQInterfaceRecord?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BC@DNBO@fnFindMQInterface?$AA@ ; `string'
	push	0
	push	12					; 0000000cH
	push	20					; 00000014H
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$7816[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 814  :             fnFreeDataspace( lpTaskApp );

	mov	eax, DWORD PTR _lpTaskApp$[ebp]
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 815  :             return( 0 );

	xor	eax, eax
	jmp	$L7778
$L7815:

; 817  : 
; 818  :          // Save list of entry points.
; 819  :          lpTaskApp->hMQInterface = hMQInterface;

	mov	ecx, DWORD PTR _lpTaskApp$[ebp]
	mov	edx, DWORD PTR _hMQInterface$7799[ebp]
	mov	DWORD PTR [ecx+22], edx

; 820  : 
; 821  :          // Chain the TaskAppRecord off the Task record (single Link List).
; 822  :          if ( lpTaskApp->hTask == AnchorBlock->hMainTask )

	mov	eax, DWORD PTR _lpTaskApp$[ebp]
	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [eax+10]
	cmp	edx, DWORD PTR [ecx+106]
	jne	SHORT $L7819

; 824  :             bMutexLocked = TRUE;

	mov	BYTE PTR _bMutexLocked$7810[ebp], 1

; 825  :             zLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysLockCoreMutex@4

; 827  :          else

	jmp	SHORT $L7820
$L7819:

; 828  :             bMutexLocked = FALSE;

	mov	BYTE PTR _bMutexLocked$7810[ebp], 0
$L7820:

; 829  : 
; 830  :          lpTaskApp->hNextTaskApp = lpTask->hFirstTaskApp;

	mov	eax, DWORD PTR _lpTaskApp$[ebp]
	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+102]
	mov	DWORD PTR [eax+2], edx

; 831  :          lpTask->hFirstTaskApp = hTaskApp;

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR _hTaskApp$[ebp]
	mov	DWORD PTR [eax+102], ecx

; 832  : 
; 833  :          if ( bMutexLocked )

	mov	edx, DWORD PTR _bMutexLocked$7810[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L7821

; 834  :             zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4
$L7821:

; 836  :       else

	jmp	SHORT $L7822
$L7809:

; 838  :          SysFreeLibrary( vSubtask, lpTaskApp->hLibrary );

	mov	eax, DWORD PTR _lpTaskApp$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_SysFreeLibrary@8
$L7822:

; 840  : 
; 841  :       // Find the Message object so that we can get the dll name for
; 842  :       // message queue object processing.
; 843  :       for ( lpViewOD = zGETPTR( lpApp->hFirstViewOD );
; 844  :             lpViewOD;
; 845  :             lpViewOD = zGETPTR( lpViewOD->hNextViewOD ) )

	mov	eax, DWORD PTR _lpApp$[ebp]
	mov	ecx, DWORD PTR [eax+84]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$7797[ebp], eax
	jmp	SHORT $L7825
$L7826:
	mov	edx, DWORD PTR _lpViewOD$7797[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$7797[ebp], eax
$L7825:
	cmp	DWORD PTR _lpViewOD$7797[ebp], 0
	je	SHORT $L7827

; 847  :          if ( zstrcmp( lpViewOD->szName, szlMessageObject ) == 0 )

	mov	ecx, DWORD PTR _lpViewOD$7797[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _szlMessageObject
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L7887
	mov	edx, DWORD PTR _szlMessageObject
	push	edx
	mov	eax, DWORD PTR _lpViewOD$7797[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -572+[ebp], eax
	jmp	SHORT $L7888
$L7887:
	mov	ecx, DWORD PTR _lpViewOD$7797[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	mov	eax, DWORD PTR _szlMessageObject
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -572+[ebp], eax
$L7888:
	cmp	DWORD PTR -572+[ebp], 0
	jne	SHORT $L7834

; 848  :             break;

	jmp	SHORT $L7827
$L7834:

; 849  :       }

	jmp	SHORT $L7826
$L7827:

; 850  : 
; 851  :       if ( lpViewOD == 0 )

	cmp	DWORD PTR _lpViewOD$7797[ebp], 0
	jne	SHORT $L7835

; 853  :          zCHAR szMsg[ 512 ];
; 854  : 
; 855  :       // LPTASK lpTask = zGETPTR( vSubtask->hTask );
; 856  : 
; 857  :          // "KZOEE330 - Message Object Definition not loaded for Application"
; 858  :       // fnIssueCoreError( lpTask, lpView, 20, 330, 0, lpApp->hName, 0 );
; 859  : 
; 860  :          // Don't use the fnIssueCoreError above because will just cause
; 861  :          // a recursive call if the message object can't be found.
; 862  :          zstrcpy( szMsg, "Cannot load Message Object: " );

	push	OFFSET FLAT:??_C@_0BN@ODIO@Cannot?5load?5Message?5Object?3?5?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$7836[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 863  :          zstrcat( szMsg, szlMessageObject );

	mov	edx, DWORD PTR _szlMessageObject
	push	edx
	lea	eax, DWORD PTR _szMsg$7836[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 864  :          SysMessageBox( vSubtask, "System Error", szMsg, 1 );

	push	1
	lea	ecx, DWORD PTR _szMsg$7836[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0N@LGH@System?5Error?$AA@ ; `string'
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_SysMessageBox@16

; 866  :       else

	jmp	$L7845
$L7835:

; 868  :          hLibrary = SysLoadLibraryWithErrFlag( vSubtask,
; 869  :                                                lpViewOD->szOperLibname, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewOD$7797[ebp]
	add	eax, 142				; 0000008eH
	push	eax
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	call	_SysLoadLibraryWithErrFlag@12
	mov	DWORD PTR _hLibrary$7800[ebp], eax

; 870  : 
; 871  :          // If we have a library, get all the Message Queueing Interfaces
; 872  :          // that we know about.
; 873  :          if ( hLibrary )

	cmp	DWORD PTR _hLibrary$7800[ebp], 0
	je	SHORT $L7840

; 875  :             zSHORT  k;
; 876  : 
; 877  :             lpTaskApp->hLibrary = hLibrary;

	mov	edx, DWORD PTR _lpTaskApp$[ebp]
	mov	eax, DWORD PTR _hLibrary$7800[ebp]
	mov	DWORD PTR [edx+18], eax

; 878  :             for ( k = 0; k < MAX_CORE_MQ_INT; k++ )

	mov	WORD PTR _k$7841[ebp], 0
	jmp	SHORT $L7842
$L7843:
	mov	cx, WORD PTR _k$7841[ebp]
	add	cx, 1
	mov	WORD PTR _k$7841[ebp], cx
$L7842:
	movsx	edx, WORD PTR _k$7841[ebp]
	cmp	edx, 4
	jge	SHORT $L7844

; 879  :                lpMQInterface->pfnMQ[ k ] = SysGetProc( hLibrary, g_pchMQI[ k ] );

	movsx	eax, WORD PTR _k$7841[ebp]
	mov	ecx, DWORD PTR _g_pchMQI[eax*4]
	push	ecx
	mov	edx, DWORD PTR _hLibrary$7800[ebp]
	push	edx
	call	_SysGetProc@8
	movsx	ecx, WORD PTR _k$7841[ebp]
	mov	edx, DWORD PTR _lpMQInterface$7798[ebp]
	mov	DWORD PTR [edx+ecx*4+6], eax
	jmp	SHORT $L7843
$L7844:

; 881  :          else

	jmp	SHORT $L7845
$L7840:

; 883  :             LPTASK lpTask = zGETPTR( vSubtask->hTask );

	mov	eax, DWORD PTR _vSubtask$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$7846[ebp], eax

; 884  :             // "KZOEE067 - Could not initialize the Core-MQ interface "
; 885  :             fnIssueCoreError( lpTask, vSubtask, 20, 67, 3L,
; 886  :                               lpViewOD->szOperLibname, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewOD$7797[ebp]
	add	edx, 142				; 0000008eH
	push	edx
	push	3
	push	67					; 00000043H
	push	20					; 00000014H
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$7846[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH
$L7845:

; 890  : 
; 891  :    return( lpTaskApp );

	mov	eax, DWORD PTR _lpTaskApp$[ebp]
$L7778:

; 892  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnFindTaskApp ENDP
_TEXT	ENDS
END
