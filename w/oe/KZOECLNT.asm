	TITLE	C:\10C\w\oe\KZOECLNT.C
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
;	COMDAT ??_C@_06BPHG@?$CFd?3?5?$CFs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@IHIM@Starting?5thread?5test?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09CLFF@?2?2Zencas?2?$AA@
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
;	COMDAT ??_C@_06GLEP@Zencas?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08PALJ@mMedCode?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@GMBI@Done?5with?5test?5?$CFld?$AA@
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
;	COMDAT ??_C@_0P@CKPE@Where?5yourself?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01PKMN@?$DP?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08FLEO@KZOECLNT?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@OBCJ@Test?5Client?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@GAJF@Trace?5Window?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07NOMM@ListBox?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08BAE@?2?2Zencas?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CA@JJJG@laskjdflkasjdflkjasdlfkjasdlkfj?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@BOFH@Done?5registering?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_szClassName
PUBLIC	_g_bRunningTest
PUBLIC	_g_lTestCount
PUBLIC	_g_bContinueThreadTest
PUBLIC	_g_bTestThreadStarted
PUBLIC	_g_hTestThread
PUBLIC	_g_dwTestThreadID
PUBLIC	_bThreadRegistered
_DATA	SEGMENT
COMM	_hInst:DWORD
COMM	_hListWnd:DWORD
COMM	_hMainWnd:DWORD
COMM	_wClientMessage:WORD
COMM	_nNoUnregister:DWORD
COMM	_vSubtask:DWORD
_DATA	ENDS
_BSS	SEGMENT
_g_bRunningTest DB 01H DUP (?)
	ALIGN	4

_g_lTestCount DD 01H DUP (?)
_g_bContinueThreadTest DB 01H DUP (?)
	ALIGN	4

_g_bTestThreadStarted DB 01H DUP (?)
	ALIGN	4

_g_hTestThread DD 01H DUP (?)
_g_dwTestThreadID DD 01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
_szClassName DB	'KZOECLNTClass', 00H
_DATA	ENDS
_TLS	SEGMENT
_bThreadRegistered DB 00H
_TLS	ENDS
PUBLIC	??_C@_06BPHG@?$CFd?3?5?$CFs?$AA@		; `string'
PUBLIC	_fnTrace
EXTRN	__imp__SendMessageA@16:NEAR
EXTRN	_sprintf:NEAR
;	COMDAT ??_C@_06BPHG@?$CFd?3?5?$CFs?$AA@
; File C:\10C\w\oe\KZOECLNT.C
_DATA	SEGMENT
??_C@_06BPHG@?$CFd?3?5?$CFs?$AA@ DB '%d: %s', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_szMsg$ = -2000
_nThreadNumber$ = 8
_pchMsg$ = 12
_wItemCount$ = -2004
_fnTrace PROC NEAR

; 74   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 2004				; 000007d4H

; 75   :    WORD wItemCount;
; 76   :    char szMsg[ 2000 ];
; 77   : 
; 78   :    zsprintf( szMsg, "%d: %s", nThreadNumber, pchMsg );

	mov	eax, DWORD PTR _pchMsg$[ebp]
	push	eax
	movsx	ecx, WORD PTR _nThreadNumber$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_06BPHG@?$CFd?3?5?$CFs?$AA@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_sprintf
	add	esp, 16					; 00000010H

; 79   :    wItemCount = (WORD) SendMessage( hListWnd, LB_ADDSTRING, 0, (zLONG) szMsg );

	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	push	0
	push	384					; 00000180H
	mov	ecx, DWORD PTR _hListWnd
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16
	mov	WORD PTR _wItemCount$[ebp], ax

; 80   :    if ( wItemCount > 4000 )

	mov	edx, DWORD PTR _wItemCount$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 4000				; 00000fa0H
	jle	SHORT $L57348

; 82   :       SendMessage( hListWnd, LB_RESETCONTENT, 0, 0 );

	push	0
	push	0
	push	388					; 00000184H
	mov	eax, DWORD PTR _hListWnd
	push	eax
	call	DWORD PTR __imp__SendMessageA@16

; 83   :       wItemCount = 0;

	mov	WORD PTR _wItemCount$[ebp], 0
$L57348:

; 85   : 
; 86   :    SendMessage( hListWnd, LB_SETCURSEL, wItemCount, 0L );

	push	0
	mov	ecx, DWORD PTR _wItemCount$[ebp]
	and	ecx, 65535				; 0000ffffH
	push	ecx
	push	390					; 00000186H
	mov	edx, DWORD PTR _hListWnd
	push	edx
	call	DWORD PTR __imp__SendMessageA@16

; 87   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnTrace ENDP
_TEXT	ENDS
PUBLIC	_fnThreadProc2@4
PUBLIC	??_C@_0BF@IHIM@Starting?5thread?5test?$AA@	; `string'
PUBLIC	??_C@_09CLFF@?2?2Zencas?2?$AA@			; `string'
PUBLIC	??_C@_0BK@IIEB@Completed?5thread?5register?$AA@	; `string'
PUBLIC	??_C@_05LFHN@mUser?$AA@				; `string'
PUBLIC	??_C@_0CI@CFEF@?9?9?9?9?9?5ERROR?5activating?5mUser?5?9?9?9@ ; `string'
PUBLIC	??_C@_0BJ@EFAB@Thread?5test?5?$CD?$CFd?0?5rc?5?$DN?5?$CFd?$AA@ ; `string'
PUBLIC	??_C@_0BP@CIEI@Completed?5thread?5UN?$CI?$CB?$CJregister?$AA@ ; `string'
PUBLIC	??_C@_0BG@NCBJ@Completed?5thread?5test?$AA@	; `string'
EXTRN	_ActivateObjectInstance@20:NEAR
EXTRN	__tls_index:DWORD
EXTRN	__tls_array:DWORD
EXTRN	__imp__Sleep@4:NEAR
EXTRN	_DropView@4:NEAR
EXTRN	_RegisterZeidonApplication@28:NEAR
EXTRN	_UnregisterZeidonApplication@4:NEAR
EXTRN	_SysGetDateTime@4:NEAR
;	COMDAT ??_C@_0BF@IHIM@Starting?5thread?5test?$AA@
; File C:\10C\w\oe\KZOECLNT.C
_DATA	SEGMENT
??_C@_0BF@IHIM@Starting?5thread?5test?$AA@ DB 'Starting thread test', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_09CLFF@?2?2Zencas?2?$AA@
_DATA	SEGMENT
??_C@_09CLFF@?2?2Zencas?2?$AA@ DB '\\Zencas\', 00H	; `string'
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
_szDateTime$57364 = -252
_fnThreadProc2@4 PROC NEAR

; 91   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 256				; 00000100H

