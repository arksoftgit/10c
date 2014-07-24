	TITLE	C:\10C\w\oe\METERSEC.c
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
;	COMDAT ??_C@_0BB@PIKC@DKC_MSECT_EVT_?$CFs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@KJDG@DKC_MSECT_MMF_?$CFs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_CreateMeteredSection
PUBLIC	_CloseMeteredSection
PUBLIC	_InitMeteredSection
EXTRN	__imp__malloc:NEAR
EXTRN	__imp__SetLastError@4:NEAR
EXTRN	_strlen:NEAR
_TEXT	SEGMENT
_lInitialCount$ = 8
_lMaximumCount$ = 12
_lpName$ = 16
_lpMetSect$ = -4
_CreateMeteredSection PROC NEAR

; 22   : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 23   :     LPMETERED_SECTION lpMetSect;
; 24   : 
; 25   :     // Verify the parameters
; 26   :     if ((lMaximumCount < 1)             ||
; 27   :         (lInitialCount > lMaximumCount) ||
; 28   :         (lInitialCount < 0)             ||
; 29   :         ((lpName) && (_tcslen(lpName) > MAX_METSECT_NAMELEN)))

	cmp	DWORD PTR _lMaximumCount$[ebp], 1
	jl	SHORT $L53053
	mov	eax, DWORD PTR _lInitialCount$[ebp]
	cmp	eax, DWORD PTR _lMaximumCount$[ebp]
	jg	SHORT $L53053
	cmp	DWORD PTR _lInitialCount$[ebp], 0
	jl	SHORT $L53053
	cmp	DWORD PTR _lpName$[ebp], 0
	je	SHORT $L53052
	mov	ecx, DWORD PTR _lpName$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	cmp	eax, 128				; 00000080H
	jbe	SHORT $L53052
$L53053:

; 31   :         SetLastError(ERROR_INVALID_PARAMETER);

	push	87					; 00000057H
	call	DWORD PTR __imp__SetLastError@4

; 32   :         return NULL;

	xor	eax, eax
	jmp	SHORT $L53050
$L53052:

; 34   : 
; 35   :     // Allocate memory for the metered section
; 36   :     lpMetSect = (LPMETERED_SECTION)malloc(sizeof(METERED_SECTION));

	push	12					; 0000000cH
	call	DWORD PTR __imp__malloc
	add	esp, 4
	mov	DWORD PTR _lpMetSect$[ebp], eax

; 37   : 
; 38   :     // If the memory for the metered section was allocated okay, initialize it
; 39   :     if (lpMetSect)

	cmp	DWORD PTR _lpMetSect$[ebp], 0
	je	SHORT $L53058

; 41   :         if (!InitMeteredSection(lpMetSect, lInitialCount, lMaximumCount, lpName, FALSE))

	push	0
	mov	edx, DWORD PTR _lpName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lMaximumCount$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lInitialCount$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpMetSect$[ebp]
	push	edx
	call	_InitMeteredSection
	add	esp, 20					; 00000014H
	test	eax, eax
	jne	SHORT $L53058

; 43   :             CloseMeteredSection(lpMetSect);

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	push	eax
	call	_CloseMeteredSection
	add	esp, 4

; 44   :             lpMetSect = NULL;

	mov	DWORD PTR _lpMetSect$[ebp], 0
$L53058:

; 47   :     return lpMetSect;

	mov	eax, DWORD PTR _lpMetSect$[ebp]
$L53050:

; 48   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_CreateMeteredSection ENDP
_TEXT	ENDS
PUBLIC	_OpenMeteredSection
_TEXT	SEGMENT
_lpName$ = 8
_lpMetSect$ = -4
_OpenMeteredSection PROC NEAR

; 55   : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 56   :     LPMETERED_SECTION lpMetSect = NULL;

	mov	DWORD PTR _lpMetSect$[ebp], 0

; 57   : 
; 58   :     if (lpName)

	cmp	DWORD PTR _lpName$[ebp], 0
	je	SHORT $L53069

; 60   :         lpMetSect = (LPMETERED_SECTION)malloc(sizeof(METERED_SECTION));

	push	12					; 0000000cH
	call	DWORD PTR __imp__malloc
	add	esp, 4
	mov	DWORD PTR _lpMetSect$[ebp], eax

; 61   : 
; 62   :         // If the memory for the metered section was allocated okay
; 63   :         if (lpMetSect)

	cmp	DWORD PTR _lpMetSect$[ebp], 0
	je	SHORT $L53069

