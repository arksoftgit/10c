	TITLE	C:\10C\A\oe\KZOEDECA.CPP
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
;	COMDAT ??_C@_0CJ@PAGH@Don2Cam9Pas1Gig3Dks5Dgc8Kat2Mik3@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@GGH@C?H?$CB?S?t?$LD?$BA?8?7?$KK?$BIV?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@MFLM@Length?5Error?5Encrypting?5String?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@OOBG@Zeidon?5Internal?5Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@IECL@Null?5Error?5Encrypting?5String?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@CCLB@Length?5Error?5Decrypting?5String?3?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@FJKM@zDecimalOperation?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CL@KBOB@?$CIZDecimal?$CJ?5Error?5calling?5INIT?5fu@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_GARACrypt@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7ARACrypt@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?EncryptA@@3PAEA				; EncryptA
PUBLIC	?EncryptB@@3PAEA				; EncryptB
PUBLIC	?EncryptNonAlpha@@3PAEA				; EncryptNonAlpha
_DATA	SEGMENT
?EncryptA@@3PAEA DB 016H				; EncryptA
	DB	01fH
	DB	05H
	DB	0dH
	DB	01aH
	DB	010H
	DB	0fH
	DB	01cH
	DB	00H
	DB	06H
	DB	017H
	DB	02H
	DB	013H
	DB	0cH
	DB	09H
	DB	0aH
	DB	01eH
	DB	01H
	DB	019H
	DB	04H
	DB	01dH
	DB	011H
	DB	07H
	DB	012H
	DB	01bH
	DB	0bH
	DB	015H
	DB	0eH
	DB	018H
	DB	014H
	DB	03H
	DB	08H
?EncryptB@@3PAEA DB 0aH					; EncryptB
	DB	09H
	DB	011H
	DB	04H
	DB	01fH
	DB	016H
	DB	01H
	DB	06H
	DB	01dH
	DB	014H
	DB	0dH
	DB	0cH
	DB	013H
	DB	05H
	DB	018H
	DB	08H
	DB	01aH
	DB	0fH
	DB	07H
	DB	01eH
	DB	017H
	DB	02H
	DB	0bH
	DB	01cH
	DB	015H
	DB	01bH
	DB	0eH
	DB	00H
	DB	019H
	DB	03H
	DB	010H
	DB	012H
?EncryptNonAlpha@@3PAEA DB 00H				; EncryptNonAlpha
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	022H
	DB	040H
	DB	025H
	DB	034H
	DB	026H
	DB	024H
	DB	027H
	DB	033H
	DB	05bH
	DB	028H
	DB	03aH
	DB	035H
	DB	02bH
	DB	021H
	DB	023H
	DB	03fH
	DB	07cH
	DB	02eH
	DB	02fH
	DB	060H
	DB	036H
	DB	02cH
	DB	037H
	DB	02dH
	DB	039H
	DB	038H
	DB	02aH
	DB	031H
	DB	03bH
	DB	03eH
	DB	03cH
	DB	029H
	DB	020H
	DB	068H
	DB	06bH
	DB	06eH
	DB	062H
	DB	072H
	DB	074H
	DB	076H
	DB	065H
	DB	079H
	DB	067H
	DB	069H
	DB	06cH
	DB	061H
	DB	070H
	DB	073H
	DB	064H
	DB	077H
	DB	078H
	DB	066H
	DB	07aH
	DB	06aH
	DB	06dH
	DB	06fH
	DB	071H
	DB	063H
	DB	075H
	DB	07dH
	DB	03dH
	DB	032H
	DB	07bH
	DB	05cH
	DB	05dH
	DB	04bH
	DB	045H
	DB	04fH
	DB	051H
	DB	043H
	DB	055H
	DB	047H
	DB	058H
	DB	049H
	DB	05aH
	DB	04cH
	DB	04dH
	DB	042H
	DB	052H
	DB	054H
	DB	046H
	DB	057H
	DB	048H
	DB	059H
	DB	04aH
	DB	041H
	DB	04eH
	DB	050H
	DB	044H
	DB	053H
	DB	056H
	DB	05eH
	DB	05fH
	DB	07eH
	DB	030H
_DATA	ENDS
PUBLIC	??0ZDecimal@@QAE@XZ				; ZDecimal::ZDecimal
PUBLIC	_SysAssignDecimalFromNull@4
_TEXT	SEGMENT
_this$ = -4
??0ZDecimal@@QAE@XZ PROC NEAR				; ZDecimal::ZDecimal

