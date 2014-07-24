	TITLE	C:\10C\A\oe\KZOEAPAA.C
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
;	COMDAT ??_C@_0EM@BOOB@?$CIAPP?$CJ?5About?5to?5create?5app?5?$CI0x?$CF08@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@HBNK@Zeidon?5System?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@GLMH@?$CIAPP?$CJ?5About?5to?5create?5app?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05JBPC@?$FLApp?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01FIMD@?$FN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09LNJJ@KeepAlive?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@GDLG@CreateApp?5KeepAlive?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07GIMK@Domains?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CA@MKLC@?$CIap?$CJ?5looking?5for?5domains?5with?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04DIDG@ROOT?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06PIJH@OBJECT?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@NDFG@DomainGroup?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08JOPH@OPERNAME?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@CGKE@OPERNUMBER?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DA@PLNM@?$CIap?$CJ?5More?5than?5one?5default?5Conte@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@OGPE@?$CIKeepAlive?$CJ?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DA@HNEC@DeleteApp?5for?5App?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@PMOF@fnDeleteApp?5found?5Tasks?5linked?5t@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EC@PMKL@fnDeleteApp?5found?5ViewOD?5?$CI?$CFs?$CJ?5fo@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CL@DFNM@fnDeleteApp?5found?5Subtasks?5linke@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CK@IPAG@fnDeleteApp?5found?5Domains?5linked@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@DOED@IMPOSSIBLE?$CB?$CB?$CB?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03BKPH@DKS?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@OIFA@?$CIAPP?$CJ?5About?5to?5delete?5App?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@OAOJ@?$CIAPP?$CJ?5Finished?5dropping?5Views?5fo@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CN@NHKB@?$CIAPP?$CJ?5Finished?5dropping?5View?5Nam@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CM@ONOE@?$CIAPP?$CJ?5Finished?5dropping?5App?5View@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CK@PHHJ@?$CIAPP?$CJ?5Finished?5dropping?5Domains?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DA@KPA@?$CIAPP?$CJ?5Finished?5dropping?5Logical?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CK@ILFL@?$CIAPP?$CJ?5Finished?5dropping?5ViewODs?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@JEMD@?$CIAPP?$CJ?5Finished?5dropping?5DB?5Handl@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@HIAJ@?$CIAPP?$CJ?5Finished?5dropping?5GK?5Handl@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CF@PPFE@?$CIAPP?$CJ?5DeleteApp?5SUCCESSFUL?5for?5A@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08ILBJ@KZDBHQUA?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CF@OGEJ@SetDatabaseUser?3?5?$CFs?5for?5task?3?50x@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@EIGE@EntitySpec?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@LOJF@EntityName?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07BFAH@Options?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_GetApplDirectoryFromView@16
EXTRN	_fnOperationCall:NEAR
EXTRN	_fnOperationReturn:NEAR
EXTRN	_strcpy:NEAR
EXTRN	_strlen:NEAR
EXTRN	_g_pfnGetPtr:DWORD
_TEXT	SEGMENT
_pchReturnDirectory$ = 8
_lpView$ = 12
_nDirectory$ = 16
_nMaxLth$ = 20
_lpCurrentTask$ = -16
_lpApp$ = -12
_pchDirectory$ = -4
_nRC$ = -8
_lpSubtask$7530 = -20
_lpViewOD$7534 = -24
_GetApplDirectoryFromView@16 PROC NEAR

