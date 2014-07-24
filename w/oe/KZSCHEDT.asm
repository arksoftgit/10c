	TITLE	C:\10C\w\oe\KZSCHEDT.C
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
;	COMDAT ??_C@_0BF@IHIM@Starting?5thread?5test?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09MMJL@?2?2ePamms?2?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@IIEB@Completed?5thread?5register?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05LFHN@mUser?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@CFEF@?9?9?9?9?9?5ERROR?5activating?5mUser?5?9?9?9@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@EFAB@Thread?5test?5?$CD?$CFd?0?5rc?5?$DN?5?$CFd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@CIEI@Completed?5thread?5UN?$CI?$CB?$CJregister?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@NCBJ@Completed?5thread?5test?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@EBPK@ZEIDON_MONITOR?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@FAGK@KZSchedT?4exe?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@DDIH@Done?5with?5test?5?$CFu?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@LOPD@Close?5running?5test?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@LDCL@Test?5In?5Progress?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08GPBK@zWinSock?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08CFNG@KZSCHEDT?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@PCOP@Task?5Scheduler?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@BOFH@Done?5registering?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_g_DoWork
PUBLIC	_g_szClassName
PUBLIC	_g_bRunningTest
PUBLIC	_g_ulTestCount
PUBLIC	_g_bContinueThreadTest
PUBLIC	_g_bTestThreadStarted
PUBLIC	_g_hTestThread
PUBLIC	_g_dwTestThreadID
PUBLIC	_bThreadRegistered
_DATA	SEGMENT
COMM	_g_hInst:DWORD
COMM	_g_hInstRes:DWORD
COMM	_g_hWndMain:DWORD
COMM	_g_wClientMessage:WORD
COMM	_g_nNoUnregister:DWORD
COMM	_g_vSubtask:DWORD
_DATA	ENDS
_BSS	SEGMENT
_g_bRunningTest DB 01H DUP (?)
	ALIGN	4

_g_ulTestCount DD 01H DUP (?)
_g_bContinueThreadTest DB 01H DUP (?)
	ALIGN	4

_g_bTestThreadStarted DB 01H DUP (?)
	ALIGN	4

_g_hTestThread DD 01H DUP (?)
_g_dwTestThreadID DD 01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
_g_DoWork DB	01H
	ORG $+3
_g_szClassName DB 'TaskSchedulerClass', 00H
_DATA	ENDS
_TLS	SEGMENT
_bThreadRegistered DB 00H
_TLS	ENDS
PUBLIC	??_C@_09MMJL@?2?2ePamms?2?$AA@			; `string'
PUBLIC	??_C@_0BK@IIEB@Completed?5thread?5register?$AA@	; `string'
PUBLIC	??_C@_05LFHN@mUser?$AA@				; `string'
PUBLIC	??_C@_0CI@CFEF@?9?9?9?9?9?5ERROR?5activating?5mUser?5?9?9?9@ ; `string'
PUBLIC	??_C@_0BJ@EFAB@Thread?5test?5?$CD?$CFd?0?5rc?5?$DN?5?$CFd?$AA@ ; `string'
PUBLIC	??_C@_0BP@CIEI@Completed?5thread?5UN?$CI?$CB?$CJregister?$AA@ ; `string'
PUBLIC	??_C@_0BG@NCBJ@Completed?5thread?5test?$AA@	; `string'
PUBLIC	_fnThreadProc2@4
PUBLIC	??_C@_0BF@IHIM@Starting?5thread?5test?$AA@	; `string'
EXTRN	_TraceLineI@8:NEAR
EXTRN	_ActivateObjectInstance@20:NEAR
EXTRN	__tls_index:DWORD
EXTRN	__tls_array:DWORD
EXTRN	__imp__Sleep@4:NEAR
EXTRN	_DropView@4:NEAR
EXTRN	_RegisterZeidonApplication@28:NEAR
EXTRN	_UnregisterZeidonApplication@4:NEAR
EXTRN	_sprintf:NEAR
EXTRN	_SysGetDateTime@4:NEAR
;	COMDAT ??_C@_0BF@IHIM@Starting?5thread?5test?$AA@
; File C:\10C\w\oe\KZSCHEDT.C
_DATA	SEGMENT
??_C@_0BF@IHIM@Starting?5thread?5test?$AA@ DB 'Starting thread test', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_09MMJL@?2?2ePamms?2?$AA@
_DATA	SEGMENT
??_C@_09MMJL@?2?2ePamms?2?$AA@ DB '\\ePamms\', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@IIEB@Completed?5thread?5register?$AA@
_DATA	SEGMENT
??_C@_0BK@IIEB@Completed?5thread?5register?$AA@ DB 'Completed thread regi'
	DB	'ster', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_05LFHN@mUser?$AA@
_DATA	SEGMENT
??_C@_05LFHN@mUser?$AA@ DB 'mUser', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@CFEF@?9?9?9?9?9?5ERROR?5activating?5mUser?5?9?9?9@
_DATA	SEGMENT
??_C@_0CI@CFEF@?9?9?9?9?9?5ERROR?5activating?5mUser?5?9?9?9@ DB '----- ER'
	DB	'ROR activating mUser --------- ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@EFAB@Thread?5test?5?$CD?$CFd?0?5rc?5?$DN?5?$CFd?$AA@
_DATA	SEGMENT
??_C@_0BJ@EFAB@Thread?5test?5?$CD?$CFd?0?5rc?5?$DN?5?$CFd?$AA@ DB 'Thread'
	DB	' test #%d, rc = %d', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BP@CIEI@Completed?5thread?5UN?$CI?$CB?$CJregister?$AA@
_DATA	SEGMENT
??_C@_0BP@CIEI@Completed?5thread?5UN?$CI?$CB?$CJregister?$AA@ DB 'Complet'
	DB	'ed thread UN(!)register', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@NCBJ@Completed?5thread?5test?$AA@
_DATA	SEGMENT
??_C@_0BG@NCBJ@Completed?5thread?5test?$AA@ DB 'Completed thread test', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_p$ = 8
_vSubtask$ = -220
_nCount$ = -216
_vView$ = -212
_szMsg$ = -204
_nRC$ = -4
_nThreadNumber$ = -208
_szDateTime$57338 = -252
_fnThreadProc2@4 PROC NEAR

; 71   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 256				; 00000100H

; 72   :    zVIEW  vSubtask;
; 73   :    zLONG  nCount = 0;

	mov	DWORD PTR _nCount$[ebp], 0

; 74   :    zVIEW  vView;
; 75   :    char   szMsg[ 200 ];
; 76   :    zSHORT nRC;
; 77   :    zSHORT nThreadNumber = (zSHORT) p;

	mov	ax, WORD PTR _p$[ebp]
	mov	WORD PTR _nThreadNumber$[ebp], ax