; 62   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 63   :    SysAssignDecimalFromNull( this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	_SysAssignDecimalFromNull@4

; 64   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0ZDecimal@@QAE@XZ ENDP				; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	??0ZDecimal@@QAE@UDecimalStruct@@@Z		; ZDecimal::ZDecimal
_TEXT	SEGMENT
_zDec$ = 8
_this$ = -8
_pDEC$ = -4
??0ZDecimal@@QAE@UDecimalStruct@@@Z PROC NEAR		; ZDecimal::ZDecimal

; 67   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 68   :    zDECIMAL *pDEC = this;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR _pDEC$[ebp], eax

; 69   :    *pDEC = zDec;

	mov	ecx, 10					; 0000000aH
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR _pDEC$[ebp]
	rep movsd

; 70   : // this->dDecValue = zDec;
; 71   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	40					; 00000028H
??0ZDecimal@@QAE@UDecimalStruct@@@Z ENDP		; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	??0ZDecimal@@QAE@PAUDecimalStruct@@@Z		; ZDecimal::ZDecimal
_TEXT	SEGMENT
_zDec$ = 8
_this$ = -8
_pDEC$ = -4
??0ZDecimal@@QAE@PAUDecimalStruct@@@Z PROC NEAR		; ZDecimal::ZDecimal

; 74   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 75   :    zDECIMAL *pDEC = this;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR _pDEC$[ebp], eax

; 76   :    *pDEC = *zDec;

	mov	esi, DWORD PTR _zDec$[ebp]
	mov	ecx, 10					; 0000000aH
	mov	edi, DWORD PTR _pDEC$[ebp]
	rep movsd

; 77   : // this->dDecValue = *zDec;
; 78   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
??0ZDecimal@@QAE@PAUDecimalStruct@@@Z ENDP		; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	_SysConvertStringToDecimal@8
PUBLIC	??0ZDecimal@@QAE@PAD@Z				; ZDecimal::ZDecimal
_TEXT	SEGMENT
_pszStr$ = 8
_this$ = -4
??0ZDecimal@@QAE@PAD@Z PROC NEAR			; ZDecimal::ZDecimal

; 81   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 82   :    SysConvertStringToDecimal( pszStr, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pszStr$[ebp]
	push	ecx
	call	_SysConvertStringToDecimal@8

; 83   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0ZDecimal@@QAE@PAD@Z ENDP				; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	??0ZDecimal@@QAE@PBD@Z				; ZDecimal::ZDecimal
_TEXT	SEGMENT
_pszStr$ = 8
_this$ = -4
??0ZDecimal@@QAE@PBD@Z PROC NEAR			; ZDecimal::ZDecimal

; 86   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 87   :    SysConvertStringToDecimal( pszStr, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pszStr$[ebp]
	push	ecx
	call	_SysConvertStringToDecimal@8

; 88   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0ZDecimal@@QAE@PBD@Z ENDP				; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	_SysConvertLongToDecimal@8
PUBLIC	??0ZDecimal@@QAE@J@Z				; ZDecimal::ZDecimal
_TEXT	SEGMENT
_l$ = 8
_this$ = -4
??0ZDecimal@@QAE@J@Z PROC NEAR				; ZDecimal::ZDecimal

; 91   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 92   :    SysConvertLongToDecimal( l, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _l$[ebp]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 93   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0ZDecimal@@QAE@J@Z ENDP				; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	??0ZDecimal@@QAE@K@Z				; ZDecimal::ZDecimal
_TEXT	SEGMENT
_l$ = 8
_this$ = -4
??0ZDecimal@@QAE@K@Z PROC NEAR				; ZDecimal::ZDecimal

; 96   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 97   :    SysConvertLongToDecimal( (zULONG) l, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _l$[ebp]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 98   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0ZDecimal@@QAE@K@Z ENDP				; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	??0ZDecimal@@QAE@F@Z				; ZDecimal::ZDecimal
_TEXT	SEGMENT
_n$ = 8
_this$ = -4
??0ZDecimal@@QAE@F@Z PROC NEAR				; ZDecimal::ZDecimal

; 101  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 102  :    SysConvertLongToDecimal( (zLONG) n, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	movsx	ecx, WORD PTR _n$[ebp]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 103  : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0ZDecimal@@QAE@F@Z ENDP				; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	??0ZDecimal@@QAE@G@Z				; ZDecimal::ZDecimal
_TEXT	SEGMENT
_n$ = 8
_this$ = -4
??0ZDecimal@@QAE@G@Z PROC NEAR				; ZDecimal::ZDecimal

; 106  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 107  :    SysConvertLongToDecimal( (zLONG) n, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	and	ecx, 65535				; 0000ffffH
	push	ecx
	call	_SysConvertLongToDecimal@8

; 108  : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0ZDecimal@@QAE@G@Z ENDP				; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	_SysConvertDoubleToDecimal@12
PUBLIC	??0ZDecimal@@QAE@N@Z				; ZDecimal::ZDecimal
EXTRN	__fltused:NEAR
_TEXT	SEGMENT
_d$ = 8
_this$ = -4
??0ZDecimal@@QAE@N@Z PROC NEAR				; ZDecimal::ZDecimal

; 111  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 112  :    SysConvertDoubleToDecimal( d, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _d$[ebp]
	push	edx
	call	_SysConvertDoubleToDecimal@12

; 113  : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	8
??0ZDecimal@@QAE@N@Z ENDP				; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	??0ZDecimal@@QAE@H@Z				; ZDecimal::ZDecimal
_TEXT	SEGMENT
_k$ = 8
_this$ = -4
??0ZDecimal@@QAE@H@Z PROC NEAR				; ZDecimal::ZDecimal

; 116  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 117  :    SysConvertLongToDecimal( (zLONG) k, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _k$[ebp]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 118  : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0ZDecimal@@QAE@H@Z ENDP				; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	??0ZDecimal@@QAE@I@Z				; ZDecimal::ZDecimal
_TEXT	SEGMENT
_k$ = 8
_this$ = -4
??0ZDecimal@@QAE@I@Z PROC NEAR				; ZDecimal::ZDecimal

; 121  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 122  :    SysConvertLongToDecimal( (zLONG) k, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _k$[ebp]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 123  : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0ZDecimal@@QAE@I@Z ENDP				; ZDecimal::ZDecimal
_TEXT	ENDS
PUBLIC	??1ZDecimal@@QAE@XZ				; ZDecimal::~ZDecimal
_TEXT	SEGMENT
_this$ = -4
??1ZDecimal@@QAE@XZ PROC NEAR				; ZDecimal::~ZDecimal

; 126  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 127  : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1ZDecimal@@QAE@XZ ENDP				; ZDecimal::~ZDecimal
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@V0@@Z			; ZDecimal::operator=
PUBLIC	_SysAssignDecimalFromDecimal@8
_TEXT	SEGMENT
_zDec$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@V0@@Z PROC NEAR			; ZDecimal::operator=

; 135  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 136  :    SysAssignDecimalFromDecimal( this, &zDec );

	lea	eax, DWORD PTR _zDec$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_SysAssignDecimalFromDecimal@8

; 137  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 138  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??4ZDecimal@@QAE?AV0@V0@@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@UDecimalStruct@@@Z		; ZDecimal::operator=
_TEXT	SEGMENT
_zDEC$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@UDecimalStruct@@@Z PROC NEAR	; ZDecimal::operator=

; 142  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 143  :    SysAssignDecimalFromDecimal( this, &zDEC );

	lea	eax, DWORD PTR _zDEC$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_SysAssignDecimalFromDecimal@8

; 144  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 145  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	44					; 0000002cH
??4ZDecimal@@QAE?AV0@UDecimalStruct@@@Z ENDP		; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@PAUDecimalStruct@@@Z	; ZDecimal::operator=
_TEXT	SEGMENT
_zPDEC$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@PAUDecimalStruct@@@Z PROC NEAR	; ZDecimal::operator=

; 149  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 150  :    SysAssignDecimalFromDecimal( this, zPDEC );

	mov	eax, DWORD PTR _zPDEC$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_SysAssignDecimalFromDecimal@8

; 151  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 152  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
??4ZDecimal@@QAE?AV0@PAUDecimalStruct@@@Z ENDP		; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@PAX@Z			; ZDecimal::operator=
_TEXT	SEGMENT
_pv$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@PAX@Z PROC NEAR			; ZDecimal::operator=

; 156  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 157  :    SysAssignDecimalFromDecimal( this, (zPDECIMAL) pv );

	mov	eax, DWORD PTR _pv$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_SysAssignDecimalFromDecimal@8

; 158  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 159  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
??4ZDecimal@@QAE?AV0@PAX@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@J@Z			; ZDecimal::operator=
_TEXT	SEGMENT
_l$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@J@Z PROC NEAR			; ZDecimal::operator=

; 163  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 164  :    SysConvertLongToDecimal( l, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _l$[ebp]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 165  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 166  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
??4ZDecimal@@QAE?AV0@J@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@K@Z			; ZDecimal::operator=
_TEXT	SEGMENT
_l$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@K@Z PROC NEAR			; ZDecimal::operator=

; 170  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 171  :    SysConvertLongToDecimal( (zLONG) l, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _l$[ebp]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 172  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 173  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
??4ZDecimal@@QAE?AV0@K@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@F@Z			; ZDecimal::operator=
_TEXT	SEGMENT
_n$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@F@Z PROC NEAR			; ZDecimal::operator=

; 177  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 178  :    SysConvertLongToDecimal( (zLONG) n, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	movsx	ecx, WORD PTR _n$[ebp]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 179  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 180  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
??4ZDecimal@@QAE?AV0@F@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@G@Z			; ZDecimal::operator=
_TEXT	SEGMENT
_n$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@G@Z PROC NEAR			; ZDecimal::operator=

; 184  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 185  :    SysConvertLongToDecimal( (zLONG) n, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	and	ecx, 65535				; 0000ffffH
	push	ecx
	call	_SysConvertLongToDecimal@8

; 186  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 187  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
??4ZDecimal@@QAE?AV0@G@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@H@Z			; ZDecimal::operator=
_TEXT	SEGMENT
_i$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@H@Z PROC NEAR			; ZDecimal::operator=

; 191  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 192  :    SysConvertLongToDecimal( (zLONG) i, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _i$[ebp]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 193  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 194  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
??4ZDecimal@@QAE?AV0@H@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@I@Z			; ZDecimal::operator=
_TEXT	SEGMENT
_i$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@I@Z PROC NEAR			; ZDecimal::operator=

; 198  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 199  :    SysConvertLongToDecimal( (zLONG) i, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _i$[ebp]
	push	ecx
	call	_SysConvertLongToDecimal@8

; 200  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 201  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
??4ZDecimal@@QAE?AV0@I@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@N@Z			; ZDecimal::operator=
_TEXT	SEGMENT
_d$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@N@Z PROC NEAR			; ZDecimal::operator=

; 205  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 206  :    SysConvertDoubleToDecimal( d, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _d$[ebp]
	push	edx
	call	_SysConvertDoubleToDecimal@12

; 207  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 208  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
??4ZDecimal@@QAE?AV0@N@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QBE?AV0@N@Z			; ZDecimal::operator=
_TEXT	SEGMENT
_d$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QBE?AV0@N@Z PROC NEAR			; ZDecimal::operator=

; 212  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 213  :    SysConvertDoubleToDecimal( (double) d, (zPDECIMAL) this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _d$[ebp]
	push	edx
	call	_SysConvertDoubleToDecimal@12

; 214  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 215  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
??4ZDecimal@@QBE?AV0@N@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@PAD@Z			; ZDecimal::operator=
_TEXT	SEGMENT
_pszStr$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@PAD@Z PROC NEAR			; ZDecimal::operator=

; 219  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 220  :    SysConvertStringToDecimal( pszStr, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pszStr$[ebp]
	push	ecx
	call	_SysConvertStringToDecimal@8

; 221  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 222  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
??4ZDecimal@@QAE?AV0@PAD@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??4ZDecimal@@QAE?AV0@PBD@Z			; ZDecimal::operator=
_TEXT	SEGMENT
_pszStr$ = 12
___$ReturnUdt$ = 8
_this$ = -4
??4ZDecimal@@QAE?AV0@PBD@Z PROC NEAR			; ZDecimal::operator=

; 226  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 227  :    SysConvertStringToDecimal( pszStr, this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pszStr$[ebp]
	push	ecx
	call	_SysConvertStringToDecimal@8

; 228  :    return( *this );

	mov	esi, DWORD PTR _this$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 229  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
??4ZDecimal@@QAE?AV0@PBD@Z ENDP				; ZDecimal::operator=
_TEXT	ENDS
PUBLIC	??BZDecimal@@QAENXZ				; ZDecimal::operator double
PUBLIC	_SysConvertDecimalToDouble@8
_TEXT	SEGMENT
_this$ = -12
_d$ = -8
??BZDecimal@@QAENXZ PROC NEAR				; ZDecimal::operator double

; 236  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 237  :    double d;
; 238  : 
; 239  :    SysConvertDecimalToDouble( this, &d );

	lea	eax, DWORD PTR _d$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_SysConvertDecimalToDouble@8

; 240  :    return( d );

	fld	QWORD PTR _d$[ebp]

; 241  : }

	mov	esp, ebp
	pop	ebp
	ret	0
??BZDecimal@@QAENXZ ENDP				; ZDecimal::operator double
_TEXT	ENDS
PUBLIC	??BZDecimal@@QAEJXZ				; ZDecimal::operator long
PUBLIC	_SysConvertDecimalToLong@8
_TEXT	SEGMENT
_l$ = -4
_this$ = -8
??BZDecimal@@QAEJXZ PROC NEAR				; ZDecimal::operator long

; 244  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 245  :    zLONG l;
; 246  : 
; 247  :    SysConvertDecimalToLong( this, &l );

	lea	eax, DWORD PTR _l$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_SysConvertDecimalToLong@8

; 248  :    return( l );

	mov	eax, DWORD PTR _l$[ebp]

; 249  : }

	mov	esp, ebp
	pop	ebp
	ret	0
??BZDecimal@@QAEJXZ ENDP				; ZDecimal::operator long
_TEXT	ENDS
PUBLIC	??BZDecimal@@QAEKXZ				; ZDecimal::operator unsigned long
_TEXT	SEGMENT
_this$ = -8
_l$ = -4
??BZDecimal@@QAEKXZ PROC NEAR				; ZDecimal::operator unsigned long

; 252  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 253  :    zULONG l;
; 254  : 
; 255  :    SysConvertDecimalToLong( this, (zPLONG) &l );

	lea	eax, DWORD PTR _l$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_SysConvertDecimalToLong@8

; 256  :    return( l );

	mov	eax, DWORD PTR _l$[ebp]

; 257  : }

	mov	esp, ebp
	pop	ebp
	ret	0
??BZDecimal@@QAEKXZ ENDP				; ZDecimal::operator unsigned long
_TEXT	ENDS
PUBLIC	??BZDecimal@@QAEFXZ				; ZDecimal::operator short
_TEXT	SEGMENT
_this$ = -8
_l$ = -4
??BZDecimal@@QAEFXZ PROC NEAR				; ZDecimal::operator short

; 260  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 261  :    zLONG l;
; 262  : 
; 263  :    SysConvertDecimalToLong( this, &l );

	lea	eax, DWORD PTR _l$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_SysConvertDecimalToLong@8

; 264  :    return( (zSHORT) l );

	mov	ax, WORD PTR _l$[ebp]

; 265  : }

	mov	esp, ebp
	pop	ebp
	ret	0
??BZDecimal@@QAEFXZ ENDP				; ZDecimal::operator short
_TEXT	ENDS
PUBLIC	??BZDecimal@@QAEGXZ				; ZDecimal::operator unsigned short
_TEXT	SEGMENT
_this$ = -8
_l$ = -4
??BZDecimal@@QAEGXZ PROC NEAR				; ZDecimal::operator unsigned short

; 268  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 269  :    zLONG l;
; 270  : 
; 271  :    SysConvertDecimalToLong( this, &l );

	lea	eax, DWORD PTR _l$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_SysConvertDecimalToLong@8

; 272  :    return( (zUSHORT) l );

	mov	ax, WORD PTR _l$[ebp]

; 273  : }

	mov	esp, ebp
	pop	ebp
	ret	0
??BZDecimal@@QAEGXZ ENDP				; ZDecimal::operator unsigned short
_TEXT	ENDS
PUBLIC	_SysConvertDecimalToString@12
PUBLIC	??BZDecimal@@QAEPADXZ				; ZDecimal::operator char *
_TEXT	SEGMENT
_this$ = -4
??BZDecimal@@QAEPADXZ PROC NEAR				; ZDecimal::operator char *

; 276  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 277  :    SysConvertDecimalToString( this, this->szValue, 10 );

	push	10					; 0000000aH
	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 40					; 00000028H
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_SysConvertDecimalToString@12

; 278  :    return( this->szValue );

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 40					; 00000028H

; 279  : }

	mov	esp, ebp
	pop	ebp
	ret	0
??BZDecimal@@QAEPADXZ ENDP				; ZDecimal::operator char *
_TEXT	ENDS
PUBLIC	?IsNull@ZDecimal@@QAEEXZ			; ZDecimal::IsNull
PUBLIC	_SysCompareDecimalToNull@4
_TEXT	SEGMENT
_this$ = -4
?IsNull@ZDecimal@@QAEEXZ PROC NEAR			; ZDecimal::IsNull

; 287  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 288  :    return( SysCompareDecimalToNull( this ) == 0 );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	_SysCompareDecimalToNull@4
	movsx	eax, ax
	neg	eax
	sbb	eax, eax
	inc	eax

; 289  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?IsNull@ZDecimal@@QAEEXZ ENDP				; ZDecimal::IsNull
_TEXT	ENDS
PUBLIC	??N@YGDVZDecimal@@0@Z				; operator<=
PUBLIC	_SysCompareDecimalToDecimal@8
_TEXT	SEGMENT
_zDec1$ = 8
_zDec2$ = 152
$T9669 = -4
??N@YGDVZDecimal@@0@Z PROC NEAR				; operator<=

; 293  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 294  :    return( SysCompareDecimalToDecimal( &zDec1, &zDec2 ) <= 0 );

	lea	eax, DWORD PTR _zDec2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec1$[ebp]
	push	ecx
	call	_SysCompareDecimalToDecimal@8
	movsx	edx, ax
	xor	eax, eax
	test	edx, edx
	setle	al
	mov	BYTE PTR $T9669[ebp], al
	lea	ecx, DWORD PTR _zDec1$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9669[ebp]

; 295  : }

	mov	esp, ebp
	pop	ebp
	ret	288					; 00000120H
??N@YGDVZDecimal@@0@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??M@YGDVZDecimal@@0@Z				; operator<
_TEXT	SEGMENT
_zDec1$ = 8
_zDec2$ = 152
$T9671 = -4
??M@YGDVZDecimal@@0@Z PROC NEAR				; operator<

; 299  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 300  :    return( SysCompareDecimalToDecimal( &zDec1, &zDec2 ) < 0 );

	lea	eax, DWORD PTR _zDec2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec1$[ebp]
	push	ecx
	call	_SysCompareDecimalToDecimal@8
	movsx	edx, ax
	xor	eax, eax
	test	edx, edx
	setl	al
	mov	BYTE PTR $T9671[ebp], al
	lea	ecx, DWORD PTR _zDec1$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9671[ebp]

; 301  : }

	mov	esp, ebp
	pop	ebp
	ret	288					; 00000120H
??M@YGDVZDecimal@@0@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??P@YGDVZDecimal@@0@Z				; operator>=
_TEXT	SEGMENT
_zDec1$ = 8
_zDec2$ = 152
$T9673 = -4
??P@YGDVZDecimal@@0@Z PROC NEAR				; operator>=

; 305  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 306  :    return( SysCompareDecimalToDecimal( &zDec1, &zDec2 ) >= 0 );

	lea	eax, DWORD PTR _zDec2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec1$[ebp]
	push	ecx
	call	_SysCompareDecimalToDecimal@8
	movsx	edx, ax
	xor	eax, eax
	test	edx, edx
	setge	al
	mov	BYTE PTR $T9673[ebp], al
	lea	ecx, DWORD PTR _zDec1$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9673[ebp]

; 307  : }

	mov	esp, ebp
	pop	ebp
	ret	288					; 00000120H
??P@YGDVZDecimal@@0@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??O@YGDVZDecimal@@0@Z				; operator>
_TEXT	SEGMENT
_zDec1$ = 8
_zDec2$ = 152
$T9675 = -4
??O@YGDVZDecimal@@0@Z PROC NEAR				; operator>

; 311  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 312  :    return( SysCompareDecimalToDecimal( &zDec1, &zDec2 ) > 0 );

	lea	eax, DWORD PTR _zDec2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec1$[ebp]
	push	ecx
	call	_SysCompareDecimalToDecimal@8
	movsx	edx, ax
	xor	eax, eax
	test	edx, edx
	setg	al
	mov	BYTE PTR $T9675[ebp], al
	lea	ecx, DWORD PTR _zDec1$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9675[ebp]

; 313  : }

	mov	esp, ebp
	pop	ebp
	ret	288					; 00000120H
??O@YGDVZDecimal@@0@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??8@YGDVZDecimal@@0@Z				; operator==
_TEXT	SEGMENT
_zDec1$ = 8
_zDec2$ = 152
$T9677 = -4
??8@YGDVZDecimal@@0@Z PROC NEAR				; operator==

; 317  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 318  :    return( SysCompareDecimalToDecimal( &zDec1, &zDec2 ) == 0 );

	lea	eax, DWORD PTR _zDec2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec1$[ebp]
	push	ecx
	call	_SysCompareDecimalToDecimal@8
	movsx	edx, ax
	neg	edx
	sbb	edx, edx
	inc	edx
	mov	BYTE PTR $T9677[ebp], dl
	lea	ecx, DWORD PTR _zDec1$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9677[ebp]

; 319  : }

	mov	esp, ebp
	pop	ebp
	ret	288					; 00000120H
??8@YGDVZDecimal@@0@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??9@YGDVZDecimal@@0@Z				; operator!=
_TEXT	SEGMENT
_zDec1$ = 8
_zDec2$ = 152
$T9679 = -4
??9@YGDVZDecimal@@0@Z PROC NEAR				; operator!=

; 323  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 324  :    return( SysCompareDecimalToDecimal( &zDec1, &zDec2 ) != 0 );

	lea	eax, DWORD PTR _zDec2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec1$[ebp]
	push	ecx
	call	_SysCompareDecimalToDecimal@8
	movsx	edx, ax
	neg	edx
	sbb	edx, edx
	neg	edx
	mov	BYTE PTR $T9679[ebp], dl
	lea	ecx, DWORD PTR _zDec1$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9679[ebp]

; 325  : }

	mov	esp, ebp
	pop	ebp
	ret	288					; 00000120H
??9@YGDVZDecimal@@0@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??7@YGDVZDecimal@@@Z				; operator!
_TEXT	SEGMENT
_zDec$ = 8
_zTemp$ = -144
$T9681 = -148
??7@YGDVZDecimal@@@Z PROC NEAR				; operator!

; 329  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 148				; 00000094H

; 330  :    ZDecimal zTemp = 0;

	push	0
	lea	ecx, DWORD PTR _zTemp$[ebp]
	call	??0ZDecimal@@QAE@H@Z			; ZDecimal::ZDecimal

; 331  : 
; 332  :    return( SysCompareDecimalToDecimal( &zTemp, &zDec ) == 0 );

	lea	eax, DWORD PTR _zDec$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zTemp$[ebp]
	push	ecx
	call	_SysCompareDecimalToDecimal@8
	movsx	edx, ax
	neg	edx
	sbb	edx, edx
	inc	edx
	mov	BYTE PTR $T9681[ebp], dl
	lea	ecx, DWORD PTR _zTemp$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9681[ebp]

; 333  : }

	mov	esp, ebp
	pop	ebp
	ret	144					; 00000090H
??7@YGDVZDecimal@@@Z ENDP				; operator!
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@V0@0@Z			; operator+
PUBLIC	_SysAddDecimalToDecimal@12
_TEXT	SEGMENT
_zDec$ = 12
_zDec2$ = 156
___$ReturnUdt$ = 8
_zTemp$ = -144
??H@YG?AVZDecimal@@V0@0@Z PROC NEAR			; operator+

; 341  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 144				; 00000090H
	push	esi
	push	edi

; 342  :    ZDecimal zTemp;

	lea	ecx, DWORD PTR _zTemp$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 343  : 
; 344  :    SysAddDecimalToDecimal( &zTemp, &zDec, &zDec2 );

	lea	eax, DWORD PTR _zDec2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	push	ecx
	lea	edx, DWORD PTR _zTemp$[ebp]
	push	edx
	call	_SysAddDecimalToDecimal@12

; 345  :    return( zTemp );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zTemp$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zTemp$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 346  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	292					; 00000124H
??H@YG?AVZDecimal@@V0@0@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@V0@J@Z			; operator+
_TEXT	SEGMENT
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9684 = -288
??H@YG?AVZDecimal@@V0@J@Z PROC NEAR			; operator+

; 350  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 351  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 352  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9684[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9684[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 353  :    return( zDecL + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 354  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@V0@J@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@JV0@@Z			; operator+
_TEXT	SEGMENT
_l$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9686 = -288
??H@YG?AVZDecimal@@JV0@@Z PROC NEAR			; operator+

; 358  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 359  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 360  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9686[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9686[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 361  :    return( zDecL + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 362  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@JV0@@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@V0@K@Z			; operator+
_TEXT	SEGMENT
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9688 = -288
??H@YG?AVZDecimal@@V0@K@Z PROC NEAR			; operator+

; 366  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 367  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 368  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9688[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9688[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 369  :    return( zDecL + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 370  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@V0@K@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@KV0@@Z			; operator+
_TEXT	SEGMENT
_l$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9690 = -288
??H@YG?AVZDecimal@@KV0@@Z PROC NEAR			; operator+

; 374  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 375  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 376  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9690[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9690[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 377  :    return( zDecL + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 378  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@KV0@@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@V0@F@Z			; operator+
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9692 = -288
??H@YG?AVZDecimal@@V0@F@Z PROC NEAR			; operator+

; 382  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 383  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 384  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9692[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9692[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 385  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 386  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@V0@F@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@FV0@@Z			; operator+
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9694 = -288
??H@YG?AVZDecimal@@FV0@@Z PROC NEAR			; operator+

; 390  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 391  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 392  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9694[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9694[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 393  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 394  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@FV0@@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@V0@G@Z			; operator+
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9696 = -288
??H@YG?AVZDecimal@@V0@G@Z PROC NEAR			; operator+

; 398  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 399  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 400  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9696[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9696[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 401  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 402  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@V0@G@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@GV0@@Z			; operator+
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9698 = -288
??H@YG?AVZDecimal@@GV0@@Z PROC NEAR			; operator+

; 406  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 407  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 408  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9698[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9698[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 409  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 410  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@GV0@@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@V0@H@Z			; operator+
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9700 = -288
??H@YG?AVZDecimal@@V0@H@Z PROC NEAR			; operator+

; 414  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 415  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 416  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9700[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9700[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 417  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 418  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@V0@H@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@HV0@@Z			; operator+
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9702 = -288
??H@YG?AVZDecimal@@HV0@@Z PROC NEAR			; operator+

; 422  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 423  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 424  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9702[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9702[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 425  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 426  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@HV0@@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@V0@I@Z			; operator+
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9704 = -288
??H@YG?AVZDecimal@@V0@I@Z PROC NEAR			; operator+

; 430  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 431  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 432  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9704[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9704[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 433  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 434  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@V0@I@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@IV0@@Z			; operator+
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9706 = -288
??H@YG?AVZDecimal@@IV0@@Z PROC NEAR			; operator+

; 438  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 439  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 440  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9706[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9706[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 441  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 442  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@IV0@@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@V0@D@Z			; operator+
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9708 = -288
??H@YG?AVZDecimal@@V0@D@Z PROC NEAR			; operator+

; 446  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 447  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 448  :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9708[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9708[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 449  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 450  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@V0@D@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@DV0@@Z			; operator+
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9710 = -288
??H@YG?AVZDecimal@@DV0@@Z PROC NEAR			; operator+

; 454  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 455  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 456  :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9710[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9710[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 457  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 458  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@DV0@@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@V0@E@Z			; operator+
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9712 = -288
??H@YG?AVZDecimal@@V0@E@Z PROC NEAR			; operator+

; 462  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 463  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 464  :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9712[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9712[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 465  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 466  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@V0@E@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@EV0@@Z			; operator+
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9714 = -288
??H@YG?AVZDecimal@@EV0@@Z PROC NEAR			; operator+

; 470  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 471  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 472  :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9714[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9714[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 473  :    return( zDecN + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 474  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@EV0@@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@V0@N@Z			; operator+
_TEXT	SEGMENT
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9716 = -288
??H@YG?AVZDecimal@@V0@N@Z PROC NEAR			; operator+

; 478  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 479  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 480  :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9716[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9716[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 481  :    return( zDecD + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]
	push	eax
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 482  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??H@YG?AVZDecimal@@V0@N@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@NV0@@Z			; operator+
_TEXT	SEGMENT
_d$ = 12
_zDec$ = 20
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9718 = -288
??H@YG?AVZDecimal@@NV0@@Z PROC NEAR			; operator+

; 486  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 487  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 488  :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9718[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9718[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 489  :    return( zDecD + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]
	push	eax
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 490  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??H@YG?AVZDecimal@@NV0@@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@V0@M@Z			; operator+
_TEXT	SEGMENT
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9720 = -288
??H@YG?AVZDecimal@@V0@M@Z PROC NEAR			; operator+

; 494  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 495  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 496  :    zDecD = (double) d;

	fld	DWORD PTR _d$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9720[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9720[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 497  :    return( zDecD + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	push	ecx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 498  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@V0@M@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	??H@YG?AVZDecimal@@MV0@@Z			; operator+
_TEXT	SEGMENT
_d$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9722 = -288
??H@YG?AVZDecimal@@MV0@@Z PROC NEAR			; operator+

; 502  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 503  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 504  :    zDecD = (double) d;

	fld	DWORD PTR _d$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9722[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9722[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 505  :    return( zDecD + zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	push	ecx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 506  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??H@YG?AVZDecimal@@MV0@@Z ENDP				; operator+
_TEXT	ENDS
PUBLIC	_SysSubtractDecimalFromDecimal@12
PUBLIC	??G@YG?AVZDecimal@@V0@0@Z			; operator-
_TEXT	SEGMENT
_zDec$ = 12
_zDec2$ = 156
___$ReturnUdt$ = 8
_zTemp$ = -144
??G@YG?AVZDecimal@@V0@0@Z PROC NEAR			; operator-

; 514  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 144				; 00000090H
	push	esi
	push	edi

; 515  :    ZDecimal zTemp;

	lea	ecx, DWORD PTR _zTemp$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 516  : 
; 517  :    SysSubtractDecimalFromDecimal( &zTemp, &zDec, &zDec2 );

	lea	eax, DWORD PTR _zDec2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	push	ecx
	lea	edx, DWORD PTR _zTemp$[ebp]
	push	edx
	call	_SysSubtractDecimalFromDecimal@12

; 518  :    return( zTemp );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zTemp$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zTemp$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 519  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	292					; 00000124H
??G@YG?AVZDecimal@@V0@0@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@V0@J@Z			; operator-
_TEXT	SEGMENT
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9725 = -288
??G@YG?AVZDecimal@@V0@J@Z PROC NEAR			; operator-

; 523  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 524  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 525  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9725[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9725[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 526  :    return( zDec - zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 527  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@V0@J@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@JV0@@Z			; operator-
_TEXT	SEGMENT
_l$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9727 = -288
??G@YG?AVZDecimal@@JV0@@Z PROC NEAR			; operator-

; 531  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 532  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 533  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9727[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9727[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 534  :    return( zDecL - zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 535  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@JV0@@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@V0@K@Z			; operator-
_TEXT	SEGMENT
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9729 = -288
??G@YG?AVZDecimal@@V0@K@Z PROC NEAR			; operator-

; 539  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 540  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 541  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9729[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9729[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 542  :    return( zDec - zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 543  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@V0@K@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@KV0@@Z			; operator-
_TEXT	SEGMENT
_l$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9731 = -288
??G@YG?AVZDecimal@@KV0@@Z PROC NEAR			; operator-

; 547  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 548  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 549  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9731[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9731[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 550  :    return( zDecL - zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 551  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@KV0@@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@V0@F@Z			; operator-
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9733 = -288
??G@YG?AVZDecimal@@V0@F@Z PROC NEAR			; operator-

; 555  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 556  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 557  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9733[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9733[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 558  :    return( zDec - zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 559  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@V0@F@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@FV0@@Z			; operator-
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9735 = -288
??G@YG?AVZDecimal@@FV0@@Z PROC NEAR			; operator-

; 563  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 564  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 565  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9735[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9735[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 566  :    return( zDecN - zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 567  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@FV0@@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@V0@G@Z			; operator-
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9737 = -288
??G@YG?AVZDecimal@@V0@G@Z PROC NEAR			; operator-

; 571  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 572  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 573  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9737[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9737[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 574  :    return( zDec - zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 575  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@V0@G@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@GV0@@Z			; operator-
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9739 = -288
??G@YG?AVZDecimal@@GV0@@Z PROC NEAR			; operator-

; 579  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 580  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 581  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9739[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9739[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 582  :    return( zDecN - zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 583  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@GV0@@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@V0@H@Z			; operator-
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9741 = -288
??G@YG?AVZDecimal@@V0@H@Z PROC NEAR			; operator-

; 587  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 588  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 589  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9741[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9741[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 590  :    return( zDec - zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 591  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@V0@H@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@HV0@@Z			; operator-
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9743 = -288
??G@YG?AVZDecimal@@HV0@@Z PROC NEAR			; operator-

; 595  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 596  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 597  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9743[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9743[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 598  :    return( zDecN - zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 599  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@HV0@@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@V0@I@Z			; operator-
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9745 = -288
??G@YG?AVZDecimal@@V0@I@Z PROC NEAR			; operator-

; 603  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 604  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 605  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9745[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9745[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 606  :    return( zDec - zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 607  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@V0@I@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@IV0@@Z			; operator-
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9747 = -288
??G@YG?AVZDecimal@@IV0@@Z PROC NEAR			; operator-

; 611  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 612  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 613  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9747[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9747[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 614  :    return( zDecN - zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 615  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@IV0@@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@V0@D@Z			; operator-
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9749 = -288
??G@YG?AVZDecimal@@V0@D@Z PROC NEAR			; operator-

; 619  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 620  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 621  :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9749[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9749[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 622  :    return( zDec - zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 623  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@V0@D@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@DV0@@Z			; operator-
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9751 = -288
??G@YG?AVZDecimal@@DV0@@Z PROC NEAR			; operator-

; 627  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 628  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 629  :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9751[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9751[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 630  :    return( zDecN - zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 631  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@DV0@@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@V0@E@Z			; operator-
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9753 = -288
??G@YG?AVZDecimal@@V0@E@Z PROC NEAR			; operator-

; 635  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 636  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 637  :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9753[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9753[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 638  :    return( zDec - zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 639  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@V0@E@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@EV0@@Z			; operator-
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9755 = -288
??G@YG?AVZDecimal@@EV0@@Z PROC NEAR			; operator-

; 643  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 644  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 645  :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9755[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9755[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 646  :    return( zDecN - zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 647  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@EV0@@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@V0@N@Z			; operator-
_TEXT	SEGMENT
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9757 = -288
??G@YG?AVZDecimal@@V0@N@Z PROC NEAR			; operator-

; 651  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 652  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 653  :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9757[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9757[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 654  :    return( zDec - zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]
	push	eax
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 655  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??G@YG?AVZDecimal@@V0@N@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@NV0@@Z			; operator-
_TEXT	SEGMENT
_d$ = 12
_zDec$ = 20
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9759 = -288
??G@YG?AVZDecimal@@NV0@@Z PROC NEAR			; operator-

; 659  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 660  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 661  :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9759[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9759[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 662  :    return( zDecD - zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]
	push	eax
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 663  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??G@YG?AVZDecimal@@NV0@@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@V0@M@Z			; operator-
_TEXT	SEGMENT
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9761 = -288
??G@YG?AVZDecimal@@V0@M@Z PROC NEAR			; operator-

; 667  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 668  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 669  :    zDecD = (double) d;

	fld	DWORD PTR _d$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9761[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9761[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 670  :    return( zDec - zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	push	ecx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 671  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@V0@M@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	??G@YG?AVZDecimal@@MV0@@Z			; operator-
_TEXT	SEGMENT
_d$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9763 = -288
??G@YG?AVZDecimal@@MV0@@Z PROC NEAR			; operator-

; 675  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 676  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 677  :    zDecD = (double) d;

	fld	DWORD PTR _d$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9763[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9763[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 678  :    return( zDecD - zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	push	ecx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 679  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??G@YG?AVZDecimal@@MV0@@Z ENDP				; operator-
_TEXT	ENDS
PUBLIC	_SysMultiplyDecimalByDecimal@12
PUBLIC	??D@YG?AVZDecimal@@V0@0@Z			; operator*
_TEXT	SEGMENT
_zDec$ = 12
_zDec2$ = 156
___$ReturnUdt$ = 8
_zTemp$ = -144
??D@YG?AVZDecimal@@V0@0@Z PROC NEAR			; operator*

; 687  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 144				; 00000090H
	push	esi
	push	edi

; 688  :    ZDecimal zTemp;

	lea	ecx, DWORD PTR _zTemp$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 689  : 
; 690  :    SysMultiplyDecimalByDecimal( &zTemp, &zDec, &zDec2 );

	lea	eax, DWORD PTR _zDec2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	push	ecx
	lea	edx, DWORD PTR _zTemp$[ebp]
	push	edx
	call	_SysMultiplyDecimalByDecimal@12

; 691  :    return( zTemp );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zTemp$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zTemp$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 692  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	292					; 00000124H
??D@YG?AVZDecimal@@V0@0@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@V0@J@Z			; operator*
_TEXT	SEGMENT
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9766 = -288
??D@YG?AVZDecimal@@V0@J@Z PROC NEAR			; operator*

; 696  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 697  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 698  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9766[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9766[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 699  :    return( zDecL * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 700  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@V0@J@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@JV0@@Z			; operator*
_TEXT	SEGMENT
_l$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9768 = -288
??D@YG?AVZDecimal@@JV0@@Z PROC NEAR			; operator*

; 704  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 705  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 706  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9768[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9768[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 707  :    return( zDecL * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 708  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@JV0@@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@V0@K@Z			; operator*
_TEXT	SEGMENT
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9770 = -288
??D@YG?AVZDecimal@@V0@K@Z PROC NEAR			; operator*

; 712  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 713  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 714  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9770[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9770[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 715  :    return( zDecL * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 716  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@V0@K@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@KV0@@Z			; operator*
_TEXT	SEGMENT
_l$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecL$ = -144
$T9772 = -288
??D@YG?AVZDecimal@@KV0@@Z PROC NEAR			; operator*

; 720  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 721  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 722  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9772[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9772[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 723  :    return( zDecL * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 724  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@KV0@@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@V0@F@Z			; operator*
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9774 = -288
??D@YG?AVZDecimal@@V0@F@Z PROC NEAR			; operator*

; 728  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 729  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 730  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9774[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9774[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 731  :    return( zDecN * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 732  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@V0@F@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@FV0@@Z			; operator*
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9776 = -288
??D@YG?AVZDecimal@@FV0@@Z PROC NEAR			; operator*

; 736  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 737  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 738  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9776[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9776[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 739  :    return( zDecN * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 740  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@FV0@@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@V0@G@Z			; operator*
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9778 = -288
??D@YG?AVZDecimal@@V0@G@Z PROC NEAR			; operator*

; 744  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 745  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 746  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9778[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9778[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 747  :    return( zDecN * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 748  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@V0@G@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@GV0@@Z			; operator*
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9780 = -288
??D@YG?AVZDecimal@@GV0@@Z PROC NEAR			; operator*

; 752  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 753  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 754  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9780[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9780[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 755  :    return( zDecN * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 756  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@GV0@@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@V0@H@Z			; operator*
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9782 = -288
??D@YG?AVZDecimal@@V0@H@Z PROC NEAR			; operator*

; 760  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 761  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 762  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9782[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9782[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 763  :    return( zDec * zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 764  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@V0@H@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@HV0@@Z			; operator*
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9784 = -288
??D@YG?AVZDecimal@@HV0@@Z PROC NEAR			; operator*

; 768  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 769  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 770  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9784[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9784[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 771  :    return( zDecN * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 772  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@HV0@@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@V0@I@Z			; operator*
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9786 = -288
??D@YG?AVZDecimal@@V0@I@Z PROC NEAR			; operator*

; 776  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 777  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 778  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9786[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9786[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 779  :    return( zDec * zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 780  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@V0@I@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@IV0@@Z			; operator*
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9788 = -288
??D@YG?AVZDecimal@@IV0@@Z PROC NEAR			; operator*

; 784  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 785  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 786  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9788[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9788[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 787  :    return( zDecN * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 788  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@IV0@@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@V0@D@Z			; operator*
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9790 = -288
??D@YG?AVZDecimal@@V0@D@Z PROC NEAR			; operator*

; 792  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 793  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 794  :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9790[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9790[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 795  :    return( zDecN * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 796  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@V0@D@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@DV0@@Z			; operator*
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9792 = -288
??D@YG?AVZDecimal@@DV0@@Z PROC NEAR			; operator*

; 800  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 801  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 802  :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9792[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9792[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 803  :    return( zDecN * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 804  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@DV0@@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@V0@E@Z			; operator*
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9794 = -288
??D@YG?AVZDecimal@@V0@E@Z PROC NEAR			; operator*

; 808  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 809  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 810  :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9794[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9794[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 811  :    return( zDecN * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 812  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@V0@E@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@EV0@@Z			; operator*
_TEXT	SEGMENT
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
$T9796 = -288
??D@YG?AVZDecimal@@EV0@@Z PROC NEAR			; operator*

; 816  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 817  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 818  :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9796[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9796[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 819  :    return( zDecN * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 820  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@EV0@@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@V0@N@Z			; operator*
_TEXT	SEGMENT
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9798 = -288
??D@YG?AVZDecimal@@V0@N@Z PROC NEAR			; operator*

; 824  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 825  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 826  :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9798[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9798[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 827  :    return( zDecD * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]
	push	eax
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 828  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??D@YG?AVZDecimal@@V0@N@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@NV0@@Z			; operator*
_TEXT	SEGMENT
_d$ = 12
_zDec$ = 20
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9800 = -288
??D@YG?AVZDecimal@@NV0@@Z PROC NEAR			; operator*

; 832  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 833  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 834  :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9800[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9800[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 835  :    return( zDecD * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]
	push	eax
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 836  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??D@YG?AVZDecimal@@NV0@@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@V0@M@Z			; operator*
_TEXT	SEGMENT
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9802 = -288
??D@YG?AVZDecimal@@V0@M@Z PROC NEAR			; operator*

; 840  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 841  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 842  :    zDecD = (double) d;

	fld	DWORD PTR _d$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9802[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9802[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 843  :    return( zDecD * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	push	ecx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 844  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@V0@M@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	??D@YG?AVZDecimal@@MV0@@Z			; operator*
_TEXT	SEGMENT
_d$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecD$ = -144
$T9804 = -288
??D@YG?AVZDecimal@@MV0@@Z PROC NEAR			; operator*

; 848  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 849  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 850  :    zDecD = (double) d;

	fld	DWORD PTR _d$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9804[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9804[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 851  :    return( zDecD * zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	push	ecx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 852  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??D@YG?AVZDecimal@@MV0@@Z ENDP				; operator*
_TEXT	ENDS
PUBLIC	_SysDivideDecimalByDecimal@12
PUBLIC	??K@YG?AVZDecimal@@V0@0@Z			; operator/
_TEXT	SEGMENT
_zDec$ = 12
_zDec2$ = 156
___$ReturnUdt$ = 8
_zTemp$ = -144
??K@YG?AVZDecimal@@V0@0@Z PROC NEAR			; operator/

; 860  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 144				; 00000090H
	push	esi
	push	edi

; 861  :    ZDecimal zTemp;

	lea	ecx, DWORD PTR _zTemp$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 862  : 
; 863  :    SysDivideDecimalByDecimal( &zTemp, &zDec, &zDec2 );

	lea	eax, DWORD PTR _zDec2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	push	ecx
	lea	edx, DWORD PTR _zTemp$[ebp]
	push	edx
	call	_SysDivideDecimalByDecimal@12

; 864  : 
; 865  :    return( zTemp );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zTemp$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zTemp$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 866  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	292					; 00000124H
??K@YG?AVZDecimal@@V0@0@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@V0@J@Z			; operator/
_TEXT	SEGMENT
$T9807 = -288
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
??K@YG?AVZDecimal@@V0@J@Z PROC NEAR			; operator/

; 870  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 871  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 872  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9807[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9807[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 873  :    return( zDec / zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 874  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@V0@J@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@JV0@@Z			; operator/
_TEXT	SEGMENT
$T9809 = -288
_l$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecL$ = -144
??K@YG?AVZDecimal@@JV0@@Z PROC NEAR			; operator/

; 878  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 879  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 880  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9809[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9809[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 881  :    return( zDecL / zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 882  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@JV0@@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@V0@K@Z			; operator/
_TEXT	SEGMENT
$T9811 = -288
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
??K@YG?AVZDecimal@@V0@K@Z PROC NEAR			; operator/

; 886  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 887  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 888  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9811[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9811[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 889  :    return( zDec / zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 890  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@V0@K@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@KV0@@Z			; operator/
_TEXT	SEGMENT
$T9813 = -288
_l$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecL$ = -144
??K@YG?AVZDecimal@@KV0@@Z PROC NEAR			; operator/

; 894  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 895  :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 896  :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9813[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9813[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 897  :    return( zDecL / zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 898  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@KV0@@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@V0@F@Z			; operator/
_TEXT	SEGMENT
$T9815 = -288
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@V0@F@Z PROC NEAR			; operator/

; 902  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 903  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 904  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9815[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9815[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 905  :    return( zDec / zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 906  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@V0@F@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@FV0@@Z			; operator/
_TEXT	SEGMENT
$T9817 = -288
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@FV0@@Z PROC NEAR			; operator/

; 910  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 911  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 912  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9817[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9817[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 913  :    return( zDecN / zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 914  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@FV0@@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@V0@G@Z			; operator/
_TEXT	SEGMENT
$T9819 = -288
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@V0@G@Z PROC NEAR			; operator/

; 918  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 919  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 920  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9819[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9819[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 921  :    return( zDec / zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 922  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@V0@G@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@GV0@@Z			; operator/
_TEXT	SEGMENT
$T9821 = -288
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@GV0@@Z PROC NEAR			; operator/

; 926  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 927  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 928  :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9821[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9821[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 929  :    return( zDecN / zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 930  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@GV0@@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@V0@H@Z			; operator/
_TEXT	SEGMENT
$T9823 = -288
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@V0@H@Z PROC NEAR			; operator/

; 934  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 935  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 936  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9823[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9823[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 937  :    return( zDec / zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 938  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@V0@H@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@HV0@@Z			; operator/
_TEXT	SEGMENT
$T9825 = -288
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@HV0@@Z PROC NEAR			; operator/

; 942  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 943  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 944  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9825[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9825[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 945  :    return( zDecN / zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 946  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@HV0@@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@V0@I@Z			; operator/
_TEXT	SEGMENT
$T9827 = -288
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@V0@I@Z PROC NEAR			; operator/

; 950  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 951  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 952  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9827[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9827[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 953  :    return( zDec / zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 954  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@V0@I@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@IV0@@Z			; operator/
_TEXT	SEGMENT
$T9829 = -288
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@IV0@@Z PROC NEAR			; operator/

; 958  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 959  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 960  :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9829[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9829[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 961  :    return( zDecN / zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 962  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@IV0@@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@V0@D@Z			; operator/
_TEXT	SEGMENT
$T9831 = -288
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@V0@D@Z PROC NEAR			; operator/

; 966  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 967  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 968  :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9831[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9831[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 969  :    return( zDec / zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 970  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@V0@D@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@DV0@@Z			; operator/
_TEXT	SEGMENT
$T9833 = -288
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@DV0@@Z PROC NEAR			; operator/

; 974  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 975  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 976  :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9833[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9833[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 977  :    return( zDecN / zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 978  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@DV0@@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@V0@E@Z			; operator/
_TEXT	SEGMENT
$T9835 = -288
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@V0@E@Z PROC NEAR			; operator/

; 982  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 983  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 984  :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9835[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9835[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 985  :    return( zDec / zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 986  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@V0@E@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@EV0@@Z			; operator/
_TEXT	SEGMENT
$T9837 = -288
_n$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecN$ = -144
??K@YG?AVZDecimal@@EV0@@Z PROC NEAR			; operator/

; 990  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 991  :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 992  :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9837[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9837[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 993  :    return( zDecN / zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 994  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@EV0@@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@V0@N@Z			; operator/
_TEXT	SEGMENT
$T9839 = -288
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
??K@YG?AVZDecimal@@V0@N@Z PROC NEAR			; operator/

; 998  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 999  :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1000 :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9839[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9839[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1001 :    return( zDec / zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]
	push	eax
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 1002 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??K@YG?AVZDecimal@@V0@N@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@NV0@@Z			; operator/
_TEXT	SEGMENT
$T9841 = -288
_d$ = 12
_zDec$ = 20
___$ReturnUdt$ = 8
_zDecD$ = -144
??K@YG?AVZDecimal@@NV0@@Z PROC NEAR			; operator/

; 1006 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 1007 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1008 :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9841[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9841[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1009 :    return( zDecD / zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]
	push	eax
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 1010 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??K@YG?AVZDecimal@@NV0@@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@V0@M@Z			; operator/
_TEXT	SEGMENT
$T9843 = -288
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
??K@YG?AVZDecimal@@V0@M@Z PROC NEAR			; operator/

; 1014 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 1015 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1016 :    zDecD = (double) d;

	fld	DWORD PTR _d$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9843[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9843[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1017 :    return( zDec / zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	push	ecx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 1018 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@V0@M@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??K@YG?AVZDecimal@@MV0@@Z			; operator/
_TEXT	SEGMENT
$T9845 = -288
_d$ = 12
_zDec$ = 16
___$ReturnUdt$ = 8
_zDecD$ = -144
??K@YG?AVZDecimal@@MV0@@Z PROC NEAR			; operator/

; 1022 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 1023 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1024 :    zDecD = (double) d;

	fld	DWORD PTR _d$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9845[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9845[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1025 :    return( zDecD / zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	push	ecx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 1026 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??K@YG?AVZDecimal@@MV0@@Z ENDP				; operator/
_TEXT	ENDS
PUBLIC	??P@YGDJVZDecimal@@@Z				; operator>=
_TEXT	SEGMENT
$T9847 = -288
$T9848 = -292
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
??P@YGDJVZDecimal@@@Z PROC NEAR				; operator>=

; 1034 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1035 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1036 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9847[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9847[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1037 :    return( zDecL >= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9848[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9848[ebp]

; 1038 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDJVZDecimal@@@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDVZDecimal@@J@Z				; operator>=
_TEXT	SEGMENT
$T9850 = -288
$T9851 = -292
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
??P@YGDVZDecimal@@J@Z PROC NEAR				; operator>=

; 1042 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1043 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1044 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9850[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9850[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1045 :    return( zDec >= zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9851[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9851[ebp]

; 1046 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDVZDecimal@@J@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDKVZDecimal@@@Z				; operator>=
_TEXT	SEGMENT
$T9853 = -288
$T9854 = -292
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
??P@YGDKVZDecimal@@@Z PROC NEAR				; operator>=

; 1050 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1051 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1052 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9853[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9853[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1053 :    return( zDecL >= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9854[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9854[ebp]

; 1054 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDKVZDecimal@@@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDVZDecimal@@K@Z				; operator>=
_TEXT	SEGMENT
$T9856 = -288
$T9857 = -292
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
??P@YGDVZDecimal@@K@Z PROC NEAR				; operator>=

; 1058 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1059 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1060 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9856[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9856[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1061 :    return( zDec >= zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9857[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9857[ebp]

; 1062 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDVZDecimal@@K@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDFVZDecimal@@@Z				; operator>=
_TEXT	SEGMENT
$T9859 = -288
$T9860 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??P@YGDFVZDecimal@@@Z PROC NEAR				; operator>=

; 1066 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1067 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1068 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9859[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9859[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1069 :    return( zDecN >= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9860[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9860[ebp]

; 1070 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDFVZDecimal@@@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDVZDecimal@@F@Z				; operator>=
_TEXT	SEGMENT
$T9862 = -288
$T9863 = -292
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
??P@YGDVZDecimal@@F@Z PROC NEAR				; operator>=

; 1074 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1075 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1076 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9862[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9862[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1077 :    return( zDec >= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9863[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9863[ebp]

; 1078 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDVZDecimal@@F@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDGVZDecimal@@@Z				; operator>=
_TEXT	SEGMENT
$T9865 = -288
$T9866 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??P@YGDGVZDecimal@@@Z PROC NEAR				; operator>=

; 1082 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1083 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1084 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9865[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9865[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1085 :    return( zDecN >= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9866[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9866[ebp]

; 1086 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDGVZDecimal@@@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDVZDecimal@@G@Z				; operator>=
_TEXT	SEGMENT
$T9868 = -288
$T9869 = -292
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
??P@YGDVZDecimal@@G@Z PROC NEAR				; operator>=

; 1090 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1091 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1092 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9868[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9868[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1093 :    return( zDec >= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9869[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9869[ebp]

; 1094 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDVZDecimal@@G@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDVZDecimal@@H@Z				; operator>=
_TEXT	SEGMENT
$T9871 = -288
$T9872 = -292
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
??P@YGDVZDecimal@@H@Z PROC NEAR				; operator>=

; 1098 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1099 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1100 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9871[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9871[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1101 :    return( zDec >= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9872[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9872[ebp]

; 1102 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDVZDecimal@@H@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDHVZDecimal@@@Z				; operator>=
_TEXT	SEGMENT
$T9874 = -288
$T9875 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??P@YGDHVZDecimal@@@Z PROC NEAR				; operator>=

; 1106 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1107 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1108 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9874[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9874[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1109 :    return( zDecN >= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9875[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9875[ebp]

; 1110 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDHVZDecimal@@@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDVZDecimal@@I@Z				; operator>=
_TEXT	SEGMENT
$T9877 = -288
$T9878 = -292
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
??P@YGDVZDecimal@@I@Z PROC NEAR				; operator>=

; 1114 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1115 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1116 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9877[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9877[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1117 :    return( zDec >= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9878[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9878[ebp]

; 1118 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDVZDecimal@@I@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDIVZDecimal@@@Z				; operator>=
_TEXT	SEGMENT
$T9880 = -288
$T9881 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??P@YGDIVZDecimal@@@Z PROC NEAR				; operator>=

; 1122 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1123 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1124 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9880[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9880[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1125 :    return( zDecN >= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9881[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9881[ebp]

; 1126 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDIVZDecimal@@@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDVZDecimal@@D@Z				; operator>=
_TEXT	SEGMENT
$T9883 = -288
$T9884 = -292
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
??P@YGDVZDecimal@@D@Z PROC NEAR				; operator>=

; 1130 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1131 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1132 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9883[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9883[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1133 :    return( zDec >= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9884[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9884[ebp]

; 1134 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDVZDecimal@@D@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDDVZDecimal@@@Z				; operator>=
_TEXT	SEGMENT
$T9886 = -288
$T9887 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??P@YGDDVZDecimal@@@Z PROC NEAR				; operator>=

; 1138 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1139 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1140 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9886[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9886[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1141 :    return( zDecN >= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9887[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9887[ebp]

; 1142 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDDVZDecimal@@@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDEVZDecimal@@@Z				; operator>=
_TEXT	SEGMENT
$T9889 = -288
$T9890 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??P@YGDEVZDecimal@@@Z PROC NEAR				; operator>=

; 1146 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1147 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1148 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9889[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9889[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1149 :    return( zDecN >= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9890[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9890[ebp]

; 1150 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDEVZDecimal@@@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDVZDecimal@@E@Z				; operator>=
_TEXT	SEGMENT
$T9892 = -288
$T9893 = -292
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
??P@YGDVZDecimal@@E@Z PROC NEAR				; operator>=

; 1154 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1155 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1156 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9892[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9892[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1157 :    return( zDec >= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9893[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9893[ebp]

; 1158 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDVZDecimal@@E@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDNVZDecimal@@@Z				; operator>=
_TEXT	SEGMENT
$T9895 = -288
$T9896 = -292
_n$ = 8
_zDec$ = 16
_zDecD$ = -144
??P@YGDNVZDecimal@@@Z PROC NEAR				; operator>=

; 1162 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1163 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1164 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9895[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9895[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1165 :    return( zDecD >= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9896[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9896[ebp]

; 1166 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??P@YGDNVZDecimal@@@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDVZDecimal@@N@Z				; operator>=
_TEXT	SEGMENT
$T9898 = -288
$T9899 = -292
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
??P@YGDVZDecimal@@N@Z PROC NEAR				; operator>=

; 1170 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1171 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1172 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9898[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9898[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1173 :    return( zDec >= zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9899[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9899[ebp]

; 1174 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??P@YGDVZDecimal@@N@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDMVZDecimal@@@Z				; operator>=
_TEXT	SEGMENT
$T9901 = -288
$T9902 = -292
_n$ = 8
_zDec$ = 12
_zDecD$ = -144
??P@YGDMVZDecimal@@@Z PROC NEAR				; operator>=

; 1178 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1179 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1180 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9901[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9901[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1181 :    return( zDecD >= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9902[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9902[ebp]

; 1182 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDMVZDecimal@@@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??P@YGDVZDecimal@@M@Z				; operator>=
_TEXT	SEGMENT
$T9904 = -288
$T9905 = -292
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
??P@YGDVZDecimal@@M@Z PROC NEAR				; operator>=

; 1186 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1187 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1188 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9904[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9904[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1189 :    return( zDec >= zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??P@YGDVZDecimal@@0@Z			; operator>=
	mov	BYTE PTR $T9905[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9905[ebp]

; 1190 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??P@YGDVZDecimal@@M@Z ENDP				; operator>=
_TEXT	ENDS
PUBLIC	??O@YGDJVZDecimal@@@Z				; operator>
_TEXT	SEGMENT
$T9907 = -288
$T9908 = -292
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
??O@YGDJVZDecimal@@@Z PROC NEAR				; operator>

; 1198 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1199 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1200 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9907[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9907[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1201 :    return( zDecL > zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9908[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9908[ebp]

; 1202 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDJVZDecimal@@@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDVZDecimal@@J@Z				; operator>
_TEXT	SEGMENT
$T9910 = -288
$T9911 = -292
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
??O@YGDVZDecimal@@J@Z PROC NEAR				; operator>

; 1206 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1207 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1208 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9910[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9910[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1209 :    return( zDec > zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9911[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9911[ebp]

; 1210 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDVZDecimal@@J@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDKVZDecimal@@@Z				; operator>
_TEXT	SEGMENT
$T9913 = -288
$T9914 = -292
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
??O@YGDKVZDecimal@@@Z PROC NEAR				; operator>

; 1214 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1215 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1216 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9913[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9913[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1217 :    return( zDecL > zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9914[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9914[ebp]

; 1218 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDKVZDecimal@@@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDVZDecimal@@K@Z				; operator>
_TEXT	SEGMENT
$T9916 = -288
$T9917 = -292
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
??O@YGDVZDecimal@@K@Z PROC NEAR				; operator>

; 1222 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1223 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1224 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9916[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9916[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1225 :    return( zDec > zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9917[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9917[ebp]

; 1226 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDVZDecimal@@K@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDFVZDecimal@@@Z				; operator>
_TEXT	SEGMENT
$T9919 = -288
$T9920 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??O@YGDFVZDecimal@@@Z PROC NEAR				; operator>

; 1230 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1231 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1232 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9919[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9919[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1233 :    return( zDecN > zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9920[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9920[ebp]

; 1234 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDFVZDecimal@@@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDVZDecimal@@F@Z				; operator>
_TEXT	SEGMENT
$T9922 = -288
$T9923 = -292
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
??O@YGDVZDecimal@@F@Z PROC NEAR				; operator>

; 1238 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1239 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1240 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9922[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9922[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1241 :    return( zDec > zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9923[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9923[ebp]

; 1242 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDVZDecimal@@F@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDGVZDecimal@@@Z				; operator>
_TEXT	SEGMENT
$T9925 = -288
$T9926 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??O@YGDGVZDecimal@@@Z PROC NEAR				; operator>

; 1246 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1247 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1248 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9925[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9925[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1249 :    return( zDecN > zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9926[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9926[ebp]

; 1250 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDGVZDecimal@@@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDVZDecimal@@G@Z				; operator>
_TEXT	SEGMENT
$T9928 = -288
$T9929 = -292
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
??O@YGDVZDecimal@@G@Z PROC NEAR				; operator>

; 1254 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1255 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1256 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9928[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9928[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1257 :    return( zDec > zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9929[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9929[ebp]

; 1258 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDVZDecimal@@G@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDVZDecimal@@H@Z				; operator>
_TEXT	SEGMENT
$T9931 = -288
$T9932 = -292
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
??O@YGDVZDecimal@@H@Z PROC NEAR				; operator>

; 1262 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1263 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1264 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9931[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9931[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1265 :    return( zDec > zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9932[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9932[ebp]

; 1266 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDVZDecimal@@H@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDHVZDecimal@@@Z				; operator>
_TEXT	SEGMENT
$T9934 = -288
$T9935 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??O@YGDHVZDecimal@@@Z PROC NEAR				; operator>

; 1270 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1271 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1272 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9934[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9934[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1273 :    return( zDecN > zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9935[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9935[ebp]

; 1274 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDHVZDecimal@@@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDVZDecimal@@I@Z				; operator>
_TEXT	SEGMENT
$T9937 = -288
$T9938 = -292
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
??O@YGDVZDecimal@@I@Z PROC NEAR				; operator>

; 1278 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1279 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1280 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9937[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9937[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1281 :    return( zDec > zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9938[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9938[ebp]

; 1282 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDVZDecimal@@I@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDIVZDecimal@@@Z				; operator>
_TEXT	SEGMENT
$T9940 = -288
$T9941 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??O@YGDIVZDecimal@@@Z PROC NEAR				; operator>

; 1286 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1287 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1288 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9940[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9940[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1289 :    return( zDecN > zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9941[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9941[ebp]

; 1290 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDIVZDecimal@@@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDVZDecimal@@D@Z				; operator>
_TEXT	SEGMENT
$T9943 = -288
$T9944 = -292
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
??O@YGDVZDecimal@@D@Z PROC NEAR				; operator>

; 1294 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1295 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1296 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9943[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9943[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1297 :    return( zDec > zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9944[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9944[ebp]

; 1298 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDVZDecimal@@D@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDDVZDecimal@@@Z				; operator>
_TEXT	SEGMENT
$T9946 = -288
$T9947 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??O@YGDDVZDecimal@@@Z PROC NEAR				; operator>

; 1302 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1303 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1304 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9946[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9946[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1305 :    return( zDecN > zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9947[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9947[ebp]

; 1306 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDDVZDecimal@@@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDEVZDecimal@@@Z				; operator>
_TEXT	SEGMENT
$T9949 = -288
$T9950 = -292
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
??O@YGDEVZDecimal@@@Z PROC NEAR				; operator>

; 1310 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1311 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1312 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9949[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9949[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1313 :    return( zDecN > zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9950[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9950[ebp]

; 1314 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDEVZDecimal@@@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDVZDecimal@@E@Z				; operator>
_TEXT	SEGMENT
_n$ = 152
_zDecN$ = -144
$T9952 = -288
$T9953 = -292
_zDec$ = 8
??O@YGDVZDecimal@@E@Z PROC NEAR				; operator>

; 1318 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1319 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1320 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9952[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9952[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1321 :    return( zDec > zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9953[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9953[ebp]

; 1322 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDVZDecimal@@E@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDNVZDecimal@@@Z				; operator>
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 16
_zDecD$ = -144
$T9955 = -288
$T9956 = -292
??O@YGDNVZDecimal@@@Z PROC NEAR				; operator>

; 1326 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1327 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1328 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9955[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9955[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1329 :    return( zDecD > zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9956[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9956[ebp]

; 1330 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??O@YGDNVZDecimal@@@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDVZDecimal@@N@Z				; operator>
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
$T9958 = -288
$T9959 = -292
??O@YGDVZDecimal@@N@Z PROC NEAR				; operator>

; 1334 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1335 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1336 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T9958[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9958[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1337 :    return( zDec > zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9959[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9959[ebp]

; 1338 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??O@YGDVZDecimal@@N@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDMVZDecimal@@@Z				; operator>
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecD$ = -144
$T9961 = -288
$T9962 = -292
??O@YGDMVZDecimal@@@Z PROC NEAR				; operator>

; 1342 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1343 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1344 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9961[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9961[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1345 :    return( zDecD > zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9962[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9962[ebp]

; 1346 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDMVZDecimal@@@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??O@YGDVZDecimal@@M@Z				; operator>
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
$T9964 = -288
$T9965 = -292
??O@YGDVZDecimal@@M@Z PROC NEAR				; operator>

; 1350 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1351 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1352 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T9964[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9964[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1353 :    return( zDec > zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??O@YGDVZDecimal@@0@Z			; operator>
	mov	BYTE PTR $T9965[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9965[ebp]

; 1354 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??O@YGDVZDecimal@@M@Z ENDP				; operator>
_TEXT	ENDS
PUBLIC	??N@YGDJVZDecimal@@@Z				; operator<=
_TEXT	SEGMENT
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
$T9967 = -288
$T9968 = -292
??N@YGDJVZDecimal@@@Z PROC NEAR				; operator<=

; 1362 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1363 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1364 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9967[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9967[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1365 :    return( zDecL <= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T9968[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9968[ebp]

; 1366 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDJVZDecimal@@@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDVZDecimal@@J@Z				; operator<=
_TEXT	SEGMENT
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
$T9970 = -288
$T9971 = -292
??N@YGDVZDecimal@@J@Z PROC NEAR				; operator<=

; 1370 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1371 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1372 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9970[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9970[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1373 :    return( zDec <= zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T9971[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9971[ebp]

; 1374 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDVZDecimal@@J@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDKVZDecimal@@@Z				; operator<=
_TEXT	SEGMENT
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
$T9973 = -288
$T9974 = -292
??N@YGDKVZDecimal@@@Z PROC NEAR				; operator<=

; 1378 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1379 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1380 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9973[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9973[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1381 :    return( zDecL <= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T9974[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9974[ebp]

; 1382 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDKVZDecimal@@@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDVZDecimal@@K@Z				; operator<=
_TEXT	SEGMENT
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
$T9976 = -288
$T9977 = -292
??N@YGDVZDecimal@@K@Z PROC NEAR				; operator<=

; 1386 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1387 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1388 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9976[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9976[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1389 :    return( zDec <= zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T9977[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9977[ebp]

; 1390 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDVZDecimal@@K@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDFVZDecimal@@@Z				; operator<=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T9979 = -288
$T9980 = -292
??N@YGDFVZDecimal@@@Z PROC NEAR				; operator<=

; 1394 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1395 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1396 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9979[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9979[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1397 :    return( zDecN <= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T9980[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9980[ebp]

; 1398 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDFVZDecimal@@@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDVZDecimal@@F@Z				; operator<=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T9982 = -288
$T9983 = -292
??N@YGDVZDecimal@@F@Z PROC NEAR				; operator<=

; 1402 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1403 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1404 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9982[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9982[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1405 :    return( zDec <= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T9983[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9983[ebp]

; 1406 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDVZDecimal@@F@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDGVZDecimal@@@Z				; operator<=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T9985 = -288
$T9986 = -292
??N@YGDGVZDecimal@@@Z PROC NEAR				; operator<=

; 1410 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1411 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1412 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9985[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9985[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1413 :    return( zDecN <= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T9986[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9986[ebp]

; 1414 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDGVZDecimal@@@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDVZDecimal@@G@Z				; operator<=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T9988 = -288
$T9989 = -292
??N@YGDVZDecimal@@G@Z PROC NEAR				; operator<=

; 1418 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1419 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1420 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9988[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9988[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1421 :    return( zDec <= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T9989[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9989[ebp]

; 1422 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDVZDecimal@@G@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDVZDecimal@@H@Z				; operator<=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T9991 = -288
$T9992 = -292
??N@YGDVZDecimal@@H@Z PROC NEAR				; operator<=

; 1426 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1427 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1428 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9991[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9991[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1429 :    return( zDec <= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T9992[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9992[ebp]

; 1430 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDVZDecimal@@H@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDHVZDecimal@@@Z				; operator<=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T9994 = -288
$T9995 = -292
??N@YGDHVZDecimal@@@Z PROC NEAR				; operator<=

; 1434 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1435 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1436 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9994[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9994[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1437 :    return( zDecN <= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T9995[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9995[ebp]

; 1438 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDHVZDecimal@@@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDVZDecimal@@I@Z				; operator<=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T9997 = -288
$T9998 = -292
??N@YGDVZDecimal@@I@Z PROC NEAR				; operator<=

; 1442 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1443 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1444 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T9997[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T9997[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1445 :    return( zDec <= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T9998[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T9998[ebp]

; 1446 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDVZDecimal@@I@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDIVZDecimal@@@Z				; operator<=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10000 = -288
$T10001 = -292
??N@YGDIVZDecimal@@@Z PROC NEAR				; operator<=

; 1450 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1451 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1452 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10000[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10000[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1453 :    return( zDecN <= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T10001[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10001[ebp]

; 1454 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDIVZDecimal@@@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDVZDecimal@@D@Z				; operator<=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10003 = -288
$T10004 = -292
??N@YGDVZDecimal@@D@Z PROC NEAR				; operator<=

; 1458 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1459 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1460 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10003[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10003[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1461 :    return( zDec <= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T10004[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10004[ebp]

; 1462 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDVZDecimal@@D@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDDVZDecimal@@@Z				; operator<=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10006 = -288
$T10007 = -292
??N@YGDDVZDecimal@@@Z PROC NEAR				; operator<=

; 1466 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1467 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1468 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10006[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10006[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1469 :    return( zDecN <= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T10007[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10007[ebp]

; 1470 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDDVZDecimal@@@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDEVZDecimal@@@Z				; operator<=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10009 = -288
$T10010 = -292
??N@YGDEVZDecimal@@@Z PROC NEAR				; operator<=

; 1474 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1475 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1476 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10009[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10009[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1477 :    return( zDecN <= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T10010[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10010[ebp]

; 1478 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDEVZDecimal@@@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDVZDecimal@@E@Z				; operator<=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10012 = -288
$T10013 = -292
??N@YGDVZDecimal@@E@Z PROC NEAR				; operator<=

; 1482 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1483 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1484 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10012[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10012[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1485 :    return( zDec <= zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T10013[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10013[ebp]

; 1486 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDVZDecimal@@E@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDNVZDecimal@@@Z				; operator<=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 16
_zDecD$ = -144
$T10015 = -288
$T10016 = -292
??N@YGDNVZDecimal@@@Z PROC NEAR				; operator<=

; 1490 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1491 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1492 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10015[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10015[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1493 :    return( zDecD <= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T10016[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10016[ebp]

; 1494 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??N@YGDNVZDecimal@@@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDVZDecimal@@N@Z				; operator<=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
$T10018 = -288
$T10019 = -292
??N@YGDVZDecimal@@N@Z PROC NEAR				; operator<=

; 1498 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1499 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1500 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10018[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10018[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1501 :    return( zDec <= zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T10019[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10019[ebp]

; 1502 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??N@YGDVZDecimal@@N@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDMVZDecimal@@@Z				; operator<=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecD$ = -144
$T10021 = -288
$T10022 = -292
??N@YGDMVZDecimal@@@Z PROC NEAR				; operator<=

; 1506 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1507 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1508 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T10021[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10021[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1509 :    return( zDecD <= zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T10022[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10022[ebp]

; 1510 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDMVZDecimal@@@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??N@YGDVZDecimal@@M@Z				; operator<=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
$T10024 = -288
$T10025 = -292
??N@YGDVZDecimal@@M@Z PROC NEAR				; operator<=

; 1514 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1515 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1516 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T10024[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10024[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1517 :    return( zDec <= zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??N@YGDVZDecimal@@0@Z			; operator<=
	mov	BYTE PTR $T10025[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10025[ebp]

; 1518 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??N@YGDVZDecimal@@M@Z ENDP				; operator<=
_TEXT	ENDS
PUBLIC	??M@YGDJVZDecimal@@@Z				; operator<
_TEXT	SEGMENT
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
$T10027 = -288
$T10028 = -292
??M@YGDJVZDecimal@@@Z PROC NEAR				; operator<

; 1526 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1527 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1528 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10027[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10027[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1529 :    return( zDecL < zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10028[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10028[ebp]

; 1530 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDJVZDecimal@@@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDVZDecimal@@J@Z				; operator<
_TEXT	SEGMENT
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
$T10030 = -288
$T10031 = -292
??M@YGDVZDecimal@@J@Z PROC NEAR				; operator<

; 1534 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1535 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1536 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10030[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10030[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1537 :    return( zDec < zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10031[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10031[ebp]

; 1538 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDVZDecimal@@J@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDKVZDecimal@@@Z				; operator<
_TEXT	SEGMENT
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
$T10033 = -288
$T10034 = -292
??M@YGDKVZDecimal@@@Z PROC NEAR				; operator<

; 1542 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1543 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1544 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10033[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10033[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1545 :    return( zDecL < zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10034[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10034[ebp]

; 1546 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDKVZDecimal@@@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDVZDecimal@@K@Z				; operator<
_TEXT	SEGMENT
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
$T10036 = -288
$T10037 = -292
??M@YGDVZDecimal@@K@Z PROC NEAR				; operator<

; 1550 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1551 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1552 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10036[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10036[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1553 :    return( zDec < zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10037[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10037[ebp]

; 1554 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDVZDecimal@@K@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDFVZDecimal@@@Z				; operator<
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10039 = -288
$T10040 = -292
??M@YGDFVZDecimal@@@Z PROC NEAR				; operator<

; 1558 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1559 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1560 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10039[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10039[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1561 :    return( zDecN < zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10040[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10040[ebp]

; 1562 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDFVZDecimal@@@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDVZDecimal@@F@Z				; operator<
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10042 = -288
$T10043 = -292
??M@YGDVZDecimal@@F@Z PROC NEAR				; operator<

; 1566 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1567 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1568 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10042[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10042[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1569 :    return( zDec < zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10043[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10043[ebp]

; 1570 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDVZDecimal@@F@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDGVZDecimal@@@Z				; operator<
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10045 = -288
$T10046 = -292
??M@YGDGVZDecimal@@@Z PROC NEAR				; operator<

; 1574 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1575 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1576 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10045[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10045[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1577 :    return( zDecN < zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10046[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10046[ebp]

; 1578 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDGVZDecimal@@@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDVZDecimal@@G@Z				; operator<
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10048 = -288
$T10049 = -292
??M@YGDVZDecimal@@G@Z PROC NEAR				; operator<

; 1582 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1583 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1584 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10048[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10048[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1585 :    return( zDec < zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10049[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10049[ebp]

; 1586 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDVZDecimal@@G@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDVZDecimal@@H@Z				; operator<
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10051 = -288
$T10052 = -292
??M@YGDVZDecimal@@H@Z PROC NEAR				; operator<

; 1590 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1591 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1592 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10051[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10051[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1593 :    return( zDec < zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10052[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10052[ebp]

; 1594 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDVZDecimal@@H@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDHVZDecimal@@@Z				; operator<
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10054 = -288
$T10055 = -292
??M@YGDHVZDecimal@@@Z PROC NEAR				; operator<

; 1598 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1599 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1600 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10054[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10054[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1601 :    return( zDecN < zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10055[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10055[ebp]

; 1602 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDHVZDecimal@@@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDVZDecimal@@I@Z				; operator<
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10057 = -288
$T10058 = -292
??M@YGDVZDecimal@@I@Z PROC NEAR				; operator<

; 1606 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1607 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1608 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10057[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10057[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1609 :    return( zDec < zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10058[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10058[ebp]

; 1610 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDVZDecimal@@I@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDIVZDecimal@@@Z				; operator<
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10060 = -288
$T10061 = -292
??M@YGDIVZDecimal@@@Z PROC NEAR				; operator<

; 1614 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1615 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1616 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10060[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10060[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1617 :    return( zDecN < zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10061[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10061[ebp]

; 1618 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDIVZDecimal@@@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDVZDecimal@@D@Z				; operator<
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10063 = -288
$T10064 = -292
??M@YGDVZDecimal@@D@Z PROC NEAR				; operator<

; 1622 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1623 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1624 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10063[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10063[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1625 :    return( zDec < zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10064[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10064[ebp]

; 1626 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDVZDecimal@@D@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDDVZDecimal@@@Z				; operator<
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10066 = -288
$T10067 = -292
??M@YGDDVZDecimal@@@Z PROC NEAR				; operator<

; 1630 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1631 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1632 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10066[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10066[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1633 :    return( zDecN < zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10067[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10067[ebp]

; 1634 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDDVZDecimal@@@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDEVZDecimal@@@Z				; operator<
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10069 = -288
$T10070 = -292
??M@YGDEVZDecimal@@@Z PROC NEAR				; operator<

; 1638 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1639 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1640 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10069[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10069[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1641 :    return( zDecN < zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10070[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10070[ebp]

; 1642 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDEVZDecimal@@@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDVZDecimal@@E@Z				; operator<
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10072 = -288
$T10073 = -292
??M@YGDVZDecimal@@E@Z PROC NEAR				; operator<

; 1646 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1647 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1648 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10072[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10072[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1649 :    return( zDec < zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10073[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10073[ebp]

; 1650 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDVZDecimal@@E@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDNVZDecimal@@@Z				; operator<
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 16
_zDecD$ = -144
$T10075 = -288
$T10076 = -292
??M@YGDNVZDecimal@@@Z PROC NEAR				; operator<

; 1654 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1655 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1656 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10075[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10075[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1657 :    return( zDecD < zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10076[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10076[ebp]

; 1658 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??M@YGDNVZDecimal@@@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDVZDecimal@@N@Z				; operator<
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
$T10078 = -288
$T10079 = -292
??M@YGDVZDecimal@@N@Z PROC NEAR				; operator<

; 1662 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1663 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1664 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10078[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10078[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1665 :    return( zDec < zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10079[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10079[ebp]

; 1666 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??M@YGDVZDecimal@@N@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDMVZDecimal@@@Z				; operator<
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecD$ = -144
$T10081 = -288
$T10082 = -292
??M@YGDMVZDecimal@@@Z PROC NEAR				; operator<

; 1670 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1671 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1672 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T10081[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10081[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1673 :    return( zDecD < zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10082[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10082[ebp]

; 1674 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDMVZDecimal@@@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??M@YGDVZDecimal@@M@Z				; operator<
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
$T10084 = -288
$T10085 = -292
??M@YGDVZDecimal@@M@Z PROC NEAR				; operator<

; 1678 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1679 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1680 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T10084[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10084[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1681 :    return( zDec < zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??M@YGDVZDecimal@@0@Z			; operator<
	mov	BYTE PTR $T10085[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10085[ebp]

; 1682 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??M@YGDVZDecimal@@M@Z ENDP				; operator<
_TEXT	ENDS
PUBLIC	??8@YGDJVZDecimal@@@Z				; operator==
_TEXT	SEGMENT
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
$T10087 = -288
$T10088 = -292
??8@YGDJVZDecimal@@@Z PROC NEAR				; operator==

; 1690 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1691 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1692 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10087[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10087[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1693 :    return( zDecL == zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10088[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10088[ebp]

; 1694 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDJVZDecimal@@@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDVZDecimal@@J@Z				; operator==
_TEXT	SEGMENT
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
$T10090 = -288
$T10091 = -292
??8@YGDVZDecimal@@J@Z PROC NEAR				; operator==

; 1698 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1699 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1700 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10090[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10090[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1701 :    return( zDec == zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10091[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10091[ebp]

; 1702 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDVZDecimal@@J@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDKVZDecimal@@@Z				; operator==
_TEXT	SEGMENT
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
$T10093 = -288
$T10094 = -292
??8@YGDKVZDecimal@@@Z PROC NEAR				; operator==

; 1706 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1707 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1708 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10093[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10093[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1709 :    return( zDecL == zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10094[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10094[ebp]

; 1710 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDKVZDecimal@@@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDVZDecimal@@K@Z				; operator==
_TEXT	SEGMENT
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
$T10096 = -288
$T10097 = -292
??8@YGDVZDecimal@@K@Z PROC NEAR				; operator==

; 1714 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1715 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1716 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10096[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10096[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1717 :    return( zDec == zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10097[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10097[ebp]

; 1718 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDVZDecimal@@K@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDFVZDecimal@@@Z				; operator==
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10099 = -288
$T10100 = -292
??8@YGDFVZDecimal@@@Z PROC NEAR				; operator==

; 1722 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1723 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1724 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10099[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10099[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1725 :    return( zDecN == zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10100[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10100[ebp]

; 1726 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDFVZDecimal@@@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDVZDecimal@@F@Z				; operator==
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10102 = -288
$T10103 = -292
??8@YGDVZDecimal@@F@Z PROC NEAR				; operator==

; 1730 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1731 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1732 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10102[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10102[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1733 :    return( zDec == zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10103[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10103[ebp]

; 1734 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDVZDecimal@@F@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDGVZDecimal@@@Z				; operator==
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10105 = -288
$T10106 = -292
??8@YGDGVZDecimal@@@Z PROC NEAR				; operator==

; 1738 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1739 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1740 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10105[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10105[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1741 :    return( zDecN == zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10106[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10106[ebp]

; 1742 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDGVZDecimal@@@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDVZDecimal@@G@Z				; operator==
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10108 = -288
$T10109 = -292
??8@YGDVZDecimal@@G@Z PROC NEAR				; operator==

; 1746 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1747 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1748 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10108[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10108[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1749 :    return( zDec == zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10109[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10109[ebp]

; 1750 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDVZDecimal@@G@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDVZDecimal@@H@Z				; operator==
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10111 = -288
$T10112 = -292
??8@YGDVZDecimal@@H@Z PROC NEAR				; operator==

; 1754 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1755 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1756 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10111[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10111[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1757 :    return( zDec == zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10112[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10112[ebp]

; 1758 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDVZDecimal@@H@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDHVZDecimal@@@Z				; operator==
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10114 = -288
$T10115 = -292
??8@YGDHVZDecimal@@@Z PROC NEAR				; operator==

; 1762 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1763 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1764 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10114[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10114[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1765 :    return( zDecN == zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10115[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10115[ebp]

; 1766 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDHVZDecimal@@@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDVZDecimal@@I@Z				; operator==
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10117 = -288
$T10118 = -292
??8@YGDVZDecimal@@I@Z PROC NEAR				; operator==

; 1770 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1771 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1772 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10117[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10117[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1773 :    return( zDec == zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10118[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10118[ebp]

; 1774 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDVZDecimal@@I@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDIVZDecimal@@@Z				; operator==
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10120 = -288
$T10121 = -292
??8@YGDIVZDecimal@@@Z PROC NEAR				; operator==

; 1778 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1779 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1780 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10120[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10120[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1781 :    return( zDecN == zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10121[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10121[ebp]

; 1782 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDIVZDecimal@@@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDVZDecimal@@D@Z				; operator==
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10123 = -288
$T10124 = -292
??8@YGDVZDecimal@@D@Z PROC NEAR				; operator==

; 1786 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1787 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1788 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10123[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10123[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1789 :    return( zDec == zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10124[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10124[ebp]

; 1790 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDVZDecimal@@D@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDDVZDecimal@@@Z				; operator==
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10126 = -288
$T10127 = -292
??8@YGDDVZDecimal@@@Z PROC NEAR				; operator==

; 1794 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1795 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1796 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10126[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10126[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1797 :    return( zDecN == zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10127[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10127[ebp]

; 1798 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDDVZDecimal@@@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDEVZDecimal@@@Z				; operator==
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10129 = -288
$T10130 = -292
??8@YGDEVZDecimal@@@Z PROC NEAR				; operator==

; 1802 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1803 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1804 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10129[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10129[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1805 :    return( zDecN == zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10130[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10130[ebp]

; 1806 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDEVZDecimal@@@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDVZDecimal@@E@Z				; operator==
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10132 = -288
$T10133 = -292
??8@YGDVZDecimal@@E@Z PROC NEAR				; operator==

; 1810 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1811 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1812 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10132[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10132[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1813 :    return( zDec == zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10133[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10133[ebp]

; 1814 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDVZDecimal@@E@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDNVZDecimal@@@Z				; operator==
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 16
_zDecD$ = -144
$T10135 = -288
$T10136 = -292
??8@YGDNVZDecimal@@@Z PROC NEAR				; operator==

; 1818 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1819 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1820 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10135[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10135[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1821 :    return( zDecD == zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10136[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10136[ebp]

; 1822 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??8@YGDNVZDecimal@@@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDVZDecimal@@N@Z				; operator==
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
$T10138 = -288
$T10139 = -292
??8@YGDVZDecimal@@N@Z PROC NEAR				; operator==

; 1826 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1827 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1828 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10138[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10138[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1829 :    return( zDec == zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10139[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10139[ebp]

; 1830 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??8@YGDVZDecimal@@N@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDMVZDecimal@@@Z				; operator==
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecD$ = -144
$T10141 = -288
$T10142 = -292
??8@YGDMVZDecimal@@@Z PROC NEAR				; operator==

; 1834 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1835 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1836 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T10141[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10141[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1837 :    return( zDecD == zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10142[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10142[ebp]

; 1838 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDMVZDecimal@@@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??8@YGDVZDecimal@@M@Z				; operator==
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
$T10144 = -288
$T10145 = -292
??8@YGDVZDecimal@@M@Z PROC NEAR				; operator==

; 1842 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1843 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1844 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T10144[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10144[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1845 :    return( zDec == zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??8@YGDVZDecimal@@0@Z			; operator==
	mov	BYTE PTR $T10145[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10145[ebp]

; 1846 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??8@YGDVZDecimal@@M@Z ENDP				; operator==
_TEXT	ENDS
PUBLIC	??9@YGDJVZDecimal@@@Z				; operator!=
_TEXT	SEGMENT
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
$T10147 = -288
$T10148 = -292
??9@YGDJVZDecimal@@@Z PROC NEAR				; operator!=

; 1854 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1855 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1856 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10147[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10147[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1857 :    return( zDecL != zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10148[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10148[ebp]

; 1858 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDJVZDecimal@@@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDVZDecimal@@J@Z				; operator!=
_TEXT	SEGMENT
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
$T10150 = -288
$T10151 = -292
??9@YGDVZDecimal@@J@Z PROC NEAR				; operator!=

; 1862 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1863 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1864 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10150[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10150[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1865 :    return( zDec != zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10151[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10151[ebp]

; 1866 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDVZDecimal@@J@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDKVZDecimal@@@Z				; operator!=
_TEXT	SEGMENT
_l$ = 8
_zDec$ = 12
_zDecL$ = -144
$T10153 = -288
$T10154 = -292
??9@YGDKVZDecimal@@@Z PROC NEAR				; operator!=

; 1870 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1871 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1872 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10153[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10153[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1873 :    return( zDecL != zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10154[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10154[ebp]

; 1874 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDKVZDecimal@@@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDVZDecimal@@K@Z				; operator!=
_TEXT	SEGMENT
_zDec$ = 8
_l$ = 152
_zDecL$ = -144
$T10156 = -288
$T10157 = -292
??9@YGDVZDecimal@@K@Z PROC NEAR				; operator!=

; 1878 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1879 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1880 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10156[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10156[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1881 :    return( zDec != zDecL );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10157[ebp], al
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10157[ebp]

; 1882 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDVZDecimal@@K@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDFVZDecimal@@@Z				; operator!=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10159 = -288
$T10160 = -292
??9@YGDFVZDecimal@@@Z PROC NEAR				; operator!=

; 1886 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1887 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1888 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10159[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10159[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1889 :    return( zDecN != zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10160[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10160[ebp]

; 1890 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDFVZDecimal@@@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDVZDecimal@@F@Z				; operator!=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10162 = -288
$T10163 = -292
??9@YGDVZDecimal@@F@Z PROC NEAR				; operator!=

; 1894 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1895 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1896 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10162[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10162[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1897 :    return( zDec != zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10163[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10163[ebp]

; 1898 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDVZDecimal@@F@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDGVZDecimal@@@Z				; operator!=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10165 = -288
$T10166 = -292
??9@YGDGVZDecimal@@@Z PROC NEAR				; operator!=

; 1902 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1903 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1904 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10165[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10165[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1905 :    return( zDecN != zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10166[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10166[ebp]

; 1906 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDGVZDecimal@@@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDVZDecimal@@G@Z				; operator!=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10168 = -288
$T10169 = -292
??9@YGDVZDecimal@@G@Z PROC NEAR				; operator!=

; 1910 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1911 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1912 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10168[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10168[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1913 :    return( zDec != zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10169[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10169[ebp]

; 1914 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDVZDecimal@@G@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDVZDecimal@@H@Z				; operator!=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10171 = -288
$T10172 = -292
??9@YGDVZDecimal@@H@Z PROC NEAR				; operator!=

; 1918 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1919 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1920 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10171[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10171[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1921 :    return( zDec != zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10172[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10172[ebp]

; 1922 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDVZDecimal@@H@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDHVZDecimal@@@Z				; operator!=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10174 = -288
$T10175 = -292
??9@YGDHVZDecimal@@@Z PROC NEAR				; operator!=

; 1926 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1927 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1928 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10174[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10174[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1929 :    return( zDecN != zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10175[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10175[ebp]

; 1930 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDHVZDecimal@@@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDVZDecimal@@I@Z				; operator!=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10177 = -288
$T10178 = -292
??9@YGDVZDecimal@@I@Z PROC NEAR				; operator!=

; 1934 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1935 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1936 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10177[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10177[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1937 :    return( zDec != zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10178[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10178[ebp]

; 1938 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDVZDecimal@@I@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDIVZDecimal@@@Z				; operator!=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10180 = -288
$T10181 = -292
??9@YGDIVZDecimal@@@Z PROC NEAR				; operator!=

; 1942 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1943 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1944 :    zDecN = (zLONG) n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10180[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10180[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1945 :    return( zDecN != zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10181[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10181[ebp]

; 1946 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDIVZDecimal@@@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDVZDecimal@@D@Z				; operator!=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10183 = -288
$T10184 = -292
??9@YGDVZDecimal@@D@Z PROC NEAR				; operator!=

; 1949 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1950 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1951 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10183[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10183[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1952 :    return( zDec != zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10184[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10184[ebp]

; 1953 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDVZDecimal@@D@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDDVZDecimal@@@Z				; operator!=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10186 = -288
$T10187 = -292
??9@YGDDVZDecimal@@@Z PROC NEAR				; operator!=

; 1957 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1958 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1959 :    zDecN = (zSHORT) n;

	movsx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10186[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10186[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1960 :    return( zDecN != zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10187[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10187[ebp]

; 1961 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDDVZDecimal@@@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDEVZDecimal@@@Z				; operator!=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecN$ = -144
$T10189 = -288
$T10190 = -292
??9@YGDEVZDecimal@@@Z PROC NEAR				; operator!=

; 1965 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1966 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1967 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10189[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10189[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1968 :    return( zDecN != zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10190[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10190[ebp]

; 1969 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDEVZDecimal@@@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDVZDecimal@@E@Z				; operator!=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecN$ = -144
$T10192 = -288
$T10193 = -292
??9@YGDVZDecimal@@E@Z PROC NEAR				; operator!=

; 1973 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1974 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1975 :    zDecN = (zSHORT) n;

	movzx	ax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10192[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10192[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1976 :    return( zDec != zDecN );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10193[ebp], al
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10193[ebp]

; 1977 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDVZDecimal@@E@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDNVZDecimal@@@Z				; operator!=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 16
_zDecD$ = -144
$T10195 = -288
$T10196 = -292
??9@YGDNVZDecimal@@@Z PROC NEAR				; operator!=

; 1981 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1982 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1983 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10195[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10195[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1984 :    return( zDecD != zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10196[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10196[ebp]

; 1985 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??9@YGDNVZDecimal@@@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDVZDecimal@@N@Z				; operator!=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
$T10198 = -288
$T10199 = -292
??9@YGDVZDecimal@@N@Z PROC NEAR				; operator!=

; 1989 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1990 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1991 :    zDecD = n;

	mov	eax, DWORD PTR _n$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _n$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10198[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10198[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 1992 :    return( zDec != zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10199[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10199[ebp]

; 1993 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??9@YGDVZDecimal@@N@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDMVZDecimal@@@Z				; operator!=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
_zDecD$ = -144
$T10201 = -288
$T10202 = -292
??9@YGDMVZDecimal@@@Z PROC NEAR				; operator!=

; 1997 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 1998 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 1999 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T10201[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10201[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2000 :    return( zDecD != zDec );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10202[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10202[ebp]

; 2001 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDMVZDecimal@@@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??9@YGDVZDecimal@@M@Z				; operator!=
_TEXT	SEGMENT
_zDec$ = 8
_n$ = 152
_zDecD$ = -144
$T10204 = -288
$T10205 = -292
??9@YGDVZDecimal@@M@Z PROC NEAR				; operator!=

; 2005 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	esi
	push	edi

; 2006 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2007 :    zDecD = (double) n;

	fld	DWORD PTR _n$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	lea	eax, DWORD PTR $T10204[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10204[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2008 :    return( zDec != zDecD );

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	call	??9@YGDVZDecimal@@0@Z			; operator!=
	mov	BYTE PTR $T10205[ebp], al
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	al, BYTE PTR $T10205[ebp]

; 2009 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??9@YGDVZDecimal@@M@Z ENDP				; operator!=
_TEXT	ENDS
PUBLIC	??Y@YG?AVZDecimal@@AAV0@V0@@Z			; operator+=
_TEXT	SEGMENT
_zDec1$ = 12
_zDec2$ = 16
___$ReturnUdt$ = 8
$T10207 = -144
$T10208 = -288
??Y@YG?AVZDecimal@@AAV0@V0@@Z PROC NEAR			; operator+=

; 2017 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 2018 :    zDec1 = zDec1 + zDec2;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec2$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	esi, DWORD PTR _zDec1$[ebp]
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10207[ebp]
	push	eax
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	ecx, DWORD PTR $T10208[ebp]
	push	ecx
	mov	ecx, DWORD PTR _zDec1$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10208[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10207[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2019 :    return( zDec1 );

	mov	esi, DWORD PTR _zDec1$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2020 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Y@YG?AVZDecimal@@AAV0@V0@@Z ENDP			; operator+=
_TEXT	ENDS
PUBLIC	??Y@YG?AVZDecimal@@V0@J@Z			; operator+=
_TEXT	SEGMENT
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
$T10210 = -288
$T10211 = -432
$T10212 = -576
??Y@YG?AVZDecimal@@V0@J@Z PROC NEAR			; operator+=

; 2024 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2025 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2026 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10210[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10210[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2027 :    zDec = zDec + zDecL;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10211[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10212[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10212[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10211[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2028 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2029 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Y@YG?AVZDecimal@@V0@J@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YGJAAJVZDecimal@@@Z				; operator+=
_TEXT	SEGMENT
_l$ = 8
_zDec$ = 12
$T10214 = -4
??Y@YGJAAJVZDecimal@@@Z PROC NEAR			; operator+=

; 2033 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2034 :    l = l + (zLONG) zDec;

	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEJXZ			; ZDecimal::operator long
	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR [ecx]
	add	edx, eax
	mov	eax, DWORD PTR _l$[ebp]
	mov	DWORD PTR [eax], edx

; 2035 :    return( l );

	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T10214[ebp], edx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR $T10214[ebp]

; 2036 : }

	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??Y@YGJAAJVZDecimal@@@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YG?AVZDecimal@@V0@K@Z			; operator+=
_TEXT	SEGMENT
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
$T10216 = -288
$T10217 = -432
$T10218 = -576
??Y@YG?AVZDecimal@@V0@K@Z PROC NEAR			; operator+=

; 2040 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2041 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2042 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10216[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10216[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2043 :    zDec = zDec + zDecL;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10217[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10218[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10218[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10217[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2044 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2045 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Y@YG?AVZDecimal@@V0@K@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YGKKVZDecimal@@@Z				; operator+=
_TEXT	SEGMENT
_l$ = 8
_zDec$ = 12
$T10220 = -4
??Y@YGKKVZDecimal@@@Z PROC NEAR				; operator+=

; 2049 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2050 :    l = l + (zULONG) zDec;

	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEKXZ			; ZDecimal::operator unsigned long
	mov	ecx, DWORD PTR _l$[ebp]
	add	ecx, eax
	mov	DWORD PTR _l$[ebp], ecx

; 2051 :    return( l );

	mov	edx, DWORD PTR _l$[ebp]
	mov	DWORD PTR $T10220[ebp], edx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR $T10220[ebp]

; 2052 : }

	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??Y@YGKKVZDecimal@@@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YG?AVZDecimal@@V0@F@Z			; operator+=
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T10222 = -288
$T10223 = -432
$T10224 = -576
??Y@YG?AVZDecimal@@V0@F@Z PROC NEAR			; operator+=

; 2056 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2057 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2058 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10222[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10222[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2059 :    zDec = zDec + zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10223[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10224[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10224[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10223[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2060 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2061 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Y@YG?AVZDecimal@@V0@F@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YGFFVZDecimal@@@Z				; operator+=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
$T10226 = -4
??Y@YGFFVZDecimal@@@Z PROC NEAR				; operator+=

; 2065 : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi

; 2066 :    n = n + (zSHORT) zDec;

	movsx	esi, WORD PTR _n$[ebp]
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEFXZ			; ZDecimal::operator short
	movsx	eax, ax
	add	esi, eax
	mov	WORD PTR _n$[ebp], si

; 2067 :    return( n );

	mov	cx, WORD PTR _n$[ebp]
	mov	WORD PTR $T10226[ebp], cx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	ax, WORD PTR $T10226[ebp]

; 2068 : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??Y@YGFFVZDecimal@@@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YG?AVZDecimal@@V0@G@Z			; operator+=
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T10228 = -288
$T10229 = -432
$T10230 = -576
??Y@YG?AVZDecimal@@V0@G@Z PROC NEAR			; operator+=

; 2072 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2073 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2074 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10228[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10228[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2075 :    zDec = zDec + zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10229[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10230[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10230[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10229[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2076 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2077 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Y@YG?AVZDecimal@@V0@G@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YGGGVZDecimal@@@Z				; operator+=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
$T10232 = -4
??Y@YGGGVZDecimal@@@Z PROC NEAR				; operator+=

; 2081 : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi

; 2082 :    n = n + (zUSHORT) zDec;

	mov	esi, DWORD PTR _n$[ebp]
	and	esi, 65535				; 0000ffffH
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEGXZ			; ZDecimal::operator unsigned short
	and	eax, 65535				; 0000ffffH
	add	esi, eax
	mov	WORD PTR _n$[ebp], si

; 2083 :    return( n );

	mov	ax, WORD PTR _n$[ebp]
	mov	WORD PTR $T10232[ebp], ax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	ax, WORD PTR $T10232[ebp]

; 2084 : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??Y@YGGGVZDecimal@@@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YG?AVZDecimal@@V0@H@Z			; operator+=
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T10234 = -288
$T10235 = -432
$T10236 = -576
??Y@YG?AVZDecimal@@V0@H@Z PROC NEAR			; operator+=

; 2088 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2089 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2090 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10234[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10234[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2091 :    zDec = zDec + zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10235[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10236[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10236[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10235[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2092 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2093 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Y@YG?AVZDecimal@@V0@H@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YG?AVZDecimal@@V0@I@Z			; operator+=
_TEXT	SEGMENT
$T10240 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T10238 = -288
$T10239 = -432
??Y@YG?AVZDecimal@@V0@I@Z PROC NEAR			; operator+=

; 2097 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2098 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2099 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10238[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@I@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10238[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2100 :    zDec = zDec + zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10239[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10240[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10240[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10239[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2101 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2102 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Y@YG?AVZDecimal@@V0@I@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YG?AVZDecimal@@V0@D@Z			; operator+=
_TEXT	SEGMENT
$T10242 = -288
$T10243 = -432
$T10244 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??Y@YG?AVZDecimal@@V0@D@Z PROC NEAR			; operator+=

; 2106 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2107 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2108 :    zDecN = n;

	movsx	eax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10242[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10242[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2109 :    zDec = zDec + zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10243[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10244[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10244[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10243[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2110 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2111 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Y@YG?AVZDecimal@@V0@D@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YG?AVZDecimal@@V0@E@Z			; operator+=
_TEXT	SEGMENT
$T10246 = -288
$T10247 = -432
$T10248 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??Y@YG?AVZDecimal@@V0@E@Z PROC NEAR			; operator+=

; 2115 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2116 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2117 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	and	eax, 255				; 000000ffH
	push	eax
	lea	ecx, DWORD PTR $T10246[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10246[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2118 :    zDec = zDec + zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10247[ebp]
	push	edx
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10248[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10248[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10247[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2119 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2120 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Y@YG?AVZDecimal@@V0@E@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Y@YG?AVZDecimal@@V0@N@Z			; operator+=
_TEXT	SEGMENT
$T10250 = -288
$T10251 = -432
$T10252 = -576
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
??Y@YG?AVZDecimal@@V0@N@Z PROC NEAR			; operator+=

; 2124 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2125 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2126 :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10250[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10250[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2127 :    zDec = zDec + zDecD;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10251[ebp]
	push	eax
	call	??H@YG?AVZDecimal@@V0@0@Z		; operator+
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	ecx, DWORD PTR $T10252[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10252[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10251[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2128 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2129 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??Y@YG?AVZDecimal@@V0@N@Z ENDP				; operator+=
_TEXT	ENDS
PUBLIC	??Z@YG?AVZDecimal@@AAV0@V0@@Z			; operator-=
_TEXT	SEGMENT
$T10254 = -144
$T10255 = -288
_zDec1$ = 12
_zDec2$ = 16
___$ReturnUdt$ = 8
??Z@YG?AVZDecimal@@AAV0@V0@@Z PROC NEAR			; operator-=

; 2137 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 2138 :    zDec1 = zDec1 - zDec2;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec2$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	esi, DWORD PTR _zDec1$[ebp]
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10254[ebp]
	push	eax
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	ecx, DWORD PTR $T10255[ebp]
	push	ecx
	mov	ecx, DWORD PTR _zDec1$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10255[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10254[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2139 :    return( zDec1 );

	mov	esi, DWORD PTR _zDec1$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2140 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Z@YG?AVZDecimal@@AAV0@V0@@Z ENDP			; operator-=
_TEXT	ENDS
PUBLIC	??Z@YG?AVZDecimal@@V0@J@Z			; operator-=
_TEXT	SEGMENT
$T10257 = -288
$T10258 = -432
$T10259 = -576
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
??Z@YG?AVZDecimal@@V0@J@Z PROC NEAR			; operator-=

; 2144 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2145 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2146 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10257[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10257[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2147 :    zDec = zDec - zDecL;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10258[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10259[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10259[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10258[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2148 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2149 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Z@YG?AVZDecimal@@V0@J@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YGJAAJVZDecimal@@@Z				; operator-=
_TEXT	SEGMENT
$T10261 = -4
_l$ = 8
_zDec$ = 12
??Z@YGJAAJVZDecimal@@@Z PROC NEAR			; operator-=

; 2153 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2154 :    l = l - (zLONG) zDec;

	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEJXZ			; ZDecimal::operator long
	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR [ecx]
	sub	edx, eax
	mov	eax, DWORD PTR _l$[ebp]
	mov	DWORD PTR [eax], edx

; 2155 :    return( l );

	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T10261[ebp], edx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR $T10261[ebp]

; 2156 : }

	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??Z@YGJAAJVZDecimal@@@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YG?AVZDecimal@@V0@K@Z			; operator-=
_TEXT	SEGMENT
$T10263 = -288
$T10264 = -432
$T10265 = -576
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
??Z@YG?AVZDecimal@@V0@K@Z PROC NEAR			; operator-=

; 2160 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2161 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2162 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10263[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10263[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2163 :    zDec = zDec - zDecL;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10264[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10265[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10265[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10264[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2164 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2165 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Z@YG?AVZDecimal@@V0@K@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YGKKVZDecimal@@@Z				; operator-=
_TEXT	SEGMENT
$T10267 = -4
_l$ = 8
_zDec$ = 12
??Z@YGKKVZDecimal@@@Z PROC NEAR				; operator-=

; 2169 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2170 :    l = l - (zULONG) zDec;

	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEKXZ			; ZDecimal::operator unsigned long
	mov	ecx, DWORD PTR _l$[ebp]
	sub	ecx, eax
	mov	DWORD PTR _l$[ebp], ecx

; 2171 :    return( l );

	mov	edx, DWORD PTR _l$[ebp]
	mov	DWORD PTR $T10267[ebp], edx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR $T10267[ebp]

; 2172 : }

	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??Z@YGKKVZDecimal@@@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YG?AVZDecimal@@V0@F@Z			; operator-=
_TEXT	SEGMENT
$T10269 = -288
$T10270 = -432
$T10271 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??Z@YG?AVZDecimal@@V0@F@Z PROC NEAR			; operator-=

; 2176 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2177 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2178 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10269[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10269[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2179 :    zDec = zDec - zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10270[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10271[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10271[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10270[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2180 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2181 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Z@YG?AVZDecimal@@V0@F@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YGFFVZDecimal@@@Z				; operator-=
_TEXT	SEGMENT
$T10273 = -4
_n$ = 8
_zDec$ = 12
??Z@YGFFVZDecimal@@@Z PROC NEAR				; operator-=

; 2185 : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi

; 2186 :    n = n - (zSHORT) zDec;

	movsx	esi, WORD PTR _n$[ebp]
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEFXZ			; ZDecimal::operator short
	movsx	eax, ax
	sub	esi, eax
	mov	WORD PTR _n$[ebp], si

; 2187 :    return( n );

	mov	cx, WORD PTR _n$[ebp]
	mov	WORD PTR $T10273[ebp], cx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	ax, WORD PTR $T10273[ebp]

; 2188 : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??Z@YGFFVZDecimal@@@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YG?AVZDecimal@@V0@G@Z			; operator-=
_TEXT	SEGMENT
$T10275 = -288
$T10276 = -432
$T10277 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??Z@YG?AVZDecimal@@V0@G@Z PROC NEAR			; operator-=

; 2192 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2193 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2194 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10275[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10275[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2195 :    zDec = zDec - zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10276[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10277[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10277[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10276[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2196 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2197 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Z@YG?AVZDecimal@@V0@G@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YGGGVZDecimal@@@Z				; operator-=
_TEXT	SEGMENT
$T10279 = -4
_n$ = 8
_zDec$ = 12
??Z@YGGGVZDecimal@@@Z PROC NEAR				; operator-=

; 2201 : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi

; 2202 :    n = n - (zUSHORT) zDec;

	mov	esi, DWORD PTR _n$[ebp]
	and	esi, 65535				; 0000ffffH
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEGXZ			; ZDecimal::operator unsigned short
	and	eax, 65535				; 0000ffffH
	sub	esi, eax
	mov	WORD PTR _n$[ebp], si

; 2203 :    return( n );

	mov	ax, WORD PTR _n$[ebp]
	mov	WORD PTR $T10279[ebp], ax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	ax, WORD PTR $T10279[ebp]

; 2204 : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??Z@YGGGVZDecimal@@@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YG?AVZDecimal@@V0@H@Z			; operator-=
_TEXT	SEGMENT
$T10281 = -288
$T10282 = -432
$T10283 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??Z@YG?AVZDecimal@@V0@H@Z PROC NEAR			; operator-=

; 2208 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2209 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2210 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10281[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10281[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2211 :    zDec = zDec - zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10282[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10283[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10283[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10282[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2212 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2213 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Z@YG?AVZDecimal@@V0@H@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YG?AVZDecimal@@V0@I@Z			; operator-=
_TEXT	SEGMENT
$T10285 = -288
$T10286 = -432
$T10287 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??Z@YG?AVZDecimal@@V0@I@Z PROC NEAR			; operator-=

; 2217 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2218 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2219 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10285[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@I@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10285[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2220 :    zDec = zDec - zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10286[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10287[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10287[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10286[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2221 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2222 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Z@YG?AVZDecimal@@V0@I@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YG?AVZDecimal@@V0@D@Z			; operator-=
_TEXT	SEGMENT
$T10289 = -288
$T10290 = -432
$T10291 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??Z@YG?AVZDecimal@@V0@D@Z PROC NEAR			; operator-=

; 2226 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2227 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2228 :    zDecN = n;

	movsx	eax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10289[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10289[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2229 :    zDec = zDec - zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10290[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10291[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10291[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10290[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2230 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2231 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Z@YG?AVZDecimal@@V0@D@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YG?AVZDecimal@@V0@E@Z			; operator-=
_TEXT	SEGMENT
$T10293 = -288
$T10294 = -432
$T10295 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??Z@YG?AVZDecimal@@V0@E@Z PROC NEAR			; operator-=

; 2235 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2236 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2237 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	and	eax, 255				; 000000ffH
	push	eax
	lea	ecx, DWORD PTR $T10293[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10293[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2238 :    zDec = zDec - zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10294[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10295[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10295[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10294[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2239 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2240 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??Z@YG?AVZDecimal@@V0@E@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??Z@YG?AVZDecimal@@V0@N@Z			; operator-=
_TEXT	SEGMENT
$T10297 = -288
$T10298 = -432
$T10299 = -576
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
??Z@YG?AVZDecimal@@V0@N@Z PROC NEAR			; operator-=

; 2244 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2245 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2246 :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10297[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10297[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2247 :    zDec = zDec - zDecD;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10298[ebp]
	push	eax
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	ecx, DWORD PTR $T10299[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10299[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10298[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2248 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2249 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??Z@YG?AVZDecimal@@V0@N@Z ENDP				; operator-=
_TEXT	ENDS
PUBLIC	??X@YG?AVZDecimal@@AAV0@V0@@Z			; operator*=
_TEXT	SEGMENT
$T10301 = -144
$T10302 = -288
_zDec1$ = 12
_zDec2$ = 16
___$ReturnUdt$ = 8
??X@YG?AVZDecimal@@AAV0@V0@@Z PROC NEAR			; operator*=

; 2257 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 2258 :    zDec1 = zDec1 * zDec2;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec2$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	esi, DWORD PTR _zDec1$[ebp]
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10301[ebp]
	push	eax
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	ecx, DWORD PTR $T10302[ebp]
	push	ecx
	mov	ecx, DWORD PTR _zDec1$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10302[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10301[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2259 :    return( zDec1 );

	mov	esi, DWORD PTR _zDec1$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2260 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??X@YG?AVZDecimal@@AAV0@V0@@Z ENDP			; operator*=
_TEXT	ENDS
PUBLIC	??X@YG?AVZDecimal@@V0@J@Z			; operator*=
_TEXT	SEGMENT
$T10304 = -288
$T10305 = -432
$T10306 = -576
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
??X@YG?AVZDecimal@@V0@J@Z PROC NEAR			; operator*=

; 2264 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2265 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2266 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10304[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10304[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2267 :    zDec = zDec - zDecL;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10305[ebp]
	push	edx
	call	??G@YG?AVZDecimal@@V0@0@Z		; operator-
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10306[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10306[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10305[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2268 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2269 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??X@YG?AVZDecimal@@V0@J@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YGJAAJVZDecimal@@@Z				; operator*=
_TEXT	SEGMENT
$T10308 = -4
_l$ = 8
_zDec$ = 12
??X@YGJAAJVZDecimal@@@Z PROC NEAR			; operator*=

; 2273 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2274 :    l = l * (zLONG) zDec;

	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEJXZ			; ZDecimal::operator long
	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR [ecx]
	imul	edx, eax
	mov	eax, DWORD PTR _l$[ebp]
	mov	DWORD PTR [eax], edx

; 2275 :    return( l );

	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T10308[ebp], edx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR $T10308[ebp]

; 2276 : }

	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??X@YGJAAJVZDecimal@@@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YG?AVZDecimal@@V0@K@Z			; operator*=
_TEXT	SEGMENT
$T10310 = -288
$T10311 = -432
$T10312 = -576
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
??X@YG?AVZDecimal@@V0@K@Z PROC NEAR			; operator*=

; 2280 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2281 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2282 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10310[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10310[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2283 :    zDec = zDec * zDecL;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10311[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10312[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10312[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10311[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2284 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2285 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??X@YG?AVZDecimal@@V0@K@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YGKKVZDecimal@@@Z				; operator*=
_TEXT	SEGMENT
$T10314 = -4
_l$ = 8
_zDec$ = 12
??X@YGKKVZDecimal@@@Z PROC NEAR				; operator*=

; 2289 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2290 :    l = l * (zULONG) zDec;

	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEKXZ			; ZDecimal::operator unsigned long
	mov	ecx, DWORD PTR _l$[ebp]
	imul	ecx, eax
	mov	DWORD PTR _l$[ebp], ecx

; 2291 :    return( l );

	mov	edx, DWORD PTR _l$[ebp]
	mov	DWORD PTR $T10314[ebp], edx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR $T10314[ebp]

; 2292 : }

	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??X@YGKKVZDecimal@@@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YG?AVZDecimal@@V0@F@Z			; operator*=
_TEXT	SEGMENT
$T10316 = -288
$T10317 = -432
$T10318 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??X@YG?AVZDecimal@@V0@F@Z PROC NEAR			; operator*=

; 2296 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2297 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2298 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10316[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10316[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2299 :    zDec = zDec * zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10317[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10318[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10318[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10317[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2300 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2301 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??X@YG?AVZDecimal@@V0@F@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YGFFVZDecimal@@@Z				; operator*=
_TEXT	SEGMENT
$T10320 = -4
_n$ = 8
_zDec$ = 12
??X@YGFFVZDecimal@@@Z PROC NEAR				; operator*=

; 2305 : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi

; 2306 :    n = n * (zSHORT) zDec;

	movsx	esi, WORD PTR _n$[ebp]
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEFXZ			; ZDecimal::operator short
	movsx	eax, ax
	imul	esi, eax
	mov	WORD PTR _n$[ebp], si

; 2307 :    return( n );

	mov	cx, WORD PTR _n$[ebp]
	mov	WORD PTR $T10320[ebp], cx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	ax, WORD PTR $T10320[ebp]

; 2308 : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??X@YGFFVZDecimal@@@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YG?AVZDecimal@@V0@G@Z			; operator*=
_TEXT	SEGMENT
$T10322 = -288
$T10323 = -432
$T10324 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??X@YG?AVZDecimal@@V0@G@Z PROC NEAR			; operator*=

; 2312 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2313 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2314 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10322[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10322[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2315 :    zDec = zDec * zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10323[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10324[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10324[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10323[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2316 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2317 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??X@YG?AVZDecimal@@V0@G@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YGGGVZDecimal@@@Z				; operator*=
_TEXT	SEGMENT
$T10326 = -4
_n$ = 8
_zDec$ = 12
??X@YGGGVZDecimal@@@Z PROC NEAR				; operator*=

; 2321 : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi

; 2322 :    n = n * (zUSHORT) zDec;

	mov	esi, DWORD PTR _n$[ebp]
	and	esi, 65535				; 0000ffffH
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEGXZ			; ZDecimal::operator unsigned short
	and	eax, 65535				; 0000ffffH
	imul	esi, eax
	mov	WORD PTR _n$[ebp], si

; 2323 :    return( n );

	mov	ax, WORD PTR _n$[ebp]
	mov	WORD PTR $T10326[ebp], ax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	ax, WORD PTR $T10326[ebp]

; 2324 : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??X@YGGGVZDecimal@@@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YG?AVZDecimal@@V0@H@Z			; operator*=
_TEXT	SEGMENT
$T10328 = -288
$T10329 = -432
$T10330 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??X@YG?AVZDecimal@@V0@H@Z PROC NEAR			; operator*=

; 2328 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2329 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2330 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10328[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10328[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2331 :    zDec = zDec * zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10329[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10330[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10330[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10329[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2332 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2333 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??X@YG?AVZDecimal@@V0@H@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YG?AVZDecimal@@V0@I@Z			; operator*=
_TEXT	SEGMENT
$T10332 = -288
$T10333 = -432
$T10334 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??X@YG?AVZDecimal@@V0@I@Z PROC NEAR			; operator*=

; 2337 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2338 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2339 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10332[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@I@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10332[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2340 :    zDec = zDec * zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10333[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10334[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10334[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10333[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2341 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2342 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??X@YG?AVZDecimal@@V0@I@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YG?AVZDecimal@@V0@D@Z			; operator*=
_TEXT	SEGMENT
$T10336 = -288
$T10337 = -432
$T10338 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??X@YG?AVZDecimal@@V0@D@Z PROC NEAR			; operator*=

; 2346 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2347 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2348 :    zDecN = n;

	movsx	eax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10336[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10336[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2349 :    zDec = zDec * zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10337[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10338[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10338[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10337[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2350 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2351 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??X@YG?AVZDecimal@@V0@D@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YG?AVZDecimal@@V0@E@Z			; operator*=
_TEXT	SEGMENT
$T10340 = -288
$T10341 = -432
$T10342 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??X@YG?AVZDecimal@@V0@E@Z PROC NEAR			; operator*=

; 2355 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2356 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2357 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	and	eax, 255				; 000000ffH
	push	eax
	lea	ecx, DWORD PTR $T10340[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10340[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2358 :    zDec = zDec * zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10341[ebp]
	push	edx
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10342[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10342[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10341[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2359 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2360 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??X@YG?AVZDecimal@@V0@E@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??X@YG?AVZDecimal@@V0@N@Z			; operator*=
_TEXT	SEGMENT
$T10344 = -288
$T10345 = -432
$T10346 = -576
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
??X@YG?AVZDecimal@@V0@N@Z PROC NEAR			; operator*=

; 2364 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2365 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2366 :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10344[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10344[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2367 :    zDec = zDec * zDecD;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10345[ebp]
	push	eax
	call	??D@YG?AVZDecimal@@V0@0@Z		; operator*
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	ecx, DWORD PTR $T10346[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10346[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10345[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2368 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2369 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??X@YG?AVZDecimal@@V0@N@Z ENDP				; operator*=
_TEXT	ENDS
PUBLIC	??_0@YG?AVZDecimal@@AAV0@V0@@Z			; operator/=
_TEXT	SEGMENT
$T10348 = -144
$T10349 = -288
_zDec1$ = 12
_zDec2$ = 16
___$ReturnUdt$ = 8
??_0@YG?AVZDecimal@@AAV0@V0@@Z PROC NEAR		; operator/=

; 2377 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	esi
	push	edi

; 2378 :    zDec1 = zDec1 / zDec2;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec2$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	esi, DWORD PTR _zDec1$[ebp]
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10348[ebp]
	push	eax
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	ecx, DWORD PTR $T10349[ebp]
	push	ecx
	mov	ecx, DWORD PTR _zDec1$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10349[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10348[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2379 :    return( zDec1 );

	mov	esi, DWORD PTR _zDec1$[ebp]
	mov	ecx, 36					; 00000024H
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDec2$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2380 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??_0@YG?AVZDecimal@@AAV0@V0@@Z ENDP			; operator/=
_TEXT	ENDS
PUBLIC	??_0@YG?AVZDecimal@@V0@J@Z			; operator/=
_TEXT	SEGMENT
$T10351 = -288
$T10352 = -432
$T10353 = -576
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
??_0@YG?AVZDecimal@@V0@J@Z PROC NEAR			; operator/=

; 2384 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2385 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2386 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10351[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@J@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10351[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2387 :    zDec = zDec / zDecL;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10352[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10353[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10353[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10352[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2388 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2389 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??_0@YG?AVZDecimal@@V0@J@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YGJAAJVZDecimal@@@Z			; operator/=
_TEXT	SEGMENT
$T10355 = -4
_l$ = 8
_zDec$ = 12
??_0@YGJAAJVZDecimal@@@Z PROC NEAR			; operator/=

; 2393 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2394 :    l = l / (zLONG) zDec;

	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEJXZ			; ZDecimal::operator long
	mov	ecx, eax
	mov	edx, DWORD PTR _l$[ebp]
	mov	eax, DWORD PTR [edx]
	cdq
	idiv	ecx
	mov	ecx, DWORD PTR _l$[ebp]
	mov	DWORD PTR [ecx], eax

; 2395 :    return( l );

	mov	edx, DWORD PTR _l$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR $T10355[ebp], eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR $T10355[ebp]

; 2396 : }

	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??_0@YGJAAJVZDecimal@@@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YG?AVZDecimal@@V0@K@Z			; operator/=
_TEXT	SEGMENT
$T10357 = -288
$T10358 = -432
$T10359 = -576
_zDec$ = 12
_l$ = 156
___$ReturnUdt$ = 8
_zDecL$ = -144
??_0@YG?AVZDecimal@@V0@K@Z PROC NEAR			; operator/=

; 2400 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2401 :    ZDecimal zDecL;

	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2402 :    zDecL = l;

	mov	eax, DWORD PTR _l$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10357[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??4ZDecimal@@QAE?AV0@K@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10357[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2403 :    zDec = zDec / zDecL;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecL$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10358[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10359[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10359[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10358[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2404 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecL$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2405 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??_0@YG?AVZDecimal@@V0@K@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YGKKVZDecimal@@@Z				; operator/=
_TEXT	SEGMENT
$T10361 = -4
_l$ = 8
_zDec$ = 12
??_0@YGKKVZDecimal@@@Z PROC NEAR			; operator/=

; 2409 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2410 :    l = l / (zULONG) zDec;

	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEKXZ			; ZDecimal::operator unsigned long
	mov	ecx, eax
	mov	eax, DWORD PTR _l$[ebp]
	xor	edx, edx
	div	ecx
	mov	DWORD PTR _l$[ebp], eax

; 2411 :    return( l );

	mov	edx, DWORD PTR _l$[ebp]
	mov	DWORD PTR $T10361[ebp], edx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR $T10361[ebp]

; 2412 : }

	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??_0@YGKKVZDecimal@@@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YG?AVZDecimal@@V0@F@Z			; operator/=
_TEXT	SEGMENT
$T10363 = -288
$T10364 = -432
$T10365 = -576
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
??_0@YG?AVZDecimal@@V0@F@Z PROC NEAR			; operator/=

; 2416 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2417 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2418 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10363[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@F@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10363[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2419 :    zDec = zDec / zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10364[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10365[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10365[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10364[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2420 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2421 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??_0@YG?AVZDecimal@@V0@F@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YGFFVZDecimal@@@Z				; operator/=
_TEXT	SEGMENT
$T10367 = -4
_n$ = 8
_zDec$ = 12
??_0@YGFFVZDecimal@@@Z PROC NEAR			; operator/=

; 2425 : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi

; 2426 :    n = n / (zSHORT) zDec;

	movsx	esi, WORD PTR _n$[ebp]
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEFXZ			; ZDecimal::operator short
	movsx	ecx, ax
	mov	eax, esi
	cdq
	idiv	ecx
	mov	WORD PTR _n$[ebp], ax

; 2427 :    return( n );

	mov	dx, WORD PTR _n$[ebp]
	mov	WORD PTR $T10367[ebp], dx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	ax, WORD PTR $T10367[ebp]

; 2428 : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??_0@YGFFVZDecimal@@@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YG?AVZDecimal@@V0@G@Z			; operator/=
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T10369 = -288
$T10370 = -432
$T10371 = -576
??_0@YG?AVZDecimal@@V0@G@Z PROC NEAR			; operator/=

; 2432 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2433 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2434 :    zDecN = n;

	mov	ax, WORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10369[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@G@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10369[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2435 :    zDec = zDec / zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10370[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10371[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10371[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10370[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2436 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2437 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??_0@YG?AVZDecimal@@V0@G@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YGGGVZDecimal@@@Z				; operator/=
_TEXT	SEGMENT
_n$ = 8
_zDec$ = 12
$T10373 = -4
??_0@YGGGVZDecimal@@@Z PROC NEAR			; operator/=

; 2441 : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi

; 2442 :    n = n / (zUSHORT) zDec;

	mov	esi, DWORD PTR _n$[ebp]
	and	esi, 65535				; 0000ffffH
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??BZDecimal@@QAEGXZ			; ZDecimal::operator unsigned short
	mov	cx, ax
	and	ecx, 65535				; 0000ffffH
	mov	eax, esi
	cdq
	idiv	ecx
	mov	WORD PTR _n$[ebp], ax

; 2443 :    return( n );

	mov	dx, WORD PTR _n$[ebp]
	mov	WORD PTR $T10373[ebp], dx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	ax, WORD PTR $T10373[ebp]

; 2444 : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	148					; 00000094H
??_0@YGGGVZDecimal@@@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YG?AVZDecimal@@V0@H@Z			; operator/=
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T10375 = -288
$T10376 = -432
$T10377 = -576
??_0@YG?AVZDecimal@@V0@H@Z PROC NEAR			; operator/=

; 2448 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2449 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2450 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10375[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10375[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2451 :    zDec = zDec / zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10376[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10377[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10377[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10376[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2452 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2453 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??_0@YG?AVZDecimal@@V0@H@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YG?AVZDecimal@@V0@I@Z			; operator/=
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T10379 = -288
$T10380 = -432
$T10381 = -576
??_0@YG?AVZDecimal@@V0@I@Z PROC NEAR			; operator/=

; 2457 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2458 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2459 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10379[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@I@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10379[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2460 :    zDec = zDec / zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10380[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10381[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10381[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10380[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2461 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2462 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??_0@YG?AVZDecimal@@V0@I@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YG?AVZDecimal@@V0@D@Z			; operator/=
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T10383 = -288
$T10384 = -432
$T10385 = -576
??_0@YG?AVZDecimal@@V0@D@Z PROC NEAR			; operator/=

; 2466 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2467 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2468 :    zDecN = n;

	movsx	eax, BYTE PTR _n$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T10383[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10383[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2469 :    zDec = zDec / zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10384[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10385[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10385[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10384[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2470 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2471 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??_0@YG?AVZDecimal@@V0@D@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YG?AVZDecimal@@V0@E@Z			; operator/=
_TEXT	SEGMENT
_zDec$ = 12
_n$ = 156
___$ReturnUdt$ = 8
_zDecN$ = -144
$T10387 = -288
$T10388 = -432
$T10389 = -576
??_0@YG?AVZDecimal@@V0@E@Z PROC NEAR			; operator/=

; 2475 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2476 :    ZDecimal zDecN;

	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2477 :    zDecN = n;

	mov	eax, DWORD PTR _n$[ebp]
	and	eax, 255				; 000000ffH
	push	eax
	lea	ecx, DWORD PTR $T10387[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??4ZDecimal@@QAE?AV0@H@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10387[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2478 :    zDec = zDec / zDecN;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecN$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	edx, DWORD PTR $T10388[ebp]
	push	edx
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10389[ebp]
	push	eax
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10389[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10388[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2479 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecN$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2480 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	152					; 00000098H
??_0@YG?AVZDecimal@@V0@E@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_0@YG?AVZDecimal@@V0@N@Z			; operator/=
_TEXT	SEGMENT
_zDec$ = 12
_d$ = 156
___$ReturnUdt$ = 8
_zDecD$ = -144
$T10391 = -288
$T10392 = -432
$T10393 = -576
??_0@YG?AVZDecimal@@V0@N@Z PROC NEAR			; operator/=

; 2484 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 576				; 00000240H
	push	esi
	push	edi

; 2485 :    ZDecimal zDecD;

	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??0ZDecimal@@QAE@XZ			; ZDecimal::ZDecimal

; 2486 :    zDecD = d;

	mov	eax, DWORD PTR _d$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _d$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T10391[ebp]
	push	edx
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??4ZDecimal@@QAE?AV0@N@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10391[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2487 :    zDec = zDec / zDecD;

	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDecD$[ebp]
	mov	edi, esp
	rep movsd
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, esp
	rep movsd
	lea	eax, DWORD PTR $T10392[ebp]
	push	eax
	call	??K@YG?AVZDecimal@@V0@0@Z		; operator/
	mov	esi, eax
	sub	esp, 144				; 00000090H
	mov	ecx, 36					; 00000024H
	mov	edi, esp
	rep movsd
	lea	ecx, DWORD PTR $T10393[ebp]
	push	ecx
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??4ZDecimal@@QAE?AV0@V0@@Z		; ZDecimal::operator=
	lea	ecx, DWORD PTR $T10393[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR $T10392[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal

; 2488 :    return( zDec );

	mov	ecx, 36					; 00000024H
	lea	esi, DWORD PTR _zDec$[ebp]
	mov	edi, DWORD PTR ___$ReturnUdt$[ebp]
	rep movsd
	lea	ecx, DWORD PTR _zDecD$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	lea	ecx, DWORD PTR _zDec$[ebp]
	call	??1ZDecimal@@QAE@XZ			; ZDecimal::~ZDecimal
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 2489 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	156					; 0000009cH
??_0@YG?AVZDecimal@@V0@N@Z ENDP				; operator/=
_TEXT	ENDS
PUBLIC	??_C@_0CJ@PAGH@Don2Cam9Pas1Gig3Dks5Dgc8Kat2Mik3@ ; `string'
PUBLIC	??0ARACrypt@@QAE@XZ				; ARACrypt::ARACrypt
PUBLIC	?TransformString@ARACrypt@@UAEXPADPBD@Z		; ARACrypt::TransformString
PUBLIC	?SetKey@ARACrypt@@UAEXPBD@Z			; ARACrypt::SetKey
PUBLIC	?GetKey@ARACrypt@@UAEXPAD@Z			; ARACrypt::GetKey
PUBLIC	?TransformChar@ARACrypt@@UAEXAAE@Z		; ARACrypt::TransformChar
PUBLIC	??_7ARACrypt@@6B@				; ARACrypt::`vftable'
PUBLIC	??_GARACrypt@@UAEPAXI@Z				; ARACrypt::`scalar deleting destructor'
PUBLIC	??_EARACrypt@@UAEPAXI@Z				; ARACrypt::`vector deleting destructor'
EXTRN	_strcpy:NEAR
;	COMDAT ??_7ARACrypt@@6B@
; File C:\10C\A\oe\KZOEDECA.CPP
CONST	SEGMENT
??_7ARACrypt@@6B@ DD FLAT:?TransformString@ARACrypt@@UAEXPADPBD@Z ; ARACrypt::`vftable'
	DD	FLAT:?SetKey@ARACrypt@@UAEXPBD@Z
	DD	FLAT:?GetKey@ARACrypt@@UAEXPAD@Z
	DD	FLAT:?TransformChar@ARACrypt@@UAEXAAE@Z
	DD	FLAT:??_EARACrypt@@UAEPAXI@Z
CONST	ENDS
;	COMDAT ??_C@_0CJ@PAGH@Don2Cam9Pas1Gig3Dks5Dgc8Kat2Mik3@
_DATA	SEGMENT
??_C@_0CJ@PAGH@Don2Cam9Pas1Gig3Dks5Dgc8Kat2Mik3@ DB 'Don2Cam9Pas1Gig3Dks5'
	DB	'Dgc8Kat2Mik3Jab1Mat2', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -4
??0ARACrypt@@QAE@XZ PROC NEAR				; ARACrypt::ARACrypt

; 2592 : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+69], 995191263		; 3b5169dfH
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+73], -764048157		; d2758ce3H
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+77], -200567014		; f40b971aH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+81], -2147483550		; 80000062H
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+85], 1073741856		; 40000020H
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+89], 268435458		; 10000002H
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+93], 2147483647		; 7fffffffH
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+97], 1073741823		; 3fffffffH
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+101], 268435455		; 0fffffffH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+105], -2147483648	; 80000000H
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+109], -1073741824	; c0000000H
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+113], -268435456		; f0000000H
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7ARACrypt@@6B@ ; ARACrypt::`vftable'

; 2593 :    strcpy( m_szKey, "Don2Cam9Pas1Gig3Dks5Dgc8Kat2Mik3Jab1Mat2" );

	push	OFFSET FLAT:??_C@_0CJ@PAGH@Don2Cam9Pas1Gig3Dks5Dgc8Kat2Mik3@ ; `string'
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	push	ecx
	call	_strcpy
	add	esp, 8

; 2594 : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0ARACrypt@@QAE@XZ ENDP				; ARACrypt::ARACrypt
_TEXT	ENDS
PUBLIC	??1ARACrypt@@UAE@XZ				; ARACrypt::~ARACrypt
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GARACrypt@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GARACrypt@@UAEPAXI@Z PROC NEAR			; ARACrypt::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1ARACrypt@@UAE@XZ			; ARACrypt::~ARACrypt
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L9284
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L9284:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GARACrypt@@UAEPAXI@Z ENDP				; ARACrypt::`scalar deleting destructor'
_TEXT	ENDS
_TEXT	SEGMENT
_this$ = -4
??1ARACrypt@@UAE@XZ PROC NEAR				; ARACrypt::~ARACrypt

; 2598 : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7ARACrypt@@6B@ ; ARACrypt::`vftable'

; 2599 : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1ARACrypt@@UAE@XZ ENDP				; ARACrypt::~ARACrypt
_TEXT	ENDS
PUBLIC	??_C@_0N@GGH@C?H?$CB?S?t?$LD?$BA?8?7?$KK?$BIV?$AA@ ; `string'
EXTRN	_strlen:NEAR
;	COMDAT ??_C@_0N@GGH@C?H?$CB?S?t?$LD?$BA?8?7?$KK?$BIV?$AA@
; File C:\10C\A\oe\KZOEDECA.CPP
_DATA	SEGMENT
??_C@_0N@GGH@C?H?$CB?S?t?$LD?$BA?8?7?$KK?$BIV?$AA@ DB 'C', 0c8H, '!', 0d3H
	DB	0f4H, 0b3H, 010H, '''', 09H, 0aaH, 018H, 'V', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_cpcKey$ = 8
_this$ = -48
_szSeed$ = -44
_nIdx$ = -4
_nLth$ = -8
?SetKey@ARACrypt@@UAEXPBD@Z PROC NEAR			; ARACrypt::SetKey

; 2606 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H
	mov	DWORD PTR _this$[ebp], ecx

; 2607 :    char szSeed[ zMAXEL + 1 ];
; 2608 : 
; 2609 :    strcpy( m_szKey, cpcKey );

	mov	eax, DWORD PTR _cpcKey$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	push	ecx
	call	_strcpy
	add	esp, 8

; 2610 : 
; 2611 :    if ( m_szKey[ 0 ] == 0 )

	mov	edx, DWORD PTR _this$[ebp]
	movsx	eax, BYTE PTR [edx+4]
	test	eax, eax
	jne	SHORT $L9293

; 2613 :       // Put some really outrageous characters in seed just in case.
; 2614 :       strcpy( szSeed, "\x43\xC8\x21\xD3\xF4\xB3\x10\x27\x09\xAA\x18\x56" );

	push	OFFSET FLAT:??_C@_0N@GGH@C?H?$CB?S?t?$LD?$BA?8?7?$KK?$BIV?$AA@ ; `string'
	lea	ecx, DWORD PTR _szSeed$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 2619 :    else

	jmp	SHORT $L9295
$L9293:

; 2621 :       strcpy( szSeed, m_szKey );

	mov	edx, DWORD PTR _this$[ebp]
	add	edx, 4
	push	edx
	lea	eax, DWORD PTR _szSeed$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8
$L9295:

; 2623 : 
; 2624 :    // Make sure seed is at least 12 bytes long.
; 2625 : 
; 2626 :    int nIdx = 0;

	mov	DWORD PTR _nIdx$[ebp], 0

; 2627 :    int nLth = strlen( szSeed );

	lea	ecx, DWORD PTR _szSeed$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _nLth$[ebp], eax

; 2628 : 
; 2629 :    for ( nIdx = 0; nLth < 12; nIdx++ )

	mov	DWORD PTR _nIdx$[ebp], 0
	jmp	SHORT $L9298
$L9299:
	mov	edx, DWORD PTR _nIdx$[ebp]
	add	edx, 1
	mov	DWORD PTR _nIdx$[ebp], edx
$L9298:
	cmp	DWORD PTR _nLth$[ebp], 12		; 0000000cH
	jge	SHORT $L9300

; 2631 :       szSeed[ nLth++ ] = szSeed[ nIdx ];

	mov	eax, DWORD PTR _nLth$[ebp]
	mov	ecx, DWORD PTR _nIdx$[ebp]
	mov	dl, BYTE PTR _szSeed$[ebp+ecx]
	mov	BYTE PTR _szSeed$[ebp+eax], dl
	mov	eax, DWORD PTR _nLth$[ebp]
	add	eax, 1
	mov	DWORD PTR _nLth$[ebp], eax

; 2632 :       szSeed[ nLth ] = 0;

	mov	ecx, DWORD PTR _nLth$[ebp]
	mov	BYTE PTR _szSeed$[ebp+ecx], 0

; 2633 :    }

	jmp	SHORT $L9299
$L9300:

; 2634 : 
; 2635 :    // LFSR A, B, and C get the first, second, and
; 2636 :    // third four bytes of the seed, respectively.
; 2637 : 
; 2638 :    for ( nIdx = 0; nIdx < 4; nIdx++ )

	mov	DWORD PTR _nIdx$[ebp], 0
	jmp	SHORT $L9301
$L9302:
	mov	edx, DWORD PTR _nIdx$[ebp]
	add	edx, 1
	mov	DWORD PTR _nIdx$[ebp], edx
$L9301:
	cmp	DWORD PTR _nIdx$[ebp], 4
	jge	SHORT $L9303

; 2640 :       m_LFSR_A = ((m_LFSR_A <<= 8) |
; 2641 :                   ((unsigned long int) szSeed[ nIdx + 0 ]));

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+69]
	shl	ecx, 8
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+69], ecx
	mov	eax, DWORD PTR _nIdx$[ebp]
	movsx	ecx, BYTE PTR _szSeed$[ebp+eax]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+69]
	or	eax, ecx
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+69], eax

; 2642 : 
; 2643 :       m_LFSR_B = ((m_LFSR_B <<= 8) |
; 2644 :                   ((unsigned long int ) szSeed[ nIdx + 4 ]));

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+73]
	shl	eax, 8
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+73], eax
	mov	edx, DWORD PTR _nIdx$[ebp]
	movsx	eax, BYTE PTR _szSeed$[ebp+edx+4]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+73]
	or	edx, eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+73], edx

; 2645 : 
; 2646 :       m_LFSR_C = ((m_LFSR_C <<= 8) |
; 2647 :                   ((unsigned long int) szSeed[ nIdx + 8 ]));

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+77]
	shl	edx, 8
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+77], edx
	mov	ecx, DWORD PTR _nIdx$[ebp]
	movsx	edx, BYTE PTR _szSeed$[ebp+ecx+8]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+77]
	or	ecx, edx
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+77], ecx

; 2648 :    }

	jmp	SHORT $L9302
$L9303:

; 2649 : 
; 2650 :    // If any LFSR contains 0x00000000, load a
; 2651 :    // non-zero default value instead. There is
; 2652 :    // no particular "good" value. The ones here
; 2653 :    // were selected to be distinctive during
; 2654 :    // testing and debugging.
; 2655 : 
; 2656 :    if ( 0x00000000 == m_LFSR_A )

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+69], 0
	jne	SHORT $L9307

; 2657 :       m_LFSR_A = 0x13579BDF;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+69], 324508639		; 13579bdfH
$L9307:

; 2658 : 
; 2659 :    if ( 0x00000000 == m_LFSR_B )

	mov	edx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [edx+73], 0
	jne	SHORT $L9308

; 2660 :       m_LFSR_B = 0x2468ACE0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+73], 610839776		; 2468ace0H
$L9308:

; 2661 : 
; 2662 :    if ( 0x00000000 == m_LFSR_C )

	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+77], 0
	jne	SHORT $L9309

; 2663 :       m_LFSR_C = 0xFDB97531;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+77], -38177487		; fdb97531H
$L9309:

; 2664 : }

	mov	esp, ebp
	pop	ebp
	ret	4
?SetKey@ARACrypt@@UAEXPBD@Z ENDP			; ARACrypt::SetKey
_pchKey$ = 8
_this$ = -4
?GetKey@ARACrypt@@UAEXPAD@Z PROC NEAR			; ARACrypt::GetKey

; 2668 : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 2669 :    strcpy( pchKey, m_szKey );

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 4
	push	eax
	mov	ecx, DWORD PTR _pchKey$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 2670 : }

	mov	esp, ebp
	pop	ebp
	ret	4
?GetKey@ARACrypt@@UAEXPAD@Z ENDP			; ARACrypt::GetKey
_cTarget$ = 8
_this$ = -20
_Counter$ = -4
_Crypto$ = -16
_Out_B$ = -8
_Out_C$ = -12
?TransformChar@ARACrypt@@UAEXAAE@Z PROC NEAR		; ARACrypt::TransformChar

; 2695 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	mov	DWORD PTR _this$[ebp], ecx

; 2696 :    int               Counter  = 0;

	mov	DWORD PTR _Counter$[ebp], 0

; 2697 :    unsigned char     Crypto   = '\0';

	mov	BYTE PTR _Crypto$[ebp], 0

; 2698 :    unsigned long int Out_B = (m_LFSR_B & 0x00000001);

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+73]
	and	ecx, 1
	mov	DWORD PTR _Out_B$[ebp], ecx

; 2699 :    unsigned long int Out_C = (m_LFSR_C & 0x00000001);

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+77]
	and	eax, 1
	mov	DWORD PTR _Out_C$[ebp], eax

; 2700 : 
; 2701 :    // Cycle the LFSRs eight times to get eight
; 2702 :    // pseudo-random bits. Assemble these into
; 2703 :    // a single random character (Crypto).
; 2704 : 
; 2705 :    for ( Counter = 0; Counter < 8; Counter++ )

	mov	DWORD PTR _Counter$[ebp], 0
	jmp	SHORT $L9322
$L9323:
	mov	ecx, DWORD PTR _Counter$[ebp]
	add	ecx, 1
	mov	DWORD PTR _Counter$[ebp], ecx
$L9322:
	cmp	DWORD PTR _Counter$[ebp], 8
	jge	$L9324

; 2707 :       if ( m_LFSR_A & 0x00000001 )

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+69]
	and	eax, 1
	test	eax, eax
	je	SHORT $L9325

; 2709 :          // The least-significant bit of LFSR
; 2710 :          // A is "1". XOR LFSR A with its
; 2711 :          // feedback mask.
; 2712 : 
; 2713 :          m_LFSR_A = (((m_LFSR_A ^ m_Mask_A ) >> 1) | m_Rot1_A);

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [ecx+69]
	xor	eax, DWORD PTR [edx+81]
	shr	eax, 1
	mov	ecx, DWORD PTR _this$[ebp]
	or	eax, DWORD PTR [ecx+105]
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+69], eax

; 2714 : 
; 2715 :          // Clock shift register B once.
; 2716 :          if ( m_LFSR_B & 0x00000001 )

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+73]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9326

; 2718 :             // The LSB of LFSR B is "1". XOR
; 2719 :             // LFSR B with its feedback mask.
; 2720 : 
; 2721 :             m_LFSR_B = (((m_LFSR_B ^ m_Mask_B) >> 1) | m_Rot1_B);

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+73]
	xor	ecx, DWORD PTR [eax+85]
	shr	ecx, 1
	mov	edx, DWORD PTR _this$[ebp]
	or	ecx, DWORD PTR [edx+109]
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+73], ecx

; 2722 : 
; 2723 :             Out_B = 0x00000001;

	mov	DWORD PTR _Out_B$[ebp], 1

; 2725 :          else

	jmp	SHORT $L9327
$L9326:

; 2727 :             // The LSB of LFSR B is "0". Rotate
; 2728 :             // the LFSR contents once.
; 2729 : 
; 2730 :             m_LFSR_B = ((m_LFSR_B >> 1) & m_Rot0_B);

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+73]
	shr	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	and	edx, DWORD PTR [eax+97]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+73], edx

; 2731 : 
; 2732 :             Out_B = 0x00000000;

	mov	DWORD PTR _Out_B$[ebp], 0
$L9327:

; 2735 :       else

	jmp	SHORT $L9330
$L9325:

; 2737 :          // The LSB of LFSR A is "0".
; 2738 :          // Rotate the LFSR contents once.
; 2739 : 
; 2740 :          m_LFSR_A = ((m_LFSR_A >> 1) & m_Rot0_A);

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+69]
	shr	eax, 1
	mov	ecx, DWORD PTR _this$[ebp]
	and	eax, DWORD PTR [ecx+93]
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+69], eax

; 2741 : 
; 2742 :          // Clock shift register C once.
; 2743 : 
; 2744 :          if ( m_LFSR_C & 0x00000001 )

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+77]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9329

; 2746 :             // The LSB of LFSR C is "1".
; 2747 :             // XOR LFSR C with its feedback mask.
; 2748 : 
; 2749 :             m_LFSR_C = (((m_LFSR_C ^ m_Mask_C) >> 1) | m_Rot1_C);

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+77]
	xor	ecx, DWORD PTR [eax+89]
	shr	ecx, 1
	mov	edx, DWORD PTR _this$[ebp]
	or	ecx, DWORD PTR [edx+113]
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+77], ecx

; 2750 :             Out_C = 0x00000001;

	mov	DWORD PTR _Out_C$[ebp], 1

; 2752 :          else

	jmp	SHORT $L9330
$L9329:

; 2754 :             // The LSB of LFSR C is "0". Rotate
; 2755 :             // the LFSR contents once.
; 2756 : 
; 2757 :             m_LFSR_C = ((m_LFSR_C >> 1) & m_Rot0_C);

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+77]
	shr	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	and	edx, DWORD PTR [eax+101]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+77], edx

; 2758 : 
; 2759 :             Out_C = 0x00000000;

	mov	DWORD PTR _Out_C$[ebp], 0
$L9330:

; 2762 : 
; 2763 :       // XOR the output from LFSRs B and C and
; 2764 :       // rotate it into the right bit of Crypto.
; 2765 : 
; 2766 :       // The following conversion warning is unecessary here as
; 2767 :       // 'loss of data' is a side effect and harmless.
; 2768 :       #pragma warning( disable : 4244 )
; 2769 : 
; 2770 :       Crypto = ((Crypto << 1) | (Out_B ^ Out_C));

	mov	edx, DWORD PTR _Crypto$[ebp]
	and	edx, 255				; 000000ffH
	shl	edx, 1
	mov	eax, DWORD PTR _Out_B$[ebp]
	xor	eax, DWORD PTR _Out_C$[ebp]
	or	edx, eax
	mov	BYTE PTR _Crypto$[ebp], dl

; 2771 : 
; 2772 :       #pragma warning( default : 4244 )
; 2773 :    }

	jmp	$L9323
$L9324:

; 2774 : 
; 2775 :    // XOR the resulting character with the
; 2776 :    // input character to encrypt/decrypt it.
; 2777 : 
; 2778 :    // The following conversion warning not necessary here either.
; 2779 :    // The 'loss of data', so to speak is a side effect and harmless.
; 2780 :    #pragma warning( disable : 4244 )
; 2781 : 
; 2782 :    cTarget = (cTarget ^ Crypto);

	mov	ecx, DWORD PTR _cTarget$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx]
	mov	eax, DWORD PTR _Crypto$[ebp]
	and	eax, 255				; 000000ffH
	xor	edx, eax
	mov	ecx, DWORD PTR _cTarget$[ebp]
	mov	BYTE PTR [ecx], dl

; 2783 : 
; 2784 :    if ( cTarget == NULL )           // No nulls allowed here. There is

	mov	edx, DWORD PTR _cTarget$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L9331

; 2785 :      cTarget = (cTarget ^ Crypto);  // no working std::string available.

	mov	ecx, DWORD PTR _cTarget$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx]
	mov	eax, DWORD PTR _Crypto$[ebp]
	and	eax, 255				; 000000ffH
	xor	edx, eax
	mov	ecx, DWORD PTR _cTarget$[ebp]
	mov	BYTE PTR [ecx], dl
$L9331:

; 2786 : 
; 2787 :    #pragma warning( default : 4244 )
; 2788 : }

	mov	esp, ebp
	pop	ebp
	ret	4
?TransformChar@ARACrypt@@UAEXAAE@Z ENDP			; ARACrypt::TransformChar
_pchTarget$ = 8
_cpcKey$ = 12
_this$ = -16
_nLth$ = -4
_nPos$ = -8
_cBuff$9343 = -12
?TransformString@ARACrypt@@UAEXPADPBD@Z PROC NEAR	; ARACrypt::TransformString

; 2800 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	DWORD PTR _this$[ebp], ecx

; 2801 :    // Reset the shift registers.
; 2802 : 
; 2803 :    if ( cpcKey && *cpcKey )

	cmp	DWORD PTR _cpcKey$[ebp], 0
	je	SHORT $L9337
	mov	eax, DWORD PTR _cpcKey$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L9337

; 2804 :       SetKey( cpcKey );

	mov	edx, DWORD PTR _cpcKey$[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+4]
$L9337:

; 2805 : 
; 2806 :    // Transform each character in the string.
; 2807 :    //
; 2808 :    // DEVELOPER'S NOTE
; 2809 :    // ==========================================
; 2810 :    // DO NOT TREAT THE OUTPUT STRING AS A NULL-
; 2811 :    // TERMINATED STRING.
; 2812 :    // ==========================================
; 2813 :    // The transformation process can create null
; 2814 :    // characters in the output string. Always
; 2815 :    // use the length( ) method to retrieve the full
; 2816 :    // string when it has been transformed.
; 2817 : 
; 2818 :    // bek NOTE: The above note does not apply to this
; 2819 :    // implementation of Warren Ward's method.
; 2820 :    // ARACrypt knows about nulls and transforms them
; 2821 :    // into XOR nulls so the entire result can be
; 2822 :    // treated as a 'normal' null terminated string.
; 2823 : 
; 2824 :    int nLth = strlen( pchTarget );

	mov	eax, DWORD PTR _pchTarget$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _nLth$[ebp], eax

; 2825 : 
; 2826 :    for ( int nPos = 0; nPos < nLth; nPos++ )

	mov	DWORD PTR _nPos$[ebp], 0
	jmp	SHORT $L9340
$L9341:
	mov	ecx, DWORD PTR _nPos$[ebp]
	add	ecx, 1
	mov	DWORD PTR _nPos$[ebp], ecx
$L9340:
	mov	edx, DWORD PTR _nPos$[ebp]
	cmp	edx, DWORD PTR _nLth$[ebp]
	jge	SHORT $L9342

; 2828 :       // The following conversion warning not necessary here either.
; 2829 :       // The 'loss of data', so to speak is a side effect and harmless.
; 2830 :       #pragma warning( disable : 4244 )
; 2831 : 
; 2832 :       unsigned char cBuff = pchTarget[ nPos ];

	mov	eax, DWORD PTR _pchTarget$[ebp]
	add	eax, DWORD PTR _nPos$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR _cBuff$9343[ebp], cl

; 2833 :       TransformChar( (unsigned char&) cBuff );

	lea	edx, DWORD PTR _cBuff$9343[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+12]

; 2834 :       pchTarget[ nPos ] = cBuff;

	mov	eax, DWORD PTR _pchTarget$[ebp]
	add	eax, DWORD PTR _nPos$[ebp]
	mov	cl, BYTE PTR _cBuff$9343[ebp]
	mov	BYTE PTR [eax], cl

; 2835 :    }

	jmp	SHORT $L9341
$L9342:

; 2836 : }

	mov	esp, ebp
	pop	ebp
	ret	8
?TransformString@ARACrypt@@UAEXPADPBD@Z ENDP		; ARACrypt::TransformString
_TEXT	ENDS
PUBLIC	?fnEncryptStringUL@@YAFPAD00GE@Z		; fnEncryptStringUL
PUBLIC	??_C@_0BP@MFLM@Length?5Error?5Encrypting?5String?$AA@ ; `string'
PUBLIC	??_C@_0BG@OOBG@Zeidon?5Internal?5Error?$AA@	; `string'
PUBLIC	??_C@_0BN@IECL@Null?5Error?5Encrypting?5String?$AA@ ; `string'
EXTRN	_SysMessageBox@16:NEAR
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
EXTRN	__imp__strncpy:NEAR
EXTRN	__imp__rand:NEAR
EXTRN	__imp__srand:NEAR
;	COMDAT ??_C@_0BP@MFLM@Length?5Error?5Encrypting?5String?$AA@
; File C:\10C\A\oe\KZOEDECA.CPP
_DATA	SEGMENT
??_C@_0BP@MFLM@Length?5Error?5Encrypting?5String?$AA@ DB 'Length Error En'
	DB	'crypting String', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@OOBG@Zeidon?5Internal?5Error?$AA@
_DATA	SEGMENT
??_C@_0BG@OOBG@Zeidon?5Internal?5Error?$AA@ DB 'Zeidon Internal Error', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@IECL@Null?5Error?5Encrypting?5String?$AA@
_DATA	SEGMENT
??_C@_0BN@IECL@Null?5Error?5Encrypting?5String?$AA@ DB 'Null Error Encryp'
	DB	'ting String', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_pchOut$ = 8
_pchIn$ = 12
_pchKey$ = 16
_uLth$ = 20
_bEncodeLth$ = 24
_crypt$ = -132
_pch$ = -8
_uCrypt$ = -140
_uChar$ = -12
_uTempLth$ = -4
_nOrderIdx$ = -148
_nInLth$ = -144
_k$ = -136
_szKey$9364 = -288
_szNewKey$9365 = -220
_nKeyLth$9366 = -152
$T10403 = -292
$T10404 = -296
$T10405 = -300
$T10406 = -304
$T10407 = -308
?fnEncryptStringUL@@YAFPAD00GE@Z PROC NEAR		; fnEncryptStringUL

; 2925 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 308				; 00000134H

; 2926 :    ARACrypt crypt;

	lea	ecx, DWORD PTR _crypt$[ebp]
	call	??0ARACrypt@@QAE@XZ			; ARACrypt::ARACrypt

; 2927 :    zPCHAR   pch;
; 2928 :    zUCHAR   uCrypt;
; 2929 :    zUSHORT  uChar;
; 2930 :    zUSHORT  uTempLth;
; 2931 :    zSHORT   nOrderIdx;
; 2932 :    zSHORT   nInLth;
; 2933 : // zCHAR    cChar;
; 2934 :    int      k;
; 2935 : // char     szMsg[ 256 ];
; 2936 : 
; 2937 : // if ( uLth == 20 )
; 2938 : //    return( UfEncryptString( pchOut, pchIn, uLth ) );
; 2939 : 
; 2940 : // zsprintf( szMsg, "UfEncryptStringUL Length: %d   In: \"%s\"", uLth, pchIn );
; 2941 : // TraceLineS( szMsg, "" );
; 2942 : 
; 2943 :    // Set up the encryption key.
; 2944 :    if ( pchKey && *pchKey )

	cmp	DWORD PTR _pchKey$[ebp], 0
	je	$L9368
	mov	eax, DWORD PTR _pchKey$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	$L9368

; 2946 :       char   szKey[ 65 ];
; 2947 :       char   szNewKey[ 65 ];
; 2948 :       zSHORT nKeyLth;
; 2949 : 
; 2950 :       zstrncpy( szNewKey, pchKey, sizeof( szNewKey ) - 1 );

	push	64					; 00000040H
	mov	edx, DWORD PTR _pchKey$[ebp]
	push	edx
	lea	eax, DWORD PTR _szNewKey$9365[ebp]
	push	eax
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 2951 :       szNewKey[ sizeof( szNewKey ) - 1 ] = 0;  // force null terminator

	mov	BYTE PTR _szNewKey$9365[ebp+64], 0

; 2952 :       nInLth = zstrlen( szNewKey );

	lea	ecx, DWORD PTR _szNewKey$9365[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	mov	WORD PTR _nInLth$[ebp], ax

; 2953 : 
; 2954 :       crypt.GetKey( szKey );

	lea	edx, DWORD PTR _szKey$9364[ebp]
	push	edx
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	?GetKey@ARACrypt@@UAEXPAD@Z		; ARACrypt::GetKey

; 2955 :       nKeyLth = zstrlen( szKey );

	lea	eax, DWORD PTR _szKey$9364[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	WORD PTR _nKeyLth$9366[ebp], ax

; 2956 :       if ( nKeyLth + nInLth > sizeof( szKey ) - 1 )

	movsx	ecx, WORD PTR _nKeyLth$9366[ebp]
	movsx	edx, WORD PTR _nInLth$[ebp]
	add	ecx, edx
	cmp	ecx, 64					; 00000040H
	jbe	SHORT $L9367

; 2957 :          nKeyLth = sizeof( szKey ) - 1 - nInLth;

	movsx	eax, WORD PTR _nInLth$[ebp]
	mov	ecx, 64					; 00000040H
	sub	ecx, eax
	mov	WORD PTR _nKeyLth$9366[ebp], cx
$L9367:

; 2958 : 
; 2959 :       if ( nKeyLth > 0 )

	movsx	edx, WORD PTR _nKeyLth$9366[ebp]
	test	edx, edx
	jle	SHORT $L9368

; 2961 :          zstrncpy( szNewKey + nInLth, pchKey, nKeyLth );

	movsx	eax, WORD PTR _nKeyLth$9366[ebp]
	push	eax
	mov	ecx, DWORD PTR _pchKey$[ebp]
	push	ecx
	movsx	edx, WORD PTR _nInLth$[ebp]
	lea	eax, DWORD PTR _szNewKey$9365[ebp+edx]
	push	eax
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 2962 :          szNewKey[ sizeof( szKey ) - 1 ] = 0;  // force null terminator

	mov	BYTE PTR _szNewKey$9365[ebp+64], 0

; 2963 :          crypt.SetKey( szNewKey );

	lea	ecx, DWORD PTR _szNewKey$9365[ebp]
	push	ecx
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	?SetKey@ARACrypt@@UAEXPBD@Z		; ARACrypt::SetKey
$L9368:

; 2966 : 
; 2967 :    pchOut[ uLth ] = 0;

	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	mov	eax, DWORD PTR _pchOut$[ebp]
	mov	BYTE PTR [eax+edx], 0

; 2968 :    nInLth = zstrlen( pchIn );

	mov	ecx, DWORD PTR _pchIn$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	mov	WORD PTR _nInLth$[ebp], ax

; 2970 :         (bEncodeLth && nInLth >= uLth) ||
; 2971 :         (bEncodeLth == FALSE && nInLth > uLth) )

	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 32					; 00000020H
	jg	SHORT $L9370
	mov	eax, DWORD PTR _bEncodeLth$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9371
	movsx	ecx, WORD PTR _nInLth$[ebp]
	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	ecx, edx
	jge	SHORT $L9370
$L9371:
	mov	eax, DWORD PTR _bEncodeLth$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L9369
	movsx	ecx, WORD PTR _nInLth$[ebp]
	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	ecx, edx
	jle	SHORT $L9369
$L9370:

; 2973 :       SysMessageBox( 0, "Zeidon Internal Error",
; 2974 :                      "Length Error Encrypting String", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BP@MFLM@Length?5Error?5Encrypting?5String?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BG@OOBG@Zeidon?5Internal?5Error?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 2975 :       return( zCALL_ERROR );

	mov	WORD PTR $T10403[ebp], -16		; fffffff0H
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	??1ARACrypt@@UAE@XZ			; ARACrypt::~ARACrypt
	mov	ax, WORD PTR $T10403[ebp]
	jmp	$L9354
$L9369:

; 2977 : 
; 2978 :    pch = new char[ uLth + 1 ];

	mov	eax, DWORD PTR _uLth$[ebp]
	and	eax, 65535				; 0000ffffH
	add	eax, 1
	push	eax
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T10404[ebp], eax
	mov	ecx, DWORD PTR $T10404[ebp]
	mov	DWORD PTR _pch$[ebp], ecx

; 2979 :    zstrcpy( pch, pchIn );

	mov	edx, DWORD PTR _pchIn$[ebp]
	push	edx
	mov	eax, DWORD PTR _pch$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 2980 : 
; 2981 :    // Seed the random-number generator with current time so that
; 2982 :    // the numbers will be different every time we run.
; 2983 : // srand( (unsigned) time( NULL ) );
; 2984 : 
; 2985 :    // Seed the random-number generator with the same data so that
; 2986 :    // the numbers will be same every time we run with the same data.
; 2987 :    if ( nInLth > sizeof( unsigned ) )

	movsx	ecx, WORD PTR _nInLth$[ebp]
	cmp	ecx, 4
	jbe	SHORT $L9378

; 2988 :       k = nInLth - sizeof( unsigned );

	movsx	edx, WORD PTR _nInLth$[ebp]
	sub	edx, 4
	mov	DWORD PTR _k$[ebp], edx

; 2989 :    else

	jmp	SHORT $L9380
$L9378:

; 2991 :       k = nInLth + 1;

	movsx	eax, WORD PTR _nInLth$[ebp]
	add	eax, 1
	mov	DWORD PTR _k$[ebp], eax
$L9382:

; 2992 :       while ( k < sizeof( unsigned ) )

	cmp	DWORD PTR _k$[ebp], 4
	jae	SHORT $L9383

; 2993 :          pch[ k++ ] = 0;

	mov	ecx, DWORD PTR _pch$[ebp]
	add	ecx, DWORD PTR _k$[ebp]
	mov	BYTE PTR [ecx], 0
	mov	edx, DWORD PTR _k$[ebp]
	add	edx, 1
	mov	DWORD PTR _k$[ebp], edx
	jmp	SHORT $L9382
$L9383:

; 2994 : 
; 2995 :       k = 0;

	mov	DWORD PTR _k$[ebp], 0
$L9380:

; 2997 : 
; 2998 :    srand( (unsigned) *((unsigned *) ((char *) pch + k)) ); // set a random starting point

	mov	eax, DWORD PTR _pch$[ebp]
	add	eax, DWORD PTR _k$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	DWORD PTR __imp__srand
	add	esp, 4

; 2999 : 
; 3000 :    for ( k = nInLth; k < uLth; k++ )  // set "empty" cells to random values

	movsx	edx, WORD PTR _nInLth$[ebp]
	mov	DWORD PTR _k$[ebp], edx
	jmp	SHORT $L9388
$L9389:
	mov	eax, DWORD PTR _k$[ebp]
	add	eax, 1
	mov	DWORD PTR _k$[ebp], eax
$L9388:
	mov	ecx, DWORD PTR _uLth$[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	DWORD PTR _k$[ebp], ecx
	jge	SHORT $L9390
$L9391:

; 3004 :          pch[ k ] = (char) rand( );

	call	DWORD PTR __imp__rand
	mov	edx, DWORD PTR _pch$[ebp]
	add	edx, DWORD PTR _k$[ebp]
	mov	BYTE PTR [edx], al

; 3005 : 
; 3006 :       } while ( pch[ k ] == 0 );

	mov	eax, DWORD PTR _pch$[ebp]
	add	eax, DWORD PTR _k$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L9391

; 3007 :    }

	jmp	SHORT $L9389
$L9390:

; 3008 : 
; 3009 :    pch[ uLth ] = 0;

	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	mov	eax, DWORD PTR _pch$[ebp]
	mov	BYTE PTR [eax+edx], 0

; 3010 :    pchOut[ uLth ] = 0;

	mov	ecx, DWORD PTR _uLth$[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _pchOut$[ebp]
	mov	BYTE PTR [edx+ecx], 0

; 3011 :    crypt.TransformString( pch );

	push	0
	mov	eax, DWORD PTR _pch$[ebp]
	push	eax
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	?TransformString@ARACrypt@@UAEXPADPBD@Z	; ARACrypt::TransformString

; 3012 :    uChar = 0;

	mov	WORD PTR _uChar$[ebp], 0

; 3013 :    nOrderIdx = 0;

	mov	WORD PTR _nOrderIdx$[ebp], 0

; 3014 : 
; 3015 :    if ( bEncodeLth )

	mov	ecx, DWORD PTR _bEncodeLth$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	$L9395
$L9397:

; 3017 :       while ( EncryptB[ nOrderIdx ] > (uLth - 1) )

	movsx	edx, WORD PTR _nOrderIdx$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR ?EncryptB@@3PAEA[edx]
	mov	ecx, DWORD PTR _uLth$[ebp]
	and	ecx, 65535				; 0000ffffH
	sub	ecx, 1
	cmp	eax, ecx
	jle	SHORT $L9398

; 3018 :          nOrderIdx++;

	mov	dx, WORD PTR _nOrderIdx$[ebp]
	add	dx, 1
	mov	WORD PTR _nOrderIdx$[ebp], dx
	jmp	SHORT $L9397
$L9398:

; 3019 : 
; 3020 :       while ( (zUSHORT) nInLth > uLth || nInLth > zMAXEL )

	mov	eax, DWORD PTR _nInLth$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _uLth$[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	eax, ecx
	jg	SHORT $L9403
	movsx	edx, WORD PTR _nInLth$[ebp]
	cmp	edx, 32					; 00000020H
	jle	SHORT $L9401
$L9403:

; 3021 :          nInLth -= uLth;

	mov	ax, WORD PTR _nInLth$[ebp]
	sub	ax, WORD PTR _uLth$[ebp]
	mov	WORD PTR _nInLth$[ebp], ax
	jmp	SHORT $L9398
$L9401:

; 3022 : 
; 3023 :       pchOut[ EncryptB[ nOrderIdx ] ] = EncryptA[ nInLth ] + 'a';

	movsx	ecx, WORD PTR _nInLth$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR ?EncryptA@@3PAEA[ecx]
	add	edx, 97					; 00000061H
	movsx	eax, WORD PTR _nOrderIdx$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR ?EncryptB@@3PAEA[eax]
	mov	eax, DWORD PTR _pchOut$[ebp]
	mov	BYTE PTR [eax+ecx], dl

; 3024 :    // zsprintf( szMsg, "UfEncryptStringUL Idx: %d   EncryptIdx: %d   Value: %2x",
; 3025 :    //           nOrderIdx, EncryptB[ nOrderIdx ], pchOut[ EncryptB[ nOrderIdx ] ] );
; 3026 :    // TraceLineS( szMsg, "" );
; 3027 :       nOrderIdx++;

	mov	cx, WORD PTR _nOrderIdx$[ebp]
	add	cx, 1
	mov	WORD PTR _nOrderIdx$[ebp], cx

; 3028 :       uTempLth = uLth - 1;

	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	sub	edx, 1
	mov	WORD PTR _uTempLth$[ebp], dx

; 3030 :    else

	jmp	SHORT $L9404
$L9395:

; 3031 :       uTempLth = uLth;

	mov	ax, WORD PTR _uLth$[ebp]
	mov	WORD PTR _uTempLth$[ebp], ax
$L9404:

; 3032 : 
; 3033 :    while ( uChar < uTempLth )

	mov	ecx, DWORD PTR _uChar$[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _uTempLth$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	ecx, edx
	jge	$L9407
$L9409:

; 3035 :       while ( EncryptB[ nOrderIdx ] > (uLth - 1) )

	movsx	eax, WORD PTR _nOrderIdx$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR ?EncryptB@@3PAEA[eax]
	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	sub	edx, 1
	cmp	ecx, edx
	jle	SHORT $L9410

; 3036 :          nOrderIdx++;

	mov	ax, WORD PTR _nOrderIdx$[ebp]
	add	ax, 1
	mov	WORD PTR _nOrderIdx$[ebp], ax
	jmp	SHORT $L9409
$L9410:

; 3037 : 
; 3038 :       uCrypt = pch[ uChar ];

	mov	ecx, DWORD PTR _uChar$[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _pch$[ebp]
	mov	al, BYTE PTR [edx+ecx]
	mov	BYTE PTR _uCrypt$[ebp], al

; 3039 :       pchOut[ EncryptB[ nOrderIdx ] ] = uCrypt;

	movsx	ecx, WORD PTR _nOrderIdx$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR ?EncryptB@@3PAEA[ecx]
	mov	eax, DWORD PTR _pchOut$[ebp]
	mov	cl, BYTE PTR _uCrypt$[ebp]
	mov	BYTE PTR [eax+edx], cl

; 3040 :    // zsprintf( szMsg, "UfEncryptStringUL Idx: %d   EncryptIdx: %d   Value: %2x",
; 3041 :    //           nOrderIdx, EncryptB[ nOrderIdx ], pchOut[ EncryptB[ nOrderIdx ] ] );
; 3042 :    // TraceLineS( szMsg, "" );
; 3043 : 
; 3044 :       uChar++;

	mov	dx, WORD PTR _uChar$[ebp]
	add	dx, 1
	mov	WORD PTR _uChar$[ebp], dx

; 3045 :       nOrderIdx++;

	mov	ax, WORD PTR _nOrderIdx$[ebp]
	add	ax, 1
	mov	WORD PTR _nOrderIdx$[ebp], ax

; 3046 :    }

	jmp	$L9404
$L9407:

; 3047 : 
; 3048 :    if ( zstrlen( pchOut ) != uLth )

	mov	ecx, DWORD PTR _pchOut$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	eax, edx
	je	SHORT $L9411

; 3050 :       SysMessageBox( 0, "Zeidon Internal Error",
; 3051 :                      "Null Error Encrypting String", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BN@IECL@Null?5Error?5Encrypting?5String?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BG@OOBG@Zeidon?5Internal?5Error?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 3052 :       return( zCALL_ERROR );

	mov	WORD PTR $T10405[ebp], -16		; fffffff0H
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	??1ARACrypt@@UAE@XZ			; ARACrypt::~ARACrypt
	mov	ax, WORD PTR $T10405[ebp]
	jmp	SHORT $L9354
$L9411:

; 3054 : 
; 3055 : // zsprintf( szMsg, "UfEncryptStringUL Out: \"%s\"", pchOut );
; 3056 : // TraceLineS( szMsg, "" );
; 3057 : 
; 3058 : // UfDecryptStringUL( pch, pchOut, uLth );
; 3059 :    delete [] pch;

	mov	eax, DWORD PTR _pch$[ebp]
	mov	DWORD PTR $T10406[ebp], eax
	mov	ecx, DWORD PTR $T10406[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4

; 3060 :    return( 0 );

	mov	WORD PTR $T10407[ebp], 0
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	??1ARACrypt@@UAE@XZ			; ARACrypt::~ARACrypt
	mov	ax, WORD PTR $T10407[ebp]
$L9354:

; 3061 : }

	mov	esp, ebp
	pop	ebp
	ret	0
?fnEncryptStringUL@@YAFPAD00GE@Z ENDP			; fnEncryptStringUL
_TEXT	ENDS
PUBLIC	_UfEncryptStringUL@16
_TEXT	SEGMENT
_pchOut$ = 8
_pchIn$ = 12
_pchKey$ = 16
_uLth$ = 20
_UfEncryptStringUL@16 PROC NEAR

; 3065 : {

	push	ebp
	mov	ebp, esp

; 3066 :    return( fnEncryptStringUL( pchOut, pchIn, pchKey, uLth, TRUE ) );

	push	1
	mov	ax, WORD PTR _uLth$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pchKey$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchIn$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchOut$[ebp]
	push	eax
	call	?fnEncryptStringUL@@YAFPAD00GE@Z	; fnEncryptStringUL
	add	esp, 20					; 00000014H

; 3067 : }

	pop	ebp
	ret	16					; 00000010H
_UfEncryptStringUL@16 ENDP
_TEXT	ENDS
PUBLIC	_UfEncryptStringLong@16
_TEXT	SEGMENT
_pchOut$ = 8
_pchIn$ = 12
_pchKey$ = 16
_uLth$ = 20
_ch$ = -12
_uCurrLth$ = -8
_nInLth$ = -20
_nPos$ = -16
_nRC$ = -4
_UfEncryptStringLong@16 PROC NEAR

; 3092 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 3093 :    zCHAR   ch;
; 3094 :    zUSHORT uCurrLth;
; 3095 :    zSHORT  nInLth = zstrlen( pchIn );

	mov	eax, DWORD PTR _pchIn$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	WORD PTR _nInLth$[ebp], ax

; 3096 :    zSHORT  nPos = 0;

	mov	WORD PTR _nPos$[ebp], 0

; 3097 :    zSHORT  nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 3098 : 
; 3099 :    pchOut[ 0 ] = 0;

	mov	ecx, DWORD PTR _pchOut$[ebp]
	mov	BYTE PTR [ecx], 0

; 3100 :    if ( nInLth > uLth )

	movsx	edx, WORD PTR _nInLth$[ebp]
	mov	eax, DWORD PTR _uLth$[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	edx, eax
	jle	SHORT $L9433

; 3102 :       SysMessageBox( 0, "Zeidon Internal Error",
; 3103 :                      "Length Error Encrypting String", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BP@MFLM@Length?5Error?5Encrypting?5String?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BG@OOBG@Zeidon?5Internal?5Error?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 3104 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9427
$L9433:

; 3106 : 
; 3107 :    while ( nRC == 0 && nInLth > 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	$L9436
	movsx	edx, WORD PTR _nInLth$[ebp]
	test	edx, edx
	jle	$L9436

; 3109 :       // The maximum password length is zMAXEL - 1.
; 3110 :       if ( nInLth > zMAXEL )

	movsx	eax, WORD PTR _nInLth$[ebp]
	cmp	eax, 32					; 00000020H
	jle	SHORT $L9437

; 3112 :          uCurrLth = zMAXEL;

	mov	WORD PTR _uCurrLth$[ebp], 32		; 00000020H

; 3113 :          ch = pchIn[ nPos + zMAXEL ];

	movsx	ecx, WORD PTR _nPos$[ebp]
	mov	edx, DWORD PTR _pchIn$[ebp]
	mov	al, BYTE PTR [edx+ecx+32]
	mov	BYTE PTR _ch$[ebp], al

; 3114 :          pchIn[ nPos + zMAXEL ] = 0;

	movsx	ecx, WORD PTR _nPos$[ebp]
	mov	edx, DWORD PTR _pchIn$[ebp]
	mov	BYTE PTR [edx+ecx+32], 0

; 3116 :       else

	jmp	SHORT $L9438
$L9437:

; 3118 :          if ( nPos == 0 ) // first time in

	movsx	eax, WORD PTR _nPos$[ebp]
	test	eax, eax
	jne	SHORT $L9439

; 3119 :             uCurrLth = uLth;

	mov	cx, WORD PTR _uLth$[ebp]
	mov	WORD PTR _uCurrLth$[ebp], cx

; 3120 :          else

	jmp	SHORT $L9440
$L9439:

; 3121 :             uCurrLth = nInLth;

	mov	dx, WORD PTR _nInLth$[ebp]
	mov	WORD PTR _uCurrLth$[ebp], dx
$L9440:

; 3122 : 
; 3123 :          ch = 0;

	mov	BYTE PTR _ch$[ebp], 0
$L9438:

; 3125 : 
; 3126 :       nRC = fnEncryptStringUL( pchOut + nPos, pchIn + nPos, pchKey, uCurrLth, FALSE );

	push	0
	mov	ax, WORD PTR _uCurrLth$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pchKey$[ebp]
	push	ecx
	movsx	edx, WORD PTR _nPos$[ebp]
	mov	eax, DWORD PTR _pchIn$[ebp]
	add	eax, edx
	push	eax
	movsx	ecx, WORD PTR _nPos$[ebp]
	mov	edx, DWORD PTR _pchOut$[ebp]
	add	edx, ecx
	push	edx
	call	?fnEncryptStringUL@@YAFPAD00GE@Z	; fnEncryptStringUL
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 3127 :       if ( ch )

	movsx	eax, BYTE PTR _ch$[ebp]
	test	eax, eax
	je	SHORT $L9441

; 3128 :          pchIn[ nPos + zMAXEL ] = ch;

	movsx	ecx, WORD PTR _nPos$[ebp]
	mov	edx, DWORD PTR _pchIn$[ebp]
	mov	al, BYTE PTR _ch$[ebp]
	mov	BYTE PTR [edx+ecx+32], al
$L9441:

; 3129 : 
; 3130 :       nInLth -= zMAXEL;

	mov	cx, WORD PTR _nInLth$[ebp]
	sub	cx, 32					; 00000020H
	mov	WORD PTR _nInLth$[ebp], cx

; 3131 :       nPos += zMAXEL;

	mov	dx, WORD PTR _nPos$[ebp]
	add	dx, 32					; 00000020H
	mov	WORD PTR _nPos$[ebp], dx

; 3132 :    }

	jmp	$L9433
$L9436:

; 3133 : 
; 3134 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L9427:

; 3135 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_UfEncryptStringLong@16 ENDP
_TEXT	ENDS
PUBLIC	?fnDecryptStringUL@@YGFPAD00GE@Z		; fnDecryptStringUL
PUBLIC	??_C@_0CO@CCLB@Length?5Error?5Decrypting?5String?3?5@ ; `string'
EXTRN	__imp__sprintf:NEAR
;	COMDAT ??_C@_0CO@CCLB@Length?5Error?5Decrypting?5String?3?5@
; File C:\10C\A\oe\KZOEDECA.CPP
_DATA	SEGMENT
??_C@_0CO@CCLB@Length?5Error?5Decrypting?5String?3?5@ DB 'Length Error De'
	DB	'crypting String: (%d:%d)  "%s"', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
$T10411 = -540
$T10412 = -544
$T10413 = -548
_pchOut$ = 8
_pchIn$ = 12
_pchKey$ = 16
_uLth$ = 20
_bEncodeLth$ = 24
_crypt$ = -380
_uCrypt$ = -384
_uChar$ = -260
_nOrderIdx$ = -396
_nInLth$ = -388
_nReturnLth$ = -392
_szMsg$ = -256
_szKey$9459 = -536
_szNewKey$9460 = -468
_nKeyLth$9461 = -400
?fnDecryptStringUL@@YGFPAD00GE@Z PROC NEAR		; fnDecryptStringUL

; 3157 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 548				; 00000224H

; 3158 :    ARACrypt crypt;

	lea	ecx, DWORD PTR _crypt$[ebp]
	call	??0ARACrypt@@QAE@XZ			; ARACrypt::ARACrypt

; 3159 :    zUCHAR   uCrypt;
; 3160 :    zUSHORT  uChar;
; 3161 :    zSHORT   nOrderIdx;
; 3162 :    zSHORT   nInLth;
; 3163 :    zSHORT   nReturnLth;
; 3164 :    char     szMsg[ 256 ];
; 3165 : 
; 3166 : // zsprintf( szMsg, "UfDecryptStringUL Length: %d   In: \"%s\"", uLth, pchIn );
; 3167 : // TraceLineS( szMsg, "" );
; 3168 : 
; 3169 :    if ( *pchIn == 0 )

	mov	eax, DWORD PTR _pchIn$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L9456

; 3171 :       *pchOut = 0;

	mov	edx, DWORD PTR _pchOut$[ebp]
	mov	BYTE PTR [edx], 0

; 3172 :       return( 0 );

	mov	WORD PTR $T10411[ebp], 0
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	??1ARACrypt@@UAE@XZ			; ARACrypt::~ARACrypt
	mov	ax, WORD PTR $T10411[ebp]
	jmp	$L9448
$L9456:

; 3174 : 
; 3175 :    // Set up the encryption key.
; 3176 :    if ( pchKey && *pchKey )

	cmp	DWORD PTR _pchKey$[ebp], 0
	je	$L9463
	mov	eax, DWORD PTR _pchKey$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	$L9463

; 3178 :       char   szKey[ 65 ];
; 3179 :       char   szNewKey[ 65 ];
; 3180 :       zSHORT nKeyLth;
; 3181 : 
; 3182 :       zstrncpy( szNewKey, pchKey, sizeof( szNewKey ) - 1 );

	push	64					; 00000040H
	mov	edx, DWORD PTR _pchKey$[ebp]
	push	edx
	lea	eax, DWORD PTR _szNewKey$9460[ebp]
	push	eax
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 3183 :       szNewKey[ sizeof( szNewKey ) - 1 ] = 0;  // force null terminator

	mov	BYTE PTR _szNewKey$9460[ebp+64], 0

; 3184 :       nInLth = zstrlen( szNewKey );

	lea	ecx, DWORD PTR _szNewKey$9460[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	mov	WORD PTR _nInLth$[ebp], ax

; 3185 : 
; 3186 :       crypt.GetKey( szKey );

	lea	edx, DWORD PTR _szKey$9459[ebp]
	push	edx
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	?GetKey@ARACrypt@@UAEXPAD@Z		; ARACrypt::GetKey

; 3187 :       nKeyLth = zstrlen( szKey );

	lea	eax, DWORD PTR _szKey$9459[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	WORD PTR _nKeyLth$9461[ebp], ax

; 3188 :       if ( nKeyLth + nInLth > sizeof( szKey ) - 1 )

	movsx	ecx, WORD PTR _nKeyLth$9461[ebp]
	movsx	edx, WORD PTR _nInLth$[ebp]
	add	ecx, edx
	cmp	ecx, 64					; 00000040H
	jbe	SHORT $L9462

; 3189 :          nKeyLth = sizeof( szKey ) - 1 - nInLth;

	movsx	eax, WORD PTR _nInLth$[ebp]
	mov	ecx, 64					; 00000040H
	sub	ecx, eax
	mov	WORD PTR _nKeyLth$9461[ebp], cx
$L9462:

; 3190 : 
; 3191 :       if ( nKeyLth > 0 )

	movsx	edx, WORD PTR _nKeyLth$9461[ebp]
	test	edx, edx
	jle	SHORT $L9463

; 3193 :          zstrncpy( szNewKey + nInLth, pchKey, nKeyLth );

	movsx	eax, WORD PTR _nKeyLth$9461[ebp]
	push	eax
	mov	ecx, DWORD PTR _pchKey$[ebp]
	push	ecx
	movsx	edx, WORD PTR _nInLth$[ebp]
	lea	eax, DWORD PTR _szNewKey$9460[ebp+edx]
	push	eax
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 3194 :          szNewKey[ sizeof( szKey ) - 1 ] = 0;  // force null terminator

	mov	BYTE PTR _szNewKey$9460[ebp+64], 0

; 3195 :          crypt.SetKey( szNewKey );

	lea	ecx, DWORD PTR _szNewKey$9460[ebp]
	push	ecx
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	?SetKey@ARACrypt@@UAEXPBD@Z		; ARACrypt::SetKey
$L9463:

; 3198 : 
; 3199 :    uChar = 0;

	mov	WORD PTR _uChar$[ebp], 0

; 3200 :    nOrderIdx = 0;

	mov	WORD PTR _nOrderIdx$[ebp], 0

; 3201 :    if ( bEncodeLth )

	mov	edx, DWORD PTR _bEncodeLth$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	$L9464
$L9466:

; 3203 :       while ( EncryptB[ nOrderIdx ] > (uLth - 1) )

	movsx	eax, WORD PTR _nOrderIdx$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR ?EncryptB@@3PAEA[eax]
	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	sub	edx, 1
	cmp	ecx, edx
	jle	SHORT $L9467

; 3204 :          nOrderIdx++;

	mov	ax, WORD PTR _nOrderIdx$[ebp]
	add	ax, 1
	mov	WORD PTR _nOrderIdx$[ebp], ax
	jmp	SHORT $L9466
$L9467:

; 3205 : 
; 3206 :       nInLth = (zSHORT) (((zUCHAR) pchIn[ EncryptB[ nOrderIdx ] ]) - 'a');

	movsx	ecx, WORD PTR _nOrderIdx$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR ?EncryptB@@3PAEA[ecx]
	mov	eax, DWORD PTR _pchIn$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+edx]
	sub	ecx, 97					; 00000061H
	mov	WORD PTR _nInLth$[ebp], cx

; 3208 :            (bEncodeLth && nInLth >= uLth) ||
; 3209 :            (bEncodeLth == FALSE && nInLth > uLth) ||
; 3210 :            nInLth < 0 )

	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 32					; 00000020H
	jg	SHORT $L9471
	mov	eax, DWORD PTR _bEncodeLth$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9472
	movsx	ecx, WORD PTR _nInLth$[ebp]
	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	ecx, edx
	jge	SHORT $L9471
$L9472:
	mov	eax, DWORD PTR _bEncodeLth$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L9473
	movsx	ecx, WORD PTR _nInLth$[ebp]
	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	ecx, edx
	jg	SHORT $L9471
$L9473:
	movsx	eax, WORD PTR _nInLth$[ebp]
	test	eax, eax
	jge	SHORT $L9470
$L9471:

; 3212 :          zsprintf( szMsg, "Length Error Decrypting String: (%d:%d)  \"%s\"", uLth, nInLth, pchIn );

	mov	ecx, DWORD PTR _pchIn$[ebp]
	push	ecx
	movsx	edx, WORD PTR _nInLth$[ebp]
	push	edx
	mov	eax, DWORD PTR _uLth$[ebp]
	and	eax, 65535				; 0000ffffH
	push	eax
	push	OFFSET FLAT:??_C@_0CO@CCLB@Length?5Error?5Decrypting?5String?3?5@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 20					; 00000014H

; 3213 :          SysMessageBox( 0, "Zeidon Internal Error", szMsg, 0 );

	push	0
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BG@OOBG@Zeidon?5Internal?5Error?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 3214 :          return( zCALL_ERROR );

	mov	WORD PTR $T10412[ebp], -16		; fffffff0H
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	??1ARACrypt@@UAE@XZ			; ARACrypt::~ARACrypt
	mov	ax, WORD PTR $T10412[ebp]
	jmp	$L9448
$L9470:

; 3216 : 
; 3217 :       nReturnLth = 0;

	mov	WORD PTR _nReturnLth$[ebp], 0
$L9477:

; 3218 :       while ( EncryptA[ nReturnLth ] != (zUCHAR) nInLth )

	movsx	eax, WORD PTR _nReturnLth$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR ?EncryptA@@3PAEA[eax]
	mov	edx, DWORD PTR _nInLth$[ebp]
	and	edx, 255				; 000000ffH
	cmp	ecx, edx
	je	SHORT $L9478

; 3219 :          nReturnLth++;

	mov	ax, WORD PTR _nReturnLth$[ebp]
	add	ax, 1
	mov	WORD PTR _nReturnLth$[ebp], ax
	jmp	SHORT $L9477
$L9478:

; 3220 : 
; 3221 :       nInLth = (zCHAR) nReturnLth;

	movsx	cx, BYTE PTR _nReturnLth$[ebp]
	mov	WORD PTR _nInLth$[ebp], cx

; 3222 :       nOrderIdx++;

	mov	dx, WORD PTR _nOrderIdx$[ebp]
	add	dx, 1
	mov	WORD PTR _nOrderIdx$[ebp], dx

; 3224 :    else

	jmp	SHORT $L9481
$L9464:

; 3226 :       nReturnLth = uLth;

	mov	ax, WORD PTR _uLth$[ebp]
	mov	WORD PTR _nReturnLth$[ebp], ax

; 3227 :       nInLth = uLth;

	mov	cx, WORD PTR _uLth$[ebp]
	mov	WORD PTR _nInLth$[ebp], cx
$L9481:

; 3229 : 
; 3230 :    while ( nInLth )

	movsx	edx, WORD PTR _nInLth$[ebp]
	test	edx, edx
	je	$L9484
$L9486:

; 3232 :       while ( EncryptB[ nOrderIdx ] > (uLth - 1) )

	movsx	eax, WORD PTR _nOrderIdx$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR ?EncryptB@@3PAEA[eax]
	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	sub	edx, 1
	cmp	ecx, edx
	jle	SHORT $L9487

; 3233 :          nOrderIdx++;

	mov	ax, WORD PTR _nOrderIdx$[ebp]
	add	ax, 1
	mov	WORD PTR _nOrderIdx$[ebp], ax
	jmp	SHORT $L9486
$L9487:

; 3234 : 
; 3235 :       uCrypt = pchIn[ EncryptB[ nOrderIdx ] ];

	movsx	ecx, WORD PTR _nOrderIdx$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR ?EncryptB@@3PAEA[ecx]
	mov	eax, DWORD PTR _pchIn$[ebp]
	mov	cl, BYTE PTR [eax+edx]
	mov	BYTE PTR _uCrypt$[ebp], cl

; 3236 :       pchOut[ uChar ] = uCrypt;

	mov	edx, DWORD PTR _uChar$[ebp]
	and	edx, 65535				; 0000ffffH
	mov	eax, DWORD PTR _pchOut$[ebp]
	mov	cl, BYTE PTR _uCrypt$[ebp]
	mov	BYTE PTR [eax+edx], cl

; 3237 : 
; 3238 :       nInLth--;

	mov	dx, WORD PTR _nInLth$[ebp]
	sub	dx, 1
	mov	WORD PTR _nInLth$[ebp], dx

; 3239 :       uChar++;

	mov	ax, WORD PTR _uChar$[ebp]
	add	ax, 1
	mov	WORD PTR _uChar$[ebp], ax

; 3240 :       nOrderIdx++;

	mov	cx, WORD PTR _nOrderIdx$[ebp]
	add	cx, 1
	mov	WORD PTR _nOrderIdx$[ebp], cx

; 3241 :    }

	jmp	$L9481
$L9484:

; 3242 : 
; 3243 :    pchOut[ uLth ] = 0;

	mov	edx, DWORD PTR _uLth$[ebp]
	and	edx, 65535				; 0000ffffH
	mov	eax, DWORD PTR _pchOut$[ebp]
	mov	BYTE PTR [eax+edx], 0

; 3244 :    crypt.TransformString( pchOut );

	push	0
	mov	ecx, DWORD PTR _pchOut$[ebp]
	push	ecx
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	?TransformString@ARACrypt@@UAEXPADPBD@Z	; ARACrypt::TransformString

; 3245 :    pchOut[ uChar ] = 0;

	mov	edx, DWORD PTR _uChar$[ebp]
	and	edx, 65535				; 0000ffffH
	mov	eax, DWORD PTR _pchOut$[ebp]
	mov	BYTE PTR [eax+edx], 0

; 3246 : // zsprintf( szMsg, "UfDecryptStringUL Out: \"%s\"", pchOut );
; 3247 : // TraceLineS( szMsg, "" );
; 3248 :    return( nReturnLth );

	mov	cx, WORD PTR _nReturnLth$[ebp]
	mov	WORD PTR $T10413[ebp], cx
	lea	ecx, DWORD PTR _crypt$[ebp]
	call	??1ARACrypt@@UAE@XZ			; ARACrypt::~ARACrypt
	mov	ax, WORD PTR $T10413[ebp]
$L9448:

; 3249 : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
?fnDecryptStringUL@@YGFPAD00GE@Z ENDP			; fnDecryptStringUL
_TEXT	ENDS
PUBLIC	_UfDecryptStringUL@16
_TEXT	SEGMENT
_pchOut$ = 8
_pchIn$ = 12
_pchKey$ = 16
_uLth$ = 20
_UfDecryptStringUL@16 PROC NEAR

; 3253 : {

	push	ebp
	mov	ebp, esp

; 3254 :    return( fnDecryptStringUL( pchOut, pchIn, pchKey, uLth, TRUE ) );

	push	1
	mov	ax, WORD PTR _uLth$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pchKey$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchIn$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchOut$[ebp]
	push	eax
	call	?fnDecryptStringUL@@YGFPAD00GE@Z	; fnDecryptStringUL

; 3255 : }

	pop	ebp
	ret	16					; 00000010H
_UfDecryptStringUL@16 ENDP
_TEXT	ENDS
PUBLIC	_UfDecryptStringLong@16
_TEXT	SEGMENT
_pchOut$ = 8
_pchIn$ = 12
_pchKey$ = 16
_uLth$ = 20
_ch$ = -12
_uCurrLth$ = -8
_nInLth$ = -20
_nPos$ = -16
_nRC$ = -4
_UfDecryptStringLong@16 PROC NEAR

; 3259 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 3260 :    zCHAR   ch;
; 3261 :    zUSHORT uCurrLth;
; 3262 :    zSHORT  nInLth = zstrlen( pchIn );

	mov	eax, DWORD PTR _pchIn$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	WORD PTR _nInLth$[ebp], ax

; 3263 :    zSHORT  nPos = 0;

	mov	WORD PTR _nPos$[ebp], 0

; 3264 :    zSHORT  nRC;
; 3265 : 
; 3266 :    pchOut[ 0 ] = 0;

	mov	ecx, DWORD PTR _pchOut$[ebp]
	mov	BYTE PTR [ecx], 0

; 3267 :    if ( nInLth > uLth )

	movsx	edx, WORD PTR _nInLth$[ebp]
	mov	eax, DWORD PTR _uLth$[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	edx, eax
	jle	SHORT $L9506

; 3269 :       SysMessageBox( 0, "Zeidon Internal Error",
; 3270 :                      "Length Error Encrypting String", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BP@MFLM@Length?5Error?5Encrypting?5String?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BG@OOBG@Zeidon?5Internal?5Error?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 3271 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9500
$L9506:

; 3273 : 
; 3274 :    nRC = nInLth;

	mov	cx, WORD PTR _nInLth$[ebp]
	mov	WORD PTR _nRC$[ebp], cx
$L9508:

; 3275 :    while ( nRC >= 0 && nInLth > 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jl	$L9509
	movsx	eax, WORD PTR _nInLth$[ebp]
	test	eax, eax
	jle	$L9509

; 3277 :       // The maximum password length is zMAXEL.
; 3278 :       if ( nInLth > zMAXEL )

	movsx	ecx, WORD PTR _nInLth$[ebp]
	cmp	ecx, 32					; 00000020H
	jle	SHORT $L9510

; 3280 :          uCurrLth = zMAXEL;

	mov	WORD PTR _uCurrLth$[ebp], 32		; 00000020H

; 3281 :          ch = pchIn[ nPos + zMAXEL ];

	movsx	edx, WORD PTR _nPos$[ebp]
	mov	eax, DWORD PTR _pchIn$[ebp]
	mov	cl, BYTE PTR [eax+edx+32]
	mov	BYTE PTR _ch$[ebp], cl

; 3282 :          pchIn[ nPos + zMAXEL ] = 0;

	movsx	edx, WORD PTR _nPos$[ebp]
	mov	eax, DWORD PTR _pchIn$[ebp]
	mov	BYTE PTR [eax+edx+32], 0

; 3284 :       else

	jmp	SHORT $L9511
$L9510:

; 3286 :          if ( nPos == 0 ) // first time in

	movsx	ecx, WORD PTR _nPos$[ebp]
	test	ecx, ecx
	jne	SHORT $L9512

; 3287 :             uCurrLth = uLth;

	mov	dx, WORD PTR _uLth$[ebp]
	mov	WORD PTR _uCurrLth$[ebp], dx

; 3288 :          else

	jmp	SHORT $L9513
$L9512:

; 3289 :             uCurrLth = nInLth;

	mov	ax, WORD PTR _nInLth$[ebp]
	mov	WORD PTR _uCurrLth$[ebp], ax
$L9513:

; 3290 : 
; 3291 :          ch = 0;

	mov	BYTE PTR _ch$[ebp], 0
$L9511:

; 3293 : 
; 3294 :       nRC = fnDecryptStringUL( pchOut + nPos, pchIn + nPos, pchKey, uCurrLth, FALSE );

	push	0
	mov	cx, WORD PTR _uCurrLth$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchKey$[ebp]
	push	edx
	movsx	eax, WORD PTR _nPos$[ebp]
	mov	ecx, DWORD PTR _pchIn$[ebp]
	add	ecx, eax
	push	ecx
	movsx	edx, WORD PTR _nPos$[ebp]
	mov	eax, DWORD PTR _pchOut$[ebp]
	add	eax, edx
	push	eax
	call	?fnDecryptStringUL@@YGFPAD00GE@Z	; fnDecryptStringUL
	mov	WORD PTR _nRC$[ebp], ax

; 3295 :       if ( ch )

	movsx	ecx, BYTE PTR _ch$[ebp]
	test	ecx, ecx
	je	SHORT $L9514

; 3296 :          pchIn[ nPos + zMAXEL ] = ch;

	movsx	edx, WORD PTR _nPos$[ebp]
	mov	eax, DWORD PTR _pchIn$[ebp]
	mov	cl, BYTE PTR _ch$[ebp]
	mov	BYTE PTR [eax+edx+32], cl
$L9514:

; 3297 : 
; 3298 :       nInLth -= zMAXEL;

	mov	dx, WORD PTR _nInLth$[ebp]
	sub	dx, 32					; 00000020H
	mov	WORD PTR _nInLth$[ebp], dx

; 3299 :       nPos += zMAXEL;

	mov	ax, WORD PTR _nPos$[ebp]
	add	ax, 32					; 00000020H
	mov	WORD PTR _nPos$[ebp], ax

; 3300 :    }

	jmp	$L9508
$L9509:

; 3301 : 
; 3302 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L9500:

; 3303 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_UfDecryptStringLong@16 ENDP
_TEXT	ENDS
PUBLIC	?CommitMultipleOIs@@YGFJFPAFJ@Z			; CommitMultipleOIs
EXTRN	_CommitMultipleOIs@16:NEAR
_TEXT	SEGMENT
_lViewCluster$ = 8
_nViewCount$ = 12
_pnViewErrorIdx$ = 16
_lControl$ = 20
?CommitMultipleOIs@@YGFJFPAFJ@Z PROC NEAR		; CommitMultipleOIs

; 3313 : {

	push	ebp
	mov	ebp, esp

; 3314 :    return( ::CommitMultipleOIs( (LPVIEWCLUSTER) lViewCluster,
; 3315 :                                 nViewCount, pnViewErrorIdx, lControl ) );

	mov	eax, DWORD PTR _lControl$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pnViewErrorIdx$[ebp]
	push	ecx
	mov	dx, WORD PTR _nViewCount$[ebp]
	push	edx
	mov	eax, DWORD PTR _lViewCluster$[ebp]
	push	eax
	call	_CommitMultipleOIs@16

; 3316 : }

	pop	ebp
	ret	16					; 00000010H
?CommitMultipleOIs@@YGFJFPAFJ@Z ENDP			; CommitMultipleOIs
_TEXT	ENDS
PUBLIC	_fnCallDecOper@16
PUBLIC	??_C@_0BC@FJKM@zDecimalOperation?$AA@		; `string'
PUBLIC	??_C@_0CL@KBOB@?$CIZDecimal?$CJ?5Error?5calling?5INIT?5fu@ ; `string'
EXTRN	_DecimalOperation@16:NEAR
EXTRN	_TraceLineS@8:NEAR
;	COMDAT ??_C@_0BC@FJKM@zDecimalOperation?$AA@
; File C:\10C\A\oe\KZOEDECA.CPP
_DATA	SEGMENT
??_C@_0BC@FJKM@zDecimalOperation?$AA@ DB 'zDecimalOperation', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CL@KBOB@?$CIZDecimal?$CJ?5Error?5calling?5INIT?5fu@
_DATA	SEGMENT
??_C@_0CL@KBOB@?$CIZDecimal?$CJ?5Error?5calling?5INIT?5fu@ DB '(ZDecimal)'
	DB	' Error calling INIT function in ', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_pvReturn$ = 8
_pvDecimal$ = 12
_pvInfo$ = 16
_lControl$ = 20
_nRC$ = -8
_pfn$ = -4
_fnCallDecOper@16 PROC NEAR

; 3347 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 3348 :    zSHORT    nRC;
; 3349 :    zDECOPER  pfn;
; 3350 : 
; 3351 : #if 1
; 3352 : 
; 3353 : // pfn = fnDecimalOperation;   // in kzoesyaa.c
; 3354 :    pfn = DecimalOperation;     // in zdecimal.c

	mov	DWORD PTR _pfn$[ebp], OFFSET FLAT:_DecimalOperation@16

; 3355 : 
; 3356 :    // Call function to initialize.
; 3357 :    nRC = (*pfn) ( 0, 0, 0, zDEC_CMD_INIT );

	push	6
	push	0
	push	0
	push	0
	call	DWORD PTR _pfn$[ebp]
	mov	WORD PTR _nRC$[ebp], ax

; 3358 :    if ( nRC == zCALL_ERROR )

	movsx	eax, WORD PTR _nRC$[ebp]
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L9540

; 3360 :       TraceLineS( "(ZDecimal) Error calling INIT function in ",
; 3361 :                   "zDecimalOperation" );

	push	OFFSET FLAT:??_C@_0BC@FJKM@zDecimalOperation?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0CL@KBOB@?$CIZDecimal?$CJ?5Error?5calling?5INIT?5fu@ ; `string'
	call	_TraceLineS@8
$L9540:

; 3363 : 
; 3364 : #else
; 3365 : 
; 3366 :    LPLIBRARY lpLibrary;
; 3367 : 
; 3368 :    if ( lpTask && lpTask->pfnDecOper )
; 3369 :       pfn = (zDECOPER) lpTask->pfnDecOper;
; 3370 :    else
; 3371 :    {
; 3372 :       char szValue[ zMAX_FILENAME_LTH + 1 ];
; 3373 : 
; 3374 :       lpLibrary = fnSysLoadLibraryWithErrFlag( lpTask, "zdecimal", 0 );
; 3375 :       if ( lpLibrary != 0 )
; 3376 :       {
; 3377 :          pfn = (zDECOPER) SysGetProc( lpLibrary, "zDecimalOperation" );
; 3378 :          if ( pfn == 0 )
; 3379 :          {
; 3380 :             fnSysFreeLibrary( lpTask, lpLibrary );
; 3381 :             lpLibrary = 0;
; 3382 :          }
; 3383 :       }
; 3384 : 
; 3385 :       // If lpLibrary is 0 then we couldn't find zDecimalOperation in the
; 3386 :       // decimal DLL so we'll use the default one.
; 3387 :       if ( lpLibrary == 0 )
; 3388 :          pfn = fnDecimalOperation;   // in kzoesyaa.c
; 3389 : 
; 3390 :       // Call function to initialize.
; 3391 :       nRC = (*pfn)( 0, 0, 0, zDEC_CMD_INIT );
; 3392 :       if ( nRC == zCALL_ERROR )
; 3393 :       {
; 3394 :          fnSysFreeLibrary( lpTask, lpLibrary );
; 3395 :          lpLibrary = 0;
; 3396 : 
; 3397 :          TraceLineS( "(ZDecimal) Error calling INIT function in ",
; 3398 :                      "zDecimalOperation" );
; 3399 :          pfn = fnDecimalOperation;   // in kzoesyaa.c
; 3400 :       }
; 3401 : 
; 3402 :       // It's a little late to pop up the message but this allows the INIT
; 3403 :       // command to take place so we can write any pertinent info to trace.
; 3404 :       if ( lpLibrary == 0 )
; 3405 :       {
; 3406 :          SysReadZeidonIni( -1, "[Zeidon]", "DefaultDecimalOK", szValue );
; 3407 :          zstrupper( szValue );
; 3408 : 
; 3409 :          if ( szValue[ 0 ] != 'Y' &&
; 3410 :               szValue[ 0 ] != '1' && szValue[ 0 ] != 'T' )
; 3411 :          {
; 3412 :             fnSysMessageBox( lpTask, szlOE_SystemError,
; 3413 :                              "Couldn't find zDecimalOperation().\n"
; 3414 :                              "Using default of 'double'.", 1 );
; 3415 :          }
; 3416 :       }
; 3417 : 
; 3418 :       if ( lpTask )
; 3419 :       {
; 3420 :          lpTask->lpDecLibrary = lpLibrary;
; 3421 :          lpTask->pfnDecOper   = (zPOPER) pfn;
; 3422 :       }
; 3423 :    }
; 3424 : 
; 3425 : #endif
; 3426 : 
; 3427 :    return( (*pfn)( pvReturn, pvDecimal, pvInfo, lControl ) );

	mov	ecx, DWORD PTR _lControl$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pvInfo$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvDecimal$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvReturn$[ebp]
	push	ecx
	call	DWORD PTR _pfn$[ebp]

; 3428 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_fnCallDecOper@16 ENDP
_TEXT	ENDS
PUBLIC	_SysCallDecimalOperation@16
_TEXT	SEGMENT
_pvReturn$ = 8
_pvDecimal$ = 12
_pvInfo$ = 16
_lControl$ = 20
_SysCallDecimalOperation@16 PROC NEAR

; 3435 : {

	push	ebp
	mov	ebp, esp

; 3436 :    return( fnCallDecOper( pvReturn, pvDecimal, pvInfo, lControl ) );

	mov	eax, DWORD PTR _lControl$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pvInfo$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pvDecimal$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvReturn$[ebp]
	push	eax
	call	_fnCallDecOper@16

; 3437 : }

	pop	ebp
	ret	16					; 00000010H
_SysCallDecimalOperation@16 ENDP
_pdTarget$ = 8
_pdSource$ = 12
_SysAssignDecimalFromDecimal@8 PROC NEAR

; 3442 : {

	push	ebp
	mov	ebp, esp

; 3443 :    return( fnCallDecOper( pdTarget, pdSource, 0, zDEC_CMD_ASSIGNDEC ) );

	push	1
	push	0
	mov	eax, DWORD PTR _pdSource$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pdTarget$[ebp]
	push	ecx
	call	_fnCallDecOper@16

; 3444 : }

	pop	ebp
	ret	8
_SysAssignDecimalFromDecimal@8 ENDP
_pdTarget$ = 8
_SysAssignDecimalFromNull@4 PROC NEAR

; 3448 : {

	push	ebp
	mov	ebp, esp

; 3449 :    return( fnCallDecOper( pdTarget, 0, 0, zDEC_CMD_ASSIGNNULL ) );

	push	3
	push	0
	push	0
	mov	eax, DWORD PTR _pdTarget$[ebp]
	push	eax
	call	_fnCallDecOper@16

; 3450 : }

	pop	ebp
	ret	4
_SysAssignDecimalFromNull@4 ENDP
_pdTarget$ = 8
_pdSource$ = 12
_SysCompareDecimalToDecimal@8 PROC NEAR

; 3455 : {

	push	ebp
	mov	ebp, esp

; 3456 :    return( fnCallDecOper( 0, pdTarget, pdSource, zDEC_CMD_COMPAREDEC ) );

	push	2
	mov	eax, DWORD PTR _pdSource$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pdTarget$[ebp]
	push	ecx
	push	0
	call	_fnCallDecOper@16

; 3457 : }

	pop	ebp
	ret	8
_SysCompareDecimalToDecimal@8 ENDP
_TEXT	ENDS
PUBLIC	_SysCompareDecimalToDouble@12
_TEXT	SEGMENT
_pdTarget$ = 8
_dSource$ = 12
_SysCompareDecimalToDouble@12 PROC NEAR

; 3462 : {

	push	ebp
	mov	ebp, esp

; 3463 :    return( fnCallDecOper( 0, pdTarget, &dSource, zDEC_CMD_COMPAREDOUBLE ) );

	push	5
	lea	eax, DWORD PTR _dSource$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pdTarget$[ebp]
	push	ecx
	push	0
	call	_fnCallDecOper@16

; 3464 : }

	pop	ebp
	ret	12					; 0000000cH
_SysCompareDecimalToDouble@12 ENDP
_pdSource$ = 8
_SysCompareDecimalToNull@4 PROC NEAR

; 3468 : {

	push	ebp
	mov	ebp, esp

; 3469 :    return( fnCallDecOper( 0, pdSource, 0, zDEC_CMD_COMPARENULL ) );

	push	4
	push	0
	mov	eax, DWORD PTR _pdSource$[ebp]
	push	eax
	push	0
	call	_fnCallDecOper@16

; 3470 : }

	pop	ebp
	ret	4
_SysCompareDecimalToNull@4 ENDP
_pdDecimal$ = 8
_pszString$ = 12
_nPrecision$ = 16
_SysConvertDecimalToString@12 PROC NEAR

; 3476 : {

	push	ebp
	mov	ebp, esp

; 3477 :    return( fnCallDecOper( pszString, pdDecimal, &nPrecision,
; 3478 :                           zDEC_CMD_DECTOSTRING ) );

	push	48					; 00000030H
	lea	eax, DWORD PTR _nPrecision$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pdDecimal$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pszString$[ebp]
	push	edx
	call	_fnCallDecOper@16

; 3479 : }

	pop	ebp
	ret	12					; 0000000cH
_SysConvertDecimalToString@12 ENDP
_pszString$ = 8
_pdDecimal$ = 12
_SysConvertStringToDecimal@8 PROC NEAR

; 3483 : {

	push	ebp
	mov	ebp, esp

; 3484 :    return( fnCallDecOper( pdDecimal, 0, (zPVOID) pszString,
; 3485 :                           zDEC_CMD_STRINGTODEC ) );

	push	49					; 00000031H
	mov	eax, DWORD PTR _pszString$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _pdDecimal$[ebp]
	push	ecx
	call	_fnCallDecOper@16

; 3486 : }

	pop	ebp
	ret	8
_SysConvertStringToDecimal@8 ENDP
_lLong$ = 8
_pdDecimal$ = 12
_SysConvertLongToDecimal@8 PROC NEAR

; 3491 : {

	push	ebp
	mov	ebp, esp

; 3492 :    return( fnCallDecOper( pdDecimal, 0, &lLong, zDEC_CMD_LONGTODEC ) );

	push	51					; 00000033H
	lea	eax, DWORD PTR _lLong$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _pdDecimal$[ebp]
	push	ecx
	call	_fnCallDecOper@16

; 3493 : }

	pop	ebp
	ret	8
_SysConvertLongToDecimal@8 ENDP
_pdDecimal$ = 8
_plLong$ = 12
_SysConvertDecimalToLong@8 PROC NEAR

; 3498 : {

	push	ebp
	mov	ebp, esp

; 3499 :    return( fnCallDecOper( plLong, pdDecimal, 0, zDEC_CMD_DECTOLONG ) );

	push	50					; 00000032H
	push	0
	mov	eax, DWORD PTR _pdDecimal$[ebp]
	push	eax
	mov	ecx, DWORD PTR _plLong$[ebp]
	push	ecx
	call	_fnCallDecOper@16

; 3500 : }

	pop	ebp
	ret	8
_SysConvertDecimalToLong@8 ENDP
_pdDecimal$ = 8
_pdDouble$ = 12
_SysConvertDecimalToDouble@8 PROC NEAR

; 3505 : {

	push	ebp
	mov	ebp, esp

; 3506 :    return( fnCallDecOper( pdDouble, pdDecimal, 0, zDEC_CMD_DECTODOUBLE ) );

	push	52					; 00000034H
	push	0
	mov	eax, DWORD PTR _pdDecimal$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pdDouble$[ebp]
	push	ecx
	call	_fnCallDecOper@16

; 3507 : }

	pop	ebp
	ret	8
_SysConvertDecimalToDouble@8 ENDP
_dDouble$ = 8
_pdDecimal$ = 16
_SysConvertDoubleToDecimal@12 PROC NEAR

; 3512 : {

	push	ebp
	mov	ebp, esp

; 3513 :    return( fnCallDecOper( pdDecimal, 0, &dDouble, zDEC_CMD_DOUBLETODEC ) );

	push	53					; 00000035H
	lea	eax, DWORD PTR _dDouble$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _pdDecimal$[ebp]
	push	ecx
	call	_fnCallDecOper@16

; 3514 : }

	pop	ebp
	ret	12					; 0000000cH
_SysConvertDoubleToDecimal@12 ENDP
_pdResult$ = 8
_pdDec1$ = 12
_pdDec2$ = 16
_SysAddDecimalToDecimal@12 PROC NEAR

; 3520 : {

	push	ebp
	mov	ebp, esp

; 3521 :    return( fnCallDecOper( pdResult, pdDec1, pdDec2, zDEC_CMD_ADDDEC ) );

	push	16					; 00000010H
	mov	eax, DWORD PTR _pdDec2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pdDec1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pdResult$[ebp]
	push	edx
	call	_fnCallDecOper@16

; 3522 : }

	pop	ebp
	ret	12					; 0000000cH
_SysAddDecimalToDecimal@12 ENDP
_pdResult$ = 8
_pdDec1$ = 12
_pdDec2$ = 16
_SysSubtractDecimalFromDecimal@12 PROC NEAR

; 3528 : {

	push	ebp
	mov	ebp, esp

; 3529 :    return( fnCallDecOper( pdResult, pdDec1, pdDec2, zDEC_CMD_SUBDEC ) );

	push	17					; 00000011H
	mov	eax, DWORD PTR _pdDec2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pdDec1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pdResult$[ebp]
	push	edx
	call	_fnCallDecOper@16

; 3530 : }

	pop	ebp
	ret	12					; 0000000cH
_SysSubtractDecimalFromDecimal@12 ENDP
_pdResult$ = 8
_pdDec1$ = 12
_pdDec2$ = 16
_SysMultiplyDecimalByDecimal@12 PROC NEAR

; 3536 : {

	push	ebp
	mov	ebp, esp

; 3537 :    return( fnCallDecOper( pdResult, pdDec1, pdDec2, zDEC_CMD_MULTDEC ) );

	push	18					; 00000012H
	mov	eax, DWORD PTR _pdDec2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pdDec1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pdResult$[ebp]
	push	edx
	call	_fnCallDecOper@16

; 3538 : }

	pop	ebp
	ret	12					; 0000000cH
_SysMultiplyDecimalByDecimal@12 ENDP
_pdResult$ = 8
_pdDec1$ = 12
_pdDec2$ = 16
_SysDivideDecimalByDecimal@12 PROC NEAR

; 3544 : {

	push	ebp
	mov	ebp, esp

; 3545 :    return( fnCallDecOper( pdResult, pdDec1, pdDec2, zDEC_CMD_DIVDEC ) );

	push	19					; 00000013H
	mov	eax, DWORD PTR _pdDec2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pdDec1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pdResult$[ebp]
	push	edx
	call	_fnCallDecOper@16

; 3546 : }

	pop	ebp
	ret	12					; 0000000cH
_SysDivideDecimalByDecimal@12 ENDP
_TEXT	ENDS
PUBLIC	_SysRoundDecimal@8
_TEXT	SEGMENT
_pd$ = 8
_nPrecision$ = 12
_SysRoundDecimal@8 PROC NEAR

; 3551 : {

	push	ebp
	mov	ebp, esp

; 3552 :    return( fnCallDecOper( pd, pd, &nPrecision, zDEC_CMD_ROUND ) );

	push	20					; 00000014H
	lea	eax, DWORD PTR _nPrecision$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pd$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pd$[ebp]
	push	edx
	call	_fnCallDecOper@16

; 3553 : }

	pop	ebp
	ret	8
_SysRoundDecimal@8 ENDP
_TEXT	ENDS
END