; 82   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 83   :    LPTASK lpCurrentTask;
; 84   :    LPAPP  lpApp;
; 85   :    zPCHAR pchDirectory;
; 86   :    zSHORT nRC;
; 87   : 
; 88   :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 89   :    if ( (lpCurrentTask = fnOperationCall( iGetApplDirectoryFromView,
; 90   :                                           lpView, zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	20					; 00000014H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7528

; 92   :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7523
$L7528:

; 94   : 
; 95   :    if ( lpView->hSubtask )

	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [ecx+18], 0
	je	SHORT $L7529

; 97   :       LPSUBTASK lpSubtask = zGETPTR( lpView->hSubtask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$7530[ebp], eax

; 98   : 
; 99   :       lpApp = lpSubtask->hApp;

	mov	ecx, DWORD PTR _lpSubtask$7530[ebp]
	mov	edx, DWORD PTR [ecx+10]
	mov	DWORD PTR _lpApp$[ebp], edx

; 101  :    else

	jmp	SHORT $L7536
$L7529:

; 102  :    if ( lpView->hViewOD )

	mov	eax, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [eax+6], 0
	je	SHORT $L7533

; 104  :       LPVIEWOD lpViewOD = zGETPTR( lpView->hViewOD );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$7534[ebp], eax

; 105  : 
; 106  :       lpApp = lpViewOD->hApp;

	mov	eax, DWORD PTR _lpViewOD$7534[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR _lpApp$[ebp], ecx

; 108  :    else

	jmp	SHORT $L7536
$L7533:

; 109  :       lpApp = lpCurrentTask->hApp;

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	eax, DWORD PTR [edx+10]
	mov	DWORD PTR _lpApp$[ebp], eax
$L7536:

; 110  : 
; 111  :    lpApp = zGETPTR( lpApp );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpApp$[ebp], eax

; 112  : 
; 113  :    pchReturnDirectory[ 0 ] = 0;

	mov	edx, DWORD PTR _pchReturnDirectory$[ebp]
	mov	BYTE PTR [edx], 0

; 114  :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 115  :    switch ( nDirectory )
; 116  :    {

	movsx	eax, WORD PTR _nDirectory$[ebp]
	mov	DWORD PTR -28+[ebp], eax
	cmp	DWORD PTR -28+[ebp], 6
	ja	SHORT $L7549
	mov	ecx, DWORD PTR -28+[ebp]
	jmp	DWORD PTR $L8355[ecx*4]
$L7542:

; 117  :       case zAPPL_DIR_LIB:
; 118  :          pchDirectory = lpApp->szLibraryDir;

	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 90					; 0000005aH
	mov	DWORD PTR _pchDirectory$[ebp], edx

; 119  :          break;

	jmp	SHORT $L7539
$L7543:

; 120  : 
; 121  :       case zAPPL_DIR_OBJECT:
; 122  :          pchDirectory = lpApp->szObjectDir;

	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 347				; 0000015bH
	mov	DWORD PTR _pchDirectory$[ebp], eax

; 123  :          break;

	jmp	SHORT $L7539
$L7544:

; 124  : 
; 125  :       case zAPPL_DIR_LOCAL:
; 126  :          pchDirectory = lpApp->szLocalDir;

	mov	ecx, DWORD PTR _lpApp$[ebp]
	add	ecx, 604				; 0000025cH
	mov	DWORD PTR _pchDirectory$[ebp], ecx

; 127  :          break;

	jmp	SHORT $L7539
$L7545:

; 128  : 
; 129  :       case zAPPL_DIR_SHARED:
; 130  :          pchDirectory = lpApp->szSharedDir;

	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 861				; 0000035dH
	mov	DWORD PTR _pchDirectory$[ebp], edx

; 131  :          break;

	jmp	SHORT $L7539
$L7546:

; 132  : 
; 133  :       case zAPPL_DIR_QLPLR:
; 134  :          pchDirectory = lpApp->szQLPLR_Dir;

	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 1118				; 0000045eH
	mov	DWORD PTR _pchDirectory$[ebp], eax

; 135  :          break;

	jmp	SHORT $L7539
$L7547:

; 136  : 
; 137  :       case zAPPL_DIR_SOURCE:
; 138  :          pchDirectory = lpApp->szSourceDir;

	mov	ecx, DWORD PTR _lpApp$[ebp]
	add	ecx, 1632				; 00000660H
	mov	DWORD PTR _pchDirectory$[ebp], ecx

; 139  :          break;

	jmp	SHORT $L7539
$L7548:

; 140  : 
; 141  :       case zAPPL_NAME:
; 142  :          pchDirectory = lpApp->szName;

	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 6
	mov	DWORD PTR _pchDirectory$[ebp], edx

; 143  :          break;

	jmp	SHORT $L7539
$L7549:

; 144  : 
; 145  :       default:
; 146  :          nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 147  :          pchDirectory = 0;

	mov	DWORD PTR _pchDirectory$[ebp], 0
$L7539:

; 149  : 
; 150  :    if ( pchDirectory )

	cmp	DWORD PTR _pchDirectory$[ebp], 0
	je	SHORT $L7553

; 152  :       if ( (zSHORT) zstrlen( pchDirectory ) > (nMaxLth - 1) )

	mov	eax, DWORD PTR _pchDirectory$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	movsx	ecx, ax
	movsx	edx, WORD PTR _nMaxLth$[ebp]
	sub	edx, 1
	cmp	ecx, edx
	jle	SHORT $L7552

; 153  :          nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 154  :       else

	jmp	SHORT $L7553
$L7552:

; 155  :          zstrcpy( pchReturnDirectory, pchDirectory );

	mov	eax, DWORD PTR _pchDirectory$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pchReturnDirectory$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8
$L7553:

; 157  : 
; 158  :    fnOperationReturn( iGetApplDirectoryFromView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	20					; 00000014H
	call	_fnOperationReturn
	add	esp, 8

; 159  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7523:

; 160  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$L8355:
	DD	$L7548
	DD	$L7542
	DD	$L7543
	DD	$L7544
	DD	$L7545
	DD	$L7546
	DD	$L7547
_GetApplDirectoryFromView@16 ENDP
_TEXT	ENDS
PUBLIC	_fnGetApplicationForSubtask@8
EXTRN	_fnIssueCoreError:NEAR
_TEXT	SEGMENT
_lpApp$ = 8
_lpView$ = 12
_lpSubtask$7561 = -4
_lpViewCsr$7566 = -8
_lpViewOD$7567 = -12
_lpViewOI$7568 = -16
_lpViewOD$7575 = -20
_lpTask$7580 = -24
_lpTask$7584 = -28
_fnGetApplicationForSubtask@8 PROC NEAR

; 167  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 168  :    *lpApp = 0;

	mov	eax, DWORD PTR _lpApp$[ebp]
	mov	DWORD PTR [eax], 0

; 169  : 
; 170  :    if ( lpView == 0 )

	cmp	DWORD PTR _lpView$[ebp], 0
	jne	SHORT $L7559

; 171  :       return( 0 );

	xor	ax, ax
	jmp	$L7558
$L7559:

; 172  : 
; 173  :    // If this is a subtask view, which it should be, pass the pointer
; 174  :    // to the application.
; 175  :    if ( lpView->hSubtask )

	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [ecx+18], 0
	je	SHORT $L7560

; 177  :       LPSUBTASK lpSubtask = zGETPTR( lpView->hSubtask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$7561[ebp], eax

; 178  :       *lpApp = zGETPTR( lpSubtask->hApp );

	mov	ecx, DWORD PTR _lpSubtask$7561[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	DWORD PTR [ecx], eax

; 180  :    else

	jmp	$L7583
$L7560:

; 181  :    if ( lpView->hViewCsr )  // there is a time when this should be done

	mov	edx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [edx+10], 0
	je	SHORT $L7565

; 183  :       LPVIEWCSR lpViewCsr;  // find it and correct it since this needs to
; 184  :       LPVIEWOD  lpViewOD;   // be ahead of it ... dks 2005.09.26
; 185  :       LPVIEWOI  lpViewOI;   // fixed in fnFindMQInterface ... dks 2005.11.01
; 186  : 
; 187  :       lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$7566[ebp], eax

; 188  :       lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$7566[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$7568[ebp], eax

; 189  :       lpViewOD  = zGETPTR( lpViewOI->hViewOD );

	mov	ecx, DWORD PTR _lpViewOI$7568[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$7567[ebp], eax

; 190  :       *lpApp    = zGETPTR( lpViewOD->hApp );

	mov	eax, DWORD PTR _lpViewOD$7567[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	DWORD PTR [edx], eax

; 192  : 
; 193  : // Change by DGC 5/27/96 -- Instead of just a subtask view we will get the
; 194  : // application from any kind of view.
; 195  : 
; 196  : // Change by DGC 10/15/96 -- Look at lpView->hViewOD before lpView->hTask.
; 197  :    else

	jmp	$L7583
$L7565:

; 198  :    if ( lpView->hViewOD )

	mov	eax, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [eax+6], 0
	je	SHORT $L7574

; 200  :       LPVIEWOD lpViewOD = zGETPTR( lpView->hViewOD );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$7575[ebp], eax

; 201  :       *lpApp = zGETPTR( lpViewOD->hApp );

	mov	eax, DWORD PTR _lpViewOD$7575[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	DWORD PTR [edx], eax

; 203  :    else

	jmp	SHORT $L7583
$L7574:

; 204  :    if ( lpView->hTask )

	mov	eax, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [eax+14], 0
	je	SHORT $L7579

; 206  :       LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$7580[ebp], eax

; 207  :       *lpApp = zGETPTR( lpTask->hApp );

	mov	eax, DWORD PTR _lpTask$7580[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	DWORD PTR [edx], eax

; 209  :    else

	jmp	SHORT $L7583
$L7579:

; 211  :       LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$7584[ebp], eax

; 212  : 
; 213  :       // We don't have a subtask view, zero the returned application
; 214  :       // pointer, issue an error message, and give an error return code.
; 215  :       *lpApp = 0;

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	DWORD PTR [edx], 0

; 216  : 
; 217  :       // "KZOEE107 - Invalid Subtask View"
; 218  :       fnIssueCoreError( lpTask, lpView, 8, 107, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	107					; 0000006bH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$7584[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 219  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7558
$L7583:

; 221  : 
; 222  :    return( 0 );

	xor	ax, ax
$L7558:

; 223  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_fnGetApplicationForSubtask@8 ENDP
_TEXT	ENDS
PUBLIC	_SfGetApplicationForSubtask@8
_TEXT	SEGMENT
_lpApp$ = 8
_lpView$ = 12
_lpCurrentTask$ = -8
_nRC$ = -4
_SfGetApplicationForSubtask@8 PROC NEAR

; 249  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 250  :    LPTASK lpCurrentTask;
; 251  :    zSHORT nRC;
; 252  : 
; 253  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 254  :    if ( (lpCurrentTask = fnOperationCall( iSfGetApplicationForSubtask,
; 255  :                                           lpView, zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	21					; 00000015H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7593

; 257  :       *lpApp = 0;

	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	DWORD PTR [ecx], 0

; 258  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7590
$L7593:

; 260  : 
; 261  :    nRC = fnGetApplicationForSubtask( lpApp, lpView );

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpApp$[ebp]
	push	eax
	call	_fnGetApplicationForSubtask@8
	mov	WORD PTR _nRC$[ebp], ax

; 262  : 
; 263  :    fnOperationReturn( iSfGetApplicationForSubtask, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	21					; 00000015H
	call	_fnOperationReturn
	add	esp, 8

; 264  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7590:

; 265  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SfGetApplicationForSubtask@8 ENDP
_TEXT	ENDS
PUBLIC	_SfSetApplicationForSubtask@8
EXTRN	_g_pfnGetHndl:DWORD
_TEXT	SEGMENT
_lpView$ = 8
_lpApp$ = 12
_lpCurrentTask$ = -12
_lpSubtask$ = -8
_nRC$ = -4
_SfSetApplicationForSubtask@8 PROC NEAR

; 288  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 289  :    LPTASK    lpCurrentTask;
; 290  :    LPSUBTASK lpSubtask;
; 291  :    zSHORT    nRC;
; 292  : 
; 293  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 294  :    if ( (lpCurrentTask = fnOperationCall( iSfSetApplicationForSubtask,
; 295  :                                           lpView, zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	22					; 00000016H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7602

; 297  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L7598
$L7602:

; 299  : 
; 300  :    if ( lpView->hSubtask )

	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [ecx+18], 0
	je	SHORT $L7603

; 302  :       lpSubtask = zGETPTR( lpView->hSubtask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 303  :       lpSubtask->hApp = zGETHNDL( lpApp );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpSubtask$[ebp]
	mov	DWORD PTR [edx+10], eax

; 304  :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 306  :    else

	jmp	SHORT $L7606
$L7603:

; 307  :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L7606:

; 308  : 
; 309  :    fnOperationReturn( iSfSetApplicationForSubtask, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	22					; 00000016H
	call	_fnOperationReturn
	add	esp, 8

; 310  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7598:

; 311  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_SfSetApplicationForSubtask@8 ENDP
_TEXT	ENDS
PUBLIC	_fnParseAppString
_TEXT	SEGMENT
_pchReturnApp$ = 8
_pchReturnDialog$ = 12
_pchReturnUserID$ = 16
_pchReturnPassword$ = 20
_pchReturnCommand$ = 24
_cpcAppString$ = 28
_pchParsePtr$ = -272
_pchApplPtr$ = -280
_pchWdodPtr$ = -264
_pchUserPtr$ = -276
_pchPassPtr$ = -284
_pchCmdPtr$ = -260
_szWorkAppString$ = -256
_chSeparator$ = -268
_fnParseAppString PROC NEAR

; 343  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 284				; 0000011cH

; 344  :    zPCHAR  pchParsePtr;
; 345  :    zPCHAR  pchApplPtr;
; 346  :    zPCHAR  pchWdodPtr;
; 347  :    zPCHAR  pchUserPtr;
; 348  :    zPCHAR  pchPassPtr;
; 349  :    zPCHAR  pchCmdPtr;
; 350  :    zCHAR   szWorkAppString[ 256 ];
; 351  :    zCHAR   chSeparator;
; 352  : 
; 353  :    // Null first byte in all return strings
; 354  :    pchReturnApp[ 0 ]      = 0;

	mov	eax, DWORD PTR _pchReturnApp$[ebp]
	mov	BYTE PTR [eax], 0

; 355  :    pchReturnDialog[ 0 ]   = 0;

	mov	ecx, DWORD PTR _pchReturnDialog$[ebp]
	mov	BYTE PTR [ecx], 0

; 356  :    pchReturnUserID[ 0 ]   = 0;

	mov	edx, DWORD PTR _pchReturnUserID$[ebp]
	mov	BYTE PTR [edx], 0

; 357  :    pchReturnPassword[ 0 ] = 0;

	mov	eax, DWORD PTR _pchReturnPassword$[ebp]
	mov	BYTE PTR [eax], 0

; 358  :    pchReturnCommand[ 0 ]  = 0;

	mov	ecx, DWORD PTR _pchReturnCommand$[ebp]
	mov	BYTE PTR [ecx], 0

; 359  : 
; 360  :    // return if pointer is null
; 361  :    if ( cpcAppString == 0 || *cpcAppString == 0 )

	cmp	DWORD PTR _cpcAppString$[ebp], 0
	je	SHORT $L7629
	mov	edx, DWORD PTR _cpcAppString$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L7628
$L7629:

; 362  :       return( -1 );

	or	ax, -1
	jmp	$L7619
$L7628:

; 363  : 
; 364  :    // STEP2: Parse the initialization String
; 365  :    pchApplPtr  = 0;

	mov	DWORD PTR _pchApplPtr$[ebp], 0

; 366  :    pchWdodPtr  = 0;

	mov	DWORD PTR _pchWdodPtr$[ebp], 0

; 367  :    pchUserPtr  = 0;

	mov	DWORD PTR _pchUserPtr$[ebp], 0

; 368  :    pchPassPtr  = 0;

	mov	DWORD PTR _pchPassPtr$[ebp], 0

; 369  :    pchCmdPtr   = 0;

	mov	DWORD PTR _pchCmdPtr$[ebp], 0

; 370  : 
; 371  :    // Relocate the application string so we can edit it
; 372  :    zstrcpy( szWorkAppString, cpcAppString );

	mov	ecx, DWORD PTR _cpcAppString$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szWorkAppString$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 373  : 
; 374  :    // Get Pointers to Application Name and the Dialog Name
; 375  :    pchParsePtr = szWorkAppString;

	lea	eax, DWORD PTR _szWorkAppString$[ebp]
	mov	DWORD PTR _pchParsePtr$[ebp], eax
$L7631:

; 376  :    while ( pchParsePtr[ 0 ] == ' ' )

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 32					; 00000020H
	jne	SHORT $L7632

; 377  :       pchParsePtr++;

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	add	eax, 1
	mov	DWORD PTR _pchParsePtr$[ebp], eax
	jmp	SHORT $L7631
$L7632:

; 378  : 
; 379  :    chSeparator = *pchParsePtr;

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR _chSeparator$[ebp], dl

; 380  :    if ( pchParsePtr[ 0 ] == chSeparator && pchParsePtr[ 1 ] == chSeparator )

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	movsx	edx, BYTE PTR _chSeparator$[ebp]
	cmp	ecx, edx
	jne	$L7633
	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax+1]
	movsx	edx, BYTE PTR _chSeparator$[ebp]
	cmp	ecx, edx
	jne	$L7633

; 382  :       pchParsePtr += 2;

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	add	eax, 2
	mov	DWORD PTR _pchParsePtr$[ebp], eax

; 383  :       pchApplPtr = pchParsePtr;

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	mov	DWORD PTR _pchApplPtr$[ebp], ecx
$L7635:

; 384  :       while ( pchParsePtr[ 0 ] && pchParsePtr[ 0 ] != chSeparator )

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L7636
	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	movsx	edx, BYTE PTR [ecx]
	movsx	eax, BYTE PTR _chSeparator$[ebp]
	cmp	edx, eax
	je	SHORT $L7636

; 385  :          pchParsePtr++;

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchParsePtr$[ebp], ecx
	jmp	SHORT $L7635
$L7636:

; 386  : 
; 387  :       if ( pchParsePtr[ 0 ] )

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L7643

; 389  :          pchParsePtr[ 0 ] = 0;

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	mov	BYTE PTR [ecx], 0

; 390  :          pchParsePtr++;

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchParsePtr$[ebp], edx

; 391  :          if ( pchParsePtr[ 0 ] )

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L7643

; 393  :             if ( pchParsePtr[ 0 ] != ' ' )

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 32					; 00000020H
	je	SHORT $L7639

; 395  :                pchWdodPtr = pchParsePtr;

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	mov	DWORD PTR _pchWdodPtr$[ebp], ecx

; 397  :             else

	jmp	SHORT $L7643
$L7639:

; 399  :                pchCmdPtr = pchParsePtr;

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	mov	DWORD PTR _pchCmdPtr$[ebp], edx
$L7642:

; 400  :                while ( pchCmdPtr[ 0 ] == ' ' )

	mov	eax, DWORD PTR _pchCmdPtr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 32					; 00000020H
	jne	SHORT $L7643

; 401  :                   pchCmdPtr++;

	mov	edx, DWORD PTR _pchCmdPtr$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchCmdPtr$[ebp], edx
	jmp	SHORT $L7642
$L7643:

; 406  :    else

	jmp	SHORT $L7644
$L7633:

; 408  :       return( -1 );  // since the separator is now assumed to be the first

	or	ax, -1
	jmp	$L7619
$L7644:

; 414  : 
; 415  :    // Parse pointer is currently at the first byte of the Dialog
; 416  :    // Name.  Look for trailing null, separator, or blank which
; 417  :    // ends the Dialog Name.
; 418  : 
; 419  :    //  Get the UserID if supplied. First position past the Wdod pointer.
; 420  :    if ( pchCmdPtr == 0 )  // if Command found, we are done.

	cmp	DWORD PTR _pchCmdPtr$[ebp], 0
	jne	$L7649
$L7647:

; 422  :       while ( pchParsePtr[ 0 ] &&
; 423  :               pchParsePtr[ 0 ] != chSeparator &&
; 424  :               pchParsePtr[ 0 ] != ' ' )

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L7648
	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	movsx	ecx, BYTE PTR _chSeparator$[ebp]
	cmp	eax, ecx
	je	SHORT $L7648
	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 32					; 00000020H
	je	SHORT $L7648

; 426  :          pchParsePtr++;

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchParsePtr$[ebp], ecx

; 427  :       }

	jmp	SHORT $L7647
$L7648:

; 428  : 
; 429  :       // if there is a token, see if it is a UserID (denoted by a separator
; 430  :       // followed by a non-blank).
; 431  :       if ( pchParsePtr[ 0 ] )

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	$L7649

; 433  :          if ( pchParsePtr[ 0 ] == chSeparator && pchParsePtr[ 1 ] &&
; 434  :               pchParsePtr[ 1 ] != ' ' )

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	movsx	edx, BYTE PTR [ecx]
	movsx	eax, BYTE PTR _chSeparator$[ebp]
	cmp	edx, eax
	jne	SHORT $L7650
	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	movsx	edx, BYTE PTR [ecx+1]
	test	edx, edx
	je	SHORT $L7650
	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax+1]
	cmp	ecx, 32					; 00000020H
	je	SHORT $L7650

; 436  :             pchUserPtr = pchParsePtr + 1;

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchUserPtr$[ebp], edx

; 438  :          else

	jmp	SHORT $L7657
$L7650:

; 439  :          if ( pchParsePtr[ 0 ] == ' ' ||
; 440  :               (pchParsePtr[ 0 ] == chSeparator && pchParsePtr[ 1 ] == ' ') )

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 32					; 00000020H
	je	SHORT $L7653
	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	movsx	ecx, BYTE PTR _chSeparator$[ebp]
	cmp	eax, ecx
	jne	SHORT $L7657
	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	movsx	eax, BYTE PTR [edx+1]
	cmp	eax, 32					; 00000020H
	jne	SHORT $L7657
$L7653:

; 442  :             pchCmdPtr = pchParsePtr;

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	mov	DWORD PTR _pchCmdPtr$[ebp], ecx

; 443  :             if ( pchCmdPtr[ 0 ] == chSeparator )

	mov	edx, DWORD PTR _pchCmdPtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	movsx	ecx, BYTE PTR _chSeparator$[ebp]
	cmp	eax, ecx
	jne	SHORT $L7654

; 444  :                pchCmdPtr++;

	mov	edx, DWORD PTR _pchCmdPtr$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchCmdPtr$[ebp], edx
$L7654:

; 445  : 
; 446  :             while ( pchCmdPtr[ 0 ] == ' ' )

	mov	eax, DWORD PTR _pchCmdPtr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 32					; 00000020H
	jne	SHORT $L7657

; 447  :                pchCmdPtr++;

	mov	edx, DWORD PTR _pchCmdPtr$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchCmdPtr$[ebp], edx
	jmp	SHORT $L7654
$L7657:

; 449  : 
; 450  :          pchParsePtr[ 0 ] = 0;

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	mov	BYTE PTR [eax], 0

; 451  :          pchParsePtr++;

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchParsePtr$[ebp], ecx
$L7649:

; 454  : 
; 455  :    // Get the Password if supplied.  First position past
; 456  :    // the UserID pointer.
; 457  :    if ( pchCmdPtr == 0 )  // if Command found, we are done

	cmp	DWORD PTR _pchCmdPtr$[ebp], 0
	jne	$L7674

; 459  :       if ( pchUserPtr ) // if UserID found

	cmp	DWORD PTR _pchUserPtr$[ebp], 0
	je	SHORT $L7662
$L7661:

; 461  :          while ( pchParsePtr[ 0 ] && pchParsePtr[ 0 ] != chSeparator &&
; 462  :                  pchParsePtr[ 0 ] != ' ' )

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L7662
	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	movsx	edx, BYTE PTR [ecx]
	movsx	eax, BYTE PTR _chSeparator$[ebp]
	cmp	edx, eax
	je	SHORT $L7662
	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 32					; 00000020H
	je	SHORT $L7662

; 464  :             pchParsePtr++;

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	add	eax, 1
	mov	DWORD PTR _pchParsePtr$[ebp], eax

; 465  :          }

	jmp	SHORT $L7661
$L7662:

; 467  : 
; 468  :       // if there is a token, see if it is a Password (denoted by a separator
; 469  :       // followed by a non-blank).
; 470  :       if ( pchParsePtr[ 0 ] )

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	$L7674

; 472  :          if ( pchParsePtr[ 0 ] == chSeparator &&
; 473  :               pchParsePtr[ 1 ] && pchParsePtr[ 1 ] != ' ' )

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	movsx	edx, BYTE PTR _chSeparator$[ebp]
	cmp	ecx, edx
	jne	SHORT $L7664
	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax+1]
	test	ecx, ecx
	je	SHORT $L7664
	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	movsx	eax, BYTE PTR [edx+1]
	cmp	eax, 32					; 00000020H
	je	SHORT $L7664

; 475  :             pchPassPtr = pchParsePtr + 1;

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchPassPtr$[ebp], ecx
$L7664:

; 477  : 
; 478  :          pchParsePtr[ 0 ] = 0;

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	mov	BYTE PTR [edx], 0

; 479  :          pchParsePtr++;

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	add	eax, 1
	mov	DWORD PTR _pchParsePtr$[ebp], eax

; 480  : 
; 481  :          // finally, find the command, if any
; 482  :          if ( pchPassPtr )  // if Password found

	cmp	DWORD PTR _pchPassPtr$[ebp], 0
	je	SHORT $L7669
$L7667:

; 484  :             while ( pchParsePtr[ 0 ] && pchParsePtr[ 0 ] != ' ' &&
; 485  :                     pchParsePtr[ 0 ] != chSeparator )

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	SHORT $L7668
	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 32					; 00000020H
	je	SHORT $L7668
	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	movsx	ecx, BYTE PTR _chSeparator$[ebp]
	cmp	eax, ecx
	je	SHORT $L7668

; 487  :                pchParsePtr++;

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchParsePtr$[ebp], edx

; 488  :             }

	jmp	SHORT $L7667
$L7668:

; 489  : 
; 490  :             if ( pchParsePtr[ 0 ] )

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L7669

; 492  :                pchParsePtr[ 0 ] = 0;

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	mov	BYTE PTR [edx], 0

; 493  :                pchParsePtr++;

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	add	eax, 1
	mov	DWORD PTR _pchParsePtr$[ebp], eax
$L7669:

; 496  : 
; 497  :          if ( pchParsePtr[ 0 ] )

	mov	ecx, DWORD PTR _pchParsePtr$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	SHORT $L7674
$L7672:

; 499  :             while ( pchParsePtr[ 0 ] == ' ' )

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 32					; 00000020H
	jne	SHORT $L7673

; 500  :                pchParsePtr++;

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchParsePtr$[ebp], edx
	jmp	SHORT $L7672
$L7673:

; 501  : 
; 502  :             if ( pchParsePtr[ 0 ] )

	mov	eax, DWORD PTR _pchParsePtr$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L7674

; 503  :                pchCmdPtr = pchParsePtr;

	mov	edx, DWORD PTR _pchParsePtr$[ebp]
	mov	DWORD PTR _pchCmdPtr$[ebp], edx
$L7674:

; 507  : 
; 508  : #if 0
; 509  :    TraceLineS( "Application parse Input String->", cpcAppString );
; 510  :    // Now trace out what we have found
; 511  :    if ( szApplPtr )
; 512  :       TraceLineS( "Application:", szApplPtr );
; 513  :    else
; 514  :       TraceLineS( "Application pointer is ", "NULL" );
; 515  : 
; 516  :    if ( szWdodPtr )
; 517  :       TraceLineS( "Dialog:", szWdodPtr );
; 518  :    else
; 519  :       TraceLineS( "Dialog pointer is ", "NULL" );
; 520  : 
; 521  :    if ( szUserPtr )
; 522  :       TraceLineS( "User:", pchUserPtr );
; 523  :    else
; 524  :       TraceLineS( "User pointer is ", "NULL" );
; 525  : 
; 526  :    if ( pchPassPtr )
; 527  :       TraceLineS( "Password:", pchPassPtr );
; 528  :    else
; 529  :       TraceLineS( "Password pointer is ", "NULL" );
; 530  : 
; 531  :    if ( pchCmdPtr )
; 532  :       TraceLineS( "Command:", pchCmdPtr );
; 533  :    else
; 534  :       TraceLineS( "Command pointer is", "NULL" );
; 535  : #endif
; 536  : 
; 537  :    // Copy the parameters found back for the caller
; 538  :    if ( pchApplPtr )

	cmp	DWORD PTR _pchApplPtr$[ebp], 0
	je	SHORT $L7675

; 539  :       zstrcpy( pchReturnApp, pchApplPtr );

	mov	eax, DWORD PTR _pchApplPtr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pchReturnApp$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8
$L7675:

; 540  : 
; 541  :    if ( pchWdodPtr )

	cmp	DWORD PTR _pchWdodPtr$[ebp], 0
	je	SHORT $L7676

; 542  :       zstrcpy( pchReturnDialog, pchWdodPtr );

	mov	edx, DWORD PTR _pchWdodPtr$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchReturnDialog$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8
$L7676:

; 543  : 
; 544  :    if ( pchUserPtr )

	cmp	DWORD PTR _pchUserPtr$[ebp], 0
	je	SHORT $L7677

; 545  :       zstrcpy( pchReturnUserID, pchUserPtr );

	mov	ecx, DWORD PTR _pchUserPtr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchReturnUserID$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8
$L7677:

; 546  : 
; 547  :    if ( pchPassPtr )

	cmp	DWORD PTR _pchPassPtr$[ebp], 0
	je	SHORT $L7678

; 548  :       zstrcpy( pchReturnPassword, pchPassPtr );

	mov	eax, DWORD PTR _pchPassPtr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pchReturnPassword$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8
$L7678:

; 549  : 
; 550  :    if ( pchCmdPtr )

	cmp	DWORD PTR _pchCmdPtr$[ebp], 0
	je	SHORT $L7679

; 551  :       zstrcpy( pchReturnCommand, pchCmdPtr );

	mov	edx, DWORD PTR _pchCmdPtr$[ebp]
	push	edx
	mov	eax, DWORD PTR _pchReturnCommand$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8
$L7679:

; 552  : 
; 553  :    return( 0 );

	xor	ax, ax
$L7619:

; 554  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnParseAppString ENDP
_TEXT	ENDS
PUBLIC	??_C@_0EM@BOOB@?$CIAPP?$CJ?5About?5to?5create?5app?5?$CI0x?$CF08@ ; `string'
PUBLIC	??_C@_0O@HBNK@Zeidon?5System?$AA@		; `string'
PUBLIC	??_C@_0BN@GLMH@?$CIAPP?$CJ?5About?5to?5create?5app?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_05JBPC@?$FLApp?4?$AA@			; `string'
PUBLIC	??_C@_01FIMD@?$FN?$AA@				; `string'
PUBLIC	??_C@_09LNJJ@KeepAlive?$AA@			; `string'
PUBLIC	??_C@_0BG@GDLG@CreateApp?5KeepAlive?3?5?$AA@	; `string'
PUBLIC	??_C@_07GIMK@Domains?$AA@			; `string'
PUBLIC	??_C@_0CA@MKLC@?$CIap?$CJ?5looking?5for?5domains?5with?3?5?$AA@ ; `string'
PUBLIC	??_C@_04DIDG@ROOT?$AA@				; `string'
PUBLIC	??_C@_06PIJH@OBJECT?$AA@			; `string'
PUBLIC	??_C@_0M@NDFG@DomainGroup?$AA@			; `string'
PUBLIC	??_C@_08JOPH@OPERNAME?$AA@			; `string'
PUBLIC	??_C@_0L@CGKE@OPERNUMBER?$AA@			; `string'
PUBLIC	??_C@_0DA@PLNM@?$CIap?$CJ?5More?5than?5one?5default?5Conte@ ; `string'
PUBLIC	_fnCreateApp
PUBLIC	_fnDeleteApp
PUBLIC	_fnDropTableEntry
PUBLIC	_fnDeleteContext
EXTRN	_SysGetProcessID@4:NEAR
EXTRN	_fnSysOpenFile@12:NEAR
EXTRN	_SysParseLine@12:NEAR
EXTRN	_TraceLineS@8:NEAR
EXTRN	_TraceLine:NEAR
EXTRN	_fnSysReadLine@16:NEAR
EXTRN	_SysReadZeidonIni@16:NEAR
EXTRN	__imp___pctype:DWORD
EXTRN	__imp___isctype:NEAR
EXTRN	_strcat:NEAR
EXTRN	_strcmp:NEAR
EXTRN	__imp__strchr:NEAR
EXTRN	__imp___stricmp:NEAR
EXTRN	__imp__strncmp:NEAR
EXTRN	_fnAllocDataspace:NEAR
EXTRN	_fnStoreStringInDataspace:NEAR
EXTRN	_fnFreeDataspace:NEAR
EXTRN	__imp____mb_cur_max:DWORD
EXTRN	_g_hAnchorBlock:DWORD
EXTRN	_AnchorBlock:DWORD
EXTRN	_cDirSep:BYTE
EXTRN	_lNullInteger:DWORD
EXTRN	_szlAppFile:DWORD
EXTRN	_szlDomainFile:DWORD
EXTRN	_szlAPPLICATION:DWORD
EXTRN	__imp__atol:NEAR
EXTRN	_szlDOMAIN:DWORD
EXTRN	_szlCONTEXT:DWORD
EXTRN	_szlNLS_TABLEENTRY:DWORD
EXTRN	_szlTABLEENTRY:DWORD
EXTRN	_szlREGULAREXPRESSION:DWORD
EXTRN	_szlAPP_NAME:DWORD
EXTRN	_szlAPP_DFLT_Dialog:DWORD
EXTRN	_szlAPP_DLL:DWORD
EXTRN	_szlAPP_ADOBIN:DWORD
EXTRN	_szlAPP_LOCAL:DWORD
EXTRN	_szlAPP_SHARED:DWORD
EXTRN	_szlAPP_QLPLR:DWORD
EXTRN	_szlAPP_QXODS:DWORD
EXTRN	_szlAPP_SOURCE:DWORD
EXTRN	_SysAppendcDirSep@4:NEAR
EXTRN	_szlCONTEXTRESTRICTION:DWORD
EXTRN	_szlDATATYPE:DWORD
EXTRN	_fnConvertEnvironmentString@8:NEAR
EXTRN	_szlDECIMALFORMAT:DWORD
EXTRN	_szlDLL_NAME:DWORD
EXTRN	_szlDOMAINTYPE:DWORD
EXTRN	_szlEDITSTRING:DWORD
EXTRN	_fnSysCloseFile@12:NEAR
EXTRN	_szlEXTERNALVALUE:DWORD
EXTRN	_szlINTERNALVALUE:DWORD
EXTRN	_szlISDEFAULT:DWORD
EXTRN	_szlLanguageIndex:DWORD
EXTRN	_szlLNAME:DWORD
EXTRN	_szlMAXSTRINGLTH:DWORD
EXTRN	_szlNAME:DWORD
EXTRN	_szlPNAME:DWORD
EXTRN	_szlRESTRICTED:DWORD
EXTRN	_szlText:DWORD
EXTRN	_szlTYPE:DWORD
EXTRN	_szlZKEY:DWORD
;	COMDAT ??_C@_0EM@BOOB@?$CIAPP?$CJ?5About?5to?5create?5app?5?$CI0x?$CF08@
; File C:\10C\A\oe\KZOEAPAA.C
_DATA	SEGMENT
??_C@_0EM@BOOB@?$CIAPP?$CJ?5About?5to?5create?5app?5?$CI0x?$CF08@ DB '(AP'
	DB	'P) About to create app (0x%08x): %s (%s)  for Task: 0x%08x   '
	DB	'Process: %d', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@HBNK@Zeidon?5System?$AA@
_DATA	SEGMENT
??_C@_0O@HBNK@Zeidon?5System?$AA@ DB 'Zeidon System', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@GLMH@?$CIAPP?$CJ?5About?5to?5create?5app?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BN@GLMH@?$CIAPP?$CJ?5About?5to?5create?5app?5?$DN?5?$AA@ DB '(APP)'
	DB	' About to create app = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_05JBPC@?$FLApp?4?$AA@
_DATA	SEGMENT
??_C@_05JBPC@?$FLApp?4?$AA@ DB '[App.', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_01FIMD@?$FN?$AA@
_DATA	SEGMENT
??_C@_01FIMD@?$FN?$AA@ DB ']', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_09LNJJ@KeepAlive?$AA@
_DATA	SEGMENT
??_C@_09LNJJ@KeepAlive?$AA@ DB 'KeepAlive', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@GDLG@CreateApp?5KeepAlive?3?5?$AA@
_DATA	SEGMENT
??_C@_0BG@GDLG@CreateApp?5KeepAlive?3?5?$AA@ DB 'CreateApp KeepAlive: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_07GIMK@Domains?$AA@
_DATA	SEGMENT
??_C@_07GIMK@Domains?$AA@ DB 'Domains', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CA@MKLC@?$CIap?$CJ?5looking?5for?5domains?5with?3?5?$AA@
_DATA	SEGMENT
??_C@_0CA@MKLC@?$CIap?$CJ?5looking?5for?5domains?5with?3?5?$AA@ DB '(ap) '
	DB	'looking for domains with: ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_04DIDG@ROOT?$AA@
_DATA	SEGMENT
??_C@_04DIDG@ROOT?$AA@ DB 'ROOT', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_06PIJH@OBJECT?$AA@
_DATA	SEGMENT
??_C@_06PIJH@OBJECT?$AA@ DB 'OBJECT', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@NDFG@DomainGroup?$AA@
_DATA	SEGMENT
??_C@_0M@NDFG@DomainGroup?$AA@ DB 'DomainGroup', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08JOPH@OPERNAME?$AA@
_DATA	SEGMENT
??_C@_08JOPH@OPERNAME?$AA@ DB 'OPERNAME', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@CGKE@OPERNUMBER?$AA@
_DATA	SEGMENT
??_C@_0L@CGKE@OPERNUMBER?$AA@ DB 'OPERNUMBER', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DA@PLNM@?$CIap?$CJ?5More?5than?5one?5default?5Conte@
_DATA	SEGMENT
??_C@_0DA@PLNM@?$CIap?$CJ?5More?5than?5one?5default?5Conte@ DB '(ap) More'
	DB	' than one default Context for Domain: ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTask$ = 8
_cpcAppName$ = 12
_lpApp$ = -644
_hApp$ = -640
_hTemp$ = -80
_pvFile$ = -120
_lpDomain$ = -12
_lpCurrDomain$ = -652
_hFile$ = -1172
_szWorkString$ = -636
_szWorkString2$ = -1168
_pchLine$ = -24
_nCurrState$ = -648
_nCurrEntity$ = -656
_nLineNbr$ = -1176
_szEntityName$ = -72
_szAttrName$ = -116
_lpContext$ = -36
_lpTableEntry$ = -76
_lpNLS_TableEntry$ = -32
_lpRegExpression$ = -28
_lpLName$ = -20
_lpNextDomain$ = -8
_bFound$ = -16
_bLName$ = -4
_nEOF$ = -124
_k$7857 = -1180
_hDomain$7874 = -1184
_hContext$7875 = -1188
_k$7879 = -1192
_lpTempTable$7910 = -1196
_lpCurrContext$8034 = -1204
_lpNextContext$8035 = -1200
_fnCreateApp PROC NEAR

; 582  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 1280				; 00000500H

; 583  :    LPAPP             lpApp;
; 584  :    zPVOID            hApp;
; 585  :    zPVOID            hTemp;
; 586  :    zPVOID            pvFile;
; 587  :    LPDOMAIN          lpDomain;
; 588  :    LPDOMAIN          lpCurrDomain;
; 589  :    zLONG             hFile;
; 590  :    zCHAR             szWorkString[ zMAX_FILESPEC_LTH ];  // prevent overflow in
; 591  :    zCHAR             szWorkString2[ zMAX_FILESPEC_LTH ]; // fnConvertEnvironnentString
; 592  :    zPCHAR            pchLine;
; 593  :    zSHORT            nCurrState;
; 594  :    zSHORT            nCurrEntity;
; 595  :    zSHORT            nLineNbr;
; 596  :    zCHAR             szEntityName[ 33 ];
; 597  :    zCHAR             szAttrName[ 33 ];
; 598  :    zLPCONTEXT        lpContext;
; 599  :    LPTABLEENTRY      lpTableEntry;
; 600  :    LPNLSTABLEENTRY   lpNLS_TableEntry;
; 601  :    LPREGEXPRESSION   lpRegExpression;
; 602  :    LPLNAME           lpLName;
; 603  :    LPDOMAIN          lpNextDomain;
; 604  :    zBOOL             bFound;
; 605  :    zBOOL             bLName;
; 606  :    int               nEOF;
; 607  : // zCHAR             chMainTask;  // debugging only dks 2005.12.01
; 608  : 
; 609  :    if ( AnchorBlock == 0 || lpTask == 0 )

	cmp	DWORD PTR _AnchorBlock, 0
	je	SHORT $L7710
	cmp	DWORD PTR _lpTask$[ebp], 0
	jne	SHORT $L7709
$L7710:

; 610  :       return( 0 );

	xor	eax, eax
	jmp	$L7684
$L7709:

; 611  : 
; 612  :    // debugging only dks 2005.12.01
; 613  : // if ( zGETHNDL( lpTask ) == AnchorBlock->hMainTask )
; 614  : //    chMainTask = 'Y';
; 615  : // else
; 616  : //    chMainTask = 0;
; 617  : 
; 618  :    // If no application name was passed and the system application
; 619  :    // has been established, return the system application.
; 620  :    if ( (cpcAppName == 0 || cpcAppName[ 0 ] == 0) && AnchorBlock->hSystemApp )

	cmp	DWORD PTR _cpcAppName$[ebp], 0
	je	SHORT $L7712
	mov	eax, DWORD PTR _cpcAppName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L7711
$L7712:
	mov	edx, DWORD PTR _AnchorBlock
	cmp	DWORD PTR [edx+110], 0
	je	SHORT $L7711

; 621  :       return( zGETPTR( AnchorBlock->hSystemApp ) );

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+110]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	jmp	$L7684
$L7711:

; 622  : 
; 623  :    if ( cpcAppName ) // if not a call to load system app

	cmp	DWORD PTR _cpcAppName$[ebp], 0
	je	$L7732

; 625  :       // First see if application is already running
; 626  :       for ( lpApp = zGETPTR( AnchorBlock->hFirstApp );
; 627  :             lpApp;
; 628  :             lpApp = zGETPTR( lpApp->hNextApp ) )

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+126]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpApp$[ebp], eax
	jmp	SHORT $L7717
$L7718:
	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpApp$[ebp], eax
$L7717:
	cmp	DWORD PTR _lpApp$[ebp], 0
	je	SHORT $L7719

; 630  :          if ( zstrcmpi( lpApp->szName, cpcAppName ) == 0 )

	mov	eax, DWORD PTR _cpcAppName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpApp$[ebp]
	add	ecx, 6
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7720

; 631  :             return( lpApp );

	mov	eax, DWORD PTR _lpApp$[ebp]
	jmp	$L7684
$L7720:

; 632  :       }

	jmp	SHORT $L7718
$L7719:

; 633  : 
; 634  :       // Next see if application is defined to system.
; 635  :       zstrcpy( szWorkString, AnchorBlock->szZeidonLocal );

	mov	edx, DWORD PTR _AnchorBlock
	add	edx, 138				; 0000008aH
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 636  :       zstrcat( szWorkString, szlAppFile );

	mov	ecx, DWORD PTR _szlAppFile
	push	ecx
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 637  : 
; 638  :       // Open Application definition file.
; 639  :       bFound = FALSE;

	mov	BYTE PTR _bFound$[ebp], 0

; 640  :       hFile = fnSysOpenFile( lpTask, szWorkString, COREFILE_READ );

	push	128					; 00000080H
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnSysOpenFile@12
	mov	DWORD PTR _hFile$[ebp], eax

; 641  :       if ( hFile == -1 )

	cmp	DWORD PTR _hFile$[ebp], -1
	jne	SHORT $L7721

; 643  :          // "KZOEE009 - Error opening application definition file"
; 644  :          fnIssueCoreError( lpTask, 0, 16, 9, 0, szWorkString, 0 );

	push	0
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	push	0
	push	9
	push	16					; 00000010H
	push	0
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 645  :          return( 0 );

	xor	eax, eax
	jmp	$L7684
$L7721:

; 647  : 
; 648  :       // Read in application definition information.
; 649  :       pvFile = 0;

	mov	DWORD PTR _pvFile$[ebp], 0

; 650  :       nEOF = fnSysReadLine( lpTask, &pchLine, hFile, &pvFile );

	lea	ecx, DWORD PTR _pvFile$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hFile$[ebp]
	push	edx
	lea	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnSysReadLine@16
	mov	DWORD PTR _nEOF$[ebp], eax
$L7723:

; 651  :       while ( nEOF > 0 )

	cmp	DWORD PTR _nEOF$[ebp], 0
	jle	$L7724

; 653  :          if ( zstrncmp( pchLine + 1, szlAPPLICATION, 11 ) == 0 )

	push	11					; 0000000bH
	mov	edx, DWORD PTR _szlAPPLICATION
	push	edx
	mov	eax, DWORD PTR _pchLine$[ebp]
	add	eax, 1
	push	eax
	call	DWORD PTR __imp__strncmp
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	$L7731
$L7727:

; 655  :             while ( (nEOF = fnSysReadLine( lpTask, &pchLine,
; 656  :                                            hFile, &pvFile )) > 0 )

	lea	ecx, DWORD PTR _pvFile$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hFile$[ebp]
	push	edx
	lea	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnSysReadLine@16
	mov	DWORD PTR _nEOF$[ebp], eax
	cmp	DWORD PTR _nEOF$[ebp], 0
	jle	SHORT $L7728

; 658  :                if ( zstrncmp( pchLine + 1, szlAPP_NAME, 8 ) == 0 )

	push	8
	mov	edx, DWORD PTR _szlAPP_NAME
	push	edx
	mov	eax, DWORD PTR _pchLine$[ebp]
	add	eax, 1
	push	eax
	call	DWORD PTR __imp__strncmp
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $L7729

; 660  :                   SysParseLine( szWorkString, &pchLine, pchLine + 1 );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	add	ecx, 1
	push	ecx
	lea	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_SysParseLine@12

; 661  :                   if ( zstrcmpi( pchLine, cpcAppName ) == 0  )

	mov	ecx, DWORD PTR _cpcAppName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7730

; 662  :                      bFound = TRUE;  //  Set found flag

	mov	BYTE PTR _bFound$[ebp], 1
$L7730:

; 663  : 
; 664  :                   break;          //  Break to Application search

	jmp	SHORT $L7728
$L7729:

; 666  :             }

	jmp	SHORT $L7727
$L7728:

; 667  : 
; 668  :             if ( bFound )

	mov	eax, DWORD PTR _bFound$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L7731

; 669  :                break;   // Break to main line

	jmp	SHORT $L7724
$L7731:

; 671  : 
; 672  :          nEOF = fnSysReadLine( lpTask, &pchLine, hFile, &pvFile );

	lea	ecx, DWORD PTR _pvFile$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hFile$[ebp]
	push	edx
	lea	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnSysReadLine@16
	mov	DWORD PTR _nEOF$[ebp], eax

; 673  :       }

	jmp	$L7723
$L7724:

; 674  : 
; 675  :       // If the application was not found, issue an error and exit.
; 676  :       if ( bFound == FALSE )

	mov	edx, DWORD PTR _bFound$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	jne	SHORT $L7732

; 678  :          // "KZOEE010 - Requested application not found in "
; 679  :          fnSysCloseFile( lpTask, hFile, 0 );  // Close the Appl Defn file

	push	0
	mov	eax, DWORD PTR _hFile$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnSysCloseFile@12

; 680  :          fnIssueCoreError( lpTask, 0, 16, 10, 0, szlAppFile, cpcAppName );

	mov	edx, DWORD PTR _cpcAppName$[ebp]
	push	edx
	mov	eax, DWORD PTR _szlAppFile
	push	eax
	push	0
	push	10					; 0000000aH
	push	16					; 00000010H
	push	0
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 681  :          return( 0 );

	xor	eax, eax
	jmp	$L7684
$L7732:

; 684  : 
; 685  :    // Otherwise, create the named application (under ANCHORBLOCK mutex).
; 686  :    hApp = (LPAPP) fnAllocDataspace( (LPDATAHEADER) g_hAnchorBlock,
; 687  :                                     sizeof( AppRecord ), 1, 0, iApp );

	push	10003					; 00002713H
	push	0
	push	1
	push	1909					; 00000775H
	mov	edx, DWORD PTR _g_hAnchorBlock
	push	edx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hApp$[ebp], eax

; 688  :    if ( hApp == 0 )

	cmp	DWORD PTR _hApp$[ebp], 0
	jne	SHORT $L7736

; 689  :       return( 0 );

	xor	eax, eax
	jmp	$L7684
$L7736:

; 690  : 
; 691  :    lpApp = zGETPTR( hApp );

	mov	eax, DWORD PTR _hApp$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpApp$[ebp], eax

; 692  :    bLName = FALSE;

	mov	BYTE PTR _bLName$[ebp], 0

; 693  :    if ( cpcAppName )   // look for the user application

	cmp	DWORD PTR _cpcAppName$[ebp], 0
	je	$L7738

; 695  :       if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+2527]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L7739

; 696  :          TraceLine( "(APP) About to create app (0x%08x): %s (%s)  for Task: 0x%08x   Process: %d",
; 697  :                     hApp, cpcAppName, pchLine, zGETHNDL( lpTask ), SysGetProcessID( 0 ) );

	push	0
	call	_SysGetProcessID@4
	push	eax
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	push	eax
	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcAppName$[ebp]
	push	edx
	mov	eax, DWORD PTR _hApp$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0EM@BOOB@?$CIAPP?$CJ?5About?5to?5create?5app?5?$CI0x?$CF08@ ; `string'
	call	_TraceLine
	add	esp, 24					; 00000018H
$L7739:

; 698  : 
; 699  :       zstrcpy( lpApp->szName, pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 6
	push	edx
	call	_strcpy
	add	esp, 8

; 700  : 
; 701  :       // Load up libraries for application.
; 702  :       nEOF = fnSysReadLine( lpTask, &pchLine, hFile, &pvFile );

	lea	eax, DWORD PTR _pvFile$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hFile$[ebp]
	push	ecx
	lea	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	_fnSysReadLine@16
	mov	DWORD PTR _nEOF$[ebp], eax
$L7743:

; 703  :       while ( nEOF > 0 )

	cmp	DWORD PTR _nEOF$[ebp], 0
	jle	$L7744

; 705  :          if ( pchLine[ 0 ] == 'e' )

	mov	ecx, DWORD PTR _pchLine$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 101				; 00000065H
	jne	SHORT $L7748

; 707  :             if ( zstrncmp( pchLine + 1, szlLNAME, 5 ) != 0 )

	push	5
	mov	eax, DWORD PTR _szlLNAME
	push	eax
	mov	ecx, DWORD PTR _pchLine$[ebp]
	add	ecx, 1
	push	ecx
	call	DWORD PTR __imp__strncmp
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $L7746

; 708  :                break;

	jmp	$L7744
$L7746:

; 709  : 
; 710  :             bLName = TRUE;

	mov	BYTE PTR _bLName$[ebp], 1

; 711  : 
; 712  :             // Otherwise, create the named application (under ANCHORBLOCK mutex).
; 713  :             hTemp = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 714  :                                       sizeof( LNameRecord ), 1, 0, iLName );

	push	10041					; 00002739H
	push	0
	push	1
	push	74					; 0000004aH
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+114]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hTemp$[ebp], eax

; 715  :             if ( hTemp )

	cmp	DWORD PTR _hTemp$[ebp], 0
	je	SHORT $L7748

; 717  :                lpLName = zGETPTR( hTemp );

	mov	ecx, DWORD PTR _hTemp$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLName$[ebp], eax

; 718  : 
; 719  :                lpApp->hFirstLName = hTemp;

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR _hTemp$[ebp]
	mov	DWORD PTR [edx+1897], eax

; 720  :                lpLName->hNextLName = lpApp->hFirstLName;

	mov	ecx, DWORD PTR _lpLName$[ebp]
	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+1897]
	mov	DWORD PTR [ecx+2], eax
$L7748:

; 723  : 
; 724  :          if ( pchLine[ 0 ] == 'a' )

	mov	ecx, DWORD PTR _pchLine$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 97					; 00000061H
	jne	$L7845

; 726  :             SysParseLine( szWorkString, &pchLine, pchLine + 1 );

	mov	eax, DWORD PTR _pchLine$[ebp]
	add	eax, 1
	push	eax
	lea	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_SysParseLine@12
$L7752:

; 727  : 
; 728  :             // Get rid of leading spaces in pchLine.
; 729  :             while ( *pchLine && *pchLine == ' ' )

	mov	eax, DWORD PTR _pchLine$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L7753
	mov	edx, DWORD PTR _pchLine$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 32					; 00000020H
	jne	SHORT $L7753

; 730  :                pchLine++;

	mov	ecx, DWORD PTR _pchLine$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchLine$[ebp], ecx
	jmp	SHORT $L7752
$L7753:

; 731  : 
; 732  :             if ( *pchLine == 0 )

	mov	edx, DWORD PTR _pchLine$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L7754

; 736  :             else

	jmp	$L7845
$L7754:

; 737  :             if ( bLName )

	mov	ecx, DWORD PTR _bLName$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	$L7756

; 739  :                if ( lpLName )

	cmp	DWORD PTR _lpLName$[ebp], 0
	je	$L7781

; 741  :                   if ( zstrcmp( szWorkString, szlTYPE ) == 0 )

	movsx	edx, BYTE PTR _szWorkString$[ebp]
	mov	eax, DWORD PTR _szlTYPE
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L8361
	mov	edx, DWORD PTR _szlTYPE
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1208+[ebp], eax
	jmp	SHORT $L8362
$L8361:
	movsx	ecx, BYTE PTR _szWorkString$[ebp]
	mov	edx, DWORD PTR _szlTYPE
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -1208+[ebp], edx
$L8362:
	cmp	DWORD PTR -1208+[ebp], 0
	jne	SHORT $L7764

; 742  :                      lpLName->nType = (zSHORT) zatol( pchLine );

	mov	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	ecx, DWORD PTR _lpLName$[ebp]
	mov	WORD PTR [ecx+6], ax

; 743  :                   else

	jmp	$L7781
$L7764:

; 744  :                   if ( zstrcmp( szWorkString, szlLNAME ) == 0 )

	movsx	edx, BYTE PTR _szWorkString$[ebp]
	mov	eax, DWORD PTR _szlLNAME
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L8363
	mov	edx, DWORD PTR _szlLNAME
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1212+[ebp], eax
	jmp	SHORT $L8364
$L8363:
	movsx	ecx, BYTE PTR _szWorkString$[ebp]
	mov	edx, DWORD PTR _szlLNAME
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -1212+[ebp], edx
$L8364:
	cmp	DWORD PTR -1212+[ebp], 0
	jne	SHORT $L7773

; 745  :                      zstrcpy( lpLName->szLName, pchLine );

	mov	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpLName$[ebp]
	add	ecx, 8
	push	ecx
	call	_strcpy
	add	esp, 8

; 746  :                   else

	jmp	SHORT $L7781
$L7773:

; 747  :                   if ( zstrcmp( szWorkString, szlPNAME ) == 0 )

	movsx	edx, BYTE PTR _szWorkString$[ebp]
	mov	eax, DWORD PTR _szlPNAME
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L8365
	mov	edx, DWORD PTR _szlPNAME
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1216+[ebp], eax
	jmp	SHORT $L8366
$L8365:
	movsx	ecx, BYTE PTR _szWorkString$[ebp]
	mov	edx, DWORD PTR _szlPNAME
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -1216+[ebp], edx
$L8366:
	cmp	DWORD PTR -1216+[ebp], 0
	jne	SHORT $L7781

; 748  :                      zstrcpy( lpLName->szPName, pchLine );

	mov	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpLName$[ebp]
	add	ecx, 41					; 00000029H
	push	ecx
	call	_strcpy
	add	esp, 8
$L7781:

; 751  :             else

	jmp	$L7845
$L7756:

; 752  :             if ( zstrcmp( szWorkString, szlAPP_DFLT_Dialog ) == 0 &&
; 753  :                  lpApp->szDefaultDialog[ 0 ] == 0 )

	movsx	edx, BYTE PTR _szWorkString$[ebp]
	mov	eax, DWORD PTR _szlAPP_DFLT_Dialog
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L8367
	mov	edx, DWORD PTR _szlAPP_DFLT_Dialog
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1220+[ebp], eax
	jmp	SHORT $L8368
$L8367:
	movsx	ecx, BYTE PTR _szWorkString$[ebp]
	mov	edx, DWORD PTR _szlAPP_DFLT_Dialog
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -1220+[ebp], edx
$L8368:
	cmp	DWORD PTR -1220+[ebp], 0
	jne	SHORT $L7789
	mov	eax, DWORD PTR _lpApp$[ebp]
	movsx	ecx, BYTE PTR [eax+39]
	test	ecx, ecx
	jne	SHORT $L7789

; 755  :                zstrcpy( lpApp->szDefaultDialog, pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 39					; 00000027H
	push	eax
	call	_strcpy
	add	esp, 8

; 757  :             else

	jmp	$L7845
$L7789:

; 758  :             if ( zstrcmp( szWorkString, szlAPP_DLL ) == 0 &&
; 759  :                  lpApp->szLibraryDir[ 0 ] == 0 )

	movsx	ecx, BYTE PTR _szWorkString$[ebp]
	mov	edx, DWORD PTR _szlAPP_DLL
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L8369
	mov	ecx, DWORD PTR _szlAPP_DLL
	push	ecx
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1224+[ebp], eax
	jmp	SHORT $L8370
$L8369:
	movsx	eax, BYTE PTR _szWorkString$[ebp]
	mov	ecx, DWORD PTR _szlAPP_DLL
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -1224+[ebp], ecx
$L8370:
	cmp	DWORD PTR -1224+[ebp], 0
	jne	SHORT $L7797
	mov	edx, DWORD PTR _lpApp$[ebp]
	movsx	eax, BYTE PTR [edx+90]
	test	eax, eax
	jne	SHORT $L7797

; 761  :                SysAppendcDirSep( pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	call	_SysAppendcDirSep@4

; 762  :                fnConvertEnvironmentString( szWorkString2, pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	lea	eax, DWORD PTR _szWorkString2$[ebp]
	push	eax
	call	_fnConvertEnvironmentString@8

; 763  :                zstrcpy( lpApp->szLibraryDir, szWorkString2 );

	lea	ecx, DWORD PTR _szWorkString2$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 90					; 0000005aH
	push	edx
	call	_strcpy
	add	esp, 8

; 765  :             else

	jmp	$L7845
$L7797:

; 766  :             if ( zstrcmp( szWorkString, szlAPP_ADOBIN ) == 0 &&
; 767  :                  lpApp->szObjectDir[ 0 ] == 0 )

	movsx	eax, BYTE PTR _szWorkString$[ebp]
	mov	ecx, DWORD PTR _szlAPP_ADOBIN
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L8371
	mov	eax, DWORD PTR _szlAPP_ADOBIN
	push	eax
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1228+[ebp], eax
	jmp	SHORT $L8372
$L8371:
	movsx	edx, BYTE PTR _szWorkString$[ebp]
	mov	eax, DWORD PTR _szlAPP_ADOBIN
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -1228+[ebp], eax
$L8372:
	cmp	DWORD PTR -1228+[ebp], 0
	jne	SHORT $L7805
	mov	ecx, DWORD PTR _lpApp$[ebp]
	movsx	edx, BYTE PTR [ecx+347]
	test	edx, edx
	jne	SHORT $L7805

; 769  :                SysAppendcDirSep( pchLine );

	mov	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	call	_SysAppendcDirSep@4

; 770  :                fnConvertEnvironmentString( szWorkString2, pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szWorkString2$[ebp]
	push	edx
	call	_fnConvertEnvironmentString@8

; 771  :                zstrcpy( lpApp->szObjectDir, szWorkString2 );

	lea	eax, DWORD PTR _szWorkString2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpApp$[ebp]
	add	ecx, 347				; 0000015bH
	push	ecx
	call	_strcpy
	add	esp, 8

; 773  :             else

	jmp	$L7845
$L7805:

; 774  :             if ( zstrcmp( szWorkString, szlAPP_LOCAL ) == 0 &&
; 775  :                  lpApp->szLocalDir[ 0 ] == 0 )

	movsx	edx, BYTE PTR _szWorkString$[ebp]
	mov	eax, DWORD PTR _szlAPP_LOCAL
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L8373
	mov	edx, DWORD PTR _szlAPP_LOCAL
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1232+[ebp], eax
	jmp	SHORT $L8374
$L8373:
	movsx	ecx, BYTE PTR _szWorkString$[ebp]
	mov	edx, DWORD PTR _szlAPP_LOCAL
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -1232+[ebp], edx
$L8374:
	cmp	DWORD PTR -1232+[ebp], 0
	jne	SHORT $L7813
	mov	eax, DWORD PTR _lpApp$[ebp]
	movsx	ecx, BYTE PTR [eax+604]
	test	ecx, ecx
	jne	SHORT $L7813

; 777  :                SysAppendcDirSep( pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	call	_SysAppendcDirSep@4

; 778  :                fnConvertEnvironmentString( szWorkString2, pchLine );

	mov	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szWorkString2$[ebp]
	push	ecx
	call	_fnConvertEnvironmentString@8

; 779  :                zstrcpy( lpApp->szLocalDir, szWorkString2 );

	lea	edx, DWORD PTR _szWorkString2$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 604				; 0000025cH
	push	eax
	call	_strcpy
	add	esp, 8

; 781  :             else

	jmp	$L7845
$L7813:

; 782  :             if ( zstrcmp( szWorkString, szlAPP_SHARED ) == 0 &&
; 783  :                  lpApp->szSharedDir[ 0 ] == 0 )

	movsx	ecx, BYTE PTR _szWorkString$[ebp]
	mov	edx, DWORD PTR _szlAPP_SHARED
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L8375
	mov	ecx, DWORD PTR _szlAPP_SHARED
	push	ecx
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1236+[ebp], eax
	jmp	SHORT $L8376
$L8375:
	movsx	eax, BYTE PTR _szWorkString$[ebp]
	mov	ecx, DWORD PTR _szlAPP_SHARED
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -1236+[ebp], ecx
$L8376:
	cmp	DWORD PTR -1236+[ebp], 0
	jne	SHORT $L7821
	mov	edx, DWORD PTR _lpApp$[ebp]
	movsx	eax, BYTE PTR [edx+861]
	test	eax, eax
	jne	SHORT $L7821

; 785  :                SysAppendcDirSep( pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	call	_SysAppendcDirSep@4

; 786  :                fnConvertEnvironmentString( szWorkString2, pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	lea	eax, DWORD PTR _szWorkString2$[ebp]
	push	eax
	call	_fnConvertEnvironmentString@8

; 787  :                zstrcpy( lpApp->szSharedDir, szWorkString2 );

	lea	ecx, DWORD PTR _szWorkString2$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 861				; 0000035dH
	push	edx
	call	_strcpy
	add	esp, 8

; 789  :             else

	jmp	$L7845
$L7821:

; 790  :             if ( zstrcmp( szWorkString, szlAPP_QLPLR ) == 0 &&
; 791  :                  lpApp->szQLPLR_Dir[ 0 ] == 0 )

	movsx	eax, BYTE PTR _szWorkString$[ebp]
	mov	ecx, DWORD PTR _szlAPP_QLPLR
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L8377
	mov	eax, DWORD PTR _szlAPP_QLPLR
	push	eax
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1240+[ebp], eax
	jmp	SHORT $L8378
$L8377:
	movsx	edx, BYTE PTR _szWorkString$[ebp]
	mov	eax, DWORD PTR _szlAPP_QLPLR
	movsx	ecx, BYTE PTR [eax]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -1240+[ebp], eax
$L8378:
	cmp	DWORD PTR -1240+[ebp], 0
	jne	SHORT $L7829
	mov	ecx, DWORD PTR _lpApp$[ebp]
	movsx	edx, BYTE PTR [ecx+1118]
	test	edx, edx
	jne	SHORT $L7829

; 793  :                SysAppendcDirSep( pchLine );

	mov	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	call	_SysAppendcDirSep@4

; 794  :                fnConvertEnvironmentString( szWorkString2, pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szWorkString2$[ebp]
	push	edx
	call	_fnConvertEnvironmentString@8

; 795  :                zstrcpy( lpApp->szQLPLR_Dir, szWorkString2 );

	lea	eax, DWORD PTR _szWorkString2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpApp$[ebp]
	add	ecx, 1118				; 0000045eH
	push	ecx
	call	_strcpy
	add	esp, 8

; 797  :             else

	jmp	$L7845
$L7829:

; 798  :             if ( zstrcmp( szWorkString, szlAPP_QXODS ) == 0 &&
; 799  :                  lpApp->szQXODS_Dir[ 0 ] == 0 )

	movsx	edx, BYTE PTR _szWorkString$[ebp]
	mov	eax, DWORD PTR _szlAPP_QXODS
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L8379
	mov	edx, DWORD PTR _szlAPP_QXODS
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1244+[ebp], eax
	jmp	SHORT $L8380
$L8379:
	movsx	ecx, BYTE PTR _szWorkString$[ebp]
	mov	edx, DWORD PTR _szlAPP_QXODS
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -1244+[ebp], edx
$L8380:
	cmp	DWORD PTR -1244+[ebp], 0
	jne	SHORT $L7837
	mov	eax, DWORD PTR _lpApp$[ebp]
	movsx	ecx, BYTE PTR [eax+1375]
	test	ecx, ecx
	jne	SHORT $L7837

; 801  :                SysAppendcDirSep( pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	call	_SysAppendcDirSep@4

; 802  :                fnConvertEnvironmentString( szWorkString2, pchLine );

	mov	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szWorkString2$[ebp]
	push	ecx
	call	_fnConvertEnvironmentString@8

; 803  :                zstrcpy( lpApp->szQXODS_Dir, szWorkString2 );

	lea	edx, DWORD PTR _szWorkString2$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 1375				; 0000055fH
	push	eax
	call	_strcpy
	add	esp, 8

; 805  :             else

	jmp	$L7845
$L7837:

; 806  :             if ( zstrcmp( szWorkString, szlAPP_SOURCE ) == 0 &&
; 807  :                  lpApp->szSourceDir[ 0 ] == 0 )

	movsx	ecx, BYTE PTR _szWorkString$[ebp]
	mov	edx, DWORD PTR _szlAPP_SOURCE
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L8381
	mov	ecx, DWORD PTR _szlAPP_SOURCE
	push	ecx
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1248+[ebp], eax
	jmp	SHORT $L8382
$L8381:
	movsx	eax, BYTE PTR _szWorkString$[ebp]
	mov	ecx, DWORD PTR _szlAPP_SOURCE
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -1248+[ebp], ecx
$L8382:
	cmp	DWORD PTR -1248+[ebp], 0
	jne	SHORT $L7845
	mov	edx, DWORD PTR _lpApp$[ebp]
	movsx	eax, BYTE PTR [edx+1632]
	test	eax, eax
	jne	SHORT $L7845

; 809  :                SysAppendcDirSep( pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	call	_SysAppendcDirSep@4

; 810  :                fnConvertEnvironmentString( szWorkString2, pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	lea	eax, DWORD PTR _szWorkString2$[ebp]
	push	eax
	call	_fnConvertEnvironmentString@8

; 811  :                zstrcpy( lpApp->szSourceDir, szWorkString2 );

	lea	ecx, DWORD PTR _szWorkString2$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 1632				; 00000660H
	push	edx
	call	_strcpy
	add	esp, 8
$L7845:

; 814  : 
; 815  :          nEOF = fnSysReadLine( lpTask, &pchLine, hFile, &pvFile );

	lea	eax, DWORD PTR _pvFile$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hFile$[ebp]
	push	ecx
	lea	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	_fnSysReadLine@16
	mov	DWORD PTR _nEOF$[ebp], eax

; 816  :       }

	jmp	$L7743
$L7744:

; 818  :    else       // set up the system application

	jmp	$L7846
$L7738:

; 820  :       if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+2527]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L7847

; 821  :          TraceLineS( "(APP) About to create app = ", "Zeidon System" );

	push	OFFSET FLAT:??_C@_0O@HBNK@Zeidon?5System?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BN@GLMH@?$CIAPP?$CJ?5About?5to?5create?5app?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L7847:

; 822  : 
; 823  :       zstrcpy( lpApp->szName,       "Zeidon System" );

	push	OFFSET FLAT:??_C@_0O@HBNK@Zeidon?5System?$AA@ ; `string'
	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 6
	push	eax
	call	_strcpy
	add	esp, 8

; 824  :       zstrcpy( lpApp->szObjectDir,  AnchorBlock->szZeidonSys );

	mov	ecx, DWORD PTR _AnchorBlock
	add	ecx, 652				; 0000028cH
	push	ecx
	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 347				; 0000015bH
	push	edx
	call	_strcpy
	add	esp, 8

; 825  :       zstrcpy( lpApp->szLibraryDir, AnchorBlock->szZeidonBin );

	mov	eax, DWORD PTR _AnchorBlock
	add	eax, 395				; 0000018bH
	push	eax
	mov	ecx, DWORD PTR _lpApp$[ebp]
	add	ecx, 90					; 0000005aH
	push	ecx
	call	_strcpy
	add	esp, 8

; 826  :       zstrcpy( lpApp->szLocalDir,   AnchorBlock->szZeidonLoc );

	mov	edx, DWORD PTR _AnchorBlock
	add	edx, 909				; 0000038dH
	push	edx
	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 604				; 0000025cH
	push	eax
	call	_strcpy
	add	esp, 8

; 827  :       zstrcpy( lpApp->szSharedDir,  AnchorBlock->szZeidonShr );

	mov	ecx, DWORD PTR _AnchorBlock
	add	ecx, 1166				; 0000048eH
	push	ecx
	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 861				; 0000035dH
	push	edx
	call	_strcpy
	add	esp, 8
$L7846:

; 829  : 
; 830  :    if ( cpcAppName )              // if not creating the system app

	cmp	DWORD PTR _cpcAppName$[ebp], 0
	je	SHORT $L7850

; 831  :       fnSysCloseFile( lpTask, hFile, 0 );  // Close the file

	push	0
	mov	eax, DWORD PTR _hFile$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnSysCloseFile@12
$L7850:

; 832  : 
; 833  :    // Now that the application has been loaded, load the domains
; 834  :    // for the application
; 835  :    zstrcpy( szWorkString, "[App." );

	push	OFFSET FLAT:??_C@_05JBPC@?$FLApp?4?$AA@	; `string'
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 836  :    zstrcpy( szWorkString + 5, lpApp->szName );

	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 6
	push	eax
	lea	ecx, DWORD PTR _szWorkString$[ebp+5]
	push	ecx
	call	_strcpy
	add	esp, 8

; 837  :    zstrcat( szWorkString, "]" );

	push	OFFSET FLAT:??_C@_01FIMD@?$FN?$AA@	; `string'
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 838  :    szWorkString2[ 0 ] = 0;

	mov	BYTE PTR _szWorkString2$[ebp], 0

; 839  : 
; 840  :    // Check to see if we should keep the app running at all times.
; 841  :    SysReadZeidonIni( -1, szWorkString, "KeepAlive", szWorkString2 );

	lea	eax, DWORD PTR _szWorkString2$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_09LNJJ@KeepAlive?$AA@	; `string'
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	push	-1
	call	_SysReadZeidonIni@16

; 842  :    if ( szWorkString2[ 0 ] == 'Y' )

	movsx	edx, BYTE PTR _szWorkString2$[ebp]
	cmp	edx, 89					; 00000059H
	jne	SHORT $L7854

; 844  :       lpApp->bKeepAlive = TRUE;

	mov	eax, DWORD PTR _lpApp$[ebp]
	mov	ecx, DWORD PTR [eax+1905]
	or	ecx, 1
	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	DWORD PTR [edx+1905], ecx

; 845  :       TraceLineS( "CreateApp KeepAlive: ", lpApp->szName );

	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 6
	push	eax
	push	OFFSET FLAT:??_C@_0BG@GDLG@CreateApp?5KeepAlive?3?5?$AA@ ; `string'
	call	_TraceLineS@8
$L7854:

; 847  : 
; 848  :    // Look for the application group in the .ini file, and the
; 849  :    // Domains parameter.
; 850  :    if ( zstrchr( szWorkString, ' ' ) )

	push	32					; 00000020H
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	call	DWORD PTR __imp__strchr
	add	esp, 8
	test	eax, eax
	je	SHORT $L7860

; 852  :       zSHORT k = zstrlen( szWorkString );

	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	mov	WORD PTR _k$7857[ebp], ax
$L7859:

; 853  :       while( k-- )

	movsx	eax, WORD PTR _k$7857[ebp]
	mov	cx, WORD PTR _k$7857[ebp]
	sub	cx, 1
	mov	WORD PTR _k$7857[ebp], cx
	test	eax, eax
	je	SHORT $L7860

; 855  :          if ( szWorkString[ k ] == ' ' )

	movsx	edx, WORD PTR _k$7857[ebp]
	movsx	eax, BYTE PTR _szWorkString$[ebp+edx]
	cmp	eax, 32					; 00000020H
	jne	SHORT $L7861

; 856  :             szWorkString[ k ] = '_';

	movsx	ecx, WORD PTR _k$7857[ebp]
	mov	BYTE PTR _szWorkString$[ebp+ecx], 95	; 0000005fH
$L7861:

; 857  :       }

	jmp	SHORT $L7859
$L7860:

; 859  : 
; 860  :    SysReadZeidonIni( -1, szWorkString, "Domains", szWorkString2 );

	lea	edx, DWORD PTR _szWorkString2$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_07GIMK@Domains?$AA@	; `string'
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	push	-1
	call	_SysReadZeidonIni@16

; 861  : 
; 862  :    // If there is directory separator then assume a path name is specified,
; 863  :    // otherwise, it hopefully is just a filename.ext.
; 864  :    if ( szWorkString2[ 0 ] )

	movsx	ecx, BYTE PTR _szWorkString2$[ebp]
	test	ecx, ecx
	je	SHORT $L7863

; 866  :       if ( zstrchr( szWorkString2, cDirSep ) )

	movsx	edx, BYTE PTR _cDirSep
	push	edx
	lea	eax, DWORD PTR _szWorkString2$[ebp]
	push	eax
	call	DWORD PTR __imp__strchr
	add	esp, 8
	test	eax, eax
	je	SHORT $L7864

; 867  :          zstrcpy( szWorkString, szWorkString2 );

	lea	ecx, DWORD PTR _szWorkString2$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 868  :       else

	jmp	SHORT $L7865
$L7864:

; 870  :          zstrcpy( szWorkString, lpApp->szObjectDir );

	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 347				; 0000015bH
	push	eax
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 871  :          SysAppendcDirSep( szWorkString );

	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_SysAppendcDirSep@4

; 872  :          zstrcat( szWorkString, szWorkString2 );

	lea	eax, DWORD PTR _szWorkString2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L7865:

; 875  :    else

	jmp	SHORT $L7866
$L7863:

; 877  :       // Build the file name for the application domains.
; 878  :       zstrcpy( szWorkString, lpApp->szObjectDir );

	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 347				; 0000015bH
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 879  :       SysAppendcDirSep( szWorkString );

	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	call	_SysAppendcDirSep@4

; 880  :       zstrcat( szWorkString, szlDomainFile );

	mov	edx, DWORD PTR _szlDomainFile
	push	edx
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcat
	add	esp, 8
$L7866:

; 888  : 
; 889  :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+2527]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L7867

; 890  :       TraceLineS( "(ap) looking for domains with: ", szWorkString );

	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CA@MKLC@?$CIap?$CJ?5looking?5for?5domains?5with?3?5?$AA@ ; `string'
	call	_TraceLineS@8
$L7867:

; 891  : 
; 892  :    // Open Domains definition file.
; 893  :    bFound = FALSE;

	mov	BYTE PTR _bFound$[ebp], 0

; 894  :    pvFile = 0;

	mov	DWORD PTR _pvFile$[ebp], 0

; 895  :    hFile = fnSysOpenFile( lpTask, szWorkString, COREFILE_READ );

	push	128					; 00000080H
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$[ebp]
	push	edx
	call	_fnSysOpenFile@12
	mov	DWORD PTR _hFile$[ebp], eax

; 896  :    if ( hFile == -1 )

	cmp	DWORD PTR _hFile$[ebp], -1
	jne	SHORT $L7869

; 898  :       if ( cpcAppName == 0 )    // the system app will run w/o domains

	cmp	DWORD PTR _cpcAppName$[ebp], 0
	jne	SHORT $L7870

; 899  :          return( lpApp );

	mov	eax, DWORD PTR _lpApp$[ebp]
	jmp	$L7684
$L7870:

; 900  : 
; 901  :       // "KZOEE011 - Error opening application domains file"
; 902  :       fnIssueCoreError( lpTask, 0, 20, 11, 0, szWorkString, cpcAppName );

	mov	eax, DWORD PTR _cpcAppName$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	push	0
	push	11					; 0000000bH
	push	20					; 00000014H
	push	0
	mov	edx, DWORD PTR _lpTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 903  :       fnDeleteApp( lpApp );

	mov	eax, DWORD PTR _lpApp$[ebp]
	push	eax
	call	_fnDeleteApp
	add	esp, 4

; 904  :       return( 0 );

	xor	eax, eax
	jmp	$L7684
$L7869:

; 906  : 
; 907  :    // Process the domain file.
; 908  :    nEOF = fnSysReadLine( lpTask, &pchLine, hFile, &pvFile );

	lea	ecx, DWORD PTR _pvFile$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hFile$[ebp]
	push	edx
	lea	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnSysReadLine@16
	mov	DWORD PTR _nEOF$[ebp], eax

; 909  : 
; 910  :    lpDomain = 0;

	mov	DWORD PTR _lpDomain$[ebp], 0

; 911  :    nCurrEntity = 0;  // no Current entity

	mov	WORD PTR _nCurrEntity$[ebp], 0

; 912  :    nCurrState = 0;   // Indicate no object in focus

	mov	WORD PTR _nCurrState$[ebp], 0

; 913  : 
; 914  :    //
; 915  :    // nCurrState codes
; 916  :    //    1  we are looking at a entity object line item
; 917  :    //    2  we are looking at a attribute object line item
; 918  :    //   10  invalid entity type
; 919  :    //   99  blank line / invalid line item.
; 920  :    //
; 921  :    // nCurrEntity code
; 922  :    //    1  Domain
; 923  :    //    2  Context
; 924  :    //    3  TableEntry
; 925  :    //    4  RegularExpression
; 926  :    //
; 927  :    nLineNbr = 0;

	mov	WORD PTR _nLineNbr$[ebp], 0
$L7872:

; 928  :    while ( nEOF > 0 )

	cmp	DWORD PTR _nEOF$[ebp], 0
	jle	$L7873

; 930  :       zPVOID hDomain;
; 931  :       zPVOID hContext;
; 932  : 
; 933  :       nLineNbr++;

	mov	dx, WORD PTR _nLineNbr$[ebp]
	add	dx, 1
	mov	WORD PTR _nLineNbr$[ebp], dx

; 934  :       if ( pchLine[ 0 ] == 'e' )

	mov	eax, DWORD PTR _pchLine$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 101				; 00000065H
	jne	SHORT $L7876

; 936  :          SysParseLine( szEntityName, &pchLine, pchLine + 1 );

	mov	edx, DWORD PTR _pchLine$[ebp]
	add	edx, 1
	push	edx
	lea	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szEntityName$[ebp]
	push	ecx
	call	_SysParseLine@12

; 937  :          nCurrState = 1;      // entity line item

	mov	WORD PTR _nCurrState$[ebp], 1

; 939  :       else

	jmp	$L7887
$L7876:

; 940  :       if ( pchLine[ 0 ] == 'a' )

	mov	edx, DWORD PTR _pchLine$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 97					; 00000061H
	jne	$L7878

; 942  :          zSHORT k;
; 943  : 
; 944  :          // We've got an attribute value.  Some attribute values may have
; 945  :          // leading spaces, so we need to do some special processing and we
; 946  :          // can't use SysParseLine.
; 947  :          for ( k = 0; !zisspace( pchLine[ k + 1 ] ) && pchLine[ k + 1 ]; k++ )

	mov	WORD PTR _k$7879[ebp], 0
	jmp	SHORT $L7880
$L7881:
	mov	cx, WORD PTR _k$7879[ebp]
	add	cx, 1
	mov	WORD PTR _k$7879[ebp], cx
$L7880:
	mov	edx, DWORD PTR __imp____mb_cur_max
	cmp	DWORD PTR [edx], 1
	jle	SHORT $L8383
	push	8
	movsx	eax, WORD PTR _k$7879[ebp]
	mov	ecx, DWORD PTR _pchLine$[ebp]
	movsx	edx, BYTE PTR [ecx+eax+1]
	push	edx
	call	DWORD PTR __imp___isctype
	add	esp, 8
	mov	DWORD PTR -1252+[ebp], eax
	jmp	SHORT $L8384
$L8383:
	movsx	eax, WORD PTR _k$7879[ebp]
	mov	ecx, DWORD PTR _pchLine$[ebp]
	movsx	edx, BYTE PTR [ecx+eax+1]
	mov	eax, DWORD PTR __imp___pctype
	mov	ecx, DWORD PTR [eax]
	xor	eax, eax
	mov	ax, WORD PTR [ecx+edx*2]
	and	eax, 8
	mov	DWORD PTR -1252+[ebp], eax
$L8384:
	cmp	DWORD PTR -1252+[ebp], 0
	jne	SHORT $L7882
	movsx	ecx, WORD PTR _k$7879[ebp]
	mov	edx, DWORD PTR _pchLine$[ebp]
	movsx	eax, BYTE PTR [edx+ecx+1]
	test	eax, eax
	je	SHORT $L7882

; 948  :             szAttrName[ k ] = pchLine[ k + 1 ];

	movsx	ecx, WORD PTR _k$7879[ebp]
	movsx	edx, WORD PTR _k$7879[ebp]
	mov	eax, DWORD PTR _pchLine$[ebp]
	mov	cl, BYTE PTR [eax+ecx+1]
	mov	BYTE PTR _szAttrName$[ebp+edx], cl
	jmp	$L7881
$L7882:

; 949  : 
; 950  :          // Set the null term for the attr name.
; 951  :          szAttrName[ k ] = 0;

	movsx	edx, WORD PTR _k$7879[ebp]
	mov	BYTE PTR _szAttrName$[ebp+edx], 0

; 952  : 
; 953  :          // Check for a null attribute value.
; 954  :          if ( pchLine[ k + 1 ] == 0 )

	movsx	eax, WORD PTR _k$7879[ebp]
	mov	ecx, DWORD PTR _pchLine$[ebp]
	movsx	edx, BYTE PTR [ecx+eax+1]
	test	edx, edx
	jne	SHORT $L7883

; 955  :             pchLine = pchLine + k + 1;

	movsx	eax, WORD PTR _k$7879[ebp]
	mov	ecx, DWORD PTR _pchLine$[ebp]
	lea	edx, DWORD PTR [ecx+eax+1]
	mov	DWORD PTR _pchLine$[ebp], edx

; 956  :          else

	jmp	SHORT $L7886
$L7883:

; 958  :             // We have an attribute value.  First make sure we've skipped the
; 959  :             // appropriate number of spaces.  Example lines:
; 960  :             //    aZKey      89226532
; 961  :             //    aExternalValue Income
; 962  :             if ( k < 10 )

	movsx	eax, WORD PTR _k$7879[ebp]
	cmp	eax, 10					; 0000000aH
	jge	SHORT $L7885

; 963  :                pchLine = pchLine + 11;

	mov	ecx, DWORD PTR _pchLine$[ebp]
	add	ecx, 11					; 0000000bH
	mov	DWORD PTR _pchLine$[ebp], ecx

; 964  :             else

	jmp	SHORT $L7886
$L7885:

; 965  :                pchLine = pchLine + k + 2;

	movsx	edx, WORD PTR _k$7879[ebp]
	mov	eax, DWORD PTR _pchLine$[ebp]
	lea	ecx, DWORD PTR [eax+edx+2]
	mov	DWORD PTR _pchLine$[ebp], ecx
$L7886:

; 967  : 
; 968  :          nCurrState = 2;   // attribute line item

	mov	WORD PTR _nCurrState$[ebp], 2

; 970  :       else

	jmp	SHORT $L7887
$L7878:

; 971  :          nCurrState = 99;  // undefined or blank line

	mov	WORD PTR _nCurrState$[ebp], 99		; 00000063H
$L7887:

; 972  : 
; 973  :       switch ( nCurrState )
; 974  :       {

	movsx	edx, WORD PTR _nCurrState$[ebp]
	mov	DWORD PTR -1256+[ebp], edx
	cmp	DWORD PTR -1256+[ebp], 1
	je	SHORT $L7892
	cmp	DWORD PTR -1256+[ebp], 2
	je	$L7934
	jmp	$L7889
$L7892:

; 975  :          case 1:
; 976  :             // We have the beginning of an Entity object.
; 977  :             if ( zstrcmpi( szEntityName, szlDOMAIN ) == 0 )

	mov	eax, DWORD PTR _szlDOMAIN
	push	eax
	lea	ecx, DWORD PTR _szEntityName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	$L7893

; 979  :                // Create the domain (under ANCHORBLOCK mutex).
; 980  :                hDomain = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 981  :                                            sizeof( DomainRecord ), 1, 0, iDomain );

	push	10004					; 00002714H
	push	0
	push	1
	push	147					; 00000093H
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+114]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hDomain$7874[ebp], eax

; 982  : 
; 983  :                if ( hDomain )

	cmp	DWORD PTR _hDomain$7874[ebp], 0
	je	SHORT $L7895

; 985  :                   lpDomain = zGETPTR( hDomain );

	mov	ecx, DWORD PTR _hDomain$7874[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax

; 986  : 
; 987  :                   lpDomain->hApp = hApp;

	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	eax, DWORD PTR _hApp$[ebp]
	mov	DWORD PTR [edx+43], eax

; 988  :                   lpDomain->hNextDomain = lpApp->hFirstDomain;

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+72]
	mov	DWORD PTR [ecx+2], eax

; 989  :                   lpApp->hFirstDomain = hDomain;

	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR _hDomain$7874[ebp]
	mov	DWORD PTR [ecx+72], edx

; 990  :                   nCurrEntity = 1;  // indicate working with Domain Entity

	mov	WORD PTR _nCurrEntity$[ebp], 1

; 991  :                   lpContext = 0;

	mov	DWORD PTR _lpContext$[ebp], 0

; 992  :                   lpTableEntry = 0;

	mov	DWORD PTR _lpTableEntry$[ebp], 0

; 993  :                   lpNLS_TableEntry = 0;

	mov	DWORD PTR _lpNLS_TableEntry$[ebp], 0

; 994  :                   lpRegExpression = 0;

	mov	DWORD PTR _lpRegExpression$[ebp], 0

; 995  :                   nCurrState = 1;   // indicate we are working on a Domain object

	mov	WORD PTR _nCurrState$[ebp], 1

; 996  :                   break;

	jmp	$L7889
$L7895:

; 998  : 
; 999  :                // "KZOEE012 - Error allocating memory"
; 1000 :                fnIssueCoreError( lpTask, 0, 20, 12, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	12					; 0000000cH
	push	20					; 00000014H
	push	0
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1001 :                fnDeleteApp( lpApp );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	push	ecx
	call	_fnDeleteApp
	add	esp, 4

; 1002 :                return( 0 );

	xor	eax, eax
	jmp	$L7684
$L7893:

; 1004 :             else
; 1005 :             if ( zstrcmpi( szEntityName, szlCONTEXT ) == 0 )

	mov	edx, DWORD PTR _szlCONTEXT
	push	edx
	lea	eax, DWORD PTR _szEntityName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	$L7898

; 1007 :                // Create the context (under ANCHORBLOCK mutex).
; 1008 :                hContext = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 1009 :                                             sizeof( ContextRecord ), 1, 0,
; 1010 :                                             iContext );

	push	10030					; 0000272eH
	push	0
	push	1
	push	69					; 00000045H
	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+114]
	push	edx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hContext$7875[ebp], eax

; 1011 :                if ( hContext )

	cmp	DWORD PTR _hContext$7875[ebp], 0
	je	SHORT $L7900

; 1013 :                   lpContext = zGETPTR( hContext );

	mov	eax, DWORD PTR _hContext$7875[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpContext$[ebp], eax

; 1014 :                   lpContext->hDomain = hDomain;

	mov	ecx, DWORD PTR _lpContext$[ebp]
	mov	edx, DWORD PTR _hDomain$7874[ebp]
	mov	DWORD PTR [ecx+43], edx

; 1015 :                   lpContext->hNextContext = lpDomain->hFirstContext;

	mov	eax, DWORD PTR _lpContext$[ebp]
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	mov	edx, DWORD PTR [ecx+47]
	mov	DWORD PTR [eax+2], edx

; 1016 :                   lpContext->nDisplayLength = -1;

	mov	eax, DWORD PTR _lpContext$[ebp]
	mov	WORD PTR [eax+67], -1

; 1017 :                   lpDomain->hFirstContext = hContext;

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	mov	edx, DWORD PTR _hContext$7875[ebp]
	mov	DWORD PTR [ecx+47], edx

; 1018 :                   lpTableEntry = 0;

	mov	DWORD PTR _lpTableEntry$[ebp], 0

; 1019 :                   lpNLS_TableEntry = 0;

	mov	DWORD PTR _lpNLS_TableEntry$[ebp], 0

; 1020 :                   lpRegExpression = 0;

	mov	DWORD PTR _lpRegExpression$[ebp], 0

; 1021 :                   nCurrEntity = 2;  // indicate working with Context Entity

	mov	WORD PTR _nCurrEntity$[ebp], 2

; 1022 :                   break;

	jmp	$L7889
$L7900:

; 1024 : 
; 1025 :                // "KZOEE012 - Error allocating memory"
; 1026 :                fnIssueCoreError( lpTask, 0, 20, 12, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	12					; 0000000cH
	push	20					; 00000014H
	push	0
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1027 :                fnDeleteApp( lpApp );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	push	ecx
	call	_fnDeleteApp
	add	esp, 4

; 1028 :                return( 0 );

	xor	eax, eax
	jmp	$L7684
$L7898:

; 1030 :             else
; 1031 :             if ( zstrcmpi( szEntityName, szlTABLEENTRY ) == 0 )

	mov	edx, DWORD PTR _szlTABLEENTRY
	push	edx
	lea	eax, DWORD PTR _szEntityName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	$L7903

; 1033 :                // Create the table entry (under ANCHORBLOCK mutex).
; 1034 :                hTemp = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 1035 :                                          sizeof( TableEntryRecord ), 1, 0,
; 1036 :                                          iTableEntry );

	push	10031					; 0000272fH
	push	0
	push	1
	push	30					; 0000001eH
	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+114]
	push	edx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hTemp$[ebp], eax

; 1037 :                if ( hTemp )

	cmp	DWORD PTR _hTemp$[ebp], 0
	je	$L7905

; 1039 :                   lpTableEntry = zGETPTR( hTemp );

	mov	eax, DWORD PTR _hTemp$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$[ebp], eax

; 1040 :                   lpTableEntry->hContext = hContext;

	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR _hContext$7875[ebp]
	mov	DWORD PTR [ecx+14], edx

; 1041 : 
; 1042 :                   if ( lpDomain->cType == zTYPE_INTEGER ||
; 1043 :                        lpDomain->cType == zTYPE_DECIMAL )

	mov	eax, DWORD PTR _lpDomain$[ebp]
	movsx	ecx, BYTE PTR [eax+63]
	cmp	ecx, 76					; 0000004cH
	je	SHORT $L7908
	mov	edx, DWORD PTR _lpDomain$[ebp]
	movsx	eax, BYTE PTR [edx+63]
	cmp	eax, 77					; 0000004dH
	jne	SHORT $L7907
$L7908:

; 1045 :                      lpTableEntry->unInternal.lInteger = lNullInteger;

	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR _lNullInteger
	mov	DWORD PTR [ecx+26], edx
$L7907:

; 1047 : 
; 1048 :                   if ( lpContext->hLastTableEntry )

	mov	eax, DWORD PTR _lpContext$[ebp]
	cmp	DWORD PTR [eax+51], 0
	je	SHORT $L7909

; 1050 :                      LPTABLEENTRY lpTempTable;
; 1051 : 
; 1052 :                      lpTempTable = zGETPTR( lpContext->hLastTableEntry );

	mov	ecx, DWORD PTR _lpContext$[ebp]
	mov	edx, DWORD PTR [ecx+51]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempTable$7910[ebp], eax

; 1053 :                      lpTempTable->hNextTableEntry = hTemp;

	mov	eax, DWORD PTR _lpTempTable$7910[ebp]
	mov	ecx, DWORD PTR _hTemp$[ebp]
	mov	DWORD PTR [eax+2], ecx
$L7909:

; 1055 : 
; 1056 :                   lpTableEntry->hPrevTableEntry = lpContext->hLastTableEntry;

	mov	edx, DWORD PTR _lpTableEntry$[ebp]
	mov	eax, DWORD PTR _lpContext$[ebp]
	mov	ecx, DWORD PTR [eax+51]
	mov	DWORD PTR [edx+6], ecx

; 1057 :                   lpContext->hLastTableEntry = hTemp;

	mov	edx, DWORD PTR _lpContext$[ebp]
	mov	eax, DWORD PTR _hTemp$[ebp]
	mov	DWORD PTR [edx+51], eax

; 1058 : 
; 1059 :                   if ( lpContext->hFirstTableEntry == 0 )

	mov	ecx, DWORD PTR _lpContext$[ebp]
	cmp	DWORD PTR [ecx+47], 0
	jne	SHORT $L7912

; 1060 :                      lpContext->hFirstTableEntry = hTemp;

	mov	edx, DWORD PTR _lpContext$[ebp]
	mov	eax, DWORD PTR _hTemp$[ebp]
	mov	DWORD PTR [edx+47], eax
$L7912:

; 1061 : 
; 1062 :                   lpRegExpression = 0;

	mov	DWORD PTR _lpRegExpression$[ebp], 0

; 1063 :                   nCurrEntity = 3;  // indicate working with TableEntry Entity

	mov	WORD PTR _nCurrEntity$[ebp], 3

; 1064 :                   break;

	jmp	$L7889
$L7905:

; 1066 : 
; 1067 :                // "KZOEE012 - Error allocating memory"
; 1068 :                fnIssueCoreError( lpTask, 0, 20, 12, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	12					; 0000000cH
	push	20					; 00000014H
	push	0
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1069 :                fnDeleteApp( lpApp );

	mov	edx, DWORD PTR _lpApp$[ebp]
	push	edx
	call	_fnDeleteApp
	add	esp, 4

; 1070 :                return( 0 );

	xor	eax, eax
	jmp	$L7684
$L7903:

; 1072 :             else
; 1073 :             if ( zstrcmpi( szEntityName, szlNLS_TABLEENTRY ) == 0 )

	mov	eax, DWORD PTR _szlNLS_TABLEENTRY
	push	eax
	lea	ecx, DWORD PTR _szEntityName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	$L7914

; 1075 :                // Don't do anything if there isn't a current table entry.
; 1076 :                if ( lpTableEntry )

	cmp	DWORD PTR _lpTableEntry$[ebp], 0
	je	$L7915

; 1078 :                   // Create the table entry (under ANCHORBLOCK mutex).
; 1079 :                   hTemp = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 1080 :                                             sizeof( NLS_TableEntryRecord ), 1, 0,
; 1081 :                                             iNLS_TableEntry );

	push	10043					; 0000273bH
	push	0
	push	1
	push	12					; 0000000cH
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+114]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hTemp$[ebp], eax

; 1082 :                   if ( hTemp )

	cmp	DWORD PTR _hTemp$[ebp], 0
	je	SHORT $L7917

; 1084 :                      lpNLS_TableEntry = zGETPTR( hTemp );

	mov	ecx, DWORD PTR _hTemp$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNLS_TableEntry$[ebp], eax

; 1085 : 
; 1086 :                      // Stick lpNLS_TableEntry in the chain.
; 1087 :                      lpNLS_TableEntry->hNextNLS_TableEntry =
; 1088 :                                             lpTableEntry->hFirstNLS_TableEntry;

	mov	edx, DWORD PTR _lpNLS_TableEntry$[ebp]
	mov	eax, DWORD PTR _lpTableEntry$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	mov	DWORD PTR [edx+2], ecx

; 1089 :                      lpTableEntry->hFirstNLS_TableEntry = hTemp;

	mov	edx, DWORD PTR _lpTableEntry$[ebp]
	mov	eax, DWORD PTR _hTemp$[ebp]
	mov	DWORD PTR [edx+22], eax

; 1090 : 
; 1091 :                      // indicate working with NLS_TableEntry Entity
; 1092 :                      nCurrEntity = 5;

	mov	WORD PTR _nCurrEntity$[ebp], 5

; 1093 : 
; 1094 :                      break;

	jmp	$L7889
$L7917:

; 1096 : 
; 1097 :                   // "KZOEE012 - Error allocating memory"
; 1098 :                   fnIssueCoreError( lpTask, 0, 20, 12, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	12					; 0000000cH
	push	20					; 00000014H
	push	0
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1099 :                   fnDeleteApp( lpApp );

	mov	edx, DWORD PTR _lpApp$[ebp]
	push	edx
	call	_fnDeleteApp
	add	esp, 4

; 1100 :                   return( 0 );

	xor	eax, eax
	jmp	$L7684
$L7915:

; 1103 :             else

	jmp	$L7934
$L7914:

; 1104 :             if ( zstrcmpi( szEntityName, szlREGULAREXPRESSION ) == 0 )

	mov	eax, DWORD PTR _szlREGULAREXPRESSION
	push	eax
	lea	ecx, DWORD PTR _szEntityName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	$L7920

; 1106 :                if ( lpDomain && lpContext )

	cmp	DWORD PTR _lpDomain$[ebp], 0
	je	$L7921
	cmp	DWORD PTR _lpContext$[ebp], 0
	je	$L7921

; 1108 :                   // Create the regular expression entry (under ANCHORBLOCK mutex).
; 1109 :                   hTemp = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 1110 :                                             sizeof( RegExpressionRecord ), 1, 0,
; 1111 :                                             iRegularExpression );

	push	10032					; 00002730H
	push	0
	push	1
	push	14					; 0000000eH
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+114]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hTemp$[ebp], eax

; 1112 :                   if ( hTemp )

	cmp	DWORD PTR _hTemp$[ebp], 0
	je	SHORT $L7923

; 1114 :                      lpRegExpression = zGETPTR( hTemp );

	mov	ecx, DWORD PTR _hTemp$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRegExpression$[ebp], eax

; 1115 :                      lpRegExpression->hContext = hContext;

	mov	edx, DWORD PTR _lpRegExpression$[ebp]
	mov	eax, DWORD PTR _hContext$7875[ebp]
	mov	DWORD PTR [edx+10], eax

; 1116 :                      lpRegExpression->hNextRegExpression =
; 1117 :                                                 lpContext->hFirstRegExpression;

	mov	ecx, DWORD PTR _lpRegExpression$[ebp]
	mov	edx, DWORD PTR _lpContext$[ebp]
	mov	eax, DWORD PTR [edx+55]
	mov	DWORD PTR [ecx+2], eax

; 1118 :                      lpContext->hFirstRegExpression = hTemp;

	mov	ecx, DWORD PTR _lpContext$[ebp]
	mov	edx, DWORD PTR _hTemp$[ebp]
	mov	DWORD PTR [ecx+55], edx

; 1119 : 
; 1120 :                      lpTableEntry = 0;

	mov	DWORD PTR _lpTableEntry$[ebp], 0

; 1121 :                      lpNLS_TableEntry = 0;

	mov	DWORD PTR _lpNLS_TableEntry$[ebp], 0

; 1122 :                      nCurrEntity = 4;  // indicate working with RegularExpression Entity

	mov	WORD PTR _nCurrEntity$[ebp], 4

; 1123 :                      break;

	jmp	$L7889
$L7923:

; 1125 : 
; 1126 :                   // "KZOEE012 - Error allocating memory"
; 1127 :                   fnIssueCoreError( lpTask, 0, 20, 12, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	12					; 0000000cH
	push	20					; 00000014H
	push	0
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1128 :                   fnDeleteApp( lpApp );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	push	ecx
	call	_fnDeleteApp
	add	esp, 4

; 1129 :                   return( 0 );

	xor	eax, eax
	jmp	$L7684
$L7921:

; 1132 :             else

	jmp	$L7934
$L7920:

; 1133 :             if ( zstrcmpi( szEntityName, "ROOT" ) == 0 )

	push	OFFSET FLAT:??_C@_04DIDG@ROOT?$AA@	; `string'
	lea	edx, DWORD PTR _szEntityName$[ebp]
	push	edx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7926

; 1135 :                break;

	jmp	$L7889
$L7926:

; 1137 :             else
; 1138 :             if ( zstrcmpi( szEntityName, "OBJECT" ) == 0 )

	push	OFFSET FLAT:??_C@_06PIJH@OBJECT?$AA@	; `string'
	lea	eax, DWORD PTR _szEntityName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7929

; 1140 :                break;

	jmp	$L7889
$L7929:

; 1142 :             else
; 1143 :             if ( zstrcmpi( szEntityName, "DomainGroup" ) == 0 )

	push	OFFSET FLAT:??_C@_0M@NDFG@DomainGroup?$AA@ ; `string'
	lea	ecx, DWORD PTR _szEntityName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7932

; 1145 :                break;

	jmp	$L7889
$L7932:

; 1149 :                // Invalid Entity Name in Domain object
; 1150 :                // "KZOEE018 - Error in Domain file "
; 1151 :                fnIssueCoreError( lpTask, 0, 16, 18, nLineNbr,
; 1152 :                                  szWorkString, 0 );

	push	0
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	movsx	eax, WORD PTR _nLineNbr$[ebp]
	push	eax
	push	18					; 00000012H
	push	16					; 00000010H
	push	0
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1153 :                lpDomain = 0;

	mov	DWORD PTR _lpDomain$[ebp], 0

; 1154 :                lpContext = 0;

	mov	DWORD PTR _lpContext$[ebp], 0

; 1155 :                lpTableEntry = 0;

	mov	DWORD PTR _lpTableEntry$[ebp], 0

; 1156 :                lpNLS_TableEntry = 0;

	mov	DWORD PTR _lpNLS_TableEntry$[ebp], 0

; 1157 :                lpRegExpression = 0;

	mov	DWORD PTR _lpRegExpression$[ebp], 0

; 1158 :                nCurrEntity = 0;

	mov	WORD PTR _nCurrEntity$[ebp], 0

; 1159 :                nCurrState = 0;

	mov	WORD PTR _nCurrState$[ebp], 0

; 1160 :                break;

	jmp	$L7889
$L7934:

; 1162 : 
; 1163 :          case 2:
; 1164 :             // we have a attribute
; 1165 :             switch ( nCurrEntity )
; 1166 :             {

	movsx	edx, WORD PTR _nCurrEntity$[ebp]
	mov	DWORD PTR -1260+[ebp], edx
	mov	eax, DWORD PTR -1260+[ebp]
	sub	eax, 1
	mov	DWORD PTR -1260+[ebp], eax
	cmp	DWORD PTR -1260+[ebp], 4
	ja	$L7937
	mov	ecx, DWORD PTR -1260+[ebp]
	jmp	DWORD PTR $L8385[ecx*4]
$L7940:

; 1167 :                case 1:
; 1168 :                   // Current Entity is Domain
; 1169 :                   if ( lpDomain == 0 )

	cmp	DWORD PTR _lpDomain$[ebp], 0
	jne	SHORT $L7941

; 1170 :                      break;   // no domain is 'active' skip this attribute

	jmp	$L7937
$L7941:

; 1171 : 
; 1172 :                   switch ( szAttrName[ 0 ] )
; 1173 :                   {

	movsx	edx, BYTE PTR _szAttrName$[ebp]
	mov	DWORD PTR -1264+[ebp], edx
	mov	eax, DWORD PTR -1264+[ebp]
	sub	eax, 67					; 00000043H
	mov	DWORD PTR -1264+[ebp], eax
	cmp	DWORD PTR -1264+[ebp], 23		; 00000017H
	ja	$L7943
	mov	edx, DWORD PTR -1264+[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR $L8386[edx]
	jmp	DWORD PTR $L8387[ecx*4]
$L7946:

; 1174 :                      case 'C':
; 1175 :                         if ( zstrcmpi( szAttrName, szlCONTEXTRESTRICTION ) == 0 )

	mov	eax, DWORD PTR _szlCONTEXTRESTRICTION
	push	eax
	lea	ecx, DWORD PTR _szAttrName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7947

; 1176 :                            lpDomain->cContextRestriction = pchLine[ 0 ];

	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	eax, DWORD PTR _pchLine$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR [edx+66], cl
$L7947:

; 1177 : 
; 1178 :                         break;

	jmp	$L7943
$L7948:

; 1179 : 
; 1180 :                      case 'D':
; 1181 :                         if ( zstrcmpi( szAttrName, szlDOMAINTYPE ) == 0 )

	mov	edx, DWORD PTR _szlDOMAINTYPE
	push	edx
	lea	eax, DWORD PTR _szAttrName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7949

; 1182 :                            lpDomain->cDomainType = pchLine[ 0 ];

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	mov	edx, DWORD PTR _pchLine$[ebp]
	mov	al, BYTE PTR [edx]
	mov	BYTE PTR [ecx+65], al

; 1183 :                         else

	jmp	$L7955
$L7949:

; 1184 :                         if ( zstrcmpi( szAttrName, szlDATATYPE ) == 0 )

	mov	ecx, DWORD PTR _szlDATATYPE
	push	ecx
	lea	edx, DWORD PTR _szAttrName$[ebp]
	push	edx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7951

; 1185 :                            lpDomain->cType = pchLine[ 0 ];

	mov	eax, DWORD PTR _lpDomain$[ebp]
	mov	ecx, DWORD PTR _pchLine$[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [eax+63], dl

; 1186 :                         else

	jmp	SHORT $L7955
$L7951:

; 1187 :                         if ( zstrcmpi( szAttrName, szlDECIMALFORMAT ) == 0 )

	mov	eax, DWORD PTR _szlDECIMALFORMAT
	push	eax
	lea	ecx, DWORD PTR _szAttrName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7953

; 1189 :                            lpDomain->lDecimalFormat = zatol( pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	mov	DWORD PTR [ecx+133], eax

; 1190 :                            lpDomain->cDecimal = pchLine[ 0 ];

	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	eax, DWORD PTR _pchLine$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR [edx+64], cl

; 1192 :                         else

	jmp	SHORT $L7955
$L7953:

; 1193 :                         if ( zstrcmpi( szAttrName, szlDLL_NAME ) == 0 )

	mov	edx, DWORD PTR _szlDLL_NAME
	push	edx
	lea	eax, DWORD PTR _szAttrName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7955

; 1194 :                            zstrcpy( lpDomain->szLibraryName, pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	add	edx, 67					; 00000043H
	push	edx
	call	_strcpy
	add	esp, 8
$L7955:

; 1195 : 
; 1196 :                         break;

	jmp	$L7943
$L7957:

; 1197 : 
; 1198 :                      case 'L':
; 1199 : #if 0
; 1200 :                         if ( zstrcmpi( szAttrName, szlLTH ) == 0 )
; 1201 :                         {
; 1202 :                            lpDomain->ulLth = (zULONG) zatol( pchLine );
; 1203 :                            if ( lpDomain->cType == 'S' && lpDomain->ulLth )
; 1204 :                               lpDomain->ulLth++;
; 1205 :                         }
; 1206 : #endif
; 1207 :                         break;
; 1208 : 
; 1209 :                      case 'M':
; 1210 :                         if ( zstrcmpi( szAttrName, szlMAXSTRINGLTH ) == 0 )

	mov	eax, DWORD PTR _szlMAXSTRINGLTH
	push	eax
	lea	ecx, DWORD PTR _szAttrName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7958

; 1211 :                            lpDomain->ulMaxStringLth = (zULONG) zatol( pchLine ) + 1;

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	call	DWORD PTR __imp__atol
	add	esp, 4
	add	eax, 1
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	mov	DWORD PTR [ecx+59], eax
$L7958:

; 1212 : 
; 1213 :                         break;

	jmp	$L7943
$L7960:

; 1214 : 
; 1215 :                      case 'N':
; 1216 :                         if ( zstrcmpi( szAttrName, szlNAME ) == 0 )

	mov	edx, DWORD PTR _szlNAME
	push	edx
	lea	eax, DWORD PTR _szAttrName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7961

; 1217 :                            zstrcpy( lpDomain->szName, pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	add	edx, 6
	push	edx
	call	_strcpy
	add	esp, 8
$L7961:

; 1218 : 
; 1219 :                         break;

	jmp	$L7943
$L7962:

; 1220 : 
; 1221 :                      case 'O':
; 1222 :                         if ( zstrcmpi( szAttrName, "OPERNAME" ) == 0 )

	push	OFFSET FLAT:??_C@_08JOPH@OPERNAME?$AA@	; `string'
	lea	eax, DWORD PTR _szAttrName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7963

; 1223 :                            zstrcpy( lpDomain->szDomainOper, pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDomain$[ebp]
	add	edx, 100				; 00000064H
	push	edx
	call	_strcpy
	add	esp, 8

; 1224 :                         else

	jmp	SHORT $L7966
$L7963:

; 1225 :                         if ( zstrcmpi( szAttrName, "OPERNUMBER" ) == 0 )

	push	OFFSET FLAT:??_C@_0L@CGKE@OPERNUMBER?$AA@ ; `string'
	lea	eax, DWORD PTR _szAttrName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7966

; 1226 :                            lpDomain->uOperNumber = (zUSHORT) zatol( pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	WORD PTR [edx+145], ax
$L7966:

; 1227 : 
; 1228 :                         break;

	jmp	SHORT $L7943
$L7969:

; 1229 : 
; 1230 :                      case 'R':
; 1231 :                         if ( zstrcmpi( szAttrName, szlRESTRICTED ) == 0 &&
; 1232 :                              (*pchLine == 'Y' || *pchLine == 'y') )

	mov	eax, DWORD PTR _szlRESTRICTED
	push	eax
	lea	ecx, DWORD PTR _szAttrName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7970
	mov	edx, DWORD PTR _pchLine$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 89					; 00000059H
	je	SHORT $L7971
	mov	ecx, DWORD PTR _pchLine$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 121				; 00000079H
	jne	SHORT $L7970
$L7971:

; 1234 :                            lpDomain->bRestricted = TRUE;

	mov	eax, DWORD PTR _lpDomain$[ebp]
	mov	ecx, DWORD PTR [eax+141]
	or	ecx, 1
	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	DWORD PTR [edx+141], ecx
$L7970:

; 1236 : 
; 1237 :                         break;

	jmp	SHORT $L7943
$L7972:

; 1238 : 
; 1239 :                      case 'Z':
; 1240 :                         if ( zstrcmpi( szAttrName, szlZKEY ) == 0 )

	mov	eax, DWORD PTR _szlZKEY
	push	eax
	lea	ecx, DWORD PTR _szAttrName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7973

; 1241 :                            lpDomain->lApDmTok = zatol( pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	mov	DWORD PTR [ecx+39], eax
$L7973:
$L7943:

; 1245 : 
; 1246 :                   break;

	jmp	$L7937
$L7974:

; 1247 : 
; 1248 :                case 2:
; 1249 :                   // Current Entity is Context
; 1250 :                   if ( lpContext == 0 )

	cmp	DWORD PTR _lpContext$[ebp], 0
	jne	SHORT $L7975

; 1251 :                      break;   // no context is 'active' skip this attribute

	jmp	$L7937
$L7975:

; 1252 : 
; 1253 :                   switch ( szAttrName[ 0 ] )
; 1254 :                   {

	movsx	edx, BYTE PTR _szAttrName$[ebp]
	mov	DWORD PTR -1268+[ebp], edx
	mov	eax, DWORD PTR -1268+[ebp]
	sub	eax, 68					; 00000044H
	mov	DWORD PTR -1268+[ebp], eax
	cmp	DWORD PTR -1268+[ebp], 22		; 00000016H
	ja	$L7977
	mov	edx, DWORD PTR -1268+[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR $L8388[edx]
	jmp	DWORD PTR $L8389[ecx*4]
$L7980:

; 1255 :                      case 'D':
; 1256 :                         if ( zstrcmpi( szAttrName, szlDECIMALFORMAT ) == 0 )

	mov	eax, DWORD PTR _szlDECIMALFORMAT
	push	eax
	lea	ecx, DWORD PTR _szAttrName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7981

; 1257 :                            lpContext->lDecimalFormat = zatol( pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	ecx, DWORD PTR _lpContext$[ebp]
	mov	DWORD PTR [ecx+63], eax
$L7981:

; 1258 : 
; 1259 :                         break;

	jmp	$L7977
$L7982:

; 1260 : 
; 1261 :                      case 'E':
; 1262 :                         if ( zstrcmpi( szAttrName, szlEDITSTRING ) == 0 )

	mov	edx, DWORD PTR _szlEDITSTRING
	push	edx
	lea	eax, DWORD PTR _szAttrName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7983

; 1264 :                            lpContext->hEditString =
; 1265 :                              fnStoreStringInDataspace( AnchorBlock->hMainFirstDataHeader,
; 1266 :                                                        pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+114]
	push	eax
	call	_fnStoreStringInDataspace
	add	esp, 8
	mov	ecx, DWORD PTR _lpContext$[ebp]
	mov	DWORD PTR [ecx+59], eax
$L7983:

; 1268 : 
; 1269 :                         break;

	jmp	$L7977
$L7984:

; 1270 : 
; 1271 :                      case 'I':
; 1272 :                         if ( zstrcmpi( szAttrName, szlISDEFAULT ) == 0 &&
; 1273 :                              (*pchLine == 'Y' || *pchLine == 'y') )

	mov	edx, DWORD PTR _szlISDEFAULT
	push	edx
	lea	eax, DWORD PTR _szAttrName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7989
	mov	ecx, DWORD PTR _pchLine$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 89					; 00000059H
	je	SHORT $L7986
	mov	eax, DWORD PTR _pchLine$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 121				; 00000079H
	jne	SHORT $L7989
$L7986:

; 1275 :                            if ( lpDomain->lDefaultContextZKey )

	mov	edx, DWORD PTR _lpDomain$[ebp]
	cmp	DWORD PTR [edx+137], 0
	je	SHORT $L7987

; 1276 :                               TraceLineS( "(ap) More than one default Context for Domain: ",
; 1277 :                                           lpDomain->szName );

	mov	eax, DWORD PTR _lpDomain$[ebp]
	add	eax, 6
	push	eax
	push	OFFSET FLAT:??_C@_0DA@PLNM@?$CIap?$CJ?5More?5than?5one?5default?5Conte@ ; `string'
	call	_TraceLineS@8

; 1278 :                            else

	jmp	SHORT $L7989
$L7987:

; 1279 :                               lpDomain->lDefaultContextZKey = lpContext->lContextTok;

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	mov	edx, DWORD PTR _lpContext$[ebp]
	mov	eax, DWORD PTR [edx+39]
	mov	DWORD PTR [ecx+137], eax
$L7989:

; 1281 : 
; 1282 :                         break;

	jmp	SHORT $L7977
$L7990:

; 1283 : 
; 1284 :                      case 'N':
; 1285 :                         if ( zstrcmpi( szAttrName, szlNAME ) == 0 )

	mov	ecx, DWORD PTR _szlNAME
	push	ecx
	lea	edx, DWORD PTR _szAttrName$[ebp]
	push	edx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7991

; 1286 :                              zstrcpy( lpContext->szName, pchLine );

	mov	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpContext$[ebp]
	add	ecx, 6
	push	ecx
	call	_strcpy
	add	esp, 8
$L7991:

; 1287 : 
; 1288 :                         break;

	jmp	SHORT $L7977
$L7992:

; 1289 : 
; 1290 :                      case 'Z':
; 1291 :                         if ( zstrcmpi( szAttrName, szlZKEY ) == 0 )

	mov	edx, DWORD PTR _szlZKEY
	push	edx
	lea	eax, DWORD PTR _szAttrName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L7993

; 1292 :                              lpContext->lContextTok = zatol( pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	edx, DWORD PTR _lpContext$[ebp]
	mov	DWORD PTR [edx+39], eax
$L7993:
$L7977:

; 1296 : 
; 1297 :                   break;

	jmp	$L7937
$L7994:

; 1298 : 
; 1299 :                case 3:
; 1300 :                   // Current Entity is TableEntry
; 1301 :                   if ( lpTableEntry == 0 )

	cmp	DWORD PTR _lpTableEntry$[ebp], 0
	jne	SHORT $L7995

; 1302 :                      break;   // no tableentry is 'active' skip this attribute

	jmp	$L7937
$L7995:

; 1303 : 
; 1304 :                   switch ( szAttrName[ 0 ] )
; 1305 :                   {

	mov	al, BYTE PTR _szAttrName$[ebp]
	mov	BYTE PTR -1272+[ebp], al
	cmp	BYTE PTR -1272+[ebp], 69		; 00000045H
	je	SHORT $L8000
	cmp	BYTE PTR -1272+[ebp], 73		; 00000049H
	je	SHORT $L8002
	cmp	BYTE PTR -1272+[ebp], 90		; 0000005aH
	je	$L8007
	jmp	$L7997
$L8000:

; 1306 :                      case 'E':
; 1307 :                         if ( zstrcmpi( szAttrName, szlEXTERNALVALUE ) == 0 )

	mov	ecx, DWORD PTR _szlEXTERNALVALUE
	push	ecx
	lea	edx, DWORD PTR _szAttrName$[ebp]
	push	edx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L8001

; 1309 :                            lpTableEntry->hExternalValue =
; 1310 :                              fnStoreStringInDataspace( AnchorBlock->hMainFirstDataHeader,
; 1311 :                                                        pchLine );

	mov	eax, DWORD PTR _pchLine$[ebp]
	push	eax
	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+114]
	push	edx
	call	_fnStoreStringInDataspace
	add	esp, 8
	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	DWORD PTR [ecx+18], eax
$L8001:

; 1313 : 
; 1314 :                         break;

	jmp	$L7997
$L8002:

; 1315 : 
; 1316 :                      case 'I':
; 1317 :                         if ( zstrcmpi( szAttrName, szlINTERNALVALUE ) == 0 )

	mov	edx, DWORD PTR _szlINTERNALVALUE
	push	edx
	lea	eax, DWORD PTR _szAttrName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L8006

; 1319 :                            if ( lpDomain->cType == zTYPE_INTEGER ||
; 1320 :                                 lpDomain->cType == zTYPE_DECIMAL )

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	movsx	edx, BYTE PTR [ecx+63]
	cmp	edx, 76					; 0000004cH
	je	SHORT $L8005
	mov	eax, DWORD PTR _lpDomain$[ebp]
	movsx	ecx, BYTE PTR [eax+63]
	cmp	ecx, 77					; 0000004dH
	jne	SHORT $L8004
$L8005:

; 1322 :                               lpTableEntry->unInternal.lInteger = zatol( pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 1324 :                            else

	jmp	SHORT $L8006
$L8004:

; 1326 :                               lpTableEntry->unInternal.hStringValue  =
; 1327 :                                fnStoreStringInDataspace( AnchorBlock->hMainFirstDataHeader,
; 1328 :                                                          pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+114]
	push	ecx
	call	_fnStoreStringInDataspace
	add	esp, 8
	mov	edx, DWORD PTR _lpTableEntry$[ebp]
	mov	DWORD PTR [edx+26], eax
$L8006:

; 1331 : 
; 1332 :                         break;

	jmp	SHORT $L7997
$L8007:

; 1333 : 
; 1334 :                      case 'Z':
; 1335 :                         if ( zstrcmpi( szAttrName, szlZKEY ) == 0 )

	mov	eax, DWORD PTR _szlZKEY
	push	eax
	lea	ecx, DWORD PTR _szAttrName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L8008

; 1336 :                            lpTableEntry->lTableEntryTok = zatol( pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	DWORD PTR [ecx+10], eax
$L8008:
$L7997:

; 1340 : 
; 1341 :                   break;

	jmp	$L7937
$L8009:

; 1342 : 
; 1343 :                case 4:
; 1344 :                   // Current Entity is RegularExpression
; 1345 :                   if ( lpRegExpression == 0 )

	cmp	DWORD PTR _lpRegExpression$[ebp], 0
	jne	SHORT $L8010

; 1346 :                      break;   // no regular expression is 'active' skip this attr

	jmp	$L7937
$L8010:

; 1347 : 
; 1348 :                   switch ( szAttrName[ 0 ] )
; 1349 :                   {

	mov	dl, BYTE PTR _szAttrName$[ebp]
	mov	BYTE PTR -1276+[ebp], dl
	cmp	BYTE PTR -1276+[ebp], 90		; 0000005aH
	je	SHORT $L8015
	jmp	SHORT $L8012
$L8015:

; 1350 :                      case 'Z':
; 1351 :                         if ( zstrcmpi( szAttrName, szlZKEY ) == 0 )

	mov	eax, DWORD PTR _szlZKEY
	push	eax
	lea	ecx, DWORD PTR _szAttrName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L8016

; 1352 :                            lpTableEntry->lTableEntryTok = zatol( pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	DWORD PTR [ecx+10], eax
$L8016:
$L8012:

; 1356 : 
; 1357 :                   break;

	jmp	$L7937
$L8017:

; 1358 : 
; 1359 :                case 5:
; 1360 :                   // Current Entity is NLS_TableEntry
; 1361 :                   if ( lpNLS_TableEntry == 0 )

	cmp	DWORD PTR _lpNLS_TableEntry$[ebp], 0
	jne	SHORT $L8018

; 1362 :                      break;   // no NLS table entry is 'active' skip this attr

	jmp	SHORT $L7937
$L8018:

; 1363 : 
; 1364 :                   switch ( szAttrName[ 0 ] )
; 1365 :                   {

	mov	dl, BYTE PTR _szAttrName$[ebp]
	mov	BYTE PTR -1280+[ebp], dl
	cmp	BYTE PTR -1280+[ebp], 76		; 0000004cH
	je	SHORT $L8023
	cmp	BYTE PTR -1280+[ebp], 84		; 00000054H
	je	SHORT $L8026
	jmp	SHORT $L8020
$L8023:

; 1366 :                      case 'L':
; 1367 :                         if ( zstrcmpi( szAttrName, szlLanguageIndex ) == 0 )

	mov	eax, DWORD PTR _szlLanguageIndex
	push	eax
	lea	ecx, DWORD PTR _szAttrName$[ebp]
	push	ecx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L8024

; 1368 :                            lpNLS_TableEntry->nLanguageCode = (zSHORT) zatol( pchLine );

	mov	edx, DWORD PTR _pchLine$[ebp]
	push	edx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	ecx, DWORD PTR _lpNLS_TableEntry$[ebp]
	mov	WORD PTR [ecx+10], ax
$L8024:

; 1369 : 
; 1370 :                         break;

	jmp	SHORT $L8020
$L8026:

; 1371 : 
; 1372 :                      case 'T':
; 1373 :                         if ( zstrcmpi( szAttrName, szlText ) == 0 )

	mov	edx, DWORD PTR _szlText
	push	edx
	lea	eax, DWORD PTR _szAttrName$[ebp]
	push	eax
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L8027

; 1375 :                            lpNLS_TableEntry->pszNLS_Text =
; 1376 :                              fnStoreStringInDataspace( AnchorBlock->hMainFirstDataHeader,
; 1377 :                                                        pchLine );

	mov	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+114]
	push	eax
	call	_fnStoreStringInDataspace
	add	esp, 8
	mov	ecx, DWORD PTR _lpNLS_TableEntry$[ebp]
	mov	DWORD PTR [ecx+6], eax
$L8027:
$L8020:
$L7937:
$L7889:

; 1393 : 
; 1394 :       nEOF = fnSysReadLine( lpTask, &pchLine, hFile, &pvFile );

	lea	edx, DWORD PTR _pvFile$[ebp]
	push	edx
	mov	eax, DWORD PTR _hFile$[ebp]
	push	eax
	lea	ecx, DWORD PTR _pchLine$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$[ebp]
	push	edx
	call	_fnSysReadLine@16
	mov	DWORD PTR _nEOF$[ebp], eax

; 1395 :    }

	jmp	$L7872
$L7873:

; 1396 : 
; 1397 :    // Scan through domains.  Drop Domains and Contexts
; 1398 :    // that are unnamed.  For table entrys with an internal value, but no
; 1399 :    // external value have the external value point to the internal value.
; 1400 :    // Table entrys that do not have an internal value are dropped.
; 1401 : 
; 1402 :    lpCurrDomain = 0; // last valid domain, 0 means at head of queue

	mov	DWORD PTR _lpCurrDomain$[ebp], 0

; 1403 :    for ( lpDomain = zGETPTR( lpApp->hFirstDomain );
; 1404 :          lpDomain;
; 1405 :          lpDomain = zGETPTR( lpNextDomain ) )

	mov	eax, DWORD PTR _lpApp$[ebp]
	mov	ecx, DWORD PTR [eax+72]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax
	jmp	SHORT $L8031
$L8032:
	mov	edx, DWORD PTR _lpNextDomain$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax
$L8031:
	cmp	DWORD PTR _lpDomain$[ebp], 0
	je	$L8033

; 1407 :       zLPCONTEXT   lpCurrContext;
; 1408 :       zLPCONTEXT   lpNextContext;
; 1409 : 
; 1410 :       lpNextDomain = lpDomain->hNextDomain;

	mov	eax, DWORD PTR _lpDomain$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR _lpNextDomain$[ebp], ecx

; 1411 : 
; 1412 :       if ( lpDomain->szName[ 0 ] == 0 )

	mov	edx, DWORD PTR _lpDomain$[ebp]
	movsx	eax, BYTE PTR [edx+6]
	test	eax, eax
	jne	SHORT $L8036

; 1414 :          fnDeleteContext( lpDomain );  // delete all contexts

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	call	_fnDeleteContext
	add	esp, 4

; 1415 :          lpDomain = zGETPTR( lpApp->hFirstDomain );

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+72]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax

; 1416 :          fnDeleteContext( lpDomain );

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	call	_fnDeleteContext
	add	esp, 4

; 1417 :          lpApp->hFirstDomain = lpDomain->hNextDomain;

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR _lpDomain$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR [edx+72], ecx

; 1418 :          fnFreeDataspace( lpDomain );

	mov	edx, DWORD PTR _lpDomain$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 1419 :          if ( lpCurrDomain )

	cmp	DWORD PTR _lpCurrDomain$[ebp], 0
	je	SHORT $L8038

; 1420 :             lpCurrDomain->hNextDomain = lpNextDomain;

	mov	eax, DWORD PTR _lpCurrDomain$[ebp]
	mov	ecx, DWORD PTR _lpNextDomain$[ebp]
	mov	DWORD PTR [eax+2], ecx

; 1421 :          else

	jmp	SHORT $L8039
$L8038:

; 1422 :             lpApp->hFirstDomain = lpNextDomain;

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR _lpNextDomain$[ebp]
	mov	DWORD PTR [edx+72], eax
$L8039:

; 1423 : 
; 1424 :          continue;

	jmp	$L8032
$L8036:

; 1426 : 
; 1427 :       lpCurrDomain = lpDomain;   // indicate curr domain as valid

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	mov	DWORD PTR _lpCurrDomain$[ebp], ecx

; 1428 :       lpCurrContext = 0;   // last valid context, 0 means at head of queue

	mov	DWORD PTR _lpCurrContext$8034[ebp], 0

; 1429 :       for ( lpContext = zGETPTR( lpDomain->hFirstContext );
; 1430 :             lpContext;
; 1431 :             lpContext = zGETPTR( lpNextContext ) )

	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	eax, DWORD PTR [edx+47]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpContext$[ebp], eax
	jmp	SHORT $L8042
$L8043:
	mov	ecx, DWORD PTR _lpNextContext$8035[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpContext$[ebp], eax
$L8042:
	cmp	DWORD PTR _lpContext$[ebp], 0
	je	$L8044

; 1433 :          lpNextContext = lpContext->hNextContext;

	mov	edx, DWORD PTR _lpContext$[ebp]
	mov	eax, DWORD PTR [edx+2]
	mov	DWORD PTR _lpNextContext$8035[ebp], eax

; 1434 : 
; 1435 :          if ( lpContext->szName[ 0 ] == 0 )  // if no name, drop it!

	mov	ecx, DWORD PTR _lpContext$[ebp]
	movsx	edx, BYTE PTR [ecx+6]
	test	edx, edx
	jne	$L8045
$L8047:

; 1437 :             // delete all table entries for this context
; 1438 :             while ( lpContext->hFirstTableEntry )

	mov	eax, DWORD PTR _lpContext$[ebp]
	cmp	DWORD PTR [eax+47], 0
	je	SHORT $L8048

; 1440 :                hTemp = lpContext->hFirstTableEntry;

	mov	ecx, DWORD PTR _lpContext$[ebp]
	mov	edx, DWORD PTR [ecx+47]
	mov	DWORD PTR _hTemp$[ebp], edx

; 1441 :                lpTableEntry = zGETPTR( lpContext->hFirstTableEntry );

	mov	eax, DWORD PTR _lpContext$[ebp]
	mov	ecx, DWORD PTR [eax+47]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$[ebp], eax

; 1442 :                lpContext->hFirstTableEntry =
; 1443 :                                     zGETPTR( lpTableEntry->hNextTableEntry );

	mov	edx, DWORD PTR _lpTableEntry$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	ecx, DWORD PTR _lpContext$[ebp]
	mov	DWORD PTR [ecx+47], eax

; 1444 :                fnDropTableEntry( lpContext, hTemp, 0 );

	push	0
	mov	edx, DWORD PTR _hTemp$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpContext$[ebp]
	push	eax
	call	_fnDropTableEntry
	add	esp, 12					; 0000000cH

; 1445 :             }

	jmp	SHORT $L8047
$L8048:

; 1446 : 
; 1447 :             // Delete all regular expressions for this context.
; 1448 :             while ( lpContext->hFirstRegExpression )

	mov	ecx, DWORD PTR _lpContext$[ebp]
	cmp	DWORD PTR [ecx+55], 0
	je	SHORT $L8053

; 1450 :                lpRegExpression = zGETPTR( lpContext->hFirstRegExpression );

	mov	edx, DWORD PTR _lpContext$[ebp]
	mov	eax, DWORD PTR [edx+55]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRegExpression$[ebp], eax

; 1451 :                lpContext->hFirstRegExpression =
; 1452 :                               zGETPTR( lpRegExpression->hNextRegExpression );

	mov	ecx, DWORD PTR _lpRegExpression$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	ecx, DWORD PTR _lpContext$[ebp]
	mov	DWORD PTR [ecx+55], eax

; 1453 :                fnFreeDataspace( lpRegExpression );

	mov	edx, DWORD PTR _lpRegExpression$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 1454 :             }

	jmp	SHORT $L8048
$L8053:

; 1455 : 
; 1456 :             lpDomain->hFirstContext = lpContext->hNextContext;

	mov	eax, DWORD PTR _lpDomain$[ebp]
	mov	ecx, DWORD PTR _lpContext$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+47], edx

; 1457 :             fnFreeDataspace( zGETPTR( lpContext->hEditString ) );

	mov	eax, DWORD PTR _lpContext$[ebp]
	mov	ecx, DWORD PTR [eax+59]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 1458 :             fnFreeDataspace( lpContext );

	mov	edx, DWORD PTR _lpContext$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 1459 : 
; 1460 :             // Fix up the context chain.
; 1461 :             if ( lpCurrContext )

	cmp	DWORD PTR _lpCurrContext$8034[ebp], 0
	je	SHORT $L8057

; 1462 :                lpCurrContext->hNextContext = lpNextContext;

	mov	eax, DWORD PTR _lpCurrContext$8034[ebp]
	mov	ecx, DWORD PTR _lpNextContext$8035[ebp]
	mov	DWORD PTR [eax+2], ecx

; 1463 :             else

	jmp	SHORT $L8058
$L8057:

; 1464 :                lpDomain->hFirstContext = lpNextContext;

	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	eax, DWORD PTR _lpNextContext$8035[ebp]
	mov	DWORD PTR [edx+47], eax
$L8058:

; 1465 : 
; 1466 :             continue;

	jmp	$L8043
$L8045:

; 1468 : 
; 1469 :          lpCurrContext = lpContext; // indicate curr context as valid

	mov	ecx, DWORD PTR _lpContext$[ebp]
	mov	DWORD PTR _lpCurrContext$8034[ebp], ecx

; 1470 : 
; 1471 : // DGC 2000.11.06
; 1472 : // I removed following code to allow external values to be null.
; 1473 : #if 0
; 1474 :          // Context has a name.  Go check each table entry.
; 1475 :          for ( lpTableEntry = zGETPTR( lpContext->hFirstTableEntry );
; 1476 :                lpTableEntry;
; 1477 :                lpTableEntry = zGETPTR( lpNextTableEntry ) )
; 1478 :          {
; 1479 :             lpNextTableEntry = lpTableEntry->hNextTableEntry;
; 1480 : 
; 1481 :             if ( lpDomain->cType == zTYPE_INTEGER ||
; 1482 :                  lpDomain->cType == zTYPE_DECIMAL )
; 1483 :             {
; 1484 :                if ( lpTableEntry->hExternalValue == 0 &&
; 1485 :                     lpTableEntry->unInternal.lInteger != lNullInteger )
; 1486 :                {
; 1487 :                   zCHAR szWork[ 16 ];
; 1488 : 
; 1489 :                   zltoa( lpTableEntry->unInternal.lInteger, szWork );
; 1490 :                   lpTableEntry->hExternalValue =
; 1491 :                    fnStoreStringInDataspace( AnchorBlock->hMainFirstDataHeader,
; 1492 :                                              szWork );
; 1493 :                }
; 1494 : 
; 1495 :                continue;
; 1496 :             }
; 1497 : 
; 1498 :             if ( lpTableEntry->hExternalValue == 0 )
; 1499 :             {
; 1500 :                if ( lpTableEntry->unInternal.hStringValue )
; 1501 :                {
; 1502 :                   lpTableEntry->hExternalValue =
; 1503 :                                        lpTableEntry->unInternal.hStringValue;
; 1504 :                }
; 1505 :             }
; 1506 :          }
; 1507 : #endif
; 1508 :       }

	jmp	$L8043
$L8044:

; 1509 : 
; 1510 :    } // while ( lpDomain )...

	jmp	$L8032
$L8033:

; 1511 : 
; 1512 :    fnSysCloseFile( lpTask, hFile, 0 ); // Close the domain file

	push	0
	mov	edx, DWORD PTR _hFile$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	_fnSysCloseFile@12

; 1513 : 
; 1514 :    // Add created app to anchor block list (under the ANCHORBLOCK mutex).
; 1515 :    lpApp->hNextApp = AnchorBlock->hFirstApp;

	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+126]
	mov	DWORD PTR [ecx+2], eax

; 1516 :    AnchorBlock->hFirstApp = hApp;

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR _hApp$[ebp]
	mov	DWORD PTR [ecx+126], edx

; 1517 : 
; 1518 :    return( lpApp );         // return the application

	mov	eax, DWORD PTR _lpApp$[ebp]
$L7684:

; 1519 : }

	mov	esp, ebp
	pop	ebp
	ret	0
$L8385:
	DD	$L7940
	DD	$L7974
	DD	$L7994
	DD	$L8009
	DD	$L8017
$L8387:
	DD	$L7946
	DD	$L7948
	DD	$L7957
	DD	$L7960
	DD	$L7962
	DD	$L7969
	DD	$L7972
	DD	$L7943
$L8386:
	DB	0
	DB	1
	DB	7
	DB	7
	DB	7
	DB	7
	DB	7
	DB	7
	DB	7
	DB	7
	DB	2
	DB	3
	DB	4
	DB	7
	DB	7
	DB	5
	DB	7
	DB	7
	DB	7
	DB	7
	DB	7
	DB	7
	DB	7
	DB	6
$L8389:
	DD	$L7980
	DD	$L7982
	DD	$L7984
	DD	$L7990
	DD	$L7992
	DD	$L7977
$L8388:
	DB	0
	DB	1
	DB	5
	DB	5
	DB	5
	DB	2
	DB	5
	DB	5
	DB	5
	DB	5
	DB	3
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	4
_fnCreateApp ENDP
_lpContext$ = 8
_lpTableEntry$ = 12
_nMaintainLinks$ = 16
_lpNLS_TableEntry$ = -8
_lpNextNLS_TableEntry$ = -12
_lpDomain$ = -4
_lpTempTable$8086 = -16
_fnDropTableEntry PROC NEAR

; 1544 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 1545 :    LPNLSTABLEENTRY lpNLS_TableEntry;
; 1546 :    LPNLSTABLEENTRY lpNextNLS_TableEntry;
; 1547 :    LPDOMAIN        lpDomain;
; 1548 : 
; 1549 :    // Drop the NLS stuff.
; 1550 :    for ( lpNLS_TableEntry = zGETPTR( lpTableEntry->hFirstNLS_TableEntry );
; 1551 :          lpNLS_TableEntry;
; 1552 :          lpNLS_TableEntry = zGETPTR( lpNextNLS_TableEntry ) )

	mov	eax, DWORD PTR _lpTableEntry$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNLS_TableEntry$[ebp], eax
	jmp	SHORT $L8071
$L8072:
	mov	edx, DWORD PTR _lpNextNLS_TableEntry$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNLS_TableEntry$[ebp], eax
$L8071:
	cmp	DWORD PTR _lpNLS_TableEntry$[ebp], 0
	je	SHORT $L8073

; 1554 :       lpNextNLS_TableEntry = lpNLS_TableEntry->hNextNLS_TableEntry;

	mov	eax, DWORD PTR _lpNLS_TableEntry$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR _lpNextNLS_TableEntry$[ebp], ecx

; 1555 : 
; 1556 :       if ( lpNLS_TableEntry->pszNLS_Text )

	mov	edx, DWORD PTR _lpNLS_TableEntry$[ebp]
	cmp	DWORD PTR [edx+6], 0
	je	SHORT $L8074

; 1557 :          fnFreeDataspace( zGETPTR( lpNLS_TableEntry->pszNLS_Text ) );

	mov	eax, DWORD PTR _lpNLS_TableEntry$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnFreeDataspace
	add	esp, 4
$L8074:

; 1558 : 
; 1559 :       fnFreeDataspace( lpNLS_TableEntry );

	mov	edx, DWORD PTR _lpNLS_TableEntry$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 1560 :    }

	jmp	SHORT $L8072
$L8073:

; 1561 : 
; 1562 :    lpDomain = zGETPTR( lpContext->hDomain );

	mov	eax, DWORD PTR _lpContext$[ebp]
	mov	ecx, DWORD PTR [eax+43]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax

; 1563 :    if ( lpDomain->cType != zTYPE_INTEGER &&
; 1564 :         lpDomain->cType != zTYPE_DECIMAL )

	mov	edx, DWORD PTR _lpDomain$[ebp]
	movsx	eax, BYTE PTR [edx+63]
	cmp	eax, 76					; 0000004cH
	je	SHORT $L8077
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	movsx	edx, BYTE PTR [ecx+63]
	cmp	edx, 77					; 0000004dH
	je	SHORT $L8077

; 1566 :       if ( lpTableEntry->hExternalValue ==
; 1567 :                           lpTableEntry->unInternal.hStringValue )

	mov	eax, DWORD PTR _lpTableEntry$[ebp]
	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR [eax+18]
	cmp	edx, DWORD PTR [ecx+26]
	jne	SHORT $L8078

; 1569 :          fnFreeDataspace( zGETPTR( lpTableEntry->unInternal.hStringValue ) );

	mov	eax, DWORD PTR _lpTableEntry$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 1571 :       else

	jmp	SHORT $L8080
$L8078:

; 1573 :          fnFreeDataspace( zGETPTR( lpTableEntry->hExternalValue ) );

	mov	edx, DWORD PTR _lpTableEntry$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 1574 :          fnFreeDataspace( zGETPTR( lpTableEntry->unInternal.hStringValue ) );

	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnFreeDataspace
	add	esp, 4
$L8080:

; 1577 :    else

	jmp	SHORT $L8083
$L8077:

; 1578 :       fnFreeDataspace( zGETPTR( lpTableEntry->hExternalValue ) );

	mov	eax, DWORD PTR _lpTableEntry$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnFreeDataspace
	add	esp, 4
$L8083:

; 1579 : 
; 1580 :    if ( nMaintainLinks )

	movsx	edx, WORD PTR _nMaintainLinks$[ebp]
	test	edx, edx
	je	$L8095

; 1582 :       LPTABLEENTRY lpTempTable;
; 1583 : 
; 1584 :       if ( lpTableEntry->hNextTableEntry )

	mov	eax, DWORD PTR _lpTableEntry$[ebp]
	cmp	DWORD PTR [eax+2], 0
	je	SHORT $L8087

; 1586 :          // not the tail of the chain
; 1587 : 
; 1588 :          lpTempTable = zGETPTR( lpTableEntry->hNextTableEntry );

	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempTable$8086[ebp], eax

; 1589 :          lpTempTable->hPrevTableEntry = lpTableEntry->hPrevTableEntry;

	mov	eax, DWORD PTR _lpTempTable$8086[ebp]
	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	mov	DWORD PTR [eax+6], edx

; 1590 : 
; 1591 :          if ( lpTableEntry->hPrevTableEntry )

	mov	eax, DWORD PTR _lpTableEntry$[ebp]
	cmp	DWORD PTR [eax+6], 0
	je	SHORT $L8089

; 1593 :             // not the head of the chain
; 1594 :             lpTempTable = zGETPTR( lpTableEntry->hPrevTableEntry );

	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempTable$8086[ebp], eax

; 1595 :             lpTempTable->hNextTableEntry = lpTableEntry->hNextTableEntry;

	mov	eax, DWORD PTR _lpTempTable$8086[ebp]
	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+2], edx

; 1597 :          else

	jmp	SHORT $L8091
$L8089:

; 1598 :             // head of the chain
; 1599 :             lpContext->hFirstTableEntry = lpTableEntry->hNextTableEntry;

	mov	eax, DWORD PTR _lpContext$[ebp]
	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+47], edx
$L8091:

; 1601 :       else

	jmp	SHORT $L8095
$L8087:

; 1603 :          // deleting the tail of the chain
; 1604 :          lpContext->hLastTableEntry = lpTableEntry->hPrevTableEntry;

	mov	eax, DWORD PTR _lpContext$[ebp]
	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	mov	DWORD PTR [eax+51], edx

; 1605 :          if ( lpTableEntry->hPrevTableEntry )

	mov	eax, DWORD PTR _lpTableEntry$[ebp]
	cmp	DWORD PTR [eax+6], 0
	je	SHORT $L8093

; 1607 :             // not the only entry in the chain
; 1608 :             lpTempTable = zGETPTR( lpTableEntry->hPrevTableEntry );

	mov	ecx, DWORD PTR _lpTableEntry$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempTable$8086[ebp], eax

; 1609 :             lpTempTable->hNextTableEntry = 0;

	mov	eax, DWORD PTR _lpTempTable$8086[ebp]
	mov	DWORD PTR [eax+2], 0

; 1611 :          else

	jmp	SHORT $L8095
$L8093:

; 1613 :             // only entry in the chain
; 1614 :             lpContext->hFirstTableEntry = 0;

	mov	ecx, DWORD PTR _lpContext$[ebp]
	mov	DWORD PTR [ecx+47], 0
$L8095:

; 1618 : 
; 1619 :    fnFreeDataspace( lpTableEntry );

	mov	edx, DWORD PTR _lpTableEntry$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 1620 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnDropTableEntry ENDP
_lpDomain$ = 8
_lpContext$8102 = -8
_lpTableEntry$8103 = -12
_lpRegExpression$8104 = -4
_fnDeleteContext PROC NEAR

; 1641 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
$L8100:

; 1642 :    while ( lpDomain->hFirstContext )

	mov	eax, DWORD PTR _lpDomain$[ebp]
	cmp	DWORD PTR [eax+47], 0
	je	$L8101

; 1644 :       zLPCONTEXT      lpContext;
; 1645 :       LPTABLEENTRY    lpTableEntry;
; 1646 :       LPREGEXPRESSION lpRegExpression;
; 1647 : 
; 1648 :       // Delete all table entries for this context.
; 1649 :       lpContext = zGETPTR( lpDomain->hFirstContext );

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	mov	edx, DWORD PTR [ecx+47]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpContext$8102[ebp], eax
$L8107:

; 1650 :       while ( lpContext->hFirstTableEntry )

	mov	eax, DWORD PTR _lpContext$8102[ebp]
	cmp	DWORD PTR [eax+47], 0
	je	SHORT $L8108

; 1652 :          lpTableEntry = zGETPTR( lpContext->hFirstTableEntry );

	mov	ecx, DWORD PTR _lpContext$8102[ebp]
	mov	edx, DWORD PTR [ecx+47]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTableEntry$8103[ebp], eax

; 1653 :          lpContext->hFirstTableEntry = lpTableEntry->hNextTableEntry;

	mov	eax, DWORD PTR _lpContext$8102[ebp]
	mov	ecx, DWORD PTR _lpTableEntry$8103[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+47], edx

; 1654 :          fnDropTableEntry( lpContext, lpTableEntry, 0 );

	push	0
	mov	eax, DWORD PTR _lpTableEntry$8103[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpContext$8102[ebp]
	push	ecx
	call	_fnDropTableEntry
	add	esp, 12					; 0000000cH

; 1655 :       }

	jmp	SHORT $L8107
$L8108:

; 1656 : 
; 1657 :       // Delete all regular expressions for this context.
; 1658 :       while ( lpContext->hFirstRegExpression )

	mov	edx, DWORD PTR _lpContext$8102[ebp]
	cmp	DWORD PTR [edx+55], 0
	je	SHORT $L8112

; 1660 :          lpRegExpression = zGETPTR( lpContext->hFirstRegExpression );

	mov	eax, DWORD PTR _lpContext$8102[ebp]
	mov	ecx, DWORD PTR [eax+55]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRegExpression$8104[ebp], eax

; 1661 :          lpContext->hFirstRegExpression = lpRegExpression->hNextRegExpression;

	mov	edx, DWORD PTR _lpContext$8102[ebp]
	mov	eax, DWORD PTR _lpRegExpression$8104[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR [edx+55], ecx

; 1662 :          fnFreeDataspace( lpRegExpression );

	mov	edx, DWORD PTR _lpRegExpression$8104[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 1663 :       }

	jmp	SHORT $L8108
$L8112:

; 1664 : 
; 1665 :       lpDomain->hFirstContext = lpContext->hNextContext;

	mov	eax, DWORD PTR _lpDomain$[ebp]
	mov	ecx, DWORD PTR _lpContext$8102[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+47], edx

; 1666 :       fnFreeDataspace( zGETPTR( lpContext->hEditString ) );

	mov	eax, DWORD PTR _lpContext$8102[ebp]
	mov	ecx, DWORD PTR [eax+59]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 1667 :       fnFreeDataspace( lpContext );

	mov	edx, DWORD PTR _lpContext$8102[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 1668 :    }

	jmp	$L8100
$L8101:

; 1669 : 
; 1670 :    return( 0 );

	xor	ax, ax

; 1671 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnDeleteContext ENDP
_TEXT	ENDS
PUBLIC	??_C@_0CK@IPAG@fnDeleteApp?5found?5Domains?5linked@ ; `string'
PUBLIC	??_C@_0O@DOED@IMPOSSIBLE?$CB?$CB?$CB?$AA@	; `string'
PUBLIC	??_C@_03BKPH@DKS?$AA@				; `string'
PUBLIC	??_C@_0BM@OIFA@?$CIAPP?$CJ?5About?5to?5delete?5App?3?5?$AA@ ; `string'
PUBLIC	??_C@_0CI@OAOJ@?$CIAPP?$CJ?5Finished?5dropping?5Views?5fo@ ; `string'
PUBLIC	??_C@_0CN@NHKB@?$CIAPP?$CJ?5Finished?5dropping?5View?5Nam@ ; `string'
PUBLIC	??_C@_0CM@ONOE@?$CIAPP?$CJ?5Finished?5dropping?5App?5View@ ; `string'
PUBLIC	??_C@_0CK@PHHJ@?$CIAPP?$CJ?5Finished?5dropping?5Domains?5@ ; `string'
PUBLIC	??_C@_0DA@KPA@?$CIAPP?$CJ?5Finished?5dropping?5Logical?5@ ; `string'
PUBLIC	??_C@_0CK@ILFL@?$CIAPP?$CJ?5Finished?5dropping?5ViewODs?5@ ; `string'
PUBLIC	??_C@_0CO@JEMD@?$CIAPP?$CJ?5Finished?5dropping?5DB?5Handl@ ; `string'
PUBLIC	??_C@_0CO@HIAJ@?$CIAPP?$CJ?5Finished?5dropping?5GK?5Handl@ ; `string'
PUBLIC	??_C@_0CF@PPFE@?$CIAPP?$CJ?5DeleteApp?5SUCCESSFUL?5for?5A@ ; `string'
PUBLIC	??_C@_0M@OGPE@?$CIKeepAlive?$CJ?$AA@		; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_0DA@HNEC@DeleteApp?5for?5App?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ ; `string'
PUBLIC	??_C@_0CI@PMOF@fnDeleteApp?5found?5Tasks?5linked?5t@ ; `string'
PUBLIC	??_C@_0EC@PMKL@fnDeleteApp?5found?5ViewOD?5?$CI?$CFs?$CJ?5fo@ ; `string'
PUBLIC	??_C@_0CL@DFNM@fnDeleteApp?5found?5Subtasks?5linke@ ; `string'
EXTRN	_fnDropObjectInstance:NEAR
EXTRN	_SysMessageBox@16:NEAR
EXTRN	_fnDropSubtask:NEAR
EXTRN	_fnDropView@4:NEAR
EXTRN	_fnDropTaskDomain:NEAR
EXTRN	_fnDeleteViewObject@4:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\A\oe\KZOEAPAA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0M@OGPE@?$CIKeepAlive?$CJ?$AA@
_DATA	SEGMENT
??_C@_0M@OGPE@?$CIKeepAlive?$CJ?$AA@ DB '(KeepAlive)', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DA@HNEC@DeleteApp?5for?5App?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@
_DATA	SEGMENT
??_C@_0DA@HNEC@DeleteApp?5for?5App?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ DB 'D'
	DB	'eleteApp for App ===================>>>> %s %s', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@PMOF@fnDeleteApp?5found?5Tasks?5linked?5t@
_DATA	SEGMENT
??_C@_0CI@PMOF@fnDeleteApp?5found?5Tasks?5linked?5t@ DB 'fnDeleteApp foun'
	DB	'd Tasks linked to App: ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EC@PMKL@fnDeleteApp?5found?5ViewOD?5?$CI?$CFs?$CJ?5fo@
_DATA	SEGMENT
??_C@_0EC@PMKL@fnDeleteApp?5found?5ViewOD?5?$CI?$CFs?$CJ?5fo@ DB 'fnDelet'
	DB	'eApp found ViewOD (%s) for task: 0x%08x  linked to App: %s', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CL@DFNM@fnDeleteApp?5found?5Subtasks?5linke@
_DATA	SEGMENT
??_C@_0CL@DFNM@fnDeleteApp?5found?5Subtasks?5linke@ DB 'fnDeleteApp found'
	DB	' Subtasks linked to App: ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CK@IPAG@fnDeleteApp?5found?5Domains?5linked@
_DATA	SEGMENT
??_C@_0CK@IPAG@fnDeleteApp?5found?5Domains?5linked@ DB 'fnDeleteApp found'
	DB	' Domains linked to App: ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@DOED@IMPOSSIBLE?$CB?$CB?$CB?$AA@
_DATA	SEGMENT
??_C@_0O@DOED@IMPOSSIBLE?$CB?$CB?$CB?$AA@ DB 'IMPOSSIBLE!!!', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_03BKPH@DKS?$AA@
_DATA	SEGMENT
??_C@_03BKPH@DKS?$AA@ DB 'DKS', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@OIFA@?$CIAPP?$CJ?5About?5to?5delete?5App?3?5?$AA@
_DATA	SEGMENT
??_C@_0BM@OIFA@?$CIAPP?$CJ?5About?5to?5delete?5App?3?5?$AA@ DB '(APP) Abo'
	DB	'ut to delete App: ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@OAOJ@?$CIAPP?$CJ?5Finished?5dropping?5Views?5fo@
_DATA	SEGMENT
??_C@_0CI@OAOJ@?$CIAPP?$CJ?5Finished?5dropping?5Views?5fo@ DB '(APP) Fini'
	DB	'shed dropping Views for App: ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CN@NHKB@?$CIAPP?$CJ?5Finished?5dropping?5View?5Nam@
_DATA	SEGMENT
??_C@_0CN@NHKB@?$CIAPP?$CJ?5Finished?5dropping?5View?5Nam@ DB '(APP) Fini'
	DB	'shed dropping View Names for App: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CM@ONOE@?$CIAPP?$CJ?5Finished?5dropping?5App?5View@
_DATA	SEGMENT
??_C@_0CM@ONOE@?$CIAPP?$CJ?5Finished?5dropping?5App?5View@ DB '(APP) Fini'
	DB	'shed dropping App Views for App: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CK@PHHJ@?$CIAPP?$CJ?5Finished?5dropping?5Domains?5@
_DATA	SEGMENT
??_C@_0CK@PHHJ@?$CIAPP?$CJ?5Finished?5dropping?5Domains?5@ DB '(APP) Fini'
	DB	'shed dropping Domains for App: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DA@KPA@?$CIAPP?$CJ?5Finished?5dropping?5Logical?5@
_DATA	SEGMENT
??_C@_0DA@KPA@?$CIAPP?$CJ?5Finished?5dropping?5Logical?5@ DB '(APP) Finis'
	DB	'hed dropping Logical Names for App: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CK@ILFL@?$CIAPP?$CJ?5Finished?5dropping?5ViewODs?5@
_DATA	SEGMENT
??_C@_0CK@ILFL@?$CIAPP?$CJ?5Finished?5dropping?5ViewODs?5@ DB '(APP) Fini'
	DB	'shed dropping ViewODs for App: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CO@JEMD@?$CIAPP?$CJ?5Finished?5dropping?5DB?5Handl@
_DATA	SEGMENT
??_C@_0CO@JEMD@?$CIAPP?$CJ?5Finished?5dropping?5DB?5Handl@ DB '(APP) Fini'
	DB	'shed dropping DB Handlers for App: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CO@HIAJ@?$CIAPP?$CJ?5Finished?5dropping?5GK?5Handl@
_DATA	SEGMENT
??_C@_0CO@HIAJ@?$CIAPP?$CJ?5Finished?5dropping?5GK?5Handl@ DB '(APP) Fini'
	DB	'shed dropping GK Handlers for App: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CF@PPFE@?$CIAPP?$CJ?5DeleteApp?5SUCCESSFUL?5for?5A@
_DATA	SEGMENT
??_C@_0CF@PPFE@?$CIAPP?$CJ?5DeleteApp?5SUCCESSFUL?5for?5A@ DB '(APP) Dele'
	DB	'teApp SUCCESSFUL for App: ', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpViewOD$8212 = -72
_lpViewCsr$8215 = -76
_hApp2$8268 = -80
_lpApp$ = 8
_lpPrevApp$ = -20
_hApp$ = -48
_hTask$ = -32
_lpTask$ = -28
_lpDBHandler$ = -44
_lpGKHandler$ = -24
_lpView$ = -16
_vTemp$ = -64
_lpViewName$ = -60
_lpSubtask$ = -36
_lpLName$ = -12
_lpTaskDomain$ = -8
_lpPrevTaskDomain$ = -40
_lpDomain$ = -4
_lpViewOI$ = -56
_pchAppName$ = -52
_lpViewOD$8166 = -68
_fnDeleteApp PROC NEAR

; 1701 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 84					; 00000054H

; 1702 :    LPAPP          lpPrevApp;
; 1703 :    LPAPP          hApp;
; 1704 :    LPTASK         hTask;
; 1705 :    LPTASK         lpTask;
; 1706 :    LPDBHANDLER    lpDBHandler;
; 1707 :    LPGKHANDLER    lpGKHandler;
; 1708 :    zVIEW          lpView;
; 1709 :    zVIEW          vTemp;
; 1710 :    LPVIEWNAME     lpViewName;
; 1711 :    LPSUBTASK      lpSubtask;
; 1712 :    LPLNAME        lpLName;
; 1713 :    LPTASKDOMAIN   lpTaskDomain;
; 1714 :    LPTASKDOMAIN   lpPrevTaskDomain;
; 1715 :    LPDOMAIN       lpDomain;
; 1716 :    LPVIEWOI       lpViewOI;
; 1717 :    zPCHAR         pchAppName;
; 1718 : 
; 1719 :    if ( AnchorBlock == 0 )

	cmp	DWORD PTR _AnchorBlock, 0
	jne	SHORT $L8145

; 1720 :       return( -1 );

	or	ax, -1
	jmp	$L8128
$L8145:

; 1721 : 
; 1722 :    if ( lpApp == 0 || lpApp->nTableID != iApp )

	cmp	DWORD PTR _lpApp$[ebp], 0
	je	SHORT $L8147
	mov	eax, DWORD PTR _lpApp$[ebp]
	movsx	ecx, WORD PTR [eax]
	cmp	ecx, 10003				; 00002713H
	je	SHORT $L8146
$L8147:

; 1723 :       return( -1 );

	or	ax, -1
	jmp	$L8128
$L8146:

; 1724 : 
; 1725 :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+2527]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	je	SHORT $L8148

; 1727 :       TraceLine( "DeleteApp for App ===================>>>> %s %s",
; 1728 :                  lpApp->szName, lpApp->bKeepAlive ? "(KeepAlive)" : "" );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR [ecx+1905]
	and	edx, 1
	test	edx, edx
	je	SHORT $L8393
	mov	DWORD PTR -84+[ebp], OFFSET FLAT:??_C@_0M@OGPE@?$CIKeepAlive?$CJ?$AA@ ; `string'
	jmp	SHORT $L8394
$L8393:
	mov	DWORD PTR -84+[ebp], OFFSET FLAT:??_C@_00A@?$AA@ ; `string'
$L8394:
	mov	eax, DWORD PTR -84+[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpApp$[ebp]
	add	ecx, 6
	push	ecx
	push	OFFSET FLAT:??_C@_0DA@HNEC@DeleteApp?5for?5App?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ ; `string'
	call	_TraceLine
	add	esp, 12					; 0000000cH
$L8148:

; 1730 : 
; 1731 :    // Some apps never get dropped, even if no tasks reference them.  Check
; 1732 :    // to see if this is one of them and just return if it is.
; 1733 :    if ( lpApp->bKeepAlive )

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+1905]
	and	eax, 1
	test	eax, eax
	je	SHORT $L8152

; 1734 :       return( 1 );

	mov	ax, 1
	jmp	$L8128
$L8152:

; 1735 : 
; 1736 :    hApp = zGETHNDL( lpApp );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hApp$[ebp], eax

; 1737 :    pchAppName = lpApp->szName;

	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 6
	mov	DWORD PTR _pchAppName$[ebp], edx

; 1738 : 
; 1739 :    // Loop through the tasks.  Note that we don't need to worry about a
; 1740 :    // task being deleted while we are here because we are protected by
; 1741 :    // the ANCHORBLOCK mutex.
; 1742 :    hTask = AnchorBlock->hFirstTask;

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+130]
	mov	DWORD PTR _hTask$[ebp], ecx
$L8156:

; 1743 :    while ( (lpTask = zGETPTR( hTask )) != 0 )

	mov	edx, DWORD PTR _hTask$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$[ebp], eax
	cmp	DWORD PTR _lpTask$[ebp], 0
	je	$L8157

; 1745 :       // Kick out if task is connected to app.
; 1746 :       if ( lpTask->hApp == hApp )

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	cmp	ecx, DWORD PTR _hApp$[ebp]
	jne	SHORT $L8158

; 1748 :          if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+2527]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	je	SHORT $L8159

; 1749 :             TraceLineS( "fnDeleteApp found Tasks linked to App: ", lpApp->szName );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	add	ecx, 6
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@PMOF@fnDeleteApp?5found?5Tasks?5linked?5t@ ; `string'
	call	_TraceLineS@8
$L8159:

; 1750 : 
; 1751 :          return( 1 );

	mov	ax, 1
	jmp	$L8128
$L8158:

; 1753 : 
; 1754 :       // Make sure that no task is using a View OI for one of the object's
; 1755 :       // view instances.
; 1756 :       lpView = zGETPTR( lpTask->hFirstView );

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+106]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpView$[ebp], eax
$L8163:

; 1757 :       while ( lpView )

	cmp	DWORD PTR _lpView$[ebp], 0
	je	SHORT $L8164

; 1759 :          if ( lpView->hViewOD )

	mov	ecx, DWORD PTR _lpView$[ebp]
	cmp	DWORD PTR [ecx+6], 0
	je	SHORT $L8168

; 1761 :             LPVIEWOD lpViewOD = zGETPTR( lpView->hViewOD );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8166[ebp], eax

; 1762 : 
; 1763 :             // Kick out if ViewOD is connected to app.
; 1764 :             if ( lpViewOD->hApp == hApp )

	mov	ecx, DWORD PTR _lpViewOD$8166[ebp]
	mov	edx, DWORD PTR [ecx+6]
	cmp	edx, DWORD PTR _hApp$[ebp]
	jne	SHORT $L8168

; 1766 :                if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+2527]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8169

; 1768 :                   TraceLine( "fnDeleteApp found ViewOD (%s) for task: 0x%08x  linked to App: %s",
; 1769 :                              lpViewOD->szName, zGETHNDL( lpTask ), lpApp->szName );

	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 6
	push	edx
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$8166[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0EC@PMKL@fnDeleteApp?5found?5ViewOD?5?$CI?$CFs?$CJ?5fo@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H
$L8169:

; 1771 : 
; 1772 :                return( 1 );

	mov	ax, 1
	jmp	$L8128
$L8168:

; 1775 : 
; 1776 :          lpView = zGETPTR( lpView->hNextView );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpView$[ebp], eax

; 1777 :       }

	jmp	SHORT $L8163
$L8164:

; 1778 : 
; 1779 :       // Make sure none of the active subtasks is using the application to
; 1780 :       // be deleted.
; 1781 :       lpSubtask = zGETPTR( lpTask->hFirstSubtask );

	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax
$L8175:

; 1782 :       while ( lpSubtask )

	cmp	DWORD PTR _lpSubtask$[ebp], 0
	je	$L8176

; 1784 :          // Kick out if subtask is connected to app.
; 1785 :          if ( lpSubtask->hApp == hApp )

	mov	eax, DWORD PTR _lpSubtask$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	cmp	ecx, DWORD PTR _hApp$[ebp]
	jne	SHORT $L8180

; 1787 :             if ( hTask == AnchorBlock->hMainTask )

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR _hTask$[ebp]
	cmp	eax, DWORD PTR [edx+106]
	jne	SHORT $L8178

; 1789 :                // Clean up any subtasks for this app in the Main task.
; 1790 :                fnDropSubtask( lpTask, lpSubtask, -1 );

	push	-1
	mov	ecx, DWORD PTR _lpSubtask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$[ebp]
	push	edx
	call	_fnDropSubtask
	add	esp, 12					; 0000000cH

; 1791 :                lpSubtask = zGETPTR( lpTask->hFirstSubtask );  // restart

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 1792 :                continue;

	jmp	SHORT $L8175
$L8178:

; 1796 :                if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+2527]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	je	SHORT $L8181

; 1797 :                   TraceLineS( "fnDeleteApp found Subtasks linked to App: ", lpApp->szName );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	add	ecx, 6
	push	ecx
	push	OFFSET FLAT:??_C@_0CL@DFNM@fnDeleteApp?5found?5Subtasks?5linke@ ; `string'
	call	_TraceLineS@8
$L8181:

; 1798 : 
; 1799 :                return( 1 );

	mov	ax, 1
	jmp	$L8128
$L8180:

; 1802 : 
; 1803 :          lpSubtask = zGETPTR( lpSubtask->hNextSubtask );

	mov	edx, DWORD PTR _lpSubtask$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSubtask$[ebp], eax

; 1804 :       }

	jmp	$L8175
$L8176:

; 1805 : 
; 1806 :       if ( lpView || lpSubtask )

	cmp	DWORD PTR _lpView$[ebp], 0
	jne	SHORT $L8185
	cmp	DWORD PTR _lpSubtask$[ebp], 0
	je	SHORT $L8184
$L8185:

; 1807 :          return( 1 );

	mov	ax, 1
	jmp	$L8128
$L8184:

; 1808 : 
; 1809 :       // Check this for leak ... dks 2005.12.01
; 1810 :       lpPrevTaskDomain = 0;

	mov	DWORD PTR _lpPrevTaskDomain$[ebp], 0

; 1811 :       lpTaskDomain = zGETPTR( lpTask->hFirstTaskDomain );

	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+126]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTaskDomain$[ebp], eax
