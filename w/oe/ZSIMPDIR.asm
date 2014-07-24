	TITLE	C:\10C\A\oe\ZSIMPDIR.C
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
;	COMDAT ??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@PDLM@Zeidon?5DBH?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08PNAL@ApplServ?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04EFNI@Name?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05GGEJ@Group?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EK@JCOH@Set?5from?5zSimpDir?4DLL?5to?5determi@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04DKMG@Desc?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@MLLO@ServerAddress?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03HAKM@Key?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CD@JLPG@Current?5address?5of?5the?5appl?5serv@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04GKDJ@?$FL?$CFs?$FN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@MHGJ@ApplServer?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05KBGO@Value?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_zServerDirInit@16
_TEXT	SEGMENT
_pvData$ = 16
_zServerDirInit@16 PROC NEAR

; 35   : {

	push	ebp
	mov	ebp, esp

; 36   :    // No init to do.
; 37   :    *pvData = 0;

	mov	eax, DWORD PTR _pvData$[ebp]
	mov	DWORD PTR [eax], 0

; 38   : 
; 39   :    return( 0 );

	xor	ax, ax

; 40   : }

	pop	ebp
	ret	16					; 00000010H
_zServerDirInit@16 ENDP
_TEXT	ENDS
PUBLIC	_zServerDirClose@12
_TEXT	SEGMENT
_zServerDirClose@12 PROC NEAR

; 46   : {

	push	ebp
	mov	ebp, esp

; 47   :    // No close to do.
; 48   :    return( 0 );

	xor	ax, ax

; 49   : }

	pop	ebp
	ret	12					; 0000000cH