; 92   :    zVIEW  vSubtask;
; 93   :    zLONG  nCount = 0;

	mov	DWORD PTR _nCount$[ebp], 0

; 94   :    zVIEW  vView;
; 95   :    char   szMsg[ 200 ];
; 96   :    zSHORT nRC;
; 97   :    zSHORT nThreadNumber = (zSHORT) p;

	mov	ax, WORD PTR _p$[ebp]
	mov	WORD PTR _nThreadNumber$[ebp], ax

; 98   : 
; 99   :    TRACE( nThreadNumber, "Starting thread test" );

	push	OFFSET FLAT:??_C@_0BF@IHIM@Starting?5thread?5test?$AA@ ; `string'
	mov	cx, WORD PTR _nThreadNumber$[ebp]
	push	ecx
	call	_fnTrace
	add	esp, 8
$L57362:

; 100  : 
; 101  :    while ( g_bContinueThreadTest )

	xor	edx, edx
	mov	dl, BYTE PTR _g_bContinueThreadTest
	test	edx, edx
	je	$L57363

; 103  :       zCHAR szDateTime[ 30 ];
; 104  : 
; 105  :       if ( !bThreadRegistered )

	mov	eax, DWORD PTR __tls_index
	mov	ecx, DWORD PTR fs:__tls_array
	mov	edx, DWORD PTR [ecx+eax*4]
	xor	eax, eax
	mov	al, BYTE PTR _bThreadRegistered[edx]
	test	eax, eax
	jne	SHORT $L57365

; 107  :          if ( RegisterZeidonApplication( &vSubtask,
; 108  :                                          (zLONG) hInst,
; 109  :                                          (zLONG) hMainWnd,
; 110  :                                          (zLONG) wClientMessage,
; 111  :                                          "\\\\Zencas\\", 0, 0 ) == zCALL_ERROR )

	push	0
	push	0
	push	OFFSET FLAT:??_C@_09CLFF@?2?2Zencas?2?$AA@ ; `string'
	xor	ecx, ecx
	mov	cx, WORD PTR _wClientMessage
	push	ecx
	mov	edx, DWORD PTR _hMainWnd
	push	edx
	mov	eax, DWORD PTR _hInst
	push	eax
	lea	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	call	_RegisterZeidonApplication@28
	movsx	edx, ax
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L57369

; 113  :             g_dwTestThreadID = 0;

	mov	DWORD PTR _g_dwTestThreadID, 0

; 114  :             return( 0 );

	xor	eax, eax
	jmp	$L57352
$L57369:

; 116  : 
; 117  :          bThreadRegistered = TRUE;

	mov	eax, DWORD PTR __tls_index
	mov	ecx, DWORD PTR fs:__tls_array
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	BYTE PTR _bThreadRegistered[edx], 1

; 118  :          TRACE( nThreadNumber, "Completed thread register" );

	push	OFFSET FLAT:??_C@_0BK@IIEB@Completed?5thread?5register?$AA@ ; `string'
	mov	ax, WORD PTR _nThreadNumber$[ebp]
	push	eax
	call	_fnTrace
	add	esp, 8
$L57365:

; 120  : 
; 121  :    // if ( nThreadNumber == 2 )
; 122  :    //    Sleep( 500 );
; 123  :       Sleep( 100 * ((nThreadNumber % 5) + 1) );

	movsx	eax, WORD PTR _nThreadNumber$[ebp]
	cdq
	mov	ecx, 5
	idiv	ecx
	add	edx, 1
	imul	edx, 100				; 00000064H
	push	edx
	call	DWORD PTR __imp__Sleep@4

; 124  : 
; 125  :    // SysMutexLock( "KZOECLNT/1", 0, 0 );
; 126  :    // TRACE( nThreadNumber, "Mutex locked" );
; 127  : 
; 128  :       SysGetDateTime( szDateTime );

	lea	edx, DWORD PTR _szDateTime$57364[ebp]
	push	edx
	call	_SysGetDateTime@4

; 129  :       TRACE( nThreadNumber, szDateTime );

	lea	eax, DWORD PTR _szDateTime$57364[ebp]
	push	eax
	mov	cx, WORD PTR _nThreadNumber$[ebp]
	push	ecx
	call	_fnTrace
	add	esp, 8

; 130  : 
; 131  :       nRC = ActivateObjectInstance( &vView, "mUser", vSubtask, 0, zSINGLE );

	push	0
	push	0
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_05LFHN@mUser?$AA@	; `string'
	lea	eax, DWORD PTR _vView$[ebp]
	push	eax
	call	_ActivateObjectInstance@20
	mov	WORD PTR _nRC$[ebp], ax

; 132  :       if ( nRC >= 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jl	SHORT $L57373

; 133  :          DropView( vView );

	mov	edx, DWORD PTR _vView$[ebp]
	push	edx
	call	_DropView@4

; 134  :       else

	jmp	SHORT $L57374
$L57373:

; 135  :          TRACE( nThreadNumber, "----- ERROR activating mUser --------- " );

	push	OFFSET FLAT:??_C@_0CI@CFEF@?9?9?9?9?9?5ERROR?5activating?5mUser?5?9?9?9@ ; `string'
	mov	ax, WORD PTR _nThreadNumber$[ebp]
	push	eax
	call	_fnTrace
	add	esp, 8
$L57374:

; 136  : 
; 137  :       zsprintf( szMsg, "Thread test #%d, rc = %d", nCount++, nRC );

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

; 138  :       TRACE( nThreadNumber, szMsg );

	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	mov	cx, WORD PTR _nThreadNumber$[ebp]
	push	ecx
	call	_fnTrace
	add	esp, 8

; 139  : 
; 140  :    // SysMutexUnlock( "KZOECLNT/1" );
; 141  :    // TRACE( nThreadNumber, "Mutex unlocked" );
; 142  : 
; 143  :       // Unregister every third time or so.
; 144  :       if ( nCount % 3 == 0 )

	mov	eax, DWORD PTR _nCount$[ebp]
	cdq
	mov	ecx, 3
	idiv	ecx
	test	edx, edx
	jne	SHORT $L57377

; 146  :          UnregisterZeidonApplication( vSubtask );

	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_UnregisterZeidonApplication@4

; 147  :          vSubtask = 0;

	mov	DWORD PTR _vSubtask$[ebp], 0

; 148  :          bThreadRegistered = FALSE;

	mov	eax, DWORD PTR __tls_index
	mov	ecx, DWORD PTR fs:__tls_array
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	BYTE PTR _bThreadRegistered[edx], 0

; 149  :          TRACE( nThreadNumber, "Completed thread UN(!)register" );

	push	OFFSET FLAT:??_C@_0BP@CIEI@Completed?5thread?5UN?$CI?$CB?$CJregister?$AA@ ; `string'
	mov	ax, WORD PTR _nThreadNumber$[ebp]
	push	eax
	call	_fnTrace
	add	esp, 8
$L57377:

; 151  :    }

	jmp	$L57362
