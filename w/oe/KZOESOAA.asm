	TITLE	C:\10C\A\oe\KZOESOAA.C
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
;	COMDAT ??_C@_08JNLF@KZOEE106?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0FI@CILH@Browse?5view?5named?5?8KZOEE106?8?5to?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@FACN@?6Entity?3?5?7?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DB@KGNF@number?5of?5entities?5less?5than?5min@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DF@FJKI@Marked?5as?5having?5a?5required?5chil@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@PAEO@?6Relationship?3?5?7?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06OEBA@?5?$DM?9?9?$DO?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@JAL@maximum?5cardinality?5exceeded?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@OGJL@Source?5Entity?5not?5includeble?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@PAO@Entity?5inclusion?5not?5allowed?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DK@NDAP@The?5following?5LODs?5are?5out?5of?5sy@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07JCPH@ERROR?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@BJBK@Out?9of?9sync?5error?4?5Target?5LOD?5?$DN?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@PONF@Out?9of?9sync?5error?4?5Source?5LOD?5?$DN?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DH@HEFK@LODs?5are?5potentially?5out?5of?5sync@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CL@KDAM@Rules?5violation?3?5physical?5mappin@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05OGKG@?$CFs?4?$CFs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@PBHO@?5?5?5Target?5entity?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@MDEO@?5?5?5Source?5entity?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0HA@PGKE@Target?5entity?5has?5physical?5mappi@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07JCAB@BombZDr?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07FGLN@?$FLDebug?$FN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0KP@CPHB@IncludeSubobjectFromSubobject?5In@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0KN@DOGI@IncludeSubobjectFromSubobject?5In@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0IF@BGLH@IncludeSubobjectFromSubobject?5In@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@DLHG@?$CFs?4?$CFs?4?$CFs?5Offset?5?$DN?5?$CFd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@GADJ@?$CIso?$CJ?5IncludeSubobject?5Src?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@DGIM@?$CIso?$CJ?5No?5matching?5Src?5Attrib?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@KKFN@?$CIso?$CJ?5IncludeSubobject?5Tgt?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0IK@MJCC@Source?5entity?5was?5built?5with?5TE?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@JLPK@Source?5Entity?5not?5excludable?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@IAFO@Entity?5creation?5not?5allowed?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@EDF@?5and?5should?5be?5re?9built?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CK@EOHI@ERROR?3?5The?5following?5LODs?5are?5ou@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@DLD@Zeidon?5RLK?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@BPEJ@?9?9?9?5Error?5?9?9?9?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DG@LLMA@The?5relationship?5already?5exists?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@DHJN@Object?5Instance?5ID?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@KINM@Parent?5Name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@OGNG@?5?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@JAIN@?5?5?5?5?5?5?5Key?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@JJJJ@Child?5Name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@OMPL@?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@JKKA@?5?5?5?5?5?5Key?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DB@JDAG@Source?5view?5entity?5?$DN?5?$CFs?0?5Target?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@PINC@Call?5DG?5?$CI?$CD102?$CJ?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@NIPO@QuinSoft?5Info?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
_BSS	SEGMENT
_?k@?M@??IncludeSubobjectFromSubobject@@9@9 DW 01H DUP (?)
_BSS	ENDS
PUBLIC	_fnVersionedForUpdate
EXTRN	_g_pfnGetPtr:DWORD
_TEXT	SEGMENT
_lpEI$ = 8
_lpRecord$ = 12
_nDirection$ = 16
_lpEI1$ = -4
_fnVersionedForUpdate PROC NEAR

; 183  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 184  :    LPENTITYINSTANCE  lpEI1;
; 185  : 
; 186  :    if ( lpRecord != zGETPTR( lpEI->hPersistRecord ) )

	mov	eax, DWORD PTR _lpEI$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	DWORD PTR _lpRecord$[ebp], eax
	je	SHORT $L7556

; 187  :       return( 1 );

	mov	ax, 1
	jmp	$L7553
$L7556:

; 188  : 
; 189  :    if ( nDirection )

	movsx	edx, WORD PTR _nDirection$[ebp]
	test	edx, edx
	je	$L7557

; 191  :       if ( lpEI->u.nInd.bPrevVersion && lpEI->hNextVsn )

	mov	eax, DWORD PTR _lpEI$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 8
	and	ecx, 1
	test	ecx, ecx
	je	$L7564
	mov	edx, DWORD PTR _lpEI$[ebp]
	cmp	DWORD PTR [edx+34], 0
	je	$L7564

; 193  :          if ( fnVersionedForUpdate( zGETPTR( lpEI->hNextVsn ),
; 194  :                                     lpRecord, nDirection ))

	mov	ax, WORD PTR _nDirection$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpRecord$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpEI$[ebp]
	mov	eax, DWORD PTR [edx+34]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnVersionedForUpdate
	add	esp, 12					; 0000000cH
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L7560

; 196  :             return( 1 );

	mov	ax, 1
	jmp	$L7553
$L7560:

; 198  : 
; 199  :          lpEI1 = zGETPTR( lpEI->hNextLinked );

	mov	edx, DWORD PTR _lpEI$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI1$[ebp], eax
$L7563:

; 200  :          while ( lpEI1 && lpEI1 != lpEI )

	cmp	DWORD PTR _lpEI1$[ebp], 0
	je	SHORT $L7564
	mov	ecx, DWORD PTR _lpEI1$[ebp]
	cmp	ecx, DWORD PTR _lpEI$[ebp]
	je	SHORT $L7564

; 202  :             if ( lpEI1->hNextVsn &&
; 203  :                  fnVersionedForUpdate( zGETPTR( lpEI1->hNextVsn ),
; 204  :                                        lpRecord, nDirection ) )

	mov	edx, DWORD PTR _lpEI1$[ebp]
	cmp	DWORD PTR [edx+34], 0
	je	SHORT $L7566
	mov	ax, WORD PTR _nDirection$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpRecord$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpEI1$[ebp]
	mov	eax, DWORD PTR [edx+34]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnVersionedForUpdate
	add	esp, 12					; 0000000cH
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L7566

; 206  :                return( 1 );

	mov	ax, 1
	jmp	$L7553
$L7566:

; 208  : 
; 209  :             lpEI1 = zGETPTR( lpEI1->hNextLinked );

	mov	edx, DWORD PTR _lpEI1$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI1$[ebp], eax

; 210  :          }

	jmp	SHORT $L7563
$L7564:

; 212  : 
; 213  :       return( 0 );

	xor	ax, ax
	jmp	$L7553
$L7557:

; 215  : 
; 216  :    if ( lpEI->u.nInd.bPrevVersion && lpEI->hPrevVsn )

	mov	ecx, DWORD PTR _lpEI$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 8
	and	edx, 1
	test	edx, edx
	je	$L7574
	mov	eax, DWORD PTR _lpEI$[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	$L7574

; 218  :       if ( fnVersionedForUpdate( zGETPTR( lpEI->hPrevVsn ),
; 219  :                                  lpRecord, nDirection ) )

	mov	cx, WORD PTR _nDirection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpRecord$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpEI$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnVersionedForUpdate
	add	esp, 12					; 0000000cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L7570

; 221  :          return( 1 );

	mov	ax, 1
	jmp	SHORT $L7553
$L7570:

; 223  : 
; 224  :       lpEI1 = zGETPTR( lpEI->hNextLinked );

	mov	eax, DWORD PTR _lpEI$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI1$[ebp], eax
$L7573:

; 225  :       while ( lpEI1 && lpEI1 != lpEI )

	cmp	DWORD PTR _lpEI1$[ebp], 0
	je	SHORT $L7574
	mov	edx, DWORD PTR _lpEI1$[ebp]
	cmp	edx, DWORD PTR _lpEI$[ebp]
	je	SHORT $L7574

; 227  :          if ( lpEI1->hPrevVsn &&
; 228  :               fnVersionedForUpdate( zGETPTR( lpEI1->hPrevVsn ),
; 229  :                                     lpRecord, nDirection ) )

	mov	eax, DWORD PTR _lpEI1$[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L7576
	mov	cx, WORD PTR _nDirection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpRecord$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpEI1$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnVersionedForUpdate
	add	esp, 12					; 0000000cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L7576

; 231  :             return( 1 );

	mov	ax, 1
	jmp	SHORT $L7553
$L7576:

; 233  : 
; 234  :          lpEI1 = zGETPTR( lpEI1->hNextLinked );

	mov	eax, DWORD PTR _lpEI1$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI1$[ebp], eax

; 235  :       }

	jmp	SHORT $L7573
$L7574:

; 237  : 
; 238  :    return( 0 );

	xor	ax, ax
$L7553:

; 239  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnVersionedForUpdate ENDP
_TEXT	ENDS
PUBLIC	_CreateTemporalSubobjectVersion@8
EXTRN	_fnOperationReturn:NEAR
EXTRN	_fnCopyAttributeRecord:NEAR
EXTRN	_fnDeleteAttributeRecord:NEAR
EXTRN	_fnAddEntityToDebugChange@4:NEAR
EXTRN	_memcpy:NEAR
EXTRN	_fnResetCursorForViewChildren:NEAR
EXTRN	_fnAllocDataspace:NEAR
EXTRN	_fnFreeDataspace:NEAR
EXTRN	_fnValidateInstanceParameters:NEAR
EXTRN	_g_pfnGetHndl:DWORD
EXTRN	_fnIssueCoreError:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -84
_lpAllocTask$ = -8
_lpInstAllocTask$ = -40
_lpViewOI$ = -68
_lpViewOD$ = -20
_lpViewCsr$ = -4
_lpWrkViewCsr$ = -48
_lpViewEntity$ = -36
_lpViewEntityCsr$ = -80
_lpWrkViewEntityCsr$ = -76
_lpStartOldInstance$ = -32
_lpOldInstance$ = -56
_lpStartNewInstance$ = -52
_hStartNewInstance$ = -44
_lpLastOldInstance$ = -12
_lpLastNewInstance$ = -60
_lpNewInstance$ = -28
_hInstance$ = -24
_lpWrkInstance$ = -16
_lpDupInstance$ = -72
_nStartLevel$ = -64
_lpPrevVsn$7615 = -88
_lpOldViewEntity$7617 = -92
_lpNextVsn$7628 = -96
_lpOldViewEntity$7638 = -104
_lpNewViewEntity$7640 = -100
_lpOldParent$7646 = -108
_lpPrevTwin$7650 = -112
_lpWork$7654 = -116
_CreateTemporalSubobjectVersion@8 PROC NEAR

; 277  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 116				; 00000074H

; 278  :    LPTASK           lpCurrentTask;
; 279  :    LPTASK           lpAllocTask;
; 280  :    LPTASK           lpInstAllocTask;
; 281  :    LPVIEWOI         lpViewOI;
; 282  :    LPVIEWOD         lpViewOD;
; 283  :    LPVIEWCSR        lpViewCsr;
; 284  :    LPVIEWCSR        lpWrkViewCsr;
; 285  :    LPVIEWENTITY     lpViewEntity;
; 286  :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 287  :    LPVIEWENTITYCSR  lpWrkViewEntityCsr;
; 288  :    LPENTITYINSTANCE lpStartOldInstance;
; 289  :    LPENTITYINSTANCE lpOldInstance;
; 290  :    LPENTITYINSTANCE lpStartNewInstance;
; 291  :    zPVOID           hStartNewInstance;
; 292  :    LPENTITYINSTANCE lpLastOldInstance;
; 293  :    LPENTITYINSTANCE lpLastNewInstance;
; 294  :    LPENTITYINSTANCE lpNewInstance;
; 295  :    zPVOID           hInstance;
; 296  :    LPENTITYINSTANCE lpWrkInstance;
; 297  :    LPENTITYINSTANCE lpDupInstance;
; 298  :    zSHORT           nStartLevel;
; 299  : 
; 300  :    // Validate parameters.
; 301  :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 302  :                                       &lpViewEntity,
; 303  :                                       &lpViewEntityCsr,
; 304  :                                       iCreateTemporalSubobjectVersion,
; 305  :                                       lpView,
; 306  :                                       cpcEntityName, 0 ) )

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	102					; 00000066H
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateInstanceParameters
	add	esp, 28					; 0000001cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L7604

; 308  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7582
$L7604:

; 310  : 
; 311  :    // If the view is ReadOnly, return.
; 312  :    if ( lpView->bReadOnly )

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 6
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7605

; 314  :       fnOperationReturn( iCreateTemporalSubobjectVersion, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	102					; 00000066H
	call	_fnOperationReturn
	add	esp, 8

; 315  :       return( 0 );  // We think everything was OK

	xor	ax, ax
	jmp	$L7582
$L7605:

; 317  : 
; 318  :    // Get starting level for create.
; 319  :    nStartLevel = lpViewEntityCsr->nLevel;

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	cx, WORD PTR [eax+22]
	mov	WORD PTR _nStartLevel$[ebp], cx

; 320  : 
; 321  :    // Get view csr and view oi.
; 322  :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 323  :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 324  :    lpViewOD  = zGETPTR( lpView->hViewOD );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 325  : 
; 326  :    // Get task which owns the object instance.
; 327  :    lpAllocTask     = zGETPTR( lpViewOI->hAllocTask );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpAllocTask$[ebp], eax

; 328  :    lpInstAllocTask = zGETPTR( lpViewOI->hTask );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpInstAllocTask$[ebp], eax

; 329  : 
; 330  :    // Get instance on which to start.
; 331  :    lpStartOldInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartOldInstance$[ebp], eax

; 332  : 
; 333  :    // Check to ensure neither this instance nor any of its descendents is already
; 334  :    // versioned. This is true when lpPrevVsn points to a versioned root instance.
; 335  :    lpOldInstance = lpStartOldInstance;

	mov	edx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	DWORD PTR _lpOldInstance$[ebp], edx
$L7612:

; 338  :       LPENTITYINSTANCE lpPrevVsn = zGETPTR( lpOldInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$7615[ebp], eax

; 339  :       LPVIEWENTITY     lpOldViewEntity = zGETPTR( lpOldInstance->hViewEntity );

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOldViewEntity$7617[ebp], eax

; 340  : 
; 341  :       if ( lpOldInstance->u.nInd.bTemporal ||
; 342  :            (lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot) )

	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7620
	cmp	DWORD PTR _lpPrevVsn$7615[ebp], 0
	je	SHORT $L7619
	mov	eax, DWORD PTR _lpPrevVsn$7615[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7619
$L7620:

; 344  :          if ( lpOldInstance == lpStartOldInstance )

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	cmp	edx, DWORD PTR _lpStartOldInstance$[ebp]
	jne	SHORT $L7621

; 346  :             // "KZOEE136 - Entity Instance already versioned"
; 347  :             fnIssueCoreError( lpCurrentTask, lpView, 8, 136, 0,
; 348  :                               lpViewEntity->szName, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	136					; 00000088H
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 350  :          else

	jmp	SHORT $L7622
$L7621:

; 352  :             // "KZOEE137 - Entity Instance descendent versioned"
; 353  :             fnIssueCoreError( lpCurrentTask, lpView, 8, 137, 0,
; 354  :                               lpViewEntity->szName,
; 355  :                               lpOldViewEntity->szName );

	mov	eax, DWORD PTR _lpOldViewEntity$7617[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	137					; 00000089H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH
$L7622:

; 357  : 
; 358  :          fnOperationReturn( iCreateTemporalSubobjectVersion, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	102					; 00000066H
	call	_fnOperationReturn
	add	esp, 8

; 359  :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7582
$L7619:

; 361  : 
; 362  :       // If the instance to be versioned is already versioned, make sure
; 363  :       // it is not versioned down a different path or through a different
; 364  :       // object than the current object and path we are on. If this is
; 365  :       // true, the the instance will be marked as a previous version yet
; 366  :       // it will not have a previous version entity instance pointer.
; 367  :       //
; 368  :       // We only care about this if the instance being versioned may be
; 369  :       // updated and there is already a versioned instance down a
; 370  :       // different path that may be updated.
; 371  : 
; 372  :       if ( lpOldInstance->u.nInd.bPrevVersion &&
; 373  :            lpOldViewEntity->bUpdate &&
; 374  :            lpOldInstance->hNextLinked )

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 8
	and	eax, 1
	test	eax, eax
	je	$L7632
	mov	ecx, DWORD PTR _lpOldViewEntity$7617[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 2
	and	edx, 1
	test	edx, edx
	je	$L7632
	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	cmp	DWORD PTR [eax+42], 0
	je	$L7632

; 376  :          // We have found an instance marked as a previous version
; 377  :          // which does not have a previous version itself, this means
; 378  :          // that the instance is versioned down a linked path, go
; 379  :          // through the linked versions to see if the record itself
; 380  :          // was versioned for updating. If NOT, then we can still version
; 381  :          // this instance.
; 382  :          lpWrkInstance = zGETPTR( lpOldInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax
$L7626:

; 383  :          while ( lpWrkInstance && lpWrkInstance != lpOldInstance )

	cmp	DWORD PTR _lpWrkInstance$[ebp], 0
	je	SHORT $L7627
	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	cmp	eax, DWORD PTR _lpOldInstance$[ebp]
	je	SHORT $L7627

; 385  :             LPENTITYINSTANCE lpNextVsn = zGETPTR( lpWrkInstance->hNextVsn );

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	mov	edx, DWORD PTR [ecx+34]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextVsn$7628[ebp], eax

; 386  : 
; 387  :             if ( lpNextVsn &&
; 388  :                  lpNextVsn->hPersistRecord != lpOldInstance->hPersistRecord )

	cmp	DWORD PTR _lpNextVsn$7628[ebp], 0
	je	SHORT $L7630
	mov	eax, DWORD PTR _lpNextVsn$7628[ebp]
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [eax+60]
	cmp	edx, DWORD PTR [ecx+60]
	je	SHORT $L7630

; 390  :                break;

	jmp	SHORT $L7627
$L7630:

; 392  : 
; 393  :             lpWrkInstance = zGETPTR( lpWrkInstance->hNextLinked );

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 394  :          }

	jmp	SHORT $L7626
$L7627:

; 395  : 
; 396  :          if ( lpWrkInstance != lpOldInstance )

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	edx, DWORD PTR _lpOldInstance$[ebp]
	je	SHORT $L7632

; 398  :             // TB742
; 399  :             // to avoid a crash within zGETPTR we can either check
; 400  :             // lpWrkInstance against NULL or remove this obsolete code.
; 401  : //          LPVIEWENTITY lpWrkViewEntity =
; 402  : //                                 zGETPTR( lpWrkInstance->hViewEntity );
; 403  : 
; 404  :             // "KZOEE134 - Attempt to version an Entity Instance "
; 405  :             // "           versioned via a different path"
; 406  :             fnIssueCoreError( lpCurrentTask, lpView, 8, 134, 0,
; 407  :                               lpViewEntity->szName,
; 408  :                               lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	134					; 00000086H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 409  :             fnOperationReturn( iCreateTemporalSubobjectVersion, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	102					; 00000066H
	call	_fnOperationReturn
	add	esp, 8

; 410  :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7582
$L7632:

; 413  : 
; 414  :       lpOldInstance = zGETPTR( lpOldInstance->hNextHier );

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOldInstance$[ebp], eax

; 415  : 
; 416  :    } while ( lpOldInstance && lpOldInstance->nLevel > nStartLevel );

	cmp	DWORD PTR _lpOldInstance$[ebp], 0
	je	SHORT $L7634
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	movsx	eax, WORD PTR _nStartLevel$[ebp]
	cmp	edx, eax
	jg	$L7612
$L7634:

; 417  : 
; 418  :    // All error checking is complete, Version the source instances and
; 419  :    // all of its dependents.
; 420  :    lpOldInstance      = lpStartOldInstance;

	mov	ecx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	DWORD PTR _lpOldInstance$[ebp], ecx

; 421  :    lpStartNewInstance = 0;

	mov	DWORD PTR _lpStartNewInstance$[ebp], 0

; 422  :    hStartNewInstance  = 0;

	mov	DWORD PTR _hStartNewInstance$[ebp], 0
$L7635:

; 425  :       LPVIEWENTITY lpOldViewEntity = zGETPTR( lpOldInstance->hViewEntity );

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOldViewEntity$7638[ebp], eax

; 426  :       LPVIEWENTITY lpNewViewEntity;
; 427  : 
; 428  :       hInstance = fnAllocDataspace( lpInstAllocTask->hFirstDataHeader,
; 429  :                                     sizeof( EntityInstanceRecord ), 1, 0,
; 430  :                                     iEntityInstance );

	push	10024					; 00002728H
	push	0
	push	1
	push	68					; 00000044H
	mov	ecx, DWORD PTR _lpInstAllocTask$[ebp]
	mov	edx, DWORD PTR [ecx+94]
	push	edx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hInstance$[ebp], eax

; 431  :       lpNewInstance = zGETPTR( hInstance );

	mov	eax, DWORD PTR _hInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 432  :       if ( lpNewInstance == 0 )

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	jne	SHORT $L7643

; 434  :          // "KZOEE012 - Error allocating memory"
; 435  :          fnIssueCoreError( lpCurrentTask, lpView, 12, 20, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	20					; 00000014H
	push	12					; 0000000cH
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 436  :          break;

	jmp	$L7696
$L7643:

; 438  : 
; 439  :       // Copy old instance information to new instance.
; 440  :       zmemcpy( lpNewInstance, lpOldInstance,
; 441  :                sizeof( EntityInstanceRecord ) );

	push	68					; 00000044H
	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 442  : 
; 443  :       // If this is not the first instance versioned.
; 444  :       if ( lpStartNewInstance )

	cmp	DWORD PTR _lpStartNewInstance$[ebp], 0
	je	SHORT $L7645

; 446  :          LPENTITYINSTANCE lpOldParent = zGETPTR( lpOldInstance->hParent );

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOldParent$7646[ebp], eax

; 447  : 
; 448  :          lpLastNewInstance->hNextHier = hInstance;

	mov	ecx, DWORD PTR _lpLastNewInstance$[ebp]
	mov	edx, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR [ecx+14], edx

; 449  :          lpNewInstance->hPrevHier = zGETHNDL( lpLastNewInstance );

	mov	eax, DWORD PTR _lpLastNewInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+18], eax

; 450  :          lpNewInstance->hParent   = lpOldParent->hNextVsn;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR _lpOldParent$7646[ebp]
	mov	ecx, DWORD PTR [eax+34]
	mov	DWORD PTR [edx+30], ecx

; 451  :       // if ( lpNewInstance->hParent == UNSET_CSR )
; 452  :       //    SysMessageBox( 0, "CreateTemporalSubobjectVersion", "UNSET_CSR", -1 );
; 453  : 
; 454  :          if ( lpOldInstance->hPrevTwin )

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L7649

; 456  :             LPENTITYINSTANCE lpPrevTwin;
; 457  : 
; 458  :             lpPrevTwin = zGETPTR( lpOldInstance->hPrevTwin );

	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevTwin$7650[ebp], eax

; 459  :             lpNewInstance->hPrevTwin = lpPrevTwin->hNextVsn;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR _lpPrevTwin$7650[ebp]
	mov	ecx, DWORD PTR [eax+34]
	mov	DWORD PTR [edx+26], ecx

; 460  : 
; 461  :             lpPrevTwin = zGETPTR( lpNewInstance->hPrevTwin );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevTwin$7650[ebp], eax

; 462  :             lpPrevTwin->hNextTwin = hInstance;

	mov	ecx, DWORD PTR _lpPrevTwin$7650[ebp]
	mov	edx, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR [ecx+22], edx
$L7649:

; 465  :       else

	jmp	SHORT $L7659
$L7645:

; 467  :          LPENTITYINSTANCE lpWork;
; 468  : 
; 469  :          hStartNewInstance  = hInstance;

	mov	eax, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR _hStartNewInstance$[ebp], eax

; 470  :          lpStartNewInstance = lpNewInstance;

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR _lpStartNewInstance$[ebp], ecx

; 471  : 
; 472  :          if ( lpOldInstance->hPrevHier )

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	cmp	DWORD PTR [edx+18], 0
	je	SHORT $L7655

; 474  :             lpWork = zGETPTR( lpOldInstance->hPrevHier );

	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWork$7654[ebp], eax

; 475  :             lpWork->hNextHier = hInstance;

	mov	edx, DWORD PTR _lpWork$7654[ebp]
	mov	eax, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR [edx+14], eax
$L7655:

; 477  : 
; 478  :          if ( lpOldInstance->hPrevTwin )

	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	SHORT $L7657

; 480  :             lpWork = zGETPTR( lpOldInstance->hPrevTwin );

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWork$7654[ebp], eax

; 481  :             lpWork->hNextTwin = hInstance;

	mov	ecx, DWORD PTR _lpWork$7654[ebp]
	mov	edx, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR [ecx+22], edx
$L7657:

; 483  : 
; 484  :          if ( lpOldInstance->hNextTwin )

	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	SHORT $L7659

; 486  :             lpWork = zGETPTR( lpOldInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWork$7654[ebp], eax

; 487  :             lpWork->hPrevTwin = hInstance;

	mov	eax, DWORD PTR _lpWork$7654[ebp]
	mov	ecx, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR [eax+26], ecx
$L7659:

; 490  : 
; 491  :       lpNewInstance->hPrevVsn = zGETHNDL( lpOldInstance );

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+38], eax

; 492  :       lpOldInstance->hNextVsn = hInstance;

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR [edx+34], eax

; 493  :       lpNewInstance->hNextLinked  = 0;

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+42], 0

; 494  : 
; 495  :       // Set the previous version indicators for both the old and new versions.
; 496  :       // If the old version is linked, mark all of its linked instances as a
; 497  :       // previous version.
; 498  :       lpNewInstance->u.nInd.bPrevVersion = FALSE;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	ah, -2					; fffffffeH
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 499  :       lpNewInstance->u.nInd.bPrevVsnRoot = FALSE;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	ah, -3					; fffffffdH
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 500  :       lpOldInstance->u.nInd.bPrevVersion = TRUE;

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	ah, 1
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 501  :       lpWrkInstance = zGETPTR( lpOldInstance->hNextLinked );

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 502  :       lpDupInstance = 0;

	mov	DWORD PTR _lpDupInstance$[ebp], 0
$L7664:

; 503  :       while ( lpWrkInstance && lpWrkInstance != lpOldInstance )

	cmp	DWORD PTR _lpWrkInstance$[ebp], 0
	je	SHORT $L7665
	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	ecx, DWORD PTR _lpOldInstance$[ebp]
	je	SHORT $L7665

; 505  :          // If the linked instance has a next version, see if that instances next
; 506  :          // version is a child of the starting parent of this version being created.
; 507  :          if ( lpWrkInstance->hNextVsn )

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	DWORD PTR [edx+34], 0
	je	SHORT $L7672

; 509  :             lpDupInstance = zGETPTR( lpWrkInstance->hNextVsn );

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax
$L7669:

; 510  :             while ( lpDupInstance && lpDupInstance != lpStartNewInstance )

	cmp	DWORD PTR _lpDupInstance$[ebp], 0
	je	SHORT $L7670
	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	cmp	edx, DWORD PTR _lpStartNewInstance$[ebp]
	je	SHORT $L7670

; 511  :                lpDupInstance = zGETPTR( lpDupInstance->hParent );

	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax
	jmp	SHORT $L7669
$L7670:

; 512  : 
; 513  :             if ( lpDupInstance )

	cmp	DWORD PTR _lpDupInstance$[ebp], 0
	je	SHORT $L7672

; 514  :                lpDupInstance = zGETPTR( lpWrkInstance->hNextVsn );

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR [edx+34]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax
$L7672:

; 516  : 
; 517  :          lpWrkInstance->u.nInd.bPrevVersion = TRUE;

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	dh, 1
	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 518  :          lpWrkInstance = zGETPTR( lpWrkInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 519  :       }

	jmp	SHORT $L7664
$L7665:

; 520  : 
; 521  :       // Copy the attribute record UNLESS this instance is a duplicate of another
; 522  :       // instance in the same Subobject OR the view entity is not updateable.
; 523  :       lpNewViewEntity = zGETPTR( lpNewInstance->hViewEntity );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewEntity$7640[ebp], eax

; 524  :       if ( lpDupInstance || lpNewViewEntity->bUpdate == FALSE )

	cmp	DWORD PTR _lpDupInstance$[ebp], 0
	jne	SHORT $L7677
	mov	edx, DWORD PTR _lpNewViewEntity$7640[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 2
	and	eax, 1
	test	eax, eax
	jne	$L7676
$L7677:

; 526  :          if ( lpDupInstance )

	cmp	DWORD PTR _lpDupInstance$[ebp], 0
	je	$L7678

; 528  :             if ( lpDupInstance->hPersistRecord == lpOldInstance->hPersistRecord &&
; 529  :                  lpNewViewEntity->bUpdate )

	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [ecx+60]
	cmp	eax, DWORD PTR [edx+60]
	jne	SHORT $L7685
	mov	ecx, DWORD PTR _lpNewViewEntity$7640[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 2
	and	edx, 1
	test	edx, edx
	je	SHORT $L7685

; 531  :                lpDupInstance->hPersistRecord =
; 532  :                  fnCopyAttributeRecord( lpAllocTask, lpOldViewEntity,
; 533  :                                         (zPCHAR) zGETPTR( lpOldInstance->hPersistRecord ), 1 );

	push	1
	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	edx, DWORD PTR _lpOldViewEntity$7638[ebp]
	push	edx
	mov	eax, DWORD PTR _lpAllocTask$[ebp]
	push	eax
	call	_fnCopyAttributeRecord
	add	esp, 16					; 00000010H
	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	mov	DWORD PTR [ecx+60], eax

; 534  : 
; 535  :                lpWrkInstance = zGETPTR( lpDupInstance->hNextLinked );

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax
$L7684:

; 536  :                while ( lpWrkInstance && lpWrkInstance != lpDupInstance )

	cmp	DWORD PTR _lpWrkInstance$[ebp], 0
	je	SHORT $L7685
	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	ecx, DWORD PTR _lpDupInstance$[ebp]
	je	SHORT $L7685

; 538  :                   lpWrkInstance->hPersistRecord = lpDupInstance->hPersistRecord;

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	mov	DWORD PTR [edx+60], ecx

; 539  :                   lpWrkInstance = zGETPTR( lpWrkInstance->hNextLinked );

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 540  :                }

	jmp	SHORT $L7684
$L7685:

; 542  : 
; 543  :             lpNewInstance->hPersistRecord = lpDupInstance->hPersistRecord;

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR [edx+60]
	mov	DWORD PTR [ecx+60], eax

; 544  :             if ( lpDupInstance->hNextLinked )

	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	cmp	DWORD PTR [ecx+42], 0
	je	SHORT $L7687

; 545  :                lpNewInstance->hNextLinked = lpDupInstance->hNextLinked;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	mov	DWORD PTR [edx+42], ecx

; 546  :             else

	jmp	SHORT $L7688
$L7687:

; 547  :                lpNewInstance->hNextLinked = zGETHNDL ( lpDupInstance );

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax
$L7688:

; 548  : 
; 549  :             lpDupInstance->hNextLinked = hInstance;

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR [edx+42], eax
$L7678:

; 552  :       else

	jmp	SHORT $L7690
$L7676:

; 554  :          lpNewInstance->hPersistRecord =
; 555  :            fnCopyAttributeRecord( lpAllocTask, lpOldViewEntity,
; 556  :                                   (zPCHAR) zGETPTR( lpOldInstance->hPersistRecord ), 1 );

	push	1
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+60]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpOldViewEntity$7638[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpAllocTask$[ebp]
	push	ecx
	call	_fnCopyAttributeRecord
	add	esp, 16					; 00000010H
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [edx+60], eax
$L7690:

; 558  : 
; 559  :       lpNewInstance->hNonPersistRecord =
; 560  :         fnCopyAttributeRecord( lpAllocTask, lpOldViewEntity,
; 561  :                                (zPCHAR) zGETPTR( lpOldInstance->
; 562  :                                                     hNonPersistRecord ), 0 );

	push	0
	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+64]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	edx, DWORD PTR _lpOldViewEntity$7638[ebp]
	push	edx
	mov	eax, DWORD PTR _lpAllocTask$[ebp]
	push	eax
	call	_fnCopyAttributeRecord
	add	esp, 16					; 00000010H
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+64], eax

; 563  :       lpLastOldInstance = lpOldInstance;

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	DWORD PTR _lpLastOldInstance$[ebp], edx

; 564  :       lpLastNewInstance = lpNewInstance;

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR _lpLastNewInstance$[ebp], eax

; 565  :       lpOldInstance = zGETPTR( lpOldInstance->hNextHier );

	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOldInstance$[ebp], eax

; 566  : 
; 567  :       fnAddEntityToDebugChange( lpNewInstance );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	push	eax
	call	_fnAddEntityToDebugChange@4

; 568  : 
; 569  :    } while ( lpOldInstance && lpOldInstance->nLevel > nStartLevel );

	cmp	DWORD PTR _lpOldInstance$[ebp], 0
	je	SHORT $L7696
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	movsx	eax, WORD PTR _nStartLevel$[ebp]
	cmp	edx, eax
	jg	$L7635
$L7696:

; 570  : 
; 571  :    if ( lpNewInstance == 0 ) // if any alloc failed, we're in trouble

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	jne	$L7697

; 573  :       // We will clean up here and undo the damage we've done to
; 574  :       // the old instances.
; 575  :       if ( lpStartNewInstance )

	cmp	DWORD PTR _lpStartNewInstance$[ebp], 0
	je	$L7701
$L7700:

; 578  :          lpWrkInstance = zGETPTR( lpStartNewInstance->hNextVsn );

	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+34]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 579  :          lpWrkInstance->hPrevVsn = lpStartNewInstance->hPrevVsn;

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	mov	DWORD PTR [eax+38], edx

; 580  :          lpWrkInstance->u.nInd.bPrevVersion = FALSE;

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ch, -2					; fffffffeH
	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 581  :          lpWrkInstance = lpStartNewInstance;

	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 582  :          hStartNewInstance  = lpStartNewInstance->hNextHier;

	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	mov	DWORD PTR _hStartNewInstance$[ebp], edx

; 583  :          lpStartNewInstance = zGETPTR( lpStartNewInstance->hNextHier );

	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartNewInstance$[ebp], eax

; 584  :          fnDeleteAttributeRecord( zGETPTR( lpWrkInstance->hViewEntity ),
; 585  :                                   lpWrkInstance, TRUE );

	push	1
	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnDeleteAttributeRecord
	add	esp, 12					; 0000000cH

; 586  : 
; 587  :          lpDupInstance = zGETPTR( lpWrkInstance->hNextLinked );

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax

; 588  :          if ( lpDupInstance )

	cmp	DWORD PTR _lpDupInstance$[ebp], 0
	je	SHORT $L7709
$L7708:

; 590  :             while ( lpDupInstance != lpWrkInstance )

	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	cmp	ecx, DWORD PTR _lpWrkInstance$[ebp]
	je	SHORT $L7709

; 592  :                lpDupInstance->hPersistRecord = 0;

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	DWORD PTR [edx+60], 0

; 593  :                lpDupInstance = zGETPTR( lpDupInstance->hNextLinked );

	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax

; 594  :             }

	jmp	SHORT $L7708
$L7709:

; 596  : 
; 597  :          fnFreeDataspace( lpWrkInstance );

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 598  :          if ( lpWrkInstance == lpLastNewInstance )

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	cmp	eax, DWORD PTR _lpLastNewInstance$[ebp]
	jne	SHORT $L7711

; 599  :             break;

	jmp	SHORT $L7701
$L7711:

; 600  :       }

	jmp	$L7700
$L7701:

; 601  : 
; 602  :       fnOperationReturn( iCreateTemporalSubobjectVersion, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	102					; 00000066H
	call	_fnOperationReturn
	add	esp, 8

; 603  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7582
$L7697:

; 605  : 
; 606  :    // Mark the starting initial instance as a previous version root.
; 607  :    lpStartOldInstance->u.nInd.bPrevVsnRoot = TRUE;

	mov	edx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	ah, 2
	mov	ecx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 608  :    lpStartOldInstance->hPrevHier = 0;

	mov	edx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	DWORD PTR [edx+18], 0

; 609  :    lpStartOldInstance->hNextTwin = 0;

	mov	eax, DWORD PTR _lpStartOldInstance$[ebp]
	mov	DWORD PTR [eax+22], 0

; 610  :    lpStartOldInstance->hPrevTwin = 0;

	mov	ecx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	DWORD PTR [ecx+26], 0

; 611  : 
; 612  :    lpLastOldInstance->hNextHier = 0;

	mov	edx, DWORD PTR _lpLastOldInstance$[ebp]
	mov	DWORD PTR [edx+14], 0

; 613  : 
; 614  :    // If lpOldInstance exists set its previous hierarchical pointer.
; 615  :    if ( lpOldInstance )

	cmp	DWORD PTR _lpOldInstance$[ebp], 0
	je	SHORT $L7712

; 616  :       lpOldInstance->hPrevHier = hInstance;

	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR [eax+18], ecx
$L7712:

; 617  : 
; 618  :    // If the root of the instance is being versioned, set the
; 619  :    // root entity instance pointer in the ViewOI.
; 620  :    if ( zGETPTR( lpViewOI->hRootEntityInstance ) == lpStartOldInstance )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpStartOldInstance$[ebp]
	jne	SHORT $L7714

; 621  :       lpViewOI->hRootEntityInstance = hStartNewInstance;

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR _hStartNewInstance$[ebp]
	mov	DWORD PTR [ecx+26], edx
$L7714:

; 622  : 
; 623  :    // Set the cursor to the new instance
; 624  :    lpViewEntityCsr->hEntityInstance = hStartNewInstance;

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR _hStartNewInstance$[ebp]
	mov	DWORD PTR [eax+26], ecx

; 625  : // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 626  : //    SysMessageBox( 0, "CreateTemporalSubobjectVersion", "UNSET_CSR", -1 );
; 627  : 
; 628  :    fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnResetCursorForViewChildren
	add	esp, 4

; 629  : 
; 630  :    // Now go through all views for the old object and update any cursors
; 631  :    // positioned on the previous instance to point to the new version.
; 632  :    for ( lpWrkViewCsr = zGETPTR( lpViewOI->hFirstViewCsr );
; 633  :          lpWrkViewCsr;
; 634  :          lpWrkViewCsr = zGETPTR( lpWrkViewCsr->hNextViewCsr ) )

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewCsr$[ebp], eax
	jmp	SHORT $L7717
$L7718:
	mov	edx, DWORD PTR _lpWrkViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewCsr$[ebp], eax
$L7717:
	cmp	DWORD PTR _lpWrkViewCsr$[ebp], 0
	je	SHORT $L7719

; 636  :       if ( lpWrkViewCsr == lpViewCsr )

	mov	ecx, DWORD PTR _lpWrkViewCsr$[ebp]
	cmp	ecx, DWORD PTR _lpViewCsr$[ebp]
	jne	SHORT $L7720

; 637  :          continue;

	jmp	SHORT $L7718
$L7720:

; 638  : 
; 639  :       lpWrkViewEntityCsr = zGETPTR( lpWrkViewCsr->hFirstOD_EntityCsr );

	mov	edx, DWORD PTR _lpWrkViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewEntityCsr$[ebp], eax

; 640  :       lpWrkViewEntityCsr += (lpViewEntity->nHierNbr - 1);

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+217]
	sub	edx, 1
	imul	edx, 30					; 0000001eH
	mov	eax, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	add	eax, edx
	mov	DWORD PTR _lpWrkViewEntityCsr$[ebp], eax

; 641  : 
; 642  :       if ( zGETPTR( lpWrkViewEntityCsr->hEntityInstance ) == lpStartOldInstance )

	mov	ecx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpStartOldInstance$[ebp]
	jne	SHORT $L7723

; 644  :          lpWrkViewEntityCsr->hEntityInstance = hStartNewInstance;

	mov	eax, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR _hStartNewInstance$[ebp]
	mov	DWORD PTR [eax+26], ecx

; 645  :       // if ( lpWrkViewEntityCsr->hEntityInstance == UNSET_CSR )
; 646  :       //    SysMessageBox( 0, "CreateTemporalSubobjectVersion2", "UNSET_CSR", -1 );
; 647  : 
; 648  :          fnResetCursorForViewChildren( lpWrkViewEntityCsr );

	mov	edx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	push	edx
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L7723:

; 650  :    }

	jmp	SHORT $L7718
$L7719:

; 651  : 
; 652  :    // Increment versioned instance count in viewoi.
; 653  :    lpViewOI->nVersionedInstances++;

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	cx, WORD PTR [eax+22]
	add	cx, 1
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	WORD PTR [edx+22], cx

; 654  : 
; 655  : #if 0   // Gig, debugging, for all new instances, see if a record
; 656  :         // match can be found which is not linked!!!!
; 657  :    lpNewInstance      = lpStartNewInstance;
; 658  :    do
; 659  :    {
; 660  :       lpWrkInstance = zGETPTR( lpNewInstance->hNextHier );
; 661  :       while ( lpWrkInstance && lpWrkInstance->nLevel > nStartLevel )
; 662  :       {
; 663  :          if ( lpWrkInstance->hPersistRecord == lpNewInstance->hPersistRecord )
; 664  :          {
; 665  :             lpDupInstance = zGETPTR( lpNewInstance->hNextLinked );
; 666  :             while ( lpDupInstance && lpDupInstance != lpNewInstance )
; 667  :             {
; 668  :                if ( lpDupInstance == lpWrkInstance )
; 669  :                   break;
; 670  : 
; 671  :                lpDupInstance = zGETPTR( lpDupInstance->hNextLinked );
; 672  :             }
; 673  : 
; 674  :             if ( lpDupInstance != lpWrkInstance )
; 675  :             {
; 676  :                SysMessageBox( "ERROR AFTER CREATE",
; 677  :                               "Record match found in non-linked instance", 1 );
; 678  :             }
; 679  :          }
; 680  : 
; 681  :          lpWrkInstance = zGETPTR( lpWrkInstance->hNextHier );
; 682  :       }
; 683  : 
; 684  :       lpNewInstance = zGETPTR( lpNewInstance->hNextHier );
; 685  : 
; 686  :    } while ( lpNewInstance && lpNewInstance->nLevel > nStartLevel );
; 687  : #endif
; 688  : 
; 689  :    // return to sender
; 690  :    fnOperationReturn( iCreateTemporalSubobjectVersion, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	102					; 00000066H
	call	_fnOperationReturn
	add	esp, 8

; 691  :    return( 0 );  // We think everything was OK

	xor	ax, ax
$L7582:

; 692  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_CreateTemporalSubobjectVersion@8 ENDP
_TEXT	ENDS
PUBLIC	_AcceptSubobject@8
PUBLIC	_AcceptAllTemporalSubobjects@4
EXTRN	_fnOperationCall:NEAR
EXTRN	_CreateViewFromViewForTask@12:NEAR
EXTRN	_DropView@4:NEAR
EXTRN	_fnEstablishViewForInstance:NEAR
EXTRN	_fnRemoveAllChildTemporalVsns:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -32
_lpViewOI$ = -24
_lpViewCsr$ = -4
_lpViewEntityCsr$ = -28
_lpRoot$ = -20
_lpRootViewEntity$ = -16
_vWork$ = -12
_nRC$ = -8
_lpPrevVsn$7744 = -36
_AcceptAllTemporalSubobjects@4 PROC NEAR

; 712  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 713  :    LPTASK           lpCurrentTask;
; 714  :    LPVIEWOI         lpViewOI;
; 715  :    LPVIEWCSR        lpViewCsr;
; 716  :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 717  :    LPENTITYINSTANCE lpRoot;
; 718  :    LPVIEWENTITY     lpRootViewEntity;
; 719  :    zVIEW            vWork;
; 720  :    zSHORT           nRC;
; 721  : 
; 722  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 723  :    if ( (lpCurrentTask = fnOperationCall( iAcceptAllTemporalSubobjects,
; 724  :                                           lpView, zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	127					; 0000007fH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7735

; 726  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7726
$L7735:

; 728  : 
; 729  :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 730  :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 731  : 
; 732  :    if ( lpViewOI->nVersionedInstances )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	movsx	eax, WORD PTR [edx+22]
	test	eax, eax
	je	$L7756

; 734  :       lpRoot = zGETPTR( lpViewOI->hRootEntityInstance );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRoot$[ebp], eax

; 735  :       lpRootViewEntity = zGETPTR( lpRoot->hViewEntity );

	mov	eax, DWORD PTR _lpRoot$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootViewEntity$[ebp], eax

; 736  :       vWork = 0;

	mov	DWORD PTR _vWork$[ebp], 0
$L7742:

; 737  :       while ( lpRoot )

	cmp	DWORD PTR _lpRoot$[ebp], 0
	je	$L7743

; 739  :          LPENTITYINSTANCE lpPrevVsn;
; 740  : 
; 741  :          nRC = fnRemoveAllChildTemporalVsns( lpView, lpRoot, 1 );

	push	1
	mov	edx, DWORD PTR _lpRoot$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnRemoveAllChildTemporalVsns
	add	esp, 12					; 0000000cH
	mov	WORD PTR _nRC$[ebp], ax

; 742  :          if ( nRC < zCURSOR_UNDEFINED )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -2					; fffffffeH
	jge	SHORT $L7745

; 744  :             if ( vWork )

	cmp	DWORD PTR _vWork$[ebp], 0
	je	SHORT $L7746

; 745  :                DropView( vWork );

	mov	edx, DWORD PTR _vWork$[ebp]
	push	edx
	call	_DropView@4
$L7746:

; 746  : 
; 747  :             fnOperationReturn( iAcceptAllTemporalSubobjects, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	127					; 0000007fH
	call	_fnOperationReturn
	add	esp, 8

; 748  :             return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7726
$L7745:

; 750  : 
; 751  :          lpPrevVsn = zGETPTR( lpRoot->hPrevVsn );

	mov	ecx, DWORD PTR _lpRoot$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$7744[ebp], eax

; 752  :          if ( lpRoot->u.nInd.bTemporal ||
; 753  :               (lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot) )

	mov	eax, DWORD PTR _lpRoot$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7749
	cmp	DWORD PTR _lpPrevVsn$7744[ebp], 0
	je	$L7748
	mov	edx, DWORD PTR _lpPrevVsn$7744[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 9
	and	eax, 1
	test	eax, eax
	je	SHORT $L7748
$L7749:

; 755  :             if ( vWork == 0 )

	cmp	DWORD PTR _vWork$[ebp], 0
	jne	SHORT $L7750

; 756  :                CreateViewFromViewForTask( &vWork, lpView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _vWork$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12
$L7750:

; 757  : 
; 758  :             lpViewEntityCsr = fnEstablishViewForInstance( vWork, 0, lpRoot );

	mov	eax, DWORD PTR _lpRoot$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _vWork$[ebp]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 759  :             nRC = AcceptSubobject( vWork, lpRootViewEntity->szName );

	mov	edx, DWORD PTR _lpRootViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _vWork$[ebp]
	push	eax
	call	_AcceptSubobject@8
	mov	WORD PTR _nRC$[ebp], ax

; 760  :             if ( nRC < zCURSOR_UNDEFINED )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -2					; fffffffeH
	jge	SHORT $L7751

; 762  :                if ( vWork )

	cmp	DWORD PTR _vWork$[ebp], 0
	je	SHORT $L7752

; 763  :                   DropView( vWork );

	mov	edx, DWORD PTR _vWork$[ebp]
	push	edx
	call	_DropView@4
$L7752:

; 764  : 
; 765  :                fnOperationReturn( iAcceptAllTemporalSubobjects, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	127					; 0000007fH
	call	_fnOperationReturn
	add	esp, 8

; 766  :                return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L7726
$L7751:

; 768  : 
; 769  :             lpRoot = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRoot$[ebp], eax
$L7748:

; 771  : 
; 772  :          if ( lpRoot )

	cmp	DWORD PTR _lpRoot$[ebp], 0
	je	SHORT $L7754

; 773  :             lpRoot = zGETPTR( lpRoot->hNextTwin );

	mov	eax, DWORD PTR _lpRoot$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRoot$[ebp], eax
$L7754:

; 774  :       }

	jmp	$L7742
$L7743:

; 775  : 
; 776  :       if ( vWork )

	cmp	DWORD PTR _vWork$[ebp], 0
	je	SHORT $L7756

; 777  :          DropView( vWork );

	mov	edx, DWORD PTR _vWork$[ebp]
	push	edx
	call	_DropView@4
$L7756:

; 779  : 
; 780  :    fnOperationReturn( iAcceptAllTemporalSubobjects, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	127					; 0000007fH
	call	_fnOperationReturn
	add	esp, 8

; 781  :    return( 0 );

	xor	ax, ax
$L7726:

; 782  : }

	mov	esp, ebp
	pop	ebp
	ret	4
_AcceptAllTemporalSubobjects@4 ENDP
_TEXT	ENDS
PUBLIC	_fnUpdateNextVsnRecordPointers
_TEXT	SEGMENT
_lpNextVsnInstance$ = 8
_lpNewInstance$ = 12
_lpOldRecord$ = 16
_bStillPrevVsn$ = 20
_lpDupInstance$ = -12
_lpNextVsn$ = -8
_lpViewEntity$ = -4
_fnUpdateNextVsnRecordPointers PROC NEAR

; 800  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 801  :    LPENTITYINSTANCE  lpDupInstance;
; 802  :    LPENTITYINSTANCE  lpNextVsn;
; 803  :    LPVIEWENTITY      lpViewEntity = zGETPTR( lpNewInstance->hViewEntity );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 804  : 
; 805  :    lpDupInstance = lpNextVsnInstance;

	mov	edx, DWORD PTR _lpNextVsnInstance$[ebp]
	mov	DWORD PTR _lpDupInstance$[ebp], edx
$L7771:

; 808  :       lpDupInstance->hPersistRecord = lpNewInstance->hPersistRecord;

	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+60]
	mov	DWORD PTR [eax+60], edx

; 809  :       if ( lpNewInstance->u.nInd.bUpdated )

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 2
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7774

; 810  :          lpDupInstance->u.nInd.bUpdated = TRUE;

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	al, 4
	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax
$L7774:

; 811  : 
; 812  :       lpDupInstance->u.nInd.bPrevVersion = bStillPrevVsn;

	mov	edx, DWORD PTR _bStillPrevVsn$[ebp]
	and	edx, 255				; 000000ffH
	and	edx, 1
	shl	edx, 8
	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ch, -2					; fffffffeH
	or	ecx, edx
	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 813  : 
; 814  :       // If the duplicate instance has newer version(s) with the old record,
; 815  :       // update the newer version(s) and it linked instances.
; 816  :       lpNextVsn = zGETPTR( lpDupInstance->hNextVsn );

	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextVsn$[ebp], eax

; 817  :       if ( lpNextVsn &&
; 818  :            zGETPTR( lpNextVsn->hPersistRecord ) == lpOldRecord )

	cmp	DWORD PTR _lpNextVsn$[ebp], 0
	je	SHORT $L7777
	mov	edx, DWORD PTR _lpNextVsn$[ebp]
	mov	eax, DWORD PTR [edx+60]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpOldRecord$[ebp]
	jne	SHORT $L7777

; 820  :          fnUpdateNextVsnRecordPointers( lpNextVsn,
; 821  :                                         lpNewInstance, lpOldRecord,
; 822  :                                         bStillPrevVsn );

	mov	cl, BYTE PTR _bStillPrevVsn$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpOldRecord$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpNextVsn$[ebp]
	push	ecx
	call	_fnUpdateNextVsnRecordPointers
	add	esp, 16					; 00000010H
$L7777:

; 824  : 
; 825  :       lpDupInstance = zGETPTR( lpDupInstance->hNextLinked );

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax

; 826  : 
; 827  :    } while ( lpDupInstance && lpDupInstance != lpNextVsnInstance );

	cmp	DWORD PTR _lpDupInstance$[ebp], 0
	je	SHORT $L7779
	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	cmp	ecx, DWORD PTR _lpNextVsnInstance$[ebp]
	jne	$L7771
$L7779:

; 828  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnUpdateNextVsnRecordPointers ENDP
_TEXT	ENDS
PUBLIC	_fnGetRecurseParentEntity
_TEXT	SEGMENT
_lpViewEntity$ = 8
_lpScanViewEntity$ = -4
_fnGetRecurseParentEntity PROC NEAR

; 844  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 845  :    LPVIEWENTITY   lpScanViewEntity;
; 846  : 
; 847  :    if ( lpViewEntity->bRecursive == FALSE )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7785

; 848  :       return( lpViewEntity );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	jmp	SHORT $L7783
$L7785:

; 849  : 
; 850  :    lpScanViewEntity = zGETPTR( lpViewEntity->hParent );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanViewEntity$[ebp], eax
$L7788:

; 851  :    while ( lpScanViewEntity->lEREntTok != lpViewEntity->lEREntTok )

	mov	ecx, DWORD PTR _lpScanViewEntity$[ebp]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+195]
	cmp	eax, DWORD PTR [edx+195]
	je	SHORT $L7789

; 852  :       lpScanViewEntity = zGETPTR( lpScanViewEntity->hParent );

	mov	ecx, DWORD PTR _lpScanViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanViewEntity$[ebp], eax
	jmp	SHORT $L7788
$L7789:

; 853  : 
; 854  :    return( lpScanViewEntity );

	mov	eax, DWORD PTR _lpScanViewEntity$[ebp]
$L7783:

; 855  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnGetRecurseParentEntity ENDP
_TEXT	ENDS
PUBLIC	_fnCountEntities
_TEXT	SEGMENT
_lpEntityInstance$ = 8
_lpScanEI$ = -4
_uEICount$ = -8
_fnCountEntities PROC NEAR

; 874  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 875  :    LPENTITYINSTANCE  lpScanEI;
; 876  :    zUSHORT           uEICount = 0;

	mov	WORD PTR _uEICount$[ebp], 0

; 877  : 
; 878  :    if ( lpEntityInstance == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	SHORT $L7797

; 879  :       return( 0 );

	xor	ax, ax
	jmp	$L7794
$L7797:

; 880  : 
; 881  :    if ( lpEntityInstance->u.nInd.bHidden == FALSE )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7798

; 882  :       uEICount++; // count the current instance

	mov	dx, WORD PTR _uEICount$[ebp]
	add	dx, 1
	mov	WORD PTR _uEICount$[ebp], dx
$L7798:

; 883  : 
; 884  :    // Scan to the head of the EI chain.
; 885  :    lpScanEI = zGETPTR( lpEntityInstance->hPrevTwin );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanEI$[ebp], eax
$L7801:

; 886  :    while ( lpScanEI )

	cmp	DWORD PTR _lpScanEI$[ebp], 0
	je	SHORT $L7802

; 888  :       if ( lpScanEI->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpScanEI$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7803

; 889  :          uEICount++;

	mov	cx, WORD PTR _uEICount$[ebp]
	add	cx, 1
	mov	WORD PTR _uEICount$[ebp], cx
$L7803:

; 890  : 
; 891  :       lpScanEI = zGETPTR( lpScanEI->hPrevTwin );

	mov	edx, DWORD PTR _lpScanEI$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanEI$[ebp], eax

; 892  :    }

	jmp	SHORT $L7801
$L7802:

; 893  : 
; 894  :    // Scan to the tail of the chain.
; 895  :    lpScanEI = zGETPTR( lpEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanEI$[ebp], eax
$L7807:

; 896  :    while ( lpScanEI )

	cmp	DWORD PTR _lpScanEI$[ebp], 0
	je	SHORT $L7808

; 898  :       if ( lpScanEI->u.nInd.bHidden == FALSE )

	mov	eax, DWORD PTR _lpScanEI$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7809

; 899  :          uEICount++;

	mov	dx, WORD PTR _uEICount$[ebp]
	add	dx, 1
	mov	WORD PTR _uEICount$[ebp], dx
$L7809:

; 900  : 
; 901  :       lpScanEI = zGETPTR( lpScanEI->hNextTwin );

	mov	eax, DWORD PTR _lpScanEI$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanEI$[ebp], eax

; 902  :    }

	jmp	SHORT $L7807
$L7808:

; 903  : 
; 904  :    return( uEICount );

	mov	ax, WORD PTR _uEICount$[ebp]
$L7794:

; 905  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnCountEntities ENDP
_TEXT	ENDS
PUBLIC	_fnValidateCardinality
PUBLIC	??_C@_08JNLF@KZOEE106?$AA@			; `string'
PUBLIC	??_C@_0FI@CILH@Browse?5view?5named?5?8KZOEE106?8?5to?5@ ; `string'
PUBLIC	??_C@_0L@FACN@?6Entity?3?5?7?$AA@		; `string'
PUBLIC	??_C@_0DB@KGNF@number?5of?5entities?5less?5than?5min@ ; `string'
PUBLIC	??_C@_0DF@FJKI@Marked?5as?5having?5a?5required?5chil@ ; `string'
EXTRN	_TraceLineS@8:NEAR
EXTRN	_IssueOE_Error@28:NEAR
EXTRN	_fnDropView@4:NEAR
EXTRN	_SetNameForView@16:NEAR
EXTRN	_strcpy:NEAR
EXTRN	_strcat:NEAR
;	COMDAT ??_C@_08JNLF@KZOEE106?$AA@
; File C:\10C\A\oe\KZOESOAA.C
_DATA	SEGMENT
??_C@_08JNLF@KZOEE106?$AA@ DB 'KZOEE106', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0FI@CILH@Browse?5view?5named?5?8KZOEE106?8?5to?5@
_DATA	SEGMENT
??_C@_0FI@CILH@Browse?5view?5named?5?8KZOEE106?8?5to?5@ DB 'Browse view n'
	DB	'amed ''KZOEE106'' to see what entity instance has the error. '
	DB	' Entity name = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@FACN@?6Entity?3?5?7?$AA@
_DATA	SEGMENT
??_C@_0L@FACN@?6Entity?3?5?7?$AA@ DB 0aH, 'Entity: ', 09H, 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DB@KGNF@number?5of?5entities?5less?5than?5min@
_DATA	SEGMENT
??_C@_0DB@KGNF@number?5of?5entities?5less?5than?5min@ DB 'number of entit'
	DB	'ies less than minimum cardinality', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DF@FJKI@Marked?5as?5having?5a?5required?5chil@
_DATA	SEGMENT
??_C@_0DF@FJKI@Marked?5as?5having?5a?5required?5chil@ DB 'Marked as havin'
	DB	'g a required child, but none found...', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntity$ = 12
_lpEntityInstance$ = 16
_bCount$ = 20
_lpNextHier$ = -4
_uMax$ = -264
_uMin$ = -268
_szRel$ = -260
_un$7827 = -272
_lpRPViewEntity$7834 = -280
_vErrView$7835 = -276
_lpScanViewEntity$7837 = -292
_nVEStopLevel$7838 = -284
_nVELevel$7839 = -288
_fnValidateCardinality PROC NEAR

; 934  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H

; 935  :    LPENTITYINSTANCE lpNextHier;
; 936  :    // If Created or Temporal Entity Instance, ensure that it and its twins
; 937  :    // do not exceed max cardinality.
; 938  :    //
; 939  :    // If Deleted or Excluded, make sure its twins >= Min cardinality.
; 940  :    //
; 941  :    zUSHORT        uMax, uMin;
; 942  :    zCHAR          szRel[ 255 ];
; 943  : 
; 944  :    uMax = lpViewEntity->uCardMax;

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	cx, WORD PTR [eax+221]
	mov	WORD PTR _uMax$[ebp], cx

; 945  :    uMin = lpViewEntity->uCardMin;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	ax, WORD PTR [edx+219]
	mov	WORD PTR _uMin$[ebp], ax

; 946  : 
; 947  :    if ( bCount && (uMax || uMin) )

	mov	ecx, DWORD PTR _bCount$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	$L7830
	mov	edx, DWORD PTR _uMax$[ebp]
	and	edx, 65535				; 0000ffffH
	test	edx, edx
	jne	SHORT $L7826
	mov	eax, DWORD PTR _uMin$[ebp]
	and	eax, 65535				; 0000ffffH
	test	eax, eax
	je	SHORT $L7830
$L7826:

; 949  :       zUSHORT  un = fnCountEntities( lpEntityInstance );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	call	_fnCountEntities
	add	esp, 4
	mov	WORD PTR _un$7827[ebp], ax

; 950  : 
; 951  :       if ( uMin && un < uMin )

	mov	edx, DWORD PTR _uMin$[ebp]
	and	edx, 65535				; 0000ffffH
	test	edx, edx
	je	SHORT $L7828
	mov	eax, DWORD PTR _un$7827[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _uMin$[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	eax, ecx
	jge	SHORT $L7828

; 952  :          return( -1 );

	or	ax, -1
	jmp	$L7820
$L7828:

; 953  :       else
; 954  :       if ( uMax && un > uMax )

	mov	edx, DWORD PTR _uMax$[ebp]
	and	edx, 65535				; 0000ffffH
	test	edx, edx
	je	SHORT $L7830
	mov	eax, DWORD PTR _un$7827[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _uMax$[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	eax, ecx
	jle	SHORT $L7830

; 955  :          return( 1 );

	mov	ax, 1
	jmp	$L7820
$L7830:

; 957  : 
; 958  : #if 1
; 959  :    // If there are no children for this entity instance, but the
; 960  :    // the view entity indicates there is at least one required
; 961  :    // child at the next level, scan the view entities for the
; 962  :    // immediate children of this entity and display error for
; 963  :    // the first missing required entity.
; 964  :    lpNextHier = zGETPTR( lpEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$[ebp], eax

; 965  :    if ( lpNextHier == 0 ||
; 966  :         lpNextHier->nLevel <= lpEntityInstance->nLevel )

	cmp	DWORD PTR _lpNextHier$[ebp], 0
	je	SHORT $L7833
	mov	ecx, DWORD PTR _lpNextHier$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	cmp	edx, ecx
	jg	$L7832
$L7833:

; 968  :       LPVIEWENTITY   lpRPViewEntity;
; 969  :       zVIEW          vErrView;
; 970  : 
; 971  :       lpRPViewEntity = fnGetRecurseParentEntity( lpViewEntity );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	call	_fnGetRecurseParentEntity
	add	esp, 4
	mov	DWORD PTR _lpRPViewEntity$7834[ebp], eax

; 972  :       if ( lpRPViewEntity->bRequiredChild )

	mov	eax, DWORD PTR _lpRPViewEntity$7834[ebp]
	mov	ecx, DWORD PTR [eax+239]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	je	$L7836

; 974  :          LPVIEWENTITY   lpScanViewEntity;
; 975  :          zSHORT         nVEStopLevel = lpRPViewEntity->nLevel;

	mov	edx, DWORD PTR _lpRPViewEntity$7834[ebp]
	mov	ax, WORD PTR [edx+215]
	mov	WORD PTR _nVEStopLevel$7838[ebp], ax

; 976  :          zSHORT         nVELevel = nVEStopLevel + 1;

	movsx	ecx, WORD PTR _nVEStopLevel$7838[ebp]
	add	ecx, 1
	mov	WORD PTR _nVELevel$7839[ebp], cx

; 977  : 
; 978  :          lpScanViewEntity = zGETPTR( lpRPViewEntity->hNextHier );

	mov	edx, DWORD PTR _lpRPViewEntity$7834[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanViewEntity$7837[ebp], eax
$L7842:

; 979  :          while ( lpScanViewEntity &&
; 980  :                  lpScanViewEntity->nLevel > nVEStopLevel )

	cmp	DWORD PTR _lpScanViewEntity$7837[ebp], 0
	je	$L7843
	mov	ecx, DWORD PTR _lpScanViewEntity$7837[ebp]
	movsx	edx, WORD PTR [ecx+215]
	movsx	eax, WORD PTR _nVEStopLevel$7838[ebp]
	cmp	edx, eax
	jle	$L7843

; 982  :             if ( lpScanViewEntity->nLevel == nVELevel &&
; 983  :                  lpScanViewEntity->uCardMin )

	mov	ecx, DWORD PTR _lpScanViewEntity$7837[ebp]
	movsx	edx, WORD PTR [ecx+215]
	movsx	eax, WORD PTR _nVELevel$7839[ebp]
	cmp	edx, eax
	jne	$L7844
	mov	ecx, DWORD PTR _lpScanViewEntity$7837[ebp]
	xor	edx, edx
	mov	dx, WORD PTR [ecx+219]
	test	edx, edx
	je	$L7844

; 985  :                CreateViewFromViewForTask( &vErrView, lpView, 0 );

	push	0
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _vErrView$7835[ebp]
	push	ecx
	call	_CreateViewFromViewForTask@12

; 986  :                fnEstablishViewForInstance( vErrView, 0, lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _vErrView$7835[ebp]
	push	eax
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 987  :                SetNameForView( vErrView, "KZOEE106", lpView, zLEVEL_TASK );

	push	2
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_08JNLF@KZOEE106?$AA@	; `string'
	mov	edx, DWORD PTR _vErrView$7835[ebp]
	push	edx
	call	_SetNameForView@16

; 988  :                TraceLineS( "Browse view named 'KZOEE106' to see what entity "
; 989  :                            "instance has the error.  Entity name = ",
; 990  :                            lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0FI@CILH@Browse?5view?5named?5?8KZOEE106?8?5to?5@ ; `string'
	call	_TraceLineS@8

; 991  : 
; 992  :                strcpy( szRel, "\nEntity: \t" );

	push	OFFSET FLAT:??_C@_0L@FACN@?6Entity?3?5?7?$AA@ ; `string'
	lea	ecx, DWORD PTR _szRel$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 993  :                strcat( szRel, lpScanViewEntity->szName );

	mov	edx, DWORD PTR _lpScanViewEntity$7837[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	lea	eax, DWORD PTR _szRel$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 994  : 
; 995  :                // "KZOEE106 - Rules violation"
; 996  :                IssueOE_Error( lpView, 8, 106,
; 997  :                               zMSGQ_OBJECT_CONSTRAINT_ERROR,
; 998  :                               0,
; 999  :                               "number of entities less than minimum cardinality",
; 1000 :                               szRel );

	lea	ecx, DWORD PTR _szRel$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0DB@KGNF@number?5of?5entities?5less?5than?5min@ ; `string'
	push	0
	push	300					; 0000012cH
	push	106					; 0000006aH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_IssueOE_Error@28

; 1001 : 
; 1002 :                fnDropView( vErrView );

	mov	eax, DWORD PTR _vErrView$7835[ebp]
	push	eax
	call	_fnDropView@4

; 1003 : 
; 1004 :                return( -2 );

	mov	ax, -2					; fffffffeH
	jmp	$L7820
$L7844:

; 1006 : 
; 1007 :             lpScanViewEntity = zGETPTR( lpScanViewEntity->hNextHier );

	mov	ecx, DWORD PTR _lpScanViewEntity$7837[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanViewEntity$7837[ebp], eax

; 1008 :          }

	jmp	$L7842
$L7843:

; 1009 : 
; 1010 :          strcpy( szRel, "\nEntity: \t" );

	push	OFFSET FLAT:??_C@_0L@FACN@?6Entity?3?5?7?$AA@ ; `string'
	lea	eax, DWORD PTR _szRel$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 1011 :          strcat( szRel, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _szRel$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 1012 : 
; 1013 :          CreateViewFromViewForTask( &vErrView, lpView, 0 );

	push	0
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _vErrView$7835[ebp]
	push	ecx
	call	_CreateViewFromViewForTask@12

; 1014 :          fnEstablishViewForInstance( vErrView, 0, lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _vErrView$7835[ebp]
	push	eax
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1015 :          SetNameForView( vErrView, "KZOEE106", lpView, zLEVEL_TASK );

	push	2
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_08JNLF@KZOEE106?$AA@	; `string'
	mov	edx, DWORD PTR _vErrView$7835[ebp]
	push	edx
	call	_SetNameForView@16

; 1016 :          TraceLineS( "Browse view named 'KZOEE106' to see what entity "
; 1017 :                      "instance has the error.  Entity name = ",
; 1018 :                      lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0FI@CILH@Browse?5view?5named?5?8KZOEE106?8?5to?5@ ; `string'
	call	_TraceLineS@8

; 1019 : 
; 1020 :          // "KZOEE106 - Rules violation"
; 1021 :          IssueOE_Error( lpView, 8, 106, 0,
; 1022 :                         zMSGQ_OBJECT_CONSTRAINT_ERROR,
; 1023 :                         "Marked as having a required child, but none found...",
; 1024 :                         szRel );

	lea	ecx, DWORD PTR _szRel$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0DF@FJKI@Marked?5as?5having?5a?5required?5chil@ ; `string'
	push	300					; 0000012cH
	push	0
	push	106					; 0000006aH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_IssueOE_Error@28

; 1025 :          return( -2 );

	mov	ax, -2					; fffffffeH
	jmp	SHORT $L7820
$L7836:

; 1027 : 
; 1028 :       return( 0 ); // no required children, all done...

	xor	ax, ax
	jmp	SHORT $L7820
$L7832:

; 1030 : #endif
; 1031 : 
; 1032 :    return( 0 );

	xor	ax, ax
$L7820:

; 1033 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnValidateCardinality ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BB@PAEO@?6Relationship?3?5?7?$AA@	; `string'
PUBLIC	??_C@_06OEBA@?5?$DM?9?9?$DO?5?$AA@		; `string'
PUBLIC	??_C@_0BN@JAL@maximum?5cardinality?5exceeded?$AA@ ; `string'
PUBLIC	_fnCheckChildEntities
EXTRN	_fnValidateInstanceAttributes:NEAR
;	COMDAT ??_C@_0BB@PAEO@?6Relationship?3?5?7?$AA@
; File C:\10C\A\oe\KZOESOAA.C
_DATA	SEGMENT
??_C@_0BB@PAEO@?6Relationship?3?5?7?$AA@ DB 0aH, 'Relationship: ', 09H, 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_06OEBA@?5?$DM?9?9?$DO?5?$AA@
_DATA	SEGMENT
??_C@_06OEBA@?5?$DM?9?9?$DO?5?$AA@ DB ' <--> ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@JAL@maximum?5cardinality?5exceeded?$AA@
_DATA	SEGMENT
??_C@_0BN@JAL@maximum?5cardinality?5exceeded?$AA@ DB 'maximum cardinality'
	DB	' exceeded', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpEntityInstance$ = 12
_bChkAllEntitiesAtChildLvl$ = 16
_nStopLevel$ = -8
_nCurrLevel$ = -16
_nEntityStopLevel$ = -292
_nEntityLevel$ = -288
_nCardinalityViolation$ = -276
_lpWrkViewEntity1$ = -4
_lpWrkViewEntity2$ = -280
_lpWrkEI1$ = -12
_bCount$ = -284
_szRel$ = -272
_lpRPViewEntity$7874 = -300
_lpViewEntity$7875 = -296
_lpNextHier$7877 = -304
_nRC$7895 = -308
_fnCheckChildEntities PROC NEAR

; 1061 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 312				; 00000138H

; 1062 :    zSHORT            nStopLevel;
; 1063 :    zSHORT            nCurrLevel;
; 1064 :    zSHORT            nEntityStopLevel;
; 1065 :    zSHORT            nEntityLevel;
; 1066 :    zSHORT            nCardinalityViolation;
; 1067 :    LPVIEWENTITY      lpWrkViewEntity1;
; 1068 :    LPVIEWENTITY      lpWrkViewEntity2;
; 1069 :    LPENTITYINSTANCE  lpWrkEI1;
; 1070 : // LPENTITYINSTANCE  lpWrkEI2;
; 1071 :    zBOOL             bCount = TRUE;

	mov	BYTE PTR _bCount$[ebp], 1

; 1072 :    zCHAR             szRel[ 255 ];
; 1073 : 
; 1074 : 
; 1075 :    // Scan through all the child instances, looking for attributes,
; 1076 :    // marked required and not marked hidden, that have a 'NULL' value.
; 1077 :    lpWrkEI1         = *lpEntityInstance;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _lpWrkEI1$[ebp], ecx

; 1078 :    lpWrkViewEntity1 = zGETPTR( lpWrkEI1->hViewEntity );

	mov	edx, DWORD PTR _lpWrkEI1$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewEntity1$[ebp], eax

; 1079 :    nEntityStopLevel = lpWrkViewEntity1->nLevel;

	mov	ecx, DWORD PTR _lpWrkViewEntity1$[ebp]
	mov	dx, WORD PTR [ecx+215]
	mov	WORD PTR _nEntityStopLevel$[ebp], dx

; 1080 :    nStopLevel       = lpWrkEI1->nLevel;

	mov	eax, DWORD PTR _lpWrkEI1$[ebp]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR _nStopLevel$[ebp], cx

; 1081 :    nCurrLevel       = nStopLevel + 1;

	movsx	edx, WORD PTR _nStopLevel$[ebp]
	add	edx, 1
	mov	WORD PTR _nCurrLevel$[ebp], dx

; 1082 :    lpWrkEI1         = zGETPTR( lpWrkEI1->hNextHier );

	mov	eax, DWORD PTR _lpWrkEI1$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEI1$[ebp], eax

; 1083 : 
; 1084 :    // First child ViewEntity
; 1085 :    lpWrkViewEntity2 = zGETPTR( lpWrkViewEntity1->hNextHier );

	mov	edx, DWORD PTR _lpWrkViewEntity1$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewEntity2$[ebp], eax

; 1086 :    nEntityLevel = lpWrkViewEntity2->nLevel;

	mov	ecx, DWORD PTR _lpWrkViewEntity2$[ebp]
	mov	dx, WORD PTR [ecx+215]
	mov	WORD PTR _nEntityLevel$[ebp], dx
$L7872:

; 1087 : 
; 1088 :    while ( lpWrkEI1 && lpWrkEI1->nLevel > nStopLevel )

	cmp	DWORD PTR _lpWrkEI1$[ebp], 0
	je	$L7873
	mov	eax, DWORD PTR _lpWrkEI1$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStopLevel$[ebp]
	cmp	ecx, edx
	jle	$L7873

; 1090 :       LPVIEWENTITY lpRPViewEntity;
; 1091 :       LPVIEWENTITY lpViewEntity;
; 1092 : 
; 1093 :       if ( lpWrkEI1->u.nInd.bHidden == FALSE )

	mov	eax, DWORD PTR _lpWrkEI1$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	$L7876

; 1095 :          LPENTITYINSTANCE lpNextHier;
; 1096 : 
; 1097 :          lpViewEntity = zGETPTR( lpWrkEI1->hViewEntity );

	mov	edx, DWORD PTR _lpWrkEI1$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$7875[ebp], eax

; 1098 : 
; 1099 :          // Look for possible missing entities that maybe required.
; 1100 :          // Only check one level down ...
; 1101 :          if ( bChkAllEntitiesAtChildLvl &&
; 1102 :               lpViewEntity != lpWrkViewEntity2 )

	mov	ecx, DWORD PTR _bChkAllEntitiesAtChildLvl$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	$L7882
	mov	edx, DWORD PTR _lpViewEntity$7875[ebp]
	cmp	edx, DWORD PTR _lpWrkViewEntity2$[ebp]
	je	$L7882
$L7881:

; 1104 :             while ( lpWrkViewEntity2 &&
; 1105 :                     lpWrkViewEntity2->nHierNbr < lpViewEntity->nHierNbr )

	cmp	DWORD PTR _lpWrkViewEntity2$[ebp], 0
	je	$L7882
	mov	eax, DWORD PTR _lpWrkViewEntity2$[ebp]
	movsx	ecx, WORD PTR [eax+217]
	mov	edx, DWORD PTR _lpViewEntity$7875[ebp]
	movsx	eax, WORD PTR [edx+217]
	cmp	ecx, eax
	jge	$L7882

; 1107 :                if ( lpWrkViewEntity2->nLevel == nEntityLevel &&
; 1108 :                     lpWrkViewEntity2->uCardMin )

	mov	ecx, DWORD PTR _lpWrkViewEntity2$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	movsx	eax, WORD PTR _nEntityLevel$[ebp]
	cmp	edx, eax
	jne	$L7883
	mov	ecx, DWORD PTR _lpWrkViewEntity2$[ebp]
	xor	edx, edx
	mov	dx, WORD PTR [ecx+219]
	test	edx, edx
	je	$L7883

; 1110 :                   // create a string which describes the relationship:
; 1111 :                   strcpy( szRel, "\nRelationship: \t" );

	push	OFFSET FLAT:??_C@_0BB@PAEO@?6Relationship?3?5?7?$AA@ ; `string'
	lea	eax, DWORD PTR _szRel$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 1112 :                   strcat( szRel, lpWrkViewEntity1->szName );

	mov	ecx, DWORD PTR _lpWrkViewEntity1$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _szRel$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 1113 :                   strcat( szRel, " <--> " );

	push	OFFSET FLAT:??_C@_06OEBA@?5?$DM?9?9?$DO?5?$AA@ ; `string'
	lea	eax, DWORD PTR _szRel$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 1114 :                   strcat( szRel, lpWrkViewEntity2->szName );

	mov	ecx, DWORD PTR _lpWrkViewEntity2$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _szRel$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 1115 : 
; 1116 :                   // "KZOEE106 - Rules violation"
; 1117 : 
; 1118 :                   IssueOE_Error( lpView, 8, 106, 0,
; 1119 :                                  zMSGQ_OBJECT_CONSTRAINT_ERROR,
; 1120 :                                  "number of entities less than minimum cardinality",
; 1121 :                                  szRel );

	lea	eax, DWORD PTR _szRel$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0DB@KGNF@number?5of?5entities?5less?5than?5min@ ; `string'
	push	300					; 0000012cH
	push	0
	push	106					; 0000006aH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_IssueOE_Error@28

; 1122 :                   return( zCONSTRAINT_VIOLATION );

	mov	ax, -12					; fffffff4H
	jmp	$L7857
$L7883:

; 1124 : 
; 1125 :                lpWrkViewEntity2 = zGETPTR( lpWrkViewEntity2->hNextHier );

	mov	edx, DWORD PTR _lpWrkViewEntity2$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewEntity2$[ebp], eax

; 1126 :             }

	jmp	$L7881
$L7882:

; 1128 : 
; 1129 :          if ( lpWrkViewEntity2 &&
; 1130 :               lpWrkViewEntity2->nHierNbr == lpViewEntity->nHierNbr )

	cmp	DWORD PTR _lpWrkViewEntity2$[ebp], 0
	je	SHORT $L7887
	mov	ecx, DWORD PTR _lpWrkViewEntity2$[ebp]
	movsx	edx, WORD PTR [ecx+217]
	mov	eax, DWORD PTR _lpViewEntity$7875[ebp]
	movsx	ecx, WORD PTR [eax+217]
	cmp	edx, ecx
	jne	SHORT $L7887

; 1132 :             lpWrkViewEntity2 = zGETPTR( lpWrkViewEntity2->hNextHier );

	mov	edx, DWORD PTR _lpWrkViewEntity2$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewEntity2$[ebp], eax
$L7887:

; 1134 : 
; 1135 :          if ( fnValidateInstanceAttributes( lpView, lpViewEntity, lpWrkEI1 ) )

	mov	ecx, DWORD PTR _lpWrkEI1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$7875[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnValidateInstanceAttributes
	add	esp, 12					; 0000000cH
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L7889

; 1136 :             return( zCONSTRAINT_VIOLATION );

	mov	ax, -12					; fffffff4H
	jmp	$L7857
$L7889:

; 1137 : 
; 1138 :          // Even though we have passed the cardinality check at the
; 1139 :          // 'twin' level, we need to call this again for possible
; 1140 :          // missing children of the current instance ...
; 1141 :          nCardinalityViolation = fnValidateCardinality( lpView,
; 1142 :                                                         lpViewEntity,
; 1143 :                                                         lpWrkEI1, bCount );

	mov	dl, BYTE PTR _bCount$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWrkEI1$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$7875[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnValidateCardinality
	add	esp, 16					; 00000010H
	mov	WORD PTR _nCardinalityViolation$[ebp], ax

; 1144 :          bCount = 0;

	mov	BYTE PTR _bCount$[ebp], 0

; 1145 :          if ( nCardinalityViolation )

	movsx	eax, WORD PTR _nCardinalityViolation$[ebp]
	test	eax, eax
	je	$L7890

; 1147 :             // "KZOEE106 - Rules violation"
; 1148 :             if ( nCardinalityViolation != -2 )

	movsx	ecx, WORD PTR _nCardinalityViolation$[ebp]
	cmp	ecx, -2					; fffffffeH
	je	SHORT $L7891

; 1150 : 
; 1151 :                strcpy( szRel, "\nEntity: \t" );

	push	OFFSET FLAT:??_C@_0L@FACN@?6Entity?3?5?7?$AA@ ; `string'
	lea	edx, DWORD PTR _szRel$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 1152 :                strcat( szRel, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$7875[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	lea	ecx, DWORD PTR _szRel$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 1153 : 
; 1154 :                IssueOE_Error( lpView, 8, 106, 0,
; 1155 :                               zMSGQ_OBJECT_CONSTRAINT_ERROR,
; 1156 :                               (nCardinalityViolation < 0 ?
; 1157 :                                 "number of entities less than minimum cardinality" :
; 1158 :                                 "maximum cardinality exceeded"),
; 1159 :                               szRel );

	movsx	edx, WORD PTR _nCardinalityViolation$[ebp]
	test	edx, edx
	jge	SHORT $L9895
	mov	DWORD PTR -312+[ebp], OFFSET FLAT:??_C@_0DB@KGNF@number?5of?5entities?5less?5than?5min@ ; `string'
	jmp	SHORT $L9896
$L9895:
	mov	DWORD PTR -312+[ebp], OFFSET FLAT:??_C@_0BN@JAL@maximum?5cardinality?5exceeded?$AA@ ; `string'
$L9896:
	lea	eax, DWORD PTR _szRel$[ebp]
	push	eax
	mov	ecx, DWORD PTR -312+[ebp]
	push	ecx
	push	300					; 0000012cH
	push	0
	push	106					; 0000006aH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_IssueOE_Error@28
$L7891:

; 1161 : 
; 1162 :             return( zCONSTRAINT_VIOLATION );

	mov	ax, -12					; fffffff4H
	jmp	$L7857
$L7890:

; 1164 : 
; 1165 :          // Recursive Parent entity only used to determine if there are any
; 1166 :          // Required children ...
; 1167 :          lpRPViewEntity = fnGetRecurseParentEntity( lpViewEntity );

	mov	eax, DWORD PTR _lpViewEntity$7875[ebp]
	push	eax
	call	_fnGetRecurseParentEntity
	add	esp, 4
	mov	DWORD PTR _lpRPViewEntity$7874[ebp], eax

; 1168 :          lpNextHier = zGETPTR( lpWrkEI1->hNextHier );

	mov	ecx, DWORD PTR _lpWrkEI1$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$7877[ebp], eax

; 1169 :          if ( lpNextHier && lpNextHier->nLevel > nCurrLevel )

	cmp	DWORD PTR _lpNextHier$7877[ebp], 0
	je	SHORT $L7894
	mov	eax, DWORD PTR _lpNextHier$7877[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nCurrLevel$[ebp]
	cmp	ecx, edx
	jle	SHORT $L7894

; 1171 :             zSHORT nRC;
; 1172 : 
; 1173 :             nRC = fnCheckChildEntities( lpView, &lpWrkEI1,
; 1174 :                                         (zBOOL) lpRPViewEntity->bRequiredChild );

	mov	eax, DWORD PTR _lpRPViewEntity$7874[ebp]
	mov	ecx, DWORD PTR [eax+239]
	shr	ecx, 9
	and	ecx, 1
	push	ecx
	lea	edx, DWORD PTR _lpWrkEI1$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnCheckChildEntities
	add	esp, 12					; 0000000cH
	mov	WORD PTR _nRC$7895[ebp], ax

; 1175 :             bCount = TRUE;

	mov	BYTE PTR _bCount$[ebp], 1

; 1176 :             if ( nRC )

	movsx	ecx, WORD PTR _nRC$7895[ebp]
	test	ecx, ecx
	je	SHORT $L7897

; 1177 :                return( nRC );

	mov	ax, WORD PTR _nRC$7895[ebp]
	jmp	$L7857
$L7897:

; 1178 : 
; 1179 :             continue;

	jmp	$L7872
$L7894:

; 1183 :             // If different entity type, turn on the count flag ...
; 1184 :             if ( lpNextHier && lpWrkEI1->hViewEntity != lpNextHier->hViewEntity )

	cmp	DWORD PTR _lpNextHier$7877[ebp], 0
	je	SHORT $L7899
	mov	edx, DWORD PTR _lpWrkEI1$[ebp]
	mov	eax, DWORD PTR _lpNextHier$7877[ebp]
	mov	ecx, DWORD PTR [edx+2]
	cmp	ecx, DWORD PTR [eax+2]
	je	SHORT $L7899

; 1185 :                bCount = TRUE;

	mov	BYTE PTR _bCount$[ebp], 1
$L7899:

; 1186 : 
; 1187 :             lpWrkEI1 = lpNextHier;

	mov	edx, DWORD PTR _lpNextHier$7877[ebp]
	mov	DWORD PTR _lpWrkEI1$[ebp], edx

; 1190 :       else

	jmp	SHORT $L7900
$L7876:

; 1191 :          lpWrkEI1 = zGETPTR( lpWrkEI1->hNextHier );

	mov	eax, DWORD PTR _lpWrkEI1$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEI1$[ebp], eax
$L7900:

; 1192 :    }

	jmp	$L7872
$L7873:

; 1193 : 
; 1194 :    // Look for possible missing entities that maybe required.
; 1195 :    if ( bChkAllEntitiesAtChildLvl && lpWrkViewEntity2 &&
; 1196 :         lpWrkViewEntity2->nLevel > nEntityStopLevel  )

	mov	edx, DWORD PTR _bChkAllEntitiesAtChildLvl$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	$L7905
	cmp	DWORD PTR _lpWrkViewEntity2$[ebp], 0
	je	$L7905
	mov	eax, DWORD PTR _lpWrkViewEntity2$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	movsx	edx, WORD PTR _nEntityStopLevel$[ebp]
	cmp	ecx, edx
	jle	$L7905
$L7904:

; 1198 :       while ( lpWrkViewEntity2 &&
; 1199 :               lpWrkViewEntity2->nLevel > nEntityStopLevel )

	cmp	DWORD PTR _lpWrkViewEntity2$[ebp], 0
	je	$L7905
	mov	eax, DWORD PTR _lpWrkViewEntity2$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	movsx	edx, WORD PTR _nEntityStopLevel$[ebp]
	cmp	ecx, edx
	jle	$L7905

; 1201 :          if ( lpWrkViewEntity2->nLevel == nEntityLevel &&
; 1202 :               lpWrkViewEntity2->uCardMin )

	mov	eax, DWORD PTR _lpWrkViewEntity2$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	movsx	edx, WORD PTR _nEntityLevel$[ebp]
	cmp	ecx, edx
	jne	$L7906
	mov	eax, DWORD PTR _lpWrkViewEntity2$[ebp]
	xor	ecx, ecx
	mov	cx, WORD PTR [eax+219]
	test	ecx, ecx
	je	SHORT $L7906

; 1204 :             // Create a string which describes the relationship.
; 1205 :             strcpy( szRel, "\nRelationship: \t" );

	push	OFFSET FLAT:??_C@_0BB@PAEO@?6Relationship?3?5?7?$AA@ ; `string'
	lea	edx, DWORD PTR _szRel$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 1206 :             strcat( szRel, lpWrkViewEntity1->szName);

	mov	eax, DWORD PTR _lpWrkViewEntity1$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	lea	ecx, DWORD PTR _szRel$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 1207 :             strcat( szRel, " <--> " );

	push	OFFSET FLAT:??_C@_06OEBA@?5?$DM?9?9?$DO?5?$AA@ ; `string'
	lea	edx, DWORD PTR _szRel$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 1208 :             strcat( szRel, lpWrkViewEntity2->szName);

	mov	eax, DWORD PTR _lpWrkViewEntity2$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	lea	ecx, DWORD PTR _szRel$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 1209 : 
; 1210 :             // "KZOEE106 - Rules violation"
; 1211 :             IssueOE_Error( lpView, 8, 106, 0,
; 1212 :                            zMSGQ_OBJECT_CONSTRAINT_ERROR,
; 1213 :                            "number of entities less than minimum cardinality",
; 1214 :                            szRel );

	lea	edx, DWORD PTR _szRel$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0DB@KGNF@number?5of?5entities?5less?5than?5min@ ; `string'
	push	300					; 0000012cH
	push	0
	push	106					; 0000006aH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_IssueOE_Error@28

; 1215 :             return( zCONSTRAINT_VIOLATION );

	mov	ax, -12					; fffffff4H
	jmp	SHORT $L7857
$L7906:

; 1217 : 
; 1218 :          lpWrkViewEntity2 = zGETPTR( lpWrkViewEntity2->hNextHier );

	mov	ecx, DWORD PTR _lpWrkViewEntity2$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewEntity2$[ebp], eax

; 1219 :       }

	jmp	$L7904
$L7905:

; 1221 : 
; 1222 :    *lpEntityInstance = lpWrkEI1;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR _lpWrkEI1$[ebp]
	mov	DWORD PTR [eax], ecx

; 1223 :    return( 0 );

	xor	ax, ax
$L7857:

; 1224 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnCheckChildEntities ENDP
_TEXT	ENDS
PUBLIC	_fnOEAcceptConstraints
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntityCsr$ = 12
_bCheckChildEntities$ = 16
_lpEntityInstance$ = -20
_lpNextHier$ = -8
_lpViewSubobject$ = -16
_lpViewEntity$ = -28
_lpRecursViewEntity$ = -32
_lpViewCsr$ = -4
_nCardinalityViolation$ = -24
_nRC$ = -12
_fnOEAcceptConstraints PROC NEAR

; 1254 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 1255 :    LPENTITYINSTANCE  lpEntityInstance;
; 1256 :    LPENTITYINSTANCE  lpNextHier;
; 1257 :    LPVIEWSUBOBJECT   lpViewSubobject;
; 1258 :    LPVIEWENTITY      lpViewEntity;
; 1259 :    LPVIEWENTITY      lpRecursViewEntity = 0;

	mov	DWORD PTR _lpRecursViewEntity$[ebp], 0

; 1260 :    LPVIEWCSR         lpViewCsr;
; 1261 :    zSHORT            nCardinalityViolation;
; 1262 :    zSHORT            nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1263 : 
; 1264 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1265 :    lpViewEntity     = zGETPTR( lpViewEntityCsr->hViewEntity );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1266 :    lpViewCsr        = zGETPTR( lpViewEntityCsr->hViewCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1267 :    lpViewSubobject  = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$[ebp], eax

; 1268 : 
; 1269 :    if ( fnValidateInstanceAttributes( lpView, lpViewEntity,
; 1270 :                                       lpEntityInstance ) )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnValidateInstanceAttributes
	add	esp, 12					; 0000000cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L7927

; 1272 :       return( zCONSTRAINT_VIOLATION );

	mov	ax, -12					; fffffff4H
	jmp	$L7914
$L7927:

; 1274 : 
; 1275 :    // If the lpViewEntityCsr is the Root cursor of a subobject view, then
; 1276 :    // use the RecursiveViewEntity when validating min/max cardinality.
; 1277 :    if ( lpViewSubobject )

	cmp	DWORD PTR _lpViewSubobject$[ebp], 0
	je	SHORT $L7931
$L7930:

; 1279 :       while ( lpViewSubobject )

	cmp	DWORD PTR _lpViewSubobject$[ebp], 0
	je	SHORT $L7931

; 1281 :          if ( zGETPTR( lpViewSubobject->hRootCsr ) == lpViewEntityCsr &&
; 1282 :               lpViewSubobject->hRecursViewEntity )

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	jne	SHORT $L7933
	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	cmp	DWORD PTR [edx+36], 0
	je	SHORT $L7933

; 1284 :             lpRecursViewEntity = zGETPTR( lpViewSubobject->hRecursViewEntity );

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursViewEntity$[ebp], eax

; 1285 :             break;

	jmp	SHORT $L7931
$L7933:

; 1287 : 
; 1288 :          lpViewSubobject = zGETPTR( lpViewSubobject->hNextViewSubobject );

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$[ebp], eax

; 1289 :       }

	jmp	SHORT $L7930
$L7931:

; 1291 : 
; 1292 :    if ( (nCardinalityViolation =
; 1293 :                fnValidateCardinality( lpView,
; 1294 :                                       ( lpRecursViewEntity ?
; 1295 :                                           lpRecursViewEntity : lpViewEntity ),
; 1296 :                                        lpEntityInstance, 1 ) ) != 0 )

	cmp	DWORD PTR _lpRecursViewEntity$[ebp], 0
	je	SHORT $L9898
	mov	ecx, DWORD PTR _lpRecursViewEntity$[ebp]
	mov	DWORD PTR -36+[ebp], ecx
	jmp	SHORT $L9899
$L9898:
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	DWORD PTR -36+[ebp], edx
$L9899:
	push	1
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR -36+[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnValidateCardinality
	add	esp, 16					; 00000010H
	mov	WORD PTR _nCardinalityViolation$[ebp], ax
	movsx	eax, WORD PTR _nCardinalityViolation$[ebp]
	test	eax, eax
	je	SHORT $L7936

; 1298 : #if 0
; 1299 :       zCHAR szRel[ 255 ];
; 1300 : 
; 1301 :       // "KZOEE106 - Rules violation"
; 1302 :       if ( nCardinalityViolation != -2 )
; 1303 : 
; 1304 :          strcpy( szRel, "\nEntity: \t" );
; 1305 :          strcat( szRel, lpViewEntity->szName );
; 1306 : 
; 1307 :          IssueOE_Error( lpView, 8, 106, 0,
; 1308 :                         zMSGQ_OBJECT_CONSTRAINT_ERROR,
; 1309 :                         (nCardinalityViolation < 0 ?
; 1310 :                            "number of entities less than minimum cardinality" :
; 1311 :                            "maximum cardinality exceeded"),
; 1312 :                         szRel );
; 1313 : #endif
; 1314 : 
; 1315 :       return( zCONSTRAINT_VIOLATION );

	mov	ax, -12					; fffffff4H
	jmp	SHORT $L7914
$L7936:

; 1317 : 
; 1318 : #if 1
; 1319 :    lpNextHier = zGETPTR( lpEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$[ebp], eax

; 1320 :    if ( bCheckChildEntities &&
; 1321 :         lpNextHier &&
; 1322 :         lpNextHier->nLevel == ( lpEntityInstance->nLevel + 1 ) )

	mov	eax, DWORD PTR _bCheckChildEntities$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L7938
	cmp	DWORD PTR _lpNextHier$[ebp], 0
	je	SHORT $L7938
	mov	ecx, DWORD PTR _lpNextHier$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	add	ecx, 1
	cmp	edx, ecx
	jne	SHORT $L7938

; 1324 :       nRC = fnCheckChildEntities( lpView, &lpEntityInstance,
; 1325 :                                   (zBOOL) lpViewEntity->bRequiredChild );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+239]
	shr	eax, 9
	and	eax, 1
	push	eax
	lea	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnCheckChildEntities
	add	esp, 12					; 0000000cH
	mov	WORD PTR _nRC$[ebp], ax
$L7938:

; 1327 : #endif
; 1328 : 
; 1329 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7914:

; 1330 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnOEAcceptConstraints ENDP
_TEXT	ENDS
PUBLIC	_fnSpawnIncludeSubobject
EXTRN	_fnSetUpdateIndicator:NEAR
EXTRN	_fnDeleteEntity:NEAR
EXTRN	_fnExcludeEntity:NEAR
EXTRN	_fnSpawnCreateEntity:NEAR
EXTRN	_fnReclaimHiddenInstances@4:NEAR
EXTRN	_fnInstanceVersioned:NEAR
EXTRN	_fnInvokeECEOperation:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -92
_lpViewOI$ = -76
_lpViewOD$ = -12
_lpViewCsr$ = -4
_lpWrkViewCsr$ = -44
_lpViewEntity$ = -32
_lpViewEntityCsr$ = -88
_lpWrkViewEntityCsr$ = -84
_lpPrevVsn$ = -40
_lpOldInstance$ = -56
_lpStartOldInstance$ = -28
_lpStartNewInstance$ = -52
_lpLastNewInstance$ = -60
_lpFirstIncluded$ = -68
_lpLastIncluded$ = -36
_lpNewInstance$ = -20
_lpWrkInstance$ = -8
_lpDupInstance$ = -80
_lpOldRecord$ = -24
_vWorkView$ = -48
_bStillPrevVsn$ = -72
_nStartLevel$ = -64
_nRC$ = -16
_n$7975 = -96
_lpWork$7994 = -100
_nUpdated$8019 = -108
_nUpdatedFile$8020 = -104
_lpPrevVsn$8047 = -112
_hOldInstance$8051 = -120
_hNewInstance$8053 = -116
_lpParent$8060 = -124
_lpNextVsn$8095 = -132
_lpNewViewEntity$8096 = -128
_lpLinked$8128 = -136
_lpPrevLinked$8129 = -140
_nUpdated$8140 = -148
_nUpdatedFile$8141 = -144
_lpViewEntity$8145 = -156
_lpViewEntityCsr$8146 = -160
_lpLastIncluded_NextHier$8147 = -152
_lpWorkViewCsr$8156 = -164
_AcceptSubobject@8 PROC NEAR

; 1351 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 164				; 000000a4H

; 1352 :    LPTASK           lpCurrentTask;
; 1353 :    LPVIEWOI         lpViewOI;
; 1354 :    LPVIEWOD         lpViewOD;
; 1355 :    LPVIEWCSR        lpViewCsr;
; 1356 :    LPVIEWCSR        lpWrkViewCsr;
; 1357 :    LPVIEWENTITY     lpViewEntity;
; 1358 :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 1359 :    LPVIEWENTITYCSR  lpWrkViewEntityCsr;
; 1360 :    LPENTITYINSTANCE lpPrevVsn;
; 1361 :    LPENTITYINSTANCE lpOldInstance;
; 1362 :    LPENTITYINSTANCE lpStartOldInstance;
; 1363 :    LPENTITYINSTANCE lpStartNewInstance;
; 1364 :    LPENTITYINSTANCE lpLastNewInstance;
; 1365 :    LPENTITYINSTANCE lpFirstIncluded;
; 1366 :    LPENTITYINSTANCE lpLastIncluded;
; 1367 :    LPENTITYINSTANCE lpNewInstance;
; 1368 :    LPENTITYINSTANCE lpWrkInstance;
; 1369 :    LPENTITYINSTANCE lpDupInstance;
; 1370 :    zPVOID           lpOldRecord;
; 1371 :    zVIEW            vWorkView;
; 1372 :    zBOOL            bStillPrevVsn;
; 1373 :    zSHORT           nStartLevel;
; 1374 :    zSHORT           nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1375 : 
; 1376 :    // Validate parameters.
; 1377 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 1378 :                                       &lpViewEntity,
; 1379 :                                       &lpViewEntityCsr,
; 1380 :                                       iAcceptSubobject,
; 1381 :                                       lpView,
; 1382 :                                       cpcEntityName, 0 ) )

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	103					; 00000067H
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateInstanceParameters
	add	esp, 28					; 0000001cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L7968

; 1384 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7944
$L7968:

; 1386 : 
; 1387 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1388 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1389 :    lpViewOD  = zGETPTR( lpView->hViewOD );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 1390 : 
; 1391 :    // If the view is ReadOnly, return with an error if any versioned
; 1392 :    // instances exist, else return success.
; 1393 :    if ( lpView->bReadOnly )

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	shr	ecx, 6
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7972

; 1395 :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1396 :       if ( lpViewOI->nVersionedInstances )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	movsx	eax, WORD PTR [edx+22]
	test	eax, eax
	je	SHORT $L7973

; 1398 :          nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 1399 :          // "KZOEE119 - Invalid View, View is Read Only"
; 1400 :          fnIssueCoreError( lpCurrentTask, lpView, 8, 119, 0, cpcEntityName, 0 );

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	push	0
	push	119					; 00000077H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH
$L7973:

; 1402 : 
; 1403 :       fnOperationReturn( iAcceptSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	103					; 00000067H
	call	_fnOperationReturn
	add	esp, 8

; 1404 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7944
$L7972:

; 1406 : 
; 1407 : #ifdef __ACTIVATE_CONSTRAINTS__
; 1408 :    // If there is an Entity Constraint for accept, see if it has
; 1409 :    // any objections about continuing.
; 1410 :    if ( lpViewEntity->bAcceptConstraint )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+239]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	je	SHORT $L7976

; 1412 :       zSHORT n;
; 1413 : 
; 1414 :       n = fnInvokeECEOperation( lpView, lpViewEntity, lpCurrentTask,
; 1415 :                                 zECE_ACCEPT, 0 );

	push	0
	push	1
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnInvokeECEOperation
	add	esp, 20					; 00000014H
	mov	WORD PTR _n$7975[ebp], ax

; 1416 :       // If constraint handler doesn't like something, get out.
; 1417 :       if ( n )

	movsx	ecx, WORD PTR _n$7975[ebp]
	test	ecx, ecx
	je	SHORT $L7976

; 1419 :          fnOperationReturn( iAcceptSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	103					; 00000067H
	call	_fnOperationReturn
	add	esp, 8

; 1420 :          return( n );

	mov	ax, WORD PTR _n$7975[ebp]
	jmp	$L7944
$L7976:

; 1423 : 
; 1424 :    if ( fnOEAcceptConstraints( lpView, lpViewEntityCsr, 1 ) )

	push	1
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnOEAcceptConstraints
	add	esp, 12					; 0000000cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L7977

; 1426 :       fnOperationReturn( iAcceptSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	103					; 00000067H
	call	_fnOperationReturn
	add	esp, 8

; 1427 :       return( zCONSTRAINT_VIOLATION );

	mov	ax, -12					; fffffff4H
	jmp	$L7944
$L7977:

; 1429 : #endif
; 1430 : 
; 1431 :    // Get instance on which to start.
; 1432 :    lpStartNewInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartNewInstance$[ebp], eax

; 1433 : 
; 1434 :    // Get starting level for Accept.
; 1435 :    nStartLevel = lpViewEntityCsr->nLevel;

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	cx, WORD PTR [eax+22]
	mov	WORD PTR _nStartLevel$[ebp], cx
$L7980:

; 1436 : 
; 1437 : #if 0   // Gig, debugging, for all new instances, see if a record
; 1438 :         // match can be found which is not linked!!!!
; 1439 :    lpNewInstance = lpStartNewInstance;
; 1440 :    do
; 1441 :    {
; 1442 :       lpWrkInstance = zGETPTR( lpNewInstance->hNextHier );
; 1443 :       while ( lpWrkInstance && lpWrkInstance->nLevel > nStartLevel )
; 1444 :       {
; 1445 :          if ( lpWrkInstance->hPersistRecord == lpNewInstance->hPersistRecord )
; 1446 :          {
; 1447 :             LPENTITYINSTANCE lpPrevVsn;
; 1448 : 
; 1449 :             for ( lpPrevVsn = lpNewInstance;
; 1450 :                   lpPrevVsn;
; 1451 :                   lpPrevVsn = zGETPTR( lpPrevVsn->hPrevVsn ) )
; 1452 :             {
; 1453 :                lpDupInstance = zGETPTR( lpPrevVsn->hNextLinked );
; 1454 :                while ( lpDupInstance && lpDupInstance != lpPrevVsn )
; 1455 :                {
; 1456 :                   if ( lpDupInstance == lpWrkInstance )
; 1457 :                      break;
; 1458 : 
; 1459 :                   lpDupInstance = zGETPTR( lpDupInstance->hNextLinked );
; 1460 :                }
; 1461 : 
; 1462 :                if ( lpDupInstance != lpWrkInstance )
; 1463 :                {
; 1464 :                   SysMessageBox( "ERROR BEFORE ACCEPT",
; 1465 :                                  "Record match found in non-linked instance", 1 );
; 1466 :                }
; 1467 :             }
; 1468 :          }
; 1469 : 
; 1470 :          lpWrkInstance = zGETPTR( lpWrkInstance->hNextHier );
; 1471 :       }
; 1472 : 
; 1473 :       lpNewInstance = zGETPTR( lpNewInstance->hNextHier );
; 1474 : 
; 1475 :    } while ( lpNewInstance && lpNewInstance->nLevel > nStartLevel );
; 1476 : 
; 1477 : #endif
; 1478 : 
; 1479 :    while ( lpStartNewInstance->hNextVsn )

	mov	edx, DWORD PTR _lpStartNewInstance$[ebp]
	cmp	DWORD PTR [edx+34], 0
	je	SHORT $L7981

; 1480 :       lpStartNewInstance = zGETPTR( lpStartNewInstance->hNextVsn );

	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartNewInstance$[ebp], eax
	jmp	SHORT $L7980
$L7981:

; 1481 : 
; 1482 :    // If the entity instance is not versioned, return a logic error.
; 1483 :    lpPrevVsn = zGETPTR( lpStartNewInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$[ebp], eax

; 1484 :    if ( lpStartNewInstance->u.nInd.bTemporal == FALSE &&
; 1485 :         (lpPrevVsn == 0 || lpPrevVsn->u.nInd.bPrevVsnRoot == FALSE) )

	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7984
	cmp	DWORD PTR _lpPrevVsn$[ebp], 0
	je	SHORT $L7985
	mov	eax, DWORD PTR _lpPrevVsn$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7984
$L7985:

; 1487 :       fnOperationReturn( iAcceptSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	103					; 00000067H
	call	_fnOperationReturn
	add	esp, 8

; 1488 :       return( 0 );

	xor	ax, ax
	jmp	$L7944
$L7984:

; 1490 : 
; 1491 :    // Check to make sure none of this instance's descendents are
; 1492 :    // already versioned. This is true when lpPrevVsn points to a
; 1493 :    // versioned root instance.
; 1494 :    lpNewInstance = zGETPTR( lpStartNewInstance->hNextHier );

	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 1495 :    if ( lpViewOI->nVersionedInstances > 1 )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	movsx	eax, WORD PTR [edx+22]
	cmp	eax, 1
	jle	$L7990
$L7989:

; 1496 :       while ( lpNewInstance && lpNewInstance->nLevel > nStartLevel )

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	je	$L7990
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	movsx	eax, WORD PTR _nStartLevel$[ebp]
	cmp	edx, eax
	jle	$L7990

; 1498 :          lpPrevVsn = zGETPTR( lpNewInstance->hPrevVsn );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$[ebp], eax

; 1499 : 
; 1500 :          if ( lpNewInstance->u.nInd.bTemporal ||
; 1501 :               (lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot) )

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7993
	cmp	DWORD PTR _lpPrevVsn$[ebp], 0
	je	SHORT $L7992
	mov	edx, DWORD PTR _lpPrevVsn$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 9
	and	eax, 1
	test	eax, eax
	je	SHORT $L7992
$L7993:

; 1503 :             LPVIEWENTITY lpWork = zGETPTR( lpNewInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWork$7994[ebp], eax

; 1504 : 
; 1505 :             // "KZOEE137 - Entity Instance descendent versioned"
; 1506 :             fnIssueCoreError( lpCurrentTask, lpView, 8, 137, 0,
; 1507 :                               lpViewEntity->szName,
; 1508 :                               lpWork->szName );

	mov	eax, DWORD PTR _lpWork$7994[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	137					; 00000089H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1509 :             fnOperationReturn( iAcceptSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	103					; 00000067H
	call	_fnOperationReturn
	add	esp, 8

; 1510 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7944
$L7992:

; 1512 : 
; 1513 :          lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 1514 :       }

	jmp	$L7989
$L7990:

; 1515 : 
; 1516 : 
; 1517 :    // If we arrive here, then we must have a previous version of this
; 1518 :    // entity. Implement the current version amongst the linked
; 1519 :    // instances of the previous version and clean up the previous
; 1520 :    // version instances.
; 1521 : 
; 1522 :    // Get instance on which to start
; 1523 :    lpStartOldInstance = zGETPTR( lpStartNewInstance->hPrevVsn );

	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartOldInstance$[ebp], eax

; 1524 :    lpNewInstance = lpStartNewInstance;

	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 1525 : 
; 1526 :    // Initialize first instance found which was included OR created
; 1527 :    // in the versioned subobject.
; 1528 :    lpFirstIncluded = 0;

	mov	DWORD PTR _lpFirstIncluded$[ebp], 0

; 1529 : 
; 1530 :    // Create a work view.
; 1531 :    CreateViewFromViewForTask( &vWorkView, lpView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _vWorkView$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12

; 1532 : 
; 1533 :    // For all new versions of the instance in question, put the new
; 1534 :    // version in the linked instance chain and copy the incremental
; 1535 :    // indicators across all linked versions of the indicators.
; 1536 :    if ( lpNewInstance->u.nInd.bTemporal )

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	$L7998

; 1538 :       // Turn off the temporal indicator
; 1539 :       lpNewInstance->u.nInd.bTemporal = 0;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	ah, -9					; fffffff7H
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 1540 :       lpDupInstance = zGETPTR( lpNewInstance->hNextLinked );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax
$L8001:

; 1541 :       while ( lpDupInstance && lpDupInstance != lpNewInstance )

	cmp	DWORD PTR _lpDupInstance$[ebp], 0
	je	SHORT $L8002
	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	cmp	ecx, DWORD PTR _lpNewInstance$[ebp]
	je	SHORT $L8002

; 1543 :          lpDupInstance->u.nInd.bTemporal = 0;

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	ah, -9					; fffffff7H
	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 1544 :          lpDupInstance = zGETPTR( lpDupInstance->hNextLinked );

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax

; 1545 :       }

	jmp	SHORT $L8001
$L8002:

; 1546 : 
; 1547 :       // Spawn the entity create if necessary
; 1548 :       fnSpawnCreateEntity( lpView, lpNewInstance );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnSpawnCreateEntity
	add	esp, 8

; 1549 : 
; 1550 :       // Now that we have spawned the create, spawn all creates and
; 1551 :       // includes which have taken place beneath the created temporal
; 1552 :       // entity.
; 1553 :       lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax
$L8006:

; 1554 :       while ( lpNewInstance &&
; 1555 :               lpNewInstance->nLevel > lpStartNewInstance->nLevel )

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	je	$L8007
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	cmp	eax, edx
	jle	$L8007

; 1557 :          if ( lpNewInstance->u.nInd.bIncluded )

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 5
	and	ecx, 1
	test	ecx, ecx
	je	$L8008

; 1559 :             // This next if blocks spawning for the case where an entity
; 1560 :             // has been created and included and then excluded.
; 1561 :             if ( lpNewInstance->u.nInd.bExcluded == FALSE ) // DKS 7/22/96

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8009

; 1563 :                lpViewEntityCsr = fnEstablishViewForInstance( vWorkView, 0,
; 1564 :                                                              lpNewInstance );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _vWorkView$[ebp]
	push	edx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 1565 :                fnSpawnIncludeSubobject( vWorkView, lpViewOI,
; 1566 :                                         zGETPTR( lpNewInstance->hViewEntity ),
; 1567 :                                         lpViewEntityCsr, 1 );

	push	1
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vWorkView$[ebp]
	push	ecx
	call	_fnSpawnIncludeSubobject
	add	esp, 20					; 00000014H
$L8009:

; 1569 : 
; 1570 :             nRC = lpNewInstance->nLevel;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	ax, WORD PTR [edx+58]
	mov	WORD PTR _nRC$[ebp], ax

; 1571 :             lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax
$L8013:

; 1572 :             while ( lpNewInstance && lpNewInstance->nLevel > nRC )

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	je	SHORT $L8014
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	ecx, edx
	jle	SHORT $L8014

; 1573 :                lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax
	jmp	SHORT $L8013
$L8014:

; 1575 :          else

	jmp	SHORT $L8016
$L8008:

; 1577 :             fnSpawnCreateEntity( lpView, lpNewInstance );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnSpawnCreateEntity
	add	esp, 8

; 1578 :             lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax
$L8016:

; 1580 :       }

	jmp	$L8006
$L8007:

; 1581 : 
; 1582 :       // Decrement versioned instance count in viewoi.
; 1583 :       lpViewOI->nVersionedInstances--;

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	cx, WORD PTR [eax+22]
	sub	cx, 1
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	WORD PTR [edx+22], cx

; 1584 : 
; 1585 :       if ( !fnInstanceVersioned( lpStartNewInstance ) )

	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	push	eax
	call	_fnInstanceVersioned
	add	esp, 4
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8018

; 1587 :          zSHORT nUpdated = 0;

	mov	WORD PTR _nUpdated$8019[ebp], 0

; 1588 :          zSHORT nUpdatedFile = 0;

	mov	WORD PTR _nUpdatedFile$8020[ebp], 0

; 1589 : 
; 1590 :          // Reset the version update flags.
; 1591 :          fnGetResetUpdFlags( lpStartNewInstance, &nUpdated, &nUpdatedFile, 1 );

	push	1
	lea	ecx, DWORD PTR _nUpdatedFile$8020[ebp]
	push	ecx
	lea	edx, DWORD PTR _nUpdated$8019[ebp]
	push	edx
	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	push	eax
	call	_fnGetResetUpdFlags
	add	esp, 16					; 00000010H

; 1592 : 
; 1593 :          // Not versioned after accept.
; 1594 :          lpViewOI->bUpdated = lpViewOI->bUpdatedFile = TRUE;

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	or	edx, 32					; 00000020H
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [eax+36], edx
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	or	edx, 16					; 00000010H
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [eax+36], edx

; 1596 :       else

	jmp	SHORT $L8021
$L8018:

; 1598 :          // Still versioned after accept.
; 1599 :          // We set the version updated flag to the entity which was
; 1600 :          // just accepted.
; 1601 :          fnSetUpdateIndicator( lpViewOI, lpStartNewInstance,
; 1602 :                                0, TRUE, FALSE, FALSE );

	push	0
	push	0
	push	1
	push	0
	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	push	edx
	call	_fnSetUpdateIndicator
	add	esp, 24					; 00000018H
$L8021:

; 1604 : 
; 1605 :       DropView( vWorkView );

	mov	eax, DWORD PTR _vWorkView$[ebp]
	push	eax
	call	_DropView@4

; 1606 :       fnOperationReturn( iAcceptSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	103					; 00000067H
	call	_fnOperationReturn
	add	esp, 8

; 1607 :       return( 0 );  // assume everythings AOK if we get here

	xor	ax, ax
	jmp	$L7944
$L7998:

; 1609 : 
; 1610 :    // If we're not accepting a temporal entity, then the accept process
; 1611 :    // is more involved - PASS Number 1.
; 1612 :    lpNewInstance = lpStartNewInstance;

	mov	edx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	DWORD PTR _lpNewInstance$[ebp], edx
$L8022:

; 1615 :       // In the first pass, we issue deletes and excludes on the old
; 1616 :       // version so hiding of instances takes place across all
; 1617 :       // appropriate linked instances of the old version, this is
; 1618 :       // done in a separate loop because the propagation did not
; 1619 :       // work across inverted relationships when done in the loop
; 1620 :       // below - Gig 5/8/93.
; 1621 :       lpOldInstance = zGETPTR( lpNewInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOldInstance$[ebp], eax

; 1622 : 
; 1623 :       // if the new instance was deleted OR Excluded and the
; 1624 :       // old instance is not currently marked as hidden, issue
; 1625 :       // a Delete OR Exclude on the old instance so all
; 1626 :       // linked versions of the old instance are correctly marked.
; 1627 :       if ( lpOldInstance &&
; 1628 :            lpOldInstance->u.nInd.bHidden == FALSE &&
; 1629 :            (lpNewInstance->u.nInd.bDeleted ||
; 1630 :             lpNewInstance->u.nInd.bExcluded) )

	cmp	DWORD PTR _lpOldInstance$[ebp], 0
	je	$L8030
	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	$L8030
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 3
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8027
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 4
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8030
$L8027:

; 1632 :          lpWrkViewEntityCsr = fnEstablishViewForInstance( vWorkView, 0,
; 1633 :                                                           lpOldInstance );

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _vWorkView$[ebp]
	push	eax
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpWrkViewEntityCsr$[ebp], eax

; 1634 :          if ( lpNewInstance->u.nInd.bDeleted )

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 3
	and	edx, 1
	test	edx, edx
	je	SHORT $L8028

; 1636 :             fnDeleteEntity( vWorkView,
; 1637 :                             zGETPTR( lpOldInstance->hViewEntity ),
; 1638 :                             lpWrkViewEntityCsr, zREPOS_NONE,
; 1639 :                             lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	ecx, DWORD PTR _vWorkView$[ebp]
	push	ecx
	call	_fnDeleteEntity
	add	esp, 20					; 00000014H

; 1641 :          else

	jmp	SHORT $L8030
$L8028:

; 1643 :             fnExcludeEntity( vWorkView, zGETPTR( lpOldInstance->hViewEntity ),
; 1644 :                              lpWrkViewEntityCsr, zREPOS_NONE, 1 );

	push	1
	push	0
	mov	edx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	edx, DWORD PTR _vWorkView$[ebp]
	push	edx
	call	_fnExcludeEntity
	add	esp, 20					; 00000014H
$L8030:

; 1647 : 
; 1648 :       lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 1649 : 
; 1650 :    }  while ( lpNewInstance && lpNewInstance->nLevel > nStartLevel );

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	je	SHORT $L8033
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nStartLevel$[ebp]
	cmp	eax, ecx
	jg	$L8022
$L8033:

; 1651 : 
; 1652 :    // If we're not accepting a temporal entity, then the accept process
; 1653 :    // is more involved - PASS Number 2.
; 1654 :    lpNewInstance = lpStartNewInstance;

	mov	edx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	DWORD PTR _lpNewInstance$[ebp], edx
$L8034:

; 1657 :       // Since we support includes and creates within a new version,
; 1658 :       // see if the current instance represents this situation, if
; 1659 :       // so, we need to re-do the include or create after this
; 1660 :       // accepting process is complete.
; 1661 :       if ( lpNewInstance->hPrevVsn == 0 )

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	cmp	DWORD PTR [eax+38], 0
	jne	SHORT $L8043

; 1663 :          // If the new instance has appeared on the chain without a previous
; 1664 :          // version, mark it and all of its descendents as temporal entities
; 1665 :          // for re-creating or re-including later on!
; 1666 :          if ( lpFirstIncluded == 0 )

	cmp	DWORD PTR _lpFirstIncluded$[ebp], 0
	jne	SHORT $L8038

; 1667 :             lpFirstIncluded = lpNewInstance;

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR _lpFirstIncluded$[ebp], ecx
$L8038:

; 1668 : 
; 1669 :          while ( lpNewInstance && lpNewInstance->hPrevVsn == 0 &&
; 1670 :                  lpNewInstance->nLevel > nStartLevel )

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	je	SHORT $L8041
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	cmp	DWORD PTR [edx+38], 0
	jne	SHORT $L8041
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	cmp	ecx, edx
	jle	SHORT $L8041

; 1672 :            lpNewInstance->u.nInd.bTemporal = TRUE;

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	or	ch, 8
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 1673 :            lpLastIncluded = lpNewInstance;

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR _lpLastIncluded$[ebp], eax

; 1674 :            lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 1675 :          }

	jmp	SHORT $L8038
$L8041:

; 1676 : 
; 1677 :          // End out of outer do loop if we've passed all the new
; 1678 :          // version instances.
; 1679 :          if ( lpNewInstance == 0 || lpNewInstance->nLevel <= nStartLevel )

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	je	SHORT $L8044
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	cmp	ecx, edx
	jg	SHORT $L8043
$L8044:

; 1680 :             break;

	jmp	$L8105
$L8043:

; 1682 : 
; 1683 :       // Position on the previous version of this instance.
; 1684 :       lpOldInstance = zGETPTR( lpNewInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOldInstance$[ebp], eax

; 1685 :       lpNewInstance->hPrevVsn = lpOldInstance->hPrevVsn;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	mov	DWORD PTR [edx+38], ecx

; 1686 :       if ( lpNewInstance->hPrevVsn )

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	cmp	DWORD PTR [edx+38], 0
	je	SHORT $L8046

; 1688 :          LPENTITYINSTANCE lpPrevVsn = zGETPTR( lpNewInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$8047[ebp], eax

; 1689 : 
; 1690 :          lpPrevVsn->hNextVsn = zGETHNDL( lpNewInstance );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpPrevVsn$8047[ebp]
	mov	DWORD PTR [ecx+34], eax
$L8046:

; 1692 : 
; 1693 :       // If the old instance was linked, replace the old instance
; 1694 :       // in the link chain with the new instance.
; 1695 :       lpDupInstance = 0;

	mov	DWORD PTR _lpDupInstance$[ebp], 0

; 1696 :       bStillPrevVsn = 0;

	mov	BYTE PTR _bStillPrevVsn$[ebp], 0

; 1697 :       if ( lpOldInstance && lpOldInstance->hNextLinked )

	cmp	DWORD PTR _lpOldInstance$[ebp], 0
	je	$L8083
	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	cmp	DWORD PTR [edx+42], 0
	je	$L8083

; 1699 :          zPVOID hOldInstance = zGETHNDL( lpOldInstance );

	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hOldInstance$8051[ebp], eax

; 1700 :          zPVOID hNewInstance = zGETHNDL( lpNewInstance );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hNewInstance$8053[ebp], eax

; 1701 : 
; 1702 :          // Find the instance in the link chain that points to lpOldInstance.
; 1703 :          // Also, find out if any of the instances in the link chain still
; 1704 :          // have a previous version.
; 1705 :          lpWrkInstance = zGETPTR( lpOldInstance->hNextLinked );

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax
$L8057:

; 1708 :             // Check to see if the linked instance is also versioned.  If it
; 1709 :             // is then we will flag the accepted instance as still versioned.
; 1710 :             if ( lpWrkInstance->hNextVsn )

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	DWORD PTR [ecx+34], 0
	je	SHORT $L8067

; 1712 :                LPENTITYINSTANCE lpParent;
; 1713 : 
; 1714 :                // OK...a linked instance to the accepted instance is still
; 1715 :                // versioned.  But wait!  This linked instance could be part
; 1716 :                // of the current version.  An example could be:
; 1717 :                //
; 1718 :                //    (A)
; 1719 :                //    / \
; 1720 :                //  (B) (B')
; 1721 :                //
; 1722 :                // Entity 'A' is the parent of the new version and B and B'
; 1723 :                // are linked.  lpOldInstance is the original version of B.
; 1724 :                // Make sure lpWrkInstance isn't a case of B'.  To so this
; 1725 :                // check to see if a parent of B' is the versioned parent.
; 1726 : 
; 1727 :                for ( lpParent = zGETPTR( lpWrkInstance->hParent );
; 1728 :                      lpParent;
; 1729 :                      lpParent = zGETPTR( lpParent->hParent ) )

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$8060[ebp], eax
	jmp	SHORT $L8063
$L8064:
	mov	ecx, DWORD PTR _lpParent$8060[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$8060[ebp], eax
$L8063:
	cmp	DWORD PTR _lpParent$8060[ebp], 0
	je	SHORT $L8065

; 1731 :                   if ( lpParent == lpStartOldInstance )

	mov	eax, DWORD PTR _lpParent$8060[ebp]
	cmp	eax, DWORD PTR _lpStartOldInstance$[ebp]
	jne	SHORT $L8066

; 1732 :                      break;

	jmp	SHORT $L8065
$L8066:

; 1733 :                }

	jmp	SHORT $L8064
$L8065:

; 1734 : 
; 1735 :                if ( lpParent == 0 )

	cmp	DWORD PTR _lpParent$8060[ebp], 0
	jne	SHORT $L8067

; 1736 :                   bStillPrevVsn = TRUE;

	mov	BYTE PTR _bStillPrevVsn$[ebp], 1
$L8067:

; 1738 : 
; 1739 :             // Check to see if we have found the instance that points to
; 1740 :             // lpOldInstance.
; 1741 :             if ( lpWrkInstance->hNextLinked == hOldInstance )

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	cmp	edx, DWORD PTR _hOldInstance$8051[ebp]
	jne	SHORT $L8068

; 1742 :                break;

	jmp	SHORT $L8058
$L8068:

; 1743 : 
; 1744 :             lpWrkInstance = zGETPTR( lpWrkInstance->hNextLinked );

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 1745 :          }

	jmp	SHORT $L8057
$L8058:

; 1746 : 
; 1747 :          // Set the previous version indicator of the new instance.
; 1748 :          lpNewInstance->u.nInd.bPrevVersion = bStillPrevVsn;

	mov	edx, DWORD PTR _bStillPrevVsn$[ebp]
	and	edx, 255				; 000000ffH
	and	edx, 1
	shl	edx, 8
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ch, -2					; fffffffeH
	or	ecx, edx
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 1749 :          if ( lpNewInstance->hNextLinked )

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	cmp	DWORD PTR [eax+42], 0
	je	SHORT $L8073

; 1751 :             lpDupInstance = lpNewInstance;

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR _lpDupInstance$[ebp], ecx
$L8072:

; 1752 :             while ( lpDupInstance->hNextLinked != hNewInstance &&
; 1753 :                     lpDupInstance->hNextLinked != hOldInstance )

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	cmp	eax, DWORD PTR _hNewInstance$8053[ebp]
	je	SHORT $L8073
	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	cmp	edx, DWORD PTR _hOldInstance$8051[ebp]
	je	SHORT $L8073

; 1755 :                lpDupInstance = zGETPTR( lpDupInstance->hNextLinked );

	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax

; 1756 :                lpDupInstance->u.nInd.bPrevVersion = bStillPrevVsn;

	mov	edx, DWORD PTR _bStillPrevVsn$[ebp]
	and	edx, 255				; 000000ffH
	and	edx, 1
	shl	edx, 8
	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ch, -2					; fffffffeH
	or	ecx, edx
	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 1757 :             }

	jmp	SHORT $L8072
$L8073:

; 1759 : 
; 1760 :          // if the new instance was linked, update the linked instance
; 1761 :          // pointing to the new instance to point to the
; 1762 :          // first linked instance off the old instance. Otherwise ...
; 1763 :          if ( lpDupInstance )

	cmp	DWORD PTR _lpDupInstance$[ebp], 0
	je	SHORT $L8075

; 1765 :             // Add the new instance into the link chain ONLY if it is
; 1766 :             // not already there, Otherwise, simply remove the
; 1767 :             // old instance from the link chain.
; 1768 :             if ( lpDupInstance->hNextLinked != hNewInstance )

	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	cmp	ecx, DWORD PTR _hNewInstance$8053[ebp]
	je	SHORT $L8076

; 1770 :                // lpDupInstance is pointing to the old instance, update it
; 1771 :                // to point to ine instance past the old instance to
; 1772 :                // remove the old instance from the link chain.
; 1773 :                lpDupInstance->hNextLinked = lpOldInstance->hNextLinked;

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	mov	DWORD PTR [edx+42], ecx
$L8078:

; 1774 :                while ( lpDupInstance->hNextLinked != hNewInstance )

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	cmp	eax, DWORD PTR _hNewInstance$8053[ebp]
	je	SHORT $L8079

; 1775 :                   lpDupInstance = zGETPTR( lpDupInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax
	jmp	SHORT $L8078
$L8079:

; 1777 :             else

	jmp	SHORT $L8081
$L8076:

; 1779 :                // lpDupInstance is pointing to the new instance in the new
; 1780 :                // chain and lpWrkInstance is pointing to the old instance
; 1781 :                // in the old chain, point lpDupInstance to the first instance
; 1782 :                // past the old instance in the old chain and lpWrkInstance to
; 1783 :                // the new instance to combine the 2 link chains and remove
; 1784 :                // the old instance from the combined chains at the same time.
; 1785 :                lpDupInstance->hNextLinked = lpOldInstance->hNextLinked;

	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	mov	DWORD PTR [eax+42], edx

; 1786 :                lpWrkInstance->hNextLinked = hNewInstance;

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR _hNewInstance$8053[ebp]
	mov	DWORD PTR [eax+42], ecx
$L8081:

; 1789 :          else

	jmp	SHORT $L8082
$L8075:

; 1791 :             // The new instance is not on any link chain, simply replace
; 1792 :             // the old instance in the old chain with the new instance.
; 1793 :             lpNewInstance->hNextLinked = lpOldInstance->hNextLinked;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	mov	DWORD PTR [edx+42], ecx

; 1794 :             lpWrkInstance->hNextLinked = hNewInstance;

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR _hNewInstance$8053[ebp]
	mov	DWORD PTR [edx+42], eax
$L8082:

; 1796 : 
; 1797 :          lpOldInstance->hNextLinked = 0;

	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	DWORD PTR [ecx+42], 0

; 1798 : 
; 1799 :          // If in removing old instances from the link chain we circle
; 1800 :          // back on the new instance itself, zero out the next linked
; 1801 :          // pointer.
; 1802 :          if ( lpNewInstance->hNextLinked == hNewInstance )

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	cmp	eax, DWORD PTR _hNewInstance$8053[ebp]
	jne	SHORT $L8083

; 1803 :             lpNewInstance->hNextLinked = 0;

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+42], 0
$L8083:

; 1805 : 
; 1806 :       // If the old instances record has already been updated to point
; 1807 :       // to the new record as a result or the copy operation below on
; 1808 :       // a previously linked old record, OR the old instances record
; 1809 :       // and the new instances record were the same record because
; 1810 :       // the entity is not updateable, simply zero out the
; 1811 :       // record pointer so we don't kill it in clean up later on.
; 1812 :       if ( lpOldInstance->hPersistRecord == lpNewInstance->hPersistRecord )

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [edx+60]
	cmp	ecx, DWORD PTR [eax+60]
	jne	SHORT $L8084

; 1813 :          lpOldInstance->hPersistRecord = 0;

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	DWORD PTR [edx+60], 0
$L8084:

; 1814 : 
; 1815 :       // Copy the data record and incremental update information from
; 1816 :       // the new version to all occurrences of the old version.
; 1817 :       if ( lpNewInstance->hNextLinked )

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	cmp	DWORD PTR [eax+42], 0
	je	$L8094

; 1819 :          if ( lpDupInstance )

	cmp	DWORD PTR _lpDupInstance$[ebp], 0
	je	SHORT $L8086

; 1820 :             lpDupInstance = zGETPTR( lpDupInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax

; 1821 :          else

	jmp	SHORT $L8088
$L8086:

; 1822 :             lpDupInstance = zGETPTR( lpNewInstance->hNextLinked );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax
$L8088:

; 1823 : 
; 1824 :          // If the records and indicators have not been copied to all
; 1825 :          // occurrences of the old link chain, copy them now.
; 1826 :          if ( lpDupInstance->hPersistRecord != lpNewInstance->hPersistRecord )

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [edx+60]
	cmp	ecx, DWORD PTR [eax+60]
	je	$L8094

; 1828 :             lpOldRecord = zGETPTR( lpDupInstance->hPersistRecord );

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR [edx+60]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOldRecord$[ebp], eax
$L8093:

; 1829 :             while ( lpDupInstance != lpNewInstance )

	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	cmp	ecx, DWORD PTR _lpNewInstance$[ebp]
	je	$L8094

; 1831 :                LPENTITYINSTANCE lpNextVsn;
; 1832 :                LPVIEWENTITY     lpNewViewEntity =
; 1833 :                                     zGETPTR( lpNewInstance->hViewEntity );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewEntity$8096[ebp], eax

; 1834 : 
; 1835 :                lpDupInstance->hPersistRecord = lpNewInstance->hPersistRecord;

	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+60]
	mov	DWORD PTR [ecx+60], eax

; 1836 :                if ( lpNewInstance->u.nInd.bUpdated )

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 2
	and	edx, 1
	test	edx, edx
	je	SHORT $L8098

; 1837 :                   lpDupInstance->u.nInd.bUpdated = TRUE;

	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	or	ecx, 4
	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx
$L8098:

; 1838 : 
; 1839 :                lpDupInstance->u.nInd.bPrevVersion = bStillPrevVsn;

	mov	eax, DWORD PTR _bStillPrevVsn$[ebp]
	and	eax, 255				; 000000ffH
	and	eax, 1
	shl	eax, 8
	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	and	dh, -2					; fffffffeH
	or	edx, eax
	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 1840 : 
; 1841 :                // If the duplicate instance has newer version(s)
; 1842 :                // with the old record, update the newer version(s) and
; 1843 :                // it linked instances.
; 1844 :                lpNextVsn = zGETPTR( lpDupInstance->hNextVsn );

	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	mov	edx, DWORD PTR [ecx+34]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextVsn$8095[ebp], eax

; 1845 :                if ( lpNextVsn &&
; 1846 :                     zGETPTR( lpNextVsn->hPersistRecord ) == lpOldRecord )

	cmp	DWORD PTR _lpNextVsn$8095[ebp], 0
	je	SHORT $L8101
	mov	eax, DWORD PTR _lpNextVsn$8095[ebp]
	mov	ecx, DWORD PTR [eax+60]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpOldRecord$[ebp]
	jne	SHORT $L8101

; 1848 :                   fnUpdateNextVsnRecordPointers( zGETPTR( lpDupInstance->hNextVsn ),
; 1849 :                                                  lpNewInstance,
; 1850 :                                                  lpOldRecord,
; 1851 :                                                  bStillPrevVsn );

	mov	dl, BYTE PTR _bStillPrevVsn$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpOldRecord$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR [edx+34]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnUpdateNextVsnRecordPointers
	add	esp, 16					; 00000010H
$L8101:

; 1853 : 
; 1854 :                lpDupInstance = zGETPTR( lpDupInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax

; 1855 :             }

	jmp	$L8093
$L8094:

; 1858 : 
; 1859 :       lpLastNewInstance = lpNewInstance;

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR _lpLastNewInstance$[ebp], eax

; 1860 :       lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 1861 : 
; 1862 :    }  while ( lpNewInstance && lpNewInstance->nLevel > nStartLevel );

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	je	SHORT $L8105
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	cmp	ecx, edx
	jg	$L8034
$L8105:

; 1863 : 
; 1864 :    // Go through the EIs we are about to remove and set a flag so we can
; 1865 :    // determine if a cursor is pointing to one of them.
; 1866 :    for ( lpOldInstance = lpStartOldInstance;
; 1867 :          lpOldInstance;
; 1868 :          lpOldInstance = zGETPTR( lpOldInstance->hNextHier ) )

	mov	eax, DWORD PTR _lpStartOldInstance$[ebp]
	mov	DWORD PTR _lpOldInstance$[ebp], eax
	jmp	SHORT $L8107
$L8108:
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOldInstance$[ebp], eax
$L8107:
	cmp	DWORD PTR _lpOldInstance$[ebp], 0
	je	SHORT $L8109

; 1870 :       if ( lpOldInstance->nLevel <= lpStartOldInstance->nLevel &&
; 1871 :            lpOldInstance != lpStartOldInstance )

	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpStartOldInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jg	SHORT $L8110
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	cmp	ecx, DWORD PTR _lpStartOldInstance$[ebp]
	je	SHORT $L8110

; 1873 :          break;

	jmp	SHORT $L8109
$L8110:

; 1875 : 
; 1876 :       lpOldInstance->u.nInd.bDelByAccept = TRUE;

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	eax, 8388608				; 00800000H
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 1877 :    }

	jmp	SHORT $L8108
$L8109:

; 1878 : 
; 1879 :    // Now go through all views for the old object and update any cursors
; 1880 :    // positioned on the previous version to point to the new version.
; 1881 :    for ( lpWrkViewCsr = zGETPTR( lpViewOI->hFirstViewCsr );
; 1882 :          lpWrkViewCsr;
; 1883 :          lpWrkViewCsr = zGETPTR( lpWrkViewCsr->hNextViewCsr ) )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewCsr$[ebp], eax
	jmp	SHORT $L8113
$L8114:
	mov	ecx, DWORD PTR _lpWrkViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewCsr$[ebp], eax
$L8113:
	cmp	DWORD PTR _lpWrkViewCsr$[ebp], 0
	je	SHORT $L8115

; 1885 :       lpWrkViewEntityCsr = zGETPTR( lpWrkViewCsr->hFirstOD_EntityCsr );

	mov	eax, DWORD PTR _lpWrkViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewEntityCsr$[ebp], eax

; 1886 :       lpWrkViewEntityCsr += (lpViewEntity->nHierNbr - 1);

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	sub	eax, 1
	imul	eax, 30					; 0000001eH
	mov	ecx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	add	ecx, eax
	mov	DWORD PTR _lpWrkViewEntityCsr$[ebp], ecx

; 1887 : 
; 1888 :       if ( lpWrkViewEntityCsr->hEntityInstance == 0 ||
; 1889 :            lpWrkViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	edx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L8119
	mov	eax, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 1
	jne	SHORT $L8118
$L8119:

; 1891 :          // Don't have to worry about a null or unset cursor.
; 1892 :          continue;

	jmp	SHORT $L8114
$L8118:

; 1894 : 
; 1895 :       lpWrkInstance = zGETPTR( lpWrkViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 1896 :       if ( lpWrkInstance->u.nInd.bDelByAccept )

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 23					; 00000017H
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8121

; 1898 :          lpWrkViewEntityCsr->hEntityInstance = lpWrkInstance->hNextVsn;

	mov	edx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	mov	DWORD PTR [edx+26], ecx

; 1899 :       // if ( lpWrkViewEntityCsr->hEntityInstance == UNSET_CSR )
; 1900 :       //    SysMessageBox( 0, "AcceptSubobject", "UNSET_CSR", -1 );
; 1901 : 
; 1902 :          fnResetCursorForViewChildren( lpWrkViewEntityCsr );

	mov	edx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	push	edx
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L8121:

; 1904 :    }

	jmp	$L8114
$L8115:

; 1905 : 
; 1906 :    // Finally, clean up the previous version instance chain.
; 1907 :    lpOldInstance = lpStartOldInstance;

	mov	eax, DWORD PTR _lpStartOldInstance$[ebp]
	mov	DWORD PTR _lpOldInstance$[ebp], eax
$L8123:

; 1908 :    while ( lpOldInstance )

	cmp	DWORD PTR _lpOldInstance$[ebp], 0
	je	$L8124

; 1910 :       fnDeleteAttributeRecord( zGETPTR( lpOldInstance->hViewEntity ),
; 1911 :                                lpOldInstance, TRUE );

	push	1
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnDeleteAttributeRecord
	add	esp, 12					; 0000000cH

; 1912 :       fnDeleteAttributeRecord( zGETPTR( lpOldInstance->hViewEntity ),
; 1913 :                                lpOldInstance, FALSE );

	push	0
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnDeleteAttributeRecord
	add	esp, 12					; 0000000cH

; 1914 : 
; 1915 :       // Null out the hRecord for all linked EI's.  This will keep us from
; 1916 :       // trying to free the hRecord twice.
; 1917 :       if ( lpOldInstance->hNextLinked )

	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	cmp	DWORD PTR [ecx+42], 0
	je	$L8137

; 1919 :          LPENTITYINSTANCE lpLinked;
; 1920 :          LPENTITYINSTANCE lpPrevLinked;
; 1921 : 
; 1922 :          for ( lpLinked = zGETPTR( lpOldInstance->hNextLinked );
; 1923 :                lpLinked != lpOldInstance;
; 1924 :                lpLinked = zGETPTR( lpLinked->hNextLinked ) )

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinked$8128[ebp], eax
	jmp	SHORT $L8132
$L8133:
	mov	ecx, DWORD PTR _lpLinked$8128[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinked$8128[ebp], eax
$L8132:
	mov	eax, DWORD PTR _lpLinked$8128[ebp]
	cmp	eax, DWORD PTR _lpOldInstance$[ebp]
	je	SHORT $L8134

; 1926 :             lpLinked->hPersistRecord = 0;

	mov	ecx, DWORD PTR _lpLinked$8128[ebp]
	mov	DWORD PTR [ecx+60], 0

; 1927 :             lpPrevLinked = lpLinked;

	mov	edx, DWORD PTR _lpLinked$8128[ebp]
	mov	DWORD PTR _lpPrevLinked$8129[ebp], edx

; 1928 :          }

	jmp	SHORT $L8133
$L8134:

; 1929 : 
; 1930 :          // Now remove lpOldInstance from the link chain.
; 1931 :          if ( zGETPTR( lpOldInstance->hNextLinked ) == lpPrevLinked )

	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpPrevLinked$8129[ebp]
	jne	SHORT $L8136

; 1933 :             // Only two entities were in the link chain so now there is no
; 1934 :             // longer a chain.
; 1935 :             lpPrevLinked->hNextLinked = 0;

	mov	edx, DWORD PTR _lpPrevLinked$8129[ebp]
	mov	DWORD PTR [edx+42], 0

; 1937 :          else

	jmp	SHORT $L8137
$L8136:

; 1938 :             lpPrevLinked->hNextLinked = lpOldInstance->hNextLinked;

	mov	eax, DWORD PTR _lpPrevLinked$8129[ebp]
	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	mov	DWORD PTR [eax+42], edx
$L8137:

; 1940 : 
; 1941 :       lpWrkInstance = lpOldInstance;

	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 1942 :       lpOldInstance = zGETPTR( lpOldInstance->hNextHier );

	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOldInstance$[ebp], eax

; 1943 :       fnFreeDataspace( lpWrkInstance );

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	push	eax
	call	_fnFreeDataspace
	add	esp, 4

; 1944 :    }

	jmp	$L8123
$L8124:

; 1945 : 
; 1946 :    // Decrement versioned instance count in viewoi.
; 1947 :    lpViewOI->nVersionedInstances--;

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	dx, WORD PTR [ecx+22]
	sub	dx, 1
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	WORD PTR [eax+22], dx

; 1948 :    if ( !fnInstanceVersioned( lpStartNewInstance ) )

	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	push	ecx
	call	_fnInstanceVersioned
	add	esp, 4
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8143

; 1950 :       zSHORT nUpdated = 0;

	mov	WORD PTR _nUpdated$8140[ebp], 0

; 1951 :       zSHORT nUpdatedFile = 0;

	mov	WORD PTR _nUpdatedFile$8141[ebp], 0

; 1952 : 
; 1953 :       fnGetResetUpdFlags( lpStartNewInstance, &nUpdated, &nUpdatedFile, 1 );

	push	1
	lea	edx, DWORD PTR _nUpdatedFile$8141[ebp]
	push	edx
	lea	eax, DWORD PTR _nUpdated$8140[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	push	ecx
	call	_fnGetResetUpdFlags
	add	esp, 16					; 00000010H

; 1954 : 
; 1955 :       if ( nUpdated )

	movsx	edx, WORD PTR _nUpdated$8140[ebp]
	test	edx, edx
	je	SHORT $L8142

; 1956 :          lpViewOI->bUpdated = TRUE;

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	or	ecx, 16					; 00000010H
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [edx+36], ecx
$L8142:

; 1957 : 
; 1958 :       if ( nUpdatedFile )

	movsx	eax, WORD PTR _nUpdatedFile$8141[ebp]
	test	eax, eax
	je	SHORT $L8143

; 1959 :          lpViewOI->bUpdatedFile = TRUE;

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	or	edx, 32					; 00000020H
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [eax+36], edx
$L8143:

; 1961 : 
; 1962 :    // Now that we've cleaned up the old versioned information, we need
; 1963 :    // to re-create the created entity instances and re-include the included
; 1964 :    // instances so any appropriate spawning takes place in the new object
; 1965 :    // instance.
; 1966 :    if ( lpFirstIncluded )

	cmp	DWORD PTR _lpFirstIncluded$[ebp], 0
	je	$L8151

; 1968 :       LPVIEWENTITY      lpViewEntity;
; 1969 :       LPVIEWENTITYCSR   lpViewEntityCsr;
; 1970 :       LPENTITYINSTANCE  lpLastIncluded_NextHier;
; 1971 : 
; 1972 :       lpNewInstance = lpFirstIncluded;

	mov	ecx, DWORD PTR _lpFirstIncluded$[ebp]
	mov	DWORD PTR _lpNewInstance$[ebp], ecx

; 1973 : 
; 1974 :       lpLastIncluded_NextHier = zGETPTR( lpLastIncluded->hNextHier );

	mov	edx, DWORD PTR _lpLastIncluded$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLastIncluded_NextHier$8147[ebp], eax
$L8150:

; 1975 :       while ( lpNewInstance != lpLastIncluded_NextHier )

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	cmp	ecx, DWORD PTR _lpLastIncluded_NextHier$8147[ebp]
	je	$L8151

; 1977 :          if ( lpNewInstance->u.nInd.bTemporal )

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	test	eax, eax
	je	$L8152

; 1979 :             if ( lpNewInstance->u.nInd.bHidden )

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8153

; 1981 :                lpNewInstance->u.nInd.bTemporal = 0;

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ch, -9					; fffffff7H
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 1982 :                lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 1984 :             else

	jmp	$L8168
$L8153:

; 1986 :                LPVIEWCSR lpWorkViewCsr = zGETPTR( vWorkView->hViewCsr );

	mov	edx, DWORD PTR _vWorkView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewCsr$8156[ebp], eax

; 1987 : 
; 1988 :                // if the instance in question was included, UNDO the include
; 1989 :                // and re-do it so spawning will take place
; 1990 :                lpViewEntity = zGETPTR( lpNewInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8145[ebp], eax

; 1991 :                lpViewEntityCsr = zGETPTR( lpWorkViewCsr->hFirstOD_EntityCsr );

	mov	eax, DWORD PTR _lpWorkViewCsr$8156[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$8146[ebp], eax

; 1992 :                lpViewEntityCsr += ( lpViewEntity->nHierNbr - 1 );

	mov	edx, DWORD PTR _lpViewEntity$8145[ebp]
	movsx	eax, WORD PTR [edx+217]
	sub	eax, 1
	imul	eax, 30					; 0000001eH
	mov	ecx, DWORD PTR _lpViewEntityCsr$8146[ebp]
	add	ecx, eax
	mov	DWORD PTR _lpViewEntityCsr$8146[ebp], ecx

; 1993 :                fnEstablishViewForInstance( vWorkView, lpViewEntityCsr,
; 1994 :                                           lpNewInstance );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$8146[ebp]
	push	eax
	mov	ecx, DWORD PTR _vWorkView$[ebp]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH

; 1995 : 
; 1996 :                if ( lpNewInstance->u.nInd.bIncluded )

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	je	SHORT $L8160

; 1998 :                   lpWrkInstance = lpNewInstance;

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR _lpWrkInstance$[ebp], ecx
$L8161:

; 2001 :                      lpWrkInstance->u.nInd.bTemporal = 0;

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	ah, -9					; fffffff7H
	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 2002 :                      lpWrkInstance = zGETPTR( lpWrkInstance->hNextHier );

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 2005 :                              lpWrkInstance->nLevel > lpNewInstance->nLevel );

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	ecx, DWORD PTR _lpLastIncluded_NextHier$8147[ebp]
	je	SHORT $L8165
	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	cmp	eax, edx
	jg	SHORT $L8161
$L8165:

; 2006 : 
; 2007 :                   // Now, spawn the include done on the new version
; 2008 :                   nRC = fnSpawnIncludeSubobject( vWorkView, lpViewOI,
; 2009 :                                                 lpViewEntity, lpViewEntityCsr,
; 2010 :                                                 1 );

	push	1
	mov	eax, DWORD PTR _lpViewEntityCsr$8146[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$8145[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	push	edx
	mov	eax, DWORD PTR _vWorkView$[ebp]
	push	eax
	call	_fnSpawnIncludeSubobject
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 2011 :                   lpNewInstance = lpWrkInstance;

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	mov	DWORD PTR _lpNewInstance$[ebp], ecx

; 2013 :                else

	jmp	SHORT $L8166
$L8160:

; 2015 :                   lpNewInstance->u.nInd.bTemporal = 0;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	ah, -9					; fffffff7H
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 2016 :                   nRC = fnSpawnCreateEntity( vWorkView, lpNewInstance );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _vWorkView$[ebp]
	push	eax
	call	_fnSpawnCreateEntity
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax

; 2017 :                   lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax
$L8166:

; 2019 : 
; 2020 :                // If something terrible happened, go through and at least
; 2021 :                // clean up the temporal markings in the included/created
; 2022 :                // entities
; 2023 :                if ( nRC )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	SHORT $L8168
$L8170:

; 2025 :                   while ( lpNewInstance != lpLastIncluded_NextHier )

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	cmp	ecx, DWORD PTR _lpLastIncluded_NextHier$8147[ebp]
	je	SHORT $L8171

; 2027 :                      lpNewInstance->u.nInd.bTemporal = 0;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	ah, -9					; fffffff7H
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 2028 :                      lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 2029 :                   }

	jmp	SHORT $L8170
$L8171:

; 2030 : 
; 2031 :                   break;   // Get out with bad return code

	jmp	SHORT $L8151
$L8168:

; 2035 :          else

	jmp	SHORT $L8173
$L8152:

; 2036 :             lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax
$L8173:

; 2037 :       }

	jmp	$L8150
$L8151:

; 2039 : 
; 2040 :    // Drop the work view
; 2041 :    DropView( vWorkView );

	mov	eax, DWORD PTR _vWorkView$[ebp]
	push	eax
	call	_DropView@4

; 2042 : 
; 2043 : #if 0   // Gig, debugging, for all new instances, see if a record
; 2044 :         // match can be found which is not linked!!!!
; 2045 :    lpNewInstance      = lpStartNewInstance;
; 2046 :    do
; 2047 :    {
; 2048 :       lpWrkInstance = zGETPTR( lpNewInstance->hNextHier );
; 2049 :       while ( lpWrkInstance && lpWrkInstance->nLevel > nStartLevel )
; 2050 :       {
; 2051 :          if ( lpWrkInstance->hPersistRecord == lpNewInstance->hPersistRecord )
; 2052 :          {
; 2053 :             lpDupInstance = zGETPTR( lpNewInstance->hNextLinked );
; 2054 :             while ( lpDupInstance && lpDupInstance != lpNewInstance )
; 2055 :             {
; 2056 :                if ( lpDupInstance == lpWrkInstance )
; 2057 :                   break;
; 2058 : 
; 2059 :                lpDupInstance = zGETPTR( lpDupInstance->hNextLinked );
; 2060 :             }
; 2061 : 
; 2062 :             if ( lpDupInstance != lpWrkInstance )
; 2063 :             {
; 2064 :                SysMessageBox( "ERROR AFTER ACCEPT",
; 2065 :                               "Record match found in non-linked instance", 1 );
; 2066 :             }
; 2067 :          }
; 2068 : 
; 2069 :          lpWrkInstance = zGETPTR( lpWrkInstance->hNextHier );
; 2070 :       }
; 2071 : 
; 2072 :       lpNewInstance = zGETPTR( lpNewInstance->hNextHier );
; 2073 : 
; 2074 :    } while ( lpNewInstance && lpNewInstance->nLevel > nStartLevel );
; 2075 : #endif
; 2076 : 
; 2077 : #ifdef __RECLAIM__
; 2078 :    if ( lpViewOI->nHiddenCount > __RECLAIM_LIMIT__ )

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	movsx	edx, WORD PTR [ecx+24]
	cmp	edx, 20					; 00000014H
	jle	SHORT $L8175

; 2079 :       fnReclaimHiddenInstances( lpViewOI );

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	push	eax
	call	_fnReclaimHiddenInstances@4
$L8175:

; 2080 : #endif
; 2081 : 
; 2082 :    fnOperationReturn( iAcceptSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	103					; 00000067H
	call	_fnOperationReturn
	add	esp, 8

; 2083 :    return( nRC );  // Return results

	mov	ax, WORD PTR _nRC$[ebp]
$L7944:

; 2084 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_AcceptSubobject@8 ENDP
_TEXT	ENDS
PUBLIC	_fnFindLastEntityUnderParent@8
_TEXT	SEGMENT
_lpParent$ = 8
_bUseTwin$ = 12
_lpReturnEI$ = -8
_lpEI$ = -4
_fnFindLastEntityUnderParent@8 PROC NEAR

; 2089 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 2090 :    LPENTITYINSTANCE lpReturnEI;
; 2091 :    LPENTITYINSTANCE lpEI;
; 2092 : 
; 2093 :    // Find the last entity under lpParent hierarchically.
; 2094 :    if ( bUseTwin && lpParent->hNextTwin )

	mov	eax, DWORD PTR _bUseTwin$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8184
	mov	ecx, DWORD PTR _lpParent$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	SHORT $L8184

; 2096 :       // lpParent has a twin.  That makes it easy.
; 2097 :       lpEI = zGETPTR( lpParent->hNextTwin );

	mov	edx, DWORD PTR _lpParent$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 2098 :       return( zGETPTR( lpEI->hPrevHier ) );

	mov	ecx, DWORD PTR _lpEI$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	jmp	SHORT $L8181
$L8184:

; 2100 : 
; 2101 :    // lpParent doesn't have a twin.  That means we have to loop through the
; 2102 :    // children of lpParent looking for the last entity hierarchically.
; 2103 :    lpReturnEI = lpParent;

	mov	eax, DWORD PTR _lpParent$[ebp]
	mov	DWORD PTR _lpReturnEI$[ebp], eax

; 2104 :    for ( lpEI = zGETPTR( lpParent->hNextHier );
; 2105 :          lpEI && lpEI->nLevel > lpParent->nLevel;
; 2106 :          lpEI = zGETPTR( lpEI->hNextHier ) )

	mov	ecx, DWORD PTR _lpParent$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax
	jmp	SHORT $L8189
$L8190:
	mov	eax, DWORD PTR _lpEI$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax
$L8189:
	cmp	DWORD PTR _lpEI$[ebp], 0
	je	SHORT $L8191
	mov	edx, DWORD PTR _lpEI$[ebp]
	movsx	eax, WORD PTR [edx+58]
	mov	ecx, DWORD PTR _lpParent$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	cmp	eax, edx
	jle	SHORT $L8191
$L8193:

; 2108 :       // To try to make things faster we'll skip all twins.
; 2109 :       while ( lpEI->hNextTwin )

	mov	eax, DWORD PTR _lpEI$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	SHORT $L8194

; 2110 :          lpEI = zGETPTR( lpEI->hNextTwin );

	mov	ecx, DWORD PTR _lpEI$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax
	jmp	SHORT $L8193
$L8194:

; 2111 : 
; 2112 :       lpReturnEI = lpEI;

	mov	eax, DWORD PTR _lpEI$[ebp]
	mov	DWORD PTR _lpReturnEI$[ebp], eax

; 2113 :    }

	jmp	SHORT $L8190
$L8191:

; 2114 : 
; 2115 :    return( lpReturnEI );

	mov	eax, DWORD PTR _lpReturnEI$[ebp]
$L8181:

; 2116 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_fnFindLastEntityUnderParent@8 ENDP
_TEXT	ENDS
PUBLIC	_CancelSubobject@8
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -84
_lpViewOI$ = -68
_lpViewCsr$ = -4
_lpWrkViewCsr$ = -40
_lpViewEntity$ = -28
_lpViewEntityCsr$ = -80
_lpWrkViewEntityCsr$ = -76
_lpOldInstance$ = -52
_lpStartOldInstance$ = -24
_lpStartNewInstance$ = -48
_lpLastNewInstance$ = -56
_lpLastOldInstance$ = -12
_lpNewInstance$ = -20
_lpWrkInstance$ = -16
_lpDupInstance$ = -72
_lpPrevVsn$ = -32
_hStartOldInstance$ = -8
_hStartNewInstance$ = -36
_nStartLevel$ = -60
_nHiddenCount$ = -44
_bStillPrevVsn$ = -64
_nRC$8226 = -88
_n$8229 = -92
_lpNewViewEntity$8246 = -96
_lpLinked$8250 = -100
_nLevel$8256 = -104
_lpLinkedChild$8257 = -108
_lpNextLinked$8273 = -112
_lpWrkInstance2$8311 = -116
_CancelSubobject@8 PROC NEAR

; 2139 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 116				; 00000074H

; 2140 :    LPTASK           lpCurrentTask;
; 2141 :    LPVIEWOI         lpViewOI;
; 2142 :    LPVIEWCSR        lpViewCsr;
; 2143 :    LPVIEWCSR        lpWrkViewCsr;
; 2144 :    LPVIEWENTITY     lpViewEntity;
; 2145 :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 2146 :    LPVIEWENTITYCSR  lpWrkViewEntityCsr;
; 2147 :    LPENTITYINSTANCE lpOldInstance;
; 2148 :    LPENTITYINSTANCE lpStartOldInstance;
; 2149 :    LPENTITYINSTANCE lpStartNewInstance;
; 2150 :    LPENTITYINSTANCE lpLastNewInstance;
; 2151 :    LPENTITYINSTANCE lpLastOldInstance;
; 2152 :    LPENTITYINSTANCE lpNewInstance;
; 2153 :    LPENTITYINSTANCE lpWrkInstance;
; 2154 :    LPENTITYINSTANCE lpDupInstance;
; 2155 :    LPENTITYINSTANCE lpPrevVsn;
; 2156 :    zPVOID           hStartOldInstance;
; 2157 :    zPVOID           hStartNewInstance;
; 2158 :    zSHORT           nStartLevel;
; 2159 :    zSHORT           nHiddenCount;
; 2160 :    zBOOL            bStillPrevVsn;
; 2161 : 
; 2162 :    // Validate parameters
; 2163 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 2164 :                                       &lpViewEntity,
; 2165 :                                       &lpViewEntityCsr,
; 2166 :                                       iCancelSubobject,
; 2167 :                                       lpView,
; 2168 :                                       cpcEntityName, 0 ) )

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	104					; 00000068H
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateInstanceParameters
	add	esp, 28					; 0000001cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8222

; 2170 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8200
$L8222:

; 2172 : 
; 2173 :    // Get view csr and view OI.
; 2174 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2175 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 2176 : 
; 2177 :    // If the view is ReadOnly, return with an error if any versioned
; 2178 :    // instances exist, else return success.
; 2179 :    if ( lpView->bReadOnly )

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	shr	edx, 6
	and	edx, 1
	test	edx, edx
	je	SHORT $L8225

; 2181 :       zSHORT  nRC = 0;

	mov	WORD PTR _nRC$8226[ebp], 0

; 2182 :       if ( lpViewOI->nVersionedInstances )

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	test	ecx, ecx
	je	SHORT $L8227

; 2184 :          nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$8226[ebp], -16		; fffffff0H

; 2185 :          // "KZOEE119 - Invalid View, View is Read Only"
; 2186 :          fnIssueCoreError( lpCurrentTask, lpView, 8, 119, 0, cpcEntityName, 0 );

	push	0
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	push	0
	push	119					; 00000077H
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH
$L8227:

; 2188 : 
; 2189 :       fnOperationReturn( iCancelSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	104					; 00000068H
	call	_fnOperationReturn
	add	esp, 8

; 2190 :       return( nRC );

	mov	ax, WORD PTR _nRC$8226[ebp]
	jmp	$L8200
$L8225:

; 2192 : 
; 2193 : #ifdef __ACTIVATE_CONSTRAINTS__
; 2194 :    // If there is an Entity Constraint for cancel, see if it has
; 2195 :    // any objections about continuing.
; 2196 :    if ( lpViewEntity->bCancelConstraint )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+239]
	shr	ecx, 6
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8230

; 2198 :       zSHORT   n;
; 2199 : 
; 2200 :       n = fnInvokeECEOperation( lpView, lpViewEntity, lpCurrentTask,
; 2201 :                                 zECE_CANCEL, 0 );

	push	0
	push	2
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnInvokeECEOperation
	add	esp, 20					; 00000014H
	mov	WORD PTR _n$8229[ebp], ax

; 2202 :       // If constraint handler doesn't like something, get out.
; 2203 :       if ( n )

	movsx	edx, WORD PTR _n$8229[ebp]
	test	edx, edx
	je	SHORT $L8230

; 2205 :          fnOperationReturn( iCancelSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	104					; 00000068H
	call	_fnOperationReturn
	add	esp, 8

; 2206 :          return( n );

	mov	ax, WORD PTR _n$8229[ebp]
	jmp	$L8200
$L8230:

; 2209 : #endif
; 2210 : 
; 2211 :    // Get instance on which to start.
; 2212 :    lpStartNewInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartNewInstance$[ebp], eax
$L8233:

; 2213 :    while ( lpStartNewInstance->hNextVsn )

	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	cmp	DWORD PTR [eax+34], 0
	je	SHORT $L8234

; 2214 :       lpStartNewInstance = zGETPTR( lpStartNewInstance->hNextVsn );

	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+34]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartNewInstance$[ebp], eax
	jmp	SHORT $L8233
$L8234:

; 2215 : 
; 2216 :    lpStartOldInstance = zGETPTR( lpStartNewInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartOldInstance$[ebp], eax

; 2217 : 
; 2218 :    // If the entity instance is not versioned, return a logic error.
; 2219 :    if ( lpStartNewInstance->u.nInd.bTemporal == FALSE &&
; 2220 :         (lpStartOldInstance == 0 ||
; 2221 :          lpStartOldInstance->u.nInd.bPrevVsnRoot == FALSE) )

	mov	edx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8237
	cmp	DWORD PTR _lpStartOldInstance$[ebp], 0
	je	SHORT $L8238
	mov	ecx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 9
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8237
$L8238:

; 2223 :       fnOperationReturn( iCancelSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	104					; 00000068H
	call	_fnOperationReturn
	add	esp, 8

; 2224 :       return( 0 );

	xor	ax, ax
	jmp	$L8200
$L8237:

; 2226 : 
; 2227 :    // Get starting level for Cancel
; 2228 :    nStartLevel = lpViewEntityCsr->nLevel;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	dx, WORD PTR [ecx+22]
	mov	WORD PTR _nStartLevel$[ebp], dx

; 2229 : 
; 2230 :    // Check to make sure none of this instances descendents are
; 2231 :    // already versioned. This is true when lpPrevVsn points to a
; 2232 :    // versioned root instance.
; 2233 :    lpNewInstance   = zGETPTR( lpStartNewInstance->hNextHier );

	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax
$L8241:

; 2234 :    while ( lpNewInstance && lpNewInstance->nLevel > nStartLevel )

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	je	$L8242
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nStartLevel$[ebp]
	cmp	eax, ecx
	jle	$L8242

; 2236 :       lpPrevVsn = zGETPTR( lpNewInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$[ebp], eax

; 2237 : 
; 2238 :       if ( lpNewInstance->u.nInd.bTemporal ||
; 2239 :            (lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot) )

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8245
	cmp	DWORD PTR _lpPrevVsn$[ebp], 0
	je	SHORT $L8244
	mov	eax, DWORD PTR _lpPrevVsn$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8244
$L8245:

; 2241 :          LPVIEWENTITY lpNewViewEntity = zGETPTR( lpNewInstance->hViewEntity );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewViewEntity$8246[ebp], eax

; 2242 : 
; 2243 :          // "KZOEE137 - Entity Instance descendent versioned"
; 2244 :          fnIssueCoreError( lpCurrentTask, lpView, 8, 137, 0,
; 2245 :                            lpViewEntity->szName,
; 2246 :                            lpNewViewEntity->szName );

	mov	ecx, DWORD PTR _lpNewViewEntity$8246[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	137					; 00000089H
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2247 :          fnOperationReturn( iCancelSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	104					; 00000068H
	call	_fnOperationReturn
	add	esp, 8

; 2248 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8200
$L8244:

; 2250 : 
; 2251 :       lpNewInstance   = zGETPTR( lpNewInstance->hNextHier );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 2252 :    }

	jmp	$L8241
$L8242:

; 2253 : 
; 2254 :    // If we arrive here, then we must have a previous version of this
; 2255 :    // entity. Re-implement the previous version amongst the linked
; 2256 :    // instances of the previous version and clean up the current
; 2257 :    // version instances.
; 2258 : 
; 2259 :    // Get instance on which to start
; 2260 :    lpNewInstance = lpStartNewInstance;

	mov	edx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	DWORD PTR _lpNewInstance$[ebp], edx

; 2261 : 
; 2262 :    // If the starting instance is a temporal entity, mark the instance
; 2263 :    // as hidden as well as any children created by either CreateEntity
; 2264 :    // OR IncludeSubobjectFromSubobject.
; 2265 :    if ( lpNewInstance->u.nInd.bTemporal )

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	$L8249

; 2267 :       LPENTITYINSTANCE  lpLinked;
; 2268 : 
; 2269 :       nHiddenCount = 0;

	mov	WORD PTR _nHiddenCount$[ebp], 0

; 2270 : 
; 2271 :       lpLinked = zGETPTR( lpNewInstance->hNextLinked );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinked$8250[ebp], eax

; 2272 : 
; 2273 :       // if any linked instances for this temporal entity, mark them
; 2274 :       // and their children as hidden.
; 2275 :       if ( lpLinked )

	cmp	DWORD PTR _lpLinked$8250[ebp], 0
	je	$L8255
$L8254:

; 2277 :          while ( lpLinked != lpNewInstance )

	mov	ecx, DWORD PTR _lpLinked$8250[ebp]
	cmp	ecx, DWORD PTR _lpNewInstance$[ebp]
	je	$L8255

; 2279 :             zSHORT            nLevel;
; 2280 :             LPENTITYINSTANCE  lpLinkedChild;
; 2281 : 
; 2282 :             nLevel = lpLinked->nLevel;

	mov	edx, DWORD PTR _lpLinked$8250[ebp]
	mov	ax, WORD PTR [edx+58]
	mov	WORD PTR _nLevel$8256[ebp], ax

; 2283 :             lpLinkedChild = lpLinked;

	mov	ecx, DWORD PTR _lpLinked$8250[ebp]
	mov	DWORD PTR _lpLinkedChild$8257[ebp], ecx
$L8258:

; 2286 :                if ( lpLinkedChild->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpLinkedChild$8257[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8261

; 2288 :                   lpLinkedChild->u.nIndicators = 0;

	mov	ecx, DWORD PTR _lpLinkedChild$8257[ebp]
	mov	DWORD PTR [ecx+6], 0

; 2289 :                   lpLinkedChild->u.nInd.bCreated = TRUE;

	mov	edx, DWORD PTR _lpLinkedChild$8257[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	al, 2
	mov	ecx, DWORD PTR _lpLinkedChild$8257[ebp]
	mov	DWORD PTR [ecx+6], eax

; 2290 :                   lpLinkedChild->u.nInd.bHidden = TRUE;

	mov	edx, DWORD PTR _lpLinkedChild$8257[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	ah, 4
	mov	ecx, DWORD PTR _lpLinkedChild$8257[ebp]
	mov	DWORD PTR [ecx+6], eax

; 2291 :                   nHiddenCount++;

	mov	dx, WORD PTR _nHiddenCount$[ebp]
	add	dx, 1
	mov	WORD PTR _nHiddenCount$[ebp], dx
$L8261:

; 2293 : 
; 2294 :                lpLinkedChild = zGETPTR( lpLinkedChild->hNextHier );

	mov	eax, DWORD PTR _lpLinkedChild$8257[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedChild$8257[ebp], eax

; 2295 : 
; 2296 :             }  while ( lpLinkedChild && lpLinkedChild->nLevel > nLevel );

	cmp	DWORD PTR _lpLinkedChild$8257[ebp], 0
	je	SHORT $L8263
	mov	edx, DWORD PTR _lpLinkedChild$8257[ebp]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nLevel$8256[ebp]
	cmp	eax, ecx
	jg	SHORT $L8258
$L8263:

; 2297 : 
; 2298 :             lpLinked = zGETPTR( lpLinked->hNextLinked );

	mov	edx, DWORD PTR _lpLinked$8250[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinked$8250[ebp], eax

; 2299 :          }

	jmp	$L8254
$L8255:

; 2304 :          // Mark all subordinate entities for removal from memory.
; 2305 :          lpNewInstance->u.nIndicators = 0;

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+6], 0

; 2306 :          lpNewInstance->u.nInd.bCreated = TRUE;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	al, 2
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 2307 :          lpNewInstance->u.nInd.bHidden = TRUE;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	ah, 4
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 2308 :          nHiddenCount++;

	mov	dx, WORD PTR _nHiddenCount$[ebp]
	add	dx, 1
	mov	WORD PTR _nHiddenCount$[ebp], dx

; 2309 :          lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 2310 : 
; 2311 :       }  while ( lpNewInstance && lpNewInstance->nLevel > nStartLevel );

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	je	SHORT $L8269
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nStartLevel$[ebp]
	cmp	eax, ecx
	jg	SHORT $L8255
$L8269:

; 2312 : 
; 2313 :       lpViewOI->nHiddenCount += nHiddenCount;

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	ax, WORD PTR [edx+24]
	add	ax, WORD PTR _nHiddenCount$[ebp]
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	WORD PTR [ecx+24], ax

; 2314 : 
; 2315 :       // Decrement versioned instance count in viewOI.
; 2316 :       lpViewOI->nVersionedInstances--;

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	ax, WORD PTR [edx+22]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	WORD PTR [ecx+22], ax

; 2317 : 
; 2318 :       // We're all done here, return success.
; 2319 :       fnOperationReturn( iCancelSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	104					; 00000068H
	call	_fnOperationReturn
	add	esp, 8

; 2320 :       return( zCURSOR_UNDEFINED );  // Assume everythings AOK

	mov	ax, -2					; fffffffeH
	jmp	$L8200
$L8249:

; 2322 : 
; 2323 :    // For all old versions of the instance in question, unset the
; 2324 :    // previous version indicator if the instance is no longer a previous
; 2325 :    // version.
; 2326 :    lpStartOldInstance->u.nInd.bPrevVsnRoot = 0;

	mov	eax, DWORD PTR _lpStartOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ch, -3					; fffffffdH
	mov	edx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx
$L8270:

; 2329 :       LPENTITYINSTANCE lpNextLinked = zGETPTR( lpNewInstance->hNextLinked );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextLinked$8273[ebp], eax

; 2330 : 
; 2331 :       // First, if the new instance in linked, remove the new instance
; 2332 :       // from the linked chain and zero out its record pointer
; 2333 :       lpDupInstance = 0;

	mov	DWORD PTR _lpDupInstance$[ebp], 0

; 2334 :       if ( lpNextLinked )

	cmp	DWORD PTR _lpNextLinked$8273[ebp], 0
	je	SHORT $L8275

; 2336 :          lpDupInstance = lpNextLinked;

	mov	edx, DWORD PTR _lpNextLinked$8273[ebp]
	mov	DWORD PTR _lpDupInstance$[ebp], edx
$L8278:

; 2337 :          while ( zGETPTR( lpDupInstance->hNextLinked ) != lpNewInstance )

	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpNewInstance$[ebp]
	je	SHORT $L8279

; 2338 :             lpDupInstance = zGETPTR( lpDupInstance->hNextLinked );

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDupInstance$[ebp], eax
	jmp	SHORT $L8278
$L8279:

; 2339 : 
; 2340 :          if ( lpDupInstance == lpNextLinked )

	mov	ecx, DWORD PTR _lpDupInstance$[ebp]
	cmp	ecx, DWORD PTR _lpNextLinked$8273[ebp]
	jne	SHORT $L8281

; 2341 :             lpDupInstance->hNextLinked = 0;

	mov	edx, DWORD PTR _lpDupInstance$[ebp]
	mov	DWORD PTR [edx+42], 0

; 2342 :          else

	jmp	SHORT $L8282
$L8281:

; 2343 :             lpDupInstance->hNextLinked = lpNewInstance->hNextLinked;

	mov	eax, DWORD PTR _lpDupInstance$[ebp]
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	mov	DWORD PTR [eax+42], edx
$L8282:

; 2344 : 
; 2345 :          lpNewInstance->hPersistRecord = 0;

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [eax+60], 0

; 2346 :          lpNewInstance->hNextLinked = 0;

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [ecx+42], 0
$L8275:

; 2348 : 
; 2349 :       // Get the previous version pointer from the new instance
; 2350 :       lpOldInstance = zGETPTR( lpNewInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpOldInstance$[ebp], eax

; 2351 : 
; 2352 :       // If the new instance had a previous version, reset the
; 2353 :       // previous version indicators if necessary.
; 2354 :       if ( lpOldInstance )

	cmp	DWORD PTR _lpOldInstance$[ebp], 0
	je	$L8297

; 2356 :          bStillPrevVsn = 0;

	mov	BYTE PTR _bStillPrevVsn$[ebp], 0

; 2357 :          if ( lpOldInstance->hNextLinked )

	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	cmp	DWORD PTR [ecx+42], 0
	je	SHORT $L8289

; 2359 :             lpWrkInstance = zGETPTR( lpOldInstance->hNextLinked );

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax
$L8288:

; 2360 :             while ( lpWrkInstance != lpOldInstance )

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	ecx, DWORD PTR _lpOldInstance$[ebp]
	je	SHORT $L8289

; 2362 :                if ( lpWrkInstance->hNextVsn )

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	DWORD PTR [edx+34], 0
	je	SHORT $L8290

; 2364 :                   bStillPrevVsn = TRUE;

	mov	BYTE PTR _bStillPrevVsn$[ebp], 1

; 2365 :                   break;

	jmp	SHORT $L8289
$L8290:

; 2367 : 
; 2368 :                lpWrkInstance = zGETPTR( lpWrkInstance->hNextLinked );

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 2369 :             }

	jmp	SHORT $L8288
$L8289:

; 2371 : 
; 2372 :          if ( lpOldInstance->hPersistRecord == lpNewInstance->hPersistRecord )

	mov	edx, DWORD PTR _lpOldInstance$[ebp]
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [edx+60]
	cmp	ecx, DWORD PTR [eax+60]
	jne	SHORT $L8292

; 2373 :             lpNewInstance->hPersistRecord = 0;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR [edx+60], 0
$L8292:

; 2374 : 
; 2375 :          lpOldInstance->hNextVsn = lpNewInstance->hNextVsn;

	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+34]
	mov	DWORD PTR [eax+34], edx

; 2376 : 
; 2377 :          // Reset the prev version flags in all linked instances to
; 2378 :          // the original instance.
; 2379 :          if ( bStillPrevVsn == FALSE )

	mov	eax, DWORD PTR _bStillPrevVsn$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8297

; 2381 :             lpOldInstance->u.nInd.bPrevVersion = FALSE;

	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	and	dh, -2					; fffffffeH
	mov	eax, DWORD PTR _lpOldInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 2382 :             lpWrkInstance = zGETPTR( lpOldInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax
$L8296:

; 2383 :             while ( lpWrkInstance && lpWrkInstance != lpOldInstance )

	cmp	DWORD PTR _lpWrkInstance$[ebp], 0
	je	SHORT $L8297
	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	cmp	eax, DWORD PTR _lpOldInstance$[ebp]
	je	SHORT $L8297

; 2385 :                lpWrkInstance->u.nInd.bPrevVersion = FALSE;

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	and	dh, -2					; fffffffeH
	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 2386 :                lpWrkInstance = zGETPTR( lpWrkInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 2387 :             }

	jmp	SHORT $L8296
$L8297:

; 2390 : 
; 2391 :       lpLastNewInstance = lpNewInstance;

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR _lpLastNewInstance$[ebp], eax

; 2392 :       lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 2393 : 
; 2394 :    }  while ( lpNewInstance && lpNewInstance->nLevel > nStartLevel );

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	je	SHORT $L8300
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	cmp	ecx, edx
	jg	$L8270
$L8300:

; 2395 : 
; 2396 :    // Reset the hierarchical, parent and twin pointers for the root
; 2397 :    // of the old version and the last instance in the new version
; 2398 :    hStartOldInstance = zGETHNDL( lpStartOldInstance );

	mov	eax, DWORD PTR _lpStartOldInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hStartOldInstance$[ebp], eax

; 2399 :    hStartNewInstance = zGETHNDL( lpStartNewInstance );

	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hStartNewInstance$[ebp], eax

; 2400 :    lpStartOldInstance->hPrevHier = lpStartNewInstance->hPrevHier;

	mov	edx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	mov	DWORD PTR [edx+18], ecx

; 2401 :    if ( lpStartOldInstance->hPrevHier )

	mov	edx, DWORD PTR _lpStartOldInstance$[ebp]
	cmp	DWORD PTR [edx+18], 0
	je	SHORT $L8303

; 2403 :       lpWrkInstance = zGETPTR( lpStartOldInstance->hPrevHier );

	mov	eax, DWORD PTR _lpStartOldInstance$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 2404 :       lpWrkInstance->hNextHier = hStartOldInstance;

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR _hStartOldInstance$[ebp]
	mov	DWORD PTR [edx+14], eax
$L8303:

; 2406 : 
; 2407 :    lpStartOldInstance->hParent = lpStartNewInstance->hParent;

	mov	ecx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	edx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	mov	DWORD PTR [ecx+30], eax

; 2408 : // if ( lpStartOldInstance->hParent == UNSET_CSR )
; 2409 : //    SysMessageBox( 0, "CancelSubobject", "UNSET_CSR", -1 );
; 2410 : 
; 2411 :    lpStartOldInstance->hPrevTwin = lpStartNewInstance->hPrevTwin;

	mov	ecx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	edx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	mov	DWORD PTR [ecx+26], eax

; 2412 :    if ( lpStartOldInstance->hPrevTwin )

	mov	ecx, DWORD PTR _lpStartOldInstance$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	SHORT $L8305

; 2414 :       lpWrkInstance = zGETPTR( lpStartOldInstance->hPrevTwin );

	mov	edx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 2415 :       lpWrkInstance->hNextTwin = hStartOldInstance;

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	mov	edx, DWORD PTR _hStartOldInstance$[ebp]
	mov	DWORD PTR [ecx+22], edx
$L8305:

; 2417 : 
; 2418 :    lpStartOldInstance->hNextTwin = lpStartNewInstance->hNextTwin;

	mov	eax, DWORD PTR _lpStartOldInstance$[ebp]
	mov	ecx, DWORD PTR _lpStartNewInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	mov	DWORD PTR [eax+22], edx

; 2419 :    if ( lpStartOldInstance->hNextTwin )

	mov	eax, DWORD PTR _lpStartOldInstance$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	SHORT $L8307

; 2421 :       lpWrkInstance = zGETPTR( lpStartOldInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpStartOldInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 2422 :       lpWrkInstance->hPrevTwin = hStartOldInstance;

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR _hStartOldInstance$[ebp]
	mov	DWORD PTR [eax+26], ecx
$L8307:

; 2424 : 
; 2425 :    lpLastOldInstance = fnFindLastEntityUnderParent( lpStartOldInstance, FALSE );

	push	0
	mov	edx, DWORD PTR _lpStartOldInstance$[ebp]
	push	edx
	call	_fnFindLastEntityUnderParent@8
	mov	DWORD PTR _lpLastOldInstance$[ebp], eax

; 2426 :    lpPrevVsn = zGETPTR( lpLastNewInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpLastNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$[ebp], eax

; 2427 :    lpLastOldInstance->hNextHier = lpLastNewInstance->hNextHier;

	mov	edx, DWORD PTR _lpLastOldInstance$[ebp]
	mov	eax, DWORD PTR _lpLastNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR [edx+14], ecx

; 2428 :    if ( lpLastNewInstance->hNextHier )

	mov	edx, DWORD PTR _lpLastNewInstance$[ebp]
	cmp	DWORD PTR [edx+14], 0
	je	SHORT $L8310

; 2430 :       LPENTITYINSTANCE lpWrkInstance2;
; 2431 : 
; 2432 :       lpWrkInstance2 = zGETPTR( lpLastNewInstance->hNextHier );

	mov	eax, DWORD PTR _lpLastNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance2$8311[ebp], eax

; 2433 :       lpWrkInstance2->hPrevHier = zGETHNDL( lpLastOldInstance );

	mov	edx, DWORD PTR _lpLastOldInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpWrkInstance2$8311[ebp]
	mov	DWORD PTR [ecx+18], eax

; 2434 :       lpLastNewInstance->hNextHier = 0;

	mov	edx, DWORD PTR _lpLastNewInstance$[ebp]
	mov	DWORD PTR [edx+14], 0
$L8310:

; 2436 : 
; 2437 :    // If the root of the instance was versioned, set the
; 2438 :    // root entity instance pointer in the ViewOI
; 2439 :    if ( lpViewOI->hRootEntityInstance == hStartNewInstance )

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	cmp	ecx, DWORD PTR _hStartNewInstance$[ebp]
	jne	SHORT $L8314

; 2440 :       lpViewOI->hRootEntityInstance = hStartOldInstance;

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR _hStartOldInstance$[ebp]
	mov	DWORD PTR [edx+26], eax
$L8314:

; 2441 : 
; 2442 :    // Now go through all views for the old object and update any cursors
; 2443 :    // positioned on the current version to point to the old version
; 2444 :    lpWrkViewCsr = zGETPTR( lpViewOI->hFirstViewCsr );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewCsr$[ebp], eax
$L8317:

; 2445 :    while ( lpWrkViewCsr )

	cmp	DWORD PTR _lpWrkViewCsr$[ebp], 0
	je	SHORT $L8318

; 2447 :       lpWrkViewEntityCsr = zGETPTR( lpWrkViewCsr->hFirstOD_EntityCsr );

	mov	eax, DWORD PTR _lpWrkViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewEntityCsr$[ebp], eax

; 2448 :       lpWrkViewEntityCsr += ( lpViewEntity->nHierNbr - 1 );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	sub	eax, 1
	imul	eax, 30					; 0000001eH
	mov	ecx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	add	ecx, eax
	mov	DWORD PTR _lpWrkViewEntityCsr$[ebp], ecx

; 2449 :       if ( lpWrkViewEntityCsr->hEntityInstance == hStartNewInstance )

	mov	edx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	cmp	eax, DWORD PTR _hStartNewInstance$[ebp]
	jne	SHORT $L8320

; 2451 :          lpWrkViewEntityCsr->hEntityInstance = hStartOldInstance;

	mov	ecx, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	mov	edx, DWORD PTR _hStartOldInstance$[ebp]
	mov	DWORD PTR [ecx+26], edx

; 2452 :       // if ( lpWrkViewEntityCsr->hEntityInstance == UNSET_CSR )
; 2453 :       //    SysMessageBox( 0, "CancelSubobject", "UNSET_CSR", -1 );
; 2454 : 
; 2455 :          fnResetCursorForViewChildren( lpWrkViewEntityCsr );

	mov	eax, DWORD PTR _lpWrkViewEntityCsr$[ebp]
	push	eax
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L8320:

; 2457 : 
; 2458 :       lpWrkViewCsr = zGETPTR( lpWrkViewCsr->hNextViewCsr );

	mov	ecx, DWORD PTR _lpWrkViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewCsr$[ebp], eax

; 2459 :    }

	jmp	SHORT $L8317
$L8318:

; 2460 : 
; 2461 :    // Finally, clean up the new version instance chain
; 2462 :    lpNewInstance = lpStartNewInstance;

	mov	eax, DWORD PTR _lpStartNewInstance$[ebp]
	mov	DWORD PTR _lpNewInstance$[ebp], eax
$L8323:

; 2463 :    while ( lpNewInstance )

	cmp	DWORD PTR _lpNewInstance$[ebp], 0
	je	$L8324

; 2465 :       if ( lpNewInstance->hNextLinked )

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	cmp	DWORD PTR [ecx+42], 0
	je	SHORT $L8325

; 2467 :          lpWrkInstance = zGETPTR( lpNewInstance->hNextLinked );

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax
$L8329:

; 2468 :          while ( lpWrkInstance->hNextLinked != zGETHNDL( lpNewInstance ) )

	mov	ecx, DWORD PTR _lpNewInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	DWORD PTR [edx+42], eax
	je	SHORT $L8330

; 2469 :             lpWrkInstance = zGETPTR( lpWrkInstance->hNextLinked );

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax
	jmp	SHORT $L8329
$L8330:

; 2470 : 
; 2471 :          if ( zGETPTR( lpNewInstance->hNextLinked ) == lpWrkInstance )

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpWrkInstance$[ebp]
	jne	SHORT $L8333

; 2472 :             lpWrkInstance->hNextLinked = 0;

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	mov	DWORD PTR [ecx+42], 0

; 2473 :          else

	jmp	SHORT $L8334
$L8333:

; 2474 :             lpWrkInstance->hNextLinked = lpNewInstance->hNextLinked;

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	mov	DWORD PTR [edx+42], ecx
$L8334:

; 2476 :       else

	jmp	SHORT $L8335
$L8325:

; 2478 :          fnDeleteAttributeRecord( zGETPTR( lpNewInstance->hViewEntity ),
; 2479 :                                   lpNewInstance, TRUE );

	push	1
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnDeleteAttributeRecord
	add	esp, 12					; 0000000cH
$L8335:

; 2481 : 
; 2482 :       fnDeleteAttributeRecord( zGETPTR( lpNewInstance->hViewEntity ),
; 2483 :                                lpNewInstance, FALSE );

	push	0
	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnDeleteAttributeRecord
	add	esp, 12					; 0000000cH

; 2484 :       lpWrkInstance = lpNewInstance;

	mov	edx, DWORD PTR _lpNewInstance$[ebp]
	mov	DWORD PTR _lpWrkInstance$[ebp], edx

; 2485 :       lpNewInstance = zGETPTR( lpNewInstance->hNextHier );

	mov	eax, DWORD PTR _lpNewInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewInstance$[ebp], eax

; 2486 :       fnFreeDataspace( lpWrkInstance );

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	push	edx
	call	_fnFreeDataspace
	add	esp, 4

; 2487 :    }

	jmp	$L8323
$L8324:

; 2488 : 
; 2489 :    // Decrement versioned instance count in viewOI
; 2490 :    lpViewOI->nVersionedInstances--;

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	cx, WORD PTR [eax+22]
	sub	cx, 1
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	WORD PTR [edx+22], cx

; 2491 : 
; 2492 : #ifdef __RECLAIM__
; 2493 :    if ( lpViewOI->nHiddenCount > __RECLAIM_LIMIT__ )

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	movsx	ecx, WORD PTR [eax+24]
	cmp	ecx, 20					; 00000014H
	jle	SHORT $L8339

; 2494 :       fnReclaimHiddenInstances( lpViewOI );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	push	edx
	call	_fnReclaimHiddenInstances@4
$L8339:

; 2495 : #endif
; 2496 : 
; 2497 :    fnOperationReturn( iCancelSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	104					; 00000068H
	call	_fnOperationReturn
	add	esp, 8

; 2498 :    return( zCURSOR_SET );  // Assume everythings AOK if we get here

	xor	ax, ax
$L8200:

; 2499 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_CancelSubobject@8 ENDP
_TEXT	ENDS
PUBLIC	_CancelAllTemporalSubobjects@4
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -36
_lpViewOI$ = -28
_lpViewCsr$ = -4
_lpViewEntity$ = -12
_lpViewEntityCsr$ = -32
_lpRoot$ = -24
_lpPrevVsn$ = -20
_vWork$ = -16
_nRC$ = -8
_CancelAllTemporalSubobjects@4 PROC NEAR

; 2520 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 2521 :    LPTASK           lpCurrentTask;
; 2522 :    LPVIEWOI         lpViewOI;
; 2523 :    LPVIEWCSR        lpViewCsr;
; 2524 :    LPVIEWENTITY     lpViewEntity;
; 2525 :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 2526 :    LPENTITYINSTANCE lpRoot;
; 2527 :    LPENTITYINSTANCE lpPrevVsn;
; 2528 :    zVIEW            vWork;
; 2529 :    zSHORT           nRC;
; 2530 : 
; 2531 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 2532 :    if ( (lpCurrentTask = fnOperationCall( iCancelAllTemporalSubobjects,
; 2533 :                                           lpView, zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	128					; 00000080H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8352

; 2535 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8342
$L8352:

; 2537 : 
; 2538 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2539 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 2540 : 
; 2541 :    if ( lpViewOI->nVersionedInstances == 0 )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	movsx	eax, WORD PTR [edx+22]
	test	eax, eax
	jne	SHORT $L8355

; 2543 :       fnOperationReturn( iCancelAllTemporalSubobjects, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	128					; 00000080H
	call	_fnOperationReturn
	add	esp, 8

; 2544 :       return( 0 );

	xor	ax, ax
	jmp	$L8342
$L8355:

; 2546 : 
; 2547 :    lpRoot       = zGETPTR( lpViewOI->hRootEntityInstance );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRoot$[ebp], eax

; 2548 :    lpViewEntity = zGETPTR( lpRoot->hViewEntity );

	mov	ecx, DWORD PTR _lpRoot$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 2549 :    vWork = 0;

	mov	DWORD PTR _vWork$[ebp], 0
$L8359:

; 2550 :    while ( lpRoot )

	cmp	DWORD PTR _lpRoot$[ebp], 0
	je	$L8360

; 2552 :       nRC = fnRemoveAllChildTemporalVsns( lpView, lpRoot, 0 );

	push	0
	mov	eax, DWORD PTR _lpRoot$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnRemoveAllChildTemporalVsns
	add	esp, 12					; 0000000cH
	mov	WORD PTR _nRC$[ebp], ax

; 2553 :       if ( nRC < zCURSOR_UNDEFINED )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -2					; fffffffeH
	jge	SHORT $L8361

; 2555 :          if ( vWork )

	cmp	DWORD PTR _vWork$[ebp], 0
	je	SHORT $L8362

; 2556 :             DropView( vWork );

	mov	eax, DWORD PTR _vWork$[ebp]
	push	eax
	call	_DropView@4
$L8362:

; 2557 : 
; 2558 :          fnOperationReturn( iCancelAllTemporalSubobjects, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	128					; 00000080H
	call	_fnOperationReturn
	add	esp, 8

; 2559 :          return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8342
$L8361:

; 2561 : 
; 2562 :       lpPrevVsn = zGETPTR( lpRoot->hPrevVsn );

	mov	edx, DWORD PTR _lpRoot$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$[ebp], eax

; 2563 :       if ( lpRoot->u.nInd.bTemporal ||
; 2564 :            (lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot) )

	mov	ecx, DWORD PTR _lpRoot$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8365
	cmp	DWORD PTR _lpPrevVsn$[ebp], 0
	je	$L8364
	mov	eax, DWORD PTR _lpPrevVsn$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8364
$L8365:

; 2566 :          if ( vWork == 0 )

	cmp	DWORD PTR _vWork$[ebp], 0
	jne	SHORT $L8366

; 2567 :             CreateViewFromViewForTask( &vWork, lpView, 0 );

	push	0
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _vWork$[ebp]
	push	eax
	call	_CreateViewFromViewForTask@12
$L8366:

; 2568 : 
; 2569 :          lpViewEntityCsr = fnEstablishViewForInstance( vWork, 0, lpRoot );

	mov	ecx, DWORD PTR _lpRoot$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _vWork$[ebp]
	push	edx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 2570 :          nRC = CancelSubobject( vWork, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _vWork$[ebp]
	push	ecx
	call	_CancelSubobject@8
	mov	WORD PTR _nRC$[ebp], ax

; 2571 :          if ( nRC < zCURSOR_UNDEFINED )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -2					; fffffffeH
	jge	SHORT $L8367

; 2573 :             if ( vWork )

	cmp	DWORD PTR _vWork$[ebp], 0
	je	SHORT $L8368

; 2574 :                DropView( vWork );

	mov	eax, DWORD PTR _vWork$[ebp]
	push	eax
	call	_DropView@4
$L8368:

; 2575 : 
; 2576 :             fnOperationReturn( iCancelAllTemporalSubobjects, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	128					; 00000080H
	call	_fnOperationReturn
	add	esp, 8

; 2577 :             return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L8342
$L8367:

; 2579 : 
; 2580 :          lpRoot = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRoot$[ebp], eax
$L8364:

; 2582 : 
; 2583 :       if ( lpRoot )

	cmp	DWORD PTR _lpRoot$[ebp], 0
	je	SHORT $L8370

; 2584 :          lpRoot = zGETPTR( lpRoot->hNextTwin );

	mov	ecx, DWORD PTR _lpRoot$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRoot$[ebp], eax
$L8370:

; 2585 :    }

	jmp	$L8359
$L8360:

; 2586 : 
; 2587 :    if ( vWork )

	cmp	DWORD PTR _vWork$[ebp], 0
	je	SHORT $L8372

; 2588 :       DropView( vWork );

	mov	eax, DWORD PTR _vWork$[ebp]
	push	eax
	call	_DropView@4
$L8372:

; 2589 : 
; 2590 :    fnOperationReturn( iCancelAllTemporalSubobjects, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	128					; 00000080H
	call	_fnOperationReturn
	add	esp, 8

; 2591 :    return( 0 );

	xor	ax, ax
$L8342:

; 2592 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_CancelAllTemporalSubobjects@4 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BN@OGJL@Source?5Entity?5not?5includeble?$AA@ ; `string'
PUBLIC	??_C@_0BN@PAO@Entity?5inclusion?5not?5allowed?$AA@ ; `string'
PUBLIC	??_C@_0DK@NDAP@The?5following?5LODs?5are?5out?5of?5sy@ ; `string'
PUBLIC	??_C@_07JCPH@ERROR?3?5?$AA@			; `string'
PUBLIC	??_C@_0CO@BJBK@Out?9of?9sync?5error?4?5Target?5LOD?5?$DN?5@ ; `string'
PUBLIC	??_C@_0CO@PONF@Out?9of?9sync?5error?4?5Source?5LOD?5?$DN?5@ ; `string'
PUBLIC	??_C@_0DH@HEFK@LODs?5are?5potentially?5out?5of?5sync@ ; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_0CL@KDAM@Rules?5violation?3?5physical?5mappin@ ; `string'
PUBLIC	??_C@_05OGKG@?$CFs?4?$CFs?$AA@			; `string'
PUBLIC	??_C@_0BE@PBHO@?5?5?5Target?5entity?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@MDEO@?5?5?5Source?5entity?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0HA@PGKE@Target?5entity?5has?5physical?5mappi@ ; `string'
PUBLIC	??_C@_07JCAB@BombZDr?$AA@			; `string'
PUBLIC	??_C@_07FGLN@?$FLDebug?$FN?$AA@			; `string'
PUBLIC	??_C@_0KP@CPHB@IncludeSubobjectFromSubobject?5In@ ; `string'
PUBLIC	??_C@_0KN@DOGI@IncludeSubobjectFromSubobject?5In@ ; `string'
PUBLIC	??_C@_0IF@BGLH@IncludeSubobjectFromSubobject?5In@ ; `string'
PUBLIC	??_C@_0BF@DLHG@?$CFs?4?$CFs?4?$CFs?5Offset?5?$DN?5?$CFd?$AA@ ; `string'
PUBLIC	??_C@_0BL@GADJ@?$CIso?$CJ?5IncludeSubobject?5Src?5?$AA@ ; `string'
PUBLIC	??_C@_0BM@DGIM@?$CIso?$CJ?5No?5matching?5Src?5Attrib?$AA@ ; `string'
PUBLIC	??_C@_0BL@KKFN@?$CIso?$CJ?5IncludeSubobject?5Tgt?5?$AA@ ; `string'
PUBLIC	??_C@_0IK@MJCC@Source?5entity?5was?5built?5with?5TE?5@ ; `string'
PUBLIC	_IncludeSubobjectFromSubobject@20
PUBLIC	_fnIncludeSubobjectFromSubobject
EXTRN	__imp__sprintf:NEAR
EXTRN	_TraceLine:NEAR
EXTRN	_fnValidViewCsr:NEAR
EXTRN	_SysReadZeidonIni@16:NEAR
EXTRN	_fnValidViewEntity@16:NEAR
EXTRN	_fnSetViewFromView:NEAR
EXTRN	_strcmp:NEAR
EXTRN	_fnEstablishCursorForView:NEAR
EXTRN	_fnValidateInsertPosition:NEAR
EXTRN	_AnchorBlock:DWORD
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\A\oe\KZOESOAA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0BN@OGJL@Source?5Entity?5not?5includeble?$AA@
_DATA	SEGMENT
??_C@_0BN@OGJL@Source?5Entity?5not?5includeble?$AA@ DB 'Source Entity not'
	DB	' includeble', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@PAO@Entity?5inclusion?5not?5allowed?$AA@
_DATA	SEGMENT
??_C@_0BN@PAO@Entity?5inclusion?5not?5allowed?$AA@ DB 'Entity inclusion n'
	DB	'ot allowed', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DK@NDAP@The?5following?5LODs?5are?5out?5of?5sy@
_DATA	SEGMENT
??_C@_0DK@NDAP@The?5following?5LODs?5are?5out?5of?5sy@ DB 'The following '
	DB	'LODs are out of sync and should be re-built', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_07JCPH@ERROR?3?5?$AA@
_DATA	SEGMENT
??_C@_07JCPH@ERROR?3?5?$AA@ DB 'ERROR: ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CO@BJBK@Out?9of?9sync?5error?4?5Target?5LOD?5?$DN?5@
_DATA	SEGMENT
??_C@_0CO@BJBK@Out?9of?9sync?5error?4?5Target?5LOD?5?$DN?5@ DB 'Out-of-sy'
	DB	'nc error. Target LOD = %s, date = %s', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CO@PONF@Out?9of?9sync?5error?4?5Source?5LOD?5?$DN?5@
_DATA	SEGMENT
??_C@_0CO@PONF@Out?9of?9sync?5error?4?5Source?5LOD?5?$DN?5@ DB 'Out-of-sy'
	DB	'nc error. Source LOD = %s, date = %s', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DH@HEFK@LODs?5are?5potentially?5out?5of?5sync@
_DATA	SEGMENT
??_C@_0DH@HEFK@LODs?5are?5potentially?5out?5of?5sync@ DB 'LODs are potent'
	DB	'ially out of sync.  See trace for more.', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CL@KDAM@Rules?5violation?3?5physical?5mappin@
_DATA	SEGMENT
??_C@_0CL@KDAM@Rules?5violation?3?5physical?5mappin@ DB 'Rules violation:'
	DB	' physical mapping mismatch', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_05OGKG@?$CFs?4?$CFs?$AA@
_DATA	SEGMENT
??_C@_05OGKG@?$CFs?4?$CFs?$AA@ DB '%s.%s', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@PBHO@?5?5?5Target?5entity?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BE@PBHO@?5?5?5Target?5entity?5?$DN?5?$AA@ DB '   Target entity = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@MDEO@?5?5?5Source?5entity?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BE@MDEO@?5?5?5Source?5entity?5?$DN?5?$AA@ DB '   Source entity = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0HA@PGKE@Target?5entity?5has?5physical?5mappi@
_DATA	SEGMENT
??_C@_0HA@PGKE@Target?5entity?5has?5physical?5mappi@ DB 'Target entity ha'
	DB	's physical mapping but source entity does not.  Rebuild sourc'
	DB	'e LOD with TE.', 0aH, 'See trace for more.', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_07JCAB@BombZDr?$AA@
_DATA	SEGMENT
??_C@_07JCAB@BombZDr?$AA@ DB 'BombZDr', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_07FGLN@?$FLDebug?$FN?$AA@
_DATA	SEGMENT
??_C@_07FGLN@?$FLDebug?$FN?$AA@ DB '[Debug]', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0KP@CPHB@IncludeSubobjectFromSubobject?5In@
_DATA	SEGMENT
??_C@_0KP@CPHB@IncludeSubobjectFromSubobject?5In@ DB 'IncludeSubobjectFro'
	DB	'mSubobject Include source task (0x%08x) does not match target'
	DB	' task (0x%08x), but target task is the application task - Sou'
	DB	'rce Entity: %s  Target Entity: %s', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0KN@DOGI@IncludeSubobjectFromSubobject?5In@
_DATA	SEGMENT
??_C@_0KN@DOGI@IncludeSubobjectFromSubobject?5In@ DB 'IncludeSubobjectFro'
	DB	'mSubobject Include source task (0x%08x) does not match target'
	DB	' task (0x%08x), but target task is the application taskSource'
	DB	' Entity: %s   Target Entity: %s', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0IF@BGLH@IncludeSubobjectFromSubobject?5In@
_DATA	SEGMENT
??_C@_0IF@BGLH@IncludeSubobjectFromSubobject?5In@ DB 'IncludeSubobjectFro'
	DB	'mSubobject Include source task (0x%08x) does not match target'
	DB	' task (0x%08x) Source Entity: %s   Target Entity: %s', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@DLHG@?$CFs?4?$CFs?4?$CFs?5Offset?5?$DN?5?$CFd?$AA@
_DATA	SEGMENT
??_C@_0BF@DLHG@?$CFs?4?$CFs?4?$CFs?5Offset?5?$DN?5?$CFd?$AA@ DB '%s.%s.%s'
	DB	' Offset = %d', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@GADJ@?$CIso?$CJ?5IncludeSubobject?5Src?5?$AA@
_DATA	SEGMENT
??_C@_0BL@GADJ@?$CIso?$CJ?5IncludeSubobject?5Src?5?$AA@ DB '(so) IncludeS'
	DB	'ubobject Src ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@DGIM@?$CIso?$CJ?5No?5matching?5Src?5Attrib?$AA@
_DATA	SEGMENT
??_C@_0BM@DGIM@?$CIso?$CJ?5No?5matching?5Src?5Attrib?$AA@ DB '(so) No mat'
	DB	'ching Src Attrib', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@KKFN@?$CIso?$CJ?5IncludeSubobject?5Tgt?5?$AA@
_DATA	SEGMENT
??_C@_0BL@KKFN@?$CIso?$CJ?5IncludeSubobject?5Tgt?5?$AA@ DB '(so) IncludeS'
	DB	'ubobject Tgt ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0IK@MJCC@Source?5entity?5was?5built?5with?5TE?5@
_DATA	SEGMENT
??_C@_0IK@MJCC@Source?5entity?5was?5built?5with?5TE?5@ DB 'Source entity '
	DB	'was built with TE but the target entity was not and attribute'
	DB	's do not match. Rebuild target LOD with TE.', 0aH, 'Target en'
	DB	'tity name', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTgtView$ = 8
_cpcTgtEntityName$ = 12
_lpSrcView$ = 16
_cpcSrcEntityName$ = 20
_nPosition$ = 24
_lpCurrentTask$ = -316
_lpSrcOwningTask$ = -32
_lpTgtOwningTask$ = -28
_lpSrcViewOD$ = -8
_lpTgtViewOD$ = -24
_lpSrcViewEntity$ = -308
_lpTgtViewEntity$ = -312
_lpSrcViewEntityCsr$ = -304
_lpTgtViewEntityCsr$ = -20
_lpSrcViewOI$ = -292
_lpTgtViewOI$ = -12
_lpViewCsr$ = -4
_cpcEntityName$ = -288
_bNewRoot$ = -300
_nPositionOK$ = -296
_nRC$ = -16
_szMsg$8418 = -516
_szMsg$8425 = -720
_lpViewOD$8426 = -520
_szDebug$8440 = -724
_lpTgtAttrib$8456 = -732
_lpSrcAttrib$8457 = -728
_szMsg$8471 = -988
_lpViewOD$8472 = -736
_lpSrcInstance$8489 = -996
_lpTgtParent$8490 = -992
_lpPrevVsn$8503 = -1004
_lpParentCsr$8504 = -1000
_lpTemp$8531 = -1008
_lpWorkView$8537 = -1012
_lpWorkViewEntity$8538 = -1020
_lpWorkViewEntityCsr$8539 = -1016
_n$8540 = -1024
_IncludeSubobjectFromSubobject@20 PROC NEAR

; 2644 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 1028				; 00000404H

; 2645 :    LPTASK            lpCurrentTask;
; 2646 :    LPTASK            lpSrcOwningTask;
; 2647 :    LPTASK            lpTgtOwningTask;
; 2648 :    LPVIEWOD          lpSrcViewOD;
; 2649 :    LPVIEWOD          lpTgtViewOD;
; 2650 :    LPVIEWENTITY      lpSrcViewEntity;
; 2651 :    LPVIEWENTITY      lpTgtViewEntity;
; 2652 :    LPVIEWENTITYCSR   lpSrcViewEntityCsr;
; 2653 :    LPVIEWENTITYCSR   lpTgtViewEntityCsr;
; 2654 :    LPVIEWOI          lpSrcViewOI;
; 2655 :    LPVIEWOI          lpTgtViewOI;
; 2656 :    LPVIEWCSR         lpViewCsr;
; 2657 :    zCHAR             cpcEntityName[ 255 ];
; 2658 :    zSHORT            bNewRoot;
; 2659 :    zSHORT            nPositionOK;
; 2660 :    zSHORT            nRC;
; 2661 : 
; 2662 :    // Validate that the source view entity exists and has a cursor
; 2663 :    // value for copying, we call fnValidateInstanceParameters for the
; 2664 :    // source since it requires the same editing as an attribute retrieval.
; 2665 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 2666 :                                       &lpSrcViewEntity,
; 2667 :                                       &lpSrcViewEntityCsr,
; 2668 :                                       iIncludeSubobjectFromSubobject,
; 2669 :                                       lpSrcView,
; 2670 :                                       cpcSrcEntityName, 0 ) )

	push	0
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	push	105					; 00000069H
	lea	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateInstanceParameters
	add	esp, 28					; 0000001cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8400

; 2672 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8400:

; 2674 : 
; 2675 :    // Validate that the view passed is valid.
; 2676 :    if ( fnValidViewCsr( lpCurrentTask, lpTgtView ) == 0 )

	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidViewCsr
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L8401

; 2678 :       fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 2679 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8401:

; 2681 : 
; 2682 :    if ( (lpTgtViewEntity = fnValidViewEntity( &lpTgtViewEntityCsr,
; 2683 :                                               lpTgtView,
; 2684 :                                               cpcTgtEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcTgtEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpTgtViewEntity$[ebp], eax
	cmp	DWORD PTR _lpTgtViewEntity$[ebp], 0
	jne	SHORT $L8402

; 2686 :       fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 2687 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8402:

; 2689 : 
; 2690 :    // If intent is update and the target view is read-only, fail the call.
; 2691 :    if ( lpTgtView->bReadOnly )

	mov	edx, DWORD PTR _lpTgtView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	shr	eax, 6
	and	eax, 1
	test	eax, eax
	je	SHORT $L8404

; 2693 :       // We'll only fail the call if the entity isn't down a derived path.
; 2694 :       if ( lpTgtViewEntity->bDerivedPath == FALSE )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 14					; 0000000eH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8404

; 2696 :          // "KZOEE119 - Invalid View, View is Read Only"
; 2697 :          fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 119, 0, cpcTgtEntityName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcTgtEntityName$[ebp]
	push	eax
	push	0
	push	119					; 00000077H
	push	8
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2698 :          fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 2699 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8404:

; 2702 : 
; 2703 :    // Make sure entity can be included.
; 2704 :    if ( lpSrcViewEntity->bInclSrc == FALSE )

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8405

; 2706 :       strcpy( cpcEntityName, "\nEntity: \t" );

	push	OFFSET FLAT:??_C@_0L@FACN@?6Entity?3?5?7?$AA@ ; `string'
	lea	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 2707 :       strcat( cpcEntityName, lpSrcViewEntity->szName );

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 2708 : 
; 2709 :       // "KZOEE106 - Rules violation"
; 2710 :       fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 106, 0,
; 2711 :                         "Source Entity not includeble",
; 2712 :                         cpcEntityName );

	lea	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BN@OGJL@Source?5Entity?5not?5includeble?$AA@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2713 :       fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 2714 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8405:

; 2716 : 
; 2717 :    // Make sure entity can be included.
; 2718 :    if ( lpTgtViewEntity->hParent && lpTgtViewEntity->bInclude == FALSE )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	cmp	DWORD PTR [ecx+10], 0
	je	$L8407
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 3
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8407

; 2720 :       strcpy( cpcEntityName, "\nEntity: \t" );

	push	OFFSET FLAT:??_C@_0L@FACN@?6Entity?3?5?7?$AA@ ; `string'
	lea	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 2721 :       strcat( cpcEntityName, lpTgtViewEntity->szName );

	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	lea	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 2722 : 
; 2723 :       // "KZOEE106 - Rules violation"
; 2724 :       fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 106, 0,
; 2725 :                         "Entity inclusion not allowed",
; 2726 :                         cpcEntityName );

	lea	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BN@PAO@Entity?5inclusion?5not?5allowed?$AA@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2727 :       fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 2728 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8407:

; 2730 : 
; 2731 :    // Make sure that the LODs are in sync.  They are out of sync if the LODs
; 2732 :    // were built with different dates for the ER.  We won't bother performing
; 2733 :    // the check if either LOD doesn't have the ER date.  This allows old LODs
; 2734 :    // to work.
; 2735 :    lpSrcViewOD = zGETPTR( lpSrcView->hViewOD );

	mov	edx, DWORD PTR _lpSrcView$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewOD$[ebp], eax

; 2736 :    lpTgtViewOD = zGETPTR( lpTgtView->hViewOD );

	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewOD$[ebp], eax

; 2737 :    if ( lpSrcViewOD->szER_Date[ 0 ] && lpTgtViewOD->szER_Date[ 0 ] &&
; 2738 :         zstrcmp( lpSrcViewOD->szER_Date, lpTgtViewOD->szER_Date ) != 0 )

	mov	eax, DWORD PTR _lpSrcViewOD$[ebp]
	movsx	ecx, BYTE PTR [eax+248]
	test	ecx, ecx
	je	$L8417
	mov	edx, DWORD PTR _lpTgtViewOD$[ebp]
	movsx	eax, BYTE PTR [edx+248]
	test	eax, eax
	je	$L8417
	mov	ecx, DWORD PTR _lpSrcViewOD$[ebp]
	movsx	edx, BYTE PTR [ecx+248]
	mov	eax, DWORD PTR _lpTgtViewOD$[ebp]
	movsx	ecx, BYTE PTR [eax+248]
	cmp	edx, ecx
	jne	SHORT $L9905
	mov	edx, DWORD PTR _lpTgtViewOD$[ebp]
	add	edx, 248				; 000000f8H
	push	edx
	mov	eax, DWORD PTR _lpSrcViewOD$[ebp]
	add	eax, 248				; 000000f8H
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -1028+[ebp], eax
	jmp	SHORT $L9906
$L9905:
	mov	ecx, DWORD PTR _lpSrcViewOD$[ebp]
	movsx	edx, BYTE PTR [ecx+248]
	mov	eax, DWORD PTR _lpTgtViewOD$[ebp]
	movsx	ecx, BYTE PTR [eax+248]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -1028+[ebp], eax
$L9906:
	cmp	DWORD PTR -1028+[ebp], 0
	je	$L8417

; 2740 :       zCHAR szMsg[ 200 ];
; 2741 : 
; 2742 :       TraceLineS( "ERROR: ", "The following LODs are out of sync and should be re-built" );

	push	OFFSET FLAT:??_C@_0DK@NDAP@The?5following?5LODs?5are?5out?5of?5sy@ ; `string'
	push	OFFSET FLAT:??_C@_07JCPH@ERROR?3?5?$AA@	; `string'
	call	_TraceLineS@8

; 2743 : 
; 2744 :       zsprintf( szMsg, "Out-of-sync error. Target LOD = %s, date = %s",
; 2745 :                 lpTgtViewOD->szName, lpTgtViewOD->szER_Date );

	mov	ecx, DWORD PTR _lpTgtViewOD$[ebp]
	add	ecx, 248				; 000000f8H
	push	ecx
	mov	edx, DWORD PTR _lpTgtViewOD$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	push	OFFSET FLAT:??_C@_0CO@BJBK@Out?9of?9sync?5error?4?5Target?5LOD?5?$DN?5@ ; `string'
	lea	eax, DWORD PTR _szMsg$8418[ebp]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 2746 :       TraceLineS( "ERROR: ", szMsg );

	lea	ecx, DWORD PTR _szMsg$8418[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_07JCPH@ERROR?3?5?$AA@	; `string'
	call	_TraceLineS@8

; 2747 : 
; 2748 :       zsprintf( szMsg, "Out-of-sync error. Source LOD = %s, date = %s",
; 2749 :                 lpSrcViewOD->szName, lpSrcViewOD->szER_Date );

	mov	edx, DWORD PTR _lpSrcViewOD$[ebp]
	add	edx, 248				; 000000f8H
	push	edx
	mov	eax, DWORD PTR _lpSrcViewOD$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0CO@PONF@Out?9of?9sync?5error?4?5Source?5LOD?5?$DN?5@ ; `string'
	lea	ecx, DWORD PTR _szMsg$8418[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 2750 :       TraceLineS( "ERROR: ", szMsg );

	lea	edx, DWORD PTR _szMsg$8418[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_07JCPH@ERROR?3?5?$AA@	; `string'
	call	_TraceLineS@8

; 2751 : 
; 2752 :       // "KZOEE106 - Rules violation"
; 2753 :       fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 106, 0,
; 2754 :                         "LODs are potentially out of sync.  See trace for more.",
; 2755 :                         lpTgtViewOD->szName );

	mov	eax, DWORD PTR _lpTgtViewOD$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0DH@HEFK@LODs?5are?5potentially?5out?5of?5sync@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2756 : 
; 2757 :       fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 2758 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8417:

; 2760 : 
; 2761 :    // DGC 97/03/19 Added following checks.
; 2762 : 
; 2763 :    // If the target entity has physical information then the source view had
; 2764 :    // better have physical information.
; 2765 :    if ( lpTgtViewEntity->hFirstDataRecord &&
; 2766 :         lpSrcViewEntity->hFirstDataRecord == 0 )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	cmp	DWORD PTR [ecx+191], 0
	je	$L8424
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	cmp	DWORD PTR [edx+191], 0
	jne	$L8424

; 2768 :       zCHAR    szMsg[ 200 ];
; 2769 :       LPVIEWOD lpViewOD;
; 2770 : 
; 2771 :       TraceLineS( "Rules violation: physical mapping mismatch", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CL@KDAM@Rules?5violation?3?5physical?5mappin@ ; `string'
	call	_TraceLineS@8

; 2772 : 
; 2773 :       lpViewOD = zGETPTR( lpTgtView->hViewOD );

	mov	eax, DWORD PTR _lpTgtView$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8426[ebp], eax

; 2774 :       zsprintf( szMsg, "%s.%s", lpViewOD->szName, lpTgtViewEntity->szName );

	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpViewOD$8426[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_05OGKG@?$CFs?4?$CFs?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$8425[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 2775 :       TraceLineS( "   Target entity = ", szMsg );

	lea	edx, DWORD PTR _szMsg$8425[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BE@PBHO@?5?5?5Target?5entity?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 2776 : 
; 2777 :       lpViewOD = zGETPTR( lpSrcView->hViewOD );

	mov	eax, DWORD PTR _lpSrcView$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8426[ebp], eax

; 2778 :       zsprintf( szMsg, "%s.%s", lpViewOD->szName, lpSrcViewEntity->szName );

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpViewOD$8426[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_05OGKG@?$CFs?4?$CFs?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$8425[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 2779 :       TraceLineS( "   Source entity = ", szMsg );

	lea	edx, DWORD PTR _szMsg$8425[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BE@MDEO@?5?5?5Source?5entity?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 2780 : 
; 2781 :       // "KZOEE106 - Rules violation"
; 2782 :       fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 106, 0,
; 2783 :                         "Target entity has physical mapping but source "
; 2784 :                         "entity does not.  Rebuild source LOD with TE.\n"
; 2785 :                         "See trace for more.", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0HA@PGKE@Target?5entity?5has?5physical?5mappi@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2786 :       fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 2787 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8424:

; 2789 : 
; 2790 :    // Get source and target tasks ... steal the owning variables for a second
; 2791 :    // so we can do the test immediately following.
; 2792 :    lpSrcOwningTask = zGETPTR( lpSrcView->hTask );

	mov	eax, DWORD PTR _lpSrcView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcOwningTask$[ebp], eax

; 2793 :    lpTgtOwningTask = zGETPTR( lpTgtView->hTask );

	mov	edx, DWORD PTR _lpTgtView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtOwningTask$[ebp], eax

; 2794 : 
; 2795 :    // If the task of the source view is not equal to the task of the target
; 2796 :    // view, we will have a problem if the source task is destroyed before the
; 2797 :    // target task.  So we will error out of here unless perhaps the source
; 2798 :    // task is the application or main (anchor) task.
; 2799 : #if 0
; 2800 :    if ( lpTgtView->hTask != lpSrcView->hTask )
; 2801 :       SysMessageBox( 0, "OE Error",
; 2802 :                      "IncludeSubobjectFromSubobject source and target views task conflict",
; 2803 :                      -1 );
; 2804 : #else
; 2805 :    if ( lpTgtView->hTask != lpSrcView->hTask &&
; 2806 :         lpSrcView->bApplicationView == FALSE &&
; 2807 :         lpSrcOwningTask->bApplicationTask == FALSE &&
; 2808 :         lpTgtOwningTask->bApplicationTask == FALSE &&
; 2809 :         lpSrcView->hTask != AnchorBlock->hMainTask )

	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	mov	eax, DWORD PTR [ecx+14]
	cmp	eax, DWORD PTR [edx+14]
	je	$L8453
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	shr	edx, 3
	and	edx, 1
	test	edx, edx
	jne	$L8453
	mov	eax, DWORD PTR _lpSrcOwningTask$[ebp]
	mov	ecx, DWORD PTR [eax+443]
	shr	ecx, 13					; 0000000dH
	and	ecx, 1
	test	ecx, ecx
	jne	$L8453
	mov	edx, DWORD PTR _lpTgtOwningTask$[ebp]
	mov	eax, DWORD PTR [edx+443]
	shr	eax, 13					; 0000000dH
	and	eax, 1
	test	eax, eax
	jne	$L8453
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [ecx+14]
	cmp	eax, DWORD PTR [edx+106]
	je	$L8453

; 2811 :       static zSHORT k = 0;
; 2812 :       zCHAR szDebug[ 2 ];
; 2813 : 
; 2814 :       if ( k == 0 )

	movsx	ecx, WORD PTR _?k@?M@??IncludeSubobjectFromSubobject@@9@9
	test	ecx, ecx
	jne	SHORT $L8441

; 2815 :          SysReadZeidonIni( -1, "[Debug]", "BombZDr", szDebug );

	lea	edx, DWORD PTR _szDebug$8440[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_07JCAB@BombZDr?$AA@	; `string'
	push	OFFSET FLAT:??_C@_07FGLN@?$FLDebug?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16
$L8441:

; 2816 : 
; 2817 :       if ( k == 0 && szDebug[ 0 ] == 'Y' )

	movsx	eax, WORD PTR _?k@?M@??IncludeSubobjectFromSubobject@@9@9
	test	eax, eax
	jne	$L8444
	movsx	ecx, BYTE PTR _szDebug$8440[ebp]
	cmp	ecx, 89					; 00000059H
	jne	$L8444

; 2819 :          lpTgtOwningTask = zGETPTR( lpTgtView->hTask );

	mov	edx, DWORD PTR _lpTgtView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtOwningTask$[ebp], eax

; 2820 :          if ( lpTgtOwningTask->bApplicationTask )

	mov	ecx, DWORD PTR _lpTgtOwningTask$[ebp]
	mov	edx, DWORD PTR [ecx+443]
	shr	edx, 13					; 0000000dH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8446

; 2822 :             TraceLine( "IncludeSubobjectFromSubobject Include source task (0x%08x) "
; 2823 :                          "does not match target task (0x%08x), but target task is the "
; 2824 :                          "application task - Source Entity: %s  Target Entity: %s",
; 2825 :                        lpSrcView->hTask, lpTgtView->hTask,
; 2826 :                        cpcSrcEntityName, cpcTgtEntityName );

	mov	eax, DWORD PTR _cpcTgtEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcSrcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	push	OFFSET FLAT:??_C@_0KP@CPHB@IncludeSubobjectFromSubobject?5In@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H

; 2828 :          else

	jmp	SHORT $L8448
$L8446:

; 2830 :             k /= k;

	movsx	eax, WORD PTR _?k@?M@??IncludeSubobjectFromSubobject@@9@9
	movsx	ecx, WORD PTR _?k@?M@??IncludeSubobjectFromSubobject@@9@9
	cdq
	idiv	ecx
	mov	WORD PTR _?k@?M@??IncludeSubobjectFromSubobject@@9@9, ax

; 2831 :             k++;

	mov	dx, WORD PTR _?k@?M@??IncludeSubobjectFromSubobject@@9@9
	add	dx, 1
	mov	WORD PTR _?k@?M@??IncludeSubobjectFromSubobject@@9@9, dx

; 2832 : 
; 2833 :             // "KZOEE451 - Include source task does not match target task"
; 2834 :             fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 451, 0, cpcTgtEntityName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcTgtEntityName$[ebp]
	push	eax
	push	0
	push	451					; 000001c3H
	push	8
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH
$L8448:

; 2840 :       else

	jmp	SHORT $L8453
$L8444:

; 2842 :          lpTgtOwningTask = zGETPTR( lpTgtView->hTask );

	mov	eax, DWORD PTR _lpTgtView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtOwningTask$[ebp], eax

; 2843 :          if ( lpTgtOwningTask->bApplicationTask )

	mov	edx, DWORD PTR _lpTgtOwningTask$[ebp]
	mov	eax, DWORD PTR [edx+443]
	shr	eax, 13					; 0000000dH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8451

; 2845 :             TraceLine( "IncludeSubobjectFromSubobject Include source task (0x%08x) does not match target task (0x%08x),"
; 2846 :                          " but target task is the application task"
; 2847 :                          "Source Entity: %s   Target Entity: %s",
; 2848 :                        lpSrcView->hTask, lpTgtView->hTask,
; 2849 :                        cpcSrcEntityName, cpcTgtEntityName );

	mov	ecx, DWORD PTR _cpcTgtEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcSrcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	push	OFFSET FLAT:??_C@_0KN@DOGI@IncludeSubobjectFromSubobject?5In@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H

; 2851 :          else

	jmp	SHORT $L8453
$L8451:

; 2853 :             TraceLine( "IncludeSubobjectFromSubobject Include source task (0x%08x) does not match target task (0x%08x) "
; 2854 :                          "Source Entity: %s   Target Entity: %s",
; 2855 :                        lpSrcView->hTask, lpTgtView->hTask,
; 2856 :                        cpcSrcEntityName, cpcTgtEntityName );

	mov	ecx, DWORD PTR _cpcTgtEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcSrcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	push	OFFSET FLAT:??_C@_0IF@BGLH@IncludeSubobjectFromSubobject?5In@ ; `string'
	call	_TraceLine
	add	esp, 20					; 00000014H
$L8453:

; 2860 : #endif
; 2861 : 
; 2862 :    // If the source entity has physical mapping but the target entity does
; 2863 :    // not, then it's possible that the attributes in each entity don't match.
; 2864 :    // Make sure that each attribute in the target has a matching attribute in
; 2865 :    // the source.
; 2866 :    if ( lpTgtViewEntity->hFirstDataRecord == 0 &&
; 2867 :         lpSrcViewEntity->hFirstDataRecord )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	cmp	DWORD PTR [ecx+191], 0
	jne	$L8462
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	cmp	DWORD PTR [edx+191], 0
	je	$L8462

; 2869 :       LPVIEWATTRIB lpTgtAttrib;
; 2870 :       LPVIEWATTRIB lpSrcAttrib;
; 2871 : 
; 2872 :       // Loop through each of the target attributes.
; 2873 :       for ( lpTgtAttrib = zGETPTR( lpTgtViewEntity->hFirstOD_Attrib );
; 2874 :             lpTgtAttrib;
; 2875 :             lpTgtAttrib = zGETPTR( lpTgtAttrib->hNextOD_Attrib ) )

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+179]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtAttrib$8456[ebp], eax
	jmp	SHORT $L8460
$L8461:
	mov	edx, DWORD PTR _lpTgtAttrib$8456[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtAttrib$8456[ebp], eax
$L8460:
	cmp	DWORD PTR _lpTgtAttrib$8456[ebp], 0
	je	$L8462

; 2877 :          // We only care about persistent attributes.
; 2878 :          if ( lpTgtAttrib->bPersist == FALSE )

	mov	ecx, DWORD PTR _lpTgtAttrib$8456[ebp]
	mov	edx, DWORD PTR [ecx+193]
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8463

; 2879 :             continue;

	jmp	SHORT $L8461
$L8463:

; 2880 : 
; 2881 :          // Look for a matching source attribute.
; 2882 :          for ( lpSrcAttrib = zGETPTR( lpSrcViewEntity->hFirstOD_Attrib );
; 2883 :                lpSrcAttrib && lpSrcAttrib->lERAttTok != lpTgtAttrib->lERAttTok;
; 2884 :                lpSrcAttrib = zGETPTR( lpSrcAttrib->hNextOD_Attrib ) )

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+179]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcAttrib$8457[ebp], eax
	jmp	SHORT $L8466
$L8467:
	mov	edx, DWORD PTR _lpSrcAttrib$8457[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcAttrib$8457[ebp], eax
$L8466:
	cmp	DWORD PTR _lpSrcAttrib$8457[ebp], 0
	je	SHORT $L8468
	mov	ecx, DWORD PTR _lpSrcAttrib$8457[ebp]
	mov	edx, DWORD PTR _lpTgtAttrib$8456[ebp]
	mov	eax, DWORD PTR [ecx+177]
	cmp	eax, DWORD PTR [edx+177]
	je	SHORT $L8468

; 2886 :             // Nothing needs to be done here.
; 2887 :          }

	jmp	SHORT $L8467
$L8468:

; 2888 : 
; 2889 :          // If lpSrcAttrib is 0 then we didn't find a matching source attrib.
; 2890 :          // If the offsets don't match then we also have an error.
; 2891 :          if ( lpSrcAttrib == 0 ||
; 2892 :               lpSrcAttrib->ulRecordOffset != lpTgtAttrib->ulRecordOffset )

	cmp	DWORD PTR _lpSrcAttrib$8457[ebp], 0
	je	SHORT $L8470
	mov	ecx, DWORD PTR _lpSrcAttrib$8457[ebp]
	mov	edx, DWORD PTR _lpTgtAttrib$8456[ebp]
	mov	eax, DWORD PTR [ecx+250]
	cmp	eax, DWORD PTR [edx+250]
	je	$L8469
$L8470:

; 2894 :             zCHAR szMsg[ 250 ];
; 2895 :             LPVIEWOD lpViewOD;
; 2896 : 
; 2897 :             if ( lpSrcAttrib )

	cmp	DWORD PTR _lpSrcAttrib$8457[ebp], 0
	je	SHORT $L8473

; 2899 :                lpViewOD = (LPVIEWOD) zGETPTR( lpSrcView->hViewOD );

	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8472[ebp], eax

; 2900 : 
; 2901 :                zsprintf( szMsg, "%s.%s.%s Offset = %d",
; 2902 :                          lpViewOD->szName,
; 2903 :                          lpSrcViewEntity->szName,
; 2904 :                          lpSrcAttrib->szName,
; 2905 :                          lpSrcAttrib->ulRecordOffset );

	mov	eax, DWORD PTR _lpSrcAttrib$8457[ebp]
	mov	ecx, DWORD PTR [eax+250]
	push	ecx
	mov	edx, DWORD PTR _lpSrcAttrib$8457[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$8472[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0BF@DLHG@?$CFs?4?$CFs?4?$CFs?5Offset?5?$DN?5?$CFd?$AA@ ; `string'
	lea	edx, DWORD PTR _szMsg$8471[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 24					; 00000018H

; 2906 :                TraceLineS( "(so) IncludeSubobject Src ", szMsg );

	lea	eax, DWORD PTR _szMsg$8471[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BL@GADJ@?$CIso?$CJ?5IncludeSubobject?5Src?5?$AA@ ; `string'
	call	_TraceLineS@8

; 2908 :             else

	jmp	SHORT $L8478
$L8473:

; 2909 :                TraceLineS( "(so) No matching Src Attrib", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BM@DGIM@?$CIso?$CJ?5No?5matching?5Src?5Attrib?$AA@ ; `string'
	call	_TraceLineS@8
$L8478:

; 2910 : 
; 2911 :             lpViewOD = (LPVIEWOD) zGETPTR( lpTgtView->hViewOD );

	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$8472[ebp], eax

; 2912 :             zsprintf( szMsg, "%s.%s.%s Offset = %d",
; 2913 :                       lpViewOD->szName,
; 2914 :                       lpTgtViewEntity->szName,
; 2915 :                       lpTgtAttrib->szName,
; 2916 :                       lpTgtAttrib->ulRecordOffset );

	mov	eax, DWORD PTR _lpTgtAttrib$8456[ebp]
	mov	ecx, DWORD PTR [eax+250]
	push	ecx
	mov	edx, DWORD PTR _lpTgtAttrib$8456[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$8472[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0BF@DLHG@?$CFs?4?$CFs?4?$CFs?5Offset?5?$DN?5?$CFd?$AA@ ; `string'
	lea	edx, DWORD PTR _szMsg$8471[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 24					; 00000018H

; 2917 :             TraceLineS( "(so) IncludeSubobject Tgt ", szMsg );

	lea	eax, DWORD PTR _szMsg$8471[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BL@KKFN@?$CIso?$CJ?5IncludeSubobject?5Tgt?5?$AA@ ; `string'
	call	_TraceLineS@8

; 2918 : 
; 2919 :             strcpy( cpcEntityName, "\nEntity: \t" );

	push	OFFSET FLAT:??_C@_0L@FACN@?6Entity?3?5?7?$AA@ ; `string'
	lea	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 2920 :             strcat( cpcEntityName, lpTgtViewEntity->szName );

	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	lea	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 2921 : 
; 2922 :             // "KZOEE106 - Rules violation"
; 2923 :             fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 106, 0,
; 2924 :                               "Source entity was built with TE but the target "
; 2925 :                               "entity was not and attributes do not match. "
; 2926 :                               "Rebuild target LOD with TE.\n"
; 2927 :                               "Target entity name",
; 2928 :                               cpcEntityName );

	lea	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0IK@MJCC@Source?5entity?5was?5built?5with?5TE?5@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2929 :             fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 2930 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8469:

; 2932 : 
; 2933 :       } // For each lpTgtAttrib...

	jmp	$L8461
$L8462:

; 2936 :      //      lpSrcViewEntity->hFirstDataRecord )...
; 2937 : 
; 2938 :    // DGC 97/03/19 End.
; 2939 : 
; 2940 :    lpViewCsr   = zGETPTR( lpSrcView->hViewCsr );

	mov	edx, DWORD PTR _lpSrcView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2941 :    lpSrcViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewOI$[ebp], eax

; 2942 :    lpViewCsr   = zGETPTR( lpTgtView->hViewCsr );

	mov	eax, DWORD PTR _lpTgtView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2943 :    lpTgtViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewOI$[ebp], eax

; 2944 : 
; 2945 :    // Versioning rule, the source instance can be versioned, but the
; 2946 :    // include will actually take place from the OLDEST version of the
; 2947 :    // source. If the source instances OLDEST version is under a version
; 2948 :    // root with a previous version, then we must fail the include
; 2949 :    // request since the cancel of the version root will cause the
; 2950 :    // included instance to totally disappear.
; 2951 :    if ( lpSrcViewOI->nVersionedInstances )

	mov	ecx, DWORD PTR _lpSrcViewOI$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	test	edx, edx
	je	$L8530

; 2953 :       LPENTITYINSTANCE lpSrcInstance;
; 2954 :       LPENTITYINSTANCE lpTgtParent;
; 2955 : 
; 2956 :       lpSrcInstance = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$8489[ebp], eax

; 2957 : 
; 2958 :       // If the source of the include is a temporal entity, issue an
; 2959 :       // error because a cancel could UNDO the include and this
; 2960 :       // would be confusing to the application developer!
; 2961 :       if ( lpSrcInstance->u.nInd.bTemporal &&
; 2962 :            lpSrcViewOI != lpTgtViewOI )

	mov	edx, DWORD PTR _lpSrcInstance$8489[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8492
	mov	ecx, DWORD PTR _lpSrcViewOI$[ebp]
	cmp	ecx, DWORD PTR _lpTgtViewOI$[ebp]
	je	SHORT $L8492

; 2964 :          //  "KZOEE141 - Attempt to include a subobject whose root is a "
; 2965 :          //  "           Temporal Entity"
; 2966 :          fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 141, 0,
; 2967 :                            lpSrcViewEntity->szName, 0 );

	push	0
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	141					; 0000008dH
	push	8
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2968 :          fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 2969 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8492:

; 2971 : 
; 2972 :       while ( lpSrcInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpSrcInstance$8489[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L8495

; 2973 :          lpSrcInstance = zGETPTR( lpSrcInstance->hPrevVsn );

	mov	ecx, DWORD PTR _lpSrcInstance$8489[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$8489[ebp], eax
	jmp	SHORT $L8492
$L8495:

; 2974 : 
; 2975 :       while ( lpSrcInstance )

	cmp	DWORD PTR _lpSrcInstance$8489[ebp], 0
	je	SHORT $L8499

; 2977 :          if ( lpSrcInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpSrcInstance$8489[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L8500

; 2978 :             break;

	jmp	SHORT $L8499
$L8500:

; 2979 : 
; 2980 :          lpSrcInstance = zGETPTR( lpSrcInstance->hParent );

	mov	ecx, DWORD PTR _lpSrcInstance$8489[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$8489[ebp], eax

; 2981 :       }

	jmp	SHORT $L8495
$L8499:

; 2982 : 
; 2983 :       // The source instance is versioned, now it is pointing to
; 2984 :       // the root of sources previous version, see if the parent
; 2985 :       // target entity instance is part of the same version, if so
; 2986 :       // then the include can happen, otherwise the include must fail
; 2987 :       // because it may disappear as the result of a cancel call.
; 2988 :       if ( lpSrcInstance && lpTgtViewEntityCsr->hParent )

	cmp	DWORD PTR _lpSrcInstance$8489[ebp], 0
	je	$L8529
	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+10], 0
	je	$L8529

; 2990 :          LPENTITYINSTANCE lpPrevVsn;
; 2991 :          LPVIEWENTITYCSR  lpParentCsr;
; 2992 : 
; 2993 :          lpSrcInstance = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$8489[ebp], eax
$L8507:

; 2994 :          while ( lpSrcInstance )

	cmp	DWORD PTR _lpSrcInstance$8489[ebp], 0
	je	SHORT $L8508

; 2996 :             lpPrevVsn = zGETPTR( lpSrcInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpSrcInstance$8489[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$8503[ebp], eax

; 2997 :             if ( (lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot) ||
; 2998 :                  lpSrcInstance->u.nInd.bTemporal )

	cmp	DWORD PTR _lpPrevVsn$8503[ebp], 0
	je	SHORT $L8512
	mov	edx, DWORD PTR _lpPrevVsn$8503[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 9
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8511
$L8512:
	mov	ecx, DWORD PTR _lpSrcInstance$8489[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8510
$L8511:

; 3000 :                break;

	jmp	SHORT $L8508
$L8510:

; 3002 : 
; 3003 :             lpSrcInstance = zGETPTR( lpSrcInstance->hParent );

	mov	eax, DWORD PTR _lpSrcInstance$8489[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$8489[ebp], eax

; 3004 :          }

	jmp	SHORT $L8507
$L8508:

; 3005 : 
; 3006 :          lpParentCsr = zGETPTR( lpTgtViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentCsr$8504[ebp], eax

; 3007 :          if ( lpParentCsr->hEntityInstance == UNSET_CSR )

	mov	ecx, DWORD PTR _lpParentCsr$8504[ebp]
	cmp	DWORD PTR [ecx+26], 1
	jne	SHORT $L8516

; 3008 :             fnEstablishCursorForView( lpParentCsr );

	mov	edx, DWORD PTR _lpParentCsr$8504[ebp]
	push	edx
	call	_fnEstablishCursorForView
	add	esp, 4
$L8516:

; 3009 : 
; 3010 :          lpTgtParent = zGETPTR( lpParentCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpParentCsr$8504[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtParent$8490[ebp], eax
$L8519:

; 3011 :          while ( lpTgtParent )

	cmp	DWORD PTR _lpTgtParent$8490[ebp], 0
	je	SHORT $L8520

; 3013 :             lpPrevVsn = zGETPTR( lpTgtParent->hPrevVsn );

	mov	edx, DWORD PTR _lpTgtParent$8490[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$8503[ebp], eax

; 3014 :             if ( (lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot) ||
; 3015 :                  lpTgtParent->u.nInd.bTemporal )

	cmp	DWORD PTR _lpPrevVsn$8503[ebp], 0
	je	SHORT $L8524
	mov	ecx, DWORD PTR _lpPrevVsn$8503[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 9
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8523
$L8524:
	mov	eax, DWORD PTR _lpTgtParent$8490[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8522
$L8523:

; 3017 :                break;

	jmp	SHORT $L8520
$L8522:

; 3019 : 
; 3020 :             lpTgtParent = zGETPTR( lpTgtParent->hParent );

	mov	edx, DWORD PTR _lpTgtParent$8490[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtParent$8490[ebp], eax

; 3021 :          }

	jmp	SHORT $L8519
$L8520:

; 3022 : 
; 3023 :          if ( lpTgtParent == 0 || lpTgtParent != lpSrcInstance )

	cmp	DWORD PTR _lpTgtParent$8490[ebp], 0
	je	SHORT $L8527
	mov	ecx, DWORD PTR _lpTgtParent$8490[ebp]
	cmp	ecx, DWORD PTR _lpSrcInstance$8489[ebp]
	je	SHORT $L8526
$L8527:

; 3024 :             lpSrcInstance = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$8489[ebp], eax

; 3025 :          else

	jmp	SHORT $L8529
$L8526:

; 3026 :             lpSrcInstance = 0;

	mov	DWORD PTR _lpSrcInstance$8489[ebp], 0
$L8529:

; 3028 : 
; 3029 :       if ( lpSrcInstance )

	cmp	DWORD PTR _lpSrcInstance$8489[ebp], 0
	je	SHORT $L8530

; 3031 :          LPVIEWENTITY lpTemp = zGETPTR( lpSrcInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpSrcInstance$8489[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTemp$8531[ebp], eax

; 3032 : 
; 3033 :          //  "KZOEE116 - Attempt to include an instance created under
; 3034 :          //  "           a versioned parent"
; 3035 :          fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 116, 0,
; 3036 :                            lpTemp->szName,
; 3037 :                            lpSrcViewEntity->szName );

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpTemp$8531[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	116					; 00000074H
	push	8
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3038 :          fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 3039 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8530:

; 3042 : 
; 3043 :    // Validate that an insert of this entity in this instance at
; 3044 :    // the specified position is valid.
; 3045 :    nPositionOK = fnValidateInsertPosition( &bNewRoot,
; 3046 :                                            iIncludeSubobjectFromSubobject,
; 3047 :                                            lpTgtView,
; 3048 :                                            lpTgtViewEntityCsr,
; 3049 :                                            nPosition );

	mov	dx, WORD PTR _nPosition$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	push	105					; 00000069H
	lea	edx, DWORD PTR _bNewRoot$[ebp]
	push	edx
	call	_fnValidateInsertPosition
	add	esp, 20					; 00000014H
	mov	WORD PTR _nPositionOK$[ebp], ax

; 3050 :    if ( nPositionOK < 0 )

	movsx	eax, WORD PTR _nPositionOK$[ebp]
	test	eax, eax
	jge	SHORT $L8533

; 3052 :       fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 3053 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8383
$L8533:

; 3055 : 
; 3056 :    // Get source and target owning tasks
; 3057 :    lpSrcOwningTask = zGETPTR( lpSrcViewOI->hTask );

	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcOwningTask$[ebp], eax

; 3058 :    lpTgtOwningTask = zGETPTR( lpTgtViewOI->hTask );

	mov	ecx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtOwningTask$[ebp], eax

; 3059 : 
; 3060 : #if 0
; 3061 :    // Validate that the Source and Target ViewOI belong to the
; 3062 :    // Same task!!!
; 3063 :    if ( lpSrcOwningTask != lpTgtOwningTask )
; 3064 :    {
; 3065 :       // If we have a task mismatch, make sure the source task is the
; 3066 :       // system task AND that all the target entities of the include
; 3067 :       // are READ ONLY.
; 3068 :       if ( lpSrcOwningTask != zGETPTR( AnchorBlock->hMainTask ) )
; 3069 :       {
; 3070 :          // "KZOEE131 - Attempt to include Subobject from another "
; 3071 :          // "           Application Task"
; 3072 :          fnIssueCoreError( lpCurrentTask, lpView, 8, 131, 0, 0, 0 );
; 3073 :          fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );
; 3074 :          return( zCALL_ERROR );
; 3075 :       }
; 3076 : 
; 3077 :       lpTgtViewOI->hAllocTask = zGETHNDL( lpSrcOwningTask );
; 3078 :    }
; 3079 : #endif
; 3080 : 
; 3081 : #ifdef __ACTIVATE_CONSTRAINTS__
; 3082 :    // If there is an Entity Constraint for include, see if it has
; 3083 :    // any objections about continuing.
; 3084 :    if ( lpTgtViewEntity->bIncludeConstraint )

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+239]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	je	$L8536

; 3086 :       zVIEW             lpWorkView;
; 3087 :       LPVIEWENTITY      lpWorkViewEntity;
; 3088 :       LPVIEWENTITYCSR   lpWorkViewEntityCsr;
; 3089 :       zSHORT            n;
; 3090 : 
; 3091 :       // Create a work view to save all the cursors just in case the
; 3092 :       // constraint handler says it's a no go situation.
; 3093 :       CreateViewFromViewForTask( &lpWorkView, lpTgtView, 0 );

	push	0
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpWorkView$8537[ebp]
	push	eax
	call	_CreateViewFromViewForTask@12

; 3094 :       lpWorkViewEntity = fnValidViewEntity( &lpWorkViewEntityCsr,
; 3095 :                                             lpWorkView, cpcTgtEntityName, 0 );

	push	0
	mov	ecx, DWORD PTR _cpcTgtEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWorkView$8537[ebp]
	push	edx
	lea	eax, DWORD PTR _lpWorkViewEntityCsr$8539[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpWorkViewEntity$8538[ebp], eax

; 3096 : 
; 3097 :       // Call fnIncludeSubobjectFromSubobject to do the rest.
; 3098 :       nRC = fnIncludeSubobjectFromSubobject( lpTgtView, lpTgtViewEntity,
; 3099 :                                              lpSrcView, lpSrcViewEntity,
; 3100 :                                              nPosition, bNewRoot, 1 );

	push	1
	mov	cx, WORD PTR _bNewRoot$[ebp]
	push	ecx
	mov	dx, WORD PTR _nPosition$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	call	_fnIncludeSubobjectFromSubobject
	add	esp, 28					; 0000001cH
	mov	WORD PTR _nRC$[ebp], ax

; 3101 : 
; 3102 :       if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	$L8541

; 3104 :          n = fnInvokeECEOperation( lpTgtView, lpTgtViewEntity, lpCurrentTask,
; 3105 :                                    zECE_INCLUDE, 0 );

	push	0
	push	6
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	call	_fnInvokeECEOperation
	add	esp, 20					; 00000014H
	mov	WORD PTR _n$8540[ebp], ax

; 3106 :          // If constraint handler doesn't like something, get out.
; 3107 :          if ( n )

	movsx	edx, WORD PTR _n$8540[ebp]
	test	edx, edx
	je	SHORT $L8542

; 3109 :             // We must back out the include ... but how????
; 3110 :             fnExcludeEntity( lpTgtView, lpTgtViewEntity, lpTgtViewEntityCsr,
; 3111 :                              zREPOS_NONE, 1 );

	push	1
	push	0
	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	call	_fnExcludeEntity
	add	esp, 20					; 00000014H

; 3112 : 
; 3113 :             // and reset the cursors before exiting...
; 3114 :             fnSetViewFromView( lpTgtView, lpWorkView );

	mov	eax, DWORD PTR _lpWorkView$8537[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	call	_fnSetViewFromView
	add	esp, 8

; 3115 :             fnDropView( lpWorkView );

	mov	edx, DWORD PTR _lpWorkView$8537[ebp]
	push	edx
	call	_fnDropView@4

; 3116 :             fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 3117 :             return( n );

	mov	ax, WORD PTR _n$8540[ebp]
	jmp	SHORT $L8383
$L8542:

; 3121 :             // Everything looks okey dokey...
; 3122 :             fnDropView( lpWorkView );

	mov	ecx, DWORD PTR _lpWorkView$8537[ebp]
	push	ecx
	call	_fnDropView@4

; 3125 :       else

	jmp	SHORT $L8544
$L8541:

; 3127 :          // Clean up work view if error from fnIncludeSubobjectFromSubobject.
; 3128 :          fnDropView( lpWorkView );

	mov	edx, DWORD PTR _lpWorkView$8537[ebp]
	push	edx
	call	_fnDropView@4
$L8544:

; 3131 :    else

	jmp	SHORT $L8545
$L8536:

; 3132 : #endif
; 3133 : 
; 3134 :    // Call fnIncludeSubobjectFromSubobject to do the rest.
; 3135 :    nRC = fnIncludeSubobjectFromSubobject( lpTgtView, lpTgtViewEntity,
; 3136 :                                           lpSrcView, lpSrcViewEntity,
; 3137 :                                           nPosition, bNewRoot, 1 );

	push	1
	mov	ax, WORD PTR _bNewRoot$[ebp]
	push	eax
	mov	cx, WORD PTR _nPosition$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	call	_fnIncludeSubobjectFromSubobject
	add	esp, 28					; 0000001cH
	mov	WORD PTR _nRC$[ebp], ax
$L8545:

; 3138 : 
; 3139 :    // Simple enough, let's return to caller.
; 3140 :    fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 3141 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8383:

; 3142 : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_IncludeSubobjectFromSubobject@20 ENDP
_TEXT	ENDS
PUBLIC	_IncludeSubobjectFromSubobjectEx@24
EXTRN	_SetAttributeFromAttribute@24:NEAR
_TEXT	SEGMENT
_lpTgtView$ = 8
_cpcTgtEntityName$ = 12
_lpSrcView$ = 16
_cpcSrcEntityName$ = 20
_nPosition$ = 24
_lControl$ = 28
_lpCurrentTask$ = -24
_lpSrcViewEntity$ = -16
_lpTgtViewEntity$ = -20
_lpSrcViewEntityCsr$ = -12
_lpTgtViewEntityCsr$ = -8
_nRC$ = -4
_lpSrcEI$8571 = -32
_lpTgtEI$8573 = -28
_lpViewAttrib$8575 = -36
_lpTgtViewAttrib$8581 = -40
_IncludeSubobjectFromSubobjectEx@24 PROC NEAR

; 3151 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH

; 3152 :    LPTASK            lpCurrentTask;
; 3153 :    LPVIEWENTITY      lpSrcViewEntity;
; 3154 :    LPVIEWENTITY      lpTgtViewEntity;
; 3155 :    LPVIEWENTITYCSR   lpSrcViewEntityCsr;
; 3156 :    LPVIEWENTITYCSR   lpTgtViewEntityCsr;
; 3157 :    zSHORT            nRC;
; 3158 : 
; 3159 :    // Validate that the source view entity exists and has a cursor
; 3160 :    // value for copying, we call fnValidateInstanceParameters for the
; 3161 :    // source since it requires the same editing as an attribute retrieval.
; 3162 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 3163 :                                       &lpSrcViewEntity,
; 3164 :                                       &lpSrcViewEntityCsr,
; 3165 :                                       iIncludeSubobjectFromSubobject,
; 3166 :                                       lpSrcView,
; 3167 :                                       cpcSrcEntityName, 0 ) )

	push	0
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	push	105					; 00000069H
	lea	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateInstanceParameters
	add	esp, 28					; 0000001cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8565

; 3169 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8558
$L8565:

; 3171 : 
; 3172 :    // Validate that the view passed is valid.
; 3173 :    if ( fnValidViewCsr( lpCurrentTask, lpTgtView ) == 0 )

	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidViewCsr
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L8566

; 3175 :       fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 3176 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8558
$L8566:

; 3178 : 
; 3179 :    if ( (lpTgtViewEntity = fnValidViewEntity( &lpTgtViewEntityCsr,
; 3180 :                                               lpTgtView,
; 3181 :                                               cpcTgtEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcTgtEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpTgtViewEntity$[ebp], eax
	cmp	DWORD PTR _lpTgtViewEntity$[ebp], 0
	jne	SHORT $L8567

; 3183 :       fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 3184 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8558
$L8567:

; 3186 : 
; 3187 :    nRC = IncludeSubobjectFromSubobject( lpTgtView, cpcTgtEntityName,
; 3188 :                                         lpSrcView, cpcSrcEntityName,
; 3189 :                                         nPosition );

	mov	dx, WORD PTR _nPosition$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcTgtEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	call	_IncludeSubobjectFromSubobject@20
	mov	WORD PTR _nRC$[ebp], ax

; 3190 : 
; 3191 :    if ( nRC == zCALL_ERROR )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -16				; fffffff0H
	jne	SHORT $L8568

; 3192 :       goto EndOfFunction;

	jmp	$EndOfFunction$8569
$L8568:

; 3193 : 
; 3194 :    if ( lControl | zINCLUDE_WITHCOPY )

	mov	edx, DWORD PTR _lControl$[ebp]
	or	edx, 1
	test	edx, edx
	je	$EndOfFunction$8569

; 3196 :       LPENTITYINSTANCE lpSrcEI = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEI$8571[ebp], eax

; 3197 :       LPENTITYINSTANCE lpTgtEI = zGETPTR( lpTgtViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEI$8573[ebp], eax

; 3198 :       LPVIEWATTRIB     lpViewAttrib;
; 3199 : 
; 3200 :       // Copy non-persistent attributes.
; 3201 :       for ( lpViewAttrib = zGETPTR( lpSrcViewEntity->hFirstOD_Attrib );
; 3202 :             lpViewAttrib;
; 3203 :             lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib ) )

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+179]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$8575[ebp], eax
	jmp	SHORT $L8578
$L8579:
	mov	eax, DWORD PTR _lpViewAttrib$8575[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$8575[ebp], eax
$L8578:
	cmp	DWORD PTR _lpViewAttrib$8575[ebp], 0
	je	$EndOfFunction$8569

; 3205 :          LPVIEWATTRIB lpTgtViewAttrib;
; 3206 : 
; 3207 :          if ( lpViewAttrib->bPersist )

	mov	edx, DWORD PTR _lpViewAttrib$8575[ebp]
	mov	eax, DWORD PTR [edx+193]
	and	eax, 1
	test	eax, eax
	je	SHORT $L8582

; 3208 :             continue;

	jmp	SHORT $L8579
$L8582:

; 3209 : 
; 3210 :          // Look for an attribute with the same name.
; 3211 :          for ( lpTgtViewAttrib = zGETPTR( lpTgtViewEntity->hFirstOD_Attrib );
; 3212 :                lpTgtViewAttrib;
; 3213 :                lpTgtViewAttrib = zGETPTR( lpTgtViewAttrib->hNextOD_Attrib ) )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+179]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewAttrib$8581[ebp], eax
	jmp	SHORT $L8585
$L8586:
	mov	eax, DWORD PTR _lpTgtViewAttrib$8581[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewAttrib$8581[ebp], eax
$L8585:
	cmp	DWORD PTR _lpTgtViewAttrib$8581[ebp], 0
	je	SHORT $L8587

; 3215 :             if ( zstrcmp( lpTgtViewAttrib->szName,
; 3216 :                           lpViewAttrib->szName ) == 0 )

	mov	edx, DWORD PTR _lpTgtViewAttrib$8581[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _lpViewAttrib$8575[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	cmp	eax, edx
	jne	SHORT $L9909
	mov	eax, DWORD PTR _lpViewAttrib$8575[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewAttrib$8581[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L9910
$L9909:
	mov	edx, DWORD PTR _lpTgtViewAttrib$8581[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _lpViewAttrib$8575[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -44+[ebp], ecx
$L9910:
	cmp	DWORD PTR -44+[ebp], 0
	jne	SHORT $L8594

; 3218 :                // Found a matching attribute by name so break.
; 3219 :                break;

	jmp	SHORT $L8587
$L8594:

; 3221 :          }

	jmp	SHORT $L8586
$L8587:

; 3222 : 
; 3223 :          // If lpTgtViewAttrib is 0 then we didn't find a matching attr by
; 3224 :          // name so try again with the next attrib.
; 3225 :          if ( lpTgtViewAttrib == 0 )

	cmp	DWORD PTR _lpTgtViewAttrib$8581[ebp], 0
	jne	SHORT $L8595

; 3226 :             continue;

	jmp	$L8579
$L8595:

; 3227 : 
; 3228 :          if ( SetAttributeFromAttribute( lpTgtView,
; 3229 :                                          lpTgtViewEntity->szName,
; 3230 :                                          lpTgtViewAttrib->szName,
; 3231 :                                          lpSrcView,
; 3232 :                                          lpSrcViewEntity->szName,
; 3233 :                                          lpViewAttrib->szName ) == zCALL_ERROR )

	mov	edx, DWORD PTR _lpViewAttrib$8575[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtViewAttrib$8581[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	call	_SetAttributeFromAttribute@24
	movsx	edx, ax
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L8596

; 3235 :             nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 3236 :             goto EndOfFunction;

	jmp	SHORT $EndOfFunction$8569
$L8596:

; 3238 : 
; 3239 :       }

	jmp	$L8579
$EndOfFunction$8569:

; 3242 : 
; 3243 : EndOfFunction:
; 3244 :    // Simple enough, let's return to caller.
; 3245 :    fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	105					; 00000069H
	call	_fnOperationReturn
	add	esp, 8

; 3246 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8558:

; 3247 : }

	mov	esp, ebp
	pop	ebp
	ret	24					; 00000018H
_IncludeSubobjectFromSubobjectEx@24 ENDP
_TEXT	ENDS
PUBLIC	_fnMoveSubobjectUnderNewParent@32
PUBLIC	??_C@_0BN@JLPK@Source?5Entity?5not?5excludable?$AA@ ; `string'
PUBLIC	??_C@_0BM@IAFO@Entity?5creation?5not?5allowed?$AA@ ; `string'
EXTRN	_fnResetViewFromSubobject:NEAR
EXTRN	_SetViewToSubobject@8:NEAR
EXTRN	_SetCursorNextEntity@12:NEAR
EXTRN	_SetCursorPrevEntity@12:NEAR
EXTRN	_SetCursorFirstEntity@12:NEAR
EXTRN	_SetCursorLastEntity@12:NEAR
EXTRN	_fnCreateEntity@20:NEAR
;	COMDAT ??_C@_0BN@JLPK@Source?5Entity?5not?5excludable?$AA@
; File C:\10C\A\oe\KZOESOAA.C
_DATA	SEGMENT
??_C@_0BN@JLPK@Source?5Entity?5not?5excludable?$AA@ DB 'Source Entity not'
	DB	' excludable', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@IAFO@Entity?5creation?5not?5allowed?$AA@
_DATA	SEGMENT
??_C@_0BM@IAFO@Entity?5creation?5not?5allowed?$AA@ DB 'Entity creation no'
	DB	't allowed', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpWkEntityInstance$ = 8
_lpTgtView$ = 12
_lpTgtViewEntityCsr$ = 16
_lpSrcView$ = 20
_lpSrcViewEntityCsr$ = 24
_nPosition$ = 28
_nSrcPosition$ = 32
_lpCurrentTask$ = 36
_lpSrcViewOI$ = -44
_lpTgtViewOI$ = -16
_lpViewCsr$ = -12
_lpTgtViewCsr$ = -8
_lpWkTgtViewEntityCsr$ = -56
_lpNewEntityInstance$ = -32
_lpSrcEntityInstance$ = -4
_lpSrcViewEntity$ = -60
_lpTgtViewEntity$ = -68
_bNewRoot$ = -52
_bSameInstance$ = -64
_nStartLevel$ = -40
_nLevelDifference$ = -36
_nHiddenCount$ = -28
_nPositionOK$ = -48
_nResetCount$ = -24
_nRC$ = -20
_cpcEntityName$8637 = -168
_cpcEntityName$8640 = -268
_lpSrchParentViewEntity$8695 = -276
_lpSrchChildViewEntity$8696 = -272
_lpWkTgtViewEntity$8697 = -280
_fnMoveSubobjectUnderNewParent@32 PROC NEAR

; 3258 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 284				; 0000011cH

; 3259 :    LPVIEWOI          lpSrcViewOI;
; 3260 :    LPVIEWOI          lpTgtViewOI;
; 3261 :    LPVIEWCSR         lpViewCsr;
; 3262 :    LPVIEWCSR         lpTgtViewCsr = zGETPTR( lpTgtView->hViewCsr );

	mov	eax, DWORD PTR _lpTgtView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewCsr$[ebp], eax

; 3263 :    LPVIEWENTITYCSR   lpWkTgtViewEntityCsr;
; 3264 :    LPENTITYINSTANCE  lpNewEntityInstance = 0;

	mov	DWORD PTR _lpNewEntityInstance$[ebp], 0

; 3265 :    LPENTITYINSTANCE  lpSrcEntityInstance = 0;

	mov	DWORD PTR _lpSrcEntityInstance$[ebp], 0

; 3266 :    LPVIEWENTITY      lpSrcViewEntity = zGETPTR( lpSrcViewEntityCsr->hViewEntity );

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntity$[ebp], eax

; 3267 :    LPVIEWENTITY      lpTgtViewEntity = zGETPTR( lpTgtViewEntityCsr->hViewEntity );

	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewEntity$[ebp], eax

; 3268 :    zSHORT            bNewRoot;
; 3269 :    zSHORT            bSameInstance;
; 3270 :    zSHORT            nStartLevel;
; 3271 :    zSHORT            nLevelDifference;
; 3272 :    zSHORT            nHiddenCount;
; 3273 :    zSHORT            nPositionOK;
; 3274 :    zSHORT            nResetCount;
; 3275 :    zSHORT            nRC;
; 3276 : 
; 3277 :    // Validate that an insert of this entity in this instance at
; 3278 :    // the specified position is valid.
; 3279 :    nPositionOK = fnValidateInsertPosition( &bNewRoot,
; 3280 :                                            iMoveSubobject,
; 3281 :                                            lpTgtView,
; 3282 :                                            lpTgtViewEntityCsr,
; 3283 :                                            nPosition );

	mov	ax, WORD PTR _nPosition$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	push	110					; 0000006eH
	lea	eax, DWORD PTR _bNewRoot$[ebp]
	push	eax
	call	_fnValidateInsertPosition
	add	esp, 20					; 00000014H
	mov	WORD PTR _nPositionOK$[ebp], ax

; 3284 :    if ( nPositionOK < 0 )

	movsx	ecx, WORD PTR _nPositionOK$[ebp]
	test	ecx, ecx
	jge	SHORT $L8635

; 3286 :    // fnOperationReturn( iMoveSubobject, lpCurrentTask );
; 3287 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8614
$L8635:

; 3289 : 
; 3290 :    // Since we are not moving within the same parent, do rules checking
; 3291 :    // now to ensure that the move is OK.
; 3292 : 
; 3293 :    // Make sure entity can be included.
; 3294 :    if ( lpSrcViewEntity->bExclude == FALSE )

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8636

; 3296 :       zCHAR cpcEntityName[ 100 ];
; 3297 : 
; 3298 :       strcpy( cpcEntityName, "\nEntity: \t" );

	push	OFFSET FLAT:??_C@_0L@FACN@?6Entity?3?5?7?$AA@ ; `string'
	lea	ecx, DWORD PTR _cpcEntityName$8637[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 3299 :       strcat( cpcEntityName, lpSrcViewEntity->szName );

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	lea	eax, DWORD PTR _cpcEntityName$8637[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 3300 : 
; 3301 :       // "KZOEE106 - Rules violation"
; 3302 :       fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 106, 0,
; 3303 :                         "Source Entity not excludable",
; 3304 :                         cpcEntityName );

	lea	ecx, DWORD PTR _cpcEntityName$8637[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BN@JLPK@Source?5Entity?5not?5excludable?$AA@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3305 :    // fnOperationReturn( iMoveSubobject, lpCurrentTask );
; 3306 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8614
$L8636:

; 3308 : 
; 3309 :    // Make sure entity can be included.
; 3310 :    if ( lpTgtViewEntity->bCreate == FALSE )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8639

; 3312 :       zCHAR cpcEntityName[ 100 ];
; 3313 : 
; 3314 :       strcpy( cpcEntityName, "\nEntity: \t" );

	push	OFFSET FLAT:??_C@_0L@FACN@?6Entity?3?5?7?$AA@ ; `string'
	lea	eax, DWORD PTR _cpcEntityName$8640[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 3315 :       strcat( cpcEntityName, lpTgtViewEntity->szName );

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _cpcEntityName$8640[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 3316 : 
; 3317 :       // "KZOEE106 - Rules violation"
; 3318 :       fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 106, 0,
; 3319 :                         "Entity creation not allowed",
; 3320 :                         cpcEntityName );

	lea	eax, DWORD PTR _cpcEntityName$8640[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BM@IAFO@Entity?5creation?5not?5allowed?$AA@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3321 :    // fnOperationReturn( iMoveSubobject, lpCurrentTask );
; 3322 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8614
$L8639:

; 3324 : 
; 3325 :    lpSrcEntityInstance = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 3326 : 
; 3327 :    nHiddenCount = 0;

	mov	WORD PTR _nHiddenCount$[ebp], 0
$L8644:

; 3328 :    while ( lpWkEntityInstance )

	cmp	DWORD PTR _lpWkEntityInstance$[ebp], 0
	je	SHORT $L8645

; 3330 :       if ( lpWkEntityInstance == lpSrcEntityInstance )

	mov	edx, DWORD PTR _lpWkEntityInstance$[ebp]
	cmp	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	jne	SHORT $L8646

; 3332 :          // "KZOEE115 - Attempt to move an instance under one of its children"
; 3333 :          fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 115, 0,
; 3334 :                            lpSrcViewEntity->szName,
; 3335 :                            lpTgtViewEntity->szName );

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	115					; 00000073H
	push	8
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3336 :       // fnOperationReturn( iMoveSubobject, lpCurrentTask );
; 3337 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8614
$L8646:

; 3339 : 
; 3340 :       lpWkEntityInstance = zGETPTR( lpWkEntityInstance->hParent );

	mov	ecx, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkEntityInstance$[ebp], eax

; 3341 :    }

	jmp	SHORT $L8644
$L8645:

; 3342 : 
; 3343 :    lpViewCsr   = zGETPTR( lpSrcView->hViewCsr );

	mov	eax, DWORD PTR _lpSrcView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 3344 :    lpSrcViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewOI$[ebp], eax

; 3345 :    lpViewCsr   = zGETPTR( lpTgtView->hViewCsr );

	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 3346 :    lpTgtViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewOI$[ebp], eax

; 3347 : 
; 3348 :    bSameInstance = (lpSrcViewOI == lpTgtViewOI);

	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	xor	eax, eax
	cmp	edx, DWORD PTR _lpTgtViewOI$[ebp]
	sete	al
	mov	WORD PTR _bSameInstance$[ebp], ax

; 3349 : 
; 3350 :    nStartLevel = lpSrcViewEntityCsr->nLevel;

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	dx, WORD PTR [ecx+22]
	mov	WORD PTR _nStartLevel$[ebp], dx

; 3351 :    nLevelDifference = lpTgtViewEntityCsr->nLevel - nStartLevel;

	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	sub	ecx, edx
	mov	WORD PTR _nLevelDifference$[ebp], cx

; 3352 :    nRC = fnCreateEntity( lpTgtView, lpTgtViewEntity, lpTgtViewEntityCsr,
; 3353 :                          nPosition, bNewRoot );

	mov	ax, WORD PTR _bNewRoot$[ebp]
	push	eax
	mov	cx, WORD PTR _nPosition$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	call	_fnCreateEntity@20
	mov	WORD PTR _nRC$[ebp], ax

; 3354 :    if ( nRC )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8652

; 3356 :    // fnOperationReturn( iMoveSubobject, lpCurrentTask );
; 3357 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8614
$L8652:

; 3359 : 
; 3360 :    lpWkTgtViewEntityCsr = lpTgtViewEntityCsr;

	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	DWORD PTR _lpWkTgtViewEntityCsr$[ebp], eax

; 3361 :    lpNewEntityInstance = zGETPTR( lpWkTgtViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpWkTgtViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewEntityInstance$[ebp], eax

; 3362 :    lpNewEntityInstance->u.nInd = lpSrcEntityInstance->u.nInd;

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	edx, DWORD PTR _lpNewEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 3363 :    if ( lpSrcEntityInstance->hParent )

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	SHORT $L8654

; 3364 :       lpSrcEntityInstance->u.nInd.bExcluded = TRUE;

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	edx, 16					; 00000010H
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx
$L8654:

; 3365 : 
; 3366 :    if ( lpNewEntityInstance->hParent )

	mov	ecx, DWORD PTR _lpNewEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+30], 0
	je	SHORT $L8655

; 3367 :       lpNewEntityInstance->u.nInd.bIncluded = TRUE;

	mov	edx, DWORD PTR _lpNewEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	al, 32					; 00000020H
	mov	ecx, DWORD PTR _lpNewEntityInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax
$L8655:

; 3368 : 
; 3369 :    // Set target instance as updated.
; 3370 :    lpTgtViewOI->bUpdatedFile = lpTgtViewOI->bUpdated = TRUE;

	mov	edx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	or	al, 16					; 00000010H
	mov	ecx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	DWORD PTR [ecx+36], eax
	mov	edx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	or	al, 32					; 00000020H
	mov	ecx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	DWORD PTR [ecx+36], eax

; 3371 : 
; 3372 :    // If source instance is different from target instance then flag source
; 3373 :    // instance as updated.
; 3374 :    if ( bSameInstance == FALSE )

	movsx	edx, WORD PTR _bSameInstance$[ebp]
	test	edx, edx
	jne	SHORT $L8656

; 3375 :       lpSrcViewOI->bUpdatedFile = lpSrcViewOI->bUpdated = TRUE;

	mov	eax, DWORD PTR _lpSrcViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	or	ecx, 16					; 00000010H
	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	mov	DWORD PTR [edx+36], ecx
	mov	eax, DWORD PTR _lpSrcViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	or	ecx, 32					; 00000020H
	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	mov	DWORD PTR [edx+36], ecx
$L8656:

; 3376 : 
; 3377 :    if ( lpTgtViewEntity->bRecursive )

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8657

; 3379 :       SetViewToSubobject( lpTgtView, lpTgtViewEntity->szName );

	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	call	_SetViewToSubobject@8

; 3380 :       nResetCount = 1;

	mov	WORD PTR _nResetCount$[ebp], 1

; 3382 :    else

	jmp	SHORT $L8658
$L8657:

; 3383 :       nResetCount = 0;

	mov	WORD PTR _nResetCount$[ebp], 0
$L8658:

; 3387 :       if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	$L8674

; 3389 :          // link the new instance to the old instance
; 3390 :          if ( lpSrcEntityInstance->hNextLinked )

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [edx+42], 0
	je	SHORT $L8663

; 3392 :             lpWkEntityInstance = zGETPTR( lpSrcEntityInstance->hNextLinked );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkEntityInstance$[ebp], eax
$L8667:

; 3393 :             while ( zGETPTR( lpWkEntityInstance->hNextLinked ) !=
; 3394 :                                                         lpSrcEntityInstance )

	mov	edx, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	je	SHORT $L8668

; 3396 :                lpWkEntityInstance = zGETPTR( lpWkEntityInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkEntityInstance$[ebp], eax

; 3397 :             }

	jmp	SHORT $L8667
$L8668:

; 3398 : 
; 3399 :             lpWkEntityInstance->hNextLinked = zGETHNDL( lpNewEntityInstance );

	mov	eax, DWORD PTR _lpNewEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax

; 3401 :          else

	jmp	SHORT $L8671
$L8663:

; 3402 :             lpSrcEntityInstance->hNextLinked = zGETHNDL( lpNewEntityInstance );

	mov	edx, DWORD PTR _lpNewEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax
$L8671:

; 3403 : 
; 3404 :          lpNewEntityInstance->hNextLinked = zGETHNDL( lpSrcEntityInstance );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpNewEntityInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax

; 3405 : 
; 3406 :          // Set Record and Rel Record.
; 3407 :          lpNewEntityInstance->hPersistRecord = lpSrcEntityInstance->hPersistRecord;

	mov	edx, DWORD PTR _lpNewEntityInstance$[ebp]
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	mov	DWORD PTR [edx+60], ecx

; 3408 : 
; 3409 :          // Transfer Rel record UNLESS this is the first time and the
; 3410 :          // source entity and target entities are not the same.
; 3411 :          if ( lpSrcViewEntity == lpTgtViewEntity ||
; 3412 :               lpSrcEntityInstance->nLevel > nStartLevel )

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	cmp	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	je	SHORT $L8675
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	cmp	ecx, edx
	jle	SHORT $L8674
$L8675:

; 3414 :             lpNewEntityInstance->hNonPersistRecord =
; 3415 :                                  lpSrcEntityInstance->hNonPersistRecord;

	mov	eax, DWORD PTR _lpNewEntityInstance$[ebp]
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+64]
	mov	DWORD PTR [eax+64], edx

; 3416 :             lpSrcEntityInstance->hNonPersistRecord = 0;

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR [eax+64], 0
$L8674:

; 3419 : 
; 3420 :       // Mark Source entity instance is hidden.
; 3421 :       lpSrcEntityInstance->u.nInd.bHidden = TRUE;

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	dh, 4
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 3422 :       nHiddenCount++;

	mov	cx, WORD PTR _nHiddenCount$[ebp]
	add	cx, 1
	mov	WORD PTR _nHiddenCount$[ebp], cx
$L8676:

; 3426 :          lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 3427 : 
; 3428 :       } while ( lpSrcEntityInstance && lpSrcEntityInstance->u.nInd.bHidden );

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	SHORT $L8680
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8676
$L8680:

; 3429 : 
; 3430 :       if ( lpSrcEntityInstance == 0 ||
; 3431 :            lpSrcEntityInstance->nLevel <= nStartLevel )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	SHORT $L8682
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	cmp	ecx, edx
	jg	SHORT $L8681
$L8682:

; 3433 :          break;

	jmp	$L8661
$L8681:

; 3435 : 
; 3436 :       if ( nRC == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	$L8715
$L8685:

; 3443 :             lpWkTgtViewEntityCsr =
; 3444 :                            zGETPTR( lpTgtViewCsr->hRootViewEntityCsr );

	mov	ecx, DWORD PTR _lpTgtViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkTgtViewEntityCsr$[ebp], eax
$L8689:

; 3445 :             while ( lpWkTgtViewEntityCsr &&
; 3446 :                     lpWkTgtViewEntityCsr->hViewEntity !=
; 3447 :                                       lpSrcEntityInstance->hViewEntity )

	cmp	DWORD PTR _lpWkTgtViewEntityCsr$[ebp], 0
	je	SHORT $L8690
	mov	eax, DWORD PTR _lpWkTgtViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [eax+14]
	cmp	edx, DWORD PTR [ecx+2]
	je	SHORT $L8690

; 3449 :                lpWkTgtViewEntityCsr =
; 3450 :                            zGETPTR( lpWkTgtViewEntityCsr->hNextHier );

	mov	eax, DWORD PTR _lpWkTgtViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkTgtViewEntityCsr$[ebp], eax

; 3451 :             }

	jmp	SHORT $L8689
$L8690:

; 3452 : 
; 3453 :             // If a target cursor not found, the entity is out of view
; 3454 :             // and 1 or more resets are necessary.
; 3455 :             if ( lpWkTgtViewEntityCsr == 0 ||
; 3456 :                  lpWkTgtViewEntityCsr->nLevel >
; 3457 :                         lpSrcEntityInstance->nLevel + nLevelDifference )

	cmp	DWORD PTR _lpWkTgtViewEntityCsr$[ebp], 0
	je	SHORT $L8693
	mov	edx, DWORD PTR _lpWkTgtViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	movsx	ecx, WORD PTR _nLevelDifference$[ebp]
	add	edx, ecx
	cmp	eax, edx
	jle	SHORT $L8692
$L8693:

; 3459 :                fnResetViewFromSubobject( lpTgtView );

	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	call	_fnResetViewFromSubobject
	add	esp, 4

; 3460 :                nResetCount--;

	mov	ax, WORD PTR _nResetCount$[ebp]
	sub	ax, 1
	mov	WORD PTR _nResetCount$[ebp], ax

; 3461 :                continue;

	jmp	SHORT $L8685
$L8692:

; 3463 : 
; 3464 :             if ( lpWkTgtViewEntityCsr->nLevel <
; 3465 :                      lpSrcEntityInstance->nLevel + nLevelDifference )

	mov	ecx, DWORD PTR _lpWkTgtViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	eax, WORD PTR _nLevelDifference$[ebp]
	add	ecx, eax
	cmp	edx, ecx
	jge	$L8712

; 3467 :                LPVIEWENTITY lpSrchParentViewEntity;
; 3468 :                LPVIEWENTITY lpSrchChildViewEntity;
; 3469 :                LPVIEWENTITY lpWkTgtViewEntity =
; 3470 :                            zGETPTR( lpWkTgtViewEntityCsr->hViewEntity );

	mov	ecx, DWORD PTR _lpWkTgtViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkTgtViewEntity$8697[ebp], eax

; 3471 : 
; 3472 :                if ( lpWkTgtViewEntity->bRecursive )

	mov	eax, DWORD PTR _lpWkTgtViewEntity$8697[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8699

; 3474 :                   SetViewToSubobject( lpTgtView, lpWkTgtViewEntity->szName );

	mov	edx, DWORD PTR _lpWkTgtViewEntity$8697[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	call	_SetViewToSubobject@8

; 3475 :                   nResetCount++;

	mov	cx, WORD PTR _nResetCount$[ebp]
	add	cx, 1
	mov	WORD PTR _nResetCount$[ebp], cx

; 3476 :                   break;

	jmp	$L8686
$L8699:

; 3478 : 
; 3479 :                // If the entity is at a lower level and the entity does not
; 3480 :                // have recursive behavior, then another child of one of the
; 3481 :                // entity's parents must have recursive behavior, FIND IT and
; 3482 :                // set view to subobject for that entity type.
; 3483 :                lpSrchParentViewEntity = zGETPTR( lpWkTgtViewEntity->hParent );

	mov	edx, DWORD PTR _lpWkTgtViewEntity$8697[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchParentViewEntity$8695[ebp], eax
$L8702:

; 3484 :                while ( lpSrchParentViewEntity )

	cmp	DWORD PTR _lpSrchParentViewEntity$8695[ebp], 0
	je	$L8703

; 3486 :                   lpSrchChildViewEntity = zGETPTR( lpSrchParentViewEntity->hNextHier );

	mov	ecx, DWORD PTR _lpSrchParentViewEntity$8695[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchChildViewEntity$8696[ebp], eax
$L8706:

; 3487 :                   while ( lpSrchChildViewEntity &&
; 3488 :                           lpSrchChildViewEntity->nLevel >
; 3489 :                                        lpSrchParentViewEntity->nLevel &&
; 3490 :                           (lpSrchChildViewEntity->bRecursive == FALSE ||
; 3491 :                            lpSrchChildViewEntity->lEREntTok !=
; 3492 :                                        lpSrchParentViewEntity->lEREntTok ) )

	cmp	DWORD PTR _lpSrchChildViewEntity$8696[ebp], 0
	je	SHORT $L8707
	mov	eax, DWORD PTR _lpSrchChildViewEntity$8696[ebp]
	movsx	ecx, WORD PTR [eax+215]
	mov	edx, DWORD PTR _lpSrchParentViewEntity$8695[ebp]
	movsx	eax, WORD PTR [edx+215]
	cmp	ecx, eax
	jle	SHORT $L8707
	mov	ecx, DWORD PTR _lpSrchChildViewEntity$8696[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8708
	mov	eax, DWORD PTR _lpSrchChildViewEntity$8696[ebp]
	mov	ecx, DWORD PTR _lpSrchParentViewEntity$8695[ebp]
	mov	edx, DWORD PTR [eax+195]
	cmp	edx, DWORD PTR [ecx+195]
	je	SHORT $L8707
$L8708:

; 3494 :                      lpSrchChildViewEntity = zGETPTR( lpSrchChildViewEntity->hNextHier );

	mov	eax, DWORD PTR _lpSrchChildViewEntity$8696[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchChildViewEntity$8696[ebp], eax

; 3495 :                   }

	jmp	SHORT $L8706
$L8707:

; 3496 : 
; 3497 :                   if ( lpSrchChildViewEntity &&
; 3498 :                        lpSrchChildViewEntity->nLevel > lpSrchParentViewEntity->nLevel )

	cmp	DWORD PTR _lpSrchChildViewEntity$8696[ebp], 0
	je	SHORT $L8710
	mov	edx, DWORD PTR _lpSrchChildViewEntity$8696[ebp]
	movsx	eax, WORD PTR [edx+215]
	mov	ecx, DWORD PTR _lpSrchParentViewEntity$8695[ebp]
	movsx	edx, WORD PTR [ecx+215]
	cmp	eax, edx
	jle	SHORT $L8710

; 3500 :                      break;

	jmp	SHORT $L8703
$L8710:

; 3502 : 
; 3503 :                   lpSrchParentViewEntity = zGETPTR( lpSrchParentViewEntity->hParent );

	mov	eax, DWORD PTR _lpSrchParentViewEntity$8695[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchParentViewEntity$8695[ebp], eax

; 3504 :                }

	jmp	$L8702
$L8703:

; 3505 : 
; 3506 :                if ( lpSrchParentViewEntity )

	cmp	DWORD PTR _lpSrchParentViewEntity$8695[ebp], 0
	je	SHORT $L8712

; 3508 :                   SetViewToSubobject( lpTgtView, lpSrchChildViewEntity->szName );

	mov	edx, DWORD PTR _lpSrchChildViewEntity$8696[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	call	_SetViewToSubobject@8

; 3509 :                   nResetCount++;

	mov	cx, WORD PTR _nResetCount$[ebp]
	add	cx, 1
	mov	WORD PTR _nResetCount$[ebp], cx
$L8712:
$L8686:

; 3515 : 
; 3516 :          // We have a new target entity cursor, create an entity in
; 3517 :          // the target.
; 3518 :          nRC = fnCreateEntity( lpTgtView,
; 3519 :                                zGETPTR( lpSrcEntityInstance->hViewEntity ),
; 3520 :                                lpWkTgtViewEntityCsr, zPOS_AFTER, 0 );

	push	0
	push	3
	mov	edx, DWORD PTR _lpWkTgtViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	call	_fnCreateEntity@20
	mov	WORD PTR _nRC$[ebp], ax

; 3521 :          if ( nRC == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	SHORT $L8715

; 3523 :             lpNewEntityInstance = zGETPTR( lpWkTgtViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpWkTgtViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNewEntityInstance$[ebp], eax

; 3524 :             lpNewEntityInstance->u.nInd = lpSrcEntityInstance->u.nInd;

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	mov	edx, DWORD PTR _lpNewEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx
$L8715:

; 3527 :    }     // END for ( ; ; ) looping through child entities

	jmp	$L8658
$L8661:

; 3528 : 
; 3529 :    // We've created all the entities from the source, now do any subobject
; 3530 :    // resets necessary and reset the target entity's subordinate cursors.
; 3531 :    if ( nRC == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	SHORT $L8717
$L8719:

; 3533 :       while ( nResetCount > 0 )

	movsx	ecx, WORD PTR _nResetCount$[ebp]
	test	ecx, ecx
	jle	SHORT $L8720

; 3535 :          fnResetViewFromSubobject( lpTgtView );

	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	call	_fnResetViewFromSubobject
	add	esp, 4

; 3536 :          nResetCount--;

	mov	ax, WORD PTR _nResetCount$[ebp]
	sub	ax, 1
	mov	WORD PTR _nResetCount$[ebp], ax

; 3537 :       }

	jmp	SHORT $L8719
$L8720:

; 3538 : 
; 3539 :       fnResetCursorForViewChildren( lpTgtViewEntityCsr );

	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	ecx
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L8717:

; 3541 : 
; 3542 :    // Update the hidden count in the View OI and call fnReclaimHiddenInstance
; 3543 :    // if it is greater than the preset limit.
; 3544 :    lpSrcViewOI->nHiddenCount += nHiddenCount;

	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	mov	ax, WORD PTR [edx+24]
	add	ax, WORD PTR _nHiddenCount$[ebp]
	mov	ecx, DWORD PTR _lpSrcViewOI$[ebp]
	mov	WORD PTR [ecx+24], ax

; 3545 : 
; 3546 :    // Now see if the user requested the cursor to be repositioned for the
; 3547 :    // src entity.
; 3548 :    switch ( nSrcPosition )
; 3549 :    {

	movsx	edx, WORD PTR _nSrcPosition$[ebp]
	mov	DWORD PTR -284+[ebp], edx
	mov	eax, DWORD PTR -284+[ebp]
	sub	eax, 1
	mov	DWORD PTR -284+[ebp], eax
	cmp	DWORD PTR -284+[ebp], 3
	ja	SHORT $L8729
	mov	ecx, DWORD PTR -284+[ebp]
	jmp	DWORD PTR $L9912[ecx*4]
$L8725:

; 3550 :       case zREPOS_FIRST:
; 3551 :          nRC = SetCursorFirstEntity( lpSrcView, lpSrcViewEntity->szName, 0 );

	push	0
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	call	_SetCursorFirstEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 3552 :          break;

	jmp	SHORT $L8722
$L8726:

; 3553 : 
; 3554 :       case zREPOS_LAST:
; 3555 :          nRC = SetCursorLastEntity( lpSrcView, lpSrcViewEntity->szName, 0 );

	push	0
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	call	_SetCursorLastEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 3556 :          break;

	jmp	SHORT $L8722
$L8727:

; 3557 : 
; 3558 :       case zREPOS_NEXT:
; 3559 :          nRC = SetCursorNextEntity( lpSrcView, lpSrcViewEntity->szName, 0 );

	push	0
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	call	_SetCursorNextEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 3560 :          break;

	jmp	SHORT $L8722
$L8728:

; 3561 : 
; 3562 :       case zREPOS_PREV:
; 3563 :          nRC = SetCursorPrevEntity( lpSrcView, lpSrcViewEntity->szName, 0 );

	push	0
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	call	_SetCursorPrevEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 3564 :          break;

	jmp	SHORT $L8722
$L8729:

; 3565 : 
; 3566 :       default:
; 3567 :          nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH
$L8722:

; 3569 : 
; 3570 : #ifdef __RECLAIM__
; 3571 :    if ( nRC != zCURSOR_UNDEFINED && lpSrcViewOI->nHiddenCount > __RECLAIM_LIMIT__ )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -2					; fffffffeH
	je	SHORT $L8730
	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	movsx	eax, WORD PTR [edx+24]
	cmp	eax, 20					; 00000014H
	jle	SHORT $L8730

; 3572 :       fnReclaimHiddenInstances( lpSrcViewOI );

	mov	ecx, DWORD PTR _lpSrcViewOI$[ebp]
	push	ecx
	call	_fnReclaimHiddenInstances@4
$L8730:

; 3573 : #endif
; 3574 : 
; 3575 : // fnOperationReturn( iMoveSubobject, lpCurrentTask );
; 3576 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8614:

; 3577 : }

	mov	esp, ebp
	pop	ebp
	ret	32					; 00000020H
$L9912:
	DD	$L8725
	DD	$L8726
	DD	$L8727
	DD	$L8728
_fnMoveSubobjectUnderNewParent@32 ENDP
_TEXT	ENDS
PUBLIC	_fnMoveSubobjectAmongTwins@24
_TEXT	SEGMENT
_lpTgtEI$ = 12
_lpSrcViewEntityCsr$ = 16
_lpSrcEI$ = 20
_nPosition$ = 24
_nSrcPosition$ = 28
_nRC$ = -8
_lpEI$ = -4
_lpTgtLastHier$ = -20
_lpSrcLastHier$ = -16
_lpViewEntity$ = -12
_lpViewOI$ = -24
_lpFirstRoot$8840 = -28
_lpFirstRoot$8866 = -32
_fnMoveSubobjectAmongTwins@24 PROC NEAR

; 3591 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH

; 3592 :    zSHORT               nRC;
; 3593 :    LPENTITYINSTANCE     lpEI;
; 3594 :    LPENTITYINSTANCE     lpTgtLastHier;
; 3595 :    LPENTITYINSTANCE     lpSrcLastHier;
; 3596 :    LPVIEWENTITY         lpViewEntity;
; 3597 :    LPVIEWOI             lpViewOI = zGETPTR( lpTgtEI->hViewOI );

	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 3598 : 
; 3599 :    switch ( nPosition )
; 3600 :    {

	movsx	edx, WORD PTR _nPosition$[ebp]
	mov	DWORD PTR -36+[ebp], edx
	mov	eax, DWORD PTR -36+[ebp]
	sub	eax, 1
	mov	DWORD PTR -36+[ebp], eax
	cmp	DWORD PTR -36+[ebp], 3
	ja	$L8753
	mov	ecx, DWORD PTR -36+[ebp]
	jmp	DWORD PTR $L9914[ecx*4]
$L8757:

; 3601 :       case zPOS_FIRST:
; 3602 :          // If we're moving the src entity to the beginning this is the same
; 3603 :          // as moving src before the first entity so change lpTgtEI to be
; 3604 :          // the first twin.
; 3605 :          while ( lpTgtEI->hPrevTwin )

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L8760

; 3606 :             lpTgtEI = zGETPTR( lpTgtEI->hPrevTwin );

	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEI$[ebp], eax
	jmp	SHORT $L8757
$L8760:

; 3607 : 
; 3608 :          // Check to make sure tgt and src aren't the same.
; 3609 :          if ( lpSrcEI == lpTgtEI )

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	cmp	edx, DWORD PTR _lpTgtEI$[ebp]
	jne	SHORT $L8762

; 3610 :             break;

	jmp	$L8753
$L8762:

; 3611 : 
; 3612 :          // FALL THROUGH to perform the move.
; 3613 : 
; 3614 :       case zPOS_BEFORE:
; 3615 :          // Make sure we actually need to move something.
; 3616 :          if ( zGETPTR( lpTgtEI->hPrevTwin ) == lpSrcEI )

	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpSrcEI$[ebp]
	jne	SHORT $L8766

; 3617 :             break;  // lpSrcEI is already before lpTgtEI.

	jmp	$L8753
$L8766:

; 3618 : 
; 3619 :          // We don't move something before/after itself.
; 3620 :          if ( lpTgtEI == lpSrcEI )

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	cmp	edx, DWORD PTR _lpSrcEI$[ebp]
	jne	SHORT $L8767

; 3621 :             break;

	jmp	$L8753
$L8767:

; 3622 : 
; 3623 :          // Change hier pointers.
; 3624 :          lpSrcLastHier = fnFindLastEntityUnderParent( lpSrcEI, TRUE );

	push	1
	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	push	eax
	call	_fnFindLastEntityUnderParent@8
	mov	DWORD PTR _lpSrcLastHier$[ebp], eax

; 3625 :          if ( lpSrcEI->hPrevHier )

	mov	ecx, DWORD PTR _lpSrcEI$[ebp]
	cmp	DWORD PTR [ecx+18], 0
	je	SHORT $L8768

; 3627 :             lpEI = zGETPTR( lpSrcEI->hPrevHier );

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3628 :             lpEI->hNextHier = lpSrcLastHier->hNextHier;

	mov	ecx, DWORD PTR _lpEI$[ebp]
	mov	edx, DWORD PTR _lpSrcLastHier$[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR [ecx+14], eax
$L8768:

; 3630 : 
; 3631 :          if ( lpSrcLastHier->hNextHier )

	mov	ecx, DWORD PTR _lpSrcLastHier$[ebp]
	cmp	DWORD PTR [ecx+14], 0
	je	SHORT $L8770

; 3633 :             lpEI = zGETPTR( lpSrcLastHier->hNextHier );

	mov	edx, DWORD PTR _lpSrcLastHier$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3634 :             lpEI->hPrevHier = lpSrcEI->hPrevHier;

	mov	ecx, DWORD PTR _lpEI$[ebp]
	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	mov	eax, DWORD PTR [edx+18]
	mov	DWORD PTR [ecx+18], eax
$L8770:

; 3636 : 
; 3637 :          if ( lpTgtEI->hPrevHier )

	mov	ecx, DWORD PTR _lpTgtEI$[ebp]
	cmp	DWORD PTR [ecx+18], 0
	je	SHORT $L8772

; 3639 :             lpEI = zGETPTR( lpTgtEI->hPrevHier );

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3640 :             lpEI->hNextHier = zGETHNDL( lpSrcEI );

	mov	ecx, DWORD PTR _lpSrcEI$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpEI$[ebp]
	mov	DWORD PTR [edx+14], eax
$L8772:

; 3642 : 
; 3643 :          lpSrcEI->hPrevHier       = lpTgtEI->hPrevHier;

	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR _lpTgtEI$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	mov	DWORD PTR [eax+18], edx

; 3644 :          lpTgtEI->hPrevHier       = zGETHNDL( lpSrcLastHier );

	mov	eax, DWORD PTR _lpSrcLastHier$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpTgtEI$[ebp]
	mov	DWORD PTR [ecx+18], eax

; 3645 :          lpSrcLastHier->hNextHier = zGETHNDL( lpTgtEI );

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrcLastHier$[ebp]
	mov	DWORD PTR [ecx+14], eax

; 3646 : 
; 3647 :          //
; 3648 :          // Change twin pointers.
; 3649 :          //
; 3650 :          if ( lpSrcEI->hPrevTwin )

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L8777

; 3652 :             lpEI = zGETPTR( lpSrcEI->hPrevTwin );

	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3653 :             lpEI->hNextTwin = lpSrcEI->hNextTwin;

	mov	edx, DWORD PTR _lpEI$[ebp]
	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	mov	DWORD PTR [edx+22], ecx
$L8777:

; 3655 : 
; 3656 :          if ( lpSrcEI->hNextTwin )

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8779

; 3658 :             lpEI = zGETPTR( lpSrcEI->hNextTwin );

	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3659 :             lpEI->hPrevTwin = lpSrcEI->hPrevTwin;

	mov	edx, DWORD PTR _lpEI$[ebp]
	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+26], ecx
$L8779:

; 3661 : 
; 3662 :          if ( lpTgtEI->hPrevTwin )

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L8781

; 3664 :             lpEI = zGETPTR( lpTgtEI->hPrevTwin );

	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3665 :             lpEI->hNextTwin = zGETHNDL( lpSrcEI );

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpEI$[ebp]
	mov	DWORD PTR [ecx+22], eax
$L8781:

; 3667 : 
; 3668 :          lpSrcEI->hPrevTwin = lpTgtEI->hPrevTwin;

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+26], ecx

; 3669 :          lpTgtEI->hPrevTwin = zGETHNDL( lpSrcEI );

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpTgtEI$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 3670 :          lpSrcEI->hNextTwin = zGETHNDL( lpTgtEI );

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrcEI$[ebp]
	mov	DWORD PTR [ecx+22], eax

; 3671 : 
; 3672 :          break;

	jmp	$L8753
$L8787:

; 3673 : 
; 3674 :       case zPOS_LAST:
; 3675 :          // If we're moving the src entity to the end this is the same
; 3676 :          // as moving src after the last entity so change lpTgtEI to be
; 3677 :          // the last twin.
; 3678 :          while ( lpTgtEI->hNextTwin )

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8790

; 3679 :             lpTgtEI = zGETPTR( lpTgtEI->hNextTwin );

	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEI$[ebp], eax
	jmp	SHORT $L8787
$L8790:

; 3680 : 
; 3681 :          // Check to make sure tgt and src aren't the same.
; 3682 :          if ( lpSrcEI == lpTgtEI )

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	cmp	edx, DWORD PTR _lpTgtEI$[ebp]
	jne	SHORT $L8792

; 3683 :             break;

	jmp	$L8753
$L8792:

; 3684 : 
; 3685 :          // FALL THROUGH to perform the move.
; 3686 : 
; 3687 :       case zPOS_AFTER:
; 3688 :          // Make sure we actually need to move something.
; 3689 :          if ( zGETPTR( lpTgtEI->hNextTwin ) == lpSrcEI )

	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpSrcEI$[ebp]
	jne	SHORT $L8796

; 3690 :             break;  // lpSrcEI is already next after lpTgtEI.

	jmp	$L8753
$L8796:

; 3691 : 
; 3692 :          // We don't move something before/after itself.
; 3693 :          if ( lpTgtEI == lpSrcEI )

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	cmp	edx, DWORD PTR _lpSrcEI$[ebp]
	jne	SHORT $L8797

; 3694 :             break;

	jmp	$L8753
$L8797:

; 3695 : 
; 3696 :          //
; 3697 :          // Change hier pointers.
; 3698 :          //
; 3699 : 
; 3700 :          lpSrcLastHier = fnFindLastEntityUnderParent( lpSrcEI, TRUE );

	push	1
	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	push	eax
	call	_fnFindLastEntityUnderParent@8
	mov	DWORD PTR _lpSrcLastHier$[ebp], eax

; 3701 :          lpTgtLastHier = fnFindLastEntityUnderParent( lpTgtEI, TRUE );

	push	1
	mov	ecx, DWORD PTR _lpTgtEI$[ebp]
	push	ecx
	call	_fnFindLastEntityUnderParent@8
	mov	DWORD PTR _lpTgtLastHier$[ebp], eax

; 3702 : 
; 3703 :          if ( lpSrcEI->hPrevHier )

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	cmp	DWORD PTR [edx+18], 0
	je	SHORT $L8798

; 3705 :             lpEI = zGETPTR( lpSrcEI->hPrevHier );

	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3706 :             lpEI->hNextHier = lpSrcLastHier->hNextHier;

	mov	edx, DWORD PTR _lpEI$[ebp]
	mov	eax, DWORD PTR _lpSrcLastHier$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR [edx+14], ecx
$L8798:

; 3708 : 
; 3709 :          if ( lpSrcLastHier->hNextHier )

	mov	edx, DWORD PTR _lpSrcLastHier$[ebp]
	cmp	DWORD PTR [edx+14], 0
	je	SHORT $L8800

; 3711 :             lpEI = zGETPTR( lpSrcLastHier->hNextHier );

	mov	eax, DWORD PTR _lpSrcLastHier$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3712 :             lpEI->hPrevHier = lpSrcEI->hPrevHier;

	mov	edx, DWORD PTR _lpEI$[ebp]
	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	mov	DWORD PTR [edx+18], ecx
$L8800:

; 3714 : 
; 3715 :          if ( lpTgtLastHier->hNextHier )

	mov	edx, DWORD PTR _lpTgtLastHier$[ebp]
	cmp	DWORD PTR [edx+14], 0
	je	SHORT $L8802

; 3717 :             lpEI = zGETPTR( lpTgtLastHier->hNextHier );

	mov	eax, DWORD PTR _lpTgtLastHier$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3718 :             lpEI->hPrevHier = zGETHNDL( lpSrcLastHier );

	mov	edx, DWORD PTR _lpSrcLastHier$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpEI$[ebp]
	mov	DWORD PTR [ecx+18], eax
$L8802:

; 3720 : 
; 3721 :          lpSrcEI->hPrevHier       = zGETHNDL( lpTgtLastHier );

	mov	edx, DWORD PTR _lpTgtLastHier$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrcEI$[ebp]
	mov	DWORD PTR [ecx+18], eax

; 3722 :          lpSrcLastHier->hNextHier = lpTgtLastHier->hNextHier;

	mov	edx, DWORD PTR _lpSrcLastHier$[ebp]
	mov	eax, DWORD PTR _lpTgtLastHier$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR [edx+14], ecx

; 3723 :          lpTgtLastHier->hNextHier = zGETHNDL( lpSrcEI );

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpTgtLastHier$[ebp]
	mov	DWORD PTR [ecx+14], eax

; 3724 : 
; 3725 :          //
; 3726 :          // Change twin pointers.
; 3727 :          //
; 3728 :          if ( lpSrcEI->hPrevTwin )

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L8807

; 3730 :             lpEI = zGETPTR( lpSrcEI->hPrevTwin );

	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3731 :             lpEI->hNextTwin = lpSrcEI->hNextTwin;

	mov	edx, DWORD PTR _lpEI$[ebp]
	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	mov	DWORD PTR [edx+22], ecx
$L8807:

; 3733 : 
; 3734 :          if ( lpSrcEI->hNextTwin )

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8809

; 3736 :             lpEI = zGETPTR( lpSrcEI->hNextTwin );

	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3737 :             lpEI->hPrevTwin = lpSrcEI->hPrevTwin;

	mov	edx, DWORD PTR _lpEI$[ebp]
	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+26], ecx
$L8809:

; 3739 : 
; 3740 :          if ( lpTgtEI->hNextTwin )

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8811

; 3742 :             lpEI = zGETPTR( lpTgtEI->hNextTwin );

	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax

; 3743 :             lpEI->hPrevTwin = zGETHNDL( lpSrcEI );

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpEI$[ebp]
	mov	DWORD PTR [ecx+26], eax
$L8811:

; 3745 : 
; 3746 :          lpSrcEI->hPrevTwin = zGETHNDL( lpTgtEI );

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrcEI$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 3747 :          lpSrcEI->hNextTwin = lpTgtEI->hNextTwin;

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	mov	DWORD PTR [edx+22], ecx

; 3748 :          lpTgtEI->hNextTwin = zGETHNDL( lpSrcEI );

	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpTgtEI$[ebp]
	mov	DWORD PTR [ecx+22], eax
$L8753:

; 3752 : 
; 3753 :    // Change cursor position of the source view.
; 3754 :    switch ( nSrcPosition )
; 3755 :    {

	movsx	edx, WORD PTR _nSrcPosition$[ebp]
	mov	DWORD PTR -40+[ebp], edx
	mov	eax, DWORD PTR -40+[ebp]
	sub	eax, 1
	mov	DWORD PTR -40+[ebp], eax
	cmp	DWORD PTR -40+[ebp], 3
	ja	$L8817
	mov	ecx, DWORD PTR -40+[ebp]
	jmp	DWORD PTR $L9915[ecx*4]
$L8820:

; 3756 :       case zREPOS_FIRST:
; 3757 :          lpEI = lpTgtEI;

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	mov	DWORD PTR _lpEI$[ebp], edx
$L8822:

; 3758 :          while ( lpEI->hPrevTwin )

	mov	eax, DWORD PTR _lpEI$[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	SHORT $L8823

; 3759 :             lpEI = zGETPTR( lpEI->hPrevTwin );

	mov	ecx, DWORD PTR _lpEI$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax
	jmp	SHORT $L8822
$L8823:

; 3760 : 
; 3761 :          lpSrcViewEntityCsr->hEntityInstance = zGETHNDL( lpEI );

	mov	eax, DWORD PTR _lpEI$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 3762 :          break;

	jmp	SHORT $L8817
$L8826:

; 3763 : 
; 3764 :       case zREPOS_LAST:
; 3765 :          lpEI = lpTgtEI;

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	mov	DWORD PTR _lpEI$[ebp], edx
$L8828:

; 3766 :          while ( lpEI->hNextTwin )

	mov	eax, DWORD PTR _lpEI$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	SHORT $L8829

; 3767 :             lpEI = zGETPTR( lpEI->hNextTwin );

	mov	ecx, DWORD PTR _lpEI$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax
	jmp	SHORT $L8828
$L8829:

; 3768 : 
; 3769 :          lpSrcViewEntityCsr->hEntityInstance = zGETHNDL( lpEI );

	mov	eax, DWORD PTR _lpEI$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 3770 :          break;

	jmp	SHORT $L8817
$L8832:

; 3771 : 
; 3772 :       case zREPOS_BEFORE:
; 3773 :          lpSrcViewEntityCsr->hEntityInstance = lpSrcEI->hPrevTwin;

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+26], ecx

; 3774 :          break;

	jmp	SHORT $L8817
$L8833:

; 3775 : 
; 3776 :       case zREPOS_AFTER:
; 3777 :          lpSrcViewEntityCsr->hEntityInstance = lpSrcEI->hNextTwin;

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	mov	DWORD PTR [edx+26], ecx
$L8817:

; 3784 : 
; 3785 :    if ( lpSrcViewEntityCsr->hEntityInstance == NULL_CSR )

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+26], 0
	jne	SHORT $L8835

; 3786 :       lpSrcViewEntityCsr->hEntityInstance = UNSET_CSR;

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	DWORD PTR [eax+26], 1
$L8835:

; 3787 : 
; 3788 :    if ( lpSrcViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	cmp	DWORD PTR [ecx+26], 1
	jne	$L8838

; 3790 :    // if ( lpSrcViewEntityCsr->hEntityInstance == UNSET_CSR )
; 3791 :    //    SysMessageBox( 0, "fnMoveSubobjectAmongTwins", "UNSET_CSR", -1 );
; 3792 : 
; 3793 :        // We can't allow the root entity to be null so reset it.
; 3794 :       if ( lpSrcViewEntityCsr->hParent == 0 )

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+10], 0
	jne	$L8839

; 3796 :          LPENTITYINSTANCE lpFirstRoot;
; 3797 : 
; 3798 :          switch ( nSrcPosition )
; 3799 :          {

	movsx	eax, WORD PTR _nSrcPosition$[ebp]
	mov	DWORD PTR -44+[ebp], eax
	mov	ecx, DWORD PTR -44+[ebp]
	sub	ecx, 1
	mov	DWORD PTR -44+[ebp], ecx
	cmp	DWORD PTR -44+[ebp], 3
	ja	SHORT $L8842
	mov	edx, DWORD PTR -44+[ebp]
	jmp	DWORD PTR $L9916[edx*4]
$L8845:

; 3800 :             case zREPOS_BEFORE:
; 3801 :             case zREPOS_FIRST:
; 3802 :                lpEI = lpTgtEI;

	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	DWORD PTR _lpEI$[ebp], eax
$L8847:

; 3803 :                while ( lpEI->hPrevTwin )

	mov	ecx, DWORD PTR _lpEI$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	SHORT $L8848

; 3804 :                   lpEI = zGETPTR( lpEI->hPrevTwin );

	mov	edx, DWORD PTR _lpEI$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax
	jmp	SHORT $L8847
$L8848:

; 3805 : 
; 3806 :                lpSrcViewEntityCsr->hEntityInstance = zGETHNDL( lpEI );

	mov	ecx, DWORD PTR _lpEI$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+26], eax

; 3807 :             // if ( lpSrcViewEntityCsr->hEntityInstance == UNSET_CSR )
; 3808 :             //    SysMessageBox( 0, "fnMoveSubobjectAmongTwins1", "UNSET_CSR", -1 );
; 3809 : 
; 3810 :                break;

	jmp	SHORT $L8842
$L8851:

; 3811 : 
; 3812 :             case zREPOS_AFTER:
; 3813 :             case zREPOS_LAST:
; 3814 :                lpEI = lpTgtEI;

	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	DWORD PTR _lpEI$[ebp], eax
$L8853:

; 3815 :                while ( lpEI->hNextTwin )

	mov	ecx, DWORD PTR _lpEI$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	SHORT $L8854

; 3816 :                   lpEI = zGETPTR( lpEI->hNextTwin );

	mov	edx, DWORD PTR _lpEI$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$[ebp], eax
	jmp	SHORT $L8853
$L8854:

; 3817 : 
; 3818 :                lpSrcViewEntityCsr->hEntityInstance = zGETHNDL( lpEI );

	mov	ecx, DWORD PTR _lpEI$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	DWORD PTR [edx+26], eax
$L8842:

; 3824 : 
; 3825 :          // Make sure ViewOI is pointing to the first EI.
; 3826 :          for ( lpFirstRoot = zGETPTR( lpViewOI->hRootEntityInstance );
; 3827 :                lpFirstRoot->hPrevTwin;
; 3828 :                lpFirstRoot = zGETPTR( lpFirstRoot->hPrevTwin ) )

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstRoot$8840[ebp], eax
	jmp	SHORT $L8859
$L8860:
	mov	edx, DWORD PTR _lpFirstRoot$8840[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstRoot$8840[ebp], eax
$L8859:
	mov	ecx, DWORD PTR _lpFirstRoot$8840[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	SHORT $L8861

; 3830 :             // Nothing needs to be done here.
; 3831 :          }

	jmp	SHORT $L8860
$L8861:

; 3832 : 
; 3833 :          lpViewOI->hRootEntityInstance = zGETHNDL( lpFirstRoot );

	mov	edx, DWORD PTR _lpFirstRoot$8840[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 3834 : 
; 3835 :          nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 3837 :       else

	jmp	SHORT $L8863
$L8839:

; 3838 :          nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH
$L8863:

; 3840 :    else

	jmp	SHORT $L8864
$L8838:

; 3841 :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L8864:

; 3842 : 
; 3843 :    // Make sure ViewOI is pointing to the first EI.
; 3844 :    if ( lpSrcViewEntityCsr->hParent == 0 )

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+10], 0
	jne	SHORT $L8865

; 3846 :       LPENTITYINSTANCE lpFirstRoot;
; 3847 : 
; 3848 :       for ( lpFirstRoot = zGETPTR( lpViewOI->hRootEntityInstance );
; 3849 :             lpFirstRoot->hPrevTwin;
; 3850 :             lpFirstRoot = zGETPTR( lpFirstRoot->hPrevTwin ) )

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstRoot$8866[ebp], eax
	jmp	SHORT $L8869
$L8870:
	mov	edx, DWORD PTR _lpFirstRoot$8866[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstRoot$8866[ebp], eax
$L8869:
	mov	ecx, DWORD PTR _lpFirstRoot$8866[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	SHORT $L8871

; 3852 :          // Nothing needs to be done here.
; 3853 :       }

	jmp	SHORT $L8870
$L8871:

; 3854 : 
; 3855 :       lpViewOI->hRootEntityInstance = zGETHNDL( lpFirstRoot );

	mov	edx, DWORD PTR _lpFirstRoot$8866[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 3856 : 
; 3857 :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L8865:

; 3859 : 
; 3860 :    // If the entity has autosequencing then we need to set the update flags.
; 3861 :    lpViewEntity = zGETPTR( lpTgtEI->hViewEntity );

	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 3862 :    if ( lpViewEntity->bAutoSeq )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 20					; 00000014H
	and	edx, 1
	test	edx, edx
	je	SHORT $L8874

; 3864 :       lpSrcEI->u.nInd.bUpdated = TRUE;

	mov	eax, DWORD PTR _lpSrcEI$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	or	ecx, 4
	mov	edx, DWORD PTR _lpSrcEI$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 3865 :       lpTgtEI->u.nInd.bUpdated = TRUE;

	mov	eax, DWORD PTR _lpTgtEI$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	or	ecx, 4
	mov	edx, DWORD PTR _lpTgtEI$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 3866 : 
; 3867 :       // Set target instance as updated.
; 3868 :       lpViewOI->bUpdatedFile = lpViewOI->bUpdated = TRUE;

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	or	ecx, 16					; 00000010H
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [edx+36], ecx
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	or	ecx, 32					; 00000020H
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [edx+36], ecx
$L8874:

; 3870 : 
; 3871 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 3872 : }

	mov	esp, ebp
	pop	ebp
	ret	24					; 00000018H
$L9914:
	DD	$L8757
	DD	$L8787
	DD	$L8792
	DD	$L8762
$L9915:
	DD	$L8820
	DD	$L8826
	DD	$L8833
	DD	$L8832
$L9916:
	DD	$L8845
	DD	$L8851
	DD	$L8851
	DD	$L8845
_fnMoveSubobjectAmongTwins@24 ENDP
_TEXT	ENDS
PUBLIC	_MoveSubobject@24
_TEXT	SEGMENT
_lpTgtView$ = 8
_cpcTgtEntityName$ = 12
_lpSrcView$ = 16
_cpcSrcEntityName$ = 20
_nPosition$ = 24
_nSrcPosition$ = 28
_lpCurrentTask$ = -36
_lpSrcViewEntity$ = -28
_lpTgtViewEntity$ = -32
_lpTgtViewCsr$ = -8
_lpTgtViewEntityCsr$ = -16
_lpSrcViewEntityCsr$ = -24
_lpSrcEntityInstance$ = -4
_lpWkEntityInstance$ = -20
_nRC$ = -12
_lpSSrcViewEntity$8902 = -44
_lpSTgtViewEntity$8903 = -40
_lpTempCsr$8920 = -48
_MoveSubobject@24 PROC NEAR

; 3928 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H

; 3929 :    LPTASK            lpCurrentTask;
; 3930 :    LPVIEWENTITY      lpSrcViewEntity;
; 3931 :    LPVIEWENTITY      lpTgtViewEntity;
; 3932 :    LPVIEWCSR         lpTgtViewCsr;
; 3933 :    LPVIEWENTITYCSR   lpTgtViewEntityCsr;
; 3934 :    LPVIEWENTITYCSR   lpSrcViewEntityCsr;
; 3935 :    LPENTITYINSTANCE  lpSrcEntityInstance;
; 3936 :    LPENTITYINSTANCE  lpWkEntityInstance;
; 3937 :    zSHORT            nRC;
; 3938 : 
; 3939 :    // Validate that the source view entity exists and has a cursor
; 3940 :    // value for copying, we call fnValidateInstanceParameters for the
; 3941 :    // source since it requires the same editing as an attribute retrieval.
; 3942 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 3943 :                                       &lpSrcViewEntity,
; 3944 :                                       &lpSrcViewEntityCsr,
; 3945 :                                       iMoveSubobject,
; 3946 :                                       lpSrcView,
; 3947 :                                       cpcSrcEntityName, 1 ) )

	push	1
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	push	110					; 0000006eH
	lea	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateInstanceParameters
	add	esp, 28					; 0000001cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8897

; 3949 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8887
$L8897:

; 3951 : 
; 3952 :    // Validate that the view passed is valid.
; 3953 :    if ( fnValidViewCsr( lpCurrentTask, lpTgtView ) == 0 )

	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidViewCsr
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L8898

; 3955 :       fnOperationReturn( iMoveSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	110					; 0000006eH
	call	_fnOperationReturn
	add	esp, 8

; 3956 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8887
$L8898:

; 3958 : 
; 3959 :    lpTgtViewCsr = zGETPTR( lpTgtView->hViewCsr );

	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewCsr$[ebp], eax

; 3960 : 
; 3961 :    if ( (lpTgtViewEntity = fnValidViewEntity( &lpTgtViewEntityCsr,
; 3962 :                                               lpTgtView,
; 3963 :                                               cpcTgtEntityName, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _cpcTgtEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	edx
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpTgtViewEntity$[ebp], eax
	cmp	DWORD PTR _lpTgtViewEntity$[ebp], 0
	jne	SHORT $L8900

; 3965 :       fnOperationReturn( iMoveSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	110					; 0000006eH
	call	_fnOperationReturn
	add	esp, 8

; 3966 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8887
$L8900:

; 3968 : 
; 3969 :    // Make sure the source entity type and target entity type are either the
; 3970 :    // same view entity type or a recursive parent child entity pair.
; 3971 :    if ( lpSrcViewEntity != lpTgtViewEntity )

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	cmp	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	je	$L8917

; 3973 :       LPVIEWENTITY lpSSrcViewEntity;
; 3974 :       LPVIEWENTITY lpSTgtViewEntity;
; 3975 : 
; 3976 :       lpSSrcViewEntity = lpSrcViewEntity;

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	DWORD PTR _lpSSrcViewEntity$8902[ebp], edx

; 3977 :       lpSTgtViewEntity = lpTgtViewEntity;

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	DWORD PTR _lpSTgtViewEntity$8903[ebp], eax

; 3978 :       if ( lpSSrcViewEntity->bRecursive )

	mov	ecx, DWORD PTR _lpSSrcViewEntity$8902[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8904

; 3980 :          lpSSrcViewEntity = zGETPTR( lpSrcViewEntity->hParent );

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSSrcViewEntity$8902[ebp], eax
$L8907:

; 3981 :          while ( lpSSrcViewEntity->lEREntTok != lpSrcViewEntity->lEREntTok )

	mov	edx, DWORD PTR _lpSSrcViewEntity$8902[ebp]
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	ecx, DWORD PTR [edx+195]
	cmp	ecx, DWORD PTR [eax+195]
	je	SHORT $L8908

; 3982 :             lpSSrcViewEntity = zGETPTR( lpSSrcViewEntity->hParent );

	mov	edx, DWORD PTR _lpSSrcViewEntity$8902[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSSrcViewEntity$8902[ebp], eax
	jmp	SHORT $L8907
$L8908:

; 3984 :       else

	jmp	SHORT $L8915
$L8904:

; 3985 :       if ( lpSTgtViewEntity->bRecursive )

	mov	ecx, DWORD PTR _lpSTgtViewEntity$8903[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8915

; 3987 :          lpSTgtViewEntity = zGETPTR( lpTgtViewEntity->hParent );

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSTgtViewEntity$8903[ebp], eax
$L8914:

; 3988 :          while ( lpSTgtViewEntity->lEREntTok != lpTgtViewEntity->lEREntTok )

	mov	edx, DWORD PTR _lpSTgtViewEntity$8903[ebp]
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [edx+195]
	cmp	ecx, DWORD PTR [eax+195]
	je	SHORT $L8915

; 3989 :             lpSSrcViewEntity = zGETPTR( lpSSrcViewEntity->hParent );

	mov	edx, DWORD PTR _lpSSrcViewEntity$8902[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSSrcViewEntity$8902[ebp], eax
	jmp	SHORT $L8914
$L8915:

; 3991 : 
; 3992 :       if ( lpSSrcViewEntity != lpSTgtViewEntity )

	mov	ecx, DWORD PTR _lpSSrcViewEntity$8902[ebp]
	cmp	ecx, DWORD PTR _lpSTgtViewEntity$8903[ebp]
	je	SHORT $L8917

; 3994 :          // "KZOEE114 - Source and Target entities do not match"
; 3995 :          fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 114, 0,
; 3996 :                            lpSrcViewEntity->szName,
; 3997 :                            lpTgtViewEntity->szName );

	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	114					; 00000072H
	push	8
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3998 :          fnOperationReturn( iMoveSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	110					; 0000006eH
	call	_fnOperationReturn
	add	esp, 8

; 3999 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8887
$L8917:

; 4002 : 
; 4003 :    // Next get the source entity instance and ensure that we are
; 4004 :    // not attempting to move it under one of its children.
; 4005 :    lpSrcEntityInstance = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 4006 :    if ( lpTgtViewEntityCsr->hParent )

	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+10], 0
	je	SHORT $L8919

; 4008 :       LPVIEWENTITYCSR lpTempCsr;
; 4009 : 
; 4010 :       lpTempCsr = zGETPTR( lpTgtViewEntityCsr->hParent );

	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempCsr$8920[ebp], eax

; 4011 :       lpWkEntityInstance = zGETPTR( lpTempCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpTempCsr$8920[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkEntityInstance$[ebp], eax

; 4013 :    else

	jmp	SHORT $L8923
$L8919:

; 4014 :       lpWkEntityInstance = zGETPTR( lpTgtViewCsr->hViewParentEntityInstance );

	mov	edx, DWORD PTR _lpTgtViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkEntityInstance$[ebp], eax
$L8923:

; 4015 : 
; 4016 :    // Set parent match indicator
; 4017 :    if ( zGETPTR( lpSrcEntityInstance->hParent ) == lpWkEntityInstance )

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpWkEntityInstance$[ebp]
	jne	SHORT $L8926

; 4019 :       nRC = fnMoveSubobjectAmongTwins( lpTgtView,
; 4020 :                                        zGETPTR( lpTgtViewEntityCsr->hEntityInstance ),
; 4021 :                                        lpSrcViewEntityCsr, lpSrcEntityInstance,
; 4022 :                                        nPosition, nSrcPosition );

	mov	ax, WORD PTR _nSrcPosition$[ebp]
	push	eax
	mov	cx, WORD PTR _nPosition$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	call	_fnMoveSubobjectAmongTwins@24
	mov	WORD PTR _nRC$[ebp], ax

; 4024 :    else

	jmp	SHORT $L8928
$L8926:

; 4026 :       nRC = fnMoveSubobjectUnderNewParent( lpWkEntityInstance,
; 4027 :                                            lpTgtView,
; 4028 :                                            lpTgtViewEntityCsr,
; 4029 :                                            lpSrcView,
; 4030 :                                            lpSrcViewEntityCsr,
; 4031 :                                            nPosition, nSrcPosition,
; 4032 :                                            lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	dx, WORD PTR _nSrcPosition$[ebp]
	push	edx
	mov	ax, WORD PTR _nPosition$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWkEntityInstance$[ebp]
	push	edx
	call	_fnMoveSubobjectUnderNewParent@32
	mov	WORD PTR _nRC$[ebp], ax
$L8928:

; 4034 : 
; 4035 :    // Whew, I think we've done it, return to caller.
; 4036 :    fnOperationReturn( iMoveSubobject, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	110					; 0000006eH
	call	_fnOperationReturn
	add	esp, 8

; 4037 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8887:

; 4038 : 
; 4039 : }  // END of MoveSubobject

	mov	esp, ebp
	pop	ebp
	ret	24					; 00000018H
_MoveSubobject@24 ENDP
_TEXT	ENDS
PUBLIC	_fnUpdateRelinkCursors
_TEXT	SEGMENT
_lpEntityInstance$ = 8
_nOffset1$ = -20
_nOffset2$ = -8
_lEREntTok$ = -16
_lpViewCsr$ = -4
_lpViewOI$ = -28
_lpViewEntity$ = -12
_lpViewEntityCsr$ = -32
_lpWkEntityInstance$ = -24
_fnUpdateRelinkCursors PROC NEAR

; 4056 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 4057 :    zSHORT            nOffset1, nOffset2;
; 4058 :    zLONG             lEREntTok;
; 4059 :    LPVIEWCSR         lpViewCsr;
; 4060 :    LPVIEWOI          lpViewOI;
; 4061 :    LPVIEWENTITY      lpViewEntity;
; 4062 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 4063 :    LPENTITYINSTANCE  lpWkEntityInstance;
; 4064 : 
; 4065 :    lpWkEntityInstance = lpEntityInstance;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR _lpWkEntityInstance$[ebp], eax
$L8941:

; 4068 :       if ( lpWkEntityInstance->u.nInd.bHidden &&
; 4069 :                                        lpWkEntityInstance->hNextTwin )

	mov	ecx, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	$L8957
	mov	eax, DWORD PTR _lpWkEntityInstance$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	$L8957

; 4071 :          lpViewOI     = zGETPTR( lpWkEntityInstance->hViewOI );

	mov	ecx, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 4072 :          lpViewCsr    = zGETPTR( lpViewOI->hFirstViewCsr );

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 4073 :          lpViewEntity = zGETPTR( lpWkEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 4074 :          nOffset1 = lpViewEntity->nHierNbr - 1;

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+217]
	sub	edx, 1
	mov	WORD PTR _nOffset1$[ebp], dx

; 4075 :          if ( lpViewEntity->bRecursive )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8948

; 4077 :             nOffset2 = nOffset1;

	mov	dx, WORD PTR _nOffset1$[ebp]
	mov	WORD PTR _nOffset2$[ebp], dx

; 4078 :             lEREntTok = lpViewEntity->lEREntTok;

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+195]
	mov	DWORD PTR _lEREntTok$[ebp], ecx

; 4079 : 
; 4080 :             lpViewEntity = zGETPTR( lpViewEntity->hParent );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax
$L8951:

; 4081 :             while ( lpViewEntity->lEREntTok != lEREntTok )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+195]
	cmp	edx, DWORD PTR _lEREntTok$[ebp]
	je	SHORT $L8952

; 4082 :                lpViewEntity = zGETPTR( lpViewEntity->hParent );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	jmp	SHORT $L8951
$L8952:

; 4083 : 
; 4084 :             nOffset1 = lpViewEntity->nHierNbr - 1;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	sub	eax, 1
	mov	WORD PTR _nOffset1$[ebp], ax

; 4086 :          else

	jmp	SHORT $L8954
$L8948:

; 4087 :             nOffset2 = 0;

	mov	WORD PTR _nOffset2$[ebp], 0
$L8954:

; 4088 : 
; 4089 :          while ( lpViewCsr )

	cmp	DWORD PTR _lpViewCsr$[ebp], 0
	je	$L8957

; 4091 :             lpViewEntityCsr = zGETPTR( lpViewCsr->hFirstOD_EntityCsr );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 4092 :             lpViewEntityCsr += nOffset1;

	movsx	eax, WORD PTR _nOffset1$[ebp]
	imul	eax, 30					; 0000001eH
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	add	ecx, eax
	mov	DWORD PTR _lpViewEntityCsr$[ebp], ecx

; 4093 :             if ( zGETPTR( lpViewEntityCsr->hEntityInstance ) == lpWkEntityInstance )

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpWkEntityInstance$[ebp]
	jne	SHORT $L8960

; 4095 :                lpViewEntityCsr->hEntityInstance = lpWkEntityInstance->hNextTwin;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	mov	DWORD PTR [ecx+26], eax

; 4096 :             // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 4097 :             //    SysMessageBox( 0, "fnUpdateRelinkCursors1", "UNSET_CSR", -1 );
; 4098 : 
; 4099 :                fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnResetCursorForViewChildren
	add	esp, 4

; 4101 :             else

	jmp	SHORT $L8965
$L8960:

; 4102 :             if ( nOffset2 )

	movsx	edx, WORD PTR _nOffset2$[ebp]
	test	edx, edx
	je	SHORT $L8965

; 4104 :                lpViewEntityCsr = zGETPTR( lpViewCsr->hFirstOD_EntityCsr );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 4105 :                lpViewEntityCsr += nOffset2;

	movsx	edx, WORD PTR _nOffset2$[ebp]
	imul	edx, 30					; 0000001eH
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	add	eax, edx
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 4106 :                if ( zGETPTR( lpViewEntityCsr->hEntityInstance ) == lpWkEntityInstance )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpWkEntityInstance$[ebp]
	jne	SHORT $L8965

; 4108 :                   lpViewEntityCsr->hEntityInstance = lpWkEntityInstance->hNextTwin;

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	mov	DWORD PTR [eax+26], edx

; 4109 :                // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 4110 :                //    SysMessageBox( 0, "fnUpdateRelinkCursors2", "UNSET_CSR", -1 );
; 4111 : 
; 4112 :                   fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L8965:

; 4115 : 
; 4116 :             lpViewCsr = zGETPTR( lpViewCsr->hNextViewCsr );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 4117 :          }

	jmp	$L8954
$L8957:

; 4119 : 
; 4120 :       lpWkEntityInstance = zGETPTR( lpWkEntityInstance->hNextLinked );

	mov	eax, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkEntityInstance$[ebp], eax

; 4123 :               lpWkEntityInstance != lpEntityInstance );

	cmp	DWORD PTR _lpWkEntityInstance$[ebp], 0
	je	SHORT $L8968
	mov	edx, DWORD PTR _lpWkEntityInstance$[ebp]
	cmp	edx, DWORD PTR _lpEntityInstance$[ebp]
	jne	$L8941
$L8968:

; 4124 : 
; 4125 :    return( 0 );

	xor	ax, ax

; 4126 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnUpdateRelinkCursors ENDP
_TEXT	ENDS
PUBLIC	_RelinkAllSubobjectsForOI@16
PUBLIC	_fnValidSubobjectStructureMatch
PUBLIC	??_C@_0BI@EDF@?5and?5should?5be?5re?9built?$AA@	; `string'
PUBLIC	??_C@_0CK@EOHI@ERROR?3?5The?5following?5LODs?5are?5ou@ ; `string'
PUBLIC	??_C@_0L@DLD@Zeidon?5RLK?$AA@			; `string'
PUBLIC	_fnRelinkVsnSubobjectToSubobject
EXTRN	_SysMutexLock@16:NEAR
EXTRN	_SysMutexUnlock@12:NEAR
EXTRN	_fnInstanceLinkedToInstance:NEAR
EXTRN	_fnInstanceKeysMatch:NEAR
EXTRN	_fnRelinkInstanceToInstance:NEAR
EXTRN	_fnRemoveOtherOI_LinkedInstances:NEAR
EXTRN	_fnEntityInRecursivePath:NEAR
EXTRN	_fnFirstLevel2_ForViewEntity:NEAR
EXTRN	_fnStillPrevVersion:NEAR
;	COMDAT ??_C@_0BI@EDF@?5and?5should?5be?5re?9built?$AA@
; File C:\10C\A\oe\KZOESOAA.C
_DATA	SEGMENT
??_C@_0BI@EDF@?5and?5should?5be?5re?9built?$AA@ DB ' and should be re-bui'
	DB	'lt', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CK@EOHI@ERROR?3?5The?5following?5LODs?5are?5ou@
_DATA	SEGMENT
??_C@_0CK@EOHI@ERROR?3?5The?5following?5LODs?5are?5ou@ DB 'ERROR: The fol'
	DB	'lowing LODs are out of sync', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@DLD@Zeidon?5RLK?$AA@
_DATA	SEGMENT
??_C@_0L@DLD@Zeidon?5RLK?$AA@ DB 'Zeidon RLK', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTgtView$ = 8
_cpcTgtEntityName$ = 12
_lpSrcView$ = 16
_cpcSrcEntityName$ = 20
_lpCurrentTask$ = -400
_lpSrcOwningTask$ = -104
_lpTgtOwningTask$ = -88
_vTask$ = -396
_lpSrcViewCsr$ = -20
_lpTgtViewCsr$ = -16
_lpSrcViewOI$ = -368
_lpTgtViewOI$ = -52
_lpSrcViewOD$ = -28
_lpTgtViewOD$ = -72
_hSrcViewEntity$ = -40
_hTgtViewEntity$ = -68
_lpSrcViewEntity$ = -388
_lpTgtViewEntity$ = -392
_lpWkViewEntity$ = -36
_lpInvertedSrcEntity$ = -32
_lpSrcViewEntityCsr$ = -384
_lpTgtViewEntityCsr$ = -60
_lpInvertedSrcCsr$ = -100
_lpSrcEntityInstance$ = -12
_lpSrcRootEntityInstance$ = -84
_lpTgtEntityInstance$ = -80
_lpWkEntityInstance$ = -380
_cpcEntityName$ = -364
_bLeafNode$ = -376
_bIncluded$ = -76
_bUpdated$ = -372
_bUpdatedFile$ = -48
_nInvertedParents$ = -8
_nNotFound$ = -64
_nRC$ = -56
_bDoSrcTwin$ = -44
_bDoTgtTwin$ = -92
_nStopSrcHier$ = -4
_nStopTgtHier$ = -96
_lpFirstSource$ = -108
_lpLastSource$ = -24
_szMsg$9035 = -600
_lpFirstSourceViewEntity$9084 = -604
_lpWrkViewEntity$9170 = -608
_RelinkAllSubobjectsForOI@16 PROC NEAR

; 4157 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 612				; 00000264H

; 4158 :    LPTASK            lpCurrentTask;
; 4159 :    LPTASK            lpSrcOwningTask;
; 4160 :    LPTASK            lpTgtOwningTask;
; 4161 :    zVIEW             vTask;
; 4162 :    LPVIEWCSR         lpSrcViewCsr;
; 4163 :    LPVIEWCSR         lpTgtViewCsr;
; 4164 :    LPVIEWOI          lpSrcViewOI;
; 4165 :    LPVIEWOI          lpTgtViewOI;
; 4166 :    LPVIEWOD          lpSrcViewOD;
; 4167 :    LPVIEWOD          lpTgtViewOD;
; 4168 :    LPVIEWENTITY      hSrcViewEntity;
; 4169 :    LPVIEWENTITY      hTgtViewEntity;
; 4170 :    LPVIEWENTITY      lpSrcViewEntity;
; 4171 :    LPVIEWENTITY      lpTgtViewEntity;
; 4172 :    LPVIEWENTITY      lpWkViewEntity;
; 4173 :    LPVIEWENTITY      lpInvertedSrcEntity;
; 4174 :    LPVIEWENTITYCSR   lpSrcViewEntityCsr;
; 4175 :    LPVIEWENTITYCSR   lpTgtViewEntityCsr;
; 4176 :    LPVIEWENTITYCSR   lpInvertedSrcCsr;
; 4177 :    LPENTITYINSTANCE  lpSrcEntityInstance;
; 4178 :    LPENTITYINSTANCE  lpSrcRootEntityInstance;
; 4179 :    LPENTITYINSTANCE  lpTgtEntityInstance;
; 4180 :    LPENTITYINSTANCE  lpWkEntityInstance;
; 4181 :    zCHAR             cpcEntityName[ 255 ];
; 4182 :    zSHORT            bLeafNode;
; 4183 :    zSHORT            bIncluded;
; 4184 :    zBOOL             bUpdated;
; 4185 :    zBOOL             bUpdatedFile;
; 4186 :    zSHORT            nInvertedParents;
; 4187 :    zSHORT            nNotFound;
; 4188 :    zSHORT            nRC;
; 4189 : 
; 4190 : #ifdef            __RELINK_PERFORMANCE__
; 4191 :    zBOOL             bDoSrcTwin;
; 4192 :    zBOOL             bDoTgtTwin;
; 4193 :    zSHORT            nStopSrcHier;
; 4194 :    zSHORT            nStopTgtHier;
; 4195 :    LPENTITYINSTANCE  lpFirstSource;
; 4196 :    LPENTITYINSTANCE  lpLastSource;
; 4197 : #endif
; 4198 : 
; 4199 :    // Validate that the source view entity exists and has a cursor
; 4200 :    // value for copying, we call fnValidateInstanceParameters for the
; 4201 :    // source since it requires the same editing as an attribute retrieval.
; 4202 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 4203 :                                       &lpSrcViewEntity,
; 4204 :                                       &lpSrcViewEntityCsr,
; 4205 :                                       iRelinkAllSubobjectsForOI,
; 4206 :                                       lpSrcView,
; 4207 :                                       cpcSrcEntityName, 0 ) )

	push	0
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	push	121					; 00000079H
	lea	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateInstanceParameters
	add	esp, 28					; 0000001cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L9015

; 4209 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8977
$L9015:

; 4211 : 
; 4212 :    // Validate that the view passed is valid
; 4213 :    if ( fnValidViewCsr( lpCurrentTask, lpTgtView ) == 0 )

	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidViewCsr
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L9016

; 4215 :       fnOperationReturn( iRelinkAllSubobjectsForOI, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	121					; 00000079H
	call	_fnOperationReturn
	add	esp, 8

; 4216 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8977
$L9016:

; 4218 : 
; 4219 :    if ( (lpTgtViewEntity = fnValidViewEntity( &lpTgtViewEntityCsr,
; 4220 :                                               lpTgtView,
; 4221 :                                               cpcTgtEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcTgtEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpTgtViewEntity$[ebp], eax
	cmp	DWORD PTR _lpTgtViewEntity$[ebp], 0
	jne	SHORT $L9017

; 4223 :       fnOperationReturn( iRelinkAllSubobjectsForOI, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	121					; 00000079H
	call	_fnOperationReturn
	add	esp, 8

; 4224 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8977
$L9017:

; 4226 : 
; 4227 :    hSrcViewEntity = zGETHNDL( lpSrcViewEntity );

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hSrcViewEntity$[ebp], eax

; 4228 :    hTgtViewEntity = zGETHNDL( lpTgtViewEntity );

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hTgtViewEntity$[ebp], eax

; 4229 : 
; 4230 :    // Make sure entity can be included.
; 4231 :    if ( lpSrcViewEntity->bInclSrc == FALSE )

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9020

; 4233 :       strcpy( cpcEntityName, "\nEntity: \t" );

	push	OFFSET FLAT:??_C@_0L@FACN@?6Entity?3?5?7?$AA@ ; `string'
	lea	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 4234 :       strcat( cpcEntityName, lpSrcViewEntity->szName );

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 4235 : 
; 4236 :       // "KZOEE106 - Rules violation"
; 4237 :       fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 106, 0,
; 4238 :                         "Source Entity not includeble",
; 4239 :                         cpcEntityName );

	lea	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BN@OGJL@Source?5Entity?5not?5includeble?$AA@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4240 :       fnOperationReturn( iRelinkAllSubobjectsForOI, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	121					; 00000079H
	call	_fnOperationReturn
	add	esp, 8

; 4241 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8977
$L9020:

; 4243 : 
; 4244 :    // Get the viewOI for the source and the target.
; 4245 :    lpSrcViewCsr = zGETPTR( lpSrcView->hViewCsr );

	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewCsr$[ebp], eax

; 4246 :    lpSrcViewOI  = zGETPTR( lpSrcViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewOI$[ebp], eax

; 4247 :    lpTgtViewCsr = zGETPTR( lpTgtView->hViewCsr );

	mov	edx, DWORD PTR _lpTgtView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewCsr$[ebp], eax

; 4248 :    lpTgtViewOI =  zGETPTR( lpTgtViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpTgtViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewOI$[ebp], eax

; 4249 : 
; 4250 :    // If the source view oi is the target view oi, then it is an error.
; 4251 :    if ( lpSrcViewOI == lpTgtViewOI )

	mov	eax, DWORD PTR _lpSrcViewOI$[ebp]
	cmp	eax, DWORD PTR _lpTgtViewOI$[ebp]
	jne	SHORT $L9025

; 4253 :       // "KZOEE140 - Target and source Object instance are the same instance"
; 4254 :       fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 140, 0,
; 4255 :                         lpSrcViewEntity->szName,
; 4256 :                         lpTgtViewEntity->szName );

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	140					; 0000008cH
	push	8
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4257 :       fnOperationReturn( iRelinkAllSubobjectsForOI, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	121					; 00000079H
	call	_fnOperationReturn
	add	esp, 8

; 4258 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8977
$L9025:

; 4260 : 
; 4261 :    // Make sure that the LODs are in sync.  They are out of sync if the LODs
; 4262 :    // were built with different dates for the ER.  We won't bother performing
; 4263 :    // the check if either LOD doesn't have the ER date.  This allows old LODs
; 4264 :    // to work.
; 4265 :    lpSrcViewOD = zGETPTR( lpSrcView->hViewOD );

	mov	eax, DWORD PTR _lpSrcView$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewOD$[ebp], eax

; 4266 :    lpTgtViewOD = zGETPTR( lpTgtView->hViewOD );

	mov	edx, DWORD PTR _lpTgtView$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewOD$[ebp], eax

; 4267 :    if ( lpSrcViewOD->szER_Date[ 0 ] && lpTgtViewOD->szER_Date[ 0 ] &&
; 4268 :         zstrcmp( lpSrcViewOD->szER_Date, lpTgtViewOD->szER_Date ) != 0 )

	mov	ecx, DWORD PTR _lpSrcViewOD$[ebp]
	movsx	edx, BYTE PTR [ecx+248]
	test	edx, edx
	je	$L9034
	mov	eax, DWORD PTR _lpTgtViewOD$[ebp]
	movsx	ecx, BYTE PTR [eax+248]
	test	ecx, ecx
	je	$L9034
	mov	edx, DWORD PTR _lpSrcViewOD$[ebp]
	movsx	eax, BYTE PTR [edx+248]
	mov	ecx, DWORD PTR _lpTgtViewOD$[ebp]
	movsx	edx, BYTE PTR [ecx+248]
	cmp	eax, edx
	jne	SHORT $L9920
	mov	eax, DWORD PTR _lpTgtViewOD$[ebp]
	add	eax, 248				; 000000f8H
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewOD$[ebp]
	add	ecx, 248				; 000000f8H
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -612+[ebp], eax
	jmp	SHORT $L9921
$L9920:
	mov	edx, DWORD PTR _lpSrcViewOD$[ebp]
	movsx	eax, BYTE PTR [edx+248]
	mov	ecx, DWORD PTR _lpTgtViewOD$[ebp]
	movsx	edx, BYTE PTR [ecx+248]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -612+[ebp], ecx
$L9921:
	cmp	DWORD PTR -612+[ebp], 0
	je	$L9034

; 4270 :       zCHAR szMsg[ 200 ];
; 4271 : 
; 4272 :       TraceLineS( "ERROR: The following LODs are out of sync",
; 4273 :                   " and should be re-built" );

	push	OFFSET FLAT:??_C@_0BI@EDF@?5and?5should?5be?5re?9built?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0CK@EOHI@ERROR?3?5The?5following?5LODs?5are?5ou@ ; `string'
	call	_TraceLineS@8

; 4274 : 
; 4275 :       zsprintf( szMsg, "Out-of-sync error. Target LOD = %s, date = %s",
; 4276 :                 lpTgtViewOD->szName, lpTgtViewOD->szER_Date );

	mov	edx, DWORD PTR _lpTgtViewOD$[ebp]
	add	edx, 248				; 000000f8H
	push	edx
	mov	eax, DWORD PTR _lpTgtViewOD$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0CO@BJBK@Out?9of?9sync?5error?4?5Target?5LOD?5?$DN?5@ ; `string'
	lea	ecx, DWORD PTR _szMsg$9035[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 4277 :       TraceLineS( "ERROR: ", szMsg );

	lea	edx, DWORD PTR _szMsg$9035[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_07JCPH@ERROR?3?5?$AA@	; `string'
	call	_TraceLineS@8

; 4278 : 
; 4279 :       zsprintf( szMsg, "Out-of-sync error. Source LOD = %s, date = %s",
; 4280 :                 lpSrcViewOD->szName, lpSrcViewOD->szER_Date );

	mov	eax, DWORD PTR _lpSrcViewOD$[ebp]
	add	eax, 248				; 000000f8H
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0CO@PONF@Out?9of?9sync?5error?4?5Source?5LOD?5?$DN?5@ ; `string'
	lea	edx, DWORD PTR _szMsg$9035[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 4281 :       TraceLineS( "ERROR: ", szMsg );

	lea	eax, DWORD PTR _szMsg$9035[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_07JCPH@ERROR?3?5?$AA@	; `string'
	call	_TraceLineS@8

; 4282 : 
; 4283 :       // "KZOEE106 - Rules violation"
; 4284 :       fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 106, 0,
; 4285 :                         "LODs are potentially out of sync.  See trace for more.",
; 4286 :                         lpTgtViewOD->szName );

	mov	ecx, DWORD PTR _lpTgtViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0DH@HEFK@LODs?5are?5potentially?5out?5of?5sync@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4287 : 
; 4288 :       fnOperationReturn( iRelinkAllSubobjectsForOI, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	121					; 00000079H
	call	_fnOperationReturn
	add	esp, 8

; 4289 :    // fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );
; 4290 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8977
$L9034:

; 4292 : 
; 4293 :    // We will attempt relinking with either the source OR
; 4294 :    // the target versioned, If the source is versioned, the relinking
; 4295 :    // will take place with the OLDEST version of the source chain.
; 4296 :    // If the target is versioned, we will relink to the OLDEST version
; 4297 :    // instances of the target chain and then propogate the records to
; 4298 :    // the newer versions in the chain.. If the keys have changed in ANY
; 4299 :    // of the target instances of the link of an older version, then error
; 4300 :    // will be issued and the relinking will STOP midstream!!!. The instance
; 4301 :    // itself will be in a clean-upable mode, but its data will be
; 4302 :    // not be 100% in sync!!
; 4303 : #if 0
; 4304 :    // Make sure that none of the source instances to be included are
; 4305 :    // versioned.
; 4306 :    if ( lpSrcViewOI->nVersionedInstances )
; 4307 :    {
; 4308 :       //  "KZOEE116 - Attempt to include subobject with "
; 4309 :       //  " versioned instances"
; 4310 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 116, 0,
; 4311 :                         lpSrcViewEntity->hName, 0 );
; 4312 :       fnOperationReturn( iRelinkAllSubobjectsForOI, lpCurrentTask );
; 4313 :    // fnOperationReturn( iIncludeSubobjectFromSubobject, lpCurrentTask );
; 4314 :       return( zCALL_ERROR );
; 4315 :    }
; 4316 : 
; 4317 :    if ( lpTgtViewOI->nVersionedInstances )
; 4318 :    {
; 4319 :       //  "KZOEE116 - Attempt to include subobject with "
; 4320 :       //  " versioned instances"
; 4321 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 116, 0,
; 4322 :                         lpSrcViewEntity->hName, 0 );
; 4323 :       fnOperationReturn( iRelinkAllSubobjectsForOI, lpCurrentTask );
; 4324 :       return( zCALL_ERROR );
; 4325 :    }
; 4326 : #endif
; 4327 : 
; 4328 :    // Get source and target owning tasks
; 4329 :    lpSrcOwningTask = zGETPTR( lpSrcViewOI->hTask );

	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcOwningTask$[ebp], eax

; 4330 :    lpTgtOwningTask = zGETPTR( lpTgtViewOI->hTask );

	mov	ecx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtOwningTask$[ebp], eax

; 4331 : 
; 4332 :    // Validate that the Source and Target ViewOI belong to the
; 4333 :    // Same task
; 4334 : #if 0
; 4335 :    if ( lpSrcOwningTask != lpTgtOwningTask )
; 4336 :    {
; 4337 :       zSHORT       nError;
; 4338 : 
; 4339 :       // if we have a task mismatch, make sure the source task is the
; 4340 :       // system task AND that all the target entities of the include
; 4341 :       // are READ ONLY.
; 4342 :       nError = 1;
; 4343 :       if ( lpSrcOwningTask == zGETPTR( AnchorBlock->hMainTask ) )
; 4344 :       {
; 4345 :          nError = 0;
; 4346 :          lpTgtViewOI->hAllocTask = lpSrcViewOI->hTask;
; 4347 :       }
; 4348 : 
; 4349 :       if ( nError )
; 4350 :       {
; 4351 :          // "KZOEE131 - Attempt to include Subobject from another "
; 4352 :          // "           Application Task"
; 4353 :          fnIssueCoreError( lpCurrentTask, lpView, 8, 131, 0, 0, 0 );
; 4354 :          fnOperationReturn( iRelinkAllSubobjectsForOI, lpCurrentTask );
; 4355 :          return( zCALL_ERROR );
; 4356 :       }
; 4357 :    }
; 4358 : #endif
; 4359 : 
; 4360 :    vTask = zGETPTR( lpCurrentTask->hFirstView );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	ecx, DWORD PTR [eax+106]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _vTask$[ebp], eax

; 4361 :    SysMutexLock( vTask, "Zeidon RLK", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_0L@DLD@Zeidon?5RLK?$AA@ ; `string'
	mov	edx, DWORD PTR _vTask$[ebp]
	push	edx
	call	_SysMutexLock@16

; 4362 : 
; 4363 :    // If the source and target structures do not match, error out here!
; 4364 :    if ( (nInvertedParents =
; 4365 :                 fnValidSubobjectStructureMatch( lpTgtView, lpTgtViewEntity,
; 4366 :                                                 lpSrcView,
; 4367 :                                                 lpSrcViewEntity, 1 )) < 0 )

	push	1
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	call	_fnValidSubobjectStructureMatch
	add	esp, 20					; 00000014H
	mov	WORD PTR _nInvertedParents$[ebp], ax
	movsx	ecx, WORD PTR _nInvertedParents$[ebp]
	test	ecx, ecx
	jge	SHORT $L9042

; 4369 :       SysMutexUnlock( vTask, "Zeidon RLK", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@DLD@Zeidon?5RLK?$AA@ ; `string'
	mov	edx, DWORD PTR _vTask$[ebp]
	push	edx
	call	_SysMutexUnlock@12

; 4370 :       fnOperationReturn( iRelinkAllSubobjectsForOI, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	121					; 00000079H
	call	_fnOperationReturn
	add	esp, 8

; 4371 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8977
$L9042:

; 4373 : 
; 4374 :    bLeafNode = TRUE;

	mov	WORD PTR _bLeafNode$[ebp], 1

; 4375 :    lpWkViewEntity = zGETPTR( lpTgtViewEntity->hNextHier );

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax
$L9045:

; 4376 :    while ( lpWkViewEntity &&
; 4377 :            lpWkViewEntity->nLevel > lpTgtViewEntity->nLevel )

	cmp	DWORD PTR _lpWkViewEntity$[ebp], 0
	je	SHORT $L9046
	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	cmp	ecx, eax
	jle	SHORT $L9046

; 4379 :       if ( lpWkViewEntity->hParent == hTgtViewEntity &&
; 4380 :            lpWkViewEntity->bDerived == FALSE )

	mov	ecx, DWORD PTR _lpWkViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	cmp	edx, DWORD PTR _hTgtViewEntity$[ebp]
	jne	SHORT $L9047
	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 13					; 0000000dH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9047

; 4382 :          bLeafNode = 0;

	mov	WORD PTR _bLeafNode$[ebp], 0

; 4383 :          break;

	jmp	SHORT $L9046
$L9047:

; 4385 : 
; 4386 :       lpWkViewEntity = zGETPTR( lpWkViewEntity->hNextHier );

	mov	edx, DWORD PTR _lpWkViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax

; 4387 :    }

	jmp	SHORT $L9045
$L9046:

; 4388 : 
; 4389 :    // Next, see if the target parent is inverted in the source structure,
; 4390 :    // if so we need to do the re-include processing and drop the target
; 4391 :    // parent from the source structure before each re-include.
; 4392 :    lpInvertedSrcEntity = 0;

	mov	DWORD PTR _lpInvertedSrcEntity$[ebp], 0

; 4393 :    lpInvertedSrcCsr    = 0;

	mov	DWORD PTR _lpInvertedSrcCsr$[ebp], 0

; 4394 :    if ( lpTgtViewEntity->bDerived == FALSE && lpTgtViewEntity->hParent )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 13					; 0000000dH
	and	edx, 1
	test	edx, edx
	jne	$L9053
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	cmp	DWORD PTR [eax+10], 0
	je	$L9053

; 4396 :       lpInvertedSrcEntity = zGETPTR( lpSrcViewEntity->hNextHier );

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpInvertedSrcEntity$[ebp], eax
$L9052:

; 4397 :       while ( lpInvertedSrcEntity )

	cmp	DWORD PTR _lpInvertedSrcEntity$[ebp], 0
	je	$L9053

; 4399 :          if ( lpInvertedSrcEntity->nLevel <= lpSrcViewEntity->nLevel )

	mov	eax, DWORD PTR _lpInvertedSrcEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	cmp	ecx, eax
	jg	SHORT $L9054

; 4401 :             lpInvertedSrcEntity = 0;

	mov	DWORD PTR _lpInvertedSrcEntity$[ebp], 0

; 4402 :             break;

	jmp	SHORT $L9053
$L9054:

; 4404 : 
; 4405 :          if ( lpInvertedSrcEntity->lERRelTok == lpTgtViewEntity->lERRelTok &&
; 4406 :               lpInvertedSrcEntity->hParent  == hSrcViewEntity  &&
; 4407 :               lpInvertedSrcEntity->bRelLink1 != lpTgtViewEntity->bRelLink1 &&
; 4408 :               lpInvertedSrcEntity->bDerived == FALSE )

	mov	ecx, DWORD PTR _lpInvertedSrcEntity$[ebp]
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+199]
	cmp	eax, DWORD PTR [edx+199]
	jne	SHORT $L9055
	mov	ecx, DWORD PTR _lpInvertedSrcEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	cmp	edx, DWORD PTR _hSrcViewEntity$[ebp]
	jne	SHORT $L9055
	mov	eax, DWORD PTR _lpInvertedSrcEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 28					; 0000001cH
	and	ecx, 1
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 28					; 0000001cH
	and	eax, 1
	cmp	ecx, eax
	je	SHORT $L9055
	mov	ecx, DWORD PTR _lpInvertedSrcEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 13					; 0000000dH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9055

; 4410 :             break;

	jmp	SHORT $L9053
$L9055:

; 4412 : 
; 4413 :          lpInvertedSrcEntity = zGETPTR( lpInvertedSrcEntity->hNextHier );

	mov	eax, DWORD PTR _lpInvertedSrcEntity$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpInvertedSrcEntity$[ebp], eax

; 4414 :       }

	jmp	$L9052
$L9053:

; 4416 : 
; 4417 :    // Make sure entity can be included UNLESS it is a leaf node.
; 4418 :    if ( lpTgtViewEntity->hParent && lpTgtViewEntity->bInclude == FALSE &&
; 4419 :         bLeafNode == FALSE )

	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	cmp	DWORD PTR [edx+10], 0
	je	$L9057
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	jne	$L9057
	movsx	edx, WORD PTR _bLeafNode$[ebp]
	test	edx, edx
	jne	SHORT $L9057

; 4421 :       strcpy( cpcEntityName, "\nEntity: \t" );

	push	OFFSET FLAT:??_C@_0L@FACN@?6Entity?3?5?7?$AA@ ; `string'
	lea	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 4422 :       strcat( cpcEntityName, lpTgtViewEntity->szName );

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 4423 : 
; 4424 :       // "KZOEE106 - Rules violation"
; 4425 :       fnIssueCoreError( lpCurrentTask, lpSrcView, 8, 106, 0,
; 4426 :                         "Entity inclusion not allowed",
; 4427 :                         cpcEntityName );

	lea	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BN@PAO@Entity?5inclusion?5not?5allowed?$AA@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4428 :       SysMutexUnlock( vTask, "Zeidon RLK", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@DLD@Zeidon?5RLK?$AA@ ; `string'
	mov	eax, DWORD PTR _vTask$[ebp]
	push	eax
	call	_SysMutexUnlock@12

; 4429 :       fnOperationReturn( iRelinkAllSubobjectsForOI, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	121					; 00000079H
	call	_fnOperationReturn
	add	esp, 8

; 4430 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8977
$L9057:

; 4432 : 
; 4433 :    // OK, Finally we can get down to business, get a work view to the source
; 4434 :    // and target instance for doing the relinks
; 4435 :    lpSrcRootEntityInstance = zGETPTR( lpSrcViewOI->hRootEntityInstance );

	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcRootEntityInstance$[ebp], eax
$L9060:

; 4436 :    while ( lpSrcRootEntityInstance->hPrevVsn )

	mov	ecx, DWORD PTR _lpSrcRootEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	SHORT $L9061

; 4437 :       lpSrcRootEntityInstance = zGETPTR( lpSrcRootEntityInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpSrcRootEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcRootEntityInstance$[ebp], eax
	jmp	SHORT $L9060
$L9061:

; 4438 : 
; 4439 :    lpTgtEntityInstance = zGETPTR( lpTgtViewOI->hRootEntityInstance );

	mov	ecx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax
$L9065:

; 4440 :    while ( lpTgtEntityInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L9066

; 4441 :       lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hPrevVsn );

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax
	jmp	SHORT $L9065
$L9066:

; 4442 : 
; 4443 : #ifdef            __RELINK_PERFORMANCE__
; 4444 :    // PERFORMANCE CODE???
; 4445 :    bDoSrcTwin = !fnEntityInRecursivePath( lpSrcViewEntity );

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	call	_fnEntityInRecursivePath
	add	esp, 4
	and	eax, 255				; 000000ffH
	neg	eax
	sbb	eax, eax
	inc	eax
	mov	BYTE PTR _bDoSrcTwin$[ebp], al

; 4446 :    bDoTgtTwin = !fnEntityInRecursivePath( lpTgtViewEntity );

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	ecx
	call	_fnEntityInRecursivePath
	add	esp, 4
	and	eax, 255				; 000000ffH
	neg	eax
	sbb	eax, eax
	inc	eax
	mov	BYTE PTR _bDoTgtTwin$[ebp], al

; 4447 :    nStopSrcHier = 0;

	mov	WORD PTR _nStopSrcHier$[ebp], 0

; 4448 :    if ( lpSrcViewOI->bMultipleRootLevels == FALSE )

	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9074

; 4450 :       lpWkViewEntity = zGETPTR( lpSrcViewEntity->hNextHier );

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax
$L9071:

; 4451 :       while ( lpWkViewEntity && lpWkViewEntity->nLevel != 2 )

	cmp	DWORD PTR _lpWkViewEntity$[ebp], 0
	je	SHORT $L9072
	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	cmp	ecx, 2
	je	SHORT $L9072

; 4452 :          lpWkViewEntity = zGETPTR( lpWkViewEntity->hNextHier );

	mov	edx, DWORD PTR _lpWkViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax
	jmp	SHORT $L9071
$L9072:

; 4453 : 
; 4454 :       if ( lpWkViewEntity )

	cmp	DWORD PTR _lpWkViewEntity$[ebp], 0
	je	SHORT $L9074

; 4455 :          nStopSrcHier = lpWkViewEntity->nHierNbr;

	mov	ecx, DWORD PTR _lpWkViewEntity$[ebp]
	mov	dx, WORD PTR [ecx+217]
	mov	WORD PTR _nStopSrcHier$[ebp], dx
$L9074:

; 4457 : 
; 4458 :    nStopTgtHier = 0;

	mov	WORD PTR _nStopTgtHier$[ebp], 0

; 4459 :    if ( lpTgtViewOI->bMultipleRootLevels == FALSE )

	mov	eax, DWORD PTR _lpTgtViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9081

; 4461 :       lpWkViewEntity = zGETPTR( lpTgtViewEntity->hNextHier );

	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax
$L9078:

; 4462 :       while ( lpWkViewEntity && lpWkViewEntity->nLevel != 2 )

	cmp	DWORD PTR _lpWkViewEntity$[ebp], 0
	je	SHORT $L9079
	mov	ecx, DWORD PTR _lpWkViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	cmp	edx, 2
	je	SHORT $L9079

; 4463 :          lpWkViewEntity = zGETPTR( lpWkViewEntity->hNextHier );

	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax
	jmp	SHORT $L9078
$L9079:

; 4464 : 
; 4465 :       if ( lpWkViewEntity )

	cmp	DWORD PTR _lpWkViewEntity$[ebp], 0
	je	SHORT $L9081

; 4466 :          nStopTgtHier = lpWkViewEntity->nHierNbr;

	mov	edx, DWORD PTR _lpWkViewEntity$[ebp]
	mov	ax, WORD PTR [edx+217]
	mov	WORD PTR _nStopTgtHier$[ebp], ax
$L9081:

; 4468 : 
; 4469 :    if ( lpSrcRootEntityInstance )

	cmp	DWORD PTR _lpSrcRootEntityInstance$[ebp], 0
	je	$L9097

; 4471 :       lpFirstSource = fnFirstLevel2_ForViewEntity( lpSrcRootEntityInstance,
; 4472 :                                                    lpSrcViewEntity );

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcRootEntityInstance$[ebp]
	push	edx
	call	_fnFirstLevel2_ForViewEntity
	add	esp, 8
	mov	DWORD PTR _lpFirstSource$[ebp], eax

; 4473 :       if ( lpFirstSource )

	cmp	DWORD PTR _lpFirstSource$[ebp], 0
	je	$L9097

; 4475 :          LPVIEWENTITY lpFirstSourceViewEntity;
; 4476 : 
; 4477 :          lpFirstSourceViewEntity = zGETPTR( lpFirstSource->hViewEntity );

	mov	eax, DWORD PTR _lpFirstSource$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstSourceViewEntity$9084[ebp], eax
$L9087:

; 4478 :          while ( lpFirstSourceViewEntity != lpSrcViewEntity ||
; 4479 :                  lpFirstSource->u.nInd.bHidden )

	mov	edx, DWORD PTR _lpFirstSourceViewEntity$9084[ebp]
	cmp	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	jne	SHORT $L9089
	mov	eax, DWORD PTR _lpFirstSource$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9088
$L9089:

; 4481 :             lpFirstSource = zGETPTR( lpFirstSource->hNextHier );

	mov	edx, DWORD PTR _lpFirstSource$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstSource$[ebp], eax

; 4482 :             if ( lpFirstSource == 0 )

	cmp	DWORD PTR _lpFirstSource$[ebp], 0
	jne	SHORT $L9091

; 4483 :                break;

	jmp	SHORT $L9088
$L9091:

; 4484 : 
; 4485 :             lpFirstSourceViewEntity = zGETPTR( lpFirstSource->hViewEntity );

	mov	ecx, DWORD PTR _lpFirstSource$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstSourceViewEntity$9084[ebp], eax

; 4486 :             if ( nStopSrcHier &&
; 4487 :                  lpFirstSourceViewEntity->nHierNbr >= nStopSrcHier )

	movsx	eax, WORD PTR _nStopSrcHier$[ebp]
	test	eax, eax
	je	SHORT $L9093
	mov	ecx, DWORD PTR _lpFirstSourceViewEntity$9084[ebp]
	movsx	edx, WORD PTR [ecx+217]
	movsx	eax, WORD PTR _nStopSrcHier$[ebp]
	cmp	edx, eax
	jl	SHORT $L9093

; 4489 :                lpFirstSource = 0;

	mov	DWORD PTR _lpFirstSource$[ebp], 0

; 4490 :                break;

	jmp	SHORT $L9088
$L9093:

; 4492 :          }

	jmp	SHORT $L9087
$L9088:

; 4493 : 
; 4494 :          if ( lpFirstSource )

	cmp	DWORD PTR _lpFirstSource$[ebp], 0
	je	$L9097

; 4496 :             lpSrcEntityInstance = lpFirstSource;

	mov	ecx, DWORD PTR _lpFirstSource$[ebp]
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], ecx
$L9096:

; 4497 :             while ( lpSrcEntityInstance )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	$L9097

; 4499 :                if ( lpSrcEntityInstance->hViewEntity == hSrcViewEntity &&
; 4500 :                     lpSrcEntityInstance->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	cmp	eax, DWORD PTR _hSrcViewEntity$[ebp]
	jne	SHORT $L9098
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9098

; 4502 :                   lpLastSource = lpSrcEntityInstance;

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR _lpLastSource$[ebp], eax
$L9098:

; 4504 : 
; 4505 :                if ( bDoSrcTwin &&
; 4506 :                     lpSrcEntityInstance->hViewEntity == hSrcViewEntity )

	mov	ecx, DWORD PTR _bDoSrcTwin$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9099
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	cmp	eax, DWORD PTR _hSrcViewEntity$[ebp]
	jne	SHORT $L9099
$L9101:

; 4508 :                   while ( lpSrcEntityInstance &&
; 4509 :                           lpSrcEntityInstance->hNextTwin == 0 )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	SHORT $L9102
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	jne	SHORT $L9102

; 4511 :                      lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hParent );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 4512 :                   }

	jmp	SHORT $L9101
$L9102:

; 4513 : 
; 4514 :                   if ( lpSrcEntityInstance )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	SHORT $L9104

; 4515 :                      lpSrcEntityInstance =
; 4516 :                                     zGETPTR( lpSrcEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax
$L9104:

; 4518 :                else

	jmp	SHORT $L9106
$L9099:

; 4519 :                   lpSrcEntityInstance =
; 4520 :                                     zGETPTR( lpSrcEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax
$L9106:

; 4521 :             }

	jmp	$L9096
$L9097:

; 4525 : 
; 4526 :    if ( lpSrcRootEntityInstance && lpTgtEntityInstance )

	cmp	DWORD PTR _lpSrcRootEntityInstance$[ebp], 0
	je	SHORT $L9108
	cmp	DWORD PTR _lpTgtEntityInstance$[ebp], 0
	je	SHORT $L9108

; 4528 :       lpTgtEntityInstance = fnFirstLevel2_ForViewEntity( lpTgtEntityInstance,
; 4529 :                                                          lpTgtViewEntity );

	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	call	_fnFirstLevel2_ForViewEntity
	add	esp, 8
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax
$L9108:

; 4531 :    // PERFORMANCE CODE???
; 4532 : #endif
; 4533 : 
; 4534 :    nNotFound = 0;

	mov	WORD PTR _nNotFound$[ebp], 0

; 4535 : 
; 4536 : #ifdef __RELINK_PERFORMANCE__
; 4537 :    if ( lpFirstSource && lpTgtEntityInstance )

	cmp	DWORD PTR _lpFirstSource$[ebp], 0
	je	$L9109
	cmp	DWORD PTR _lpTgtEntityInstance$[ebp], 0
	je	$L9109

; 4542 :       // Change lpTgtView and lpSrcView to work views
; 4543 :       nRC = CreateViewFromViewForTask( &lpTgtView, lpTgtView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12
	mov	WORD PTR _nRC$[ebp], ax

; 4544 :       if ( nRC == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	SHORT $L9110

; 4545 :          nRC = CreateViewFromViewForTask( &lpSrcView, lpSrcView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12
	mov	WORD PTR _nRC$[ebp], ax
$L9110:

; 4546 : 
; 4547 :       lpSrcViewEntityCsr = 0;

	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], 0

; 4548 :       lpTgtViewEntityCsr = 0;

	mov	DWORD PTR _lpTgtViewEntityCsr$[ebp], 0
$L9112:

; 4549 :       while ( nRC == 0 && lpTgtEntityInstance )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	$L9113
	cmp	DWORD PTR _lpTgtEntityInstance$[ebp], 0
	je	$L9113
$L9115:

; 4551 :          while ( lpTgtEntityInstance->hPrevVsn )

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	SHORT $L9116

; 4552 :             lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax
	jmp	SHORT $L9115
$L9116:

; 4553 : 
; 4554 :          if ( lpTgtEntityInstance->hViewEntity == hTgtViewEntity &&
; 4555 :               lpTgtEntityInstance->u.nInd.bHidden == FALSE )

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	cmp	edx, DWORD PTR _hTgtViewEntity$[ebp]
	jne	$L9155
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	$L9155

; 4557 : #ifdef            __RELINK_PERFORMANCE__
; 4558 :             lpSrcEntityInstance = lpFirstSource;

	mov	edx, DWORD PTR _lpFirstSource$[ebp]
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], edx
$L9120:

; 4559 : #else
; 4560 :             lpSrcEntityInstance = lpSrcRootEntityInstance;
; 4561 : #endif
; 4562 :             while ( lpSrcEntityInstance )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	$L9121
$L9123:

; 4564 :                while ( lpSrcEntityInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L9124

; 4565 :                   lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hPrevVsn );

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax
	jmp	SHORT $L9123
$L9124:

; 4566 : 
; 4567 :                if ( lpSrcEntityInstance->hViewEntity == hSrcViewEntity &&
; 4568 :                     lpSrcEntityInstance->u.nInd.bHidden == FALSE &&
; 4569 :                     fnInstanceKeysMatch( lpSrcEntityInstance,
; 4570 :                                          lpTgtEntityInstance ) )

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	cmp	ecx, DWORD PTR _hSrcViewEntity$[ebp]
	jne	$L9126
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	$L9126
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	call	_fnInstanceKeysMatch
	add	esp, 8
	movsx	eax, ax
	test	eax, eax
	je	$L9126

; 4572 :                   if ( !fnInstanceLinkedToInstance( lpSrcEntityInstance,
; 4573 :                                                     lpTgtEntityInstance ) )

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	call	_fnInstanceLinkedToInstance
	add	esp, 8
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	$L9131

; 4575 :                      if ( bLeafNode && lpInvertedSrcEntity == 0 &&
; 4576 :                           lpTgtEntityInstance->u.nInd.bPrevVersion == FALSE )

	movsx	eax, WORD PTR _bLeafNode$[ebp]
	test	eax, eax
	je	SHORT $L9128
	cmp	DWORD PTR _lpInvertedSrcEntity$[ebp], 0
	jne	SHORT $L9128
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 8
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9128

; 4578 :                         fnRemoveOtherOI_LinkedInstances( lpTgtEntityInstance,
; 4579 :                                                          lpSrcEntityInstance );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	ecx
	call	_fnRemoveOtherOI_LinkedInstances
	add	esp, 8

; 4580 :                         fnRelinkInstanceToInstance( lpTgtEntityInstance,
; 4581 :                                                     lpSrcEntityInstance );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	call	_fnRelinkInstanceToInstance
	add	esp, 8

; 4583 :                      else

	jmp	$L9131
$L9128:

; 4585 :                         // Here we have a re-include situation, if the
; 4586 :                         // source target entity instance has a next
; 4587 :                         // version, then propagate the source subobject
; 4588 :                         // structure across the target instance and all
; 4589 :                         // its versions ensuring that neither structural
; 4590 :                         // changes NOR key changes have occurred between the
; 4591 :                         // source subobject and the target subobject
; 4592 : 
; 4593 :                         if ( lpTgtEntityInstance->u.nInd.bPrevVersion &&
; 4594 :                              fnStillPrevVersion( lpTgtEntityInstance ) )

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 8
	and	edx, 1
	test	edx, edx
	je	SHORT $L9130
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	call	_fnStillPrevVersion
	add	esp, 4
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9130

; 4596 :                            nRC = fnRelinkVsnSubobjectToSubobject( lpTgtView,
; 4597 :                                                       lpTgtEntityInstance,
; 4598 :                                                       lpSrcView,
; 4599 :                                                       lpSrcEntityInstance,
; 4600 :                                                       nInvertedParents,
; 4601 :                                                       lpInvertedSrcEntity );

	mov	ecx, DWORD PTR _lpInvertedSrcEntity$[ebp]
	push	ecx
	mov	dx, WORD PTR _nInvertedParents$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	call	_fnRelinkVsnSubobjectToSubobject
	add	esp, 24					; 00000018H
	mov	WORD PTR _nRC$[ebp], ax

; 4603 :                         else

	jmp	$L9131
$L9130:

; 4605 :                            // if the source structure inverts the target
; 4606 :                            // then we need to find the instance in the
; 4607 :                            // source and drop it
; 4608 :                            if ( lpInvertedSrcEntity )

	cmp	DWORD PTR _lpInvertedSrcEntity$[ebp], 0
	je	$L9136

; 4610 :                               lpWkEntityInstance =
; 4611 :                                    zGETPTR( lpSrcEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkEntityInstance$[ebp], eax
$L9135:

; 4612 :                               while ( lpWkEntityInstance &&
; 4613 :                                       lpWkEntityInstance->nLevel > lpSrcEntityInstance->nLevel )

	cmp	DWORD PTR _lpWkEntityInstance$[ebp], 0
	je	$L9136
	mov	eax, DWORD PTR _lpWkEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jle	$L9136

; 4615 :                                  if ( zGETPTR( lpWkEntityInstance->hViewEntity ) ==
; 4616 :                                                        lpInvertedSrcEntity &&
; 4617 :                                       lpWkEntityInstance->u.nInd.bHidden == FALSE &&
; 4618 :                                       fnInstanceKeysMatch(
; 4619 :                                              zGETPTR( lpTgtEntityInstance->hParent ),
; 4620 :                                                       lpWkEntityInstance ) )

	mov	ecx, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpInvertedSrcEntity$[ebp]
	jne	SHORT $L9139
	mov	eax, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9139
	mov	edx, DWORD PTR _lpWkEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnInstanceKeysMatch
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L9139

; 4622 :                                     lpInvertedSrcCsr =
; 4623 :                                        fnEstablishViewForInstance( lpSrcView, lpInvertedSrcCsr,
; 4624 :                                                          lpWkEntityInstance );

	mov	eax, DWORD PTR _lpWkEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInvertedSrcCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpInvertedSrcCsr$[ebp], eax

; 4625 : 
; 4626 :                                     nRC = fnExcludeEntity( lpSrcView,
; 4627 :                                                            lpInvertedSrcEntity,
; 4628 :                                                            lpInvertedSrcCsr,
; 4629 :                                                            zREPOS_NONE, 0 );

	push	0
	push	0
	mov	eax, DWORD PTR _lpInvertedSrcCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpInvertedSrcEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	call	_fnExcludeEntity
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 4630 :                                     break;

	jmp	SHORT $L9136
$L9139:

; 4632 : 
; 4633 :                                  lpWkEntityInstance = zGETPTR( lpWkEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpWkEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkEntityInstance$[ebp], eax

; 4634 :                               }

	jmp	$L9135
$L9136:

; 4636 : 
; 4637 :                            lpSrcViewEntityCsr =
; 4638 :                                  fnEstablishViewForInstance( lpSrcView,
; 4639 :                                                        lpSrcViewEntityCsr,
; 4640 :                                                        lpSrcEntityInstance );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 4641 :                            lpTgtViewEntityCsr =
; 4642 :                                  fnEstablishViewForInstance( lpTgtView,
; 4643 :                                                        lpTgtViewEntityCsr,
; 4644 :                                                        lpTgtEntityInstance );

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpTgtViewEntityCsr$[ebp], eax

; 4645 : 
; 4646 :                            // First, let's save the included incremental flag
; 4647 :                            // for the target instance, so we can do the
; 4648 :                            // appropriate re-include marking.
; 4649 :                            bUpdated  = lpTgtViewOI->bUpdated;

	mov	edx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	shr	eax, 4
	and	eax, 1
	mov	BYTE PTR _bUpdated$[ebp], al

; 4650 :                            bUpdatedFile = lpTgtViewOI->bUpdatedFile;

	mov	ecx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	shr	edx, 5
	and	edx, 1
	mov	BYTE PTR _bUpdatedFile$[ebp], dl

; 4651 :                            bIncluded = lpTgtEntityInstance->u.nInd.bIncluded;

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 5
	and	ecx, 1
	mov	WORD PTR _bIncluded$[ebp], cx

; 4652 :                            nRC = fnExcludeEntity( lpTgtView, lpTgtViewEntity,
; 4653 :                                                   lpTgtViewEntityCsr,
; 4654 :                                                   zREPOS_NONE, 0 );

	push	0
	push	0
	mov	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	call	_fnExcludeEntity
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 4655 :                            if ( nRC != zCALL_ERROR )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -16				; fffffff0H
	je	SHORT $L9143

; 4657 :                               nRC = fnIncludeSubobjectFromSubobject(
; 4658 :                                                 lpTgtView, lpTgtViewEntity,
; 4659 :                                                 lpSrcView, lpSrcViewEntity,
; 4660 :                                                 zPOS_AFTER, 0, bIncluded );

	mov	ax, WORD PTR _bIncluded$[ebp]
	push	eax
	push	0
	push	3
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	call	_fnIncludeSubobjectFromSubobject
	add	esp, 28					; 0000001cH
	mov	WORD PTR _nRC$[ebp], ax

; 4661 : 
; 4662 :                               // If the re-include worked, re-establish any
; 4663 :                               // cursors pointing to the excluded instance.
; 4664 :                               if ( nRC == 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jne	SHORT $L9143

; 4665 :                                  fnUpdateRelinkCursors( lpTgtEntityInstance );

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	call	_fnUpdateRelinkCursors
	add	esp, 4
$L9143:

; 4667 : 
; 4668 :                            lpTgtViewOI->bUpdated = bUpdated;

	mov	ecx, DWORD PTR _bUpdated$[ebp]
	and	ecx, 255				; 000000ffH
	and	ecx, 1
	shl	ecx, 4
	mov	edx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	and	al, -17					; ffffffefH
	or	eax, ecx
	mov	ecx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	DWORD PTR [ecx+36], eax

; 4669 :                            lpTgtViewOI->bUpdatedFile = bUpdatedFile;

	mov	edx, DWORD PTR _bUpdatedFile$[ebp]
	and	edx, 255				; 000000ffH
	and	edx, 1
	shl	edx, 5
	mov	eax, DWORD PTR _lpTgtViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	and	ecx, -33				; ffffffdfH
	or	ecx, edx
	mov	edx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	DWORD PTR [edx+36], ecx
$L9131:

; 4673 : 
; 4674 :                   break;

	jmp	SHORT $L9121
$L9126:

; 4676 : #ifdef            __RELINK_PERFORMANCE__
; 4677 :                if ( lpSrcEntityInstance == lpLastSource )

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	eax, DWORD PTR _lpLastSource$[ebp]
	jne	SHORT $L9144

; 4678 :                   lpSrcEntityInstance = 0;

	mov	DWORD PTR _lpSrcEntityInstance$[ebp], 0

; 4679 :                else

	jmp	SHORT $L9153
$L9144:

; 4680 :                if ( bDoSrcTwin &&
; 4681 :                     lpSrcEntityInstance->hViewEntity == hSrcViewEntity )

	mov	ecx, DWORD PTR _bDoSrcTwin$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9146
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	cmp	eax, DWORD PTR _hSrcViewEntity$[ebp]
	jne	SHORT $L9146
$L9148:

; 4683 :                   while ( lpSrcEntityInstance &&
; 4684 :                           lpSrcEntityInstance->hNextTwin == 0 )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	SHORT $L9149
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	jne	SHORT $L9149

; 4686 :                      lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hParent );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 4687 :                   }

	jmp	SHORT $L9148
$L9149:

; 4688 : 
; 4689 :                   if ( lpSrcEntityInstance )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	SHORT $L9151

; 4690 :                      lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax
$L9151:

; 4692 :                else

	jmp	SHORT $L9153
$L9146:

; 4693 :                   lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax
$L9153:

; 4694 : #else
; 4695 :                lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hNextHier );
; 4696 : #endif
; 4697 :             }

	jmp	$L9120
$L9121:

; 4698 : 
; 4699 :             if ( lpSrcEntityInstance == 0 )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	jne	SHORT $L9155

; 4700 :                nNotFound = 1;  // Flag that one was not found

	mov	WORD PTR _nNotFound$[ebp], 1
$L9155:

; 4702 : 
; 4703 :          while ( lpTgtEntityInstance->hNextVsn )

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [edx+34], 0
	je	SHORT $L9158

; 4704 :             lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hNextVsn );

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax
	jmp	SHORT $L9155
$L9158:

; 4705 : 
; 4706 : #ifdef            __RELINK_PERFORMANCE__
; 4707 :          if ( bDoTgtTwin &&
; 4708 :               lpTgtEntityInstance->hViewEntity == hTgtViewEntity )

	mov	edx, DWORD PTR _bDoTgtTwin$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9160
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	cmp	ecx, DWORD PTR _hTgtViewEntity$[ebp]
	jne	SHORT $L9160
$L9162:

; 4710 :             while ( lpTgtEntityInstance && lpTgtEntityInstance->hNextTwin == 0 )

	cmp	DWORD PTR _lpTgtEntityInstance$[ebp], 0
	je	SHORT $L9163
	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [edx+22], 0
	jne	SHORT $L9163

; 4711 :                lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hParent );

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax
	jmp	SHORT $L9162
$L9163:

; 4712 : 
; 4713 :             if ( lpTgtEntityInstance )

	cmp	DWORD PTR _lpTgtEntityInstance$[ebp], 0
	je	SHORT $L9165

; 4714 :                lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax
$L9165:

; 4716 :          else

	jmp	SHORT $L9167
$L9160:

; 4717 :             lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax
$L9167:

; 4718 : 
; 4719 :          if ( nStopTgtHier && lpTgtEntityInstance )

	movsx	eax, WORD PTR _nStopTgtHier$[ebp]
	test	eax, eax
	je	SHORT $L9172
	cmp	DWORD PTR _lpTgtEntityInstance$[ebp], 0
	je	SHORT $L9172

; 4721 :             LPVIEWENTITY lpWrkViewEntity =
; 4722 :                               zGETPTR( lpTgtEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewEntity$9170[ebp], eax

; 4723 : 
; 4724 :             if ( lpWrkViewEntity->nHierNbr >= nStopTgtHier )

	mov	eax, DWORD PTR _lpWrkViewEntity$9170[ebp]
	movsx	ecx, WORD PTR [eax+217]
	movsx	edx, WORD PTR _nStopTgtHier$[ebp]
	cmp	ecx, edx
	jl	SHORT $L9172

; 4725 :                lpTgtEntityInstance = 0;

	mov	DWORD PTR _lpTgtEntityInstance$[ebp], 0
$L9172:

; 4727 : #else
; 4728 :          lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hNextHier );
; 4729 : #endif
; 4730 :       }

	jmp	$L9112
$L9113:

; 4731 : 
; 4732 :       DropView( lpSrcView );

	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	call	_DropView@4

; 4733 :       DropView( lpTgtView );

	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	call	_DropView@4
$L9109:

; 4735 : 
; 4736 :    SysMutexUnlock( vTask, "Zeidon RLK", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@DLD@Zeidon?5RLK?$AA@ ; `string'
	mov	edx, DWORD PTR _vTask$[ebp]
	push	edx
	call	_SysMutexUnlock@12

; 4737 : 
; 4738 :    // Return the results.
; 4739 :    if ( nRC == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	SHORT $L9173

; 4740 :       nRC = nNotFound;  // Change 0 return code to not found state

	mov	cx, WORD PTR _nNotFound$[ebp]
	mov	WORD PTR _nRC$[ebp], cx
$L9173:

; 4741 : 
; 4742 :    fnOperationReturn( iRelinkAllSubobjectsForOI, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	121					; 00000079H
	call	_fnOperationReturn
	add	esp, 8

; 4743 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8977:

; 4744 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_RelinkAllSubobjectsForOI@16 ENDP
_TEXT	ENDS
PUBLIC	_fnValidStructureEntity@20
_TEXT	SEGMENT
_lpTgtView$ = 8
_lpTgtViewEntity$ = 12
_lpSrcView$ = 16
_lpSrcViewEntity$ = 20
_bInclude$ = 24
_lpWrkSrcViewEntity$ = -16
_lpWrkTgtViewEntity$ = -8
_nRC$ = -12
_nInvertedParents$ = -4
_lpTask$9193 = -20
_lpParent$9214 = -24
_fnValidStructureEntity@20 PROC NEAR

; 4755 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 4756 :    LPVIEWENTITY lpWrkSrcViewEntity;
; 4757 :    LPVIEWENTITY lpWrkTgtViewEntity;
; 4758 :    zSHORT       nRC;
; 4759 :    zSHORT       nInvertedParents = 0;

	mov	WORD PTR _nInvertedParents$[ebp], 0

; 4760 : 
; 4761 :    // Forget it if the entity is derived.
; 4762 :    if ( lpTgtViewEntity->bDerived )

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 13					; 0000000dH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9190

; 4763 :       return( 0 );

	xor	ax, ax
	jmp	$L9185
$L9190:

; 4764 : 
; 4765 :    if ( bInclude )

	mov	edx, DWORD PTR _bInclude$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9192

; 4767 :       if ( lpTgtViewEntity->bRecursive  )

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9192

; 4769 :          LPTASK lpTask = zGETPTR( lpSrcView->hTask );

	mov	edx, DWORD PTR _lpSrcView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$9193[ebp], eax

; 4770 :          // "KZOEE138 - Attempt to include target entity with "
; 4771 :          // "           recursive behavior"
; 4772 :          fnIssueCoreError( lpTask, lpSrcView, 8, 138, 0,
; 4773 :                            lpTgtViewEntity->szName, 0 );

	push	0
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	138					; 0000008aH
	push	8
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$9193[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4774 :          return( zCALL_ERROR ); // Target Entity is recursive

	mov	ax, -16					; fffffff0H
	jmp	$L9185
$L9192:

; 4777 : 
; 4778 :    for ( lpWrkTgtViewEntity = zGETPTR( lpTgtViewEntity->hNextHier );
; 4779 :          lpWrkTgtViewEntity &&
; 4780 :             lpWrkTgtViewEntity->nLevel > lpTgtViewEntity->nLevel;
; 4781 :          lpWrkTgtViewEntity = zGETPTR( lpWrkTgtViewEntity->hNextHier ) )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkTgtViewEntity$[ebp], eax
	jmp	SHORT $L9197
$L9198:
	mov	eax, DWORD PTR _lpWrkTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkTgtViewEntity$[ebp], eax
$L9197:
	cmp	DWORD PTR _lpWrkTgtViewEntity$[ebp], 0
	je	$L9199
	mov	edx, DWORD PTR _lpWrkTgtViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	cmp	eax, edx
	jle	$L9199

; 4783 :       // We only care about the direct children of lpTgtViewEntity.
; 4784 :       if ( lpWrkTgtViewEntity->nLevel != lpTgtViewEntity->nLevel + 1 )

	mov	eax, DWORD PTR _lpWrkTgtViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	add	eax, 1
	cmp	ecx, eax
	je	SHORT $L9200

; 4785 :          continue;

	jmp	SHORT $L9198
$L9200:

; 4786 : 
; 4787 :       // Forget it if the entity is derived.
; 4788 :       if ( lpWrkTgtViewEntity->bDerived )

	mov	ecx, DWORD PTR _lpWrkTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 13					; 0000000dH
	and	edx, 1
	test	edx, edx
	je	SHORT $L9201

; 4789 :          continue;

	jmp	SHORT $L9198
$L9201:

; 4790 : 
; 4791 :       // Check to see if one of the children of lpSrcViewEntity matches
; 4792 :       // lpWrkTgtViewEntity.
; 4793 :       for ( lpWrkSrcViewEntity = zGETPTR( lpSrcViewEntity->hNextHier );
; 4794 :             lpWrkSrcViewEntity &&
; 4795 :               lpWrkSrcViewEntity->nLevel > lpSrcViewEntity->nLevel;
; 4796 :             lpWrkSrcViewEntity = zGETPTR( lpWrkSrcViewEntity->hNextHier ) )

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkSrcViewEntity$[ebp], eax
	jmp	SHORT $L9204
$L9205:
	mov	edx, DWORD PTR _lpWrkSrcViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkSrcViewEntity$[ebp], eax
$L9204:
	cmp	DWORD PTR _lpWrkSrcViewEntity$[ebp], 0
	je	$L9206
	mov	ecx, DWORD PTR _lpWrkSrcViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	cmp	edx, ecx
	jle	$L9206

; 4798 :          // We only care about the direct children of lpSrcViewEntity.
; 4799 :          if ( lpWrkSrcViewEntity->nLevel != lpSrcViewEntity->nLevel + 1 )

	mov	edx, DWORD PTR _lpWrkSrcViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	add	edx, 1
	cmp	eax, edx
	je	SHORT $L9207

; 4800 :             continue;

	jmp	SHORT $L9205
$L9207:

; 4801 : 
; 4802 :          // Src and Tgt must have the same relationship.
; 4803 :          if ( lpWrkSrcViewEntity->lERRelTok != lpWrkTgtViewEntity->lERRelTok )

	mov	eax, DWORD PTR _lpWrkSrcViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpWrkTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+199]
	cmp	edx, DWORD PTR [ecx+199]
	je	SHORT $L9208

; 4804 :             continue;

	jmp	SHORT $L9205
$L9208:

; 4805 : 
; 4806 :          // Make sure relationship is the same direction.
; 4807 :          if ( lpWrkSrcViewEntity->bRelLink1 != lpWrkTgtViewEntity->bRelLink1 )

	mov	eax, DWORD PTR _lpWrkSrcViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 28					; 0000001cH
	and	ecx, 1
	mov	edx, DWORD PTR _lpWrkTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 28					; 0000001cH
	and	eax, 1
	cmp	ecx, eax
	je	SHORT $L9209

; 4808 :             continue;

	jmp	$L9205
$L9209:

; 4809 : 
; 4810 :          // If we get here then the previous two checks are OK and this
; 4811 :          // implies that the EREntTok values are the same.  This means that
; 4812 :          // the current lpWrkTgtViewEntity checks out OK so let's make sure that
; 4813 :          // it's children check out.
; 4814 :          nRC = fnValidStructureEntity( lpTgtView, lpWrkTgtViewEntity,
; 4815 :                                        lpSrcView,
; 4816 :                                        lpWrkSrcViewEntity, bInclude );

	mov	cl, BYTE PTR _bInclude$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWrkSrcViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWrkTgtViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	call	_fnValidStructureEntity@20
	mov	WORD PTR _nRC$[ebp], ax

; 4817 :          if ( nRC == zCALL_ERROR )

	movsx	eax, WORD PTR _nRC$[ebp]
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L9210

; 4818 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9185
$L9210:

; 4819 : 
; 4820 :          nInvertedParents += nRC;

	mov	cx, WORD PTR _nInvertedParents$[ebp]
	add	cx, WORD PTR _nRC$[ebp]
	mov	WORD PTR _nInvertedParents$[ebp], cx
$L9206:

; 4825 : 
; 4826 :       // If lpWrkSrcViewEntity is 0 then we didn't find a child of
; 4827 :       // lpSrcViewEntity that matched so let's check the parent.
; 4828 :       if ( lpWrkSrcViewEntity == 0 ||
; 4829 :            lpWrkSrcViewEntity->nLevel <= lpSrcViewEntity->nLevel )

	cmp	DWORD PTR _lpWrkSrcViewEntity$[ebp], 0
	je	SHORT $L9212
	mov	edx, DWORD PTR _lpWrkSrcViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	cmp	eax, edx
	jg	$L9215
$L9212:

; 4831 :          if ( lpSrcViewEntity->hParent )

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	cmp	DWORD PTR [eax+10], 0
	je	$L9215

; 4833 :             LPVIEWENTITY lpParent;
; 4834 : 
; 4835 :             // Src and Tgt must have the same relationship but it must be
; 4836 :             // reversed.
; 4837 :             if ( lpSrcViewEntity->lERRelTok == lpWrkTgtViewEntity->lERRelTok &&
; 4838 :                  lpSrcViewEntity->bRelLink1 != lpWrkTgtViewEntity->bRelLink1 )

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR _lpWrkTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+199]
	cmp	eax, DWORD PTR [edx+199]
	jne	SHORT $L9215
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 28					; 0000001cH
	and	edx, 1
	mov	eax, DWORD PTR _lpWrkTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 28					; 0000001cH
	and	ecx, 1
	cmp	edx, ecx
	je	SHORT $L9215

; 4840 :                // We have an inverted parent.
; 4841 :                nInvertedParents++;

	mov	dx, WORD PTR _nInvertedParents$[ebp]
	add	dx, 1
	mov	WORD PTR _nInvertedParents$[ebp], dx

; 4842 : 
; 4843 :                lpParent = zGETPTR( lpSrcViewEntity->hParent );

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$9214[ebp], eax

; 4844 :                nRC = fnValidStructureEntity( lpTgtView, lpWrkTgtViewEntity,
; 4845 :                                              lpSrcView, lpParent, bInclude );

	mov	dl, BYTE PTR _bInclude$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpParent$9214[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWrkTgtViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	call	_fnValidStructureEntity@20
	mov	WORD PTR _nRC$[ebp], ax

; 4846 :                if ( nRC == zCALL_ERROR )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -16				; fffffff0H
	jne	SHORT $L9217

; 4847 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L9185
$L9217:

; 4848 : 
; 4849 :                nInvertedParents += nRC;

	mov	dx, WORD PTR _nInvertedParents$[ebp]
	add	dx, WORD PTR _nRC$[ebp]
	mov	WORD PTR _nInvertedParents$[ebp], dx

; 4850 : 
; 4851 :                // To keep from getting an error lets set lpWrkSrcViewEntity.
; 4852 :                lpWrkSrcViewEntity = lpSrcViewEntity;

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	DWORD PTR _lpWrkSrcViewEntity$[ebp], eax
$L9215:

; 4856 : 
; 4857 :    } // for each lpWrkTgtViewEntity...

	jmp	$L9198
$L9199:

; 4858 : 
; 4859 :    return( nInvertedParents );

	mov	ax, WORD PTR _nInvertedParents$[ebp]
$L9185:

; 4860 : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_fnValidStructureEntity@20 ENDP
_lpTgtView$ = 8
_lpTgtViewEntity$ = 12
_lpSrcView$ = 16
_lpSrcViewEntity$ = 20
_bInclude$ = 24
_nInvertedParents$ = -4
_lpTask$9231 = -8
_fnValidSubobjectStructureMatch PROC NEAR

; 4899 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 4900 :    zSHORT nInvertedParents;
; 4901 : 
; 4902 :    nInvertedParents = 0;

	mov	WORD PTR _nInvertedParents$[ebp], 0

; 4903 :    if ( lpSrcViewEntity->lEREntTok != lpTgtViewEntity->lEREntTok )

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+195]
	cmp	edx, DWORD PTR [ecx+195]
	je	SHORT $L9230

; 4905 :       LPTASK lpTask = zGETPTR( lpSrcView->hTask );

	mov	eax, DWORD PTR _lpSrcView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$9231[ebp], eax

; 4906 : 
; 4907 :       //  "KZOEE125 - Target and Source Entities are not the same E/R Entity"
; 4908 :       fnIssueCoreError( lpTask, lpSrcView, 8, 125, 0,
; 4909 :                         lpTgtViewEntity->szName,
; 4910 :                         lpSrcViewEntity->szName );

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	125					; 0000007dH
	push	8
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$9231[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4911 :       return( zCALL_ERROR );  // entities do not match

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L9228
$L9230:

; 4913 : 
; 4914 :    nInvertedParents = fnValidStructureEntity( lpTgtView, lpTgtViewEntity,
; 4915 :                                               lpSrcView,
; 4916 :                                               lpSrcViewEntity, bInclude );

	mov	al, BYTE PTR _bInclude$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	call	_fnValidStructureEntity@20
	mov	WORD PTR _nInvertedParents$[ebp], ax

; 4917 : 
; 4918 :    // Return the number of inverted parents found.
; 4919 :    return( nInvertedParents );

	mov	ax, WORD PTR _nInvertedParents$[ebp]
$L9228:

; 4920 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnValidSubobjectStructureMatch ENDP
_TEXT	ENDS
PUBLIC	_fnInstanceChildOfInstanceForRel
PUBLIC	??_C@_0O@BPEJ@?9?9?9?5Error?5?9?9?9?$AA@	; `string'
PUBLIC	??_C@_0DG@LLMA@The?5relationship?5already?5exists?5@ ; `string'
PUBLIC	??_C@_0BG@DHJN@Object?5Instance?5ID?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0P@KINM@Parent?5Name?5?$DN?5?$AA@		; `string'
PUBLIC	??_C@_0P@OGNG@?5?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0P@JAIN@?5?5?5?5?5?5?5Key?5?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0O@JJJJ@Child?5Name?5?$DN?5?$AA@		; `string'
PUBLIC	??_C@_0O@OMPL@?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0O@JKKA@?5?5?5?5?5?5Key?5?5?$DN?5?$AA@	; `string'
EXTRN	_TraceLineI@8:NEAR
EXTRN	_TraceLineX@8:NEAR
;	COMDAT ??_C@_0O@BPEJ@?9?9?9?5Error?5?9?9?9?$AA@
; File C:\10C\A\oe\KZOESOAA.C
_DATA	SEGMENT
??_C@_0O@BPEJ@?9?9?9?5Error?5?9?9?9?$AA@ DB '--- Error ---', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DG@LLMA@The?5relationship?5already?5exists?5@
_DATA	SEGMENT
??_C@_0DG@LLMA@The?5relationship?5already?5exists?5@ DB 'The relationship'
	DB	' already exists between two entities:', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@DHJN@Object?5Instance?5ID?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BG@DHJN@Object?5Instance?5ID?5?$DN?5?$AA@ DB 'Object Instance ID ='
	DB	' ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@KINM@Parent?5Name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0P@KINM@Parent?5Name?5?$DN?5?$AA@ DB 'Parent Name = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@OGNG@?5?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0P@OGNG@?5?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@ DB '       EI   = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@JAIN@?5?5?5?5?5?5?5Key?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0P@JAIN@?5?5?5?5?5?5?5Key?5?5?$DN?5?$AA@ DB '       Key  = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@JJJJ@Child?5Name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0O@JJJJ@Child?5Name?5?$DN?5?$AA@ DB 'Child Name = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@OMPL@?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0O@OMPL@?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@ DB '      EI   = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@JKKA@?5?5?5?5?5?5Key?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0O@JKKA@?5?5?5?5?5?5Key?5?5?$DN?5?$AA@ DB '      Key  = ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpEntityInstance$ = 8
_lpParentEntityInstance$ = 12
_lERRelTok$ = 16
_lpViewEntity$ = -8
_lpWkInstance1$ = -24
_lpWkInstance2$ = -20
_hViewEntity$ = -16
_lpParentViewEntity$ = -12
_hParentEntityInstance$ = -4
_fnInstanceChildOfInstanceForRel PROC NEAR

; 4933 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 4934 :    LPVIEWENTITY     lpViewEntity;
; 4935 :    LPENTITYINSTANCE lpWkInstance1;
; 4936 :    LPENTITYINSTANCE lpWkInstance2;
; 4937 :    LPVIEWENTITY     hViewEntity;
; 4938 :    LPVIEWENTITY     lpParentViewEntity;
; 4939 :    zPVOID           hParentEntityInstance = zGETHNDL( lpParentEntityInstance );

	mov	eax, DWORD PTR _lpParentEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hParentEntityInstance$[ebp], eax
$L9249:

; 4940 : 
; 4941 :    while ( lpEntityInstance->hPrevVsn )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	SHORT $L9250

; 4942 :       lpEntityInstance = zGETPTR( lpEntityInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
	jmp	SHORT $L9249
$L9250:

; 4943 : 
; 4944 :    lpWkInstance1 = lpEntityInstance;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR _lpWkInstance1$[ebp], ecx
$L9253:

; 4945 :    while ( lpWkInstance1 )

	cmp	DWORD PTR _lpWkInstance1$[ebp], 0
	je	$L9254

; 4947 :       lpViewEntity= zGETPTR( lpWkInstance1->hViewEntity );

	mov	edx, DWORD PTR _lpWkInstance1$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 4948 :       if ( lpWkInstance1->u.nInd.bHidden == FALSE && // Gig, 9/13/92
; 4949 :            lpWkInstance1->hParent == hParentEntityInstance &&
; 4950 :            lpViewEntity->lERRelTok == lERRelTok )

	mov	ecx, DWORD PTR _lpWkInstance1$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	$L9256
	mov	eax, DWORD PTR _lpWkInstance1$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	cmp	ecx, DWORD PTR _hParentEntityInstance$[ebp]
	jne	$L9256
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+199]
	cmp	eax, DWORD PTR _lERRelTok$[ebp]
	jne	$L9256

; 4952 :          lpParentViewEntity = zGETPTR( lpParentEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpParentEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentViewEntity$[ebp], eax

; 4953 : 
; 4954 :          TraceLineS( "--- Error ---", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0O@BPEJ@?9?9?9?5Error?5?9?9?9?$AA@ ; `string'
	call	_TraceLineS@8

; 4955 :          TraceLineS( "The relationship already exists between two entities:", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DG@LLMA@The?5relationship?5already?5exists?5@ ; `string'
	call	_TraceLineS@8

; 4956 :          TraceLineX( "Object Instance ID = ", (zLONG) lpWkInstance1->hViewOI );

	mov	eax, DWORD PTR _lpWkInstance1$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	push	OFFSET FLAT:??_C@_0BG@DHJN@Object?5Instance?5ID?5?$DN?5?$AA@ ; `string'
	call	_TraceLineX@8

; 4957 :          TraceLineS( "Parent Name = ", lpParentViewEntity->szName );

	mov	edx, DWORD PTR _lpParentViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0P@KINM@Parent?5Name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 4958 :          TraceLineX( "       EI   = ", (zLONG) lpParentEntityInstance );

	mov	eax, DWORD PTR _lpParentEntityInstance$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0P@OGNG@?5?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineX@8

; 4959 :          TraceLineI( "       Key  = ", (zLONG) lpParentEntityInstance->ulKey );

	mov	ecx, DWORD PTR _lpParentEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+50]
	push	edx
	push	OFFSET FLAT:??_C@_0P@JAIN@?5?5?5?5?5?5?5Key?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 4960 :          TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 4961 :          TraceLineS( "Child Name = ", lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0O@JJJJ@Child?5Name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 4962 :          TraceLineX( "      EI   = ", (zLONG) lpWkInstance1 );

	mov	ecx, DWORD PTR _lpWkInstance1$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0O@OMPL@?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineX@8

; 4963 :          TraceLineI( "      Key  = ", (zLONG) lpWkInstance1->ulKey );

	mov	edx, DWORD PTR _lpWkInstance1$[ebp]
	mov	eax, DWORD PTR [edx+50]
	push	eax
	push	OFFSET FLAT:??_C@_0O@JKKA@?5?5?5?5?5?5Key?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 4964 :          return( TRUE );

	mov	ax, 1
	jmp	$L9240
$L9256:

; 4966 : 
; 4967 :       lpWkInstance2 = zGETPTR( lpWkInstance1->hNextVsn );

	mov	ecx, DWORD PTR _lpWkInstance1$[ebp]
	mov	edx, DWORD PTR [ecx+34]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkInstance2$[ebp], eax
$L9274:

; 4968 :       while ( lpWkInstance2 )

	cmp	DWORD PTR _lpWkInstance2$[ebp], 0
	je	$L9275

; 4970 :          hViewEntity = zGETPTR( lpWkInstance2->hViewEntity );

	mov	eax, DWORD PTR _lpWkInstance2$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _hViewEntity$[ebp], eax

; 4971 :          if ( lpWkInstance2->u.nInd.bHidden == FALSE && // Gig, 9/13/92
; 4972 :               lpWkInstance2->hParent == hParentEntityInstance &&
; 4973 :               hViewEntity->lERRelTok == lERRelTok )

	mov	edx, DWORD PTR _lpWkInstance2$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	$L9277
	mov	ecx, DWORD PTR _lpWkInstance2$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	cmp	edx, DWORD PTR _hParentEntityInstance$[ebp]
	jne	$L9277
	mov	eax, DWORD PTR _hViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+199]
	cmp	ecx, DWORD PTR _lERRelTok$[ebp]
	jne	$L9277

; 4975 :             lpParentViewEntity = zGETPTR( lpParentEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpParentEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentViewEntity$[ebp], eax

; 4976 : 
; 4977 :             TraceLineS( "--- Error ---", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0O@BPEJ@?9?9?9?5Error?5?9?9?9?$AA@ ; `string'
	call	_TraceLineS@8

; 4978 :             TraceLineS( "The relationship already exists between two entities:", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DG@LLMA@The?5relationship?5already?5exists?5@ ; `string'
	call	_TraceLineS@8

; 4979 :             TraceLineX( "Object Instance ID = ", (zLONG) lpWkInstance2->hViewOI );

	mov	ecx, DWORD PTR _lpWkInstance2$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	push	OFFSET FLAT:??_C@_0BG@DHJN@Object?5Instance?5ID?5?$DN?5?$AA@ ; `string'
	call	_TraceLineX@8

; 4980 :             TraceLineS( "Parent Name = ", lpParentViewEntity->szName );

	mov	eax, DWORD PTR _lpParentViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0P@KINM@Parent?5Name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 4981 :             TraceLineX( "       EI   = ", (zLONG) lpParentEntityInstance );

	mov	ecx, DWORD PTR _lpParentEntityInstance$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0P@OGNG@?5?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineX@8

; 4982 :             TraceLineI( "       Key  = ", (zLONG) lpParentEntityInstance->ulKey );

	mov	edx, DWORD PTR _lpParentEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+50]
	push	eax
	push	OFFSET FLAT:??_C@_0P@JAIN@?5?5?5?5?5?5?5Key?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 4983 :             TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 4984 :             TraceLineS( "Child Name = ", lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	OFFSET FLAT:??_C@_0O@JJJJ@Child?5Name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 4985 :             TraceLineX( "      EI   = ", (zLONG) lpWkInstance2 );

	mov	edx, DWORD PTR _lpWkInstance2$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0O@OMPL@?5?5?5?5?5?5EI?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineX@8

; 4986 :             TraceLineI( "      Key  = ", (zLONG) lpWkInstance2->ulKey );

	mov	eax, DWORD PTR _lpWkInstance2$[ebp]
	mov	ecx, DWORD PTR [eax+50]
	push	ecx
	push	OFFSET FLAT:??_C@_0O@JKKA@?5?5?5?5?5?5Key?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 4987 :             return( TRUE );

	mov	ax, 1
	jmp	SHORT $L9240
$L9277:

; 4989 : 
; 4990 :          lpWkInstance2 = zGETPTR( lpWkInstance2->hNextVsn );

	mov	edx, DWORD PTR _lpWkInstance2$[ebp]
	mov	eax, DWORD PTR [edx+34]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkInstance2$[ebp], eax

; 4991 :       }

	jmp	$L9274
$L9275:

; 4992 : 
; 4993 :       lpWkInstance1 = zGETPTR( lpWkInstance1->hNextLinked );

	mov	ecx, DWORD PTR _lpWkInstance1$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkInstance1$[ebp], eax

; 4994 :       if ( lpWkInstance1 == 0 || lpWkInstance1 == lpEntityInstance )

	cmp	DWORD PTR _lpWkInstance1$[ebp], 0
	je	SHORT $L9287
	mov	eax, DWORD PTR _lpWkInstance1$[ebp]
	cmp	eax, DWORD PTR _lpEntityInstance$[ebp]
	jne	SHORT $L9289
$L9287:

; 4996 :          lpWkInstance1 = zGETPTR( lpEntityInstance->hNextVsn );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+34]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkInstance1$[ebp], eax

; 4997 :          if ( lpWkInstance1 )

	cmp	DWORD PTR _lpWkInstance1$[ebp], 0
	je	SHORT $L9289

; 4998 :             lpEntityInstance = lpWkInstance1;

	mov	eax, DWORD PTR _lpWkInstance1$[ebp]
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L9289:

; 5000 :    }

	jmp	$L9253
$L9254:

; 5001 : 
; 5002 :    return( FALSE );

	xor	ax, ax
$L9240:

; 5003 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnInstanceChildOfInstanceForRel ENDP
_TEXT	ENDS
PUBLIC	_fnIncludeEntityAndChildren@20
_TEXT	SEGMENT
_lpTgtViewEntity$ = 8
_lpTgtViewEntityCsr$ = 12
_lpOrigSrcEntityInstance$ = 16
_bIncludeParent$ = 20
_lpIncludeInfo$ = 24
_lpChildTgtViewEntityCsr$ = -40
_lpSrcViewEntityCsr$ = -56
_lpSrcEntityInstance$ = -8
_lpTgtEntityInstance$ = -28
_lpChildEntityInstance$ = -12
_lpChildTgtViewEntity$ = -44
_lpSrcViewEntity$ = -52
_lpSrcChildViewEntity$ = -48
_lpAllocTask$ = -4
_hAllocTask$ = -36
_nSourceLevel$ = -32
_nTargetLevel$ = -24
_nSkipType$ = -20
_nRC$ = -16
_lpChildTgtByToken$9335 = -60
_lpWrkEntityInstance$9393 = -64
_fnIncludeEntityAndChildren@20 PROC NEAR

; 5041 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H

; 5042 :    LPVIEWENTITYCSR   lpChildTgtViewEntityCsr;
; 5043 :    LPVIEWENTITYCSR   lpSrcViewEntityCsr;
; 5044 :    LPENTITYINSTANCE  lpSrcEntityInstance;
; 5045 :    LPENTITYINSTANCE  lpTgtEntityInstance;
; 5046 :    LPENTITYINSTANCE  lpChildEntityInstance;
; 5047 :    LPVIEWENTITY      lpChildTgtViewEntity;
; 5048 :    LPVIEWENTITY      lpSrcViewEntity;
; 5049 :    LPVIEWENTITY      lpSrcChildViewEntity;
; 5050 :    LPTASK            lpAllocTask = 0;

	mov	DWORD PTR _lpAllocTask$[ebp], 0

; 5051 :    LPTASK            hAllocTask = 0;

	mov	DWORD PTR _hAllocTask$[ebp], 0

; 5052 :    zSHORT            nSourceLevel;
; 5053 :    zSHORT            nTargetLevel;
; 5054 :    zSHORT            nSkipType;
; 5055 :    zSHORT            nRC;
; 5056 : 
; 5057 : #ifdef DEBUG
; 5058 :    lpSrcViewEntity = zGETPTR( lpOrigSrcEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpOrigSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntity$[ebp], eax

; 5059 : #endif
; 5060 : 
; 5061 :    // Get the OLDEST source instance for updating the target instance
; 5062 :    // information.
; 5063 :    lpSrcEntityInstance = lpOrigSrcEntityInstance;

	mov	edx, DWORD PTR _lpOrigSrcEntityInstance$[ebp]
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], edx
$L9318:

; 5064 :    while ( lpSrcEntityInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L9319

; 5065 :       lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hPrevVsn );

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax
	jmp	SHORT $L9318
$L9319:

; 5066 : 
; 5067 :    // Call fnCreateEntity to create the entity for the target object.
; 5068 :    nRC = fnCreateEntity( lpIncludeInfo->lpTgtView,
; 5069 :                          lpTgtViewEntity, lpTgtViewEntityCsr,
; 5070 :                          lpIncludeInfo->nPosition, lpIncludeInfo->bNewRoot );

	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	mov	cx, WORD PTR [eax+31]
	push	ecx
	mov	edx, DWORD PTR _lpIncludeInfo$[ebp]
	mov	ax, WORD PTR [edx+35]
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_fnCreateEntity@20
	mov	WORD PTR _nRC$[ebp], ax

; 5071 :    if ( nRC )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L9321

; 5072 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9301
$L9321:

; 5073 : 
; 5074 :    // Get the target instance just created and point its record to the source
; 5075 :    // instance record.
; 5076 :    lpTgtEntityInstance = zGETPTR( lpTgtViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax

; 5077 :    lpTgtEntityInstance->hPersistRecord = lpSrcEntityInstance->hPersistRecord;

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	mov	DWORD PTR [edx+60], ecx

; 5078 :    lpTgtEntityInstance->u.nInd  = lpSrcEntityInstance->u.nInd;

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 5079 : 
; 5080 :    // If the new entity is updated then set flag indicated that target OI
; 5081 :    // has been changed.  We check to see if updated is TRUE so that we can
; 5082 :    // avoid calling fnInstanceVersioned( ) whenever possible.
; 5083 :    if ( lpTgtViewEntity->bDerived == FALSE                &&
; 5084 :         lpTgtViewEntity->bDerivedPath == FALSE            &&
; 5085 :         (lpTgtEntityInstance->u.nInd.bIncluded ||
; 5086 :          lpTgtEntityInstance->u.nInd.bCreated  ||
; 5087 :          lpTgtEntityInstance->u.nInd.bUpdated)            &&
; 5088 :         lpIncludeInfo->lpTgtViewOI->bUpdatedFile == FALSE &&
; 5089 :         fnInstanceVersioned( lpTgtEntityInstance ) == FALSE )

	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 13					; 0000000dH
	and	eax, 1
	test	eax, eax
	jne	$L9323
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 14					; 0000000eH
	and	edx, 1
	test	edx, edx
	jne	$L9323
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 5
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9324
	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9324
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 2
	and	edx, 1
	test	edx, edx
	je	SHORT $L9323
$L9324:
	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [ecx+36]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9323
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	call	_fnInstanceVersioned
	add	esp, 4
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L9323

; 5091 :       lpIncludeInfo->lpTgtViewOI->bUpdated =
; 5092 :          lpIncludeInfo->lpTgtViewOI->bUpdatedFile = TRUE;

	mov	ecx, DWORD PTR _lpIncludeInfo$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	eax, DWORD PTR [edx+36]
	or	al, 32					; 00000020H
	mov	ecx, DWORD PTR _lpIncludeInfo$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR [edx+36], eax
	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [ecx+36]
	or	edx, 16					; 00000010H
	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx+36], edx
$L9323:

; 5094 : 
; 5095 :    // Set the include flag only if:
; 5096 :    // o  This is the first EI we've created.  We only flag the first EI as
; 5097 :    //    being included.
; 5098 :    //    All the other EIs added by "spawning" the include have their
; 5099 :    //    flags left alone.
; 5100 :    // o  The call wants the entity flagged as included; i.e. bMarkedIncluded
; 5101 :    //    is TRUE.
; 5102 :    // o  The target instance has a parent.  If it has no parent then it is
; 5103 :    //    a root EI and therefore won't be included into anything.
; 5104 :    if ( lpIncludeInfo->bFirstEntity )

	mov	edx, DWORD PTR _lpIncludeInfo$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+30]
	test	eax, eax
	je	SHORT $L9325

; 5106 :       if ( lpIncludeInfo->bMarkIncluded && lpTgtEntityInstance->hParent )

	mov	ecx, DWORD PTR _lpIncludeInfo$[ebp]
	movsx	edx, WORD PTR [ecx+33]
	test	edx, edx
	je	SHORT $L9326
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	SHORT $L9326

; 5107 :          lpTgtEntityInstance->u.nInd.bIncluded = TRUE;

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	edx, 32					; 00000020H
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx
$L9326:

; 5108 : 
; 5109 :       // Set flag to indicate we've created the first entity.
; 5110 :       lpIncludeInfo->bFirstEntity = FALSE;

	mov	ecx, DWORD PTR _lpIncludeInfo$[ebp]
	mov	BYTE PTR [ecx+30], 0

; 5111 : 
; 5112 :       // Turn off flags.
; 5113 :       lpIncludeInfo->bNewRoot  = 0;

	mov	edx, DWORD PTR _lpIncludeInfo$[ebp]
	mov	WORD PTR [edx+31], 0

; 5114 :       lpIncludeInfo->nPosition = zPOS_NEXT;

	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	mov	WORD PTR [eax+35], 3
$L9325:

; 5116 : 
; 5117 :    // Add the created entity into the link chain.
; 5118 :    if ( lpSrcEntityInstance->hNextLinked )

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+42], 0
	je	SHORT $L9328

; 5119 :       lpTgtEntityInstance->hNextLinked = lpSrcEntityInstance->hNextLinked;

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	mov	DWORD PTR [edx+42], ecx

; 5120 :    else

	jmp	SHORT $L9329
$L9328:

; 5121 :       lpTgtEntityInstance->hNextLinked = zGETHNDL( lpSrcEntityInstance );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax
$L9329:

; 5122 : 
; 5123 :    lpSrcEntityInstance->hNextLinked = zGETHNDL( lpTgtEntityInstance );

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax

; 5124 : 
; 5125 : #if 0
; 5126 :    // DGC 6-23-2006
; 5127 :    // We thought we would allow cross-task includes by moving the OIs to the
; 5128 :    // system task.  Unfortunately this opens tons of race-condition holes.
; 5129 :    // The views really need to be locked but we don't know all the OIs that
; 5130 :    // are linked together until we get here.  Until we figure something out,
; 5131 :    // we will not allow cross-task linking.
; 5132 :    // DGC 6-23-2006
; 5133 : 
; 5134 :    // Check to see if either the views or the OIs belong to different tasks.
; 5135 :    // If they do, we need to move the attribute record to the system or
; 5136 :    // application task.
; 5137 :    if ( lpIncludeInfo->lpTgtView->hTask != lpIncludeInfo->lpSrcView->hTask ||
; 5138 :         lpIncludeInfo->lpTgtAllocTask != lpIncludeInfo->lpSrcAllocTask )
; 5139 :    {
; 5140 :       // We know that either the source or target task is an application or
; 5141 :       // system task.  Find out which.
; 5142 :       if ( lpIncludeInfo->lpSrcAllocTask == zGETPTR( AnchorBlock->hMainTask ) )
; 5143 :          lpAllocTask = lpIncludeInfo->lpSrcAllocTask;
; 5144 :       else
; 5145 :       if ( lpIncludeInfo->lpTgtAllocTask == zGETPTR( AnchorBlock->hMainTask ) )
; 5146 :          lpAllocTask = lpIncludeInfo->lpTgtAllocTask;
; 5147 :       else
; 5148 :       if ( lpIncludeInfo->lpSrcAllocTask->bApplicationTask )
; 5149 :          lpAllocTask = lpIncludeInfo->lpSrcAllocTask;
; 5150 :       else
; 5151 :       if ( lpIncludeInfo->lpTgtAllocTask->bApplicationTask )
; 5152 :          lpAllocTask = lpIncludeInfo->lpTgtAllocTask;
; 5153 :       else
; 5154 :          // We should never get here.  If we do, then we didn't correctly
; 5155 :          // verify the views at the beginning.  Cause a crash.
; 5156 :          lpAllocTask = lpAllocTask->hNextTask;
; 5157 : 
; 5158 :       // Set the alloc task for both OIs.  One of these assignments will be
; 5159 :       // redundant.
; 5160 :       hAllocTask = zGETHNDL( lpAllocTask );
; 5161 :       lpIncludeInfo->lpTgtViewOI->hAllocTask = hAllocTask;
; 5162 :       lpIncludeInfo->lpSrcViewOI->hAllocTask = hAllocTask;
; 5163 : 
; 5164 :       // Now that we know the alloc task, move the record pointer to the
; 5165 :       // new task.
; 5166 :       lpTgtEntityInstance->hPersistRecord =
; 5167 :          fnCopyAttributeRecord( lpAllocTask,
; 5168 :                                 zGETPTR( lpSrcEntityInstance->lpViewEntity ),
; 5169 :                                 lpSrcEntityInstance->hPersistRecord), TRUE );
; 5170 :       fnDeleteAttributeRecord( zGETPTR( lpSrcEntityInstance->hViewEntity ),
; 5171 :                                lpSrcEntityInstance, TRUE );
; 5172 : 
; 5173 :       // Go through each of the linked instances and point them to the new
; 5174 :       // attribute record.
; 5175 :       for ( lpEI = zGETPTR( lpTgtEntityInstance->hNextLinked );
; 5176 :             lpEI != lpTgtEntityInstance;
; 5177 :             lpEI = zGETPTR( lpEI->hNextLinked ) )
; 5178 :       {
; 5179 :          // All ViewOIs that are contained in this linked chain need to have
; 5180 :          // to have the same hAllocTask.
; 5181 :          LPVIEWOI lpViewOI = zGETPTR( lpEI->hViewOI );
; 5182 :          lpViewOI->hAllocTask = hAllocTask;
; 5183 : 
; 5184 :          lpEI->hPersistRecord = lpTgtEntityInstance->hPersistRecord;
; 5185 :       }
; 5186 : 
; 5187 :    }
; 5188 : #endif
; 5189 : 
; 5190 :    // Go back to the newest src EI.
; 5191 :    lpSrcEntityInstance = lpOrigSrcEntityInstance;

	mov	edx, DWORD PTR _lpOrigSrcEntityInstance$[ebp]
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], edx

; 5192 : 
; 5193 :    // Now loop through all the direct children of lpSrcEntityInstance and see
; 5194 :    // if they need to be copied over to the Tgt OI.  At the end of this loop,
; 5195 :    // we will call this function recursively to copy more entities.
; 5196 :    nSourceLevel = lpSrcEntityInstance->nLevel;

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR _nSourceLevel$[ebp], cx

; 5197 :    nSkipType = 1;  // this means to start with the next hier from the src EI

	mov	WORD PTR _nSkipType$[ebp], 1
$L9333:

; 5198 :    while ( TRUE )

	mov	edx, 1
	test	edx, edx
	je	$L9334

; 5200 :       LPVIEWENTITYCSR lpChildTgtByToken;
; 5201 : 
; 5202 :       switch ( nSkipType )
; 5203 :       {

	movsx	eax, WORD PTR _nSkipType$[ebp]
	mov	DWORD PTR -68+[ebp], eax
	cmp	DWORD PTR -68+[ebp], 0
	je	SHORT $L9340
	cmp	DWORD PTR -68+[ebp], 1
	je	SHORT $L9345
	cmp	DWORD PTR -68+[ebp], 2
	je	SHORT $L9347
	jmp	SHORT $L9337
$L9340:

; 5204 :          case 0:  // Normal case.  Just go to the next twin.
; 5205 :             if ( lpSrcEntityInstance->hNextTwin )

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	SHORT $L9341

; 5206 :                lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 5207 :             else

	jmp	SHORT $L9343
$L9341:

; 5208 :                lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax
$L9343:

; 5209 : 
; 5210 :             break;

	jmp	SHORT $L9337
$L9345:

; 5211 : 
; 5212 :          case 1:  // Skip to the next hier.
; 5213 :             lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 5214 :             break;

	jmp	SHORT $L9337
$L9347:

; 5215 : 
; 5216 :          case 2:  // Skip current EI and all it's twins.
; 5217 :             while ( lpSrcEntityInstance->hNextTwin )

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L9350

; 5218 :                lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hNextTwin );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax
	jmp	SHORT $L9347
$L9350:

; 5219 : 
; 5220 :             // Now go to the next hier.
; 5221 :             lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax
$L9337:

; 5224 : 
; 5225 :       if ( lpSrcEntityInstance == 0 )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	jne	SHORT $L9353

; 5226 :          break;

	jmp	$L9334
$L9353:

; 5227 : 
; 5228 :       // Unless told otherwise we will always skip to the next twin.
; 5229 :       nSkipType = 0;

	mov	WORD PTR _nSkipType$[ebp], 0

; 5230 : 
; 5231 :       // Skip all hidden entities.
; 5232 :       if ( lpSrcEntityInstance->u.nInd.bHidden )

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	SHORT $L9354

; 5233 :          continue;

	jmp	$L9333
$L9354:

; 5234 : 
; 5235 :       // We are only interested in EI's that are direct children of the
; 5236 :       // original source EI.
; 5237 :       if ( lpSrcEntityInstance->nLevel > nSourceLevel + 1 )

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nSourceLevel$[ebp]
	add	edx, 1
	cmp	ecx, edx
	jle	SHORT $L9355

; 5239 :          nSkipType = 2;    // Skip this EI and all it's twins.

	mov	WORD PTR _nSkipType$[ebp], 2

; 5240 :          continue;

	jmp	$L9333
$L9355:

; 5242 : 
; 5243 :       // If the level is <= to the original source EI then we are no longer
; 5244 :       // underneath (i.e. a child/descendent) of the original EI so we're done
; 5245 :       // looking for children.
; 5246 :       if ( lpSrcEntityInstance->nLevel <= nSourceLevel )

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nSourceLevel$[ebp]
	cmp	ecx, edx
	jg	SHORT $L9356

; 5247 :          break;

	jmp	$L9334
$L9356:

; 5248 : 
; 5249 :       // We have a new source instance.  Make sure the new source instance is
; 5250 :       // actually in the source view (i.e. not out of view).  It will not be
; 5251 :       // in the source view ONLY IF it is a recursive instance or a child of
; 5252 :       // a recursive instance.  NOTE: Versioning DOES NOT support including
; 5253 :       // into a target with a recursive structure!!!!
; 5254 :       lpSrcViewEntityCsr =
; 5255 :                   zGETPTR( lpIncludeInfo->lpSrcViewCsr->hRootViewEntityCsr );

	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax
$L9359:

; 5256 :       while ( lpSrcViewEntityCsr &&
; 5257 :               lpSrcViewEntityCsr->hViewEntity !=
; 5258 :                                           lpSrcEntityInstance->hViewEntity )

	cmp	DWORD PTR _lpSrcViewEntityCsr$[ebp], 0
	je	SHORT $L9360
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [eax+14]
	cmp	edx, DWORD PTR [ecx+2]
	je	SHORT $L9360

; 5260 :          lpSrcViewEntityCsr = zGETPTR( lpSrcViewEntityCsr->hNextHier );

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax

; 5261 :       }

	jmp	SHORT $L9359
$L9360:

; 5262 : 
; 5263 :       if ( lpSrcViewEntityCsr == 0 ||
; 5264 :            lpSrcViewEntityCsr->nLevel != lpSrcEntityInstance->nLevel )

	cmp	DWORD PTR _lpSrcViewEntityCsr$[ebp], 0
	je	SHORT $L9363
	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	cmp	eax, edx
	je	SHORT $L9362
$L9363:

; 5266 :          // lpSrcEntityInstance does not belong to the current source
; 5267 :          // view (it is out of view).  Go on to the next one.
; 5268 :          nSkipType = 2;    // skip this EI and all its twins

	mov	WORD PTR _nSkipType$[ebp], 2

; 5269 :          continue;

	jmp	$L9333
$L9362:

; 5271 : 
; 5272 :       lpSrcViewEntity = zGETPTR( lpSrcEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntity$[ebp], eax

; 5273 : 
; 5274 :       // Finally, see if the current entity instance belongs in the target
; 5275 :       // Object Instance.  To do this we loop through all the view entities
; 5276 :       // starting with the root of the include (not the root of the OI).
; 5277 :       // When we find an entity that has the same:
; 5278 :       //    o entity name as the source entity
; 5279 :       //    o ER token as the source entity
; 5280 :       //    o ER relationship as the source entity
; 5281 :       //    o RelLink1 flag
; 5282 :       // then we know that the source entity should be copied (included) into
; 5283 :       // the target entity.  If we don't find an entity with the same name
; 5284 :       // then we'll use the entity that matches the other criteria (if any).
; 5285 :       lpChildTgtByToken = 0;

	mov	DWORD PTR _lpChildTgtByToken$9335[ebp], 0

; 5286 :       nTargetLevel = lpTgtViewEntityCsr->nLevel;

	mov	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	ax, WORD PTR [edx+22]
	mov	WORD PTR _nTargetLevel$[ebp], ax

; 5287 :       for ( lpChildTgtViewEntityCsr = zGETPTR( lpTgtViewEntityCsr->hNextHier );
; 5288 :             lpChildTgtViewEntityCsr;
; 5289 :             lpChildTgtViewEntityCsr = zGETPTR( lpChildTgtViewEntityCsr->hNextHier ) )

	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildTgtViewEntityCsr$[ebp], eax
	jmp	SHORT $L9367
$L9368:
	mov	eax, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildTgtViewEntityCsr$[ebp], eax
$L9367:
	cmp	DWORD PTR _lpChildTgtViewEntityCsr$[ebp], 0
	je	$L9369

; 5291 :          // We're only interested in direct children of lpTgtViewEntityCsr.
; 5292 :          if ( lpChildTgtViewEntityCsr->nLevel > nTargetLevel + 1 )

	mov	edx, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	movsx	ecx, WORD PTR _nTargetLevel$[ebp]
	add	ecx, 1
	cmp	eax, ecx
	jle	SHORT $L9370

; 5293 :             continue;

	jmp	SHORT $L9368
$L9370:

; 5294 : 
; 5295 :          if ( lpChildTgtViewEntityCsr->nLevel <= nTargetLevel )

	mov	edx, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	movsx	ecx, WORD PTR _nTargetLevel$[ebp]
	cmp	eax, ecx
	jg	SHORT $L9371

; 5297 :             lpChildTgtViewEntityCsr = 0;

	mov	DWORD PTR _lpChildTgtViewEntityCsr$[ebp], 0

; 5298 :             break;  // No more child csrs to check.

	jmp	$L9369
$L9371:

; 5300 : 
; 5301 :          lpChildTgtViewEntity = zGETPTR( lpChildTgtViewEntityCsr->hViewEntity );

	mov	edx, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildTgtViewEntity$[ebp], eax

; 5302 : 
; 5303 :          if ( lpSrcViewEntity->lEREntTok == lpChildTgtViewEntity->lEREntTok &&
; 5304 :               lpSrcViewEntity->lERRelTok == lpChildTgtViewEntity->lERRelTok &&
; 5305 :               lpSrcViewEntity->bRelLink1 == lpChildTgtViewEntity->bRelLink1 )

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR _lpChildTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+195]
	cmp	eax, DWORD PTR [edx+195]
	jne	$L9382
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR _lpChildTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+199]
	cmp	eax, DWORD PTR [edx+199]
	jne	$L9382
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 28					; 0000001cH
	and	edx, 1
	mov	eax, DWORD PTR _lpChildTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 28					; 0000001cH
	and	ecx, 1
	cmp	edx, ecx
	jne	SHORT $L9382

; 5307 :             // Check to see if the entities match by name also. If they do
; 5308 :             // then we've found our man.  If not we'll save the current view
; 5309 :             // cursor in case we never find a match by name.
; 5310 :             if ( zstrcmp( lpSrcViewEntity->szName,
; 5311 :                           lpChildTgtViewEntity->szName ) == 0 )

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	movsx	eax, BYTE PTR [edx+14]
	mov	ecx, DWORD PTR _lpChildTgtViewEntity$[ebp]
	movsx	edx, BYTE PTR [ecx+14]
	cmp	eax, edx
	jne	SHORT $L9926
	mov	eax, DWORD PTR _lpChildTgtViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -72+[ebp], eax
	jmp	SHORT $L9927
$L9926:
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	movsx	eax, BYTE PTR [edx+14]
	mov	ecx, DWORD PTR _lpChildTgtViewEntity$[ebp]
	movsx	edx, BYTE PTR [ecx+14]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -72+[ebp], ecx
$L9927:
	cmp	DWORD PTR -72+[ebp], 0
	jne	SHORT $L9380

; 5313 :                break; // they match, so break

	jmp	SHORT $L9369
$L9380:

; 5317 :                // If we haven't already saved the cursor then do it.
; 5318 :                if ( lpChildTgtByToken == 0 )

	cmp	DWORD PTR _lpChildTgtByToken$9335[ebp], 0
	jne	SHORT $L9382

; 5319 :                   lpChildTgtByToken = lpChildTgtViewEntityCsr;

	mov	edx, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	mov	DWORD PTR _lpChildTgtByToken$9335[ebp], edx
$L9382:

; 5322 :       }

	jmp	$L9368
$L9369:

; 5323 : 
; 5324 :       // If we didn't find a csr by name maybe we found one by token.
; 5325 :       if ( lpChildTgtViewEntityCsr == 0 )

	cmp	DWORD PTR _lpChildTgtViewEntityCsr$[ebp], 0
	jne	SHORT $L9383

; 5326 :          lpChildTgtViewEntityCsr = lpChildTgtByToken;

	mov	eax, DWORD PTR _lpChildTgtByToken$9335[ebp]
	mov	DWORD PTR _lpChildTgtViewEntityCsr$[ebp], eax
$L9383:

; 5327 : 
; 5328 :       if ( lpChildTgtViewEntityCsr != 0 )

	cmp	DWORD PTR _lpChildTgtViewEntityCsr$[ebp], 0
	je	SHORT $L9384

; 5329 :          lpChildTgtViewEntity = zGETPTR( lpChildTgtViewEntityCsr->hViewEntity );

	mov	ecx, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildTgtViewEntity$[ebp], eax
$L9384:

; 5330 : 
; 5331 :       // If we didn't find a csr then go on to the next EI.  Also ...
; 5332 :       // Gig, patch 9/4/92, if we find a cursor which is
; 5333 :       // derived, skip this entity instance and all children of
; 5334 :       // the current entity instance.
; 5335 :       if ( lpChildTgtViewEntityCsr == 0 || lpChildTgtViewEntity->bDerived )

	cmp	DWORD PTR _lpChildTgtViewEntityCsr$[ebp], 0
	je	SHORT $L9387
	mov	eax, DWORD PTR _lpChildTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 13					; 0000000dH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9386
$L9387:

; 5337 :          // We can skip the current source EI and all it's twins because we know
; 5338 :          // that there is no match in the target view for the current source
; 5339 :          // entity type.
; 5340 :          nSkipType = 2;

	mov	WORD PTR _nSkipType$[ebp], 2

; 5341 :          continue;

	jmp	$L9333
$L9386:

; 5343 : 
; 5344 :       // Finally check to see if the source instance has a previous version
; 5345 :       // which cannot disappear in an CancelSubobject call.
; 5346 :       if ( lpIncludeInfo->nVsnLevel != 0 ||
; 5347 :            lpSrcEntityInstance->hPrevVsn != 0 )

	mov	edx, DWORD PTR _lpIncludeInfo$[ebp]
	movsx	eax, WORD PTR [edx+28]
	test	eax, eax
	jne	SHORT $L9389
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	$L9403
$L9389:

; 5349 :          // Establish the new nPrevVsn if necessary
; 5350 :          if ( lpIncludeInfo->nVsnLevel &&
; 5351 :               lpSrcEntityInstance->nLevel <= lpIncludeInfo->nVsnLevel )

	mov	edx, DWORD PTR _lpIncludeInfo$[ebp]
	movsx	eax, WORD PTR [edx+28]
	test	eax, eax
	je	SHORT $L9390
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	movsx	ecx, WORD PTR [eax+28]
	cmp	edx, ecx
	jg	SHORT $L9390

; 5353 :             lpIncludeInfo->nVsnLevel = 0;

	mov	edx, DWORD PTR _lpIncludeInfo$[ebp]
	mov	WORD PTR [edx+28], 0
$L9390:

; 5355 : 
; 5356 :          if ( lpIncludeInfo->nVsnLevel == 0 && lpSrcEntityInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	movsx	ecx, WORD PTR [eax+28]
	test	ecx, ecx
	jne	SHORT $L9391
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [edx+38], 0
	je	SHORT $L9391

; 5357 :             lpIncludeInfo->nVsnLevel = lpSrcEntityInstance->nLevel;

	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	mov	WORD PTR [eax+28], dx
$L9391:

; 5358 : 
; 5359 :          // If nVsnLevel is set, then the current source instance is part of
; 5360 :          // a source version chain, make sure this instance cannot disappear
; 5361 :          // by a CancelSubobject call at ANY LEVEL.
; 5362 :          if ( lpIncludeInfo->nVsnLevel != 0 )

	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	movsx	ecx, WORD PTR [eax+28]
	test	ecx, ecx
	je	SHORT $L9403

; 5364 :             LPENTITYINSTANCE lpWrkEntityInstance = lpSrcEntityInstance;

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR _lpWrkEntityInstance$9393[ebp], edx
$L9395:

; 5365 : 
; 5366 :             while ( lpWrkEntityInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpWrkEntityInstance$9393[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L9396

; 5367 :                lpWrkEntityInstance = zGETPTR( lpWrkEntityInstance->hPrevVsn );

	mov	ecx, DWORD PTR _lpWrkEntityInstance$9393[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$9393[ebp], eax
	jmp	SHORT $L9395
$L9396:

; 5368 : 
; 5369 :             while ( lpWrkEntityInstance )

	cmp	DWORD PTR _lpWrkEntityInstance$9393[ebp], 0
	je	SHORT $L9400

; 5371 :                if ( lpWrkEntityInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpWrkEntityInstance$9393[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L9401

; 5372 :                   break;

	jmp	SHORT $L9400
$L9401:

; 5373 : 
; 5374 :                lpWrkEntityInstance = zGETPTR( lpWrkEntityInstance->hParent );

	mov	ecx, DWORD PTR _lpWrkEntityInstance$9393[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$9393[ebp], eax

; 5375 :             }

	jmp	SHORT $L9396
$L9400:

; 5376 : 
; 5377 :             // If we found an instance then we need to skip this guy and his
; 5378 :             // twins because a parent has a previous version.
; 5379 :             if ( lpWrkEntityInstance )

	cmp	DWORD PTR _lpWrkEntityInstance$9393[ebp], 0
	je	SHORT $L9403

; 5381 :                nSkipType = 2;  // Skip all twins.

	mov	WORD PTR _nSkipType$[ebp], 2

; 5382 :                continue;

	jmp	$L9333
$L9403:

; 5387 : 
; 5388 :       // Whew...if we get here then it's OK to copy the src EI to the target
; 5389 :       // OI.  We call ourselves recursively so that we do this all over again.
; 5390 :       if ( fnIncludeEntityAndChildren( lpChildTgtViewEntity,
; 5391 :                                        lpChildTgtViewEntityCsr,
; 5392 :                                        lpSrcEntityInstance,
; 5393 :                                        FALSE,  // don't try to include parent
; 5394 :                                        lpIncludeInfo ) == zCALL_ERROR )

	mov	eax, DWORD PTR _lpIncludeInfo$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpChildTgtViewEntity$[ebp]
	push	eax
	call	_fnIncludeEntityAndChildren@20
	movsx	ecx, ax
	cmp	ecx, -16				; fffffff0H
	jne	SHORT $L9404

; 5396 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9301
$L9404:

; 5398 : 
; 5399 :    } // while ( TRUE )...

	jmp	$L9333
$L9334:

; 5400 : 
; 5401 :    // If we don't need to try to include the parent then return OK.
; 5402 :    if ( bIncludeParent == FALSE )

	mov	edx, DWORD PTR _bIncludeParent$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	jne	SHORT $L9405

; 5403 :       return( 0 );

	xor	ax, ax
	jmp	$L9301
$L9405:

; 5404 : 
; 5405 :    // If the current target view entity doesn't have a next hier then it has
; 5406 :    // no child so there's nothing to include.
; 5407 :    if ( lpTgtViewEntityCsr->hNextHier == 0 )

	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+2], 0
	jne	SHORT $L9406

; 5408 :       return( 0 );

	xor	ax, ax
	jmp	$L9301
$L9406:

; 5409 : 
; 5410 :    // If the source entity instance doesn't have a parent then we're done.
; 5411 :    lpSrcEntityInstance = lpOrigSrcEntityInstance;

	mov	ecx, DWORD PTR _lpOrigSrcEntityInstance$[ebp]
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], ecx

; 5412 :    if ( lpSrcEntityInstance->hParent == 0 )

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [edx+30], 0
	jne	SHORT $L9407

; 5413 :       return( 0 );

	xor	ax, ax
	jmp	$L9301
$L9407:

; 5414 : 
; 5415 :    lpChildTgtViewEntityCsr = zGETPTR( lpTgtViewEntityCsr->hNextHier );

	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildTgtViewEntityCsr$[ebp], eax

; 5416 :    lpChildTgtViewEntity    = zGETPTR( lpChildTgtViewEntityCsr->hViewEntity );

	mov	edx, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildTgtViewEntity$[ebp], eax

; 5417 : 
; 5418 :    // If the level of the child is <= the level of the TgtViewEntity then
; 5419 :    // it really isn't a child.
; 5420 :    if ( lpChildTgtViewEntity->nLevel <= lpTgtViewEntity->nLevel )

	mov	ecx, DWORD PTR _lpChildTgtViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	cmp	edx, ecx
	jg	SHORT $L9410

; 5421 :       return( 0 );

	xor	ax, ax
	jmp	$L9301
$L9410:

; 5422 : 
; 5423 :    lpChildEntityInstance = lpSrcEntityInstance;

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR _lpChildEntityInstance$[ebp], edx

; 5424 :    lpSrcEntityInstance   = zGETPTR( lpSrcEntityInstance->hParent );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 5425 :    lpSrcViewEntity       = zGETPTR( lpSrcEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntity$[ebp], eax

; 5426 :    lpSrcChildViewEntity  = zGETPTR( lpChildEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpChildEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcChildViewEntity$[ebp], eax
$L9415:

; 5427 : 
; 5428 :    while ( lpChildTgtViewEntity->lEREntTok != lpSrcViewEntity->lEREntTok      ||
; 5429 :            lpChildTgtViewEntity->lERRelTok != lpSrcChildViewEntity->lERRelTok ||
; 5430 :            lpChildTgtViewEntity->bRelLink1 == lpSrcChildViewEntity->bRelLink1 ||
; 5431 :            lpChildTgtViewEntityCsr->nLevel != lpTgtViewEntityCsr->nLevel + 1 )

	mov	eax, DWORD PTR _lpChildTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+195]
	cmp	edx, DWORD PTR [ecx+195]
	jne	SHORT $L9417
	mov	eax, DWORD PTR _lpChildTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpSrcChildViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+199]
	cmp	edx, DWORD PTR [ecx+199]
	jne	SHORT $L9417
	mov	eax, DWORD PTR _lpChildTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 28					; 0000001cH
	and	ecx, 1
	mov	edx, DWORD PTR _lpSrcChildViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 28					; 0000001cH
	and	eax, 1
	cmp	ecx, eax
	je	SHORT $L9417
	mov	ecx, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	add	ecx, 1
	cmp	edx, ecx
	je	SHORT $L9416
$L9417:

; 5433 :       lpChildTgtViewEntityCsr = zGETPTR( lpChildTgtViewEntityCsr->hNextHier );

	mov	edx, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildTgtViewEntityCsr$[ebp], eax

; 5434 : 
; 5435 :       // If csr is 0 then there is no match for the parent so just return.
; 5436 :       if ( lpChildTgtViewEntityCsr == 0 )

	cmp	DWORD PTR _lpChildTgtViewEntityCsr$[ebp], 0
	jne	SHORT $L9419

; 5437 :          return( 0 );

	xor	ax, ax
	jmp	SHORT $L9301
$L9419:

; 5438 : 
; 5439 :       lpChildTgtViewEntity = zGETPTR( lpChildTgtViewEntityCsr->hViewEntity );

	mov	ecx, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildTgtViewEntity$[ebp], eax

; 5440 : 
; 5441 :       // If the level of the child is <= the level of the TgtViewEntity then
; 5442 :       // we have reached the end of the children and there's no match.
; 5443 :       if ( lpChildTgtViewEntity->nLevel <= lpTgtViewEntity->nLevel )

	mov	eax, DWORD PTR _lpChildTgtViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	cmp	ecx, eax
	jg	SHORT $L9421

; 5444 :          return( 0 );

	xor	ax, ax
	jmp	SHORT $L9301
$L9421:

; 5445 :    }

	jmp	$L9415
$L9416:

; 5446 : 
; 5447 :    // Copy the parent src EI to the target OI.
; 5448 :    if ( fnIncludeEntityAndChildren( lpChildTgtViewEntity,
; 5449 :                                     lpChildTgtViewEntityCsr,
; 5450 :                                     lpSrcEntityInstance,
; 5451 :                                     TRUE,  // try including the parent as well
; 5452 :                                     lpIncludeInfo ) == zCALL_ERROR )

	mov	ecx, DWORD PTR _lpIncludeInfo$[ebp]
	push	ecx
	push	1
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpChildTgtViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpChildTgtViewEntity$[ebp]
	push	ecx
	call	_fnIncludeEntityAndChildren@20
	movsx	edx, ax
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L9422

; 5454 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L9301
$L9422:

; 5456 : 
; 5457 :    return( 0 );

	xor	ax, ax
$L9301:

; 5458 : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_fnIncludeEntityAndChildren@20 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0DB@JDAG@Source?5view?5entity?5?$DN?5?$CFs?0?5Target?5@ ; `string'
;	COMDAT ??_C@_0DB@JDAG@Source?5view?5entity?5?$DN?5?$CFs?0?5Target?5@
; File C:\10C\A\oe\KZOESOAA.C
_DATA	SEGMENT
??_C@_0DB@JDAG@Source?5view?5entity?5?$DN?5?$CFs?0?5Target?5@ DB 'Source '
	DB	'view entity = %s, Target view entity = %s', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTgtView$ = 8
_lpTgtViewEntity$ = 12
_lpSrcView$ = 16
_lpSrcViewEntity$ = 20
_nPosition$ = 24
_bNewRoot$ = 28
_bMarkIncluded$ = 32
_lpSrcViewOI$ = -72
_lpTgtViewOI$ = -20
_lpSrcViewCsr$ = -12
_lpTgtViewCsr$ = -8
_lpSrcViewEntityCsr$ = -76
_lpTgtViewEntityCsr$ = -28
_lpParentEntityInstance$ = -16
_lpWrkEntityInstance$ = -4
_IncludeInfo$ = -68
_nRC$ = -24
_lpEntityInstance$9463 = -80
_lpTask$9469 = -484
_szMsg$9471 = -480
_lpSrcInstance$9484 = -492
_lpTgtParent$9485 = -488
_lpWorkParentCsr$9497 = -496
_lpPrevVsn$9502 = -500
_lpPrevVsn$9514 = -504
_lpTask$9524 = -508
_lpEI$9532 = -512
_fnIncludeSubobjectFromSubobject PROC NEAR

; 5491 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 512				; 00000200H

; 5492 :    LPVIEWOI          lpSrcViewOI;
; 5493 :    LPVIEWOI          lpTgtViewOI;
; 5494 :    LPVIEWCSR         lpSrcViewCsr;
; 5495 :    LPVIEWCSR         lpTgtViewCsr;
; 5496 :    LPVIEWENTITYCSR   lpSrcViewEntityCsr;
; 5497 :    LPVIEWENTITYCSR   lpTgtViewEntityCsr;
; 5498 :    LPENTITYINSTANCE  lpParentEntityInstance;
; 5499 :    LPENTITYINSTANCE  lpWrkEntityInstance;
; 5500 :    IncludeInfoRecord IncludeInfo;
; 5501 :    zSHORT            nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 5502 : 
; 5503 :    // Get the view cursors for the source and target views.
; 5504 :    lpSrcViewCsr = zGETPTR( lpSrcView->hViewCsr );

	mov	eax, DWORD PTR _lpSrcView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewCsr$[ebp], eax

; 5505 :    lpTgtViewCsr = zGETPTR( lpTgtView->hViewCsr );

	mov	edx, DWORD PTR _lpTgtView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewCsr$[ebp], eax

; 5506 : 
; 5507 :    // Get the view Object Instances for the source and target views.
; 5508 :    lpSrcViewOI = zGETPTR( lpSrcViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewOI$[ebp], eax

; 5509 :    lpTgtViewOI = zGETPTR( lpTgtViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpTgtViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewOI$[ebp], eax

; 5510 : 
; 5511 :    lpSrcViewEntityCsr = zGETPTR( lpSrcViewCsr->hRootViewEntityCsr );

	mov	edx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], eax
$L9454:

; 5512 :    while ( lpSrcViewEntityCsr->nHierNbr != lpSrcViewEntity->nHierNbr )

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+24]
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+217]
	cmp	edx, ecx
	je	SHORT $L9455

; 5513 :       lpSrcViewEntityCsr++;

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	add	edx, 30					; 0000001eH
	mov	DWORD PTR _lpSrcViewEntityCsr$[ebp], edx
	jmp	SHORT $L9454
$L9455:

; 5514 : 
; 5515 :    lpTgtViewEntityCsr = zGETPTR( lpTgtViewCsr->hRootViewEntityCsr );

	mov	eax, DWORD PTR _lpTgtViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewEntityCsr$[ebp], eax
$L9458:

; 5516 :    while ( lpTgtViewEntityCsr->nHierNbr != lpTgtViewEntity->nHierNbr )

	mov	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+24]
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+217]
	cmp	eax, edx
	je	SHORT $L9459

; 5517 :       lpTgtViewEntityCsr++;

	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _lpTgtViewEntityCsr$[ebp], eax
	jmp	SHORT $L9458
$L9459:

; 5518 : 
; 5519 :    // Now that we know we can safely insert the target entity in the
; 5520 :    // target object, check that the source and target objects are
; 5521 :    // compatible for inclusion from one subobject to the other.
; 5522 :    if ( fnValidSubobjectStructureMatch( lpTgtView, lpTgtViewEntity,
; 5523 :                                         lpSrcView,
; 5524 :                                         lpSrcViewEntity, 1 ) < 0 )

	push	1
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	call	_fnValidSubobjectStructureMatch
	add	esp, 20					; 00000014H
	movsx	edx, ax
	test	edx, edx
	jge	SHORT $L9460

; 5526 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9437
$L9460:

; 5528 : 
; 5529 :    // Next, check to make sure that the source entity or any of its
; 5530 :    // linked instances is not already a child of the target's parent.
; 5531 :    // To do this, compare the parents of the source instance and all
; 5532 :    // its linked instances to the parent of the target instance.  If
; 5533 :    // a match is found, issue an error.
; 5534 :    if ( lpTgtViewEntityCsr->hEntityInstance &&
; 5535 :         lpTgtViewEntityCsr->hEntityInstance != UNSET_CSR )

	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	$L9468
	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	cmp	DWORD PTR [ecx+26], 1
	je	$L9468

; 5537 :       LPENTITYINSTANCE lpEntityInstance = zGETPTR( lpTgtViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$9463[ebp], eax

; 5538 : 
; 5539 :       lpParentEntityInstance = zGETPTR( lpEntityInstance->hParent );

	mov	ecx, DWORD PTR _lpEntityInstance$9463[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentEntityInstance$[ebp], eax

; 5540 :       if ( lpParentEntityInstance )

	cmp	DWORD PTR _lpParentEntityInstance$[ebp], 0
	je	$L9468

; 5542 :          if ( fnInstanceChildOfInstanceForRel( zGETPTR( lpSrcViewEntityCsr->hEntityInstance ),
; 5543 :                                                lpParentEntityInstance,
; 5544 :                                                lpTgtViewEntity->lERRelTok ) )

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+199]
	push	ecx
	mov	edx, DWORD PTR _lpParentEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnInstanceChildOfInstanceForRel
	add	esp, 12					; 0000000cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L9468

; 5546 :             LPTASK lpTask = zGETPTR( lpSrcView->hTask );

	mov	eax, DWORD PTR _lpSrcView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$9469[ebp], eax

; 5547 :             zCHAR szMsg[ 400 ];
; 5548 : 
; 5549 :             // "KZOEE129 - "KZOEE129 - Trying to create a relationship (via "
; 5550 :             //             Include, possibly as part of a spawn) that already "
; 5551 :             //             exists.  See trace for more."
; 5552 :             zsprintf( szMsg, "Source view entity = %s, Target view entity = %s",
; 5553 :                       lpSrcViewEntity->szName, lpTgtViewEntity->szName );

	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0DB@JDAG@Source?5view?5entity?5?$DN?5?$CFs?0?5Target?5@ ; `string'
	lea	ecx, DWORD PTR _szMsg$9471[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 5554 :             fnIssueCoreError( lpTask, lpSrcView, 8, 129, 0, szMsg, 0 );

	push	0
	lea	edx, DWORD PTR _szMsg$9471[ebp]
	push	edx
	push	0
	push	129					; 00000081H
	push	8
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$9469[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 5555 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9437
$L9468:

; 5559 : 
; 5560 :    // Ensure that neither the source instance nor the target
; 5561 :    // position are a previous version or have a parent which is a
; 5562 :    // previous version.  A previous versioned parent may exist in the
; 5563 :    // case where a structure is inverted.
; 5564 :    lpWrkEntityInstance = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax
$L9475:

; 5565 : 
; 5566 :    // 3/4/93 - Error changed so it is issued only when the instance
; 5567 :    // has been created under a versioned parent.
; 5568 :    while ( lpWrkEntityInstance->hPrevVsn )

	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	SHORT $L9476

; 5569 :       lpWrkEntityInstance = zGETPTR( lpWrkEntityInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax
	jmp	SHORT $L9475
$L9476:

; 5570 : 
; 5571 :    while ( lpWrkEntityInstance )

	cmp	DWORD PTR _lpWrkEntityInstance$[ebp], 0
	je	SHORT $L9480

; 5573 :       if ( lpWrkEntityInstance->hPrevVsn )

	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	SHORT $L9481

; 5574 :          break;

	jmp	SHORT $L9480
$L9481:

; 5575 : 
; 5576 :       lpWrkEntityInstance = zGETPTR( lpWrkEntityInstance->hParent );

	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax

; 5577 :    }

	jmp	SHORT $L9476
$L9480:

; 5578 : 
; 5579 :    // If a versioned entity instance was found, issue a logic error.
; 5580 :    if ( lpWrkEntityInstance )

	cmp	DWORD PTR _lpWrkEntityInstance$[ebp], 0
	je	$L9523

; 5582 :       LPENTITYINSTANCE lpSrcInstance;
; 5583 :       LPENTITYINSTANCE lpTgtParent;
; 5584 : 
; 5585 :       // We have a source instance which may go away as the result of
; 5586 :       // a cancel, make sure the target parent is in the same version.
; 5587 :       lpSrcInstance = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$9484[ebp], eax
$L9488:

; 5588 :       while ( lpSrcInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpSrcInstance$9484[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L9489

; 5589 :          lpSrcInstance = zGETPTR( lpSrcInstance->hPrevVsn );

	mov	ecx, DWORD PTR _lpSrcInstance$9484[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$9484[ebp], eax
	jmp	SHORT $L9488
$L9489:

; 5590 : 
; 5591 :       while ( lpSrcInstance )

	cmp	DWORD PTR _lpSrcInstance$9484[ebp], 0
	je	SHORT $L9493

; 5593 :          if ( lpSrcInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpSrcInstance$9484[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L9494

; 5594 :             break;

	jmp	SHORT $L9493
$L9494:

; 5595 : 
; 5596 :          lpSrcInstance = zGETPTR( lpSrcInstance->hParent );

	mov	ecx, DWORD PTR _lpSrcInstance$9484[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$9484[ebp], eax

; 5597 :       }

	jmp	SHORT $L9489
$L9493:

; 5598 : 
; 5599 :       // The source instance is versioned, now it is pointing to
; 5600 :       // the root of sources previous version, see if the parent
; 5601 :       // target entity instance is part of the same version, if so
; 5602 :       // then the include can happen, otherwise the include must fail
; 5603 :       // because it may disappear as the result of a cancel call.
; 5604 :       if ( lpSrcInstance && lpTgtViewEntityCsr->hParent )

	cmp	DWORD PTR _lpSrcInstance$9484[ebp], 0
	je	$L9522
	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+10], 0
	je	$L9522

; 5606 :          LPVIEWENTITYCSR lpWorkParentCsr;
; 5607 : 
; 5608 :          lpSrcInstance = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$9484[ebp], eax
$L9500:

; 5609 :          while ( lpSrcInstance )

	cmp	DWORD PTR _lpSrcInstance$9484[ebp], 0
	je	SHORT $L9501

; 5611 :             LPENTITYINSTANCE lpPrevVsn = zGETPTR( lpSrcInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpSrcInstance$9484[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$9502[ebp], eax

; 5612 : 
; 5613 :             if ( lpSrcInstance->u.nInd.bTemporal ||
; 5614 :                  (lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot) )

	mov	edx, DWORD PTR _lpSrcInstance$9484[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9505
	cmp	DWORD PTR _lpPrevVsn$9502[ebp], 0
	je	SHORT $L9504
	mov	ecx, DWORD PTR _lpPrevVsn$9502[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 9
	and	edx, 1
	test	edx, edx
	je	SHORT $L9504
$L9505:

; 5616 :                break;

	jmp	SHORT $L9501
$L9504:

; 5618 : 
; 5619 :             lpSrcInstance = zGETPTR( lpSrcInstance->hParent );

	mov	eax, DWORD PTR _lpSrcInstance$9484[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$9484[ebp], eax

; 5620 :          }

	jmp	SHORT $L9500
$L9501:

; 5621 : 
; 5622 :          lpWorkParentCsr = zGETPTR( lpTgtViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkParentCsr$9497[ebp], eax

; 5623 :          if ( lpWorkParentCsr->hEntityInstance == UNSET_CSR )

	mov	ecx, DWORD PTR _lpWorkParentCsr$9497[ebp]
	cmp	DWORD PTR [ecx+26], 1
	jne	SHORT $L9509

; 5624 :             fnEstablishCursorForView( lpWorkParentCsr );

	mov	edx, DWORD PTR _lpWorkParentCsr$9497[ebp]
	push	edx
	call	_fnEstablishCursorForView
	add	esp, 4
$L9509:

; 5625 : 
; 5626 :          lpTgtParent = zGETPTR( lpWorkParentCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpWorkParentCsr$9497[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtParent$9485[ebp], eax
$L9512:

; 5627 :          while ( lpTgtParent )

	cmp	DWORD PTR _lpTgtParent$9485[ebp], 0
	je	SHORT $L9513

; 5629 :             LPENTITYINSTANCE lpPrevVsn = zGETPTR( lpTgtParent->hPrevVsn );

	mov	edx, DWORD PTR _lpTgtParent$9485[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$9514[ebp], eax

; 5630 : 
; 5631 :             if ( lpTgtParent->u.nInd.bTemporal ||
; 5632 :                  (lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot) )

	mov	ecx, DWORD PTR _lpTgtParent$9485[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9517
	cmp	DWORD PTR _lpPrevVsn$9514[ebp], 0
	je	SHORT $L9516
	mov	eax, DWORD PTR _lpPrevVsn$9514[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9516
$L9517:

; 5634 :                break;

	jmp	SHORT $L9513
$L9516:

; 5636 : 
; 5637 :             lpTgtParent = zGETPTR( lpTgtParent->hParent );

	mov	edx, DWORD PTR _lpTgtParent$9485[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtParent$9485[ebp], eax

; 5638 :          }

	jmp	SHORT $L9512
$L9513:

; 5639 : 
; 5640 :          if ( lpTgtParent == 0 || lpTgtParent != lpSrcInstance )

	cmp	DWORD PTR _lpTgtParent$9485[ebp], 0
	je	SHORT $L9520
	mov	ecx, DWORD PTR _lpTgtParent$9485[ebp]
	cmp	ecx, DWORD PTR _lpSrcInstance$9484[ebp]
	je	SHORT $L9519
$L9520:

; 5641 :             lpSrcInstance = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$9484[ebp], eax

; 5642 :          else

	jmp	SHORT $L9522
$L9519:

; 5643 :             lpSrcInstance = 0;

	mov	DWORD PTR _lpSrcInstance$9484[ebp], 0
$L9522:

; 5645 : 
; 5646 :       if ( lpSrcInstance )

	cmp	DWORD PTR _lpSrcInstance$9484[ebp], 0
	je	SHORT $L9523

; 5648 :          LPTASK lpTask = zGETPTR( lpSrcView->hTask );

	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$9524[ebp], eax

; 5649 :          // "KZOEE133 - Attempt to include an Entity Instance with "
; 5650 :          //             versioned parent"
; 5651 :          //
; 5652 :          //  NOTE!! Message has been changed to
; 5653 :          //
; 5654 :          //  "KZOEE116 - Attempt to include an instance created under
; 5655 :          //  "           a versioned parent"
; 5656 :          //
; 5657 :          fnIssueCoreError( lpTask, lpSrcView, 8, 116, 0,
; 5658 :                            lpSrcViewEntity->szName,
; 5659 :                            lpTgtViewEntity->szName );

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	116					; 00000074H
	push	8
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$9524[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 5660 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9437
$L9523:

; 5663 : 
; 5664 :    // Set up include info.
; 5665 :    IncludeInfo.lpTgtView      = lpTgtView;

	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	mov	DWORD PTR _IncludeInfo$[ebp], ecx

; 5666 :    IncludeInfo.lpTgtViewOI    = lpTgtViewOI;

	mov	edx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	DWORD PTR _IncludeInfo$[ebp+4], edx

; 5667 :    IncludeInfo.lpTgtAllocTask = zGETPTR( lpTgtViewOI->hAllocTask );

	mov	eax, DWORD PTR _lpTgtViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _IncludeInfo$[ebp+8], eax

; 5668 :    IncludeInfo.lpSrcView      = lpSrcView;

	mov	edx, DWORD PTR _lpSrcView$[ebp]
	mov	DWORD PTR _IncludeInfo$[ebp+12], edx

; 5669 :    IncludeInfo.lpSrcViewOI    = lpSrcViewOI;

	mov	eax, DWORD PTR _lpSrcViewOI$[ebp]
	mov	DWORD PTR _IncludeInfo$[ebp+16], eax

; 5670 :    IncludeInfo.lpSrcViewCsr   = lpSrcViewCsr;

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	DWORD PTR _IncludeInfo$[ebp+24], ecx

; 5671 :    IncludeInfo.lpSrcAllocTask = zGETPTR( lpSrcViewOI->hAllocTask );

	mov	edx, DWORD PTR _lpSrcViewOI$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _IncludeInfo$[ebp+20], eax

; 5672 :    IncludeInfo.nVsnLevel      = 0;

	mov	WORD PTR _IncludeInfo$[ebp+28], 0

; 5673 :    IncludeInfo.bFirstEntity   = TRUE;

	mov	BYTE PTR _IncludeInfo$[ebp+30], 1

; 5674 :    IncludeInfo.bNewRoot       = bNewRoot;

	mov	cx, WORD PTR _bNewRoot$[ebp]
	mov	WORD PTR _IncludeInfo$[ebp+31], cx

; 5675 :    IncludeInfo.nPosition      = nPosition;

	mov	dx, WORD PTR _nPosition$[ebp]
	mov	WORD PTR _IncludeInfo$[ebp+35], dx

; 5676 :    IncludeInfo.bMarkIncluded  = bMarkIncluded;

	mov	ax, WORD PTR _bMarkIncluded$[ebp]
	mov	WORD PTR _IncludeInfo$[ebp+33], ax

; 5677 : 
; 5678 :    if ( fnIncludeEntityAndChildren( lpTgtViewEntity,
; 5679 :                                     lpTgtViewEntityCsr,
; 5680 :                                     zGETPTR( lpSrcViewEntityCsr->hEntityInstance ),
; 5681 :                                     TRUE, &IncludeInfo ) == zCALL_ERROR )

	lea	ecx, DWORD PTR _IncludeInfo$[ebp]
	push	ecx
	push	1
	mov	edx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	edx
	call	_fnIncludeEntityAndChildren@20
	movsx	eax, ax
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L9529

; 5683 :       goto EndOfFunction;

	jmp	SHORT $EndOfFunction$9530
$L9529:

; 5685 : 
; 5686 :    // R056357
; 5687 :    // bDerived is checked inside fnSetUpdateIndicator, so don't check it here.
; 5688 :    if ( bMarkIncluded &&
; 5689 :         lpTgtViewEntityCsr->hParent && lpTgtViewEntityCsr->hEntityInstance )

	movsx	ecx, WORD PTR _bMarkIncluded$[ebp]
	test	ecx, ecx
	je	SHORT $L9531
	mov	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+10], 0
	je	SHORT $L9531
	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	SHORT $L9531

; 5691 :       // HH 2001.08.03 use fnSetUpdateIndicator.
; 5692 :       LPENTITYINSTANCE lpEI = zGETPTR( lpTgtViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEI$9532[ebp], eax

; 5693 :       fnSetUpdateIndicator( lpTgtViewOI, lpEI, 0, TRUE, FALSE, FALSE );

	push	0
	push	0
	push	1
	push	0
	mov	eax, DWORD PTR _lpEI$9532[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewOI$[ebp]
	push	ecx
	call	_fnSetUpdateIndicator
	add	esp, 24					; 00000018H
$L9531:

; 5695 : 
; 5696 :    // Now that we have included the source subobject in the target
; 5697 :    // instance, see if we need to spawn a new include because the
; 5698 :    // target instance contains the same structure a second time at
; 5699 :    // the definition level either inverted or not.
; 5700 :    nRC = fnSpawnIncludeSubobject( lpTgtView, lpTgtViewOI,
; 5701 :                                   lpTgtViewEntity, lpTgtViewEntityCsr,
; 5702 :                                   bMarkIncluded );

	mov	dx, WORD PTR _bMarkIncluded$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtViewOI$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	call	_fnSpawnIncludeSubobject
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax
$EndOfFunction$9530:

; 5703 : 
; 5704 : EndOfFunction:
; 5705 : 
; 5706 :    // Reset the cursor for the target entity view children.
; 5707 :    fnResetCursorForViewChildren( lpTgtViewEntityCsr );

	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	ecx
	call	_fnResetCursorForViewChildren
	add	esp, 4

; 5708 : 
; 5709 :    // Simple enough, let's return to caller.
; 5710 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L9437:

; 5711 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnIncludeSubobjectFromSubobject ENDP
_TEXT	ENDS
EXTRN	_fnSetViewToSubobject:NEAR
EXTRN	_fnInstanceVersionRootMatch:NEAR
_TEXT	SEGMENT
_lpTgtView$ = 8
_lpTgtViewEntity$ = 16
_lpTgtViewEntityCsr$ = 20
_bMarkIncluded$ = 24
_lpSrchViewEntity$ = -40
_lpRecursViewEntity$ = -36
_lpWkViewEntity$ = -4
_lpSpawnCsr$ = -32
_lpTgtInstance$ = -12
_lpSrchInstance$ = -24
_lpSrchChild$ = -28
_lpTgtParent$ = -8
_lpSpawnView$ = -20
_nRC$ = -16
_lpViewOI$9587 = -48
_lpViewCsr$9588 = -44
_lpViewOI$9635 = -56
_lpViewCsr$9636 = -52
_fnSpawnIncludeSubobject PROC NEAR

; 5734 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 56					; 00000038H

; 5735 :    LPVIEWENTITY      lpSrchViewEntity;
; 5736 :    LPVIEWENTITY      lpRecursViewEntity;
; 5737 :    LPVIEWENTITY      lpWkViewEntity;
; 5738 :    LPVIEWENTITYCSR   lpSpawnCsr;
; 5739 :    LPENTITYINSTANCE  lpTgtInstance;
; 5740 :    LPENTITYINSTANCE  lpSrchInstance;
; 5741 :    LPENTITYINSTANCE  lpSrchChild;
; 5742 :    LPENTITYINSTANCE  lpTgtParent;
; 5743 :    zVIEW             lpSpawnView;
; 5744 :    zSHORT            nRC;
; 5745 : 
; 5746 :    lpTgtInstance = zGETPTR( lpTgtViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtInstance$[ebp], eax

; 5747 :    lpTgtParent   = zGETPTR( lpTgtInstance->hParent );

	mov	edx, DWORD PTR _lpTgtInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtParent$[ebp], eax

; 5748 : 
; 5749 :    // Can't spawn a ROOT or a derived relationship.
; 5750 :    if ( lpTgtParent == 0 || lpTgtViewEntity->bDerived )

	cmp	DWORD PTR _lpTgtParent$[ebp], 0
	je	SHORT $L9558
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 13					; 0000000dH
	and	edx, 1
	test	edx, edx
	je	SHORT $L9557
$L9558:

; 5751 :       return( 0 );

	xor	ax, ax
	jmp	$L9544
$L9557:

; 5752 : 
; 5753 :    // Spawning pass 1, for every visible linked instance of the entity
; 5754 :    // instance, see if the structure is inverted anywhere and needs
; 5755 :    // to be spawned.
; 5756 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 5757 :    lpSrchInstance = zGETPTR( lpTgtInstance->hNextLinked );

	mov	eax, DWORD PTR _lpTgtInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchInstance$[ebp], eax
$L9561:

; 5758 : 
; 5759 :    // Do pass 1 looking for inverted relationships of the target.
; 5760 :    while ( nRC == 0 && lpSrchInstance && lpSrchInstance != lpTgtInstance )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jne	$L9562
	cmp	DWORD PTR _lpSrchInstance$[ebp], 0
	je	$L9562
	mov	eax, DWORD PTR _lpSrchInstance$[ebp]
	cmp	eax, DWORD PTR _lpTgtInstance$[ebp]
	je	$L9562

; 5762 :       if ( lpSrchInstance->u.nInd.bHidden == FALSE )

	mov	ecx, DWORD PTR _lpSrchInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	$L9573

; 5764 :          lpSrchViewEntity = zGETPTR( lpSrchInstance->hViewEntity );

	mov	eax, DWORD PTR _lpSrchInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchViewEntity$[ebp], eax

; 5765 :          lpRecursViewEntity = lpSrchViewEntity;

	mov	edx, DWORD PTR _lpSrchViewEntity$[ebp]
	mov	DWORD PTR _lpRecursViewEntity$[ebp], edx

; 5766 :          if ( lpSrchViewEntity->bRecursive )

	mov	eax, DWORD PTR _lpSrchViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9568
$L9566:

; 5770 :                lpSrchViewEntity = zGETPTR( lpSrchViewEntity->hParent );

	mov	edx, DWORD PTR _lpSrchViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchViewEntity$[ebp], eax

; 5771 : 
; 5772 :             } while ( lpSrchViewEntity->lEREntTok != lpRecursViewEntity->lEREntTok );

	mov	ecx, DWORD PTR _lpSrchViewEntity$[ebp]
	mov	edx, DWORD PTR _lpRecursViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+195]
	cmp	eax, DWORD PTR [edx+195]
	jne	SHORT $L9566
$L9568:

; 5774 : 
; 5775 :          // See if the linked entity instance has a child entity type
; 5776 :          // which is a non-derived inversion of the target entity type.
; 5777 :          lpWkViewEntity = zGETPTR( lpSrchViewEntity->hNextHier );

	mov	ecx, DWORD PTR _lpSrchViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax
$L9572:

; 5778 :          while ( lpWkViewEntity )

	cmp	DWORD PTR _lpWkViewEntity$[ebp], 0
	je	$L9573

; 5780 :             if ( lpWkViewEntity->nLevel <= lpSrchViewEntity->nLevel )

	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	mov	edx, DWORD PTR _lpSrchViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	cmp	ecx, eax
	jg	SHORT $L9574

; 5782 :                lpWkViewEntity = 0;

	mov	DWORD PTR _lpWkViewEntity$[ebp], 0

; 5783 :                break;

	jmp	$L9573
$L9574:

; 5785 : 
; 5786 :             if ( zGETPTR( lpWkViewEntity->hParent ) == lpSrchViewEntity &&
; 5787 :                  lpWkViewEntity->lERRelTok == lpTgtViewEntity->lERRelTok &&
; 5788 :                  lpWkViewEntity->bRelLink1 != lpTgtViewEntity->bRelLink1 &&
; 5789 :                  fnInstanceVersionRootMatch( lpSrchInstance,
; 5790 :                                              lpTgtInstance ) &&
; 5791 :                  lpWkViewEntity->bDerived == FALSE )

	mov	ecx, DWORD PTR _lpWkViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpSrchViewEntity$[ebp]
	jne	$L9585
	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+199]
	cmp	edx, DWORD PTR [ecx+199]
	jne	$L9585
	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 28					; 0000001cH
	and	ecx, 1
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 28					; 0000001cH
	and	eax, 1
	cmp	ecx, eax
	je	$L9585
	mov	ecx, DWORD PTR _lpTgtInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrchInstance$[ebp]
	push	edx
	call	_fnInstanceVersionRootMatch
	add	esp, 8
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	$L9585
	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 13					; 0000000dH
	and	ecx, 1
	test	ecx, ecx
	jne	$L9585

; 5793 :                // Here we have found an instance which has a child
; 5794 :                // entity type for spawning. Make sure this include
; 5795 :                // has not already been spawned.
; 5796 :                lpSrchChild = zGETPTR( lpTgtParent->hNextLinked );

	mov	edx, DWORD PTR _lpTgtParent$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchChild$[ebp], eax
$L9579:

; 5797 :                while ( lpSrchChild && lpSrchChild != lpTgtParent )

	cmp	DWORD PTR _lpSrchChild$[ebp], 0
	je	SHORT $L9580
	mov	ecx, DWORD PTR _lpSrchChild$[ebp]
	cmp	ecx, DWORD PTR _lpTgtParent$[ebp]
	je	SHORT $L9580

; 5799 :                   if ( zGETPTR( lpSrchChild->hParent ) == lpSrchInstance &&
; 5800 :                        zGETPTR( lpSrchChild->hViewEntity ) == lpWkViewEntity &&
; 5801 :                        lpSrchChild->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpSrchChild$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpSrchInstance$[ebp]
	jne	SHORT $L9583
	mov	ecx, DWORD PTR _lpSrchChild$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpWkViewEntity$[ebp]
	jne	SHORT $L9583
	mov	eax, DWORD PTR _lpSrchChild$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9583

; 5803 :                      break;

	jmp	SHORT $L9580
$L9583:

; 5805 : 
; 5806 :                   lpSrchChild = zGETPTR( lpSrchChild->hNextLinked );

	mov	edx, DWORD PTR _lpSrchChild$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchChild$[ebp], eax

; 5807 :                }

	jmp	SHORT $L9579
$L9580:

; 5808 : 
; 5809 :                // If the spawn has not been done for this inversion, do it now.
; 5810 :                if ( lpSrchChild == 0 || lpSrchChild == lpTgtParent )

	cmp	DWORD PTR _lpSrchChild$[ebp], 0
	je	SHORT $L9586
	mov	ecx, DWORD PTR _lpSrchChild$[ebp]
	cmp	ecx, DWORD PTR _lpTgtParent$[ebp]
	jne	$L9585
$L9586:

; 5812 :                   LPVIEWOI  lpViewOI;
; 5813 :                   LPVIEWCSR lpViewCsr;
; 5814 : 
; 5815 :                   // Get a view to the entity instance which is the
; 5816 :                   // parent for the new spawn
; 5817 :                   lpViewOI    = zGETPTR( lpSrchInstance->hViewOI );

	mov	edx, DWORD PTR _lpSrchInstance$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$9587[ebp], eax

; 5818 :                   lpViewCsr   = zGETPTR( lpViewOI->hFirstViewCsr );

	mov	ecx, DWORD PTR _lpViewOI$9587[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$9588[ebp], eax

; 5819 :                   lpSpawnView = zGETPTR( lpViewCsr->hView );

	mov	eax, DWORD PTR _lpViewCsr$9588[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSpawnView$[ebp], eax

; 5820 :                   CreateViewFromViewForTask( &lpSpawnView, lpSpawnView, 0 );

	push	0
	mov	edx, DWORD PTR _lpSpawnView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpSpawnView$[ebp]
	push	eax
	call	_CreateViewFromViewForTask@12

; 5821 :                   lpSpawnCsr = fnEstablishViewForInstance( lpSpawnView, 0,
; 5822 :                                                            lpSrchInstance );

	mov	ecx, DWORD PTR _lpSrchInstance$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpSpawnView$[ebp]
	push	edx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpSpawnCsr$[ebp], eax

; 5823 :                   if ( lpRecursViewEntity != lpSrchViewEntity )

	mov	eax, DWORD PTR _lpRecursViewEntity$[ebp]
	cmp	eax, DWORD PTR _lpSrchViewEntity$[ebp]
	je	SHORT $L9596

; 5825 :                      fnSetViewToSubobject( lpSpawnView, lpRecursViewEntity,
; 5826 :                                            lpSpawnCsr );

	mov	ecx, DWORD PTR _lpSpawnCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpRecursViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSpawnView$[ebp]
	push	eax
	call	_fnSetViewToSubobject
	add	esp, 12					; 0000000cH
$L9595:

; 5827 :                      while ( zGETPTR( lpSpawnCsr->hViewEntity ) !=
; 5828 :                                                             lpSrchViewEntity )

	mov	ecx, DWORD PTR _lpSpawnCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpSrchViewEntity$[ebp]
	je	SHORT $L9596

; 5830 :                         lpSpawnCsr = zGETPTR( lpSpawnCsr->hParent );

	mov	eax, DWORD PTR _lpSpawnCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSpawnCsr$[ebp], eax

; 5831 :                      }

	jmp	SHORT $L9595
$L9596:

; 5833 : 
; 5834 :                   while ( zGETPTR( lpSpawnCsr->hViewEntity ) !=
; 5835 :                                                             lpWkViewEntity )

	mov	edx, DWORD PTR _lpSpawnCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpWkViewEntity$[ebp]
	je	SHORT $L9601

; 5837 :                      lpSpawnCsr = zGETPTR( lpSpawnCsr->hNextHier );

	mov	ecx, DWORD PTR _lpSpawnCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSpawnCsr$[ebp], eax

; 5838 :                   }

	jmp	SHORT $L9596
$L9601:

; 5839 : 
; 5840 :                   fnEstablishCursorForView( lpSpawnCsr );

	mov	eax, DWORD PTR _lpSpawnCsr$[ebp]
	push	eax
	call	_fnEstablishCursorForView
	add	esp, 4

; 5841 :                   nRC = fnIncludeSubobjectFromSubobject( lpSpawnView,
; 5842 :                                        lpWkViewEntity, lpTgtView,
; 5843 :                                        zGETPTR( lpTgtViewEntity->hParent ),
; 5844 :                                        zPOS_LAST, 0, bMarkIncluded );

	mov	cx, WORD PTR _bMarkIncluded$[ebp]
	push	ecx
	push	0
	push	2
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWkViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSpawnView$[ebp]
	push	eax
	call	_fnIncludeSubobjectFromSubobject
	add	esp, 28					; 0000001cH
	mov	WORD PTR _nRC$[ebp], ax

; 5845 :                   DropView( lpSpawnView );

	mov	ecx, DWORD PTR _lpSpawnView$[ebp]
	push	ecx
	call	_DropView@4
$L9585:

; 5848 : 
; 5849 :             lpWkViewEntity = zGETPTR( lpWkViewEntity->hNextHier );

	mov	edx, DWORD PTR _lpWkViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax

; 5850 :          }

	jmp	$L9572
$L9573:

; 5852 : 
; 5853 :       // Now travel to next linked instance and try again.
; 5854 :       lpSrchInstance = zGETPTR( lpSrchInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpSrchInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchInstance$[ebp], eax

; 5855 :    }

	jmp	$L9561
$L9562:

; 5856 : 
; 5857 :    // Spawning pass 2, for every visible linked instance of the entity parent,
; 5858 :    // see if the same structure exists anywhere and needs to be spawned.
; 5859 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 5860 :    lpSrchInstance = zGETPTR( lpTgtParent->hNextLinked );

	mov	eax, DWORD PTR _lpTgtParent$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchInstance$[ebp], eax
$L9609:

; 5861 : 
; 5862 :    while ( nRC == 0 && lpSrchInstance && lpSrchInstance != lpTgtParent )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jne	$L9610
	cmp	DWORD PTR _lpSrchInstance$[ebp], 0
	je	$L9610
	mov	eax, DWORD PTR _lpSrchInstance$[ebp]
	cmp	eax, DWORD PTR _lpTgtParent$[ebp]
	je	$L9610

; 5864 :       if ( lpSrchInstance->u.nInd.bHidden == FALSE )

	mov	ecx, DWORD PTR _lpSrchInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	$L9621

; 5866 :          lpSrchViewEntity = zGETPTR( lpSrchInstance->hViewEntity );

	mov	eax, DWORD PTR _lpSrchInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchViewEntity$[ebp], eax

; 5867 :          lpRecursViewEntity = lpSrchViewEntity;

	mov	edx, DWORD PTR _lpSrchViewEntity$[ebp]
	mov	DWORD PTR _lpRecursViewEntity$[ebp], edx

; 5868 :          if ( lpSrchViewEntity->bRecursive )

	mov	eax, DWORD PTR _lpSrchViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9616
$L9614:

; 5872 :                lpSrchViewEntity = zGETPTR( lpSrchViewEntity->hParent );

	mov	edx, DWORD PTR _lpSrchViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchViewEntity$[ebp], eax

; 5873 : 
; 5874 :             } while ( lpSrchViewEntity->lEREntTok != lpRecursViewEntity->lEREntTok );

	mov	ecx, DWORD PTR _lpSrchViewEntity$[ebp]
	mov	edx, DWORD PTR _lpRecursViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+195]
	cmp	eax, DWORD PTR [edx+195]
	jne	SHORT $L9614
$L9616:

; 5876 : 
; 5877 :          // See if the linked entity instance has a child entity type
; 5878 :          // which is a non derived inversion of the target entity type.
; 5879 :          lpWkViewEntity = zGETPTR( lpSrchViewEntity->hNextHier );

	mov	ecx, DWORD PTR _lpSrchViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax
$L9620:

; 5880 :          while ( lpWkViewEntity )

	cmp	DWORD PTR _lpWkViewEntity$[ebp], 0
	je	$L9621

; 5882 :             if ( lpWkViewEntity->nLevel <= lpSrchViewEntity->nLevel )

	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	mov	edx, DWORD PTR _lpSrchViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	cmp	ecx, eax
	jg	SHORT $L9622

; 5884 :                lpWkViewEntity = 0;

	mov	DWORD PTR _lpWkViewEntity$[ebp], 0

; 5885 :                break;

	jmp	$L9621
$L9622:

; 5887 : 
; 5888 :             if ( lpWkViewEntity->hParent == zGETHNDL( lpSrchViewEntity ) &&
; 5889 :                  lpWkViewEntity->lERRelTok == lpTgtViewEntity->lERRelTok &&
; 5890 :                  lpWkViewEntity->bRelLink1 == lpTgtViewEntity->bRelLink1 &&
; 5891 :                  fnInstanceVersionRootMatch( lpSrchInstance,
; 5892 :                                              lpTgtParent ) &&
; 5893 :                  lpWkViewEntity->bDerived == FALSE )

	mov	ecx, DWORD PTR _lpSrchViewEntity$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpWkViewEntity$[ebp]
	cmp	DWORD PTR [edx+10], eax
	jne	$L9633
	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+199]
	cmp	edx, DWORD PTR [ecx+199]
	jne	$L9633
	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 28					; 0000001cH
	and	ecx, 1
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 28					; 0000001cH
	and	eax, 1
	cmp	ecx, eax
	jne	$L9633
	mov	ecx, DWORD PTR _lpTgtParent$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrchInstance$[ebp]
	push	edx
	call	_fnInstanceVersionRootMatch
	add	esp, 8
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	$L9633
	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 13					; 0000000dH
	and	ecx, 1
	test	ecx, ecx
	jne	$L9633

; 5895 :                // Here we have found an instance which has a child entity
; 5896 :                // type for spawning. Make sure this include has not already
; 5897 :                // been spawned.
; 5898 :                lpSrchChild = zGETPTR( lpTgtInstance->hNextLinked );

	mov	edx, DWORD PTR _lpTgtInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchChild$[ebp], eax
$L9627:

; 5899 :                while ( lpSrchChild && lpSrchChild != lpTgtInstance )

	cmp	DWORD PTR _lpSrchChild$[ebp], 0
	je	SHORT $L9628
	mov	ecx, DWORD PTR _lpSrchChild$[ebp]
	cmp	ecx, DWORD PTR _lpTgtInstance$[ebp]
	je	SHORT $L9628

; 5901 :                   if ( lpSrchChild->hParent == zGETHNDL( lpSrchInstance ) &&
; 5902 :                        lpSrchChild->hViewEntity == zGETHNDL( lpWkViewEntity ) &&
; 5903 :                        lpSrchChild->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpSrchInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrchChild$[ebp]
	cmp	DWORD PTR [ecx+30], eax
	jne	SHORT $L9631
	mov	edx, DWORD PTR _lpWkViewEntity$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrchChild$[ebp]
	cmp	DWORD PTR [ecx+2], eax
	jne	SHORT $L9631
	mov	edx, DWORD PTR _lpSrchChild$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9631

; 5905 :                      break;

	jmp	SHORT $L9628
$L9631:

; 5907 : 
; 5908 :                   lpSrchChild = zGETPTR( lpSrchChild->hNextLinked );

	mov	ecx, DWORD PTR _lpSrchChild$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchChild$[ebp], eax

; 5909 :                }

	jmp	SHORT $L9627
$L9628:

; 5910 : 
; 5911 :                // If the spawn has not been done for this structure match,
; 5912 :                // do it now.
; 5913 :                if ( lpSrchChild == 0 || lpSrchChild == lpTgtInstance )

	cmp	DWORD PTR _lpSrchChild$[ebp], 0
	je	SHORT $L9634
	mov	eax, DWORD PTR _lpSrchChild$[ebp]
	cmp	eax, DWORD PTR _lpTgtInstance$[ebp]
	jne	$L9633
$L9634:

; 5915 :                   LPVIEWOI  lpViewOI;
; 5916 :                   LPVIEWCSR lpViewCsr;
; 5917 : 
; 5918 :                   lpViewOI    = zGETPTR( lpSrchInstance->hViewOI );

	mov	ecx, DWORD PTR _lpSrchInstance$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$9635[ebp], eax

; 5919 :                   lpViewCsr   = zGETPTR( lpViewOI->hFirstViewCsr );

	mov	eax, DWORD PTR _lpViewOI$9635[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$9636[ebp], eax

; 5920 : 
; 5921 :                   // Get a view to the entity instance which is the parent
; 5922 :                   // for the new spawn.
; 5923 :                   lpSpawnView = zGETPTR( lpViewCsr->hView );

	mov	edx, DWORD PTR _lpViewCsr$9636[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSpawnView$[ebp], eax

; 5924 :                   CreateViewFromViewForTask( &lpSpawnView, lpSpawnView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpSpawnView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpSpawnView$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12

; 5925 :                   lpSpawnCsr = fnEstablishViewForInstance( lpSpawnView, 0,
; 5926 :                                                            lpSrchInstance );

	mov	eax, DWORD PTR _lpSrchInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpSpawnView$[ebp]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpSpawnCsr$[ebp], eax

; 5927 :                   if ( lpRecursViewEntity != lpSrchViewEntity )

	mov	edx, DWORD PTR _lpRecursViewEntity$[ebp]
	cmp	edx, DWORD PTR _lpSrchViewEntity$[ebp]
	je	SHORT $L9644

; 5929 :                      fnSetViewToSubobject( lpSpawnView, lpRecursViewEntity, lpSpawnCsr );

	mov	eax, DWORD PTR _lpSpawnCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpRecursViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSpawnView$[ebp]
	push	edx
	call	_fnSetViewToSubobject
	add	esp, 12					; 0000000cH
$L9643:

; 5930 :                      while ( lpSpawnCsr->hViewEntity != zGETHNDL( lpSrchViewEntity ) )

	mov	eax, DWORD PTR _lpSrchViewEntity$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSpawnCsr$[ebp]
	cmp	DWORD PTR [ecx+14], eax
	je	SHORT $L9644

; 5931 :                         lpSpawnCsr = zGETPTR( lpSpawnCsr->hParent );

	mov	edx, DWORD PTR _lpSpawnCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSpawnCsr$[ebp], eax
	jmp	SHORT $L9643
$L9644:

; 5933 : 
; 5934 :                   while ( lpSpawnCsr->hViewEntity != zGETHNDL( lpWkViewEntity ) )

	mov	ecx, DWORD PTR _lpWkViewEntity$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpSpawnCsr$[ebp]
	cmp	DWORD PTR [edx+14], eax
	je	SHORT $L9649

; 5935 :                      lpSpawnCsr = zGETPTR( lpSpawnCsr->hNextHier );

	mov	eax, DWORD PTR _lpSpawnCsr$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSpawnCsr$[ebp], eax
	jmp	SHORT $L9644
$L9649:

; 5936 : 
; 5937 :                   fnEstablishCursorForView( lpSpawnCsr );

	mov	edx, DWORD PTR _lpSpawnCsr$[ebp]
	push	edx
	call	_fnEstablishCursorForView
	add	esp, 4

; 5938 :                   nRC = fnIncludeSubobjectFromSubobject( lpSpawnView,
; 5939 :                                                          lpWkViewEntity,
; 5940 :                                                          lpTgtView,
; 5941 :                                                          lpTgtViewEntity,
; 5942 :                                                          zPOS_LAST, 0,
; 5943 :                                                          bMarkIncluded );

	mov	ax, WORD PTR _bMarkIncluded$[ebp]
	push	eax
	push	0
	push	2
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSpawnView$[ebp]
	push	ecx
	call	_fnIncludeSubobjectFromSubobject
	add	esp, 28					; 0000001cH
	mov	WORD PTR _nRC$[ebp], ax

; 5944 :                   DropView( lpSpawnView );

	mov	edx, DWORD PTR _lpSpawnView$[ebp]
	push	edx
	call	_DropView@4
$L9633:

; 5947 : 
; 5948 :             lpWkViewEntity = zGETPTR( lpWkViewEntity->hNextHier );

	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax

; 5949 :          }

	jmp	$L9620
$L9621:

; 5951 : 
; 5952 :       // Now travel to next linked instance and try again
; 5953 :       lpSrchInstance = zGETPTR( lpSrchInstance->hNextLinked );

	mov	edx, DWORD PTR _lpSrchInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrchInstance$[ebp], eax

; 5954 :    }

	jmp	$L9609
$L9610:

; 5955 : 
; 5956 :    // We think we're done, return the results
; 5957 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L9544:

; 5958 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnSpawnIncludeSubobject ENDP
_TEXT	ENDS
PUBLIC	??_C@_0P@PINC@Call?5DG?5?$CI?$CD102?$CJ?$AA@	; `string'
PUBLIC	??_C@_0O@NIPO@QuinSoft?5Info?$AA@		; `string'
EXTRN	_SysMessageBox@16:NEAR
;	COMDAT ??_C@_0P@PINC@Call?5DG?5?$CI?$CD102?$CJ?$AA@
; File C:\10C\A\oe\KZOESOAA.C
_DATA	SEGMENT
??_C@_0P@PINC@Call?5DG?5?$CI?$CD102?$CJ?$AA@ DB 'Call DG (#102)', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@NIPO@QuinSoft?5Info?$AA@
_DATA	SEGMENT
??_C@_0O@NIPO@QuinSoft?5Info?$AA@ DB 'QuinSoft Info', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTgtView$ = 8
_lpTgtEntityInstance$ = 12
_lpSrcView$ = 16
_lpSrcEntityInstance$ = 20
_nInvertedParents$ = 24
_lpInvertedSrcEntity$ = 28
_lpAllocTask$ = -8
_nStartLevel$ = -40
_nWkLevel$ = -36
_nWkInvertedParents$ = -24
_bProcessParentsNow$ = -32
_lpTgtViewEntity$ = -60
_lpSrcViewEntity$ = -48
_lpOrigSrcEntityInstance$ = -28
_lpOrigTgtEntityInstance$ = -44
_lpVsnEntityInstance$ = -20
_lpWrkEntityInstance$ = -4
_lpLnkEntityInstance$ = -56
_hOldRecord$ = -52
_hNewRecord$ = -16
_lpTgtViewOI$ = -12
_lpTask$9697 = -64
_lpWk1$9743 = -72
_lpWk2$9744 = -76
_lpParent$9745 = -68
_lpWk1$9765 = -80
_lpWk2$9767 = -84
_hInvertedSrcEntity$9774 = -88
_fnRelinkVsnSubobjectToSubobject PROC NEAR

; 5990 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 88					; 00000058H

; 5991 :    LPTASK           lpAllocTask;
; 5992 :    zSHORT           nStartLevel;
; 5993 :    zSHORT           nWkLevel;
; 5994 :    zSHORT           nWkInvertedParents;
; 5995 :    zBOOL            bProcessParentsNow;
; 5996 :    LPVIEWENTITY     lpTgtViewEntity;
; 5997 :    LPVIEWENTITY     lpSrcViewEntity;
; 5998 :    LPENTITYINSTANCE lpOrigSrcEntityInstance;
; 5999 :    LPENTITYINSTANCE lpOrigTgtEntityInstance;
; 6000 :    LPENTITYINSTANCE lpVsnEntityInstance;
; 6001 :    LPENTITYINSTANCE lpWrkEntityInstance;
; 6002 :    LPENTITYINSTANCE lpLnkEntityInstance;
; 6003 :    zPVOID           hOldRecord;
; 6004 :    zPVOID           hNewRecord;
; 6005 :    LPVIEWOI         lpTgtViewOI;
; 6006 : 
; 6007 :    SysMessageBox( lpSrcView, "QuinSoft Info", "Call DG (#102)", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0P@PINC@Call?5DG?5?$CI?$CD102?$CJ?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0O@NIPO@QuinSoft?5Info?$AA@ ; `string'
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	call	_SysMessageBox@16

; 6008 : 
; 6009 :    nStartLevel = lpTgtEntityInstance->nLevel;

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	mov	WORD PTR _nStartLevel$[ebp], dx

; 6010 :    nWkInvertedParents = nInvertedParents;

	mov	ax, WORD PTR _nInvertedParents$[ebp]
	mov	WORD PTR _nWkInvertedParents$[ebp], ax

; 6011 :    lpOrigSrcEntityInstance = lpSrcEntityInstance;

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR _lpOrigSrcEntityInstance$[ebp], ecx

; 6012 :    lpOrigTgtEntityInstance = lpTgtEntityInstance;

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR _lpOrigTgtEntityInstance$[ebp], edx

; 6013 :    lpTgtViewEntity = zGETPTR( lpTgtEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewEntity$[ebp], eax

; 6014 :    lpSrcViewEntity = zGETPTR( lpSrcEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntity$[ebp], eax

; 6015 :    bProcessParentsNow = 0;

	mov	BYTE PTR _bProcessParentsNow$[ebp], 0

; 6016 :    lpTgtViewOI = zGETPTR( lpTgtEntityInstance->hViewOI );

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewOI$[ebp], eax

; 6017 :    lpAllocTask = zGETPTR( lpTgtViewOI->hAllocTask );

	mov	eax, DWORD PTR _lpTgtViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpAllocTask$[ebp], eax
$L9689:

; 6020 :       while ( lpSrcEntityInstance->hPrevVsn )

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [edx+38], 0
	je	SHORT $L9693

; 6021 :          lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax
	jmp	SHORT $L9689
$L9693:

; 6022 : 
; 6023 :       if ( lpSrcEntityInstance == 0 ||
; 6024 :            fnInstanceKeysMatch( lpSrcEntityInstance, lpTgtEntityInstance ) == 0 )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	SHORT $L9696
	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	eax
	call	_fnInstanceKeysMatch
	add	esp, 8
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L9695
$L9696:

; 6026 :          LPTASK lpTask = zGETPTR( lpTgtView->hTask );

	mov	edx, DWORD PTR _lpTgtView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$9697[ebp], eax

; 6027 :          //  "KZOEE118 - Internal Key error relinking versioned Subobject"
; 6028 :          fnIssueCoreError( lpTask, lpSrcView, 16, 118, 0,
; 6029 :                            lpTgtViewEntity->szName,
; 6030 :                            lpSrcViewEntity->szName );

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	118					; 00000076H
	push	16					; 00000010H
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$9697[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 6031 :          return( -1 );

	or	ax, -1
	jmp	$L9666
$L9695:

; 6033 : 
; 6034 :       if ( fnInstanceLinkedToInstance( lpSrcEntityInstance,
; 6035 :                                        lpTgtEntityInstance ) == 0 )

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	eax
	call	_fnInstanceLinkedToInstance
	add	esp, 8
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	$L9721

; 6037 :          hOldRecord = lpTgtEntityInstance->hPersistRecord;

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+60]
	mov	DWORD PTR _hOldRecord$[ebp], edx

; 6038 :          fnRemoveOtherOI_LinkedInstances( lpTgtEntityInstance,
; 6039 :                                           lpSrcEntityInstance );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	ecx
	call	_fnRemoveOtherOI_LinkedInstances
	add	esp, 8

; 6040 :          fnRelinkInstanceToInstance( lpTgtEntityInstance,
; 6041 :                                      lpSrcEntityInstance );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	call	_fnRelinkInstanceToInstance
	add	esp, 8

; 6042 :          hNewRecord = lpTgtEntityInstance->hPersistRecord;

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+60]
	mov	DWORD PTR _hNewRecord$[ebp], edx

; 6043 :          lpSrcEntityInstance->u.nInd.bPrevVersion = TRUE;

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	or	ch, 1
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 6044 :          lpWrkEntityInstance = lpTgtEntityInstance;

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax
$L9700:

; 6047 :             lpVsnEntityInstance = zGETPTR( lpWrkEntityInstance->hNextVsn );

	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+34]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpVsnEntityInstance$[ebp], eax
$L9705:

; 6048 : 
; 6049 :             // Create a new copy of the record for each later version
; 6050 :             // of the target instance.
; 6051 :             while ( lpVsnEntityInstance )

	cmp	DWORD PTR _lpVsnEntityInstance$[ebp], 0
	je	$L9706

; 6053 :                if ( lpVsnEntityInstance->hPersistRecord == hOldRecord )

	mov	eax, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	cmp	ecx, DWORD PTR _hOldRecord$[ebp]
	jne	SHORT $L9707

; 6054 :                   lpVsnEntityInstance->hPersistRecord = hNewRecord;

	mov	edx, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	eax, DWORD PTR _hNewRecord$[ebp]
	mov	DWORD PTR [edx+60], eax

; 6055 :                else

	jmp	SHORT $L9709
$L9707:

; 6056 :                if ( lpVsnEntityInstance->hPersistRecord != hNewRecord )

	mov	ecx, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+60]
	cmp	edx, DWORD PTR _hNewRecord$[ebp]
	je	SHORT $L9709

; 6058 :                   fnDeleteAttributeRecord(
; 6059 :                         zGETPTR( lpVsnEntityInstance->hViewEntity ),
; 6060 :                         lpVsnEntityInstance, TRUE );

	push	1
	mov	eax, DWORD PTR _lpVsnEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnDeleteAttributeRecord
	add	esp, 12					; 0000000cH

; 6061 :                   lpVsnEntityInstance->hPersistRecord =
; 6062 :                       fnCopyAttributeRecord( lpAllocTask,
; 6063 :                         zGETPTR( lpWrkEntityInstance->hViewEntity ),
; 6064 :                         (zPCHAR) zGETPTR( lpWrkEntityInstance->hPersistRecord ), 1 );

	push	1
	mov	eax, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	ecx, DWORD PTR _lpAllocTask$[ebp]
	push	ecx
	call	_fnCopyAttributeRecord
	add	esp, 16					; 00000010H
	mov	edx, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	DWORD PTR [edx+60], eax
$L9709:

; 6066 : 
; 6067 :                lpLnkEntityInstance =
; 6068 :                                  zGETPTR( lpVsnEntityInstance->hNextLinked );

	mov	eax, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLnkEntityInstance$[ebp], eax
$L9716:

; 6069 :                while ( lpLnkEntityInstance &&
; 6070 :                        lpLnkEntityInstance != lpVsnEntityInstance )

	cmp	DWORD PTR _lpLnkEntityInstance$[ebp], 0
	je	SHORT $L9717
	mov	edx, DWORD PTR _lpLnkEntityInstance$[ebp]
	cmp	edx, DWORD PTR _lpVsnEntityInstance$[ebp]
	je	SHORT $L9717

; 6072 :                   lpLnkEntityInstance->hPersistRecord = lpVsnEntityInstance->hPersistRecord;

	mov	eax, DWORD PTR _lpLnkEntityInstance$[ebp]
	mov	ecx, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+60]
	mov	DWORD PTR [eax+60], edx

; 6073 :                   lpLnkEntityInstance =
; 6074 :                                  zGETPTR( lpLnkEntityInstance->hNextLinked );

	mov	eax, DWORD PTR _lpLnkEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLnkEntityInstance$[ebp], eax

; 6075 :                }

	jmp	SHORT $L9716
$L9717:

; 6076 : 
; 6077 :                lpVsnEntityInstance = zGETPTR( lpVsnEntityInstance->hNextVsn );

	mov	edx, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+34]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpVsnEntityInstance$[ebp], eax

; 6078 :             }

	jmp	$L9705
$L9706:

; 6079 : 
; 6080 :             lpWrkEntityInstance = zGETPTR( lpWrkEntityInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax

; 6082 :                     lpWrkEntityInstance != lpTgtEntityInstance );

	cmp	DWORD PTR _lpWrkEntityInstance$[ebp], 0
	je	SHORT $L9721
	mov	eax, DWORD PTR _lpWrkEntityInstance$[ebp]
	cmp	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	jne	$L9700
$L9721:

; 6084 : 
; 6085 :       lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax

; 6086 :       if ( lpTgtEntityInstance == 0 ||
; 6087 :            lpTgtEntityInstance->nLevel <= nStartLevel )

	cmp	DWORD PTR _lpTgtEntityInstance$[ebp], 0
	je	SHORT $L9724
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	cmp	ecx, edx
	jg	SHORT $L9723
$L9724:

; 6089 :          break;

	jmp	$L9690
$L9723:

; 6093 :          while ( lpTgtEntityInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L9728

; 6094 :             lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hPrevVsn );

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax
	jmp	SHORT $L9723
$L9728:

; 6095 : 
; 6096 :          if ( lpTgtEntityInstance->u.nInd.bHidden )

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9740

; 6098 :             nWkLevel = lpTgtEntityInstance->nLevel;

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ax, WORD PTR [edx+58]
	mov	WORD PTR _nWkLevel$[ebp], ax
$L9731:

; 6101 :                lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax

; 6103 :                        lpTgtEntityInstance->nLevel > nWkLevel );

	cmp	DWORD PTR _lpTgtEntityInstance$[ebp], 0
	je	SHORT $L9735
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nWkLevel$[ebp]
	cmp	ecx, edx
	jg	SHORT $L9731
$L9735:

; 6104 : 
; 6105 :             if ( lpTgtEntityInstance == 0 ||
; 6106 :                  lpTgtEntityInstance->nLevel <= nStartLevel )

	cmp	DWORD PTR _lpTgtEntityInstance$[ebp], 0
	je	SHORT $L9737
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	cmp	ecx, edx
	jg	SHORT $L9736
$L9737:

; 6108 :                break;

	jmp	$L9690
$L9736:

; 6110 : 
; 6111 :             while ( lpTgtEntityInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L9740

; 6112 :                lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hPrevVsn );

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax
	jmp	SHORT $L9736
$L9740:

; 6115 : 
; 6116 :       if ( nWkInvertedParents && bProcessParentsNow == FALSE )

	movsx	eax, WORD PTR _nWkInvertedParents$[ebp]
	test	eax, eax
	je	$L9749
	mov	ecx, DWORD PTR _bProcessParentsNow$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	$L9749

; 6118 :          LPVIEWENTITY     lpWk1, lpWk2;
; 6119 :          LPENTITYINSTANCE lpParent;
; 6120 : 
; 6121 :          // Determine if it is time to process the parents by checking the
; 6122 :          // Target Entity instance to see if the target instance is
; 6123 :          // an instance of the original sources parent
; 6124 :          lpWk1    = zGETPTR( lpTgtEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk1$9743[ebp], eax

; 6125 :          lpParent = zGETPTR( lpOrigSrcEntityInstance->hParent );

	mov	ecx, DWORD PTR _lpOrigSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$9745[ebp], eax

; 6126 :          lpWk2    = zGETPTR( lpParent->hViewEntity );

	mov	eax, DWORD PTR _lpParent$9745[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk2$9744[ebp], eax

; 6127 :          if ( lpTgtEntityInstance->nLevel == ( nStartLevel + 1 ) &&
; 6128 :               lpWk1->lEREntTok == lpWk2->lEREntTok &&
; 6129 :               lpWk1->lERRelTok == lpSrcViewEntity->lERRelTok &&
; 6130 :               lpWk1->bRelLink1 != lpSrcViewEntity->bRelLink1 )

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nStartLevel$[ebp]
	add	ecx, 1
	cmp	eax, ecx
	jne	SHORT $L9749
	mov	edx, DWORD PTR _lpWk1$9743[ebp]
	mov	eax, DWORD PTR _lpWk2$9744[ebp]
	mov	ecx, DWORD PTR [edx+195]
	cmp	ecx, DWORD PTR [eax+195]
	jne	SHORT $L9749
	mov	edx, DWORD PTR _lpWk1$9743[ebp]
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	ecx, DWORD PTR [edx+199]
	cmp	ecx, DWORD PTR [eax+199]
	jne	SHORT $L9749
	mov	edx, DWORD PTR _lpWk1$9743[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 28					; 0000001cH
	and	eax, 1
	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 28					; 0000001cH
	and	edx, 1
	cmp	eax, edx
	je	SHORT $L9749

; 6132 :             bProcessParentsNow = TRUE;

	mov	BYTE PTR _bProcessParentsNow$[ebp], 1
$L9749:

; 6135 : 
; 6136 :       if ( nWkInvertedParents && bProcessParentsNow )

	movsx	eax, WORD PTR _nWkInvertedParents$[ebp]
	test	eax, eax
	je	SHORT $L9750
	mov	ecx, DWORD PTR _bProcessParentsNow$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9750

; 6138 :          lpSrcEntityInstance = zGETPTR( lpOrigSrcEntityInstance->hParent );

	mov	edx, DWORD PTR _lpOrigSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 6139 :          nWkInvertedParents--;

	mov	cx, WORD PTR _nWkInvertedParents$[ebp]
	sub	cx, 1
	mov	WORD PTR _nWkInvertedParents$[ebp], cx

; 6141 :       else

	jmp	$L9755
$L9750:

; 6145 :             lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 6146 :             if ( lpSrcEntityInstance == 0 )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	jne	SHORT $L9757

; 6147 :                break;

	jmp	SHORT $L9755
$L9757:

; 6148 : 
; 6149 :             if ( lpSrcEntityInstance->u.nInd.bHidden )

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	SHORT $L9758

; 6151 :                nWkLevel = lpSrcEntityInstance->nLevel;

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR _nWkLevel$[ebp], cx
$L9759:

; 6154 :                   lpSrcEntityInstance =
; 6155 :                                  zGETPTR( lpSrcEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 6157 :                           lpSrcEntityInstance->nLevel > nWkLevel );

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	SHORT $L9763
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	movsx	eax, WORD PTR _nWkLevel$[ebp]
	cmp	edx, eax
	jg	SHORT $L9759
$L9763:

; 6159 :             else

	jmp	SHORT $L9769
$L9758:

; 6161 :                LPVIEWENTITY lpWk1 =
; 6162 :                               zGETPTR( lpSrcEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk1$9765[ebp], eax

; 6163 :                LPVIEWENTITY lpWk2 =
; 6164 :                               zGETPTR( lpTgtEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk2$9767[ebp], eax

; 6165 : 
; 6166 :                if ( lpWk1->lEREntTok == lpWk2->lEREntTok )

	mov	edx, DWORD PTR _lpWk1$9765[ebp]
	mov	eax, DWORD PTR _lpWk2$9767[ebp]
	mov	ecx, DWORD PTR [edx+195]
	cmp	ecx, DWORD PTR [eax+195]
	jne	SHORT $L9769

; 6168 :                   break;

	jmp	SHORT $L9755
$L9769:

; 6171 :          }

	jmp	$L9750
$L9755:

; 6173 :    }

	jmp	$L9689
$L9690:

; 6174 : 
; 6175 :    if ( lpInvertedSrcEntity )

	cmp	DWORD PTR _lpInvertedSrcEntity$[ebp], 0
	je	$L9778

; 6177 :       // If the source structure inverts the target then we need to find the
; 6178 :       // instance in the source and drop it.
; 6179 :       lpSrcEntityInstance = zGETPTR( lpOrigSrcEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpOrigSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 6180 :       lpTgtEntityInstance = zGETPTR( lpOrigTgtEntityInstance->hParent );

	mov	ecx, DWORD PTR _lpOrigTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax

; 6181 :       if ( lpTgtEntityInstance )

	cmp	DWORD PTR _lpTgtEntityInstance$[ebp], 0
	je	$L9778

; 6183 :          LPVIEWENTITY hInvertedSrcEntity = zGETHNDL( lpInvertedSrcEntity );

	mov	eax, DWORD PTR _lpInvertedSrcEntity$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hInvertedSrcEntity$9774[ebp], eax
$L9777:

; 6184 : 
; 6185 :          while ( lpSrcEntityInstance &&
; 6186 :                  lpSrcEntityInstance->nLevel > lpOrigSrcEntityInstance->nLevel )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	$L9778
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	mov	eax, DWORD PTR _lpOrigSrcEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	cmp	edx, ecx
	jle	$L9778

; 6188 :             if ( lpSrcEntityInstance->hViewEntity == hInvertedSrcEntity &&
; 6189 :                  lpSrcEntityInstance->u.nInd.bHidden == FALSE &&
; 6190 :                  fnInstanceKeysMatch( lpTgtEntityInstance,
; 6191 :                                       lpSrcEntityInstance ) )

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	cmp	eax, DWORD PTR _hInvertedSrcEntity$9774[ebp]
	jne	SHORT $L9779
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9779
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	ecx
	call	_fnInstanceKeysMatch
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L9779

; 6193 :                nInvertedParents =
; 6194 :                    fnValidSubobjectStructureMatch( lpSrcView,
; 6195 :                             lpInvertedSrcEntity, lpTgtView,
; 6196 :                             zGETPTR( lpTgtEntityInstance->hViewEntity ), 0 );

	push	0
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	edx, DWORD PTR _lpTgtView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpInvertedSrcEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	call	_fnValidSubobjectStructureMatch
	add	esp, 20					; 00000014H
	mov	WORD PTR _nInvertedParents$[ebp], ax

; 6197 :                fnRelinkVsnSubobjectToSubobject( lpSrcView,
; 6198 :                                                 lpSrcEntityInstance,
; 6199 :                                                 lpTgtView,
; 6200 :                                                 lpTgtEntityInstance,
; 6201 :                                                 nInvertedParents, 0 );

	push	0
	mov	dx, WORD PTR _nInvertedParents$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcView$[ebp]
	push	eax
	call	_fnRelinkVsnSubobjectToSubobject
	add	esp, 24					; 00000018H

; 6202 :                break;

	jmp	SHORT $L9778
$L9779:

; 6204 : 
; 6205 :             lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 6206 :          }

	jmp	$L9777
$L9778:

; 6209 : 
; 6210 :    return( 0 );  // SUCCESS

	xor	ax, ax
$L9666:

; 6211 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnRelinkVsnSubobjectToSubobject ENDP
_TEXT	ENDS
PUBLIC	_SubobjectVersionUpdated@12
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_bRootOnly$ = 16
_lpCurrentTask$ = -32
_lpViewEntity$ = -16
_lpViewEntityCsr$ = -28
_lpEntityInstance$ = -12
_lpPrevVsn$ = -20
_nUpdated$ = -24
_nUpdatedFile$ = -4
_nRC$ = -8
_lpParent$9805 = -36
_SubobjectVersionUpdated@12 PROC NEAR

; 6236 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 6237 :    LPTASK           lpCurrentTask;
; 6238 :    LPVIEWENTITY     lpViewEntity;
; 6239 :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 6240 :    LPENTITYINSTANCE lpEntityInstance;
; 6241 :    LPENTITYINSTANCE lpPrevVsn;
; 6242 :    zSHORT           nUpdated = 0;

	mov	WORD PTR _nUpdated$[ebp], 0

; 6243 :    zSHORT           nUpdatedFile = 0;

	mov	WORD PTR _nUpdatedFile$[ebp], 0

; 6244 :    zSHORT           nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 6245 : 
; 6246 :    // Validate parameters
; 6247 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 6248 :                                       &lpViewEntity,
; 6249 :                                       &lpViewEntityCsr,
; 6250 :                                       iSubobjectVersionUpdated,
; 6251 :                                       lpView,
; 6252 :                                       cpcEntityName, 0 ) )

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	134					; 00000086H
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateInstanceParameters
	add	esp, 28					; 0000001cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L9797

; 6254 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9788
$L9797:

; 6256 : 
; 6257 :    // Get instance on which to start.
; 6258 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L9800:

; 6259 : 
; 6260 :    // Go to the latest version.
; 6261 :    while ( lpEntityInstance->hNextVsn )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [edx+34], 0
	je	SHORT $L9801

; 6262 :       lpEntityInstance = zGETPTR( lpEntityInstance->hNextVsn );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
	jmp	SHORT $L9800
$L9801:

; 6263 : 
; 6264 :    // If the entity instance is not versioned, return unless it's not
; 6265 :    // created under a parent which IS versioned.
; 6266 :    lpPrevVsn = zGETPTR( lpEntityInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$[ebp], eax

; 6267 :    if ( lpEntityInstance->u.nInd.bTemporal == FALSE && lpPrevVsn == 0 )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9809
	cmp	DWORD PTR _lpPrevVsn$[ebp], 0
	jne	SHORT $L9809

; 6269 :       // Entity instance is NOT versioned.
; 6270 :       LPENTITYINSTANCE lpParent = zGETPTR( lpEntityInstance->hParent );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$9805[ebp], eax

; 6271 :       if ( lpEntityInstance->u.nInd.bCreated && lpParent &&
; 6272 :            (lpParent->hPrevVsn || lpParent->u.nInd.bTemporal) )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	je	SHORT $L9807
	cmp	DWORD PTR _lpParent$9805[ebp], 0
	je	SHORT $L9807
	mov	ecx, DWORD PTR _lpParent$9805[ebp]
	cmp	DWORD PTR [ecx+38], 0
	jne	SHORT $L9808
	mov	edx, DWORD PTR _lpParent$9805[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	test	eax, eax
	je	SHORT $L9807
$L9808:

; 6277 :       else

	jmp	SHORT $L9809
$L9807:

; 6279 :          // Not versioned, and the exception does not apply ... return.
; 6280 :          fnOperationReturn( iSubobjectVersionUpdated, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	134					; 00000086H
	call	_fnOperationReturn
	add	esp, 8

; 6281 :          return( 0 );

	xor	ax, ax
	jmp	SHORT $L9788
$L9809:

; 6284 : 
; 6285 :    if ( bRootOnly )

	movsx	edx, WORD PTR _bRootOnly$[ebp]
	test	edx, edx
	je	SHORT $L9810

; 6287 :       if ( lpEntityInstance->u.nInd.bVersionUpdFile )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 25					; 00000019H
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9811

; 6288 :          nUpdatedFile = 1;

	mov	WORD PTR _nUpdatedFile$[ebp], 1
$L9811:

; 6289 : 
; 6290 :       if ( lpEntityInstance->u.nInd.bVersionUpdated )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 24					; 00000018H
	and	eax, 1
	test	eax, eax
	je	SHORT $L9812

; 6291 :          nUpdated = 1;

	mov	WORD PTR _nUpdated$[ebp], 1
$L9812:

; 6293 :    else

	jmp	SHORT $L9813
$L9810:

; 6295 :       fnGetResetUpdFlags( lpEntityInstance, &nUpdated, &nUpdatedFile, 0 );

	push	0
	lea	ecx, DWORD PTR _nUpdatedFile$[ebp]
	push	ecx
	lea	edx, DWORD PTR _nUpdated$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	call	_fnGetResetUpdFlags
	add	esp, 16					; 00000010H
$L9813:

; 6297 : 
; 6298 : 
; 6299 :    if ( nUpdated )

	movsx	ecx, WORD PTR _nUpdated$[ebp]
	test	ecx, ecx
	je	SHORT $L9814

; 6300 :       nRC = 2;

	mov	WORD PTR _nRC$[ebp], 2

; 6301 :    else

	jmp	SHORT $L9816
$L9814:

; 6302 :    if ( nUpdatedFile )

	movsx	edx, WORD PTR _nUpdatedFile$[ebp]
	test	edx, edx
	je	SHORT $L9816

; 6303 :       nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L9816:

; 6304 : 
; 6305 :    fnOperationReturn( iSubobjectVersionUpdated, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	134					; 00000086H
	call	_fnOperationReturn
	add	esp, 8

; 6306 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L9788:

; 6307 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SubobjectVersionUpdated@12 ENDP
_lpStartInstance$ = 8
_pUpdated$ = 12
_pUpdatedFile$ = 16
_nDoReset$ = 20
_lpInstance$ = -4
_nStartLevel$ = -8
_fnGetResetUpdFlags PROC NEAR

; 6316 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 6317 : 
; 6318 :    LPENTITYINSTANCE lpInstance = lpStartInstance;

	mov	eax, DWORD PTR _lpStartInstance$[ebp]
	mov	DWORD PTR _lpInstance$[ebp], eax

; 6319 :    zSHORT nStartLevel = lpStartInstance->nLevel;

	mov	ecx, DWORD PTR _lpStartInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	mov	WORD PTR _nStartLevel$[ebp], dx
$L9828:

; 6323 :       if ( lpInstance->u.nInd.bVersionUpdFile )

	mov	eax, DWORD PTR _lpInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 25					; 00000019H
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9831

; 6324 :          *pUpdatedFile = 1;

	mov	edx, DWORD PTR _pUpdatedFile$[ebp]
	mov	WORD PTR [edx], 1
$L9831:

; 6325 : 
; 6326 :       if ( lpInstance->u.nInd.bVersionUpdated )

	mov	eax, DWORD PTR _lpInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 24					; 00000018H
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9832

; 6327 :          *pUpdated = 1;

	mov	edx, DWORD PTR _pUpdated$[ebp]
	mov	WORD PTR [edx], 1
$L9832:

; 6328 : 
; 6329 :       if ( nDoReset )

	movsx	eax, WORD PTR _nDoReset$[ebp]
	test	eax, eax
	je	SHORT $L9833

; 6331 :          lpInstance->u.nInd.bVersionUpdated = 0;

	mov	ecx, DWORD PTR _lpInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	and	edx, -16777217				; feffffffH
	mov	eax, DWORD PTR _lpInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 6332 :          lpInstance->u.nInd.bVersionUpdFile = 0;

	mov	ecx, DWORD PTR _lpInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	and	edx, -33554433				; fdffffffH
	mov	eax, DWORD PTR _lpInstance$[ebp]
	mov	DWORD PTR [eax+6], edx
$L9833:

; 6334 : 
; 6335 :       lpInstance = zGETPTR( lpInstance->hNextHier );

	mov	ecx, DWORD PTR _lpInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpInstance$[ebp], eax

; 6336 : 
; 6337 :    } while ( lpInstance && lpInstance->nLevel > nStartLevel );

	cmp	DWORD PTR _lpInstance$[ebp], 0
	je	SHORT $L9835
	mov	eax, DWORD PTR _lpInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	cmp	ecx, edx
	jg	$L9828
$L9835:

; 6338 : 
; 6339 :    return( 0 );

	xor	ax, ax

; 6340 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnGetResetUpdFlags ENDP
_TEXT	ENDS
END