; 65   :             if (!InitMeteredSection(lpMetSect, 0, 0, lpName, TRUE))

	push	1
	mov	eax, DWORD PTR _lpName$[ebp]
	push	eax
	push	0
	push	0
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	push	ecx
	call	_InitMeteredSection
	add	esp, 20					; 00000014H
	test	eax, eax
	jne	SHORT $L53069

; 67   :                 // Metered section failed to initialize
; 68   :                 CloseMeteredSection(lpMetSect);

	mov	edx, DWORD PTR _lpMetSect$[ebp]
	push	edx
	call	_CloseMeteredSection
	add	esp, 4

; 69   :                 lpMetSect = NULL;

	mov	DWORD PTR _lpMetSect$[ebp], 0
$L53069:

; 73   :     return lpMetSect;

	mov	eax, DWORD PTR _lpMetSect$[ebp]

; 74   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_OpenMeteredSection ENDP
_TEXT	ENDS
PUBLIC	_EnterMeteredSection
PUBLIC	_GetMeteredSectionLock
PUBLIC	_ReleaseMeteredSectionLock
EXTRN	__imp__ResetEvent@4:NEAR
EXTRN	__imp__WaitForSingleObject@8:NEAR
_TEXT	SEGMENT
_lpMetSect$ = 8
_dwMilliseconds$ = 12
_EnterMeteredSection PROC NEAR

; 81   : {

	push	ebp
	mov	ebp, esp
$L53077:

; 82   :     while (TRUE)

	mov	eax, 1
	test	eax, eax
	je	$L53078

; 84   :         GetMeteredSectionLock(lpMetSect);

	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	push	ecx
	call	_GetMeteredSectionLock
	add	esp, 4

; 85   : 
; 86   :         // We have access to the metered section, everything we do now will be atomic
; 87   :         if (lpMetSect->lpSharedInfo->lAvailableCount >= 1)

	mov	edx, DWORD PTR _lpMetSect$[ebp]
	mov	eax, DWORD PTR [edx+8]
	cmp	DWORD PTR [eax+12], 1
	jl	SHORT $L53079

; 89   :             lpMetSect->lpSharedInfo->lAvailableCount--;

	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR [edx+12]
	sub	eax, 1
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR [edx+12], eax

; 90   :             ReleaseMeteredSectionLock(lpMetSect);

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	push	eax
	call	_ReleaseMeteredSectionLock
	add	esp, 4

; 91   :             return WAIT_OBJECT_0;

	xor	eax, eax
	jmp	SHORT $L53078
$L53079:

; 93   : 
; 94   :         // Couldn't get in.  Wait on the event object
; 95   :         lpMetSect->lpSharedInfo->lThreadsWaiting++;

	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR [edx+8]
	add	eax, 1
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR [edx+8], eax

; 96   :         ResetEvent(lpMetSect->hEvent);

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	DWORD PTR __imp__ResetEvent@4

; 97   :         ReleaseMeteredSectionLock(lpMetSect);

	mov	edx, DWORD PTR _lpMetSect$[ebp]
	push	edx
	call	_ReleaseMeteredSectionLock
	add	esp, 4

; 98   :         if (WaitForSingleObject(lpMetSect->hEvent, dwMilliseconds) == WAIT_TIMEOUT)

	mov	eax, DWORD PTR _dwMilliseconds$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR __imp__WaitForSingleObject@8
	cmp	eax, 258				; 00000102H
	jne	SHORT $L53082

; 100  :             return WAIT_TIMEOUT;

	mov	eax, 258				; 00000102H
	jmp	SHORT $L53078
$L53082:

; 102  :     }

	jmp	$L53077
$L53078:

; 103  : }

	pop	ebp
	ret	0
_EnterMeteredSection ENDP
_TEXT	ENDS
PUBLIC	_LeaveMeteredSection
EXTRN	__imp__SetEvent@4:NEAR
_TEXT	SEGMENT
_lpMetSect$ = 8
_lReleaseCount$ = 12
_lpPreviousCount$ = 16
_iCount$ = -4
_LeaveMeteredSection PROC NEAR

; 109  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 110  :     int iCount;
; 111  :     GetMeteredSectionLock(lpMetSect);

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	push	eax
	call	_GetMeteredSectionLock
	add	esp, 4

; 112  : 
; 113  :     // Save the old value if they want it
; 114  :     if (lpPreviousCount)

	cmp	DWORD PTR _lpPreviousCount$[ebp], 0
	je	SHORT $L53092