$L57363:

; 152  : 
; 153  :    if ( bThreadRegistered )

	mov	ecx, DWORD PTR __tls_index
	mov	edx, DWORD PTR fs:__tls_array
	mov	eax, DWORD PTR [edx+ecx*4]
	xor	ecx, ecx
	mov	cl, BYTE PTR _bThreadRegistered[eax]
	test	ecx, ecx
	je	SHORT $L57379

; 155  :       UnregisterZeidonApplication( vSubtask );

	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_UnregisterZeidonApplication@4

; 156  :       vSubtask = 0;

	mov	DWORD PTR _vSubtask$[ebp], 0

; 157  :       bThreadRegistered = FALSE;

	mov	eax, DWORD PTR __tls_index
	mov	ecx, DWORD PTR fs:__tls_array
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	BYTE PTR _bThreadRegistered[edx], 0

; 158  :       TRACE( nThreadNumber, "Completed thread UN(!)register" );

	push	OFFSET FLAT:??_C@_0BP@CIEI@Completed?5thread?5UN?$CI?$CB?$CJregister?$AA@ ; `string'
	mov	ax, WORD PTR _nThreadNumber$[ebp]
	push	eax
	call	_fnTrace
	add	esp, 8
$L57379:

; 160  : 
; 161  :    g_dwTestThreadID = 0;

	mov	DWORD PTR _g_dwTestThreadID, 0

; 162  :    TRACE( nThreadNumber, "Completed thread test" );

	push	OFFSET FLAT:??_C@_0BG@NCBJ@Completed?5thread?5test?$AA@ ; `string'
	mov	cx, WORD PTR _nThreadNumber$[ebp]
	push	ecx
	call	_fnTrace
	add	esp, 8

; 163  : 
; 164  :    return( 0 );

	xor	eax, eax
$L57352:

; 165  : }

	mov	esp, ebp
	pop	ebp
	ret	4
_fnThreadProc2@4 ENDP
_TEXT	ENDS
PUBLIC	_WinMain@16
PUBLIC	_InitInstance
PUBLIC	_InitApplication
EXTRN	__imp__GetMessageA@16:NEAR
EXTRN	__imp__TranslateMessage@4:NEAR
EXTRN	__imp__DispatchMessageA@4:NEAR
_TEXT	SEGMENT
_hInstance$ = 8
_hPrevInstance$ = 12
_lpCmdLine$ = 16
_nCmdShow$ = 20
_msg$ = -32
_hWnd$ = -4
_WinMain@16 PROC NEAR

; 182  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 183  :    MSG msg;                       // message
; 184  :    HWND hWnd;                     // Main window handle
; 185  : 
; 186  :    if (!hPrevInstance)                  // Other instances of app running?

	cmp	DWORD PTR _hPrevInstance$[ebp], 0
	jne	SHORT $L57393

; 188  :       if (!InitApplication( hInstance )) // Initialize shared things

	mov	eax, DWORD PTR _hInstance$[ebp]
	push	eax
	call	_InitApplication
	add	esp, 4
	test	eax, eax
	jne	SHORT $L57393

; 189  :          return( FALSE );               // Exits if unable to initialize

	xor	eax, eax
	jmp	SHORT $L57389
$L57393:

; 191  : 
; 192  :    // Perform initializations that apply to a specific instance
; 193  : 
; 194  :    if ( !(hWnd = InitInstance( hInstance, nCmdShow, lpCmdLine )) )

	mov	ecx, DWORD PTR _lpCmdLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _nCmdShow$[ebp]
	push	edx
	mov	eax, DWORD PTR _hInstance$[ebp]
	push	eax
	call	_InitInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _hWnd$[ebp], eax
	cmp	DWORD PTR _hWnd$[ebp], 0
	jne	SHORT $L57394

; 195  :       return( FALSE );

	xor	eax, eax
	jmp	SHORT $L57389
$L57394:

; 196  : 
; 197  :    // Set nNoUnregister to 0
; 198  :    nNoUnregister = 0;

	mov	DWORD PTR _nNoUnregister, 0
$L57396:

; 199  : 
; 200  :    // Acquire and dispatch messages until a WM_QUIT message is received.
; 201  : 
; 202  :    while ( GetMessage( &msg,    // message structure
; 203  :                        0,       // handle of window receiving the message
; 204  :                        0,       // lowest message to examine
; 205  :                        0 ) )    // highest message to examine

	push	0
	push	0
	push	0
	lea	ecx, DWORD PTR _msg$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetMessageA@16
	test	eax, eax
	je	SHORT $L57397

; 207  :       TranslateMessage( &msg ); // Translate message

	lea	edx, DWORD PTR _msg$[ebp]
	push	edx
	call	DWORD PTR __imp__TranslateMessage@4

; 208  :       DispatchMessage( &msg );  // Dispatches message to window

	lea	eax, DWORD PTR _msg$[ebp]
	push	eax
	call	DWORD PTR __imp__DispatchMessageA@4

; 209  :    }

	jmp	SHORT $L57396
$L57397:

; 210  : 
; 211  :    return( msg.wParam );        // Returns the value from PostQuitMessage

	mov	eax, DWORD PTR _msg$[ebp+8]
$L57389:

; 212  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_WinMain@16 ENDP
_TEXT	ENDS
PUBLIC	_TimerProc@16
PUBLIC	??_C@_06GLEP@Zencas?$AA@			; `string'
PUBLIC	??_C@_08PALJ@mMedCode?$AA@			; `string'
PUBLIC	??_C@_0BD@GMBI@Done?5with?5test?5?$CFld?$AA@	; `string'
EXTRN	_SfCreateSubtask@12:NEAR
EXTRN	_SfDropSubtask@8:NEAR
EXTRN	__imp__KillTimer@8:NEAR
;	COMDAT ??_C@_06GLEP@Zencas?$AA@
; File C:\10C\w\oe\KZOECLNT.C
_DATA	SEGMENT
??_C@_06GLEP@Zencas?$AA@ DB 'Zencas', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08PALJ@mMedCode?$AA@
_DATA	SEGMENT
??_C@_08PALJ@mMedCode?$AA@ DB 'mMedCode', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@GMBI@Done?5with?5test?5?$CFld?$AA@
_DATA	SEGMENT
??_C@_0BD@GMBI@Done?5with?5test?5?$CFld?$AA@ DB 'Done with test %ld', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hWnd$ = 8
_idEvent$ = 16
_vView$ = -104
_vLocalSubtask$ = -108
_szMsg$ = -100
_szDateTime$57414 = -140
_TimerProc@16 PROC NEAR

; 216  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 144				; 00000090H

; 217  :    zVIEW  vView;
; 218  :    zVIEW  vLocalSubtask;
; 219  :    zCHAR  szMsg[ 100 ];
; 220  : 
; 221  :    if ( g_lTestCount % 50 == 0 )

	mov	eax, DWORD PTR _g_lTestCount
	xor	edx, edx
	mov	ecx, 50					; 00000032H
	div	ecx
	test	edx, edx
	jne	SHORT $L57411

; 222  :       SendMessage( hListWnd, LB_RESETCONTENT, 0, 0 );

	push	0
	push	0
	push	388					; 00000184H
	mov	edx, DWORD PTR _hListWnd
	push	edx
	call	DWORD PTR __imp__SendMessageA@16
$L57411:

; 223  : 
; 224  :    SfCreateSubtask( &vLocalSubtask, vSubtask, "Zencas" );

	push	OFFSET FLAT:??_C@_06GLEP@Zencas?$AA@	; `string'
	mov	eax, DWORD PTR _vSubtask
	push	eax
	lea	ecx, DWORD PTR _vLocalSubtask$[ebp]
	push	ecx
	call	_SfCreateSubtask@12