; 78   : 
; 79   :    TraceLineI( "Starting thread test", nThreadNumber );

	movsx	ecx, WORD PTR _nThreadNumber$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BF@IHIM@Starting?5thread?5test?$AA@ ; `string'
	call	_TraceLineI@8
$L57336:

; 80   : 
; 81   :    while ( g_bContinueThreadTest )

	xor	edx, edx
	mov	dl, BYTE PTR _g_bContinueThreadTest
	test	edx, edx
	je	$L57337

; 83   :       zCHAR szDateTime[ 30 ];
; 84   : 
; 85   :       if ( !bThreadRegistered )

	mov	eax, DWORD PTR __tls_index
	mov	ecx, DWORD PTR fs:__tls_array
	mov	edx, DWORD PTR [ecx+eax*4]
	xor	eax, eax
	mov	al, BYTE PTR _bThreadRegistered[edx]
	test	eax, eax
	jne	SHORT $L57339

; 87   :          if ( RegisterZeidonApplication( &vSubtask,
; 88   :                                          (zLONG) g_hInst,
; 89   :                                          (zLONG) g_hWndMain,
; 90   :                                          (zLONG) g_wClientMessage,
; 91   :                                          "\\\\ePamms\\", 0, 0 ) == zCALL_ERROR )

	push	0
	push	0
	push	OFFSET FLAT:??_C@_09MMJL@?2?2ePamms?2?$AA@ ; `string'
	xor	ecx, ecx
	mov	cx, WORD PTR _g_wClientMessage
	push	ecx
	mov	edx, DWORD PTR _g_hWndMain
	push	edx
	mov	eax, DWORD PTR _g_hInst
	push	eax
	lea	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	call	_RegisterZeidonApplication@28
	movsx	edx, ax
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L57343

; 93   :             g_dwTestThreadID = 0;

	mov	DWORD PTR _g_dwTestThreadID, 0

; 94   :             return( 0 );

	xor	eax, eax
	jmp	$L57326
$L57343:

; 96   : 
; 97   :          bThreadRegistered = TRUE;

	mov	eax, DWORD PTR __tls_index
	mov	ecx, DWORD PTR fs:__tls_array
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	BYTE PTR _bThreadRegistered[edx], 1

; 98   :          TraceLineI( "Completed thread register", nThreadNumber );

	movsx	eax, WORD PTR _nThreadNumber$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BK@IIEB@Completed?5thread?5register?$AA@ ; `string'
	call	_TraceLineI@8
$L57339:

; 100  : 
; 101  :    // if ( nThreadNumber == 2 )
; 102  :    //    Sleep( 500 );
; 103  :       Sleep( 100 * ((nThreadNumber % 5) + 1) );

	movsx	eax, WORD PTR _nThreadNumber$[ebp]
	cdq
	mov	ecx, 5
	idiv	ecx
	add	edx, 1
	imul	edx, 100				; 00000064H
	push	edx
	call	DWORD PTR __imp__Sleep@4

; 104  : 
; 105  :    // SysMutexLock( "KZSCHEDT/1", 0, 0 );
; 106  :    // TraceLineI( "Mutex locked", nThreadNumber );
; 107  : 
; 108  :       SysGetDateTime( szDateTime );

	lea	edx, DWORD PTR _szDateTime$57338[ebp]
	push	edx
	call	_SysGetDateTime@4

; 109  :       TraceLineI( szDateTime, nThreadNumber );

	movsx	eax, WORD PTR _nThreadNumber$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szDateTime$57338[ebp]
	push	ecx
	call	_TraceLineI@8

; 110  : 
; 111  :       nRC = ActivateObjectInstance( &vView, "mUser", vSubtask, 0, zSINGLE );

	push	0
	push	0
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_05LFHN@mUser?$AA@	; `string'
	lea	eax, DWORD PTR _vView$[ebp]
	push	eax
	call	_ActivateObjectInstance@20
	mov	WORD PTR _nRC$[ebp], ax