$L8188:

; 1812 :       while( lpTaskDomain )

	cmp	DWORD PTR _lpTaskDomain$[ebp], 0
	je	$L8189

; 1814 :          lpDomain = zGETPTR( lpTaskDomain->hDomain );

	mov	eax, DWORD PTR _lpTaskDomain$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax

; 1815 :          if ( lpDomain->hApp == hApp )

	mov	edx, DWORD PTR _lpDomain$[ebp]
	mov	eax, DWORD PTR [edx+43]
	cmp	eax, DWORD PTR _hApp$[ebp]
	jne	SHORT $L8194

; 1817 :             if ( hTask == AnchorBlock->hMainTask )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR _hTask$[ebp]
	cmp	edx, DWORD PTR [ecx+106]
	jne	SHORT $L8192

; 1819 :                // Clean up any domains for this app in the Main task.
; 1820 :                fnDropTaskDomain( lpTask, lpTaskDomain );

	mov	eax, DWORD PTR _lpTaskDomain$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnDropTaskDomain
	add	esp, 8

; 1821 :                lpTaskDomain = zGETPTR( lpTask->hFirstTaskDomain );  // restart

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+126]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTaskDomain$[ebp], eax

; 1822 :                continue;

	jmp	SHORT $L8188
$L8192:

; 1826 :                if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+2527]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L8195

; 1827 :                   TraceLineS( "fnDeleteApp found Domains linked to App: ", lpApp->szName );

	mov	eax, DWORD PTR _lpApp$[ebp]
	add	eax, 6
	push	eax
	push	OFFSET FLAT:??_C@_0CK@IPAG@fnDeleteApp?5found?5Domains?5linked@ ; `string'
	call	_TraceLineS@8
$L8195:

; 1828 : 
; 1829 :                return( 1 );

	mov	ax, 1
	jmp	$L8128
$L8194:

; 1832 : 
; 1833 :          lpPrevTaskDomain = lpTaskDomain;

	mov	ecx, DWORD PTR _lpTaskDomain$[ebp]
	mov	DWORD PTR _lpPrevTaskDomain$[ebp], ecx

; 1834 :          lpTaskDomain = zGETPTR( lpTaskDomain->hNextTaskDomainForTask );

	mov	edx, DWORD PTR _lpTaskDomain$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTaskDomain$[ebp], eax

; 1835 :       }

	jmp	$L8188
$L8189:

; 1836 : 
; 1837 :       hTask = lpTask->hNextTask;

	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR _hTask$[ebp], edx

; 1838 :    }

	jmp	$L8156
$L8157:

; 1839 : 
; 1840 :    // If lpTask is set, then the application is still in use either by
; 1841 :    // a view in a task chain OR a subtask still active in a task chain.
; 1842 :    // Return that the application is still in use!
; 1843 :    if ( lpTask )    // i don't think it is possible to get here ... but who

	cmp	DWORD PTR _lpTask$[ebp], 0
	je	SHORT $L8198

; 1845 :       SysMessageBox( 0, "DKS", "IMPOSSIBLE!!!", -1 );

	push	-1
	push	OFFSET FLAT:??_C@_0O@DOED@IMPOSSIBLE?$CB?$CB?$CB?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_03BKPH@DKS?$AA@	; `string'
	push	0
	call	_SysMessageBox@16

