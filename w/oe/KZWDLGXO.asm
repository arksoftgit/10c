	TITLE	C:\10C\A\oe\KZWDLGXO.C
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
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03EPDK@NLS?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04KEPD@Ctrl?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04BNNJ@Text?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_02BOLE@LI?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08GKEG@NLS_Text?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03EKCM@Opt?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03PKIB@Wnd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07FMLO@Caption?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@GDDG@NLS_DIL_Text?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03IDDH@Msg?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03JPIP@DIL?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_oKZWDLGXO_DerivedControlText@16
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_03EPDK@NLS?$AA@				; `string'
PUBLIC	??_C@_04KEPD@Ctrl?$AA@				; `string'
PUBLIC	??_C@_04BNNJ@Text?$AA@				; `string'
PUBLIC	??_C@_02BOLE@LI?$AA@				; `string'
PUBLIC	??_C@_08GKEG@NLS_Text?$AA@			; `string'
EXTRN	_SysGetLanguageCode@4:NEAR
EXTRN	_GetVariableFromAttribute@36:NEAR
EXTRN	_CreateViewFromViewForTask@12:NEAR
EXTRN	_GetAddrForAttribute@16:NEAR
EXTRN	_StoreValueInRecord@20:NEAR
EXTRN	_DropView@4:NEAR
EXTRN	_ResetViewFromSubobject@4:NEAR
EXTRN	_SetCursorFirstEntity@12:NEAR
EXTRN	_SetCursorFirstEntityByInteger@20:NEAR
EXTRN	_SetCursorRelativeEntity@16:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\A\oe\KZWDLGXO.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_03EPDK@NLS?$AA@
_DATA	SEGMENT
??_C@_03EPDK@NLS?$AA@ DB 'NLS', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_04KEPD@Ctrl?$AA@
_DATA	SEGMENT
??_C@_04KEPD@Ctrl?$AA@ DB 'Ctrl', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_04BNNJ@Text?$AA@
_DATA	SEGMENT
??_C@_04BNNJ@Text?$AA@ DB 'Text', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_02BOLE@LI?$AA@
_DATA	SEGMENT
??_C@_02BOLE@LI?$AA@ DB 'LI', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_08GKEG@NLS_Text?$AA@
_DATA	SEGMENT
??_C@_08GKEG@NLS_Text?$AA@ DB 'NLS_Text', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vXWD$ = 8
_lpEntity$ = 12
_lpAttribute$ = 16
_vXWD2$ = -16
_pchAttr$ = -12
_lNLS$ = -20
_LanguageIndex$ = -4
_nRC$ = -8
_oKZWDLGXO_DerivedControlText@16 PROC NEAR

; 8    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 9    :    zVIEW   vXWD2;
; 10   :    zPCHAR  pchAttr;
; 11   :    zLONG   lNLS;
; 12   :    zSHORT  LanguageIndex;
; 13   :    zSHORT  nRC;
; 14   : 
; 15   :    nRC = GetVariableFromAttribute( &lNLS, 0, zTYPE_INTEGER, 0,
; 16   :                                    vXWD, "Ctrl", "NLS", "", zACCEPT_NULL_ENTITY );

	push	1
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_03EPDK@NLS?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04KEPD@Ctrl?$AA@	; `string'
	mov	eax, DWORD PTR _vXWD$[ebp]
	push	eax
	push	0
	push	76					; 0000004cH
	push	0
	lea	ecx, DWORD PTR _lNLS$[ebp]
	push	ecx
	call	_GetVariableFromAttribute@36
	mov	WORD PTR _nRC$[ebp], ax