; 225  :    if ( vSubtask )

	cmp	DWORD PTR _vSubtask, 0
	je	SHORT $L57413

; 227  :       zCHAR szDateTime[ 30 ];
; 228  : 
; 229  :       SysGetDateTime( szDateTime );

	lea	edx, DWORD PTR _szDateTime$57414[ebp]
	push	edx
	call	_SysGetDateTime@4

; 230  :       TRACE( 0, szDateTime );

	lea	eax, DWORD PTR _szDateTime$57414[ebp]
	push	eax
	push	0
	call	_fnTrace
	add	esp, 8

; 231  : 
; 232  :       ActivateObjectInstance( &vView, "mMedCode", vSubtask, 0, zSINGLE );

	push	0
	push	0
	mov	ecx, DWORD PTR _vSubtask
	push	ecx
	push	OFFSET FLAT:??_C@_08PALJ@mMedCode?$AA@	; `string'
	lea	edx, DWORD PTR _vView$[ebp]
	push	edx
	call	_ActivateObjectInstance@20

; 233  :       DropView( vView );

	mov	eax, DWORD PTR _vView$[ebp]
	push	eax
	call	_DropView@4

; 234  :       SfDropSubtask( vSubtask, 0 );

	push	0
	mov	ecx, DWORD PTR _vSubtask
	push	ecx
	call	_SfDropSubtask@8
$L57413:

; 236  : 
; 237  : 
; 238  :    zsprintf( szMsg, "Done with test %ld", g_lTestCount++ );

	mov	edx, DWORD PTR _g_lTestCount
	mov	DWORD PTR -144+[ebp], edx
	mov	eax, DWORD PTR -144+[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BD@GMBI@Done?5with?5test?5?$CFld?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	mov	edx, DWORD PTR _g_lTestCount
	add	edx, 1
	mov	DWORD PTR _g_lTestCount, edx
	call	_sprintf
	add	esp, 12					; 0000000cH

; 239  :    TRACE( 0, szMsg );

	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	push	0
	call	_fnTrace
	add	esp, 8

; 240  : 
; 241  :    if ( !g_bRunningTest )

	xor	ecx, ecx
	mov	cl, BYTE PTR _g_bRunningTest
	test	ecx, ecx
	jne	SHORT $L57417

; 242  :       KillTimer( hWnd, idEvent );

	mov	edx, DWORD PTR _idEvent$[ebp]
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__KillTimer@8
$L57417:

; 243  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_TimerProc@16 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BD@LOPD@Close?5running?5test?$AA@	; `string'
PUBLIC	??_C@_0BB@LDCL@Test?5In?5Progress?$AA@		; `string'
PUBLIC	??_C@_08GPBK@zWinSock?$AA@			; `string'
PUBLIC	??_C@_0P@CKPE@Where?5yourself?$AA@		; `string'
PUBLIC	??_C@_01PKMN@?$DP?$AA@				; `string'
PUBLIC	_MainWndProc@16
EXTRN	_SysMessageBox@16:NEAR
EXTRN	__imp__CloseHandle@4:NEAR
EXTRN	_ProcessZeidonMessage@8:NEAR
EXTRN	_NetClose@8:NEAR
EXTRN	__beginthreadex:NEAR
EXTRN	__imp__PostMessageA@16:NEAR
EXTRN	_NetStatus@8:NEAR
EXTRN	__imp__DefWindowProcA@16:NEAR
EXTRN	__imp__PostQuitMessage@4:NEAR
;	COMDAT ??_C@_0BD@LOPD@Close?5running?5test?$AA@
; File C:\10C\w\oe\KZOECLNT.C
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
;	COMDAT ??_C@_0P@CKPE@Where?5yourself?$AA@
_DATA	SEGMENT
??_C@_0P@CKPE@Where?5yourself?$AA@ DB 'Where yourself', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_01PKMN@?$DP?$AA@
_DATA	SEGMENT
??_C@_01PKMN@?$DP?$AA@ DB '?', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hWnd$ = 8
_message$ = 12
_wParam$ = 16
_lParam$ = 20
_k$57458 = -4
_MainWndProc@16 PROC NEAR