; 1846 :       return( 1 );

	mov	ax, 1
	jmp	$L8128
$L8198:

; 1848 : 
; 1849 :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+2527]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8201

; 1850 :       TraceLineS( "(APP) About to delete App: ", pchAppName );

	mov	edx, DWORD PTR _pchAppName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BM@OIFA@?$CIAPP?$CJ?5About?5to?5delete?5App?3?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8201:

; 1851 : 
; 1852 :    // Even though the application is not in use, there may yet be instances
; 1853 :    // tied to the application. Go through all ViewOI's in all tasks and
; 1854 :    // delete any instances which are for this application.
; 1855 :    for ( lpTask = zGETPTR( AnchorBlock->hFirstTask );
; 1856 :          lpTask;
; 1857 :          lpTask = zGETPTR( lpTask->hNextTask ) )

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+130]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$[ebp], eax
	jmp	SHORT $L8205
$L8206:
	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$[ebp], eax
$L8205:
	cmp	DWORD PTR _lpTask$[ebp], 0
	je	$L8207

; 1859 :       // Make sure that no task is using a View OI for one of the object's
; 1860 :       // view instances.
; 1861 :       lpViewOI = zGETPTR( lpTask->hFirstViewOI );

	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+98]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax
$L8210:

; 1862 :       while ( lpViewOI )

	cmp	DWORD PTR _lpViewOI$[ebp], 0
	je	SHORT $L8211