; 116  :         *lpPreviousCount = lpMetSect->lpSharedInfo->lAvailableCount;

	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR _lpPreviousCount$[ebp]
	mov	ecx, DWORD PTR [edx+12]
	mov	DWORD PTR [eax], ecx
$L53092:

; 118  : 
; 119  :     // We have access to the metered section, everything we do now will be atomic
; 120  :     if ((lReleaseCount < 0) ||
; 121  :         (lpMetSect->lpSharedInfo->lAvailableCount+lReleaseCount >
; 122  :          lpMetSect->lpSharedInfo->lMaximumCount))

	cmp	DWORD PTR _lReleaseCount$[ebp], 0
	jl	SHORT $L53094
	mov	edx, DWORD PTR _lpMetSect$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax+12]
	add	ecx, DWORD PTR _lReleaseCount$[ebp]
	mov	edx, DWORD PTR _lpMetSect$[ebp]
	mov	eax, DWORD PTR [edx+8]
	cmp	ecx, DWORD PTR [eax+16]
	jle	SHORT $L53093
$L53094:

; 124  :         ReleaseMeteredSectionLock(lpMetSect);

	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	push	ecx
	call	_ReleaseMeteredSectionLock
	add	esp, 4

; 125  :         SetLastError(ERROR_INVALID_PARAMETER);

	push	87					; 00000057H
	call	DWORD PTR __imp__SetLastError@4

; 126  :         return( FALSE );

	xor	eax, eax
	jmp	$L53090
$L53093:

; 128  :     lpMetSect->lpSharedInfo->lAvailableCount += lReleaseCount;

	mov	edx, DWORD PTR _lpMetSect$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax+12]
	add	ecx, DWORD PTR _lReleaseCount$[ebp]
	mov	edx, DWORD PTR _lpMetSect$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR [eax+12], ecx

; 129  : 
; 130  :     // Set the event the appropriate number of times
; 131  :     lReleaseCount = min(lReleaseCount,lpMetSect->lpSharedInfo->lThreadsWaiting);

	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR _lReleaseCount$[ebp]
	cmp	eax, DWORD PTR [edx+8]
	jge	SHORT $L53203
	mov	ecx, DWORD PTR _lReleaseCount$[ebp]
	mov	DWORD PTR -8+[ebp], ecx
	jmp	SHORT $L53204
$L53203:
	mov	edx, DWORD PTR _lpMetSect$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR -8+[ebp], ecx
$L53204:
	mov	edx, DWORD PTR -8+[ebp]
	mov	DWORD PTR _lReleaseCount$[ebp], edx

; 132  :     if (lpMetSect->lpSharedInfo->lThreadsWaiting)

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	cmp	DWORD PTR [ecx+8], 0
	je	SHORT $L53098

; 134  :         for (iCount=0; iCount < lReleaseCount ; iCount++)

	mov	DWORD PTR _iCount$[ebp], 0
	jmp	SHORT $L53096
$L53097:
	mov	edx, DWORD PTR _iCount$[ebp]
	add	edx, 1
	mov	DWORD PTR _iCount$[ebp], edx
$L53096:
	mov	eax, DWORD PTR _iCount$[ebp]
	cmp	eax, DWORD PTR _lReleaseCount$[ebp]
	jge	SHORT $L53098

; 136  :             lpMetSect->lpSharedInfo->lThreadsWaiting--;

	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR [edx+8]
	sub	eax, 1
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR [edx+8], eax

; 137  :             SetEvent(lpMetSect->hEvent);

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	DWORD PTR __imp__SetEvent@4

; 138  :         }

	jmp	SHORT $L53097
$L53098:

; 140  :     ReleaseMeteredSectionLock(lpMetSect);

	mov	edx, DWORD PTR _lpMetSect$[ebp]
	push	edx
	call	_ReleaseMeteredSectionLock
	add	esp, 4

; 141  :     return( TRUE );

	mov	eax, 1
$L53090:

; 142  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_LeaveMeteredSection ENDP
_TEXT	ENDS
EXTRN	__imp__UnmapViewOfFile@4:NEAR
EXTRN	__imp__free:NEAR
EXTRN	__imp__CloseHandle@4:NEAR
_TEXT	SEGMENT
_lpMetSect$ = 8
_CloseMeteredSection PROC NEAR