; 261  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 262  :    switch ( message )
; 263  :    {

	mov	eax, DWORD PTR _message$[ebp]
	mov	DWORD PTR -8+[ebp], eax
	cmp	DWORD PTR -8+[ebp], 256			; 00000100H
	ja	SHORT $L57566
	cmp	DWORD PTR -8+[ebp], 256			; 00000100H
	je	$L57466
	cmp	DWORD PTR -8+[ebp], 2
	je	$L57438
	cmp	DWORD PTR -8+[ebp], 16			; 00000010H
	je	SHORT $L57431
	jmp	$L57468
$L57566:
	cmp	DWORD PTR -8+[ebp], 260			; 00000104H
	je	$L57466
	cmp	DWORD PTR -8+[ebp], 273			; 00000111H
	je	$L57439
	jmp	$L57468
$L57431:

; 264  :       case WM_CLOSE:
; 265  :          // Check to see if the network is up.
; 266  :          if ( g_bRunningTest )

	xor	ecx, ecx
	mov	cl, BYTE PTR _g_bRunningTest
	test	ecx, ecx
	je	SHORT $L57432

; 268  :             SysMessageBox( 0, "Test In Progress", "Close running test", -1 );

	push	-1
	push	OFFSET FLAT:??_C@_0BD@LOPD@Close?5running?5test?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BB@LDCL@Test?5In?5Progress?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 269  :             return( 0 );

	xor	eax, eax
	jmp	$L57426
$L57432:

; 271  : 
; 272  :          if ( vSubtask && NetStatus( vSubtask, "zWinSock" ) != 0 )

	cmp	DWORD PTR _vSubtask, 0
	je	SHORT $L57435
	push	OFFSET FLAT:??_C@_08GPBK@zWinSock?$AA@	; `string'
	mov	edx, DWORD PTR _vSubtask
	push	edx
	call	_NetStatus@8
	movsx	eax, ax
	test	eax, eax
	je	SHORT $L57435

; 273  :             NetClose( vSubtask, "zWinSock" );

	push	OFFSET FLAT:??_C@_08GPBK@zWinSock?$AA@	; `string'
	mov	ecx, DWORD PTR _vSubtask
	push	ecx
	call	_NetClose@8
$L57435:

; 274  : 
; 275  :          // It's OK to leave, Shutdown Object Services
; 276  :          if ( nNoUnregister != 99 && vSubtask )

	cmp	DWORD PTR _nNoUnregister, 99		; 00000063H
	je	SHORT $L57437
	cmp	DWORD PTR _vSubtask, 0
	je	SHORT $L57437

; 277  :             UnregisterZeidonApplication( vSubtask );

	mov	edx, DWORD PTR _vSubtask
	push	edx
	call	_UnregisterZeidonApplication@4
$L57437:

; 278  : 
; 279  :          return( DefWindowProc( hWnd, message, wParam, lParam ));

	mov	eax, DWORD PTR _lParam$[ebp]
	push	eax
	mov	ecx, DWORD PTR _wParam$[ebp]
	push	ecx
	mov	edx, DWORD PTR _message$[ebp]
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__DefWindowProcA@16
	jmp	$L57426
$L57438:

; 280  : 
; 281  : 
; 282  :       case WM_DESTROY:        // message: window being destroyed
; 283  :          PostQuitMessage( 0 );

	push	0
	call	DWORD PTR __imp__PostQuitMessage@4

; 284  :          break;

	jmp	$L57428
$L57439:

; 285  : 
; 286  :       case WM_COMMAND:
; 287  :          if ( wParam == 110 )

	cmp	DWORD PTR _wParam$[ebp], 110		; 0000006eH
	jne	SHORT $L57440

; 289  :             SysMessageBox( 0, "?", "Where yourself", -1 );

	push	-1
	push	OFFSET FLAT:??_C@_0P@CKPE@Where?5yourself?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_01PKMN@?$DP?$AA@	; `string'
	push	0
	call	_SysMessageBox@16

; 291  :          else

	jmp	$L57461
$L57440:

; 292  :          if ( wParam == 111 )

	cmp	DWORD PTR _wParam$[ebp], 111		; 0000006fH
	jne	SHORT $L57444

; 294  :             RegisterZeidonApplication( &vSubtask,
; 295  :                                        (zLONG) hInst,
; 296  :                                        (zLONG) hMainWnd,
; 297  :                                        (zLONG) wClientMessage,
; 298  :                                        "\\\\Zencas\\", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_09CLFF@?2?2Zencas?2?$AA@ ; `string'
	xor	ecx, ecx
	mov	cx, WORD PTR _wClientMessage
	push	ecx
	mov	edx, DWORD PTR _hMainWnd
	push	edx
	mov	eax, DWORD PTR _hInst
	push	eax
	push	OFFSET FLAT:_vSubtask
	call	_RegisterZeidonApplication@28

; 300  :          else

	jmp	$L57461
$L57444:

; 301  :          if ( wParam == 112 )

	cmp	DWORD PTR _wParam$[ebp], 112		; 00000070H
	jne	SHORT $L57449

; 303  :             UnregisterZeidonApplication( vSubtask );

	mov	ecx, DWORD PTR _vSubtask
	push	ecx
	call	_UnregisterZeidonApplication@4

; 304  :             vSubtask = 0;

	mov	DWORD PTR _vSubtask, 0

; 306  :          else

	jmp	$L57461
$L57449:

; 307  :          if ( wParam == 113 )

	cmp	DWORD PTR _wParam$[ebp], 113		; 00000071H
	jne	SHORT $L57451

; 309  :             nNoUnregister = 99;

	mov	DWORD PTR _nNoUnregister, 99		; 00000063H

; 310  :             PostMessage( hWnd, WM_CLOSE, 0, 0L );

	push	0
	push	0
	push	16					; 00000010H
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__PostMessageA@16

; 312  :          else

	jmp	$L57461
$L57451:

; 313  :          if ( wParam == 114 )

	cmp	DWORD PTR _wParam$[ebp], 114		; 00000072H
	jne	SHORT $L57453

; 315  :             PostMessage( hWnd, WM_CLOSE, 0, 0L );

	push	0
	push	0
	push	16					; 00000010H
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__PostMessageA@16

; 317  :          else

	jmp	$L57461
$L57453:

; 318  :          if ( wParam == 115 )  // ID_TEST

	cmp	DWORD PTR _wParam$[ebp], 115		; 00000073H
	jne	SHORT $L57461

; 320  :             if ( g_bRunningTest )

	xor	ecx, ecx
	mov	cl, BYTE PTR _g_bRunningTest
	test	ecx, ecx
	je	SHORT $L57456

; 322  :                g_bRunningTest = FALSE;

	mov	BYTE PTR _g_bRunningTest, 0

; 323  :                g_bContinueThreadTest = FALSE;

	mov	BYTE PTR _g_bContinueThreadTest, 0

; 325  :             else

	jmp	SHORT $L57461
$L57456:

; 327  :                int k;
; 328  : 
; 329  :                g_bRunningTest = TRUE;

	mov	BYTE PTR _g_bRunningTest, 1

; 330  :             // SetTimer( hWnd, 0, 100, (TIMERPROC) TimerProc );
; 331  : 
; 332  :                g_bContinueThreadTest = TRUE;

	mov	BYTE PTR _g_bContinueThreadTest, 1

; 333  : 
; 334  :                for ( k = 1; k <= NUM_THREADS; k++ )

	mov	DWORD PTR _k$57458[ebp], 1
	jmp	SHORT $L57459
$L57460:
	mov	edx, DWORD PTR _k$57458[ebp]
	add	edx, 1
	mov	DWORD PTR _k$57458[ebp], edx
$L57459:
	cmp	DWORD PTR _k$57458[ebp], 1
	jg	SHORT $L57461

; 336  :                   g_hTestThread = _beginthreadex( NULL, 0, fnThreadProc2,
; 337  :                                                   (void *) k, 0, &g_dwTestThreadID );

	push	OFFSET FLAT:_g_dwTestThreadID
	push	0
	mov	eax, DWORD PTR _k$57458[ebp]
	push	eax
	push	OFFSET FLAT:_fnThreadProc2@4
	push	0
	push	0
	call	__beginthreadex
	add	esp, 24					; 00000018H
	mov	DWORD PTR _g_hTestThread, eax

; 338  :                   if ( g_hTestThread )

	cmp	DWORD PTR _g_hTestThread, 0
	je	SHORT $L57464

; 339  :                      CloseHandle( (HANDLE) g_hTestThread );

	mov	ecx, DWORD PTR _g_hTestThread
	push	ecx
	call	DWORD PTR __imp__CloseHandle@4
$L57464:

; 340  :                }

	jmp	SHORT $L57460