; 1864 :          LPVIEWOD lpViewOD = zGETPTR( lpViewOI->hViewOD );

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8212[ebp], eax

; 1865 : 
; 1866 :          if ( lpViewOD->hApp == hApp )

	mov	edx, DWORD PTR _lpViewOD$8212[ebp]
	mov	eax, DWORD PTR [edx+6]
	cmp	eax, DWORD PTR _hApp$[ebp]
	jne	SHORT $L8214

; 1868 :             LPVIEWCSR lpViewCsr = zGETPTR( lpViewOI->hFirstViewCsr );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$8215[ebp], eax

; 1869 : 
; 1870 :             lpView   = zGETPTR( lpViewCsr->hView );

	mov	eax, DWORD PTR _lpViewCsr$8215[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpView$[ebp], eax

; 1871 :             lpViewOI = zGETPTR( lpViewOI->hNextViewOI );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1872 :             fnDropObjectInstance( lpView );

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnDropObjectInstance
	add	esp, 4

; 1874 :          else

	jmp	SHORT $L8219
$L8214:

; 1875 :             lpViewOI = zGETPTR( lpViewOI->hNextViewOI );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax
$L8219:

; 1876 :       }

	jmp	SHORT $L8210
$L8211:

; 1877 :    }

	jmp	$L8206