; 17   :    if ( nRC < 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jge	SHORT $L7533

; 19   :       GetAddrForAttribute( &pchAttr, vXWD, "Ctrl", "Text" );

	push	OFFSET FLAT:??_C@_04BNNJ@Text?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04KEPD@Ctrl?$AA@	; `string'
	mov	eax, DWORD PTR _vXWD$[ebp]
	push	eax
	lea	ecx, DWORD PTR _pchAttr$[ebp]
	push	ecx
	call	_GetAddrForAttribute@16

; 21   :    else

	jmp	$L7535
$L7533:

; 23   :       CreateViewFromViewForTask( &vXWD2, vXWD, 0 );

	push	0
	mov	edx, DWORD PTR _vXWD$[ebp]
	push	edx
	lea	eax, DWORD PTR _vXWD2$[ebp]
	push	eax
	call	_CreateViewFromViewForTask@12

; 24   :       nRC = ResetViewFromSubobject( vXWD2 );

	mov	ecx, DWORD PTR _vXWD2$[ebp]
	push	ecx
	call	_ResetViewFromSubobject@4
	mov	WORD PTR _nRC$[ebp], ax
$L7537:

; 25   :       while ( nRC == 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jne	SHORT $L7538

; 26   :          nRC = ResetViewFromSubobject( vXWD2 );

	mov	eax, DWORD PTR _vXWD2$[ebp]
	push	eax
	call	_ResetViewFromSubobject@4
	mov	WORD PTR _nRC$[ebp], ax
	jmp	SHORT $L7537
$L7538:

; 27   : 
; 28   :       SetCursorFirstEntity( vXWD2, "NLS", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_03EPDK@NLS?$AA@	; `string'
	mov	ecx, DWORD PTR _vXWD2$[ebp]
	push	ecx
	call	_SetCursorFirstEntity@12

; 29   :       SetCursorRelativeEntity( vXWD2, "NLS", lNLS, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	mov	edx, DWORD PTR _lNLS$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_03EPDK@NLS?$AA@	; `string'
	mov	eax, DWORD PTR _vXWD2$[ebp]
	push	eax
	call	_SetCursorRelativeEntity@16

; 30   :       SysGetLanguageCode( &LanguageIndex );

	lea	ecx, DWORD PTR _LanguageIndex$[ebp]
	push	ecx
	call	_SysGetLanguageCode@4

; 31   :       nRC = SetCursorFirstEntityByInteger( vXWD2, "NLS_Text", "LI", (zLONG) LanguageIndex, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	movsx	edx, WORD PTR _LanguageIndex$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_02BOLE@LI?$AA@	; `string'
	push	OFFSET FLAT:??_C@_08GKEG@NLS_Text?$AA@	; `string'
	mov	eax, DWORD PTR _vXWD2$[ebp]
	push	eax
	call	_SetCursorFirstEntityByInteger@20
	mov	WORD PTR _nRC$[ebp], ax

; 32   :       if ( nRC >= zCURSOR_SET )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jl	SHORT $L7542

; 33   :          GetAddrForAttribute( &pchAttr, vXWD2, "NLS_Text", "Text" );

	push	OFFSET FLAT:??_C@_04BNNJ@Text?$AA@	; `string'
	push	OFFSET FLAT:??_C@_08GKEG@NLS_Text?$AA@	; `string'
	mov	edx, DWORD PTR _vXWD2$[ebp]
	push	edx
	lea	eax, DWORD PTR _pchAttr$[ebp]
	push	eax
	call	_GetAddrForAttribute@16

; 34   :       else

	jmp	SHORT $L7543
$L7542:

; 36   :          GetAddrForAttribute( &pchAttr, vXWD, "Ctrl", "Text" );

	push	OFFSET FLAT:??_C@_04BNNJ@Text?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04KEPD@Ctrl?$AA@	; `string'
	mov	ecx, DWORD PTR _vXWD$[ebp]
	push	ecx
	lea	edx, DWORD PTR _pchAttr$[ebp]
	push	edx
	call	_GetAddrForAttribute@16
$L7543:

; 38   : 
; 39   :       DropView( vXWD2 );

	mov	eax, DWORD PTR _vXWD2$[ebp]
	push	eax
	call	_DropView@4
$L7535:

; 41   : 
; 42   :    StoreValueInRecord( vXWD, lpEntity, lpAttribute, pchAttr, 0 );

	push	0
	mov	ecx, DWORD PTR _pchAttr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpAttribute$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vXWD$[ebp]
	push	ecx
	call	_StoreValueInRecord@20

; 43   :    return( 0 );

	xor	ax, ax

; 44   : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_oKZWDLGXO_DerivedControlText@16 ENDP
_TEXT	ENDS
PUBLIC	_oKZWDLGXO_DerivedOptionText@16
PUBLIC	??_C@_03EKCM@Opt?$AA@				; `string'
;	COMDAT ??_C@_03EKCM@Opt?$AA@
; File C:\10C\A\oe\KZWDLGXO.C
_DATA	SEGMENT
??_C@_03EKCM@Opt?$AA@ DB 'Opt', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vXWD$ = 8
_lpEntity$ = 12
_lpAttribute$ = 16
_vXWD2$ = -20
_pchAttr$ = -12
_szNullString$ = -16
_lNLS$ = -24
_LanguageIndex$ = -4
_nRC$ = -8
_oKZWDLGXO_DerivedOptionText@16 PROC NEAR

; 51   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 52   :    zVIEW   vXWD2;
; 53   :    zPCHAR  pchAttr;
; 54   :    zCHAR   szNullString[ 2 ];
; 55   :    zLONG   lNLS;
; 56   :    zSHORT  LanguageIndex;
; 57   :    zSHORT  nRC;
; 58   : 
; 59   :    szNullString[ 0 ] = 0;

	mov	BYTE PTR _szNullString$[ebp], 0

; 60   : 
; 61   :    nRC = GetVariableFromAttribute( &lNLS, 0, zTYPE_INTEGER, 0,
; 62   :                                    vXWD, "Opt", "NLS", "", zACCEPT_NULL_ENTITY );

	push	1
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_03EPDK@NLS?$AA@	; `string'
	push	OFFSET FLAT:??_C@_03EKCM@Opt?$AA@	; `string'
	mov	eax, DWORD PTR _vXWD$[ebp]
	push	eax
	push	0
	push	76					; 0000004cH
	push	0
	lea	ecx, DWORD PTR _lNLS$[ebp]
	push	ecx
	call	_GetVariableFromAttribute@36
	mov	WORD PTR _nRC$[ebp], ax

; 63   :    if ( nRC < 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jge	SHORT $L7561

; 64   :       pchAttr = szNullString;

	lea	eax, DWORD PTR _szNullString$[ebp]
	mov	DWORD PTR _pchAttr$[ebp], eax

; 65   :    else

	jmp	$L7562
$L7561:

; 67   :       CreateViewFromViewForTask( &vXWD2, vXWD, 0 );

	push	0
	mov	ecx, DWORD PTR _vXWD$[ebp]
	push	ecx
	lea	edx, DWORD PTR _vXWD2$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12

; 68   :       nRC = ResetViewFromSubobject( vXWD2 );

	mov	eax, DWORD PTR _vXWD2$[ebp]
	push	eax
	call	_ResetViewFromSubobject@4
	mov	WORD PTR _nRC$[ebp], ax
$L7564:

; 69   :       while ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	SHORT $L7565

; 70   :          nRC = ResetViewFromSubobject( vXWD2 );

	mov	edx, DWORD PTR _vXWD2$[ebp]
	push	edx
	call	_ResetViewFromSubobject@4
	mov	WORD PTR _nRC$[ebp], ax
	jmp	SHORT $L7564
$L7565:

; 71   :       SetCursorFirstEntity( vXWD2, "NLS", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_03EPDK@NLS?$AA@	; `string'
	mov	eax, DWORD PTR _vXWD2$[ebp]
	push	eax
	call	_SetCursorFirstEntity@12

; 72   :       SetCursorRelativeEntity( vXWD2, "NLS", lNLS, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	mov	ecx, DWORD PTR _lNLS$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_03EPDK@NLS?$AA@	; `string'
	mov	edx, DWORD PTR _vXWD2$[ebp]
	push	edx
	call	_SetCursorRelativeEntity@16

; 73   :       SysGetLanguageCode( &LanguageIndex );

	lea	eax, DWORD PTR _LanguageIndex$[ebp]
	push	eax
	call	_SysGetLanguageCode@4

; 74   :       nRC = SetCursorFirstEntityByInteger( vXWD2, "NLS_Text", "LI", (zLONG) LanguageIndex, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	movsx	ecx, WORD PTR _LanguageIndex$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_02BOLE@LI?$AA@	; `string'
	push	OFFSET FLAT:??_C@_08GKEG@NLS_Text?$AA@	; `string'
	mov	edx, DWORD PTR _vXWD2$[ebp]
	push	edx
	call	_SetCursorFirstEntityByInteger@20
	mov	WORD PTR _nRC$[ebp], ax

; 75   :       if ( nRC >= zCURSOR_SET )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jl	SHORT $L7567

; 76   :          GetAddrForAttribute( &pchAttr, vXWD2, "NLS_Text", "Text" );

	push	OFFSET FLAT:??_C@_04BNNJ@Text?$AA@	; `string'
	push	OFFSET FLAT:??_C@_08GKEG@NLS_Text?$AA@	; `string'
	mov	ecx, DWORD PTR _vXWD2$[ebp]
	push	ecx
	lea	edx, DWORD PTR _pchAttr$[ebp]
	push	edx
	call	_GetAddrForAttribute@16

; 77   :       else

	jmp	SHORT $L7568
$L7567:

; 78   :          pchAttr = szNullString;

	lea	eax, DWORD PTR _szNullString$[ebp]
	mov	DWORD PTR _pchAttr$[ebp], eax
$L7568:

; 79   : 
; 80   :       DropView( vXWD2 );

	mov	ecx, DWORD PTR _vXWD2$[ebp]
	push	ecx
	call	_DropView@4
$L7562:

; 82   : 
; 83   :    StoreValueInRecord( vXWD, lpEntity, lpAttribute, (zPVOID) pchAttr, 0 );

	push	0
	mov	edx, DWORD PTR _pchAttr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpAttribute$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _vXWD$[ebp]
	push	edx
	call	_StoreValueInRecord@20

; 84   : 
; 85   :    return( 0 );

	xor	ax, ax

; 86   : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_oKZWDLGXO_DerivedOptionText@16 ENDP
_TEXT	ENDS
PUBLIC	_oKZWDLGXO_DerivedCaption@16
PUBLIC	??_C@_03PKIB@Wnd?$AA@				; `string'
PUBLIC	??_C@_07FMLO@Caption?$AA@			; `string'
;	COMDAT ??_C@_03PKIB@Wnd?$AA@
; File C:\10C\A\oe\KZWDLGXO.C
_DATA	SEGMENT
??_C@_03PKIB@Wnd?$AA@ DB 'Wnd', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_07FMLO@Caption?$AA@
_DATA	SEGMENT
??_C@_07FMLO@Caption?$AA@ DB 'Caption', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vXWD$ = 8
_lpEntity$ = 12
_lpAttribute$ = 16
_pchAttr$ = -12
_lNLS$ = -16
_LanguageIndex$ = -4
_nRC$ = -8
_oKZWDLGXO_DerivedCaption@16 PROC NEAR

; 94   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 95   :    zPCHAR  pchAttr;
; 96   :    zLONG   lNLS;
; 97   :    zSHORT  LanguageIndex;
; 98   :    zSHORT  nRC;
; 99   : 
; 100  :    nRC = GetVariableFromAttribute( &lNLS, 0, zTYPE_INTEGER, 0,
; 101  :                                    vXWD, "Wnd", "NLS", "", zACCEPT_NULL_ENTITY );

	push	1
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_03EPDK@NLS?$AA@	; `string'
	push	OFFSET FLAT:??_C@_03PKIB@Wnd?$AA@	; `string'
	mov	eax, DWORD PTR _vXWD$[ebp]
	push	eax
	push	0
	push	76					; 0000004cH
	push	0
	lea	ecx, DWORD PTR _lNLS$[ebp]
	push	ecx
	call	_GetVariableFromAttribute@36
	mov	WORD PTR _nRC$[ebp], ax

; 102  :    if ( nRC < 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jge	SHORT $L7585

; 104  :       GetAddrForAttribute( &pchAttr, vXWD, "Wnd", "Caption" );

	push	OFFSET FLAT:??_C@_07FMLO@Caption?$AA@	; `string'
	push	OFFSET FLAT:??_C@_03PKIB@Wnd?$AA@	; `string'
	mov	eax, DWORD PTR _vXWD$[ebp]
	push	eax
	lea	ecx, DWORD PTR _pchAttr$[ebp]
	push	ecx
	call	_GetAddrForAttribute@16

; 106  :    else

	jmp	$L7590
$L7585:

; 108  :       SetCursorFirstEntity( vXWD, "NLS", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_03EPDK@NLS?$AA@	; `string'
	mov	edx, DWORD PTR _vXWD$[ebp]
	push	edx
	call	_SetCursorFirstEntity@12

; 109  :       SetCursorRelativeEntity( vXWD, "NLS", lNLS, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	mov	eax, DWORD PTR _lNLS$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_03EPDK@NLS?$AA@	; `string'
	mov	ecx, DWORD PTR _vXWD$[ebp]
	push	ecx
	call	_SetCursorRelativeEntity@16

; 110  :       SysGetLanguageCode( &LanguageIndex );

	lea	edx, DWORD PTR _LanguageIndex$[ebp]
	push	edx
	call	_SysGetLanguageCode@4

; 111  :       nRC = SetCursorFirstEntityByInteger( vXWD, "NLS_Text", "LI", (zLONG) LanguageIndex, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	movsx	eax, WORD PTR _LanguageIndex$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_02BOLE@LI?$AA@	; `string'
	push	OFFSET FLAT:??_C@_08GKEG@NLS_Text?$AA@	; `string'
	mov	ecx, DWORD PTR _vXWD$[ebp]
	push	ecx
	call	_SetCursorFirstEntityByInteger@20
	mov	WORD PTR _nRC$[ebp], ax

; 112  :       if ( nRC >= zCURSOR_SET )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jl	SHORT $L7589

; 113  :          GetAddrForAttribute( &pchAttr, vXWD, "NLS_Text", "Text" );

	push	OFFSET FLAT:??_C@_04BNNJ@Text?$AA@	; `string'
	push	OFFSET FLAT:??_C@_08GKEG@NLS_Text?$AA@	; `string'
	mov	eax, DWORD PTR _vXWD$[ebp]
	push	eax
	lea	ecx, DWORD PTR _pchAttr$[ebp]
	push	ecx
	call	_GetAddrForAttribute@16

; 114  :       else

	jmp	SHORT $L7590
$L7589:

; 115  :          GetAddrForAttribute( &pchAttr, vXWD, "Wnd", "Caption" );

	push	OFFSET FLAT:??_C@_07FMLO@Caption?$AA@	; `string'
	push	OFFSET FLAT:??_C@_03PKIB@Wnd?$AA@	; `string'
	mov	edx, DWORD PTR _vXWD$[ebp]
	push	edx
	lea	eax, DWORD PTR _pchAttr$[ebp]
	push	eax
	call	_GetAddrForAttribute@16
$L7590:

; 117  : 
; 118  :    StoreValueInRecord( vXWD, lpEntity, lpAttribute, (zPVOID) pchAttr, 0 );

	push	0
	mov	ecx, DWORD PTR _pchAttr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpAttribute$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vXWD$[ebp]
	push	ecx
	call	_StoreValueInRecord@20

; 119  : 
; 120  :    return( 0 );

	xor	ax, ax

; 121  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_oKZWDLGXO_DerivedCaption@16 ENDP
_TEXT	ENDS
PUBLIC	_oKZWDLGXO_DerivedDIL_Msg@16
PUBLIC	??_C@_0N@GDDG@NLS_DIL_Text?$AA@			; `string'
PUBLIC	??_C@_03IDDH@Msg?$AA@				; `string'
PUBLIC	??_C@_03JPIP@DIL?$AA@				; `string'
EXTRN	_CheckExistenceOfEntity@8:NEAR
;	COMDAT ??_C@_0N@GDDG@NLS_DIL_Text?$AA@
; File C:\10C\A\oe\KZWDLGXO.C
_DATA	SEGMENT
??_C@_0N@GDDG@NLS_DIL_Text?$AA@ DB 'NLS_DIL_Text', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_03IDDH@Msg?$AA@
_DATA	SEGMENT
??_C@_03IDDH@Msg?$AA@ DB 'Msg', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_03JPIP@DIL?$AA@
_DATA	SEGMENT
??_C@_03JPIP@DIL?$AA@ DB 'DIL', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vXWD$ = 8
_lpEntity$ = 12
_lpAttribute$ = 16
_pchAttr$ = -12
_LanguageIndex$ = -4
_nRC$ = -8
_oKZWDLGXO_DerivedDIL_Msg@16 PROC NEAR

; 129  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 130  :    zPCHAR  pchAttr;
; 131  :    zSHORT  LanguageIndex;
; 132  :    zSHORT  nRC;
; 133  : 
; 134  : 
; 135  :    if ( CheckExistenceOfEntity( vXWD, "NLS_DIL_Text" ) >= zCURSOR_SET )

	push	OFFSET FLAT:??_C@_0N@GDDG@NLS_DIL_Text?$AA@ ; `string'
	mov	eax, DWORD PTR _vXWD$[ebp]
	push	eax
	call	_CheckExistenceOfEntity@8
	movsx	ecx, ax
	test	ecx, ecx
	jl	SHORT $L7605

; 137  :       SysGetLanguageCode( &LanguageIndex );

	lea	edx, DWORD PTR _LanguageIndex$[ebp]
	push	edx
	call	_SysGetLanguageCode@4

; 138  :       nRC = SetCursorFirstEntityByInteger( vXWD, "NLS_DIL_Text", "LI", (zLONG) LanguageIndex, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	movsx	eax, WORD PTR _LanguageIndex$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_02BOLE@LI?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0N@GDDG@NLS_DIL_Text?$AA@ ; `string'
	mov	ecx, DWORD PTR _vXWD$[ebp]
	push	ecx
	call	_SetCursorFirstEntityByInteger@20
	mov	WORD PTR _nRC$[ebp], ax

; 139  :       if ( nRC >= zCURSOR_SET )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jl	SHORT $L7608

; 140  :          GetAddrForAttribute( &pchAttr, vXWD, "NLS_DIL_Text", "Text" );

	push	OFFSET FLAT:??_C@_04BNNJ@Text?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0N@GDDG@NLS_DIL_Text?$AA@ ; `string'
	mov	eax, DWORD PTR _vXWD$[ebp]
	push	eax
	lea	ecx, DWORD PTR _pchAttr$[ebp]
	push	ecx
	call	_GetAddrForAttribute@16

; 141  :       else

	jmp	SHORT $L7609
$L7608:

; 142  :          GetAddrForAttribute( &pchAttr, vXWD, "DIL", "Msg" );

	push	OFFSET FLAT:??_C@_03IDDH@Msg?$AA@	; `string'
	push	OFFSET FLAT:??_C@_03JPIP@DIL?$AA@	; `string'
	mov	edx, DWORD PTR _vXWD$[ebp]
	push	edx
	lea	eax, DWORD PTR _pchAttr$[ebp]
	push	eax
	call	_GetAddrForAttribute@16
$L7609:

; 144  :    else

	jmp	SHORT $L7612
$L7605:

; 145  :       GetAddrForAttribute( &pchAttr, vXWD, "DIL", "Msg" );

	push	OFFSET FLAT:??_C@_03IDDH@Msg?$AA@	; `string'
	push	OFFSET FLAT:??_C@_03JPIP@DIL?$AA@	; `string'
	mov	ecx, DWORD PTR _vXWD$[ebp]
	push	ecx
	lea	edx, DWORD PTR _pchAttr$[ebp]
	push	edx
	call	_GetAddrForAttribute@16
$L7612:

; 146  : 
; 147  :    StoreValueInRecord( vXWD, lpEntity, lpAttribute, (zPVOID) pchAttr, 0 );

	push	0
	mov	eax, DWORD PTR _pchAttr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpAttribute$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _vXWD$[ebp]
	push	eax
	call	_StoreValueInRecord@20

; 148  : 
; 149  :    return( 0 );

	xor	ax, ax

; 150  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_oKZWDLGXO_DerivedDIL_Msg@16 ENDP
_TEXT	ENDS
END