$L57461:

; 343  : 
; 344  :          break;

	jmp	SHORT $L57428
$L57466:

; 345  : 
; 346  :       case WM_KEYDOWN:
; 347  :       case WM_SYSKEYDOWN:
; 348  :          if ( wParam == VK_F3 )

	cmp	DWORD PTR _wParam$[ebp], 114		; 00000072H
	jne	SHORT $L57467

; 349  :             PostMessage( hWnd, WM_CLOSE, 0, 0L );

	push	0
	push	0
	push	16					; 00000010H
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__PostMessageA@16
$L57467:

; 350  : 
; 351  :          break;

	jmp	SHORT $L57428
$L57468:

; 352  : 
; 353  :     default:
; 354  :       if ( message == wClientMessage )

	xor	eax, eax
	mov	ax, WORD PTR _wClientMessage
	cmp	DWORD PTR _message$[ebp], eax
	jne	SHORT $L57469

; 355  :          ProcessZeidonMessage( wParam, lParam );

	mov	ecx, DWORD PTR _lParam$[ebp]
	push	ecx
	mov	edx, DWORD PTR _wParam$[ebp]
	push	edx
	call	_ProcessZeidonMessage@8
$L57469:
$L57428:

; 359  : 
; 360  :    return( DefWindowProc( hWnd, message, wParam, lParam ));

	mov	eax, DWORD PTR _lParam$[ebp]
	push	eax
	mov	ecx, DWORD PTR _wParam$[ebp]
	push	ecx
	mov	edx, DWORD PTR _message$[ebp]
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__DefWindowProcA@16
$L57426:

; 361  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_MainWndProc@16 ENDP
_TEXT	ENDS
PUBLIC	??_C@_08FLEO@KZOECLNT?$AA@			; `string'
EXTRN	__imp__LoadCursorA@8:NEAR
EXTRN	__imp__LoadIconA@8:NEAR
EXTRN	__imp__GetStockObject@4:NEAR
EXTRN	__imp__RegisterClassA@4:NEAR
;	COMDAT ??_C@_08FLEO@KZOECLNT?$AA@
; File C:\10C\w\oe\KZOECLNT.C
_DATA	SEGMENT
??_C@_08FLEO@KZOECLNT?$AA@ DB 'KZOECLNT', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hInstance$ = 8
_wc$ = -40
_InitApplication PROC NEAR

; 372  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H

; 373  :    WNDCLASS  wc;
; 374  : 
; 375  :    // Fill in window class structure with parameters that describe the
; 376  :    // main window.
; 377  : 
; 378  :    wc.style = 0;                       // Class style(s).

	mov	DWORD PTR _wc$[ebp], 0

; 379  :    wc.lpfnWndProc = MainWndProc;       // Function to retrieve messages for

	mov	DWORD PTR _wc$[ebp+4], OFFSET FLAT:_MainWndProc@16

; 380  :                                        // windows of this class.
; 381  :    wc.cbClsExtra = 0;                  // No per-class extra data.

	mov	DWORD PTR _wc$[ebp+8], 0

; 382  :    wc.cbWndExtra = 0;                  // No per-window extra data.

	mov	DWORD PTR _wc$[ebp+12], 0

; 383  :    wc.hInstance = hInstance;           // Application that owns the class.

	mov	eax, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR _wc$[ebp+16], eax

; 384  :    wc.hIcon = LoadIcon( hInstance, "KZOECLNT" );

	push	OFFSET FLAT:??_C@_08FLEO@KZOECLNT?$AA@	; `string'
	mov	ecx, DWORD PTR _hInstance$[ebp]
	push	ecx
	call	DWORD PTR __imp__LoadIconA@8
	mov	DWORD PTR _wc$[ebp+20], eax

; 385  :    wc.hCursor = LoadCursor( 0, IDC_ARROW );

	push	32512					; 00007f00H
	push	0
	call	DWORD PTR __imp__LoadCursorA@8
	mov	DWORD PTR _wc$[ebp+24], eax

; 386  :    wc.hbrBackground = GetStockObject( WHITE_BRUSH );

	push	0
	call	DWORD PTR __imp__GetStockObject@4
	mov	DWORD PTR _wc$[ebp+28], eax

; 387  :    wc.lpszMenuName =  0;               // Name of menu resource in .RC file.

	mov	DWORD PTR _wc$[ebp+32], 0

; 388  :    wc.lpszClassName = szClassName;     // Name used in call to CreateWindow.

	mov	DWORD PTR _wc$[ebp+36], OFFSET FLAT:_szClassName

; 389  : 
; 390  :    // Register the window class and return success/failure code.
; 391  :    return( RegisterClass( &wc ) );

	lea	edx, DWORD PTR _wc$[ebp]
	push	edx
	call	DWORD PTR __imp__RegisterClassA@4
	and	eax, 65535				; 0000ffffH