$L8207:

; 1878 : 
; 1879 :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+2527]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L8221

; 1880 :       TraceLineS( "(APP) Finished dropping Views for App: ", pchAppName );

	mov	eax, DWORD PTR _pchAppName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CI@OAOJ@?$CIAPP?$CJ?5Finished?5dropping?5Views?5fo@ ; `string'
	call	_TraceLineS@8
$L8221:

; 1881 : 
; 1882 :    // Drop all the view names chained to the application.
; 1883 :    while ( lpApp->hFirstViewName )

	mov	ecx, DWORD PTR _lpApp$[ebp]
	cmp	DWORD PTR [ecx+1893], 0
	je	SHORT $L8225

; 1885 :       lpViewName = zGETPTR( lpApp->hFirstViewName );

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+1893]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewName$[ebp], eax

; 1886 : 
; 1887 :       // Unchain the current view name.
; 1888 :       lpApp->hFirstViewName = lpViewName->hNextViewName;

	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR _lpViewName$[ebp]
	mov	eax, DWORD PTR [edx+6]
	mov	DWORD PTR [ecx+1893], eax

; 1889 : 
; 1890 :       // Decrement the name count in the View referenced by the ViewName.
; 1891 :       vTemp = zGETPTR( lpViewName->hView );

	mov	ecx, DWORD PTR _lpViewName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _vTemp$[ebp], eax

; 1892 :       vTemp->nViewNames--;

	mov	eax, DWORD PTR _vTemp$[ebp]
	mov	cx, WORD PTR [eax+22]
	sub	cx, 1
	mov	edx, DWORD PTR _vTemp$[ebp]
	mov	WORD PTR [edx+22], cx

; 1893 : 
; 1894 :       // Free up storage for name string and the ViewName itself.
; 1895 :       fnFreeDataspace( lpViewName );

	mov	eax, DWORD PTR _lpViewName$[ebp]
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 1896 :    }

	jmp	SHORT $L8221
$L8225:

; 1897 : 
; 1898 :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+2527]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L8228

; 1899 :       TraceLineS( "(APP) Finished dropping View Names for App: ", pchAppName );

	mov	eax, DWORD PTR _pchAppName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CN@NHKB@?$CIAPP?$CJ?5Finished?5dropping?5View?5Nam@ ; `string'
	call	_TraceLineS@8