_zServerDirClose@12 ENDP
_TEXT	ENDS
PUBLIC	_zServerDirGetAddr@20
PUBLIC	??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ ; `string'
PUBLIC	??_C@_0L@PDLM@Zeidon?5DBH?$AA@			; `string'
PUBLIC	??_C@_08PNAL@ApplServ?$AA@			; `string'
PUBLIC	??_C@_04EFNI@Name?$AA@				; `string'
PUBLIC	??_C@_05GGEJ@Group?$AA@				; `string'
PUBLIC	??_C@_0EK@JCOH@Set?5from?5zSimpDir?4DLL?5to?5determi@ ; `string'
PUBLIC	??_C@_04DKMG@Desc?$AA@				; `string'
PUBLIC	??_C@_0O@MLLO@ServerAddress?$AA@		; `string'
PUBLIC	??_C@_03HAKM@Key?$AA@				; `string'
PUBLIC	??_C@_0CD@JLPG@Current?5address?5of?5the?5appl?5serv@ ; `string'
PUBLIC	??_C@_04GKDJ@?$FL?$CFs?$FN?$AA@			; `string'
PUBLIC	??_C@_0L@MHGJ@ApplServer?$AA@			; `string'
PUBLIC	??_C@_05KBGO@Value?$AA@				; `string'
EXTRN	_SysGetPointerFromHandle@4:NEAR
EXTRN	_SysMutexLock@16:NEAR
EXTRN	_SysMutexUnlock@12:NEAR
EXTRN	__chkstk:NEAR
EXTRN	_SysReadZeidonIni@16:NEAR
EXTRN	_GetViewByName@16:NEAR
EXTRN	_CreateEntity@12:NEAR
EXTRN	_strcpy:NEAR
EXTRN	_SetCursorFirstEntityByString@20:NEAR
EXTRN	__imp__sprintf:NEAR
EXTRN	_GetStringFromAttribute@16:NEAR
EXTRN	_SetAttributeFromString@16:NEAR
;	COMDAT ??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@
; File C:\10C\A\oe\ZSIMPDIR.C
_DATA	SEGMENT
??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ DB 'Zeidon DBHandler '
	DB	'Work Object', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@PDLM@Zeidon?5DBH?$AA@
_DATA	SEGMENT
??_C@_0L@PDLM@Zeidon?5DBH?$AA@ DB 'Zeidon DBH', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08PNAL@ApplServ?$AA@
_DATA	SEGMENT
??_C@_08PNAL@ApplServ?$AA@ DB 'ApplServ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_04EFNI@Name?$AA@
_DATA	SEGMENT
??_C@_04EFNI@Name?$AA@ DB 'Name', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_05GGEJ@Group?$AA@
_DATA	SEGMENT
??_C@_05GGEJ@Group?$AA@ DB 'Group', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EK@JCOH@Set?5from?5zSimpDir?4DLL?5to?5determi@
_DATA	SEGMENT
??_C@_0EK@JCOH@Set?5from?5zSimpDir?4DLL?5to?5determi@ DB 'Set from zSimpD'
	DB	'ir.DLL to determine the address of the application server.', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_04DKMG@Desc?$AA@
_DATA	SEGMENT
??_C@_04DKMG@Desc?$AA@ DB 'Desc', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@MLLO@ServerAddress?$AA@
_DATA	SEGMENT
??_C@_0O@MLLO@ServerAddress?$AA@ DB 'ServerAddress', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_03HAKM@Key?$AA@
_DATA	SEGMENT
??_C@_03HAKM@Key?$AA@ DB 'Key', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CD@JLPG@Current?5address?5of?5the?5appl?5serv@
_DATA	SEGMENT
??_C@_0CD@JLPG@Current?5address?5of?5the?5appl?5serv@ DB 'Current address'
	DB	' of the appl server', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_04GKDJ@?$FL?$CFs?$FN?$AA@
_DATA	SEGMENT
??_C@_04GKDJ@?$FL?$CFs?$FN?$AA@ DB '[%s]', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@MHGJ@ApplServer?$AA@
_DATA	SEGMENT
??_C@_0L@MHGJ@ApplServer?$AA@ DB 'ApplServer', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_05KBGO@Value?$AA@
_DATA	SEGMENT
??_C@_05KBGO@Value?$AA@ DB 'Value', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTask$ = 8
_pchReturnAddress$ = 12
_lRequest$ = 20
_pvInfoStruct$ = 24
_lpBaseInfo$ = -8
_vTask$ = -12
_vOI$ = -4
_szGroup$7289 = -4108
_zServerDirGetAddr@20 PROC NEAR

; 58   : {

	push	ebp
	mov	ebp, esp
	mov	eax, 4108				; 0000100cH
	call	__chkstk

; 59   :    LPSERVDIRBASE lpBaseInfo = (LPSERVDIRBASE) pvInfoStruct;

	mov	eax, DWORD PTR _pvInfoStruct$[ebp]
	mov	DWORD PTR _lpBaseInfo$[ebp], eax

; 60   :    zVIEW         vTask;
; 61   :    zVIEW         vOI;
; 62   : 
; 63   :    // We'll only allow one attempt to the server, so if the RETRY flag is
; 64   :    // set, we'll return an error.
; 65   :    if ( lRequest & zAPPLREQ_RETRY )

	mov	ecx, DWORD PTR _lRequest$[ebp]
	and	ecx, 65536				; 00010000H
	test	ecx, ecx
	je	SHORT $L7275

; 66   :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7270
$L7275:

; 67   : 
; 68   :    // If the user supplied an address, we can just use that address.
; 69   :    if ( lpBaseInfo->pszUserSuppliedAddress &&
; 70   :         lpBaseInfo->pszUserSuppliedAddress[ 0 ] )

	mov	edx, DWORD PTR _lpBaseInfo$[ebp]
	cmp	DWORD PTR [edx+4], 0
	je	SHORT $L7276
	mov	eax, DWORD PTR _lpBaseInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	SHORT $L7276

; 72   :       zstrcpy( pchReturnAddress, lpBaseInfo->pszUserSuppliedAddress );

	mov	eax, DWORD PTR _lpBaseInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	mov	edx, DWORD PTR _pchReturnAddress$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 73   :       return( 0 );

	xor	ax, ax
	jmp	$L7270
$L7276:

; 75   : 
; 76   :    // Set lock so nobody can modify the OI while we're using it.
; 77   :    vTask = SysGetPointerFromHandle( lpTask->hFirstView );

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR [eax+106]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _vTask$[ebp], eax

; 78   :    GetViewByName( &vOI, "Zeidon DBHandler Work Object", vTask, zLEVEL_SYSTEM );

	push	8
	mov	edx, DWORD PTR _vTask$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ ; `string'
	lea	eax, DWORD PTR _vOI$[ebp]
	push	eax
	call	_GetViewByName@16