; 392  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_InitApplication ENDP
_TEXT	ENDS
PUBLIC	??_C@_0M@OBCJ@Test?5Client?$AA@			; `string'
PUBLIC	??_C@_0N@GAJF@Trace?5Window?$AA@		; `string'
PUBLIC	??_C@_07NOMM@ListBox?$AA@			; `string'
PUBLIC	??_C@_08BAE@?2?2Zencas?$AA@			; `string'
PUBLIC	??_C@_0CA@JJJG@laskjdflkasjdflkjasdlfkjasdlkfj?$AA@ ; `string'
PUBLIC	??_C@_0BB@BOFH@Done?5registering?$AA@		; `string'
EXTRN	__imp__CreateWindowExA@48:NEAR
EXTRN	__imp__DestroyWindow@4:NEAR
EXTRN	__imp__ShowWindow@8:NEAR
EXTRN	__imp__GetLastError@0:NEAR
EXTRN	__imp__RegisterWindowMessageA@4:NEAR
EXTRN	__imp__GetClientRect@8:NEAR
EXTRN	_SysAllocMemory@20:NEAR
EXTRN	__imp__GetSystemMetrics@4:NEAR
EXTRN	__imp__LoadMenuA@8:NEAR
EXTRN	_SysFreeMemory@4:NEAR
EXTRN	_strcpy:NEAR
EXTRN	__imp__HeapAlloc@12:NEAR
EXTRN	__imp__HeapFree@12:NEAR
EXTRN	__imp__GetProcessHeap@0:NEAR
;	COMDAT ??_C@_0M@OBCJ@Test?5Client?$AA@
; File C:\10C\w\oe\KZOECLNT.C
_DATA	SEGMENT
??_C@_0M@OBCJ@Test?5Client?$AA@ DB 'Test Client', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@GAJF@Trace?5Window?$AA@
_DATA	SEGMENT
??_C@_0N@GAJF@Trace?5Window?$AA@ DB 'Trace Window', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_07NOMM@ListBox?$AA@
_DATA	SEGMENT
??_C@_07NOMM@ListBox?$AA@ DB 'ListBox', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08BAE@?2?2Zencas?$AA@
_DATA	SEGMENT
??_C@_08BAE@?2?2Zencas?$AA@ DB '\\Zencas', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CA@JJJG@laskjdflkasjdflkjasdlfkjasdlkfj?$AA@
_DATA	SEGMENT
??_C@_0CA@JJJG@laskjdflkasjdflkjasdlfkjasdlkfj?$AA@ DB 'laskjdflkasjdflkj'
	DB	'asdlfkjasdlkfj', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@BOFH@Done?5registering?$AA@
_DATA	SEGMENT
??_C@_0BB@BOFH@Done?5registering?$AA@ DB 'Done registering', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hInstance$ = 8
_nHeight$ = -32
_nPosY$ = -24
_nWidth$ = -28
_nPosX$ = -20
_rect$ = -16
_psz$57500 = -36
_h$57501 = -40
_ph$57502 = -56
_pv$57503 = -52
_pv2$57504 = -44
_dw$57505 = -48
_InitInstance PROC NEAR

; 414  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 56					; 00000038H

; 415  :    int            nHeight, nPosY;
; 416  :    int            nWidth, nPosX;
; 417  :    RECT           rect;
; 418  : 
; 419  :    // Save the instance handle in static variable, which will be used in
; 420  :    // many subsequence calls from this application to Windows.
; 421  : 
; 422  :    hInst = hInstance;

	mov	eax, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR _hInst, eax

; 423  : 
; 424  :    // Get the dimensions of the screen
; 425  :    nWidth = GetSystemMetrics( SM_CXSCREEN );

	push	0
	call	DWORD PTR __imp__GetSystemMetrics@4
	mov	DWORD PTR _nWidth$[ebp], eax

; 426  :    nHeight = GetSystemMetrics( SM_CYSCREEN );

	push	1
	call	DWORD PTR __imp__GetSystemMetrics@4
	mov	DWORD PTR _nHeight$[ebp], eax