$L8228:

; 1900 : 
; 1901 :    // Drop all the views chained to the application.
; 1902 :    while ( lpApp->hFirstView )

	mov	ecx, DWORD PTR _lpApp$[ebp]
	cmp	DWORD PTR [ecx+1889], 0
	je	SHORT $L8232

; 1904 :       fnDropView( zGETPTR( lpApp->hFirstView ) );

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+1889]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnDropView@4

; 1905 :    }

	jmp	SHORT $L8228
$L8232:

; 1906 : 
; 1907 :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+2527]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L8234

; 1908 :       TraceLineS( "(APP) Finished dropping App Views for App: ", pchAppName );

	mov	eax, DWORD PTR _pchAppName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CM@ONOE@?$CIAPP?$CJ?5Finished?5dropping?5App?5View@ ; `string'
	call	_TraceLineS@8
$L8234:

; 1909 : 
; 1910 :    // Clean up application domains.
; 1911 :    while ( lpApp->hFirstDomain )

	mov	ecx, DWORD PTR _lpApp$[ebp]
	cmp	DWORD PTR [ecx+72], 0
	je	SHORT $L8238

; 1913 :       lpDomain = zGETPTR( lpApp->hFirstDomain );

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+72]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDomain$[ebp], eax

; 1914 :       fnDeleteContext( lpDomain );

	mov	ecx, DWORD PTR _lpDomain$[ebp]
	push	ecx
	call	_fnDeleteContext
	add	esp, 4

; 1915 :       lpApp->hFirstDomain = lpDomain->hNextDomain;

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR _lpDomain$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR [edx+72], ecx

; 1916 :       fnFreeDataspace( lpDomain );

	mov	edx, DWORD PTR _lpDomain$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 1917 :    }

	jmp	SHORT $L8234
$L8238:

; 1918 : 
; 1919 :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+2527]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8240

; 1920 :       TraceLineS( "(APP) Finished dropping Domains for App: ", pchAppName );

	mov	edx, DWORD PTR _pchAppName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CK@PHHJ@?$CIAPP?$CJ?5Finished?5dropping?5Domains?5@ ; `string'
	call	_TraceLineS@8
$L8240:

; 1921 : 
; 1922 :    // Clean up logical names.
; 1923 :    while ( lpApp->hFirstLName )

	mov	eax, DWORD PTR _lpApp$[ebp]
	cmp	DWORD PTR [eax+1897], 0
	je	SHORT $L8244

; 1925 :       lpLName = zGETPTR( lpApp->hFirstLName );

	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR [ecx+1897]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLName$[ebp], eax

; 1926 :       lpApp->hFirstLName = lpLName->hNextLName;

	mov	eax, DWORD PTR _lpApp$[ebp]
	mov	ecx, DWORD PTR _lpLName$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR [eax+1897], edx

; 1927 :       fnFreeDataspace( lpLName );

	mov	eax, DWORD PTR _lpLName$[ebp]
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 1928 :    }

	jmp	SHORT $L8240
$L8244:

; 1929 : 
; 1930 :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+2527]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L8246

; 1931 :       TraceLineS( "(APP) Finished dropping Logical Names for App: ", pchAppName );

	mov	eax, DWORD PTR _pchAppName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0DA@KPA@?$CIAPP?$CJ?5Finished?5dropping?5Logical?5@ ; `string'
	call	_TraceLineS@8
$L8246:

; 1932 : 
; 1933 :    // Clean up view Objects.
; 1934 :    while ( lpApp->hFirstViewOD )

	mov	ecx, DWORD PTR _lpApp$[ebp]
	cmp	DWORD PTR [ecx+84], 0
	je	SHORT $L8250

; 1935 :       fnDeleteViewObject( zGETPTR( lpApp->hFirstViewOD ) );

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+84]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnDeleteViewObject@4
	jmp	SHORT $L8246
$L8250:

; 1936 : 
; 1937 :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+2527]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L8252

; 1938 :       TraceLineS( "(APP) Finished dropping ViewODs for App: ", pchAppName );

	mov	eax, DWORD PTR _pchAppName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CK@ILFL@?$CIAPP?$CJ?5Finished?5dropping?5ViewODs?5@ ; `string'
	call	_TraceLineS@8
$L8252:

; 1939 : 
; 1940 :    // Clean up application DB Handlers.
; 1941 :    while ( lpApp->hFirstDBHandler )

	mov	ecx, DWORD PTR _lpApp$[ebp]
	cmp	DWORD PTR [ecx+76], 0
	je	SHORT $L8256

; 1943 :       lpDBHandler = zGETPTR( lpApp->hFirstDBHandler );

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+76]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDBHandler$[ebp], eax

; 1944 :       lpApp->hFirstDBHandler = lpDBHandler->hNextDBHandler;

	mov	ecx, DWORD PTR _lpApp$[ebp]
	mov	edx, DWORD PTR _lpDBHandler$[ebp]
	mov	eax, DWORD PTR [edx+2]
	mov	DWORD PTR [ecx+76], eax

; 1945 :       fnFreeDataspace( lpDBHandler );

	mov	ecx, DWORD PTR _lpDBHandler$[ebp]
	push	ecx
	call	_fnFreeDataspace
	add	esp, 4

; 1946 :    }

	jmp	SHORT $L8252
$L8256:

; 1947 : 
; 1948 :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+2527]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	je	SHORT $L8258

; 1949 :       TraceLineS( "(APP) Finished dropping DB Handlers for App: ", pchAppName );

	mov	ecx, DWORD PTR _pchAppName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CO@JEMD@?$CIAPP?$CJ?5Finished?5dropping?5DB?5Handl@ ; `string'
	call	_TraceLineS@8
$L8258:

; 1950 : 
; 1951 :    // Clean up application GK Handlers.
; 1952 :    while ( lpApp->hFirstGKHandler )

	mov	edx, DWORD PTR _lpApp$[ebp]
	cmp	DWORD PTR [edx+80], 0
	je	SHORT $L8262

; 1954 :       lpGKHandler = zGETPTR( lpApp->hFirstGKHandler );

	mov	eax, DWORD PTR _lpApp$[ebp]
	mov	ecx, DWORD PTR [eax+80]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpGKHandler$[ebp], eax

; 1955 :       lpApp->hFirstGKHandler = lpGKHandler->hNextGKHandler;

	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR _lpGKHandler$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR [edx+80], ecx

; 1956 :       fnFreeDataspace( lpGKHandler );

	mov	edx, DWORD PTR _lpGKHandler$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 1957 :    }

	jmp	SHORT $L8258
$L8262:

; 1958 : 
; 1959 :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+2527]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8264

; 1960 :       TraceLineS( "(APP) Finished dropping GK Handlers for App: ", pchAppName );

	mov	edx, DWORD PTR _pchAppName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CO@HIAJ@?$CIAPP?$CJ?5Finished?5dropping?5GK?5Handl@ ; `string'
	call	_TraceLineS@8
$L8264:

; 1961 : 
; 1962 :    // Unchain the application from the Anchor Block.
; 1963 :    if ( AnchorBlock->hFirstApp == hApp )

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+126]
	cmp	ecx, DWORD PTR _hApp$[ebp]
	jne	SHORT $L8266

; 1964 :       AnchorBlock->hFirstApp = lpApp->hNextApp;

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR _lpApp$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	mov	DWORD PTR [edx+126], ecx

; 1965 :    else

	jmp	SHORT $L8272
$L8266:

; 1967 :       LPAPP hApp2;
; 1968 : 
; 1969 :       // It is possible that lpApp is non-zero and also not in the chain
; 1970 :       // beginning at AnchorBlock->hFirstApp.  We had that situation
; 1971 :       // when zeidon.xdm was missing.  We must handle that, otherwise
; 1972 :       // the engine crashes.
; 1973 :       lpPrevApp = zGETPTR( AnchorBlock->hFirstApp );

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+126]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevApp$[ebp], eax
$L8271:

; 1974 :       while ( (hApp2 = lpPrevApp->hNextApp) != 0 )

	mov	ecx, DWORD PTR _lpPrevApp$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	mov	DWORD PTR _hApp2$8268[ebp], edx
	cmp	DWORD PTR _hApp2$8268[ebp], 0
	je	SHORT $L8272

; 1976 :          if ( hApp2 == hApp )

	mov	eax, DWORD PTR _hApp2$8268[ebp]
	cmp	eax, DWORD PTR _hApp$[ebp]
	jne	SHORT $L8273

; 1978 :             lpPrevApp->hNextApp = lpApp->hNextApp;

	mov	ecx, DWORD PTR _lpPrevApp$[ebp]
	mov	edx, DWORD PTR _lpApp$[ebp]
	mov	eax, DWORD PTR [edx+2]
	mov	DWORD PTR [ecx+2], eax

; 1979 :             break;

	jmp	SHORT $L8272
$L8273:

; 1981 : 
; 1982 :          lpPrevApp = zGETPTR( lpPrevApp->hNextApp );

	mov	ecx, DWORD PTR _lpPrevApp$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevApp$[ebp], eax

; 1983 :       }

	jmp	SHORT $L8271
$L8272:

; 1992 : 
; 1993 :    // Clean up application.
; 1994 :    if ( AnchorBlock->TraceFlags.bTaskMsgs )

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+2527]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8275

; 1995 :       TraceLineS( "(APP) DeleteApp SUCCESSFUL for App: ", lpApp->szName );

	mov	edx, DWORD PTR _lpApp$[ebp]
	add	edx, 6
	push	edx
	push	OFFSET FLAT:??_C@_0CF@PPFE@?$CIAPP?$CJ?5DeleteApp?5SUCCESSFUL?5for?5A@ ; `string'
	call	_TraceLineS@8
$L8275:

; 1996 : 
; 1997 :    fnFreeDataspace( lpApp );

	mov	eax, DWORD PTR _lpApp$[ebp]
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 1998 :    return( 0 );

	xor	ax, ax
$L8128:

; 1999 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnDeleteApp ENDP
_TEXT	ENDS
PUBLIC	??_C@_08ILBJ@KZDBHQUA?$AA@			; `string'
PUBLIC	_SetDatabaseUser@12
PUBLIC	??_C@_0CF@OGEJ@SetDatabaseUser?3?5?$CFs?5for?5task?3?50x@ ; `string'
PUBLIC	??_C@_0L@EIGE@EntitySpec?$AA@			; `string'
PUBLIC	??_C@_0L@LOJF@EntityName?$AA@			; `string'
PUBLIC	??_C@_07BFAH@Options?$AA@			; `string'
EXTRN	_fnGetDBHandlerOper@12:NEAR
EXTRN	_DropView@4:NEAR
EXTRN	_CreateEntity@12:NEAR
EXTRN	_SfActivateSysEmptyOI@16:NEAR
EXTRN	_SetAttributeFromString@16:NEAR
;	COMDAT ??_C@_08ILBJ@KZDBHQUA?$AA@
; File C:\10C\A\oe\KZOEAPAA.C
_DATA	SEGMENT
??_C@_08ILBJ@KZDBHQUA?$AA@ DB 'KZDBHQUA', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CF@OGEJ@SetDatabaseUser?3?5?$CFs?5for?5task?3?50x@
_DATA	SEGMENT
??_C@_0CF@OGEJ@SetDatabaseUser?3?5?$CFs?5for?5task?3?50x@ DB 'SetDatabase'
	DB	'User: %s for task: 0x%08x', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@EIGE@EntitySpec?$AA@
_DATA	SEGMENT
??_C@_0L@EIGE@EntitySpec?$AA@ DB 'EntitySpec', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@LOJF@EntityName?$AA@
_DATA	SEGMENT
??_C@_0L@LOJF@EntityName?$AA@ DB 'EntityName', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_07BFAH@Options?$AA@
_DATA	SEGMENT
??_C@_07BFAH@Options?$AA@ DB 'Options', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcUser$ = 12
_cpcPassword$ = 16
_lpTaskDBHandler$ = -20
_lpCurrentTask$ = -28
_lpViewOD$ = -4
_pOper$ = -16
_lpQualObj$ = -12
_pvWork$ = -24
_nRC$ = -8
_SetDatabaseUser@12 PROC NEAR

; 2025 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 2026 :    LPTASKDBHANDLER lpTaskDBHandler;
; 2027 :    LPTASK          lpCurrentTask;
; 2028 :    LPVIEWOD        lpViewOD;
; 2029 :    zPDBHOPER       pOper;
; 2030 :    zVIEW           lpQualObj = 0;

	mov	DWORD PTR _lpQualObj$[ebp], 0

; 2031 :    zPVOID          pvWork;
; 2032 :    zSHORT          nRC;
; 2033 : 
; 2034 :    // If task not active or disabled, return zCALL_ERROR.
; 2035 :    if ( (lpCurrentTask = fnOperationCall( iSetDatabaseUser, lpView, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	29					; 0000001dH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8291

; 2037 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8283
$L8291:

; 2039 : 
; 2040 :    nRC = SfActivateSysEmptyOI( &lpQualObj, "KZDBHQUA", lpView, zMULTIPLE );

	push	256					; 00000100H
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_08ILBJ@KZDBHQUA?$AA@	; `string'
	lea	edx, DWORD PTR _lpQualObj$[ebp]
	push	edx
	call	_SfActivateSysEmptyOI@16
	mov	WORD PTR _nRC$[ebp], ax

; 2041 :    if ( nRC < 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jge	SHORT $L8293

; 2043 :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 2044 :       goto EndOfFunction;

	jmp	$EndOfFunction$8294
$L8293:

; 2046 : 
; 2047 :    if ( cpcUser == 0 || zstrlen( cpcUser ) > 32 ||
; 2048 :         cpcPassword == 0 || zstrlen( cpcPassword ) > 32 ||
; 2049 :         (lpTaskDBHandler = fnGetDBHandlerOper( lpCurrentTask, lpView, &pOper )) == 0 )

	cmp	DWORD PTR _cpcUser$[ebp], 0
	je	SHORT $L8296
	mov	ecx, DWORD PTR _cpcUser$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	cmp	eax, 32					; 00000020H
	ja	SHORT $L8296
	cmp	DWORD PTR _cpcPassword$[ebp], 0
	je	SHORT $L8296
	mov	edx, DWORD PTR _cpcPassword$[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	cmp	eax, 32					; 00000020H
	ja	SHORT $L8296
	lea	eax, DWORD PTR _pOper$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnGetDBHandlerOper@12
	mov	DWORD PTR _lpTaskDBHandler$[ebp], eax
	cmp	DWORD PTR _lpTaskDBHandler$[ebp], 0
	jne	SHORT $L8295
$L8296:

; 2051 :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 2052 :       goto EndOfFunction;

	jmp	$EndOfFunction$8294
$L8295:

; 2054 : 
; 2055 :    TraceLine( "SetDatabaseUser: %s for task: 0x%08x", cpcUser, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcUser$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CF@OGEJ@SetDatabaseUser?3?5?$CFs?5for?5task?3?50x@ ; `string'
	call	_TraceLine
	add	esp, 12					; 0000000cH

; 2056 : 
; 2057 :    CreateEntity( lpQualObj, "EntitySpec", zPOS_FIRST );

	push	1
	push	OFFSET FLAT:??_C@_0L@EIGE@EntitySpec?$AA@ ; `string'
	mov	edx, DWORD PTR _lpQualObj$[ebp]
	push	edx
	call	_CreateEntity@12

; 2058 : 
; 2059 :    // Store user in EntityName.
; 2060 :    SetAttributeFromString( lpQualObj, "EntitySpec", "EntityName", cpcUser );

	mov	eax, DWORD PTR _cpcUser$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0L@LOJF@EntityName?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0L@EIGE@EntitySpec?$AA@ ; `string'
	mov	ecx, DWORD PTR _lpQualObj$[ebp]
	push	ecx
	call	_SetAttributeFromString@16

; 2061 : 
; 2062 :    // Store password in Options.
; 2063 :    SetAttributeFromString( lpQualObj, "EntitySpec", "Options", cpcPassword );

	mov	edx, DWORD PTR _cpcPassword$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_07BFAH@Options?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0L@EIGE@EntitySpec?$AA@ ; `string'
	mov	eax, DWORD PTR _lpQualObj$[ebp]
	push	eax
	call	_SetAttributeFromString@16

; 2064 : 
; 2065 :    lpViewOD = zGETPTR( lpView->hViewOD );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 2066 :    nRC = (*pOper)( (zLONG) lpView->hTask,
; 2067 :                    DBH_Database | DBH_SetUser, 0, lpViewOD,
; 2068 :                    0, lpView, lpQualObj, &pvWork );

	lea	eax, DWORD PTR _pvWork$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpQualObj$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpViewOD$[ebp]
	push	eax
	push	0
	push	513					; 00000201H
	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _pOper$[ebp]
	mov	WORD PTR _nRC$[ebp], ax

; 2069 : 
; 2070 :    // nRC = 0 ==> success
; 2071 :    // nRC = 1 ==> unsuccessful, can't close DB because of transaction running
; 2072 :    if ( nRC < 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jge	SHORT $EndOfFunction$8294

; 2074 :       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$EndOfFunction$8294:

; 2077 : 
; 2078 : EndOfFunction:
; 2079 :    if ( lpQualObj )

	cmp	DWORD PTR _lpQualObj$[ebp], 0
	je	SHORT $L8305

; 2080 :       DropView( lpQualObj );

	mov	ecx, DWORD PTR _lpQualObj$[ebp]
	push	ecx
	call	_DropView@4
$L8305:

; 2081 : 
; 2082 :    fnOperationReturn( iSetDatabaseUser, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	29					; 0000001dH
	call	_fnOperationReturn
	add	esp, 8

; 2083 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8283:

; 2084 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetDatabaseUser@12 ENDP
_TEXT	ENDS
END