; 79   :    SysMutexLock( vTask, "Zeidon DBH", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	ecx, DWORD PTR _vTask$[ebp]
	push	ecx
	call	_SysMutexLock@16

; 80   : 
; 81   :    // Have we already created the Group for ApplServ?
; 82   :    if ( SetCursorFirstEntityByString( vOI, "Group", "Name",
; 83   :                                       "ApplServ", 0 ) < zCURSOR_SET )

	push	0
	push	OFFSET FLAT:??_C@_08PNAL@ApplServ?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04EFNI@Name?$AA@	; `string'
	push	OFFSET FLAT:??_C@_05GGEJ@Group?$AA@	; `string'
	mov	edx, DWORD PTR _vOI$[ebp]
	push	edx
	call	_SetCursorFirstEntityByString@20
	movsx	eax, ax
	test	eax, eax
	jge	SHORT $L7279

; 85   :       // No...create it.
; 86   :       CreateEntity( vOI, "Group", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_05GGEJ@Group?$AA@	; `string'
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	call	_CreateEntity@12

; 87   :       SetAttributeFromString( vOI, "Group", "Name", "ApplServ" );

	push	OFFSET FLAT:??_C@_08PNAL@ApplServ?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04EFNI@Name?$AA@	; `string'
	push	OFFSET FLAT:??_C@_05GGEJ@Group?$AA@	; `string'
	mov	edx, DWORD PTR _vOI$[ebp]
	push	edx
	call	_SetAttributeFromString@16

; 88   :       SetAttributeFromString( vOI, "Group", "Desc",
; 89   :                               "Set from zSimpDir.DLL to determine the address "
; 90   :                               "of the application server." );

	push	OFFSET FLAT:??_C@_0EK@JCOH@Set?5from?5zSimpDir?4DLL?5to?5determi@ ; `string'
	push	OFFSET FLAT:??_C@_04DKMG@Desc?$AA@	; `string'
	push	OFFSET FLAT:??_C@_05GGEJ@Group?$AA@	; `string'
	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	call	_SetAttributeFromString@16
$L7279:

; 92   : 
; 93   :    // Have we already created the key name for the server address?
; 94   :    if ( SetCursorFirstEntityByString( vOI, "Key", "Name",
; 95   :                                       "ServerAddress", 0 ) < zCURSOR_SET )

	push	0
	push	OFFSET FLAT:??_C@_0O@MLLO@ServerAddress?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_04EFNI@Name?$AA@	; `string'
	push	OFFSET FLAT:??_C@_03HAKM@Key?$AA@	; `string'
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	call	_SetCursorFirstEntityByString@20
	movsx	edx, ax
	test	edx, edx
	jge	$L7286

; 97   :       zCHAR szGroup[ 4096 ];
; 98   : 
; 99   :       // No...create it and retrieve the original value from the INI file.
; 100  :       CreateEntity( vOI, "Key", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_03HAKM@Key?$AA@	; `string'
	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	call	_CreateEntity@12

; 101  :       SetAttributeFromString( vOI, "Key", "Name", "ServerAddress" );

	push	OFFSET FLAT:??_C@_0O@MLLO@ServerAddress?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_04EFNI@Name?$AA@	; `string'
	push	OFFSET FLAT:??_C@_03HAKM@Key?$AA@	; `string'
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	call	_SetAttributeFromString@16

; 102  :       SetAttributeFromString( vOI, "Key", "Desc",
; 103  :                               "Current address of the appl server" );

	push	OFFSET FLAT:??_C@_0CD@JLPG@Current?5address?5of?5the?5appl?5serv@ ; `string'
	push	OFFSET FLAT:??_C@_04DKMG@Desc?$AA@	; `string'
	push	OFFSET FLAT:??_C@_03HAKM@Key?$AA@	; `string'
	mov	edx, DWORD PTR _vOI$[ebp]
	push	edx
	call	_SetAttributeFromString@16

; 104  : 
; 105  :       // Read the address from the zeidon ini.
; 106  :       zsprintf( szGroup, "[%s]", lpBaseInfo->pszNetworkName );

	mov	eax, DWORD PTR _lpBaseInfo$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	push	OFFSET FLAT:??_C@_04GKDJ@?$FL?$CFs?$FN?$AA@ ; `string'
	lea	edx, DWORD PTR _szGroup$7289[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 107  :       SysReadZeidonIni( -1, szGroup, "ApplServer", pchReturnAddress );

	mov	eax, DWORD PTR _pchReturnAddress$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0L@MHGJ@ApplServer?$AA@ ; `string'
	lea	ecx, DWORD PTR _szGroup$7289[ebp]
	push	ecx
	push	-1
	call	_SysReadZeidonIni@16

; 108  :       SetAttributeFromString( vOI, "Key", "Value", pchReturnAddress );

	mov	edx, DWORD PTR _pchReturnAddress$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_05KBGO@Value?$AA@	; `string'
	push	OFFSET FLAT:??_C@_03HAKM@Key?$AA@	; `string'
	mov	eax, DWORD PTR _vOI$[ebp]
	push	eax
	call	_SetAttributeFromString@16

; 110  :    else

	jmp	SHORT $L7295
$L7286:

; 111  :       GetStringFromAttribute( pchReturnAddress, vOI, "Key", "Value" );

	push	OFFSET FLAT:??_C@_05KBGO@Value?$AA@	; `string'
	push	OFFSET FLAT:??_C@_03HAKM@Key?$AA@	; `string'
	mov	ecx, DWORD PTR _vOI$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchReturnAddress$[ebp]
	push	edx
	call	_GetStringFromAttribute@16
$L7295:

; 112  : 
; 113  :    SysMutexUnlock( vTask, "Zeidon DBH", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	eax, DWORD PTR _vTask$[ebp]
	push	eax
	call	_SysMutexUnlock@12

; 114  : 
; 115  :    return( 0 );

	xor	ax, ax
$L7270:

; 116  : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_zServerDirGetAddr@20 ENDP
_TEXT	ENDS
END