; 112  :       if ( nRC >= 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jl	SHORT $L57347

; 113  :          DropView( vView );

	mov	edx, DWORD PTR _vView$[ebp]
	push	edx
	call	_DropView@4

; 114  :       else

	jmp	SHORT $L57348
$L57347:

; 115  :          TraceLineI( "----- ERROR activating mUser --------- ", nThreadNumber );

	movsx	eax, WORD PTR _nThreadNumber$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CI@CFEF@?9?9?9?9?9?5ERROR?5activating?5mUser?5?9?9?9@ ; `string'
	call	_TraceLineI@8
$L57348:

; 116  : 
; 117  :       zsprintf( szMsg, "Thread test #%d, rc = %d", nCount++, nRC );

	movsx	ecx, WORD PTR _nRC$[ebp]
	push	ecx
	mov	edx, DWORD PTR _nCount$[ebp]
	mov	DWORD PTR -256+[ebp], edx
	mov	eax, DWORD PTR -256+[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BJ@EFAB@Thread?5test?5?$CD?$CFd?0?5rc?5?$DN?5?$CFd?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	mov	edx, DWORD PTR _nCount$[ebp]
	add	edx, 1
	mov	DWORD PTR _nCount$[ebp], edx
	call	_sprintf
	add	esp, 16					; 00000010H

; 118  :       TraceLineI( szMsg, nThreadNumber );

	movsx	eax, WORD PTR _nThreadNumber$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_TraceLineI@8

; 119  : 
; 120  :    // SysMutexUnlock( "KZSCHEDT/1" );
; 121  :    // TraceLineI( "Mutex unlocked", nThreadNumber );
; 122  :    }

	jmp	$L57336
$L57337:

; 123  : 
; 124  :    if ( bThreadRegistered )

	mov	edx, DWORD PTR __tls_index
	mov	eax, DWORD PTR fs:__tls_array
	mov	ecx, DWORD PTR [eax+edx*4]
	xor	edx, edx
	mov	dl, BYTE PTR _bThreadRegistered[ecx]
	test	edx, edx
	je	SHORT $L57351

; 126  :       UnregisterZeidonApplication( vSubtask );

	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	call	_UnregisterZeidonApplication@4

; 127  :       vSubtask = 0;

	mov	DWORD PTR _vSubtask$[ebp], 0

; 128  :       bThreadRegistered = FALSE;

	mov	ecx, DWORD PTR __tls_index
	mov	edx, DWORD PTR fs:__tls_array
	mov	eax, DWORD PTR [edx+ecx*4]
	mov	BYTE PTR _bThreadRegistered[eax], 0

; 129  :       TraceLineI( "Completed thread UN(!)register", nThreadNumber );

	movsx	ecx, WORD PTR _nThreadNumber$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BP@CIEI@Completed?5thread?5UN?$CI?$CB?$CJregister?$AA@ ; `string'
	call	_TraceLineI@8
$L57351:

; 131  : 
; 132  :    g_dwTestThreadID = 0;

	mov	DWORD PTR _g_dwTestThreadID, 0

; 133  :    TraceLineI( "Completed thread test", nThreadNumber );

	movsx	edx, WORD PTR _nThreadNumber$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BG@NCBJ@Completed?5thread?5test?$AA@ ; `string'
	call	_TraceLineI@8

; 134  : 
; 135  :    return( 0 );

	xor	eax, eax
$L57326:

; 136  : }

	mov	esp, ebp
	pop	ebp
	ret	4
_fnThreadProc2@4 ENDP
_TEXT	ENDS
PUBLIC	_TrayMessage
EXTRN	__imp__DestroyIcon@4:NEAR
EXTRN	__imp__Shell_NotifyIconA@8:NEAR
EXTRN	_strncpy:NEAR
_TEXT	SEGMENT
_dwMessage$ = 8
_uID$ = 12
_hIcon$ = 16
_pszTip$ = 20
_tnd$ = -92
_bRC$ = -4
_TrayMessage PROC NEAR

; 148  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 92					; 0000005cH

; 149  :    NOTIFYICONDATA tnd;
; 150  :    zBOOL bRC;
; 151  : 
; 152  :    tnd.cbSize      = sizeof( NOTIFYICONDATA );

	mov	DWORD PTR _tnd$[ebp], 88		; 00000058H

; 153  :    tnd.hWnd        = g_hWndMain;

	mov	eax, DWORD PTR _g_hWndMain
	mov	DWORD PTR _tnd$[ebp+4], eax

; 154  :    tnd.uID         = uID;

	mov	ecx, DWORD PTR _uID$[ebp]
	mov	DWORD PTR _tnd$[ebp+8], ecx

; 155  :    tnd.uFlags      = NIF_MESSAGE | NIF_ICON | NIF_TIP;

	mov	DWORD PTR _tnd$[ebp+12], 7

; 156  :    tnd.uCallbackMessage = zWM_NOTIFYICON;  // notification message for message loop

	mov	DWORD PTR _tnd$[ebp+16], 32868		; 00008064H

; 157  :    tnd.hIcon      = hIcon;

	mov	edx, DWORD PTR _hIcon$[ebp]
	mov	DWORD PTR _tnd$[ebp+20], edx

; 158  :    if ( pszTip )

	cmp	DWORD PTR _pszTip$[ebp], 0
	je	SHORT $L57367

; 160  :       zstrncpy( tnd.szTip, pszTip, sizeof( tnd.szTip ) );

	push	64					; 00000040H
	mov	eax, DWORD PTR _pszTip$[ebp]
	push	eax
	lea	ecx, DWORD PTR _tnd$[ebp+24]
	push	ecx
	call	_strncpy
	add	esp, 12					; 0000000cH

; 162  :    else

	jmp	SHORT $L57368
$L57367:

; 164  :       tnd.szTip[ 0 ] = 0;

	mov	BYTE PTR _tnd$[ebp+24], 0
$L57368:

; 166  : 
; 167  :    bRC = Shell_NotifyIcon( dwMessage, &tnd );

	lea	edx, DWORD PTR _tnd$[ebp]
	push	edx
	mov	eax, DWORD PTR _dwMessage$[ebp]
	push	eax
	call	DWORD PTR __imp__Shell_NotifyIconA@8
	mov	BYTE PTR _bRC$[ebp], al

; 168  : 
; 169  :    if ( hIcon )

	cmp	DWORD PTR _hIcon$[ebp], 0
	je	SHORT $L57369

; 170  :        DestroyIcon( hIcon );

	mov	ecx, DWORD PTR _hIcon$[ebp]
	push	ecx
	call	DWORD PTR __imp__DestroyIcon@4
$L57369:

; 171  : 
; 172  :    return( bRC );

	mov	al, BYTE PTR _bRC$[ebp]

; 173  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_TrayMessage ENDP
_TEXT	ENDS
PUBLIC	_SetupSysTray
PUBLIC	??_C@_0P@EBPK@ZEIDON_MONITOR?$AA@		; `string'
EXTRN	__imp__LoadIconA@8:NEAR
EXTRN	__imp__GetWindowTextA@12:NEAR
;	COMDAT ??_C@_0P@EBPK@ZEIDON_MONITOR?$AA@
; File C:\10C\w\oe\KZSCHEDT.C
_DATA	SEGMENT
??_C@_0P@EBPK@ZEIDON_MONITOR?$AA@ DB 'ZEIDON_MONITOR', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hInst$ = 8
_bReturn$ = -136
_hIcon$ = -4
_szTip$ = -132
_SetupSysTray PROC NEAR

; 183  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 136				; 00000088H

; 184  :    zBOOL bReturn = FALSE;

	mov	BYTE PTR _bReturn$[ebp], 0

; 185  :    HICON hIcon = NULL;

	mov	DWORD PTR _hIcon$[ebp], 0

; 186  :    char szTip[ 128 ];
; 187  : 
; 188  :    hIcon = LoadIcon( hInst, "ZEIDON_MONITOR" );

	push	OFFSET FLAT:??_C@_0P@EBPK@ZEIDON_MONITOR?$AA@ ; `string'
	mov	eax, DWORD PTR _hInst$[ebp]
	push	eax
	call	DWORD PTR __imp__LoadIconA@8
	mov	DWORD PTR _hIcon$[ebp], eax

; 189  :    GetWindowText( g_hWndMain, szTip, 127 );

	push	127					; 0000007fH
	lea	ecx, DWORD PTR _szTip$[ebp]
	push	ecx
	mov	edx, DWORD PTR _g_hWndMain
	push	edx
	call	DWORD PTR __imp__GetWindowTextA@12

; 190  :    bReturn = TrayMessage( NIM_ADD, zTRAY_MESSAGE_SHOW, hIcon, szTip );

	lea	eax, DWORD PTR _szTip$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hIcon$[ebp]
	push	ecx
	push	2
	push	0
	call	_TrayMessage
	add	esp, 16					; 00000010H
	mov	BYTE PTR _bReturn$[ebp], al

; 191  : 
; 192  :    return( bReturn );

	mov	al, BYTE PTR _bReturn$[ebp]

; 193  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_SetupSysTray ENDP
_TEXT	ENDS
PUBLIC	_DetachSysTray
_TEXT	SEGMENT
_DetachSysTray PROC NEAR

; 203  : {

	push	ebp
	mov	ebp, esp

; 204  :    TrayMessage( NIM_DELETE, zTRAY_MESSAGE_SHOW, NULL, NULL );

	push	0
	push	0
	push	2
	push	2
	call	_TrayMessage
	add	esp, 16					; 00000010H

; 205  : }

	pop	ebp
	ret	0
_DetachSysTray ENDP
_TEXT	ENDS
PUBLIC	_PostBuild@4
PUBLIC	??_C@_0N@FAGK@KZSchedT?4exe?$AA@		; `string'
EXTRN	__imp__ShowWindow@8:NEAR
EXTRN	__imp__LoadLibraryExA@12:NEAR
EXTRN	__imp__GetWindowLongA@8:NEAR
;	COMDAT ??_C@_0N@FAGK@KZSchedT?4exe?$AA@
; File C:\10C\w\oe\KZSCHEDT.C
_DATA	SEGMENT
??_C@_0N@FAGK@KZSchedT?4exe?$AA@ DB 'KZSchedT.exe', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hLibrary$ = -8
_hInst$ = -4
_PostBuild@4 PROC NEAR

; 214  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 215  :    HMODULE   hLibrary;
; 216  :    HINSTANCE hInst;
; 217  : // zULONG ulWindowHandle;
; 218  : 
; 219  : // g_hWndMain = GetConsoleWindow( );
; 220  : 
; 221  : // GetWindowHandle( &ulWindowHandle, 0, vSubtask, 0 );
; 222  : // g_hWndMain = (HWND) ulWindowHandle;
; 223  : 
; 224  :    hInst = (HINSTANCE) GetWindowLong( g_hWndMain, GWL_HINSTANCE );

	push	-6					; fffffffaH
	mov	eax, DWORD PTR _g_hWndMain
	push	eax
	call	DWORD PTR __imp__GetWindowLongA@8
	mov	DWORD PTR _hInst$[ebp], eax

; 225  : 
; 226  :    ShowWindow( g_hWndMain, SW_HIDE );

	push	0
	mov	ecx, DWORD PTR _g_hWndMain
	push	ecx
	call	DWORD PTR __imp__ShowWindow@8

; 227  : 
; 228  :    hLibrary = LoadLibraryEx( "KZSchedT.exe", 0, LOAD_LIBRARY_AS_DATAFILE );

	push	2
	push	0
	push	OFFSET FLAT:??_C@_0N@FAGK@KZSchedT?4exe?$AA@ ; `string'
	call	DWORD PTR __imp__LoadLibraryExA@12
	mov	DWORD PTR _hLibrary$[ebp], eax

; 229  :    g_hInstRes = (HINSTANCE) hLibrary;

	mov	edx, DWORD PTR _hLibrary$[ebp]
	mov	DWORD PTR _g_hInstRes, edx

; 230  : 
; 231  :    SetupSysTray( g_hInstRes );

	mov	eax, DWORD PTR _g_hInstRes
	push	eax
	call	_SetupSysTray
	add	esp, 4

; 232  : 
; 233  :    return( 0 );

	xor	ax, ax

; 234  : }

	mov	esp, ebp
	pop	ebp
	ret	4
_PostBuild@4 ENDP
_TEXT	ENDS
PUBLIC	_Cleanup@4
_TEXT	SEGMENT
_Cleanup@4 PROC NEAR

; 243  : {

	push	ebp
	mov	ebp, esp

; 244  :    DetachSysTray( ); // remove Icon from systray

	call	_DetachSysTray

; 245  : 
; 246  :    return( 0 );

	xor	ax, ax

; 247  : }

	pop	ebp
	ret	4
_Cleanup@4 ENDP
_TEXT	ENDS
PUBLIC	_Exit@4
_TEXT	SEGMENT
_vSubtask$ = 8
_Exit@4	PROC NEAR

; 256  : {

	push	ebp
	mov	ebp, esp

; 257  :    g_DoWork = FALSE;

	mov	BYTE PTR _g_DoWork, 0

; 258  :    Cleanup( vSubtask );

	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	call	_Cleanup@4

; 259  : 
; 260  :    return( 0 );

	xor	ax, ax

; 261  : }

	pop	ebp
	ret	4
_Exit@4	ENDP
_TEXT	ENDS
PUBLIC	_HandlePopupMenu@12
EXTRN	__imp__TrackPopupMenu@28:NEAR
EXTRN	__imp__IsWindowVisible@4:NEAR
EXTRN	__imp__SetForegroundWindow@4:NEAR
EXTRN	__imp__LoadMenuA@8:NEAR
EXTRN	__imp__PostMessageA@16:NEAR
EXTRN	__imp__GetSubMenu@8:NEAR
_TEXT	SEGMENT
_hWnd$ = 8
_point$ = 12
_hMenu$ = -4
_hMenuTrackPopup$ = -8
_bIsVisible$ = -12
_HandlePopupMenu@12 PROC NEAR

; 274  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 275  : 
; 276  :    HMENU hMenu;
; 277  :    HMENU hMenuTrackPopup;
; 278  :    BOOL  bIsVisible;
; 279  : 
; 280  :    // Get the menu for the windows.
; 281  :    hMenu = LoadMenu( g_hInstRes, MAKEINTRESOURCE( ID_SYSTRAY_MNU ) );

	push	323					; 00000143H
	mov	eax, DWORD PTR _g_hInstRes
	push	eax
	call	DWORD PTR __imp__LoadMenuA@8
	mov	DWORD PTR _hMenu$[ebp], eax

; 282  : 
; 283  :    if ( hMenu == 0 )

	cmp	DWORD PTR _hMenu$[ebp], 0
	jne	SHORT $L57412

; 284  :       return;

	jmp	SHORT $L57405
$L57412:

; 285  : 
; 286  :    // Get the first menu in it which we will use for the call to TrackPopup( ).
; 287  :    // This could also have been created on the fly using CreatePopupMenu and
; 288  :    // then we could have used InsertMenu( ) or AppendMenu.
; 289  :    hMenuTrackPopup = GetSubMenu( hMenu, 0 );

	push	0
	mov	ecx, DWORD PTR _hMenu$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetSubMenu@8
	mov	DWORD PTR _hMenuTrackPopup$[ebp], eax

; 290  : 
; 291  :    // This is required when using a notify icon -- see KB article
; 292  :    // PRB: Menus for Notification Icons Don't Work Correctly
; 293  :    SetForegroundWindow( hWnd );

	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__SetForegroundWindow@4

; 294  : 
; 295  :    bIsVisible = IsWindowVisible( hWnd );

	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__IsWindowVisible@4
	mov	DWORD PTR _bIsVisible$[ebp], eax

; 296  : 
; 297  :    TrackPopupMenu( hMenuTrackPopup, TPM_LEFTBUTTON | TPM_RIGHTBUTTON,
; 298  :                    point.x, point.y, 0, hWnd, NULL );

	push	0
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _point$[ebp+4]
	push	edx
	mov	eax, DWORD PTR _point$[ebp]
	push	eax
	push	2
	mov	ecx, DWORD PTR _hMenuTrackPopup$[ebp]
	push	ecx
	call	DWORD PTR __imp__TrackPopupMenu@28

; 299  : 
; 300  :    // This is required when using a notify icon -- see KB article
; 301  :    // PRB: Menus for Notification Icons Don't Work Correctly
; 302  :    PostMessage( hWnd, WM_USER, 0, 0 );

	push	0
	push	0
	push	1024					; 00000400H
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__PostMessageA@16
$L57405:

; 303  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_HandlePopupMenu@12 ENDP
_TEXT	ENDS
PUBLIC	_WinMain@16
PUBLIC	_InitInstance
PUBLIC	_InitApplication
EXTRN	__imp__GetMessageA@16:NEAR
EXTRN	__imp__TranslateMessage@4:NEAR
EXTRN	__imp__DispatchMessageA@4:NEAR
_TEXT	SEGMENT
_hInst$ = 8
_hPrevInstance$ = 12
_lpCmdLine$ = 16
_nCmdShow$ = 20
_msg$ = -32
_hWnd$ = -4
_WinMain@16 PROC NEAR

; 318  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 319  :    MSG msg;                       // message
; 320  :    HWND hWnd;                     // main window handle
; 321  : 
; 322  :    if ( hPrevInstance == 0 )      // other instances of app running?

	cmp	DWORD PTR _hPrevInstance$[ebp], 0
	jne	SHORT $L57426

; 324  :       if ( InitApplication( hInst ) == 0 ) // initialize shared things

	mov	eax, DWORD PTR _hInst$[ebp]
	push	eax
	call	_InitApplication
	add	esp, 4
	test	eax, eax
	jne	SHORT $L57426

; 325  :          return( FALSE );                  // exit if unable to initialize

	xor	eax, eax
	jmp	SHORT $L57422
$L57426:

; 327  : 
; 328  :    // Perform initializations that apply to a specific instance.
; 329  : 
; 330  :    if ( (hWnd = InitInstance( hInst, nCmdShow, lpCmdLine )) == 0 )

	mov	ecx, DWORD PTR _lpCmdLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _nCmdShow$[ebp]
	push	edx
	mov	eax, DWORD PTR _hInst$[ebp]
	push	eax
	call	_InitInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _hWnd$[ebp], eax
	cmp	DWORD PTR _hWnd$[ebp], 0
	jne	SHORT $L57427

; 331  :       return( FALSE );

	xor	eax, eax
	jmp	SHORT $L57422
$L57427:

; 332  : 
; 333  :    // Set g_nNoUnregister to 0.
; 334  :    g_nNoUnregister = 0;

	mov	DWORD PTR _g_nNoUnregister, 0
$L57429:

; 335  : 
; 336  :    // Acquire and dispatch messages until a WM_QUIT message is received.
; 337  :    while ( GetMessage( &msg,    // message structure
; 338  :                        0,       // handle of window receiving the message
; 339  :                        0,       // lowest message to examine
; 340  :                        0 ) )    // highest message to examine

	push	0
	push	0
	push	0
	lea	ecx, DWORD PTR _msg$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetMessageA@16
	test	eax, eax
	je	SHORT $L57430

; 342  :       TranslateMessage( &msg ); // translate message

	lea	edx, DWORD PTR _msg$[ebp]
	push	edx
	call	DWORD PTR __imp__TranslateMessage@4

; 343  :       DispatchMessage( &msg );  // dispatches message to window

	lea	eax, DWORD PTR _msg$[ebp]
	push	eax
	call	DWORD PTR __imp__DispatchMessageA@4

; 344  :    }

	jmp	SHORT $L57429
$L57430:

; 345  : 
; 346  :    return( msg.wParam );        // returns the value from PostQuitMessage

	mov	eax, DWORD PTR _msg$[ebp+8]
$L57422:

; 347  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_WinMain@16 ENDP
_TEXT	ENDS
PUBLIC	_TimerProc@16
PUBLIC	??_C@_0BC@DDIH@Done?5with?5test?5?$CFu?$AA@	; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
EXTRN	_TraceLineS@8:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\w\oe\KZSCHEDT.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0BC@DDIH@Done?5with?5test?5?$CFu?$AA@
_DATA	SEGMENT
??_C@_0BC@DDIH@Done?5with?5test?5?$CFu?$AA@ DB 'Done with test %u', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_szMsg$ = -100
_TimerProc@16 PROC NEAR

; 351  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 100				; 00000064H

; 352  :    zCHAR  szMsg[ 100 ];
; 353  : #if 0
; 354  :    zVIEW  vView;
; 355  :    zVIEW  vLocalSubtask;
; 356  : 
; 357  :    SfCreateSubtask( &vLocalSubtask, g_vSubtask, "ePamms" );
; 358  :    if ( vLocalSubtask )
; 359  :    {
; 360  :       zCHAR szDateTime[ 30 ];
; 361  : 
; 362  :       SysGetDateTime( szDateTime );
; 363  :       TraceLineI( szDateTime, 0 );
; 364  : 
; 365  :       ActivateObjectInstance( &vView, "mMedCode", vLocalSubtask, 0, zSINGLE );
; 366  :       DropView( vView );
; 367  :       SfDropSubtask( vLocalSubtask, 0 );
; 368  :    }
; 369  : #endif
; 370  : 
; 371  :    // DoWork( vSubtask );
; 372  :    g_ulTestCount++;

	mov	eax, DWORD PTR _g_ulTestCount
	add	eax, 1
	mov	DWORD PTR _g_ulTestCount, eax

; 373  : 
; 374  :    zsprintf( szMsg, "Done with test %u", g_ulTestCount );

	mov	ecx, DWORD PTR _g_ulTestCount
	push	ecx
	push	OFFSET FLAT:??_C@_0BC@DDIH@Done?5with?5test?5?$CFu?$AA@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_sprintf
	add	esp, 12					; 0000000cH

; 375  :    TraceLineS( szMsg, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	call	_TraceLineS@8

; 376  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_TimerProc@16 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BD@LOPD@Close?5running?5test?$AA@	; `string'
PUBLIC	??_C@_0BB@LDCL@Test?5In?5Progress?$AA@		; `string'
PUBLIC	??_C@_08GPBK@zWinSock?$AA@			; `string'
PUBLIC	_MainWndProc@16
EXTRN	_SysMessageBox@16:NEAR
EXTRN	__imp__CloseHandle@4:NEAR
EXTRN	_ProcessZeidonMessage@8:NEAR
EXTRN	_NetClose@8:NEAR
EXTRN	__beginthreadex:NEAR
EXTRN	__imp__GetCursorPos@4:NEAR
EXTRN	__imp__KillTimer@8:NEAR
EXTRN	_NetStatus@8:NEAR
EXTRN	__imp__DefWindowProcA@16:NEAR
EXTRN	__imp__PostQuitMessage@4:NEAR
;	COMDAT ??_C@_0BD@LOPD@Close?5running?5test?$AA@
; File C:\10C\w\oe\KZSCHEDT.C
_DATA	SEGMENT
??_C@_0BD@LOPD@Close?5running?5test?$AA@ DB 'Close running test', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@LDCL@Test?5In?5Progress?$AA@
_DATA	SEGMENT
??_C@_0BB@LDCL@Test?5In?5Progress?$AA@ DB 'Test In Progress', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_08GPBK@zWinSock?$AA@
_DATA	SEGMENT
??_C@_08GPBK@zWinSock?$AA@ DB 'zWinSock', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hWnd$ = 8
_uMsg$ = 12
_wParam$ = 16
_lParam$ = 20
_k$57471 = -4
_point$57483 = -12
_MainWndProc@16 PROC NEAR

; 390  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 391  :    switch ( uMsg )
; 392  :    {

	mov	eax, DWORD PTR _uMsg$[ebp]
	mov	DWORD PTR -16+[ebp], eax
	cmp	DWORD PTR -16+[ebp], 260		; 00000104H
	ja	SHORT $L57577
	cmp	DWORD PTR -16+[ebp], 260		; 00000104H
	je	$L57479
	cmp	DWORD PTR -16+[ebp], 2
	je	$L57464
	cmp	DWORD PTR -16+[ebp], 16			; 00000010H
	je	SHORT $L57457
	cmp	DWORD PTR -16+[ebp], 256		; 00000100H
	je	$L57479
	jmp	$L57484
$L57577:
	cmp	DWORD PTR -16+[ebp], 273		; 00000111H
	je	$L57465
	cmp	DWORD PTR -16+[ebp], 32868		; 00008064H
	je	$L57481
	jmp	$L57484
$L57457:

; 393  :       case WM_CLOSE:
; 394  :          // Check to see if the network is up.
; 395  :          if ( g_bRunningTest )

	xor	ecx, ecx
	mov	cl, BYTE PTR _g_bRunningTest
	test	ecx, ecx
	je	SHORT $L57458

; 397  :             SysMessageBox( 0, "Test In Progress", "Close running test", -1 );

	push	-1
	push	OFFSET FLAT:??_C@_0BD@LOPD@Close?5running?5test?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BB@LDCL@Test?5In?5Progress?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 398  :             return( 0 );

	xor	eax, eax
	jmp	$L57452
$L57458:

; 400  : 
; 401  :          KillTimer( hWnd, 14 );  // 14 just picked out of the hat

	push	14					; 0000000eH
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__KillTimer@8

; 402  :          Exit( g_vSubtask );

	mov	eax, DWORD PTR _g_vSubtask
	push	eax
	call	_Exit@4

; 403  : 
; 404  :          if ( g_vSubtask && NetStatus( g_vSubtask, "zWinSock" ) != 0 )

	cmp	DWORD PTR _g_vSubtask, 0
	je	SHORT $L57461
	push	OFFSET FLAT:??_C@_08GPBK@zWinSock?$AA@	; `string'
	mov	ecx, DWORD PTR _g_vSubtask
	push	ecx
	call	_NetStatus@8
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L57461

; 405  :             NetClose( g_vSubtask, "zWinSock" );

	push	OFFSET FLAT:??_C@_08GPBK@zWinSock?$AA@	; `string'
	mov	eax, DWORD PTR _g_vSubtask
	push	eax
	call	_NetClose@8
$L57461:

; 406  : 
; 407  :          // It's OK to leave, shut down Object Services.
; 408  :          if ( g_nNoUnregister != 99 && g_vSubtask )

	cmp	DWORD PTR _g_nNoUnregister, 99		; 00000063H
	je	SHORT $L57463
	cmp	DWORD PTR _g_vSubtask, 0
	je	SHORT $L57463

; 409  :             UnregisterZeidonApplication( g_vSubtask );

	mov	ecx, DWORD PTR _g_vSubtask
	push	ecx
	call	_UnregisterZeidonApplication@4
$L57463:

; 410  : 
; 411  :          return( DefWindowProc( hWnd, uMsg, wParam, lParam ));

	mov	edx, DWORD PTR _lParam$[ebp]
	push	edx
	mov	eax, DWORD PTR _wParam$[ebp]
	push	eax
	mov	ecx, DWORD PTR _uMsg$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__DefWindowProcA@16
	jmp	$L57452
$L57464:

; 412  : 
; 413  :       case WM_DESTROY:         // window being destroyed
; 414  :          PostQuitMessage( 0 );

	push	0
	call	DWORD PTR __imp__PostQuitMessage@4

; 415  :          break;

	jmp	$L57454
$L57465:

; 416  : 
; 417  :       case WM_COMMAND:
; 418  :          if ( wParam == 114 )  // exit

	cmp	DWORD PTR _wParam$[ebp], 114		; 00000072H
	jne	SHORT $L57466

; 420  :             PostMessage( hWnd, WM_CLOSE, 0, 0L );

	push	0
	push	0
	push	16					; 00000010H
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__PostMessageA@16

; 422  :          else

	jmp	$L57474
$L57466:

; 423  :          if ( wParam == 115 )  // ID_TEST

	cmp	DWORD PTR _wParam$[ebp], 115		; 00000073H
	jne	SHORT $L57474

; 425  :             if ( g_bRunningTest )

	xor	ecx, ecx
	mov	cl, BYTE PTR _g_bRunningTest
	test	ecx, ecx
	je	SHORT $L57469

; 427  :                g_bRunningTest = FALSE;

	mov	BYTE PTR _g_bRunningTest, 0

; 428  :                g_bContinueThreadTest = FALSE;

	mov	BYTE PTR _g_bContinueThreadTest, 0

; 430  :             else

	jmp	SHORT $L57474
$L57469:

; 432  :                int k;
; 433  : 
; 434  :                g_bRunningTest = TRUE;

	mov	BYTE PTR _g_bRunningTest, 1

; 435  :             // SetTimer( hWnd, 0, 100, (TIMERPROC) TimerProc );
; 436  : 
; 437  :                g_bContinueThreadTest = TRUE;

	mov	BYTE PTR _g_bContinueThreadTest, 1

; 438  : 
; 439  :                for ( k = 1; k <= NUM_THREADS; k++ )

	mov	DWORD PTR _k$57471[ebp], 1
	jmp	SHORT $L57472
$L57473:
	mov	edx, DWORD PTR _k$57471[ebp]
	add	edx, 1
	mov	DWORD PTR _k$57471[ebp], edx
$L57472:
	cmp	DWORD PTR _k$57471[ebp], 1
	jg	SHORT $L57474

; 441  :                   g_hTestThread = _beginthreadex( NULL, 0, fnThreadProc2,
; 442  :                                                   (void *) k, 0, &g_dwTestThreadID );

	push	OFFSET FLAT:_g_dwTestThreadID
	push	0
	mov	eax, DWORD PTR _k$57471[ebp]
	push	eax
	push	OFFSET FLAT:_fnThreadProc2@4
	push	0
	push	0
	call	__beginthreadex
	add	esp, 24					; 00000018H
	mov	DWORD PTR _g_hTestThread, eax

; 443  :                   if ( g_hTestThread )

	cmp	DWORD PTR _g_hTestThread, 0
	je	SHORT $L57477

; 444  :                      CloseHandle( (HANDLE) g_hTestThread );

	mov	ecx, DWORD PTR _g_hTestThread
	push	ecx
	call	DWORD PTR __imp__CloseHandle@4
$L57477:

; 445  :                }

	jmp	SHORT $L57473
$L57474:

; 448  : 
; 449  :          break;

	jmp	SHORT $L57454
$L57479:

; 450  : 
; 451  :       case WM_KEYDOWN:
; 452  :       case WM_SYSKEYDOWN:
; 453  :          if ( wParam == VK_F3 )

	cmp	DWORD PTR _wParam$[ebp], 114		; 00000072H
	jne	SHORT $L57480

; 454  :             PostMessage( hWnd, WM_CLOSE, 0, 0L );

	push	0
	push	0
	push	16					; 00000010H
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__PostMessageA@16
$L57480:

; 455  : 
; 456  :          break;

	jmp	SHORT $L57454
$L57481:

; 457  : 
; 458  :       // entry for systray notifications
; 459  :       case zWM_NOTIFYICON:
; 460  :          if ( lParam == WM_RBUTTONDOWN )

	cmp	DWORD PTR _lParam$[ebp], 516		; 00000204H
	jne	SHORT $L57482

; 462  :             POINT point;
; 463  : 
; 464  :             GetCursorPos( &point );

	lea	eax, DWORD PTR _point$57483[ebp]
	push	eax
	call	DWORD PTR __imp__GetCursorPos@4

; 465  :             HandlePopupMenu( hWnd, point );

	mov	ecx, DWORD PTR _point$57483[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _point$57483[ebp]
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	_HandlePopupMenu@12
$L57482:

; 467  : 
; 468  :          break;

	jmp	SHORT $L57454
$L57484:

; 469  : 
; 470  :       default:
; 471  :          if ( uMsg == g_wClientMessage )

	xor	ecx, ecx
	mov	cx, WORD PTR _g_wClientMessage
	cmp	DWORD PTR _uMsg$[ebp], ecx
	jne	SHORT $L57485

; 472  :             ProcessZeidonMessage( wParam, lParam );

	mov	edx, DWORD PTR _lParam$[ebp]
	push	edx
	mov	eax, DWORD PTR _wParam$[ebp]
	push	eax
	call	_ProcessZeidonMessage@8
$L57485:
$L57454:

; 476  : 
; 477  :    return( DefWindowProc( hWnd, uMsg, wParam, lParam ));

	mov	ecx, DWORD PTR _lParam$[ebp]
	push	ecx
	mov	edx, DWORD PTR _wParam$[ebp]
	push	edx
	mov	eax, DWORD PTR _uMsg$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__DefWindowProcA@16
$L57452:

; 478  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_MainWndProc@16 ENDP
_TEXT	ENDS
PUBLIC	??_C@_08CFNG@KZSCHEDT?$AA@			; `string'
EXTRN	__imp__LoadCursorA@8:NEAR
EXTRN	__imp__GetStockObject@4:NEAR
EXTRN	__imp__RegisterClassA@4:NEAR
;	COMDAT ??_C@_08CFNG@KZSCHEDT?$AA@
; File C:\10C\w\oe\KZSCHEDT.C
_DATA	SEGMENT
??_C@_08CFNG@KZSCHEDT?$AA@ DB 'KZSCHEDT', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hInst$ = 8
_wc$ = -40
_InitApplication PROC NEAR

; 489  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H

; 490  :    WNDCLASS  wc;
; 491  : 
; 492  :    // Fill in window class structure with parameters that describe the main window.
; 493  : 
; 494  :    wc.style = 0;                       // Class style(s).

	mov	DWORD PTR _wc$[ebp], 0

; 495  :    wc.lpfnWndProc = MainWndProc;       // Function to retrieve messages for

	mov	DWORD PTR _wc$[ebp+4], OFFSET FLAT:_MainWndProc@16

; 496  :                                        // windows of this class.
; 497  :    wc.cbClsExtra = 0;                  // No per-class extra data.

	mov	DWORD PTR _wc$[ebp+8], 0

; 498  :    wc.cbWndExtra = 0;                  // No per-window extra data.

	mov	DWORD PTR _wc$[ebp+12], 0

; 499  :    wc.hInstance = hInst;           // Application that owns the class.

	mov	eax, DWORD PTR _hInst$[ebp]
	mov	DWORD PTR _wc$[ebp+16], eax

; 500  :    wc.hIcon = LoadIcon( hInst, "KZSCHEDT" );

	push	OFFSET FLAT:??_C@_08CFNG@KZSCHEDT?$AA@	; `string'
	mov	ecx, DWORD PTR _hInst$[ebp]
	push	ecx
	call	DWORD PTR __imp__LoadIconA@8
	mov	DWORD PTR _wc$[ebp+20], eax

; 501  :    wc.hCursor = LoadCursor( 0, IDC_ARROW );

	push	32512					; 00007f00H
	push	0
	call	DWORD PTR __imp__LoadCursorA@8
	mov	DWORD PTR _wc$[ebp+24], eax

; 502  :    wc.hbrBackground = GetStockObject( WHITE_BRUSH );

	push	0
	call	DWORD PTR __imp__GetStockObject@4
	mov	DWORD PTR _wc$[ebp+28], eax

; 503  :    wc.lpszMenuName =  0;               // Name of menu resource in .RC file.

	mov	DWORD PTR _wc$[ebp+32], 0

; 504  :    wc.lpszClassName = g_szClassName;     // Name used in call to CreateWindow.

	mov	DWORD PTR _wc$[ebp+36], OFFSET FLAT:_g_szClassName

; 505  : 
; 506  :    // Register the window class and return success/failure code.
; 507  :    return( RegisterClass( &wc ) );

	lea	edx, DWORD PTR _wc$[ebp]
	push	edx
	call	DWORD PTR __imp__RegisterClassA@4
	and	eax, 65535				; 0000ffffH

; 508  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_InitApplication ENDP
_TEXT	ENDS
PUBLIC	??_C@_0P@PCOP@Task?5Scheduler?$AA@		; `string'
PUBLIC	??_C@_0BB@BOFH@Done?5registering?$AA@		; `string'
EXTRN	__imp__CreateWindowExA@48:NEAR
EXTRN	__imp__DestroyWindow@4:NEAR
EXTRN	__imp__RegisterWindowMessageA@4:NEAR
EXTRN	__imp__SetTimer@16:NEAR
EXTRN	__imp__GetSystemMetrics@4:NEAR
;	COMDAT ??_C@_0P@PCOP@Task?5Scheduler?$AA@
; File C:\10C\w\oe\KZSCHEDT.C
_DATA	SEGMENT
??_C@_0P@PCOP@Task?5Scheduler?$AA@ DB 'Task Scheduler', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@BOFH@Done?5registering?$AA@
_DATA	SEGMENT
??_C@_0BB@BOFH@Done?5registering?$AA@ DB 'Done registering', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hInst$ = 8
_nHeight$ = -16
_nPosY$ = -8
_nWidth$ = -12
_nPosX$ = -4
_InitInstance PROC NEAR

; 530  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 531  :    int   nHeight, nPosY;
; 532  :    int   nWidth, nPosX;
; 533  : 
; 534  :    // Save the instance handle in static variable, which will be used in many subsequent
; 535  :    // calls from this application to Windows.
; 536  : 
; 537  :    g_hInst = hInst;

	mov	eax, DWORD PTR _hInst$[ebp]
	mov	DWORD PTR _g_hInst, eax

; 538  : 
; 539  :    // Get the dimensions of the screen.
; 540  :    nWidth = GetSystemMetrics( SM_CXSCREEN );

	push	0
	call	DWORD PTR __imp__GetSystemMetrics@4
	mov	DWORD PTR _nWidth$[ebp], eax

; 541  :    nHeight = GetSystemMetrics( SM_CYSCREEN );

	push	1
	call	DWORD PTR __imp__GetSystemMetrics@4
	mov	DWORD PTR _nHeight$[ebp], eax

; 542  :    nWidth /= 4;

	mov	eax, DWORD PTR _nWidth$[ebp]
	cdq
	and	edx, 3
	add	eax, edx
	sar	eax, 2
	mov	DWORD PTR _nWidth$[ebp], eax

; 543  :    nHeight /= 4;

	mov	eax, DWORD PTR _nHeight$[ebp]
	cdq
	and	edx, 3
	add	eax, edx
	sar	eax, 2
	mov	DWORD PTR _nHeight$[ebp], eax

; 544  :    nWidth -= 40;

	mov	ecx, DWORD PTR _nWidth$[ebp]
	sub	ecx, 40					; 00000028H
	mov	DWORD PTR _nWidth$[ebp], ecx

; 545  :    nHeight -= 20;

	mov	edx, DWORD PTR _nHeight$[ebp]
	sub	edx, 20					; 00000014H
	mov	DWORD PTR _nHeight$[ebp], edx

; 546  :    nPosX = nWidth / 2;

	mov	eax, DWORD PTR _nWidth$[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	mov	DWORD PTR _nPosX$[ebp], eax

; 547  :    nPosY = nHeight / 2;

	mov	eax, DWORD PTR _nHeight$[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	mov	DWORD PTR _nPosY$[ebp], eax

; 548  :    nPosX -= 8; // so it doesn't occupy same space as object services

	mov	eax, DWORD PTR _nPosX$[ebp]
	sub	eax, 8
	mov	DWORD PTR _nPosX$[ebp], eax

; 549  :    nPosY -= 8;

	mov	ecx, DWORD PTR _nPosY$[ebp]
	sub	ecx, 8
	mov	DWORD PTR _nPosY$[ebp], ecx

; 550  : 
; 551  :    // Create a main window for this application instance.
; 552  :    g_hWndMain = CreateWindow( g_szClassName,                // see RegisterClass( ) call
; 553  :                             "Task Scheduler",               // text for window title bar
; 554  :                             WS_OVERLAPPEDWINDOW,            // window style
; 555  :                             nPosX,                          // default horizontal position
; 556  :                             nPosY,                          // default vertical position
; 557  :                             nWidth,                         // default width
; 558  :                             nHeight,                        // default height
; 559  :                             0,                              // overlapped windows have no parent
; 560  :                             LoadMenu( hInst, "KZSCHEDT" ),  // menu for task scheduler window
; 561  :                          // 0,                              // use default menu
; 562  :                             hInst,                          // this instance owns this window
; 563  :                             0 );                            // pointer not needed

	push	0
	mov	edx, DWORD PTR _hInst$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_08CFNG@KZSCHEDT?$AA@	; `string'
	mov	eax, DWORD PTR _hInst$[ebp]
	push	eax
	call	DWORD PTR __imp__LoadMenuA@8
	push	eax
	push	0
	mov	ecx, DWORD PTR _nHeight$[ebp]
	push	ecx
	mov	edx, DWORD PTR _nWidth$[ebp]
	push	edx
	mov	eax, DWORD PTR _nPosY$[ebp]
	push	eax
	mov	ecx, DWORD PTR _nPosX$[ebp]
	push	ecx
	push	13565952				; 00cf0000H
	push	OFFSET FLAT:??_C@_0P@PCOP@Task?5Scheduler?$AA@ ; `string'
	push	OFFSET FLAT:_g_szClassName
	push	0
	call	DWORD PTR __imp__CreateWindowExA@48
	mov	DWORD PTR _g_hWndMain, eax

; 564  : 
; 565  : 
; 566  :    if ( g_hWndMain == 0 )  // if window could not be created, return "failure"

	cmp	DWORD PTR _g_hWndMain, 0
	jne	SHORT $L57506

; 567  :       return( FALSE );

	xor	eax, eax
	jmp	$L57500
$L57506:

; 568  : 
; 569  :    g_wClientMessage = RegisterWindowMessage( "KZSCHEDT" );

	push	OFFSET FLAT:??_C@_08CFNG@KZSCHEDT?$AA@	; `string'
	call	DWORD PTR __imp__RegisterWindowMessageA@4
	mov	WORD PTR _g_wClientMessage, ax

; 570  : 
; 571  :    if ( RegisterZeidonApplication( &g_vSubtask, (zLONG) g_hInst,
; 572  :                                    (zLONG) g_hWndMain,
; 573  :                                    (zLONG) g_wClientMessage,
; 574  :                                    "\\\\ePamms\\", 0, 0 ) != 0 )

	push	0
	push	0
	push	OFFSET FLAT:??_C@_09MMJL@?2?2ePamms?2?$AA@ ; `string'
	xor	edx, edx
	mov	dx, WORD PTR _g_wClientMessage
	push	edx
	mov	eax, DWORD PTR _g_hWndMain
	push	eax
	mov	ecx, DWORD PTR _g_hInst
	push	ecx
	push	OFFSET FLAT:_g_vSubtask
	call	_RegisterZeidonApplication@28
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L57510

; 577  :       DestroyWindow( g_hWndMain );

	mov	eax, DWORD PTR _g_hWndMain
	push	eax
	call	DWORD PTR __imp__DestroyWindow@4

; 578  :       return( FALSE );

	xor	eax, eax
	jmp	SHORT $L57500
$L57510:

; 580  : 
; 581  :    // Make the window visible ... will be undone in PostBuild.
; 582  :    ShowWindow( g_hWndMain, SW_SHOW );  // show the window

	push	5
	mov	ecx, DWORD PTR _g_hWndMain
	push	ecx
	call	DWORD PTR __imp__ShowWindow@8

; 583  :    TraceLineS( "Done registering", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BB@BOFH@Done?5registering?$AA@ ; `string'
	call	_TraceLineS@8

; 584  : 
; 585  : // PostBuild( g_vSubtask );
; 586  :    SetTimer( g_hWndMain, 14, 5000, (TIMERPROC) TimerProc );    // 14 just picked out of the hat ... 5 second timeout

	push	OFFSET FLAT:_TimerProc@16
	push	5000					; 00001388H
	push	14					; 0000000eH
	mov	edx, DWORD PTR _g_hWndMain
	push	edx
	call	DWORD PTR __imp__SetTimer@16

; 587  : 
; 588  :    return( g_hWndMain );

	mov	eax, DWORD PTR _g_hWndMain
$L57500:

; 589  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_InitInstance ENDP
_TEXT	ENDS
END
