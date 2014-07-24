	TITLE	C:\10C\A\oe\KZOEEIAA.C
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
;	COMDAT ??_C@_0BM@PPJM@Entity?5Creation?5not?5allowed?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@EFIC@Entity?5Deletion?5not?5allowed?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EJ@KNBD@Can?8t?5delete?5entity?5?$CFs?5because?5o@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DC@CMIH@Entity?5Deletion?5not?5allowed?5?9?5ch@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@HDIE@Entity?5Exclusion?5not?5allowed?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@OGJL@Source?5Entity?5not?5includeble?$AA@
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
;	COMDAT ??_C@_07MBAF@?5?5?5?$DN?$DN?$DO?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@PONF@Out?9of?9sync?5error?4?5Source?5LOD?5?$DN?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@POIA@SyncER?1LOD?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@IMEJ@?$FLWorkstation?$FN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DH@HEFK@LODs?5are?5potentially?5out?5of?5sync@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@MFFF@Entity?5Instance?5key?5is?5NULL?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@KEHK@Internal?5Zeidon?5Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EL@COED@fnCreateEntity?5ERROR?5locating?5Re@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DI@HOGP@KZOEE119?5?9?5Invalid?5View?0?5View?5is@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@MCMH@KZOEE253?5?9?5Entity?5cursor?5is?5NULL@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DG@FPJO@KZOEE252?5?9?5Root?5of?5view?5has?5been@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@FCJI@?$CIDGC?$CJ?5View?5?5?5Cursor?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@HFKD@?$CIDGC?$CJ?5Entity?5Cursor?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@ODME@?$CIDGC?$CJ?5Entity?5Instance?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CF@ICNK@Invalid?5Table?5ID?5for?5entity?5inst@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03FMHJ@DGC?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DD@MCKE@KZOEE254?5?9?5Entity?5cursor?5is?5unde@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EE@GENJ@KZOEE255?5?9?5Attempt?5to?5update?5a?5p@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EG@IMAH@KZOEE264?5?9?5Invalid?5Operation?5for@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@JIGI@?5dks?52007?404?423?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CC@IILP@RemoveAllTemporal?5skipping?5break@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_fnInitAttributes@8
EXTRN	_StoreStringInRecord@16:NEAR
EXTRN	_g_pfnGetPtr:DWORD
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntity$ = 12
_lpViewAttrib$ = -4
_fnInitAttributes@8 PROC NEAR

; 105  : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 106  :    LPVIEWATTRIB lpViewAttrib;
; 107  : 
; 108  :    if ( lpViewEntity->bAttrInit == FALSE )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 17					; 00000011H
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7528

; 109  :       return;

	jmp	SHORT $L7533
$L7528:

; 110  : 
; 111  :    for ( lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );
; 112  :          lpViewAttrib;
; 113  :          lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib ) )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+179]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	jmp	SHORT $L7531
$L7532:
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
$L7531:
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	SHORT $L7533

; 115  :       if ( lpViewAttrib->hInit )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	cmp	DWORD PTR [eax+209], 0
	je	SHORT $L7534

; 117  :          StoreStringInRecord( lpView, lpViewEntity, lpViewAttrib,
; 118  :                               zGETPTR( lpViewAttrib->hInit ) );

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+209]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_StoreStringInRecord@16
$L7534:

; 120  :    }

	jmp	SHORT $L7532
$L7533:

; 121  : 
; 122  : } // fnInitAttributes

	mov	esp, ebp
	pop	ebp
	ret	8
_fnInitAttributes@8 ENDP
_TEXT	ENDS
PUBLIC	_CheckExistenceOfEntity@8
EXTRN	_fnOperationCall:NEAR
EXTRN	_fnOperationReturn:NEAR
EXTRN	_fnValidViewEntity@16:NEAR
EXTRN	_fnEstablishCursorForView:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpViewOI$ = -24
_lpViewCsr$ = -4
_lpViewEntity$ = -16
_lpViewEntityCsr$ = -32
_lpEntityInstance$ = -12
_lpScanEntityInstance$ = -20
_lpCurrentTask$ = -28
_nRC$ = -8
_CheckExistenceOfEntity@8 PROC NEAR

; 143  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 144  :    LPVIEWOI          lpViewOI;
; 145  :    LPVIEWCSR         lpViewCsr;
; 146  :    LPVIEWENTITY      lpViewEntity;
; 147  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 148  :    LPENTITYINSTANCE  lpEntityInstance;
; 149  :    LPENTITYINSTANCE  lpScanEntityInstance;
; 150  :    LPTASK            lpCurrentTask;
; 151  :    zSHORT            nRC;
; 152  : 
; 153  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 154  :    if ( (lpCurrentTask = fnOperationCall( iCheckExistenceOfEntity, lpView,
; 155  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	100					; 00000064H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7549

; 157  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7540
$L7549:

; 159  : 
; 160  :    // Set lpViewCsr
; 161  :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 162  :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 163  : 
; 164  :    // Validate that the entity exists.
; 165  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 166  :                                            lpView, cpcEntityName, 0 )) == 0 )

	push	0
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7552

; 168  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7540
$L7552:

; 170  : 
; 171  :    nRC = zCURSOR_NULL;  // default RC to -3 (NULL Instance)

	mov	WORD PTR _nRC$[ebp], -3			; fffffffdH

; 172  : 
; 173  :    // If object instance is not empty, check for entity.
; 174  :    if ( lpViewOI->hRootEntityInstance )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	$L7572

; 176  :       if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 1
	jne	SHORT $L7555

; 177  :          fnEstablishCursorForView( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnEstablishCursorForView
	add	esp, 4
$L7555:

; 178  : 
; 179  :       lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 180  : 
; 181  :       // if the cursor needs to be established, do it now
; 182  :       if ( lpEntityInstance )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	$L7572

; 184  :          if ( lpEntityInstance->u.nInd.bHidden )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	$L7558

; 186  :             // The EntityInstance is hidden, we start off assuming
; 187  :             // that all twins are hidden, scan 'forward' for
; 188  :             // any twin occurrence that is not hidden, if none are
; 189  :             // found then scan 'backward' for any twin occurrence
; 190  :             // that is not hidden.  If an occurrence is found that
; 191  :             // is not hidden, the return code is set to indicate
; 192  :             // that the cursor is undefined.
; 193  : 
; 194  :             // default indicates that there are no entity instances
; 195  :             nRC = zCURSOR_NULL;

	mov	WORD PTR _nRC$[ebp], -3			; fffffffdH

; 196  :             lpScanEntityInstance = zGETPTR( lpEntityInstance->hNextTwin );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanEntityInstance$[ebp], eax
$L7561:

; 197  :             while ( lpScanEntityInstance )

	cmp	DWORD PTR _lpScanEntityInstance$[ebp], 0
	je	SHORT $L7562

; 199  :                if ( lpScanEntityInstance->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpScanEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7563

; 201  :                   nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH

; 202  :                   break;

	jmp	SHORT $L7562
$L7563:

; 204  : 
; 205  :                lpScanEntityInstance = zGETPTR( lpScanEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpScanEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanEntityInstance$[ebp], eax

; 206  :             }

	jmp	SHORT $L7561
$L7562:

; 207  : 
; 208  :             if ( nRC == zCURSOR_NULL )

	movsx	eax, WORD PTR _nRC$[ebp]
	cmp	eax, -3					; fffffffdH
	jne	SHORT $L7569

; 210  :                lpScanEntityInstance = zGETPTR( lpEntityInstance->hPrevTwin );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanEntityInstance$[ebp], eax
$L7568:

; 211  :                while ( lpScanEntityInstance )

	cmp	DWORD PTR _lpScanEntityInstance$[ebp], 0
	je	SHORT $L7569

; 213  :                   if ( lpScanEntityInstance->u.nInd.bHidden == FALSE )

	mov	eax, DWORD PTR _lpScanEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7570

; 215  :                      nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH

; 216  :                      break;

	jmp	SHORT $L7569
$L7570:

; 218  : 
; 219  :                   lpScanEntityInstance = zGETPTR( lpScanEntityInstance->hPrevTwin );

	mov	edx, DWORD PTR _lpScanEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpScanEntityInstance$[ebp], eax

; 220  :                }

	jmp	SHORT $L7568
$L7569:

; 223  :          else

	jmp	SHORT $L7572
$L7558:

; 224  :             nRC = zCURSOR_SET;

	mov	WORD PTR _nRC$[ebp], 0
$L7572:

; 270  : 
; 271  :    fnOperationReturn( iCheckExistenceOfEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	100					; 00000064H
	call	_fnOperationReturn
	add	esp, 8

; 272  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7540:

; 273  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_CheckExistenceOfEntity@8 ENDP
_TEXT	ENDS
PUBLIC	_CheckEntityInView@8
EXTRN	_strcmp:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -24
_lpViewCsr$ = -4
_lpViewOD$ = -8
_lpViewEntity$ = -12
_lpViewEntityCsr$ = -20
_nStartLevel$ = -16
_lpSearchViewEntityCsr$7591 = -28
_lInputTok$7598 = -32
_CheckEntityInView@8 PROC NEAR

; 294  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H

; 295  :    LPTASK            lpCurrentTask;
; 296  :    LPVIEWCSR         lpViewCsr;
; 297  :    LPVIEWOD          lpViewOD;
; 298  :    LPVIEWENTITY      lpViewEntity;
; 299  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 300  :    zSHORT            nStartLevel;
; 301  : 
; 302  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 303  :    if ( (lpCurrentTask = fnOperationCall( iCheckEntityInView, lpView,
; 304  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	132					; 00000084H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7584

; 306  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7577
$L7584:

; 308  : 
; 309  :    // Get the view csr for the view.
; 310  :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 311  : 
; 312  :    // Get the view object definition for the view
; 313  :    lpViewOD = zGETPTR( lpView->hViewOD );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 314  : 
; 315  :    // Validate that the entity exists.
; 316  :    lpViewEntity    = zGETPTR( lpViewOD->hFirstOD_Entity );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	mov	eax, DWORD PTR [edx+224]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 317  :    lpViewEntityCsr = zGETPTR( lpViewCsr->hRootViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 318  : 
; 319  :    // If the root cursor is not the first cursor, skip ViewEntities
; 320  :    // until we get to the entity matching the root cursor.
; 321  :    if ( lpViewEntityCsr != zGETPTR( lpViewCsr->hFirstOD_EntityCsr ) )

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	DWORD PTR _lpViewEntityCsr$[ebp], eax
	je	SHORT $L7595

; 323  :       LPVIEWENTITYCSR lpSearchViewEntityCsr;
; 324  : 
; 325  :       lpSearchViewEntityCsr = zGETPTR( lpViewCsr->hFirstOD_EntityCsr );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntityCsr$7591[ebp], eax
$L7594:

; 326  :       while ( lpSearchViewEntityCsr != lpViewEntityCsr )

	mov	ecx, DWORD PTR _lpSearchViewEntityCsr$7591[ebp]
	cmp	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	je	SHORT $L7595

; 328  :          lpViewEntity = zGETPTR( lpViewEntity->hNextHier );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 329  :          lpSearchViewEntityCsr++;

	mov	ecx, DWORD PTR _lpSearchViewEntityCsr$7591[ebp]
	add	ecx, 30					; 0000001eH
	mov	DWORD PTR _lpSearchViewEntityCsr$7591[ebp], ecx

; 330  :       }

	jmp	SHORT $L7594
$L7595:

; 332  : 
; 333  :    nStartLevel = lpViewEntityCsr->nLevel;

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ax, WORD PTR [edx+22]
	mov	WORD PTR _nStartLevel$[ebp], ax

; 334  : 
; 335  :    if ( cpcEntityName[ 0 ] == '\xff' )

	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, -1
	jne	SHORT $L7597

; 337  :       zLONG lInputTok;
; 338  : 
; 339  :       lInputTok = *((zPLONG) (cpcEntityName + 1));

	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	mov	ecx, DWORD PTR [eax+1]
	mov	DWORD PTR _lInputTok$7598[ebp], ecx
$L7601:

; 340  :       while ( lpViewEntityCsr && lpViewEntity->lEREntTok != lInputTok )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	SHORT $L7602
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+195]
	cmp	eax, DWORD PTR _lInputTok$7598[ebp]
	je	SHORT $L7602

; 342  :          if ( lpViewEntityCsr->nLevel < nStartLevel )  // dks 2006.05.08 10B diff

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	movsx	eax, WORD PTR _nStartLevel$[ebp]
	cmp	edx, eax
	jge	SHORT $L7603

; 344  :             lpViewEntityCsr = 0;

	mov	DWORD PTR _lpViewEntityCsr$[ebp], 0

; 345  :             break;

	jmp	SHORT $L7602
$L7603:

; 347  : 
; 348  :          lpViewEntity    = zGETPTR( lpViewEntity->hNextHier );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 349  :          lpViewEntityCsr = zGETPTR( lpViewEntityCsr->hNextHier );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 350  :       }

	jmp	SHORT $L7601
$L7602:

; 352  :    else

	jmp	$L7615
$L7597:

; 354  :       while ( lpViewEntityCsr &&
; 355  :               zstrcmp( lpViewEntity->szName, cpcEntityName ) != 0 )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	$L7615
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, BYTE PTR [edx+14]
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L9520
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -36+[ebp], eax
	jmp	SHORT $L9521
$L9520:
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, BYTE PTR [edx+14]
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -36+[ebp], ecx
$L9521:
	cmp	DWORD PTR -36+[ebp], 0
	je	SHORT $L7615

; 357  :          if ( lpViewEntityCsr->nLevel < nStartLevel )  // dks 2006.05.08 10B diff

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	movsx	ecx, WORD PTR _nStartLevel$[ebp]
	cmp	eax, ecx
	jge	SHORT $L7616

; 359  :             lpViewEntityCsr = 0;

	mov	DWORD PTR _lpViewEntityCsr$[ebp], 0

; 360  :             break;

	jmp	SHORT $L7615
$L7616:

; 362  : 
; 363  :          lpViewEntity    = zGETPTR( lpViewEntity->hNextHier );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 364  :          lpViewEntityCsr = zGETPTR( lpViewEntityCsr->hNextHier );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 365  :       }

	jmp	$L7597
$L7615:

; 367  : 
; 368  :    // If entity found return OK.
; 369  :    if ( lpViewEntityCsr )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	SHORT $L7619

; 371  :       fnOperationReturn( iCheckEntityInView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	132					; 00000084H
	call	_fnOperationReturn
	add	esp, 8

; 372  :       return( 0 );

	xor	ax, ax
	jmp	$L7577
$L7619:

; 374  : 
; 375  :    // Now make sure that the entity is valid for the view.
; 376  :    for ( lpViewEntity = zGETPTR( lpViewOD->hFirstOD_Entity );
; 377  :          lpViewEntity;
; 378  :          lpViewEntity = zGETPTR( lpViewEntity->hNextHier ) )

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	mov	edx, DWORD PTR [ecx+224]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	jmp	SHORT $L7622
$L7623:
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax
$L7622:
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	SHORT $L7624

; 380  :       if ( zstrcmp( lpViewEntity->szName, cpcEntityName ) == 0 )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, BYTE PTR [edx+14]
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L9522
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -40+[ebp], eax
	jmp	SHORT $L9523
$L9522:
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, BYTE PTR [edx+14]
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -40+[ebp], ecx
$L9523:
	cmp	DWORD PTR -40+[ebp], 0
	jne	SHORT $L7631

; 382  :          fnOperationReturn( iCheckEntityInView, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	132					; 00000084H
	call	_fnOperationReturn
	add	esp, 8

; 383  :          return( -1 );

	or	ax, -1
	jmp	SHORT $L7577
$L7631:

; 385  :    }

	jmp	SHORT $L7623
$L7624:

; 386  : 
; 387  : #if 0  // we don't want an error ... we're just asking the question
; 388  : 
; 389  :    // Note, the name may not be invalid, it may simply be out of view
; 390  :    // because of a call to SetViewToSubobject
; 391  :    //  "KZOEE103 - Invalid Entity name for View"
; 392  :    TraceLine( "Invalid Entity name: %s   for View (0x%08x)   OD: %s",
; 393  :               cpcEntityName, lpView, lpViewOD->szName );
; 394  :    fnIssueCoreError( lpCurrentTask, lpView, 8, 103, 0,
; 395  :                      lpViewOD->szName,
; 396  :                      TrueName( cpcEntityName, zSHOW_ZKEY ) );
; 397  : #endif
; 398  : 
; 399  :    fnOperationReturn( iCheckEntityInView, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	132					; 00000084H
	call	_fnOperationReturn
	add	esp, 8

; 400  :    return( -2 );

	mov	ax, -2					; fffffffeH
$L7577:

; 401  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_CheckEntityInView@8 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BM@PPJM@Entity?5Creation?5not?5allowed?$AA@ ; `string'
PUBLIC	_CreateTemporalEntity@12
PUBLIC	_fnCreateEntity@20
PUBLIC	_fnDeleteEntity
PUBLIC	_fnValidateInsertPosition
PUBLIC	_fnInvokeECEOperation
EXTRN	_fnSetViewFromView:NEAR
EXTRN	_fnDropView@4:NEAR
EXTRN	_CreateViewFromViewForTask@12:NEAR
EXTRN	_fnIssueCoreError:NEAR
;	COMDAT ??_C@_0BM@PPJM@Entity?5Creation?5not?5allowed?$AA@
; File C:\10C\A\oe\KZOEEIAA.C
_DATA	SEGMENT
??_C@_0BM@PPJM@Entity?5Creation?5not?5allowed?$AA@ DB 'Entity Creation no'
	DB	't allowed', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nPosition$ = 16
_lpCurrentTask$ = -24
_lpViewEntity$ = -8
_lpViewEntityCsr$ = -20
_nPositionOK$ = -16
_bNewRoot$ = -12
_nRC$ = -4
_lpWorkView$7652 = -28
_lpWorkViewEntityCsr$7653 = -32
_n$7654 = -36
_lpEntityInstance$7661 = -44
_lpViewCsr$7662 = -40
_lpViewOI$7663 = -48
_CreateTemporalEntity@12 PROC NEAR

; 428  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H

; 429  :    LPTASK          lpCurrentTask;
; 430  :    LPVIEWENTITY    lpViewEntity;
; 431  :    LPVIEWENTITYCSR lpViewEntityCsr;
; 432  :    zSHORT          nPositionOK;  // 0=after, 1=before
; 433  :    // int          nExtraRecordFlags;
; 434  :    zSHORT          bNewRoot;
; 435  :    zSHORT          nRC;
; 436  : 
; 437  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 438  :    if ( (lpCurrentTask = fnOperationCall( iCreateTemporalEntity, lpView,
; 439  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	115					; 00000073H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7645

; 441  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7638
$L7645:

; 443  : 
; 444  :    // Validate that the entity exists.
; 445  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 446  :                                            lpView, cpcEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7646

; 448  :       fnOperationReturn( iCreateTemporalEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	115					; 00000073H
	call	_fnOperationReturn
	add	esp, 8

; 449  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7638
$L7646:

; 451  : 
; 452  :    // If the view is read only, issue an error.
; 453  :    if ( lpView->bReadOnly )

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	shr	eax, 6
	and	eax, 1
	test	eax, eax
	je	SHORT $L7647

; 455  :       // "KZOEE119 - Invalid View, View is Read Only"
; 456  :       fnIssueCoreError( lpCurrentTask, lpView, 8, 119, 0, cpcEntityName, 0 );

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

; 457  :       fnOperationReturn( iCreateTemporalEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	115					; 00000073H
	call	_fnOperationReturn
	add	esp, 8

; 458  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7638
$L7647:

; 460  : 
; 461  :    // Make sure entity can be created.
; 462  :    if ( lpViewEntity->bCreate == FALSE )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7648

; 464  :       // "KZOEE106 - Rules violation"
; 465  :       fnIssueCoreError( lpCurrentTask, lpView, 8, 106, 0,
; 466  :                         "Entity Creation not allowed",
; 467  :                         lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	OFFSET FLAT:??_C@_0BM@PPJM@Entity?5Creation?5not?5allowed?$AA@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 468  :       fnOperationReturn( iCreateTemporalEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	115					; 00000073H
	call	_fnOperationReturn
	add	esp, 8

; 469  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7638
$L7648:

; 471  : 
; 472  :    // Validate that an insert of this entity in this instance at
; 473  :    // the specified position is valid.
; 474  :    nPositionOK = fnValidateInsertPosition( &bNewRoot,
; 475  :                                            iCreateTemporalEntity,
; 476  :                                            lpView,
; 477  :                                            lpViewEntityCsr,
; 478  :                                            nPosition );

	mov	dx, WORD PTR _nPosition$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	115					; 00000073H
	lea	edx, DWORD PTR _bNewRoot$[ebp]
	push	edx
	call	_fnValidateInsertPosition
	add	esp, 20					; 00000014H
	mov	WORD PTR _nPositionOK$[ebp], ax

; 479  :    if ( nPositionOK < 0 )

	movsx	eax, WORD PTR _nPositionOK$[ebp]
	test	eax, eax
	jge	SHORT $L7650

; 481  :       fnOperationReturn( iCreateTemporalEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	115					; 00000073H
	call	_fnOperationReturn
	add	esp, 8

; 482  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7638
$L7650:

; 484  : 
; 485  : #ifdef __ACTIVATE_CONSTRAINTS__
; 486  :    // If there is a create constraint active for this entity we need to
; 487  :    // use a work view, just in case the constraint handler objects and
; 488  :    // we have to set everything back to the way it was.
; 489  :    if ( lpViewEntity->bCreateConstraint )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+239]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	je	$L7651

; 491  :       zVIEW             lpWorkView;
; 492  :       LPVIEWENTITYCSR   lpWorkViewEntityCsr;
; 493  :       zSHORT            n;
; 494  : 
; 495  :       CreateViewFromViewForTask( &lpWorkView, lpView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpWorkView$7652[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12

; 496  : 
; 497  :       // Reset the View entity csr for work view.
; 498  :       fnValidViewEntity( &lpWorkViewEntityCsr, lpWorkView, cpcEntityName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWorkView$7652[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpWorkViewEntityCsr$7653[ebp]
	push	edx
	call	_fnValidViewEntity@16

; 499  : 
; 500  :       // Call fnCreateTemporalEntity to create the entity.
; 501  :       nRC = fnCreateEntity( lpWorkView, lpViewEntity,
; 502  :                             lpWorkViewEntityCsr,
; 503  :                             nPosition, bNewRoot );

	mov	ax, WORD PTR _bNewRoot$[ebp]
	push	eax
	mov	cx, WORD PTR _nPosition$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWorkViewEntityCsr$7653[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWorkView$7652[ebp]
	push	ecx
	call	_fnCreateEntity@20
	mov	WORD PTR _nRC$[ebp], ax

; 504  :       if ( nRC )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L7655

; 506  :          fnDropView( lpWorkView );

	mov	eax, DWORD PTR _lpWorkView$7652[ebp]
	push	eax
	call	_fnDropView@4

; 507  :          fnOperationReturn( iCreateTemporalEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	115					; 00000073H
	call	_fnOperationReturn
	add	esp, 8

; 508  :          return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7638
$L7655:

; 510  : 
; 511  :       // If the view entity has any initialization attributes, initialize
; 512  :       // them now.
; 513  :       fnInitAttributes( lpWorkView, lpViewEntity );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWorkView$7652[ebp]
	push	eax
	call	_fnInitAttributes@8

; 514  : 
; 515  :       n = fnInvokeECEOperation( lpWorkView, lpViewEntity,
; 516  :                                 lpCurrentTask, zECE_CREATE, 0 );

	push	0
	push	3
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWorkView$7652[ebp]
	push	eax
	call	_fnInvokeECEOperation
	add	esp, 20					; 00000014H
	mov	WORD PTR _n$7654[ebp], ax

; 517  :       if ( n )

	movsx	ecx, WORD PTR _n$7654[ebp]
	test	ecx, ecx
	je	SHORT $L7656

; 519  :          fnDeleteEntity( lpWorkView, lpViewEntity, lpWorkViewEntityCsr,
; 520  :                          zREPOS_NONE, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpWorkViewEntityCsr$7653[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWorkView$7652[ebp]
	push	edx
	call	_fnDeleteEntity
	add	esp, 20					; 00000014H

; 521  :          fnDropView( lpWorkView );

	mov	eax, DWORD PTR _lpWorkView$7652[ebp]
	push	eax
	call	_fnDropView@4

; 522  :          fnOperationReturn( iCreateTemporalEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	115					; 00000073H
	call	_fnOperationReturn
	add	esp, 8

; 523  :          return( n );

	mov	ax, WORD PTR _n$7654[ebp]
	jmp	$L7638
$L7656:

; 527  :          // Save cursors from the work view to the original.
; 528  :          fnSetViewFromView( lpView, lpWorkView);

	mov	edx, DWORD PTR _lpWorkView$7652[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnSetViewFromView
	add	esp, 8

; 529  : 
; 530  :          // Drop work view.
; 531  :          fnDropView( lpWorkView );

	mov	ecx, DWORD PTR _lpWorkView$7652[ebp]
	push	ecx
	call	_fnDropView@4

; 534  :    else

	jmp	SHORT $L7659
$L7651:

; 538  :       // Call fnCreateEntity to create the entity.
; 539  :       nRC = fnCreateEntity( lpView, lpViewEntity, lpViewEntityCsr,
; 540  :                            nPosition, bNewRoot );

	mov	dx, WORD PTR _bNewRoot$[ebp]
	push	edx
	mov	ax, WORD PTR _nPosition$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnCreateEntity@20
	mov	WORD PTR _nRC$[ebp], ax

; 541  :       // If the view entity has any initialization attributes, initialize
; 542  :       // them now.
; 543  :       if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	SHORT $L7659

; 544  :          fnInitAttributes( lpView, lpViewEntity );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnInitAttributes@8
$L7659:

; 546  : 
; 547  :    // If the entity instance has been successfully created, mark the
; 548  :    // Entity instance as owning the entity record and check the
; 549  :    // instances parent to see if any other linked instances require
; 550  :    // spawning this entity type. If so, issue a warning message for
; 551  :    // now since the overhead in establishing a view for spawning
; 552  :    // entity creations may not be worth the effort and performance
; 553  :    // lost when compared to the benefit gained. Unfortunately, this
; 554  :    // check is done after the entity has been created (i.e. the horses
; 555  :    // are already out of the barn).
; 556  :    if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	SHORT $L7660

; 558  :       LPENTITYINSTANCE  lpEntityInstance;
; 559  :       LPVIEWCSR         lpViewCsr;
; 560  :       LPVIEWOI          lpViewOI;
; 561  : 
; 562  :       lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$7661[ebp], eax

; 563  :       lpEntityInstance->u.nInd.bCreated  = TRUE;

	mov	ecx, DWORD PTR _lpEntityInstance$7661[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	edx, 2
	mov	eax, DWORD PTR _lpEntityInstance$7661[ebp]
	mov	DWORD PTR [eax+6], edx

; 564  :       lpEntityInstance->u.nInd.bTemporal = TRUE;

	mov	ecx, DWORD PTR _lpEntityInstance$7661[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	dh, 8
	mov	eax, DWORD PTR _lpEntityInstance$7661[ebp]
	mov	DWORD PTR [eax+6], edx

; 565  :       lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$7662[ebp], eax

; 566  :       lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$7662[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$7663[ebp], eax

; 567  :       lpViewOI->nVersionedInstances++;

	mov	edx, DWORD PTR _lpViewOI$7663[ebp]
	mov	ax, WORD PTR [edx+22]
	add	ax, 1
	mov	ecx, DWORD PTR _lpViewOI$7663[ebp]
	mov	WORD PTR [ecx+22], ax
$L7660:

; 569  : 
; 570  :    // return success, we've managed to create an entity
; 571  :    fnOperationReturn( iCreateTemporalEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	115					; 00000073H
	call	_fnOperationReturn
	add	esp, 8

; 572  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7638:

; 573  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_CreateTemporalEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_CreateEntity@12
PUBLIC	_fnSpawnCreateEntity
EXTRN	_fnSetUpdateIndicator:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nPosition$ = 16
_lpCurrentTask$ = -24
_lpViewEntity$ = -8
_lpViewEntityCsr$ = -20
_nPositionOK$ = -16
_bNewRoot$ = -12
_nRC$ = -4
_lpWorkView$7686 = -28
_lpWorkViewEntityCsr$7687 = -36
_n$7688 = -40
_lpEntityInstance$7689 = -32
_lpEntityInstance$7697 = -44
_CreateEntity@12 PROC NEAR

; 598  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH

; 599  :    LPTASK            lpCurrentTask;
; 600  :    LPVIEWENTITY      lpViewEntity;
; 601  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 602  :    zSHORT            nPositionOK;  // 0=after, 1=before
; 603  : // int               nExtraRecordFlags;
; 604  :    zSHORT            bNewRoot;
; 605  :    zSHORT            nRC;
; 606  : 
; 607  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 608  :    if ( (lpCurrentTask = fnOperationCall( iCreateEntity, lpView,
; 609  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	101					; 00000065H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7680

; 611  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7673
$L7680:

; 613  : 
; 614  :    // Validate that the entity exists.
; 615  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 616  :                                            lpView, cpcEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7681

; 618  :       fnOperationReturn( iCreateEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	101					; 00000065H
	call	_fnOperationReturn
	add	esp, 8

; 619  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7673
$L7681:

; 621  : 
; 622  :    // If the view is read only, issue an error.
; 623  :    if ( lpView->bReadOnly && lpViewEntity->bDerivedPath == FALSE )

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+30]
	shr	eax, 6
	and	eax, 1
	test	eax, eax
	je	SHORT $L7682
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 14					; 0000000eH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7682

; 625  :       // "KZOEE119 - Invalid View, View is Read Only"
; 626  :       fnIssueCoreError( lpCurrentTask, lpView, 8, 119, 0, cpcEntityName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	push	0
	push	119					; 00000077H
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 627  :       fnOperationReturn( iCreateEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	101					; 00000065H
	call	_fnOperationReturn
	add	esp, 8

; 628  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7673
$L7682:

; 630  : 
; 631  :    // Make sure entity can be created.
; 632  :    if ( lpViewEntity->bCreate == FALSE )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7683

; 634  :       // "KZOEE106 - Rules violation"
; 635  :       fnIssueCoreError( lpCurrentTask, lpView, 8, 106, 0,
; 636  :                         "Entity Creation not allowed",
; 637  :                         lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0BM@PPJM@Entity?5Creation?5not?5allowed?$AA@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 638  :       fnOperationReturn( iCreateEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	101					; 00000065H
	call	_fnOperationReturn
	add	esp, 8

; 639  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7673
$L7683:

; 641  : 
; 642  : #if 0
; 643  :    // Debugging code ... dks 2007.05.24
; 644  :    if ( lpViewEntityCsr->nLevel > 1 ) // parent exists at definition level
; 645  :    {
; 646  :       LPVIEWENTITYCSR lpParentViewEntityCsr = zGETPTR( lpViewEntityCsr->hParent );
; 647  :       LPENTITYINSTANCE lpParentEntityInstance;
; 648  : 
; 649  :       // If there is no parent entity cursor, then this entity is to be the new root
; 650  :       // of a subobject view, the parent in this case is the parent of the view.
; 651  :       if ( lpParentViewEntityCsr )
; 652  :       {
; 653  :          lpParentEntityInstance = zGETPTR( lpParentViewEntityCsr->hEntityInstance );
; 654  :       // if ( lpParentEntityInstance == UNSET_CSR )
; 655  :       //    SysMessageBox( 0, "CreateEntity", "UNSET_CSR", -1 );
; 656  :       }
; 657  :       else
; 658  :       {
; 659  :          LPVIEWCSR lpViewCsr = zGETPTR( lpViewEntityCsr->hViewCsr );
; 660  :          lpParentEntityInstance = zGETPTR( lpViewCsr->hViewParentEntityInstance );
; 661  :       // if ( lpParentEntityInstance == UNSET_CSR )
; 662  :       //    SysMessageBox( 0, "CreateEntity", "UNSET_CSR", -1 );
; 663  :       }
; 664  :    }
; 665  : #endif
; 666  : 
; 667  :    // Validate that an insert of this entity in this instance at the specified
; 668  :    // position is valid.
; 669  :    nPositionOK = fnValidateInsertPosition( &bNewRoot, iCreateEntity, lpView,
; 670  :                                            lpViewEntityCsr, nPosition );

	mov	cx, WORD PTR _nPosition$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	101					; 00000065H
	lea	ecx, DWORD PTR _bNewRoot$[ebp]
	push	ecx
	call	_fnValidateInsertPosition
	add	esp, 20					; 00000014H
	mov	WORD PTR _nPositionOK$[ebp], ax

; 671  :    if ( nPositionOK < 0 )

	movsx	edx, WORD PTR _nPositionOK$[ebp]
	test	edx, edx
	jge	SHORT $L7684

; 673  :       fnOperationReturn( iCreateEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	101					; 00000065H
	call	_fnOperationReturn
	add	esp, 8

; 674  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7673
$L7684:

; 676  : 
; 677  : #ifdef __ACTIVATE_CONSTRAINTS__
; 678  :    // If there is a create constraint active for this entity we need to
; 679  :    // use a work view, just in case the constraint handler objects and
; 680  :    // we have to set everything back to the way it was.
; 681  :    if ( lpViewEntity->bCreateConstraint )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+239]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	$L7685

; 683  :       zVIEW             lpWorkView;
; 684  :       LPVIEWENTITYCSR   lpWorkViewEntityCsr;
; 685  :       zSHORT            n;
; 686  :       LPENTITYINSTANCE  lpEntityInstance;
; 687  : 
; 688  :       CreateViewFromViewForTask( &lpWorkView, lpView, 0 );

	push	0
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpWorkView$7686[ebp]
	push	ecx
	call	_CreateViewFromViewForTask@12

; 689  : 
; 690  :       // Reset the View entity csr for work view.
; 691  :       fnValidViewEntity( &lpWorkViewEntityCsr, lpWorkView, cpcEntityName, 0 );

	push	0
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWorkView$7686[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpWorkViewEntityCsr$7687[ebp]
	push	ecx
	call	_fnValidViewEntity@16

; 692  : 
; 693  :       // Call fnCreateEntity to create the entity.
; 694  :       nRC = fnCreateEntity( lpWorkView, lpViewEntity,
; 695  :                             lpWorkViewEntityCsr,
; 696  :                             nPosition, bNewRoot );

	mov	dx, WORD PTR _bNewRoot$[ebp]
	push	edx
	mov	ax, WORD PTR _nPosition$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWorkViewEntityCsr$7687[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWorkView$7686[ebp]
	push	eax
	call	_fnCreateEntity@20
	mov	WORD PTR _nRC$[ebp], ax

; 697  :       if ( nRC )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L7690

; 699  :          fnDropView( lpWorkView );

	mov	edx, DWORD PTR _lpWorkView$7686[ebp]
	push	edx
	call	_fnDropView@4

; 700  :          fnOperationReturn( iCreateEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	101					; 00000065H
	call	_fnOperationReturn
	add	esp, 8

; 701  :          return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7673
$L7690:

; 703  : 
; 704  :       // If the view entity has any initialization attributes, initialize
; 705  :       // them now.
; 706  :       fnInitAttributes( lpWorkView, lpViewEntity );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWorkView$7686[ebp]
	push	edx
	call	_fnInitAttributes@8

; 707  : 
; 708  :       // Set bCreated flag so constraint operation can modify keys if
; 709  :       // wanted.  It will be turned on again later but that's OK.
; 710  :       lpEntityInstance = zGETPTR( lpWorkViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpWorkViewEntityCsr$7687[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$7689[ebp], eax

; 711  :       lpEntityInstance->u.nInd.bCreated = TRUE;

	mov	edx, DWORD PTR _lpEntityInstance$7689[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	al, 2
	mov	ecx, DWORD PTR _lpEntityInstance$7689[ebp]
	mov	DWORD PTR [ecx+6], eax

; 712  : 
; 713  :       n = fnInvokeECEOperation( lpWorkView, lpViewEntity,
; 714  :                                 lpCurrentTask, zECE_CREATE, 0 );

	push	0
	push	3
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWorkView$7686[ebp]
	push	ecx
	call	_fnInvokeECEOperation
	add	esp, 20					; 00000014H
	mov	WORD PTR _n$7688[ebp], ax

; 715  :       if ( n )

	movsx	edx, WORD PTR _n$7688[ebp]
	test	edx, edx
	je	SHORT $L7692

; 717  :          fnDeleteEntity( lpWorkView, lpViewEntity, lpWorkViewEntityCsr,
; 718  :                          zREPOS_NONE, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpWorkViewEntityCsr$7687[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWorkView$7686[ebp]
	push	eax
	call	_fnDeleteEntity
	add	esp, 20					; 00000014H

; 719  :          fnDropView( lpWorkView );

	mov	ecx, DWORD PTR _lpWorkView$7686[ebp]
	push	ecx
	call	_fnDropView@4

; 720  :          fnOperationReturn( iCreateEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	101					; 00000065H
	call	_fnOperationReturn
	add	esp, 8

; 721  :          return( n );

	mov	ax, WORD PTR _n$7688[ebp]
	jmp	$L7673
$L7692:

; 725  :          // Save cursors from the work view to the original.
; 726  :          fnSetViewFromView( lpView, lpWorkView );

	mov	eax, DWORD PTR _lpWorkView$7686[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetViewFromView
	add	esp, 8

; 727  : 
; 728  :          // Drop work view.
; 729  :          fnDropView( lpWorkView );

	mov	edx, DWORD PTR _lpWorkView$7686[ebp]
	push	edx
	call	_fnDropView@4

; 732  :    else

	jmp	SHORT $L7695
$L7685:

; 735  :       // Call fnCreateEntity to create the entity.
; 736  :       nRC = fnCreateEntity( lpView, lpViewEntity, lpViewEntityCsr,
; 737  :                             nPosition, bNewRoot );

	mov	ax, WORD PTR _bNewRoot$[ebp]
	push	eax
	mov	cx, WORD PTR _nPosition$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnCreateEntity@20
	mov	WORD PTR _nRC$[ebp], ax

; 738  : 
; 739  :       // If the view entity has any initialization attributes, initialize them now.
; 740  :       if ( nRC == 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jne	SHORT $L7695

; 741  :          fnInitAttributes( lpView, lpViewEntity );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnInitAttributes@8
$L7695:

; 743  : 
; 744  :    // If the entity instance has been successfully created, mark the
; 745  :    // Entity instance as owning the entity record and check the
; 746  :    // instance's parent to see if any other linked instances require
; 747  :    // spawning this entity type.  If so, issue a warning message for
; 748  :    // now since the overhead in establishing a view for spawning
; 749  :    // entity creations may not be worth the effort and performance
; 750  :    // lost when compared to the benefit gained.  Unfortunately, this
; 751  :    // check is done after the entity has been created (i.e. the horse
; 752  :    // is already out of the barn).
; 753  :    if ( nRC == 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jne	SHORT $L7696

; 755  :       LPENTITYINSTANCE  lpEntityInstance;
; 756  : 
; 757  :       lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$7697[ebp], eax

; 758  :       lpEntityInstance->u.nInd.bCreated = TRUE;

	mov	edx, DWORD PTR _lpEntityInstance$7697[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	al, 2
	mov	ecx, DWORD PTR _lpEntityInstance$7697[ebp]
	mov	DWORD PTR [ecx+6], eax

; 759  : 
; 760  : #if 0  // We have a case where the hParent is UNSET_CSR (1), but
; 761  :        // lpViewEntityCsr->hParent is 0 and not sure what to do about it.  // dks 2007.05.16
; 762  :       if ( lpEntityInstance->hParent == UNSET_CSR )
; 763  :       {
; 764  :          LPVIEWENTITYCSR   lpParentViewEntityCsr = zGETPTR( lpViewEntityCsr->hParent )
; 765  :          LPENTITYINSTANCE  lpEntityInstance;
; 766  : 
; 767  :          SysMessageBox( 0, "Establishing Cursor", "Prior to SpawnCreateEntity", -1 );
; 768  :          fnEstablishCursorForView( lpViewEntityCsr );
; 769  :       }
; 770  : #endif
; 771  : 
; 772  :       // Spawn the entity create if necessary.
; 773  :       fnSpawnCreateEntity( lpView, lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$7697[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnSpawnCreateEntity
	add	esp, 8

; 774  : 
; 775  : // >>> RAD54278-1 BEGIN
; 776  :       fnSetUpdateIndicator( 0, lpEntityInstance, 0, TRUE, FALSE, FALSE );

	push	0
	push	0
	push	1
	push	0
	mov	ecx, DWORD PTR _lpEntityInstance$7697[ebp]
	push	ecx
	push	0
	call	_fnSetUpdateIndicator
	add	esp, 24					; 00000018H
$L7696:

; 779  : 
; 780  :    // Return success, we've managed to create an entity.
; 781  :    fnOperationReturn( iCreateEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	101					; 00000065H
	call	_fnOperationReturn
	add	esp, 8

; 782  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7673:

; 783  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_CreateEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_LoadEntity@16
EXTRN	_fnCreateAttributeRecord:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nPosition$ = 16
_plpRecord$ = 20
_lpCurrentTask$ = -24
_lpViewEntity$ = -8
_lpViewEntityCsr$ = -20
_nPositionOK$ = -16
_bNewRoot$ = -12
_nRC$ = -4
_lpEntityInstance$7719 = -28
_LoadEntity@16 PROC NEAR

; 811  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 812  :    LPTASK          lpCurrentTask;
; 813  :    LPVIEWENTITY    lpViewEntity;
; 814  :    LPVIEWENTITYCSR lpViewEntityCsr;
; 815  :    zSHORT          nPositionOK;  // 0=after, 1=before
; 816  :    // int          nExtraRecordFlags;
; 817  :    zSHORT          bNewRoot;
; 818  :    zSHORT          nRC;
; 819  : 
; 820  :    if ( plpRecord )

	cmp	DWORD PTR _plpRecord$[ebp], 0
	je	SHORT $L7714

; 821  :       *plpRecord = 0;

	mov	eax, DWORD PTR _plpRecord$[ebp]
	mov	DWORD PTR [eax], 0
$L7714:

; 822  : 
; 823  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 824  :    if ( (lpCurrentTask = fnOperationCall( iLoadEntity, lpView,
; 825  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	117					; 00000075H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7715

; 827  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7707
$L7715:

; 829  : 
; 830  :    // Validate that the entity exists
; 831  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 832  :                                            lpView, cpcEntityName, 0 )) == 0 )

	push	0
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7716

; 834  :       fnOperationReturn( iLoadEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	117					; 00000075H
	call	_fnOperationReturn
	add	esp, 8

; 835  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7707
$L7716:

; 837  : 
; 838  :    // Validate that an insert of this entity in this instance at
; 839  :    // the specified position is valid.
; 840  :    nPositionOK = fnValidateInsertPosition( &bNewRoot,
; 841  :                                            iLoadEntity,
; 842  :                                            lpView,
; 843  :                                            lpViewEntityCsr,
; 844  :                                            nPosition );

	mov	ax, WORD PTR _nPosition$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	117					; 00000075H
	lea	eax, DWORD PTR _bNewRoot$[ebp]
	push	eax
	call	_fnValidateInsertPosition
	add	esp, 20					; 00000014H
	mov	WORD PTR _nPositionOK$[ebp], ax

; 845  :    if ( nPositionOK < 0 )

	movsx	ecx, WORD PTR _nPositionOK$[ebp]
	test	ecx, ecx
	jge	SHORT $L7717

; 847  :       fnOperationReturn( iLoadEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	117					; 00000075H
	call	_fnOperationReturn
	add	esp, 8

; 848  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7707
$L7717:

; 850  : 
; 851  :    // call fnCreateEntity to create the entity
; 852  :    nRC = fnCreateEntity( lpView, lpViewEntity, lpViewEntityCsr,
; 853  :                          nPosition, bNewRoot );

	mov	ax, WORD PTR _bNewRoot$[ebp]
	push	eax
	mov	cx, WORD PTR _nPosition$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnCreateEntity@20
	mov	WORD PTR _nRC$[ebp], ax

; 854  : 
; 855  :    if ( plpRecord )

	cmp	DWORD PTR _plpRecord$[ebp], 0
	je	SHORT $L7723

; 857  :       LPENTITYINSTANCE lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$7719[ebp], eax

; 858  : 
; 859  :       *plpRecord = (zPCHAR) zGETPTR( lpEntityInstance->hPersistRecord );

	mov	ecx, DWORD PTR _lpEntityInstance$7719[ebp]
	mov	edx, DWORD PTR [ecx+60]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	ecx, DWORD PTR _plpRecord$[ebp]
	mov	DWORD PTR [ecx], eax

; 860  :       if ( *plpRecord == 0 )

	mov	edx, DWORD PTR _plpRecord$[ebp]
	cmp	DWORD PTR [edx], 0
	jne	SHORT $L7723

; 862  :          fnCreateAttributeRecord( lpCurrentTask,
; 863  :                                   lpViewEntity, lpEntityInstance );

	mov	eax, DWORD PTR _lpEntityInstance$7719[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnCreateAttributeRecord
	add	esp, 12					; 0000000cH

; 864  :          *plpRecord = (zPCHAR) zGETPTR( lpEntityInstance->hPersistRecord );

	mov	eax, DWORD PTR _lpEntityInstance$7719[ebp]
	mov	ecx, DWORD PTR [eax+60]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	edx, DWORD PTR _plpRecord$[ebp]
	mov	DWORD PTR [edx], eax
$L7723:

; 867  : 
; 868  :    // Return success ... we've managed to create an entity.
; 869  :    fnOperationReturn( iLoadEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	117					; 00000075H
	call	_fnOperationReturn
	add	esp, 8

; 870  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7707:

; 871  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_LoadEntity@16 ENDP
_TEXT	ENDS
PUBLIC	_CountEntitiesForView@8
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -20
_lpViewEntity$ = -12
_lpViewEntityCsr$ = -16
_lpEntityInstance$ = -8
_lCount$ = -4
_CountEntitiesForView@8 PROC NEAR

; 892  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 893  :    LPTASK            lpCurrentTask;
; 894  :    LPVIEWENTITY      lpViewEntity;
; 895  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 896  :    LPENTITYINSTANCE  lpEntityInstance;
; 897  :    zLONG             lCount = 0;

	mov	DWORD PTR _lCount$[ebp], 0

; 898  : 
; 899  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 900  :    if ( (lpCurrentTask = fnOperationCall( iCountEntitiesForView, lpView,
; 901  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	123					; 0000007bH
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7736

; 903  :       return( zCALL_ERROR );

	mov	eax, -16				; fffffff0H
	jmp	$L7730
$L7736:

; 905  : 
; 906  :    // Validate that the entity exists
; 907  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 908  :                                            lpView, cpcEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7737

; 910  :       fnOperationReturn( iCountEntitiesForView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	123					; 0000007bH
	call	_fnOperationReturn
	add	esp, 8

; 911  :       return( zCALL_ERROR );

	mov	eax, -16				; fffffff0H
	jmp	$L7730
$L7737:

; 913  : 
; 914  :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 915  :    if ( lpEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 1
	jne	SHORT $L7740

; 916  :       lpEntityInstance = fnEstablishCursorForView( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnEstablishCursorForView
	add	esp, 4
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L7740:

; 917  : 
; 918  :    if ( lpEntityInstance )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7748
$L7743:

; 920  :       // go to first instance
; 921  :       while ( lpEntityInstance->hPrevTwin )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L7744

; 922  :          lpEntityInstance = zGETPTR( lpEntityInstance->hPrevTwin );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
	jmp	SHORT $L7743
$L7744:

; 923  : 
; 924  :       // scan the twin pointers and count all the unhidden instances
; 925  :       while ( lpEntityInstance )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7748

; 927  :          if ( lpEntityInstance->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7749

; 928  :             lCount++;

	mov	ecx, DWORD PTR _lCount$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lCount$[ebp], ecx
$L7749:

; 929  : 
; 930  :          lpEntityInstance = zGETPTR( lpEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 931  :       }

	jmp	SHORT $L7744
$L7748:

; 933  : 
; 934  :    fnOperationReturn( iCountEntitiesForView, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	123					; 0000007bH
	call	_fnOperationReturn
	add	esp, 8

; 935  :    return( lCount );

	mov	eax, DWORD PTR _lCount$[ebp]
$L7730:

; 936  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_CountEntitiesForView@8 ENDP
_TEXT	ENDS
PUBLIC	_DropEntity@12
PUBLIC	_fnValidateInstanceParameters
PUBLIC	_fnReclaimHiddenInstances@4
PUBLIC	_fnRemoveAllChildTemporalVsns
EXTRN	_CancelSubobject@8:NEAR
EXTRN	_SetCursorNextEntity@12:NEAR
EXTRN	_SetCursorPrevEntity@12:NEAR
EXTRN	_SetCursorFirstEntity@12:NEAR
EXTRN	_SetCursorLastEntity@12:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nReposition$ = 16
_lpCurrentTask$ = -40
_lpViewOI$ = -28
_lpViewCsr$ = -4
_lpViewEntity$ = -16
_lpViewEntityCsr$ = -36
_lpEntityInstance$ = -12
_lpPrevVsn$ = -20
_bTemporal$ = -24
_nRC$ = -8
_nLvl$ = -32
_lpPrevLinked$7792 = -44
_DropEntity@12 PROC NEAR

; 968  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 52					; 00000034H

; 969  :    LPTASK            lpCurrentTask;
; 970  :    LPVIEWOI          lpViewOI;
; 971  :    LPVIEWCSR         lpViewCsr;
; 972  :    LPVIEWENTITY      lpViewEntity;
; 973  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 974  :    LPENTITYINSTANCE  lpEntityInstance;
; 975  :    LPENTITYINSTANCE  lpPrevVsn;
; 976  :    zBOOL             bTemporal;
; 977  :    zSHORT            nRC, nLvl;
; 978  : 
; 979  :    // Validate that the source view entity exists and has a cursor
; 980  :    // value for copying, we call fnValidateInstanceParameters for the
; 981  :    // source since it requires the same editing as an attribute retrieval
; 982  :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 983  :                                       &lpViewEntity,
; 984  :                                       &lpViewEntityCsr,
; 985  :                                       iDropEntity,
; 986  :                                       lpView,
; 987  :                                       cpcEntityName, 1 ) )

	push	1
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	126					; 0000007eH
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
	je	SHORT $L7768

; 989  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7757
$L7768:

; 991  : 
; 992  :    // Get the entity instance to be deleted
; 993  :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 994  :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 995  :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 996  : 
; 997  :    fnRemoveAllChildTemporalVsns( lpView, lpEntityInstance, 0 );

	push	0
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnRemoveAllChildTemporalVsns
	add	esp, 12					; 0000000cH

; 998  : 
; 999  :    // If the entity instance is a temporal entity or the root of
; 1000 :    // a versioned Subobject, issue a cancel subobject prior to marking
; 1001 :    // the previous version as hidden
; 1002 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1003 :    lpPrevVsn = zGETPTR( lpEntityInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$[ebp], eax

; 1004 :    if ( lpEntityInstance->u.nInd.bTemporal ||
; 1005 :         (lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot) )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7774
	cmp	DWORD PTR _lpPrevVsn$[ebp], 0
	je	$L7773
	mov	eax, DWORD PTR _lpPrevVsn$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	je	$L7773
$L7774:

; 1007 :       // Set temporal entity indicator
; 1008 :       bTemporal = lpEntityInstance->u.nInd.bTemporal;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	mov	BYTE PTR _bTemporal$[ebp], al

; 1009 :       nRC = CancelSubobject( lpView, cpcEntityName );

	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_CancelSubobject@8
	mov	WORD PTR _nRC$[ebp], ax

; 1010 : 
; 1011 :       // if the entity instance was temporal, then the cancel deleted the
; 1012 :       // temporal instance, issue the repositioning requested and return.
; 1013 :       if ( bTemporal )

	mov	eax, DWORD PTR _bTemporal$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	$L7775

; 1015 :          // Now see if the user requested the cursor to be repositioned
; 1016 :          if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	SHORT $L7778

; 1017 :          switch ( nReposition )
; 1018 :          {

	movsx	edx, WORD PTR _nReposition$[ebp]
	mov	DWORD PTR -48+[ebp], edx
	mov	eax, DWORD PTR -48+[ebp]
	sub	eax, 1
	mov	DWORD PTR -48+[ebp], eax
	cmp	DWORD PTR -48+[ebp], 3
	ja	SHORT $L7785
	mov	ecx, DWORD PTR -48+[ebp]
	jmp	DWORD PTR $L9529[ecx*4]
$L7781:

; 1019 :             case zREPOS_FIRST:
; 1020 :                nRC = SetCursorFirstEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SetCursorFirstEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1021 :                break;

	jmp	SHORT $L7778
$L7782:

; 1022 : 
; 1023 :             case zREPOS_LAST:
; 1024 :                nRC = SetCursorLastEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SetCursorLastEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1025 :                break;

	jmp	SHORT $L7778
$L7783:

; 1026 : 
; 1027 :             case zREPOS_NEXT:
; 1028 :                nRC = SetCursorNextEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetCursorNextEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1029 :                break;

	jmp	SHORT $L7778
$L7784:

; 1030 : 
; 1031 :             case zREPOS_PREV:
; 1032 :                nRC = SetCursorPrevEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SetCursorPrevEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1033 :                break;

	jmp	SHORT $L7778
$L7785:

; 1034 : 
; 1035 :             default:
; 1036 :                nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH
$L7778:

; 1038 : 
; 1039 :          // We think we're done, tell the caller everything is AOK!
; 1040 :          fnOperationReturn( iDropEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	126					; 0000007eH
	call	_fnOperationReturn
	add	esp, 8

; 1041 :          return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7757
$L7775:

; 1043 : 
; 1044 :       // Get the entity instance to be dropped after the cancel
; 1045 :       lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L7773:

; 1047 : 
; 1048 :    nRC = 0; // Count the instance marked as hidden

	mov	WORD PTR _nRC$[ebp], 0

; 1049 :    if ( lpEntityInstance )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	$L7787

; 1051 :       nLvl = lpEntityInstance->nLevel;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	mov	WORD PTR _nLvl$[ebp], dx
$L7788:

; 1054 :          lpEntityInstance->u.nInd.bCreated =
; 1055 :             lpEntityInstance->u.nInd.bHidden = TRUE;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	or	ch, 4
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	or	ecx, 2
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 1056 : 
; 1057 :          // If the entity is linked to other entities, remove it from the link
; 1058 :          // chain.
; 1059 :          if ( lpEntityInstance->hNextLinked )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+42], 0
	je	SHORT $L7791

; 1061 :             LPENTITYINSTANCE lpPrevLinked;
; 1062 : 
; 1063 :             // Find the EI that points to the current EI.
; 1064 :             for ( lpPrevLinked = zGETPTR( lpEntityInstance->hNextLinked );
; 1065 :                   zGETPTR( lpPrevLinked->hNextLinked ) != lpEntityInstance;
; 1066 :                   lpPrevLinked = zGETPTR( lpPrevLinked->hNextLinked ) )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevLinked$7792[ebp], eax
	jmp	SHORT $L7796
$L7797:
	mov	eax, DWORD PTR _lpPrevLinked$7792[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevLinked$7792[ebp], eax
$L7796:
	mov	edx, DWORD PTR _lpPrevLinked$7792[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpEntityInstance$[ebp]
	je	SHORT $L7798

; 1068 :                // Nothing needs to be done here.
; 1069 :             }

	jmp	SHORT $L7797
$L7798:

; 1070 : 
; 1071 :             // Remove lpEntityInstance from the link chain.
; 1072 :             if ( zGETPTR( lpEntityInstance->hNextLinked ) == lpPrevLinked )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpPrevLinked$7792[ebp]
	jne	SHORT $L7800

; 1073 :                lpPrevLinked->hNextLinked = 0;

	mov	eax, DWORD PTR _lpPrevLinked$7792[ebp]
	mov	DWORD PTR [eax+42], 0

; 1074 :             else

	jmp	SHORT $L7801
$L7800:

; 1075 :                lpPrevLinked->hNextLinked = lpEntityInstance->hNextLinked;

	mov	ecx, DWORD PTR _lpPrevLinked$7792[ebp]
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	mov	DWORD PTR [ecx+42], eax
$L7801:

; 1076 : 
; 1077 :             // NULL out the hRecord pointer so that when the EI is eventually
; 1078 :             // freed we won't free the attribute data.
; 1079 :             // Note that we can do this because
; 1080 :             // a dropped entity instance doesn't change the database so we
; 1081 :             // don't need to keep seperate copies of the attributes.
; 1082 :             lpEntityInstance->hPersistRecord = 0;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+60], 0

; 1083 :             lpEntityInstance->hNextLinked = 0;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+42], 0
$L7791:

; 1085 : 
; 1086 :          nRC++;

	mov	ax, WORD PTR _nRC$[ebp]
	add	ax, 1
	mov	WORD PTR _nRC$[ebp], ax

; 1087 :          lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1088 :       }  while ( lpEntityInstance && lpEntityInstance->nLevel > nLvl );

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7803
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nLvl$[ebp]
	cmp	ecx, edx
	jg	$L7788
$L7803:

; 1089 : 
; 1090 :       lpViewOI->nHiddenCount += nRC;

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	cx, WORD PTR [eax+24]
	add	cx, WORD PTR _nRC$[ebp]
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	WORD PTR [edx+24], cx

; 1091 :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L7787:

; 1093 : 
; 1094 :    switch ( nReposition )
; 1095 :    {

	movsx	eax, WORD PTR _nReposition$[ebp]
	mov	DWORD PTR -52+[ebp], eax
	mov	ecx, DWORD PTR -52+[ebp]
	sub	ecx, 1
	mov	DWORD PTR -52+[ebp], ecx
	cmp	DWORD PTR -52+[ebp], 3
	ja	SHORT $L7812
	mov	edx, DWORD PTR -52+[ebp]
	jmp	DWORD PTR $L9530[edx*4]
$L7808:

; 1096 :       case zREPOS_FIRST:
; 1097 :          nRC = SetCursorFirstEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetCursorFirstEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1098 :          break;

	jmp	SHORT $L7805
$L7809:

; 1099 : 
; 1100 :       case zREPOS_LAST:
; 1101 :          nRC = SetCursorLastEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SetCursorLastEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1102 :          break;

	jmp	SHORT $L7805
$L7810:

; 1103 : 
; 1104 :       case zREPOS_NEXT:
; 1105 :          nRC = SetCursorNextEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SetCursorNextEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1106 :          break;

	jmp	SHORT $L7805
$L7811:

; 1107 : 
; 1108 :       case zREPOS_PREV:
; 1109 :          nRC = SetCursorPrevEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetCursorPrevEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1110 :          break;

	jmp	SHORT $L7805
$L7812:

; 1111 : 
; 1112 :       default:
; 1113 :          nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH
$L7805:

; 1115 : 
; 1116 : #ifdef __RECLAIM__
; 1117 :    if ( nRC != zCURSOR_UNDEFINED && lpViewOI->nHiddenCount > __RECLAIM_LIMIT__ )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -2					; fffffffeH
	je	SHORT $L7813
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	movsx	ecx, WORD PTR [eax+24]
	cmp	ecx, 20					; 00000014H
	jle	SHORT $L7813

; 1118 :       fnReclaimHiddenInstances( lpViewOI );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	push	edx
	call	_fnReclaimHiddenInstances@4
$L7813:

; 1119 : #endif
; 1120 : 
; 1121 :    // We think we're done, tell the caller everything is AOK!
; 1122 :    fnOperationReturn( iDropEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	126					; 0000007eH
	call	_fnOperationReturn
	add	esp, 8

; 1123 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7757:

; 1124 : 
; 1125 : } // DropEntity

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
$L9529:
	DD	$L7781
	DD	$L7782
	DD	$L7783
	DD	$L7784
$L9530:
	DD	$L7808
	DD	$L7809
	DD	$L7810
	DD	$L7811
_DropEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_CountEntitiesForViewUnderParent@12
_TEXT	SEGMENT
_zView$ = 8
_cpcEntityName$ = 12
_cpcScopingEntityName$ = 16
_lpCurrentTask$ = -36
_lpViewEntity$ = -24
_lpViewEntityCsr$ = -32
_lpScopingViewEntity$ = -28
_lpScopingViewEntityCsr$ = -20
_lpEntityInstance$ = -16
_lCount$ = -12
_nStopLevel$ = -4
_nLevel$ = -8
_CountEntitiesForViewUnderParent@12 PROC NEAR

; 1151 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 1152 :    LPTASK            lpCurrentTask;
; 1153 :    LPVIEWENTITY      lpViewEntity;
; 1154 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1155 :    LPVIEWENTITY      lpScopingViewEntity;
; 1156 :    LPVIEWENTITYCSR   lpScopingViewEntityCsr;
; 1157 :    LPENTITYINSTANCE  lpEntityInstance;
; 1158 :    zLONG             lCount = 0;

	mov	DWORD PTR _lCount$[ebp], 0

; 1159 :    zSHORT            nStopLevel;
; 1160 :    zSHORT            nLevel;
; 1161 : 
; 1162 :    if ( cpcScopingEntityName == 0 || cpcScopingEntityName[ 0 ] == 0 )

	cmp	DWORD PTR _cpcScopingEntityName$[ebp], 0
	je	SHORT $L7831
	mov	eax, DWORD PTR _cpcScopingEntityName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L7830
$L7831:

; 1164 :       // No scoping entity is really just like...
; 1165 :       return( CountEntitiesForView( zView, cpcEntityName ) );

	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _zView$[ebp]
	push	eax
	call	_CountEntitiesForView@8
	jmp	$L7820
$L7830:

; 1167 : 
; 1168 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 1169 :                                       &lpScopingViewEntity,
; 1170 :                                       &lpScopingViewEntityCsr,
; 1171 :                                       iCountEntitiesForViewUnderParent,
; 1172 :                                       zView,
; 1173 :                                       cpcScopingEntityName, 0 ) )

	push	0
	mov	ecx, DWORD PTR _cpcScopingEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _zView$[ebp]
	push	edx
	push	131					; 00000083H
	lea	eax, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpScopingViewEntity$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnValidateInstanceParameters
	add	esp, 28					; 0000001cH
	movsx	eax, ax
	test	eax, eax
	je	SHORT $L7832

; 1175 :       return( zCALL_ERROR );

	mov	eax, -16				; fffffff0H
	jmp	$L7820
$L7832:

; 1177 : 
; 1178 :    // If no current entity instance for scoping entity return zero.
; 1179 :    if ( lpScopingViewEntityCsr->hEntityInstance == 0 ||
; 1180 :         lpScopingViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	je	SHORT $L7835
	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+26], 1
	jne	SHORT $L7834
$L7835:

; 1182 :       fnOperationReturn( iCountEntitiesForViewUnderParent, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	131					; 00000083H
	call	_fnOperationReturn
	add	esp, 8

; 1183 :       return( 0 );

	xor	eax, eax
	jmp	$L7820
$L7834:

; 1185 : 
; 1186 :    lpViewEntity = fnValidViewEntity( &lpViewEntityCsr, zView, cpcEntityName, 0 );

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _zView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1187 :    if ( lpViewEntity == 0 )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7836

; 1189 :       fnOperationReturn( iCountEntitiesForViewUnderParent, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	131					; 00000083H
	call	_fnOperationReturn
	add	esp, 8

; 1190 :       return( zCALL_ERROR );

	mov	eax, -16				; fffffff0H
	jmp	$L7820
$L7836:

; 1192 : 
; 1193 :    if ( lpViewEntityCsr->hEntityInstance == 0 ||
; 1194 :         lpViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L7839
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 1
	jne	$L7838
$L7839:

; 1196 :       // We need to find the first entity instance with a view entity
; 1197 :       // matching lpViewEntity.
; 1198 :       lpEntityInstance = zGETPTR( lpScopingViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1199 :       nStopLevel       = lpEntityInstance->nLevel;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR _nStopLevel$[ebp], cx

; 1200 :       lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L7844:

; 1201 : 
; 1202 :       while ( lpEntityInstance &&
; 1203 :               zGETPTR( lpEntityInstance->hViewEntity ) != lpViewEntity &&
; 1204 :               lpEntityInstance->nLevel > nStopLevel )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7845
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpViewEntity$[ebp]
	je	SHORT $L7845
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStopLevel$[ebp]
	cmp	ecx, edx
	jle	SHORT $L7845

; 1206 :          lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1207 :       }

	jmp	SHORT $L7844
$L7845:

; 1208 : 
; 1209 :       // If following condition is true then we never found a matching entity.
; 1210 :       if ( lpEntityInstance == 0 || lpEntityInstance->nLevel <= nStopLevel )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7848
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nStopLevel$[ebp]
	cmp	eax, ecx
	jg	SHORT $L7847
$L7848:

; 1212 :          fnOperationReturn( iCountEntitiesForViewUnderParent, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	131					; 00000083H
	call	_fnOperationReturn
	add	esp, 8

; 1213 :          return( zCALL_ERROR );

	mov	eax, -16				; fffffff0H
	jmp	$L7820
$L7847:

; 1215 : 
; 1216 :       nLevel           = lpEntityInstance->nLevel;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR _nLevel$[ebp], cx

; 1217 :       lpEntityInstance = zGETPTR( lpScopingViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1219 :    else

	jmp	SHORT $L7850
$L7838:

; 1221 : 
; 1222 :       lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1223 :       nLevel           = lpEntityInstance->nLevel;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR _nLevel$[ebp], cx
$L7850:

; 1225 : 
; 1226 :    lpEntityInstance = zGETPTR( lpScopingViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpScopingViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1227 :    nStopLevel       = lpEntityInstance->nLevel;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	mov	WORD PTR _nStopLevel$[ebp], dx
$L7854:

; 1228 : 
; 1229 :    while ( lpEntityInstance )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7855

; 1231 :       if ( lpEntityInstance->u.nInd.bHidden == FALSE &&
; 1232 :            lpEntityInstance->nLevel == nLevel &&
; 1233 :            zGETPTR( lpEntityInstance->hViewEntity ) == lpViewEntity )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7857
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	eax, ecx
	jne	SHORT $L7857
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpViewEntity$[ebp]
	jne	SHORT $L7857

; 1235 :          lCount++;

	mov	ecx, DWORD PTR _lCount$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lCount$[ebp], ecx
$L7857:

; 1237 : 
; 1238 :       lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1239 : 
; 1240 :       if ( lpEntityInstance == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	SHORT $L7859

; 1241 :          break;

	jmp	SHORT $L7855
$L7859:

; 1242 : 
; 1243 :       if ( lpEntityInstance->nLevel <= nStopLevel )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	movsx	eax, WORD PTR _nStopLevel$[ebp]
	cmp	edx, eax
	jg	SHORT $L7860

; 1244 :          break;

	jmp	SHORT $L7855
$L7860:

; 1245 :    }

	jmp	SHORT $L7854
$L7855:

; 1246 : 
; 1247 :    fnOperationReturn( iCountEntitiesForViewUnderParent, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	131					; 00000083H
	call	_fnOperationReturn
	add	esp, 8

; 1248 :    return( lCount );

	mov	eax, DWORD PTR _lCount$[ebp]
$L7820:

; 1249 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_CountEntitiesForViewUnderParent@12 ENDP
_TEXT	ENDS
PUBLIC	_DeleteEntity@12
PUBLIC	??_C@_0BM@EFIC@Entity?5Deletion?5not?5allowed?$AA@ ; `string'
PUBLIC	??_C@_0EJ@KNBD@Can?8t?5delete?5entity?5?$CFs?5because?5o@ ; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_0DC@CMIH@Entity?5Deletion?5not?5allowed?5?9?5ch@ ; `string'
EXTRN	__imp__sprintf:NEAR
EXTRN	_TraceLineS@8:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\A\oe\KZOEEIAA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0BM@EFIC@Entity?5Deletion?5not?5allowed?$AA@
_DATA	SEGMENT
??_C@_0BM@EFIC@Entity?5Deletion?5not?5allowed?$AA@ DB 'Entity Deletion no'
	DB	't allowed', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EJ@KNBD@Can?8t?5delete?5entity?5?$CFs?5because?5o@
_DATA	SEGMENT
??_C@_0EJ@KNBD@Can?8t?5delete?5entity?5?$CFs?5because?5o@ DB 'Can''t dele'
	DB	'te entity %s because of Restrict constraint on child entity %'
	DB	's', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DC@CMIH@Entity?5Deletion?5not?5allowed?5?9?5ch@
_DATA	SEGMENT
??_C@_0DC@CMIH@Entity?5Deletion?5not?5allowed?5?9?5ch@ DB 'Entity Deletio'
	DB	'n not allowed - child is restricted', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nReposition$ = 16
_lpCurrentTask$ = -36
_lpViewCsr$ = -4
_lpViewOI$ = -28
_lpViewEntity$ = -16
_lpViewEntityCsr$ = -32
_lpEntityInstance$ = -12
_lpPrevVsn$ = -20
_bTemporal$ = -24
_nRC$ = -8
_lpChild$7882 = -40
_lpChildViewEntity$7888 = -44
_szMsg$7894 = -244
_n$7899 = -248
_DeleteEntity@12 PROC NEAR

; 1280 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 252				; 000000fcH

; 1281 :    LPTASK            lpCurrentTask;
; 1282 :    LPVIEWCSR         lpViewCsr;
; 1283 :    LPVIEWOI          lpViewOI;
; 1284 :    LPVIEWENTITY      lpViewEntity;
; 1285 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1286 :    LPENTITYINSTANCE  lpEntityInstance;
; 1287 :    LPENTITYINSTANCE  lpPrevVsn;
; 1288 :    zBOOL             bTemporal;
; 1289 :    zSHORT            nRC;
; 1290 : 
; 1291 :    // Validate that the source view entity exists and has a cursor
; 1292 :    // value for copying, we call fnValidateInstanceParameters for the
; 1293 :    // source since it requires the same editing as an attribute retrieval
; 1294 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 1295 :                                       &lpViewEntity,
; 1296 :                                       &lpViewEntityCsr,
; 1297 :                                       iDeleteEntity,
; 1298 :                                       lpView,
; 1299 :                                       cpcEntityName, 1 ) )

	push	1
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	106					; 0000006aH
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
	je	SHORT $L7877

; 1301 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7867
$L7877:

; 1303 : 
; 1304 :    // Make sure entity can be deleted
; 1305 :    if ( lpViewEntity->bDelete == FALSE )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7878

; 1307 :       // "KZOEE106 - Rules violation"
; 1308 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 106, 0,
; 1309 :                         "Entity Deletion not allowed",
; 1310 :                         lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0BM@EFIC@Entity?5Deletion?5not?5allowed?$AA@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1311 :       fnOperationReturn( iDeleteEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	106					; 0000006aH
	call	_fnOperationReturn
	add	esp, 8

; 1312 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7867
$L7878:

; 1314 : 
; 1315 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1316 : 
; 1317 :    // Make sure that none of the child entities have restrictions on their
; 1318 :    // parents being deleted.  If bCheckRestrict is TRUE, then at least one
; 1319 :    // child entity has the bPRestrict flag set.
; 1320 :    if ( lpViewEntity->bCheckRestrict )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 9
	and	eax, 1
	test	eax, eax
	je	$L7887

; 1322 :       LPENTITYINSTANCE lpChild;
; 1323 : 
; 1324 :       // Loop through each of the child entity instances of lpEntityInstance.
; 1325 :       // When the level of the lpChild entity instance is no longer greater
; 1326 :       // than the level of the current entity instance it is not a child.
; 1327 :       for ( lpChild = zGETPTR( lpEntityInstance->hNextHier );
; 1328 :             lpChild;
; 1329 :             lpChild = zGETPTR( lpChild->hNextHier ) )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChild$7882[ebp], eax
	jmp	SHORT $L7885
$L7886:
	mov	eax, DWORD PTR _lpChild$7882[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChild$7882[ebp], eax
$L7885:
	cmp	DWORD PTR _lpChild$7882[ebp], 0
	je	$L7887

; 1331 :          LPVIEWENTITY lpChildViewEntity = zGETPTR( lpChild->hViewEntity );

	mov	edx, DWORD PTR _lpChild$7882[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpChildViewEntity$7888[ebp], eax

; 1332 : 
; 1333 :          if ( lpChildViewEntity->nLevel <= lpViewEntity->nLevel )

	mov	ecx, DWORD PTR _lpChildViewEntity$7888[ebp]
	movsx	edx, WORD PTR [ecx+215]
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	cmp	edx, ecx
	jg	SHORT $L7890

; 1334 :             break;

	jmp	$L7887
$L7890:

; 1335 : 
; 1336 :          // We check the entity levels because we only want child entities that
; 1337 :          // are direct children of lpViewEntity.
; 1338 :          if ( lpChildViewEntity->nLevel != lpViewEntity->nLevel + 1 )

	mov	edx, DWORD PTR _lpChildViewEntity$7888[ebp]
	movsx	eax, WORD PTR [edx+215]
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	add	edx, 1
	cmp	eax, edx
	je	SHORT $L7891

; 1339 :             continue;

	jmp	SHORT $L7886
$L7891:

; 1340 : 
; 1341 :          // Don't bother checking a hidden child.
; 1342 :          if ( lpChild->u.nInd.bHidden )

	mov	eax, DWORD PTR _lpChild$7882[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7892

; 1343 :             continue;

	jmp	SHORT $L7886
$L7892:

; 1344 : 
; 1345 :          // If the bPRestrict flag is set, then we can't delete the entity.
; 1346 :          if ( lpChildViewEntity->bPRestrict )

	mov	edx, DWORD PTR _lpChildViewEntity$7888[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 8
	and	eax, 1
	test	eax, eax
	je	SHORT $L7893

; 1348 :             zCHAR szMsg[ 200 ];
; 1349 : 
; 1350 :             zsprintf( szMsg, "Can't delete entity %s because of Restrict "
; 1351 :                      "constraint on child entity %s",
; 1352 :                       lpViewEntity->szName,
; 1353 :                      lpChildViewEntity->szName );

	mov	ecx, DWORD PTR _lpChildViewEntity$7888[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0EJ@KNBD@Can?8t?5delete?5entity?5?$CFs?5because?5o@ ; `string'
	lea	eax, DWORD PTR _szMsg$7894[ebp]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 1354 :             TraceLineS( szMsg, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	ecx, DWORD PTR _szMsg$7894[ebp]
	push	ecx
	call	_TraceLineS@8

; 1355 : 
; 1356 :             // "KZOEE106 - Rules violation"
; 1357 :             fnIssueCoreError( lpCurrentTask, lpView, 8, 106, 0,
; 1358 :                               "Entity Deletion not allowed"
; 1359 :                               " - child is restricted",
; 1360 :                               lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0DC@CMIH@Entity?5Deletion?5not?5allowed?5?9?5ch@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1361 :             fnOperationReturn( iDeleteEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	106					; 0000006aH
	call	_fnOperationReturn
	add	esp, 8

; 1362 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7867
$L7893:

; 1364 :       }

	jmp	$L7886
$L7887:

; 1367 : 
; 1368 : #ifdef __ACTIVATE_CONSTRAINTS__
; 1369 :    // If there is an Entity Constraint for delete, see if it has
; 1370 :    // any objections about continuing.
; 1371 :    if ( lpViewEntity->bDeleteConstraint )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+239]
	shr	ecx, 2
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7900

; 1373 :       zSHORT   n;
; 1374 : 
; 1375 :       n = fnInvokeECEOperation( lpView, lpViewEntity, lpCurrentTask,
; 1376 :                                 zECE_DELETE, 0 );

	push	0
	push	4
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnInvokeECEOperation
	add	esp, 20					; 00000014H
	mov	WORD PTR _n$7899[ebp], ax

; 1377 :       // If constraint handler doesn't like something, get out.
; 1378 :       if ( n )

	movsx	edx, WORD PTR _n$7899[ebp]
	test	edx, edx
	je	SHORT $L7900

; 1380 :          fnOperationReturn( iDeleteEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	106					; 0000006aH
	call	_fnOperationReturn
	add	esp, 8

; 1381 :          return( n );

	mov	ax, WORD PTR _n$7899[ebp]
	jmp	$L7867
$L7900:

; 1384 : #endif
; 1385 : 
; 1386 :    // Get the entity instance to be deleted.
; 1387 :    fnRemoveAllChildTemporalVsns( lpView, lpEntityInstance, 0 );

	push	0
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnRemoveAllChildTemporalVsns
	add	esp, 12					; 0000000cH

; 1388 : 
; 1389 :    // If the entity instance is a temporal entity or the root of
; 1390 :    // a versioned Subobject, issue a cancel subobject prior to the
; 1391 :    // call to delete entity.
; 1392 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1393 :    lpPrevVsn = zGETPTR( lpEntityInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$[ebp], eax

; 1394 :    if ( lpEntityInstance->u.nInd.bTemporal ||
; 1395 :         (lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot) )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7903
	cmp	DWORD PTR _lpPrevVsn$[ebp], 0
	je	$L7904
	mov	ecx, DWORD PTR _lpPrevVsn$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 9
	and	edx, 1
	test	edx, edx
	je	$L7904
$L7903:

; 1397 :       // Set temporal entity indicator.
; 1398 :       bTemporal = lpEntityInstance->u.nInd.bTemporal;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	mov	BYTE PTR _bTemporal$[ebp], cl

; 1399 :       nRC = CancelSubobject( lpView, cpcEntityName );

	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_CancelSubobject@8
	mov	WORD PTR _nRC$[ebp], ax

; 1400 : 
; 1401 :       // If the entity instance was temporal, then the cancel deleted the
; 1402 :       // temporal instance, issue the repositioning requested and return.
; 1403 :       if ( bTemporal )

	mov	ecx, DWORD PTR _bTemporal$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	$L7904

; 1405 :          // Now see if the user requested the cursor to be repositioned.
; 1406 :          if ( nRC == 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jne	$L7907

; 1407 :          switch ( nReposition )
; 1408 :          {

	movsx	eax, WORD PTR _nReposition$[ebp]
	mov	DWORD PTR -252+[ebp], eax
	mov	ecx, DWORD PTR -252+[ebp]
	sub	ecx, 1
	mov	DWORD PTR -252+[ebp], ecx
	cmp	DWORD PTR -252+[ebp], 3
	ja	SHORT $L7914
	mov	edx, DWORD PTR -252+[ebp]
	jmp	DWORD PTR $L9533[edx*4]
$L7910:

; 1409 :             case zREPOS_FIRST:
; 1410 :                nRC = SetCursorFirstEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetCursorFirstEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1411 :                break;

	jmp	SHORT $L7907
$L7911:

; 1412 : 
; 1413 :             case zREPOS_LAST:
; 1414 :                nRC = SetCursorLastEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SetCursorLastEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1415 :                break;

	jmp	SHORT $L7907
$L7912:

; 1416 : 
; 1417 :             case zREPOS_NEXT:
; 1418 :                nRC = SetCursorNextEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SetCursorNextEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1419 :                break;

	jmp	SHORT $L7907
$L7913:

; 1420 : 
; 1421 :             case zREPOS_PREV:
; 1422 :                nRC = SetCursorPrevEntity( lpView, cpcEntityName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetCursorPrevEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1423 :                break;

	jmp	SHORT $L7907
$L7914:

; 1424 : 
; 1425 :             default:
; 1426 :                nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH
$L7907:

; 1428 : 
; 1429 :          // We think we're done, tell the caller everything is AOK!
; 1430 :          fnOperationReturn( iDeleteEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	106					; 0000006aH
	call	_fnOperationReturn
	add	esp, 8

; 1431 :          return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L7867
$L7904:

; 1434 : 
; 1435 :    // Call fnDeleteEntity if all is well so far.
; 1436 :    if ( nRC == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	SHORT $L7915

; 1438 :       // Call fnDeleteEntity.
; 1439 :       nRC = fnDeleteEntity( lpView, lpViewEntity, lpViewEntityCsr,
; 1440 :                             nReposition, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	dx, WORD PTR _nReposition$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnDeleteEntity
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax
$L7915:

; 1442 : 
; 1443 : #ifdef __RECLAIM__
; 1444 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1445 :    lpViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1446 :    if ( nRC != zCURSOR_UNDEFINED && lpViewOI->nHiddenCount > __RECLAIM_LIMIT__ )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -2					; fffffffeH
	je	SHORT $L7918
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	movsx	eax, WORD PTR [edx+24]
	cmp	eax, 20					; 00000014H
	jle	SHORT $L7918

; 1447 :       fnReclaimHiddenInstances( lpViewOI );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	push	ecx
	call	_fnReclaimHiddenInstances@4
$L7918:

; 1448 : #endif
; 1449 : 
; 1450 :    // We think we're done, tell the caller everything is AOK!
; 1451 :    fnOperationReturn( iDeleteEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	106					; 0000006aH
	call	_fnOperationReturn
	add	esp, 8

; 1452 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7867:

; 1453 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
$L9533:
	DD	$L7910
	DD	$L7911
	DD	$L7912
	DD	$L7913
_DeleteEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_fnSameRelationshipInstance
PUBLIC	_fnInstanceKeysMatch
_TEXT	SEGMENT
_lpEntityInstance1$ = 8
_lpEntityInstance2$ = 12
_lpViewEntity1$ = -4
_lpViewEntity2$ = -8
_fnSameRelationshipInstance PROC NEAR

; 1466 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 1467 :    LPVIEWENTITY lpViewEntity1;
; 1468 :    LPVIEWENTITY lpViewEntity2;
; 1469 : 
; 1470 :    if ( lpEntityInstance1 == lpEntityInstance2 )

	mov	eax, DWORD PTR _lpEntityInstance1$[ebp]
	cmp	eax, DWORD PTR _lpEntityInstance2$[ebp]
	jne	SHORT $L7927

; 1471 :       return( 1 );  // Same relationship

	mov	ax, 1
	jmp	$L7924
$L7927:

; 1472 : 
; 1473 :    lpViewEntity1 = zGETPTR( lpEntityInstance1->hViewEntity );

	mov	ecx, DWORD PTR _lpEntityInstance1$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity1$[ebp], eax

; 1474 :    lpViewEntity2 = zGETPTR( lpEntityInstance2->hViewEntity );

	mov	eax, DWORD PTR _lpEntityInstance2$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity2$[ebp], eax

; 1475 : 
; 1476 :    if ( lpViewEntity1->lERRelTok == lpViewEntity2->lERRelTok &&
; 1477 :         lpEntityInstance1->hParent && lpEntityInstance2->hParent )

	mov	edx, DWORD PTR _lpViewEntity1$[ebp]
	mov	eax, DWORD PTR _lpViewEntity2$[ebp]
	mov	ecx, DWORD PTR [edx+199]
	cmp	ecx, DWORD PTR [eax+199]
	jne	SHORT $L7933
	mov	edx, DWORD PTR _lpEntityInstance1$[ebp]
	cmp	DWORD PTR [edx+30], 0
	je	SHORT $L7933
	mov	eax, DWORD PTR _lpEntityInstance2$[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	SHORT $L7933

; 1479 :       if ( fnInstanceKeysMatch( lpEntityInstance1, lpEntityInstance2 ) &&
; 1480 :            fnInstanceKeysMatch( zGETPTR( lpEntityInstance1->hParent ),
; 1481 :                                 zGETPTR( lpEntityInstance2->hParent ) ) )

	mov	ecx, DWORD PTR _lpEntityInstance2$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpEntityInstance1$[ebp]
	push	edx
	call	_fnInstanceKeysMatch
	add	esp, 8
	movsx	eax, ax
	test	eax, eax
	je	SHORT $L7933
	mov	ecx, DWORD PTR _lpEntityInstance2$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpEntityInstance1$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnInstanceKeysMatch
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L7933

; 1483 :          return( 1 );

	mov	ax, 1
	jmp	SHORT $L7924
$L7933:

; 1486 : 
; 1487 :    return( 0 );  // Not the same relationship

	xor	ax, ax
$L7924:

; 1488 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnSameRelationshipInstance ENDP
_TEXT	ENDS
PUBLIC	_fnExcludeEntityInstance
PUBLIC	_fnHideExcludedDeletedInstances
EXTRN	_fnSetEntityCursor:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntity$ = 12
_lpViewEntityCsr$ = 16
_nReposition$ = 20
_lpCurrentTask$ = 24
_lpViewCsr$ = -4
_lpViewOI$ = -40
_lpStartEntityInstance$ = -24
_lpEntityInstance$ = -16
_lpLinkedInstance$ = -36
_lpWorkInstance$ = -32
_nStartLevel$ = -28
_nLevel$ = -8
_nHiddenCount$ = -20
_nRC$ = -12
_lpTempViewEntity$7959 = -44
_fnDeleteEntity PROC NEAR

; 1504 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H

; 1505 :    LPVIEWCSR         lpViewCsr;
; 1506 :    LPVIEWOI          lpViewOI;
; 1507 :    LPENTITYINSTANCE  lpStartEntityInstance;
; 1508 :    LPENTITYINSTANCE  lpEntityInstance;
; 1509 :    LPENTITYINSTANCE  lpLinkedInstance;
; 1510 :    LPENTITYINSTANCE  lpWorkInstance;
; 1511 :    zSHORT            nStartLevel;
; 1512 :    zSHORT            nLevel;
; 1513 :    zSHORT            nHiddenCount;
; 1514 :    zSHORT            nRC;
; 1515 : 
; 1516 :    // Get entity instance at which to start the delete.
; 1517 :    lpStartEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartEntityInstance$[ebp], eax

; 1518 :    lpEntityInstance = lpStartEntityInstance;

	mov	edx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	DWORD PTR _lpEntityInstance$[ebp], edx

; 1519 :    nStartLevel = lpEntityInstance->nLevel;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR _nStartLevel$[ebp], cx

; 1520 : 
; 1521 :    // First, exclude the entity instance, then go through and mark
; 1522 :    // all those as deleted whose delete rules support delete.
; 1523 :    lpLinkedInstance = lpEntityInstance;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR _lpLinkedInstance$[ebp], edx
$L7957:

; 1526 :       LPVIEWENTITY lpTempViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempViewEntity$7959[ebp], eax

; 1527 : 
; 1528 :       // If the instance in question is already hidden, skip it
; 1529 :       // and all of its descendents since it may have been excluded or
; 1530 :       // moved BEFORE the Delete was issued.
; 1531 :       if ( lpEntityInstance->u.nInd.bHidden )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L7961

; 1533 :          nLevel = lpEntityInstance->nLevel;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	mov	WORD PTR _nLevel$[ebp], dx

; 1534 :          lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L7964:

; 1535 :          while ( lpEntityInstance &&
; 1536 :                  lpEntityInstance->nLevel > nLevel )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7965
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	eax, ecx
	jle	SHORT $L7965

; 1538 :             lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1539 :          }

	jmp	SHORT $L7964
$L7965:

; 1541 :       else

	jmp	$L7975
$L7961:

; 1542 :       if ( lpTempViewEntity->bPDelete == FALSE &&
; 1543 :            lpEntityInstance->nLevel > nStartLevel )

	mov	ecx, DWORD PTR _lpTempViewEntity$7959[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 7
	and	edx, 1
	test	edx, edx
	jne	$L7968
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nStartLevel$[ebp]
	cmp	ecx, edx
	jle	SHORT $L7968

; 1545 :          // If we get an entity instance which cannot be deleted,
; 1546 :          // skip it and all its descendents since they were
; 1547 :          // already excluded in the beginning of this operation.
; 1548 :          nLevel = lpEntityInstance->nLevel;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR _nLevel$[ebp], cx

; 1549 :          if ( lpEntityInstance->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7969

; 1550 :             fnExcludeEntityInstance( lpEntityInstance );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	call	_fnExcludeEntityInstance
	add	esp, 4
$L7969:

; 1551 : 
; 1552 :          lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L7972:

; 1553 :          while ( lpEntityInstance &&
; 1554 :                  lpEntityInstance->nLevel > nLevel )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7973
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	movsx	eax, WORD PTR _nLevel$[ebp]
	cmp	edx, eax
	jle	SHORT $L7973

; 1556 :             lpEntityInstance->u.nInd.bHidden = TRUE;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	dh, 4
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 1557 :             lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1558 :          }

	jmp	SHORT $L7972
$L7973:

; 1560 :       else

	jmp	$L7975
$L7968:

; 1562 :          // Mark all linked instances to this instance as deleted.
; 1563 :          lpWorkInstance = lpEntityInstance;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR _lpWorkInstance$[ebp], eax
$L7977:

; 1566 :             if ( lpWorkInstance->u.nInd.bHidden == FALSE )

	mov	ecx, DWORD PTR _lpWorkInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7979

; 1567 :                lpWorkInstance->u.nInd.bDeleted = TRUE;

	mov	eax, DWORD PTR _lpWorkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	or	ecx, 8
	mov	edx, DWORD PTR _lpWorkInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx
$L7979:

; 1568 : 
; 1569 :             lpWorkInstance = zGETPTR( lpWorkInstance->hNextLinked );

	mov	eax, DWORD PTR _lpWorkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkInstance$[ebp], eax

; 1570 :             if ( lpWorkInstance == 0 || lpWorkInstance == lpEntityInstance )

	cmp	DWORD PTR _lpWorkInstance$[ebp], 0
	je	SHORT $L7982
	mov	edx, DWORD PTR _lpWorkInstance$[ebp]
	cmp	edx, DWORD PTR _lpEntityInstance$[ebp]
	jne	SHORT $L7981
$L7982:

; 1571 :                break;

	jmp	SHORT $L7978
$L7981:

; 1572 : 
; 1573 : #if 1
; 1574 :             // BEGIN - 9/30/93 - Bug in TZTENVRO Deletes
; 1575 :             // We are on a linked instance of a target delete, if the
; 1576 :             // instance in question is part of the same ViewOI and
; 1577 :             // represents a different relationship type or an instance
; 1578 :             // of the same relationship to a different parent, mark the
; 1579 :             // instance as Excluded.
; 1580 :             if ( lpWorkInstance->u.nInd.bHidden == FALSE )

	mov	eax, DWORD PTR _lpWorkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7984

; 1582 :                if ( lpWorkInstance->hViewOI == lpEntityInstance->hViewOI &&
; 1583 :                     !fnSameRelationshipInstance( lpWorkInstance,
; 1584 :                                                  lpEntityInstance ) )

	mov	edx, DWORD PTR _lpWorkInstance$[ebp]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [edx+10]
	cmp	ecx, DWORD PTR [eax+10]
	jne	SHORT $L7984
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWorkInstance$[ebp]
	push	eax
	call	_fnSameRelationshipInstance
	add	esp, 8
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L7984

; 1586 :                   lpWorkInstance->u.nInd.bExcluded = TRUE;

	mov	edx, DWORD PTR _lpWorkInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	al, 16					; 00000010H
	mov	ecx, DWORD PTR _lpWorkInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax
$L7984:

; 1589 :             // END - 9/30/93
; 1590 : #endif
; 1591 :          }

	jmp	$L7977
$L7978:

; 1592 : 
; 1593 :          lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L7975:

; 1595 : 
; 1596 :       // Issue the delete process for all linked instances to the initial
; 1597 :       // starting instance.
; 1598 :       if ( lpEntityInstance == 0 || lpEntityInstance->nLevel <= nStartLevel )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7987
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	movsx	eax, WORD PTR _nStartLevel$[ebp]
	cmp	edx, eax
	jg	SHORT $L7991
$L7987:

; 1600 :          lpLinkedInstance = zGETPTR( lpLinkedInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpLinkedInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedInstance$[ebp], eax

; 1601 :          if ( lpLinkedInstance == 0 ||
; 1602 :               lpLinkedInstance == lpStartEntityInstance )

	cmp	DWORD PTR _lpLinkedInstance$[ebp], 0
	je	SHORT $L7990
	mov	eax, DWORD PTR _lpLinkedInstance$[ebp]
	cmp	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	jne	SHORT $L7989
$L7990:

; 1604 :             break;

	jmp	SHORT $L7958
$L7989:

; 1608 :             lpEntityInstance = lpLinkedInstance;

	mov	ecx, DWORD PTR _lpLinkedInstance$[ebp]
	mov	DWORD PTR _lpEntityInstance$[ebp], ecx

; 1609 :             nStartLevel = lpEntityInstance->nLevel;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	ax, WORD PTR [edx+58]
	mov	WORD PTR _nStartLevel$[ebp], ax
$L7991:

; 1612 :    }

	jmp	$L7957
$L7958:

; 1613 : 
; 1614 :    // After marking all necessary instances as deleted, call
; 1615 :    // fnHideExcludedDeletedInstances to hide ALL appropriate instances
; 1616 :    // from view.
; 1617 :    nHiddenCount = fnHideExcludedDeletedInstances( lpStartEntityInstance, 1 );

	push	1
	mov	ecx, DWORD PTR _lpStartEntityInstance$[ebp]
	push	ecx
	call	_fnHideExcludedDeletedInstances
	add	esp, 8
	mov	WORD PTR _nHiddenCount$[ebp], ax

; 1618 : 
; 1619 :    // Update the hidden count in the View OI.
; 1620 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1621 :    lpViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1622 :    lpViewOI->nHiddenCount += nHiddenCount;

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	cx, WORD PTR [eax+24]
	add	cx, WORD PTR _nHiddenCount$[ebp]
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	WORD PTR [edx+24], cx

; 1623 : 
; 1624 : // >>> RAD54278-1 BEGIN
; 1625 :    fnSetUpdateIndicator( lpViewOI, lpStartEntityInstance,
; 1626 :                          0, TRUE, FALSE, FALSE );

	push	0
	push	0
	push	1
	push	0
	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	push	ecx
	call	_fnSetUpdateIndicator
	add	esp, 24					; 00000018H

; 1627 : // >>> RAD54278-1 END
; 1628 : 
; 1629 :    // Now see if the user requested the cursor to be repositioned.
; 1630 :    switch ( nReposition )
; 1631 :    {

	movsx	edx, WORD PTR _nReposition$[ebp]
	mov	DWORD PTR -48+[ebp], edx
	cmp	DWORD PTR -48+[ebp], 0
	jle	SHORT $L8000
	cmp	DWORD PTR -48+[ebp], 4
	jle	SHORT $L7998
	jmp	SHORT $L8000
$L7998:

; 1632 :       case zREPOS_FIRST:
; 1633 :       case zREPOS_LAST:
; 1634 :       case zREPOS_NEXT:
; 1635 :       case zREPOS_PREV:
; 1636 :          nRC = fnSetEntityCursor( lpView, lpViewEntity, lpViewEntityCsr,
; 1637 :                                   0, (zLONG) nReposition,
; 1638 :                                   0, 0, 0, 0, 0, 0,
; 1639 :                                   lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	0
	push	0
	push	0
	push	0
	push	0
	push	0
	movsx	ecx, WORD PTR _nReposition$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetEntityCursor
	add	esp, 48					; 00000030H
	mov	WORD PTR _nRC$[ebp], ax

; 1640 :          break;

	jmp	SHORT $L7995
$L8000:

; 1641 : 
; 1642 :       default:
; 1643 :          nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH
$L7995:

; 1645 : 
; 1646 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 1647 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnDeleteEntity ENDP
_TEXT	ENDS
PUBLIC	_ExcludeEntity@12
PUBLIC	_fnExcludeEntity
PUBLIC	??_C@_0BN@HDIE@Entity?5Exclusion?5not?5allowed?$AA@ ; `string'
;	COMDAT ??_C@_0BN@HDIE@Entity?5Exclusion?5not?5allowed?$AA@
; File C:\10C\A\oe\KZOEEIAA.C
_DATA	SEGMENT
??_C@_0BN@HDIE@Entity?5Exclusion?5not?5allowed?$AA@ DB 'Entity Exclusion '
	DB	'not allowed', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nReposition$ = 16
_lpCurrentTask$ = -32
_lpViewCsr$ = -4
_lpViewOI$ = -24
_lpViewEntity$ = -16
_lpViewEntityCsr$ = -28
_lpPrevVsn$ = -20
_lpEntityInstance$ = -12
_nRC$ = -8
_n$8020 = -36
_ExcludeEntity@12 PROC NEAR

; 1680 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 1681 :    LPTASK            lpCurrentTask;
; 1682 :    LPVIEWCSR         lpViewCsr;
; 1683 :    LPVIEWOI          lpViewOI;
; 1684 :    LPVIEWENTITY      lpViewEntity;
; 1685 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1686 :    LPENTITYINSTANCE  lpPrevVsn;
; 1687 :    LPENTITYINSTANCE  lpEntityInstance;
; 1688 :    zSHORT            nRC;
; 1689 : 
; 1690 :    // Validate that the source view entity exists and has a cursor value
; 1691 :    // for copying.  We call fnValidateInstanceParameters for the source
; 1692 :    // since it requires the same editing as an attribute retrieval
; 1693 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 1694 :                                       &lpViewEntity,
; 1695 :                                       &lpViewEntityCsr,
; 1696 :                                       iExcludeEntity,
; 1697 :                                       lpView,
; 1698 :                                       cpcEntityName, 1 ) )

	push	1
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	107					; 0000006bH
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
	je	SHORT $L8016

; 1700 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8007
$L8016:

; 1702 : 
; 1703 :    // Make sure entity can be excluded
; 1704 :    if ( lpViewEntity->hParent && lpViewEntity->bExclude == FALSE )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [eax+10], 0
	je	SHORT $L8017
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 4
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8017

; 1706 :       // "KZOEE106 - Rules violation"
; 1707 :       fnIssueCoreError( lpCurrentTask, lpView, 8, 106, 0,
; 1708 :                         "Entity Exclusion not allowed",
; 1709 :                         lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0BN@HDIE@Entity?5Exclusion?5not?5allowed?$AA@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1710 :       fnOperationReturn( iExcludeEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	107					; 0000006bH
	call	_fnOperationReturn
	add	esp, 8

; 1711 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8007
$L8017:

; 1713 : 
; 1714 : #ifdef __ACTIVATE_CONSTRAINTS__
; 1715 :    // If there is an Entity Constraint for exclude, see if it has
; 1716 :    // any objections about continuing.
; 1717 :    if ( lpViewEntity->bExcludeConstraint )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+239]
	shr	edx, 4
	and	edx, 1
	test	edx, edx
	je	SHORT $L8021

; 1719 :       zSHORT   n;
; 1720 : 
; 1721 :       n = fnInvokeECEOperation( lpView, lpViewEntity, lpCurrentTask,
; 1722 :                                 zECE_EXCLUDE, 0 );

	push	0
	push	5
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnInvokeECEOperation
	add	esp, 20					; 00000014H
	mov	WORD PTR _n$8020[ebp], ax

; 1723 :       // If constraint handler doesn't like something, get out.
; 1724 :       if ( n )

	movsx	eax, WORD PTR _n$8020[ebp]
	test	eax, eax
	je	SHORT $L8021

; 1726 :          fnOperationReturn( iExcludeEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	107					; 0000006bH
	call	_fnOperationReturn
	add	esp, 8

; 1727 :          return( n );

	mov	ax, WORD PTR _n$8020[ebp]
	jmp	$L8007
$L8021:

; 1730 : #endif
; 1731 : 
; 1732 :    // Get the entity instance to be excluded
; 1733 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1734 :    fnRemoveAllChildTemporalVsns( lpView, lpEntityInstance, 0 );

	push	0
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnRemoveAllChildTemporalVsns
	add	esp, 12					; 0000000cH

; 1735 : 
; 1736 :    // If the entity instance is a temporal entity or the root of
; 1737 :    // a versioned Subobject, issue a cancel subobject prior to the
; 1738 :    // call to exclude entity
; 1739 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1740 :    lpPrevVsn = zGETPTR( lpEntityInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$[ebp], eax

; 1741 :    if ( lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot )

	cmp	DWORD PTR _lpPrevVsn$[ebp], 0
	je	SHORT $L8024
	mov	edx, DWORD PTR _lpPrevVsn$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 9
	and	eax, 1
	test	eax, eax
	je	SHORT $L8024

; 1742 :       nRC = CancelSubobject( lpView, cpcEntityName );

	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_CancelSubobject@8
	mov	WORD PTR _nRC$[ebp], ax
$L8024:

; 1743 : 
; 1744 :    // Call fnExcludeEntity
; 1745 :    nRC = fnExcludeEntity( lpView, lpViewEntity, lpViewEntityCsr,
; 1746 :                           nReposition, 1 );

	push	1
	mov	ax, WORD PTR _nReposition$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnExcludeEntity
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 1747 : #ifdef __RECLAIM__
; 1748 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1749 :    lpViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1750 :    if ( nRC != zCURSOR_UNDEFINED && lpViewOI->nHiddenCount > __RECLAIM_LIMIT__ )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -2					; fffffffeH
	je	SHORT $L8027
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	movsx	ecx, WORD PTR [eax+24]
	cmp	ecx, 20					; 00000014H
	jle	SHORT $L8027

; 1751 :       fnReclaimHiddenInstances( lpViewOI );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	push	edx
	call	_fnReclaimHiddenInstances@4
$L8027:

; 1752 : #endif
; 1753 : 
; 1754 :    // Whew, I think we've done it, return to caller
; 1755 :    fnOperationReturn( iExcludeEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	107					; 0000006bH
	call	_fnOperationReturn
	add	esp, 8

; 1756 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8007:

; 1757 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_ExcludeEntity@12 ENDP
_TEXT	ENDS
PUBLIC	_fnHideLinkedChildren
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntity$ = 12
_lpViewEntityCsr$ = 16
_nReposition$ = 20
_bMarkExcluded$ = 24
_lpViewCsr$ = -8
_lpViewOI$ = -24
_lpEntityInstance$ = -16
_bInvertedFound$ = -4
_nHiddenCount$ = -20
_nRC$ = -12
_fnExcludeEntity PROC NEAR

; 1773 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 1774 :    LPVIEWCSR         lpViewCsr;
; 1775 :    LPVIEWOI          lpViewOI;
; 1776 :    LPENTITYINSTANCE  lpEntityInstance;
; 1777 :    zBOOL             bInvertedFound;
; 1778 :    zSHORT            nHiddenCount;
; 1779 :    zSHORT            nRC;
; 1780 : 
; 1781 : 
; 1782 :    // Exclude the entity instance by calling fnExcludeEntityInstance
; 1783 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1784 :    bInvertedFound = fnExcludeEntityInstance( lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	call	_fnExcludeEntityInstance
	add	esp, 4
	mov	BYTE PTR _bInvertedFound$[ebp], al

; 1785 : 
; 1786 :    // Now that the Exclude process is complete for the instance,
; 1787 :    // call fnHideDeletedExcludedInstances for the excluded instances Parent
; 1788 :    // This is done in the case of an include because linked instances of
; 1789 :    // this entity instances parents may have been as a result of structure
; 1790 :    // inversion.
; 1791 :    nHiddenCount = 0;

	mov	WORD PTR _nHiddenCount$[ebp], 0

; 1792 :    if ( bInvertedFound )

	mov	eax, DWORD PTR _bInvertedFound$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8046

; 1793 :       nHiddenCount = fnHideLinkedChildren( zGETPTR( lpEntityInstance->
; 1794 :                                                                   hParent ),
; 1795 :                                            bMarkExcluded );

	mov	cx, WORD PTR _bMarkExcluded$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnHideLinkedChildren
	add	esp, 8
	mov	WORD PTR _nHiddenCount$[ebp], ax
$L8046:

; 1796 :    nHiddenCount += fnHideExcludedDeletedInstances( lpEntityInstance,
; 1797 :                                                    bMarkExcluded );

	mov	cx, WORD PTR _bMarkExcluded$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	call	_fnHideExcludedDeletedInstances
	add	esp, 8
	mov	cx, WORD PTR _nHiddenCount$[ebp]
	add	cx, ax
	mov	WORD PTR _nHiddenCount$[ebp], cx

; 1798 : 
; 1799 :    // Update the hidden count in the View OI
; 1800 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1801 :    lpViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1802 :    lpViewOI->nHiddenCount += nHiddenCount;

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	cx, WORD PTR [eax+24]
	add	cx, WORD PTR _nHiddenCount$[ebp]
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	WORD PTR [edx+24], cx

; 1803 :    if ( bMarkExcluded )

	movsx	eax, WORD PTR _bMarkExcluded$[ebp]
	test	eax, eax
	je	SHORT $L8050

; 1804 : // >>> RAD54278-1 BEGIN
; 1805 :       fnSetUpdateIndicator( lpViewOI, lpEntityInstance, 0, TRUE, FALSE, FALSE );

	push	0
	push	0
	push	1
	push	0
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	push	edx
	call	_fnSetUpdateIndicator
	add	esp, 24					; 00000018H
$L8050:

; 1806 : // >>> RAD54278-1 END
; 1807 : 
; 1808 :    // Now see if the user requested the cursor to be repositioned
; 1809 :    switch ( nReposition )
; 1810 :    {

	movsx	eax, WORD PTR _nReposition$[ebp]
	mov	DWORD PTR -28+[ebp], eax
	mov	ecx, DWORD PTR -28+[ebp]
	sub	ecx, 1
	mov	DWORD PTR -28+[ebp], ecx
	cmp	DWORD PTR -28+[ebp], 3
	ja	SHORT $L8059
	mov	edx, DWORD PTR -28+[ebp]
	jmp	DWORD PTR $L9539[edx*4]
$L8055:

; 1811 :       case zREPOS_FIRST:
; 1812 :          nRC = SetCursorFirstEntity( lpView, lpViewEntity->szName, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetCursorFirstEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1813 :          break;

	jmp	SHORT $L8052
$L8056:

; 1814 : 
; 1815 :       case zREPOS_LAST:
; 1816 :          nRC = SetCursorLastEntity( lpView, lpViewEntity->szName, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SetCursorLastEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1817 :          break;

	jmp	SHORT $L8052
$L8057:

; 1818 : 
; 1819 :       case zREPOS_NEXT:
; 1820 :          nRC = SetCursorNextEntity( lpView, lpViewEntity->szName, 0 );

	push	0
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SetCursorNextEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1821 :          break;

	jmp	SHORT $L8052
$L8058:

; 1822 : 
; 1823 :       case zREPOS_PREV:
; 1824 :          nRC = SetCursorPrevEntity( lpView, lpViewEntity->szName, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SetCursorPrevEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 1825 :          break;

	jmp	SHORT $L8052
$L8059:

; 1826 : 
; 1827 :       default:
; 1828 :          nRC = zCURSOR_UNDEFINED;

	mov	WORD PTR _nRC$[ebp], -2			; fffffffeH
$L8052:

; 1830 : 
; 1831 :    // Whew, I think we've done it, return to caller.
; 1832 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 1833 : }

	mov	esp, ebp
	pop	ebp
	ret	0
$L9539:
	DD	$L8055
	DD	$L8056
	DD	$L8057
	DD	$L8058
_fnExcludeEntity ENDP
_TEXT	ENDS
PUBLIC	_RelinkInstanceToInstance@16
PUBLIC	_fnRelinkInstanceToInstance
PUBLIC	??_C@_0BN@OGJL@Source?5Entity?5not?5includeble?$AA@ ; `string'
PUBLIC	??_C@_0DK@NDAP@The?5following?5LODs?5are?5out?5of?5sy@ ; `string'
PUBLIC	??_C@_07JCPH@ERROR?3?5?$AA@			; `string'
PUBLIC	??_C@_0CO@BJBK@Out?9of?9sync?5error?4?5Target?5LOD?5?$DN?5@ ; `string'
PUBLIC	??_C@_07MBAF@?5?5?5?$DN?$DN?$DO?5?$AA@		; `string'
PUBLIC	??_C@_0CO@PONF@Out?9of?9sync?5error?4?5Source?5LOD?5?$DN?5@ ; `string'
PUBLIC	??_C@_0L@POIA@SyncER?1LOD?$AA@			; `string'
PUBLIC	??_C@_0O@IMEJ@?$FLWorkstation?$FN?$AA@		; `string'
PUBLIC	??_C@_0DH@HEFK@LODs?5are?5potentially?5out?5of?5sync@ ; `string'
EXTRN	_SysReadZeidonIni@16:NEAR
;	COMDAT ??_C@_0BN@OGJL@Source?5Entity?5not?5includeble?$AA@
; File C:\10C\A\oe\KZOEEIAA.C
_DATA	SEGMENT
??_C@_0BN@OGJL@Source?5Entity?5not?5includeble?$AA@ DB 'Source Entity not'
	DB	' includeble', 00H				; `string'
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
;	COMDAT ??_C@_07MBAF@?5?5?5?$DN?$DN?$DO?5?$AA@
_DATA	SEGMENT
??_C@_07MBAF@?5?5?5?$DN?$DN?$DO?5?$AA@ DB '   ==> ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CO@PONF@Out?9of?9sync?5error?4?5Source?5LOD?5?$DN?5@
_DATA	SEGMENT
??_C@_0CO@PONF@Out?9of?9sync?5error?4?5Source?5LOD?5?$DN?5@ DB 'Out-of-sy'
	DB	'nc error. Source LOD = %s, date = %s', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@POIA@SyncER?1LOD?$AA@
_DATA	SEGMENT
??_C@_0L@POIA@SyncER?1LOD?$AA@ DB 'SyncER/LOD', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@IMEJ@?$FLWorkstation?$FN?$AA@
_DATA	SEGMENT
??_C@_0O@IMEJ@?$FLWorkstation?$FN?$AA@ DB '[Workstation]', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DH@HEFK@LODs?5are?5potentially?5out?5of?5sync@
_DATA	SEGMENT
??_C@_0DH@HEFK@LODs?5are?5potentially?5out?5of?5sync@ DB 'LODs are potent'
	DB	'ially out of sync.  See trace for more.', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_zTgtView$ = 8
_cpcTgtEntityName$ = 12
_zSrcView$ = 16
_cpcSrcEntityName$ = 20
_lpCurrentTask$ = -60
_lpSrcOwningTask$ = -36
_lpTgtOwningTask$ = -32
_lpSrcViewOD$ = -12
_lpTgtViewOD$ = -24
_lpViewCsr$ = -8
_lpViewOI$ = -44
_lpSrcViewEntity$ = -52
_lpSrcViewEntityCsr$ = -48
_lpTgtViewEntity$ = -56
_lpTgtViewEntityCsr$ = -20
_lpSrcEntityInstance$ = -4
_lpTgtEntityInstance$ = -28
_szYN$ = -40
_nRC$ = -16
_szMsg$8098 = -260
_RelinkInstanceToInstance@16 PROC NEAR

; 1867 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 264				; 00000108H

; 1868 :    LPTASK           lpCurrentTask;
; 1869 :    LPTASK           lpSrcOwningTask;
; 1870 :    LPTASK           lpTgtOwningTask;
; 1871 :    LPVIEWOD         lpSrcViewOD;
; 1872 :    LPVIEWOD         lpTgtViewOD;
; 1873 :    LPVIEWCSR        lpViewCsr;
; 1874 :    LPVIEWOI         lpViewOI;
; 1875 :    LPVIEWENTITY     lpSrcViewEntity;
; 1876 :    LPVIEWENTITYCSR  lpSrcViewEntityCsr;
; 1877 :    LPVIEWENTITY     lpTgtViewEntity;
; 1878 :    LPVIEWENTITYCSR  lpTgtViewEntityCsr;
; 1879 :    LPENTITYINSTANCE lpSrcEntityInstance;
; 1880 :    LPENTITYINSTANCE lpTgtEntityInstance;
; 1881 :    zCHAR            szYN[ 2 ];
; 1882 :    zSHORT           nRC;
; 1883 : 
; 1884 :    // Validate parameters
; 1885 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 1886 :                                       &lpSrcViewEntity,
; 1887 :                                       &lpSrcViewEntityCsr,
; 1888 :                                       iRelinkInstanceToInstance,
; 1889 :                                       zSrcView,
; 1890 :                                       cpcSrcEntityName, 0 ) )

	push	0
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _zSrcView$[ebp]
	push	ecx
	push	116					; 00000074H
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
	je	SHORT $L8084

; 1892 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8068
$L8084:

; 1894 : 
; 1895 :    // Validate parameters
; 1896 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 1897 :                                       &lpTgtViewEntity,
; 1898 :                                       &lpTgtViewEntityCsr,
; 1899 :                                       iRelinkInstanceToInstance,
; 1900 :                                       zTgtView,
; 1901 :                                       cpcTgtEntityName,
; 1902 :                                       2 ) )  // we already called once

	push	2
	mov	eax, DWORD PTR _cpcTgtEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _zTgtView$[ebp]
	push	ecx
	push	116					; 00000074H
	lea	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateInstanceParameters
	add	esp, 28					; 0000001cH
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8085

; 1904 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8068
$L8085:

; 1906 : 
; 1907 :    // Make sure the target and source entity instances are the same
; 1908 :    // E/R Entity
; 1909 :    if ( lpSrcViewEntity->lEREntTok != lpTgtViewEntity->lEREntTok )

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+195]
	cmp	edx, DWORD PTR [ecx+195]
	je	SHORT $L8086

; 1911 :       // "KZOEE125 - Target and Source Entities are not the same E/R Entity"
; 1912 :       fnIssueCoreError( lpCurrentTask, zSrcView, 8, 123, 0,
; 1913 :                         lpTgtViewEntity->szName,
; 1914 :                         lpSrcViewEntity->szName );

	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	123					; 0000007bH
	push	8
	mov	edx, DWORD PTR _zSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1915 : 
; 1916 :       fnOperationReturn( iRelinkInstanceToInstance, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	116					; 00000074H
	call	_fnOperationReturn
	add	esp, 8

; 1917 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8068
$L8086:

; 1919 : 
; 1920 :    // Make sure entity can be included
; 1921 :    if ( lpSrcViewEntity->bInclSrc == FALSE )

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8087

; 1923 :       // "KZOEE106 - Rules violation"
; 1924 :       fnIssueCoreError( lpCurrentTask, zSrcView, 8, 106, 0,
; 1925 :                         "Source Entity not includeble",
; 1926 :                         lpSrcViewEntity->szName );

	mov	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	OFFSET FLAT:??_C@_0BN@OGJL@Source?5Entity?5not?5includeble?$AA@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	edx, DWORD PTR _zSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1927 :       fnOperationReturn( iRelinkInstanceToInstance, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	116					; 00000074H
	call	_fnOperationReturn
	add	esp, 8

; 1928 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8068
$L8087:

; 1930 : 
; 1931 :    // Make sure that the LODs are in sync.  They are out of sync if the LODs
; 1932 :    // were built with different dates for the ER.  We won't bother performing
; 1933 :    // the check if either LOD doesn't have the ER date.  This allows old LODs
; 1934 :    // to work.
; 1935 :    lpSrcViewOD = zGETPTR( zSrcView->hViewOD );

	mov	edx, DWORD PTR _zSrcView$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewOD$[ebp], eax

; 1936 :    lpTgtViewOD = zGETPTR( zTgtView->hViewOD );

	mov	ecx, DWORD PTR _zTgtView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewOD$[ebp], eax

; 1937 :    if ( lpSrcViewOD->szER_Date[ 0 ] && lpTgtViewOD->szER_Date[ 0 ] &&
; 1938 :         zstrcmp( lpSrcViewOD->szER_Date, lpTgtViewOD->szER_Date ) != 0 )

	mov	eax, DWORD PTR _lpSrcViewOD$[ebp]
	movsx	ecx, BYTE PTR [eax+248]
	test	ecx, ecx
	je	$L8106
	mov	edx, DWORD PTR _lpTgtViewOD$[ebp]
	movsx	eax, BYTE PTR [edx+248]
	test	eax, eax
	je	$L8106
	mov	ecx, DWORD PTR _lpSrcViewOD$[ebp]
	movsx	edx, BYTE PTR [ecx+248]
	mov	eax, DWORD PTR _lpTgtViewOD$[ebp]
	movsx	ecx, BYTE PTR [eax+248]
	cmp	edx, ecx
	jne	SHORT $L9541
	mov	edx, DWORD PTR _lpTgtViewOD$[ebp]
	add	edx, 248				; 000000f8H
	push	edx
	mov	eax, DWORD PTR _lpSrcViewOD$[ebp]
	add	eax, 248				; 000000f8H
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -264+[ebp], eax
	jmp	SHORT $L9542
$L9541:
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
	mov	DWORD PTR -264+[ebp], eax
$L9542:
	cmp	DWORD PTR -264+[ebp], 0
	je	$L8106

; 1940 :       zCHAR szMsg[ 200 ];
; 1941 : 
; 1942 :       TraceLineS( "ERROR: ", "The following LODs are out of sync and should be re-built" );

	push	OFFSET FLAT:??_C@_0DK@NDAP@The?5following?5LODs?5are?5out?5of?5sy@ ; `string'
	push	OFFSET FLAT:??_C@_07JCPH@ERROR?3?5?$AA@	; `string'
	call	_TraceLineS@8

; 1943 : 
; 1944 :       zsprintf( szMsg, "Out-of-sync error. Target LOD = %s, date = %s",
; 1945 :                 lpTgtViewOD->szName, lpTgtViewOD->szER_Date );

	mov	ecx, DWORD PTR _lpTgtViewOD$[ebp]
	add	ecx, 248				; 000000f8H
	push	ecx
	mov	edx, DWORD PTR _lpTgtViewOD$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	push	OFFSET FLAT:??_C@_0CO@BJBK@Out?9of?9sync?5error?4?5Target?5LOD?5?$DN?5@ ; `string'
	lea	eax, DWORD PTR _szMsg$8098[ebp]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 1946 :       TraceLineS( "   ==> ", szMsg );

	lea	ecx, DWORD PTR _szMsg$8098[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_07MBAF@?5?5?5?$DN?$DN?$DO?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1947 : 
; 1948 :       zsprintf( szMsg, "Out-of-sync error. Source LOD = %s, date = %s",
; 1949 :                 lpSrcViewOD->szName, lpSrcViewOD->szER_Date );

	mov	edx, DWORD PTR _lpSrcViewOD$[ebp]
	add	edx, 248				; 000000f8H
	push	edx
	mov	eax, DWORD PTR _lpSrcViewOD$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0CO@PONF@Out?9of?9sync?5error?4?5Source?5LOD?5?$DN?5@ ; `string'
	lea	ecx, DWORD PTR _szMsg$8098[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 1950 :       TraceLineS( "   ==> ", szMsg );

	lea	edx, DWORD PTR _szMsg$8098[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_07MBAF@?5?5?5?$DN?$DN?$DO?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1951 : 
; 1952 :       SysReadZeidonIni( -1, "[Workstation]", "SyncER/LOD", szYN );

	lea	eax, DWORD PTR _szYN$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0L@POIA@SyncER?1LOD?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0O@IMEJ@?$FLWorkstation?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 1953 :       if ( szYN[ 0 ] != 'N' )

	movsx	ecx, BYTE PTR _szYN$[ebp]
	cmp	ecx, 78					; 0000004eH
	je	SHORT $L8106

; 1955 :          // "KZOEE106 - Rules violation"
; 1956 :          fnIssueCoreError( lpCurrentTask, zSrcView, 8, 106, 0,
; 1957 :                            "LODs are potentially out of sync.  See trace for more.",
; 1958 :                            lpTgtViewOD->szName );

	mov	edx, DWORD PTR _lpTgtViewOD$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	push	OFFSET FLAT:??_C@_0DH@HEFK@LODs?5are?5potentially?5out?5of?5sync@ ; `string'
	push	0
	push	106					; 0000006aH
	push	8
	mov	eax, DWORD PTR _zSrcView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1959 : 
; 1960 :          fnOperationReturn( iRelinkInstanceToInstance, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	116					; 00000074H
	call	_fnOperationReturn
	add	esp, 8

; 1961 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8068
$L8106:

; 1964 : 
; 1965 :    // Get the source and target task.
; 1966 :    lpViewCsr       = zGETPTR( zSrcView->hViewCsr );

	mov	eax, DWORD PTR _zSrcView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1967 :    lpViewOI        = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1968 :    lpSrcOwningTask = zGETPTR( lpViewOI->hTask );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcOwningTask$[ebp], eax

; 1969 :    lpViewCsr       = zGETPTR( zTgtView->hViewCsr );

	mov	eax, DWORD PTR _zTgtView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1970 :    lpViewOI        = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1971 :    lpTgtOwningTask = zGETPTR( lpViewOI->hTask );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtOwningTask$[ebp], eax

; 1972 : 
; 1973 : #if 0
; 1974 :    if ( lpSrcOwningTask != lpTgtOwningTask )
; 1975 :    {
; 1976 :       if ( lpSrcOwningTask != zGETPTR( AnchorBlock->hMainTask ) )
; 1977 :       {
; 1978 :          // "KZOEE131 - Attempt to include Subobject from another "
; 1979 :          // "           Application Task"
; 1980 :          fnIssueCoreError( zSrcView, lpView, 8, 131, 0, 0, 0 );
; 1981 :          fnOperationReturn( iRelinkInstanceToInstance, lpCurrentTask );
; 1982 :          return( zCALL_ERROR );
; 1983 :       }
; 1984 : 
; 1985 :       // lpViewOI is still set to the Tgt view OI.
; 1986 :       lpViewOI->hAllocTask = zGETHNDL( lpSrcOwningTask );
; 1987 :    }
; 1988 : #endif
; 1989 : 
; 1990 :    // Get the source and target instances
; 1991 :    lpSrcEntityInstance = zGETPTR( lpSrcViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 1992 :    lpTgtEntityInstance = zGETPTR( lpTgtViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax

; 1993 :    if ( !fnInstanceKeysMatch( lpTgtEntityInstance, lpSrcEntityInstance ) )

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	edx
	call	_fnInstanceKeysMatch
	add	esp, 8
	movsx	eax, ax
	test	eax, eax
	jne	SHORT $L8116

; 1995 :       // "KZOEE117 - Entity Instance Keys do not match"
; 1996 :       fnIssueCoreError( lpCurrentTask, zSrcView, 8, 117, 0,
; 1997 :                         lpSrcViewEntity->szName,
; 1998 :                         lpTgtViewEntity->szName );

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	117					; 00000075H
	push	8
	mov	eax, DWORD PTR _zSrcView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 1999 :       fnOperationReturn( iRelinkInstanceToInstance, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	116					; 00000074H
	call	_fnOperationReturn
	add	esp, 8

; 2000 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8068
$L8116:

; 2002 : 
; 2003 :    nRC = fnRelinkInstanceToInstance( lpTgtEntityInstance,
; 2004 :                                      lpSrcEntityInstance );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	ecx
	call	_fnRelinkInstanceToInstance
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax

; 2005 : 
; 2006 : 
; 2007 :    // Return to caller
; 2008 :    fnOperationReturn( iRelinkInstanceToInstance, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	116					; 00000074H
	call	_fnOperationReturn
	add	esp, 8

; 2009 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8068:

; 2010 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_RelinkInstanceToInstance@16 ENDP
_TEXT	ENDS
PUBLIC	_SetIncrementalUpdateFlags@12
EXTRN	_fnGetAttribFlagsPtr@8:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nOption$ = 16
_bCreated$ = -44
_bPersist$ = -20
_bUpdated$ = -52
_bNotUpdated$ = -32
_bIncluded$ = -36
_bNotIncluded$ = -68
_bSingleEntity$ = -16
_bAttrUpdated$ = -8
_bAttrNotUpdated$ = -40
_lpCurrentTask$ = -64
_lpViewCsr$ = -4
_lpViewOI$ = -48
_lpViewEntity$ = -28
_lpViewEntityCsr$ = -60
_lpRootEntityInstance$ = -12
_lpEntityInstance$ = -24
_bMustCheckOIUpdated$ = -56
_lpTempViewEntity$8168 = -76
_lpViewAttrib$8169 = -80
_bWorkEntity$8170 = -72
_lpAttribFlags$8191 = -84
_SetIncrementalUpdateFlags@12 PROC NEAR

; 2081 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 88					; 00000058H

; 2082 :    zBOOL            bCreated;
; 2083 :    zBOOL            bPersist;
; 2084 :    zBOOL            bUpdated;
; 2085 :    zBOOL            bNotUpdated;
; 2086 :    zBOOL            bIncluded;
; 2087 :    zBOOL            bNotIncluded;
; 2088 :    zBOOL            bSingleEntity;
; 2089 :    zBOOL            bAttrUpdated;
; 2090 :    zBOOL            bAttrNotUpdated;
; 2091 :    LPTASK           lpCurrentTask;
; 2092 :    LPVIEWCSR        lpViewCsr;
; 2093 :    LPVIEWOI         lpViewOI;
; 2094 :    LPVIEWENTITY     lpViewEntity;
; 2095 :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 2096 :    LPENTITYINSTANCE lpRootEntityInstance;
; 2097 :    LPENTITYINSTANCE lpEntityInstance;
; 2098 :    zBOOL            bMustCheckOIUpdated = FALSE;

	mov	BYTE PTR _bMustCheckOIUpdated$[ebp], 0

; 2099 : 
; 2100 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 2101 :    if ( (lpCurrentTask = fnOperationCall( iSetIncrementalUpdateFlags, lpView,
; 2102 :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	119					; 00000077H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8141

; 2104 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8123
$L8141:

; 2106 : 
; 2107 :    if ( nOption == 0 )

	movsx	ecx, WORD PTR _nOption$[ebp]
	test	ecx, ecx
	jne	SHORT $L8142

; 2109 :       fnOperationReturn( iSetIncrementalUpdateFlags, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	119					; 00000077H
	call	_fnOperationReturn
	add	esp, 8

; 2110 :       return( 0 );

	xor	ax, ax
	jmp	$L8123
$L8142:

; 2112 : 
; 2113 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2114 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 2115 : 
; 2116 :    if ( cpcEntityName && cpcEntityName[ 0 ] )

	cmp	DWORD PTR _cpcEntityName$[ebp], 0
	je	$L8145
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	$L8145

; 2118 :       if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 2119 :                                               lpView, cpcEntityName, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L8146

; 2121 :          fnOperationReturn( iSetIncrementalUpdateFlags, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	119					; 00000077H
	call	_fnOperationReturn
	add	esp, 8

; 2122 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8123
$L8146:

; 2124 : 
; 2125 :       bSingleEntity = ((nOption & zSET_INCR_CURSORPOS) != 0);

	movsx	ecx, WORD PTR _nOption$[ebp]
	and	ecx, 128				; 00000080H
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	mov	BYTE PTR _bSingleEntity$[ebp], cl

; 2126 :       if ( bSingleEntity )

	mov	edx, DWORD PTR _bSingleEntity$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L8152

; 2128 :          lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2129 :          if ( lpEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 1
	jne	SHORT $L8150

; 2131 :             fnEstablishCursorForView( lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnEstablishCursorForView
	add	esp, 4

; 2132 :             lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L8150:

; 2134 : 
; 2135 :          if ( lpEntityInstance == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	SHORT $L8152

; 2137 :             fnOperationReturn( iSetIncrementalUpdateFlags, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	119					; 00000077H
	call	_fnOperationReturn
	add	esp, 8

; 2138 :             return( 0 );

	xor	ax, ax
	jmp	$L8123
$L8152:

; 2142 :    else

	jmp	SHORT $L8153
$L8145:

; 2144 :       bSingleEntity = FALSE;

	mov	BYTE PTR _bSingleEntity$[ebp], 0

; 2145 :       lpViewEntity = 0;

	mov	DWORD PTR _lpViewEntity$[ebp], 0
$L8153:

; 2147 : 
; 2148 :    // Get the root of the object instance
; 2149 :    if ( bSingleEntity )

	mov	eax, DWORD PTR _bSingleEntity$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8154

; 2150 :       lpRootEntityInstance = lpEntityInstance;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR _lpRootEntityInstance$[ebp], ecx

; 2151 :    else

	jmp	SHORT $L8155
$L8154:

; 2152 :       lpRootEntityInstance = zGETPTR( lpViewOI->hRootEntityInstance );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootEntityInstance$[ebp], eax
$L8155:

; 2153 : 
; 2154 :    if ( lpRootEntityInstance == 0 )

	cmp	DWORD PTR _lpRootEntityInstance$[ebp], 0
	jne	SHORT $L8157

; 2156 :       fnOperationReturn( iSetIncrementalUpdateFlags, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	119					; 00000077H
	call	_fnOperationReturn
	add	esp, 8

; 2157 :       return( 0 );

	xor	ax, ax
	jmp	$L8123
$L8157:

; 2159 : 
; 2160 :    bCreated  = ((nOption & zSET_INCR_CREATED ) != 0);

	movsx	edx, WORD PTR _nOption$[ebp]
	and	edx, 2
	neg	edx
	sbb	edx, edx
	neg	edx
	mov	BYTE PTR _bCreated$[ebp], dl

; 2161 :    if ( bCreated == FALSE )

	mov	eax, DWORD PTR _bCreated$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8160

; 2163 :       bPersist = ((nOption & zSET_INCR_PERSISTENT) != 0);

	movsx	ecx, WORD PTR _nOption$[ebp]
	and	ecx, 4
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	mov	BYTE PTR _bPersist$[ebp], cl

; 2164 :       bUpdated = ((nOption & zSET_INCR_UPDATED) != 0);

	movsx	edx, WORD PTR _nOption$[ebp]
	and	edx, 8
	neg	edx
	sbb	edx, edx
	neg	edx
	mov	BYTE PTR _bUpdated$[ebp], dl

; 2165 :       if ( bUpdated )

	mov	eax, DWORD PTR _bUpdated$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8159

; 2167 :          lpViewOI->bUpdated = lpViewOI->bUpdatedFile = TRUE;

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

; 2168 :          bNotUpdated = 0;

	mov	BYTE PTR _bNotUpdated$[ebp], 0

; 2170 :       else

	jmp	SHORT $L8160
$L8159:

; 2172 :          bNotUpdated = ((nOption & zSET_INCR_NOT_UPDATED) != 0);

	movsx	ecx, WORD PTR _nOption$[ebp]
	and	ecx, 16					; 00000010H
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	mov	BYTE PTR _bNotUpdated$[ebp], cl
$L8160:

; 2175 : 
; 2176 :    bIncluded = ((nOption & zSET_INCR_INCLUDED) != 0);

	movsx	edx, WORD PTR _nOption$[ebp]
	and	edx, 32					; 00000020H
	neg	edx
	sbb	edx, edx
	neg	edx
	mov	BYTE PTR _bIncluded$[ebp], dl

; 2177 :    if ( bIncluded == FALSE )

	mov	eax, DWORD PTR _bIncluded$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8161

; 2178 :       bNotIncluded = ((nOption & zSET_INCR_NOT_INCLUDED) != 0);

	movsx	ecx, WORD PTR _nOption$[ebp]
	and	ecx, 64					; 00000040H
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	mov	BYTE PTR _bNotIncluded$[ebp], cl

; 2179 :    else

	jmp	SHORT $L8162
$L8161:

; 2180 :       bNotIncluded = 0;

	mov	BYTE PTR _bNotIncluded$[ebp], 0
$L8162:

; 2181 : 
; 2182 :    bAttrUpdated = ((nOption & zSET_INCR_ATTR_UPDATED) != 0);

	movsx	edx, WORD PTR _nOption$[ebp]
	and	edx, 4096				; 00001000H
	neg	edx
	sbb	edx, edx
	neg	edx
	mov	BYTE PTR _bAttrUpdated$[ebp], dl

; 2183 :    if ( bAttrUpdated == FALSE )

	mov	eax, DWORD PTR _bAttrUpdated$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8163

; 2184 :       bAttrNotUpdated = ((nOption & zSET_INCR_ATTR_NOT_UPDATED) != 0);

	movsx	ecx, WORD PTR _nOption$[ebp]
	and	ecx, 8192				; 00002000H
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	mov	BYTE PTR _bAttrNotUpdated$[ebp], cl
$L8163:

; 2185 : 
; 2186 :    // Loop through the entity instances.
; 2187 :    for ( lpEntityInstance = lpRootEntityInstance;
; 2188 :          lpEntityInstance;
; 2189 :          lpEntityInstance = bSingleEntity ? 0 :
; 2190 :                             zGETPTR( lpEntityInstance->hNextHier ) )

	mov	edx, DWORD PTR _lpRootEntityInstance$[ebp]
	mov	DWORD PTR _lpEntityInstance$[ebp], edx
	jmp	SHORT $L8165
$L8166:
	mov	eax, DWORD PTR _bSingleEntity$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L9544
	mov	DWORD PTR -88+[ebp], 0
	jmp	SHORT $L9545
$L9544:
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR -88+[ebp], eax
$L9545:
	mov	eax, DWORD PTR -88+[ebp]
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L8165:
	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	$L8167

; 2192 :       LPVIEWENTITY lpTempViewEntity;
; 2193 :       LPVIEWATTRIB lpViewAttrib;
; 2194 :       zBOOL        bWorkEntity; // indicate entity is work or derived
; 2195 : 
; 2196 :       lpTempViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempViewEntity$8168[ebp], eax

; 2197 : 
; 2198 :       // If lpViewEntity is not null, then we only want to change the flags
; 2199 :       // for EI's that match that view entity.
; 2200 :       if ( lpViewEntity && lpTempViewEntity != lpViewEntity )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	SHORT $L8172
	mov	eax, DWORD PTR _lpTempViewEntity$8168[ebp]
	cmp	eax, DWORD PTR _lpViewEntity$[ebp]
	je	SHORT $L8172

; 2201 :          continue;  // They don't match so continue with next EI.

	jmp	SHORT $L8166
$L8172:

; 2202 : 
; 2203 :       bWorkEntity = FALSE;

	mov	BYTE PTR _bWorkEntity$8170[ebp], 0

; 2204 :       if ( lpTempViewEntity->bDerived || lpTempViewEntity->bDerivedPath ||
; 2205 :            lpTempViewEntity->hFirstDataRecord == 0 )

	mov	ecx, DWORD PTR _lpTempViewEntity$8168[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 13					; 0000000dH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8174
	mov	eax, DWORD PTR _lpTempViewEntity$8168[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 14					; 0000000eH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8174
	mov	edx, DWORD PTR _lpTempViewEntity$8168[ebp]
	cmp	DWORD PTR [edx+191], 0
	jne	SHORT $L8173
$L8174:

; 2207 :          bWorkEntity = TRUE;

	mov	BYTE PTR _bWorkEntity$8170[ebp], 1
$L8173:

; 2209 : 
; 2210 :       if ( bCreated )

	mov	eax, DWORD PTR _bCreated$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8175

; 2212 :          lpEntityInstance->u.nInd.bCreated = TRUE;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	edx, 2
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 2213 :          lpEntityInstance->u.nInd.bUpdated = FALSE;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	and	edx, -5					; fffffffbH
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 2214 :          lpViewOI->bUpdatedFile = TRUE;

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	or	edx, 32					; 00000020H
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [eax+36], edx

; 2215 :          if ( bWorkEntity == FALSE )

	mov	ecx, DWORD PTR _bWorkEntity$8170[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L8176

; 2216 :             lpViewOI->bUpdated = TRUE;

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	or	al, 16					; 00000010H
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [ecx+36], eax
$L8176:

; 2218 :       else

	jmp	SHORT $L8181
$L8175:

; 2220 :          if ( bPersist )

	mov	edx, DWORD PTR _bPersist$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L8178

; 2222 :             lpEntityInstance->u.nInd.bCreated = FALSE;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ecx, -3					; fffffffdH
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 2223 :             bMustCheckOIUpdated = TRUE;

	mov	BYTE PTR _bMustCheckOIUpdated$[ebp], 1
$L8178:

; 2225 : 
; 2226 :          if ( bUpdated )

	mov	eax, DWORD PTR _bUpdated$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8179

; 2228 :             lpEntityInstance->u.nInd.bUpdated = TRUE;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	edx, 4
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 2230 :          else

	jmp	SHORT $L8181
$L8179:

; 2231 :          if ( bNotUpdated )

	mov	ecx, DWORD PTR _bNotUpdated$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L8181

; 2233 :             lpEntityInstance->u.nInd.bUpdated = FALSE;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	al, -5					; fffffffbH
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 2234 :             bMustCheckOIUpdated = TRUE;

	mov	BYTE PTR _bMustCheckOIUpdated$[ebp], 1
$L8181:

; 2261 : 
; 2262 :       if ( bIncluded && lpEntityInstance->hParent )

	mov	edx, DWORD PTR _bIncluded$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L8182
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	SHORT $L8182

; 2263 :          lpEntityInstance->u.nInd.bIncluded = TRUE;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	edx, 32					; 00000020H
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 2264 :       else

	jmp	SHORT $L8184
$L8182:

; 2265 :       if ( bNotIncluded )

	mov	ecx, DWORD PTR _bNotIncluded$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L8184

; 2266 :          lpEntityInstance->u.nInd.bIncluded = FALSE;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	al, -33					; ffffffdfH
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax
$L8184:

; 2267 : 
; 2268 :       // Now check to see if we need to update the attributes.
; 2269 :       if ( bAttrUpdated == FALSE && bAttrNotUpdated == FALSE )

	mov	edx, DWORD PTR _bAttrUpdated$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	jne	SHORT $L8185
	mov	eax, DWORD PTR _bAttrNotUpdated$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8185

; 2270 :          continue; // Nope--continue with the next EI.

	jmp	$L8166
$L8185:

; 2271 : 
; 2272 :       // Set attribute flags.
; 2273 :       for ( lpViewAttrib = zGETPTR( lpTempViewEntity->hFirstOD_Attrib );
; 2274 :             lpViewAttrib;
; 2275 :             lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib ) )

	mov	ecx, DWORD PTR _lpTempViewEntity$8168[ebp]
	mov	edx, DWORD PTR [ecx+179]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$8169[ebp], eax
	jmp	SHORT $L8188
$L8189:
	mov	eax, DWORD PTR _lpViewAttrib$8169[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$8169[ebp], eax
$L8188:
	cmp	DWORD PTR _lpViewAttrib$8169[ebp], 0
	je	SHORT $L8190

; 2277 :          LPATTRIBFLAGS lpAttribFlags = fnGetAttribFlagsPtr( lpEntityInstance,
; 2278 :                                                             lpViewAttrib );

	mov	edx, DWORD PTR _lpViewAttrib$8169[ebp]
	push	edx
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	call	_fnGetAttribFlagsPtr@8
	mov	DWORD PTR _lpAttribFlags$8191[ebp], eax

; 2279 : 
; 2280 :          // Set the update flag for the entity.  Since we KNOW that either
; 2281 :          // bAttrUpdated flag or bAttrNotUpdated flag is TRUE, and since they
; 2282 :          // can't both be TRUE, we can just set the update flag for the
; 2283 :          // attribute to bAttrUpdated.
; 2284 :          if ( lpAttribFlags )

	cmp	DWORD PTR _lpAttribFlags$8191[ebp], 0
	je	SHORT $L8192

; 2285 :             lpAttribFlags->u.bFlags.bUpdated = bAttrUpdated;

	mov	ecx, DWORD PTR _bAttrUpdated$[ebp]
	and	ecx, 255				; 000000ffH
	and	ecx, 1
	shl	ecx, 1
	mov	edx, DWORD PTR _lpAttribFlags$8191[ebp]
	mov	eax, DWORD PTR [edx]
	and	al, -3					; fffffffdH
	or	eax, ecx
	mov	ecx, DWORD PTR _lpAttribFlags$8191[ebp]
	mov	DWORD PTR [ecx], eax
$L8192:

; 2286 :       }

	jmp	SHORT $L8189
$L8190:

; 2287 : 
; 2288 :       if ( bAttrUpdated && lpEntityInstance->u.nInd.bUpdated == FALSE )

	mov	edx, DWORD PTR _bAttrUpdated$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L8193
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 2
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8193

; 2290 :          lpEntityInstance->u.nInd.bUpdated = TRUE;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	al, 4
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 2291 :          lpViewOI->bUpdatedFile = TRUE;

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	or	al, 32					; 00000020H
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [ecx+36], eax

; 2292 :          if ( bWorkEntity == FALSE )

	mov	edx, DWORD PTR _bWorkEntity$8170[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	jne	SHORT $L8194

; 2293 :             lpViewOI->bUpdated = TRUE;

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	or	ecx, 16					; 00000010H
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [edx+36], ecx
$L8194:

; 2295 :       else

	jmp	SHORT $L8196
$L8193:

; 2296 :       if ( bAttrNotUpdated && lpEntityInstance->u.nInd.bUpdated )

	mov	eax, DWORD PTR _bAttrNotUpdated$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8196
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 2
	and	edx, 1
	test	edx, edx
	je	SHORT $L8196

; 2298 :          lpEntityInstance->u.nInd.bUpdated = FALSE;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ecx, -5					; fffffffbH
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 2299 :          bMustCheckOIUpdated = TRUE;

	mov	BYTE PTR _bMustCheckOIUpdated$[ebp], 1
$L8196:

; 2301 :    }

	jmp	$L8166
$L8167:

; 2302 : 
; 2303 :    // if an update flag was removed, we have to re-check the
; 2304 :    //  OI update flags from scratch
; 2305 :    if ( bMustCheckOIUpdated )

	mov	eax, DWORD PTR _bMustCheckOIUpdated$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8197

; 2306 :       fnCheckOIUpdated( lpViewOI );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	push	ecx
	call	_fnCheckOIUpdated
	add	esp, 4
$L8197:

; 2307 : 
; 2308 :    // Everything has been set, return
; 2309 :    fnOperationReturn( iSetIncrementalUpdateFlags, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	119					; 00000077H
	call	_fnOperationReturn
	add	esp, 8

; 2310 :    return( 0 );

	xor	ax, ax
$L8123:

; 2311 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_SetIncrementalUpdateFlags@12 ENDP
_TEXT	ENDS
PUBLIC	_GetIncrementalUpdateFlags@12
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_nOption$ = 16
_lpCurrentTask$ = -20
_lpViewEntity$ = -12
_lpViewEntityCsr$ = -16
_lpEntityInstance$ = -8
_nRC$ = -4
_GetIncrementalUpdateFlags@12 PROC NEAR

; 2354 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 2355 :    LPTASK           lpCurrentTask;
; 2356 :    LPVIEWENTITY     lpViewEntity;
; 2357 :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 2358 :    LPENTITYINSTANCE lpEntityInstance;
; 2359 :    zSHORT           nRC;
; 2360 : 
; 2361 :    // If task not active or disabled, return zCALL_ERROR.
; 2362 :    if ( (lpCurrentTask = fnOperationCall( iGetIncrementalUpdateFlags,
; 2363 :                                           lpView, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	120					; 00000078H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8210

; 2365 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8204
$L8210:

; 2367 : 
; 2368 :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 2369 :                                            lpView, cpcEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L8211

; 2371 :       fnOperationReturn( iGetIncrementalUpdateFlags, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	120					; 00000078H
	call	_fnOperationReturn
	add	esp, 8

; 2372 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8204
$L8211:

; 2374 : 
; 2375 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2376 :    if ( lpEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 1
	jne	SHORT $L8214

; 2378 :       fnEstablishCursorForView( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnEstablishCursorForView
	add	esp, 4

; 2379 :       lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L8214:

; 2381 : 
; 2382 :    if ( lpEntityInstance == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	SHORT $L8216

; 2384 :       fnOperationReturn( iGetIncrementalUpdateFlags, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	120					; 00000078H
	call	_fnOperationReturn
	add	esp, 8

; 2385 :       return( 0 );

	xor	ax, ax
	jmp	$L8204
$L8216:

; 2387 : 
; 2388 :    // Cast the flag to zUSHORT for IBM/AIX.
; 2389 :    switch ( (zUSHORT) nOption )
; 2390 :    {

	mov	edx, DWORD PTR _nOption$[ebp]
	and	edx, 65535				; 0000ffffH
	mov	DWORD PTR -24+[ebp], edx
	cmp	DWORD PTR -24+[ebp], 2048		; 00000800H
	jg	SHORT $L9547
	cmp	DWORD PTR -24+[ebp], 2048		; 00000800H
	je	SHORT $L8225
	cmp	DWORD PTR -24+[ebp], 2
	je	SHORT $L8222
	cmp	DWORD PTR -24+[ebp], 8
	je	SHORT $L8223
	cmp	DWORD PTR -24+[ebp], 32			; 00000020H
	je	SHORT $L8224
	jmp	SHORT $L8228
$L9547:
	cmp	DWORD PTR -24+[ebp], 16384		; 00004000H
	je	SHORT $L8226
	cmp	DWORD PTR -24+[ebp], 32768		; 00008000H
	je	SHORT $L8227
	jmp	SHORT $L8228
$L8222:

; 2391 :       case zSET_INCR_CREATED:
; 2392 :          nRC = lpEntityInstance->u.nInd.bCreated;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 1
	and	ecx, 1
	mov	WORD PTR _nRC$[ebp], cx

; 2393 :          break;

	jmp	SHORT $L8219
$L8223:

; 2394 : 
; 2395 :       case zSET_INCR_UPDATED:
; 2396 :          nRC = lpEntityInstance->u.nInd.bUpdated;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 2
	and	eax, 1
	mov	WORD PTR _nRC$[ebp], ax

; 2397 :          break;

	jmp	SHORT $L8219
$L8224:

; 2398 : 
; 2399 :       case zSET_INCR_INCLUDED:
; 2400 :          nRC = lpEntityInstance->u.nInd.bIncluded;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 5
	and	edx, 1
	mov	WORD PTR _nRC$[ebp], dx

; 2401 :          break;

	jmp	SHORT $L8219
$L8225:

; 2402 : 
; 2403 :       case zSET_INCR_HANGING_ENTITY:
; 2404 :          nRC = lpEntityInstance->u.nInd.bHangingEntity;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ecx, 1
	mov	WORD PTR _nRC$[ebp], cx

; 2405 :          break;

	jmp	SHORT $L8219
$L8226:

; 2406 : 
; 2407 :       case zSET_INCR_TEMPORAL_ENTITY:
; 2408 :          nRC = lpEntityInstance->u.nInd.bTemporal;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	mov	WORD PTR _nRC$[ebp], ax

; 2409 :          break;

	jmp	SHORT $L8219
$L8227:

; 2410 : 
; 2411 :       case zSET_INCR_DELETED:
; 2412 :          nRC = lpEntityInstance->u.nInd.bDeleted;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 3
	and	edx, 1
	mov	WORD PTR _nRC$[ebp], dx

; 2413 :          break;

	jmp	SHORT $L8219
$L8228:

; 2414 : 
; 2415 :       default:
; 2416 :          //  "KZOEE120 - Invalid position parameter"
; 2417 :          fnIssueCoreError( lpCurrentTask, lpView, 16, 302, (zLONG) nOption, 0, 0 );

	push	0
	push	0
	movsx	eax, WORD PTR _nOption$[ebp]
	push	eax
	push	302					; 0000012eH
	push	16					; 00000010H
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2418 :          nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L8219:

; 2421 : 
; 2422 :    fnOperationReturn( iGetIncrementalUpdateFlags, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	120					; 00000078H
	call	_fnOperationReturn
	add	esp, 8

; 2423 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8204:

; 2424 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_GetIncrementalUpdateFlags@12 ENDP
_TEXT	ENDS
PUBLIC	_fnEstablishViewForInstance
EXTRN	_fnSetViewToSubobject:NEAR
EXTRN	_fnResetView:NEAR
EXTRN	_fnResetCursorForViewChildren:NEAR
EXTRN	_g_pfnGetHndl:DWORD
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntityCsr$ = 12
_lpEntityInstance$ = 16
_lpViewCsr$ = -8
_lpViewEntity$ = -12
_lpFirstViewEntityCsr$ = -16
_lpWorkCsr$ = -28
_lpRecursiveParent$ = -36
_lpRecursiveCsr$ = -4
_lpWorkInstance1$ = -24
_lpWorkInstance2$ = -32
_bReset$ = -20
_lpWorkViewEntity$8261 = -40
_fnEstablishViewForInstance PROC NEAR

; 2451 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H

; 2452 :    LPVIEWCSR        lpViewCsr;
; 2453 :    LPVIEWENTITY     lpViewEntity;
; 2454 :    LPVIEWENTITYCSR  lpFirstViewEntityCsr;
; 2455 :    LPVIEWENTITYCSR  lpWorkCsr;
; 2456 :    LPVIEWENTITYCSR  lpRecursiveParent;
; 2457 :    LPVIEWENTITYCSR  lpRecursiveCsr;
; 2458 :    LPENTITYINSTANCE lpWorkInstance1;
; 2459 :    LPENTITYINSTANCE lpWorkInstance2;
; 2460 :    zBOOL            bReset = FALSE;  // initialize bReset

	mov	BYTE PTR _bReset$[ebp], 0

; 2461 : 
; 2462 :    lpViewEntity         = zGETPTR( lpEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 2463 :    lpViewCsr            = zGETPTR( lpView->hViewCsr );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2464 :    lpFirstViewEntityCsr = zGETPTR( lpViewCsr->hFirstOD_EntityCsr );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstViewEntityCsr$[ebp], eax

; 2465 : 
; 2466 :    // If no entity cursor passed, establish one.
; 2467 :    lpRecursiveParent = 0;

	mov	DWORD PTR _lpRecursiveParent$[ebp], 0

; 2468 :    if ( lpViewEntityCsr == 0 )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	jne	SHORT $L8249

; 2470 :       fnResetView( lpView, 1 );

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnResetView
	add	esp, 8

; 2471 :       bReset = TRUE;

	mov	BYTE PTR _bReset$[ebp], 1

; 2472 :       lpViewEntityCsr = lpFirstViewEntityCsr;

	mov	ecx, DWORD PTR _lpFirstViewEntityCsr$[ebp]
	mov	DWORD PTR _lpViewEntityCsr$[ebp], ecx

; 2473 :       lpViewEntityCsr += (lpViewEntity->nHierNbr - 1); // + (# * sizeof( EntityCsr Structure ))

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	sub	eax, 1
	imul	eax, 30					; 0000001eH
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	add	ecx, eax
	mov	DWORD PTR _lpViewEntityCsr$[ebp], ecx

; 2475 :    else

	jmp	SHORT $L8252
$L8249:

; 2476 :    if ( lpViewEntity != zGETPTR( lpViewEntityCsr->hViewEntity ) )

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	DWORD PTR _lpViewEntity$[ebp], eax
	je	SHORT $L8252

; 2478 :       // The view entity of the instance does not match the view entity of
; 2479 :       // the csr, this means that the view entity of the cursor MUST be
; 2480 :       // a recursive parent cursor for the entity instance in question.
; 2481 :       lpRecursiveParent = lpViewEntityCsr;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR _lpRecursiveParent$[ebp], ecx

; 2482 :       lpViewEntityCsr   = lpFirstViewEntityCsr;

	mov	edx, DWORD PTR _lpFirstViewEntityCsr$[ebp]
	mov	DWORD PTR _lpViewEntityCsr$[ebp], edx

; 2483 :       lpViewEntityCsr += (lpViewEntity->nHierNbr - 1);

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+217]
	sub	ecx, 1
	imul	ecx, 30					; 0000001eH
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	add	edx, ecx
	mov	DWORD PTR _lpViewEntityCsr$[ebp], edx
$L8252:

; 2485 : 
; 2486 :    // First, take care of the leveling problem.
; 2487 :    if ( lpViewEntityCsr->nLevel != lpEntityInstance->nLevel )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	je	$L8257

; 2489 :       if ( bReset == FALSE )

	mov	ecx, DWORD PTR _bReset$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L8254

; 2491 :          fnResetView( lpView, 1 );

	push	1
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnResetView
	add	esp, 8

; 2492 :          bReset = TRUE;

	mov	BYTE PTR _bReset$[ebp], 1
$L8254:

; 2494 : 
; 2495 :       while ( lpViewEntityCsr->nLevel < lpEntityInstance->nLevel )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jge	$L8257

; 2497 :          // Until we get a cursor whose level matches the target instance
; 2498 :          // we want to establish, we continually find the highest level
; 2499 :          // recursive child which is greater than the current entity csr
; 2500 :          // level and set subobject views down to that child.
; 2501 :          lpWorkInstance1 = lpEntityInstance;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR _lpWorkInstance1$[ebp], ecx
$L8259:

; 2504 :             LPVIEWENTITY lpWorkViewEntity = zGETPTR( lpWorkInstance1->hViewEntity );

	mov	edx, DWORD PTR _lpWorkInstance1$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewEntity$8261[ebp], eax

; 2505 : 
; 2506 :             if ( lpWorkViewEntity->bRecursive )

	mov	ecx, DWORD PTR _lpWorkViewEntity$8261[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8264

; 2508 :                // Now find the cursor matching recursive child lpWorkInstance1
; 2509 :                lpRecursiveCsr = lpFirstViewEntityCsr;

	mov	eax, DWORD PTR _lpFirstViewEntityCsr$[ebp]
	mov	DWORD PTR _lpRecursiveCsr$[ebp], eax

; 2510 :                lpRecursiveCsr += (lpWorkViewEntity->nHierNbr - 1);

	mov	ecx, DWORD PTR _lpWorkViewEntity$8261[ebp]
	movsx	edx, WORD PTR [ecx+217]
	sub	edx, 1
	imul	edx, 30					; 0000001eH
	mov	eax, DWORD PTR _lpRecursiveCsr$[ebp]
	add	eax, edx
	mov	DWORD PTR _lpRecursiveCsr$[ebp], eax

; 2511 : 
; 2512 :                // If we get a level match on the cursor, then accept the entity
; 2513 :                // at the cursor, otherwise keep looking.
; 2514 :                if ( lpRecursiveCsr->nLevel == lpWorkInstance1->nLevel )

	mov	ecx, DWORD PTR _lpRecursiveCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	eax, DWORD PTR _lpWorkInstance1$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	cmp	edx, ecx
	jne	SHORT $L8264

; 2515 :                   break;

	jmp	SHORT $L8260
$L8264:

; 2517 : 
; 2518 :             lpWorkInstance1 = zGETPTR( lpWorkInstance1->hParent );

	mov	edx, DWORD PTR _lpWorkInstance1$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkInstance1$[ebp], eax

; 2519 :          }

	jmp	SHORT $L8259
$L8260:

; 2520 : 
; 2521 :          lpWorkCsr = lpRecursiveCsr;

	mov	ecx, DWORD PTR _lpRecursiveCsr$[ebp]
	mov	DWORD PTR _lpWorkCsr$[ebp], ecx

; 2522 :          lpWorkInstance2 = lpWorkInstance1;

	mov	edx, DWORD PTR _lpWorkInstance1$[ebp]
	mov	DWORD PTR _lpWorkInstance2$[ebp], edx
$L8267:

; 2523 : 
; 2524 :          // Establish the cursors for the recursive child up to the
; 2525 :          // recursive parent.
; 2526 :          while ( lpWorkCsr &&
; 2527 :                  lpWorkCsr->nLevel == lpWorkInstance1->nLevel )

	cmp	DWORD PTR _lpWorkCsr$[ebp], 0
	je	SHORT $L8268
	mov	eax, DWORD PTR _lpWorkCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	mov	edx, DWORD PTR _lpWorkInstance1$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jne	SHORT $L8268

; 2529 :             lpWorkCsr->hEntityInstance = zGETHNDL( lpWorkInstance1 );

	mov	ecx, DWORD PTR _lpWorkInstance1$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpWorkCsr$[ebp]
	mov	DWORD PTR [edx+26], eax

; 2530 :          // if ( lpWorkCsr->hEntityInstance == UNSET_CSR )
; 2531 :          //    SysMessageBox( 0, "fnEstablishViewForInstance", "UNSET_CSR", -1 );
; 2532 : 
; 2533 :             lpWorkCsr = zGETPTR( lpWorkCsr->hParent );

	mov	eax, DWORD PTR _lpWorkCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkCsr$[ebp], eax

; 2534 :             lpWorkInstance1 = zGETPTR( lpWorkInstance1->hParent );

	mov	edx, DWORD PTR _lpWorkInstance1$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkInstance1$[ebp], eax

; 2535 :          }

	jmp	SHORT $L8267
$L8268:

; 2536 : 
; 2537 :          // Now we set the view to the subobject in question and
; 2538 :          // continue until the target entity comes into view.
; 2539 :          fnSetViewToSubobject( lpView,
; 2540 :                                zGETPTR( lpWorkInstance2->hViewEntity ),
; 2541 :                                lpRecursiveCsr );

	mov	ecx, DWORD PTR _lpRecursiveCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpWorkInstance2$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetViewToSubobject
	add	esp, 12					; 0000000cH

; 2542 :       }

	jmp	$L8254
$L8257:

; 2544 : 
; 2545 :    // Now that we are done, establish any necessary cursors up the
; 2546 :    // parent chain.
; 2547 :    lpWorkCsr = lpViewEntityCsr;

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR _lpWorkCsr$[ebp], edx
$L8274:

; 2548 :    while ( lpWorkCsr &&
; 2549 :            lpWorkCsr->nLevel == lpEntityInstance->nLevel )

	cmp	DWORD PTR _lpWorkCsr$[ebp], 0
	je	SHORT $L8275
	mov	eax, DWORD PTR _lpWorkCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jne	SHORT $L8275

; 2551 :       lpWorkCsr->hEntityInstance = zGETHNDL( lpEntityInstance );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpWorkCsr$[ebp]
	mov	DWORD PTR [edx+26], eax

; 2552 :    // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 2553 :    //    SysMessageBox( 0, "fnEstablishViewForInstance2", "UNSET_CSR", -1 );
; 2554 : 
; 2555 :       lpEntityInstance = zGETPTR( lpEntityInstance->hParent );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2556 :       lpWorkCsr = zGETPTR( lpWorkCsr->hParent );

	mov	edx, DWORD PTR _lpWorkCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkCsr$[ebp], eax

; 2557 :    }

	jmp	SHORT $L8274
$L8275:

; 2558 : 
; 2559 :    // If the ViewEntityCsr passed was the recursive parent cursor for the
; 2560 :    // instance being positioned on, do a SetViewToSubobject to position the
; 2561 :    // instance in the recursive parent cursor and reset the lpViewEntityCsr
; 2562 :    // back to the recursive parent.
; 2563 :    if ( lpRecursiveParent )

	cmp	DWORD PTR _lpRecursiveParent$[ebp], 0
	je	SHORT $L8279

; 2565 :       fnSetViewToSubobject( lpView, zGETPTR( lpViewEntityCsr->hViewEntity ),
; 2566 :                             lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnSetViewToSubobject
	add	esp, 12					; 0000000cH

; 2567 :       lpViewEntityCsr = lpRecursiveParent;

	mov	edx, DWORD PTR _lpRecursiveParent$[ebp]
	mov	DWORD PTR _lpViewEntityCsr$[ebp], edx

; 2569 :    else

	jmp	SHORT $L8282
$L8279:

; 2571 :       if ( bReset == FALSE )

	mov	eax, DWORD PTR _bReset$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8282

; 2572 :          fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnResetCursorForViewChildren
	add	esp, 4
$L8282:

; 2574 : 
; 2575 :    // Return success.
; 2576 :    return( lpViewEntityCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]

; 2577 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnEstablishViewForInstance ENDP
_pnNewRoot$ = 8
_iOperationID$ = 12
_lpView$ = 16
_lpViewEntityCsr$ = 20
_nPosition$ = 24
_lpViewOI$ = -32
_lpViewCsr$ = -4
_lpViewEntity$ = -16
_lpParentViewEntityCsr$ = -28
_lpRootViewEntityCsr$ = -20
_lpViewRootEntityInstance$ = -12
_lpTwinEntityInstance$ = -24
_lpParentEntityInstance$ = -8
_lpTask$8315 = -36
_lpTask$8327 = -40
_lpTask$8342 = -48
_lpParentViewEntity$8344 = -44
_lpTask$8348 = -52
_lpWrkInstance$8355 = -56
_lpTask$8362 = -60
_lpTask$8365 = -64
_lpRootViewEntity$8370 = -68
_lpTask$8374 = -72
_lpSearchViewEntity$8377 = -84
_lpLinkedParentViewEntity$8378 = -76
_lpLinkedEntityInstance$8379 = -80
_lpParent$8395 = -88
_lpTask$8399 = -92
_lpTask$8407 = -96
_fnValidateInsertPosition PROC NEAR

; 2625 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 100				; 00000064H

; 2626 :    LPVIEWOI          lpViewOI;
; 2627 :    LPVIEWCSR         lpViewCsr;
; 2628 :    LPVIEWENTITY      lpViewEntity;
; 2629 :    LPVIEWENTITYCSR   lpParentViewEntityCsr;
; 2630 :    LPVIEWENTITYCSR   lpRootViewEntityCsr;
; 2631 :    LPENTITYINSTANCE  lpViewRootEntityInstance;
; 2632 :    LPENTITYINSTANCE  lpTwinEntityInstance;
; 2633 :    LPENTITYINSTANCE  lpParentEntityInstance;
; 2634 : 
; 2635 :    lpViewEntity = zGETPTR( lpViewEntityCsr->hViewEntity );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 2636 :    lpViewCsr    = zGETPTR( lpViewEntityCsr->hViewCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2637 :    lpViewOI     = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 2638 : 
; 2639 :    // Validate the position parameter
; 2640 :    switch ( nPosition )
; 2641 :    {

	movsx	eax, WORD PTR _nPosition$[ebp]
	mov	DWORD PTR -100+[ebp], eax
	cmp	DWORD PTR -100+[ebp], 0
	jle	SHORT $L8314
	cmp	DWORD PTR -100+[ebp], 4
	jle	SHORT $L8310
	jmp	SHORT $L8314
$L8310:

; 2642 :       case zPOS_BEFORE: // 4
; 2643 :       case zPOS_AFTER:  // 3
; 2644 :       case zPOS_FIRST:  // 1
; 2645 :       case zPOS_LAST:   // 2
; 2646 :          break;

	jmp	SHORT $L8306
$L8314:

; 2650 :          LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8315[ebp], eax

; 2651 :          //  "KZOEE120 - Invalid position parameter"
; 2652 :          fnIssueCoreError( lpTask, lpView, 8, 120, (zLONG) nPosition,
; 2653 :                            lpViewEntity->szName, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	movsx	ecx, WORD PTR _nPosition$[ebp]
	push	ecx
	push	120					; 00000078H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$8315[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2654 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8293
$L8306:

; 2657 : 
; 2658 :    //
; 2659 :    //  Insert errors:  See comment for function above
; 2660 :    //
; 2661 : 
; 2662 :    *pnNewRoot = 0;

	mov	ecx, DWORD PTR _pnNewRoot$[ebp]
	mov	WORD PTR [ecx], 0

; 2663 :    lpRootViewEntityCsr = zGETPTR( lpViewCsr->hRootViewEntityCsr );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootViewEntityCsr$[ebp], eax

; 2664 :    lpViewRootEntityInstance = zGETPTR( lpRootViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpRootViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewRootEntityInstance$[ebp], eax

; 2665 : 
; 2666 :    if ( lpViewRootEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpViewRootEntityInstance$[ebp], 1
	jne	SHORT $L8321

; 2667 :       lpViewRootEntityInstance = fnEstablishCursorForView( lpRootViewEntityCsr );

	mov	eax, DWORD PTR _lpRootViewEntityCsr$[ebp]
	push	eax
	call	_fnEstablishCursorForView
	add	esp, 4
	mov	DWORD PTR _lpViewRootEntityInstance$[ebp], eax
$L8321:

; 2668 : 
; 2669 :    if ( lpViewRootEntityInstance == 0 )

	cmp	DWORD PTR _lpViewRootEntityInstance$[ebp], 0
	jne	SHORT $L8322

; 2670 :       lpViewRootEntityInstance = zGETPTR( lpViewCsr->hViewParentEntityInstance );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+38]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewRootEntityInstance$[ebp], eax
$L8322:

; 2671 : 
; 2672 :    // Gig, PATCH Attempt 1/8/93, go to parent of view root if it exists
; 2673 :    if ( lpViewRootEntityInstance && lpViewRootEntityInstance->hParent )

	cmp	DWORD PTR _lpViewRootEntityInstance$[ebp], 0
	je	SHORT $L8324
	mov	eax, DWORD PTR _lpViewRootEntityInstance$[ebp]
	cmp	DWORD PTR [eax+30], 0
	je	SHORT $L8324

; 2674 :       lpViewRootEntityInstance = zGETPTR( lpViewRootEntityInstance->hParent );

	mov	ecx, DWORD PTR _lpViewRootEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewRootEntityInstance$[ebp], eax
$L8324:

; 2675 :    // Gig, PATCH Attempt 1/8/93, go to parent of view root if it exists
; 2676 : 
; 2677 :    if   ( lpViewRootEntityInstance &&
; 2678 :           lpViewRootEntityInstance->u.nInd.bHidden &&
; 2679 :           lpViewEntity->nLevel > 1 )

	cmp	DWORD PTR _lpViewRootEntityInstance$[ebp], 0
	je	SHORT $L8326
	mov	eax, DWORD PTR _lpViewRootEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8326
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	cmp	eax, 1
	jle	SHORT $L8326

; 2681 :       LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8327[ebp], eax

; 2682 :       //  "KZOEE252 - Root of view has been deleted"
; 2683 :       fnIssueCoreError( lpTask, lpView, 8, 252, 0,
; 2684 :                         lpViewEntity->szName, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	252					; 000000fcH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$8327[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2685 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8293
$L8326:

; 2687 : 
; 2688 :    // If the cursor for the current entity instance needs to be
; 2689 :    // established, establish it now.
; 2690 :    if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 1
	jne	SHORT $L8330

; 2692 :       fnEstablishCursorForView( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnEstablishCursorForView
	add	esp, 4
$L8330:

; 2694 : 
; 2695 :    lpParentEntityInstance = 0;

	mov	DWORD PTR _lpParentEntityInstance$[ebp], 0

; 2696 :    lpTwinEntityInstance   = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTwinEntityInstance$[ebp], eax

; 2697 : 
; 2698 :    // If the view entity has no parent OR the view cursor for the
; 2699 :    // entity is > 1 (recursive at the root level) look for a
; 2700 :    // parent entity instance.
; 2701 :    if ( lpViewEntity->hParent || lpViewEntityCsr->nLevel > 1 )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [ecx+10], 0
	jne	SHORT $L8333
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	cmp	eax, 1
	jle	$L8332
$L8333:

; 2703 :       lpParentViewEntityCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentViewEntityCsr$[ebp], eax

; 2704 : 
; 2705 :       // If null, we are at a subobject entity.
; 2706 :       if ( lpParentViewEntityCsr == 0 )

	cmp	DWORD PTR _lpParentViewEntityCsr$[ebp], 0
	jne	SHORT $L8335

; 2707 :          lpParentEntityInstance = zGETPTR( lpViewCsr->hViewParentEntityInstance );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentEntityInstance$[ebp], eax

; 2708 :       else

	jmp	SHORT $L8341
$L8335:

; 2710 :          if ( lpParentViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	edx, DWORD PTR _lpParentViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+26], 1
	jne	SHORT $L8339

; 2711 :             fnEstablishCursorForView( lpParentViewEntityCsr );

	mov	eax, DWORD PTR _lpParentViewEntityCsr$[ebp]
	push	eax
	call	_fnEstablishCursorForView
	add	esp, 4
$L8339:

; 2712 : 
; 2713 :          lpParentEntityInstance = zGETPTR( lpParentViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpParentViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentEntityInstance$[ebp], eax

; 2714 : 
; 2715 :          // PATCH 7/1/93 Gig, We do not allow creation of entities which have
; 2716 :          // a parent unless the parent exists!!
; 2717 :          if ( lpParentEntityInstance == 0 )

	cmp	DWORD PTR _lpParentEntityInstance$[ebp], 0
	jne	SHORT $L8341

; 2719 :             LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8342[ebp], eax

; 2720 :             LPVIEWENTITY lpParentViewEntity = zGETPTR( lpParentViewEntityCsr->hViewEntity );

	mov	edx, DWORD PTR _lpParentViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentViewEntity$8344[ebp], eax

; 2721 : 
; 2722 :             //  "KZOEE122 - Attempt to create an Entity without a parent"
; 2723 :             fnIssueCoreError( lpTask, lpView, 8, 122, 0,
; 2724 :                               lpViewEntity->szName,
; 2725 :                               lpParentViewEntity->szName );

	mov	ecx, DWORD PTR _lpParentViewEntity$8344[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	122					; 0000007aH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$8342[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2726 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8293
$L8341:

; 2729 : 
; 2730 :       // If the current parent cursor is on a previous version, issue
; 2731 :       // an error.
; 2732 :       if ( lpParentEntityInstance )

	cmp	DWORD PTR _lpParentEntityInstance$[ebp], 0
	je	SHORT $L8347

; 2734 :          if ( lpParentEntityInstance->u.nInd.bHidden )

	mov	edx, DWORD PTR _lpParentEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8347

; 2736 :             LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8348[ebp], eax

; 2737 :             //  "KZOEE254 - Entity cursor is undefined"
; 2738 :             fnIssueCoreError( lpTask, lpView, 8, 254, 0,
; 2739 :                               lpViewEntity->szName, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	254					; 000000feH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$8348[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2740 :             return( zCALL_ERROR );   // Cursor undefined

	mov	ax, -16					; fffffff0H
	jmp	$L8293
$L8347:

; 2744 :    else

	jmp	SHORT $L8350
$L8332:

; 2746 :       lpParentViewEntityCsr  = 0;

	mov	DWORD PTR _lpParentViewEntityCsr$[ebp], 0

; 2747 :       lpParentEntityInstance = 0;

	mov	DWORD PTR _lpParentEntityInstance$[ebp], 0
$L8350:

; 2749 : 
; 2750 :    // If a twin exists, make sure it is not the root of the complete
; 2751 :    // object instance and that the cursor is undefined because it is
; 2752 :    // pointing to a deleted entity or a previous version.
; 2753 :    if ( lpTwinEntityInstance ) // if a twin exists

	cmp	DWORD PTR _lpTwinEntityInstance$[ebp], 0
	je	$L8351

; 2755 :       if ( lpTwinEntityInstance == lpViewRootEntityInstance &&
; 2756 :            lpTwinEntityInstance->nLevel == 1 )

	mov	eax, DWORD PTR _lpTwinEntityInstance$[ebp]
	cmp	eax, DWORD PTR _lpViewRootEntityInstance$[ebp]
	jne	$L8364
	mov	ecx, DWORD PTR _lpTwinEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	cmp	edx, 1
	jne	$L8364

; 2758 :          if ( lpViewOI->bMultipleRootLevels == FALSE )

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	and	ecx, 1
	test	ecx, ecx
	jne	$L8364

; 2760 :             if ( lpTwinEntityInstance->u.nInd.bHidden &&
; 2761 :                  lpTwinEntityInstance->u.nInd.bCreated )

	mov	edx, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	$L8354
	mov	ecx, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L8354

; 2763 :                LPENTITYINSTANCE  lpWrkInstance;
; 2764 : 
; 2765 :                lpWrkInstance = zGETPTR( lpTwinEntityInstance->hNextTwin );

	mov	eax, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$8355[ebp], eax
$L8358:

; 2766 :                while ( lpWrkInstance && lpWrkInstance->u.nInd.bHidden )

	cmp	DWORD PTR _lpWrkInstance$8355[ebp], 0
	je	SHORT $L8359
	mov	edx, DWORD PTR _lpWrkInstance$8355[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8359

; 2767 :                   lpWrkInstance = zGETPTR( lpWrkInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpWrkInstance$8355[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$8355[ebp], eax
	jmp	SHORT $L8358
$L8359:

; 2768 : 
; 2769 :                if ( lpWrkInstance )

	cmp	DWORD PTR _lpWrkInstance$8355[ebp], 0
	je	SHORT $L8361

; 2771 :                   LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8362[ebp], eax

; 2772 :                   //  "KZOEE121 - Attempt to insert twin to root of Instance"
; 2773 :                   fnIssueCoreError( lpTask, lpView, 8, 121, 0,
; 2774 :                                     lpViewEntity->szName, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	121					; 00000079H
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$8362[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2775 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8293
$L8361:

; 2778 :             else

	jmp	SHORT $L8364
$L8354:

; 2780 :                LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8365[ebp], eax

; 2781 :                //  "KZOEE121 - Attempt to insert twin to root of Instance"
; 2782 :                fnIssueCoreError( lpTask, lpView, 8, 121, 0,
; 2783 :                                  lpViewEntity->szName, 0 );

	push	0
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	121					; 00000079H
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$8365[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2784 :                return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8293
$L8364:

; 2789 :    else   // No twin exists, see if entity has a parent

	jmp	SHORT $L8369
$L8351:

; 2790 :    if ( lpParentEntityInstance == 0 )  // Parent entity instance exists?

	cmp	DWORD PTR _lpParentEntityInstance$[ebp], 0
	jne	SHORT $L8369

; 2792 :       // No parent Entity Instance, make sure this can be a root.
; 2793 :       if ( lpViewRootEntityInstance )  // Another entity instance exists

	cmp	DWORD PTR _lpViewRootEntityInstance$[ebp], 0
	je	SHORT $L8369

; 2795 :          LPVIEWENTITY lpRootViewEntity;
; 2796 : 
; 2797 :          lpRootViewEntity = zGETPTR( lpViewRootEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpViewRootEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootViewEntity$8370[ebp], eax

; 2798 : 
; 2799 :          // If a root exists and entity has neither a twin nor a
; 2800 :          // parent cursor, then the new entity is disjoint unless the
; 2801 :          // entity is the parent of the current root cursor.
; 2802 :          if ( zGETPTR( lpRootViewEntity->hParent ) != lpViewEntity )

	mov	eax, DWORD PTR _lpRootViewEntity$8370[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpViewEntity$[ebp]
	je	SHORT $L8373

; 2804 :             LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8374[ebp], eax

; 2805 :             //  "KZOEE122 - Attempt to create an Entity without a parent"
; 2806 :             fnIssueCoreError( lpTask, lpView, 8, 122, 0,
; 2807 :                               lpViewEntity->szName, 0 );

	push	0
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	0
	push	122					; 0000007aH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$8374[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2808 :             return( zCALL_ERROR );  // Entity is disjoint

	mov	ax, -16					; fffffff0H
	jmp	$L8293
$L8373:

; 2810 : 
; 2811 :          // Otherwise, the entity is a new root, set indicator
; 2812 :          *pnNewRoot = TRUE;

	mov	ecx, DWORD PTR _pnNewRoot$[ebp]
	mov	WORD PTR [ecx], 1
$L8369:

; 2815 : 
; 2816 :    // For every linked parent entity instance, make sure the
; 2817 :    // corresponding view object does not have this target entity
; 2818 :    // as either a child or direct parent to the linked parent found.
; 2819 :    if ( iOperationID != iIncludeSubobjectFromSubobject &&
; 2820 :         iOperationID != iCreateTemporalEntity &&
; 2821 :         iOperationID != iCreateEntity )

	movsx	edx, WORD PTR _iOperationID$[ebp]
	cmp	edx, 105				; 00000069H
	je	$L8393
	movsx	eax, WORD PTR _iOperationID$[ebp]
	cmp	eax, 115				; 00000073H
	je	$L8393
	movsx	ecx, WORD PTR _iOperationID$[ebp]
	cmp	ecx, 101				; 00000065H
	je	$L8393

; 2823 :       LPVIEWENTITY      lpSearchViewEntity;
; 2824 :       LPVIEWENTITY      lpLinkedParentViewEntity;
; 2825 :       LPENTITYINSTANCE  lpLinkedEntityInstance;
; 2826 : 
; 2827 :       if ( lpParentEntityInstance )

	cmp	DWORD PTR _lpParentEntityInstance$[ebp], 0
	je	SHORT $L8383
$L8382:

; 2829 :          while ( lpParentEntityInstance->hPrevVsn )

	mov	edx, DWORD PTR _lpParentEntityInstance$[ebp]
	cmp	DWORD PTR [edx+38], 0
	je	SHORT $L8383

; 2830 :             lpParentEntityInstance = zGETPTR( lpParentEntityInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpParentEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentEntityInstance$[ebp], eax
	jmp	SHORT $L8382
$L8383:

; 2832 : 
; 2833 :       if ( lpParentEntityInstance && lpParentEntityInstance->hNextLinked )

	cmp	DWORD PTR _lpParentEntityInstance$[ebp], 0
	je	$L8393
	mov	edx, DWORD PTR _lpParentEntityInstance$[ebp]
	cmp	DWORD PTR [edx+42], 0
	je	$L8393

; 2835 :          lpLinkedEntityInstance = lpParentEntityInstance;

	mov	eax, DWORD PTR _lpParentEntityInstance$[ebp]
	mov	DWORD PTR _lpLinkedEntityInstance$8379[ebp], eax
$L8387:

; 2836 :          while ( lpLinkedEntityInstance->hPrevVsn )

	mov	ecx, DWORD PTR _lpLinkedEntityInstance$8379[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	SHORT $L8388

; 2837 :             lpLinkedEntityInstance = zGETPTR( lpLinkedEntityInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpLinkedEntityInstance$8379[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedEntityInstance$8379[ebp], eax
	jmp	SHORT $L8387
$L8388:

; 2838 : 
; 2839 :          lpLinkedEntityInstance = zGETPTR( lpLinkedEntityInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpLinkedEntityInstance$8379[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedEntityInstance$8379[ebp], eax
$L8392:

; 2840 :          while ( lpLinkedEntityInstance != lpParentEntityInstance )

	mov	eax, DWORD PTR _lpLinkedEntityInstance$8379[ebp]
	cmp	eax, DWORD PTR _lpParentEntityInstance$[ebp]
	je	$L8393

; 2842 :             if ( lpLinkedEntityInstance->u.nInd.bHidden == FALSE )

	mov	ecx, DWORD PTR _lpLinkedEntityInstance$8379[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	$L8405

; 2844 :                LPVIEWENTITY lpParent;
; 2845 : 
; 2846 :                lpLinkedParentViewEntity = zGETPTR( lpLinkedEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpLinkedEntityInstance$8379[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedParentViewEntity$8378[ebp], eax

; 2847 :                lpParent = zGETPTR( lpLinkedParentViewEntity->hParent );

	mov	edx, DWORD PTR _lpLinkedParentViewEntity$8378[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$8395[ebp], eax

; 2848 : 
; 2849 :                // Check the linked parent view entity does not have
; 2850 :                // target entity as the parent
; 2851 :                if ( lpLinkedParentViewEntity->lERRelTok ==
; 2852 :                                              lpViewEntity->lERRelTok &&
; 2853 :                      lpParent &&
; 2854 :                      lpParent->lEREntTok == lpViewEntity->lERRelTok )

	mov	ecx, DWORD PTR _lpLinkedParentViewEntity$8378[ebp]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+199]
	cmp	eax, DWORD PTR [edx+199]
	jne	SHORT $L8398
	cmp	DWORD PTR _lpParent$8395[ebp], 0
	je	SHORT $L8398
	mov	ecx, DWORD PTR _lpParent$8395[ebp]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+195]
	cmp	eax, DWORD PTR [edx+199]
	jne	SHORT $L8398

; 2856 :                   LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8399[ebp], eax

; 2857 :                   // "KZOEE124 - Entity parent is included in another path "
; 2858 :                   // "           containing same entity type"
; 2859 :                   lpParent = zGETPTR( lpParentEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpParentEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$8395[ebp], eax

; 2860 :                   fnIssueCoreError( lpTask, lpView, 8, 124, 0,
; 2861 :                                     lpViewEntity->szName,
; 2862 :                                     lpParent->szName );

	mov	edx, DWORD PTR _lpParent$8395[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	0
	push	124					; 0000007cH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$8399[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2863 :                   return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8293
$L8398:

; 2865 : 
; 2866 :                lpSearchViewEntity = zGETPTR( lpLinkedParentViewEntity->hNextHier );

	mov	eax, DWORD PTR _lpLinkedParentViewEntity$8378[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8377[ebp], eax
$L8404:

; 2867 : 
; 2868 :                while ( lpSearchViewEntity &&
; 2869 :                        lpSearchViewEntity->nLevel >
; 2870 :                                           lpLinkedParentViewEntity->nLevel )

	cmp	DWORD PTR _lpSearchViewEntity$8377[ebp], 0
	je	$L8405
	mov	edx, DWORD PTR _lpSearchViewEntity$8377[ebp]
	movsx	eax, WORD PTR [edx+215]
	mov	ecx, DWORD PTR _lpLinkedParentViewEntity$8378[ebp]
	movsx	edx, WORD PTR [ecx+215]
	cmp	eax, edx
	jle	$L8405

; 2872 :                   if ( lpSearchViewEntity->lEREntTok ==
; 2873 :                                                    lpViewEntity->lEREntTok &&
; 2874 :                         lpSearchViewEntity->lERRelTok ==
; 2875 :                                                    lpViewEntity->lERRelTok )

	mov	eax, DWORD PTR _lpSearchViewEntity$8377[ebp]
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+195]
	cmp	edx, DWORD PTR [ecx+195]
	jne	SHORT $L8406
	mov	eax, DWORD PTR _lpSearchViewEntity$8377[ebp]
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+199]
	cmp	edx, DWORD PTR [ecx+199]
	jne	SHORT $L8406

; 2877 :                      LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8407[ebp], eax

; 2878 :                      // "KZOEE124 - Entity parent is included in another path "
; 2879 :                      // "           containing same entity type"
; 2880 :                      lpParent = zGETPTR( lpParentEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpParentEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$8395[ebp], eax

; 2881 :                      fnIssueCoreError( lpTask, lpView, 8, 124, 0,
; 2882 :                                        lpViewEntity->szName,
; 2883 :                                        lpParent->szName );

	mov	ecx, DWORD PTR _lpParent$8395[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	124					; 0000007cH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$8407[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 2884 :                      return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8293
$L8406:

; 2886 : 
; 2887 :                   lpSearchViewEntity = zGETPTR( lpSearchViewEntity->hNextHier );

	mov	edx, DWORD PTR _lpSearchViewEntity$8377[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8377[ebp], eax

; 2888 :                }

	jmp	$L8404
$L8405:

; 2890 : 
; 2891 :             lpLinkedEntityInstance = zGETPTR( lpLinkedEntityInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpLinkedEntityInstance$8379[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedEntityInstance$8379[ebp], eax

; 2892 :          }

	jmp	$L8392
$L8393:

; 2895 : 
; 2896 :    return( nPosition ); // return the nPosition value

	mov	ax, WORD PTR _nPosition$[ebp]
$L8293:

; 2897 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnValidateInsertPosition ENDP
_TEXT	ENDS
PUBLIC	_fnSetEntityKey@12
EXTRN	_fnSysLockCoreMutex@4:NEAR
EXTRN	_fnSysUnlockCoreMutex@4:NEAR
_TEXT	SEGMENT
_lpTask$ = 8
_lpOwningTask$ = 12
_lpEntityInstance$ = 16
_fnSetEntityKey@12 PROC NEAR

; 2915 : {

	push	ebp
	mov	ebp, esp

; 2916 :    // lpOwningTask is not required, so set it.
; 2917 :    if ( lpOwningTask == 0 )

	cmp	DWORD PTR _lpOwningTask$[ebp], 0
	jne	SHORT $L8419

; 2918 :       lpOwningTask = lpTask;

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	DWORD PTR _lpOwningTask$[ebp], eax
$L8419:

; 2919 : 
; 2920 : // if ( lpOwningTask->lTaskID == AnchorBlock->lMainTaskID )
; 2921 : // if ( zGETHNDL( lpOwningTask ) == zGETHNDL( AnchorBlock) )
; 2922 :       zLOCK_MUTEX( zMUTEX_ENTITYKEY );

	push	11					; 0000000bH
	call	_fnSysLockCoreMutex@4

; 2923 : 
; 2924 :    lpEntityInstance->ulKey = ++(lpOwningTask->ulCurrentEntityKey);

	mov	ecx, DWORD PTR _lpOwningTask$[ebp]
	mov	edx, DWORD PTR [ecx+154]
	add	edx, 1
	mov	eax, DWORD PTR _lpOwningTask$[ebp]
	mov	DWORD PTR [eax+154], edx
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR _lpOwningTask$[ebp]
	mov	eax, DWORD PTR [edx+154]
	mov	DWORD PTR [ecx+50], eax

; 2925 : 
; 2926 : // if ( lpOwningTask->lTaskID == AnchorBlock->lMainTaskID )
; 2927 : // if ( zGETHNDL( lpOwningTask ) == zGETHNDL( AnchorBlock) )
; 2928 :       zUNLOCK_MUTEX( zMUTEX_ENTITYKEY );

	push	11					; 0000000bH
	call	_fnSysUnlockCoreMutex@4

; 2929 : }

	pop	ebp
	ret	12					; 0000000cH
_fnSetEntityKey@12 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BM@MFFF@Entity?5Instance?5key?5is?5NULL?$AA@ ; `string'
PUBLIC	??_C@_0BG@KEHK@Internal?5Zeidon?5Error?$AA@	; `string'
PUBLIC	_GetEntityKey@8
EXTRN	_SysMessageBox@16:NEAR
EXTRN	_fnValidateCursorParameters:NEAR
;	COMDAT ??_C@_0BM@MFFF@Entity?5Instance?5key?5is?5NULL?$AA@
; File C:\10C\A\oe\KZOEEIAA.C
_DATA	SEGMENT
??_C@_0BM@MFFF@Entity?5Instance?5key?5is?5NULL?$AA@ DB 'Entity Instance k'
	DB	'ey is NULL', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@KEHK@Internal?5Zeidon?5Error?$AA@
_DATA	SEGMENT
??_C@_0BG@KEHK@Internal?5Zeidon?5Error?$AA@ DB 'Internal Zeidon Error', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -16
_lpViewEntity$ = -8
_lpViewEntityCsr$ = -12
_lpEntityInstance$ = -4
_GetEntityKey@8 PROC NEAR

; 2947 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 2948 :    LPTASK            lpCurrentTask;
; 2949 :    LPVIEWENTITY      lpViewEntity;
; 2950 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 2951 :    LPENTITYINSTANCE  lpEntityInstance;
; 2952 : 
; 2953 :    // Validate parameters
; 2954 :    if ( fnValidateCursorParameters( &lpCurrentTask,
; 2955 :                                     &lpViewEntity,
; 2956 :                                     0,
; 2957 :                                     &lpViewEntityCsr,
; 2958 :                                     0,
; 2959 :                                     iGetEntityKey,
; 2960 :                                     lpView,
; 2961 :                                     cpcEntityName,
; 2962 :                                     0 ) != 0 )

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	108					; 0000006cH
	push	0
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	push	0
	lea	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidateCursorParameters
	add	esp, 36					; 00000024H
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8429

; 2964 :       return( 0 );

	xor	eax, eax
	jmp	SHORT $L8424
$L8429:

; 2966 : 
; 2967 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 2968 : 
; 2969 : #ifdef DEBUG
; 2970 :    if ( lpEntityInstance->ulKey == 0 )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [edx+50], 0
	jne	SHORT $L8431

; 2971 :       SysMessageBox( lpView, "Internal Zeidon Error",
; 2972 :                      "Entity Instance key is NULL", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0BM@MFFF@Entity?5Instance?5key?5is?5NULL?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BG@KEHK@Internal?5Zeidon?5Error?$AA@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysMessageBox@16
$L8431:

; 2973 : #endif
; 2974 : 
; 2975 :    fnOperationReturn( iGetEntityKey, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	108					; 0000006cH
	call	_fnOperationReturn
	add	esp, 8

; 2976 :    return( lpEntityInstance->ulKey );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+50]
$L8424:

; 2977 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_GetEntityKey@8 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0EL@COED@fnCreateEntity?5ERROR?5locating?5Re@ ; `string'
EXTRN	_TraceLine:NEAR
EXTRN	_fnAddEntityToDebugChange@4:NEAR
EXTRN	_fnNullCursorForViewChildren:NEAR
EXTRN	_fnAllocDataspace:NEAR
;	COMDAT ??_C@_0EL@COED@fnCreateEntity?5ERROR?5locating?5Re@
; File C:\10C\A\oe\KZOEEIAA.C
_DATA	SEGMENT
??_C@_0EL@COED@fnCreateEntity?5ERROR?5locating?5Re@ DB 'fnCreateEntity ER'
	DB	'ROR locating RecursViewEntity for lpViewSubobject: 0x%08x', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpViewEntity$ = 12
_lpViewEntityCsr$ = 16
_nPosition$ = 20
_bNewRoot$ = 24
_lpAllocTask$ = -8
_lpViewOI$ = -40
_lpViewCsr$ = -4
_lpSearchViewCsr$ = -36
_lpViewSubobject$ = -24
_hEntityInstance$ = -32
_lpEntityInstance$ = -20
_lpRootEntityInstance$ = -16
_lpParentEntityInstance$ = -12
_lpTwinEntityInstance$ = -28
_lpParentViewEntityCsr$8459 = -44
_lpNextTwin$8482 = -48
_lpPrevTwin$8483 = -52
_lpWorkInstance$8494 = -56
_lpWorkInstance$8501 = -60
_lpWorkInstance$8523 = -64
_lpNextHier$8529 = -68
_lpLastChild$8536 = -76
_lpNextHier$8537 = -72
_lpWorkViewEnt$8548 = -104
_lpSearchCsr$8549 = -96
_lpSearchEntityInstance$8550 = -92
_lpNextHier$8551 = -88
_nParentHierNbr$8552 = -80
_nHierNbr$8553 = -100
_nLevel$8554 = -84
_lpSearchViewEntityCsr$8591 = -116
_lpSearchViewEntity$8592 = -108
_nRelativeCsr$8593 = -112
_nRelativeRecursCsr$8594 = -120
_fnCreateEntity@20 PROC NEAR

; 2999 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 124				; 0000007cH

; 3000 :    LPTASK            lpAllocTask;
; 3001 :    LPVIEWOI          lpViewOI;
; 3002 :    LPVIEWCSR         lpViewCsr;
; 3003 :    LPVIEWCSR         lpSearchViewCsr;
; 3004 :    LPVIEWSUBOBJECT   lpViewSubobject = 0;

	mov	DWORD PTR _lpViewSubobject$[ebp], 0

; 3005 :    zPVOID            hEntityInstance = 0;

	mov	DWORD PTR _hEntityInstance$[ebp], 0

; 3006 :    LPENTITYINSTANCE  lpEntityInstance;
; 3007 :    LPENTITYINSTANCE  lpRootEntityInstance;
; 3008 :    LPENTITYINSTANCE  lpParentEntityInstance;
; 3009 :    LPENTITYINSTANCE  lpTwinEntityInstance;
; 3010 : 
; 3011 :    lpViewCsr   = zGETPTR( lpViewEntityCsr->hViewCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 3012 :    lpViewOI    = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 3013 :    lpAllocTask = zGETPTR( lpViewOI->hTask );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpAllocTask$[ebp], eax

; 3014 : 
; 3015 :    // Get twin to current entity.
; 3016 :    lpParentEntityInstance = 0;

	mov	DWORD PTR _lpParentEntityInstance$[ebp], 0

; 3017 :    if ( lpViewEntityCsr->nLevel > 1 ) // parent exists at definition level

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	cmp	ecx, 1
	jle	SHORT $L8463

; 3019 :       LPVIEWENTITYCSR lpParentViewEntityCsr = zGETPTR( lpViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentViewEntityCsr$8459[ebp], eax

; 3020 : 
; 3021 :       // If there is no parent entity cursor, then this entity is to be the new root
; 3022 :       // of a subobject view, the parent in this case is the parent of the view.
; 3023 :       if ( lpParentViewEntityCsr )

	cmp	DWORD PTR _lpParentViewEntityCsr$8459[ebp], 0
	je	SHORT $L8461

; 3025 :          lpParentEntityInstance = zGETPTR( lpParentViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpParentViewEntityCsr$8459[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentEntityInstance$[ebp], eax

; 3029 :       else

	jmp	SHORT $L8463
$L8461:

; 3031 :          lpParentEntityInstance = zGETPTR( lpViewCsr->hViewParentEntityInstance );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentEntityInstance$[ebp], eax
$L8463:

; 3036 : 
; 3037 :    // Everything's OK for creating an entity instance, create it now.
; 3038 :    hEntityInstance = fnAllocDataspace( lpAllocTask->hFirstDataHeader,
; 3039 :                                        sizeof( EntityInstanceRecord ),
; 3040 :                                        1, 0, iEntityInstance );

	push	10024					; 00002728H
	push	0
	push	1
	push	68					; 00000044H
	mov	edx, DWORD PTR _lpAllocTask$[ebp]
	mov	eax, DWORD PTR [edx+94]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hEntityInstance$[ebp], eax

; 3041 : 
; 3042 :    if ( hEntityInstance == 0 )

	cmp	DWORD PTR _hEntityInstance$[ebp], 0
	jne	SHORT $L8466

; 3043 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8444
$L8466:

; 3044 : 
; 3045 :    lpEntityInstance = zGETPTR( hEntityInstance );

	mov	ecx, DWORD PTR _hEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 3046 :    fnSetEntityKey( lpAllocTask, 0, lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpAllocTask$[ebp]
	push	eax
	call	_fnSetEntityKey@12

; 3047 : 
; 3048 :    // Set values in entity instance record.
; 3049 :    lpEntityInstance->hViewOI = lpViewCsr->hViewOI;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	mov	DWORD PTR [ecx+10], eax

; 3050 : 
; 3051 :    // Set the view entity associated with the Entity, in the case of a
; 3052 :    // recursive subobject, the view entity pointed to by the cursor may not
; 3053 :    // in fact be the view entity we are creating, in this case we must get
; 3054 :    // the view entity from the subobject entry chained to this entry.
; 3055 :    lpViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$[ebp], eax

; 3056 :    if ( lpViewSubobject && lpViewSubobject->hRecursViewEntity &&
; 3057 :         lpViewEntityCsr == zGETPTR( lpViewSubobject->hRootCsr ) )

	cmp	DWORD PTR _lpViewSubobject$[ebp], 0
	je	SHORT $L8470
	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	cmp	DWORD PTR [eax+36], 0
	je	SHORT $L8470
	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	DWORD PTR _lpViewEntityCsr$[ebp], eax
	jne	SHORT $L8470

; 3059 :       lpEntityInstance->hViewEntity = lpViewSubobject->hRecursViewEntity;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	mov	DWORD PTR [eax+2], edx

; 3061 :    else

	jmp	SHORT $L8471
$L8470:

; 3063 :       lpEntityInstance->hViewEntity = zGETHNDL( lpViewEntity );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+2], eax

; 3064 :       lpViewSubobject = 0;

	mov	DWORD PTR _lpViewSubobject$[ebp], 0
$L8471:

; 3066 : 
; 3067 :    lpEntityInstance->nLevel = lpViewEntityCsr->nLevel;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	cx, WORD PTR [eax+22]
	mov	WORD PTR [edx+58], cx

; 3068 : 
; 3069 :    // Get root of instance chain.
; 3070 :    lpRootEntityInstance = zGETPTR( lpViewOI->hRootEntityInstance );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootEntityInstance$[ebp], eax

; 3071 : 
; 3072 :    // The following check is made in CreateEntity, but is done again here so
; 3073 :    // calls from ActivateOI work after having to go down a subobject level.
; 3074 :    if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [ecx+26], 1
	jne	SHORT $L8475

; 3075 :       fnEstablishCursorForView( lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnEstablishCursorForView
	add	esp, 4
$L8475:

; 3076 : 
; 3077 :    // Get twin to current entity.
; 3078 :    lpTwinEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTwinEntityInstance$[ebp], eax

; 3079 : 
; 3080 :    // Set parent, twin, and hierarchical pointers.
; 3081 :    // If we are creating a new root, simply set hierarchical pointers.
; 3082 :    if ( bNewRoot || lpRootEntityInstance == 0 )

	movsx	edx, WORD PTR _bNewRoot$[ebp]
	test	edx, edx
	jne	SHORT $L8478
	cmp	DWORD PTR _lpRootEntityInstance$[ebp], 0
	jne	SHORT $L8477
$L8478:

; 3084 :       if ( lpRootEntityInstance )

	cmp	DWORD PTR _lpRootEntityInstance$[ebp], 0
	je	SHORT $L8479

; 3086 :          lpEntityInstance->hNextHier = zGETHNDL( lpRootEntityInstance );

	mov	eax, DWORD PTR _lpRootEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+14], eax

; 3087 :          lpRootEntityInstance->hPrevHier = hEntityInstance;

	mov	edx, DWORD PTR _lpRootEntityInstance$[ebp]
	mov	eax, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [edx+18], eax
$L8479:

; 3089 : 
; 3090 :       lpViewOI->hRootEntityInstance = hEntityInstance;

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [ecx+26], edx

; 3092 :    else

	jmp	$L8585
$L8477:

; 3094 :       LPENTITYINSTANCE  lpNextTwin;
; 3095 :       LPENTITYINSTANCE  lpPrevTwin;
; 3096 : 
; 3097 :       lpEntityInstance->hParent = zGETHNDL( lpParentEntityInstance );

	mov	eax, DWORD PTR _lpParentEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+30], eax

; 3098 :    // if ( lpEntityInstance->hParent == UNSET_CSR )
; 3099 :    //    SysMessageBox( 0, "fnCreateEntity", "UNSET_CSR", -1 );
; 3100 : 
; 3101 :       switch ( nPosition )
; 3102 :       {

	movsx	edx, WORD PTR _nPosition$[ebp]
	mov	DWORD PTR -124+[ebp], edx
	mov	eax, DWORD PTR -124+[ebp]
	sub	eax, 1
	mov	DWORD PTR -124+[ebp], eax
	cmp	DWORD PTR -124+[ebp], 3
	ja	$L8486
	mov	ecx, DWORD PTR -124+[ebp]
	jmp	DWORD PTR $L9553[ecx*4]
$L8490:

; 3103 :          case zPOS_AFTER: // 3
; 3104 :             if ( lpTwinEntityInstance )

	cmp	DWORD PTR _lpTwinEntityInstance$[ebp], 0
	je	SHORT $L8491

; 3106 :                lpEntityInstance->hPrevTwin = zGETHNDL( lpTwinEntityInstance );

	mov	edx, DWORD PTR _lpTwinEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+26], eax

; 3107 :                lpEntityInstance->hNextTwin = lpTwinEntityInstance->hNextTwin;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	mov	DWORD PTR [edx+22], ecx

; 3108 :                if ( lpTwinEntityInstance->hNextTwin )

	mov	edx, DWORD PTR _lpTwinEntityInstance$[ebp]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8493

; 3110 :                   LPENTITYINSTANCE lpWorkInstance = zGETPTR( lpTwinEntityInstance->hNextTwin );

	mov	eax, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkInstance$8494[ebp], eax

; 3111 : 
; 3112 :                   lpWorkInstance->hPrevTwin = hEntityInstance;

	mov	edx, DWORD PTR _lpWorkInstance$8494[ebp]
	mov	eax, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [edx+26], eax
$L8493:

; 3114 : 
; 3115 :                lpTwinEntityInstance->hNextTwin = hEntityInstance;

	mov	ecx, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	edx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [ecx+22], edx
$L8491:

; 3117 : 
; 3118 :             break;

	jmp	$L8486
$L8497:

; 3119 : 
; 3120 :          case zPOS_BEFORE: // 4
; 3121 :             if ( lpTwinEntityInstance )

	cmp	DWORD PTR _lpTwinEntityInstance$[ebp], 0
	je	SHORT $L8498

; 3123 :                lpEntityInstance->hNextTwin = zGETHNDL( lpTwinEntityInstance );

	mov	eax, DWORD PTR _lpTwinEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+22], eax

; 3124 :                lpEntityInstance->hPrevTwin = lpTwinEntityInstance->hPrevTwin;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR [edx+26], ecx

; 3125 :                if ( lpTwinEntityInstance->hPrevTwin )

	mov	edx, DWORD PTR _lpTwinEntityInstance$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L8500

; 3127 :                   LPENTITYINSTANCE lpWorkInstance = zGETPTR( lpTwinEntityInstance->hPrevTwin );

	mov	eax, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkInstance$8501[ebp], eax

; 3128 : 
; 3129 :                   lpWorkInstance->hNextTwin = hEntityInstance;

	mov	edx, DWORD PTR _lpWorkInstance$8501[ebp]
	mov	eax, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [edx+22], eax
$L8500:

; 3131 : 
; 3132 :                lpTwinEntityInstance->hPrevTwin = hEntityInstance;

	mov	ecx, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	edx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [ecx+26], edx
$L8498:

; 3134 : 
; 3135 :             break;

	jmp	SHORT $L8486
$L8504:

; 3136 : 
; 3137 :          case zPOS_FIRST: // 1
; 3138 :             if ( lpTwinEntityInstance )

	cmp	DWORD PTR _lpTwinEntityInstance$[ebp], 0
	je	SHORT $L8505
$L8507:

; 3140 :                while ( lpTwinEntityInstance->hPrevTwin )

	mov	eax, DWORD PTR _lpTwinEntityInstance$[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	SHORT $L8508

; 3141 :                   lpTwinEntityInstance = zGETPTR( lpTwinEntityInstance->hPrevTwin );

	mov	ecx, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTwinEntityInstance$[ebp], eax
	jmp	SHORT $L8507
$L8508:

; 3142 : 
; 3143 :                lpEntityInstance->hNextTwin = zGETHNDL( lpTwinEntityInstance );

	mov	eax, DWORD PTR _lpTwinEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+22], eax

; 3144 :                lpTwinEntityInstance->hPrevTwin = hEntityInstance;

	mov	edx, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	eax, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [edx+26], eax
$L8505:

; 3147 : 
; 3148 :             break;

	jmp	SHORT $L8486
$L8512:

; 3149 : 
; 3150 :          case zPOS_LAST: // 2
; 3151 :             if ( lpTwinEntityInstance )

	cmp	DWORD PTR _lpTwinEntityInstance$[ebp], 0
	je	SHORT $L8513
$L8515:

; 3153 :                while ( lpTwinEntityInstance->hNextTwin )

	mov	ecx, DWORD PTR _lpTwinEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	SHORT $L8516

; 3154 :                   lpTwinEntityInstance = zGETPTR( lpTwinEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTwinEntityInstance$[ebp], eax
	jmp	SHORT $L8515
$L8516:

; 3155 : 
; 3156 :                lpEntityInstance->hPrevTwin = zGETHNDL( lpTwinEntityInstance );

	mov	ecx, DWORD PTR _lpTwinEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+26], eax

; 3157 :                lpTwinEntityInstance->hNextTwin = hEntityInstance;

	mov	eax, DWORD PTR _lpTwinEntityInstance$[ebp]
	mov	ecx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [eax+22], ecx
$L8513:
$L8486:

; 3162 : 
; 3163 :       lpNextTwin = zGETPTR( lpEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextTwin$8482[ebp], eax

; 3164 : 
; 3165 :       // Set hierarchical pointers, if there is a next twin, then this
; 3166 :       // is ideal because setting the hierarchical cursor means simply
; 3167 :       // chaining this cursor to the next twin.
; 3168 :       if ( lpNextTwin )  // if there is a next twin

	cmp	DWORD PTR _lpNextTwin$8482[ebp], 0
	je	SHORT $L8520

; 3170 :          lpEntityInstance->hNextHier = zGETHNDL( lpNextTwin );

	mov	ecx, DWORD PTR _lpNextTwin$8482[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+14], eax

; 3171 :          lpEntityInstance->hPrevHier = lpNextTwin->hPrevHier;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR _lpNextTwin$8482[ebp]
	mov	edx, DWORD PTR [ecx+18]
	mov	DWORD PTR [eax+18], edx

; 3172 :          if ( lpEntityInstance->hPrevHier )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+18], 0
	je	SHORT $L8522

; 3174 :             LPENTITYINSTANCE lpWorkInstance = zGETPTR( lpEntityInstance->hPrevHier );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkInstance$8523[ebp], eax

; 3175 : 
; 3176 :             lpWorkInstance->hNextHier = hEntityInstance;

	mov	eax, DWORD PTR _lpWorkInstance$8523[ebp]
	mov	ecx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [eax+14], ecx
$L8522:

; 3178 : 
; 3179 :          lpNextTwin->hPrevHier = hEntityInstance;

	mov	edx, DWORD PTR _lpNextTwin$8482[ebp]
	mov	eax, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [edx+18], eax

; 3180 :          if ( lpNextTwin == lpRootEntityInstance )

	mov	ecx, DWORD PTR _lpNextTwin$8482[ebp]
	cmp	ecx, DWORD PTR _lpRootEntityInstance$[ebp]
	jne	SHORT $L8525

; 3182 :             lpViewOI->hRootEntityInstance = hEntityInstance;

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [edx+26], eax

; 3183 :             lpRootEntityInstance = lpEntityInstance;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR _lpRootEntityInstance$[ebp], ecx
$L8525:

; 3186 :       else

	jmp	$L8585
$L8520:

; 3188 :          // Otherwise, use the previous twin as the previous
; 3189 :          // hierarchical if the twin has no next hierarchical OR the
; 3190 :          // next hierarchical for the twin is not a child of the
; 3191 :          // twin.
; 3192 :          lpPrevTwin = zGETPTR( lpEntityInstance->hPrevTwin );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevTwin$8483[ebp], eax

; 3193 :          if ( lpPrevTwin )

	cmp	DWORD PTR _lpPrevTwin$8483[ebp], 0
	je	$L8528

; 3195 :             LPENTITYINSTANCE lpNextHier = zGETPTR( lpPrevTwin->hNextHier );

	mov	ecx, DWORD PTR _lpPrevTwin$8483[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$8529[ebp], eax

; 3196 : 
; 3197 :             if ( lpNextHier == 0 ||
; 3198 :                  lpNextHier->nLevel <= lpEntityInstance->nLevel )

	cmp	DWORD PTR _lpNextHier$8529[ebp], 0
	je	SHORT $L8532
	mov	eax, DWORD PTR _lpNextHier$8529[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jg	SHORT $L8531
$L8532:

; 3200 :                lpEntityInstance->hPrevHier = zGETHNDL( lpPrevTwin );

	mov	ecx, DWORD PTR _lpPrevTwin$8483[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+18], eax

; 3201 :                if ( lpPrevTwin->hNextHier )

	mov	eax, DWORD PTR _lpPrevTwin$8483[ebp]
	cmp	DWORD PTR [eax+14], 0
	je	SHORT $L8534

; 3203 :                   lpEntityInstance->hNextHier = lpPrevTwin->hNextHier;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR _lpPrevTwin$8483[ebp]
	mov	eax, DWORD PTR [edx+14]
	mov	DWORD PTR [ecx+14], eax

; 3204 :                   lpNextHier->hPrevHier = hEntityInstance;

	mov	ecx, DWORD PTR _lpNextHier$8529[ebp]
	mov	edx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [ecx+18], edx
$L8534:

; 3206 : 
; 3207 :                lpPrevTwin->hNextHier = hEntityInstance;

	mov	eax, DWORD PTR _lpPrevTwin$8483[ebp]
	mov	ecx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [eax+14], ecx

; 3209 :             else

	jmp	$L8545
$L8531:

; 3211 :                LPENTITYINSTANCE lpLastChild;
; 3212 :                LPENTITYINSTANCE lpNextHier;
; 3213 : 
; 3214 :                lpLastChild = zGETPTR( lpPrevTwin->hNextHier );

	mov	edx, DWORD PTR _lpPrevTwin$8483[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLastChild$8536[ebp], eax

; 3215 :                lpNextHier  = zGETPTR( lpLastChild->hNextHier );

	mov	ecx, DWORD PTR _lpLastChild$8536[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$8537[ebp], eax
$L8541:

; 3216 : 
; 3217 :                while ( lpNextHier &&
; 3218 :                        lpNextHier->nLevel > lpEntityInstance->nLevel )

	cmp	DWORD PTR _lpNextHier$8537[ebp], 0
	je	SHORT $L8542
	mov	eax, DWORD PTR _lpNextHier$8537[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jle	SHORT $L8542

; 3220 :                   lpLastChild = lpNextHier;

	mov	ecx, DWORD PTR _lpNextHier$8537[ebp]
	mov	DWORD PTR _lpLastChild$8536[ebp], ecx

; 3221 :                   lpNextHier  = zGETPTR( lpLastChild->hNextHier );

	mov	edx, DWORD PTR _lpLastChild$8536[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$8537[ebp], eax

; 3222 :                }

	jmp	SHORT $L8541
$L8542:

; 3223 : 
; 3224 :                lpEntityInstance->hPrevHier = zGETHNDL( lpLastChild );

	mov	ecx, DWORD PTR _lpLastChild$8536[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+18], eax

; 3225 :                lpEntityInstance->hNextHier = lpLastChild->hNextHier;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR _lpLastChild$8536[ebp]
	mov	edx, DWORD PTR [ecx+14]
	mov	DWORD PTR [eax+14], edx

; 3226 :                lpLastChild->hNextHier = hEntityInstance;

	mov	eax, DWORD PTR _lpLastChild$8536[ebp]
	mov	ecx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [eax+14], ecx

; 3227 : 
; 3228 :                if ( lpEntityInstance->hNextHier )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [edx+14], 0
	je	SHORT $L8545

; 3230 :                   lpNextHier = zGETPTR( lpEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$8537[ebp], eax

; 3231 :                   lpNextHier->hPrevHier = hEntityInstance;

	mov	edx, DWORD PTR _lpNextHier$8537[ebp]
	mov	eax, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [edx+18], eax
$L8545:

; 3235 :          else

	jmp	$L8585
$L8528:

; 3237 :             LPVIEWENTITY     lpWorkViewEnt;
; 3238 :             LPVIEWENTITYCSR  lpSearchCsr;
; 3239 :             LPENTITYINSTANCE lpSearchEntityInstance;
; 3240 :             LPENTITYINSTANCE lpNextHier;
; 3241 :             zSHORT           nParentHierNbr;
; 3242 :             zSHORT           nHierNbr;
; 3243 :             zSHORT           nLevel;
; 3244 : 
; 3245 :             // Here we take the first established cursor which is
; 3246 :             // hierarchically before the current entity instance
; 3247 :             // (knowing that it may in fact be the parent cursor itself)
; 3248 :             // and work forward from that entity instance in order to
; 3249 :             // find our correct hierarchical position
; 3250 : 
; 3251 :             lpSearchCsr = zGETPTR( lpViewEntityCsr->hPrevHier );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchCsr$8549[ebp], eax
$L8558:

; 3252 :             while ( lpSearchCsr &&
; 3253 :                     (lpSearchCsr->hEntityInstance == 0 ||
; 3254 :                      lpSearchCsr->hEntityInstance == UNSET_CSR) )

	cmp	DWORD PTR _lpSearchCsr$8549[ebp], 0
	je	SHORT $L8559
	mov	eax, DWORD PTR _lpSearchCsr$8549[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	SHORT $L8560
	mov	ecx, DWORD PTR _lpSearchCsr$8549[ebp]
	cmp	DWORD PTR [ecx+26], 1
	jne	SHORT $L8559
$L8560:

; 3256 :                lpSearchCsr = zGETPTR( lpSearchCsr->hPrevHier );

	mov	edx, DWORD PTR _lpSearchCsr$8549[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchCsr$8549[ebp], eax

; 3257 :             }

	jmp	SHORT $L8558
$L8559:

; 3258 : 
; 3259 :             // If no cursor was found, then we must have hit the root of a
; 3260 :             // Subobject view, so use the parent root cursor for the view.
; 3261 :             if ( lpSearchCsr )

	cmp	DWORD PTR _lpSearchCsr$8549[ebp], 0
	je	SHORT $L8562

; 3262 :                lpSearchEntityInstance = zGETPTR( lpSearchCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpSearchCsr$8549[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$8550[ebp], eax

; 3263 :             else

	jmp	SHORT $L8564
$L8562:

; 3264 :                lpSearchEntityInstance = zGETPTR( lpViewCsr->hViewParentEntityInstance );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$8550[ebp], eax
$L8564:

; 3265 : 
; 3266 :             if ( lpSearchEntityInstance->nLevel >= lpEntityInstance->nLevel )

	mov	edx, DWORD PTR _lpSearchEntityInstance$8550[ebp]
	movsx	eax, WORD PTR [edx+58]
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	cmp	eax, edx
	jl	SHORT $L8569
$L8568:

; 3268 :                while ( lpSearchEntityInstance->hNextTwin )

	mov	eax, DWORD PTR _lpSearchEntityInstance$8550[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	SHORT $L8569

; 3269 :                   lpSearchEntityInstance = zGETPTR( lpSearchEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$8550[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchEntityInstance$8550[ebp], eax
	jmp	SHORT $L8568
$L8569:

; 3271 : 
; 3272 :             // Now to set hierarchical cursor using a forward entity
; 3273 :             // instance search.
; 3274 :             lpNextHier     = zGETPTR( lpSearchEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpSearchEntityInstance$8550[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$8551[ebp], eax

; 3275 :             nLevel         = lpViewEntityCsr->nLevel;

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ax, WORD PTR [edx+22]
	mov	WORD PTR _nLevel$8554[ebp], ax

; 3276 :             lpWorkViewEnt  = zGETPTR( lpEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewEnt$8548[ebp], eax

; 3277 :             nHierNbr       = lpWorkViewEnt->nHierNbr;

	mov	eax, DWORD PTR _lpWorkViewEnt$8548[ebp]
	mov	cx, WORD PTR [eax+217]
	mov	WORD PTR _nHierNbr$8553[ebp], cx

; 3278 : 
; 3279 :             // Found a condition (whacked account.vml) in which lpParentEntityInstance is null.  Don't
; 3280 :             // know why, but by protecting the following code, seems to be OK.  dks 2010.02.24
; 3281 :             if ( lpParentEntityInstance )

	cmp	DWORD PTR _lpParentEntityInstance$[ebp], 0
	je	SHORT $L8573

; 3283 :                lpWorkViewEnt  = zGETPTR( lpParentEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpParentEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewEnt$8548[ebp], eax

; 3284 :                nParentHierNbr = lpWorkViewEnt->nHierNbr;

	mov	ecx, DWORD PTR _lpWorkViewEnt$8548[ebp]
	mov	dx, WORD PTR [ecx+217]
	mov	WORD PTR _nParentHierNbr$8552[ebp], dx
$L8573:

; 3286 :          // else
; 3287 :          //    nParentHierNbr = nHierNbr - 1;
; 3288 : 
; 3289 :             while ( lpNextHier )

	cmp	DWORD PTR _lpNextHier$8551[ebp], 0
	je	SHORT $L8577

; 3291 :                lpWorkViewEnt = zGETPTR( lpNextHier->hViewEntity );

	mov	eax, DWORD PTR _lpNextHier$8551[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewEnt$8548[ebp], eax

; 3292 : 
; 3293 :                if ( lpNextHier->nLevel > lpViewEntityCsr->nLevel ||
; 3294 :                     (lpNextHier->nLevel == lpViewEntityCsr->nLevel &&
; 3295 :                      lpWorkViewEnt->nHierNbr < nHierNbr) )

	mov	edx, DWORD PTR _lpNextHier$8551[ebp]
	movsx	eax, WORD PTR [edx+58]
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	cmp	eax, edx
	jg	SHORT $L8580
	mov	eax, DWORD PTR _lpNextHier$8551[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	cmp	ecx, eax
	jne	SHORT $L8579
	mov	ecx, DWORD PTR _lpWorkViewEnt$8548[ebp]
	movsx	edx, WORD PTR [ecx+217]
	movsx	eax, WORD PTR _nHierNbr$8553[ebp]
	cmp	edx, eax
	jge	SHORT $L8579
$L8580:

; 3297 :                   lpSearchEntityInstance = lpNextHier;

	mov	ecx, DWORD PTR _lpNextHier$8551[ebp]
	mov	DWORD PTR _lpSearchEntityInstance$8550[ebp], ecx

; 3298 :                   lpNextHier             = zGETPTR( lpNextHier->hNextHier );

	mov	edx, DWORD PTR _lpNextHier$8551[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$8551[ebp], eax

; 3300 :                else

	jmp	SHORT $L8582
$L8579:

; 3301 :                   break;

	jmp	SHORT $L8577
$L8582:

; 3302 :             }

	jmp	SHORT $L8573
$L8577:

; 3303 : 
; 3304 :             lpEntityInstance->hPrevHier = zGETHNDL( lpSearchEntityInstance );

	mov	ecx, DWORD PTR _lpSearchEntityInstance$8550[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+18], eax

; 3305 :             lpEntityInstance->hNextHier = lpSearchEntityInstance->hNextHier;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR _lpSearchEntityInstance$8550[ebp]
	mov	edx, DWORD PTR [ecx+14]
	mov	DWORD PTR [eax+14], edx

; 3306 :             lpSearchEntityInstance->hNextHier = hEntityInstance;

	mov	eax, DWORD PTR _lpSearchEntityInstance$8550[ebp]
	mov	ecx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [eax+14], ecx

; 3307 :             lpNextHier = zGETPTR( lpEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$8551[ebp], eax

; 3308 :             if ( lpEntityInstance->hNextHier )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+14], 0
	je	SHORT $L8585

; 3309 :                lpNextHier->hPrevHier = hEntityInstance;

	mov	edx, DWORD PTR _lpNextHier$8551[ebp]
	mov	eax, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [edx+18], eax
$L8585:

; 3314 : 
; 3315 :    // Finally, set the cursor for the entity and null the child cursors.
; 3316 :    lpViewEntityCsr->hEntityInstance = hEntityInstance;

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [ecx+26], edx

; 3317 : // if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )
; 3318 : //    SysMessageBox( 0, "fnCreateEntity", "UNSET_CSR", -1 );
; 3319 : 
; 3320 :    if ( lpTwinEntityInstance )

	cmp	DWORD PTR _lpTwinEntityInstance$[ebp], 0
	je	SHORT $L8586

; 3321 :       fnNullCursorForViewChildren( lpViewEntityCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnNullCursorForViewChildren
	add	esp, 4
$L8586:

; 3322 : 
; 3323 :    // Now that the entity had been created, update any other views
; 3324 :    // which have a cursor position on the new entity instance's
; 3325 :    // parent. If the entity is a new root, set the instance pointer
; 3326 :    // in all views, otherwise, if the entity cursor for the other
; 3327 :    // views is NULL, invalidate the pointer to force resetting in case
; 3328 :    // the newly created entity belongs in that cursor (we skip the
; 3329 :    // overhead of determining that fact now).
; 3330 :    lpSearchViewCsr = zGETPTR( lpViewOI->hFirstViewCsr );

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewCsr$[ebp], eax

; 3331 :    if ( lpSearchViewCsr == lpViewCsr )

	mov	eax, DWORD PTR _lpSearchViewCsr$[ebp]
	cmp	eax, DWORD PTR _lpViewCsr$[ebp]
	jne	SHORT $L8588

; 3332 :       lpSearchViewCsr = zGETPTR( lpSearchViewCsr->hNextViewCsr );

	mov	ecx, DWORD PTR _lpSearchViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewCsr$[ebp], eax
$L8588:

; 3333 : 
; 3334 :    if ( lpSearchViewCsr )

	cmp	DWORD PTR _lpSearchViewCsr$[ebp], 0
	je	$L8609

; 3336 :       LPVIEWENTITYCSR  lpSearchViewEntityCsr;
; 3337 :       LPVIEWENTITY     lpSearchViewEntity;
; 3338 :       zSHORT           nRelativeCsr;
; 3339 :       zSHORT           nRelativeRecursCsr;
; 3340 : 
; 3341 :       nRelativeCsr = lpViewEntity->nHierNbr - 1;

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+217]
	sub	ecx, 1
	mov	WORD PTR _nRelativeCsr$8593[ebp], cx

; 3342 :       nRelativeRecursCsr = 0;

	mov	WORD PTR _nRelativeRecursCsr$8594[ebp], 0

; 3343 : 
; 3344 :       // If there are other view cursors to this object instance, see if
; 3345 :       // the entity in question is a recursive entity type, this will
; 3346 :       // be true if either the ViewSubobject is set from above OR the
; 3347 :       // view entity for the current entity cursor is marked as recursive.
; 3348 :       // If so, then set nRelativeRecursCsr to the second entity cursor in
; 3349 :       // the subobject which may represent the entity in question.
; 3350 :       if ( lpViewSubobject )

	cmp	DWORD PTR _lpViewSubobject$[ebp], 0
	je	SHORT $L8595

; 3352 :          if ( lpViewSubobject->hRecursViewEntity )

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	cmp	DWORD PTR [edx+36], 0
	je	SHORT $L8596

; 3354 :             lpSearchViewEntity = zGETPTR( lpViewSubobject->hRecursViewEntity );

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8592[ebp], eax

; 3355 :             nRelativeRecursCsr = lpSearchViewEntity->nHierNbr - 1;

	mov	edx, DWORD PTR _lpSearchViewEntity$8592[ebp]
	movsx	eax, WORD PTR [edx+217]
	sub	eax, 1
	mov	WORD PTR _nRelativeRecursCsr$8594[ebp], ax

; 3357 :          else

	jmp	SHORT $L8598
$L8596:

; 3359 :             TraceLine( "fnCreateEntity ERROR locating RecursViewEntity for lpViewSubobject: 0x%08x",
; 3360 :                        lpViewSubobject );

	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0EL@COED@fnCreateEntity?5ERROR?5locating?5Re@ ; `string'
	call	_TraceLine
	add	esp, 8
$L8598:

; 3363 :       else

	jmp	SHORT $L8601
$L8595:

; 3364 :       if ( lpViewEntity->bRecursive )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8601

; 3366 :          nRelativeRecursCsr = nRelativeCsr;

	mov	cx, WORD PTR _nRelativeCsr$8593[ebp]
	mov	WORD PTR _nRelativeRecursCsr$8594[ebp], cx

; 3367 :          lpSearchViewEntity = zGETPTR( lpViewEntity->hParent );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8592[ebp], eax
$L8604:

; 3368 :          while ( lpSearchViewEntity->lEREntTok != lpViewEntity->lEREntTok )

	mov	ecx, DWORD PTR _lpSearchViewEntity$8592[ebp]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+195]
	cmp	eax, DWORD PTR [edx+195]
	je	SHORT $L8605

; 3369 :             lpSearchViewEntity = zGETPTR( lpSearchViewEntity->hParent );

	mov	ecx, DWORD PTR _lpSearchViewEntity$8592[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8592[ebp], eax
	jmp	SHORT $L8604
$L8605:

; 3370 : 
; 3371 :          nRelativeCsr = lpSearchViewEntity->nHierNbr - 1;

	mov	eax, DWORD PTR _lpSearchViewEntity$8592[ebp]
	movsx	ecx, WORD PTR [eax+217]
	sub	ecx, 1
	mov	WORD PTR _nRelativeCsr$8593[ebp], cx
$L8601:

; 3373 : 
; 3374 :       while ( lpSearchViewCsr )

	cmp	DWORD PTR _lpSearchViewCsr$[ebp], 0
	je	$L8609

; 3376 :          if ( lpSearchViewCsr != lpViewCsr )

	mov	edx, DWORD PTR _lpSearchViewCsr$[ebp]
	cmp	edx, DWORD PTR _lpViewCsr$[ebp]
	je	$L8620

; 3378 :             lpSearchViewEntityCsr =
; 3379 :                            (LPVIEWENTITYCSR) (lpSearchViewCsr + 1);

	mov	eax, DWORD PTR _lpSearchViewCsr$[ebp]
	add	eax, 46					; 0000002eH
	mov	DWORD PTR _lpSearchViewEntityCsr$8591[ebp], eax

; 3380 :             lpSearchViewEntityCsr += nRelativeCsr;

	movsx	ecx, WORD PTR _nRelativeCsr$8593[ebp]
	imul	ecx, 30					; 0000001eH
	mov	edx, DWORD PTR _lpSearchViewEntityCsr$8591[ebp]
	add	edx, ecx
	mov	DWORD PTR _lpSearchViewEntityCsr$8591[ebp], edx

; 3381 :             if ( bNewRoot || lpRootEntityInstance == 0 )

	movsx	eax, WORD PTR _bNewRoot$[ebp]
	test	eax, eax
	jne	SHORT $L8613
	cmp	DWORD PTR _lpRootEntityInstance$[ebp], 0
	jne	SHORT $L8612
$L8613:

; 3383 :                lpSearchViewEntityCsr->hEntityInstance = hEntityInstance;

	mov	ecx, DWORD PTR _lpSearchViewEntityCsr$8591[ebp]
	mov	edx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [ecx+26], edx

; 3387 :             else

	jmp	SHORT $L8620
$L8612:

; 3389 :                if ( lpSearchViewEntityCsr->nLevel == lpViewEntityCsr->nLevel &&
; 3390 :                     lpSearchViewEntityCsr->hEntityInstance == 0 )

	mov	eax, DWORD PTR _lpSearchViewEntityCsr$8591[ebp]
	movsx	ecx, WORD PTR [eax+22]
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	cmp	ecx, eax
	jne	SHORT $L8615
	mov	ecx, DWORD PTR _lpSearchViewEntityCsr$8591[ebp]
	cmp	DWORD PTR [ecx+26], 0
	jne	SHORT $L8615

; 3392 :                   lpSearchViewEntityCsr->hEntityInstance = UNSET_CSR;

	mov	edx, DWORD PTR _lpSearchViewEntityCsr$8591[ebp]
	mov	DWORD PTR [edx+26], 1

; 3396 :                else

	jmp	SHORT $L8620
$L8615:

; 3397 :                if ( nRelativeRecursCsr )

	movsx	eax, WORD PTR _nRelativeRecursCsr$8594[ebp]
	test	eax, eax
	je	SHORT $L8620

; 3399 :                   lpSearchViewEntityCsr = (LPVIEWENTITYCSR) (lpSearchViewCsr + 1);

	mov	ecx, DWORD PTR _lpSearchViewCsr$[ebp]
	add	ecx, 46					; 0000002eH
	mov	DWORD PTR _lpSearchViewEntityCsr$8591[ebp], ecx

; 3400 :                   lpSearchViewEntityCsr += nRelativeRecursCsr;

	movsx	edx, WORD PTR _nRelativeRecursCsr$8594[ebp]
	imul	edx, 30					; 0000001eH
	mov	eax, DWORD PTR _lpSearchViewEntityCsr$8591[ebp]
	add	eax, edx
	mov	DWORD PTR _lpSearchViewEntityCsr$8591[ebp], eax

; 3401 :                   if ( lpSearchViewEntityCsr->nLevel == lpViewEntityCsr->nLevel &&
; 3402 :                        lpSearchViewEntityCsr->hEntityInstance == 0 )

	mov	ecx, DWORD PTR _lpSearchViewEntityCsr$8591[ebp]
	movsx	edx, WORD PTR [ecx+22]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	cmp	edx, ecx
	jne	SHORT $L8620
	mov	edx, DWORD PTR _lpSearchViewEntityCsr$8591[ebp]
	cmp	DWORD PTR [edx+26], 0
	jne	SHORT $L8620

; 3404 :                      lpSearchViewEntityCsr->hEntityInstance = UNSET_CSR;

	mov	eax, DWORD PTR _lpSearchViewEntityCsr$8591[ebp]
	mov	DWORD PTR [eax+26], 1
$L8620:

; 3411 : 
; 3412 :          lpSearchViewCsr = zGETPTR( lpSearchViewCsr->hNextViewCsr );

	mov	ecx, DWORD PTR _lpSearchViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewCsr$[ebp], eax

; 3413 :       }

	jmp	$L8601
$L8609:

; 3415 : 
; 3416 :    fnAddEntityToDebugChange( lpEntityInstance );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	call	_fnAddEntityToDebugChange@4

; 3417 : 
; 3418 :    return( 0 );  // entity instance created successfully

	xor	ax, ax
$L8444:

; 3419 : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
$L9553:
	DD	$L8504
	DD	$L8512
	DD	$L8490
	DD	$L8497
_fnCreateEntity@20 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0DI@HOGP@KZOEE119?5?9?5Invalid?5View?0?5View?5is@ ; `string'
PUBLIC	??_C@_0CO@MCMH@KZOEE253?5?9?5Entity?5cursor?5is?5NULL@ ; `string'
PUBLIC	??_C@_0DG@FPJO@KZOEE252?5?9?5Root?5of?5view?5has?5been@ ; `string'
PUBLIC	??_C@_0BJ@FCJI@?$CIDGC?$CJ?5View?5?5?5Cursor?5?5?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BJ@HFKD@?$CIDGC?$CJ?5Entity?5Cursor?5?5?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BJ@ODME@?$CIDGC?$CJ?5Entity?5Instance?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0CF@ICNK@Invalid?5Table?5ID?5for?5entity?5inst@ ; `string'
PUBLIC	??_C@_03FMHJ@DGC?$AA@				; `string'
PUBLIC	??_C@_0DD@MCKE@KZOEE254?5?9?5Entity?5cursor?5is?5unde@ ; `string'
PUBLIC	??_C@_0EE@GENJ@KZOEE255?5?9?5Attempt?5to?5update?5a?5p@ ; `string'
PUBLIC	??_C@_0EG@IMAH@KZOEE264?5?9?5Invalid?5Operation?5for@ ; `string'
EXTRN	_TraceLineX@8:NEAR
EXTRN	_fnValidViewCsr:NEAR
EXTRN	_fnEntityNameFromCsr@4:NEAR
;	COMDAT ??_C@_0DI@HOGP@KZOEE119?5?9?5Invalid?5View?0?5View?5is@
; File C:\10C\A\oe\KZOEEIAA.C
_DATA	SEGMENT
??_C@_0DI@HOGP@KZOEE119?5?9?5Invalid?5View?0?5View?5is@ DB 'KZOEE119 - In'
	DB	'valid View, View is Read Only for Entity: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CO@MCMH@KZOEE253?5?9?5Entity?5cursor?5is?5NULL@
_DATA	SEGMENT
??_C@_0CO@MCMH@KZOEE253?5?9?5Entity?5cursor?5is?5NULL@ DB 'KZOEE253 - Ent'
	DB	'ity cursor is NULL for Entity: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DG@FPJO@KZOEE252?5?9?5Root?5of?5view?5has?5been@
_DATA	SEGMENT
??_C@_0DG@FPJO@KZOEE252?5?9?5Root?5of?5view?5has?5been@ DB 'KZOEE252 - Ro'
	DB	'ot of view has been deleted for Entity: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@FCJI@?$CIDGC?$CJ?5View?5?5?5Cursor?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BJ@FCJI@?$CIDGC?$CJ?5View?5?5?5Cursor?5?5?5?$DN?5?$AA@ DB '(DGC) V'
	DB	'iew   Cursor   = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@HFKD@?$CIDGC?$CJ?5Entity?5Cursor?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BJ@HFKD@?$CIDGC?$CJ?5Entity?5Cursor?5?5?5?$DN?5?$AA@ DB '(DGC) Ent'
	DB	'ity Cursor   = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@ODME@?$CIDGC?$CJ?5Entity?5Instance?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BJ@ODME@?$CIDGC?$CJ?5Entity?5Instance?5?$DN?5?$AA@ DB '(DGC) Entit'
	DB	'y Instance = ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CF@ICNK@Invalid?5Table?5ID?5for?5entity?5inst@
_DATA	SEGMENT
??_C@_0CF@ICNK@Invalid?5Table?5ID?5for?5entity?5inst@ DB 'Invalid Table I'
	DB	'D for entity instance', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_03FMHJ@DGC?$AA@
_DATA	SEGMENT
??_C@_03FMHJ@DGC?$AA@ DB 'DGC', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DD@MCKE@KZOEE254?5?9?5Entity?5cursor?5is?5unde@
_DATA	SEGMENT
??_C@_0DD@MCKE@KZOEE254?5?9?5Entity?5cursor?5is?5unde@ DB 'KZOEE254 - Ent'
	DB	'ity cursor is undefined for Entity: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EE@GENJ@KZOEE255?5?9?5Attempt?5to?5update?5a?5p@
_DATA	SEGMENT
??_C@_0EE@GENJ@KZOEE255?5?9?5Attempt?5to?5update?5a?5p@ DB 'KZOEE255 - At'
	DB	'tempt to update a previous entity version for Entity: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EG@IMAH@KZOEE264?5?9?5Invalid?5Operation?5for@
_DATA	SEGMENT
??_C@_0EG@IMAH@KZOEE264?5?9?5Invalid?5Operation?5for@ DB 'KZOEE264 - Inva'
	DB	'lid Operation for Hierarchical processing for Entity: ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_plpReturnTask$ = 8
_ppvReturnViewEntity$ = 12
_ppvReturnViewEntityCsr$ = 16
_iOperationID$ = 20
_lpView$ = 24
_cpcEntityName$ = 28
_nFlags$ = 32
_lpCurrentTask$ = -32
_lpViewOI$ = -24
_lpViewCsr$ = -4
_lpViewEntity$ = -12
_lpViewEntityCsr$ = -28
_lpRootViewEntityCsr$ = -16
_lpRootViewEntityInstance$ = -20
_lpEntityInstance$ = -8
_lpTask$8657 = -36
_lpTask$8664 = -40
_lpTask$8671 = -44
_lpTask$8682 = -48
_lpTask$8695 = -56
_nID$8697 = -52
_lpParent$8701 = -60
_lpTask$8714 = -64
_lpTask$8725 = -68
_lpTask$8731 = -72
_fnValidateInstanceParameters PROC NEAR

; 3447 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H

; 3448 :    LPTASK            lpCurrentTask;
; 3449 :    LPVIEWOI          lpViewOI;
; 3450 :    LPVIEWCSR         lpViewCsr;
; 3451 :    LPVIEWENTITY      lpViewEntity;
; 3452 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 3453 :    LPVIEWENTITYCSR   lpRootViewEntityCsr;
; 3454 :    LPENTITYINSTANCE  lpRootViewEntityInstance;
; 3455 :    LPENTITYINSTANCE  lpEntityInstance;
; 3456 : 
; 3457 :    if ( nFlags & 2 )

	movsx	eax, WORD PTR _nFlags$[ebp]
	and	eax, 2
	test	eax, eax
	je	SHORT $L8646

; 3459 :       lpCurrentTask = *plpReturnTask;

	mov	ecx, DWORD PTR _plpReturnTask$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lpCurrentTask$[ebp], edx

; 3460 : 
; 3461 :       // Validate that the view passed is valid.
; 3462 :       if ( fnValidViewCsr( lpCurrentTask, lpView ) == 0 )

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnValidViewCsr
	add	esp, 8
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L8647

; 3464 :          fnOperationReturn( iOperationID, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	cx, WORD PTR _iOperationID$[ebp]
	push	ecx
	call	_fnOperationReturn
	add	esp, 8

; 3465 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8637
$L8647:

; 3468 :    else

	jmp	SHORT $L8648
$L8646:

; 3470 :       // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 3471 :       if ( (lpCurrentTask = fnOperationCall( iOperationID, lpView,
; 3472 :                                              zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	ax, WORD PTR _iOperationID$[ebp]
	push	eax
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8649

; 3474 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8637
$L8649:

; 3476 : 
; 3477 :       *plpReturnTask = lpCurrentTask;

	mov	ecx, DWORD PTR _plpReturnTask$[ebp]
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	mov	DWORD PTR [ecx], edx
$L8648:

; 3479 : 
; 3480 :    // Get the view Object Instance for the view
; 3481 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 3482 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 3483 : 
; 3484 :    // Validate that the entity exists
; 3485 :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr, lpView,
; 3486 :                                            cpcEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L8652

; 3488 :       fnOperationReturn( iOperationID, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	dx, WORD PTR _iOperationID$[ebp]
	push	edx
	call	_fnOperationReturn
	add	esp, 8

; 3489 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8637
$L8652:

; 3491 : 
; 3492 :    // Set View Entity and View Entity Cursor for caller.
; 3493 :    *ppvReturnViewEntity    = lpViewEntity;

	mov	eax, DWORD PTR _ppvReturnViewEntity$[ebp]
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	DWORD PTR [eax], ecx

; 3494 :    *ppvReturnViewEntityCsr = lpViewEntityCsr;

	mov	edx, DWORD PTR _ppvReturnViewEntityCsr$[ebp]
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	DWORD PTR [edx], eax

; 3495 : 
; 3496 :    // If intent is update, fail the call
; 3497 :    if ( lpView->bReadOnly && (nFlags & 1) &&
; 3498 :         lpViewEntity->bDerivedPath == FALSE )

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	shr	edx, 6
	and	edx, 1
	test	edx, edx
	je	$L8654
	movsx	eax, WORD PTR _nFlags$[ebp]
	and	eax, 1
	test	eax, eax
	je	$L8654
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 14					; 0000000eH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8654

; 3500 :       // Special case, we will allow exclusion and inclusion of a root in a
; 3501 :       // read only view since the incremental update behavior of
; 3502 :       // excluding and including at the root level is null.
; 3503 :       if ( lpViewEntity->hParent ||
; 3504 :            (iOperationID != iIncludeSubobjectFromSubobject &&
; 3505 :             iOperationID != iExcludeEntity) )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [eax+10], 0
	jne	SHORT $L8655
	movsx	ecx, WORD PTR _iOperationID$[ebp]
	cmp	ecx, 105				; 00000069H
	je	SHORT $L8654
	movsx	edx, WORD PTR _iOperationID$[ebp]
	cmp	edx, 107				; 0000006bH
	je	SHORT $L8654
$L8655:

; 3507 :          if ( (nFlags & 0x8000) == 0 )

	movsx	eax, WORD PTR _nFlags$[ebp]
	and	eax, 32768				; 00008000H
	test	eax, eax
	jne	SHORT $L8656

; 3509 :             LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8657[ebp], eax

; 3510 :             // "KZOEE119 - Invalid View, View is Read Only"
; 3511 :             fnIssueCoreError( lpTask, lpView, 8, 119, 0, cpcEntityName, 0 );

	push	0
	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	push	0
	push	119					; 00000077H
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$8657[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3513 :          else

	jmp	SHORT $L8659
$L8656:

; 3515 :             TraceLineS( "KZOEE119 - Invalid View, View is Read Only for Entity: ",
; 3516 :                         cpcEntityName );

	mov	eax, DWORD PTR _cpcEntityName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0DI@HOGP@KZOEE119?5?9?5Invalid?5View?0?5View?5is@ ; `string'
	call	_TraceLineS@8
$L8659:

; 3518 : 
; 3519 :          fnOperationReturn( iOperationID, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	dx, WORD PTR _iOperationID$[ebp]
	push	edx
	call	_fnOperationReturn
	add	esp, 8

; 3520 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8637
$L8654:

; 3523 : 
; 3524 :    lpRootViewEntityCsr = zGETPTR( lpViewCsr->hRootViewEntityCsr );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootViewEntityCsr$[ebp], eax

; 3525 :    // if Object instance is empty, issue an error
; 3526 :    if ( lpViewOI->hRootEntityInstance == 0 &&
; 3527 :         iOperationID != iCountEntitiesForView &&
; 3528 :         iOperationID != iRelinkAllSubobjectsForOI )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	cmp	DWORD PTR [edx+26], 0
	jne	SHORT $L8662
	movsx	eax, WORD PTR _iOperationID$[ebp]
	cmp	eax, 123				; 0000007bH
	je	SHORT $L8662
	movsx	ecx, WORD PTR _iOperationID$[ebp]
	cmp	ecx, 121				; 00000079H
	je	SHORT $L8662

; 3530 :       if ( (nFlags & 0x8000) == 0 )

	movsx	edx, WORD PTR _nFlags$[ebp]
	and	edx, 32768				; 00008000H
	test	edx, edx
	jne	SHORT $L8663

; 3532 :          LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8664[ebp], eax

; 3533 :          //  "KZOEE253 - Entity cursor is NULL"
; 3534 :          fnIssueCoreError( lpTask, lpView, 8, 253, 0,
; 3535 :                            lpViewEntity->szName, 0 );

	push	0
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	253					; 000000fdH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$8664[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3537 :       else

	jmp	SHORT $L8666
$L8663:

; 3539 :          TraceLineS( "KZOEE253 - Entity cursor is NULL for Entity: ",
; 3540 :                      lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0CO@MCMH@KZOEE253?5?9?5Entity?5cursor?5is?5NULL@ ; `string'
	call	_TraceLineS@8
$L8666:

; 3542 : 
; 3543 :       fnOperationReturn( iOperationID, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	cx, WORD PTR _iOperationID$[ebp]
	push	ecx
	call	_fnOperationReturn
	add	esp, 8

; 3544 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8637
$L8662:

; 3546 : 
; 3547 :    // If the root entity of the Object instance has been deleted,
; 3548 :    // issue an error.
; 3549 :    lpRootViewEntityInstance = zGETPTR( lpRootViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpRootViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootViewEntityInstance$[ebp], eax

; 3550 :    if ( lpRootViewEntityInstance &&
; 3551 :         lpRootViewEntityInstance->u.nInd.bHidden )

	cmp	DWORD PTR _lpRootViewEntityInstance$[ebp], 0
	je	$L8669
	mov	ecx, DWORD PTR _lpRootViewEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8669

; 3553 :       if ( (nFlags & 0x8000) == 0 )

	movsx	eax, WORD PTR _nFlags$[ebp]
	and	eax, 32768				; 00008000H
	test	eax, eax
	jne	SHORT $L8670

; 3555 :          LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8671[ebp], eax

; 3556 :          //  "KZOEE252 - Root of view has been deleted"
; 3557 :          fnIssueCoreError( lpTask, lpView, 8, 252, 0,
; 3558 :                            fnEntityNameFromCsr( lpViewEntityCsr ), 0 );

	push	0
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnEntityNameFromCsr@4
	push	eax
	push	0
	push	252					; 000000fcH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$8671[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3560 :       else

	jmp	SHORT $L8673
$L8670:

; 3562 :          TraceLineS( "KZOEE252 - Root of view has been deleted for Entity: ",
; 3563 :                      fnEntityNameFromCsr( lpViewEntityCsr ) );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnEntityNameFromCsr@4
	push	eax
	push	OFFSET FLAT:??_C@_0DG@FPJO@KZOEE252?5?9?5Root?5of?5view?5has?5been@ ; `string'
	call	_TraceLineS@8
$L8673:

; 3565 : 
; 3566 :       fnOperationReturn( iOperationID, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	mov	dx, WORD PTR _iOperationID$[ebp]
	push	edx
	call	_fnOperationReturn
	add	esp, 8

; 3567 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8637
$L8669:

; 3569 : 
; 3570 :    // If this is a relink all call, skip entity instance stuff.
; 3571 :    if ( iOperationID == iRelinkAllSubobjectsForOI )

	movsx	eax, WORD PTR _iOperationID$[ebp]
	cmp	eax, 121				; 00000079H
	jne	SHORT $L8675

; 3572 :       return( 0 );

	xor	ax, ax
	jmp	$L8637
$L8675:

; 3573 : 
; 3574 :    // Get Entity Instance pointer.
; 3575 :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 3576 : 
; 3577 :    if ( lpEntityInstance == UNSET_CSR )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 1
	jne	SHORT $L8678

; 3578 :       lpEntityInstance = fnEstablishCursorForView( lpViewEntityCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnEstablishCursorForView
	add	esp, 4
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L8678:

; 3579 : 
; 3580 :    // If this is a count of the entities, exit now.
; 3581 :    if ( iOperationID == iCountEntitiesForView )

	movsx	ecx, WORD PTR _iOperationID$[ebp]
	cmp	ecx, 123				; 0000007bH
	jne	SHORT $L8679

; 3582 :       return( 0 );

	xor	ax, ax
	jmp	$L8637
$L8679:

; 3583 : 
; 3584 :    // Now make sure a cursor exists for the view entity
; 3585 :    if ( lpEntityInstance == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	SHORT $L8680

; 3587 :       if ( (nFlags & 0x8000) == 0 )

	movsx	edx, WORD PTR _nFlags$[ebp]
	and	edx, 32768				; 00008000H
	test	edx, edx
	jne	SHORT $L8681

; 3589 :          LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8682[ebp], eax

; 3590 :          //  "KZOEE253 - Entity cursor is NULL"
; 3591 :          fnIssueCoreError( lpTask, lpView, 8, 253, 0,
; 3592 :                            fnEntityNameFromCsr( lpViewEntityCsr ), 0 );

	push	0
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnEntityNameFromCsr@4
	push	eax
	push	0
	push	253					; 000000fdH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$8682[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3594 :       else

	jmp	SHORT $L8684
$L8681:

; 3596 :          TraceLineS( "KZOEE253 - Entity cursor is NULL for Entity: ",
; 3597 :                      fnEntityNameFromCsr( lpViewEntityCsr ) );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnEntityNameFromCsr@4
	push	eax
	push	OFFSET FLAT:??_C@_0CO@MCMH@KZOEE253?5?9?5Entity?5cursor?5is?5NULL@ ; `string'
	call	_TraceLineS@8
$L8684:

; 3599 : 
; 3600 :       fnOperationReturn( iOperationID, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	cx, WORD PTR _iOperationID$[ebp]
	push	ecx
	call	_fnOperationReturn
	add	esp, 8

; 3601 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8637
$L8680:

; 3603 : 
; 3604 :    if ( lpEntityInstance->nTableID != iEntityInstance )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx]
	cmp	eax, 10024				; 00002728H
	je	SHORT $L8685

; 3606 :       TraceLineX( "(DGC) View   Cursor   = ", (zLONG) lpViewCsr );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BJ@FCJI@?$CIDGC?$CJ?5View?5?5?5Cursor?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineX@8

; 3607 :       TraceLineX( "(DGC) Entity Cursor   = ", (zLONG) lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BJ@HFKD@?$CIDGC?$CJ?5Entity?5Cursor?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineX@8

; 3608 :       TraceLineX( "(DGC) Entity Instance = ", (zLONG) lpEntityInstance );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BJ@ODME@?$CIDGC?$CJ?5Entity?5Instance?5?$DN?5?$AA@ ; `string'
	call	_TraceLineX@8

; 3609 :       SysMessageBox( lpView, "DGC", "Invalid Table ID for entity instance", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0CF@ICNK@Invalid?5Table?5ID?5for?5entity?5inst@ ; `string'
	push	OFFSET FLAT:??_C@_03FMHJ@DGC?$AA@	; `string'
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SysMessageBox@16

; 3610 :       fnOperationReturn( iOperationID, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	ax, WORD PTR _iOperationID$[ebp]
	push	eax
	call	_fnOperationReturn
	add	esp, 8

; 3611 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8637
$L8685:

; 3613 : 
; 3614 :    if ( lpEntityInstance->u.nInd.bHidden )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	$L8694

; 3616 :       LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8695[ebp], eax

; 3617 :       zSHORT nID;
; 3618 : 
; 3619 :       nID = 254;   // initialize error to: Entity cursor is undefined

	mov	WORD PTR _nID$8697[ebp], 254		; 000000feH
$L8699:

; 3620 : 
; 3621 :       // The error in question is undefined UNLESS ALL of the
; 3622 :       // entity instances of the highest hidden parent are also hidden.
; 3623 :       while ( lpEntityInstance->hParent )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [edx+30], 0
	je	SHORT $L8700

; 3625 :          LPENTITYINSTANCE lpParent = zGETPTR( lpEntityInstance->hParent );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$8701[ebp], eax

; 3626 : 
; 3627 :          if ( lpParent->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpParent$8701[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8703

; 3628 :             break;

	jmp	SHORT $L8700
$L8703:

; 3629 : 
; 3630 :          lpEntityInstance = lpParent;

	mov	ecx, DWORD PTR _lpParent$8701[ebp]
	mov	DWORD PTR _lpEntityInstance$[ebp], ecx

; 3631 :       }

	jmp	SHORT $L8699
$L8700:

; 3632 : 
; 3633 :       while ( lpEntityInstance->hPrevTwin )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [edx+26], 0
	je	SHORT $L8706

; 3634 :          lpEntityInstance = zGETPTR( lpEntityInstance->hPrevTwin );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
	jmp	SHORT $L8700
$L8706:

; 3635 : 
; 3636 :       while ( lpEntityInstance )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L8710

; 3638 :          if ( lpEntityInstance->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8711

; 3639 :             break;

	jmp	SHORT $L8710
$L8711:

; 3640 : 
; 3641 :          lpEntityInstance = zGETPTR( lpEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 3642 :       }

	jmp	SHORT $L8706
$L8710:

; 3643 : 
; 3644 :       // If no potentially visible entity instances were found, issue
; 3645 :       // the entity instance is NULL error.
; 3646 :       if ( (nFlags & 0x8000) == 0 )

	movsx	eax, WORD PTR _nFlags$[ebp]
	and	eax, 32768				; 00008000H
	test	eax, eax
	jne	SHORT $L8713

; 3648 :          LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8714[ebp], eax

; 3649 :          if ( lpEntityInstance == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	SHORT $L8716

; 3651 :             //  "KZOEE253 - Entity cursor is NULL"
; 3652 :             fnIssueCoreError( lpTask, lpView, 8, 253, 0,
; 3653 :                               fnEntityNameFromCsr( lpViewEntityCsr ), 0 );

	push	0
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnEntityNameFromCsr@4
	push	eax
	push	0
	push	253					; 000000fdH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$8714[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3655 :          else

	jmp	SHORT $L8717
$L8716:

; 3657 :             //  "KZOEE254 - Entity cursor is undefined"
; 3658 :             fnIssueCoreError( lpTask, lpView, 8, 254, 0,
; 3659 :                               fnEntityNameFromCsr( lpViewEntityCsr ), 0 );

	push	0
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnEntityNameFromCsr@4
	push	eax
	push	0
	push	254					; 000000feH
	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$8714[ebp]
	push	edx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH
$L8717:

; 3662 :       else

	jmp	SHORT $L8720
$L8713:

; 3664 :          if ( lpEntityInstance == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	SHORT $L8719

; 3666 :             TraceLineS( "KZOEE253 - Entity cursor is NULL for Entity: ",
; 3667 :                         fnEntityNameFromCsr( lpViewEntityCsr ) );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnEntityNameFromCsr@4
	push	eax
	push	OFFSET FLAT:??_C@_0CO@MCMH@KZOEE253?5?9?5Entity?5cursor?5is?5NULL@ ; `string'
	call	_TraceLineS@8

; 3669 :          else

	jmp	SHORT $L8720
$L8719:

; 3671 :             TraceLineS( "KZOEE254 - Entity cursor is undefined for Entity: ",
; 3672 :                         fnEntityNameFromCsr( lpViewEntityCsr ) );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnEntityNameFromCsr@4
	push	eax
	push	OFFSET FLAT:??_C@_0DD@MCKE@KZOEE254?5?9?5Entity?5cursor?5is?5unde@ ; `string'
	call	_TraceLineS@8
$L8720:

; 3675 : 
; 3676 :       fnOperationReturn( iOperationID, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	ax, WORD PTR _iOperationID$[ebp]
	push	eax
	call	_fnOperationReturn
	add	esp, 8

; 3677 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8637
$L8694:

; 3679 :    else
; 3680 :    if ( lpEntityInstance->u.nInd.bPrevVersion && lpEntityInstance->hNextVsn )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 8
	and	edx, 1
	test	edx, edx
	je	SHORT $L8723
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+34], 0
	je	SHORT $L8723

; 3682 :       if ( (nFlags & 0x8000) == 0 )

	movsx	ecx, WORD PTR _nFlags$[ebp]
	and	ecx, 32768				; 00008000H
	test	ecx, ecx
	jne	SHORT $L8724

; 3684 :          LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8725[ebp], eax

; 3685 :          //  "KZOEE255 - Attempt to update a previous entity version"
; 3686 :          fnIssueCoreError( lpTask, lpView, 8, 255, 0,
; 3687 :                            fnEntityNameFromCsr( lpViewEntityCsr ), 0 );

	push	0
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnEntityNameFromCsr@4
	push	eax
	push	0
	push	255					; 000000ffH
	push	8
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$8725[ebp]
	push	eax
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3689 :       else

	jmp	SHORT $L8727
$L8724:

; 3691 :          TraceLineS( "KZOEE255 - Attempt to update a previous entity version for Entity: ",
; 3692 :                      fnEntityNameFromCsr( lpViewEntityCsr ) );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnEntityNameFromCsr@4
	push	eax
	push	OFFSET FLAT:??_C@_0EE@GENJ@KZOEE255?5?9?5Attempt?5to?5update?5a?5p@ ; `string'
	call	_TraceLineS@8
$L8727:

; 3694 : 
; 3695 :       fnOperationReturn( iOperationID, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	mov	ax, WORD PTR _iOperationID$[ebp]
	push	eax
	call	_fnOperationReturn
	add	esp, 8

; 3696 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8637
$L8723:

; 3698 : 
; 3699 :    // Next make sure we are not processing hierarchically.
; 3700 :    if ( lpViewCsr->hHierRootEntityInstance )

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	SHORT $L8729

; 3702 :       if ( (nFlags & 0x8000) == 0 )

	movsx	edx, WORD PTR _nFlags$[ebp]
	and	edx, 32768				; 00008000H
	test	edx, edx
	jne	SHORT $L8730

; 3704 :          LPTASK lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8731[ebp], eax

; 3705 :          // "KZOEE264 - Invalid Operation for Hierarchical processing"
; 3706 :          fnIssueCoreError( lpTask, lpView, 8, 264, 0,
; 3707 :                            fnEntityNameFromCsr( lpViewEntityCsr ), 0 );

	push	0
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnEntityNameFromCsr@4
	push	eax
	push	0
	push	264					; 00000108H
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$8731[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 3709 :       else

	jmp	SHORT $L8733
$L8730:

; 3711 :          TraceLineS( "KZOEE264 - Invalid Operation for Hierarchical processing for Entity: ",
; 3712 :                      fnEntityNameFromCsr( lpViewEntityCsr ) );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnEntityNameFromCsr@4
	push	eax
	push	OFFSET FLAT:??_C@_0EG@IMAH@KZOEE264?5?9?5Invalid?5Operation?5for@ ; `string'
	call	_TraceLineS@8
$L8733:

; 3714 : 
; 3715 :       fnOperationReturn( iOperationID, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	cx, WORD PTR _iOperationID$[ebp]
	push	ecx
	call	_fnOperationReturn
	add	esp, 8

; 3716 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8637
$L8729:

; 3718 : 
; 3719 :    // Everything is AOK, return.
; 3720 :    return( 0 );

	xor	ax, ax
$L8637:

; 3721 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnValidateInstanceParameters ENDP
_lpStartEntityInstance$ = 8
_bMarkExcluded$ = 12
_nHidden$ = -4
_nLevel$ = -12
_lpLinked$ = -16
_lpNextHier$ = -8
_fnHideLinkedChildren PROC NEAR

; 3740 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 3741 :    zSHORT            nHidden;
; 3742 :    zSHORT            nLevel;
; 3743 :    LPENTITYINSTANCE  lpLinked;
; 3744 :    LPENTITYINSTANCE  lpNextHier;
; 3745 : 
; 3746 :    nHidden  = 0;

	mov	WORD PTR _nHidden$[ebp], 0

; 3747 :    nLevel   = lpStartEntityInstance->nLevel;

	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR _nLevel$[ebp], cx

; 3748 :    lpLinked = zGETPTR( lpStartEntityInstance->hNextLinked );

	mov	edx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinked$[ebp], eax
$L8746:

; 3749 : 
; 3750 :    // For every linked instance to the starting instance passed,
; 3751 :    // mark it and all its children as hidden IF they are not already hidden
; 3752 :    // and they are marked either for delete or exclude. Recursively call
; 3753 :    // ourself for every child of a linked instance marked for delete which
; 3754 :    // is itself also marked for delete.
; 3755 :    while ( lpLinked && lpLinked != lpStartEntityInstance )

	cmp	DWORD PTR _lpLinked$[ebp], 0
	je	$L8747
	mov	ecx, DWORD PTR _lpLinked$[ebp]
	cmp	ecx, DWORD PTR _lpStartEntityInstance$[ebp]
	je	$L8747

; 3757 :       if ( lpLinked->u.nInd.bHidden == FALSE &&
; 3758 :            (lpLinked->u.nInd.bExcluded || lpLinked->u.nInd.bDeleted) )

	mov	edx, DWORD PTR _lpLinked$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	$L8754
	mov	ecx, DWORD PTR _lpLinked$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 4
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8749
	mov	eax, DWORD PTR _lpLinked$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	je	$L8754
$L8749:

; 3760 :          lpLinked->u.nInd.bHidden = TRUE;

	mov	edx, DWORD PTR _lpLinked$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	ah, 4
	mov	ecx, DWORD PTR _lpLinked$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 3761 :          if ( bMarkExcluded == FALSE )

	movsx	edx, WORD PTR _bMarkExcluded$[ebp]
	test	edx, edx
	jne	SHORT $L8750

; 3762 :             lpLinked->u.nInd.bExcluded = FALSE;

	mov	eax, DWORD PTR _lpLinked$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ecx, -17				; ffffffefH
	mov	edx, DWORD PTR _lpLinked$[ebp]
	mov	DWORD PTR [edx+6], ecx
$L8750:

; 3763 : 
; 3764 :          nHidden++;

	mov	ax, WORD PTR _nHidden$[ebp]
	add	ax, 1
	mov	WORD PTR _nHidden$[ebp], ax

; 3765 :          lpNextHier = zGETPTR( lpLinked->hNextHier );

	mov	ecx, DWORD PTR _lpLinked$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$[ebp], eax
$L8753:

; 3766 :          while ( lpNextHier && lpNextHier->nLevel > lpLinked->nLevel )

	cmp	DWORD PTR _lpNextHier$[ebp], 0
	je	$L8754
	mov	eax, DWORD PTR _lpNextHier$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpLinked$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	ecx, eax
	jle	$L8754

; 3768 :             if ( lpNextHier->u.nInd.bHidden == FALSE )

	mov	ecx, DWORD PTR _lpNextHier$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8755

; 3770 :                if ( lpNextHier->hNextLinked &&
; 3771 :                     (lpNextHier->u.nInd.bExcluded ||
; 3772 :                      lpNextHier->u.nInd.bDeleted) )

	mov	eax, DWORD PTR _lpNextHier$[ebp]
	cmp	DWORD PTR [eax+42], 0
	je	SHORT $L8756
	mov	ecx, DWORD PTR _lpNextHier$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 4
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8757
	mov	eax, DWORD PTR _lpNextHier$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8756
$L8757:

; 3774 :                   nHidden += fnHideLinkedChildren( lpNextHier,
; 3775 :                                                    bMarkExcluded );

	mov	dx, WORD PTR _bMarkExcluded$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpNextHier$[ebp]
	push	eax
	call	_fnHideLinkedChildren
	add	esp, 8
	mov	cx, WORD PTR _nHidden$[ebp]
	add	cx, ax
	mov	WORD PTR _nHidden$[ebp], cx
$L8756:

; 3777 : 
; 3778 :                lpNextHier->u.nInd.bHidden = TRUE;

	mov	edx, DWORD PTR _lpNextHier$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	ah, 4
	mov	ecx, DWORD PTR _lpNextHier$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 3779 :                nHidden++;

	mov	dx, WORD PTR _nHidden$[ebp]
	add	dx, 1
	mov	WORD PTR _nHidden$[ebp], dx
$L8755:

; 3781 : 
; 3782 :             lpNextHier = zGETPTR( lpNextHier->hNextHier );

	mov	eax, DWORD PTR _lpNextHier$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$[ebp], eax

; 3783 :          }

	jmp	$L8753
$L8754:

; 3785 : 
; 3786 :       lpLinked = zGETPTR( lpLinked->hNextLinked );

	mov	edx, DWORD PTR _lpLinked$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinked$[ebp], eax

; 3787 :    }

	jmp	$L8746
$L8747:

; 3788 : 
; 3789 :    // Return number of instances hidden
; 3790 :    return( nHidden );

	mov	ax, WORD PTR _nHidden$[ebp]

; 3791 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnHideLinkedChildren ENDP
_lpStartEntityInstance$ = 8
_bMarkExcluded$ = 12
_nHidden$ = -4
_nLevel$ = -8
_fnHideExcludedDeletedInstances PROC NEAR

; 3809 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 3810 :    zSHORT            nHidden;
; 3811 :    zSHORT            nLevel;
; 3812 : 
; 3813 :    nHidden = 0;

	mov	WORD PTR _nHidden$[ebp], 0

; 3814 :    nLevel = lpStartEntityInstance->nLevel;

	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR _nLevel$[ebp], cx
$L8767:

; 3818 :       if ( lpStartEntityInstance->u.nInd.bHidden == FALSE )

	mov	edx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8773

; 3820 :          lpStartEntityInstance->u.nInd.bHidden = TRUE;

	mov	ecx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	dh, 4
	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 3821 :          nHidden++;

	mov	cx, WORD PTR _nHidden$[ebp]
	add	cx, 1
	mov	WORD PTR _nHidden$[ebp], cx

; 3822 : 
; 3823 :          // Call the recursive function to mark any linked instances
; 3824 :          // as hidden which were deleted or excluded by the calling
; 3825 :          // operation
; 3826 :          if ( (lpStartEntityInstance->u.nInd.bDeleted ||
; 3827 :                lpStartEntityInstance->u.nInd.bExcluded) &&
; 3828 :               lpStartEntityInstance->hNextLinked )

	mov	edx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 3
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8772
	mov	ecx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 4
	and	edx, 1
	test	edx, edx
	je	SHORT $L8771
$L8772:
	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	cmp	DWORD PTR [eax+42], 0
	je	SHORT $L8771

; 3830 :             nHidden += fnHideLinkedChildren( lpStartEntityInstance,
; 3831 :                                              bMarkExcluded );

	mov	cx, WORD PTR _bMarkExcluded$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpStartEntityInstance$[ebp]
	push	edx
	call	_fnHideLinkedChildren
	add	esp, 8
	mov	cx, WORD PTR _nHidden$[ebp]
	add	cx, ax
	mov	WORD PTR _nHidden$[ebp], cx
$L8771:

; 3833 : 
; 3834 :          if ( bMarkExcluded == FALSE )

	movsx	edx, WORD PTR _bMarkExcluded$[ebp]
	test	edx, edx
	jne	SHORT $L8773

; 3835 :             lpStartEntityInstance->u.nInd.bExcluded = FALSE;

	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ecx, -17				; ffffffefH
	mov	edx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx
$L8773:

; 3837 : 
; 3838 :       lpStartEntityInstance = zGETPTR( lpStartEntityInstance->hNextHier );

	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartEntityInstance$[ebp], eax

; 3841 :               lpStartEntityInstance->nLevel > nLevel );

	cmp	DWORD PTR _lpStartEntityInstance$[ebp], 0
	je	SHORT $L8775
	mov	edx, DWORD PTR _lpStartEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nLevel$[ebp]
	cmp	eax, ecx
	jg	$L8767
$L8775:

; 3842 : 
; 3843 :    return( nHidden );

	mov	ax, WORD PTR _nHidden$[ebp]

; 3844 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnHideExcludedDeletedInstances ENDP
_lpEntityInstance$ = 8
_bInvertedFound$ = -4
_lpViewEntity$ = -16
_lpWrkViewEntity$ = -12
_lpLinkedInstance$ = -20
_lpLinkedParent$ = -24
_lpWrkInstance$ = -8
_lpLinkedViewEntity$8792 = -28
_hLinkedParent$8795 = -32
_lpParent$8807 = -36
_fnExcludeEntityInstance PROC NEAR

; 3864 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 3865 :    zBOOL             bInvertedFound;
; 3866 :    LPVIEWENTITY      lpViewEntity;
; 3867 :    LPVIEWENTITY      lpWrkViewEntity;
; 3868 :    LPENTITYINSTANCE  lpLinkedInstance;
; 3869 :    LPENTITYINSTANCE  lpLinkedParent;
; 3870 :    LPENTITYINSTANCE  lpWrkInstance;
; 3871 : 
; 3872 : 
; 3873 :    // Init inversion flag
; 3874 :    bInvertedFound = 0;

	mov	BYTE PTR _bInvertedFound$[ebp], 0

; 3875 : 
; 3876 :    // Get entity instance at which to start the exclude and mark the
; 3877 :    // Entity instance as excluded. Then go through and mark the entity
; 3878 :    // instance and all of its subordinates as hidden
; 3879 :    lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 3880 : 
; 3881 :    if ( lpEntityInstance->hParent == 0 )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [edx+30], 0
	jne	SHORT $L8786

; 3882 :       return( bInvertedFound );

	mov	al, BYTE PTR _bInvertedFound$[ebp]
	jmp	$L8778
$L8786:

; 3883 : 
; 3884 :    lpEntityInstance->u.nInd.bExcluded = TRUE;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	or	ecx, 16					; 00000010H
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 3885 : 
; 3886 :    // Now that the simple exclusion is done, go through all linked
; 3887 :    // instances and mark all linked instances as excluded which represent
; 3888 :    // the same relationship to the same parent.
; 3889 :    lpLinkedInstance = zGETPTR( lpEntityInstance->hNextLinked );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedInstance$[ebp], eax

; 3890 :    if ( lpLinkedInstance == 0 )

	cmp	DWORD PTR _lpLinkedInstance$[ebp], 0
	jne	SHORT $L8788

; 3891 :       return( bInvertedFound );

	mov	al, BYTE PTR _bInvertedFound$[ebp]
	jmp	$L8778
$L8788:

; 3892 : 
; 3893 :    while ( lpLinkedInstance != lpEntityInstance )

	mov	edx, DWORD PTR _lpLinkedInstance$[ebp]
	cmp	edx, DWORD PTR _lpEntityInstance$[ebp]
	je	$L8791

; 3895 :       LPVIEWENTITY lpLinkedViewEntity = zGETPTR( lpLinkedInstance->hViewEntity );

	mov	eax, DWORD PTR _lpLinkedInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedViewEntity$8792[ebp], eax

; 3896 : 
; 3897 :       // We have a linked instance, for each instance see if the
; 3898 :       // corresponding view entity represents the same relationship
; 3899 :       // to the same parent instance OR has an inversion of the
; 3900 :       // same relationship to the same parent instance.
; 3901 :       // First, see if the instance is marked as deleted from
; 3902 :       // a delete entity call
; 3903 :       if ( lpLinkedViewEntity->lERRelTok == lpViewEntity->lERRelTok &&
; 3904 :            lpLinkedInstance->hParent )

	mov	edx, DWORD PTR _lpLinkedViewEntity$8792[ebp]
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [edx+199]
	cmp	ecx, DWORD PTR [eax+199]
	jne	SHORT $L8802
	mov	edx, DWORD PTR _lpLinkedInstance$[ebp]
	cmp	DWORD PTR [edx+30], 0
	je	SHORT $L8802

; 3906 :          LPENTITYINSTANCE hLinkedParent;
; 3907 : 
; 3908 :          // The linked instance represents the same relationship ...
; 3909 :          // see if its parent is a linked instance to the current parent.
; 3910 :          lpLinkedParent = zGETPTR( lpLinkedInstance->hParent );

	mov	eax, DWORD PTR _lpLinkedInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedParent$[ebp], eax

; 3911 :          hLinkedParent  = lpLinkedParent->hNextLinked;

	mov	edx, DWORD PTR _lpLinkedParent$[ebp]
	mov	eax, DWORD PTR [edx+42]
	mov	DWORD PTR _hLinkedParent$8795[ebp], eax

; 3912 : 
; 3913 :          if ( hLinkedParent )

	cmp	DWORD PTR _hLinkedParent$8795[ebp], 0
	je	SHORT $L8800
$L8799:

; 3915 :             while ( hLinkedParent != lpEntityInstance->hParent &&
; 3916 :                     hLinkedParent != lpLinkedInstance->hParent )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR _hLinkedParent$8795[ebp]
	cmp	edx, DWORD PTR [ecx+30]
	je	SHORT $L8800
	mov	eax, DWORD PTR _lpLinkedInstance$[ebp]
	mov	ecx, DWORD PTR _hLinkedParent$8795[ebp]
	cmp	ecx, DWORD PTR [eax+30]
	je	SHORT $L8800

; 3918 :                lpLinkedParent = zGETPTR( hLinkedParent );

	mov	edx, DWORD PTR _hLinkedParent$8795[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedParent$[ebp], eax

; 3919 :                hLinkedParent  = lpLinkedParent->hNextLinked;

	mov	eax, DWORD PTR _lpLinkedParent$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	mov	DWORD PTR _hLinkedParent$8795[ebp], ecx

; 3920 :             }

	jmp	SHORT $L8799
$L8800:

; 3922 : 
; 3923 :          if ( hLinkedParent == lpEntityInstance->hParent )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR _hLinkedParent$8795[ebp]
	cmp	eax, DWORD PTR [edx+30]
	jne	SHORT $L8802

; 3924 :             lpLinkedInstance->u.nInd.bExcluded = TRUE;

	mov	ecx, DWORD PTR _lpLinkedInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	edx, 16					; 00000010H
	mov	eax, DWORD PTR _lpLinkedInstance$[ebp]
	mov	DWORD PTR [eax+6], edx
$L8802:

; 3926 : 
; 3927 :       // See if the structure is inverted for a linked instance
; 3928 :       lpWrkViewEntity = zGETPTR( lpLinkedViewEntity->hNextHier );

	mov	ecx, DWORD PTR _lpLinkedViewEntity$8792[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewEntity$[ebp], eax
$L8805:

; 3929 :       while ( lpWrkViewEntity &&
; 3930 :               lpWrkViewEntity->nLevel > lpLinkedViewEntity->nLevel )

	cmp	DWORD PTR _lpWrkViewEntity$[ebp], 0
	je	$L8806
	mov	eax, DWORD PTR _lpWrkViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	mov	edx, DWORD PTR _lpLinkedViewEntity$8792[ebp]
	movsx	eax, WORD PTR [edx+215]
	cmp	ecx, eax
	jle	$L8806

; 3932 :          LPENTITYINSTANCE lpParent;
; 3933 : 
; 3934 :          if ( lpWrkViewEntity->hParent == lpLinkedInstance->hViewEntity &&
; 3935 :               lpWrkViewEntity->lERRelTok == lpViewEntity->lERRelTok )

	mov	ecx, DWORD PTR _lpWrkViewEntity$[ebp]
	mov	edx, DWORD PTR _lpLinkedInstance$[ebp]
	mov	eax, DWORD PTR [ecx+10]
	cmp	eax, DWORD PTR [edx+2]
	jne	SHORT $L8813
	mov	ecx, DWORD PTR _lpWrkViewEntity$[ebp]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+199]
	cmp	eax, DWORD PTR [edx+199]
	jne	SHORT $L8813

; 3937 :             // We've found an inverted structure in the linked entity
; 3938 :             // instance, now go and mark the child entity instance
; 3939 :             // which is linked to the source entity instances parent
; 3940 :             // as excluded.
; 3941 :             lpParent      = zGETPTR( lpEntityInstance->hParent );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$8807[ebp], eax

; 3942 :             lpWrkInstance = zGETPTR( lpParent->hNextLinked );

	mov	eax, DWORD PTR _lpParent$8807[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax
$L8812:

; 3943 :             while (  lpWrkInstance && lpWrkInstance != lpParent )

	cmp	DWORD PTR _lpWrkInstance$[ebp], 0
	je	SHORT $L8813
	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	edx, DWORD PTR _lpParent$8807[ebp]
	je	SHORT $L8813

; 3945 :                if ( zGETPTR( lpWrkInstance->hParent ) == lpLinkedInstance )

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpLinkedInstance$[ebp]
	jne	SHORT $L8815

; 3947 :                   lpWrkInstance->u.nInd.bExcluded = TRUE;

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	or	al, 16					; 00000010H
	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 3948 :                   bInvertedFound = TRUE;

	mov	BYTE PTR _bInvertedFound$[ebp], 1
$L8815:

; 3950 : 
; 3951 :                lpWrkInstance = zGETPTR( lpWrkInstance->hNextLinked );

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 3952 :             }

	jmp	SHORT $L8812
$L8813:

; 3954 : 
; 3955 :          lpWrkViewEntity = zGETPTR( lpWrkViewEntity->hNextHier );

	mov	ecx, DWORD PTR _lpWrkViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkViewEntity$[ebp], eax

; 3956 :       }

	jmp	$L8805
$L8806:

; 3957 : 
; 3958 :       lpLinkedInstance = zGETPTR( lpLinkedInstance->hNextLinked );

	mov	eax, DWORD PTR _lpLinkedInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedInstance$[ebp], eax

; 3959 : 
; 3960 :    } // while...

	jmp	$L8788
$L8791:

; 3961 : 
; 3962 :    // Whew, I think we've done it, return to caller.
; 3963 :    return( bInvertedFound );

	mov	al, BYTE PTR _bInvertedFound$[ebp]
$L8778:

; 3964 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnExcludeEntityInstance ENDP
_TEXT	ENDS
PUBLIC	_fnInstanceVersionRootMatch
EXTRN	_DropView@4:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpEntityInstance$ = 12
_lpParentInstance$ = -16
_lpLinkedInstance$ = -12
_lpViewEntity$ = -8
_nRC$ = -4
_lpParentViewEntity$8837 = -24
_lpRecursViewEntity$8838 = -28
_lpSearchViewEntity$8839 = -20
_lpSpawnView$8852 = -40
_lpLinkedOI$8853 = -56
_lpLinkedFirstViewCsr$8854 = -36
_nSpawnPosition$8855 = -32
_lpSearchViewEntityCsr$8856 = -52
_lpWorkViewEntityCsr$8857 = -48
_lpLinkedTwin$8858 = -60
_lpSpawnedInstance$8859 = -44
_lpNextTwin$8884 = -64
_lpPrevTwin$8899 = -68
_lpTask$8912 = -72
_lpWorkInstance$8917 = -76
_fnSpawnCreateEntity PROC NEAR

; 3984 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH

; 3985 :    LPENTITYINSTANCE lpParentInstance;
; 3986 :    LPENTITYINSTANCE lpLinkedInstance;
; 3987 :    LPVIEWENTITY     lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 3988 :    zSHORT           nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 3989 : 
; 3990 :    // START OF CREATE ENTITY SPAWNING CODE
; 3991 :    // Now that the entity has been created, see if we need to call
; 3992 :    // fnCreateEntity to spawn the create of this same entity under a
; 3993 :    // different parent in the same view object. To do this, we check all
; 3994 :    // linked instances of the parent entity type from the same object
; 3995 :    // instance and see if that linked instance has a definition level
; 3996 :    // non-derived child entity type representing the current entity type.
; 3997 :    // If we find a spawn condition, we create a new view for spawning,
; 3998 :    // create the spawned instance in the appropriate position and
; 3999 :    // link it to the newly created instance.
; 4000 :    if ( lpEntityInstance->hParent == 0 || lpViewEntity->bDerived )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [edx+30], 0
	je	SHORT $L8830
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 13					; 0000000dH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8829
$L8830:

; 4001 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L8823
$L8829:

; 4002 : 
; 4003 :    lpParentInstance = zGETPTR( lpEntityInstance->hParent );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentInstance$[ebp], eax

; 4004 :    for ( lpLinkedInstance = zGETPTR( lpParentInstance->hNextLinked );
; 4005 :          nRC == 0 && lpLinkedInstance && lpLinkedInstance != lpParentInstance;
; 4006 :          lpLinkedInstance = zGETPTR( lpLinkedInstance->hNextLinked ) )

	mov	ecx, DWORD PTR _lpParentInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedInstance$[ebp], eax
	jmp	SHORT $L8834
$L8835:
	mov	eax, DWORD PTR _lpLinkedInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedInstance$[ebp], eax
$L8834:
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jne	$L8836
	cmp	DWORD PTR _lpLinkedInstance$[ebp], 0
	je	$L8836
	mov	eax, DWORD PTR _lpLinkedInstance$[ebp]
	cmp	eax, DWORD PTR _lpParentInstance$[ebp]
	je	$L8836

; 4008 :       LPVIEWENTITY lpParentViewEntity;
; 4009 :       LPVIEWENTITY lpRecursViewEntity;
; 4010 :       LPVIEWENTITY lpSearchViewEntity;
; 4011 : 
; 4012 :       if ( lpLinkedInstance->u.nInd.bHidden )

	mov	ecx, DWORD PTR _lpLinkedInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8840

; 4013 :          continue;

	jmp	SHORT $L8835
$L8840:

; 4014 : 
; 4015 :       // If we find a linked parent in ANY object instance, go through the
; 4016 :       // child entity types of the linked parent and see if one exists which
; 4017 :       // matches the current entity type.
; 4018 :       lpParentViewEntity = zGETPTR( lpLinkedInstance->hViewEntity );

	mov	eax, DWORD PTR _lpLinkedInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentViewEntity$8837[ebp], eax

; 4019 :       lpRecursViewEntity = lpParentViewEntity;

	mov	edx, DWORD PTR _lpParentViewEntity$8837[ebp]
	mov	DWORD PTR _lpRecursViewEntity$8838[ebp], edx

; 4020 :       if ( lpParentViewEntity->bRecursive )

	mov	eax, DWORD PTR _lpParentViewEntity$8837[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8845
$L8843:

; 4024 :             lpParentViewEntity = zGETPTR( lpParentViewEntity->hParent );

	mov	edx, DWORD PTR _lpParentViewEntity$8837[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParentViewEntity$8837[ebp], eax

; 4026 :                                               lpRecursViewEntity->lEREntTok );

	mov	ecx, DWORD PTR _lpParentViewEntity$8837[ebp]
	mov	edx, DWORD PTR _lpRecursViewEntity$8838[ebp]
	mov	eax, DWORD PTR [ecx+195]
	cmp	eax, DWORD PTR [edx+195]
	jne	SHORT $L8843
$L8845:

; 4028 : 
; 4029 :       for ( lpSearchViewEntity = zGETPTR( lpParentViewEntity->hNextHier );
; 4030 :             lpSearchViewEntity &&
; 4031 :                lpSearchViewEntity->nLevel > lpParentViewEntity->nLevel;
; 4032 :             lpSearchViewEntity = zGETPTR( lpSearchViewEntity->hNextHier ) )

	mov	ecx, DWORD PTR _lpParentViewEntity$8837[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8839[ebp], eax
	jmp	SHORT $L8849
$L8850:
	mov	eax, DWORD PTR _lpSearchViewEntity$8839[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntity$8839[ebp], eax
$L8849:
	cmp	DWORD PTR _lpSearchViewEntity$8839[ebp], 0
	je	$L8851
	mov	edx, DWORD PTR _lpSearchViewEntity$8839[ebp]
	movsx	eax, WORD PTR [edx+215]
	mov	ecx, DWORD PTR _lpParentViewEntity$8837[ebp]
	movsx	edx, WORD PTR [ecx+215]
	cmp	eax, edx
	jle	$L8851

; 4034 :          zVIEW            lpSpawnView;
; 4035 :          LPVIEWOI         lpLinkedOI;
; 4036 :          LPVIEWCSR        lpLinkedFirstViewCsr;
; 4037 :          zSHORT           nSpawnPosition;
; 4038 :          LPVIEWENTITYCSR  lpSearchViewEntityCsr;
; 4039 :          LPVIEWENTITYCSR  lpWorkViewEntityCsr;
; 4040 :          LPENTITYINSTANCE lpLinkedTwin;
; 4041 :          LPENTITYINSTANCE lpSpawnedInstance;
; 4042 : 
; 4043 :          if ( zGETPTR( lpSearchViewEntity->hParent ) != lpParentViewEntity )

	mov	eax, DWORD PTR _lpSearchViewEntity$8839[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpParentViewEntity$8837[ebp]
	je	SHORT $L8861

; 4044 :             continue;

	jmp	SHORT $L8850
$L8861:

; 4045 : 
; 4046 :          if ( lpSearchViewEntity->bDerived )

	mov	edx, DWORD PTR _lpSearchViewEntity$8839[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 13					; 0000000dH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8862

; 4047 :             continue;

	jmp	SHORT $L8850
$L8862:

; 4048 : 
; 4049 :          if ( lpSearchViewEntity->lERRelTok != lpViewEntity->lERRelTok )

	mov	ecx, DWORD PTR _lpSearchViewEntity$8839[ebp]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [ecx+199]
	cmp	eax, DWORD PTR [edx+199]
	je	SHORT $L8863

; 4050 :             continue;

	jmp	SHORT $L8850
$L8863:

; 4051 : 
; 4052 :          if ( lpSearchViewEntity->bRelLink1 != lpViewEntity->bRelLink1 )

	mov	ecx, DWORD PTR _lpSearchViewEntity$8839[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 28					; 0000001cH
	and	edx, 1
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 28					; 0000001cH
	and	ecx, 1
	cmp	edx, ecx
	je	SHORT $L8864

; 4053 :             continue;

	jmp	$L8850
$L8864:

; 4054 : 
; 4055 :          if ( !fnInstanceVersionRootMatch( lpParentInstance, lpLinkedInstance ) )

	mov	edx, DWORD PTR _lpLinkedInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpParentInstance$[ebp]
	push	eax
	call	_fnInstanceVersionRootMatch
	add	esp, 8
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8865

; 4056 :             continue;

	jmp	$L8850
$L8865:

; 4057 : 
; 4058 :          lpLinkedOI = zGETPTR( lpLinkedInstance->hViewOI );

	mov	ecx, DWORD PTR _lpLinkedInstance$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedOI$8853[ebp], eax

; 4059 :          lpLinkedFirstViewCsr = zGETPTR( lpLinkedOI->hFirstViewCsr );

	mov	eax, DWORD PTR _lpLinkedOI$8853[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedFirstViewCsr$8854[ebp], eax

; 4060 : 
; 4061 :          // We've found a spawn condition, create a spawn view and do the spawn.
; 4062 :          nRC = CreateViewFromViewForTask( &lpSpawnView,
; 4063 :                                           zGETPTR( lpLinkedFirstViewCsr->hView ), 0 );

	push	0
	mov	edx, DWORD PTR _lpLinkedFirstViewCsr$8854[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	lea	ecx, DWORD PTR _lpSpawnView$8852[ebp]
	push	ecx
	call	_CreateViewFromViewForTask@12
	mov	WORD PTR _nRC$[ebp], ax

; 4064 :          if ( nRC )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L8869

; 4065 :             continue;

	jmp	$L8850
$L8869:

; 4066 : 
; 4067 :          // Establish target cursors up the parent chain.
; 4068 :          lpSearchViewEntityCsr =
; 4069 :                fnEstablishViewForInstance( lpSpawnView, 0, lpLinkedInstance );

	mov	eax, DWORD PTR _lpLinkedInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpSpawnView$8852[ebp]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpSearchViewEntityCsr$8856[ebp], eax

; 4070 :          if ( lpParentViewEntity != lpRecursViewEntity )

	mov	edx, DWORD PTR _lpParentViewEntity$8837[ebp]
	cmp	edx, DWORD PTR _lpRecursViewEntity$8838[ebp]
	je	SHORT $L8874

; 4072 :             fnSetViewToSubobject( lpSpawnView,
; 4073 :                                   lpRecursViewEntity,
; 4074 :                                   lpSearchViewEntityCsr );

	mov	eax, DWORD PTR _lpSearchViewEntityCsr$8856[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpRecursViewEntity$8838[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSpawnView$8852[ebp]
	push	edx
	call	_fnSetViewToSubobject
	add	esp, 12					; 0000000cH
$L8873:

; 4075 :             while ( zGETPTR( lpSearchViewEntityCsr->hViewEntity ) != lpParentViewEntity )

	mov	eax, DWORD PTR _lpSearchViewEntityCsr$8856[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpParentViewEntity$8837[ebp]
	je	SHORT $L8874

; 4077 :                lpSearchViewEntityCsr = zGETPTR( lpSearchViewEntityCsr->hParent );

	mov	edx, DWORD PTR _lpSearchViewEntityCsr$8856[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchViewEntityCsr$8856[ebp], eax

; 4078 :             }

	jmp	SHORT $L8873
$L8874:

; 4080 : 
; 4081 :          // Now that the cursors are established up the parent chain, create a
; 4082 :          // cursor for the twin of the current instance under the linked parent.
; 4083 :          // First, find the view cursor for the target of the spawned create.
; 4084 :          lpWorkViewEntityCsr = zGETPTR( lpSearchViewEntityCsr->hNextHier );

	mov	ecx, DWORD PTR _lpSearchViewEntityCsr$8856[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewEntityCsr$8857[ebp], eax
$L8879:

; 4085 :          while ( zGETPTR( lpWorkViewEntityCsr->hViewEntity ) !=
; 4086 :                                                          lpSearchViewEntity )

	mov	eax, DWORD PTR _lpWorkViewEntityCsr$8857[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpSearchViewEntity$8839[ebp]
	je	SHORT $L8880

; 4088 :             lpWorkViewEntityCsr = zGETPTR( lpWorkViewEntityCsr->hNextHier );

	mov	edx, DWORD PTR _lpWorkViewEntityCsr$8857[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkViewEntityCsr$8857[ebp], eax

; 4089 :          }

	jmp	SHORT $L8879
$L8880:

; 4090 : 
; 4091 :          nSpawnPosition = zPOS_AFTER;

	mov	WORD PTR _nSpawnPosition$8855[ebp], 3

; 4092 :          if ( lpEntityInstance->hNextTwin )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	$L8883

; 4094 :             LPENTITYINSTANCE lpNextTwin;
; 4095 : 
; 4096 :             lpNextTwin   = zGETPTR( lpEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextTwin$8884[ebp], eax

; 4097 :             lpLinkedTwin = zGETPTR( lpNextTwin->hNextLinked );

	mov	ecx, DWORD PTR _lpNextTwin$8884[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedTwin$8858[ebp], eax
$L8888:

; 4098 :             while ( lpLinkedTwin )

	cmp	DWORD PTR _lpLinkedTwin$8858[ebp], 0
	je	SHORT $L8889

; 4100 :                if ( zGETPTR( lpLinkedTwin->hParent ) == lpLinkedInstance )

	mov	eax, DWORD PTR _lpLinkedTwin$8858[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpLinkedInstance$[ebp]
	jne	SHORT $L8891

; 4101 :                   break;

	jmp	SHORT $L8889
$L8891:

; 4102 : 
; 4103 :                if ( lpLinkedTwin->hNextLinked == lpEntityInstance->hNextTwin )

	mov	edx, DWORD PTR _lpLinkedTwin$8858[ebp]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [edx+42]
	cmp	ecx, DWORD PTR [eax+22]
	jne	SHORT $L8892

; 4105 :                   lpLinkedTwin = 0;

	mov	DWORD PTR _lpLinkedTwin$8858[ebp], 0

; 4106 :                   break;

	jmp	SHORT $L8889
$L8892:

; 4108 : 
; 4109 :                lpLinkedTwin = zGETPTR( lpLinkedTwin->hNextLinked );

	mov	edx, DWORD PTR _lpLinkedTwin$8858[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedTwin$8858[ebp], eax

; 4110 :             }

	jmp	SHORT $L8888
$L8889:

; 4111 : 
; 4112 :             if ( lpLinkedTwin )

	cmp	DWORD PTR _lpLinkedTwin$8858[ebp], 0
	je	SHORT $L8894

; 4114 :                lpWorkViewEntityCsr->hEntityInstance = zGETHNDL( lpLinkedTwin );

	mov	ecx, DWORD PTR _lpLinkedTwin$8858[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpWorkViewEntityCsr$8857[ebp]
	mov	DWORD PTR [edx+26], eax

; 4115 :             // if ( lpWorkViewEntityCsr->hEntityInstance == UNSET_CSR )
; 4116 :             //    SysMessageBox( 0, "fnSpawnCreateEntity", "UNSET_CSR", -1 );
; 4117 : 
; 4118 :                nSpawnPosition = zPOS_BEFORE;

	mov	WORD PTR _nSpawnPosition$8855[ebp], 4
$L8894:

; 4121 :          else

	jmp	$L8909
$L8883:

; 4122 :          if ( lpEntityInstance->hPrevTwin )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	SHORT $L8909

; 4124 :             LPENTITYINSTANCE lpPrevTwin;
; 4125 : 
; 4126 :             lpPrevTwin   = zGETPTR( lpEntityInstance->hPrevTwin );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevTwin$8899[ebp], eax

; 4127 :             lpLinkedTwin = zGETPTR( lpPrevTwin->hNextLinked );

	mov	eax, DWORD PTR _lpPrevTwin$8899[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedTwin$8858[ebp], eax
$L8903:

; 4128 :             while ( lpLinkedTwin )

	cmp	DWORD PTR _lpLinkedTwin$8858[ebp], 0
	je	SHORT $L8904

; 4130 :                if ( zGETPTR( lpLinkedTwin->hParent ) == lpLinkedInstance )

	mov	edx, DWORD PTR _lpLinkedTwin$8858[ebp]
	mov	eax, DWORD PTR [edx+30]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpLinkedInstance$[ebp]
	jne	SHORT $L8906

; 4131 :                   break;

	jmp	SHORT $L8904
$L8906:

; 4132 : 
; 4133 :                if ( lpLinkedTwin->hNextLinked == lpEntityInstance->hPrevTwin )

	mov	ecx, DWORD PTR _lpLinkedTwin$8858[ebp]
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [ecx+42]
	cmp	eax, DWORD PTR [edx+26]
	jne	SHORT $L8907

; 4135 :                   lpLinkedTwin = 0;

	mov	DWORD PTR _lpLinkedTwin$8858[ebp], 0

; 4136 :                   break;

	jmp	SHORT $L8904
$L8907:

; 4138 : 
; 4139 :                lpLinkedTwin = zGETPTR( lpLinkedTwin->hNextLinked );

	mov	ecx, DWORD PTR _lpLinkedTwin$8858[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedTwin$8858[ebp], eax

; 4140 :             }

	jmp	SHORT $L8903
$L8904:

; 4141 : 
; 4142 :             if ( lpLinkedTwin )

	cmp	DWORD PTR _lpLinkedTwin$8858[ebp], 0
	je	SHORT $L8909

; 4144 :                lpWorkViewEntityCsr->hEntityInstance = zGETHNDL( lpLinkedTwin );

	mov	eax, DWORD PTR _lpLinkedTwin$8858[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpWorkViewEntityCsr$8857[ebp]
	mov	DWORD PTR [ecx+26], eax
$L8909:

; 4149 : 
; 4150 :          // For now, we do not support creation spawning in recursive levels of
; 4151 :          // the object instance.  So if the level does not match, issue an error
; 4152 :          // and get out.  NOTE, this should not happen if fnEstablishViewForInstance
; 4153 :          // is called above.  It removes the recursive spawning restriction!!
; 4154 :          if ( lpSearchViewEntityCsr->nLevel != lpLinkedInstance->nLevel )

	mov	edx, DWORD PTR _lpSearchViewEntityCsr$8856[ebp]
	movsx	eax, WORD PTR [edx+22]
	mov	ecx, DWORD PTR _lpLinkedInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	cmp	eax, edx
	je	SHORT $L8911

; 4156 :             LPTASK lpTask = zGETPTR( lpSpawnView->hTask );

	mov	eax, DWORD PTR _lpSpawnView$8852[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$8912[ebp], eax

; 4157 :             // "KZOEE139 - Error establishing cursor for "
; 4158 :             // "CreateEntity spawn"
; 4159 :             fnIssueCoreError( lpTask, lpView, 8, 139, 0,
; 4160 :                               lpSearchViewEntity->szName, 0 );

	push	0
	mov	edx, DWORD PTR _lpSearchViewEntity$8839[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	139					; 0000008bH
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$8912[ebp]
	push	ecx
	call	_fnIssueCoreError
	add	esp, 28					; 0000001cH

; 4161 :             nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 4163 :          else

	jmp	$L8914
$L8911:

; 4165 :             // We've established the cursors in the spawn view for spawning
; 4166 :             // the create, now call fnCreateEntity to spawn the create.
; 4167 :             nRC = fnCreateEntity( lpSpawnView,
; 4168 :                                   zGETPTR( lpWorkViewEntityCsr->hViewEntity ),
; 4169 :                                   lpWorkViewEntityCsr, nSpawnPosition, 0 );

	push	0
	mov	dx, WORD PTR _nSpawnPosition$8855[ebp]
	push	edx
	mov	eax, DWORD PTR _lpWorkViewEntityCsr$8857[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpWorkViewEntityCsr$8857[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpSpawnView$8852[ebp]
	push	eax
	call	_fnCreateEntity@20
	mov	WORD PTR _nRC$[ebp], ax

; 4170 :             if ( nRC == 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	$L8916

; 4172 :                LPENTITYINSTANCE lpWorkInstance;
; 4173 : 
; 4174 :                lpSpawnedInstance = zGETPTR( lpWorkViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpWorkViewEntityCsr$8857[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSpawnedInstance$8859[ebp], eax

; 4175 :                lpSpawnedInstance->u.nInd.bCreated = TRUE;

	mov	ecx, DWORD PTR _lpSpawnedInstance$8859[ebp]
	mov	edx, DWORD PTR [ecx+6]
	or	edx, 2
	mov	eax, DWORD PTR _lpSpawnedInstance$8859[ebp]
	mov	DWORD PTR [eax+6], edx

; 4176 :                lpSpawnedInstance->hNextLinked = zGETHNDL( lpEntityInstance );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpSpawnedInstance$8859[ebp]
	mov	DWORD PTR [edx+42], eax

; 4177 :                if ( lpEntityInstance->hNextLinked )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+42], 0
	je	SHORT $L8920

; 4179 :                   lpLinkedTwin = zGETPTR( lpEntityInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedTwin$8858[ebp], eax
$L8924:

; 4180 :                   while ( zGETPTR( lpLinkedTwin->hNextLinked ) != lpEntityInstance )

	mov	eax, DWORD PTR _lpLinkedTwin$8858[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpEntityInstance$[ebp]
	je	SHORT $L8925

; 4182 :                      lpLinkedTwin = zGETPTR( lpLinkedTwin->hNextLinked );

	mov	edx, DWORD PTR _lpLinkedTwin$8858[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinkedTwin$8858[ebp], eax

; 4183 :                   }

	jmp	SHORT $L8924
$L8925:

; 4184 : 
; 4185 :                   lpLinkedTwin->hNextLinked = zGETHNDL( lpSpawnedInstance );

	mov	ecx, DWORD PTR _lpSpawnedInstance$8859[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpLinkedTwin$8858[ebp]
	mov	DWORD PTR [edx+42], eax

; 4187 :                else

	jmp	SHORT $L8928
$L8920:

; 4188 :                   lpEntityInstance->hNextLinked = zGETHNDL( lpSpawnedInstance );

	mov	eax, DWORD PTR _lpSpawnedInstance$8859[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax
$L8928:

; 4189 : 
; 4190 :                // Set the record pointer in the spawned instance.
; 4191 :                lpWorkInstance = zGETPTR( lpSpawnedInstance->hNextLinked );

	mov	edx, DWORD PTR _lpSpawnedInstance$8859[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkInstance$8917[ebp], eax

; 4192 :                lpSpawnedInstance->hPersistRecord = lpWorkInstance->hPersistRecord;

	mov	ecx, DWORD PTR _lpSpawnedInstance$8859[ebp]
	mov	edx, DWORD PTR _lpWorkInstance$8917[ebp]
	mov	eax, DWORD PTR [edx+60]
	mov	DWORD PTR [ecx+60], eax
$L8916:

; 4194 : 
; 4195 :             DropView( lpSpawnView );

	mov	ecx, DWORD PTR _lpSpawnView$8852[ebp]
	push	ecx
	call	_DropView@4
$L8914:

; 4197 : 
; 4198 :       } // for ( lpSearchViewEntity )...

	jmp	$L8850
$L8851:

; 4199 : 
; 4200 :    }  // for ( lpLinkedInstance )...

	jmp	$L8835
$L8836:

; 4201 : 
; 4202 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8823:

; 4203 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnSpawnCreateEntity ENDP
_TEXT	ENDS
PUBLIC	_fnEntityInstanceIsDead@4
_TEXT	SEGMENT
_lpEntityInstance$ = 8
_fnEntityInstanceIsDead@4 PROC NEAR

; 4209 : {

	push	ebp
	mov	ebp, esp

; 4210 :    // If the instance isn't hidden it can't be dead.
; 4211 :    if ( lpEntityInstance->u.nInd.bHidden == FALSE )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8934

; 4212 :       return( FALSE );

	xor	ax, ax
	jmp	SHORT $L8933
$L8934:

; 4213 : 
; 4214 :    // Instances with previous versions aren't dead.
; 4215 :    if ( lpEntityInstance->hPrevVsn )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [edx+38], 0
	je	SHORT $L8935

; 4216 :       return( FALSE );

	xor	ax, ax
	jmp	SHORT $L8933
$L8935:

; 4217 : 
; 4218 :    if ( lpEntityInstance->u.nInd.bCreated == FALSE &&
; 4219 :         lpEntityInstance->u.nInd.bIncluded == FALSE &&
; 4220 :         (lpEntityInstance->u.nInd.bExcluded ||
; 4221 :          lpEntityInstance->u.nInd.bDeleted) )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8936
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8936
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 4
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8937
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8936
$L8937:

; 4223 :       return( FALSE );

	xor	ax, ax
	jmp	SHORT $L8933
$L8936:

; 4225 : 
; 4226 :    // If we get here then instance is dead.
; 4227 :    return( TRUE );

	mov	ax, 1
$L8933:

; 4228 : }

	pop	ebp
	ret	4
_fnEntityInstanceIsDead@4 ENDP
_TEXT	ENDS
EXTRN	_fnDeleteAttributeRecord:NEAR
EXTRN	_fnRemoveEntityFromDebugChange@4:NEAR
EXTRN	_fnFreeDataspace:NEAR
_TEXT	SEGMENT
_lpViewOI$ = 8
_lpEntityInstance$ = -16
_hEntityInstance$ = -28
_lpViewCsr$ = -4
_lpViewEntityCsr$ = -36
_lpViewEntity$ = -20
_lpViewEntityRP$ = -32
_nHierLvl1$ = -12
_nHierLvl2$ = -8
_bGetNext$ = -24
_lpPrevHier$8954 = -52
_hNextHier$8955 = -48
_lpWork$8956 = -44
_nLevel$8957 = -40
_lpSearchLink$8993 = -56
_fnReclaimHiddenInstances@4 PROC NEAR

; 4248 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 60					; 0000003cH

; 4249 :    LPENTITYINSTANCE lpEntityInstance;
; 4250 :    LPENTITYINSTANCE hEntityInstance;
; 4251 :    LPVIEWCSR        lpViewCsr;
; 4252 :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 4253 :    LPVIEWENTITY     lpViewEntity, lpViewEntityRP;
; 4254 :    zSHORT           nHierLvl1, nHierLvl2;
; 4255 :    zBOOL            bGetNext;
; 4256 : 
; 4257 :    hEntityInstance = lpViewOI->hRootEntityInstance;

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	mov	DWORD PTR _hEntityInstance$[ebp], ecx

; 4258 :    if ( hEntityInstance == 0 )

	cmp	DWORD PTR _hEntityInstance$[ebp], 0
	jne	SHORT $L8950

; 4259 :       return;

	jmp	$L8940
$L8950:

; 4260 : 
; 4261 :    // Loop through each of the entity instances.  We use bGetNext to control
; 4262 :    // whether we get the next entity.  If bGetNext is FALSE then it's already
; 4263 :    // been done in the body of the loop.
; 4264 :    for ( ;
; 4265 :          hEntityInstance;
; 4266 :          hEntityInstance = bGetNext ? lpEntityInstance->hNextHier : hEntityInstance )

	jmp	SHORT $L8951
$L8952:
	mov	edx, DWORD PTR _bGetNext$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9561
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	mov	DWORD PTR -60+[ebp], ecx
	jmp	SHORT $L9562
$L9561:
	mov	edx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR -60+[ebp], edx
$L9562:
	mov	eax, DWORD PTR -60+[ebp]
	mov	DWORD PTR _hEntityInstance$[ebp], eax
$L8951:
	cmp	DWORD PTR _hEntityInstance$[ebp], 0
	je	$L8953

; 4268 :       LPENTITYINSTANCE lpPrevHier;
; 4269 :       LPENTITYINSTANCE hNextHier;
; 4270 :       LPENTITYINSTANCE lpWork;
; 4271 :       zSHORT           nLevel;
; 4272 : 
; 4273 :       lpEntityInstance = zGETPTR( hEntityInstance );

	mov	ecx, DWORD PTR _hEntityInstance$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 4274 :       bGetNext = TRUE;

	mov	BYTE PTR _bGetNext$[ebp], 1

; 4275 : 
; 4276 :       // We only try to reclaim dead entity instances.
; 4277 :       if ( !fnEntityInstanceIsDead( lpEntityInstance ) )

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	call	_fnEntityInstanceIsDead@4
	movsx	eax, ax
	test	eax, eax
	jne	SHORT $L8959

; 4278 :          continue;

	jmp	SHORT $L8952
$L8959:

; 4279 : 
; 4280 :       // First see if instance is referenced by a cursor
; 4281 :       lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 4282 :       nHierLvl2 = 0;

	mov	WORD PTR _nHierLvl2$[ebp], 0

; 4283 :       if ( lpViewEntity->bRecursive )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8961

; 4285 :          nHierLvl2 = lpViewEntity->nHierNbr - 1;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	sub	eax, 1
	mov	WORD PTR _nHierLvl2$[ebp], ax

; 4286 :          lpViewEntityRP = zGETPTR( lpViewEntity->hParent );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityRP$[ebp], eax
$L8964:

; 4287 :          while ( lpViewEntityRP->lEREntTok != lpViewEntity->lEREntTok )

	mov	eax, DWORD PTR _lpViewEntityRP$[ebp]
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [eax+195]
	cmp	edx, DWORD PTR [ecx+195]
	je	SHORT $L8965

; 4288 :             lpViewEntityRP = zGETPTR( lpViewEntityRP->hParent );

	mov	eax, DWORD PTR _lpViewEntityRP$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityRP$[ebp], eax
	jmp	SHORT $L8964
$L8965:

; 4289 : 
; 4290 :          nHierLvl1 = lpViewEntityRP->nHierNbr - 1;

	mov	edx, DWORD PTR _lpViewEntityRP$[ebp]
	movsx	eax, WORD PTR [edx+217]
	sub	eax, 1
	mov	WORD PTR _nHierLvl1$[ebp], ax

; 4292 :       else

	jmp	SHORT $L8967
$L8961:

; 4293 :          nHierLvl1 = lpViewEntity->nHierNbr - 1;

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+217]
	sub	edx, 1
	mov	WORD PTR _nHierLvl1$[ebp], dx
$L8967:

; 4294 : 
; 4295 :       // Now go through the view cursors and see if any is referencing
; 4296 :       // the entity instance in question.
; 4297 :       for ( lpViewCsr = zGETPTR( lpViewOI->hFirstViewCsr );
; 4298 :             lpViewCsr;
; 4299 :             lpViewCsr = zGETPTR( lpViewCsr->hNextViewCsr ) )

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax
	jmp	SHORT $L8970
$L8971:
	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax
$L8970:
	cmp	DWORD PTR _lpViewCsr$[ebp], 0
	je	SHORT $L8972

; 4301 :          lpViewEntityCsr = zGETPTR( lpViewCsr->hFirstOD_EntityCsr );  // blew on this line 2006.06.30 dks

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 4302 :          lpViewEntityCsr += nHierLvl1;

	movsx	eax, WORD PTR _nHierLvl1$[ebp]
	imul	eax, 30					; 0000001eH
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	add	ecx, eax
	mov	DWORD PTR _lpViewEntityCsr$[ebp], ecx

; 4303 :          if ( lpViewEntityCsr->hEntityInstance == hEntityInstance )

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	cmp	eax, DWORD PTR _hEntityInstance$[ebp]
	jne	SHORT $L8974

; 4304 :             break;

	jmp	SHORT $L8972
$L8974:

; 4305 : 
; 4306 :          if ( nHierLvl2 )

	movsx	ecx, WORD PTR _nHierLvl2$[ebp]
	test	ecx, ecx
	je	SHORT $L8977

; 4308 :             lpViewEntityCsr = zGETPTR( lpViewCsr->hFirstOD_EntityCsr );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 4309 :             lpViewEntityCsr += nHierLvl2;

	movsx	ecx, WORD PTR _nHierLvl2$[ebp]
	imul	ecx, 30					; 0000001eH
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	add	edx, ecx
	mov	DWORD PTR _lpViewEntityCsr$[ebp], edx

; 4310 :             if ( lpViewEntityCsr->hEntityInstance == hEntityInstance )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	cmp	ecx, DWORD PTR _hEntityInstance$[ebp]
	jne	SHORT $L8977

; 4311 :                break;

	jmp	SHORT $L8972
$L8977:

; 4313 :       }

	jmp	SHORT $L8971
$L8972:

; 4314 : 
; 4315 :       // If no cursor was found, delete the entity instance and
; 4316 :       // all of its subordinates.
; 4317 :       if ( lpViewCsr )

	cmp	DWORD PTR _lpViewCsr$[ebp], 0
	je	SHORT $L8978

; 4318 :          continue;     // Continue with next entity instance.

	jmp	$L8952
$L8978:

; 4319 : 
; 4320 :       nLevel = lpEntityInstance->nLevel;

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	ax, WORD PTR [edx+58]
	mov	WORD PTR _nLevel$8957[ebp], ax

; 4321 :       lpPrevHier = zGETPTR( lpEntityInstance->hPrevHier );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevHier$8954[ebp], eax

; 4322 :       if ( lpEntityInstance->hNextTwin )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+22], 0
	je	SHORT $L8980

; 4324 :          lpWork = zGETPTR( lpEntityInstance->hNextTwin );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWork$8956[ebp], eax

; 4325 :          lpWork->hPrevTwin = lpEntityInstance->hPrevTwin;

	mov	eax, DWORD PTR _lpWork$8956[ebp]
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	mov	DWORD PTR [eax+26], edx
$L8980:

; 4327 : 
; 4328 :       if ( lpEntityInstance->hPrevTwin )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+26], 0
	je	SHORT $L8982

; 4330 :          lpWork = zGETPTR( lpEntityInstance->hPrevTwin );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWork$8956[ebp], eax

; 4331 :          lpWork->hNextTwin = lpEntityInstance->hNextTwin;

	mov	eax, DWORD PTR _lpWork$8956[ebp]
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+22]
	mov	DWORD PTR [eax+22], edx
$L8982:

; 4333 : 
; 4334 :       // Indicate that we'll end up with the next entity instance.
; 4335 :       bGetNext = FALSE;

	mov	BYTE PTR _bGetNext$[ebp], 0

; 4336 : 
; 4337 :       // Check to see if we are removing the root entity instance.
; 4338 :       if ( lpViewOI->hRootEntityInstance == hEntityInstance )

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	cmp	ecx, DWORD PTR _hEntityInstance$[ebp]
	jne	SHORT $L8984

; 4339 :          lpViewOI->hRootEntityInstance = lpEntityInstance->hNextTwin;

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	mov	DWORD PTR [edx+26], ecx
$L8984:

; 4344 :          lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 4345 :          hNextHier    = lpEntityInstance->hNextHier;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	mov	DWORD PTR _hNextHier$8955[ebp], edx

; 4346 :          if ( lpEntityInstance->hNextLinked )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+42], 0
	je	SHORT $L8989

; 4348 :             lpWork = zGETPTR( lpEntityInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWork$8956[ebp], eax

; 4349 :             if ( lpWork->hNextLinked == hEntityInstance )

	mov	eax, DWORD PTR _lpWork$8956[ebp]
	mov	ecx, DWORD PTR [eax+42]
	cmp	ecx, DWORD PTR _hEntityInstance$[ebp]
	jne	SHORT $L8991

; 4350 :                lpWork->hNextLinked = 0;

	mov	edx, DWORD PTR _lpWork$8956[ebp]
	mov	DWORD PTR [edx+42], 0

; 4351 :             else

	jmp	SHORT $L8992
$L8991:

; 4353 :                LPENTITYINSTANCE lpSearchLink;
; 4354 : 
; 4355 :                lpSearchLink = lpWork;

	mov	eax, DWORD PTR _lpWork$8956[ebp]
	mov	DWORD PTR _lpSearchLink$8993[ebp], eax
$L8995:

; 4356 :                while ( lpSearchLink->hNextLinked != hEntityInstance )

	mov	ecx, DWORD PTR _lpSearchLink$8993[ebp]
	mov	edx, DWORD PTR [ecx+42]
	cmp	edx, DWORD PTR _hEntityInstance$[ebp]
	je	SHORT $L8996

; 4357 :                   lpSearchLink = zGETPTR( lpSearchLink->hNextLinked );

	mov	eax, DWORD PTR _lpSearchLink$8993[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSearchLink$8993[ebp], eax
	jmp	SHORT $L8995
$L8996:

; 4358 : 
; 4359 :                lpSearchLink->hNextLinked = lpEntityInstance->hNextLinked;

	mov	edx, DWORD PTR _lpSearchLink$8993[ebp]
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	mov	DWORD PTR [edx+42], ecx
$L8992:

; 4362 :          else

	jmp	SHORT $L8998
$L8989:

; 4363 :             fnDeleteAttributeRecord( lpViewEntity, lpEntityInstance, TRUE );

	push	1
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	call	_fnDeleteAttributeRecord
	add	esp, 12					; 0000000cH
$L8998:

; 4364 : 
; 4365 :          fnDeleteAttributeRecord( lpViewEntity, lpEntityInstance, FALSE );

	push	0
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	call	_fnDeleteAttributeRecord
	add	esp, 12					; 0000000cH

; 4366 :          fnRemoveEntityFromDebugChange( lpEntityInstance );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	call	_fnRemoveEntityFromDebugChange@4

; 4367 :          fnFreeDataspace( lpEntityInstance );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	push	ecx
	call	_fnFreeDataspace
	add	esp, 4

; 4368 : 
; 4369 :          // Get next instance.
; 4370 :          hEntityInstance  = hNextHier;

	mov	edx, DWORD PTR _hNextHier$8955[ebp]
	mov	DWORD PTR _hEntityInstance$[ebp], edx

; 4371 :          lpEntityInstance = zGETPTR( hEntityInstance );

	mov	eax, DWORD PTR _hEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 4372 : 
; 4373 :       }  while ( lpEntityInstance && lpEntityInstance->nLevel > nLevel );

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L9000
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	movsx	eax, WORD PTR _nLevel$8957[ebp]
	cmp	edx, eax
	jg	$L8984
$L9000:

; 4374 : 
; 4375 :       if ( lpPrevHier )

	cmp	DWORD PTR _lpPrevHier$8954[ebp], 0
	je	SHORT $L9001

; 4376 :          lpPrevHier->hNextHier = hEntityInstance;

	mov	ecx, DWORD PTR _lpPrevHier$8954[ebp]
	mov	edx, DWORD PTR _hEntityInstance$[ebp]
	mov	DWORD PTR [ecx+14], edx
$L9001:

; 4377 : 
; 4378 :       if ( lpEntityInstance )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L9002

; 4379 :          lpEntityInstance->hPrevHier = zGETHNDL( lpPrevHier );

	mov	eax, DWORD PTR _lpPrevHier$8954[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [ecx+18], eax
$L9002:

; 4380 : 
; 4381 :    } // for each lpEntityInstance...

	jmp	$L8952
$L8953:

; 4382 : 
; 4383 :    // We're all done, clear the hidden count.
; 4384 :    lpViewOI->nHiddenCount = 0;    // clear hidden count

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	WORD PTR [edx+24], 0
$L8940:

; 4385 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_fnReclaimHiddenInstances@4 ENDP
_TEXT	ENDS
PUBLIC	_fnInstanceLinkedToInstance
_TEXT	SEGMENT
_lpSrcInstance$ = 8
_lpTgtInstance$ = 12
_lpWrkInstance$ = -4
_fnInstanceLinkedToInstance PROC NEAR

; 4403 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 4404 :    LPENTITYINSTANCE lpWrkInstance;
; 4405 : 
; 4406 :    if ( lpSrcInstance == 0 || lpTgtInstance == 0 ||
; 4407 :         lpSrcInstance->hNextLinked == 0 || lpTgtInstance->hNextLinked == 0 )

	cmp	DWORD PTR _lpSrcInstance$[ebp], 0
	je	SHORT $L9011
	cmp	DWORD PTR _lpTgtInstance$[ebp], 0
	je	SHORT $L9011
	mov	eax, DWORD PTR _lpSrcInstance$[ebp]
	cmp	DWORD PTR [eax+42], 0
	je	SHORT $L9011
	mov	ecx, DWORD PTR _lpTgtInstance$[ebp]
	cmp	DWORD PTR [ecx+42], 0
	jne	SHORT $L9010
$L9011:

; 4409 :       return( 0 );

	xor	al, al
	jmp	SHORT $L9018
$L9010:

; 4411 : 
; 4412 :    lpWrkInstance = zGETPTR( lpSrcInstance->hNextLinked );

	mov	edx, DWORD PTR _lpSrcInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax
$L9014:

; 4413 :    while ( lpWrkInstance != lpTgtInstance && lpWrkInstance != lpSrcInstance )

	mov	ecx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	ecx, DWORD PTR _lpTgtInstance$[ebp]
	je	SHORT $L9015
	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	edx, DWORD PTR _lpSrcInstance$[ebp]
	je	SHORT $L9015

; 4415 :       lpWrkInstance = zGETPTR( lpWrkInstance->hNextLinked );

	mov	eax, DWORD PTR _lpWrkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkInstance$[ebp], eax

; 4416 :    }

	jmp	SHORT $L9014
$L9015:

; 4417 : 
; 4418 :    if ( lpWrkInstance == lpTgtInstance )

	mov	edx, DWORD PTR _lpWrkInstance$[ebp]
	cmp	edx, DWORD PTR _lpTgtInstance$[ebp]
	jne	SHORT $L9017

; 4419 :       return( 1 );

	mov	al, 1
	jmp	SHORT $L9018
$L9017:

; 4420 :    else
; 4421 :       return( 0 );

	xor	al, al
$L9018:

; 4422 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnInstanceLinkedToInstance ENDP
_TEXT	ENDS
PUBLIC	_fnInstanceVersioned
_TEXT	SEGMENT
_lpEntityInstance$ = 8
_lpViewOI$ = -4
_fnInstanceVersioned PROC NEAR

; 4440 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 4441 :    LPVIEWOI lpViewOI = zGETPTR( lpEntityInstance->hViewOI );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 4442 : 
; 4443 :    // If the ViewOI has no versioned instances, return 0.
; 4444 :    if ( lpViewOI->nVersionedInstances == 0 )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	movsx	eax, WORD PTR [edx+22]
	test	eax, eax
	jne	SHORT $L9024

; 4445 :       return( 0 );

	xor	al, al
	jmp	SHORT $L9021
$L9024:

; 4446 : 
; 4447 :    // We look for either a temporal entity or a versioned instance up the
; 4448 :    // parent chain to see if the instance is versioned.
; 4449 :    while ( lpEntityInstance )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L9027

; 4451 :       if ( lpEntityInstance->u.nInd.bTemporal || lpEntityInstance->hPrevVsn )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9029
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L9028
$L9029:

; 4452 :          return( 1 ); // the instance is versioned

	mov	al, 1
	jmp	SHORT $L9021
$L9028:

; 4453 : 
; 4454 :       lpEntityInstance = zGETPTR( lpEntityInstance->hParent );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 4455 :    }

	jmp	SHORT $L9024
$L9027:

; 4456 : 
; 4457 :    return( 0 ); // instance is not part of a newer version

	xor	al, al
$L9021:

; 4458 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnInstanceVersioned ENDP
_lpTgtEntityInstance$ = 8
_lpSrcEntityInstance$ = 12
_lpViewOI$ = -4
_lpPrevVsn$9043 = -8
_lpPrevVsn$9052 = -12
_fnInstanceVersionRootMatch PROC NEAR

; 4484 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 4485 :    LPVIEWOI lpViewOI = zGETPTR( lpSrcEntityInstance->hViewOI );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 4486 : 
; 4487 :    // If no temporal entities or subobject versions exist for either
; 4488 :    // viewoi, then the answer is same version.
; 4489 :    if ( lpViewOI->nVersionedInstances == 0 )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	movsx	eax, WORD PTR [edx+22]
	test	eax, eax
	jne	SHORT $L9038

; 4490 :       return( 1 );

	mov	al, 1
	jmp	$L9035
$L9038:

; 4491 : 
; 4492 :    // Determine the source root version for the source entity instance.
; 4493 :    while ( lpSrcEntityInstance )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	je	SHORT $L9041

; 4495 :       if ( lpSrcEntityInstance->hPrevVsn )

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	SHORT $L9045

; 4497 :          LPENTITYINSTANCE lpPrevVsn = zGETPTR( lpSrcEntityInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$9043[ebp], eax

; 4498 : 
; 4499 :          if ( lpPrevVsn->u.nInd.bPrevVsnRoot )

	mov	ecx, DWORD PTR _lpPrevVsn$9043[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 9
	and	edx, 1
	test	edx, edx
	je	SHORT $L9045

; 4500 :             break;

	jmp	SHORT $L9041
$L9045:

; 4502 : 
; 4503 :       lpSrcEntityInstance = zGETPTR( lpSrcEntityInstance->hParent );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntityInstance$[ebp], eax

; 4504 :    }

	jmp	SHORT $L9038
$L9041:

; 4505 : 
; 4506 :    if ( lpSrcEntityInstance == 0 )

	cmp	DWORD PTR _lpSrcEntityInstance$[ebp], 0
	jne	SHORT $L9047

; 4507 :       return( 1 );

	mov	al, 1
	jmp	SHORT $L9035
$L9047:

; 4508 : 
; 4509 :    // Determine the source root version for the target entity instance.
; 4510 :    while ( lpTgtEntityInstance )

	cmp	DWORD PTR _lpTgtEntityInstance$[ebp], 0
	je	SHORT $L9050

; 4512 :       if ( lpTgtEntityInstance->hPrevVsn )

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [edx+38], 0
	je	SHORT $L9054

; 4514 :          LPENTITYINSTANCE lpPrevVsn = zGETPTR( lpTgtEntityInstance->hPrevVsn );

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$9052[ebp], eax

; 4515 : 
; 4516 :          if ( lpPrevVsn->u.nInd.bPrevVsnRoot )

	mov	edx, DWORD PTR _lpPrevVsn$9052[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 9
	and	eax, 1
	test	eax, eax
	je	SHORT $L9054

; 4517 :             break;

	jmp	SHORT $L9050
$L9054:

; 4519 : 
; 4520 :       lpTgtEntityInstance = zGETPTR( lpTgtEntityInstance->hParent );

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntityInstance$[ebp], eax

; 4521 :    }

	jmp	SHORT $L9047
$L9050:

; 4522 : 
; 4523 :    // Return the comparison of the source and target version root.
; 4524 :    return( lpSrcEntityInstance == lpTgtEntityInstance );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	xor	ecx, ecx
	cmp	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	sete	cl
	mov	al, cl
$L9035:

; 4525 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnInstanceVersionRootMatch ENDP
_TEXT	ENDS
EXTRN	_memcmp:NEAR
_TEXT	SEGMENT
_lpTgtEntityInstance$ = 8
_lpSrcEntityInstance$ = 12
_bKeyFound$ = -16
_ulOffset$ = -32
_lpViewEntity$ = -12
_lpViewAttrib$ = -28
_lpSrcRecord$ = -8
_lpTgtRecord$ = -24
_lpSrcData$ = -20
_lpTgtData$ = -4
_lpExternalP$ = -36
_fnInstanceKeysMatch PROC NEAR

; 4544 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH

; 4545 :    zBOOL        bKeyFound;
; 4546 :    zULONG       ulOffset;
; 4547 :    LPVIEWENTITY lpViewEntity;
; 4548 :    LPVIEWATTRIB lpViewAttrib;
; 4549 :    zPCHAR       lpSrcRecord;
; 4550 :    zPCHAR       lpTgtRecord;
; 4551 :    zPCHAR       lpSrcData;
; 4552 :    zPCHAR       lpTgtData;
; 4553 :    zCOREMEM     lpExternalP;
; 4554 : 
; 4555 :    bKeyFound = 0;

	mov	BYTE PTR _bKeyFound$[ebp], 0

; 4556 :    lpTgtRecord = (zPCHAR) zGETPTR( lpTgtEntityInstance->hPersistRecord );

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtRecord$[ebp], eax

; 4557 :    lpSrcRecord = (zPCHAR) zGETPTR( lpSrcEntityInstance->hPersistRecord );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+60]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcRecord$[ebp], eax

; 4558 :    if ( lpSrcRecord && lpTgtRecord )

	cmp	DWORD PTR _lpSrcRecord$[ebp], 0
	je	$L9079
	cmp	DWORD PTR _lpTgtRecord$[ebp], 0
	je	$L9079

; 4560 :       lpViewEntity = zGETPTR( lpTgtEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 4561 :       lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+179]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
$L9078:

; 4562 :       while ( lpViewAttrib )

	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	$L9079

; 4564 :          if ( lpViewAttrib->bKey && lpViewAttrib->bPersist )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	je	$L9082
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	and	edx, 1
	test	edx, edx
	je	$L9082

; 4566 :             bKeyFound = TRUE;

	mov	BYTE PTR _bKeyFound$[ebp], 1

; 4567 :             ulOffset = lpViewAttrib->ulRecordOffset;

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+250]
	mov	DWORD PTR _ulOffset$[ebp], ecx

; 4568 :             lpSrcData = lpSrcRecord + ulOffset;

	mov	edx, DWORD PTR _lpSrcRecord$[ebp]
	add	edx, DWORD PTR _ulOffset$[ebp]
	mov	DWORD PTR _lpSrcData$[ebp], edx

; 4569 :             lpTgtData = lpTgtRecord + ulOffset;

	mov	eax, DWORD PTR _lpTgtRecord$[ebp]
	add	eax, DWORD PTR _ulOffset$[ebp]
	mov	DWORD PTR _lpTgtData$[ebp], eax

; 4570 :             switch ( lpViewAttrib->cType )
; 4571 :             {

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	dl, BYTE PTR [ecx+202]
	mov	BYTE PTR -40+[ebp], dl
	cmp	BYTE PTR -40+[ebp], 83			; 00000053H
	je	SHORT $L9085
	jmp	$L9101
$L9085:

; 4572 :                case 'S':
; 4573 :                   if ( lpSrcData[ 0 ] == (zCHAR) '\xff' &&
; 4574 :                        lpTgtData[ 0 ] == (zCHAR) '\xff' )

	mov	eax, DWORD PTR _lpSrcData$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, -1
	jne	SHORT $L9088
	mov	edx, DWORD PTR _lpTgtData$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, -1
	jne	SHORT $L9088

; 4576 :                      lpExternalP = (zCOREMEM) (lpSrcData + 1);

	mov	ecx, DWORD PTR _lpSrcData$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lpExternalP$[ebp], ecx

; 4577 :                      lpSrcData   = zGETPTR( *lpExternalP );

	mov	edx, DWORD PTR _lpExternalP$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcData$[ebp], eax

; 4578 :                      lpExternalP = (zCOREMEM) (lpTgtData + 1);

	mov	ecx, DWORD PTR _lpTgtData$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lpExternalP$[ebp], ecx

; 4579 :                      lpTgtData   = zGETPTR( *lpExternalP );

	mov	edx, DWORD PTR _lpExternalP$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtData$[ebp], eax
$L9088:

; 4581 : 
; 4582 :                   if ( lpSrcData[ 0 ] != lpTgtData[ 0 ] ||
; 4583 :                        zstrcmp( lpSrcData, lpTgtData ) != 0 )

	mov	ecx, DWORD PTR _lpSrcData$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _lpTgtData$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	edx, ecx
	jne	SHORT $L9100
	mov	edx, DWORD PTR _lpSrcData$[ebp]
	movsx	eax, BYTE PTR [edx]
	mov	ecx, DWORD PTR _lpTgtData$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	eax, edx
	jne	SHORT $L9567
	mov	eax, DWORD PTR _lpTgtData$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcData$[ebp]
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L9568
$L9567:
	mov	edx, DWORD PTR _lpSrcData$[ebp]
	movsx	eax, BYTE PTR [edx]
	mov	ecx, DWORD PTR _lpTgtData$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -44+[ebp], ecx
$L9568:
	cmp	DWORD PTR -44+[ebp], 0
	je	SHORT $L9099
$L9100:

; 4585 :                      return( 0 );

	xor	ax, ax
	jmp	SHORT $L9060
$L9099:

; 4587 : 
; 4588 :                   break;

	jmp	SHORT $L9082
$L9101:

; 4589 : 
; 4590 :                default:
; 4591 :                   if ( zmemcmp( lpSrcData, lpTgtData,
; 4592 :                                 lpViewAttrib->ulLth ) != 0 )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+203]
	push	eax
	mov	ecx, DWORD PTR _lpTgtData$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpSrcData$[ebp]
	push	edx
	call	_memcmp
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $L9102

; 4594 :                      return( 0 );

	xor	ax, ax
	jmp	SHORT $L9060
$L9102:
$L9082:

; 4598 : 
; 4599 :          lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 4600 :       }

	jmp	$L9078
$L9079:

; 4602 : 
; 4603 :    // If we get here and a key was found, then the records match ...
; 4604 :    // return success.
; 4605 :    if ( bKeyFound )

	mov	edx, DWORD PTR _bKeyFound$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9104

; 4606 :       return( 1 );

	mov	ax, 1
	jmp	SHORT $L9060
$L9104:

; 4607 : 
; 4608 :    // If a key was not found or a record does not exist, then they can't
; 4609 :    // match ... return failure.
; 4610 :    return( 0 );  // default is no match

	xor	ax, ax
$L9060:

; 4611 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnInstanceKeysMatch ENDP
_lpTgtEntityInstance$ = 8
_lpSrcEntityInstance$ = 12
_lpTgtViewEntity$ = -36
_lpWrkEntityInstance$ = -4
_lpVsnEntityInstance$ = -12
_hOldRecord$ = -32
_bCreated$ = -16
_bUpdated$ = -24
_bPrevVersion$ = -20
_nRC$ = -8
_lpSrcViewEntity$ = -28
_lpWorkEI$9158 = -40
_lpWorkEI$9166 = -44
_hNewRecord$9172 = -48
_fnRelinkInstanceToInstance PROC NEAR

; 4631 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H

; 4632 :    LPVIEWENTITY     lpTgtViewEntity;
; 4633 :    LPENTITYINSTANCE lpWrkEntityInstance;
; 4634 :    LPENTITYINSTANCE lpVsnEntityInstance;
; 4635 :    zPVOID           hOldRecord;
; 4636 :    zBOOL            bCreated, bUpdated, bPrevVersion;
; 4637 :    zSHORT           nRC;
; 4638 : 
; 4639 : #ifdef DEBUG
; 4640 :    LPVIEWENTITY lpSrcViewEntity = zGETPTR( lpSrcEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntity$[ebp], eax

; 4641 : #endif
; 4642 : 
; 4643 :    // Get the target view entity.
; 4644 :    lpTgtViewEntity = zGETPTR( lpTgtEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewEntity$[ebp], eax

; 4645 : 
; 4646 :    // Make sure that the source and target are not already linked.
; 4647 :    if ( lpSrcEntityInstance == lpTgtEntityInstance )

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	jne	SHORT $L9121

; 4648 :       nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1

; 4649 :    else

	jmp	$L9134
$L9121:

; 4651 :       nRC = 0;   // default return code to 0

	mov	WORD PTR _nRC$[ebp], 0

; 4652 :       bUpdated = lpSrcEntityInstance->u.nInd.bUpdated;

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 2
	and	eax, 1
	mov	BYTE PTR _bUpdated$[ebp], al

; 4653 :       bCreated = lpSrcEntityInstance->u.nInd.bCreated;

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 1
	and	edx, 1
	mov	BYTE PTR _bCreated$[ebp], dl

; 4654 :       bPrevVersion = FALSE;

	mov	BYTE PTR _bPrevVersion$[ebp], 0

; 4655 :       if ( lpSrcEntityInstance->u.nInd.bPrevVersion ||
; 4656 :            lpTgtEntityInstance->u.nInd.bPrevVersion )

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 8
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9124
	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 8
	and	eax, 1
	test	eax, eax
	je	SHORT $L9129
$L9124:

; 4658 :          bPrevVersion = TRUE;

	mov	BYTE PTR _bPrevVersion$[ebp], 1

; 4659 :          if ( lpSrcEntityInstance->u.nInd.bPrevVersion == FALSE )

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 8
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9129

; 4661 :             lpSrcEntityInstance->u.nInd.bPrevVersion = TRUE;

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	or	ch, 1
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 4662 :             lpWrkEntityInstance = zGETPTR( lpSrcEntityInstance->hNextLinked );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax
$L9128:

; 4663 :             while ( lpWrkEntityInstance &&
; 4664 :                     lpWrkEntityInstance != lpSrcEntityInstance )

	cmp	DWORD PTR _lpWrkEntityInstance$[ebp], 0
	je	SHORT $L9129
	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	cmp	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	je	SHORT $L9129

; 4666 :                lpWrkEntityInstance->u.nInd.bPrevVersion = TRUE;

	mov	eax, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	or	ch, 1
	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 4667 :                lpWrkEntityInstance = zGETPTR( lpWrkEntityInstance->hNextLinked );

	mov	eax, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax

; 4668 :             }

	jmp	SHORT $L9128
$L9129:

; 4671 : 
; 4672 :       lpWrkEntityInstance = zGETPTR( lpSrcEntityInstance->hNextLinked );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax
$L9133:

; 4673 :       while ( lpWrkEntityInstance &&
; 4674 :               lpWrkEntityInstance != lpSrcEntityInstance )

	cmp	DWORD PTR _lpWrkEntityInstance$[ebp], 0
	je	SHORT $L9134
	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	cmp	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	je	SHORT $L9134

; 4676 :          if ( lpWrkEntityInstance == lpTgtEntityInstance )

	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	cmp	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	jne	SHORT $L9135

; 4678 :             nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1

; 4679 :             break;

	jmp	SHORT $L9134
$L9135:

; 4681 : 
; 4682 :          lpWrkEntityInstance = zGETPTR( lpWrkEntityInstance->hNextLinked );

	mov	eax, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax

; 4683 :       }

	jmp	SHORT $L9133
$L9134:

; 4685 : 
; 4686 :    // if the return code is 0, then all edits have passed and the
; 4687 :    // source and target entity instances are not currently linked,
; 4688 :    // link them now
; 4689 :    if ( nRC )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L9137

; 4690 :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L9109
$L9137:

; 4691 : 
; 4692 :    // Link the two instances together
; 4693 :    if ( lpSrcEntityInstance->hNextLinked == 0 )

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	cmp	DWORD PTR [eax+42], 0
	jne	$L9138

; 4695 :       if ( lpTgtEntityInstance->hNextLinked == 0 )

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+42], 0
	jne	SHORT $L9139

; 4696 :          lpSrcEntityInstance->hNextLinked = zGETHNDL( lpTgtEntityInstance );

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax

; 4697 :       else

	jmp	$L9141
$L9139:

; 4699 :          // Chain forward past target entity instance on target chain
; 4700 :          lpWrkEntityInstance = zGETPTR( lpTgtEntityInstance->hNextLinked );

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax
$L9144:

; 4703 :             // Set the record pointer for other instances in target
; 4704 :             // link chain to point to the source record.
; 4705 :             lpWrkEntityInstance->hPersistRecord = lpSrcEntityInstance->hPersistRecord;

	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+60]
	mov	DWORD PTR [ecx+60], eax

; 4706 :             lpWrkEntityInstance->u.nInd.bUpdated = bUpdated;

	mov	ecx, DWORD PTR _bUpdated$[ebp]
	and	ecx, 255				; 000000ffH
	and	ecx, 1
	shl	ecx, 2
	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	al, -5					; fffffffbH
	or	eax, ecx
	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 4707 :             lpWrkEntityInstance->u.nInd.bCreated = bCreated;

	mov	edx, DWORD PTR _bCreated$[ebp]
	and	edx, 255				; 000000ffH
	and	edx, 1
	shl	edx, 1
	mov	eax, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ecx, -3					; fffffffdH
	or	ecx, edx
	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 4708 :             lpWrkEntityInstance->u.nInd.bPrevVersion = bPrevVersion;

	mov	eax, DWORD PTR _bPrevVersion$[ebp]
	and	eax, 255				; 000000ffH
	and	eax, 1
	shl	eax, 8
	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	and	dh, -2					; fffffffeH
	or	edx, eax
	mov	eax, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 4709 : 
; 4710 :             if ( zGETPTR( lpWrkEntityInstance->hNextLinked ) ==
; 4711 :                                                    lpTgtEntityInstance )

	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	jne	SHORT $L9147

; 4713 :                break;

	jmp	SHORT $L9145
$L9147:

; 4715 : 
; 4716 :             lpWrkEntityInstance = zGETPTR( lpWrkEntityInstance->hNextLinked );

	mov	eax, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax

; 4717 :          }

	jmp	$L9144
$L9145:

; 4718 : 
; 4719 :          lpSrcEntityInstance->hNextLinked = lpTgtEntityInstance->hNextLinked;

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	mov	DWORD PTR [edx+42], ecx
$L9141:

; 4721 : 
; 4722 :       lpTgtEntityInstance->hNextLinked = zGETHNDL( lpSrcEntityInstance );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax

; 4724 :    else

	jmp	$L9153
$L9138:

; 4726 :       if ( lpTgtEntityInstance->hNextLinked == 0 )

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [edx+42], 0
	jne	SHORT $L9151

; 4728 :          lpTgtEntityInstance->hNextLinked = lpSrcEntityInstance->hNextLinked;

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	mov	DWORD PTR [eax+42], edx

; 4729 :          lpSrcEntityInstance->hNextLinked = zGETHNDL( lpTgtEntityInstance );

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax

; 4731 :       else

	jmp	$L9153
$L9151:

; 4733 :          // Both entity instances are on two different link chains,
; 4734 :          // break the two chains and combine into one larger chain
; 4735 :          lpWrkEntityInstance = zGETPTR( lpSrcEntityInstance->hNextLinked );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax
$L9156:

; 4736 :          while ( TRUE )

	mov	ecx, 1
	test	ecx, ecx
	je	SHORT $L9157

; 4738 :             LPENTITYINSTANCE lpWorkEI;
; 4739 : 
; 4740 :             lpWorkEI = zGETPTR( lpWrkEntityInstance->hNextLinked );

	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkEI$9158[ebp], eax

; 4741 : 
; 4742 :             if ( lpWorkEI == lpSrcEntityInstance )

	mov	ecx, DWORD PTR _lpWorkEI$9158[ebp]
	cmp	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	jne	SHORT $L9160

; 4743 :                break;

	jmp	SHORT $L9157
$L9160:

; 4744 : 
; 4745 :             lpWrkEntityInstance = lpWorkEI;

	mov	edx, DWORD PTR _lpWorkEI$9158[ebp]
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], edx

; 4746 :          }

	jmp	SHORT $L9156
$L9157:

; 4747 : 
; 4748 :          lpWrkEntityInstance->hNextLinked = zGETHNDL( lpTgtEntityInstance );

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax

; 4749 : 
; 4750 :          // Chain forward past target entity instance on target chain
; 4751 :          lpWrkEntityInstance = zGETPTR( lpTgtEntityInstance->hNextLinked );

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax
$L9164:

; 4754 :             LPENTITYINSTANCE lpWorkEI;
; 4755 : 
; 4756 :             // Set the record pointer for other instances in target
; 4757 :             // link chain to point to the source record
; 4758 :             lpWrkEntityInstance->hPersistRecord = lpSrcEntityInstance->hPersistRecord;

	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+60]
	mov	DWORD PTR [ecx+60], eax

; 4759 :             lpWrkEntityInstance->u.nInd.bUpdated = bUpdated;

	mov	ecx, DWORD PTR _bUpdated$[ebp]
	and	ecx, 255				; 000000ffH
	and	ecx, 1
	shl	ecx, 2
	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	al, -5					; fffffffbH
	or	eax, ecx
	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 4760 :             lpWrkEntityInstance->u.nInd.bCreated = bCreated;

	mov	edx, DWORD PTR _bCreated$[ebp]
	and	edx, 255				; 000000ffH
	and	edx, 1
	shl	edx, 1
	mov	eax, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ecx, -3					; fffffffdH
	or	ecx, edx
	mov	edx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 4761 :             lpWrkEntityInstance->u.nInd.bPrevVersion = bPrevVersion;

	mov	eax, DWORD PTR _bPrevVersion$[ebp]
	and	eax, 255				; 000000ffH
	and	eax, 1
	shl	eax, 8
	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	and	dh, -2					; fffffffeH
	or	edx, eax
	mov	eax, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 4762 : 
; 4763 :             lpWorkEI = zGETPTR( lpWrkEntityInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkEI$9166[ebp], eax

; 4764 : 
; 4765 :             if ( lpWorkEI == lpTgtEntityInstance )

	mov	eax, DWORD PTR _lpWorkEI$9166[ebp]
	cmp	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	jne	SHORT $L9168

; 4766 :                break;

	jmp	SHORT $L9165
$L9168:

; 4767 : 
; 4768 :             lpWrkEntityInstance = lpWorkEI;

	mov	ecx, DWORD PTR _lpWorkEI$9166[ebp]
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], ecx

; 4769 :          }

	jmp	$L9164
$L9165:

; 4770 : 
; 4771 :          // Now that we have found the last instance in the target
; 4772 :          // link chain, chain it forward to the source instance.
; 4773 :          lpWrkEntityInstance->hNextLinked = zGETHNDL( lpSrcEntityInstance );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	DWORD PTR [ecx+42], eax
$L9153:

; 4776 : 
; 4777 : #ifdef DEBUG
; 4778 :    lpSrcViewEntity = zGETPTR( lpSrcEntityInstance->hViewEntity );

	mov	edx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewEntity$[ebp], eax

; 4779 : #endif
; 4780 : 
; 4781 :    // The two instances are linked together, now free up the data
; 4782 :    // record for the target entity instance and set the record
; 4783 :    // pointer from the source entity instance.
; 4784 :    hOldRecord = lpTgtEntityInstance->hPersistRecord;

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+60]
	mov	DWORD PTR _hOldRecord$[ebp], edx

; 4785 :    fnDeleteAttributeRecord( lpTgtViewEntity, lpTgtEntityInstance, TRUE );

	push	1
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	ecx
	call	_fnDeleteAttributeRecord
	add	esp, 12					; 0000000cH

; 4786 :    lpTgtEntityInstance->hPersistRecord = lpSrcEntityInstance->hPersistRecord;

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	mov	DWORD PTR [edx+60], ecx

; 4787 :    lpTgtEntityInstance->u.nInd.bUpdated = bUpdated;

	mov	edx, DWORD PTR _bUpdated$[ebp]
	and	edx, 255				; 000000ffH
	and	edx, 1
	shl	edx, 2
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	and	ecx, -5					; fffffffbH
	or	ecx, edx
	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR [edx+6], ecx

; 4788 :    lpTgtEntityInstance->u.nInd.bCreated = bCreated;

	mov	eax, DWORD PTR _bCreated$[ebp]
	and	eax, 255				; 000000ffH
	and	eax, 1
	shl	eax, 1
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	and	edx, -3					; fffffffdH
	or	edx, eax
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 4789 :    lpTgtEntityInstance->u.nInd.bPrevVersion = bPrevVersion;

	mov	ecx, DWORD PTR _bPrevVersion$[ebp]
	and	ecx, 255				; 000000ffH
	and	ecx, 1
	shl	ecx, 8
	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	and	ah, -2					; fffffffeH
	or	eax, ecx
	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 4790 : 
; 4791 :    // Now that the old record has been deleted, propogate the link
; 4792 :    // record across all versions of the target instance.
; 4793 :    if ( lpTgtEntityInstance->hNextVsn )

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [edx+34], 0
	je	SHORT $L9176

; 4795 :       zPVOID hNewRecord;
; 4796 : 
; 4797 :       hNewRecord = lpTgtEntityInstance->hPersistRecord;

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	mov	DWORD PTR _hNewRecord$9172[ebp], ecx

; 4798 : 
; 4799 :       lpVsnEntityInstance = zGETPTR( lpTgtEntityInstance->hNextVsn );

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+34]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpVsnEntityInstance$[ebp], eax
$L9175:

; 4800 :       while ( lpVsnEntityInstance )

	cmp	DWORD PTR _lpVsnEntityInstance$[ebp], 0
	je	SHORT $L9176

; 4802 :          if ( lpVsnEntityInstance->hPersistRecord == hOldRecord )

	mov	ecx, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+60]
	cmp	edx, DWORD PTR _hOldRecord$[ebp]
	jne	SHORT $L9181

; 4804 :             lpVsnEntityInstance->hPersistRecord = hNewRecord;

	mov	eax, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	ecx, DWORD PTR _hNewRecord$9172[ebp]
	mov	DWORD PTR [eax+60], ecx

; 4805 :             lpWrkEntityInstance = zGETPTR( lpVsnEntityInstance->hNextLinked );

	mov	edx, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax
$L9180:

; 4806 : 
; 4807 :             while ( lpWrkEntityInstance &&
; 4808 :                     lpWrkEntityInstance != lpVsnEntityInstance )

	cmp	DWORD PTR _lpWrkEntityInstance$[ebp], 0
	je	SHORT $L9181
	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	cmp	ecx, DWORD PTR _lpVsnEntityInstance$[ebp]
	je	SHORT $L9181

; 4810 :                lpVsnEntityInstance->hPersistRecord = hNewRecord;

	mov	edx, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	eax, DWORD PTR _hNewRecord$9172[ebp]
	mov	DWORD PTR [edx+60], eax

; 4811 :                lpWrkEntityInstance = zGETPTR( lpWrkEntityInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpWrkEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWrkEntityInstance$[ebp], eax

; 4812 :             }

	jmp	SHORT $L9180
$L9181:

; 4814 : 
; 4815 :          lpVsnEntityInstance = zGETPTR( lpVsnEntityInstance->hNextVsn );

	mov	eax, DWORD PTR _lpVsnEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpVsnEntityInstance$[ebp], eax

; 4816 :       }

	jmp	SHORT $L9175
$L9176:

; 4818 : 
; 4819 :    return( nRC );  // return to caller

	mov	ax, WORD PTR _nRC$[ebp]
$L9109:

; 4820 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnRelinkInstanceToInstance ENDP
_TEXT	ENDS
PUBLIC	_fnGetEntityCnstrntOper
EXTRN	_SysGetProc@8:NEAR
EXTRN	_SysGetProcessID@4:NEAR
EXTRN	_SysLoadLibrary@8:NEAR
EXTRN	_AnchorBlock:DWORD
_TEXT	SEGMENT
_lpLastTaskOperation$9220 = -36
_lpView$ = 8
_lpViewEntity$ = 12
_lpCurrentTask$ = 16
_hCurrentTask$ = -28
_lpViewOD$ = -16
_pchOperLibName$ = -24
_hLibrary$ = -12
_hTaskOperation$ = -8
_lpTaskOperation$ = -20
_lProcessID$ = -4
_bMutexLocked$9211 = -32
_fnGetEntityCnstrntOper PROC NEAR

; 4834 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 4835 :    LPTASK      hCurrentTask = zGETHNDL( lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetHndl
	mov	DWORD PTR _hCurrentTask$[ebp], eax

; 4836 :    LPVIEWOD    lpViewOD;
; 4837 :    zPCHAR      pchOperLibName;
; 4838 :    LPLIBRARY   hLibrary;
; 4839 :    zPVOID      hTaskOperation;
; 4840 :    LPTASKOPER  lpTaskOperation;
; 4841 :    zLONG       lProcessID = SysGetProcessID( 0 );

	push	0
	call	_SysGetProcessID@4
	mov	DWORD PTR _lProcessID$[ebp], eax

; 4842 : 
; 4843 :    // No Object Constraint operation pointer, return 0 ==> not found.
; 4844 :    if ( lpViewEntity->szECEOpername[ 0 ] == 0 )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, BYTE PTR [ecx+146]
	test	edx, edx
	jne	SHORT $L9199

; 4845 :       return( 0 );

	xor	eax, eax
	jmp	$L9190
$L9199:

; 4846 : 
; 4847 :    lpViewOD = zGETPTR( lpView->hViewOD );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 4848 : 
; 4849 :    for ( lpTaskOperation = zGETPTR( lpViewEntity->hFirstTaskOperation );
; 4850 :          lpTaskOperation;
; 4851 :          lpTaskOperation = zGETPTR( lpTaskOperation->hNextTaskOperationForOEA ) )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+183]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTaskOperation$[ebp], eax
	jmp	SHORT $L9203
$L9204:
	mov	ecx, DWORD PTR _lpTaskOperation$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTaskOperation$[ebp], eax
$L9203:
	cmp	DWORD PTR _lpTaskOperation$[ebp], 0
	je	SHORT $L9205

; 4853 :       if ( lpTaskOperation->hTask == hCurrentTask &&
; 4854 :            lpTaskOperation->lProcessID == lProcessID )

	mov	eax, DWORD PTR _lpTaskOperation$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	cmp	ecx, DWORD PTR _hCurrentTask$[ebp]
	jne	SHORT $L9206
	mov	edx, DWORD PTR _lpTaskOperation$[ebp]
	mov	eax, DWORD PTR [edx+34]
	cmp	eax, DWORD PTR _lProcessID$[ebp]
	jne	SHORT $L9206

; 4856 :          return( (zPECEOPER) lpTaskOperation->pfnTaskOper );

	mov	ecx, DWORD PTR _lpTaskOperation$[ebp]
	mov	eax, DWORD PTR [ecx+30]
	jmp	$L9190
$L9206:

; 4858 :    }

	jmp	SHORT $L9204
$L9205:

; 4859 : 
; 4860 :    // No task object oper exists yet, create one if possible.
; 4861 :    pchOperLibName = lpViewOD->szOperLibname;

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	add	edx, 142				; 0000008eH
	mov	DWORD PTR _pchOperLibName$[ebp], edx

; 4862 :    if ( pchOperLibName == 0 || pchOperLibName[ 0 ] == 0 )

	cmp	DWORD PTR _pchOperLibName$[ebp], 0
	je	SHORT $L9209
	mov	eax, DWORD PTR _pchOperLibName$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $L9208
$L9209:

; 4863 :       return( 0 );

	xor	eax, eax
	jmp	$L9190
$L9208:

; 4864 : 
; 4865 :    hLibrary = SysLoadLibrary( lpView, pchOperLibName );

	mov	edx, DWORD PTR _pchOperLibName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysLoadLibrary@8
	mov	DWORD PTR _hLibrary$[ebp], eax

; 4866 : 
; 4867 :    if ( hLibrary )

	cmp	DWORD PTR _hLibrary$[ebp], 0
	je	$L9210

; 4869 :       zBOOL bMutexLocked;
; 4870 : 
; 4871 :       hTaskOperation = fnAllocDataspace( AnchorBlock->hMainFirstDataHeader,
; 4872 :                                          sizeof( TaskOperationRecord ), 1, 0,
; 4873 :                                          iTaskOperation );

	push	10034					; 00002732H
	push	0
	push	1
	push	38					; 00000026H
	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+114]
	push	edx
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	DWORD PTR _hTaskOperation$[ebp], eax

; 4874 :       if ( hTaskOperation == 0 )

	cmp	DWORD PTR _hTaskOperation$[ebp], 0
	jne	SHORT $L9213

; 4875 :          return( 0 );

	xor	eax, eax
	jmp	$L9190
$L9213:

; 4876 : 
; 4877 :       lpTaskOperation              = zGETPTR( hTaskOperation );

	mov	eax, DWORD PTR _hTaskOperation$[ebp]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTaskOperation$[ebp], eax

; 4878 :       lpTaskOperation->hViewEntity = zGETHNDL( lpViewEntity );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpTaskOperation$[ebp]
	mov	DWORD PTR [edx+22], eax

; 4879 :       lpTaskOperation->hTask       = hCurrentTask;

	mov	eax, DWORD PTR _lpTaskOperation$[ebp]
	mov	ecx, DWORD PTR _hCurrentTask$[ebp]
	mov	DWORD PTR [eax+14], ecx

; 4880 :       lpTaskOperation->lProcessID  = lProcessID;

	mov	edx, DWORD PTR _lpTaskOperation$[ebp]
	mov	eax, DWORD PTR _lProcessID$[ebp]
	mov	DWORD PTR [edx+34], eax

; 4881 : 
; 4882 :       // Set pointers for TaskOperation chain off of Task structure
; 4883 :       // Note: this is a single linked list
; 4884 :       if ( hCurrentTask == AnchorBlock->hMainTask )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR _hCurrentTask$[ebp]
	cmp	edx, DWORD PTR [ecx+106]
	jne	SHORT $L9216

; 4886 :          bMutexLocked = TRUE;

	mov	BYTE PTR _bMutexLocked$9211[ebp], 1

; 4887 :          zLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysLockCoreMutex@4

; 4889 :       else

	jmp	SHORT $L9217
$L9216:

; 4890 :          bMutexLocked = FALSE;

	mov	BYTE PTR _bMutexLocked$9211[ebp], 0
$L9217:

; 4891 : 
; 4892 :       lpTaskOperation->hNextTaskOperationForTask =
; 4893 :                                           lpCurrentTask->hFirstTaskOperation;

	mov	eax, DWORD PTR _lpTaskOperation$[ebp]
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	mov	edx, DWORD PTR [ecx+130]
	mov	DWORD PTR [eax+2], edx

; 4894 :       lpCurrentTask->hFirstTaskOperation = hTaskOperation;

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	mov	ecx, DWORD PTR _hTaskOperation$[ebp]
	mov	DWORD PTR [eax+130], ecx

; 4895 : 
; 4896 :       if ( bMutexLocked )

	mov	edx, DWORD PTR _bMutexLocked$9211[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L9218

; 4897 :          zUNLOCK_MUTEX( zMUTEX_ANCHORBLOCK );

	push	2
	call	_fnSysUnlockCoreMutex@4
$L9218:

; 4898 : 
; 4899 :       lpTaskOperation->pfnTaskOper = SysGetProc( hLibrary,
; 4900 :                                                  lpViewEntity->szECEOpername );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 146				; 00000092H
	push	eax
	mov	ecx, DWORD PTR _hLibrary$[ebp]
	push	ecx
	call	_SysGetProc@8
	mov	edx, DWORD PTR _lpTaskOperation$[ebp]
	mov	DWORD PTR [edx+30], eax

; 4901 : 
; 4902 :       // Set pointers for TaskOperation chain off of ViewEntity structure
; 4903 :       // Note: this is a double linked list
; 4904 :       if ( lpViewEntity->hLastTaskOperation )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [eax+187], 0
	je	SHORT $L9219

; 4906 :          LPTASKOPER lpLastTaskOperation;
; 4907 : 
; 4908 :          lpLastTaskOperation = zGETPTR( lpViewEntity->hLastTaskOperation );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+187]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLastTaskOperation$9220[ebp], eax

; 4909 :          lpLastTaskOperation->hNextTaskOperationForOEA = hTaskOperation;

	mov	eax, DWORD PTR _lpLastTaskOperation$9220[ebp]
	mov	ecx, DWORD PTR _hTaskOperation$[ebp]
	mov	DWORD PTR [eax+6], ecx

; 4910 :          lpTaskOperation->hPrevTaskOperationForOEA =
; 4911 :                                             lpViewEntity->hLastTaskOperation;

	mov	edx, DWORD PTR _lpTaskOperation$[ebp]
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+187]
	mov	DWORD PTR [edx+10], ecx

; 4912 :          lpViewEntity->hLastTaskOperation = hTaskOperation;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR _hTaskOperation$[ebp]
	mov	DWORD PTR [edx+187], eax

; 4914 :       else

	jmp	SHORT $L9222
$L9219:

; 4916 :          lpViewEntity->hFirstTaskOperation = hTaskOperation;

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR _hTaskOperation$[ebp]
	mov	DWORD PTR [ecx+183], edx

; 4917 :          lpViewEntity->hLastTaskOperation  = hTaskOperation;

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR _hTaskOperation$[ebp]
	mov	DWORD PTR [eax+187], ecx
$L9222:

; 4920 :    else

	jmp	SHORT $L9223
$L9210:

; 4921 :       return( 0 );

	xor	eax, eax
	jmp	SHORT $L9190
$L9223:

; 4922 : 
; 4923 :    return( (zPECEOPER) lpTaskOperation->pfnTaskOper );

	mov	edx, DWORD PTR _lpTaskOperation$[ebp]
	mov	eax, DWORD PTR [edx+30]
$L9190:

; 4924 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnGetEntityCnstrntOper ENDP
_lpView$ = 8
_lpViewEntity$ = 12
_lpCurrentTask$ = 16
_nEvent$ = 20
_nState$ = 24
_pfn$ = -4
_fnInvokeECEOperation PROC NEAR

; 4947 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 4948 :    zPECEOPER   pfn;
; 4949 : 
; 4950 :    pfn = fnGetEntityCnstrntOper( lpView, lpViewEntity, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnGetEntityCnstrntOper
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _pfn$[ebp], eax

; 4951 :    if ( pfn )

	cmp	DWORD PTR _pfn$[ebp], 0
	je	SHORT $L9237

; 4953 :       return( (*pfn)( lpView, lpViewEntity->szName,
; 4954 :                       nEvent, nState ) );

	mov	ax, WORD PTR _nState$[ebp]
	push	eax
	mov	cx, WORD PTR _nEvent$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	DWORD PTR _pfn$[ebp]
	jmp	SHORT $L9235
$L9237:

; 4956 : 
; 4957 :    return( 0 );

	xor	ax, ax
$L9235:

; 4958 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnInvokeECEOperation ENDP
_TEXT	ENDS
PUBLIC	_fnValidateInstanceAttributes
EXTRN	_fnGetAttrAddrFromEntityInstance:NEAR
EXTRN	_IssueOE_Error@28:NEAR
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntity$ = 12
_lpEntityInstance$ = 16
_lpViewAttrib$ = -12
_lpAttrAddr$ = -4
_un$ = -8
_nErrorCount$ = -16
_fnValidateInstanceAttributes PROC NEAR

; 4979 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 4980 :    LPVIEWATTRIB   lpViewAttrib;
; 4981 :    zPVOID         lpAttrAddr;
; 4982 :    zULONG         un;
; 4983 :    zSHORT         nErrorCount = 0;

	mov	WORD PTR _nErrorCount$[ebp], 0

; 4984 : 
; 4985 :    // User shouldn't pass us a null pointer...
; 4986 :    if ( lpEntityInstance == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	jne	SHORT $L9250

; 4987 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L9245
$L9250:

; 4988 : 
; 4989 :    for ( lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );
; 4990 :          lpViewAttrib;
; 4991 :          lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib ) )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+179]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	jmp	SHORT $L9253
$L9254:
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
$L9253:
	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	$L9255

; 4993 :       // If the attribute is not required don't worry about it.
; 4994 :       // Don't worry about hidden attributes.
; 4995 :       // If the attribute is a genkey then we'll set it later so skip it.
; 4996 :       if ( lpViewAttrib->bRequired == FALSE ||
; 4997 :            lpViewAttrib->bHidden || lpViewAttrib->bGenkey )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 4
	and	edx, 1
	test	edx, edx
	je	SHORT $L9257
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 5
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9257
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 3
	and	eax, 1
	test	eax, eax
	je	SHORT $L9256
$L9257:

; 4999 :          continue;

	jmp	SHORT $L9254
$L9256:

; 5001 : 
; 5002 :       // If the entity is a hanging entity then we only care about keys.
; 5003 :       if ( lpEntityInstance->u.nInd.bHangingEntity )

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	and	edx, 1
	test	edx, edx
	je	SHORT $L9259

; 5005 :          // Not a key?  Skip it.
; 5006 :          if ( lpViewAttrib->bKey == FALSE )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9259

; 5007 :             continue;

	jmp	SHORT $L9254
$L9259:

; 5009 : 
; 5010 :       // If the attribute is NULL then we have a problem.
; 5011 :       if ( fnGetAttrAddrFromEntityInstance( (zCOREMEM) &lpAttrAddr, &un,
; 5012 :                                             lpEntityInstance,
; 5013 :                                             lpViewAttrib ) == -1 )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	push	eax
	lea	ecx, DWORD PTR _un$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpAttrAddr$[ebp]
	push	edx
	call	_fnGetAttrAddrFromEntityInstance
	add	esp, 16					; 00000010H
	movsx	eax, ax
	cmp	eax, -1
	jne	SHORT $L9262

; 5015 :          // "KZOEE248 - Required attribute is null"
; 5016 :          IssueOE_Error( lpView, 8, 248,
; 5017 :                         zMSGQ_REQUIRED_DATA_ITEM_ERROR, 0,
; 5018 :                         lpViewEntity->szName,
; 5019 :                         lpViewAttrib->szName );

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	0
	push	400					; 00000190H
	push	248					; 000000f8H
	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_IssueOE_Error@28

; 5020 : 
; 5021 :          // attribute is null...
; 5022 :          if ( nErrorCount != 32767 )

	movsx	ecx, WORD PTR _nErrorCount$[ebp]
	cmp	ecx, 32767				; 00007fffH
	je	SHORT $L9262

; 5023 :             nErrorCount++;

	mov	dx, WORD PTR _nErrorCount$[ebp]
	add	dx, 1
	mov	WORD PTR _nErrorCount$[ebp], dx
$L9262:

; 5025 : 
; 5026 :    } // for...

	jmp	$L9254
$L9255:

; 5027 : 
; 5028 :    return( nErrorCount );

	mov	ax, WORD PTR _nErrorCount$[ebp]
$L9245:

; 5029 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnValidateInstanceAttributes ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BA@JIGI@?5dks?52007?404?423?$AA@		; `string'
PUBLIC	??_C@_0CC@IILP@RemoveAllTemporal?5skipping?5break@ ; `string'
EXTRN	_AcceptSubobject@8:NEAR
;	COMDAT ??_C@_0BA@JIGI@?5dks?52007?404?423?$AA@
; File C:\10C\A\oe\KZOEEIAA.C
_DATA	SEGMENT
??_C@_0BA@JIGI@?5dks?52007?404?423?$AA@ DB ' dks 2007.04.23', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CC@IILP@RemoveAllTemporal?5skipping?5break@
_DATA	SEGMENT
??_C@_0CC@IILP@RemoveAllTemporal?5skipping?5break@ DB 'RemoveAllTemporal '
	DB	'skipping break:', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpEntityInstance$ = 12
_bAccept$ = 16
_lpViewEntity$ = -12
_lpViewCsr$ = -4
_lpViewOI$ = -24
_lpViewEntityCsr$ = -32
_lpWorkInstance$ = -20
_vWork$ = -16
_nLvl$ = -28
_nRC$ = -8
_lpNextHier$9285 = -36
_lpPrevVsn$9293 = -40
_lpTask$9296 = -44
_fnRemoveAllChildTemporalVsns PROC NEAR

; 5050 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH

; 5051 :    LPVIEWENTITY     lpViewEntity;
; 5052 :    LPVIEWCSR        lpViewCsr;
; 5053 :    LPVIEWOI         lpViewOI;
; 5054 :    LPVIEWENTITYCSR  lpViewEntityCsr;
; 5055 :    LPENTITYINSTANCE lpWorkInstance;
; 5056 :    zVIEW            vWork;
; 5057 :    zSHORT           nLvl;
; 5058 :    zSHORT           nRC;
; 5059 : 
; 5060 :    vWork = 0;

	mov	DWORD PTR _vWork$[ebp], 0

; 5061 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 5062 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 5063 :    if ( lpEntityInstance == 0 || lpViewOI->nVersionedInstances == 0 )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L9281
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	test	edx, edx
	jne	SHORT $L9280
$L9281:

; 5064 :       return( 0 );

	xor	ax, ax
	jmp	$L9269
$L9280:

; 5065 : 
; 5066 :    lpWorkInstance = lpEntityInstance;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR _lpWorkInstance$[ebp], eax

; 5067 :    nLvl = lpWorkInstance->nLevel;

	mov	ecx, DWORD PTR _lpWorkInstance$[ebp]
	mov	dx, WORD PTR [ecx+58]
	mov	WORD PTR _nLvl$[ebp], dx
$L9283:

; 5068 :    while ( lpWorkInstance->hNextHier )

	mov	eax, DWORD PTR _lpWorkInstance$[ebp]
	cmp	DWORD PTR [eax+14], 0
	je	SHORT $L9284

; 5070 :       LPENTITYINSTANCE lpNextHier = zGETPTR( lpWorkInstance->hNextHier );

	mov	ecx, DWORD PTR _lpWorkInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpNextHier$9285[ebp], eax

; 5071 : 
; 5072 :       if ( lpNextHier->nLevel <= nLvl )

	mov	eax, DWORD PTR _lpNextHier$9285[ebp]
	movsx	ecx, WORD PTR [eax+58]
	movsx	edx, WORD PTR _nLvl$[ebp]
	cmp	ecx, edx
	jg	SHORT $L9287

; 5073 :          break;

	jmp	SHORT $L9284
$L9287:

; 5074 : 
; 5075 :       lpWorkInstance = lpNextHier;

	mov	eax, DWORD PTR _lpNextHier$9285[ebp]
	mov	DWORD PTR _lpWorkInstance$[ebp], eax

; 5076 :    }

	jmp	SHORT $L9283
$L9284:

; 5077 : 
; 5078 :    // Now that we have found the last descendent of the entity instance,
; 5079 :    // go through and find all versions to accept or cancel.
; 5080 :    while ( lpWorkInstance != lpEntityInstance )

	mov	ecx, DWORD PTR _lpWorkInstance$[ebp]
	cmp	ecx, DWORD PTR _lpEntityInstance$[ebp]
	je	$L9290

; 5082 :       if ( lpWorkInstance->u.nInd.bTemporal || lpWorkInstance->hPrevVsn )

	mov	edx, DWORD PTR _lpWorkInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9292
	mov	ecx, DWORD PTR _lpWorkInstance$[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	$L9291
$L9292:

; 5084 :          LPENTITYINSTANCE lpPrevVsn = zGETPTR( lpWorkInstance->hPrevVsn );

	mov	edx, DWORD PTR _lpWorkInstance$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpPrevVsn$9293[ebp], eax

; 5085 : 
; 5086 :          if ( lpPrevVsn && lpPrevVsn->u.nInd.bPrevVsnRoot == FALSE )

	cmp	DWORD PTR _lpPrevVsn$9293[ebp], 0
	je	SHORT $L9302
	mov	ecx, DWORD PTR _lpPrevVsn$9293[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 9
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9302

; 5088 :             LPTASK lpTask;
; 5089 : 
; 5090 :             // Remove was requested ... why not do it???
; 5091 :             TraceLineS( "RemoveAllTemporal skipping break:", " dks 2007.04.23" );  // dks  2007.04.23

	push	OFFSET FLAT:??_C@_0BA@JIGI@?5dks?52007?404?423?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0CC@IILP@RemoveAllTemporal?5skipping?5break@ ; `string'
	call	_TraceLineS@8

; 5092 :             lpViewEntity = zGETPTR( lpWorkInstance->hViewEntity );

	mov	eax, DWORD PTR _lpWorkInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 5093 :             nRC = fnValidateInstanceParameters( &lpTask,
; 5094 :                                                 &lpViewEntity,
; 5095 :                                                 &lpViewEntityCsr,
; 5096 :                                                 iCancelSubobject,
; 5097 :                                                 lpView,
; 5098 :                                                 lpViewEntity->szName,
; 5099 :                                                 (zSHORT) 0x8000 ); // test (no error message)

	push	-32768					; ffff8000H
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	104					; 00000068H
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpTask$9296[ebp]
	push	eax
	call	_fnValidateInstanceParameters
	add	esp, 28					; 0000001cH
	mov	WORD PTR _nRC$[ebp], ax

; 5100 :             if ( nRC != zCALL_ERROR )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -16				; fffffff0H
	je	SHORT $L9301

; 5101 :                fnOperationReturn( iCancelSubobject, lpTask );

	mov	edx, DWORD PTR _lpTask$9296[ebp]
	push	edx
	push	104					; 00000068H
	call	_fnOperationReturn
	add	esp, 8
$L9301:

; 5102 : 
; 5103 :             if ( nRC )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	SHORT $L9302

; 5104 :                break;

	jmp	$L9290
$L9302:

; 5106 : 
; 5107 :          if ( vWork == 0 )

	cmp	DWORD PTR _vWork$[ebp], 0
	jne	SHORT $L9303

; 5108 :             CreateViewFromViewForTask( &vWork, lpView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _vWork$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12
$L9303:

; 5109 : 
; 5110 :          lpViewEntityCsr = fnEstablishViewForInstance( vWork, 0, lpWorkInstance );

	mov	eax, DWORD PTR _lpWorkInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _vWork$[ebp]
	push	ecx
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 5111 :          lpViewEntity = zGETPTR( lpWorkInstance->hViewEntity );

	mov	edx, DWORD PTR _lpWorkInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 5112 :          if ( bAccept )

	mov	ecx, DWORD PTR _bAccept$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L9305

; 5113 :             nRC = AcceptSubobject( vWork, lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _vWork$[ebp]
	push	eax
	call	_AcceptSubobject@8
	mov	WORD PTR _nRC$[ebp], ax

; 5114 :          else

	jmp	SHORT $L9306
$L9305:

; 5115 :             nRC = CancelSubobject( vWork, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _vWork$[ebp]
	push	edx
	call	_CancelSubobject@8
	mov	WORD PTR _nRC$[ebp], ax
$L9306:

; 5116 : 
; 5117 :          if ( nRC < zCURSOR_UNDEFINED || lpViewOI->nVersionedInstances == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	cmp	eax, -2					; fffffffeH
	jl	SHORT $L9308
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	test	edx, edx
	jne	SHORT $L9310
$L9308:

; 5119 :             DropView( vWork );

	mov	eax, DWORD PTR _vWork$[ebp]
	push	eax
	call	_DropView@4

; 5120 : 
; 5121 :             if ( lpViewOI->nVersionedInstances == 0 )

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	movsx	edx, WORD PTR [ecx+22]
	test	edx, edx
	jne	SHORT $L9309

; 5122 :                return( 0 );

	xor	ax, ax
	jmp	SHORT $L9269
$L9309:

; 5123 :             else
; 5124 :                return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	SHORT $L9269
$L9310:

; 5126 : 
; 5127 :          // Get the instance pointer from the cursor after the accept or
; 5128 :          // cancel call.
; 5129 :          lpWorkInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkInstance$[ebp], eax
$L9291:

; 5131 : 
; 5132 :       lpWorkInstance = zGETPTR( lpWorkInstance->hPrevHier );

	mov	edx, DWORD PTR _lpWorkInstance$[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWorkInstance$[ebp], eax

; 5133 :    }

	jmp	$L9284
$L9290:

; 5134 : 
; 5135 :    if ( vWork )

	cmp	DWORD PTR _vWork$[ebp], 0
	je	SHORT $L9313

; 5136 :       DropView( vWork );

	mov	ecx, DWORD PTR _vWork$[ebp]
	push	ecx
	call	_DropView@4
$L9313:

; 5137 : 
; 5138 :    return( 0 );

	xor	ax, ax
$L9269:

; 5139 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnRemoveAllChildTemporalVsns ENDP
_TEXT	ENDS
PUBLIC	_fnRemoveOtherOI_LinkedInstances
_TEXT	SEGMENT
_lpTgtEntityInstance$ = 8
_lpSrcEntityInstance$ = 12
_lTgtERRelTok$ = -8
_hSrcViewOI$ = -16
_hTgtViewOI$ = -12
_lpViewEntity$ = -24
_lpWkViewEntity$ = -4
_lpWk1$ = -20
_lpWk2$ = -28
_lpWk3$ = -32
_fnRemoveOtherOI_LinkedInstances PROC NEAR

; 5162 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 5163 :    zLONG            lTgtERRelTok;
; 5164 :    LPVIEWOI         hSrcViewOI;
; 5165 :    LPVIEWOI         hTgtViewOI;
; 5166 :    LPVIEWENTITY     lpViewEntity;
; 5167 :    LPVIEWENTITY     lpWkViewEntity;
; 5168 :    LPENTITYINSTANCE lpWk1;
; 5169 :    LPENTITYINSTANCE lpWk2;
; 5170 :    LPENTITYINSTANCE lpWk3;
; 5171 : 
; 5172 :    lpViewEntity = zGETPTR( lpTgtEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 5173 :    lTgtERRelTok = lpViewEntity->lERRelTok;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+199]
	mov	DWORD PTR _lTgtERRelTok$[ebp], eax

; 5174 :    hSrcViewOI   = lpSrcEntityInstance->hViewOI;

	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	mov	DWORD PTR _hSrcViewOI$[ebp], edx

; 5175 :    hTgtViewOI   = lpTgtEntityInstance->hViewOI;

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	mov	DWORD PTR _hTgtViewOI$[ebp], ecx

; 5176 : 
; 5177 :    // First, see if there are any entity instances linked to this
; 5178 :    // instance which are in a different ViewOI, if not so, then return.
; 5179 :    lpWk1 = zGETPTR( lpTgtEntityInstance->hNextLinked );

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk1$[ebp], eax

; 5180 :    if ( lpWk1 )

	cmp	DWORD PTR _lpWk1$[ebp], 0
	je	SHORT $L9329

; 5181 :       lpWkViewEntity = zGETPTR( lpWk1->hViewEntity );

	mov	ecx, DWORD PTR _lpWk1$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax
$L9329:

; 5182 :    while ( lpWk1 && lpWk1 != lpTgtEntityInstance &&
; 5183 :            ( lpWk1->hViewOI == hTgtViewOI ||
; 5184 :              lpWk1->hViewOI == hSrcViewOI ||
; 5185 :              lTgtERRelTok == lpWkViewEntity->lERRelTok) )

	cmp	DWORD PTR _lpWk1$[ebp], 0
	je	SHORT $L9333
	mov	eax, DWORD PTR _lpWk1$[ebp]
	cmp	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	je	SHORT $L9333
	mov	ecx, DWORD PTR _lpWk1$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	cmp	edx, DWORD PTR _hTgtViewOI$[ebp]
	je	SHORT $L9334
	mov	eax, DWORD PTR _lpWk1$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	cmp	ecx, DWORD PTR _hSrcViewOI$[ebp]
	je	SHORT $L9334
	mov	edx, DWORD PTR _lpWkViewEntity$[ebp]
	mov	eax, DWORD PTR _lTgtERRelTok$[ebp]
	cmp	eax, DWORD PTR [edx+199]
	jne	SHORT $L9333
$L9334:

; 5187 :       lpWk1 = zGETPTR( lpWk1->hNextLinked );

	mov	ecx, DWORD PTR _lpWk1$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk1$[ebp], eax

; 5188 :       lpWkViewEntity = zGETPTR( lpWk1->hViewEntity );

	mov	eax, DWORD PTR _lpWk1$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax

; 5189 :    }

	jmp	SHORT $L9329
$L9333:

; 5190 : 
; 5191 :    if ( lpWk1 == 0 || lpWk1 == lpTgtEntityInstance )

	cmp	DWORD PTR _lpWk1$[ebp], 0
	je	SHORT $L9338
	mov	edx, DWORD PTR _lpWk1$[ebp]
	cmp	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	jne	SHORT $L9337
$L9338:

; 5192 :       return( 0 );

	xor	ax, ax
	jmp	$L9318
$L9337:

; 5193 : 
; 5194 :    // lpWk1 now points to the first Entity instance found which is
; 5195 :    // not part of the same object instance as the entity instance
; 5196 :    // passed, remove it from the link chain.
; 5197 :    lpWk2 = lpTgtEntityInstance;

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR _lpWk2$[ebp], eax
$L9341:

; 5198 :    while ( zGETPTR( lpWk2->hNextLinked ) != lpWk1 )

	mov	ecx, DWORD PTR _lpWk2$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpWk1$[ebp]
	je	SHORT $L9342

; 5200 :       lpWk2 = zGETPTR( lpWk2->hNextLinked );

	mov	eax, DWORD PTR _lpWk2$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk2$[ebp], eax

; 5201 :    }

	jmp	SHORT $L9341
$L9342:

; 5202 : 
; 5203 :    if ( zGETPTR( lpWk1->hNextLinked ) == lpWk2 )

	mov	edx, DWORD PTR _lpWk1$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpWk2$[ebp]
	jne	SHORT $L9345

; 5204 :       lpWk2->hNextLinked = 0;

	mov	ecx, DWORD PTR _lpWk2$[ebp]
	mov	DWORD PTR [ecx+42], 0

; 5205 :    else

	jmp	SHORT $L9346
$L9345:

; 5206 :       lpWk2->hNextLinked = lpWk1->hNextLinked;

	mov	edx, DWORD PTR _lpWk2$[ebp]
	mov	eax, DWORD PTR _lpWk1$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	mov	DWORD PTR [edx+42], ecx
$L9346:

; 5207 : 
; 5208 :    lpWk1->hNextLinked = 0;

	mov	edx, DWORD PTR _lpWk1$[ebp]
	mov	DWORD PTR [edx+42], 0
$L9348:

; 5213 :       if ( lpTgtEntityInstance->hNextLinked == 0 )

	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	cmp	DWORD PTR [eax+42], 0
	jne	SHORT $L9350

; 5214 :          break;

	jmp	$L9349
$L9350:

; 5215 : 
; 5216 :       lpWk2 = lpTgtEntityInstance;

	mov	ecx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR _lpWk2$[ebp], ecx

; 5217 :       lpWk3 = zGETPTR( lpWk2->hNextLinked );

	mov	edx, DWORD PTR _lpWk2$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk3$[ebp], eax

; 5218 :       lpViewEntity = zGETPTR( lpWk3->hViewEntity );

	mov	ecx, DWORD PTR _lpWk3$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax
$L9354:

; 5219 :       while ( lpWk3 != lpTgtEntityInstance &&
; 5220 :               ( lpWk3->hViewOI == hTgtViewOI ||
; 5221 :                 lpWk3->hViewOI == hSrcViewOI ||
; 5222 :                 lTgtERRelTok == lpViewEntity->lERRelTok) )

	mov	eax, DWORD PTR _lpWk3$[ebp]
	cmp	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	je	SHORT $L9355
	mov	ecx, DWORD PTR _lpWk3$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	cmp	edx, DWORD PTR _hTgtViewOI$[ebp]
	je	SHORT $L9356
	mov	eax, DWORD PTR _lpWk3$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	cmp	ecx, DWORD PTR _hSrcViewOI$[ebp]
	je	SHORT $L9356
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR _lTgtERRelTok$[ebp]
	cmp	eax, DWORD PTR [edx+199]
	jne	SHORT $L9355
$L9356:

; 5224 :          lpWk2 = lpWk3;

	mov	ecx, DWORD PTR _lpWk3$[ebp]
	mov	DWORD PTR _lpWk2$[ebp], ecx

; 5225 :          lpWk3 = zGETPTR( lpWk3->hNextLinked );

	mov	edx, DWORD PTR _lpWk3$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk3$[ebp], eax

; 5226 :          lpViewEntity = zGETPTR( lpWk3->hViewEntity );

	mov	ecx, DWORD PTR _lpWk3$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 5227 :       }

	jmp	SHORT $L9354
$L9355:

; 5228 : 
; 5229 :       // If lpWk3 is in another object instance, remove it from the other
; 5230 :       // instance and link it up to lpWk1. lpWk2 is currently chained
; 5231 :       // to lpWk3 in order to make unchaining easier.
; 5232 :       if ( lpWk3 != lpTgtEntityInstance )

	mov	eax, DWORD PTR _lpWk3$[ebp]
	cmp	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	je	SHORT $L9359

; 5234 :          if ( lpWk3->hNextLinked == zGETHNDL( lpWk2 ) )

	mov	ecx, DWORD PTR _lpWk2$[ebp]
	push	ecx
	call	DWORD PTR _g_pfnGetHndl
	mov	edx, DWORD PTR _lpWk3$[ebp]
	cmp	DWORD PTR [edx+42], eax
	jne	SHORT $L9361

; 5235 :             lpWk2->hNextLinked = 0;

	mov	eax, DWORD PTR _lpWk2$[ebp]
	mov	DWORD PTR [eax+42], 0

; 5236 :          else

	jmp	SHORT $L9362
$L9361:

; 5237 :             lpWk2->hNextLinked = lpWk3->hNextLinked;

	mov	ecx, DWORD PTR _lpWk2$[ebp]
	mov	edx, DWORD PTR _lpWk3$[ebp]
	mov	eax, DWORD PTR [edx+42]
	mov	DWORD PTR [ecx+42], eax
$L9362:

; 5238 : 
; 5239 :          if ( lpWk1->hNextLinked == 0 )

	mov	ecx, DWORD PTR _lpWk1$[ebp]
	cmp	DWORD PTR [ecx+42], 0
	jne	SHORT $L9363

; 5240 :             lpWk3->hNextLinked = zGETHNDL( lpWk1 );

	mov	edx, DWORD PTR _lpWk1$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpWk3$[ebp]
	mov	DWORD PTR [ecx+42], eax

; 5241 :          else

	jmp	SHORT $L9365
$L9363:

; 5242 :             lpWk3->hNextLinked = lpWk1->hNextLinked;

	mov	edx, DWORD PTR _lpWk3$[ebp]
	mov	eax, DWORD PTR _lpWk1$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	mov	DWORD PTR [edx+42], ecx
$L9365:

; 5243 : 
; 5244 :          lpWk1->hNextLinked = zGETHNDL( lpWk3 );

	mov	edx, DWORD PTR _lpWk3$[ebp]
	push	edx
	call	DWORD PTR _g_pfnGetHndl
	mov	ecx, DWORD PTR _lpWk1$[ebp]
	mov	DWORD PTR [ecx+42], eax

; 5246 :       else

	jmp	SHORT $L9367
$L9359:

; 5247 :          break;

	jmp	SHORT $L9349
$L9367:

; 5248 :    }

	jmp	$L9348
$L9349:

; 5249 : 
; 5250 :    // Finally, zero all the record pointers from lpTgtEntityInstance and
; 5251 :    // its linked instances
; 5252 :    lpWk2 = lpTgtEntityInstance;

	mov	edx, DWORD PTR _lpTgtEntityInstance$[ebp]
	mov	DWORD PTR _lpWk2$[ebp], edx
$L9368:

; 5255 :       lpWk3 = lpWk2;

	mov	eax, DWORD PTR _lpWk2$[ebp]
	mov	DWORD PTR _lpWk3$[ebp], eax
$L9372:

; 5256 :       while ( lpWk3->hPrevVsn )

	mov	ecx, DWORD PTR _lpWk3$[ebp]
	cmp	DWORD PTR [ecx+38], 0
	je	SHORT $L9373

; 5257 :          lpWk3 = zGETPTR( lpWk3->hPrevVsn );

	mov	edx, DWORD PTR _lpWk3$[ebp]
	mov	eax, DWORD PTR [edx+38]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk3$[ebp], eax
	jmp	SHORT $L9372
$L9373:

; 5258 : 
; 5259 :       while ( lpWk3 )

	cmp	DWORD PTR _lpWk3$[ebp], 0
	je	SHORT $L9377

; 5261 :          if ( lpWk3->hPersistRecord == lpWk1->hPersistRecord )

	mov	ecx, DWORD PTR _lpWk3$[ebp]
	mov	edx, DWORD PTR _lpWk1$[ebp]
	mov	eax, DWORD PTR [ecx+60]
	cmp	eax, DWORD PTR [edx+60]
	jne	SHORT $L9378

; 5262 :             lpWk3->hPersistRecord = 0;

	mov	ecx, DWORD PTR _lpWk3$[ebp]
	mov	DWORD PTR [ecx+60], 0
$L9378:

; 5263 : 
; 5264 :          lpWk3 = zGETPTR( lpWk3->hNextVsn );

	mov	edx, DWORD PTR _lpWk3$[ebp]
	mov	eax, DWORD PTR [edx+34]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk3$[ebp], eax

; 5265 :       }

	jmp	SHORT $L9373
$L9377:

; 5266 : 
; 5267 :       lpWk2 = zGETPTR( lpWk2->hNextLinked );

	mov	ecx, DWORD PTR _lpWk2$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWk2$[ebp], eax

; 5268 : 
; 5269 :    }  while ( lpWk2 && lpWk2 != lpTgtEntityInstance );

	cmp	DWORD PTR _lpWk2$[ebp], 0
	je	SHORT $L9381
	mov	eax, DWORD PTR _lpWk2$[ebp]
	cmp	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	jne	SHORT $L9368
$L9381:

; 5270 : 
; 5271 :    return( 0 );

	xor	ax, ax
$L9318:

; 5272 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnRemoveOtherOI_LinkedInstances ENDP
_TEXT	ENDS
PUBLIC	_fnEntityInRecursivePath
_TEXT	SEGMENT
_lpViewEntity$ = 8
_lpWkViewEntity$ = -4
_fnEntityInRecursivePath PROC NEAR

; 5293 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 5294 :    LPVIEWENTITY lpWkViewEntity;
; 5295 : 
; 5296 :    if ( lpViewEntity->bRecursive )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9386

; 5297 :       return( 1 );

	mov	al, 1
	jmp	$L9384
$L9386:

; 5298 : 
; 5299 :    while ( lpViewEntity )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	$L9389
$L9391:

; 5301 :       while ( lpViewEntity && lpViewEntity->bRecursivePar == FALSE )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	SHORT $L9392
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 29					; 0000001dH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9392

; 5302 :          lpViewEntity = zGETPTR( lpViewEntity->hParent );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	jmp	SHORT $L9391
$L9392:

; 5303 : 
; 5304 :       if ( lpViewEntity )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	SHORT $L9394

; 5306 :          lpWkViewEntity = zGETPTR( lpViewEntity->hNextHier );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax
$L9397:

; 5307 : 
; 5308 :          while ( lpWkViewEntity &&
; 5309 :                  lpWkViewEntity->nLevel > lpViewEntity->nLevel )

	cmp	DWORD PTR _lpWkViewEntity$[ebp], 0
	je	SHORT $L9398
	mov	edx, DWORD PTR _lpWkViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	cmp	eax, edx
	jle	SHORT $L9398

; 5311 :             if ( lpWkViewEntity->bRecursive &&
; 5312 :                  lpWkViewEntity->lEREntTok == lpViewEntity->lEREntTok )

	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9399
	mov	edx, DWORD PTR _lpWkViewEntity$[ebp]
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [edx+195]
	cmp	ecx, DWORD PTR [eax+195]
	jne	SHORT $L9399

; 5314 :                return( 1 );

	mov	al, 1
	jmp	SHORT $L9384
$L9399:

; 5316 : 
; 5317 :             lpWkViewEntity = zGETPTR( lpWkViewEntity->hNextHier );

	mov	edx, DWORD PTR _lpWkViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax

; 5318 :          }

	jmp	SHORT $L9397
$L9398:

; 5319 : 
; 5320 :          lpViewEntity = zGETPTR( lpViewEntity->hParent );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax
$L9394:

; 5322 :    }

	jmp	$L9386
$L9389:

; 5323 : 
; 5324 :    return( 0 );

	xor	al, al
$L9384:

; 5325 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnEntityInRecursivePath ENDP
_TEXT	ENDS
PUBLIC	_fnFirstLevel2_ForViewEntity
_TEXT	SEGMENT
_lpStartEntityInstance$ = 8
_lpViewEntity$ = 12
_lpWkViewEntity$ = -4
_fnFirstLevel2_ForViewEntity PROC NEAR

; 5345 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 5346 :    LPVIEWENTITY lpWkViewEntity;
; 5347 : 
; 5348 :    if ( lpViewEntity->nLevel < 2 )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	cmp	ecx, 2
	jge	SHORT $L9408

; 5349 :       return( lpStartEntityInstance );

	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	jmp	$L9419
$L9408:

; 5350 : 
; 5351 :    while ( lpViewEntity->nLevel > 2 )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	cmp	eax, 2
	jle	SHORT $L9411

; 5352 :       lpViewEntity = zGETPTR( lpViewEntity->hParent );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	jmp	SHORT $L9408
$L9411:

; 5353 : 
; 5354 :    while ( lpStartEntityInstance && lpStartEntityInstance->nLevel == 1 )

	cmp	DWORD PTR _lpStartEntityInstance$[ebp], 0
	je	SHORT $L9415
	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	cmp	ecx, 1
	jne	SHORT $L9415

; 5355 :       lpStartEntityInstance = zGETPTR( lpStartEntityInstance->hNextHier );

	mov	edx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartEntityInstance$[ebp], eax
	jmp	SHORT $L9411
$L9415:

; 5359 :       if ( lpStartEntityInstance == 0 )

	cmp	DWORD PTR _lpStartEntityInstance$[ebp], 0
	jne	SHORT $L9420

; 5360 :          return( 0 );

	xor	eax, eax
	jmp	SHORT $L9419
$L9420:

; 5361 : 
; 5362 :       lpWkViewEntity = zGETPTR( lpStartEntityInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpWkViewEntity$[ebp], eax

; 5363 :       if ( lpWkViewEntity->nHierNbr < lpViewEntity->nHierNbr )

	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+217]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	cmp	ecx, eax
	jge	SHORT $L9422

; 5365 :          if ( lpStartEntityInstance->hNextTwin )

	mov	ecx, DWORD PTR _lpStartEntityInstance$[ebp]
	cmp	DWORD PTR [ecx+22], 0
	je	SHORT $L9423

; 5366 :             lpStartEntityInstance = zGETPTR( lpStartEntityInstance->hNextTwin );

	mov	edx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartEntityInstance$[ebp], eax

; 5367 :          else

	jmp	SHORT $L9425
$L9423:

; 5368 :             lpStartEntityInstance = zGETPTR( lpStartEntityInstance->hNextHier );

	mov	ecx, DWORD PTR _lpStartEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartEntityInstance$[ebp], eax
$L9425:

; 5370 :       else

	jmp	SHORT $L9429
$L9422:

; 5371 :       if ( lpWkViewEntity->nHierNbr > lpViewEntity->nHierNbr )

	mov	eax, DWORD PTR _lpWkViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+217]
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	cmp	ecx, eax
	jle	SHORT $L9428

; 5372 :          return( 0 );

	xor	eax, eax
	jmp	SHORT $L9419
$L9428:

; 5373 :       else
; 5374 :          return( lpStartEntityInstance );

	mov	eax, DWORD PTR _lpStartEntityInstance$[ebp]
	jmp	SHORT $L9419
$L9429:

; 5375 :         }

	jmp	$L9415
$L9419:

; 5376 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnFirstLevel2_ForViewEntity ENDP
_TEXT	ENDS
PUBLIC	_fnStillPrevVersion
_TEXT	SEGMENT
_lpEntityInstance$ = 8
_lpLinked$ = -4
_fnStillPrevVersion PROC NEAR

; 5392 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 5393 :    LPENTITYINSTANCE lpLinked;
; 5394 : 
; 5395 :    if ( lpEntityInstance->hNextVsn )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	cmp	DWORD PTR [eax+34], 0
	je	SHORT $L9434

; 5396 :       return( 1 );

	mov	al, 1
	jmp	SHORT $L9432
$L9434:

; 5397 : 
; 5398 :    lpLinked = zGETPTR( lpEntityInstance->hNextLinked );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+42]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinked$[ebp], eax
$L9437:

; 5399 :    while ( lpLinked && lpLinked != lpEntityInstance )

	cmp	DWORD PTR _lpLinked$[ebp], 0
	je	SHORT $L9438
	mov	eax, DWORD PTR _lpLinked$[ebp]
	cmp	eax, DWORD PTR _lpEntityInstance$[ebp]
	je	SHORT $L9438

; 5401 :       if ( lpLinked->hNextVsn )

	mov	ecx, DWORD PTR _lpLinked$[ebp]
	cmp	DWORD PTR [ecx+34], 0
	je	SHORT $L9439

; 5402 :          return( 1 );

	mov	al, 1
	jmp	SHORT $L9432
$L9439:

; 5403 : 
; 5404 :       lpLinked = zGETPTR( lpLinked->hNextLinked );

	mov	edx, DWORD PTR _lpLinked$[ebp]
	mov	eax, DWORD PTR [edx+42]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLinked$[ebp], eax

; 5405 :    }

	jmp	SHORT $L9437
$L9438:

; 5406 : 
; 5407 :    lpEntityInstance->u.nInd.bPrevVersion = FALSE;

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	and	dh, -2					; fffffffeH
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR [eax+6], edx

; 5408 :    return( 0 );

	xor	al, al
$L9432:

; 5409 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnStillPrevVersion ENDP
_TEXT	ENDS
PUBLIC	_fnEntityContainsEntity@8
_TEXT	SEGMENT
_lpVE1$ = 8
_lpVE2$ = 12
_lpViewAttrib2$ = -4
_lpViewAttrib1$ = -8
_fnEntityContainsEntity@8 PROC NEAR

; 5431 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 5432 :    LPVIEWATTRIB lpViewAttrib2;
; 5433 :    LPVIEWATTRIB lpViewAttrib1;
; 5434 : 
; 5435 :    // They had better be the same ER entity.
; 5436 :    if ( lpVE1->lEREntTok != lpVE2->lEREntTok )

	mov	eax, DWORD PTR _lpVE1$[ebp]
	mov	ecx, DWORD PTR _lpVE2$[ebp]
	mov	edx, DWORD PTR [eax+195]
	cmp	edx, DWORD PTR [ecx+195]
	je	SHORT $L9448

; 5437 :       return( FALSE );

	xor	al, al
	jmp	$L9445
$L9448:

; 5438 : 
; 5439 :    if ( lpVE2 == lpVE1 )

	mov	eax, DWORD PTR _lpVE2$[ebp]
	cmp	eax, DWORD PTR _lpVE1$[ebp]
	jne	SHORT $L9449

; 5440 :       return( TRUE );

	mov	al, 1
	jmp	$L9445
$L9449:

; 5441 : 
; 5442 :    if ( lpVE2->bFullPersist && lpVE1->bFullPersist )

	mov	ecx, DWORD PTR _lpVE2$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 22					; 00000016H
	and	edx, 1
	test	edx, edx
	je	SHORT $L9450
	mov	eax, DWORD PTR _lpVE1$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 22					; 00000016H
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9450

; 5443 :       return( TRUE );

	mov	al, 1
	jmp	$L9445
$L9450:

; 5444 : 
; 5445 :    // OK...the two enties are not the same AND one of the entities is
; 5446 :    // not fully persistent.  Look for hidden attributes.
; 5447 :    for ( lpViewAttrib2 = zGETPTR( lpVE2->hFirstOD_Attrib );
; 5448 :          lpViewAttrib2;
; 5449 :          lpViewAttrib2 = zGETPTR( lpViewAttrib2->hNextOD_Attrib ) )

	mov	edx, DWORD PTR _lpVE2$[ebp]
	mov	eax, DWORD PTR [edx+179]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib2$[ebp], eax
	jmp	SHORT $L9453
$L9454:
	mov	ecx, DWORD PTR _lpViewAttrib2$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib2$[ebp], eax
$L9453:
	cmp	DWORD PTR _lpViewAttrib2$[ebp], 0
	je	$L9455

; 5451 :       // We don't care if the 'source' attribute is hidden.
; 5452 :       if ( lpViewAttrib2->bHidden &&
; 5453 :            lpViewAttrib2->bKey == FALSE &&
; 5454 :            lpViewAttrib2->bForeignKey == FALSE )

	mov	eax, DWORD PTR _lpViewAttrib2$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 5
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L9456
	mov	edx, DWORD PTR _lpViewAttrib2$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9456
	mov	ecx, DWORD PTR _lpViewAttrib2$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 2
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9456

; 5456 :          continue;

	jmp	SHORT $L9454
$L9456:

; 5458 : 
; 5459 :       // See if there is a matching attribute in the cache entity.
; 5460 :       for ( lpViewAttrib1 = zGETPTR( lpVE1->hFirstOD_Attrib );
; 5461 :             lpViewAttrib1;
; 5462 :             lpViewAttrib1 = zGETPTR( lpViewAttrib1->hNextOD_Attrib ) )

	mov	eax, DWORD PTR _lpVE1$[ebp]
	mov	ecx, DWORD PTR [eax+179]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib1$[ebp], eax
	jmp	SHORT $L9459
$L9460:
	mov	edx, DWORD PTR _lpViewAttrib1$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib1$[ebp], eax
$L9459:
	cmp	DWORD PTR _lpViewAttrib1$[ebp], 0
	je	SHORT $L9461

; 5464 :          if ( lpViewAttrib1->lERAttTok == lpViewAttrib2->lERAttTok )

	mov	ecx, DWORD PTR _lpViewAttrib1$[ebp]
	mov	edx, DWORD PTR _lpViewAttrib2$[ebp]
	mov	eax, DWORD PTR [ecx+177]
	cmp	eax, DWORD PTR [edx+177]
	jne	SHORT $L9462

; 5465 :             break;

	jmp	SHORT $L9461
$L9462:

; 5466 :       }

	jmp	SHORT $L9460
$L9461:

; 5467 : 
; 5468 :       // If we didn't find a matching attribute or if the attribute we
; 5469 :       // found is hidden then set compare to FALSE.
; 5470 :       if ( lpViewAttrib1 == 0 ||
; 5471 :            (lpViewAttrib1->bHidden && lpViewAttrib1->bKey == FALSE &&
; 5472 :             lpViewAttrib1->bForeignKey == FALSE) )

	cmp	DWORD PTR _lpViewAttrib1$[ebp], 0
	je	SHORT $L9464
	mov	ecx, DWORD PTR _lpViewAttrib1$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	je	SHORT $L9463
	mov	eax, DWORD PTR _lpViewAttrib1$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9463
	mov	edx, DWORD PTR _lpViewAttrib1$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 2
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9463
$L9464:

; 5474 :          // We found a non-hidden attribute in lpVE2 that is not part of
; 5475 :          // lpVE1 so return FALSE.
; 5476 :          return( FALSE );

	xor	al, al
	jmp	SHORT $L9445
$L9463:

; 5478 : 
; 5479 :    } // for ( lpViewAttrib2 )...

	jmp	$L9454
$L9455:

; 5480 : 
; 5481 :    return( TRUE );

	mov	al, 1
$L9445:

; 5482 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_fnEntityContainsEntity@8 ENDP
_lpViewOI$ = 8
_lpLoopInstance$ = -8
_lpViewEntity$ = -4
_fnCheckOIUpdated PROC NEAR

; 5502 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 5503 :    LPENTITYINSTANCE lpLoopInstance;
; 5504 :    LPVIEWENTITY lpViewEntity;
; 5505 : 
; 5506 :    lpViewOI->bUpdated = lpViewOI->bUpdatedFile = FALSE;

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	and	ecx, -33				; ffffffdfH
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [edx+36], ecx
	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	and	ecx, -17				; ffffffefH
	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [edx+36], ecx

; 5507 : 
; 5508 :    // Loop through the entity instances.
; 5509 :    for ( lpLoopInstance = zGETPTR( lpViewOI->hRootEntityInstance );
; 5510 :          lpLoopInstance && lpViewOI->bUpdated == FALSE;
; 5511 :          lpLoopInstance = zGETPTR( lpLoopInstance->hNextHier ) )

	mov	eax, DWORD PTR _lpViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLoopInstance$[ebp], eax
	jmp	SHORT $L9472
$L9473:
	mov	edx, DWORD PTR _lpLoopInstance$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpLoopInstance$[ebp], eax
$L9472:
	cmp	DWORD PTR _lpLoopInstance$[ebp], 0
	je	$L9474
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	shr	edx, 4
	and	edx, 1
	test	edx, edx
	jne	$L9474

; 5513 :       // Check to see if the entity instance has been changed somehow.  If it has
; 5514 :       // then we need to flag the OI as being updated.  We ignore instances
; 5515 :       // that have a previous version because we can't tell yet if the OI will
; 5516 :       // be updated because of the versioned instance.
; 5517 :       if ( lpLoopInstance->hPrevVsn == 0 &&
; 5518 :            !fnEntityInstanceIsDead( lpLoopInstance ) &&
; 5519 :            (lpLoopInstance->u.nInd.bCreated  ||
; 5520 :             lpLoopInstance->u.nInd.bUpdated  ||
; 5521 :             lpLoopInstance->u.nInd.bDeleted  ||
; 5522 :             lpLoopInstance->u.nInd.bIncluded ||
; 5523 :             lpLoopInstance->u.nInd.bExcluded) )

	mov	eax, DWORD PTR _lpLoopInstance$[ebp]
	cmp	DWORD PTR [eax+38], 0
	jne	$L9475
	mov	ecx, DWORD PTR _lpLoopInstance$[ebp]
	push	ecx
	call	_fnEntityInstanceIsDead@4
	movsx	edx, ax
	test	edx, edx
	jne	$L9475
	mov	eax, DWORD PTR _lpLoopInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9476
	mov	edx, DWORD PTR _lpLoopInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 2
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9476
	mov	ecx, DWORD PTR _lpLoopInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 3
	and	edx, 1
	test	edx, edx
	jne	SHORT $L9476
	mov	eax, DWORD PTR _lpLoopInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 5
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9476
	mov	edx, DWORD PTR _lpLoopInstance$[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	je	SHORT $L9475
$L9476:

; 5525 :          lpViewEntity = zGETPTR( lpLoopInstance->hViewEntity );

	mov	ecx, DWORD PTR _lpLoopInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 5526 : 
; 5527 :          if ( lpViewEntity->bDerived == FALSE &&
; 5528 :               lpViewEntity->bDerivedPath == FALSE &&
; 5529 :               lpViewEntity->hFirstDataRecord != 0 )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 13					; 0000000dH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L9478
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 14					; 0000000eH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L9478
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [ecx+191], 0
	je	SHORT $L9478

; 5531 :             // The entity is a "database" entity (not work).
; 5532 :             lpViewOI->bUpdated = TRUE;

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	or	al, 16					; 00000010H
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [ecx+36], eax
$L9478:

; 5534 : 
; 5535 :          lpViewOI->bUpdatedFile = TRUE;

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	or	al, 32					; 00000020H
	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	DWORD PTR [ecx+36], eax
$L9475:

; 5537 :    }

	jmp	$L9473
$L9474:

; 5538 : 
; 5539 :    if ( lpViewOI->bUpdated )

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+36]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	je	SHORT $L9479

; 5540 :       return( 3 );

	mov	ax, 3
	jmp	SHORT $L9482
$L9479:

; 5541 :    else
; 5542 :    if ( lpViewOI->bUpdatedFile )

	mov	ecx, DWORD PTR _lpViewOI$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	je	SHORT $L9481

; 5543 :       return( 1 );

	mov	ax, 1
	jmp	SHORT $L9482
$L9481:

; 5544 :    else
; 5545 :       return( 0 );

	xor	ax, ax
$L9482:

; 5546 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnCheckOIUpdated ENDP
_TEXT	ENDS
END