; 148  : {

	push	ebp
	mov	ebp, esp

; 149  :     if (lpMetSect)

	cmp	DWORD PTR _lpMetSect$[ebp], 0
	je	SHORT $L53102

; 151  :         // Clean up
; 152  :         if (lpMetSect->lpSharedInfo) UnmapViewOfFile(lpMetSect->lpSharedInfo);

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	cmp	DWORD PTR [eax+8], 0
	je	SHORT $L53103
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	call	DWORD PTR __imp__UnmapViewOfFile@4
$L53103:

; 153  :         if (lpMetSect->hFileMap) CloseHandle(lpMetSect->hFileMap);

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	cmp	DWORD PTR [eax+4], 0
	je	SHORT $L53104
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	call	DWORD PTR __imp__CloseHandle@4
$L53104:

; 154  :         if (lpMetSect->hEvent) CloseHandle(lpMetSect->hEvent);

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	cmp	DWORD PTR [eax], 0
	je	SHORT $L53105
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR __imp__CloseHandle@4
$L53105:

; 155  :         free(lpMetSect);

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	push	eax
	call	DWORD PTR __imp__free
	add	esp, 4
$L53102:

; 157  : }

	pop	ebp
	ret	0
_CloseMeteredSection ENDP
_TEXT	ENDS
PUBLIC	_CreateMetSectEvent
PUBLIC	_CreateMetSectFileView
_TEXT	SEGMENT
_lpMetSect$ = 8
_lInitialCount$ = 12
_lMaximumCount$ = 16
_lpName$ = 20
_bOpenOnly$ = 24
_InitMeteredSection PROC NEAR

; 164  : {

	push	ebp
	mov	ebp, esp

; 165  :     // Try to create the event object
; 166  :     if (CreateMetSectEvent(lpMetSect, lpName, bOpenOnly))

	mov	eax, DWORD PTR _bOpenOnly$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpMetSect$[ebp]
	push	edx
	call	_CreateMetSectEvent
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $L53118

; 168  :         // Try to create the memory mapped file
; 169  :         if (CreateMetSectFileView(lpMetSect, lInitialCount, lMaximumCount, lpName, bOpenOnly))

	mov	eax, DWORD PTR _bOpenOnly$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lMaximumCount$[ebp]
	push	edx
	mov	eax, DWORD PTR _lInitialCount$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	push	ecx
	call	_CreateMetSectFileView
	add	esp, 20					; 00000014H
	test	eax, eax
	je	SHORT $L53118

; 171  :             return( TRUE );

	mov	eax, 1
	jmp	SHORT $L53116
$L53118:

; 174  : 
; 175  :     // Error occurred, return FALSE so the caller knows to clean up
; 176  :     return( FALSE );

	xor	eax, eax
$L53116:

; 177  : }

	pop	ebp
	ret	0
_InitMeteredSection ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BB@PIKC@DKC_MSECT_EVT_?$CFs?$AA@		; `string'
EXTRN	__imp__wsprintfA:NEAR
EXTRN	__imp__CreateEventA@16:NEAR
EXTRN	__imp__OpenEventA@12:NEAR
;	COMDAT ??_C@_0BB@PIKC@DKC_MSECT_EVT_?$CFs?$AA@
; File C:\10C\w\oe\METERSEC.c
_DATA	SEGMENT
??_C@_0BB@PIKC@DKC_MSECT_EVT_?$CFs?$AA@ DB 'DKC_MSECT_EVT_%s', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpMetSect$ = 8
_lpName$ = 12
_bOpenOnly$ = 16
_sz$ = -260
_CreateMetSectEvent PROC NEAR

; 183  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 260				; 00000104H

; 184  :     TCHAR sz[MAX_PATH];
; 185  :     if (lpName)

	cmp	DWORD PTR _lpName$[ebp], 0
	je	SHORT $L53127

; 187  :         wsprintf(sz, _TEXT("DKC_MSECT_EVT_%s"), lpName);

	mov	eax, DWORD PTR _lpName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BB@PIKC@DKC_MSECT_EVT_?$CFs?$AA@ ; `string'
	lea	ecx, DWORD PTR _sz$[ebp]
	push	ecx
	call	DWORD PTR __imp__wsprintfA
	add	esp, 12					; 0000000cH

; 188  : 
; 189  : #ifndef _WIN32_WCE
; 190  :         if (bOpenOnly)

	cmp	DWORD PTR _bOpenOnly$[ebp], 0
	je	SHORT $L53129