; 427  :    nWidth /= 2;

	mov	eax, DWORD PTR _nWidth$[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	mov	DWORD PTR _nWidth$[ebp], eax

; 428  :    nHeight /= 2;

	mov	eax, DWORD PTR _nHeight$[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	mov	DWORD PTR _nHeight$[ebp], eax

; 429  :    nWidth -= 40;

	mov	ecx, DWORD PTR _nWidth$[ebp]
	sub	ecx, 40					; 00000028H
	mov	DWORD PTR _nWidth$[ebp], ecx

; 430  :    nHeight -= 20;

	mov	edx, DWORD PTR _nHeight$[ebp]
	sub	edx, 20					; 00000014H
	mov	DWORD PTR _nHeight$[ebp], edx

; 431  :    nPosX = nWidth / 2;

	mov	eax, DWORD PTR _nWidth$[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	mov	DWORD PTR _nPosX$[ebp], eax

; 432  :    nPosY = nHeight / 2;

	mov	eax, DWORD PTR _nHeight$[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	mov	DWORD PTR _nPosY$[ebp], eax

; 433  :    nPosX -= 8; // So it doesn't occupy same space as object services

	mov	eax, DWORD PTR _nPosX$[ebp]
	sub	eax, 8
	mov	DWORD PTR _nPosX$[ebp], eax

; 434  :    nPosY -= 8;

	mov	ecx, DWORD PTR _nPosY$[ebp]
	sub	ecx, 8
	mov	DWORD PTR _nPosY$[ebp], ecx

; 435  : 
; 436  :    // Create a main window for this application instance.
; 437  :    hMainWnd = CreateWindow( szClassName,                    // See RegisterClass( ) call.
; 438  :                             "Test Client",                  // Text for window title bar.
; 439  :                             WS_OVERLAPPEDWINDOW,            // Window style.
; 440  :                             nPosX,                          // Default horizontal position.
; 441  :                             nPosY,                          // Default vertical position.
; 442  :                             nWidth,                         // Default width.
; 443  :                             nHeight,                        // Default height.
; 444  :                             0,                              // Overlapped windows have no parent.
; 445  :                             LoadMenu( hInstance, "KZOECLNT" ), // Menu for trace window
; 446  :                          // 0,                              // Use default menu
; 447  :                             hInstance,                      // This instance owns this window.
; 448  :                             0 );                            // Pointer not needed.

	push	0
	mov	edx, DWORD PTR _hInstance$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_08FLEO@KZOECLNT?$AA@	; `string'
	mov	eax, DWORD PTR _hInstance$[ebp]
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
	push	OFFSET FLAT:??_C@_0M@OBCJ@Test?5Client?$AA@ ; `string'
	push	OFFSET FLAT:_szClassName
	push	0
	call	DWORD PTR __imp__CreateWindowExA@48
	mov	DWORD PTR _hMainWnd, eax

; 449  : 
; 450  :    // If window could not be created, return "failure"
; 451  : 
; 452  :    if ( !hMainWnd )

	cmp	DWORD PTR _hMainWnd, 0
	jne	SHORT $L57491

; 453  :       return( FALSE );

	xor	eax, eax
	jmp	$L57484
$L57491:

; 454  : 
; 455  :    GetClientRect( hMainWnd, &rect );

	lea	edx, DWORD PTR _rect$[ebp]
	push	edx
	mov	eax, DWORD PTR _hMainWnd
	push	eax
	call	DWORD PTR __imp__GetClientRect@8

; 456  :    hListWnd = CreateWindow( "ListBox",                      // See RegisterClass( ) call.
; 457  :                             "Trace Window",                 // Text for window title bar.
; 458  :                             WS_VISIBLE | WS_CHILD | WS_VSCROLL | WS_HSCROLL |
; 459  :                             WS_THICKFRAME | WS_CAPTION,
; 460  :                             rect.left,                      // Default horizontal position.
; 461  :                             rect.top,                       // Default vertical position.
; 462  :                             (rect.right - rect.left),       // Default width.
; 463  :                             (rect.bottom - rect.top),       // Default height.
; 464  :                             hMainWnd,                       // Parent Window
; 465  :                             0,                              // Use the window class menu.
; 466  :                             hInstance,                      // This instance owns this window.
; 467  :                             0 );                            // Pointer not needed.

	push	0
	mov	ecx, DWORD PTR _hInstance$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _hMainWnd
	push	edx
	mov	eax, DWORD PTR _rect$[ebp+12]
	sub	eax, DWORD PTR _rect$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _rect$[ebp+8]
	sub	ecx, DWORD PTR _rect$[ebp]
	push	ecx
	mov	edx, DWORD PTR _rect$[ebp+4]
	push	edx
	mov	eax, DWORD PTR _rect$[ebp]
	push	eax
	push	1358168064				; 50f40000H
	push	OFFSET FLAT:??_C@_0N@GAJF@Trace?5Window?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_07NOMM@ListBox?$AA@	; `string'
	push	0
	call	DWORD PTR __imp__CreateWindowExA@48
	mov	DWORD PTR _hListWnd, eax

; 468  : 
; 469  :    SendMessage( hListWnd, WM_SETFONT,
; 470  :                 (WPARAM) GetStockObject( SYSTEM_FIXED_FONT ), 0 );

	push	0
	push	16					; 00000010H
	call	DWORD PTR __imp__GetStockObject@4
	push	eax
	push	48					; 00000030H
	mov	ecx, DWORD PTR _hListWnd
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16

; 471  : 
; 472  :    wClientMessage = RegisterWindowMessage( "KZOECLNT" );

	push	OFFSET FLAT:??_C@_08FLEO@KZOECLNT?$AA@	; `string'
	call	DWORD PTR __imp__RegisterWindowMessageA@4
	mov	WORD PTR _wClientMessage, ax

; 473  : 
; 474  :    if ( RegisterZeidonApplication( &vSubtask, (zLONG) hInst,
; 475  :                                    (zLONG) hMainWnd,
; 476  :                                    (zLONG) wClientMessage,
; 477  :                                    "\\\\Zencas", 0, 0 ) != 0 )

	push	0
	push	0
	push	OFFSET FLAT:??_C@_08BAE@?2?2Zencas?$AA@	; `string'
	xor	edx, edx
	mov	dx, WORD PTR _wClientMessage
	push	edx
	mov	eax, DWORD PTR _hMainWnd
	push	eax
	mov	ecx, DWORD PTR _hInst
	push	ecx
	push	OFFSET FLAT:_vSubtask
	call	_RegisterZeidonApplication@28
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L57498

; 480  :       DestroyWindow( hMainWnd );

	mov	eax, DWORD PTR _hMainWnd
	push	eax
	call	DWORD PTR __imp__DestroyWindow@4

; 481  :       return( FALSE );

	xor	eax, eax
	jmp	$L57484
$L57498:

; 483  : 
; 484  :    ShowWindow( hMainWnd, SW_SHOW );  // Show the window

	push	5
	mov	ecx, DWORD PTR _hMainWnd
	push	ecx
	call	DWORD PTR __imp__ShowWindow@8

; 486  :       zPCHAR psz;
; 487  :       zLONG  h = SysAllocMemory( &psz, 100, 0, zCOREMEM_ALLOC, 0 );

	push	0
	push	32768					; 00008000H
	push	0
	push	100					; 00000064H
	lea	edx, DWORD PTR _psz$57500[ebp]
	push	edx
	call	_SysAllocMemory@20
	mov	DWORD PTR _h$57501[ebp], eax

; 488  :       HANDLE ph = GetProcessHeap( );

	call	DWORD PTR __imp__GetProcessHeap@0
	mov	DWORD PTR _ph$57502[ebp], eax

; 489  :       LPVOID pv;
; 490  :       LPVOID pv2;
; 491  :       DWORD  dw;
; 492  : 
; 493  :       pv = HeapAlloc( ph, 0, 100 );

	push	100					; 00000064H
	push	0
	mov	eax, DWORD PTR _ph$57502[ebp]
	push	eax
	call	DWORD PTR __imp__HeapAlloc@12
	mov	DWORD PTR _pv$57503[ebp], eax

; 494  :       dw = GetLastError( );

	call	DWORD PTR __imp__GetLastError@0
	mov	DWORD PTR _dw$57505[ebp], eax

; 495  :       pv2 = HeapAlloc( ph, 0, 100 );

	push	100					; 00000064H
	push	0
	mov	ecx, DWORD PTR _ph$57502[ebp]
	push	ecx
	call	DWORD PTR __imp__HeapAlloc@12
	mov	DWORD PTR _pv2$57504[ebp], eax

; 496  :       dw = GetLastError( );

	call	DWORD PTR __imp__GetLastError@0
	mov	DWORD PTR _dw$57505[ebp], eax

; 497  : 
; 498  :       HeapFree( ph, 0, pv );

	mov	edx, DWORD PTR _pv$57503[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _ph$57502[ebp]
	push	eax
	call	DWORD PTR __imp__HeapFree@12

; 499  :       dw = GetLastError( );

	call	DWORD PTR __imp__GetLastError@0
	mov	DWORD PTR _dw$57505[ebp], eax

; 500  :       HeapFree( ph, 0, pv2 );

	mov	ecx, DWORD PTR _pv2$57504[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _ph$57502[ebp]
	push	edx
	call	DWORD PTR __imp__HeapFree@12

; 501  :       dw = GetLastError( );

	call	DWORD PTR __imp__GetLastError@0
	mov	DWORD PTR _dw$57505[ebp], eax

; 502  : 
; 503  :       zstrcpy( psz, "laskjdflkasjdflkjasdlfkjasdlkfj" );

	push	OFFSET FLAT:??_C@_0CA@JJJG@laskjdflkasjdflkjasdlfkjasdlkfj?$AA@ ; `string'
	mov	eax, DWORD PTR _psz$57500[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 504  :       SysFreeMemory( h );

	mov	ecx, DWORD PTR _h$57501[ebp]
	push	ecx
	call	_SysFreeMemory@4

; 506  : 
; 507  :    TRACE( 0, "Done registering" );

	push	OFFSET FLAT:??_C@_0BB@BOFH@Done?5registering?$AA@ ; `string'
	push	0
	call	_fnTrace
	add	esp, 8

; 508  : 
; 509  :    // Make the window visible; update its client area; and return "success"
; 510  :    return( hMainWnd );            // Returns the value from PostQuitMessage

	mov	eax, DWORD PTR _hMainWnd
$L57484:

; 511  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_InitInstance ENDP
_TEXT	ENDS
END