; 192  :             lpMetSect->hEvent = OpenEvent(0, FALSE, sz);

	lea	edx, DWORD PTR _sz$[ebp]
	push	edx
	push	0
	push	0
	call	DWORD PTR __imp__OpenEventA@12
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	DWORD PTR [ecx], eax

; 194  :         else

	jmp	SHORT $L53130
$L53129:

; 196  : #endif
; 197  :             // Create an auto-reset named event object
; 198  :             lpMetSect->hEvent = CreateEvent(NULL, FALSE, FALSE, sz);

	lea	edx, DWORD PTR _sz$[ebp]
	push	edx
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__CreateEventA@16
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	DWORD PTR [ecx], eax
$L53130:

; 203  :     else

	jmp	SHORT $L53132
$L53127:

; 205  :         // Create an auto-reset unnamed event object
; 206  :         lpMetSect->hEvent = CreateEvent(NULL, FALSE, FALSE, NULL);

	push	0
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__CreateEventA@16
	mov	edx, DWORD PTR _lpMetSect$[ebp]
	mov	DWORD PTR [edx], eax
$L53132:

; 208  :     return(lpMetSect->hEvent ? TRUE : FALSE);

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	xor	ecx, ecx
	cmp	DWORD PTR [eax], 0
	setne	cl
	mov	eax, ecx

; 209  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_CreateMetSectEvent ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BB@KJDG@DKC_MSECT_MMF_?$CFs?$AA@		; `string'
EXTRN	__imp__GetLastError@0:NEAR
EXTRN	__imp__Sleep@4:NEAR
EXTRN	__imp__CreateFileMappingA@24:NEAR
EXTRN	__imp__OpenFileMappingA@12:NEAR
EXTRN	__imp__InterlockedExchange@8:NEAR
EXTRN	__imp__MapViewOfFile@20:NEAR
;	COMDAT ??_C@_0BB@KJDG@DKC_MSECT_MMF_?$CFs?$AA@
; File C:\10C\w\oe\METERSEC.c
_DATA	SEGMENT
??_C@_0BB@KJDG@DKC_MSECT_MMF_?$CFs?$AA@ DB 'DKC_MSECT_MMF_%s', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpMetSect$ = 8
_lInitialCount$ = 12
_lMaximumCount$ = 16
_lpName$ = 20
_bOpenOnly$ = 24
_sz$ = -264
_dwLastError$ = -4
_CreateMetSectFileView PROC NEAR

; 216  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 264				; 00000108H

; 217  :     TCHAR sz[MAX_PATH];
; 218  :     DWORD dwLastError;
; 219  : 
; 220  :     if (lpName)

	cmp	DWORD PTR _lpName$[ebp], 0
	je	SHORT $L53148

; 222  :         wsprintf(sz, _TEXT("DKC_MSECT_MMF_%s"), lpName);

	mov	eax, DWORD PTR _lpName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BB@KJDG@DKC_MSECT_MMF_?$CFs?$AA@ ; `string'
	lea	ecx, DWORD PTR _sz$[ebp]
	push	ecx
	call	DWORD PTR __imp__wsprintfA
	add	esp, 12					; 0000000cH

; 223  : 
; 224  : #ifndef _WIN32_WCE
; 225  :         if (bOpenOnly)

	cmp	DWORD PTR _bOpenOnly$[ebp], 0
	je	SHORT $L53150

; 227  :             lpMetSect->hFileMap = OpenFileMapping(0, FALSE, sz);

	lea	edx, DWORD PTR _sz$[ebp]
	push	edx
	push	0
	push	0
	call	DWORD PTR __imp__OpenFileMappingA@12
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	DWORD PTR [ecx+4], eax

; 229  :         else

	jmp	SHORT $L53151
$L53150:

; 231  : #endif
; 232  :             // Create a named file mapping
; 233  :             lpMetSect->hFileMap = CreateFileMapping(INVALID_HANDLE_VALUE, NULL, PAGE_READWRITE, 0, sizeof(METSECT_SHARED_INFO), sz);

	lea	edx, DWORD PTR _sz$[ebp]
	push	edx
	push	20					; 00000014H
	push	0
	push	4
	push	0
	push	-1
	call	DWORD PTR __imp__CreateFileMappingA@24
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	DWORD PTR [ecx+4], eax
$L53151:

; 238  :     else

	jmp	SHORT $L53155
$L53148:

; 240  :         // Create an unnamed file mapping
; 241  :         lpMetSect->hFileMap = CreateFileMapping(INVALID_HANDLE_VALUE, NULL, PAGE_READWRITE, 0, sizeof(METSECT_SHARED_INFO), NULL);

	push	0
	push	20					; 00000014H
	push	0
	push	4
	push	0
	push	-1
	call	DWORD PTR __imp__CreateFileMappingA@24
	mov	edx, DWORD PTR _lpMetSect$[ebp]
	mov	DWORD PTR [edx+4], eax
$L53155:

; 243  : 
; 244  :     // Map a view of the file
; 245  :     if (lpMetSect->hFileMap)

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	cmp	DWORD PTR [eax+4], 0
	je	$L53162

; 247  :         dwLastError = GetLastError( );

	call	DWORD PTR __imp__GetLastError@0
	mov	DWORD PTR _dwLastError$[ebp], eax

; 248  :         lpMetSect->lpSharedInfo = (LPMETSECT_SHARED_INFO) MapViewOfFile(lpMetSect->hFileMap, FILE_MAP_WRITE, 0, 0, 0);

	push	0
	push	0
	push	0
	push	2
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	call	DWORD PTR __imp__MapViewOfFile@20
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	DWORD PTR [ecx+8], eax

; 249  :         if (lpMetSect->lpSharedInfo)

	mov	edx, DWORD PTR _lpMetSect$[ebp]
	cmp	DWORD PTR [edx+8], 0
	je	SHORT $L53162

; 251  :             if (dwLastError != ERROR_ALREADY_EXISTS)

	cmp	DWORD PTR _dwLastError$[ebp], 183	; 000000b7H
	je	SHORT $L53163

; 253  :                 lpMetSect->lpSharedInfo->lSpinLock = 0;

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR [ecx+4], 0

; 254  :                 lpMetSect->lpSharedInfo->lThreadsWaiting = 0;

	mov	edx, DWORD PTR _lpMetSect$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR [eax+8], 0

; 255  :                 lpMetSect->lpSharedInfo->lAvailableCount = lInitialCount;

	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR _lInitialCount$[ebp]
	mov	DWORD PTR [edx+12], eax

; 256  :                 lpMetSect->lpSharedInfo->lMaximumCount = lMaximumCount;

	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR _lMaximumCount$[ebp]
	mov	DWORD PTR [edx+16], eax

; 257  :                 InterlockedExchange(&(lpMetSect->lpSharedInfo->fInitialized), TRUE);

	push	1
	mov	ecx, DWORD PTR _lpMetSect$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	call	DWORD PTR __imp__InterlockedExchange@8

; 259  :             else

	jmp	SHORT $L53167
$L53163:

; 261  :               while (!lpMetSect->lpSharedInfo->fInitialized) Sleep(0);

	mov	eax, DWORD PTR _lpMetSect$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	cmp	DWORD PTR [ecx], 0
	jne	SHORT $L53167
	push	0
	call	DWORD PTR __imp__Sleep@4
	jmp	SHORT $L53163
$L53167:

; 263  :             return( TRUE );

	mov	eax, 1
	jmp	SHORT $L53145
$L53162:

; 266  :     return( FALSE );

	xor	eax, eax
$L53145:

; 267  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_CreateMetSectFileView ENDP
_lpMetSect$ = 8
_GetMeteredSectionLock PROC NEAR

; 273  : {

	push	ebp
	mov	ebp, esp
$L53172:

; 274  :     // Spin and get access to the metered section lock
; 275  :     while (InterlockedExchange(&(lpMetSect->lpSharedInfo->lSpinLock), 1) != 0)

	push	1
	mov	eax, DWORD PTR _lpMetSect$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	add	ecx, 4
	push	ecx
	call	DWORD PTR __imp__InterlockedExchange@8
	test	eax, eax
	je	SHORT $L53173

; 276  :         Sleep(0);

	push	0
	call	DWORD PTR __imp__Sleep@4
	jmp	SHORT $L53172
$L53173:

; 277  : }

	pop	ebp
	ret	0
_GetMeteredSectionLock ENDP
_lpMetSect$ = 8
_ReleaseMeteredSectionLock PROC NEAR

; 283  : {

	push	ebp
	mov	ebp, esp

; 284  :     InterlockedExchange(&(lpMetSect->lpSharedInfo->lSpinLock), 0);

	push	0
	mov	eax, DWORD PTR _lpMetSect$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	add	ecx, 4
	push	ecx
	call	DWORD PTR __imp__InterlockedExchange@8

; 285  : }

	pop	ebp
	ret	0
_ReleaseMeteredSectionLock ENDP
_TEXT	ENDS
END
