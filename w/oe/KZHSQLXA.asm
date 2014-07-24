	TITLE	C:\10C\a\oe\KZHSQLXA.C
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
;	COMDAT ??_C@_0CB@LKIL@Can?8t?5find?5DB?9Handler?5work?5view?4@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@PDLM@Zeidon?5DBH?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04FCOP@Type?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@JCLN@Apr?522?52014?516?304?359?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CD@BONL@Compile?5date?1time?5for?5KZHSQLXX?5i@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EL@FIPI@Internal?5error?5?9?9?5cannot?5find?5DB@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@CMMN@0x?$CF08x?3?$CF08x?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@FMEM@LogicalUserName?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@MDFJ@Connection?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CE@LBDN@TaskID?5not?5found?5for?5Task?3TaskID@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CA@EIKD@ERROR?5?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?5CloseDatabase?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@FLKG@ConnectionBlob?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DF@OLNF@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DF@CENA@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5?5BEGIN?5TRANSA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@GPBB@Storing?5Objects?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@CHIC@Activating?5Object?5Def?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@JILM@Database?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@NOKL@lpConnection?5is?5null?$CB?$CB?$CB?$CB?$CB?$CB?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DF@FMK@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5?5COMMIT?5TRANSA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DF@FDPI@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5ROLLBACK?5TRANSA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@HOFD@Key?5type?5not?5supported?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@JJNG@DBHandler?5Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DG@PFML@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Performing?5loa@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@BADB@?5?5Entity?5name?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@CCKC@?5?5Table?5name?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DE@IAL@?5?5Table?5loaded?5earlier?5as?5part?5o@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0FC@LJLO@XOD?5?8?$CFs?8?5needs?5to?5be?5saved?5with?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@NKII@DBHandler?5Warning?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@NJF@?5?5Table?5IS?5qualified?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@KKJ@?5?5Table?5is?5not?5qualified?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@FGHI@SQL?5might?5not?5be?5needed?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DG@OBLP@Loading?5entity?5from?5parent?5using@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@LFKB@Entity?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09EMIP@executed?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DD@LABC@Foreign?5key?5is?5null?0?5so?5followin@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@ECMK@Number?5of?5rows?5selected?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@JJEC@Compile?5SQL?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CG@KNGC@?$CIxa?$CJ?5Number?5of?5rows?5currently?5re@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@GFJJ@Duplicate?5row?5found?0?5entity?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@CBHC@TempString?$CFld?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@FPPH@Number?5of?5roots?5retrieved?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@PBBH@Number?5of?5rows?5?5retrieved?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@CHFK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Insert?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@ENOM@Inserting?5entity?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@LMHG@Inserting?5record?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CB@ODKK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Insert?5Rel?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@PEJM@Inserting?5rel?5for?5entity?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@FAG@Inserting?5rel?5for?5record?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07IHIH@PARENT?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06NCJM@CHILD?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@OIOI@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Delete?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@MCLG@Deleting?5entity?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@DDCM@Deleting?5record?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@IHKI@SqlBuildDeleteAll?5SQL?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CB@IFLO@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Delete?5Rel?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@HAHA@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Update?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@FKEG@Updating?5entity?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@KLNM@Updating?5record?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@GLLE@?$DN?$DN?$DN?$DN?$DN?5DBH_Entry?5Error?5?$DN?$DN?$DN?$DN?$DN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06CLGD@Msg?$DN?$DO?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06LKAC@nRC?$DN?$DO?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@FDAG@KZHSQLXX?5DBH?5Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07DOHJ@KZH0101?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@LCKO@Dummy?5Call?5?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@DDFB@Return?5Code?5?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CH@EANP@Too?5many?5open?5databases?5for?51?5se@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DK@DCLD@GetWorkObjectView?5RESETTING?5task@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06KKHG@TaskID?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@NIJE@Conn?5BEGIN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08ILLO@Conn?5END?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@ODNC@TraceLevel?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@HIKM@?$FLKZHSQLXX?$FN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06OMJI@__MSGQ?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09IMGK@DBH_Error?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_02FECH@Id?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04HDAF@Task?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08JIIE@KZMSGQOO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06BADI@Zeidon?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06DPMO@Client?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04GO@Code?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05PILG@State?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03IDDH@Msg?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@LFHP@Error?5performing?5Load?5for?5OD?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CB@GPGO@Error?5performing?5Insert?5for?5OD?3?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CE@LABG@Error?5performing?5InsertRel?5for?5O@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CB@HHED@Error?5performing?5Delete?5for?5OD?3?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CE@JBNJ@Error?5performing?5DeleteRel?5for?5O@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CB@IHCB@Error?5performing?5Update?5for?5OD?3?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@ICCD@Qualification?5View?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CC@LLKJ@?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@MMAH@Committing?5object?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08CBKH@TZTENVRO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@DNOO@TE_DB_Environ?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@BCDD@TE_DBMS_Source?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04EFNI@Name?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@NCMM@TE_TablRec?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@PJGE@TE_FieldDataRel?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06CAAP@Length?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08FNON@DataType?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09CEBI@IndexName?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@LKEB@TE_TablRecKey?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@JFAB@Retrieved?5From?5DB?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@EGMP@TE_FieldDataRelKey?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
_DATA	SEGMENT
COMM	_g_lCurrentProcessID:DWORD
COMM	_BoundAttrListRecord:BYTE:01aH
_?bShowDateTime@?1??InitDatabase@@9@9 DB 01H
_DATA	ENDS
PUBLIC	_fnAllocateConnectionMemory@16
EXTRN	_SysAllocMemory@20:NEAR
EXTRN	_SysFreeMemory@4:NEAR
EXTRN	_SysGetProcessID@4:NEAR
_TEXT	SEGMENT
_lpConnection$ = 12
_bSqlCmd$ = 16
_ulLth$ = 20
_fnAllocateConnectionMemory@16 PROC NEAR

; 557  : {

	push	ebp
	mov	ebp, esp

; 558  :    if ( bSqlCmd )

	mov	eax, DWORD PTR _bSqlCmd$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L57424

; 560  :    // TraceLine( "fnAllocateConnectionMemory (PRE ) for Task: 0x%08x   Connection.CmdMem.SqlCmd: 0x%08x.0x%08x.0x%08x  SQL Lth: %d",
; 561  :    //            SysGetTaskFromView( lpView ), lpConnection, lpConnection->hCmdMem, lpConnection->pchConnSqlCmd, ulLth ); // dks debug
; 562  : 
; 563  :       if ( lpConnection->hCmdMem )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	cmp	DWORD PTR [ecx+198], 0
	je	SHORT $L57425

; 565  :          SysFreeMemory( lpConnection->hCmdMem );

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+198]
	push	eax
	call	_SysFreeMemory@4

; 566  :          lpConnection->hCmdMem = 0;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [ecx+198], 0

; 567  :          lpConnection->pchConnSqlCmd = 0;

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [edx+194], 0
$L57425:

; 569  : 
; 570  :       if ( ulLth )

	cmp	DWORD PTR _ulLth$[ebp], 0
	je	SHORT $L57426

; 572  :          lpConnection->hCmdMem = SysAllocMemory( &lpConnection->pchConnSqlCmd,
; 573  :                                                  ulLth, 0, zCOREMEM_ALLOC, 0 );

	push	0
	push	32768					; 00008000H
	push	0
	mov	eax, DWORD PTR _ulLth$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	add	ecx, 194				; 000000c2H
	push	ecx
	call	_SysAllocMemory@20
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [edx+198], eax

; 574  :          lpConnection->lProcessID = SysGetProcessID( 0 );

	push	0
	call	_SysGetProcessID@4
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [ecx+780], eax
$L57426:

; 580  :    else

	jmp	$L57429
$L57424:

; 582  :    // TraceLine( "fnAllocateConnectionMemory (PRE ) for Task: 0x%08x   Connection.TblMem.Buffer: 0x%08x.0x%08x.0x%08x  TBL Lth: %d",
; 583  :    //            SysGetTaskFromView( lpView ), lpConnection, lpConnection->hTblMem, lpConnection->pchGlobalTableBuffer, ulLth ); // dks debug
; 584  :       if ( lpConnection->hTblMem )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	cmp	DWORD PTR [edx+210], 0
	je	SHORT $L57428

; 586  :          SysFreeMemory( lpConnection->hTblMem );

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+210]
	push	ecx
	call	_SysFreeMemory@4

; 587  :          lpConnection->hTblMem = 0;

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [edx+210], 0

; 588  :          lpConnection->pchGlobalTableBuffer = 0;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [eax+202], 0

; 589  :          lpConnection->lTblSize = 0;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [ecx+206], 0
$L57428:

; 591  : 
; 592  :       if ( ulLth )

	cmp	DWORD PTR _ulLth$[ebp], 0
	je	SHORT $L57429

; 594  :          lpConnection->hTblMem =
; 595  :                      SysAllocMemory( &lpConnection->pchGlobalTableBuffer,
; 596  :                                      ulLth, 0, zCOREMEM_ALLOC, 0 );

	push	0
	push	32768					; 00008000H
	push	0
	mov	edx, DWORD PTR _ulLth$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpConnection$[ebp]
	add	eax, 202				; 000000caH
	push	eax
	call	_SysAllocMemory@20
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [ecx+210], eax

; 597  :          lpConnection->lTblSize = ulLth;

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR _ulLth$[ebp]
	mov	DWORD PTR [edx+206], eax

; 598  :          lpConnection->lProcessID = SysGetProcessID( 0 );

	push	0
	call	_SysGetProcessID@4
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [ecx+780], eax
$L57429:

; 604  : 
; 605  :    return( 0 );

	xor	ax, ax

; 606  : }

	pop	ebp
	ret	16					; 00000010H
_fnAllocateConnectionMemory@16 ENDP
_TEXT	ENDS
PUBLIC	_DBH_Error
PUBLIC	_InitDatabase
PUBLIC	??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ ; `string'
PUBLIC	??_C@_0CB@LKIL@Can?8t?5find?5DB?9Handler?5work?5view?4@ ; `string'
PUBLIC	??_C@_0L@PDLM@Zeidon?5DBH?$AA@			; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_04FCOP@Type?$AA@				; `string'
PUBLIC	??_C@_0BF@JCLN@Apr?522?52014?516?304?359?$AA@	; `string'
PUBLIC	??_C@_0CD@BONL@Compile?5date?1time?5for?5KZHSQLXX?5i@ ; `string'
EXTRN	_GetViewByName@16:NEAR
EXTRN	_CreateEntity@12:NEAR
EXTRN	_SetCursorFirstEntityByString@20:NEAR
EXTRN	_SetAttributeFromString@16:NEAR
EXTRN	_SysMutexLock@16:NEAR
EXTRN	_SysMutexUnlock@12:NEAR
EXTRN	_TraceLineS@8:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@
_DATA	SEGMENT
??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ DB 'Zeidon DBHandler '
	DB	'Work Object', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CB@LKIL@Can?8t?5find?5DB?9Handler?5work?5view?4@
_DATA	SEGMENT
??_C@_0CB@LKIL@Can?8t?5find?5DB?9Handler?5work?5view?4@ DB 'Can''t find D'
	DB	'B-Handler work view.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@PDLM@Zeidon?5DBH?$AA@
_DATA	SEGMENT
??_C@_0L@PDLM@Zeidon?5DBH?$AA@ DB 'Zeidon DBH', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_04FCOP@Type?$AA@
_DATA	SEGMENT
??_C@_04FCOP@Type?$AA@ DB 'Type', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@JCLN@Apr?522?52014?516?304?359?$AA@
_DATA	SEGMENT
??_C@_0BF@JCLN@Apr?522?52014?516?304?359?$AA@ DB 'Apr 22 2014 16:04:59', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CD@BONL@Compile?5date?1time?5for?5KZHSQLXX?5i@
_DATA	SEGMENT
??_C@_0CD@BONL@Compile?5date?1time?5for?5KZHSQLXX?5i@ DB 'Compile date/ti'
	DB	'me for KZHSQLXX is ', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_szStr$ = -8
_vDbhWork$ = -12
_nRC$ = -4
_InitDatabase PROC NEAR

; 773  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 774  :    zCHAR        szStr[ 2 ];
; 775  :    zVIEW        vDbhWork;
; 776  :    zSHORT       nRC;
; 777  : 
; 778  :    static zBOOL bShowDateTime = TRUE;
; 779  : 
; 780  :    g_lCurrentProcessID = SysGetProcessID( 0 );

	push	0
	call	_SysGetProcessID@4
	mov	DWORD PTR _g_lCurrentProcessID, eax

; 781  : 
; 782  :    GetViewByName( &vDbhWork, zDBHANDLER_WORK_VIEW_NAME, lpView, zLEVEL_SYSTEM );

	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ ; `string'
	lea	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_GetViewByName@16

; 783  :    if ( vDbhWork == 0 )

	cmp	DWORD PTR _vDbhWork$[ebp], 0
	jne	SHORT $L57440

; 785  :       DBH_Error( lpView, "Can't find DB-Handler work view.", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_0CB@LKIL@Can?8t?5find?5DB?9Handler?5work?5view?4@ ; `string'
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_DBH_Error
	add	esp, 16					; 00000010H

; 786  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L57433
$L57440:

; 788  : 
; 789  :    SysMutexLock( lpView, "Zeidon DBH", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysMutexLock@16

; 790  : 
; 791  :    szStr[ 0 ] = zSQL_type;

	mov	BYTE PTR _szStr$[ebp], 88		; 00000058H

; 792  :    szStr[ 1 ] = 0;

	mov	BYTE PTR _szStr$[ebp+1], 0

; 793  : 
; 794  :    nRC = SetCursorFirstEntityByString( vDbhWork, "Type", "Type", szStr, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	ecx, DWORD PTR _szStr$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	mov	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	call	_SetCursorFirstEntityByString@20
	mov	WORD PTR _nRC$[ebp], ax

; 795  :    if ( nRC != zCURSOR_SET )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	SHORT $L57445

; 797  :       CreateEntity( vDbhWork, "Type", zPOS_AFTER );

	push	3
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_CreateEntity@12

; 798  :       SetAttributeFromString( vDbhWork, "Type", "Type", szStr );

	lea	edx, DWORD PTR _szStr$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	mov	eax, DWORD PTR _vDbhWork$[ebp]
	push	eax
	call	_SetAttributeFromString@16
$L57445:

; 817  : 
; 818  :    // Once-per-task initialization.
; 819  : #if defined( DB2 ) || defined( ODBC )
; 820  : 
; 821  :    if ( g_bHoldStmtHandles == 'X' )
; 822  :    {
; 823  :       zCHAR szValue[ 256 ] = "";
; 824  : 
; 825  :       SysReadZeidonIni( -1, "[kzhsqloa]", "HoldStmtHandles", szValue );
; 826  :       switch ( ztoupper( szValue[ 0 ] ) )
; 827  :       {
; 828  :          case 'F':
; 829  :          case 'N':
; 830  :          case '0':
; 831  :             g_bHoldStmtHandles = FALSE;
; 832  :             break;
; 833  : 
; 834  :          case 'T':
; 835  :          case 'Y':
; 836  :          case '1':
; 837  :             g_bHoldStmtHandles = TRUE;
; 838  :             break;
; 839  : 
; 840  :          default:
; 841  :             // We'll default DB2 to off until we can fix the problems.
; 842  :             #if defined( DB2 )
; 843  :                g_bHoldStmtHandles = FALSE;
; 844  :             #else
; 845  :                g_bHoldStmtHandles = TRUE;
; 846  :             #endif
; 847  : 
; 848  :             break;
; 849  :       }
; 850  : 
; 851  :       #if defined( ODBC )
; 852  :          GetAddrForAttribute( (zCOREMEM) &g_lpOdbcSystemInfo,
; 853  :                               vDbhWork, "Type", "TypeEnvBlob" );
; 854  :       #endif
; 855  :    }
; 856  : 
; 857  : #endif
; 858  : 
; 859  :    SysMutexUnlock( lpView, "Zeidon DBH", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SysMutexUnlock@12

; 860  : 
; 861  :    if ( bShowDateTime )

	xor	edx, edx
	mov	dl, BYTE PTR _?bShowDateTime@?1??InitDatabase@@9@9
	test	edx, edx
	je	SHORT $L57447

; 863  :       TraceLineS( "Compile date/time for " DBHANDLER_NAME " is ",
; 864  :                   __DATE__ " " __TIME__ );

	push	OFFSET FLAT:??_C@_0BF@JCLN@Apr?522?52014?516?304?359?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0CD@BONL@Compile?5date?1time?5for?5KZHSQLXX?5i@ ; `string'
	call	_TraceLineS@8

; 865  :       bShowDateTime = FALSE;

	mov	BYTE PTR _?bShowDateTime@?1??InitDatabase@@9@9, 0
$L57447:

; 867  : 
; 868  :    return( 0 );

	xor	ax, ax
$L57433:

; 869  : 
; 870  : }  /* InitDatabase */

	mov	esp, ebp
	pop	ebp
	ret	0
_InitDatabase ENDP
_TEXT	ENDS
PUBLIC	_CloseDatabase
PUBLIC	??_C@_0EL@FIPI@Internal?5error?5?9?9?5cannot?5find?5DB@ ; `string'
PUBLIC	??_C@_0M@CMMN@0x?$CF08x?3?$CF08x?$AA@		; `string'
PUBLIC	??_C@_0BA@FMEM@LogicalUserName?$AA@		; `string'
PUBLIC	??_C@_0L@MDFJ@Connection?$AA@			; `string'
PUBLIC	??_C@_0CE@LBDN@TaskID?5not?5found?5for?5Task?3TaskID@ ; `string'
PUBLIC	??_C@_0CA@EIKD@ERROR?5?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?5CloseDatabase?5?$AA@ ; `string'
PUBLIC	??_C@_0P@FLKG@ConnectionBlob?$AA@		; `string'
EXTRN	_DropView@4:NEAR
EXTRN	_SfDropSubtask@8:NEAR
EXTRN	_DeleteEntity@12:NEAR
EXTRN	_SetCursorNextEntity@12:NEAR
EXTRN	_SetCursorFirstEntity@12:NEAR
EXTRN	__imp__sprintf:NEAR
EXTRN	_SysGetTaskFromView@4:NEAR
EXTRN	_SetAttributeFromBlob@20:NEAR
EXTRN	_DisplayObjectInstance@12:NEAR
EXTRN	_SqlFreeQualEntity@4:NEAR
EXTRN	_strlen:NEAR
EXTRN	__imp__strncmp:NEAR
EXTRN	_GetAddrForAttribute@16:NEAR
;	COMDAT ??_C@_0EL@FIPI@Internal?5error?5?9?9?5cannot?5find?5DB@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0EL@FIPI@Internal?5error?5?9?9?5cannot?5find?5DB@ DB 'Internal erro'
	DB	'r -- cannot find DB Base type (%s) in db-handler work object.'
	DB	00H						; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@CMMN@0x?$CF08x?3?$CF08x?$AA@
_DATA	SEGMENT
??_C@_0M@CMMN@0x?$CF08x?3?$CF08x?$AA@ DB '0x%08x:%08x', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@FMEM@LogicalUserName?$AA@
_DATA	SEGMENT
??_C@_0BA@FMEM@LogicalUserName?$AA@ DB 'LogicalUserName', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@MDFJ@Connection?$AA@
_DATA	SEGMENT
??_C@_0L@MDFJ@Connection?$AA@ DB 'Connection', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CE@LBDN@TaskID?5not?5found?5for?5Task?3TaskID@
_DATA	SEGMENT
??_C@_0CE@LBDN@TaskID?5not?5found?5for?5Task?3TaskID@ DB 'TaskID not foun'
	DB	'd for Task:TaskID %s', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CA@EIKD@ERROR?5?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?5CloseDatabase?5?$AA@
_DATA	SEGMENT
??_C@_0CA@EIKD@ERROR?5?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?5CloseDatabase?5?$AA@ DB 'E'
	DB	'RROR ********** CloseDatabase ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@FLKG@ConnectionBlob?$AA@
_DATA	SEGMENT
??_C@_0P@FLKG@ConnectionBlob?$AA@ DB 'ConnectionBlob', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpConnection$ = -8
_szLogicalName$ = -84
_szStr$ = -12
_vDbhWork$ = -20
_hTask$ = -16
_nRC2$ = -88
_nRC$ = -4
_szMsg$57466 = -344
_pch$57473 = -348
_nLth$57474 = -352
_szMsg$57480 = -608
_k$57486 = -612
_CloseDatabase PROC NEAR

; 881  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 612				; 00000264H

; 882  :    LPCONNECTION lpConnection;
; 883  :    zCHAR        szLogicalName[ 64 ];
; 884  :    zCHAR        szStr[ 2 ];
; 885  :    zVIEW        vDbhWork;
; 886  :    LPTASK       hTask;
; 887  : // zLONG        lProcessID;
; 888  :    zSHORT       nRC2 = 0;

	mov	WORD PTR _nRC2$[ebp], 0

; 889  :    zSHORT       nRC;
; 890  : 
; 891  :    GetViewByName( &vDbhWork, zDBHANDLER_WORK_VIEW_NAME, lpView, zLEVEL_SYSTEM );

	push	8
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ ; `string'
	lea	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_GetViewByName@16

; 892  :    if ( vDbhWork == 0 )

	cmp	DWORD PTR _vDbhWork$[ebp], 0
	jne	SHORT $L57463

; 894  :       DBH_Error( lpView, "Can't find DB-Handler work view.", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_0CB@LKIL@Can?8t?5find?5DB?9Handler?5work?5view?4@ ; `string'
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_DBH_Error
	add	esp, 16					; 00000010H

; 895  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L57455
$L57463:

; 897  : 
; 898  :    if ( lpView == 0 )

	cmp	DWORD PTR _lpView$[ebp], 0
	jne	SHORT $L57464

; 899  :       lpView = vDbhWork;

	mov	eax, DWORD PTR _vDbhWork$[ebp]
	mov	DWORD PTR _lpView$[ebp], eax
$L57464:

; 900  : 
; 901  :    SysMutexLock( lpView, "Zeidon DBH", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SysMutexLock@16

; 902  : 
; 903  :    szStr[ 0 ] = zSQL_type;

	mov	BYTE PTR _szStr$[ebp], 88		; 00000058H

; 904  :    szStr[ 1 ] = 0;

	mov	BYTE PTR _szStr$[ebp+1], 0

; 905  : 
; 906  :    nRC = SetCursorFirstEntityByString( vDbhWork, "Type", "Type", szStr, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	edx, DWORD PTR _szStr$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	mov	eax, DWORD PTR _vDbhWork$[ebp]
	push	eax
	call	_SetCursorFirstEntityByString@20
	mov	WORD PTR _nRC$[ebp], ax

; 907  :    if ( nRC != zCURSOR_SET )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L57465

; 909  :       zCHAR szMsg[ 256 ];
; 910  : 
; 911  :       SysMutexUnlock( lpView, "Zeidon DBH", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SysMutexUnlock@12

; 912  :       zsprintf( szMsg,
; 913  :                 "Internal error -- cannot find DB Base type (%s) in db-handler work object.",
; 914  :                 szStr );

	lea	eax, DWORD PTR _szStr$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0EL@FIPI@Internal?5error?5?9?9?5cannot?5find?5DB@ ; `string'
	lea	ecx, DWORD PTR _szMsg$57466[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 915  :       DBH_Error( vDbhWork, szMsg, 0, 0 );

	push	0
	push	0
	lea	edx, DWORD PTR _szMsg$57466[ebp]
	push	edx
	mov	eax, DWORD PTR _vDbhWork$[ebp]
	push	eax
	call	_DBH_Error
	add	esp, 16					; 00000010H

; 916  :       DropView( vDbhWork );

	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_DropView@4

; 917  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L57455
$L57465:

; 919  : 
; 920  :    hTask = (LPTASK) SysGetTaskFromView( lpView );

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SysGetTaskFromView@4
	mov	DWORD PTR _hTask$[ebp], eax

; 921  :    zsprintf( szLogicalName, "0x%08x:%08x", hTask, SysGetProcessID( 0 ) );

	push	0
	call	_SysGetProcessID@4
	push	eax
	mov	eax, DWORD PTR _hTask$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0M@CMMN@0x?$CF08x?3?$CF08x?$AA@ ; `string'
	lea	ecx, DWORD PTR _szLogicalName$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 922  :    nRC = SetCursorFirstEntityByString( vDbhWork, "Connection",
; 923  :                                        "LogicalUserName", szLogicalName, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	edx, DWORD PTR _szLogicalName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BA@FMEM@LogicalUserName?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	eax, DWORD PTR _vDbhWork$[ebp]
	push	eax
	call	_SetCursorFirstEntityByString@20
	mov	WORD PTR _nRC$[ebp], ax

; 924  :    if ( nRC != zCURSOR_SET )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	$L57477

; 926  :       zPCHAR pch;
; 927  :       zSHORT nLth = zstrlen( szLogicalName );

	lea	edx, DWORD PTR _szLogicalName$[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	mov	WORD PTR _nLth$57474[ebp], ax

; 928  : 
; 929  :       nRC = SetCursorFirstEntity( vDbhWork, "Connection", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	eax, DWORD PTR _vDbhWork$[ebp]
	push	eax
	call	_SetCursorFirstEntity@12
	mov	WORD PTR _nRC$[ebp], ax
$L57476:

; 930  :       while ( nRC >= zCURSOR_SET )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jl	SHORT $L57477

; 932  :          GetAddrForAttribute( &pch, vDbhWork, "Connection", "LogicalUserName" );

	push	OFFSET FLAT:??_C@_0BA@FMEM@LogicalUserName?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	lea	eax, DWORD PTR _pch$57473[ebp]
	push	eax
	call	_GetAddrForAttribute@16

; 933  :          if ( zstrncmp( szLogicalName, pch, nLth ) == 0 )

	movsx	ecx, WORD PTR _nLth$57474[ebp]
	push	ecx
	mov	edx, DWORD PTR _pch$57473[ebp]
	push	edx
	lea	eax, DWORD PTR _szLogicalName$[ebp]
	push	eax
	call	DWORD PTR __imp__strncmp
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $L57478

; 934  :             break;

	jmp	SHORT $L57477
$L57478:

; 935  : 
; 936  :          nRC = SetCursorNextEntity( vDbhWork, "Connection", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_SetCursorNextEntity@12
	mov	WORD PTR _nRC$[ebp], ax

; 937  :       }

	jmp	SHORT $L57476
$L57477:

; 939  : 
; 940  :    if ( nRC != zCURSOR_SET )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L57479

; 942  :       zCHAR szMsg[ 256 ];
; 943  : 
; 944  :       SysMutexUnlock( lpView, "Zeidon DBH", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysMutexUnlock@12

; 945  :       zsprintf( szMsg,
; 946  :                 "TaskID not found for Task:TaskID %s",
; 947  :                 szLogicalName );

	lea	ecx, DWORD PTR _szLogicalName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CE@LBDN@TaskID?5not?5found?5for?5Task?3TaskID@ ; `string'
	lea	edx, DWORD PTR _szMsg$57480[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 948  : 
; 949  :       TraceLineS( "ERROR ********** CloseDatabase ", szMsg );

	lea	eax, DWORD PTR _szMsg$57480[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CA@EIKD@ERROR?5?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?$CK?5CloseDatabase?5?$AA@ ; `string'
	call	_TraceLineS@8

; 950  :       DisplayObjectInstance( vDbhWork, 0, 0 );

	push	0
	push	0
	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_DisplayObjectInstance@12

; 951  :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 952  :       // Removing this message since we were getting it when all tasks have
; 953  :       // been deleted.  dks/don 2007.01.05
; 954  :    // MessageBox( 0, szMsg, "CloseDatabase Error", MB_OK );
; 955  :       return( 0 );

	xor	ax, ax
	jmp	$L57455
$L57479:

; 957  : 
; 958  :    GetAddrForAttribute( (zPVOID) &lpConnection, vDbhWork,
; 959  :                         "Connection", "ConnectionBlob" );

	push	OFFSET FLAT:??_C@_0P@FLKG@ConnectionBlob?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpConnection$[ebp]
	push	eax
	call	_GetAddrForAttribute@16

; 960  :    if ( lpConnection )

	cmp	DWORD PTR _lpConnection$[ebp], 0
	je	$L57485

; 962  :       zSHORT k;
; 963  : 
; 964  :       // Free connection memory (last parm zero).
; 965  :       fnAllocateConnectionMemory( lpView, lpConnection, TRUE, 0 );

	push	0
	push	1
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnAllocateConnectionMemory@16

; 966  :       fnAllocateConnectionMemory( lpView, lpConnection, FALSE, 0 );

	push	0
	push	0
	mov	eax, DWORD PTR _lpConnection$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnAllocateConnectionMemory@16

; 967  : 
; 968  :       // Free up qual data.
; 969  :       for ( k = 0; k < lpConnection->nQualCount; k++ )

	mov	WORD PTR _k$57486[ebp], 0
	jmp	SHORT $L57487
$L57488:
	mov	dx, WORD PTR _k$57486[ebp]
	add	dx, 1
	mov	WORD PTR _k$57486[ebp], dx
$L57487:
	movsx	eax, WORD PTR _k$57486[ebp]
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+188]
	cmp	eax, edx
	jge	SHORT $L57489

; 970  :          SqlFreeQualEntity( &lpConnection->lpQualEntityList[ k ] );

	movsx	eax, WORD PTR _k$57486[ebp]
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	lea	edx, DWORD PTR [ecx+eax*4+108]
	push	edx
	call	_SqlFreeQualEntity@4
	jmp	SHORT $L57488
$L57489:

; 971  : 
; 972  :       lpConnection->nQualCount = 0;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	WORD PTR [eax+188], 0

; 973  : 
; 974  :       // Only perform the disconnect if there was a valid connection.
; 975  :       for ( k = 0; k < lpConnection->nOpenDatabaseCount; k++ )

	mov	WORD PTR _k$57486[ebp], 0
	jmp	SHORT $L57490
$L57491:
	mov	cx, WORD PTR _k$57486[ebp]
	add	cx, 1
	mov	WORD PTR _k$57486[ebp], cx
$L57490:
	movsx	edx, WORD PTR _k$57486[ebp]
	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+216]
	cmp	edx, ecx
	jge	SHORT $L57492

; 977  :          if ( lpConnection->DBConnection[ k ].bValidConnection == FALSE )

	movsx	edx, WORD PTR _k$57486[ebp]
	imul	edx, 54					; 00000036H
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+edx+270]
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L57493

; 978  :             continue;

	jmp	SHORT $L57491
$L57493:

; 979  : 
; 980  :          // DB disconnect routines.
; 981  : 
; 982  : #if defined( DB2 )
; 983  : 
; 984  :          nRC = SQLDisconnect( lpConnection->DBConnection[ k ].hdbc );
; 985  :          SQL_RC( "SQLDisconnect", nRC, "Disconnecting handle for database ",
; 986  :                  lpConnection->DBConnection[ k ].szDatabaseName, 2 );
; 987  : 
; 988  :          nRC = SQLFreeHandle( SQL_HANDLE_DBC,
; 989  :                           (SQLHANDLE) lpConnection->DBConnection[ k ].hdbc );
; 990  : 
; 991  :          SQL_RC( "SQLFreeHandle", nRC, "Closing handle for database ",
; 992  :                  lpConnection->DBConnection[ k ].szDatabaseName, 2 );
; 993  :          if ( nRC != SQL_SUCCESS )
; 994  :             nRC = zCALL_ERROR;
; 995  : 
; 996  : #elif defined( ODBC )
; 997  : 
; 998  :          nRC = SQLDisconnect( lpConnection->DBConnection[ k ].hdbc );
; 999  :          SQL_RC( "SQLDisconnect", nRC, "Disconnecting handle for database ",
; 1000 :                  lpConnection->DBConnection[ k ].szDatabaseName, 2 );
; 1001 : 
; 1002 :          nRC = SQLFreeHandle( SQL_HANDLE_DBC,
; 1003 :                           (SQLHANDLE) lpConnection->DBConnection[ k ].hdbc );
; 1004 :          SQL_RC( "SQLFreeHandle", nRC, "Closing handle for database ",
; 1005 :                  lpConnection->DBConnection[ k ].szDatabaseName, 2 );
; 1006 :          if ( nRC != SQL_SUCCESS )
; 1007 :             nRC2 = zCALL_ERROR;
; 1008 : 
; 1009 : #endif
; 1010 : 
; 1011 :          lpConnection->DBConnection[ k ].bValidConnection = FALSE;

	movsx	edx, WORD PTR _k$57486[ebp]
	imul	edx, 54					; 00000036H
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+edx+270]
	and	ecx, -2					; fffffffeH
	movsx	edx, WORD PTR _k$57486[ebp]
	imul	edx, 54					; 00000036H
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [eax+edx+270], ecx

; 1012 : 
; 1013 :       } // for ( k = 0; ... )

	jmp	SHORT $L57491
$L57492:

; 1014 : 
; 1015 :       //
; 1016 :       // Session disconnect routines.
; 1017 :       //
; 1018 : 
; 1019 : #if defined( DB2 )
; 1020 :    {
; 1021 :       LPOD_LIST lpOD;
; 1022 : 
; 1023 :       for ( lpOD = lpConnection->lpFirstOD_List;
; 1024 :             lpOD;
; 1025 :             lpOD = lpOD->lpNextOD )
; 1026 :       {
; 1027 :          if ( lpOD->bOpenConn )
; 1028 :          {
; 1029 : #if 0
; 1030 :             zSHORT (POPERATION pfnClose)( zSHORT );
; 1031 :             zCHAR  szFuncName[ 200 ];
; 1032 : 
; 1033 :             zsprintf( szFuncName, "%s_CloseConnection", lpOD->szOD_Name );
; 1034 :             pfnClose = SysGetProc( lpOD->hStaticLibrary, szFuncName );
; 1035 :             nRC = (*pfnClose) ( lpConnection->nTraceLevel );
; 1036 : #endif
; 1037 :             SysFreeLibrary( lpView, lpOD->hStaticLibrary );
; 1038 :          }
; 1039 :       }
; 1040 : 
; 1041 :       fnFreeOD_List( lpConnection );
; 1042 : 
; 1043 :       if ( lpConnection->henv )
; 1044 :       {
; 1045 :          nRC = SQLFreeHandle( SQL_HANDLE_ENV,
; 1046 :                               (SQLHANDLE) lpConnection->henv );
; 1047 :          SQL_RC( "SQLFreeHandle", nRC, "Closing henv", 0, 2 );
; 1048 :       }
; 1049 :    }
; 1050 : 
; 1051 : #elif defined( ODBC )
; 1052 : 
; 1053 :       nRC = SQLFreeHandle( SQL_HANDLE_ENV,
; 1054 :                            (SQLHANDLE) lpConnection->henv );
; 1055 :       SQL_RC( "SQLFreeHandle", nRC, "Closing henv", 0, 2 );
; 1056 : 
; 1057 : #endif
; 1058 : 
; 1059 :       SfDropSubtask( lpConnection->lpAppView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+20]
	push	edx
	call	_SfDropSubtask@8
$L57485:

; 1062 : 
; 1063 :    SetAttributeFromBlob( vDbhWork, "Connection", "ConnectionBlob", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_0P@FLKG@ConnectionBlob?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	eax, DWORD PTR _vDbhWork$[ebp]
	push	eax
	call	_SetAttributeFromBlob@20

; 1064 :    DeleteEntity( vDbhWork, "Connection", zREPOS_AFTER );  // blew on this line 2006.06.30 dks

	push	3
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_DeleteEntity@12

; 1065 : 
; 1066 : // TraceLineS( "After CloseDatabase for Task:TaskID ", szLogicalName );
; 1067 : // DisplayObjectInstance( vDbhWork, 0, 0 );
; 1068 : // TraceLineS( "", "" );
; 1069 : 
; 1070 :    SysMutexUnlock( lpView, "Zeidon DBH", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SysMutexUnlock@12

; 1071 : 
; 1072 :    return( nRC2 );

	mov	ax, WORD PTR _nRC2$[ebp]
$L57455:

; 1073 : 
; 1074 : }  // CloseDatabase

	mov	esp, ebp
	pop	ebp
	ret	0
_CloseDatabase ENDP
_TEXT	ENDS
PUBLIC	_fnClearDBHandlerError@4
PUBLIC	_BeginTransaction
PUBLIC	??_C@_0DF@OLNF@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD@ ; `string'
PUBLIC	??_C@_0DF@CENA@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5?5BEGIN?5TRANSA@ ; `string'
PUBLIC	??_C@_0BA@GPBB@Storing?5Objects?$AA@		; `string'
PUBLIC	??_C@_0BH@CHIC@Activating?5Object?5Def?5?$AA@	; `string'
PUBLIC	??_C@_0BB@JILM@Database?5name?5?$DN?5?$AA@	; `string'
;	COMDAT ??_C@_0DF@OLNF@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0DF@OLNF@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD@ DB '#'
	DB	'###################################################', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DF@CENA@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5?5BEGIN?5TRANSA@
_DATA	SEGMENT
??_C@_0DF@CENA@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5?5BEGIN?5TRANSA@ DB '#'
	DB	'#################  BEGIN TRANSACTION ##############', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@GPBB@Storing?5Objects?$AA@
_DATA	SEGMENT
??_C@_0BA@GPBB@Storing?5Objects?$AA@ DB 'Storing Objects', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@CHIC@Activating?5Object?5Def?5?$AA@
_DATA	SEGMENT
??_C@_0BH@CHIC@Activating?5Object?5Def?5?$AA@ DB 'Activating Object Def ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@JILM@Database?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BB@JILM@Database?5name?5?$DN?5?$AA@ DB 'Database name = ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_Indicators$ = 8
_lpViewOD$ = 12
_lpView$ = 16
_lpQualView$ = 20
_lpConnection$ = 24
_k$57507 = -4
_BeginTransaction PROC NEAR

; 1090 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 1091 :    if ( lpConnection->nTraceLevel > 0 )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+214]
	test	ecx, ecx
	jle	$L57516

; 1093 :       zSHORT  k;
; 1094 : 
; 1095 :       TraceLineS( "####################################################", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DF@OLNF@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD@ ; `string'
	call	_TraceLineS@8

; 1096 :       TraceLineS( "##################  BEGIN TRANSACTION ##############", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DF@CENA@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5?5BEGIN?5TRANSA@ ; `string'
	call	_TraceLineS@8

; 1097 :       TraceLineS( "####################################################", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DF@OLNF@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD@ ; `string'
	call	_TraceLineS@8

; 1098 :       if ( Indicators == ( Indicators & DBH_StoreOI ) )

	mov	edx, DWORD PTR _Indicators$[ebp]
	and	edx, 2
	cmp	DWORD PTR _Indicators$[ebp], edx
	jne	SHORT $L57510

; 1099 :          TraceLineS( "Storing Objects", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BA@GPBB@Storing?5Objects?$AA@ ; `string'
	call	_TraceLineS@8

; 1100 :       else

	jmp	SHORT $L57512
$L57510:

; 1101 :          TraceLineS( "Activating Object Def ", lpViewOD->szName );

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0BH@CHIC@Activating?5Object?5Def?5?$AA@ ; `string'
	call	_TraceLineS@8
$L57512:

; 1102 : 
; 1103 :       for ( k = 0; k < lpConnection->nOpenDatabaseCount; k++ )

	mov	WORD PTR _k$57507[ebp], 0
	jmp	SHORT $L57514
$L57515:
	mov	cx, WORD PTR _k$57507[ebp]
	add	cx, 1
	mov	WORD PTR _k$57507[ebp], cx
$L57514:
	movsx	edx, WORD PTR _k$57507[ebp]
	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+216]
	cmp	edx, ecx
	jge	SHORT $L57516

; 1104 :          TraceLineS( "Database name = ",
; 1105 :                      lpConnection->DBConnection[ k ].szDatabaseName );

	movsx	edx, WORD PTR _k$57507[ebp]
	imul	edx, 54					; 00000036H
	mov	eax, DWORD PTR _lpConnection$[ebp]
	lea	ecx, DWORD PTR [eax+edx+220]
	push	ecx
	push	OFFSET FLAT:??_C@_0BB@JILM@Database?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
	jmp	SHORT $L57515
$L57516:

; 1108 : 
; 1109 : #if 0  // Following not needed yet but could be someday.
; 1110 :    // Check to see if multiple databases are used.
; 1111 :    lpConnection->bMultipleDatabases = FALSE;
; 1112 :    lpViewEntity = lpViewOD->hFirstOD_Entity;
; 1113 :    while ( lpViewEntity )
; 1114 :    {
; 1115 :       if ( lpViewEntity->szDBName[ 0 ] )
; 1116 :          lpConnection->bMultipleDatabases = TRUE;
; 1117 : 
; 1118 :       lpViewEntity = lpViewEntity->hNextHier;
; 1119 :    }
; 1120 : #endif
; 1121 : 
; 1122 :    //==============================================================
; 1123 :    //
; 1124 :    // Transaction Begin code.
; 1125 :    //
; 1126 :    //==============================================================
; 1127 : 
; 1128 :    // Indicate that the database has not yet been changed by this transaction.
; 1129 :    lpConnection->bDatabaseChanged = FALSE;

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+760]
	and	al, -3					; fffffffdH
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [ecx+760], eax

; 1130 : 
; 1131 : #if defined ( DB2 )
; 1132 :    /* if we have DB2, determine the decimal "comma or point"
; 1133 :     *  switch in zeidon.ini .
; 1134 :     *  Comma is indicated by "DB2COMMA=Y"
; 1135 :     */
; 1136 :    if ( g_ucDB2_Comma == 0 )
; 1137 :    {
; 1138 :       zCHAR szValue[ 256 ] ;
; 1139 : 
; 1140 :       szValue[ 0 ] = 0;
; 1141 :       SysReadZeidonIni( -1, "[Zeidon]", "DB2COMMA", szValue );
; 1142 :       if( szValue[ 0 ] == 'Y' || szValue[ 0 ] == 'y' ||
; 1143 :           szValue[ 0 ] == 'J' || szValue[ 0 ] == 'j' )
; 1144 :          g_ucDB2_Comma = 2;
; 1145 :       else
; 1146 :          g_ucDB2_Comma = 1;
; 1147 :    }
; 1148 : 
; 1149 : #elif defined( DUMMY )
; 1150 : 
; 1151 :    lpConnection->lIntegerCount = 1;

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [edx+764], 1

; 1152 :    lpConnection->lDecimalCount = 1;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [eax+768], 1

; 1153 :    lpConnection->lStringCount  = 1;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [ecx+772], 1

; 1154 : 
; 1155 : #elif defined( ODBC )
; 1156 : 
; 1157 :    // For MS Access we need to wait a short bit of time if another task has
; 1158 :    // done a commit.  This gives a chance for the database changes to be
; 1159 :    // seen by other tasks.
; 1160 :    if ( g_lpOdbcSystemInfo->lCommitLatency > 0   &&  // If 0 we don't need to wait
; 1161 :         g_lpOdbcSystemInfo->lLastCommitTask != 0 &&  // 0 means nothing committed yet
; 1162 :         (Indicators & DBH_LoadOI ) != 0          &&  // Only wait before Activate
; 1163 :         g_lpOdbcSystemInfo->lLastCommitTask !=
; 1164 :               SysGetTaskFromView( lpView ) ) // Don't need to wait for current task.
; 1165 :    {
; 1166 :       zULONG ulTimeSinceLastCommit = SysGetTickCount( ) -
; 1167 :                                           g_lpOdbcSystemInfo->lLastCommitTime;
; 1168 : 
; 1169 :       if ( ulTimeSinceLastCommit < g_lpOdbcSystemInfo->lCommitLatency )
; 1170 :       {
; 1171 :          zULONG lWait;
; 1172 : 
; 1173 : 
; 1174 :          lWait = g_lpOdbcSystemInfo->lCommitLatency - ulTimeSinceLastCommit;
; 1175 :          if ( lpConnection->nTraceLevel > 0 )
; 1176 :             TraceLineI( "ODBC Latency...waiting... milliseconds = ", lWait );
; 1177 : 
; 1178 :          SysWait( (zUSHORT) lWait );
; 1179 :       }
; 1180 :    }
; 1181 : 
; 1182 : #endif
; 1183 : 
; 1184 :    fnClearDBHandlerError( lpQualView ? lpQualView : lpView );

	cmp	DWORD PTR _lpQualView$[ebp], 0
	je	SHORT $L58511
	mov	edx, DWORD PTR _lpQualView$[ebp]
	mov	DWORD PTR -8+[ebp], edx
	jmp	SHORT $L58512
$L58511:
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR -8+[ebp], eax
$L58512:
	mov	ecx, DWORD PTR -8+[ebp]
	push	ecx
	call	_fnClearDBHandlerError@4

; 1185 : 
; 1186 :    if ( lpConnection->vDbhWork )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	cmp	DWORD PTR [edx+24], 0
	je	SHORT $L57518

; 1188 :       DropView( lpConnection->vDbhWork );

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	push	ecx
	call	_DropView@4

; 1189 :       lpConnection->vDbhWork = 0;

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [edx+24], 0
$L57518:

; 1191 : 
; 1192 :    return( 0 );

	xor	ax, ax

; 1193 : 
; 1194 : }  /* BeginTransaction */

	mov	esp, ebp
	pop	ebp
	ret	0
_BeginTransaction ENDP
_TEXT	ENDS
PUBLIC	_CommitTransaction
PUBLIC	??_C@_0BL@NOKL@lpConnection?5is?5null?$CB?$CB?$CB?$CB?$CB?$CB?$AA@ ; `string'
PUBLIC	??_C@_0DF@FMK@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5?5COMMIT?5TRANSA@ ; `string'
EXTRN	_OrderOI_ByDefaultAttribs@4:NEAR
;	COMDAT ??_C@_0BL@NOKL@lpConnection?5is?5null?$CB?$CB?$CB?$CB?$CB?$CB?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0BL@NOKL@lpConnection?5is?5null?$CB?$CB?$CB?$CB?$CB?$CB?$AA@ DB 'lp'
	DB	'Connection is null!!!!!!', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DF@FMK@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5?5COMMIT?5TRANSA@
_DATA	SEGMENT
??_C@_0DF@FMK@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5?5COMMIT?5TRANSA@ DB '#'
	DB	'################  COMMIT TRANSACTION ##############', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_Indicators$ = 12
_lpConnection$ = 16
_k$ = -12
_nReturnCode$ = -8
_nRC$ = -4
_CommitTransaction PROC NEAR

; 1205 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 1206 :    zSHORT k;
; 1207 :    zSHORT nReturnCode = 0;

	mov	WORD PTR _nReturnCode$[ebp], 0

; 1208 :    zSHORT nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1209 : 
; 1210 :    // Do any object ordering as necessary.
; 1211 :    if ( Indicators & DBH_LoadOI )

	mov	eax, DWORD PTR _Indicators$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L57530

; 1212 :       OrderOI_ByDefaultAttribs( lpView );

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_OrderOI_ByDefaultAttribs@4
$L57530:

; 1213 : 
; 1214 :    if ( lpConnection == 0 )

	cmp	DWORD PTR _lpConnection$[ebp], 0
	jne	SHORT $L57531

; 1216 :       TraceLineS( "lpConnection is null!!!!!!", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BL@NOKL@lpConnection?5is?5null?$CB?$CB?$CB?$CB?$CB?$CB?$AA@ ; `string'
	call	_TraceLineS@8

; 1217 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L57526
$L57531:

; 1219 : 
; 1220 :    if ( lpConnection->nTraceLevel > 0 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	test	eax, eax
	jle	SHORT $L57533

; 1222 :       TraceLineS( "####################################################", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DF@OLNF@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD@ ; `string'
	call	_TraceLineS@8

; 1223 :       TraceLineS( "#################  COMMIT TRANSACTION ##############", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DF@FMK@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5?5COMMIT?5TRANSA@ ; `string'
	call	_TraceLineS@8

; 1224 :       TraceLineS( "####################################################", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DF@OLNF@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD@ ; `string'
	call	_TraceLineS@8
$L57533:

; 1226 : 
; 1227 :    // Free up qual data.
; 1228 :    for ( k = 0; k < lpConnection->nQualCount; k++ )

	mov	WORD PTR _k$[ebp], 0
	jmp	SHORT $L57535
$L57536:
	mov	cx, WORD PTR _k$[ebp]
	add	cx, 1
	mov	WORD PTR _k$[ebp], cx
$L57535:
	movsx	edx, WORD PTR _k$[ebp]
	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+188]
	cmp	edx, ecx
	jge	SHORT $L57537

; 1229 :       SqlFreeQualEntity( &lpConnection->lpQualEntityList[ k ] );

	movsx	edx, WORD PTR _k$[ebp]
	mov	eax, DWORD PTR _lpConnection$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4+108]
	push	ecx
	call	_SqlFreeQualEntity@4
	jmp	SHORT $L57536
$L57537:

; 1230 : 
; 1231 :    lpConnection->nQualCount = 0;

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	WORD PTR [edx+188], 0

; 1232 : 
; 1233 : #if 0 // Following not needed...yet.
; 1234 :    for ( k = 0; k < lpConnection->nOpenDatabaseCount; k++ )
; 1235 :    {
; 1236 :       if ( lpConnection->DBConnection[ k ].bDBUpdated )
; 1237 :       {
; 1238 :       }
; 1239 :    }
; 1240 : #endif
; 1241 : 
; 1242 :    //==============================================================
; 1243 :    //
; 1244 :    // Transaction Commit code.
; 1245 :    //
; 1246 :    //==============================================================
; 1247 : 
; 1248 : #if defined( DB2 )
; 1249 : 
; 1250 : {
; 1251 :    LPOD_LIST lpOD;
; 1252 : 
; 1253 :    for ( lpOD = lpConnection->lpFirstOD_List;
; 1254 :          lpOD;
; 1255 :          lpOD = lpOD->lpNextOD )
; 1256 :    {
; 1257 :       if ( lpOD->bNeedsCommit == FALSE )
; 1258 :          continue;
; 1259 : 
; 1260 :       if ( lpOD->pfnCommit == 0 )
; 1261 :       {
; 1262 :          zCHAR szProcName[ 100 ];
; 1263 : 
; 1264 :          zsprintf( szProcName, "%s_Commit", lpOD->lpViewOD->szName );
; 1265 :          lpOD->pfnCommit = SysGetProc( lpOD->hStaticLibrary, szProcName );
; 1266 :       }
; 1267 : 
; 1268 :       nRC = (*lpOD->pfnCommit)( lpConnection->nTraceLevel );
; 1269 :       lpOD->bNeedsCommit = FALSE;
; 1270 :    }
; 1271 : 
; 1272 :    if ( lpConnection->hstmt )
; 1273 :    {
; 1274 :       fnFreeStmtHandles( lpConnection );
; 1275 : 
; 1276 :       nRC = SQLTransact( lpConnection->henv, lpConnection->hdbc, SQL_ROLLBACK );
; 1277 :       SQL_RC( "SQLEndTran", nRC, "Rollback DB ", 0, 1 );
; 1278 : 
; 1279 :       if ( nRC != SQL_SUCCESS )
; 1280 :          nReturnCode = zCALL_ERROR;
; 1281 :    }
; 1282 : }
; 1283 : 
; 1284 : #elif defined( ODBC )
; 1285 : 
; 1286 :    // If the current transaction has changed the database, we may need to set
; 1287 :    // some flags so subsequent activates have a chance to reflect the changes.
; 1288 :    if ( lpConnection->bDatabaseChanged &&
; 1289 :         g_lpOdbcSystemInfo->lCommitLatency > 0 )
; 1290 :    {
; 1291 :       g_lpOdbcSystemInfo->lLastCommitTask = SysGetTaskFromView( lpView );
; 1292 :       g_lpOdbcSystemInfo->lLastCommitTime = SysGetTickCount( );
; 1293 :    }
; 1294 : 
; 1295 :    nRC = SQLEndTran( SQL_HANDLE_DBC, lpConnection->hdbc, SQL_COMMIT );
; 1296 :    SQL_RC( "SQLEndTran", nRC, "Commit DB ", 0, 1 );
; 1297 : 
; 1298 :    if ( nRC != SQL_SUCCESS )
; 1299 :       nReturnCode = zCALL_ERROR;
; 1300 : 
; 1301 :    fnFreeStmtHandles( lpConnection );
; 1302 : 
; 1303 : #endif
; 1304 : 
; 1305 :    if ( lpConnection->vDbhWork )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	cmp	DWORD PTR [eax+24], 0
	je	SHORT $L57538

; 1307 :       DropView( lpConnection->vDbhWork );

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+24]
	push	edx
	call	_DropView@4

; 1308 :       lpConnection->vDbhWork = 0;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [eax+24], 0
$L57538:

; 1310 : 
; 1311 :    return( nReturnCode );

	mov	ax, WORD PTR _nReturnCode$[ebp]
$L57526:

; 1312 : 
; 1313 : }  /* CommitTransaction */

	mov	esp, ebp
	pop	ebp
	ret	0
_CommitTransaction ENDP
_TEXT	ENDS
PUBLIC	_RollbackTransaction
PUBLIC	??_C@_0DF@FDPI@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5ROLLBACK?5TRANSA@ ; `string'
;	COMDAT ??_C@_0DF@FDPI@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5ROLLBACK?5TRANSA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0DF@FDPI@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5ROLLBACK?5TRANSA@ DB '#'
	DB	'############### ROLLBACK TRANSACTION ##############', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpConnection$ = 12
_k$ = -12
_nReturnCode$ = -8
_nRC$ = -4
_RollbackTransaction PROC NEAR

; 1322 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 1323 :    zSHORT k;
; 1324 :    zSHORT nReturnCode = 0;

	mov	WORD PTR _nReturnCode$[ebp], 0

; 1325 :    zSHORT nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1326 : 
; 1327 :    if ( lpConnection == 0 )

	cmp	DWORD PTR _lpConnection$[ebp], 0
	jne	SHORT $L57548

; 1329 :       TraceLineS( "lpConnection is null!!!!!!", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BL@NOKL@lpConnection?5is?5null?$CB?$CB?$CB?$CB?$CB?$CB?$AA@ ; `string'
	call	_TraceLineS@8

; 1330 :       return( 0 );

	xor	ax, ax
	jmp	$L57544
$L57548:

; 1332 : 
; 1333 :    if ( lpConnection->nTraceLevel > 0 )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+214]
	test	ecx, ecx
	jle	SHORT $L57549

; 1335 :       TraceLineS( "####################################################", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DF@OLNF@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD@ ; `string'
	call	_TraceLineS@8

; 1336 :       TraceLineS( "################ ROLLBACK TRANSACTION ##############", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DF@FDPI@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?5ROLLBACK?5TRANSA@ ; `string'
	call	_TraceLineS@8

; 1337 :       TraceLineS( "####################################################", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DF@OLNF@?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD?$CD@ ; `string'
	call	_TraceLineS@8
$L57549:

; 1339 : 
; 1340 :    // Free up qual data.
; 1341 :    for ( k = 0; k < lpConnection->nQualCount; k++ )

	mov	WORD PTR _k$[ebp], 0
	jmp	SHORT $L57551
$L57552:
	mov	dx, WORD PTR _k$[ebp]
	add	dx, 1
	mov	WORD PTR _k$[ebp], dx
$L57551:
	movsx	eax, WORD PTR _k$[ebp]
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+188]
	cmp	eax, edx
	jge	SHORT $L57553

; 1342 :       SqlFreeQualEntity( &lpConnection->lpQualEntityList[ k ] );

	movsx	eax, WORD PTR _k$[ebp]
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	lea	edx, DWORD PTR [ecx+eax*4+108]
	push	edx
	call	_SqlFreeQualEntity@4
	jmp	SHORT $L57552
$L57553:

; 1343 :    lpConnection->nQualCount = 0;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	WORD PTR [eax+188], 0

; 1344 : 
; 1345 :    //==============================================================
; 1346 :    //
; 1347 :    // Transaction Rollback code.
; 1348 :    //
; 1349 :    //==============================================================
; 1350 : 
; 1351 : #if defined( DB2 )
; 1352 : 
; 1353 : {
; 1354 :    LPOD_LIST lpOD;
; 1355 : 
; 1356 :    for ( lpOD = lpConnection->lpFirstOD_List;
; 1357 :          lpOD;
; 1358 :          lpOD = lpOD->lpNextOD )
; 1359 :    {
; 1360 :       if ( lpOD->bNeedsCommit == FALSE )
; 1361 :          continue;
; 1362 : 
; 1363 :       if ( lpOD->pfnRollback == 0 )
; 1364 :       {
; 1365 :          zCHAR szProcName[ 100 ];
; 1366 : 
; 1367 :          zsprintf( szProcName, "%s_Rollback", lpOD->lpViewOD->szName );
; 1368 :          lpOD->pfnRollback = SysGetProc( lpOD->hStaticLibrary, szProcName );
; 1369 :       }
; 1370 : 
; 1371 :       nRC = (*lpOD->pfnRollback)( lpConnection->nTraceLevel );
; 1372 :       lpOD->bNeedsCommit = FALSE;
; 1373 :    }
; 1374 : 
; 1375 :    if ( lpConnection->hstmt )
; 1376 :    {
; 1377 :       fnFreeStmtHandles( lpConnection );
; 1378 : 
; 1379 :       nRC = SQLTransact( lpConnection->henv, lpConnection->hdbc, SQL_ROLLBACK );
; 1380 :       SQL_RC( "SQLEndTran", nRC, "Rollback DB ", 0, 1 );
; 1381 : 
; 1382 :       if ( nRC != SQL_SUCCESS )
; 1383 :          nReturnCode = zCALL_ERROR;
; 1384 :    }
; 1385 : }
; 1386 : 
; 1387 : #elif defined( ODBC )
; 1388 : 
; 1389 :    nRC = SQLEndTran( SQL_HANDLE_DBC, lpConnection->hdbc, SQL_ROLLBACK );
; 1390 :    SQL_RC( "SQLEndTran", nRC, "Rollback DB ", 0, 1 );
; 1391 : 
; 1392 :    if ( nRC != SQL_SUCCESS )
; 1393 :       nReturnCode = zCALL_ERROR;
; 1394 : 
; 1395 :    fnFreeStmtHandles( lpConnection );
; 1396 : 
; 1397 : #endif
; 1398 : 
; 1399 :    return( nReturnCode );

	mov	ax, WORD PTR _nReturnCode$[ebp]
$L57544:

; 1400 : 
; 1401 : }  /* RollbackTransaction */

	mov	esp, ebp
	pop	ebp
	ret	0
_RollbackTransaction ENDP
_TEXT	ENDS
PUBLIC	_fnCancelQuery
_TEXT	SEGMENT
_fnCancelQuery PROC NEAR

; 1413 : {

	push	ebp
	mov	ebp, esp

; 1414 :    return;
; 1415 : }

	pop	ebp
	ret	0
_fnCancelQuery ENDP
_TEXT	ENDS
PUBLIC	_fnFindNextJoinedChild@12
EXTRN	_SysGetPointerFromHandle@4:NEAR
_TEXT	SEGMENT
_lpParent$ = 8
_plpChildEntity$ = 12
_pchEntityJoinTable$ = 16
_nLevel$57573 = -4
_fnFindNextJoinedChild@12 PROC NEAR

; 1421 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 1422 :    if ( *plpChildEntity == 0 )

	mov	eax, DWORD PTR _plpChildEntity$[ebp]
	cmp	DWORD PTR [eax], 0
	jne	SHORT $L57566

; 1423 :       *plpChildEntity = lpParent;

	mov	ecx, DWORD PTR _plpChildEntity$[ebp]
	mov	edx, DWORD PTR _lpParent$[ebp]
	mov	DWORD PTR [ecx], edx
$L57566:

; 1424 : 
; 1425 :    // DBHandler has said there might be more children so look for them.
; 1426 :    *plpChildEntity = zGETPTR( (*plpChildEntity)->hNextHier );

	mov	eax, DWORD PTR _plpChildEntity$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	ecx, DWORD PTR _plpChildEntity$[ebp]
	mov	DWORD PTR [ecx], eax
$L57568:

; 1427 :    while ( *plpChildEntity )

	mov	edx, DWORD PTR _plpChildEntity$[ebp]
	cmp	DWORD PTR [edx], 0
	je	$L57569

; 1429 :       if ( *plpChildEntity == 0 ||
; 1430 :            (*plpChildEntity)->nLevel <= lpParent->nLevel )

	mov	eax, DWORD PTR _plpChildEntity$[ebp]
	cmp	DWORD PTR [eax], 0
	je	SHORT $L57571
	mov	ecx, DWORD PTR _plpChildEntity$[ebp]
	mov	edx, DWORD PTR [ecx]
	movsx	eax, WORD PTR [edx+215]
	mov	ecx, DWORD PTR _lpParent$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	cmp	eax, edx
	jg	SHORT $L57570
$L57571:

; 1432 :          return( FALSE );

	xor	al, al
	jmp	$L57565
$L57570:

; 1434 : 
; 1435 :       // If the child was not joined, skip it.
; 1436 :       if ( (pchEntityJoinTable[ (*plpChildEntity)->nHierNbr ] &
; 1437 :                                        zSELECT_JOINEDWITHPARENT) == 0 )

	mov	eax, DWORD PTR _plpChildEntity$[ebp]
	mov	ecx, DWORD PTR [eax]
	movsx	edx, WORD PTR [ecx+217]
	mov	eax, DWORD PTR _pchEntityJoinTable$[ebp]
	movsx	ecx, BYTE PTR [eax+edx]
	and	ecx, 1
	test	ecx, ecx
	jne	$L57572

; 1439 :          zSHORT nLevel;
; 1440 : 
; 1441 :          // This entity was not joined so skip it.  We also want to skip all
; 1442 :          // its children.
; 1443 :          if ( (*plpChildEntity)->hNextSibling )

	mov	edx, DWORD PTR _plpChildEntity$[ebp]
	mov	eax, DWORD PTR [edx]
	cmp	DWORD PTR [eax+247], 0
	je	SHORT $L57574

; 1445 :             (*plpChildEntity) = zGETPTR( (*plpChildEntity)->hNextSibling );

	mov	ecx, DWORD PTR _plpChildEntity$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx+247]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	ecx, DWORD PTR _plpChildEntity$[ebp]
	mov	DWORD PTR [ecx], eax

; 1446 :             continue;

	jmp	SHORT $L57568
$L57574:

; 1448 : 
; 1449 :          // (*plpChildEntity) has no siblings.  Find the next entity by trolling
; 1450 :          // through the children hierachically.
; 1451 :          nLevel = (*plpChildEntity)->nLevel;

	mov	edx, DWORD PTR _plpChildEntity$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	cx, WORD PTR [eax+215]
	mov	WORD PTR _nLevel$57573[ebp], cx
$L57576:

; 1452 :          while ( (*plpChildEntity) && (*plpChildEntity)->nLevel >= nLevel )

	mov	edx, DWORD PTR _plpChildEntity$[ebp]
	cmp	DWORD PTR [edx], 0
	je	SHORT $L57577
	mov	eax, DWORD PTR _plpChildEntity$[ebp]
	mov	ecx, DWORD PTR [eax]
	movsx	edx, WORD PTR [ecx+215]
	movsx	eax, WORD PTR _nLevel$57573[ebp]
	cmp	edx, eax
	jl	SHORT $L57577
$L57579:

; 1454 :             while ( (*plpChildEntity)->hNextSibling )

	mov	ecx, DWORD PTR _plpChildEntity$[ebp]
	mov	edx, DWORD PTR [ecx]
	cmp	DWORD PTR [edx+247], 0
	je	SHORT $L57580

; 1455 :                (*plpChildEntity) = zGETPTR( (*plpChildEntity)->hNextSibling );

	mov	eax, DWORD PTR _plpChildEntity$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+247]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	ecx, DWORD PTR _plpChildEntity$[ebp]
	mov	DWORD PTR [ecx], eax
	jmp	SHORT $L57579
$L57580:

; 1456 : 
; 1457 :             (*plpChildEntity) = zGETPTR( (*plpChildEntity)->hNextHier );

	mov	edx, DWORD PTR _plpChildEntity$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	edx, DWORD PTR _plpChildEntity$[ebp]
	mov	DWORD PTR [edx], eax

; 1458 :          }

	jmp	SHORT $L57576
$L57577:

; 1459 : 
; 1460 :          continue;

	jmp	$L57568
$L57572:

; 1462 : 
; 1463 :       // If we get here then we've found what we're looking for.
; 1464 :       return( TRUE );

	mov	al, 1
	jmp	SHORT $L57565
$L57569:

; 1466 : 
; 1467 :    // If we get here then *plpChildEntity must be 0 so return FALSE.
; 1468 :    return( FALSE );

	xor	al, al
$L57565:

; 1469 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_fnFindNextJoinedChild@12 ENDP
_TEXT	ENDS
PUBLIC	_fnGetNextDataField@4
_TEXT	SEGMENT
_lpLoopInfo$ = 8
_lpViewAttrib$57588 = -4
_lpDataRecord$57592 = -8
_lpDataRecord$57598 = -12
_lpLoadViewEntity$57601 = -16
_fnGetNextDataField@4 PROC NEAR

; 1478 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
$L57586:

; 1479 :    // Loop until we find the next valid datafield.
; 1480 :    while ( TRUE )

	mov	eax, 1
	test	eax, eax
	je	$L57587

; 1482 :       LPVIEWATTRIB lpViewAttrib;
; 1483 : 
; 1484 :       if ( lpLoopInfo->lpDataField == 0 )

	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	cmp	DWORD PTR [ecx+20], 0
	jne	SHORT $L57589

; 1486 :          // First time this is called...initialize some stuff.
; 1487 :          lpLoopInfo->nDataFieldIdx = 0;

	mov	edx, DWORD PTR _lpLoopInfo$[ebp]
	mov	WORD PTR [edx+2], 0

; 1488 :          lpLoopInfo->lpChildEntity = 0;

	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	mov	DWORD PTR [eax+16], 0

; 1489 : 
; 1490 :          if ( lpLoopInfo->bOpenSQL )

	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx]
	test	edx, edx
	je	SHORT $L57590

; 1491 :             lpLoopInfo->lpDataField =
; 1492 :               lpLoopInfo->lpQualEntity->lpDataField[ lpLoopInfo->nDataFieldIdx++ ];

	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR _lpLoopInfo$[ebp]
	movsx	eax, WORD PTR [edx+2]
	mov	ecx, DWORD PTR [ecx+20]
	mov	edx, DWORD PTR _lpLoopInfo$[ebp]
	mov	eax, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR [edx+20], eax
	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	mov	dx, WORD PTR [ecx+2]
	add	dx, 1
	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	mov	WORD PTR [eax+2], dx

; 1493 :          else

	jmp	SHORT $L57591
$L57590:

; 1495 :             LPDATARECORD lpDataRecord =
; 1496 :                            zGETPTR( lpLoopInfo->lpViewEntity->hFirstDataRecord );

	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	mov	eax, DWORD PTR [edx+191]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpDataRecord$57592[ebp], eax

; 1497 : 
; 1498 :             lpLoopInfo->lpDataField = zGETPTR( lpDataRecord->hFirstDataField );

	mov	ecx, DWORD PTR _lpDataRecord$57592[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	mov	DWORD PTR [ecx+20], eax
$L57591:

; 1501 :       else

	jmp	$L57597
$L57589:

; 1503 :          // Get the 'next' data field.
; 1504 :          if ( lpLoopInfo->bOpenSQL )

	mov	edx, DWORD PTR _lpLoopInfo$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L57594

; 1506 :             lpLoopInfo->lpDataField =
; 1507 :               lpLoopInfo->lpQualEntity->lpDataField[ lpLoopInfo->nDataFieldIdx++ ];

	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	movsx	ecx, WORD PTR [eax+2]
	mov	edx, DWORD PTR [edx+20]
	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	mov	ecx, DWORD PTR [edx+ecx*4]
	mov	DWORD PTR [eax+20], ecx
	mov	edx, DWORD PTR _lpLoopInfo$[ebp]
	mov	ax, WORD PTR [edx+2]
	add	ax, 1
	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	mov	WORD PTR [ecx+2], ax

; 1509 :          else

	jmp	$L57597
$L57594:

; 1511 :             lpLoopInfo->lpDataField =
; 1512 :                         zGETPTR( lpLoopInfo->lpDataField->hNextDataField );

	mov	edx, DWORD PTR _lpLoopInfo$[ebp]
	mov	eax, DWORD PTR [edx+20]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	edx, DWORD PTR _lpLoopInfo$[ebp]
	mov	DWORD PTR [edx+20], eax

; 1513 : 
; 1514 : #ifdef USE_JOINS
; 1515 :             if ( (lpLoopInfo->lpBoundList->lFuncs & zSQLCALLBACK_USEJOIN) &&
; 1516 :                  lpLoopInfo->lpDataField == 0 &&
; 1517 :                  (lpLoopInfo->lControl & zACTIVATE_ROOTONLY) == 0 )

	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	mov	edx, DWORD PTR [ecx+14]
	and	edx, 33554432				; 02000000H
	test	edx, edx
	je	SHORT $L57597
	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	cmp	DWORD PTR [eax+20], 0
	jne	SHORT $L57597
	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	mov	edx, DWORD PTR [ecx+24]
	and	edx, 268435456				; 10000000H
	test	edx, edx
	jne	SHORT $L57597

; 1519 :                // See if there are any child entities that have been included
; 1520 :                // as part of a join.
; 1521 :                if ( fnFindNextJoinedChild( lpLoopInfo->lpViewEntity,
; 1522 :                                            &lpLoopInfo->lpChildEntity,
; 1523 :                                            lpLoopInfo->
; 1524 :                                               lpBoundList->pchEntityJoinTable ) )

	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	add	eax, 16					; 00000010H
	push	eax
	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	push	edx
	call	_fnFindNextJoinedChild@12
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L57597

; 1526 :                   LPDATARECORD lpDataRecord;
; 1527 : 
; 1528 :                   // We have one.  Let's loop through it's data fields.
; 1529 :                   lpDataRecord =
; 1530 :                         zGETPTR( lpLoopInfo->lpChildEntity->hFirstDataRecord );

	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	mov	ecx, DWORD PTR [eax+16]
	mov	edx, DWORD PTR [ecx+191]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpDataRecord$57598[ebp], eax

; 1531 :                   lpLoopInfo->lpDataField = zGETPTR( lpDataRecord->hFirstDataField );

	mov	eax, DWORD PTR _lpDataRecord$57598[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	edx, DWORD PTR _lpLoopInfo$[ebp]
	mov	DWORD PTR [edx+20], eax
$L57597:

; 1538 : 
; 1539 :       // If the data field is 0 then we're done.
; 1540 :       if ( lpLoopInfo->lpDataField == 0 )

	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	cmp	DWORD PTR [eax+20], 0
	jne	SHORT $L57599

; 1542 : #ifdef ODBC
; 1543 :          if ( lpLoopInfo->bFirstPass )
; 1544 :          {
; 1545 :             lpLoopInfo->bFirstPass  = FALSE;
; 1546 :             lpLoopInfo->lpDataField = 0;
; 1547 :             continue;
; 1548 :          }
; 1549 : #endif
; 1550 : 
; 1551 :          return( 0 );

	xor	eax, eax
	jmp	$L57584
$L57599:

; 1553 : 
; 1554 :       lpViewAttrib = zGETPTR( lpLoopInfo->lpDataField->hViewAttrib );

	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	mov	edx, DWORD PTR [ecx+20]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewAttrib$57588[ebp], eax

; 1555 : 
; 1556 :       // If we aren't using OpenSQL, then we might want to ignore certain
; 1557 :       // attributes.
; 1558 :       if ( lpLoopInfo->bOpenSQL == FALSE )

	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx]
	test	edx, edx
	jne	$L57604

; 1560 :          LPVIEWENTITY lpLoadViewEntity;
; 1561 : 
; 1562 :          // If we only want the keys and the attrib/datafield is not a key,
; 1563 :          // continue.
; 1564 :          if ( lpLoopInfo->bKeysOnly && lpViewAttrib->bKey == FALSE )

	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+1]
	test	ecx, ecx
	je	SHORT $L57602
	mov	edx, DWORD PTR _lpViewAttrib$57588[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	jne	SHORT $L57602

; 1565 :             continue;

	jmp	$L57586
$L57602:

; 1566 : 
; 1567 :          // Ignore hidden attributes that aren't keys.
; 1568 :          if ( lpViewAttrib->bHidden &&
; 1569 :               lpViewAttrib->bKey == FALSE &&
; 1570 :               lpViewAttrib->bForeignKey == FALSE &&
; 1571 :               lpViewAttrib->bAutoSeq == FALSE )

	mov	ecx, DWORD PTR _lpViewAttrib$57588[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	je	SHORT $L57603
	mov	eax, DWORD PTR _lpViewAttrib$57588[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L57603
	mov	edx, DWORD PTR _lpViewAttrib$57588[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 2
	and	eax, 1
	test	eax, eax
	jne	SHORT $L57603
	mov	ecx, DWORD PTR _lpViewAttrib$57588[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L57603

; 1573 :             continue;

	jmp	$L57586
$L57603:

; 1575 : 
; 1576 :          lpLoadViewEntity = zGETPTR( lpViewAttrib->hViewEntity );

	mov	eax, DWORD PTR _lpViewAttrib$57588[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpLoadViewEntity$57601[ebp], eax

; 1577 : 
; 1578 :          // If the entity has a db operation, then skip attributes that don't
; 1579 :          // have a db operation.
; 1580 :          if ( lpLoadViewEntity->bHasDB_Oper && lpViewAttrib->cDB_Oper == 0 )

	mov	edx, DWORD PTR _lpLoadViewEntity$57601[ebp]
	mov	eax, DWORD PTR [edx+239]
	and	eax, 1
	test	eax, eax
	je	SHORT $L57604
	mov	ecx, DWORD PTR _lpViewAttrib$57588[ebp]
	movsx	edx, BYTE PTR [ecx+254]
	test	edx, edx
	jne	SHORT $L57604

; 1581 :             continue;

	jmp	$L57586
$L57604:

; 1583 : 
; 1584 : #ifdef ODBC
; 1585 :       if ( lpLoopInfo->bFirstPass )
; 1586 :       {
; 1587 :          if ( lpLoopInfo->lpDataField->cFldType == zTYPE_BLOB ||
; 1588 :               lpLoopInfo->lpDataField->cFldType == 'V' )
; 1589 :          {
; 1590 :             // Skip long fields on the first pass.
; 1591 :             continue;
; 1592 :          }
; 1593 :       }
; 1594 :       else
; 1595 :       {
; 1596 :          if ( lpLoopInfo->lpDataField->cFldType != zTYPE_BLOB &&
; 1597 :               lpLoopInfo->lpDataField->cFldType != 'V' )
; 1598 :          {
; 1599 :             // Skip NON-long fields on the second pass.
; 1600 :             continue;
; 1601 :          }
; 1602 :       }
; 1603 : #endif
; 1604 : 
; 1605 :       // If we get here then we've found our man.
; 1606 :       return( lpLoopInfo->lpDataField );

	mov	eax, DWORD PTR _lpLoopInfo$[ebp]
	mov	eax, DWORD PTR [eax+20]
	jmp	SHORT $L57584
$L57587:

; 1609 : 
; 1610 :    // We will never get here but this line in here so we don't get any
; 1611 :    // compiler warnings.
; 1612 :    return( lpLoopInfo->lpDataField );

	mov	ecx, DWORD PTR _lpLoopInfo$[ebp]
	mov	eax, DWORD PTR [ecx+20]
$L57584:

; 1613 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_fnGetNextDataField@4 ENDP
_TEXT	ENDS
PUBLIC	_fnCreateKeyList@16
_TEXT	SEGMENT
_lpQualEntity$ = 20
_lpQualAttrib$ = -4
_fnCreateKeyList@16 PROC NEAR

; 1627 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 1628 :    LPQUALATTRIB lpQualAttrib;
; 1629 : 
; 1630 :    // Find the qual attrib with the key list.
; 1631 :    for ( lpQualAttrib = lpQualEntity->lpFirstQualAttrib;
; 1632 :          lpQualAttrib->lpKeyList == 0;
; 1633 :          lpQualAttrib = lpQualAttrib->lpNextQualAttrib )

	mov	eax, DWORD PTR _lpQualEntity$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _lpQualAttrib$[ebp], ecx
	jmp	SHORT $L57616
$L57617:
	mov	edx, DWORD PTR _lpQualAttrib$[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR _lpQualAttrib$[ebp], eax
$L57616:
	mov	ecx, DWORD PTR _lpQualAttrib$[ebp]
	cmp	DWORD PTR [ecx+44], 0
	jne	SHORT $L57618

; 1635 :       // Nothing needs to be done here.
; 1636 :    }

	jmp	SHORT $L57617
$L57618:

; 1637 : 
; 1638 : #if defined( DB2 ) || defined( ODBC )
; 1639 :    {
; 1640 :       HSTMT          hstmt;
; 1641 :       zSHORT         nRC;
; 1642 :       zSHORT         k;
; 1643 :       SQLSMALLINT    nC_DataType;
; 1644 :       SQLSMALLINT    nSQL_Type;
; 1645 :       SQLUINTEGER    nColumnSize;
; 1646 :       SQLINTEGER     nParmLth;
; 1647 :       SQLINTEGER     iBufferLth;
; 1648 :       SQLINTEGER     lKey;
; 1649 :       zPLONG         lKeyList;
; 1650 :       zCHAR          szCmd[ 300 ];
; 1651 : 
; 1652 :       // If we are holding stmt handles then we can use the "general" stmt
; 1653 :       // handle because each SELECT gets its own handle.  If we are not
; 1654 :       // holding handles then we have to create a temp one because the
; 1655 :       // general hstmt is being used by the current SELECT command.
; 1656 :       if ( g_bHoldStmtHandles )
; 1657 :          hstmt = lpConnection->hGeneralStmt;
; 1658 :       else
; 1659 :       {
; 1660 :          nRC = SQLAllocHandle( SQL_HANDLE_STMT, lpConnection->hdbc, &hstmt );
; 1661 :          SQL_RC( "SQLAllocHandle", nRC, "Allocate HSTMT", 0, 2 );
; 1662 :          if ( nRC != SQL_SUCCESS )
; 1663 :             return( zCALL_ERROR );
; 1664 :       }
; 1665 : 
; 1666 :       zsprintf( szCmd,
; 1667 :                 "INSERT INTO ZEIDONKEYLIST ( TASKID, INTVALUE ) VALUES ( %ld, ? )",
; 1668 :                 hTask );
; 1669 :       nRC = SQLPrepare( hstmt, szCmd, SQL_NTS );
; 1670 :       SQL_RC( "SQLPrepare insert", nRC, 0, 0, 3 );
; 1671 : 
; 1672 :       nC_DataType = SQL_C_SLONG;
; 1673 :       nSQL_Type   = SQL_INTEGER;
; 1674 :       iBufferLth  = sizeof( zLONG );
; 1675 :       nColumnSize = sizeof( zLONG );
; 1676 :       nParmLth    = sizeof( zLONG );
; 1677 : 
; 1678 :       nRC = SQLBindParameter( hstmt, 1, SQL_PARAM_INPUT,
; 1679 :                               nC_DataType, nSQL_Type, nColumnSize, 0,
; 1680 :                               (SQLPOINTER) &lKey, iBufferLth,
; 1681 :                               &nParmLth );
; 1682 :       SQL_RC( "SQLBindParameter", nRC, "Column = ", "IntValue", 3 );
; 1683 :       if ( lpConnection->nTraceLevel > 2 )
; 1684 :       {
; 1685 :          TraceLineI( "nC_DataType = ", nC_DataType );
; 1686 :          TraceLineI( "nSQL_Type   = ", nSQL_Type );
; 1687 :          TraceLineI( "nColumnSize = ", nColumnSize );
; 1688 :       }
; 1689 : 
; 1690 :       lKeyList = (zPLONG) lpQualAttrib->lpKeyList;
; 1691 :       for ( k = 0; k < lpQualAttrib->lKeyCount; k++ )
; 1692 :       {
; 1693 :          lKey = lKeyList[ k ];
; 1694 : 
; 1695 :          nRC = SQLExecute( hstmt );
; 1696 :          SQL_RC( "SQLExecute", nRC, "Allocate HSTMT", 0, 2 );
; 1697 :       }
; 1698 : 
; 1699 :       // If we created a temp statement handle we need to free it.
; 1700 :       if ( g_bHoldStmtHandles == FALSE )
; 1701 :          SQLFreeHandle( SQL_HANDLE_STMT, (SQLHANDLE) hstmt );
; 1702 :    }
; 1703 : #endif
; 1704 : 
; 1705 :    return( 0 );

	xor	ax, ax

; 1706 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_fnCreateKeyList@16 ENDP
_TEXT	ENDS
PUBLIC	_fnSetEntityByKeys@28
PUBLIC	??_C@_0BH@HOFD@Key?5type?5not?5supported?$AA@	; `string'
PUBLIC	??_C@_0BA@JJNG@DBHandler?5Error?$AA@		; `string'
EXTRN	_GetValueFromRecord@24:NEAR
EXTRN	_StoreStringInRecord@16:NEAR
EXTRN	_GetStringFromRecord@20:NEAR
EXTRN	_LoadEntity@16:NEAR
EXTRN	_SetEntityCursor@40:NEAR
EXTRN	_SysMessageBox@16:NEAR
EXTRN	_CompareAttributeToString@16:NEAR
EXTRN	_strcmp:NEAR
EXTRN	_StoreValueInRecord@20:NEAR
;	COMDAT ??_C@_0BH@HOFD@Key?5type?5not?5supported?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0BH@HOFD@Key?5type?5not?5supported?$AA@ DB 'Key type not supported', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@JJNG@DBHandler?5Error?$AA@
_DATA	SEGMENT
??_C@_0BA@JJNG@DBHandler?5Error?$AA@ DB 'DBHandler Error', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpKeyData$ = 12
_nEntityKeyCnt$ = 16
_bEntityCreatedList$ = 20
_lRootLimit$ = 24
_lRootCnt$ = 28
_lpBoundList$ = 32
_lpDataField$ = -12
_lpViewAttrib$ = -24
_lpLoadEntity$ = -32
_lpSearchEntity$ = -36
_lpPtr$ = -8
_bKeysMatch$ = -16
_bSearchNeeded$ = -28
_nKeyCnt$ = -20
_nRC$ = -4
_pchEntityJoinTable$57646 = -40
_lControl$57654 = -52
_pQualValue$57655 = -44
_lpLoopViewAttrib$57657 = -48
_chType$57676 = -56
_ulLth$57677 = -60
_plKeyValue$57683 = -64
_pchKeyValue$57688 = -68
_szDecimal$57717 = -168
_fnSetEntityByKeys@28 PROC NEAR

; 1726 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 184				; 000000b8H

; 1727 :    LPDATAFIELD  lpDataField;
; 1728 :    LPVIEWATTRIB lpViewAttrib;
; 1729 :    LPVIEWENTITY lpLoadEntity;
; 1730 :    LPVIEWENTITY lpSearchEntity;
; 1731 :    zPVOID       lpPtr;
; 1732 :    zBOOL        bKeysMatch;
; 1733 :    zBOOL        bSearchNeeded;
; 1734 :    zSHORT       nKeyCnt;
; 1735 :    zSHORT       nRC;
; 1736 : 
; 1737 :    if ( nEntityKeyCnt == 0 )

	movsx	eax, WORD PTR _nEntityKeyCnt$[ebp]
	test	eax, eax
	jne	SHORT $L57644

; 1738 :       return( 0 );

	xor	ax, ax
	jmp	$L57634
$L57644:

; 1739 : 
; 1740 :    lpLoadEntity = lpKeyData[ 0 ].lpLoadEntity;

	mov	ecx, DWORD PTR _lpKeyData$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lpLoadEntity$[ebp], edx

; 1741 : 
; 1742 :    // If a table has been joined with other tables, then it's possible for
; 1743 :    // the data for an entity to show up more than once.  To check for this,
; 1744 :    // we will search the entities to see if the entity already exists.
; 1745 :    // However, we don't need to do this if:
; 1746 :    //    o  The table wasn't joined
; 1747 :    //    o  The table was only joined with entities that have a x-to-1
; 1748 :    //       relationship.
; 1749 :    if ( lpBoundList->pchEntityJoinTable )

	mov	eax, DWORD PTR _lpBoundList$[ebp]
	cmp	DWORD PTR [eax+18], 0
	je	SHORT $L57645

; 1751 :       zPCHAR pchEntityJoinTable = lpBoundList->pchEntityJoinTable;

	mov	ecx, DWORD PTR _lpBoundList$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	mov	DWORD PTR _pchEntityJoinTable$57646[ebp], edx

; 1752 : 
; 1753 :       bSearchNeeded = FALSE;

	mov	BYTE PTR _bSearchNeeded$[ebp], 0

; 1754 : 
; 1755 :       for ( lpSearchEntity = lpLoadEntity;
; 1756 :             lpSearchEntity;
; 1757 :             lpSearchEntity = zGETPTR( lpSearchEntity->hParent ) )

	mov	eax, DWORD PTR _lpLoadEntity$[ebp]
	mov	DWORD PTR _lpSearchEntity$[ebp], eax
	jmp	SHORT $L57647
$L57648:
	mov	ecx, DWORD PTR _lpSearchEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpSearchEntity$[ebp], eax
$L57647:
	cmp	DWORD PTR _lpSearchEntity$[ebp], 0
	je	SHORT $L57649

; 1759 :          // If entity has been flagged with MULTICHILD, then search is needed
; 1760 :          // and we can stop our loop.
; 1761 :          if ( (pchEntityJoinTable[ lpSearchEntity->nHierNbr ] &
; 1762 :                                            zSELECT_JOINEDWITHMULTCHILD) != 0 )

	mov	eax, DWORD PTR _lpSearchEntity$[ebp]
	movsx	ecx, WORD PTR [eax+217]
	mov	edx, DWORD PTR _pchEntityJoinTable$57646[ebp]
	movsx	eax, BYTE PTR [edx+ecx]
	and	eax, 4
	test	eax, eax
	je	SHORT $L57650

; 1764 :             bSearchNeeded = TRUE;

	mov	BYTE PTR _bSearchNeeded$[ebp], 1

; 1765 :             break;

	jmp	SHORT $L57649
$L57650:

; 1767 : 
; 1768 :          // If entity hasn't been joined with a parent, we can stop checking.
; 1769 :          if ( (pchEntityJoinTable[ lpSearchEntity->nHierNbr ] &
; 1770 :                                            zSELECT_JOINEDWITHPARENT) == 0 )

	mov	ecx, DWORD PTR _lpSearchEntity$[ebp]
	movsx	edx, WORD PTR [ecx+217]
	mov	eax, DWORD PTR _pchEntityJoinTable$57646[ebp]
	movsx	ecx, BYTE PTR [eax+edx]
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L57651

; 1772 :             break;

	jmp	SHORT $L57649
$L57651:

; 1774 :       }

	jmp	SHORT $L57648
$L57649:

; 1776 :    else

	jmp	SHORT $L57652
$L57645:

; 1777 :       bSearchNeeded = TRUE;

	mov	BYTE PTR _bSearchNeeded$[ebp], 1
$L57652:

; 1778 : 
; 1779 :    if ( bSearchNeeded )

	mov	edx, DWORD PTR _bSearchNeeded$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	$L57672

; 1781 :       zLONG        lControl   = zQUAL_ATTR_HIDDEN | zQUAL_EQUAL;

	mov	DWORD PTR _lControl$57654[ebp], 16777232 ; 01000010H

; 1782 :       zCPVOID      pQualValue = (zCPVOID) lpKeyData[ 0 ].lpPtr;

	mov	eax, DWORD PTR _lpKeyData$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _pQualValue$57655[ebp], ecx

; 1783 :       LPVIEWATTRIB lpLoopViewAttrib;
; 1784 : 
; 1785 :    // TraceLineS( "DGC", " Doing Search" );
; 1786 : 
; 1787 :       lpLoopViewAttrib = lpKeyData[ 0 ].lpViewAttrib;

	mov	edx, DWORD PTR _lpKeyData$[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR _lpLoopViewAttrib$57657[ebp], eax

; 1788 : 
; 1789 :       switch ( lpKeyData[ 0 ].lpDataField->cFldType )
; 1790 :       {

	mov	ecx, DWORD PTR _lpKeyData$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	al, BYTE PTR [edx+270]
	mov	BYTE PTR -172+[ebp], al
	cmp	BYTE PTR -172+[ebp], 76			; 0000004cH
	je	SHORT $L57662
	cmp	BYTE PTR -172+[ebp], 77			; 0000004dH
	je	SHORT $L57664
	cmp	BYTE PTR -172+[ebp], 83			; 00000053H
	je	SHORT $L57663
	jmp	SHORT $L57665
$L57662:

; 1791 :          case zTYPE_INTEGER:
; 1792 :             lControl |= zQUAL_INTEGER;

	mov	ecx, DWORD PTR _lControl$57654[ebp]
	or	ch, 1
	mov	DWORD PTR _lControl$57654[ebp], ecx

; 1793 :             break;

	jmp	SHORT $L57659
$L57663:

; 1794 : 
; 1795 :          case zTYPE_STRING:
; 1796 :             lControl |= zQUAL_STRING;

	mov	edx, DWORD PTR _lControl$57654[ebp]
	or	dh, 4
	mov	DWORD PTR _lControl$57654[ebp], edx

; 1797 :             break;

	jmp	SHORT $L57659
$L57664:

; 1798 : 
; 1799 :          case zTYPE_DECIMAL:
; 1800 :             lControl |= zQUAL_DECIMAL;

	mov	eax, DWORD PTR _lControl$57654[ebp]
	or	ah, 2
	mov	DWORD PTR _lControl$57654[ebp], eax

; 1801 :             break;

	jmp	SHORT $L57659
$L57665:

; 1802 : 
; 1803 :          default:
; 1804 :             SysMessageBox( lpView, "DBHandler Error",
; 1805 :                            "Key type not supported", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BH@HOFD@Key?5type?5not?5supported?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BA@JJNG@DBHandler?5Error?$AA@ ; `string'
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SysMessageBox@16

; 1806 :             bKeysMatch = FALSE;

	mov	BYTE PTR _bKeysMatch$[ebp], 0
$L57659:

; 1809 : 
; 1810 :       // See if there is an entity that matches all the key values.
; 1811 :       for ( nRC = SetEntityCursor( lpView, lpLoadEntity->szName,
; 1812 :                                    lpLoopViewAttrib->szName,
; 1813 :                                    lControl | zPOS_FIRST, pQualValue, 0, 0,
; 1814 :                                    0, 0, 0 );
; 1815 :             nRC >= zCURSOR_SET;
; 1816 :             nRC = SetEntityCursor( lpView, lpLoadEntity->szName,
; 1817 :                                    lpLoopViewAttrib->szName,
; 1818 :                                    lControl | zPOS_NEXT, pQualValue, 0, 0,
; 1819 :                                    0, 0, 0 ) )

	push	0
	push	0
	push	0
	push	0
	push	0
	mov	edx, DWORD PTR _pQualValue$57655[ebp]
	push	edx
	mov	eax, DWORD PTR _lControl$57654[ebp]
	or	al, 1
	push	eax
	mov	ecx, DWORD PTR _lpLoopViewAttrib$57657[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpLoadEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SetEntityCursor@40
	mov	WORD PTR _nRC$[ebp], ax
	jmp	SHORT $L57670
$L57671:
	push	0
	push	0
	push	0
	push	0
	push	0
	mov	ecx, DWORD PTR _pQualValue$57655[ebp]
	push	ecx
	mov	edx, DWORD PTR _lControl$57654[ebp]
	or	edx, 3
	push	edx
	mov	eax, DWORD PTR _lpLoopViewAttrib$57657[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _lpLoadEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SetEntityCursor@40
	mov	WORD PTR _nRC$[ebp], ax
$L57670:
	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jl	$L57672

; 1821 :          // Go through each of the keys and see if the current entity
; 1822 :          // matches the keys.  If not, try with the next entity.
; 1823 :          // Assume that the keys will match.
; 1824 :          bKeysMatch = TRUE;

	mov	BYTE PTR _bKeysMatch$[ebp], 1

; 1825 :          for ( nKeyCnt = 1; nKeyCnt < nEntityKeyCnt; nKeyCnt++ )

	mov	WORD PTR _nKeyCnt$[ebp], 1
	jmp	SHORT $L57673
$L57674:
	mov	cx, WORD PTR _nKeyCnt$[ebp]
	add	cx, 1
	mov	WORD PTR _nKeyCnt$[ebp], cx
$L57673:
	movsx	edx, WORD PTR _nKeyCnt$[ebp]
	movsx	eax, WORD PTR _nEntityKeyCnt$[ebp]
	cmp	edx, eax
	jge	$L57675

; 1827 :             zCHAR        chType;
; 1828 :             zULONG       ulLth;
; 1829 : 
; 1830 :             lpDataField  = lpKeyData[ nKeyCnt ].lpDataField;

	movsx	ecx, WORD PTR _nKeyCnt$[ebp]
	shl	ecx, 4
	mov	edx, DWORD PTR _lpKeyData$[ebp]
	mov	eax, DWORD PTR [edx+ecx+8]
	mov	DWORD PTR _lpDataField$[ebp], eax

; 1831 :             lpViewAttrib = lpKeyData[ nKeyCnt ].lpViewAttrib;

	movsx	ecx, WORD PTR _nKeyCnt$[ebp]
	shl	ecx, 4
	mov	edx, DWORD PTR _lpKeyData$[ebp]
	mov	eax, DWORD PTR [edx+ecx+4]
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 1832 :             lpPtr        = lpKeyData[ nKeyCnt ].lpPtr;

	movsx	ecx, WORD PTR _nKeyCnt$[ebp]
	shl	ecx, 4
	mov	edx, DWORD PTR _lpKeyData$[ebp]
	mov	eax, DWORD PTR [edx+ecx+12]
	mov	DWORD PTR _lpPtr$[ebp], eax

; 1833 : 
; 1834 :             switch ( lpDataField->cFldType )
; 1835 :             {

	mov	ecx, DWORD PTR _lpDataField$[ebp]
	mov	dl, BYTE PTR [ecx+270]
	mov	BYTE PTR -176+[ebp], dl
	cmp	BYTE PTR -176+[ebp], 76			; 0000004cH
	je	SHORT $L57682
	cmp	BYTE PTR -176+[ebp], 77			; 0000004dH
	je	$L57700
	cmp	BYTE PTR -176+[ebp], 83			; 00000053H
	je	SHORT $L57687
	jmp	$L57703
$L57682:

; 1838 :                   zPLONG plKeyValue;
; 1839 : 
; 1840 :                   GetValueFromRecord( lpView, lpLoadEntity, lpViewAttrib,
; 1841 :                                       (zCOREMEM) &plKeyValue, &chType, &ulLth );

	lea	eax, DWORD PTR _ulLth$57677[ebp]
	push	eax
	lea	ecx, DWORD PTR _chType$57676[ebp]
	push	ecx
	lea	edx, DWORD PTR _plKeyValue$57683[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpLoadEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_GetValueFromRecord@24

; 1842 : 
; 1843 :                   // Compare the attribute value with the one we got from
; 1844 :                   // the database.
; 1845 :                   if ( *plKeyValue != *((zPLONG) lpPtr) )

	mov	eax, DWORD PTR _plKeyValue$57683[ebp]
	mov	ecx, DWORD PTR _lpPtr$[ebp]
	mov	edx, DWORD PTR [eax]
	cmp	edx, DWORD PTR [ecx]
	je	SHORT $L57686

; 1846 :                      bKeysMatch = FALSE;

	mov	BYTE PTR _bKeysMatch$[ebp], 0
$L57686:

; 1847 : 
; 1848 :                   break;

	jmp	$L57679
$L57687:

; 1853 :                   zPCHAR pchKeyValue;
; 1854 : 
; 1855 :                   GetValueFromRecord( lpView, lpLoadEntity, lpViewAttrib,
; 1856 :                                       (zCOREMEM) &pchKeyValue, &chType, &ulLth );

	lea	eax, DWORD PTR _ulLth$57677[ebp]
	push	eax
	lea	ecx, DWORD PTR _chType$57676[ebp]
	push	ecx
	lea	edx, DWORD PTR _pchKeyValue$57688[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpLoadEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_GetValueFromRecord@24

; 1857 : 
; 1858 :                   // Compare the attribute value with the one we
; 1859 :                   // got from the database.
; 1860 :                   if ( zstrcmp( pchKeyValue, (zPCHAR) lpPtr ) != 0 )

	mov	eax, DWORD PTR _pchKeyValue$57688[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _lpPtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	jne	SHORT $L58520
	mov	ecx, DWORD PTR _lpPtr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pchKeyValue$57688[ebp]
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -180+[ebp], eax
	jmp	SHORT $L58521
$L58520:
	mov	eax, DWORD PTR _pchKeyValue$57688[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _lpPtr$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -180+[ebp], edx
$L58521:
	cmp	DWORD PTR -180+[ebp], 0
	je	SHORT $L57699

; 1861 :                      bKeysMatch = FALSE;

	mov	BYTE PTR _bKeysMatch$[ebp], 0
$L57699:

; 1862 : 
; 1863 :                   break;

	jmp	SHORT $L57679
$L57700:

; 1868 :                   // We retrieve the value from the database as a string.  Call
; 1869 :                   // CompareAttributeToString( ) so that we use domain processing.
; 1870 :                   if ( CompareAttributeToString( lpView, lpLoadEntity->szName,
; 1871 :                                                  lpViewAttrib->szName,
; 1872 :                                                  (zPCHAR) lpPtr ) != 0 )

	mov	eax, DWORD PTR _lpPtr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpLoadEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_CompareAttributeToString@16
	movsx	ecx, ax
	test	ecx, ecx
	je	SHORT $L57702

; 1873 :                      bKeysMatch = FALSE;

	mov	BYTE PTR _bKeysMatch$[ebp], 0
$L57702:

; 1874 : 
; 1875 :                   break;

	jmp	SHORT $L57679
$L57703:

; 1877 : 
; 1878 :                default:
; 1879 :                   SysMessageBox( lpView, "DBHandler Error", "Key type not supported", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BH@HOFD@Key?5type?5not?5supported?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BA@JJNG@DBHandler?5Error?$AA@ ; `string'
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SysMessageBox@16

; 1880 :                   bKeysMatch = FALSE;

	mov	BYTE PTR _bKeysMatch$[ebp], 0
$L57679:

; 1884 : 
; 1885 :             // If we found a key that doesn't match, break loop and try
; 1886 :             // with the next entity.
; 1887 :             if ( bKeysMatch == FALSE )

	mov	eax, DWORD PTR _bKeysMatch$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L57704

; 1888 :                break;

	jmp	SHORT $L57675
$L57704:

; 1889 : 
; 1890 :          } // for ( nKeyCnt... )

	jmp	$L57674
$L57675:

; 1891 : 
; 1892 :          // If we get here and bKeysMatch is TRUE, then all the
; 1893 :          // keys for this entity matched, so we found the one we
; 1894 :          // want.  Stop looping through the entities.
; 1895 :          if ( bKeysMatch )

	mov	ecx, DWORD PTR _bKeysMatch$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L57705

; 1896 :             return( 0 );       // Entity not created.

	xor	ax, ax
	jmp	$L57634
$L57705:

; 1897 : 
; 1898 :       } // for each lpLoadEntity...

	jmp	$L57671
$L57672:

; 1901 : 
; 1902 :    // If we get here, then we didn't find an entity whose keys matched those
; 1903 :    // in lpKeyData[], so we need to create one.
; 1904 : 
; 1905 :    // If hParent is null, then we are about to create a root.  Make sure we
; 1906 :    // haven't reached the limit yet.
; 1907 :    if ( lpLoadEntity->hParent == 0 && lRootCnt >= lRootLimit )

	mov	edx, DWORD PTR _lpLoadEntity$[ebp]
	cmp	DWORD PTR [edx+10], 0
	jne	SHORT $L57706
	mov	eax, DWORD PTR _lRootCnt$[ebp]
	cmp	eax, DWORD PTR _lRootLimit$[ebp]
	jl	SHORT $L57706

; 1908 :       return( -1 );

	or	ax, -1
	jmp	$L57634
$L57706:

; 1909 : 
; 1910 :    LoadEntity( lpView, lpLoadEntity->szName, zPOS_LAST, 0 );

	push	0
	push	2
	mov	ecx, DWORD PTR _lpLoadEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_LoadEntity@16

; 1911 : 
; 1912 :    // Loop through the keys and set the attribute values.
; 1913 :    for ( nKeyCnt = 0; nKeyCnt < nEntityKeyCnt; nKeyCnt++ )

	mov	WORD PTR _nKeyCnt$[ebp], 0
	jmp	SHORT $L57708
$L57709:
	mov	ax, WORD PTR _nKeyCnt$[ebp]
	add	ax, 1
	mov	WORD PTR _nKeyCnt$[ebp], ax
$L57708:
	movsx	ecx, WORD PTR _nKeyCnt$[ebp]
	movsx	edx, WORD PTR _nEntityKeyCnt$[ebp]
	cmp	ecx, edx
	jge	$L57710

; 1915 :       lpDataField  = lpKeyData[ nKeyCnt ].lpDataField;

	movsx	eax, WORD PTR _nKeyCnt$[ebp]
	shl	eax, 4
	mov	ecx, DWORD PTR _lpKeyData$[ebp]
	mov	edx, DWORD PTR [ecx+eax+8]
	mov	DWORD PTR _lpDataField$[ebp], edx

; 1916 :       lpViewAttrib = lpKeyData[ nKeyCnt ].lpViewAttrib;

	movsx	eax, WORD PTR _nKeyCnt$[ebp]
	shl	eax, 4
	mov	ecx, DWORD PTR _lpKeyData$[ebp]
	mov	edx, DWORD PTR [ecx+eax+4]
	mov	DWORD PTR _lpViewAttrib$[ebp], edx

; 1917 :       lpPtr   = lpKeyData[ nKeyCnt ].lpPtr;

	movsx	eax, WORD PTR _nKeyCnt$[ebp]
	shl	eax, 4
	mov	ecx, DWORD PTR _lpKeyData$[ebp]
	mov	edx, DWORD PTR [ecx+eax+12]
	mov	DWORD PTR _lpPtr$[ebp], edx

; 1918 : 
; 1919 :       switch ( lpDataField->cFldType )
; 1920 :       {

	mov	eax, DWORD PTR _lpDataField$[ebp]
	movsx	ecx, BYTE PTR [eax+270]
	mov	DWORD PTR -184+[ebp], ecx
	mov	edx, DWORD PTR -184+[ebp]
	sub	edx, 68					; 00000044H
	mov	DWORD PTR -184+[ebp], edx
	cmp	DWORD PTR -184+[ebp], 16		; 00000010H
	ja	SHORT $L57718
	mov	ecx, DWORD PTR -184+[ebp]
	xor	eax, eax
	mov	al, BYTE PTR $L58522[ecx]
	jmp	DWORD PTR $L58523[eax*4]
$L57715:

; 1921 :          case zTYPE_DATETIME:
; 1922 :          case zTYPE_DATE:
; 1923 :          case zTYPE_TIME:
; 1924 :             StoreStringInRecord( lpView, lpLoadEntity, lpViewAttrib, lpPtr );

	mov	edx, DWORD PTR _lpPtr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpLoadEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_StoreStringInRecord@16

; 1925 :             break;

	jmp	SHORT $L57712
$L57716:

; 1929 :             zCHAR szDecimal[ 100 ];
; 1930 : 
; 1931 :             StoreStringInRecord( lpView, lpLoadEntity, lpViewAttrib, lpPtr );

	mov	eax, DWORD PTR _lpPtr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpLoadEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_StoreStringInRecord@16

; 1932 : 
; 1933 :             // Retrieve decimal value and copy it back into the attribute.
; 1934 :             // This will cause the Format routines to be called so that
; 1935 :             // the decimal gets rounded/truncated correctly.
; 1936 :             GetStringFromRecord( lpView, lpLoadEntity, lpViewAttrib,
; 1937 :                                  szDecimal, sizeof( szDecimal ) );

	push	100					; 00000064H
	lea	ecx, DWORD PTR _szDecimal$57717[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpLoadEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_GetStringFromRecord@20

; 1938 :             StoreStringInRecord( lpView, lpLoadEntity, lpViewAttrib,
; 1939 :                                  szDecimal );

	lea	edx, DWORD PTR _szDecimal$57717[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpLoadEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_StoreStringInRecord@16

; 1940 : 
; 1941 :             break;

	jmp	SHORT $L57712
$L57718:

; 1943 : 
; 1944 :          default:
; 1945 :             // Note that length is only used for blob attributes, so we
; 1946 :             // will always pass 0.
; 1947 :             StoreValueInRecord( lpView, lpLoadEntity, lpViewAttrib,
; 1948 :                                 lpPtr, 0 );

	push	0
	mov	eax, DWORD PTR _lpPtr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpLoadEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_StoreValueInRecord@20
$L57712:

; 1952 : 
; 1953 :    } // for ( nKeyCnt... )

	jmp	$L57709
$L57710:

; 1954 : 
; 1955 :    if ( bEntityCreatedList )

	cmp	DWORD PTR _bEntityCreatedList$[ebp], 0
	je	SHORT $L57719

; 1956 :       bEntityCreatedList[ lpLoadEntity->nHierNbr ] = TRUE;

	mov	ecx, DWORD PTR _lpLoadEntity$[ebp]
	movsx	edx, WORD PTR [ecx+217]
	mov	eax, DWORD PTR _bEntityCreatedList$[ebp]
	mov	BYTE PTR [eax+edx], 1
$L57719:

; 1957 : 
; 1958 :    // We created an entity so return 1.
; 1959 :    return( 1 );

	mov	ax, 1
$L57634:

; 1960 : }

	mov	esp, ebp
	pop	ebp
	ret	28					; 0000001cH
$L58523:
	DD	$L57715
	DD	$L57716
	DD	$L57718
$L58522:
	DB	0
	DB	2
	DB	2
	DB	2
	DB	2
	DB	0
	DB	2
	DB	2
	DB	2
	DB	1
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	2
	DB	0
_fnSetEntityByKeys@28 ENDP
_TEXT	ENDS
PUBLIC	_DisplayCommand
PUBLIC	_fnDBH_Callback@24
PUBLIC	__real@8@3fff8cccccccccccd000
PUBLIC	_Load
PUBLIC	??_C@_0DG@PFML@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Performing?5loa@ ; `string'
PUBLIC	??_C@_0BA@BADB@?5?5Entity?5name?3?5?$AA@	; `string'
PUBLIC	??_C@_0P@CCKC@?5?5Table?5name?3?5?$AA@		; `string'
PUBLIC	??_C@_0DE@IAL@?5?5Table?5loaded?5earlier?5as?5part?5o@ ; `string'
PUBLIC	??_C@_0FC@LJLO@XOD?5?8?$CFs?8?5needs?5to?5be?5saved?5with?5@ ; `string'
PUBLIC	??_C@_0BC@NKII@DBHandler?5Warning?$AA@		; `string'
PUBLIC	??_C@_0BG@NJF@?5?5Table?5IS?5qualified?4?$AA@	; `string'
PUBLIC	??_C@_0BK@KKJ@?5?5Table?5is?5not?5qualified?4?$AA@ ; `string'
PUBLIC	??_C@_0BJ@FGHI@SQL?5might?5not?5be?5needed?4?$AA@ ; `string'
PUBLIC	??_C@_0DG@OBLP@Loading?5entity?5from?5parent?5using@ ; `string'
PUBLIC	??_C@_0P@LFKB@Entity?5name?5?$DN?5?$AA@		; `string'
PUBLIC	??_C@_09EMIP@executed?4?$AA@			; `string'
PUBLIC	??_C@_0DD@LABC@Foreign?5key?5is?5null?0?5so?5followin@ ; `string'
PUBLIC	??_C@_0BL@ECMK@Number?5of?5rows?5selected?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0M@JJEC@Compile?5SQL?$AA@			; `string'
PUBLIC	??_C@_0CG@KNGC@?$CIxa?$CJ?5Number?5of?5rows?5currently?5re@ ; `string'
PUBLIC	??_C@_0BP@GFJJ@Duplicate?5row?5found?0?5entity?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0O@CBHC@TempString?$CFld?$AA@		; `string'
PUBLIC	??_C@_0BN@FPPH@Number?5of?5roots?5retrieved?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BN@PBBH@Number?5of?5rows?5?5retrieved?5?$DN?5?$AA@ ; `string'
EXTRN	_CheckExistenceOfEntity@8:NEAR
EXTRN	__fltused:NEAR
EXTRN	_SysGetDateTime@4:NEAR
EXTRN	_SysConvertDoubleToDecimal@12:NEAR
EXTRN	_SysMalloc@4:NEAR
EXTRN	_SqlFreeBoundAttrList@4:NEAR
EXTRN	_SqlInitBoundAttrList@20:NEAR
EXTRN	_TraceLineI@8:NEAR
EXTRN	_DisplayEntityInstance@8:NEAR
EXTRN	_SqlBuildSelect@24:NEAR
EXTRN	_SqlAutoLoadFromParent@24:NEAR
EXTRN	_SqlEntityIsQualified@8:NEAR
EXTRN	_SqlRetrieveQualObject@20:NEAR
EXTRN	_memset:NEAR
EXTRN	_SqlDisplayCommand@8:NEAR
EXTRN	_SqlDisplayQualEntity@8:NEAR
;	COMDAT ??_C@_0DG@PFML@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Performing?5loa@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0DG@PFML@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Performing?5loa@ DB '='
	DB	'================ Performing load ===================', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@BADB@?5?5Entity?5name?3?5?$AA@
_DATA	SEGMENT
??_C@_0BA@BADB@?5?5Entity?5name?3?5?$AA@ DB '  Entity name: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@CCKC@?5?5Table?5name?3?5?$AA@
_DATA	SEGMENT
??_C@_0P@CCKC@?5?5Table?5name?3?5?$AA@ DB '  Table name: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DE@IAL@?5?5Table?5loaded?5earlier?5as?5part?5o@
_DATA	SEGMENT
??_C@_0DE@IAL@?5?5Table?5loaded?5earlier?5as?5part?5o@ DB '  Table loaded'
	DB	' earlier as part of a join. Entity = ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0FC@LJLO@XOD?5?8?$CFs?8?5needs?5to?5be?5saved?5with?5@
_DATA	SEGMENT
??_C@_0FC@LJLO@XOD?5?8?$CFs?8?5needs?5to?5be?5saved?5with?5@ DB 'XOD ''%s'
	DB	''' needs to be saved with new JOIN code. Keys must be first f'
	DB	'or entity: %s.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@NKII@DBHandler?5Warning?$AA@
_DATA	SEGMENT
??_C@_0BC@NKII@DBHandler?5Warning?$AA@ DB 'DBHandler Warning', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@NJF@?5?5Table?5IS?5qualified?4?$AA@
_DATA	SEGMENT
??_C@_0BG@NJF@?5?5Table?5IS?5qualified?4?$AA@ DB '  Table IS qualified.', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@KKJ@?5?5Table?5is?5not?5qualified?4?$AA@
_DATA	SEGMENT
??_C@_0BK@KKJ@?5?5Table?5is?5not?5qualified?4?$AA@ DB '  Table is not qua'
	DB	'lified.', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@FGHI@SQL?5might?5not?5be?5needed?4?$AA@
_DATA	SEGMENT
??_C@_0BJ@FGHI@SQL?5might?5not?5be?5needed?4?$AA@ DB 'SQL might not be ne'
	DB	'eded.', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DG@OBLP@Loading?5entity?5from?5parent?5using@
_DATA	SEGMENT
??_C@_0DG@OBLP@Loading?5entity?5from?5parent?5using@ DB 'Loading entity f'
	DB	'rom parent using AutoLoadFromParent; ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@LFKB@Entity?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0P@LFKB@Entity?5name?5?$DN?5?$AA@ DB 'Entity name = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_09EMIP@executed?4?$AA@
_DATA	SEGMENT
??_C@_09EMIP@executed?4?$AA@ DB 'executed.', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DD@LABC@Foreign?5key?5is?5null?0?5so?5followin@
_DATA	SEGMENT
??_C@_0DD@LABC@Foreign?5key?5is?5null?0?5so?5followin@ DB 'Foreign key is'
	DB	' null, so following command was not ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@ECMK@Number?5of?5rows?5selected?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BL@ECMK@Number?5of?5rows?5selected?5?$DN?5?$AA@ DB 'Number of rows'
	DB	' selected = ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@JJEC@Compile?5SQL?$AA@
_DATA	SEGMENT
??_C@_0M@JJEC@Compile?5SQL?$AA@ DB 'Compile SQL', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CG@KNGC@?$CIxa?$CJ?5Number?5of?5rows?5currently?5re@
_DATA	SEGMENT
??_C@_0CG@KNGC@?$CIxa?$CJ?5Number?5of?5rows?5currently?5re@ DB '(xa) Numb'
	DB	'er of rows currently read = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BP@GFJJ@Duplicate?5row?5found?0?5entity?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BP@GFJJ@Duplicate?5row?5found?0?5entity?5?$DN?5?$AA@ DB 'Duplicate'
	DB	' row found, entity = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@CBHC@TempString?$CFld?$AA@
_DATA	SEGMENT
??_C@_0O@CBHC@TempString?$CFld?$AA@ DB 'TempString%ld', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@FPPH@Number?5of?5roots?5retrieved?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BN@FPPH@Number?5of?5roots?5retrieved?5?$DN?5?$AA@ DB 'Number of ro'
	DB	'ots retrieved = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@PBBH@Number?5of?5rows?5?5retrieved?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BN@PBBH@Number?5of?5rows?5?5retrieved?5?$DN?5?$AA@ DB 'Number of r'
	DB	'ows  retrieved = ', 00H			; `string'
_DATA	ENDS
;	COMDAT __real@8@3fff8cccccccccccd000
CONST	SEGMENT
__real@8@3fff8cccccccccccd000 DQ 03ff199999999999ar ; 1.1
CONST	ENDS
_TEXT	SEGMENT
_lpViewEntity$ = 8
_lpView$ = 12
_lpViewOD$ = 16
_lpQualView$ = 20
_lpConnection$ = 24
_Indicators$ = 28
_lpQualEntity$ = -2100
_lpViewAttrib$ = -2096
_lpDataRecord$ = -2148
_lpDataField$ = -1268
_lpRelRecord$ = -2144
_lpBoundList$ = -2136
_LoopInfo$ = -1256
_lpKeyData$ = -2084
_pvDBH_Data$ = -2124
_lpMem$ = -1220
_ppchBufferPtrArea$ = -1216
_ppchBufferPtr$ = -2112
_lpPtr$ = -1264
_ulTotalLth$ = -1276
_lRowCount$ = -2140
_lRootCnt$ = -16
_lRootLimit$ = -1284
_hMem$ = -12
_lMemLth$ = -2092
_lFuncs$ = -2120
_bKeyListCreated$ = -2108
_bCursorOpened$ = -8
_bKeysOnly$ = -1272
_bOpenSQL$ = -2132
_bCreateMultipleRoots$ = -2088
_bRootLimitReached$ = -1280
_nEntityKeyCnt$ = -2104
_nColumnCnt$ = -4
_nReturnCode$ = -2116
_nRC$ = -1260
_szMsg$57779 = -2648
_k$57783 = -2652
_lpParent$57801 = -2656
_hTask$57836 = -2660
_bEntityCreatedList$57846 = -3160
_lpLastCreatedEntity$57850 = -3168
_bNewEntity$57851 = -3172
_lpCreatedEntity$57852 = -3164
_lpLoadEntity$57858 = -3176
_lTemp$57884 = -3180
_szTemp$57886 = -3212
_dTemp$57890 = -3252
_szDateTime$57894 = -3272
_Load	PROC NEAR

; 1983 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 3288				; 00000cd8H
	push	edi

; 1984 :    LPQUALENTITY      lpQualEntity;
; 1985 :    LPVIEWATTRIB      lpViewAttrib;
; 1986 :    LPDATARECORD      lpDataRecord;
; 1987 :    LPDATAFIELD       lpDataField;
; 1988 :    LPRELRECORD       lpRelRecord;
; 1989 :    LPATTRIBFLAGS     lpAttribFlags;
; 1990 :    LPBOUNDLIST       lpBoundList = 0;

	mov	DWORD PTR _lpBoundList$[ebp], 0

; 1991 :    DataFieldLoopInfo LoopInfo;
; 1992 :    KeyData           lpKeyData[ 50 ];
; 1993 :    zPVOID            pvDBH_Data = 0;

	mov	DWORD PTR _pvDBH_Data$[ebp], 0

; 1994 :    zPVOID            lpMem;
; 1995 :    zPCHAR            ppchBufferPtrArea[ MAX_COLUMNS ] = { 0 };

	mov	DWORD PTR _ppchBufferPtrArea$[ebp], 0
	mov	ecx, 299				; 0000012bH
	xor	eax, eax
	lea	edi, DWORD PTR _ppchBufferPtrArea$[ebp+4]
	rep stosd

; 1996 :    zPPCHAR           ppchBufferPtr = ppchBufferPtrArea;

	lea	eax, DWORD PTR _ppchBufferPtrArea$[ebp]
	mov	DWORD PTR _ppchBufferPtr$[ebp], eax

; 1997 :    zPCHAR            lpPtr;
; 1998 :    zULONG            ulTotalLth;
; 1999 :    zLONG             lRowCount;
; 2000 :    zLONG             lRootCnt;
; 2001 :    zLONG             lRootLimit;
; 2002 :    zLONG             hMem = 0;

	mov	DWORD PTR _hMem$[ebp], 0

; 2003 :    zLONG             lMemLth;
; 2004 :    zLONG             lFuncs;
; 2005 :    zBOOL             bKeyListCreated = FALSE;

	mov	BYTE PTR _bKeyListCreated$[ebp], 0

; 2006 :    zBOOL             bCursorOpened = FALSE;

	mov	BYTE PTR _bCursorOpened$[ebp], 0

; 2007 :    zBOOL             bKeysOnly;
; 2008 :    zBOOL             bOpenSQL = FALSE;

	mov	BYTE PTR _bOpenSQL$[ebp], 0

; 2009 :    zBOOL             bCreateMultipleRoots = ((Indicators & zMULTIPLE) != 0);

	mov	ecx, DWORD PTR _Indicators$[ebp]
	and	ecx, 256				; 00000100H
	neg	ecx
	sbb	ecx, ecx
	neg	ecx
	mov	BYTE PTR _bCreateMultipleRoots$[ebp], cl

; 2010 :    zBOOL             bRootLimitReached = FALSE;

	mov	BYTE PTR _bRootLimitReached$[ebp], 0

; 2011 :    zSHORT            nEntityKeyCnt = 0;

	mov	WORD PTR _nEntityKeyCnt$[ebp], 0

; 2012 :    zSHORT            nColumnCnt;
; 2013 :    zSHORT            nReturnCode = zCALL_ERROR;

	mov	WORD PTR _nReturnCode$[ebp], -16	; fffffff0H

; 2014 :    zSHORT            nRC;
; 2015 : 
; 2016 : #if defined( DB2 )
; 2017 : 
; 2018 :    LPHANDLES      lpHandles = 0;
; 2019 :    LPSTMTHANDLES  lpStmtHandle = 0;
; 2020 : 
; 2021 :    // Define statements needed to load BLOB/CLOB columns.
; 2022 :    SQLHSTMT     hBlobStmt    = 0;
; 2023 :    SQLHSTMT     hLocatorStmt = 0;
; 2024 : 
; 2025 :    // Get a pointer to the dbh-specific data for DB2.
; 2026 :    CallbackInfoRecord CallbackInfo = { 0 };
; 2027 : 
; 2028 :    LPDB2_OBJECTDATA lpDB2_Data =
; 2029 :                            (LPDB2_OBJECTDATA) zGETPTR( lpViewOD->hDBH_Data );
; 2030 : 
; 2031 :    pvDBH_Data = &CallbackInfo;
; 2032 :    CallbackInfo.cBuildFunction = BUILD_SELECT;
; 2033 : 
; 2034 : #elif defined( ODBC )
; 2035 : 
; 2036 :    LPHANDLES          lpHandles = 0;
; 2037 :    LPSTMTHANDLES      lpStmtHandle = 0;
; 2038 :    CallbackInfoRecord CallbackInfo = { 0 };
; 2039 : 
; 2040 :    pvDBH_Data = &CallbackInfo;
; 2041 : 
; 2042 :    // Get a pointer to the dbh-specific data for ODBC.  We'll pass this info
; 2043 :    // around via the lpBoundList structure.
; 2044 :    CallbackInfo.lpObjectData = zGETPTR( lpViewOD->hDBH_Data );
; 2045 :    CallbackInfo.cBuildFunction = BUILD_SELECT;
; 2046 : 
; 2047 : #endif
; 2048 : 
; 2049 :    lpDataRecord = zGETPTR( lpViewEntity->hFirstDataRecord );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+191]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpDataRecord$[ebp], eax

; 2050 :    lpRelRecord  = zGETPTR( lpDataRecord->hFirstRelRecord );

	mov	ecx, DWORD PTR _lpDataRecord$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpRelRecord$[ebp], eax

; 2051 : 
; 2052 :    if ( lpConnection->nTraceLevel > 1 )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+214]
	cmp	ecx, 1
	jle	SHORT $L57765

; 2054 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 2055 :       TraceLineS( "================= Performing load ===================", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DG@PFML@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Performing?5loa@ ; `string'
	call	_TraceLineS@8

; 2056 :       TraceLineS( "  Entity name: ", lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0BA@BADB@?5?5Entity?5name?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 2057 :       TraceLineS( "  Table name: ", lpDataRecord->szRecordName );

	mov	eax, DWORD PTR _lpDataRecord$[ebp]
	add	eax, 15					; 0000000fH
	push	eax
	push	OFFSET FLAT:??_C@_0P@CCKC@?5?5Table?5name?3?5?$AA@ ; `string'
	call	_TraceLineS@8
$L57765:

; 2059 : 
; 2060 : #ifdef USE_JOINS
; 2061 :    // If we are loading only the root entities then we don't want to use a
; 2062 :    // join to load any children.
; 2063 :    lFuncs = zCB_FUNCS;

	mov	DWORD PTR _lFuncs$[ebp], 318767104	; 13000000H

; 2064 :    if ( Indicators & zACTIVATE_ROOTONLY )

	mov	ecx, DWORD PTR _Indicators$[ebp]
	and	ecx, 268435456				; 10000000H
	test	ecx, ecx
	je	SHORT $L57769

; 2065 :       lFuncs &= ~zSQLCALLBACK_USEJOIN;

	mov	edx, DWORD PTR _lFuncs$[ebp]
	and	edx, -33554433				; fdffffffH
	mov	DWORD PTR _lFuncs$[ebp], edx
$L57769:

; 2066 : 
; 2067 :    // Check to see if the entity was already loaded via a join.
; 2068 :    if ( lpConnection->pchEntityJoinTable == 0 )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	cmp	DWORD PTR [eax+776], 0
	jne	SHORT $L57770

; 2070 :       // We haven't yet allocated the table to indicate what has been joined
; 2071 :       // so do it now.
; 2072 :       lpConnection->pchEntityJoinTable = SysMalloc( lpViewOD->uEntities + 1 );

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	xor	edx, edx
	mov	dx, WORD PTR [ecx+234]
	add	edx, 1
	push	edx
	call	_SysMalloc@4
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [ecx+776], eax

; 2074 :    else

	jmp	SHORT $L57772
$L57770:

; 2076 :       // pchEntityJoinTable is an array of chars, one char for each entity in
; 2077 :       // the XOD.  If the bit for the current entity is non-zero, then the
; 2078 :       // entity has already been loaded via a join.
; 2079 :       if ( (lpConnection->pchEntityJoinTable[ lpViewEntity->nHierNbr ] &
; 2080 :                                             zSELECT_JOINEDWITHPARENT) != 0 )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+776]
	movsx	eax, BYTE PTR [edx+eax]
	and	eax, 1
	test	eax, eax
	je	SHORT $L57772

; 2082 :          if ( lpConnection->nTraceLevel > 1 )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+214]
	cmp	edx, 1
	jle	SHORT $L57773

; 2083 :             TraceLineS( "  Table loaded earlier as part of a join. Entity = ",
; 2084 :                         lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0DE@IAL@?5?5Table?5loaded?5earlier?5as?5part?5o@ ; `string'
	call	_TraceLineS@8
$L57773:

; 2085 : 
; 2086 :          nReturnCode = 0;

	mov	WORD PTR _nReturnCode$[ebp], 0

; 2087 : 
; 2088 :          // If the entity has hanging FKeys then we need to check to see if the
; 2089 :          // entity was loaded.  If not we want to return a -1 so that core knows
; 2090 :          // it should check to see if the entity has a hanging FK.
; 2091 :          if ( lpViewEntity->bHangingFKey )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+239]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	SHORT $L57776

; 2093 :             if ( CheckExistenceOfEntity( lpView,
; 2094 :                                          lpViewEntity->szName ) != zCURSOR_SET )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_CheckExistenceOfEntity@8
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L57776

; 2095 :                nReturnCode = -1;  // Indicates that entity doesn't exist.

	mov	WORD PTR _nReturnCode$[ebp], -1
$L57776:

; 2097 : 
; 2098 :          goto EndOfFunction;

	jmp	$EndOfFunction$57777
$L57772:

; 2101 : 
; 2102 : #ifdef DEBUG
; 2103 :    // DGC 6/22/2001
; 2104 :    // Put in a check to make sure that keys are sorted first.  This shouldn't
; 2105 :    // be necessary after everybody moves to new join code.
; 2106 :    lpDataField  = zGETPTR( lpDataRecord->hFirstDataField );

	mov	eax, DWORD PTR _lpDataRecord$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpDataField$[ebp], eax

; 2107 :    lpViewAttrib = zGETPTR( lpDataField->hViewAttrib );

	mov	edx, DWORD PTR _lpDataField$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 2108 :    if ( lpViewAttrib->bKey == FALSE )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	jne	SHORT $L57778

; 2110 :       zCHAR szMsg[ 500 ];
; 2111 : 
; 2112 :       zsprintf( szMsg, "XOD '%s' needs to be saved with new JOIN code. "
; 2113 :                 "Keys must be first for entity: %s.",
; 2114 :                 lpViewOD->szName, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0FC@LJLO@XOD?5?8?$CFs?8?5needs?5to?5be?5saved?5with?5@ ; `string'
	lea	edx, DWORD PTR _szMsg$57779[ebp]
	push	edx
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 2115 :       SysMessageBox( lpView, "DBHandler Warning", szMsg, 0 );

	push	0
	lea	eax, DWORD PTR _szMsg$57779[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BC@NKII@DBHandler?5Warning?$AA@ ; `string'
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SysMessageBox@16
$L57778:

; 2117 : #endif
; 2118 : 
; 2119 : #endif
; 2120 : 
; 2121 :    SqlInitBoundAttrList( &lpBoundList, lpConnection->pchEntityJoinTable,
; 2122 :                          fnDBH_Callback, lFuncs, pvDBH_Data );

	mov	edx, DWORD PTR _pvDBH_Data$[ebp]
	push	edx
	mov	eax, DWORD PTR _lFuncs$[ebp]
	push	eax
	push	OFFSET FLAT:_fnDBH_Callback@24
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+776]
	push	edx
	lea	eax, DWORD PTR _lpBoundList$[ebp]
	push	eax
	call	_SqlInitBoundAttrList@20

; 2123 : 
; 2124 :    // Until further notice we will return zCALL_ERROR if we exit early.
; 2125 : 
; 2126 :    if ( lpQualView )

	cmp	DWORD PTR _lpQualView$[ebp], 0
	je	$L57782

; 2128 :       zSHORT k;
; 2129 : 
; 2130 :       // Check to see if we've already stored the qual OI.  Start by looking
; 2131 :       // for lpQualView in the qualification list.
; 2132 :       for ( k = 0; k < lpConnection->nQualCount; k++ )

	mov	WORD PTR _k$57783[ebp], 0
	jmp	SHORT $L57784
$L57785:
	mov	cx, WORD PTR _k$57783[ebp]
	add	cx, 1
	mov	WORD PTR _k$57783[ebp], cx
$L57784:
	movsx	edx, WORD PTR _k$57783[ebp]
	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+188]
	cmp	edx, ecx
	jge	SHORT $L57786

; 2134 :          if ( lpConnection->vQualList[ k ] == lpQualView )

	movsx	edx, WORD PTR _k$57783[ebp]
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4+28]
	cmp	ecx, DWORD PTR _lpQualView$[ebp]
	jne	SHORT $L57787

; 2135 :             break;

	jmp	SHORT $L57786
$L57787:

; 2136 :       }

	jmp	SHORT $L57785
$L57786:

; 2137 : 
; 2138 :       // If k = nQualCount then we didn't find lpQualView so we must extract
; 2139 :       // the OI to a QualEntity list.  If lpViewEntity is the root entity
; 2140 :       // then we'll reload the qualfication OI if lpQualView was found.
; 2141 :       if ( k == lpConnection->nQualCount || lpViewEntity->hParent == 0 )

	movsx	edx, WORD PTR _k$57783[ebp]
	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+188]
	cmp	edx, ecx
	je	SHORT $L57789
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [edx+10], 0
	jne	$L57792
$L57789:

; 2143 :          // If there already is a lpQualEntity then we need to free up the
; 2144 :          // old one so we can create a new one.
; 2145 :          if ( lpConnection->lpQualEntityList[ k ] )

	movsx	eax, WORD PTR _k$57783[ebp]
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	cmp	DWORD PTR [ecx+eax*4+108], 0
	je	SHORT $L57790

; 2146 :             SqlFreeQualEntity( &lpConnection->lpQualEntityList[ k ] );

	movsx	edx, WORD PTR _k$57783[ebp]
	mov	eax, DWORD PTR _lpConnection$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4+108]
	push	ecx
	call	_SqlFreeQualEntity@4
$L57790:

; 2147 : 
; 2148 :          // Copy the contents of lpQualView to memory.
; 2149 :          nRC = SqlRetrieveQualObject( lpView, lpQualView, lpViewOD,
; 2150 :                                       &lpConnection->lpQualEntityList[ k ],
; 2151 :                                       lpBoundList );

	mov	edx, DWORD PTR _lpBoundList$[ebp]
	push	edx
	movsx	eax, WORD PTR _k$57783[ebp]
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	lea	edx, DWORD PTR [ecx+eax*4+108]
	push	edx
	mov	eax, DWORD PTR _lpViewOD$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpQualView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SqlRetrieveQualObject@20
	mov	WORD PTR _nRC$[ebp], ax

; 2152 :          if ( nRC < 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jge	SHORT $L57791

; 2153 :             goto EndOfFunction;

	jmp	$EndOfFunction$57777
$L57791:

; 2154 : 
; 2155 :          // If this is a new view we must bump up our count.
; 2156 :          if ( k == lpConnection->nQualCount )

	movsx	ecx, WORD PTR _k$57783[ebp]
	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+188]
	cmp	ecx, eax
	jne	SHORT $L57792

; 2158 :             // Make sure that nQualCount doesn't get bigger than our max
; 2159 :             // count.  We have to subtract one from MAX_QUALIFICATIONS for
; 2160 :             // comparison because nQualCount can never be equal to
; 2161 :             // MAX_QUALIFICATIONS.
; 2162 :             if ( lpConnection->nQualCount < MAX_QUALIFICATIONS - 1 )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+188]
	cmp	edx, 19					; 00000013H
	jge	SHORT $L57793

; 2163 :                lpConnection->nQualCount++;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	cx, WORD PTR [eax+188]
	add	cx, 1
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	WORD PTR [edx+188], cx
$L57793:

; 2164 : 
; 2165 :             lpConnection->vQualList[ k ] = lpQualView;

	movsx	eax, WORD PTR _k$57783[ebp]
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR _lpQualView$[ebp]
	mov	DWORD PTR [ecx+eax*4+28], edx
$L57792:

; 2168 : 
; 2169 :       lpConnection->lpFirstQualEntity = lpConnection->lpQualEntityList[ k ];

	movsx	eax, WORD PTR _k$57783[ebp]
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+eax*4+108]
	mov	DWORD PTR [ecx+190], eax

; 2171 :    else

	jmp	SHORT $L57794
$L57782:

; 2173 :       // No qual entity so blank it out.
; 2174 :       lpConnection->lpFirstQualEntity = 0;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [ecx+190], 0
$L57794:

; 2176 : 
; 2177 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 2178 :    bKeysOnly = FALSE;

	mov	BYTE PTR _bKeysOnly$[ebp], 0

; 2179 : 
; 2180 :    lpQualEntity = SqlEntityIsQualified( lpConnection->lpFirstQualEntity,
; 2181 :                                         lpViewEntity );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+190]
	push	ecx
	call	_SqlEntityIsQualified@8
	mov	DWORD PTR _lpQualEntity$[ebp], eax

; 2182 : 
; 2183 :    if ( lpConnection->nTraceLevel > 2 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	cmp	eax, 2
	jle	SHORT $L57800

; 2185 :       if ( lpConnection->lpFirstQualEntity )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	cmp	DWORD PTR [ecx+190], 0
	je	SHORT $L57796

; 2186 :          TraceLineS( "  Table IS qualified.", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BG@NJF@?5?5Table?5IS?5qualified?4?$AA@ ; `string'
	call	_TraceLineS@8

; 2187 :       else

	jmp	SHORT $L57798
$L57796:

; 2188 :          TraceLineS( "  Table is not qualified.", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BK@KKJ@?5?5Table?5is?5not?5qualified?4?$AA@ ; `string'
	call	_TraceLineS@8
$L57798:

; 2189 : 
; 2190 :       if ( lpViewEntity->hParent )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [edx+10], 0
	je	SHORT $L57800

; 2192 :          LPVIEWENTITY lpParent = zGETPTR( lpViewEntity->hParent );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpParent$57801[ebp], eax

; 2193 : 
; 2194 :          DisplayEntityInstance( lpView, lpParent->szName );

	mov	edx, DWORD PTR _lpParent$57801[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_DisplayEntityInstance@8
$L57800:

; 2197 : 
; 2198 :    if ( lpQualEntity && lpConnection->nTraceLevel > 2 )

	cmp	DWORD PTR _lpQualEntity$[ebp], 0
	je	SHORT $L57802
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+214]
	cmp	edx, 2
	jle	SHORT $L57802

; 2199 :       SqlDisplayQualEntity( lpQualEntity, FALSE );

	push	0
	mov	eax, DWORD PTR _lpQualEntity$[ebp]
	push	eax
	call	_SqlDisplayQualEntity@8
$L57802:

; 2200 : 
; 2201 : #if defined( DB2 )
; 2202 : {
; 2203 :    LPOD_LIST lpOD = fnFindOD( lpViewOD, lpConnection );
; 2204 : 
; 2205 :    // Check for static bind.
; 2206 :    if ( lpDB2_Data && lpDB2_Data->bUseStaticSQL )
; 2207 :    {
; 2208 :       // Load static library if not already loaded.
; 2209 :       if ( lpOD->hStaticLibrary == 0 )
; 2210 :       {
; 2211 :          lpOD->hStaticLibrary = SysLoadLibrary( lpView,
; 2212 :                                                 lpDB2_Data->szStaticSQL_DLL );
; 2213 :          if ( lpOD->hStaticLibrary == 0 )
; 2214 :             goto EndOfFunction;
; 2215 :       }
; 2216 : 
; 2217 :       if ( lpQualEntity == 0 )
; 2218 :       {
; 2219 :          zSHORT (POPERATION pfnFunc)( zVIEW, LPVIEWOD, LPVIEWENTITY,
; 2220 :                                       int, zSHORT );
; 2221 :          zCHAR  szFuncName[ 200 ];
; 2222 : 
; 2223 :          lpOD->bNeedsCommit = TRUE;
; 2224 : 
; 2225 :          // We have static binding so call the static function.
; 2226 :          zsprintf( szFuncName, "SQL_%s_%s_Select", lpOD->lpViewOD->szName,
; 2227 :                    lpViewEntity->szName );
; 2228 :          pfnFunc = SysGetProc( lpOD->hStaticLibrary, szFuncName );
; 2229 : 
; 2230 :          nRC = (*pfnFunc)( lpView, lpViewOD, lpViewEntity, Indicators,
; 2231 :                            lpConnection->nTraceLevel );
; 2232 : 
; 2233 :          nReturnCode = nRC;
; 2234 :          goto EndOfFunction;
; 2235 :       }
; 2236 :       else
; 2237 :       if ( lpQualEntity->bUniqueQualification )
; 2238 :       {
; 2239 :          zSHORT (POPERATION pfnFunc)( zVIEW, LPVIEWOD, LPVIEWENTITY,
; 2240 :                                       LPQUALENTITY, int, zSHORT );
; 2241 :          zCHAR  szFuncName[ 200 ];
; 2242 : 
; 2243 :          lpOD->bNeedsCommit = TRUE;
; 2244 : 
; 2245 :          // We have static binding so call the static function.
; 2246 :          zsprintf( szFuncName, "SQL_%s_%s_SelectUnique", lpOD->lpViewOD->szName,
; 2247 :                    lpViewEntity->szName );
; 2248 :          pfnFunc = SysGetProc( lpOD->hStaticLibrary, szFuncName );
; 2249 : 
; 2250 :          nRC = (*pfnFunc)( lpView, lpViewOD, lpViewEntity, lpQualEntity,
; 2251 :                            Indicators, lpConnection->nTraceLevel );
; 2252 : 
; 2253 :          nReturnCode = nRC;
; 2254 :          goto EndOfFunction;
; 2255 :       }
; 2256 : 
; 2257 :       // We have to use dynamic SQL so open a connection using it.
; 2258 :       fnOpenDatabaseConnection( lpView, lpViewOD, lpViewEntity, lpConnection );
; 2259 :    }
; 2260 : }
; 2261 : #endif
; 2262 : 
; 2263 : #if defined( DB2 ) || defined( ODBC )
; 2264 : 
; 2265 :    // Check to see if we've already generated/prepared the SQL for this
; 2266 :    // entity.
; 2267 :    if ( g_bHoldStmtHandles )
; 2268 :    {
; 2269 :       zSHORT rc;
; 2270 :       zSHORT k;
; 2271 : 
; 2272 :       // Find the handle info for this LOD.
; 2273 :       for ( k = 0; lpConnection->lpHandles[ k ]; k++ )
; 2274 :       {
; 2275 :          if ( lpConnection->lpHandles[ k ]->lpViewOD == lpViewOD )
; 2276 :             break;
; 2277 :       }
; 2278 : 
; 2279 :       // We need to allocate handles (and other info) for each of the entities
; 2280 :       // in the LOD.  If lpHandles is 0 we need to allocate it now.
; 2281 :       if ( lpConnection->lpHandles[ k ] == 0 )
; 2282 :       {
; 2283 :          zUSHORT nLth;
; 2284 : 
; 2285 :          lpConnection->lpHandles[ k ] = malloc( sizeof( SelectHandlesRecord ) );
; 2286 :          zmemset( lpConnection->lpHandles[ k ], 0, sizeof( SelectHandlesRecord ) );
; 2287 : 
; 2288 :          // It's just easier to allocate one extra record instead of worrying
; 2289 :          // about converting hier # to an offset.
; 2290 :          nLth = sizeof( EntityHandlesRecord ) * (lpViewOD->uEntities + 1);
; 2291 : 
; 2292 :          // We didn't find one so create space to store the handles.
; 2293 :          lpConnection->lpHandles[ k ]->lpViewOD = lpViewOD;
; 2294 :          lpConnection->lpHandles[ k ]->lpStmtHandles = malloc( nLth );
; 2295 :          zmemset( lpConnection->lpHandles[ k ]->lpStmtHandles, 0, nLth );
; 2296 :       }
; 2297 : 
; 2298 :       lpHandles    = lpConnection->lpHandles[ k ];
; 2299 :       lpStmtHandle = &lpHandles->lpStmtHandles[ lpViewEntity->nHierNbr ];
; 2300 : 
; 2301 :       // Check to see if a handle has been created for this entity.
; 2302 :       if ( lpStmtHandle->hstmt )
; 2303 :       {
; 2304 :          // Use the old bound list.  Free up the current one since we don't
; 2305 :          // need it anymore.
; 2306 :          SqlFreeBoundAttrList( lpBoundList );
; 2307 :          lpBoundList = lpStmtHandle->lpBoundList;
; 2308 : 
; 2309 :          // If we are using autoload, then we are only activating the keys,
; 2310 :          // so set the flag.
; 2311 :          if ( lpViewEntity->bAutoLoadFromParent )
; 2312 :             bKeysOnly = TRUE;
; 2313 : 
; 2314 :          if ( lpStmtHandle->bLoadFromParent )
; 2315 :          {
; 2316 :             // We can load this guy from the parent so do it now.
; 2317 :             nRC = SqlAutoLoadFromParent( lpView, lpViewOD, lpViewEntity,
; 2318 :                                          lpConnection->lpFirstQualEntity,
; 2319 :                                          lpConnection->pchConnSqlCmd, lpBoundList );
; 2320 :             if ( nRC < 0 )
; 2321 :                goto EndOfFunction;
; 2322 :             else
; 2323 :             {
; 2324 :                nReturnCode = 0;
; 2325 :                goto EndOfFunction;
; 2326 :             }
; 2327 :          }
; 2328 : 
; 2329 :          lpConnection->hstmt = lpStmtHandle->hstmt;
; 2330 :          lpConnection->pchGlobalTableBuffer = lpStmtHandle->pchOutputBuffer;
; 2331 :          ppchBufferPtr = lpStmtHandle->ppchBufferPtr;
; 2332 : 
; 2333 :          // Skip the prepare/bind step.
; 2334 :          goto ExecuteCommand;
; 2335 :       }
; 2336 : 
; 2337 :       // No statement handle so we must create one and prepare the SQL.
; 2338 : #if defined( DB2 )
; 2339 : 
; 2340 :       rc = SQLAllocStmt( lpConnection->hdbc, &lpStmtHandle->hstmt );
; 2341 :       SQL_RC( "SQLAllocStmt", rc, "Allocate HSTMT", 0, 2 );
; 2342 :       if ( rc != SQL_SUCCESS )
; 2343 :          goto EndOfFunction;
; 2344 : 
; 2345 : #elif defined( ODBC )
; 2346 : 
; 2347 :       rc = SQLAllocHandle( SQL_HANDLE_STMT, lpConnection->hdbc,
; 2348 :                            &lpStmtHandle->hstmt );
; 2349 :       SQL_RC( "SQLAllocHandle", rc, "Allocate HSTMT", 0, 2 );
; 2350 :       if ( rc != SQL_SUCCESS )
; 2351 :          goto EndOfFunction;
; 2352 : 
; 2353 : #endif
; 2354 : 
; 2355 :       lpConnection->hstmt = lpStmtHandle->hstmt;
; 2356 :    }
; 2357 :    else
; 2358 :       lpConnection->hstmt = lpConnection->hGeneralStmt;
; 2359 : 
; 2360 : #endif
; 2361 : 
; 2362 :    // AutoLoad:
; 2363 :    // When the parent has the imbedded keys for the child and the
; 2364 :    // only attributes in the child are those imbedded keys.
; 2365 :    // Autoload is defined (for Phil) from the object for performance reasons.
; 2366 :    if ( lpViewEntity->bAutoLoadFromParent )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 30					; 0000001eH
	and	edx, 1
	test	edx, edx
	je	$L57803

; 2368 :       if ( lpConnection->nTraceLevel > 1 )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+214]
	cmp	ecx, 1
	jle	SHORT $L57804

; 2370 :          TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 2371 :          TraceLineS( "Loading entity from parent using AutoLoadFromParent; ",
; 2372 :                      "SQL might not be needed." );

	push	OFFSET FLAT:??_C@_0BJ@FGHI@SQL?5might?5not?5be?5needed?4?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0DG@OBLP@Loading?5entity?5from?5parent?5using@ ; `string'
	call	_TraceLineS@8

; 2373 :          TraceLineS( "Entity name = ", lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0P@LFKB@Entity?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L57804:

; 2375 : 
; 2376 :       // Return codes from SqlAutoLoadFromParent are:
; 2377 :       //    0 - Nothing done. Perform normal SQL code.
; 2378 :       //    1 - Entity created using info from parent.
; 2379 :       //    2 - A SQL command was created and needs to be executed.  In this
; 2380 :       //        case only the keys need to be loaded for the entity.
; 2381 :       nRC = SqlAutoLoadFromParent( lpView, lpViewOD, lpViewEntity,
; 2382 :                                    lpConnection->lpFirstQualEntity,
; 2383 :                                    lpConnection->pchConnSqlCmd, lpBoundList );

	mov	eax, DWORD PTR _lpBoundList$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+194]
	push	edx
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+190]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewOD$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SqlAutoLoadFromParent@24
	mov	WORD PTR _nRC$[ebp], ax

; 2384 :       if ( nRC < 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jge	SHORT $L57808

; 2385 :          goto EndOfFunction;

	jmp	$EndOfFunction$57777
$L57808:

; 2386 :       else
; 2387 :       if ( nRC == 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jne	SHORT $L57810

; 2389 :          nRC = SqlBuildSelect( lpView, lpViewOD, lpViewEntity,
; 2390 :                                lpConnection->lpFirstQualEntity,
; 2391 :                                lpConnection->pchConnSqlCmd, lpBoundList );

	mov	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+194]
	push	eax
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+190]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SqlBuildSelect@24
	mov	WORD PTR _nRC$[ebp], ax

; 2392 :          if ( nRC == zCALL_ERROR )

	movsx	eax, WORD PTR _nRC$[ebp]
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L57811

; 2393 :             goto EndOfFunction;

	jmp	$EndOfFunction$57777
$L57811:

; 2395 :       else

	jmp	SHORT $L57815
$L57810:

; 2396 :       if ( nRC == 1 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, 1
	jne	SHORT $L57813

; 2398 :          nReturnCode = 0;

	mov	WORD PTR _nReturnCode$[ebp], 0

; 2399 : 
; 2400 : #if defined( DB2 ) || defined( ODBC )
; 2401 :          // We have to indicate that this entity is loaded from the parent
; 2402 :          // instead of the database.
; 2403 :          if ( g_bHoldStmtHandles )
; 2404 :          {
; 2405 :             lpStmtHandle->bLoadFromParent = TRUE;
; 2406 :             lpStmtHandle->lpBoundList = lpBoundList;
; 2407 :          }
; 2408 : #endif
; 2409 : 
; 2410 :          goto EndOfFunction;

	jmp	$EndOfFunction$57777
$L57813:

; 2412 :       else
; 2413 :       if ( nRC == 2 )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, 2
	jne	SHORT $L57815

; 2415 :          bKeysOnly = TRUE;

	mov	BYTE PTR _bKeysOnly$[ebp], 1

; 2416 :          nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L57815:

; 2419 :    else

	jmp	SHORT $L57817
$L57803:

; 2421 :       nRC = SqlBuildSelect( lpView, lpViewOD, lpViewEntity,
; 2422 :                             lpConnection->lpFirstQualEntity,
; 2423 :                             lpConnection->pchConnSqlCmd, lpBoundList );

	mov	eax, DWORD PTR _lpBoundList$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+194]
	push	edx
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+190]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewOD$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SqlBuildSelect@24
	mov	WORD PTR _nRC$[ebp], ax

; 2424 :       if ( nRC == zCALL_ERROR )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L57817

; 2425 :          goto EndOfFunction;

	jmp	$EndOfFunction$57777
$L57817:

; 2427 : 
; 2428 :    // If the '2' bit is set then multiple tables where joined together.
; 2429 :    nRC &= ~((zSHORT) 0x0002); // turn off the join flag

	mov	ax, WORD PTR _nRC$[ebp]
	and	al, -3					; fffffffdH
	mov	WORD PTR _nRC$[ebp], ax

; 2430 : 
; 2431 :    // If nRC == 1, then some of the foreign keys are null, which means that
; 2432 :    // there are no children.
; 2433 : 
; 2434 : #if defined( DB2 ) || defined( ODBC )
; 2435 : 
; 2436 :    // If we're holding on to stmt handles we will ignore the nRC == 1 return
; 2437 :    // code because we still want to prepare the stmt for later use.
; 2438 :    if ( nRC == 1 && g_bHoldStmtHandles )
; 2439 :       nRC = 0;
; 2440 : 
; 2441 : #endif
; 2442 : 
; 2443 :    if ( nRC == 1 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, 1
	jne	SHORT $L57819

; 2445 :       if ( lpConnection->nTraceLevel > 1 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	cmp	eax, 1
	jle	SHORT $L57820

; 2447 :          TraceLineS( "Foreign key is null, so following command was not ",
; 2448 :                      "executed." );

	push	OFFSET FLAT:??_C@_09EMIP@executed?4?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0DD@LABC@Foreign?5key?5is?5null?0?5so?5followin@ ; `string'
	call	_TraceLineS@8

; 2449 :          SqlDisplayCommand( lpConnection->pchConnSqlCmd, 0 );

	push	0
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+194]
	push	edx
	call	_SqlDisplayCommand@8

; 2450 :          TraceLineI( "Number of rows selected = ", (zLONG) 0 );

	push	0
	push	OFFSET FLAT:??_C@_0BL@ECMK@Number?5of?5rows?5selected?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8
$L57820:

; 2452 : 
; 2453 :       nReturnCode = 0;

	mov	WORD PTR _nReturnCode$[ebp], 0

; 2454 :       goto EndOfFunction;

	jmp	$EndOfFunction$57777
$L57819:

; 2456 : 
; 2457 :    // Check to see if the current select was built using OpenSQL.
; 2458 :    if ( lpQualEntity && lpQualEntity->pszOpenSQL )

	cmp	DWORD PTR _lpQualEntity$[ebp], 0
	je	SHORT $L57825
	mov	eax, DWORD PTR _lpQualEntity$[ebp]
	cmp	DWORD PTR [eax+16], 0
	je	SHORT $L57825

; 2459 :       bOpenSQL = TRUE;

	mov	BYTE PTR _bOpenSQL$[ebp], 1
$L57825:

; 2460 : 
; 2461 :    // ================================================================
; 2462 :    // Set up incoming buffer area.
; 2463 :    // ================================================================
; 2464 : 
; 2465 :    // First get the attribute lengths.
; 2466 :    LoopInfo.bOpenSQL          = bOpenSQL;

	mov	cl, BYTE PTR _bOpenSQL$[ebp]
	mov	BYTE PTR _LoopInfo$[ebp], cl

; 2467 :    LoopInfo.bKeysOnly         = bKeysOnly;

	mov	dl, BYTE PTR _bKeysOnly$[ebp]
	mov	BYTE PTR _LoopInfo$[ebp+1], dl

; 2468 :    LoopInfo.bFirstPass        = TRUE;

	mov	BYTE PTR _LoopInfo$[ebp+32], 1

; 2469 :    LoopInfo.lpQualEntity      = lpQualEntity;

	mov	eax, DWORD PTR _lpQualEntity$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+4], eax

; 2470 :    LoopInfo.lpFirstQualEntity = lpConnection->lpFirstQualEntity;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+190]
	mov	DWORD PTR _LoopInfo$[ebp+8], edx

; 2471 :    LoopInfo.lpViewEntity      = lpViewEntity;

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+12], eax

; 2472 :    LoopInfo.lpDataField       = 0;

	mov	DWORD PTR _LoopInfo$[ebp+20], 0

; 2473 :    LoopInfo.lControl          = Indicators;

	mov	ecx, DWORD PTR _Indicators$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+24], ecx

; 2474 :    LoopInfo.lpBoundList       = lpBoundList;

	mov	edx, DWORD PTR _lpBoundList$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+28], edx

; 2475 :    nColumnCnt                 = 0;

	mov	WORD PTR _nColumnCnt$[ebp], 0

; 2476 :    ulTotalLth                 = 0;

	mov	DWORD PTR _ulTotalLth$[ebp], 0

; 2477 : 
; 2478 :    for ( lpDataField = fnGetNextDataField( &LoopInfo );
; 2479 :          lpDataField;
; 2480 :          lpDataField = fnGetNextDataField( &LoopInfo ) )

	lea	eax, DWORD PTR _LoopInfo$[ebp]
	push	eax
	call	_fnGetNextDataField@4
	mov	DWORD PTR _lpDataField$[ebp], eax
	jmp	SHORT $L57826
$L57827:
	lea	ecx, DWORD PTR _LoopInfo$[ebp]
	push	ecx
	call	_fnGetNextDataField@4
	mov	DWORD PTR _lpDataField$[ebp], eax
$L57826:
	cmp	DWORD PTR _lpDataField$[ebp], 0
	je	SHORT $L57828

; 2482 :       lpViewAttrib = zGETPTR( lpDataField->hViewAttrib );

	mov	edx, DWORD PTR _lpDataField$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 2483 :       nColumnCnt++;

	mov	cx, WORD PTR _nColumnCnt$[ebp]
	add	cx, 1
	mov	WORD PTR _nColumnCnt$[ebp], cx

; 2484 : 
; 2485 :       // ================================================================
; 2486 :       // Get column length.
; 2487 :       // ================================================================
; 2488 : 
; 2489 : #if defined( DB2 ) || defined( ODBC )
; 2490 :       {
; 2491 :       SWORD        fSqlType;
; 2492 :       UDWORD       ulLth;
; 2493 : 
; 2494 :       // We need space for the incoming length.
; 2495 :       ulTotalLth += sizeof( SQLINTEGER );
; 2496 : 
; 2497 :       switch ( lpViewAttrib->cType )
; 2498 :       {
; 2499 :          case zTYPE_BLOB:
; 2500 : #if defined( ODBC )
; 2501 :             // We don't want to bind blobs because we are going to use
; 2502 :             // SQLGetData( ) to retrieve the data.
; 2503 :             continue;
; 2504 : #else
; 2505 :             fSqlType = SQL_C_BLOB_LOCATOR;
; 2506 : #endif
; 2507 :             ulLth = sizeof( SQLINTEGER );
; 2508 :             break;
; 2509 : 
; 2510 :          case zTYPE_DATETIME:
; 2511 :          case zTYPE_TIME:
; 2512 :          case zTYPE_DATE:
; 2513 :             fSqlType = SQL_C_CHAR;
; 2514 :             ulLth = CONVERSION_AREA_LTH; // We'll retrieve the date as a string
; 2515 :                                          // and then convert it.
; 2516 :             break;
; 2517 : 
; 2518 :          case 'X':
; 2519 :             // TimeStampEx.
; 2520 :             fSqlType = SQL_C_CHAR;
; 2521 :             ulLth = CONVERSION_AREA_LTH;
; 2522 :             break;
; 2523 : 
; 2524 :          case zTYPE_INTEGER:
; 2525 :             fSqlType = SQL_C_SLONG;
; 2526 :             ulLth = sizeof( zLONG );
; 2527 :             break;
; 2528 : 
; 2529 :          case zTYPE_DECIMAL:
; 2530 :             fSqlType = SQL_C_CHAR;
; 2531 :             ulLth = CONVERSION_AREA_LTH; // We'll retrieve the date as a string
; 2532 :                                          // and then convert it.
; 2533 :             break;
; 2534 : 
; 2535 :          case zTYPE_STRING:
; 2536 :             switch ( lpDataField->cFldType )
; 2537 :             {
; 2538 :                case 'V':
; 2539 : #if defined( DB2 )
; 2540 :                   fSqlType = SQL_C_CLOB_LOCATOR;
; 2541 :                   ulLth = sizeof( SQLINTEGER );
; 2542 : #else
; 2543 :                   // We don't want to bind varchar because we are going to use
; 2544 :                   // SQLGetData( ) to retrieve the data.
; 2545 :                   continue;
; 2546 : #endif
; 2547 :                   break;
; 2548 : 
; 2549 :                default:
; 2550 :                   fSqlType = SQL_C_CHAR;
; 2551 :                   ulLth = lpDataField->uFldLth + 1;
; 2552 :                   break;
; 2553 :             }
; 2554 : 
; 2555 :             break;
; 2556 : 
; 2557 :          default:
; 2558 :             DBH_Error(lpView, "Unknown Data Type", 0, 0 );
; 2559 :             nRC = zCALL_ERROR;
; 2560 :             break;
; 2561 :       }
; 2562 : 
; 2563 :       ulTotalLth += ulLth;
; 2564 : 
; 2565 :       }
; 2566 : 
; 2567 : #endif
; 2568 : 
; 2569 :    } // for ( lpDataField )...

	jmp	SHORT $L57827
$L57828:

; 2570 : 
; 2571 :    // Allocate the buffer.
; 2572 : #if defined( DB2 ) || defined( ODBC )
; 2573 : 
; 2574 :    if ( g_bHoldStmtHandles )
; 2575 :    {
; 2576 :       // We need to add one more to column count to account for the difference
; 2577 :       // between the count and offsets.
; 2578 :       nColumnCnt++;
; 2579 : 
; 2580 :       lpStmtHandle->pchOutputBuffer = malloc( ulTotalLth + 1 );
; 2581 :       lpConnection->pchGlobalTableBuffer = lpStmtHandle->pchOutputBuffer;
; 2582 :       lpStmtHandle->ppchBufferPtr = malloc( sizeof( zPCHAR ) * nColumnCnt );
; 2583 :       ppchBufferPtr = lpStmtHandle->ppchBufferPtr;
; 2584 :       zmemset( ppchBufferPtr, 0, sizeof( zPCHAR ) * nColumnCnt );
; 2585 :       lpStmtHandle->lpBoundList = lpBoundList;
; 2586 :    }
; 2587 : #endif
; 2588 : 
; 2589 :    // ================================================================
; 2590 :    // Compile/prepare SQL.
; 2591 :    // ================================================================
; 2592 : 
; 2593 : #if defined( DB2 ) || defined( ODBC )
; 2594 : 
; 2595 :    nRC = SQLPrepare( lpConnection->hstmt, lpConnection->pchConnSqlCmd, SQL_NTS );
; 2596 :    DisplayCommand( "SQLPrepare", nRC, lpConnection );
; 2597 :    if ( nRC != SQL_SUCCESS )
; 2598 :       goto EndOfFunction;
; 2599 : 
; 2600 : #elif defined( DUMMY )
; 2601 : 
; 2602 :    DisplayCommand( "Compile SQL", nRC, lpConnection );

	mov	edx, DWORD PTR _lpConnection$[ebp]
	push	edx
	mov	ax, WORD PTR _nRC$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0M@JJEC@Compile?5SQL?$AA@ ; `string'
	call	_DisplayCommand
	add	esp, 12					; 0000000cH

; 2603 :    if ( nRC )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L57830

; 2604 :       goto EndOfFunction;

	jmp	$EndOfFunction$57777
$L57830:

; 2605 : 
; 2606 : #endif
; 2607 : 
; 2608 :    // Set the select buffer for each data field.
; 2609 :    LoopInfo.bOpenSQL          = bOpenSQL;

	mov	dl, BYTE PTR _bOpenSQL$[ebp]
	mov	BYTE PTR _LoopInfo$[ebp], dl

; 2610 :    LoopInfo.bKeysOnly         = bKeysOnly;

	mov	al, BYTE PTR _bKeysOnly$[ebp]
	mov	BYTE PTR _LoopInfo$[ebp+1], al

; 2611 :    LoopInfo.bFirstPass        = TRUE;

	mov	BYTE PTR _LoopInfo$[ebp+32], 1

; 2612 :    LoopInfo.lpQualEntity      = lpQualEntity;

	mov	ecx, DWORD PTR _lpQualEntity$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+4], ecx

; 2613 :    LoopInfo.lpFirstQualEntity = lpConnection->lpFirstQualEntity;

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+190]
	mov	DWORD PTR _LoopInfo$[ebp+8], eax

; 2614 :    LoopInfo.lpViewEntity      = lpViewEntity;

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+12], ecx

; 2615 :    LoopInfo.lpDataField       = 0;

	mov	DWORD PTR _LoopInfo$[ebp+20], 0

; 2616 :    LoopInfo.lControl          = Indicators;

	mov	edx, DWORD PTR _Indicators$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+24], edx

; 2617 :    LoopInfo.lpBoundList       = lpBoundList;

	mov	eax, DWORD PTR _lpBoundList$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+28], eax

; 2618 :    nColumnCnt = 0;

	mov	WORD PTR _nColumnCnt$[ebp], 0

; 2619 :    lpPtr        = lpConnection->pchGlobalTableBuffer;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+202]
	mov	DWORD PTR _lpPtr$[ebp], edx

; 2620 : 
; 2621 :    for ( lpDataField = fnGetNextDataField( &LoopInfo );
; 2622 :          lpDataField;
; 2623 :          lpDataField = fnGetNextDataField( &LoopInfo ) )

	lea	eax, DWORD PTR _LoopInfo$[ebp]
	push	eax
	call	_fnGetNextDataField@4
	mov	DWORD PTR _lpDataField$[ebp], eax
	jmp	SHORT $L57831
$L57832:
	lea	ecx, DWORD PTR _LoopInfo$[ebp]
	push	ecx
	call	_fnGetNextDataField@4
	mov	DWORD PTR _lpDataField$[ebp], eax
$L57831:
	cmp	DWORD PTR _lpDataField$[ebp], 0
	je	SHORT $ExecuteCommand$57834

; 2625 :       lpViewAttrib = zGETPTR( lpDataField->hViewAttrib );

	mov	edx, DWORD PTR _lpDataField$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 2626 :       nColumnCnt++;

	mov	cx, WORD PTR _nColumnCnt$[ebp]
	add	cx, 1
	mov	WORD PTR _nColumnCnt$[ebp], cx

; 2627 : 
; 2628 :       // ================================================================
; 2629 :       // Bind columns.
; 2630 :       // ================================================================
; 2631 : 
; 2632 : #if defined( DB2 ) || defined( ODBC )
; 2633 :       {
; 2634 :       SWORD        fSqlType;
; 2635 :       UDWORD       ulLth;
; 2636 :       zPCHAR       lpDataPtr;
; 2637 : 
; 2638 :       ppchBufferPtr[ nColumnCnt ] = lpPtr;
; 2639 : 
; 2640 :       // lpDataPtr points to the area that is to hold the data returned from
; 2641 :       // the database.
; 2642 :       lpDataPtr = lpPtr + sizeof( SQLINTEGER );
; 2643 :       *(SQLINTEGER *) lpPtr = 0;
; 2644 : 
; 2645 :       switch ( lpViewAttrib->cType )
; 2646 :       {
; 2647 :          case zTYPE_BLOB:
; 2648 : #if defined( ODBC )
; 2649 :             // We don't want to bind blobs because we are going to use
; 2650 :             // SQLGetData( ) to retrieve the data.
; 2651 :             continue;
; 2652 : #else
; 2653 :             fSqlType = SQL_C_BLOB_LOCATOR;
; 2654 : #endif
; 2655 :             ulLth = sizeof( SQLINTEGER );
; 2656 :             break;
; 2657 : 
; 2658 :          case zTYPE_DATETIME:
; 2659 :          case zTYPE_TIME:
; 2660 :          case zTYPE_DATE:
; 2661 :             fSqlType = SQL_C_CHAR;
; 2662 :             ulLth = CONVERSION_AREA_LTH; // We'll store the date as a string
; 2663 :                                          // and then convert it.
; 2664 :             break;
; 2665 : 
; 2666 :          case 'X':
; 2667 :             // TimeStampEx.
; 2668 :             fSqlType = SQL_C_CHAR;
; 2669 :             ulLth = CONVERSION_AREA_LTH;
; 2670 :             break;
; 2671 : 
; 2672 :          case zTYPE_INTEGER:
; 2673 :             fSqlType = SQL_C_SLONG;
; 2674 :             ulLth = sizeof( zLONG );
; 2675 :             break;
; 2676 : 
; 2677 :          case zTYPE_DECIMAL:
; 2678 :             fSqlType = SQL_C_CHAR;
; 2679 :             ulLth = CONVERSION_AREA_LTH; // We'll retrieve the decimal as a
; 2680 :                                          // string and then convert it.
; 2681 :             break;
; 2682 : 
; 2683 :          case zTYPE_STRING:
; 2684 :             switch ( lpDataField->cFldType )
; 2685 :             {
; 2686 :                case 'V':
; 2687 : #if defined( DB2 )
; 2688 :                   fSqlType = SQL_C_CLOB_LOCATOR;
; 2689 :                   ulLth = sizeof( SQLINTEGER );
; 2690 : #else
; 2691 :                   // We don't want to bind varchar because we are going to use
; 2692 :                   // SQLGetData( ) to retrieve the data.
; 2693 :                   continue;
; 2694 : #endif
; 2695 :                   break;
; 2696 : 
; 2697 :                default:
; 2698 :                   fSqlType = SQL_C_CHAR;
; 2699 :                   ulLth = lpDataField->uFldLth + 1;
; 2700 :                   break;
; 2701 :             }
; 2702 : 
; 2703 :             break;
; 2704 : 
; 2705 :          default:
; 2706 :             DBH_Error(lpView, "Unknown Data Type", 0, 0 );
; 2707 :             nRC = zCALL_ERROR;
; 2708 :             break;
; 2709 :       }
; 2710 : 
; 2711 : 
; 2712 :       nRC = SQLBindCol( lpConnection->hstmt, nColumnCnt, fSqlType,
; 2713 :                         (SQLPOINTER) lpDataPtr,
; 2714 :                         ulLth, (SQLINTEGER *) lpPtr );
; 2715 :       SQL_RC( "SQLBindCol", nRC, "Attr = ", lpViewAttrib->szName, 2 );
; 2716 : 
; 2717 :       if ( lpConnection->nTraceLevel >= 2 )
; 2718 :       {
; 2719 :          zCHAR sz[ 2 ] = " ";
; 2720 : 
; 2721 :          TraceLineI( "Column Count         = ", nColumnCnt );
; 2722 :          TraceLineS( "Column Name          = ", lpDataField->szFldName );
; 2723 :          sz[ 0 ] = lpViewAttrib->cType;
; 2724 :          TraceLineS( "ViewAttrib data type = ", sz );
; 2725 :          sz[ 0 ] = lpDataField->cFldType;
; 2726 :          TraceLineS( "DataField data type  = ", sz );
; 2727 :       }
; 2728 : 
; 2729 :       if ( !RC_SUCCESSFUL( nRC ) )
; 2730 :          goto EndOfFunction;
; 2731 : 
; 2732 :       lpPtr += ulLth + sizeof( SQLINTEGER );
; 2733 : 
; 2734 :       }
; 2735 : 
; 2736 : #endif
; 2737 : 
; 2738 :    } // for ( lpDataField )...

	jmp	SHORT $L57832
$ExecuteCommand$57834:

; 2739 : 
; 2740 : #if defined( DB2 ) || defined( ODBC )
; 2741 : 
; 2742 :    // Save the SQL command and statement handle.
; 2743 :    if ( g_bHoldStmtHandles )
; 2744 :    {
; 2745 :       zSHORT nLth = zstrlen( lpConnection->pchConnSqlCmd );
; 2746 : 
; 2747 :       lpStmtHandle->pchSqlCmd = malloc( nLth + 1 );
; 2748 :       zstrcpy( lpStmtHandle->pchSqlCmd, lpConnection->pchConnSqlCmd );
; 2749 : 
; 2750 :       lpStmtHandle->hstmt = lpConnection->hstmt;
; 2751 : 
; 2752 :       // Check to make sure that there is a buffer to hold the input variables.
; 2753 :       if ( lpBoundList->lpFirstBoundAttr )
; 2754 :       {
; 2755 :          LPBOUNDATTR  lpBoundAttr;
; 2756 :          zPCHAR       pchBufferPos;
; 2757 :          SQLUSMALLINT nParmCount;
; 2758 : 
; 2759 :          // Go through the bind variable list and determine how big the buffer
; 2760 :          // needs to be.
; 2761 :          lpStmtHandle->ulInputLth = 0;
; 2762 :          for ( lpBoundAttr = lpBoundList->lpFirstBoundAttr;
; 2763 :                lpBoundAttr;
; 2764 :                lpBoundAttr = lpBoundAttr->lpNextBoundAttr )
; 2765 :          {
; 2766 :             // We need to keep an area to specify the attribute length.
; 2767 :             lpStmtHandle->ulInputLth += sizeof( SQLINTEGER );
; 2768 : 
; 2769 :             // Now set aside the buffer area.
; 2770 :             lpViewAttrib = zGETPTR( lpBoundAttr->lpDataField->hViewAttrib );
; 2771 :             lpStmtHandle->ulInputLth += lpViewAttrib->ulLth;
; 2772 :          }
; 2773 : 
; 2774 :          lpStmtHandle->pchInputBuffer = malloc( lpStmtHandle->ulInputLth + 1 );
; 2775 : 
; 2776 :          // Now call BindParamter to set up the input buffer.
; 2777 :          nParmCount   = 0;
; 2778 :          pchBufferPos = lpStmtHandle->pchInputBuffer;
; 2779 :          for ( lpBoundAttr = lpBoundList->lpFirstBoundAttr;
; 2780 :                lpBoundAttr;
; 2781 :                lpBoundAttr = lpBoundAttr->lpNextBoundAttr )
; 2782 :          {
; 2783 :             LPDATAFIELD    lpDataField  = lpBoundAttr->lpDataField;
; 2784 :             SQLSMALLINT    nC_DataType;
; 2785 :             SQLSMALLINT    nSQL_Type;
; 2786 :             SQLSMALLINT    nDecDigits;
; 2787 :             SQLUINTEGER    nColumnSize;
; 2788 :             SQLINTEGER *   lpnParmLth;
; 2789 :             SQLINTEGER     iBufferLth;
; 2790 : 
; 2791 :             lpViewAttrib = zGETPTR( lpDataField->hViewAttrib );
; 2792 : 
; 2793 :             nParmCount++;
; 2794 : 
; 2795 :             if ( lpConnection->nTraceLevel > 1 )
; 2796 :             {
; 2797 :                TraceLineS( "(KZHSQLBA) Binding attributename = ",
; 2798 :                            lpViewAttrib->szName );
; 2799 :                TraceLineI( "nParmCount = ", nParmCount );
; 2800 :             }
; 2801 : 
; 2802 :             lpnParmLth = (SQLINTEGER *) pchBufferPos;
; 2803 :             pchBufferPos += sizeof( SQLINTEGER );
; 2804 : 
; 2805 :             switch ( lpViewAttrib->cType )
; 2806 :             {
; 2807 :                case zTYPE_STRING:
; 2808 :                   nC_DataType = SQL_C_CHAR;
; 2809 :                   nSQL_Type   = SQL_VARCHAR;
; 2810 :                   iBufferLth  = lpViewAttrib->ulLth;
; 2811 :                   nColumnSize = lpViewAttrib->ulLth;
; 2812 :                   *lpnParmLth = SQL_NTS;
; 2813 :                   nDecDigits = 0;
; 2814 :                   break;
; 2815 : 
; 2816 :                case zTYPE_INTEGER:
; 2817 :                   nC_DataType = SQL_C_SLONG;
; 2818 :                   nSQL_Type   = SQL_INTEGER;
; 2819 :                   iBufferLth  = sizeof( zLONG );
; 2820 :                   nColumnSize = sizeof( zLONG );
; 2821 :                   *lpnParmLth = sizeof( zLONG );
; 2822 :                   nDecDigits = 0;
; 2823 :                   break;
; 2824 :             }
; 2825 : 
; 2826 :             nRC = SQLBindParameter( lpConnection->hstmt, nParmCount, SQL_PARAM_INPUT,
; 2827 :                                     nC_DataType, nSQL_Type, nColumnSize, nDecDigits,
; 2828 :                                     (SQLPOINTER) pchBufferPos, iBufferLth,
; 2829 :                                     lpnParmLth );
; 2830 :             SQL_RC( "SQLBindParameter", nRC, "Column = ", lpDataField->szFldName, 3 );
; 2831 : 
; 2832 :             if ( lpConnection->nTraceLevel > 2 )
; 2833 :             {
; 2834 :                TraceLineI( "nC_DataType = ", nC_DataType );
; 2835 :                TraceLineI( "nSQL_Type   = ", nSQL_Type );
; 2836 :                TraceLineI( "nColumnSize = ", nColumnSize );
; 2837 :                TraceLineI( "nDecDigits  = ", nDecDigits );
; 2838 :             }
; 2839 : 
; 2840 :             if ( !RC_SUCCESSFUL( nRC ) )
; 2841 :                goto EndOfFunction;
; 2842 : 
; 2843 :             pchBufferPos += iBufferLth;
; 2844 : 
; 2845 :          } // for...
; 2846 : 
; 2847 :       } // if ( lpStmtHandle->pchInputBuffer == 0 )...
; 2848 : 
; 2849 :    } // if ( g_bHoldStmtHandles )...
; 2850 : 
; 2851 : #endif
; 2852 : 
; 2853 :    // ================================================================
; 2854 :    // Execute generated SQL
; 2855 :    // ================================================================
; 2856 : 
; 2857 :    // Following is kind of a hack to keep from getting warning messages that
; 2858 :    // the label ExecuteCommand is unused.
; 2859 :    goto ExecuteCommand;
; 2860 : 
; 2861 : // I know goto statements are lousy but it is much easier to code when
; 2862 : // dealing with all the conditional compiling.
; 2863 : ExecuteCommand:
; 2864 : 
; 2865 :    // If the qualification uses a key list then we need to add the keys to
; 2866 :    // the key list table.
; 2867 :    if ( lpQualEntity && lpQualEntity->bContainsKeyList )

	cmp	DWORD PTR _lpQualEntity$[ebp], 0
	je	SHORT $StartOfFetches$57838
	mov	edx, DWORD PTR _lpQualEntity$[ebp]
	mov	eax, DWORD PTR [edx+28]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	je	SHORT $StartOfFetches$57838

; 2869 :       zLONG hTask = SysGetTaskFromView( lpView );

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SysGetTaskFromView@4
	mov	DWORD PTR _hTask$57836[ebp], eax

; 2870 :       if ( fnCreateKeyList( hTask, lpConnection, lpBoundList, lpQualEntity ) < 0 )

	mov	edx, DWORD PTR _lpQualEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpBoundList$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hTask$57836[ebp]
	push	edx
	call	_fnCreateKeyList@16
	movsx	eax, ax
	test	eax, eax
	jge	SHORT $L57837

; 2871 :          goto EndOfFunction;

	jmp	$EndOfFunction$57777
$L57837:

; 2872 : 
; 2873 :       bKeyListCreated = TRUE;

	mov	BYTE PTR _bKeyListCreated$[ebp], 1
$StartOfFetches$57838:

; 2875 : 
; 2876 : #if defined( DB2 ) || defined( ODBC )
; 2877 : 
; 2878 :    // OK, if there are any bound attributes we need to copy the attribute
; 2879 :    // values into the input buffer.
; 2880 :    if ( lpBoundList && lpBoundList->lpFirstBoundAttr )
; 2881 :    {
; 2882 :       LPBOUNDATTR  lpBoundAttr;
; 2883 :       zPCHAR       pchBufferPos;
; 2884 : 
; 2885 :       // Go through the bind variable list and determine how big the buffer
; 2886 :       // needs to be.
; 2887 :       pchBufferPos = lpStmtHandle->pchInputBuffer;
; 2888 :       for ( lpBoundAttr = lpBoundList->lpFirstBoundAttr;
; 2889 :             lpBoundAttr;
; 2890 :             lpBoundAttr = lpBoundAttr->lpNextBoundAttr )
; 2891 :       {
; 2892 :          LPDATAFIELD    lpDataField  = lpBoundAttr->lpDataField;
; 2893 :          LPVIEWENTITY   lpBoundEntity;
; 2894 :          SQLINTEGER     *lpnLth;
; 2895 :          zPCHAR         lpValue;
; 2896 :          zCHAR          chType;
; 2897 :          zULONG         ulLth;
; 2898 : 
; 2899 :          lpViewAttrib = zGETPTR( lpDataField->hViewAttrib );
; 2900 :          lpBoundEntity = zGETPTR( lpViewAttrib->hViewEntity );
; 2901 : 
; 2902 :          lpnLth = (SQLINTEGER *) pchBufferPos;
; 2903 :          pchBufferPos += sizeof( SQLINTEGER );
; 2904 : 
; 2905 :          if ( GetValueFromRecord( lpBoundAttr->lpView,
; 2906 :                                   lpBoundEntity, lpViewAttrib, (zPVOID) &lpValue,
; 2907 :                                   &chType, &ulLth ) == zCALL_ERROR )
; 2908 :          {
; 2909 :             // Oops, error.  Get out of function.
; 2910 :             goto EndOfFunction;
; 2911 :          }
; 2912 : 
; 2913 :          switch ( lpViewAttrib->cType )
; 2914 :          {
; 2915 :             case zTYPE_STRING:
; 2916 :             // Length is always SQL_NTS.
; 2917 :                //*lpnLth = (SQLINTEGER) ulLth;
; 2918 :                zstrcpy( pchBufferPos, lpValue );
; 2919 :                pchBufferPos += lpViewAttrib->ulLth;
; 2920 :                break;
; 2921 : 
; 2922 :             case zTYPE_INTEGER:
; 2923 :                *((zPLONG) pchBufferPos) = *((zPLONG) lpValue);
; 2924 :                pchBufferPos += sizeof( zLONG );
; 2925 :                break;
; 2926 :          }
; 2927 :       }
; 2928 :    }
; 2929 : 
; 2930 :    // Execute the sql command.
; 2931 :    nRC = SQLExecute( lpConnection->hstmt );
; 2932 :    SQL_RC( "SQLExecute", nRC, 0, 0, 2 );
; 2933 :    if ( nRC != SQL_SUCCESS && nRC != SQL_SUCCESS_WITH_INFO )
; 2934 :    {
; 2935 :       // If the trace level is 0 then let's trace the SQL to help debugging.
; 2936 :       if ( lpConnection->nTraceLevel == 0 )
; 2937 :          SqlDisplayCommand( lpConnection->pchConnSqlCmd, 0 );
; 2938 : 
; 2939 :       goto EndOfFunction;
; 2940 :    }
; 2941 : 
; 2942 : #endif
; 2943 : 
; 2944 :    // Following is kind of a hack to keep from getting warning messages that
; 2945 :    // the label StartOfFetches is unused.
; 2946 :    goto StartOfFetches;
; 2947 : 
; 2948 : StartOfFetches:
; 2949 : 
; 2950 : #ifdef DELETEHACK
; 2951 :    // If OpenSQL has been specified but there are no data fields then we'll
; 2952 :    // assume that OpenSQL has been used for DELETE processing.  For delete
; 2953 :    // processing we obviously don't need to do a fetch so return now.
; 2954 :    if ( bOpenSQL && lpQualEntity->lpDataField[ 0 ] == 0 )

	mov	ecx, DWORD PTR _bOpenSQL$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L57839
	mov	edx, DWORD PTR _lpQualEntity$[ebp]
	mov	eax, DWORD PTR [edx+20]
	cmp	DWORD PTR [eax], 0
	jne	SHORT $L57839

; 2956 :       nReturnCode = -1;  // Indicates nothing was loaded.

	mov	WORD PTR _nReturnCode$[ebp], -1

; 2957 :       goto EndOfFunction;

	jmp	$EndOfFunction$57777
$L57839:

; 2959 : #endif
; 2960 : 
; 2961 :    // ================================================================
; 2962 :    // Fetch first row from the table.
; 2963 :    // ================================================================
; 2964 : 
; 2965 :    lRowCount  = 0;

	mov	DWORD PTR _lRowCount$[ebp], 0

; 2966 :    lRootCnt = 0;

	mov	DWORD PTR _lRootCnt$[ebp], 0

; 2967 : 
; 2968 :    if ( bCreateMultipleRoots == FALSE && lpViewEntity->hParent == 0 )

	mov	ecx, DWORD PTR _bCreateMultipleRoots$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L57840
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [edx+10], 0
	jne	SHORT $L57840

; 2969 :       lRootLimit = 1;

	mov	DWORD PTR _lRootLimit$[ebp], 1

; 2970 :    else

	jmp	SHORT $L57842
$L57840:

; 2972 :       lRootLimit = lpViewEntity->lActivateLimit;

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+226]
	mov	DWORD PTR _lRootLimit$[ebp], ecx

; 2973 :       if ( lRootLimit == 0 )

	cmp	DWORD PTR _lRootLimit$[ebp], 0
	jne	SHORT $L57842

; 2974 :          lRootLimit = 0x7FFFFFFF;

	mov	DWORD PTR _lRootLimit$[ebp], 2147483647	; 7fffffffH
$L57842:

; 2976 : 
; 2977 : #if defined( DB2 ) || defined( ODBC )
; 2978 : 
; 2979 :    bCursorOpened = TRUE;
; 2980 : 
; 2981 :    nRC = SQLFetch( lpConnection->hstmt );
; 2982 :    SQL_RC( "SQLFetch", nRC, 0, 0, 2 );
; 2983 :    switch ( nRC )
; 2984 :    {
; 2985 :       case SQL_SUCCESS:
; 2986 :       case SQL_SUCCESS_WITH_INFO:
; 2987 :          nRC = zFETCH_OK;
; 2988 :          break;
; 2989 : 
; 2990 :       case SQL_NO_DATA:
; 2991 :          nRC = zFETCH_NO_DATA;
; 2992 :          break;
; 2993 : 
; 2994 :       default:
; 2995 :          // Oops, error.
; 2996 :          goto EndOfFunction;
; 2997 :    }
; 2998 : 
; 2999 : #elif defined( DUMMY )
; 3000 : 
; 3001 :    // If the entity supports hanging keys then let's pretend we didn't find
; 3002 :    // any.
; 3003 :    if ( lpViewEntity->bHangingFKey )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+239]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L57843

; 3004 :       nRC = zFETCH_NO_DATA;

	mov	WORD PTR _nRC$[ebp], 1

; 3005 :    else

	jmp	SHORT $L57844
$L57843:

; 3006 :       nRC = zFETCH_OK;

	mov	WORD PTR _nRC$[ebp], 0
$L57844:

; 3007 : 
; 3008 : #endif
; 3009 : 
; 3010 :    hMem    = 0;

	mov	DWORD PTR _hMem$[ebp], 0

; 3011 :    lMemLth = 0;

	mov	DWORD PTR _lMemLth$[ebp], 0

; 3012 :    lpMem   = 0;

	mov	DWORD PTR _lpMem$[ebp], 0

; 3013 : 
; 3014 :    // If a row was fetched, copy the table data into a newly created entity.
; 3015 :    if ( nRC == zFETCH_OK )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jne	$L57845

; 3017 :       // The following is a list of booleans, one for each entity in the
; 3018 :       // lpViewOD.  It keeps track of whether the entity was created
; 3019 :       // (added to the OI) since the last fetch.
; 3020 :       zBOOL bEntityCreatedList[ 500 ];
; 3021 : 
; 3022 :       // Reset all the flags to not-created.
; 3023 :       zmemset( bEntityCreatedList, 0, sizeof( bEntityCreatedList ) );

	push	500					; 000001f4H
	push	0
	lea	edx, DWORD PTR _bEntityCreatedList$57846[ebp]
	push	edx
	call	_memset
	add	esp, 12					; 0000000cH

; 3024 : 
; 3025 :       nReturnCode = 0;

	mov	WORD PTR _nReturnCode$[ebp], 0
$L57847:

; 3031 :          LPVIEWENTITY lpLastCreatedEntity;
; 3032 :          zBOOL        bNewEntity;
; 3033 : #if defined( DUMMY )
; 3034 : 
; 3035 :          LPVIEWENTITY lpCreatedEntity = 0;

	mov	DWORD PTR _lpCreatedEntity$57852[ebp], 0

; 3036 : 
; 3037 :          // Dummy DBH doesn't load children via a join.
; 3038 :          lRootCnt++;

	mov	eax, DWORD PTR _lRootCnt$[ebp]
	add	eax, 1
	mov	DWORD PTR _lRootCnt$[ebp], eax

; 3039 : 
; 3040 : #endif
; 3041 :          lRowCount++;

	mov	ecx, DWORD PTR _lRowCount$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lRowCount$[ebp], ecx

; 3042 : 
; 3043 :          if ( lpConnection->nTraceLevel >= 1 && (lRowCount % 1000) == 0 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	cmp	eax, 1
	jl	SHORT $L57853
	mov	eax, DWORD PTR _lRowCount$[ebp]
	cdq
	mov	ecx, 1000				; 000003e8H
	idiv	ecx
	test	edx, edx
	jne	SHORT $L57853

; 3044 :             TraceLineI( "(xa) Number of rows currently read = ", lRowCount );

	mov	edx, DWORD PTR _lRowCount$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CG@KNGC@?$CIxa?$CJ?5Number?5of?5rows?5currently?5re@ ; `string'
	call	_TraceLineI@8
$L57853:

; 3045 : 
; 3046 :          // Loop through each of the attributes and get the column values
; 3047 :          // from the currently fetched row.
; 3048 : 
; 3049 :          LoopInfo.bOpenSQL          = bOpenSQL;

	mov	al, BYTE PTR _bOpenSQL$[ebp]
	mov	BYTE PTR _LoopInfo$[ebp], al

; 3050 :          LoopInfo.bKeysOnly         = bKeysOnly;

	mov	cl, BYTE PTR _bKeysOnly$[ebp]
	mov	BYTE PTR _LoopInfo$[ebp+1], cl

; 3051 :          LoopInfo.bFirstPass        = TRUE;

	mov	BYTE PTR _LoopInfo$[ebp+32], 1

; 3052 :          LoopInfo.lpQualEntity      = lpQualEntity;

	mov	edx, DWORD PTR _lpQualEntity$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+4], edx

; 3053 :          LoopInfo.lpFirstQualEntity = lpConnection->lpFirstQualEntity;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+190]
	mov	DWORD PTR _LoopInfo$[ebp+8], ecx

; 3054 :          LoopInfo.lpViewEntity      = lpViewEntity;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+12], edx

; 3055 :          LoopInfo.lpDataField       = 0;

	mov	DWORD PTR _LoopInfo$[ebp+20], 0

; 3056 :          LoopInfo.lControl          = Indicators;

	mov	eax, DWORD PTR _Indicators$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+24], eax

; 3057 :          LoopInfo.lpBoundList       = lpBoundList;

	mov	ecx, DWORD PTR _lpBoundList$[ebp]
	mov	DWORD PTR _LoopInfo$[ebp+28], ecx

; 3058 :          lpLastCreatedEntity        = 0;

	mov	DWORD PTR _lpLastCreatedEntity$57850[ebp], 0

; 3059 :          bNewEntity                 = FALSE;

	mov	BYTE PTR _bNewEntity$57851[ebp], 0

; 3060 :          nColumnCnt = 0;

	mov	WORD PTR _nColumnCnt$[ebp], 0

; 3061 :          for ( lpDataField = fnGetNextDataField( &LoopInfo );
; 3062 :                lpDataField;
; 3063 :                lpDataField = fnGetNextDataField( &LoopInfo ) )

	lea	edx, DWORD PTR _LoopInfo$[ebp]
	push	edx
	call	_fnGetNextDataField@4
	mov	DWORD PTR _lpDataField$[ebp], eax
	jmp	SHORT $L57855
$L57856:
	lea	eax, DWORD PTR _LoopInfo$[ebp]
	push	eax
	call	_fnGetNextDataField@4
	mov	DWORD PTR _lpDataField$[ebp], eax
$L57855:
	cmp	DWORD PTR _lpDataField$[ebp], 0
	je	$L57857

; 3065 :             LPVIEWENTITY lpLoadEntity;
; 3066 : 
; 3067 : #if defined( DB2 )
; 3068 : 
; 3069 :             zPCHAR       lpPtr;
; 3070 :             SQLINTEGER   nLth;
; 3071 :             SQLINTEGER   nInd;
; 3072 : 
; 3073 : #elif defined( ODBC )
; 3074 : 
; 3075 :             zCHAR        sz[ 50 ];
; 3076 :             zPCHAR       lpPtr;
; 3077 :             SQLINTEGER   nLth;
; 3078 : 
; 3079 : #endif
; 3080 : 
; 3081 :             lpViewAttrib = zGETPTR( lpDataField->hViewAttrib );

	mov	ecx, DWORD PTR _lpDataField$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 3082 :             lpLoadEntity = zGETPTR( lpViewAttrib->hViewEntity );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpLoadEntity$57858[ebp], eax

; 3083 : 
; 3084 :             if ( lpLoadEntity != lpLastCreatedEntity )

	mov	edx, DWORD PTR _lpLoadEntity$57858[ebp]
	cmp	edx, DWORD PTR _lpLastCreatedEntity$57850[ebp]
	je	SHORT $L57859

; 3085 :                bNewEntity = TRUE;

	mov	BYTE PTR _bNewEntity$57851[ebp], 1

; 3086 :             else

	jmp	SHORT $L57860
$L57859:

; 3087 :                bNewEntity = FALSE;

	mov	BYTE PTR _bNewEntity$57851[ebp], 0
$L57860:

; 3088 : 
; 3089 :             nColumnCnt++;

	mov	ax, WORD PTR _nColumnCnt$[ebp]
	add	ax, 1
	mov	WORD PTR _nColumnCnt$[ebp], ax

; 3090 : 
; 3091 :             // When dealing with joins, we need to make sure we don't create
; 3092 :             // duplicate entities.  The only way to do this is to compare the
; 3093 :             // key for the current row and see if it already exists in the
; 3094 :             // entity list.  So first we need to store the keys for the current
; 3095 :             // row.  If we find an attribute that is NOT a key, then we've
; 3096 :             // retrieved and stored the keys for the current entity in the
; 3097 :             // current row.  Call fnSetEntityByKeys to see if the entity
; 3098 :             // already exists.
; 3099 :             // The second part of the 'if' is to handle the situation where
; 3100 :             // an entity has only keys.  If nEntityKeyCnt is > 0, then we
; 3101 :             // know we've stored some key values.  If the 'lpLoadEntity' for
; 3102 :             // the key is different from the current lpLoadEntity, then we're
; 3103 :             // onto a new entity and we must create the previous entity.
; 3104 :             if ( lpViewAttrib->bKey == FALSE ||
; 3105 :                  (nEntityKeyCnt > 0 &&
; 3106 :                   lpKeyData[ 0 ].lpLoadEntity != lpLoadEntity) )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L57862
	movsx	eax, WORD PTR _nEntityKeyCnt$[ebp]
	test	eax, eax
	jle	$L57875
	mov	ecx, DWORD PTR _lpKeyData$[ebp]
	cmp	ecx, DWORD PTR _lpLoadEntity$57858[ebp]
	je	$L57875
$L57862:

; 3108 :                // If nEntityKeyCnt is > 0, then the current lpDataField is
; 3109 :                // not a key and the previous lpDataField was a key.  Use the
; 3110 :                // keys stored in lpKeyData to see if we need to create an
; 3111 :                // entity.
; 3112 :                if ( nEntityKeyCnt > 0 )

	movsx	edx, WORD PTR _nEntityKeyCnt$[ebp]
	test	edx, edx
	jle	$L57863

; 3114 :                   nRC = fnSetEntityByKeys( lpView, lpKeyData, nEntityKeyCnt,
; 3115 :                                            bEntityCreatedList, lRootLimit,
; 3116 :                                            lRootCnt, lpBoundList );

	mov	eax, DWORD PTR _lpBoundList$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lRootCnt$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lRootLimit$[ebp]
	push	edx
	lea	eax, DWORD PTR _bEntityCreatedList$57846[ebp]
	push	eax
	mov	cx, WORD PTR _nEntityKeyCnt$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpKeyData$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnSetEntityByKeys@28
	mov	WORD PTR _nRC$[ebp], ax

; 3117 :                   if ( nRC == -1 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -1
	jne	SHORT $L57864

; 3119 :                      // We found a new root entity but we have reached our
; 3120 :                      // root limit.  Set flag and break to fetch the next row.
; 3121 :                      nEntityKeyCnt = 0;

	mov	WORD PTR _nEntityKeyCnt$[ebp], 0

; 3122 :                      bRootLimitReached = TRUE;

	mov	BYTE PTR _bRootLimitReached$[ebp], 1

; 3123 :                      break;

	jmp	$L57857
$L57864:

; 3125 :                   else
; 3126 :                   if ( nRC == 1 )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, 1
	jne	SHORT $L57866

; 3128 :                      // Keep track of the number of root entities created.
; 3129 :                      if ( lpLoadEntity == lpViewEntity )

	mov	eax, DWORD PTR _lpLoadEntity$57858[ebp]
	cmp	eax, DWORD PTR _lpViewEntity$[ebp]
	jne	SHORT $L57867

; 3130 :                         lRootCnt++;

	mov	ecx, DWORD PTR _lRootCnt$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lRootCnt$[ebp], ecx
$L57867:

; 3132 :                   else

	jmp	SHORT $L57869
$L57866:

; 3134 :                      if ( lpConnection->nTraceLevel > 1 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	cmp	eax, 1
	jle	SHORT $L57869

; 3136 :                         TraceLineS( "Duplicate row found, entity = ",
; 3137 :                                     lpLoadEntity->szName );

	mov	ecx, DWORD PTR _lpLoadEntity$57858[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	OFFSET FLAT:??_C@_0BP@GFJJ@Duplicate?5row?5found?0?5entity?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L57869:

; 3140 : 
; 3141 :                   // We just created an entity (or at least positioned on the
; 3142 :                   // right one) so set lpLastCreatedEntity.
; 3143 :                   lpLastCreatedEntity = lpLoadEntity;

	mov	edx, DWORD PTR _lpLoadEntity$57858[ebp]
	mov	DWORD PTR _lpLastCreatedEntity$57850[ebp], edx

; 3144 : 
; 3145 :                   // Reset nEntityKeyCnt so we don't try this on the following
; 3146 :                   // non-key attributes.
; 3147 :                   nEntityKeyCnt = 0;

	mov	WORD PTR _nEntityKeyCnt$[ebp], 0

; 3150 :                else

	jmp	SHORT $L57873
$L57863:

; 3151 :                if ( lpLoadEntity->bHasDB_Oper )

	mov	eax, DWORD PTR _lpLoadEntity$57858[ebp]
	mov	ecx, DWORD PTR [eax+239]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L57873

; 3153 :                   if ( bNewEntity )

	mov	edx, DWORD PTR _bNewEntity$57851[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L57873

; 3155 :                      LoadEntity( lpView, lpLoadEntity->szName, zPOS_LAST, 0 );

	push	0
	push	2
	mov	eax, DWORD PTR _lpLoadEntity$57858[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_LoadEntity@16

; 3156 :                      lpLastCreatedEntity = lpLoadEntity;

	mov	edx, DWORD PTR _lpLoadEntity$57858[ebp]
	mov	DWORD PTR _lpLastCreatedEntity$57850[ebp], edx

; 3157 :                      bEntityCreatedList[ lpLoadEntity->nHierNbr ] = TRUE;

	mov	eax, DWORD PTR _lpLoadEntity$57858[ebp]
	movsx	ecx, WORD PTR [eax+217]
	mov	BYTE PTR _bEntityCreatedList$57846[ebp+ecx], 1
$L57873:

; 3160 : 
; 3161 :                // If the DataField is not a key and the entity was not created
; 3162 :                // during the current FETCH, it was loaded on a previous fetch
; 3163 :                // and we don't need to copy the attributes.
; 3164 :                if ( lpViewAttrib->bKey == FALSE &&
; 3165 :                     bEntityCreatedList[ lpLoadEntity->nHierNbr ] == FALSE )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	jne	SHORT $L57875
	mov	ecx, DWORD PTR _lpLoadEntity$57858[ebp]
	movsx	edx, WORD PTR [ecx+217]
	xor	eax, eax
	mov	al, BYTE PTR _bEntityCreatedList$57846[ebp+edx]
	test	eax, eax
	jne	SHORT $L57875

; 3167 :                   continue; // Continue on with the next lpDataField.

	jmp	$L57856
$L57875:

; 3171 : 
; 3172 :             // ================================================================
; 3173 :             // Retrieve column value and store it as an attribute in the entity.
; 3174 :             // ================================================================
; 3175 : 
; 3176 : #if defined( DB2 ) || defined( ODBC )
; 3177 : 
; 3178 :             lpPtr = ppchBufferPtr[ nColumnCnt ];
; 3179 :             nLth = *((SQLINTEGER *) lpPtr);
; 3180 :             lpPtr += sizeof( SQLINTEGER );
; 3181 : 
; 3182 :             // If attribute is a blob or long string, then the value must be
; 3183 :             // retrieved from a long varchar.
; 3184 :             if ( lpDataField->cFldType == zTYPE_BLOB ||
; 3185 :                  lpDataField->cFldType == 'V' )
; 3186 :             {
; 3187 : #ifdef DB2
; 3188 :                SQLINTEGER  cLocator = *((SQLINTEGER *) lpPtr);
; 3189 :                SQLSMALLINT iSqlType;
; 3190 :                SQLSMALLINT iCType;
; 3191 : 
; 3192 :                if ( lpDataField->cFldType == zTYPE_BLOB )
; 3193 :                {
; 3194 :                   iSqlType = SQL_C_BLOB_LOCATOR;
; 3195 :                   iCType   = SQL_C_BINARY;
; 3196 :                }
; 3197 :                else
; 3198 :                {
; 3199 :                   iSqlType = SQL_C_CLOB_LOCATOR;
; 3200 :                   iCType   = SQL_C_CHAR;
; 3201 :                }
; 3202 : 
; 3203 :                if ( hBlobStmt == 0 )
; 3204 :                {
; 3205 :                   nRC = SQLAllocStmt( lpConnection->hdbc, &hBlobStmt );
; 3206 :                   SQL_RC( "SQLAllocStmt", nRC, "Allocate Temp HSTMT", 0, 2 );
; 3207 :                   if ( nRC != SQL_SUCCESS )
; 3208 :                      goto EndOfFunction;
; 3209 : 
; 3210 :                   nRC = SQLAllocStmt( lpConnection->hdbc, &hLocatorStmt );
; 3211 :                   SQL_RC( "SQLAllocStmt", nRC, "Allocate Temp HSTMT", 0, 2 );
; 3212 :                   if ( nRC != SQL_SUCCESS )
; 3213 :                      goto EndOfFunction;
; 3214 :                }
; 3215 : 
; 3216 :                // NOTE: There doesn't seem to be a way to find out if the
; 3217 :                // BLOB/CLOB is null (checking for SQL_NULL doesn't work)
; 3218 :                // so SQLGetLength( ) will return an error if the attribute
; 3219 :                // is null.
; 3220 :                nRC = SQLGetLength( hBlobStmt, iSqlType, cLocator, &nLth, &nInd );
; 3221 :                SQL_RC( "SQLGetLength", nRC, "Getting length of column ",
; 3222 :                        lpDataField->szFldName, 2 );
; 3223 : 
; 3224 :                // If the length is 0, then there is nothing to be read.
; 3225 :                if ( nLth > 0 )
; 3226 :                {
; 3227 :                   // If memory needs to be allocated, then allocate it.
; 3228 :                   if ( hMem == 0 || lMemLth <= nLth )
; 3229 :                   {
; 3230 :                      if ( hMem != 0 )
; 3231 :                         SysFreeMemory( hMem );
; 3232 : 
; 3233 :                      // Make sure that the length of the buffer is a least
; 3234 :                      // 1000 and always at least 1 greater then the length of
; 3235 :                      // the column value.
; 3236 :                      lMemLth = ( nLth < 1000 ) ? 1001 : nLth + 1;
; 3237 :                      hMem = SysAllocMemory( (zPVOID) &lpMem, lMemLth, 0,
; 3238 :                                             zCOREMEM_ALLOC, 0 );
; 3239 :                      if ( lpMem == 0 )
; 3240 :                         goto EndOfFunction;
; 3241 :                   }
; 3242 : 
; 3243 :                   nRC = SQLGetSubString( hBlobStmt, iSqlType, cLocator, 1, nLth,
; 3244 :                                          iCType, (SQLPOINTER) lpMem,
; 3245 :                                          lMemLth,  &nInd, &nInd );
; 3246 :                   SQL_RC( "SQLGetSubString", nRC, 0, 0, 3 );
; 3247 :                   if ( nRC != SQL_SUCCESS )
; 3248 :                      goto EndOfFunction;
; 3249 : 
; 3250 :                   StoreValueInRecord( lpView, lpLoadEntity, lpViewAttrib,
; 3251 :                                       lpMem, (zULONG) nLth );
; 3252 : 
; 3253 :                   // Now set the attribute flags.
; 3254 :                   GetAttributeFlags( &lpAttribFlags, lpView,
; 3255 :                                      lpLoadEntity, lpViewAttrib );
; 3256 :                   lpAttribFlags->u.bFlags.bActivated = TRUE;
; 3257 :                   lpAttribFlags->u.bFlags.bUpdated  = FALSE;
; 3258 : 
; 3259 :                   nRC = SQLFreeStmt( hBlobStmt, SQL_CLOSE );
; 3260 :                   SQL_RC( "SQLFreeStmt", nRC, "Freeing temp handle?", 0, 3 );
; 3261 : 
; 3262 : 
; 3263 :                   nRC = SQLSetParam( hLocatorStmt, 1, SQL_C_CLOB_LOCATOR,
; 3264 :                                      SQL_CLOB_LOCATOR, 0, 0, &cLocator, 0 );
; 3265 :                   SQL_RC( "SQLSetParam", nRC, "About to free locator.", 0, 3 );
; 3266 : 
; 3267 :                   nRC = SQLExecDirect( hLocatorStmt, "FREE LOCATOR ?", SQL_NTS );
; 3268 :                   SQL_RC( "SQLExecDirect", nRC, "Freeing locator.", 0, 3 );
; 3269 : 
; 3270 :                } // if ( nLth > 0 )...
; 3271 :                else
; 3272 :                   nRC = 0;
; 3273 : 
; 3274 : #else   // i.e. #ifdef ODBC
; 3275 : 
; 3276 :                // Get the length of the column.
; 3277 :                nRC = SQLGetData( lpConnection->hstmt, nColumnCnt,
; 3278 :                                  SQL_C_DEFAULT, (SQLPOINTER) sz, 0, &nLth );
; 3279 :                SQL_RC( "SQLGetData", nRC, "Getting length for ",
; 3280 :                        lpDataField->szFldName, 2 );
; 3281 : 
; 3282 :                if ( lpConnection->nTraceLevel >= 2 )
; 3283 :                {
; 3284 :                   TraceLineI( "Column number = ", nColumnCnt );
; 3285 :                   TraceLineI( "Returned lth for column = ", nLth );
; 3286 :                }
; 3287 : 
; 3288 :                if ( !RC_SUCCESSFUL( nRC ) )
; 3289 :                   goto EndOfFunction;
; 3290 : 
; 3291 :                if ( nLth > 0 )
; 3292 :                {
; 3293 :                   // If memory needs to be allocated, then allocate it.
; 3294 :                   if ( hMem == 0 || lMemLth <= nLth )
; 3295 :                   {
; 3296 :                      if ( hMem != 0 )
; 3297 :                         SysFreeMemory( hMem );
; 3298 : 
; 3299 :                      // Make sure that the length of the buffer is a least
; 3300 :                      // 1000 and always at least 1 greater then the length of
; 3301 :                      // the column value.
; 3302 :                      lMemLth = ( nLth < 1000 ) ? 1001 : nLth + 1;
; 3303 :                      hMem = SysAllocMemory( (zPVOID) &lpMem, lMemLth, 0,
; 3304 :                                             zCOREMEM_ALLOC, 0 );
; 3305 :                      if ( lpMem == 0 )
; 3306 :                         goto EndOfFunction;
; 3307 :                   }
; 3308 : 
; 3309 :                   // Now retrieve the data.
; 3310 :                   nRC = SQLGetData( lpConnection->hstmt, nColumnCnt,
; 3311 :                                     SQL_C_DEFAULT, (SQLPOINTER) lpMem,
; 3312 :                                     lMemLth, &nLth );
; 3313 :                   SQL_RC( "SQLGetData", nRC, "Getting data ", 0, 2 );
; 3314 : 
; 3315 :                   if ( lpConnection->nTraceLevel >= 2 )
; 3316 :                      TraceLineI( "Returned lth for column = ", nLth );
; 3317 : 
; 3318 :                   if ( !RC_SUCCESSFUL( nRC ) )
; 3319 :                      goto EndOfFunction;
; 3320 : 
; 3321 :                   StoreValueInRecord( lpView, lpLoadEntity, lpViewAttrib,
; 3322 :                                       lpMem, (zULONG) nLth );
; 3323 : 
; 3324 :                   // Now set the attribute flags.
; 3325 :                   GetAttributeFlags( &lpAttribFlags, lpView,
; 3326 :                                      lpLoadEntity, lpViewAttrib );
; 3327 :                   lpAttribFlags->u.bFlags.bActivated = TRUE;
; 3328 :                   lpAttribFlags->u.bFlags.bUpdated  = FALSE;
; 3329 :                }
; 3330 : #endif
; 3331 : 
; 3332 :             } // if ( lpDataField->cFldType == zTYPE_BLOB || ... )...
; 3333 :             else
; 3334 :             {
; 3335 :                zCHAR szDatetime[ 100 ];
; 3336 : 
; 3337 :                // Check to see if the column is null.  If it is skip it.
; 3338 :                if ( nLth == SQL_NULL_DATA )
; 3339 :                {
; 3340 :                   // Check to see if this attribute is a DB_Oper.  If it is,
; 3341 :                   // then the table must not exist because the oper would have
; 3342 :                   // a value.  If this is the first attribute we have found for
; 3343 :                   // this entity, we must drop the just-created entity.
; 3344 :                   if ( lpViewAttrib->cDB_Oper != 0 && bNewEntity )
; 3345 :                      DropEntity( lpView, lpLoadEntity->szName, zREPOS_LAST );
; 3346 : 
; 3347 :                   continue;
; 3348 :                }
; 3349 : 
; 3350 :                // If the attribute is a DateTime field, then the string must be
; 3351 :                // "unformatted".
; 3352 :                if ( lpDataField->cFldType == zTYPE_DATETIME ||
; 3353 :                     lpDataField->cFldType == zTYPE_DATE     ||
; 3354 :                     lpDataField->cFldType == zTYPE_TIME )
; 3355 :                {
; 3356 :                   szDatetime[ 0 ] = 0;
; 3357 : #ifdef DB2
; 3358 :                   if ( lpDataField->cFldType == zTYPE_TIME )
; 3359 :                      // lpPtr points to "HH:MM:SS".  Prefix dummy date.
; 3360 :                      zstrcpy( szDatetime, "1900-01-01 " );
; 3361 : #endif
; 3362 : 
; 3363 :                   zstrcat( szDatetime, lpPtr );
; 3364 : 
; 3365 : #ifdef DB2
; 3366 :                   if ( lpDataField->cFldType == zTYPE_DATE )
; 3367 :                      // lpPtr points to "YYYY-MM-DD".  Postfix dummy time
; 3368 :                      zstrcat( szDatetime, " 00:00:00" );
; 3369 : #endif
; 3370 : 
; 3371 :                   // Convert datetime to YYYYMMDDHHmmSS.
; 3372 :                   if ( UfEditFormatDateTime( szDatetime,
; 3373 :                                              "YYYY-MM-DD HH:MI:SS" ) == 0 )
; 3374 :                      ; // Do nothing...szDatetime converted OK.
; 3375 :                   else
; 3376 :                   if ( UfEditFormatDateTime( szDatetime,
; 3377 :                                              "M/D/YYYY H:MI:SS AM" ) == 0 )
; 3378 :                      ; // Do nothing...szDatetime converted OK.
; 3379 : 
; 3380 :                   // For date and time formats we need to change unused part
; 3381 :                   // to 0's.
; 3382 :                   switch ( lpDataField->cFldType )
; 3383 :                   {
; 3384 :                      case zTYPE_DATE:
; 3385 :                         zstrcpy( &szDatetime[ 8 ], "000000000" );
; 3386 :                         break;
; 3387 : 
; 3388 :                      case zTYPE_TIME:
; 3389 :                         zmemcpy( szDatetime, "19000101", 8 );
; 3390 :                         break;
; 3391 :                   }
; 3392 : 
; 3393 :                   // Copy szDatetime back into the buffer.
; 3394 :                   zstrcpy( (zPCHAR) lpPtr, szDatetime );
; 3395 :                }
; 3396 : #ifdef DB2
; 3397 :                else
; 3398 :                if ( lpDataField->cFldType == zTYPE_DECIMAL )
; 3399 :                {
; 3400 :                   if ( g_ucDB2_Comma == 2)
; 3401 :                   {
; 3402 :                      /* If the Database uses decimal comma
; 3403 :                       *  instead of point ..., but the functions
; 3404 :                       * in decari use only '.', therefore we have
; 3405 :                       * to change the ',' into '.'
; 3406 :                       */
; 3407 :                      zPCHAR pch = strchr( lpPtr, ',') ;
; 3408 : 
; 3409 :                      if ( pch )
; 3410 :                         *pch = '.';
; 3411 :                   }
; 3412 :                }
; 3413 : #endif
; 3414 : 
; 3415 :                if ( lpViewAttrib->bKey )
; 3416 :                {
; 3417 :                   // Store the key value for now.  When we reach the end
; 3418 :                   // of the keys we will use them to determine if the entity
; 3419 :                   // has been created yet.
; 3420 :                   lpKeyData[ nEntityKeyCnt ].lpDataField  = lpDataField;
; 3421 :                   lpKeyData[ nEntityKeyCnt ].lpPtr        = lpPtr;
; 3422 :                   lpKeyData[ nEntityKeyCnt ].lpViewAttrib = lpViewAttrib;
; 3423 :                   lpKeyData[ nEntityKeyCnt ].lpLoadEntity = lpLoadEntity;
; 3424 :                   nEntityKeyCnt++;
; 3425 : 
; 3426 :                   // Try next lpDataField.
; 3427 :                   continue;
; 3428 : 
; 3429 :                } // if ( lpViewAttrib->bKey )...
; 3430 : 
; 3431 :                // At this point lpPtr points to the datbase value. Copy the value
; 3432 :                // into the attribute.
; 3433 :                switch ( lpDataField->cFldType )
; 3434 :                {
; 3435 :                   case zTYPE_DATETIME:
; 3436 :                   case zTYPE_DATE:
; 3437 :                   case zTYPE_TIME:
; 3438 :                      StoreStringInRecord( lpView, lpLoadEntity, lpViewAttrib, lpPtr );
; 3439 :                      break;
; 3440 : 
; 3441 :                   case zTYPE_DECIMAL:
; 3442 :                      StoreStringInRecord( lpView, lpLoadEntity, lpViewAttrib, lpPtr );
; 3443 : 
; 3444 :                      // Retrieve decimal value and copy it back into the attribute.
; 3445 :                      // This will cause the Format routines to be called so that
; 3446 :                      // the decimal gets rounded/truncated correctly.
; 3447 :                      // Use szDatetime as a dummy buffer.
; 3448 :                      GetStringFromRecord( lpView, lpLoadEntity, lpViewAttrib,
; 3449 :                                           szDatetime, sizeof( szDatetime ) );
; 3450 :                      StoreStringInRecord( lpView, lpLoadEntity, lpViewAttrib,
; 3451 :                                           szDatetime );
; 3452 :                      break;
; 3453 : 
; 3454 :                   default:
; 3455 :                      // Note that length is only used for blob attributes, so we
; 3456 :                      // will always pass 0.
; 3457 :                      StoreValueInRecord( lpView, lpLoadEntity, lpViewAttrib,
; 3458 :                                          lpPtr, 0 );
; 3459 :                      break;
; 3460 :                }
; 3461 : 
; 3462 :                // Now set the attribute flags.
; 3463 :                GetAttributeFlags( &lpAttribFlags, lpView,
; 3464 :                                   lpLoadEntity, lpViewAttrib );
; 3465 :                lpAttribFlags->u.bFlags.bActivated = TRUE;
; 3466 :                lpAttribFlags->u.bFlags.bUpdated  = FALSE;
; 3467 : 
; 3468 :             } // if ( lpDataField->cFldType == zTYPE_BLOB || ... )...else...
; 3469 : 
; 3470 : #elif defined( DUMMY )
; 3471 : 
; 3472 : #ifdef USE_JOINS
; 3473 :             // Check to see if the entity corresponding to the lpDataField
; 3474 :             // is the same as the entity we are activating.  If it is NOT, then
; 3475 :             // we must be loading attributes from a child entity that has
; 3476 :             // been selected as part of a join.  This happens for children
; 3477 :             // that have a x-to-1 relationship.  In any case, we need to
; 3478 :             // create a new entity.
; 3479 :             if ( lpCreatedEntity ==  0  ||
; 3480 :                  (lpLoadEntity != lpCreatedEntity &&
; 3481 :                   lpLoadEntity->nHierNbr > lpCreatedEntity->nHierNbr) )

	cmp	DWORD PTR _lpCreatedEntity$57852[ebp], 0
	je	SHORT $L57877
	mov	ecx, DWORD PTR _lpLoadEntity$57858[ebp]
	cmp	ecx, DWORD PTR _lpCreatedEntity$57852[ebp]
	je	SHORT $L57876
	mov	edx, DWORD PTR _lpLoadEntity$57858[ebp]
	movsx	eax, WORD PTR [edx+217]
	mov	ecx, DWORD PTR _lpCreatedEntity$57852[ebp]
	movsx	edx, WORD PTR [ecx+217]
	cmp	eax, edx
	jle	SHORT $L57876
$L57877:

; 3483 :                LoadEntity( lpView, lpLoadEntity->szName, zPOS_AFTER, 0 );

	push	0
	push	3
	mov	eax, DWORD PTR _lpLoadEntity$57858[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_LoadEntity@16

; 3484 :                lpCreatedEntity = lpLoadEntity;

	mov	edx, DWORD PTR _lpLoadEntity$57858[ebp]
	mov	DWORD PTR _lpCreatedEntity$57852[ebp], edx
$L57876:

; 3486 : #endif
; 3487 : 
; 3488 :             // We'll just create dummy values.
; 3489 :             switch ( lpViewAttrib->cType )
; 3490 :             {

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+202]
	mov	DWORD PTR -3276+[ebp], ecx
	mov	edx, DWORD PTR -3276+[ebp]
	sub	edx, 76					; 0000004cH
	mov	DWORD PTR -3276+[ebp], edx
	cmp	DWORD PTR -3276+[ebp], 8
	ja	$L57880
	mov	eax, DWORD PTR -3276+[ebp]
	jmp	DWORD PTR $L58527[eax*4]
$L57883:

; 3493 :                   zLONG lTemp = lpConnection->lIntegerCount++;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+764]
	mov	DWORD PTR _lTemp$57884[ebp], edx
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+764]
	add	ecx, 1
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [edx+764], ecx

; 3494 : 
; 3495 :                   StoreValueInRecord( lpView, lpLoadEntity, lpViewAttrib,
; 3496 :                                       &lTemp, 0 );

	push	0
	lea	eax, DWORD PTR _lTemp$57884[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpLoadEntity$57858[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_StoreValueInRecord@20

; 3497 :                   break;

	jmp	$L57880
$L57885:

; 3502 :                   zCHAR szTemp[ 30 ];
; 3503 : 
; 3504 :                   zsprintf( szTemp, "TempString%ld",
; 3505 :                             lpConnection->lStringCount++ );

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+772]
	mov	DWORD PTR -3280+[ebp], edx
	mov	eax, DWORD PTR -3280+[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0O@CBHC@TempString?$CFld?$AA@ ; `string'
	lea	ecx, DWORD PTR _szTemp$57886[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+772]
	add	eax, 1
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [ecx+772], eax
	call	DWORD PTR __imp__sprintf
	add	esp, 12					; 0000000cH

; 3506 :                   StoreValueInRecord( lpView, lpLoadEntity, lpViewAttrib,
; 3507 :                                       (zPVOID) szTemp, 0 );

	push	0
	lea	edx, DWORD PTR _szTemp$57886[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpLoadEntity$57858[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_StoreValueInRecord@20

; 3508 :                   break;

	jmp	$L57880
$L57889:

; 3513 :                   zDECIMAL dTemp;
; 3514 : 
; 3515 :                   SysConvertDoubleToDecimal(
; 3516 :                            (double) (lpConnection->lDecimalCount++ * 1.1),
; 3517 :                            &dTemp );

	lea	eax, DWORD PTR _dTemp$57890[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	fild	DWORD PTR [ecx+768]
	fmul	QWORD PTR __real@8@3fff8cccccccccccd000
	fstp	QWORD PTR -3288+[ebp]
	mov	edx, DWORD PTR -3288+[ebp+4]
	push	edx
	mov	eax, DWORD PTR -3288+[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+768]
	add	edx, 1
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [eax+768], edx
	call	_SysConvertDoubleToDecimal@12

; 3518 :                   StoreValueInRecord( lpView, lpLoadEntity, lpViewAttrib,
; 3519 :                                       (zPVOID) &dTemp, 0 );

	push	0
	lea	ecx, DWORD PTR _dTemp$57890[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpLoadEntity$57858[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_StoreValueInRecord@20

; 3520 :                   break;

	jmp	SHORT $L57880
$L57893:

; 3525 :                   zCHAR szDateTime[ 20 ];
; 3526 : 
; 3527 :                   SysGetDateTime( szDateTime );

	lea	edx, DWORD PTR _szDateTime$57894[ebp]
	push	edx
	call	_SysGetDateTime@4

; 3528 :                   StoreStringInRecord( lpView, lpLoadEntity, lpViewAttrib,
; 3529 :                                        szDateTime );

	lea	eax, DWORD PTR _szDateTime$57894[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpLoadEntity$57858[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_StoreStringInRecord@16
$L57880:

; 3539 : #endif
; 3540 : 
; 3541 :          } // for ( lpDataField... )

	jmp	$L57856
$L57857:

; 3542 : 
; 3543 :          // ================================================================
; 3544 :          // Fetch the next row.
; 3545 :          // ================================================================
; 3546 : 
; 3547 :          // Since we're about to fetch a new row, reset all the flags to
; 3548 :          // not-created.
; 3549 :          zmemset( bEntityCreatedList, 0, sizeof( bEntityCreatedList ) );

	push	500					; 000001f4H
	push	0
	lea	edx, DWORD PTR _bEntityCreatedList$57846[ebp]
	push	edx
	call	_memset
	add	esp, 12					; 0000000cH

; 3550 : 
; 3551 : #if defined( DB2 ) || defined( ODBC )
; 3552 : 
; 3553 :          // We're about to fetch a new row, but we need to check if all the
; 3554 :          // entities were created from the previous fetch.  If nEntityKeyCnt
; 3555 :          // is not 0, then the last entity that is part of the fetch is made
; 3556 :          // up of only keys.  It may need to be created.
; 3557 :          if ( nEntityKeyCnt > 0 )
; 3558 :          {
; 3559 :             fnSetEntityByKeys( lpView, lpKeyData, nEntityKeyCnt, 0,
; 3560 :                                lRootLimit, lRootCnt, lpBoundList );
; 3561 :             nEntityKeyCnt = 0;
; 3562 :          }
; 3563 : 
; 3564 :          nRC = SQLFetch( lpConnection->hstmt );
; 3565 :          SQL_RC( "SQLFetch", nRC, 0, 0, 2 );
; 3566 :          switch ( nRC )
; 3567 :          {
; 3568 :             case SQL_SUCCESS:
; 3569 :             case SQL_SUCCESS_WITH_INFO:
; 3570 :                nRC = zFETCH_OK;
; 3571 :                break;
; 3572 : 
; 3573 :             case SQL_NO_DATA:
; 3574 :                nRC = zFETCH_NO_DATA;
; 3575 :                break;
; 3576 : 
; 3577 :             default:
; 3578 :                // Oops, error.
; 3579 :                nReturnCode = zCALL_ERROR;
; 3580 :                goto EndOfFunction;
; 3581 :          }
; 3582 : 
; 3583 : #elif defined( DUMMY )
; 3584 : 
; 3585 :          // If CardMax of the entity is 1 then we'll pretend we didn't find
; 3586 :          // any more entities.
; 3587 :          if ( lpViewEntity->uCardMax == 1 )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	xor	ecx, ecx
	mov	cx, WORD PTR [eax+221]
	cmp	ecx, 1
	jne	SHORT $L57895

; 3588 :             nRC = zFETCH_NO_DATA;

	mov	WORD PTR _nRC$[ebp], 1

; 3589 :          else

	jmp	SHORT $L57898
$L57895:

; 3590 :          if ( lRootCnt == 2 )

	cmp	DWORD PTR _lRootCnt$[ebp], 2
	jne	SHORT $L57897

; 3591 :             nRC = zFETCH_NO_DATA;

	mov	WORD PTR _nRC$[ebp], 1

; 3592 :          else

	jmp	SHORT $L57898
$L57897:

; 3593 :             nRC = zFETCH_OK;

	mov	WORD PTR _nRC$[ebp], 0
$L57898:

; 3594 : 
; 3595 : #endif
; 3596 :          // If we didn't fetch a row this time and if we only fetched 1 row
; 3597 :          // then set the return code to 0 and break loop.
; 3598 :          if ( nRC == zFETCH_NO_DATA && lRootCnt == 1 )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, 1
	jne	SHORT $L57899
	cmp	DWORD PTR _lRootCnt$[ebp], 1
	jne	SHORT $L57899

; 3600 :             nReturnCode = 0;

	mov	WORD PTR _nReturnCode$[ebp], 0

; 3601 :             break;

	jmp	SHORT $L57849
$L57899:

; 3603 : 
; 3604 :       } while ( nRC == zFETCH_OK );

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	$L57847
$L57849:

; 3607 :    else

	jmp	SHORT $L57900
$L57845:

; 3608 :       nReturnCode = -1;   // Indicate that no rows were fetched.

	mov	WORD PTR _nReturnCode$[ebp], -1
$L57900:

; 3609 : 
; 3610 :    if ( lpConnection->nTraceLevel > 1 )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+214]
	cmp	edx, 1
	jle	SHORT $L57901

; 3612 :       TraceLineI( "Number of roots retrieved = ", lRootCnt );

	mov	eax, DWORD PTR _lRootCnt$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BN@FPPH@Number?5of?5roots?5retrieved?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 3613 :       TraceLineI( "Number of rows  retrieved = ", lRowCount );

	mov	ecx, DWORD PTR _lRowCount$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BN@PBBH@Number?5of?5rows?5?5retrieved?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8
$L57901:

; 3615 : 
; 3616 :    if ( nReturnCode == 0 && bRootLimitReached )

	movsx	edx, WORD PTR _nReturnCode$[ebp]
	test	edx, edx
	jne	SHORT $EndOfFunction$57777
	mov	eax, DWORD PTR _bRootLimitReached$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $EndOfFunction$57777

; 3618 :       if ( lRootLimit > 1 )

	cmp	DWORD PTR _lRootLimit$[ebp], 1
	jle	SHORT $L57905

; 3619 :          nReturnCode = 2; // We must have reached the activate limit.

	mov	WORD PTR _nReturnCode$[ebp], 2

; 3620 :       else

	jmp	SHORT $EndOfFunction$57777
$L57905:

; 3621 :          nReturnCode = 1; // Set RC to indicate we only got one root but that

	mov	WORD PTR _nReturnCode$[ebp], 1
$EndOfFunction$57777:

; 3624 : 
; 3625 : EndOfFunction:
; 3626 : 
; 3627 : #if defined( DB2 )
; 3628 :    if ( hBlobStmt )
; 3629 :    {
; 3630 :       // Free statements needed to load BLOB columns.
; 3631 :       nRC = SQLFreeStmt( hBlobStmt, SQL_DROP );
; 3632 :       SQL_RC( "SQLFreeStmt", nRC, "Freeing BLOB hstmt", 0, 2 );
; 3633 : 
; 3634 :       nRC = SQLFreeStmt( hLocatorStmt, SQL_DROP );
; 3635 :       SQL_RC( "SQLFreeStmt", nRC, "Freeing locator hstmt2", 0, 2 );
; 3636 :    }
; 3637 : 
; 3638 :    nRC = SQLFreeStmt(lpConnection->hstmt, SQL_UNBIND);
; 3639 :    SQL_RC( "SQLFreeStmt", nRC, "Unbinding stmt handle", 0, 2 );
; 3640 : 
; 3641 :    nRC = SQLFreeStmt(lpConnection->hstmt, SQL_RESET_PARAMS);
; 3642 :    SQL_RC( "SQLFreeStmt", nRC, "Resetting params", 0, 2 );
; 3643 : 
; 3644 :    if ( bKeyListCreated )
; 3645 :    {
; 3646 :       zCHAR szDeleteCmd[ 300 ];
; 3647 : 
; 3648 :       zsprintf( szDeleteCmd,
; 3649 :                 "DELETE FROM ZEIDONKEYLIST WHERE TASKID = %ld",
; 3650 :                 SysGetTaskFromView( lpView ) );
; 3651 : 
; 3652 :       nRC = SQLPrepare( lpConnection->hGeneralStmt, szDeleteCmd, SQL_NTS );
; 3653 :       SQL_RC( "Prepare", nRC, "Deleting KeyList", 0, 2 );
; 3654 : 
; 3655 :       nRC = SQLExecute( lpConnection->hGeneralStmt );
; 3656 :       SQL_RC( "SQLExecute", nRC, "Delete keys", 0, 2 );
; 3657 :    }
; 3658 : 
; 3659 :    nRC = SQLFreeStmt(lpConnection->hstmt, SQL_CLOSE);
; 3660 :    SQL_RC( "SQLFreeStmt", nRC, "Closing stmt handle", 0, 2 );
; 3661 : 
; 3662 : #elif defined( ODBC )
; 3663 :    if ( bCursorOpened )
; 3664 :    {
; 3665 :       zSHORT nRC2;
; 3666 : 
; 3667 :       nRC2 = SQLCloseCursor( lpConnection->hstmt );
; 3668 :       SQL_RC( "SQLCloseCursor", nRC2, 0, 0, 2 );
; 3669 :    }
; 3670 : 
; 3671 :    if ( bKeyListCreated )
; 3672 :    {
; 3673 :       zCHAR szDeleteCmd[ 300 ];
; 3674 : 
; 3675 :       zsprintf( szDeleteCmd,
; 3676 :                 "DELETE FROM ZEIDONKEYLIST WHERE TASKID = %ld",
; 3677 :                 SysGetTaskFromView( lpView ) );
; 3678 : 
; 3679 :       nRC = SQLPrepare( lpConnection->hGeneralStmt, szDeleteCmd, SQL_NTS );
; 3680 :       SQL_RC( "Prepare", nRC, "Deleting KeyList", 0, 2 );
; 3681 : 
; 3682 :       nRC = SQLExecute( lpConnection->hGeneralStmt );
; 3683 :       SQL_RC( "SQLExecute", nRC, "Delete keys", 0, 2 );
; 3684 :    }
; 3685 : 
; 3686 :    if ( g_bHoldStmtHandles == FALSE )
; 3687 :    {
; 3688 :       zSHORT nRC2;
; 3689 : 
; 3690 :       nRC2 = SQLFreeStmt( lpConnection->hstmt, SQL_UNBIND );
; 3691 :       SQL_RC( "SQLFreeStmt", nRC2, "Unbinding stmt handle", 0, 2 );
; 3692 :    }
; 3693 :    else
; 3694 :    {
; 3695 :       // We're holding on to the handles so we don't want to free the
; 3696 :       // current lpBoundList so hold on to it.  Setting it to null means
; 3697 :       // it won't be freed (we saved the value earlier).
; 3698 :       lpBoundList = 0;
; 3699 :    }
; 3700 : 
; 3701 : #endif
; 3702 : 
; 3703 :    SqlFreeBoundAttrList( lpBoundList );

	mov	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	call	_SqlFreeBoundAttrList@4

; 3704 : 
; 3705 :    // If hMem is not zero, then free the memory allocated.
; 3706 :    if ( hMem )

	cmp	DWORD PTR _hMem$[ebp], 0
	je	SHORT $L57907

; 3707 :       SysFreeMemory( hMem );

	mov	edx, DWORD PTR _hMem$[ebp]
	push	edx
	call	_SysFreeMemory@4
$L57907:

; 3708 : 
; 3709 :    return( nReturnCode );

	mov	ax, WORD PTR _nReturnCode$[ebp]

; 3710 : 
; 3711 : }  /* Load */

	pop	edi
	mov	esp, ebp
	pop	ebp
	ret	0
$L58527:
	DD	$L57883
	DD	$L57889
	DD	$L57880
	DD	$L57880
	DD	$L57880
	DD	$L57880
	DD	$L57880
	DD	$L57885
	DD	$L57893
_Load	ENDP
_TEXT	ENDS
PUBLIC	_WriteLongChar
PUBLIC	_Insert
PUBLIC	??_C@_0BN@CHFK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Insert?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@ ; `string'
PUBLIC	??_C@_0BC@ENOM@Inserting?5entity?5?$AA@		; `string'
PUBLIC	??_C@_0BC@LMHG@Inserting?5record?5?$AA@		; `string'
EXTRN	_SqlBuildInsert@20:NEAR
;	COMDAT ??_C@_0BN@CHFK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Insert?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0BN@CHFK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Insert?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@ DB '='
	DB	'========= Insert ==========', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@ENOM@Inserting?5entity?5?$AA@
_DATA	SEGMENT
??_C@_0BC@ENOM@Inserting?5entity?5?$AA@ DB 'Inserting entity ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@LMHG@Inserting?5record?5?$AA@
_DATA	SEGMENT
??_C@_0BC@LMHG@Inserting?5record?5?$AA@ DB 'Inserting record ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpViewEntity$ = 8
_lpView$ = 12
_lpViewOD$ = 16
_lpConnection$ = 24
_lpDataRecord$ = -28
_lpRelRecord$ = -24
_lpBoundList$ = -16
_pvDBH_Data$ = -12
_pchRecordName$ = -20
_nBuildRC$ = -4
_nRC$ = -8
_Insert	PROC NEAR

; 3724 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 3725 :    LPDATARECORD    lpDataRecord;
; 3726 :    LPRELRECORD     lpRelRecord;
; 3727 :    LPBOUNDLIST     lpBoundList;
; 3728 :    zPVOID          pvDBH_Data = 0;

	mov	DWORD PTR _pvDBH_Data$[ebp], 0

; 3729 :    zPCHAR          pchRecordName;
; 3730 :    zSHORT          nBuildRC;
; 3731 :    zSHORT          nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 3732 : 
; 3733 : #if defined( DB2 ) || defined( ODBC )
; 3734 :    CallbackInfoRecord CallbackInfo = { 0 };
; 3735 : 
; 3736 :    pvDBH_Data = &CallbackInfo;
; 3737 :    CallbackInfo.cBuildFunction = BUILD_CREATE;
; 3738 : 
; 3739 : #if defined( ODBC )
; 3740 :       // Get a pointer to the dbh-specific data for ODBC.  We'll pass this
; 3741 :       // info around via the lpBoundList structure.
; 3742 :       CallbackInfo.lpObjectData = zGETPTR( lpViewOD->hDBH_Data );
; 3743 : #endif
; 3744 : 
; 3745 : #endif
; 3746 : 
; 3747 :    SqlInitBoundAttrList( &lpBoundList, 0,
; 3748 :                          fnDBH_Callback, zCB_FUNCS, pvDBH_Data );

	mov	eax, DWORD PTR _pvDBH_Data$[ebp]
	push	eax
	push	318767104				; 13000000H
	push	OFFSET FLAT:_fnDBH_Callback@24
	push	0
	lea	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	call	_SqlInitBoundAttrList@20

; 3749 : 
; 3750 :    lpDataRecord = zGETPTR( lpViewEntity->hFirstDataRecord );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+191]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpDataRecord$[ebp], eax

; 3751 :    lpRelRecord  = zGETPTR( lpDataRecord->hFirstRelRecord );

	mov	ecx, DWORD PTR _lpDataRecord$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpRelRecord$[ebp], eax

; 3752 :    pchRecordName = lpDataRecord->szRecordName;

	mov	eax, DWORD PTR _lpDataRecord$[ebp]
	add	eax, 15					; 0000000fH
	mov	DWORD PTR _pchRecordName$[ebp], eax

; 3753 : 
; 3754 :    if ( lpConnection->nTraceLevel > 1 )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+214]
	cmp	edx, 1
	jle	SHORT $L57931

; 3756 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 3757 :       TraceLineS( "========== Insert ==========", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BN@CHFK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Insert?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@ ; `string'
	call	_TraceLineS@8

; 3758 :       TraceLineS( "Inserting entity ", lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0BC@ENOM@Inserting?5entity?5?$AA@ ; `string'
	call	_TraceLineS@8

; 3759 :       TraceLineS( "Inserting record ", lpDataRecord->szRecordName );

	mov	ecx, DWORD PTR _lpDataRecord$[ebp]
	add	ecx, 15					; 0000000fH
	push	ecx
	push	OFFSET FLAT:??_C@_0BC@LMHG@Inserting?5record?5?$AA@ ; `string'
	call	_TraceLineS@8

; 3760 :       if ( lpConnection->nTraceLevel > 2 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	cmp	eax, 2
	jle	SHORT $L57931

; 3761 :          DisplayEntityInstance( lpView, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_DisplayEntityInstance@8
$L57931:

; 3763 : 
; 3764 :    // Build SQL for insert.  If nBuildRC == 1 after build, then there are some
; 3765 :    // long var chars that need to be bound.
; 3766 :    nBuildRC = SqlBuildInsert( lpView, lpViewOD, lpViewEntity,
; 3767 :                               lpConnection->pchConnSqlCmd, lpBoundList );

	mov	eax, DWORD PTR _lpBoundList$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+194]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SqlBuildInsert@20
	mov	WORD PTR _nBuildRC$[ebp], ax

; 3768 :    if ( nBuildRC == zCALL_ERROR )

	movsx	eax, WORD PTR _nBuildRC$[ebp]
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L57932

; 3770 :       SqlFreeBoundAttrList( lpBoundList );

	mov	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	call	_SqlFreeBoundAttrList@4

; 3771 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L57919
$L57932:

; 3773 : 
; 3774 :    // ================================================================
; 3775 :    // Prepare/compile insert statement
; 3776 :    // ================================================================
; 3777 : 
; 3778 : #if defined( DB2 ) || defined( ODBC )
; 3779 : 
; 3780 :    lpConnection->hstmt = lpConnection->hGeneralStmt;
; 3781 : 
; 3782 :    nRC = SQLPrepare( lpConnection->hstmt, lpConnection->pchConnSqlCmd, SQL_NTS );
; 3783 :    DisplayCommand( "SQLPrepare", nRC, lpConnection );
; 3784 : 
; 3785 : #endif
; 3786 : 
; 3787 :    if ( nRC )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	je	SHORT $L57933

; 3789 :       SqlFreeBoundAttrList( lpBoundList );

	mov	eax, DWORD PTR _lpBoundList$[ebp]
	push	eax
	call	_SqlFreeBoundAttrList@4

; 3790 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L57919
$L57933:

; 3792 : 
; 3793 :    // If needed, bind any long varchars.
; 3794 :    nRC = WriteLongChar( lpConnection, lpBoundList );

	mov	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpConnection$[ebp]
	push	edx
	call	_WriteLongChar
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax

; 3795 :    if ( nRC < 0 )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jge	SHORT $L57934

; 3797 :       SqlFreeBoundAttrList( lpBoundList );

	mov	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	call	_SqlFreeBoundAttrList@4

; 3798 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L57919
$L57934:

; 3800 : 
; 3801 :    // ================================================================
; 3802 :    // Insert table.
; 3803 :    // ================================================================
; 3804 : 
; 3805 : #if defined( DB2 ) || defined( ODBC )
; 3806 : 
; 3807 :    nRC = SQLExecute( lpConnection->hstmt );
; 3808 :    SqlFreeBoundAttrList( lpBoundList );
; 3809 : // lpBoundList = 0;
; 3810 : 
; 3811 :    if ( nRC != SQL_SUCCESS && nRC != SQL_SUCCESS_WITH_INFO )
; 3812 :    {
; 3813 :       // If the trace level is 0 then let's trace the SQL to help debugging.
; 3814 :       if ( lpConnection->nTraceLevel == 0 )
; 3815 :          SqlDisplayCommand( lpConnection->pchConnSqlCmd, 0 );
; 3816 :    }
; 3817 : 
; 3818 :    if ( nRC == 805 && lpViewEntity->hParent == 0 )
; 3819 :    {
; 3820 :       SQL_RC( "SQLExecute", nRC, "Duplicate root", 0, 2 );
; 3821 :       nRC = zDUPLICATE_ROOT;
; 3822 :       return( zDUPLICATE_ROOT );
; 3823 :    }
; 3824 :    else
; 3825 :    {
; 3826 :       SQL_RC( "SQLExecute", nRC, 0, 0, 2 );
; 3827 :       if ( nRC != SQL_SUCCESS && nRC != SQL_SUCCESS_WITH_INFO )
; 3828 :          return( zCALL_ERROR );
; 3829 :    }
; 3830 : 
; 3831 : #elif defined( DUMMY )
; 3832 : 
; 3833 :    if ( lpConnection->nTraceLevel > 0 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	test	eax, eax
	jle	SHORT $L57935

; 3835 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 3836 :       SqlDisplayCommand( lpConnection->pchConnSqlCmd, 0 );

	push	0
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+194]
	push	edx
	call	_SqlDisplayCommand@8
$L57935:

; 3838 : 
; 3839 : #endif
; 3840 : 
; 3841 :    lpConnection->bDatabaseChanged = TRUE;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+760]
	or	ecx, 2
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [edx+760], ecx

; 3842 : 
; 3843 :    return( 0 );

	xor	ax, ax
$L57919:

; 3844 : }  /* Insert */

	mov	esp, ebp
	pop	ebp
	ret	0
_Insert	ENDP
_TEXT	ENDS
PUBLIC	_InsertRel
PUBLIC	??_C@_0CB@ODKK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Insert?5Rel?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ ; `string'
PUBLIC	??_C@_0BK@PEJM@Inserting?5rel?5for?5entity?5?$AA@ ; `string'
PUBLIC	??_C@_0BK@FAG@Inserting?5rel?5for?5record?5?$AA@ ; `string'
PUBLIC	??_C@_07IHIH@PARENT?3?$AA@			; `string'
PUBLIC	??_C@_06NCJM@CHILD?3?$AA@			; `string'
EXTRN	_SqlBuildInsertCorrTable@20:NEAR
;	COMDAT ??_C@_0CB@ODKK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Insert?5Rel?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0CB@ODKK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Insert?5Rel?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ DB '='
	DB	'========= Insert Rel ==========', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@PEJM@Inserting?5rel?5for?5entity?5?$AA@
_DATA	SEGMENT
??_C@_0BK@PEJM@Inserting?5rel?5for?5entity?5?$AA@ DB 'Inserting rel for e'
	DB	'ntity ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@FAG@Inserting?5rel?5for?5record?5?$AA@
_DATA	SEGMENT
??_C@_0BK@FAG@Inserting?5rel?5for?5record?5?$AA@ DB 'Inserting rel for re'
	DB	'cord ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_07IHIH@PARENT?3?$AA@
_DATA	SEGMENT
??_C@_07IHIH@PARENT?3?$AA@ DB 'PARENT:', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_06NCJM@CHILD?3?$AA@
_DATA	SEGMENT
??_C@_06NCJM@CHILD?3?$AA@ DB 'CHILD:', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpViewEntity$ = 8
_lpView$ = 12
_lpViewOD$ = 16
_lpConnection$ = 20
_lpDataRecord$ = -24
_lpRelRecord$ = -20
_lpBoundList$ = -12
_pvDBH_Data$ = -8
_pchRecordName$ = -16
_nRC$ = -4
_lpParent$57957 = -28
_InsertRel PROC NEAR

; 3856 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 3857 :    LPDATARECORD    lpDataRecord;
; 3858 :    LPRELRECORD     lpRelRecord;
; 3859 :    LPBOUNDLIST     lpBoundList;
; 3860 :    zPVOID          pvDBH_Data = 0;

	mov	DWORD PTR _pvDBH_Data$[ebp], 0

; 3861 :    zPCHAR          pchRecordName;
; 3862 :    zSHORT          nRC;
; 3863 : 
; 3864 : #if defined( DB2 ) || defined( ODBC )
; 3865 :    CallbackInfoRecord CallbackInfo = { 0 };
; 3866 : 
; 3867 :    pvDBH_Data = &CallbackInfo;
; 3868 :    CallbackInfo.cBuildFunction = BUILD_INCLUDE;
; 3869 : 
; 3870 :    #if defined( ODBC )
; 3871 :       // Get a pointer to the dbh-specific data for ODBC.  We'll pass this
; 3872 :       // info around via the lpBoundList structure.
; 3873 :       CallbackInfo.lpObjectData = zGETPTR( lpViewOD->hDBH_Data );
; 3874 :    #endif
; 3875 : 
; 3876 : #endif
; 3877 : 
; 3878 :    SqlInitBoundAttrList( &lpBoundList, 0,
; 3879 :                          fnDBH_Callback, zCB_FUNCS, pvDBH_Data );

	mov	eax, DWORD PTR _pvDBH_Data$[ebp]
	push	eax
	push	318767104				; 13000000H
	push	OFFSET FLAT:_fnDBH_Callback@24
	push	0
	lea	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	call	_SqlInitBoundAttrList@20

; 3880 : 
; 3881 :    lpDataRecord = zGETPTR( lpViewEntity->hFirstDataRecord );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+191]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpDataRecord$[ebp], eax

; 3882 :    lpRelRecord  = zGETPTR( lpDataRecord->hFirstRelRecord );

	mov	ecx, DWORD PTR _lpDataRecord$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpRelRecord$[ebp], eax

; 3883 :    pchRecordName = lpDataRecord->szRecordName;

	mov	eax, DWORD PTR _lpDataRecord$[ebp]
	add	eax, 15					; 0000000fH
	mov	DWORD PTR _pchRecordName$[ebp], eax

; 3884 : 
; 3885 :    if ( lpConnection->nTraceLevel > 1 )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+214]
	cmp	edx, 1
	jle	$L57956

; 3887 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 3888 :       TraceLineS( "========== Insert Rel ==========", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CB@ODKK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Insert?5Rel?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ ; `string'
	call	_TraceLineS@8

; 3889 :       TraceLineS( "Inserting rel for entity ", lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0BK@PEJM@Inserting?5rel?5for?5entity?5?$AA@ ; `string'
	call	_TraceLineS@8

; 3890 :       TraceLineS( "Inserting rel for record ", lpDataRecord->szRecordName );

	mov	ecx, DWORD PTR _lpDataRecord$[ebp]
	add	ecx, 15					; 0000000fH
	push	ecx
	push	OFFSET FLAT:??_C@_0BK@FAG@Inserting?5rel?5for?5record?5?$AA@ ; `string'
	call	_TraceLineS@8

; 3891 : 
; 3892 :       if ( lpConnection->nTraceLevel > 2 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	cmp	eax, 2
	jle	SHORT $L57956

; 3894 :          LPVIEWENTITY lpParent = zGETPTR( lpViewEntity->hParent );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpParent$57957[ebp], eax

; 3895 : 
; 3896 :          TraceLineS( "PARENT:", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_07IHIH@PARENT?3?$AA@	; `string'
	call	_TraceLineS@8

; 3897 :          DisplayEntityInstance( lpView, lpParent->szName );

	mov	eax, DWORD PTR _lpParent$57957[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_DisplayEntityInstance@8

; 3898 : 
; 3899 :          TraceLineS( "CHILD:", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_06NCJM@CHILD?3?$AA@	; `string'
	call	_TraceLineS@8

; 3900 :          DisplayEntityInstance( lpView, lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_DisplayEntityInstance@8
$L57956:

; 3903 : 
; 3904 :    // The only thing that needs to be done is to insert the correspondence
; 3905 :    // table if the relationship is many-to-many.
; 3906 :    if ( lpRelRecord->cOwnerMember == zDBH_MANY_TO_MANY )

	mov	ecx, DWORD PTR _lpRelRecord$[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	cmp	edx, 50					; 00000032H
	jne	SHORT $L57960

; 3908 :       nRC = SqlBuildInsertCorrTable( lpView, lpViewOD, lpViewEntity,
; 3909 :                                      lpConnection->pchConnSqlCmd, lpBoundList );

	mov	eax, DWORD PTR _lpBoundList$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+194]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SqlBuildInsertCorrTable@20
	mov	WORD PTR _nRC$[ebp], ax

; 3910 :       SqlFreeBoundAttrList( lpBoundList );

	mov	eax, DWORD PTR _lpBoundList$[ebp]
	push	eax
	call	_SqlFreeBoundAttrList@4

; 3911 :    // lpBoundList = 0;
; 3912 :       if ( nRC == zCALL_ERROR )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -16				; fffffff0H
	jne	SHORT $L57961

; 3913 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L57945
$L57961:

; 3914 : 
; 3915 :       // ================================================================
; 3916 :       // Insert correspondence table.
; 3917 :       // ================================================================
; 3918 : 
; 3919 : #if defined( DB2 ) || defined( ODBC )
; 3920 : 
; 3921 :       lpConnection->hstmt = lpConnection->hGeneralStmt;
; 3922 : 
; 3923 :       nRC = SQLExecDirect( lpConnection->hstmt, lpConnection->pchConnSqlCmd,
; 3924 :                            SQL_NTS );
; 3925 :       DisplayCommand( "SQLExecDirect", nRC, lpConnection );
; 3926 :       if ( nRC != SQL_SUCCESS )
; 3927 :          return( zCALL_ERROR );
; 3928 : 
; 3929 : #elif defined( DUMMY )
; 3930 : 
; 3931 :       if ( lpConnection->nTraceLevel > 0 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	test	eax, eax
	jle	SHORT $L57962

; 3933 :          TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 3934 :          SqlDisplayCommand( lpConnection->pchConnSqlCmd, 0 );

	push	0
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+194]
	push	edx
	call	_SqlDisplayCommand@8
$L57962:

; 3936 : 
; 3937 : #endif
; 3938 : 
; 3939 :       lpConnection->bDatabaseChanged = TRUE;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+760]
	or	ecx, 2
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [edx+760], ecx
$L57960:

; 3941 : 
; 3942 :    return( 0 );

	xor	ax, ax
$L57945:

; 3943 : 
; 3944 : }  /* InsertRel */

	mov	esp, ebp
	pop	ebp
	ret	0
_InsertRel ENDP
_TEXT	ENDS
PUBLIC	_Delete
PUBLIC	??_C@_0BN@OIOI@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Delete?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@ ; `string'
PUBLIC	??_C@_0BB@MCLG@Deleting?5entity?5?$AA@		; `string'
PUBLIC	??_C@_0BB@DDCM@Deleting?5record?5?$AA@		; `string'
PUBLIC	??_C@_0BI@IHKI@SqlBuildDeleteAll?5SQL?3?5?$AA@	; `string'
EXTRN	_SqlBuildDelete@20:NEAR
EXTRN	_SqlBuildDeleteAll@20:NEAR
;	COMDAT ??_C@_0BN@OIOI@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Delete?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0BN@OIOI@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Delete?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@ DB '='
	DB	'========= Delete ==========', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@MCLG@Deleting?5entity?5?$AA@
_DATA	SEGMENT
??_C@_0BB@MCLG@Deleting?5entity?5?$AA@ DB 'Deleting entity ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@DDCM@Deleting?5record?5?$AA@
_DATA	SEGMENT
??_C@_0BB@DDCM@Deleting?5record?5?$AA@ DB 'Deleting record ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@IHKI@SqlBuildDeleteAll?5SQL?3?5?$AA@
_DATA	SEGMENT
??_C@_0BI@IHKI@SqlBuildDeleteAll?5SQL?3?5?$AA@ DB 'SqlBuildDeleteAll SQL:'
	DB	' ', 00H					; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpViewEntity$ = 8
_lpView$ = 12
_lpViewOD$ = 16
_lpConnection$ = 20
_lpDataRecord$ = -24
_lpRelRecord$ = -20
_lpBoundList$ = -16
_pvDBH_Data$ = -12
_bDeleteRequired$ = -8
_nRC$ = -4
_Delete	PROC NEAR

; 3954 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 3955 :    LPDATARECORD    lpDataRecord;
; 3956 :    LPRELRECORD     lpRelRecord;
; 3957 :    LPBOUNDLIST     lpBoundList;
; 3958 :    zPVOID          pvDBH_Data = 0;

	mov	DWORD PTR _pvDBH_Data$[ebp], 0

; 3959 :    zBOOL           bDeleteRequired = TRUE;  // dks ... 2006.01.25

	mov	BYTE PTR _bDeleteRequired$[ebp], 1

; 3960 :    zSHORT          nRC;
; 3961 : 
; 3962 : #if defined( DB2 ) || defined( ODBC )
; 3963 :    CallbackInfoRecord CallbackInfo = { 0 };
; 3964 : 
; 3965 :    pvDBH_Data = &CallbackInfo;
; 3966 :    CallbackInfo.cBuildFunction = BUILD_DELETE;
; 3967 : 
; 3968 :    #if defined( ODBC )
; 3969 :       // Get a pointer to the dbh-specific data for ODBC.  We'll pass this
; 3970 :       // info around via the lpBoundList structure.
; 3971 :       CallbackInfo.lpObjectData = zGETPTR( lpViewOD->hDBH_Data );
; 3972 :    #endif
; 3973 : 
; 3974 : #endif
; 3975 : 
; 3976 :    SqlInitBoundAttrList( &lpBoundList, 0,
; 3977 :                          fnDBH_Callback, zCB_FUNCS, pvDBH_Data );

	mov	eax, DWORD PTR _pvDBH_Data$[ebp]
	push	eax
	push	318767104				; 13000000H
	push	OFFSET FLAT:_fnDBH_Callback@24
	push	0
	lea	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	call	_SqlInitBoundAttrList@20

; 3978 : 
; 3979 :    lpDataRecord = zGETPTR( lpViewEntity->hFirstDataRecord );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+191]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpDataRecord$[ebp], eax

; 3980 :    lpRelRecord  = zGETPTR( lpDataRecord->hFirstRelRecord );

	mov	ecx, DWORD PTR _lpDataRecord$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpRelRecord$[ebp], eax

; 3981 : 
; 3982 :    if ( lpConnection->nTraceLevel > 1 )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+214]
	cmp	ecx, 1
	jle	SHORT $L57983

; 3984 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 3985 :       TraceLineS( "========== Delete ==========", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BN@OIOI@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Delete?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@ ; `string'
	call	_TraceLineS@8

; 3986 :       TraceLineS( "Deleting entity ", lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0BB@MCLG@Deleting?5entity?5?$AA@ ; `string'
	call	_TraceLineS@8

; 3987 :       TraceLineS( "Deleting record ", lpDataRecord->szRecordName );

	mov	eax, DWORD PTR _lpDataRecord$[ebp]
	add	eax, 15					; 0000000fH
	push	eax
	push	OFFSET FLAT:??_C@_0BB@DDCM@Deleting?5record?5?$AA@ ; `string'
	call	_TraceLineS@8

; 3988 :       if ( lpConnection->nTraceLevel > 2 )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+214]
	cmp	edx, 2
	jle	SHORT $L57983

; 3989 :          DisplayEntityInstance( lpView, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_DisplayEntityInstance@8
$L57983:

; 3991 : 
; 3992 :    // ================================================================
; 3993 :    // Delete table.
; 3994 :    // ================================================================
; 3995 : 
; 3996 :    // Start dks ... 2006.01.25
; 3997 :    if ( lpConnection->bDeleteAll )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+760]
	shr	eax, 2
	and	eax, 1
	test	eax, eax
	je	SHORT $L57984

; 3999 :       if ( SqlBuildDeleteAll( lpView, lpViewOD, lpViewEntity,
; 4000 :                               lpConnection->pchConnSqlCmd, lpBoundList ) == 0 )

	mov	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+194]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewOD$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SqlBuildDeleteAll@20
	movsx	ecx, ax
	test	ecx, ecx
	jne	SHORT $L57985

; 4002 :          TraceLineS( "SqlBuildDeleteAll SQL: ", lpConnection->pchConnSqlCmd );

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+194]
	push	eax
	push	OFFSET FLAT:??_C@_0BI@IHKI@SqlBuildDeleteAll?5SQL?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 4003 :          bDeleteRequired = FALSE;

	mov	BYTE PTR _bDeleteRequired$[ebp], 0
$L57985:

; 4005 : 
; 4006 :       lpConnection->bDeleteAll = FALSE;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+760]
	and	edx, -5					; fffffffbH
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [eax+760], edx
$L57984:

; 4008 :    // End dks ... 2006.01.25
; 4009 : 
; 4010 :    if ( bDeleteRequired )

	mov	ecx, DWORD PTR _bDeleteRequired$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L57987

; 4012 :       nRC = SqlBuildDelete( lpView, lpViewOD, lpViewEntity,
; 4013 :                             lpConnection->pchConnSqlCmd, lpBoundList );

	mov	edx, DWORD PTR _lpBoundList$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+194]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewOD$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SqlBuildDelete@20
	mov	WORD PTR _nRC$[ebp], ax
$L57987:

; 4015 : 
; 4016 :    SqlFreeBoundAttrList( lpBoundList );

	mov	edx, DWORD PTR _lpBoundList$[ebp]
	push	edx
	call	_SqlFreeBoundAttrList@4

; 4017 : // lpBoundList = 0;
; 4018 :    if ( nRC == zCALL_ERROR )

	movsx	eax, WORD PTR _nRC$[ebp]
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L57988

; 4019 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L57972
$L57988:

; 4020 : 
; 4021 : #if defined( DB2 ) || defined( ODBC )
; 4022 : 
; 4023 :    lpConnection->hstmt = lpConnection->hGeneralStmt;
; 4024 : 
; 4025 :    nRC = SQLExecDirect( lpConnection->hstmt, lpConnection->pchConnSqlCmd, SQL_NTS );
; 4026 :    DisplayCommand( "SQLExecDirect", nRC, lpConnection );
; 4027 :    if ( nRC != SQL_SUCCESS )
; 4028 :       return( zCALL_ERROR );
; 4029 : 
; 4030 : #elif defined( DUMMY )
; 4031 : 
; 4032 :    if ( lpConnection->nTraceLevel > 0 )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+214]
	test	edx, edx
	jle	SHORT $L57989

; 4034 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 4035 :       SqlDisplayCommand( lpConnection->pchConnSqlCmd, 0 );

	push	0
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+194]
	push	ecx
	call	_SqlDisplayCommand@8
$L57989:

; 4037 : 
; 4038 : #endif
; 4039 : 
; 4040 :    lpConnection->bDatabaseChanged = TRUE;

	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+760]
	or	al, 2
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [ecx+760], eax

; 4041 : 
; 4042 :    return( 0 );

	xor	ax, ax
$L57972:

; 4043 : }  /* Delete */

	mov	esp, ebp
	pop	ebp
	ret	0
_Delete	ENDP
_TEXT	ENDS
PUBLIC	_DeleteRel
PUBLIC	??_C@_0CB@IFLO@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Delete?5Rel?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ ; `string'
EXTRN	_SqlBuildDeleteCorrTable@20:NEAR
;	COMDAT ??_C@_0CB@IFLO@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Delete?5Rel?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0CB@IFLO@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Delete?5Rel?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ DB '='
	DB	'========= Delete Rel ==========', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpViewEntity$ = 8
_lpView$ = 12
_lpViewOD$ = 16
_lpConnection$ = 20
_lpDataRecord$ = -20
_lpRelRecord$ = -16
_lpBoundList$ = -12
_pvDBH_Data$ = -8
_nRC$ = -4
_DeleteRel PROC NEAR

; 4053 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 4054 :    LPDATARECORD    lpDataRecord;
; 4055 :    LPRELRECORD     lpRelRecord;
; 4056 :    LPBOUNDLIST     lpBoundList;
; 4057 :    zPVOID          pvDBH_Data = 0;

	mov	DWORD PTR _pvDBH_Data$[ebp], 0

; 4058 :    zSHORT          nRC;
; 4059 : 
; 4060 : #if defined( DB2 ) || defined( ODBC )
; 4061 :    CallbackInfoRecord CallbackInfo = { 0 };
; 4062 : 
; 4063 :    pvDBH_Data = &CallbackInfo;
; 4064 :    CallbackInfo.cBuildFunction = BUILD_EXCLUDE;
; 4065 : 
; 4066 :    #if defined( ODBC )
; 4067 :       // Get a pointer to the dbh-specific data for ODBC.  We'll pass this
; 4068 :       // info around via the lpBoundList structure.
; 4069 :       CallbackInfo.lpObjectData = zGETPTR( lpViewOD->hDBH_Data );
; 4070 :    #endif
; 4071 : 
; 4072 : #endif
; 4073 : 
; 4074 :    SqlInitBoundAttrList( &lpBoundList, 0,
; 4075 :                          fnDBH_Callback, zCB_FUNCS, pvDBH_Data );

	mov	eax, DWORD PTR _pvDBH_Data$[ebp]
	push	eax
	push	318767104				; 13000000H
	push	OFFSET FLAT:_fnDBH_Callback@24
	push	0
	lea	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	call	_SqlInitBoundAttrList@20

; 4076 : 
; 4077 :    lpDataRecord = zGETPTR( lpViewEntity->hFirstDataRecord );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+191]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpDataRecord$[ebp], eax

; 4078 :    lpRelRecord  = zGETPTR( lpDataRecord->hFirstRelRecord );

	mov	ecx, DWORD PTR _lpDataRecord$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpRelRecord$[ebp], eax

; 4079 : 
; 4080 :    if ( lpConnection->nTraceLevel > 1 )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+214]
	cmp	ecx, 1
	jle	SHORT $L58007

; 4082 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 4083 :       TraceLineS( "========== Delete Rel ==========", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CB@IFLO@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Delete?5Rel?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ ; `string'
	call	_TraceLineS@8

; 4084 :       TraceLineS( "Deleting entity ", lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0BB@MCLG@Deleting?5entity?5?$AA@ ; `string'
	call	_TraceLineS@8

; 4085 :       TraceLineS( "Deleting record ", lpDataRecord->szRecordName );

	mov	eax, DWORD PTR _lpDataRecord$[ebp]
	add	eax, 15					; 0000000fH
	push	eax
	push	OFFSET FLAT:??_C@_0BB@DDCM@Deleting?5record?5?$AA@ ; `string'
	call	_TraceLineS@8

; 4086 :       if ( lpConnection->nTraceLevel > 2 )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+214]
	cmp	edx, 2
	jle	SHORT $L58007

; 4087 :          DisplayEntityInstance( lpView, lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_DisplayEntityInstance@8
$L58007:

; 4089 : 
; 4090 :    // The only thing that needs to be done is to delete the correspondence
; 4091 :    // table if the relationship is many-to-many.
; 4092 :    if ( lpRelRecord->cOwnerMember == zDBH_MANY_TO_MANY )

	mov	edx, DWORD PTR _lpRelRecord$[ebp]
	movsx	eax, BYTE PTR [edx+10]
	cmp	eax, 50					; 00000032H
	jne	SHORT $L58008

; 4094 :       nRC = SqlBuildDeleteCorrTable( lpView, lpViewOD, lpViewEntity,
; 4095 :                                      lpConnection->pchConnSqlCmd, lpBoundList );

	mov	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+194]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewOD$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SqlBuildDeleteCorrTable@20
	mov	WORD PTR _nRC$[ebp], ax

; 4096 :       SqlFreeBoundAttrList( lpBoundList );

	mov	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	call	_SqlFreeBoundAttrList@4

; 4097 :    // lpBoundList = 0;
; 4098 :       if ( nRC == zCALL_ERROR )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L58009

; 4099 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L57999
$L58009:

; 4100 : 
; 4101 :       // ================================================================
; 4102 :       // Delete correspondence table.
; 4103 :       // ================================================================
; 4104 : 
; 4105 : #if defined( DB2 ) || defined( ODBC )
; 4106 : 
; 4107 :       lpConnection->hstmt = lpConnection->hGeneralStmt;
; 4108 : 
; 4109 :       nRC = SQLExecDirect( lpConnection->hstmt, lpConnection->pchConnSqlCmd,
; 4110 :                            SQL_NTS);
; 4111 :       DisplayCommand( "SQLExecDirect", nRC, lpConnection );
; 4112 :       if ( nRC )
; 4113 :          return( zCALL_ERROR );
; 4114 : 
; 4115 : #elif defined( DUMMY )
; 4116 : 
; 4117 :       if ( lpConnection->nTraceLevel > 0 )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+214]
	test	ecx, ecx
	jle	SHORT $L58010

; 4119 :          TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 4120 :          SqlDisplayCommand( lpConnection->pchConnSqlCmd, 0 );

	push	0
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	eax, DWORD PTR [edx+194]
	push	eax
	call	_SqlDisplayCommand@8
$L58010:

; 4122 : 
; 4123 : #endif
; 4124 : 
; 4125 :       lpConnection->bDatabaseChanged = TRUE;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+760]
	or	edx, 2
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [eax+760], edx
$L58008:

; 4127 : 
; 4128 :    return( 0 );

	xor	ax, ax
$L57999:

; 4129 : }  /* DeleteRel */

	mov	esp, ebp
	pop	ebp
	ret	0
_DeleteRel ENDP
_TEXT	ENDS
PUBLIC	_Update
PUBLIC	??_C@_0BN@HAHA@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Update?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@ ; `string'
PUBLIC	??_C@_0BB@FKEG@Updating?5entity?5?$AA@		; `string'
PUBLIC	??_C@_0BB@KLNM@Updating?5record?5?$AA@		; `string'
EXTRN	_SqlBuildUpdate@24:NEAR
EXTRN	_SqlBuildUpdateCorrTable@20:NEAR
;	COMDAT ??_C@_0BN@HAHA@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Update?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0BN@HAHA@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Update?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@ DB '='
	DB	'========= Update ==========', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@FKEG@Updating?5entity?5?$AA@
_DATA	SEGMENT
??_C@_0BB@FKEG@Updating?5entity?5?$AA@ DB 'Updating entity ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@KLNM@Updating?5record?5?$AA@
_DATA	SEGMENT
??_C@_0BB@KLNM@Updating?5record?5?$AA@ DB 'Updating record ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpViewEntity$ = 8
_lpView$ = 12
_lpViewOD$ = 16
_bAutoSeqOnly$ = 20
_lpConnection$ = 24
_lpDataRecord$ = -24
_lpRelRecord$ = -20
_lpBoundList$ = -16
_pvDBH_Data$ = -12
_nRC$ = -8
_nBuildRC$ = -4
_Update	PROC NEAR

; 4140 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 4141 :    LPDATARECORD    lpDataRecord;
; 4142 :    LPRELRECORD     lpRelRecord;
; 4143 :    LPBOUNDLIST     lpBoundList;
; 4144 :    zPVOID          pvDBH_Data = 0;

	mov	DWORD PTR _pvDBH_Data$[ebp], 0

; 4145 :    zSHORT          nRC, nBuildRC;
; 4146 : 
; 4147 : #if defined( DB2 ) || defined( ODBC )
; 4148 :    CallbackInfoRecord CallbackInfo = { 0 };
; 4149 : 
; 4150 :    pvDBH_Data = &CallbackInfo;
; 4151 :    CallbackInfo.cBuildFunction = BUILD_UPDATE;
; 4152 : 
; 4153 :    #if defined( ODBC )
; 4154 :       // Get a pointer to the dbh-specific data for ODBC.  We'll pass this
; 4155 :       // info around via the lpBoundList structure.
; 4156 :       CallbackInfo.lpObjectData = zGETPTR( lpViewOD->hDBH_Data );
; 4157 :    #endif
; 4158 : 
; 4159 : #endif
; 4160 : 
; 4161 :    SqlInitBoundAttrList( &lpBoundList, 0,
; 4162 :                          fnDBH_Callback, zCB_FUNCS, pvDBH_Data );

	mov	eax, DWORD PTR _pvDBH_Data$[ebp]
	push	eax
	push	318767104				; 13000000H
	push	OFFSET FLAT:_fnDBH_Callback@24
	push	0
	lea	ecx, DWORD PTR _lpBoundList$[ebp]
	push	ecx
	call	_SqlInitBoundAttrList@20

; 4163 : 
; 4164 :    lpDataRecord = zGETPTR( lpViewEntity->hFirstDataRecord );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+191]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpDataRecord$[ebp], eax

; 4165 : 
; 4166 :    if ( lpConnection->nTraceLevel > 1 )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+214]
	cmp	edx, 1
	jle	SHORT $L58033

; 4168 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 4169 :       TraceLineS( "========== Update ==========", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BN@HAHA@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Update?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$AA@ ; `string'
	call	_TraceLineS@8

; 4170 :       TraceLineS( "Updating entity ", lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0BB@FKEG@Updating?5entity?5?$AA@ ; `string'
	call	_TraceLineS@8

; 4171 :       TraceLineS( "Updating record ", lpDataRecord->szRecordName );

	mov	ecx, DWORD PTR _lpDataRecord$[ebp]
	add	ecx, 15					; 0000000fH
	push	ecx
	push	OFFSET FLAT:??_C@_0BB@KLNM@Updating?5record?5?$AA@ ; `string'
	call	_TraceLineS@8

; 4172 :       if ( lpConnection->nTraceLevel > 2 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	cmp	eax, 2
	jle	SHORT $L58033

; 4173 :          DisplayEntityInstance( lpView, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_DisplayEntityInstance@8
$L58033:

; 4175 : 
; 4176 :    nBuildRC = SqlBuildUpdate( lpView, lpViewOD, lpViewEntity, bAutoSeqOnly,
; 4177 :                               lpConnection->pchConnSqlCmd, lpBoundList );

	mov	eax, DWORD PTR _lpBoundList$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+194]
	push	edx
	mov	ax, WORD PTR _bAutoSeqOnly$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewOD$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SqlBuildUpdate@24
	mov	WORD PTR _nBuildRC$[ebp], ax

; 4178 :    if ( nBuildRC == zCALL_ERROR )

	movsx	ecx, WORD PTR _nBuildRC$[ebp]
	cmp	ecx, -16				; fffffff0H
	jne	SHORT $L58034

; 4180 :       SqlFreeBoundAttrList( lpBoundList );

	mov	edx, DWORD PTR _lpBoundList$[ebp]
	push	edx
	call	_SqlFreeBoundAttrList@4

; 4181 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L58022
$L58034:

; 4183 : 
; 4184 :    // ================================================================
; 4185 :    // Prepare/compile Update statement.
; 4186 :    // ================================================================
; 4187 : 
; 4188 :    // If nBuildRC is -1 then none of the attributes where updated so don't
; 4189 :    // update the table.
; 4190 :    if ( nBuildRC != -1 )

	movsx	eax, WORD PTR _nBuildRC$[ebp]
	cmp	eax, -1
	je	SHORT $L58037

; 4192 : 
; 4193 : #if defined( DB2 ) || defined( ODBC )
; 4194 : 
; 4195 :       lpConnection->hstmt = lpConnection->hGeneralStmt;
; 4196 : 
; 4197 :       nRC = SQLPrepare( lpConnection->hstmt, lpConnection->pchConnSqlCmd, SQL_NTS );
; 4198 :       DisplayCommand( "SQLPrepare", nRC, lpConnection );
; 4199 :       if ( nRC != SQL_SUCCESS )
; 4200 :       {
; 4201 :          SqlFreeBoundAttrList( lpBoundList );
; 4202 :          return( zCALL_ERROR );
; 4203 :       }
; 4204 : 
; 4205 : #elif defined( DUMMY )
; 4206 : 
; 4207 :       if ( lpConnection->nTraceLevel > 0 )

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	movsx	edx, WORD PTR [ecx+214]
	test	edx, edx
	jle	SHORT $L58036

; 4209 :          TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 4210 :          SqlDisplayCommand( lpConnection->pchConnSqlCmd, 0 );

	push	0
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+194]
	push	ecx
	call	_SqlDisplayCommand@8
$L58036:

; 4212 : 
; 4213 : #endif
; 4214 : 
; 4215 :       nRC = WriteLongChar( lpConnection, lpBoundList );

	mov	edx, DWORD PTR _lpBoundList$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpConnection$[ebp]
	push	eax
	call	_WriteLongChar
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax

; 4216 :       if ( nRC < 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jge	SHORT $L58037

; 4218 :          SqlFreeBoundAttrList( lpBoundList );

	mov	edx, DWORD PTR _lpBoundList$[ebp]
	push	edx
	call	_SqlFreeBoundAttrList@4

; 4219 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L58022
$L58037:

; 4242 : 
; 4243 :    // We don't need it any more...
; 4244 :    SqlFreeBoundAttrList( lpBoundList );

	mov	eax, DWORD PTR _lpBoundList$[ebp]
	push	eax
	call	_SqlFreeBoundAttrList@4

; 4245 : // lpBoundList = 0;
; 4246 : 
; 4247 :    // If the entity has auto seq attributes, then the corr table might have
; 4248 :    // to be updated.  This will only happen if the current entity has a parent
; 4249 :    // and if the relationship is many-to-many.
; 4250 :    lpRelRecord = zGETPTR( lpDataRecord->hFirstRelRecord );

	mov	ecx, DWORD PTR _lpDataRecord$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpRelRecord$[ebp], eax

; 4251 :    if ( lpViewEntity->bAutoSeq && lpViewEntity->hParent &&
; 4252 :         lpRelRecord->cOwnerMember == zDBH_MANY_TO_MANY )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 20					; 00000014H
	and	ecx, 1
	test	ecx, ecx
	je	$L58041
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [edx+10], 0
	je	SHORT $L58041
	mov	eax, DWORD PTR _lpRelRecord$[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	cmp	ecx, 50					; 00000032H
	jne	SHORT $L58041

; 4254 :       nRC = SqlBuildUpdateCorrTable( lpView, lpViewOD, lpViewEntity,
; 4255 :                                      lpConnection->pchConnSqlCmd, lpBoundList );

	mov	edx, DWORD PTR _lpBoundList$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+194]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewOD$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SqlBuildUpdateCorrTable@20
	mov	WORD PTR _nRC$[ebp], ax

; 4256 :       SqlFreeBoundAttrList( lpBoundList );

	mov	edx, DWORD PTR _lpBoundList$[ebp]
	push	edx
	call	_SqlFreeBoundAttrList@4

; 4257 :    // lpBoundList = 0;
; 4258 :       if ( nRC == zCALL_ERROR )

	movsx	eax, WORD PTR _nRC$[ebp]
	cmp	eax, -16				; fffffff0H
	jne	SHORT $L58039

; 4259 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L58022
$L58039:

; 4260 : 
; 4261 :       // ================================================================
; 4262 :       // Update correspondence table.
; 4263 :       // ================================================================
; 4264 : 
; 4265 :       // If nBuildRC is -1 then none of the attributes where updated so don't
; 4266 :       // update the table.
; 4267 :       if ( nRC != -1 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -1
	je	SHORT $L58041

; 4269 : #if defined( DB2 ) || defined( ODBC )
; 4270 : 
; 4271 :          lpConnection->hstmt = lpConnection->hGeneralStmt;
; 4272 : 
; 4273 :          nRC = SQLExecDirect( lpConnection->hstmt, lpConnection->pchConnSqlCmd,
; 4274 :                               SQL_NTS );
; 4275 :          DisplayCommand( "SQLExecDirect", nRC, lpConnection );
; 4276 :          if ( nRC )
; 4277 :             return( zCALL_ERROR );
; 4278 : 
; 4279 : #elif defined( DUMMY )
; 4280 : 
; 4281 :          if ( lpConnection->nTraceLevel > 0 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	test	eax, eax
	jle	SHORT $L58041

; 4283 :             TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 4284 :             SqlDisplayCommand( lpConnection->pchConnSqlCmd, 0 );

	push	0
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR [ecx+194]
	push	edx
	call	_SqlDisplayCommand@8
$L58041:

; 4290 : 
; 4291 :    lpConnection->bDatabaseChanged = TRUE;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+760]
	or	ecx, 2
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [edx+760], ecx

; 4292 : 
; 4293 :    return( 0 );

	xor	ax, ax
$L58022:

; 4294 : }  /* Update */

	mov	esp, ebp
	pop	ebp
	ret	0
_Update	ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BM@GLLE@?$DN?$DN?$DN?$DN?$DN?5DBH_Entry?5Error?5?$DN?$DN?$DN?$DN?$DN?$AA@ ; `string'
PUBLIC	??_C@_06CLGD@Msg?$DN?$DO?5?$AA@			; `string'
PUBLIC	??_C@_06LKAC@nRC?$DN?$DO?5?$AA@			; `string'
PUBLIC	??_C@_0BD@FDAG@KZHSQLXX?5DBH?5Error?$AA@	; `string'
PUBLIC	??_C@_07DOHJ@KZH0101?$AA@			; `string'
EXTRN	_MessageSend@24:NEAR
;	COMDAT ??_C@_0BM@GLLE@?$DN?$DN?$DN?$DN?$DN?5DBH_Entry?5Error?5?$DN?$DN?$DN?$DN?$DN?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0BM@GLLE@?$DN?$DN?$DN?$DN?$DN?5DBH_Entry?5Error?5?$DN?$DN?$DN?$DN?$DN?$AA@ DB '='
	DB	'==== DBH_Entry Error =====', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_06CLGD@Msg?$DN?$DO?5?$AA@
_DATA	SEGMENT
??_C@_06CLGD@Msg?$DN?$DO?5?$AA@ DB 'Msg=> ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_06LKAC@nRC?$DN?$DO?5?$AA@
_DATA	SEGMENT
??_C@_06LKAC@nRC?$DN?$DO?5?$AA@ DB 'nRC=> ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@FDAG@KZHSQLXX?5DBH?5Error?$AA@
_DATA	SEGMENT
??_C@_0BD@FDAG@KZHSQLXX?5DBH?5Error?$AA@ DB 'KZHSQLXX DBH Error', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_07DOHJ@KZH0101?$AA@
_DATA	SEGMENT
??_C@_07DOHJ@KZH0101?$AA@ DB 'KZH0101', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_pchErrorMsg$ = 12
_nRC$ = 16
_pchInfo$ = 20
_DBH_Error PROC NEAR

; 4307 : {

	push	ebp
	mov	ebp, esp

; 4308 :    TraceLineS( "===== DBH_Entry Error =====", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BM@GLLE@?$DN?$DN?$DN?$DN?$DN?5DBH_Entry?5Error?5?$DN?$DN?$DN?$DN?$DN?$AA@ ; `string'
	call	_TraceLineS@8

; 4309 :    TraceLineS( "Msg=> ", pchErrorMsg );

	mov	eax, DWORD PTR _pchErrorMsg$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_06CLGD@Msg?$DN?$DO?5?$AA@ ; `string'
	call	_TraceLineS@8

; 4310 : 
; 4311 :    if ( nRC )

	cmp	DWORD PTR _nRC$[ebp], 0
	je	SHORT $L58053

; 4312 :       TraceLineI( "nRC=> ", nRC );

	mov	ecx, DWORD PTR _nRC$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_06LKAC@nRC?$DN?$DO?5?$AA@ ; `string'
	call	_TraceLineI@8
$L58053:

; 4313 : 
; 4314 :    if ( pchInfo )

	cmp	DWORD PTR _pchInfo$[ebp], 0
	je	SHORT $L58055

; 4315 :       TraceLineS( pchInfo, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	mov	edx, DWORD PTR _pchInfo$[ebp]
	push	edx
	call	_TraceLineS@8
$L58055:

; 4316 : 
; 4317 :    MessageSend( lpView, "KZH0101", DBHANDLER_NAME " DBH Error",
; 4318 :                 pchErrorMsg,
; 4319 :                 zMSGQ_SYSTEM_ERROR, 0 );

	push	0
	push	1000					; 000003e8H
	mov	eax, DWORD PTR _pchErrorMsg$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BD@FDAG@KZHSQLXX?5DBH?5Error?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_07DOHJ@KZH0101?$AA@	; `string'
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_MessageSend@24

; 4320 : 
; 4321 : }  /* DBH_Error */

	pop	ebp
	ret	0
_DBH_Error ENDP
_TEXT	ENDS
PUBLIC	??_C@_0O@LCKO@Dummy?5Call?5?3?5?$AA@		; `string'
PUBLIC	??_C@_0O@DDFB@Return?5Code?5?3?$AA@		; `string'
;	COMDAT ??_C@_0O@LCKO@Dummy?5Call?5?3?5?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0O@LCKO@Dummy?5Call?5?3?5?$AA@ DB 'Dummy Call : ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@DDFB@Return?5Code?5?3?$AA@
_DATA	SEGMENT
??_C@_0O@DDFB@Return?5Code?5?3?$AA@ DB 'Return Code :', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_pchRoutine$ = 8
_nRC$ = 12
_lpConnection$ = 16
_DisplayCommand PROC NEAR

; 4453 : {

	push	ebp
	mov	ebp, esp

; 4454 :    if ( lpConnection->nTraceLevel == 0 && nRC == 0 )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+214]
	test	ecx, ecx
	jne	SHORT $L58065
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jne	SHORT $L58065

; 4455 :       return;

	jmp	$L58070
$L58065:

; 4456 : 
; 4457 :    if ( lpConnection->bMultipleDatabases )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+760]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L58066

; 4459 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 4460 :       TraceLineS( "Database name = ",
; 4461 :        lpConnection->DBConnection[ lpConnection->nCurrentDB ].szDatabaseName );

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+218]
	imul	eax, 54					; 00000036H
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	lea	edx, DWORD PTR [ecx+eax+220]
	push	edx
	push	OFFSET FLAT:??_C@_0BB@JILM@Database?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L58066:

; 4463 : 
; 4464 :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 4465 : 
; 4466 :    if ( lpConnection->nTraceLevel > 1 )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+214]
	cmp	ecx, 1
	jle	SHORT $L58067

; 4468 :       TraceLineS( "Dummy Call : ", pchRoutine );

	mov	edx, DWORD PTR _pchRoutine$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0O@LCKO@Dummy?5Call?5?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 4469 :       SqlDisplayCommand( lpConnection->pchConnSqlCmd, 0 );

	push	0
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+194]
	push	ecx
	call	_SqlDisplayCommand@8

; 4470 :       TraceLineI( "Return Code :", nRC );

	movsx	edx, WORD PTR _nRC$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0O@DDFB@Return?5Code?5?3?$AA@ ; `string'
	call	_TraceLineI@8

; 4472 :    else

	jmp	SHORT $L58070
$L58067:

; 4473 :       SqlDisplayCommand( lpConnection->pchConnSqlCmd, 0 );

	push	0
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+194]
	push	ecx
	call	_SqlDisplayCommand@8
$L58070:

; 4474 : 
; 4475 : }  /* DisplayCommand */

	pop	ebp
	ret	0
_DisplayCommand ENDP
_TEXT	ENDS
PUBLIC	_fnOpenDatabaseConnection@16
PUBLIC	??_C@_0CH@EANP@Too?5many?5open?5databases?5for?51?5se@ ; `string'
EXTRN	_SysGetDB_UserID@12:NEAR
EXTRN	_strcpy:NEAR
EXTRN	__imp___stricmp:NEAR
;	COMDAT ??_C@_0CH@EANP@Too?5many?5open?5databases?5for?51?5se@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0CH@EANP@Too?5many?5open?5databases?5for?51?5se@ DB 'Too many open '
	DB	'databases for 1 session.', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpViewOD$ = 12
_lpViewEntity$ = 16
_lpConnection$ = 20
_szUserID$ = -60
_szPassword$ = -116
_lpDBName$ = -120
_pchPtr$ = -4
_k$ = -64
_nRC$ = -8
_fnOpenDatabaseConnection@16 PROC NEAR

; 4564 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 120				; 00000078H

; 4565 :    zCHAR  szUserID[ 50 ];
; 4566 :    zCHAR  szPassword[ 50 ];
; 4567 :    zPCHAR lpDBName;
; 4568 :    zPCHAR pchPtr = 0;

	mov	DWORD PTR _pchPtr$[ebp], 0

; 4569 :    zSHORT k;
; 4570 :    zSHORT nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 4571 : 
; 4572 : #if defined( DB2 ) || defined( ODBC )
; 4573 : 
; 4574 :    if ( lpConnection->henv == 0 )
; 4575 :    {
; 4576 :       nRC = SQLAllocEnv( &lpConnection->henv );
; 4577 :       SQL_RC( "SQLAllocEnv", nRC, 0, 0, 2 );
; 4578 :       if ( nRC != SQL_SUCCESS )
; 4579 :          return( zCALL_ERROR );
; 4580 :    }
; 4581 : 
; 4582 : #elif defined( ODBC )
; 4583 : 
; 4584 :    if ( lpConnection->henv == 0 )
; 4585 :    {
; 4586 :       nRC = SQLAllocHandle( SQL_HANDLE_ENV, SQL_NULL_HANDLE,
; 4587 :                             &lpConnection->henv );
; 4588 :       SQL_RC( "SQLAllocHandle", nRC, 0, 0, 2 );
; 4589 :       if ( nRC != SQL_SUCCESS )
; 4590 :          return( zCALL_ERROR );
; 4591 :    }
; 4592 : 
; 4593 : #endif
; 4594 : 
; 4595 :    if ( lpViewOD == 0 && lpViewEntity == 0 )

	cmp	DWORD PTR _lpViewOD$[ebp], 0
	jne	SHORT $L58086
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L58086

; 4596 :       return( 0 );

	xor	ax, ax
	jmp	$L58079
$L58086:

; 4597 : 
; 4598 :    // Get the database name.
; 4599 :    if ( lpViewEntity && lpViewEntity->szDBName[ 0 ] )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	SHORT $L58087
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, BYTE PTR [eax+80]
	test	ecx, ecx
	je	SHORT $L58087

; 4600 :       lpDBName = lpViewEntity->szDBName;

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 80					; 00000050H
	mov	DWORD PTR _lpDBName$[ebp], edx

; 4601 :    else

	jmp	SHORT $L58088
$L58087:

; 4602 :       lpDBName = lpViewOD->szDfltDBName;

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	add	eax, 43					; 0000002bH
	mov	DWORD PTR _lpDBName$[ebp], eax
$L58088:

; 4603 : 
; 4604 :    // Loop through all the open database names, looking for one that
; 4605 :    // matches the database we're supposed to use.  If we find one, set
; 4606 :    // the current hSqlCsr to the cursor of the database.
; 4607 :    for ( k = 0; k < lpConnection->nOpenDatabaseCount; k++ )

	mov	WORD PTR _k$[ebp], 0
	jmp	SHORT $L58089
$L58090:
	mov	cx, WORD PTR _k$[ebp]
	add	cx, 1
	mov	WORD PTR _k$[ebp], cx
$L58089:
	movsx	edx, WORD PTR _k$[ebp]
	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+216]
	cmp	edx, ecx
	jge	SHORT $L58091

; 4609 :       if ( zstrcmpi( lpConnection->DBConnection[ k ].szDatabaseName,
; 4610 :                      lpDBName ) == 0 )

	mov	edx, DWORD PTR _lpDBName$[ebp]
	push	edx
	movsx	eax, WORD PTR _k$[ebp]
	imul	eax, 54					; 00000036H
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	lea	edx, DWORD PTR [ecx+eax+220]
	push	edx
	call	DWORD PTR __imp___stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L58092

; 4612 :          //==============================================================
; 4613 :          // Copy opened DB information to 'common' information.
; 4614 :          //==============================================================
; 4615 : 
; 4616 : #if defined( DB2 ) || defined( ODBC )
; 4617 : 
; 4618 :          lpConnection->hdbc = lpConnection->DBConnection[ k ].hdbc;
; 4619 : 
; 4620 : #endif
; 4621 :          break;

	jmp	SHORT $L58091
$L58092:

; 4623 :    }

	jmp	SHORT $L58090
$L58091:

; 4624 : 
; 4625 :    lpConnection->nCurrentDB = k;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	cx, WORD PTR _k$[ebp]
	mov	WORD PTR [eax+218], cx

; 4626 :    if ( k >= lpConnection->nOpenDatabaseCount ||
; 4627 :         lpConnection->DBConnection[ k ].bValidConnection == FALSE )

	movsx	edx, WORD PTR _k$[ebp]
	mov	eax, DWORD PTR _lpConnection$[ebp]
	movsx	ecx, WORD PTR [eax+216]
	cmp	edx, ecx
	jge	SHORT $L58094
	movsx	edx, WORD PTR _k$[ebp]
	imul	edx, 54					; 00000036H
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+edx+270]
	and	ecx, 1
	test	ecx, ecx
	jne	$L58093
$L58094:

; 4629 :       if ( k >= MAX_OPEN_DATABASES )

	movsx	edx, WORD PTR _k$[ebp]
	cmp	edx, 10					; 0000000aH
	jl	SHORT $L58095

; 4631 :          DBH_Error( lpView, "Too many open databases for 1 session.", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_0CH@EANP@Too?5many?5open?5databases?5for?51?5se@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_DBH_Error
	add	esp, 16					; 00000010H

; 4632 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L58079
$L58095:

; 4634 : 
; 4635 :       // If k >= DBCount, then we need to open a new database.
; 4636 :       // Otherwise we will try to re-open a database that failed earlier.
; 4637 :       if ( k >= lpConnection->nOpenDatabaseCount )

	movsx	ecx, WORD PTR _k$[ebp]
	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+216]
	cmp	ecx, eax
	jl	SHORT $L58097

; 4639 :          lpConnection->nOpenDatabaseCount++;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	dx, WORD PTR [ecx+216]
	add	dx, 1
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	WORD PTR [eax+216], dx

; 4640 :          zstrcpy( lpConnection->DBConnection[ k ].szDatabaseName,
; 4641 :                   lpDBName );

	mov	ecx, DWORD PTR _lpDBName$[ebp]
	push	ecx
	movsx	edx, WORD PTR _k$[ebp]
	imul	edx, 54					; 00000036H
	mov	eax, DWORD PTR _lpConnection$[ebp]
	lea	ecx, DWORD PTR [eax+edx+220]
	push	ecx
	call	_strcpy
	add	esp, 8
$L58097:

; 4643 : 
; 4644 :       SysGetDB_UserID( lpView, szUserID, szPassword );

	lea	edx, DWORD PTR _szPassword$[ebp]
	push	edx
	lea	eax, DWORD PTR _szUserID$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SysGetDB_UserID@12

; 4645 : 
; 4646 :       //==============================================================
; 4647 :       // Open database.
; 4648 :       //==============================================================
; 4649 : 
; 4650 : #if defined( DB2 ) || defined( ODBC )
; 4651 : 
; 4652 :       nRC = SQLAllocConnect( lpConnection->henv, &lpConnection->hdbc );
; 4653 :       SQL_RC( "SQLAllocConnect", nRC, 0, 0, 2 );
; 4654 :       if ( nRC != SQL_SUCCESS )
; 4655 :          return( zCALL_ERROR );
; 4656 : 
; 4657 :       nRC = SQLConnect( lpConnection->hdbc, lpDBName, SQL_NTS,
; 4658 :                         szUserID, SQL_NTS, szPassword, SQL_NTS );
; 4659 :       SQL_RC( "SQLConnect", nRC, "Database = ", lpDBName, 1 );
; 4660 :       if ( !RC_SUCCESSFUL( nRC ) )
; 4661 :       {
; 4662 :          zCHAR szText[ 200 ];
; 4663 : 
; 4664 :          zsprintf( szText, "Error connecting to DB %s", lpDBName );
; 4665 :          MessageSend( lpConnection->lpAppView, "KZH0102", "ODBC DBH Error",
; 4666 :                       szText, zMSGQ_SYSTEM_ERROR, 0 );
; 4667 : 
; 4668 :          SQLFreeHandle( SQL_HANDLE_DBC, (SQLHANDLE) lpConnection->hdbc );
; 4669 :          lpConnection->hdbc = 0;
; 4670 :          return( zCALL_ERROR );
; 4671 :       }
; 4672 : 
; 4673 : #if defined( ODBC )
; 4674 :       nRC = SQLSetConnectAttr( lpConnection->hdbc, SQL_ATTR_AUTOCOMMIT,
; 4675 :                                SQL_AUTOCOMMIT_OFF, 0 );
; 4676 :       SQL_RC( "SQLSetConnectAttr", nRC, "Turning AutoCommit off", 0, 2 );
; 4677 : #endif
; 4678 : 
; 4679 :       lpConnection->DBConnection[ k ].hdbc = lpConnection->hdbc;
; 4680 : 
; 4681 : #endif
; 4682 : 
; 4683 :       lpConnection->DBConnection[ k ].bValidConnection = TRUE;

	movsx	edx, WORD PTR _k$[ebp]
	imul	edx, 54					; 00000036H
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+edx+270]
	or	ecx, 1
	movsx	edx, WORD PTR _k$[ebp]
	imul	edx, 54					; 00000036H
	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [eax+edx+270], ecx
$L58093:

; 4686 : 
; 4687 : #if defined( DB2 )
; 4688 : 
; 4689 :    if ( lpConnection->hGeneralStmt == 0 )
; 4690 :    {
; 4691 :       nRC = SQLAllocStmt( lpConnection->hdbc, &lpConnection->hGeneralStmt );
; 4692 :       SQL_RC( "SQLAllocStmt", nRC, "Allocate HSTMT", 0, 2 );
; 4693 :       if ( nRC != SQL_SUCCESS )
; 4694 :          return( zCALL_ERROR );
; 4695 :    }
; 4696 : 
; 4697 : #elif defined( ODBC )
; 4698 : 
; 4699 :    if ( lpConnection->hGeneralStmt == 0 )
; 4700 :    {
; 4701 :       nRC = SQLAllocHandle( SQL_HANDLE_STMT, lpConnection->hdbc,
; 4702 :                             &lpConnection->hGeneralStmt );
; 4703 :       SQL_RC( "SQLAllocHandle", nRC, "Allocate HSTMT", 0, 2 );
; 4704 :       if ( nRC != SQL_SUCCESS )
; 4705 :          return( zCALL_ERROR );
; 4706 :    }
; 4707 : 
; 4708 : #endif
; 4709 : 
; 4710 :    return( 0 );

	xor	ax, ax
$L58079:

; 4711 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_fnOpenDatabaseConnection@16 ENDP
_TEXT	ENDS
PUBLIC	_GetWorkObjectView
PUBLIC	??_C@_0DK@DCLD@GetWorkObjectView?5RESETTING?5task@ ; `string'
PUBLIC	??_C@_06KKHG@TaskID?$AA@			; `string'
PUBLIC	??_C@_0L@NIJE@Conn?5BEGIN?$AA@			; `string'
PUBLIC	??_C@_08ILLO@Conn?5END?$AA@			; `string'
PUBLIC	??_C@_0L@ODNC@TraceLevel?$AA@			; `string'
PUBLIC	??_C@_0L@HIKM@?$FLKZHSQLXX?$FN?$AA@		; `string'
EXTRN	_GetDefaultViewForActiveTask@0:NEAR
EXTRN	_SfCreateSubtask@12:NEAR
EXTRN	__imp__atol:NEAR
EXTRN	_GetTaskDBHandlerTraceLevel@4:NEAR
EXTRN	_SetAttributeFromInteger@16:NEAR
EXTRN	_SysReadZeidonIni@16:NEAR
EXTRN	_TraceLine:NEAR
EXTRN	_CreateViewFromViewForTask@12:NEAR
;	COMDAT ??_C@_0DK@DCLD@GetWorkObjectView?5RESETTING?5task@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0DK@DCLD@GetWorkObjectView?5RESETTING?5task@ DB 'GetWorkObjectView '
	DB	'RESETTING task from: 0x%08x  to: 0x%08x', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_06KKHG@TaskID?$AA@
_DATA	SEGMENT
??_C@_06KKHG@TaskID?$AA@ DB 'TaskID', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@NIJE@Conn?5BEGIN?$AA@
_DATA	SEGMENT
??_C@_0L@NIJE@Conn?5BEGIN?$AA@ DB 'Conn BEGIN', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08ILLO@Conn?5END?$AA@
_DATA	SEGMENT
??_C@_08ILLO@Conn?5END?$AA@ DB 'Conn END', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@ODNC@TraceLevel?$AA@
_DATA	SEGMENT
??_C@_0L@ODNC@TraceLevel?$AA@ DB 'TraceLevel', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@HIKM@?$FLKZHSQLXX?$FN?$AA@
_DATA	SEGMENT
??_C@_0L@HIKM@?$FLKZHSQLXX?$FN?$AA@ DB '[KZHSQLXX]', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hTask$ = 8
_lpView$ = 12
_lpViewOD$ = 16
_lpViewEntity$ = 20
_ppvWorkPtr$ = 24
_lppConnection$ = 28
_lpConnection$ = -12
_vDbhWork$ = -36
_szLogicalName$ = -236
_szStr$ = -32
_lProcessID$ = -4
_nRC$ = -8
_ConnRec$58119 = -1044
_nTraceLevel$58120 = -240
_v$58124 = -1048
_lTask$58125 = -1052
_szStr$58146 = -1072
_GetWorkObjectView PROC NEAR

; 4727 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 1072				; 00000430H

; 4728 :    LPCONNECTION     lpConnection;
; 4729 :    zVIEW            vDbhWork;
; 4730 :    zCHAR            szLogicalName[ 200 ];
; 4731 :    zCHAR            szStr[ 20 ];
; 4732 :    zLONG            lProcessID;
; 4733 :    zSHORT           nRC;
; 4734 : 
; 4735 :    // If vDbhWorkPTr points to a null pointer then we haven't yet initialized
; 4736 :    // the work pointer--so do it.
; 4737 :    if ( *ppvWorkPtr == 0 )

	mov	eax, DWORD PTR _ppvWorkPtr$[ebp]
	cmp	DWORD PTR [eax], 0
	jne	$L58118

; 4739 :       ConnectionRecord ConnRec;
; 4740 :       zSHORT           nTraceLevel = 0;

	mov	WORD PTR _nTraceLevel$58120[ebp], 0

; 4741 : 
; 4742 :       GetViewByName( &vDbhWork, zDBHANDLER_WORK_VIEW_NAME, lpView, zLEVEL_SYSTEM );

	push	8
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ ; `string'
	lea	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	call	_GetViewByName@16

; 4743 :       if ( vDbhWork == 0 )

	cmp	DWORD PTR _vDbhWork$[ebp], 0
	jne	SHORT $L58121

; 4745 :          DBH_Error( lpView, "Can't find DB-Handler work view.", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_0CB@LKIL@Can?8t?5find?5DB?9Handler?5work?5view?4@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_DBH_Error
	add	esp, 16					; 00000010H

; 4746 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L58111
$L58121:

; 4748 : 
; 4749 :       SysMutexLock( lpView, "Zeidon DBH", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_SysMutexLock@16

; 4750 : 
; 4751 :       CreateViewFromViewForTask( &vDbhWork, vDbhWork, lpView );

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _vDbhWork$[ebp]
	push	eax
	lea	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_CreateViewFromViewForTask@12

; 4752 : 
; 4753 :       szStr[ 0 ] = zSQL_type;

	mov	BYTE PTR _szStr$[ebp], 88		; 00000058H

; 4754 :       szStr[ 1 ] = 0;

	mov	BYTE PTR _szStr$[ebp+1], 0

; 4755 : 
; 4756 :       nRC = SetCursorFirstEntityByString( vDbhWork, "Type", "Type", szStr, 0 );

	push	0
	lea	edx, DWORD PTR _szStr$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	mov	eax, DWORD PTR _vDbhWork$[ebp]
	push	eax
	call	_SetCursorFirstEntityByString@20
	mov	WORD PTR _nRC$[ebp], ax

; 4757 :       if ( nRC != zCURSOR_SET )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L58122

; 4759 :          CreateEntity( vDbhWork, "Type", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	mov	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	call	_CreateEntity@12

; 4760 :          SetAttributeFromString( vDbhWork, "Type", "Type", szStr );

	lea	eax, DWORD PTR _szStr$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04FCOP@Type?$AA@	; `string'
	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_SetAttributeFromString@16
$L58122:

; 4765 :          zVIEW v = GetDefaultViewForActiveTask( );

	call	_GetDefaultViewForActiveTask@0
	mov	DWORD PTR _v$58124[ebp], eax

; 4766 :          zLONG lTask;
; 4767 : 
; 4768 :          if ( v && (LPTASK) (lTask = SysGetTaskFromView( v )) != hTask )

	cmp	DWORD PTR _v$58124[ebp], 0
	je	SHORT $L58127
	mov	edx, DWORD PTR _v$58124[ebp]
	push	edx
	call	_SysGetTaskFromView@4
	mov	DWORD PTR _lTask$58125[ebp], eax
	mov	eax, DWORD PTR _lTask$58125[ebp]
	cmp	eax, DWORD PTR _hTask$[ebp]
	je	SHORT $L58127

; 4770 :             TraceLine( "GetWorkObjectView RESETTING task from: 0x%08x  to: 0x%08x",
; 4771 :                        hTask, lTask );

	mov	ecx, DWORD PTR _lTask$58125[ebp]
	push	ecx
	mov	edx, DWORD PTR _hTask$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0DK@DCLD@GetWorkObjectView?5RESETTING?5task@ ; `string'
	call	_TraceLine
	add	esp, 12					; 0000000cH

; 4772 :             hTask = (LPTASK) lTask;

	mov	eax, DWORD PTR _lTask$58125[ebp]
	mov	DWORD PTR _hTask$[ebp], eax
$L58127:

; 4775 : #endif
; 4776 : 
; 4777 :       lProcessID = SysGetProcessID( 0 );

	push	0
	call	_SysGetProcessID@4
	mov	DWORD PTR _lProcessID$[ebp], eax

; 4778 :    // zltoa( (zLONG) hTask, szLogicalName );
; 4779 :       zsprintf( szLogicalName, "0x%08x:%08x", hTask, lProcessID );

	mov	ecx, DWORD PTR _lProcessID$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hTask$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0M@CMMN@0x?$CF08x?3?$CF08x?$AA@ ; `string'
	lea	eax, DWORD PTR _szLogicalName$[ebp]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 4780 : 
; 4781 :    // sprintf( szLogicalName, "0x%08x", SysGetTaskFromView( lpView ) );
; 4782 : 
; 4783 :       nRC = SetCursorFirstEntityByString( vDbhWork, "Connection",
; 4784 :                                           "LogicalUserName", szLogicalName, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	ecx, DWORD PTR _szLogicalName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BA@FMEM@LogicalUserName?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	call	_SetCursorFirstEntityByString@20
	mov	WORD PTR _nRC$[ebp], ax

; 4785 :       if ( nRC != zCURSOR_SET )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	$L58130

; 4787 :          CreateEntity( vDbhWork, "Connection", zPOS_AFTER );

	push	3
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_CreateEntity@12

; 4788 :          SetAttributeFromString( vDbhWork, "Connection",
; 4789 :                                  "LogicalUserName", szLogicalName );

	lea	edx, DWORD PTR _szLogicalName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BA@FMEM@LogicalUserName?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	eax, DWORD PTR _vDbhWork$[ebp]
	push	eax
	call	_SetAttributeFromString@16

; 4790 :       // TraceLineS( "GetWorkObjectView adding Connection =======================>",
; 4791 :       //             szLogicalName );   // dks debug
; 4792 :          SetAttributeFromInteger( vDbhWork, "Connection",
; 4793 :                                   "TaskID", (zLONG) hTask );

	mov	ecx, DWORD PTR _hTask$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_06KKHG@TaskID?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	call	_SetAttributeFromInteger@16

; 4794 : 
; 4795 :          zmemset( (zPVOID) &ConnRec, 0, sizeof( ConnRec ) );

	push	804					; 00000324H
	push	0
	lea	eax, DWORD PTR _ConnRec$58119[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 4796 : #ifdef DEBUG
; 4797 :          zstrcpy( ConnRec.szDebug1, "Conn BEGIN" );

	push	OFFSET FLAT:??_C@_0L@NIJE@Conn?5BEGIN?$AA@ ; `string'
	lea	ecx, DWORD PTR _ConnRec$58119[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 4798 :          zstrcpy( ConnRec.szDebug2, "Conn END" );

	push	OFFSET FLAT:??_C@_08ILLO@Conn?5END?$AA@	; `string'
	lea	edx, DWORD PTR _ConnRec$58119[ebp+784]
	push	edx
	call	_strcpy
	add	esp, 8

; 4799 : #endif
; 4800 : 
; 4801 :          SetAttributeFromBlob( vDbhWork, "Connection", "ConnectionBlob",
; 4802 :                                (zPVOID) &ConnRec, sizeof( ConnectionRecord ) );

	push	804					; 00000324H
	lea	eax, DWORD PTR _ConnRec$58119[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0P@FLKG@ConnectionBlob?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_SetAttributeFromBlob@20

; 4803 : 
; 4804 :          GetAddrForAttribute( (zPVOID) lppConnection, vDbhWork,
; 4805 :                               "Connection", "ConnectionBlob" );

	push	OFFSET FLAT:??_C@_0P@FLKG@ConnectionBlob?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	mov	eax, DWORD PTR _lppConnection$[ebp]
	push	eax
	call	_GetAddrForAttribute@16

; 4806 : 
; 4807 :          lpConnection = *lppConnection;

	mov	ecx, DWORD PTR _lppConnection$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lpConnection$[ebp], edx

; 4808 :          lpConnection->vDbhWork = vDbhWork;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	mov	DWORD PTR [eax+24], ecx

; 4809 : 
; 4810 :          // Allocate space for SQL commands and the column buffer.
; 4811 :          fnAllocateConnectionMemory( lpView, *lppConnection, TRUE, MAX_SQLCMD_LENGTH );

	push	105000					; 00019a28H
	push	1
	mov	edx, DWORD PTR _lppConnection$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnAllocateConnectionMemory@16

; 4812 :          if ( lpConnection->hCmdMem == 0 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	cmp	DWORD PTR [edx+198], 0
	jne	SHORT $L58140

; 4814 :             SysMutexUnlock( lpView, "Zeidon DBH", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysMutexUnlock@12

; 4815 :             DropView( vDbhWork );

	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_DropView@4

; 4816 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L58111
$L58140:

; 4818 : 
; 4819 :          fnAllocateConnectionMemory( lpView, *lppConnection, FALSE, TABLE_BUFFER_LTH );

	push	32000					; 00007d00H
	push	0
	mov	edx, DWORD PTR _lppConnection$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_fnAllocateConnectionMemory@16

; 4820 :          if ( lpConnection->hTblMem == 0 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	cmp	DWORD PTR [edx+210], 0
	jne	SHORT $L58141

; 4822 :             SysMutexUnlock( lpView, "Zeidon DBH", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysMutexUnlock@12

; 4823 : 
; 4824 :             // Free connection memory (last parm zero).
; 4825 :             fnAllocateConnectionMemory( lpView, *lppConnection, TRUE, 0 );

	push	0
	push	1
	mov	ecx, DWORD PTR _lppConnection$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnAllocateConnectionMemory@16

; 4826 :             DropView( vDbhWork );

	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_DropView@4

; 4827 :             return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L58111
$L58141:

; 4831 :       else

	jmp	SHORT $L58142
$L58130:

; 4833 :          GetAddrForAttribute( (zPVOID) lppConnection, vDbhWork,
; 4834 :                               "Connection", "ConnectionBlob" );

	push	OFFSET FLAT:??_C@_0P@FLKG@ConnectionBlob?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0L@MDFJ@Connection?$AA@ ; `string'
	mov	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	mov	eax, DWORD PTR _lppConnection$[ebp]
	push	eax
	call	_GetAddrForAttribute@16

; 4835 :          lpConnection = *lppConnection;

	mov	ecx, DWORD PTR _lppConnection$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lpConnection$[ebp], edx

; 4836 :          lpConnection->vDbhWork = vDbhWork;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR _vDbhWork$[ebp]
	mov	DWORD PTR [eax+24], ecx
$L58142:

; 4838 : 
; 4839 :       if ( lpView )

	cmp	DWORD PTR _lpView$[ebp], 0
	je	SHORT $L58144

; 4840 :          nTraceLevel = GetTaskDBHandlerTraceLevel( lpView );

	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_GetTaskDBHandlerTraceLevel@4
	mov	WORD PTR _nTraceLevel$58120[ebp], ax
$L58144:

; 4841 : 
; 4842 :       if ( nTraceLevel == 0 )

	movsx	eax, WORD PTR _nTraceLevel$58120[ebp]
	test	eax, eax
	jne	SHORT $L58149

; 4844 :          zCHAR  szStr[ 20 ];
; 4845 : 
; 4846 :          // Get the default trace level from the INI file.
; 4847 :          SysReadZeidonIni( -1, "[" DBHANDLER_NAME "]", "TraceLevel", szStr );

	lea	ecx, DWORD PTR _szStr$58146[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0L@ODNC@TraceLevel?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0L@HIKM@?$FLKZHSQLXX?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 4848 :          if ( szStr[ 0 ] )

	movsx	edx, BYTE PTR _szStr$58146[ebp]
	test	edx, edx
	je	SHORT $L58149

; 4849 :             nTraceLevel = (zSHORT) zatol( szStr );

	lea	eax, DWORD PTR _szStr$58146[ebp]
	push	eax
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	WORD PTR _nTraceLevel$58120[ebp], ax
$L58149:

; 4851 : 
; 4852 :       lpConnection->nTraceLevel = nTraceLevel;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	dx, WORD PTR _nTraceLevel$58120[ebp]
	mov	WORD PTR [ecx+214], dx

; 4853 : 
; 4854 :       *ppvWorkPtr = (zPVOID) *lppConnection;

	mov	eax, DWORD PTR _ppvWorkPtr$[ebp]
	mov	ecx, DWORD PTR _lppConnection$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax], edx

; 4855 : 
; 4856 :       // Create a subtask view so we can reference the application.
; 4857 :       if ( lpConnection->lpAppView == 0 )

	mov	eax, DWORD PTR _lpConnection$[ebp]
	cmp	DWORD PTR [eax+20], 0
	jne	SHORT $L58152

; 4858 :          SfCreateSubtask( &lpConnection->lpAppView, lpView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpConnection$[ebp]
	add	edx, 20					; 00000014H
	push	edx
	call	_SfCreateSubtask@12
$L58152:

; 4859 : 
; 4860 :       SysMutexUnlock( lpView, "Zeidon DBH", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@PDLM@Zeidon?5DBH?$AA@ ; `string'
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysMutexUnlock@12

; 4863 :    else

	jmp	SHORT $L58153
$L58118:

; 4865 :       *lppConnection = (LPCONNECTION) *ppvWorkPtr;

	mov	ecx, DWORD PTR _lppConnection$[ebp]
	mov	edx, DWORD PTR _ppvWorkPtr$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR [ecx], eax

; 4866 :       lpConnection = *lppConnection;

	mov	ecx, DWORD PTR _lppConnection$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lpConnection$[ebp], edx
$L58153:

; 4868 : 
; 4869 : #if defined ( DB2 )
; 4870 : {
; 4871 :    LPOD_LIST lpOD = fnFindOD( lpViewOD, lpConnection );
; 4872 : 
; 4873 :    if ( lpOD == 0 )
; 4874 :       lpOD = fnAddOD( lpViewOD, lpConnection );
; 4875 : }
; 4876 : #endif
; 4877 : 
; 4878 :    nRC = fnOpenDatabaseConnection( lpView, lpViewOD,
; 4879 :                                    lpViewEntity, lpConnection );

	mov	eax, DWORD PTR _lpConnection$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewOD$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnOpenDatabaseConnection@16
	mov	WORD PTR _nRC$[ebp], ax

; 4880 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L58111:

; 4881 : 
; 4882 : }  /* GetWorkObjectView */

	mov	esp, ebp
	pop	ebp
	ret	0
_GetWorkObjectView ENDP
_WriteLongChar PROC NEAR

; 5215 : {

	push	ebp
	mov	ebp, esp

; 5216 :    return( 0 );

	xor	ax, ax

; 5217 : }

	pop	ebp
	ret	0
_WriteLongChar ENDP
_TEXT	ENDS
PUBLIC	??_C@_06OMJI@__MSGQ?$AA@			; `string'
PUBLIC	??_C@_09IMGK@DBH_Error?$AA@			; `string'
PUBLIC	??_C@_02FECH@Id?$AA@				; `string'
PUBLIC	??_C@_04HDAF@Task?$AA@				; `string'
EXTRN	_SetCursorFirstEntityByInteger@20:NEAR
EXTRN	_MiGetViewEntityForView@8:NEAR
;	COMDAT ??_C@_06OMJI@__MSGQ?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_06OMJI@__MSGQ?$AA@ DB '__MSGQ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_09IMGK@DBH_Error?$AA@
_DATA	SEGMENT
??_C@_09IMGK@DBH_Error?$AA@ DB 'DBH_Error', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_02FECH@Id?$AA@
_DATA	SEGMENT
??_C@_02FECH@Id?$AA@ DB 'Id', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_04HDAF@Task?$AA@
_DATA	SEGMENT
??_C@_04HDAF@Task?$AA@ DB 'Task', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpViewOD$ = -4
_lpViewEntity$ = -12
_vMsgQNamed$ = -16
_vMsgQ$ = -24
_lTask$ = -20
_nRC$ = -8
_fnClearDBHandlerError@4 PROC NEAR

; 5238 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 5239 :    LPVIEWOD     lpViewOD;
; 5240 :    LPVIEWENTITY lpViewEntity;
; 5241 :    zVIEW        vMsgQNamed;
; 5242 :    zVIEW        vMsgQ;
; 5243 :    zLONG        lTask;
; 5244 :    zSHORT       nRC;
; 5245 : 
; 5246 :    lTask = SysGetTaskFromView( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysGetTaskFromView@4
	mov	DWORD PTR _lTask$[ebp], eax

; 5247 : 
; 5248 :    // Does Named View exist?
; 5249 :    GetViewByName( &vMsgQNamed, "__MSGQ", lpView, zLEVEL_TASK );

	push	2
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_06OMJI@__MSGQ?$AA@	; `string'
	lea	edx, DWORD PTR _vMsgQNamed$[ebp]
	push	edx
	call	_GetViewByName@16

; 5250 :    if ( vMsgQNamed == 0 )

	cmp	DWORD PTR _vMsgQNamed$[ebp], 0
	jne	SHORT $L58170

; 5251 :       return( 0 );    // nothing need to be done

	xor	ax, ax
	jmp	$L58162
$L58170:

; 5252 : 
; 5253 :    // Has Named View the entity DBH_Error in its definition?
; 5254 :    lpViewOD = (LPVIEWOD) MiGetViewEntityForView( vMsgQNamed, 0 );

	push	0
	mov	eax, DWORD PTR _vMsgQNamed$[ebp]
	push	eax
	call	_MiGetViewEntityForView@8
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 5255 :    for ( lpViewEntity = zGETPTR( lpViewOD->hFirstOD_Entity );
; 5256 :          lpViewEntity;
; 5257 :          lpViewEntity = zGETPTR( lpViewEntity->hNextHier ) )

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	mov	edx, DWORD PTR [ecx+224]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	jmp	SHORT $L58172
$L58173:
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewEntity$[ebp], eax
$L58172:
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	SHORT $L58174

; 5259 :       // Is the entity the DBH_Error?
; 5260 :       if ( zstrcmp( lpViewEntity->szName, "DBH_Error" ) == 0 )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, BYTE PTR [edx+14]
	movsx	ecx, BYTE PTR ??_C@_09IMGK@DBH_Error?$AA@
	cmp	eax, ecx
	jne	SHORT $L58540
	push	OFFSET FLAT:??_C@_09IMGK@DBH_Error?$AA@	; `string'
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -28+[ebp], eax
	jmp	SHORT $L58541
$L58540:
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, BYTE PTR [eax+14]
	movsx	edx, BYTE PTR ??_C@_09IMGK@DBH_Error?$AA@
	sub	ecx, edx
	xor	eax, eax
	test	ecx, ecx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -28+[ebp], eax
$L58541:
	cmp	DWORD PTR -28+[ebp], 0
	jne	SHORT $L58181

; 5261 :         break;

	jmp	SHORT $L58174
$L58181:

; 5262 :    }

	jmp	SHORT $L58173
$L58174:

; 5263 : 
; 5264 :    // If DBH_Error not exist, we have an old KZMSGQOO.
; 5265 :    if ( lpViewEntity == 0 )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L58183

; 5266 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L58162
$L58183:

; 5267 : 
; 5268 :    CreateViewFromViewForTask( &vMsgQ, vMsgQNamed, 0 );

	push	0
	mov	ecx, DWORD PTR _vMsgQNamed$[ebp]
	push	ecx
	lea	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12

; 5269 : 
; 5270 :    // Determine if task entity instance exists for our task.
; 5271 :    nRC = SetCursorFirstEntityByInteger( vMsgQ, "Task", "Id", lTask, 0 );

	push	0
	mov	eax, DWORD PTR _lTask$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_02FECH@Id?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04HDAF@Task?$AA@	; `string'
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_SetCursorFirstEntityByInteger@20
	mov	WORD PTR _nRC$[ebp], ax

; 5272 :    if ( nRC < 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jge	SHORT $L58186

; 5274 :       // Clean up view ... nothing needs to be done.
; 5275 :       DropView( vMsgQ );

	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_DropView@4

; 5276 :       return( 0 );

	xor	ax, ax
	jmp	SHORT $L58162
$L58186:

; 5278 : 
; 5279 :    // Delete all former error codes from earlier call.
; 5280 :    for ( nRC = SetCursorFirstEntity( vMsgQ, "DBH_Error", 0 );
; 5281 :          nRC >= zCURSOR_SET;
; 5282 :          nRC = DeleteEntity( vMsgQ, "DBH_Error", zREPOS_NEXT ) )

	push	0
	push	OFFSET FLAT:??_C@_09IMGK@DBH_Error?$AA@	; `string'
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_SetCursorFirstEntity@12
	mov	WORD PTR _nRC$[ebp], ax
	jmp	SHORT $L58187
$L58188:
	push	3
	push	OFFSET FLAT:??_C@_09IMGK@DBH_Error?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_DeleteEntity@12
	mov	WORD PTR _nRC$[ebp], ax
$L58187:
	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jl	SHORT $L58189

; 5284 :       // Nothing needs to be done here.
; 5285 :    }

	jmp	SHORT $L58188
$L58189:

; 5286 : 
; 5287 :    DropView( vMsgQ );

	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_DropView@4

; 5288 : 
; 5289 :    return( 0 );

	xor	ax, ax
$L58162:

; 5290 : 
; 5291 : } /* fnClearDBHandlerError */

	mov	esp, ebp
	pop	ebp
	ret	4
_fnClearDBHandlerError@4 ENDP
_TEXT	ENDS
PUBLIC	_fnSetDBHandlerError@16
PUBLIC	??_C@_08JIIE@KZMSGQOO?$AA@			; `string'
PUBLIC	??_C@_06BADI@Zeidon?$AA@			; `string'
PUBLIC	??_C@_06DPMO@Client?$AA@			; `string'
PUBLIC	??_C@_04GO@Code?$AA@				; `string'
PUBLIC	??_C@_05PILG@State?$AA@				; `string'
PUBLIC	??_C@_03IDDH@Msg?$AA@				; `string'
EXTRN	_SetNameForView@16:NEAR
EXTRN	_CountEntitiesForView@8:NEAR
EXTRN	_ActivateEmptyObjectInstance@16:NEAR
EXTRN	_SetAttributeFromVariable@32:NEAR
;	COMDAT ??_C@_08JIIE@KZMSGQOO?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_08JIIE@KZMSGQOO?$AA@ DB 'KZMSGQOO', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_06BADI@Zeidon?$AA@
_DATA	SEGMENT
??_C@_06BADI@Zeidon?$AA@ DB 'Zeidon', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_06DPMO@Client?$AA@
_DATA	SEGMENT
??_C@_06DPMO@Client?$AA@ DB 'Client', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_04GO@Code?$AA@
_DATA	SEGMENT
??_C@_04GO@Code?$AA@ DB 'Code', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_05PILG@State?$AA@
_DATA	SEGMENT
??_C@_05PILG@State?$AA@ DB 'State', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_03IDDH@Msg?$AA@
_DATA	SEGMENT
??_C@_03IDDH@Msg?$AA@ DB 'Msg', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lCode$ = 12
_szState$ = 16
_szMsg$ = 20
_lpViewOD$ = -4
_lpViewEntity$ = -12
_vMsgQNamed$ = -16
_vMsgQ$ = -24
_lTask$ = -20
_nRC$ = -8
_fnSetDBHandlerError@16 PROC NEAR

; 5313 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 5314 :    LPVIEWOD     lpViewOD;
; 5315 :    LPVIEWENTITY lpViewEntity;
; 5316 :    zVIEW        vMsgQNamed;
; 5317 :    zVIEW        vMsgQ;
; 5318 :    zLONG        lTask;
; 5319 :    zSHORT       nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H

; 5320 : 
; 5321 :    lTask = SysGetTaskFromView( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_SysGetTaskFromView@4
	mov	DWORD PTR _lTask$[ebp], eax

; 5322 : 
; 5323 :    // Does Named View exist?
; 5324 :    GetViewByName( &vMsgQNamed, "__MSGQ", lpView, zLEVEL_TASK );

	push	2
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_06OMJI@__MSGQ?$AA@	; `string'
	lea	edx, DWORD PTR _vMsgQNamed$[ebp]
	push	edx
	call	_GetViewByName@16

; 5325 :    if ( vMsgQNamed == 0 )

	cmp	DWORD PTR _vMsgQNamed$[ebp], 0
	jne	SHORT $L58205

; 5327 :       // if not, create it
; 5328 :       if ( ActivateEmptyObjectInstance( &vMsgQNamed, "KZMSGQOO", lpView,
; 5329 :                                         zMULTIPLE ) >= 0 )

	push	256					; 00000100H
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_08JIIE@KZMSGQOO?$AA@	; `string'
	lea	ecx, DWORD PTR _vMsgQNamed$[ebp]
	push	ecx
	call	_ActivateEmptyObjectInstance@16
	movsx	edx, ax
	test	edx, edx
	jl	SHORT $L58206

; 5331 :          CreateEntity( vMsgQNamed, "Task", zPOS_FIRST );

	push	1
	push	OFFSET FLAT:??_C@_04HDAF@Task?$AA@	; `string'
	mov	eax, DWORD PTR _vMsgQNamed$[ebp]
	push	eax
	call	_CreateEntity@12

; 5333 :       else

	jmp	SHORT $L58209
$L58206:

; 5335 :          // ERROR out of here ... we will not go far without this object!!!
; 5336 :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L58198
$L58209:

; 5338 : 
; 5339 :       // Give it a global name
; 5340 :       SetNameForView( vMsgQNamed, "__MSGQ", lpView, zLEVEL_TASK );

	push	2
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_06OMJI@__MSGQ?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQNamed$[ebp]
	push	edx
	call	_SetNameForView@16
$L58205:

; 5342 : 
; 5343 :    // Has Named View the entity DBH_Error in its definition?
; 5344 :    lpViewOD = (LPVIEWOD) MiGetViewEntityForView( vMsgQNamed, 0 );

	push	0
	mov	eax, DWORD PTR _vMsgQNamed$[ebp]
	push	eax
	call	_MiGetViewEntityForView@8
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 5345 :    for ( lpViewEntity = zGETPTR( lpViewOD->hFirstOD_Entity );
; 5346 :          lpViewEntity;
; 5347 :          lpViewEntity = zGETPTR( lpViewEntity->hNextHier ) )

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	mov	edx, DWORD PTR [ecx+224]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	jmp	SHORT $L58211
$L58212:
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewEntity$[ebp], eax
$L58211:
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	SHORT $L58213

; 5349 :       // is the entity the DBH_Error?
; 5350 :       if ( zstrcmp( lpViewEntity->szName, "DBH_Error" ) == 0 )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, BYTE PTR [edx+14]
	movsx	ecx, BYTE PTR ??_C@_09IMGK@DBH_Error?$AA@
	cmp	eax, ecx
	jne	SHORT $L58543
	push	OFFSET FLAT:??_C@_09IMGK@DBH_Error?$AA@	; `string'
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -28+[ebp], eax
	jmp	SHORT $L58544
$L58543:
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, BYTE PTR [eax+14]
	movsx	edx, BYTE PTR ??_C@_09IMGK@DBH_Error?$AA@
	sub	ecx, edx
	xor	eax, eax
	test	ecx, ecx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -28+[ebp], eax
$L58544:
	cmp	DWORD PTR -28+[ebp], 0
	jne	SHORT $L58220

; 5351 :          break;

	jmp	SHORT $L58213
$L58220:

; 5352 :    }

	jmp	SHORT $L58212
$L58213:

; 5353 : 
; 5354 :    // if DBH_Error not exist, we have an old KZMSGQOO
; 5355 :    if ( lpViewEntity == 0 )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L58221

; 5356 :      return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L58198
$L58221:

; 5357 : 
; 5358 :    // Create private copy, cause we change our cursors
; 5359 :    CreateViewFromViewForTask( &vMsgQ, vMsgQNamed, 0 );

	push	0
	mov	ecx, DWORD PTR _vMsgQNamed$[ebp]
	push	ecx
	lea	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12

; 5360 : 
; 5361 :    // check, if task entity instance exists for our task
; 5362 :    if ( SetCursorFirstEntityByInteger( vMsgQ, "Task", "Id", lTask, 0 ) < 0 )

	push	0
	mov	eax, DWORD PTR _lTask$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_02FECH@Id?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04HDAF@Task?$AA@	; `string'
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_SetCursorFirstEntityByInteger@20
	movsx	edx, ax
	test	edx, edx
	jge	SHORT $L58222

; 5364 :       // if not, create it
; 5365 :       CreateEntity( vMsgQ, "Task", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_04HDAF@Task?$AA@	; `string'
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_CreateEntity@12

; 5366 :       SetAttributeFromVariable( vMsgQ, "Task", "Id",
; 5367 :                                 &lTask, zTYPE_INTEGER, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	76					; 0000004cH
	lea	ecx, DWORD PTR _lTask$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_02FECH@Id?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04HDAF@Task?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetAttributeFromVariable@32

; 5368 :       SetAttributeFromVariable( vMsgQ, "Task", "Client",
; 5369 :                                 "Zeidon", zTYPE_STRING, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	83					; 00000053H
	push	OFFSET FLAT:??_C@_06BADI@Zeidon?$AA@	; `string'
	push	OFFSET FLAT:??_C@_06DPMO@Client?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04HDAF@Task?$AA@	; `string'
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_SetAttributeFromVariable@32
$L58222:

; 5371 : 
; 5372 :    // set cursor on our task entity
; 5373 :    if ( SetCursorFirstEntityByInteger( vMsgQ, "Task", "Id", lTask, 0 ) < 0 )

	push	0
	mov	ecx, DWORD PTR _lTask$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_02FECH@Id?$AA@	; `string'
	push	OFFSET FLAT:??_C@_04HDAF@Task?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetCursorFirstEntityByInteger@20
	movsx	eax, ax
	test	eax, eax
	jge	SHORT $L58226

; 5374 :       goto EndOfFunction;

	jmp	$EndOfFunction$58227
$L58226:

; 5375 : 
; 5376 :    // if max. entries reached, delete the oldest one
; 5377 :    if ( CountEntitiesForView( vMsgQ, "DBH_Error" ) >= 100L )

	push	OFFSET FLAT:??_C@_09IMGK@DBH_Error?$AA@	; `string'
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_CountEntitiesForView@8
	cmp	eax, 100				; 00000064H
	jl	SHORT $L58228

; 5379 :       SetCursorFirstEntity( vMsgQ, "DBH_Error", 0 );

	push	0
	push	OFFSET FLAT:??_C@_09IMGK@DBH_Error?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetCursorFirstEntity@12

; 5380 :       DeleteEntity( vMsgQ, "DBH_Error", zREPOS_FIRST );

	push	1
	push	OFFSET FLAT:??_C@_09IMGK@DBH_Error?$AA@	; `string'
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_DeleteEntity@12
$L58228:

; 5382 : 
; 5383 :    // create new entry
; 5384 :    if ( CreateEntity( vMsgQ, "DBH_Error", zPOS_LAST ) < 0 )

	push	2
	push	OFFSET FLAT:??_C@_09IMGK@DBH_Error?$AA@	; `string'
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_CreateEntity@12
	movsx	edx, ax
	test	edx, edx
	jge	SHORT $L58230

; 5385 :       goto EndOfFunction;

	jmp	SHORT $EndOfFunction$58227
$L58230:

; 5386 : 
; 5387 :    SetAttributeFromInteger( vMsgQ, "DBH_Error", "Code", lCode );

	mov	eax, DWORD PTR _lCode$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_04GO@Code?$AA@	; `string'
	push	OFFSET FLAT:??_C@_09IMGK@DBH_Error?$AA@	; `string'
	mov	ecx, DWORD PTR _vMsgQ$[ebp]
	push	ecx
	call	_SetAttributeFromInteger@16

; 5388 :    SetAttributeFromVariable( vMsgQ, "DBH_Error", "State",
; 5389 :                              szState, zTYPE_STRING, 5, 0, 0 );

	push	0
	push	0
	push	5
	push	83					; 00000053H
	mov	edx, DWORD PTR _szState$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_05PILG@State?$AA@	; `string'
	push	OFFSET FLAT:??_C@_09IMGK@DBH_Error?$AA@	; `string'
	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_SetAttributeFromVariable@32

; 5390 :    SetAttributeFromVariable( vMsgQ, "DBH_Error", "Msg",
; 5391 :                              szMsg, zTYPE_STRING, 512, 0, 0 );

	push	0
	push	0
	push	512					; 00000200H
	push	83					; 00000053H
	mov	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_03IDDH@Msg?$AA@	; `string'
	push	OFFSET FLAT:??_C@_09IMGK@DBH_Error?$AA@	; `string'
	mov	edx, DWORD PTR _vMsgQ$[ebp]
	push	edx
	call	_SetAttributeFromVariable@32

; 5392 : 
; 5393 :    // If we get here then everything's ok.
; 5394 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$EndOfFunction$58227:

; 5395 : 
; 5396 : EndOfFunction:
; 5397 :    if ( vMsgQ )

	cmp	DWORD PTR _vMsgQ$[ebp], 0
	je	SHORT $L58234

; 5398 :       DropView( vMsgQ );

	mov	eax, DWORD PTR _vMsgQ$[ebp]
	push	eax
	call	_DropView@4
$L58234:

; 5399 : 
; 5400 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L58198:

; 5401 : 
; 5402 : } /* fnSetDBHandlerError */

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_fnSetDBHandlerError@16 ENDP
_TEXT	ENDS
PUBLIC	_DBH_MsgProc@32
PUBLIC	??_C@_0BP@LFHP@Error?5performing?5Load?5for?5OD?3?5?$AA@ ; `string'
PUBLIC	??_C@_0CB@GPGO@Error?5performing?5Insert?5for?5OD?3?5@ ; `string'
PUBLIC	??_C@_0CE@LABG@Error?5performing?5InsertRel?5for?5O@ ; `string'
PUBLIC	??_C@_0CB@HHED@Error?5performing?5Delete?5for?5OD?3?5@ ; `string'
PUBLIC	??_C@_0CE@JBNJ@Error?5performing?5DeleteRel?5for?5O@ ; `string'
PUBLIC	??_C@_0CB@IHCB@Error?5performing?5Update?5for?5OD?3?5@ ; `string'
PUBLIC	??_C@_0BE@ICCD@Qualification?5View?3?$AA@	; `string'
PUBLIC	??_C@_0CC@LLKJ@?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9@ ; `string'
PUBLIC	??_C@_0BD@MMAH@Committing?5object?5?$AA@	; `string'
;	COMDAT ??_C@_0BP@LFHP@Error?5performing?5Load?5for?5OD?3?5?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_0BP@LFHP@Error?5performing?5Load?5for?5OD?3?5?$AA@ DB 'Error perfor'
	DB	'ming Load for OD: ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CB@GPGO@Error?5performing?5Insert?5for?5OD?3?5@
_DATA	SEGMENT
??_C@_0CB@GPGO@Error?5performing?5Insert?5for?5OD?3?5@ DB 'Error performi'
	DB	'ng Insert for OD: ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CE@LABG@Error?5performing?5InsertRel?5for?5O@
_DATA	SEGMENT
??_C@_0CE@LABG@Error?5performing?5InsertRel?5for?5O@ DB 'Error performing'
	DB	' InsertRel for OD: ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CB@HHED@Error?5performing?5Delete?5for?5OD?3?5@
_DATA	SEGMENT
??_C@_0CB@HHED@Error?5performing?5Delete?5for?5OD?3?5@ DB 'Error performi'
	DB	'ng Delete for OD: ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CE@JBNJ@Error?5performing?5DeleteRel?5for?5O@
_DATA	SEGMENT
??_C@_0CE@JBNJ@Error?5performing?5DeleteRel?5for?5O@ DB 'Error performing'
	DB	' DeleteRel for OD: ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CB@IHCB@Error?5performing?5Update?5for?5OD?3?5@
_DATA	SEGMENT
??_C@_0CB@IHCB@Error?5performing?5Update?5for?5OD?3?5@ DB 'Error performi'
	DB	'ng Update for OD: ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@ICCD@Qualification?5View?3?$AA@
_DATA	SEGMENT
??_C@_0BE@ICCD@Qualification?5View?3?$AA@ DB 'Qualification View:', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CC@LLKJ@?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9@
_DATA	SEGMENT
??_C@_0CC@LLKJ@?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9@ DB '-'
	DB	'--------------------------------', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@MMAH@Committing?5object?5?$AA@
_DATA	SEGMENT
??_C@_0BD@MMAH@Committing?5object?5?$AA@ DB 'Committing object ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hTask$ = 8
_Message$ = 12
_Indicators$ = 16
_lpViewOD$ = 20
_lpViewEntity$ = 24
_lpView$ = 28
_lpQualView$ = 32
_ppvWorkPtr$ = 36
_lpConnection$ = -8
_nRC$ = -4
_lpParent$58291 = -12
_DBH_MsgProc@32 PROC NEAR

; 5420 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 5421 :    LPCONNECTION lpConnection;
; 5422 :    zSHORT       nRC;
; 5423 : 
; 5424 :    // Execute a function according to the message passed.
; 5425 : // TraceLineX( "DBH_MsgProc Message: ", Message );
; 5426 :    if ( Message & DBH_Entity )

	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	and	eax, 32768				; 00008000H
	test	eax, eax
	je	$L58255

; 5428 : 
; 5429 : #if Timer
; 5430 :       lEntityMessageCount++;
; 5431 : #endif
; 5432 : 
; 5433 :       nRC = GetWorkObjectView( hTask, lpView, lpViewOD, lpViewEntity,
; 5434 :                                ppvWorkPtr, &lpConnection );

	lea	ecx, DWORD PTR _lpConnection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ppvWorkPtr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _hTask$[ebp]
	push	eax
	call	_GetWorkObjectView
	add	esp, 24					; 00000018H
	mov	WORD PTR _nRC$[ebp], ax

; 5435 :       if ( nRC == zCALL_ERROR )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -16				; fffffff0H
	jne	SHORT $L58256

; 5436 :          goto EndOfFunction;

	jmp	$EndOfFunction$58257
$L58256:

; 5437 : 
; 5438 :       if ( Message & DBH_Load )

	mov	edx, DWORD PTR _Message$[ebp]
	and	edx, 65535				; 0000ffffH
	and	edx, 32					; 00000020H
	test	edx, edx
	je	SHORT $L58258

; 5439 :          nRC = Load( lpViewEntity, lpView, lpViewOD, lpQualView, lpConnection,
; 5440 :                      Indicators );

	mov	eax, DWORD PTR _Indicators$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpConnection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpQualView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewOD$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	call	_Load
	add	esp, 24					; 00000018H
	mov	WORD PTR _nRC$[ebp], ax

; 5441 :       else

	jmp	$L58271
$L58258:

; 5442 :       if ( Message & DBH_Insert )

	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	and	eax, 1
	test	eax, eax
	je	SHORT $L58260

; 5443 :          nRC = Insert( lpViewEntity, lpView, lpViewOD, FALSE, lpConnection );

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpViewOD$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	call	_Insert
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 5444 :       else

	jmp	$L58271
$L58260:

; 5445 :       if ( Message & DBH_InsertRel )

	mov	edx, DWORD PTR _Message$[ebp]
	and	edx, 65535				; 0000ffffH
	and	edx, 2
	test	edx, edx
	je	SHORT $L58262

; 5446 :          nRC = InsertRel( lpViewEntity, lpView, lpViewOD, lpConnection );

	mov	eax, DWORD PTR _lpConnection$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	call	_InsertRel
	add	esp, 16					; 00000010H
	mov	WORD PTR _nRC$[ebp], ax

; 5447 :       else

	jmp	$L58271
$L58262:

; 5448 :       if ( Message & DBH_Delete )

	mov	ecx, DWORD PTR _Message$[ebp]
	and	ecx, 65535				; 0000ffffH
	and	ecx, 4
	test	ecx, ecx
	je	SHORT $L58264

; 5450 :          if ( Message & DBH_DeleteAll )

	mov	edx, DWORD PTR _Message$[ebp]
	and	edx, 65535				; 0000ffffH
	and	edx, 1024				; 00000400H
	test	edx, edx
	je	SHORT $L58265

; 5451 :             lpConnection->bDeleteAll = TRUE;

	mov	eax, DWORD PTR _lpConnection$[ebp]
	mov	ecx, DWORD PTR [eax+760]
	or	ecx, 4
	mov	edx, DWORD PTR _lpConnection$[ebp]
	mov	DWORD PTR [edx+760], ecx
$L58265:

; 5452 : 
; 5453 :          nRC = Delete( lpViewEntity, lpView, lpViewOD, lpConnection );

	mov	eax, DWORD PTR _lpConnection$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	call	_Delete
	add	esp, 16					; 00000010H
	mov	WORD PTR _nRC$[ebp], ax

; 5456 :       else

	jmp	$L58271
$L58264:

; 5457 :       if ( Message & DBH_DeleteRel )

	mov	ecx, DWORD PTR _Message$[ebp]
	and	ecx, 65535				; 0000ffffH
	and	ecx, 8
	test	ecx, ecx
	je	SHORT $L58267

; 5458 :          nRC = DeleteRel( lpViewEntity, lpView, lpViewOD, lpConnection );

	mov	edx, DWORD PTR _lpConnection$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewOD$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	push	edx
	call	_DeleteRel
	add	esp, 16					; 00000010H
	mov	WORD PTR _nRC$[ebp], ax

; 5459 :       else

	jmp	SHORT $L58271
$L58267:

; 5460 :       if ( Message & DBH_Update )

	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	and	eax, 16					; 00000010H
	test	eax, eax
	je	SHORT $L58269

; 5461 :          nRC = Update( lpViewEntity, lpView, lpViewOD, FALSE, lpConnection );

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _lpViewOD$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	call	_Update
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 5462 :       else

	jmp	SHORT $L58271
$L58269:

; 5463 :       if ( Message & DBH_UpdateSeq )

	mov	edx, DWORD PTR _Message$[ebp]
	and	edx, 65535				; 0000ffffH
	and	edx, 2048				; 00000800H
	test	edx, edx
	je	SHORT $L58271

; 5464 :          nRC = Update( lpViewEntity, lpView, lpViewOD, TRUE, lpConnection );

	mov	eax, DWORD PTR _lpConnection$[ebp]
	push	eax
	push	1
	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	call	_Update
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax
$L58271:

; 5465 : 
; 5466 :       if ( nRC == zCALL_ERROR )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -16				; fffffff0H
	jne	$L58292

; 5468 :          TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 5469 :          if ( Message & DBH_Load )

	mov	edx, DWORD PTR _Message$[ebp]
	and	edx, 65535				; 0000ffffH
	and	edx, 32					; 00000020H
	test	edx, edx
	je	SHORT $L58273

; 5470 :             TraceLineS( "Error performing Load for OD: ", lpViewOD->szName );

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0BP@LFHP@Error?5performing?5Load?5for?5OD?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 5471 :          else

	jmp	$L58288
$L58273:

; 5472 :          if ( Message & DBH_Insert )

	mov	ecx, DWORD PTR _Message$[ebp]
	and	ecx, 65535				; 0000ffffH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L58276

; 5473 :             TraceLineS( "Error performing Insert for OD: ", lpViewOD->szName );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	push	OFFSET FLAT:??_C@_0CB@GPGO@Error?5performing?5Insert?5for?5OD?3?5@ ; `string'
	call	_TraceLineS@8

; 5474 :          else

	jmp	$L58288
$L58276:

; 5475 :          if ( Message & DBH_InsertRel )

	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	and	eax, 2
	test	eax, eax
	je	SHORT $L58279

; 5476 :             TraceLineS( "Error performing InsertRel for OD: ", lpViewOD->szName );

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0CE@LABG@Error?5performing?5InsertRel?5for?5O@ ; `string'
	call	_TraceLineS@8

; 5477 :          else

	jmp	SHORT $L58288
$L58279:

; 5478 :          if ( Message & DBH_Delete )

	mov	edx, DWORD PTR _Message$[ebp]
	and	edx, 65535				; 0000ffffH
	and	edx, 4
	test	edx, edx
	je	SHORT $L58282

; 5479 :             TraceLineS( "Error performing Delete for OD: ", lpViewOD->szName );

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0CB@HHED@Error?5performing?5Delete?5for?5OD?3?5@ ; `string'
	call	_TraceLineS@8

; 5480 :          else

	jmp	SHORT $L58288
$L58282:

; 5481 :          if ( Message & DBH_DeleteRel )

	mov	ecx, DWORD PTR _Message$[ebp]
	and	ecx, 65535				; 0000ffffH
	and	ecx, 8
	test	ecx, ecx
	je	SHORT $L58285

; 5482 :             TraceLineS( "Error performing DeleteRel for OD: ", lpViewOD->szName );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	push	OFFSET FLAT:??_C@_0CE@JBNJ@Error?5performing?5DeleteRel?5for?5O@ ; `string'
	call	_TraceLineS@8

; 5483 :          else

	jmp	SHORT $L58288
$L58285:

; 5484 :          if ( Message & DBH_Update )

	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	and	eax, 16					; 00000010H
	test	eax, eax
	je	SHORT $L58288

; 5485 :             TraceLineS( "Error performing Update for OD: ", lpViewOD->szName );

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0CB@IHCB@Error?5performing?5Update?5for?5OD?3?5@ ; `string'
	call	_TraceLineS@8
$L58288:

; 5486 : 
; 5487 :          if ( lpViewEntity->hParent )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [edx+10], 0
	je	SHORT $L58290

; 5489 :             LPVIEWENTITY lpParent = zGETPTR( lpViewEntity->hParent );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpParent$58291[ebp], eax

; 5490 : 
; 5491 :             TraceLineS( "PARENT:", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_07IHIH@PARENT?3?$AA@	; `string'
	call	_TraceLineS@8

; 5492 :             DisplayEntityInstance( lpView, lpParent->szName );

	mov	edx, DWORD PTR _lpParent$58291[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_DisplayEntityInstance@8

; 5493 :             TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 5494 :             TraceLineS( "CHILD:", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_06NCJM@CHILD?3?$AA@	; `string'
	call	_TraceLineS@8
$L58290:

; 5496 : 
; 5497 :          DisplayEntityInstance( lpView, lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_DisplayEntityInstance@8

; 5498 : 
; 5499 :          if ( lpQualView )

	cmp	DWORD PTR _lpQualView$[ebp], 0
	je	SHORT $L58292

; 5501 :             TraceLineS( "Qualification View:", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BE@ICCD@Qualification?5View?3?$AA@ ; `string'
	call	_TraceLineS@8

; 5502 :             DisplayObjectInstance( lpQualView, 0, 0 );

	push	0
	push	0
	mov	eax, DWORD PTR _lpQualView$[ebp]
	push	eax
	call	_DisplayObjectInstance@12
$L58292:

; 5506 :    else

	jmp	$EndOfFunction$58257
$L58255:

; 5507 :    if ( Message & DBH_Object )

	mov	ecx, DWORD PTR _Message$[ebp]
	and	ecx, 65535				; 0000ffffH
	and	ecx, 16384				; 00004000H
	test	ecx, ecx
	je	$L58295

; 5509 :       nRC = GetWorkObjectView( hTask, lpView, lpViewOD, lpViewEntity,
; 5510 :                                ppvWorkPtr, &lpConnection );

	lea	edx, DWORD PTR _lpConnection$[ebp]
	push	edx
	mov	eax, DWORD PTR _ppvWorkPtr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewOD$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hTask$[ebp]
	push	ecx
	call	_GetWorkObjectView
	add	esp, 24					; 00000018H
	mov	WORD PTR _nRC$[ebp], ax

; 5511 :       if ( nRC == zCALL_ERROR )

	movsx	edx, WORD PTR _nRC$[ebp]
	cmp	edx, -16				; fffffff0H
	jne	SHORT $L58296

; 5512 :          goto EndOfFunction;

	jmp	$EndOfFunction$58257
$L58296:

; 5513 : 
; 5514 :       if ( Message & DBH_TranBegin )

	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	and	eax, 1
	test	eax, eax
	je	SHORT $L58297

; 5515 :          nRC = BeginTransaction( Indicators, lpViewOD, lpView, lpQualView,
; 5516 :                                  lpConnection );

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpQualView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	push	ecx
	mov	edx, DWORD PTR _Indicators$[ebp]
	push	edx
	call	_BeginTransaction
	add	esp, 20					; 00000014H
	mov	WORD PTR _nRC$[ebp], ax

; 5517 :       else

	jmp	$L58304
$L58297:

; 5518 :       if ( Message & DBH_Commit )

	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	and	eax, 2
	test	eax, eax
	je	SHORT $L58299

; 5519 :          nRC = CommitTransaction( lpView, Indicators, lpConnection );

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _Indicators$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_CommitTransaction
	add	esp, 12					; 0000000cH
	mov	WORD PTR _nRC$[ebp], ax

; 5520 :       else

	jmp	SHORT $L58304
$L58299:

; 5521 :       if ( Message & DBH_Rollback )

	mov	ecx, DWORD PTR _Message$[ebp]
	and	ecx, 65535				; 0000ffffH
	and	ecx, 4
	test	ecx, ecx
	je	SHORT $L58301

; 5522 :          nRC = RollbackTransaction( Indicators, lpConnection );

	mov	edx, DWORD PTR _lpConnection$[ebp]
	push	edx
	mov	eax, DWORD PTR _Indicators$[ebp]
	push	eax
	call	_RollbackTransaction
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax

; 5523 :       else

	jmp	SHORT $L58304
$L58301:

; 5524 :       if ( Message & DBH_NewObject )

	mov	ecx, DWORD PTR _Message$[ebp]
	and	ecx, 65535				; 0000ffffH
	and	ecx, 8
	test	ecx, ecx
	je	SHORT $L58304

; 5526 :          if ( lpConnection->nTraceLevel > 0 )

	mov	edx, DWORD PTR _lpConnection$[ebp]
	movsx	eax, WORD PTR [edx+214]
	test	eax, eax
	jle	SHORT $L58304

; 5528 :             TraceLineS( "---------------------------------", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CC@LLKJ@?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9@ ; `string'
	call	_TraceLineS@8

; 5529 :             TraceLineS( "Committing object ", lpViewOD->szName );

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0BD@MMAH@Committing?5object?5?$AA@ ; `string'
	call	_TraceLineS@8

; 5530 :             TraceLineS( "---------------------------------", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CC@LLKJ@?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9?9@ ; `string'
	call	_TraceLineS@8
$L58304:

; 5534 :    else

	jmp	SHORT $EndOfFunction$58257
$L58295:

; 5535 :    if ( Message & DBH_Init )

	mov	edx, DWORD PTR _Message$[ebp]
	and	edx, 65535				; 0000ffffH
	and	edx, 4096				; 00001000H
	test	edx, edx
	je	SHORT $L58308

; 5536 :       nRC = InitDatabase( lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_InitDatabase
	add	esp, 4
	mov	WORD PTR _nRC$[ebp], ax

; 5537 :    else

	jmp	SHORT $EndOfFunction$58257
$L58308:

; 5538 :    if ( Message & (DBH_Term | DBH_TaskCloseAll) )

	mov	ecx, DWORD PTR _Message$[ebp]
	and	ecx, 65535				; 0000ffffH
	and	ecx, 8448				; 00002100H
	test	ecx, ecx
	je	SHORT $EndOfFunction$58257

; 5539 :       nRC = CloseDatabase( lpQualView ? lpQualView : lpView, Indicators );

	cmp	DWORD PTR _lpQualView$[ebp], 0
	je	SHORT $L58546
	mov	edx, DWORD PTR _lpQualView$[ebp]
	mov	DWORD PTR -16+[ebp], edx
	jmp	SHORT $L58547
$L58546:
	mov	eax, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR -16+[ebp], eax
$L58547:
	mov	ecx, DWORD PTR _Indicators$[ebp]
	push	ecx
	mov	edx, DWORD PTR -16+[ebp]
	push	edx
	call	_CloseDatabase
	add	esp, 8
	mov	WORD PTR _nRC$[ebp], ax
$EndOfFunction$58257:

; 5540 : 
; 5541 : EndOfFunction:
; 5542 : 
; 5543 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 5544 : 
; 5545 : } // fnDBH_MsgProc

	mov	esp, ebp
	pop	ebp
	ret	32					; 00000020H
_DBH_MsgProc@32 ENDP
_nCommand$ = 8
_lpDataField$ = 20
_lpViewEntity$ = -4
_lpViewAttrib$ = -8
_fnDBH_Callback@24 PROC NEAR

; 5557 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 5558 :    LPVIEWENTITY lpViewEntity;
; 5559 :    LPVIEWATTRIB lpViewAttrib;
; 5560 : 
; 5561 : #if defined( DB2 )
; 5562 : 
; 5563 :    LPCALLBACKINFO    lpCallbackInfo = (LPCALLBACKINFO) lpBoundList->pvPtr;
; 5564 : 
; 5565 : #elif defined( ODBC )
; 5566 : 
; 5567 :    LPCALLBACKINFO    lpCallbackInfo = (LPCALLBACKINFO) lpBoundList->pvPtr;
; 5568 :    LPODBC_OBJECTDATA lpObjectData   = lpCallbackInfo->lpObjectData;
; 5569 : 
; 5570 :    if ( lpObjectData == 0 )
; 5571 :       lpObjectData = &g_DefaultODBC_Data;
; 5572 : 
; 5573 : #endif
; 5574 : 
; 5575 :    if ( lpDataField )

	cmp	DWORD PTR _lpDataField$[ebp], 0
	je	SHORT $L58326

; 5577 :       lpViewAttrib = zGETPTR( lpDataField->hViewAttrib );

	mov	eax, DWORD PTR _lpDataField$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 5578 :       lpViewEntity = zGETPTR( lpViewAttrib->hViewEntity );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewEntity$[ebp], eax
$L58326:

; 5580 : 
; 5581 :    switch ( nCommand )
; 5582 :    {

	mov	ecx, DWORD PTR _nCommand$[ebp]
	mov	DWORD PTR -12+[ebp], ecx
	cmp	DWORD PTR -12+[ebp], 16			; 00000010H
	ja	SHORT $L58549
	cmp	DWORD PTR -12+[ebp], 16			; 00000010H
	je	SHORT $L58331
	mov	edx, DWORD PTR -12+[ebp]
	sub	edx, 1
	mov	DWORD PTR -12+[ebp], edx
	cmp	DWORD PTR -12+[ebp], 7
	ja	SHORT $L58328
	mov	eax, DWORD PTR -12+[ebp]
	jmp	DWORD PTR $L58550[eax*4]
$L58549:
	mov	ecx, DWORD PTR -12+[ebp]
	sub	ecx, 32					; 00000020H
	mov	DWORD PTR -12+[ebp], ecx
	cmp	DWORD PTR -12+[ebp], 224		; 000000e0H
	ja	SHORT $L58328
	mov	eax, DWORD PTR -12+[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR $L58551[eax]
	jmp	DWORD PTR $L58552[edx*4]
$L58331:

; 5583 :       // ==========================================================
; 5584 :       case zSQLCALLBACK_INITSELECT:
; 5585 :          return( FALSE );

	xor	ax, ax
	jmp	SHORT $L58323
$L58332:

; 5586 : 
; 5587 :       // ==========================================================
; 5588 :       case zSQLCALLBACK_GETNULLSTRING:
; 5589 : 
; 5590 :          // If we get here then nobody handled the message so return FALSE.
; 5591 :          return( FALSE );

	xor	ax, ax
	jmp	SHORT $L58323
$L58333:

; 5592 : 
; 5593 :       // ==========================================================
; 5594 :       case zSQLCALLBACK_CHECKNULL:
; 5595 : 
; 5596 :          // If we get here then nobody handled the message so return FALSE.
; 5597 :          return( FALSE );

	xor	ax, ax
	jmp	SHORT $L58323
$L58334:

; 5602 : 
; 5603 : #if defined( DB2 )
; 5604 : 
; 5605 :          // We only need to worry about date/times.
; 5606 :          if ( lpViewAttrib->cType == zTYPE_DATETIME )
; 5607 :          {
; 5608 :             zPCHAR pch;
; 5609 :             zCHAR  szDateTime1[ 30 ], szDateTime2[ 30 ];
; 5610 : 
; 5611 :             // Get date-time from szSource as an unformatted string --
; 5612 :             // yyyymmddhhmmsss.
; 5613 :             zstrcpy( szDateTime1, (zPCHAR) pInfo );
; 5614 : 
; 5615 :             // Make sure that the DateTime doesn't contain any spaces.
; 5616 :             pch = szDateTime1;
; 5617 :             while ( *pch )
; 5618 :             {
; 5619 :                if ( *pch == ' ' )
; 5620 :                   *pch = '0';
; 5621 : 
; 5622 :                pch++;
; 5623 :             }
; 5624 : 
; 5625 :             // Convert DateTime string to a formatted string that ODBC/DB2
; 5626 :             // understands.
; 5627 :             switch ( lpDataField->cFldType )
; 5628 :             {
; 5629 :                case zTYPE_TIME:
; 5630 :                   UfFormatDateTime( szDateTime2, szDateTime1, "HH.MI.SS" );
; 5631 :                   break;
; 5632 : 
; 5633 :                case zTYPE_DATE:
; 5634 :                   UfFormatDateTime( szDateTime2, szDateTime1, "YYYY-mm-DD" );
; 5635 : 
; 5636 :                   break;
; 5637 : 
; 5638 :                default:
; 5639 :                   UfFormatDateTime( szDateTime2, szDateTime1,
; 5640 :                                     "YYYY-mm-DD-HH.MI.SS.999" );
; 5641 :             }
; 5642 : 
; 5643 :             // Date string must start with a quote.
; 5644 :             *pchTarget++ = '\'';
; 5645 : 
; 5646 :             // Copy formatted date-time string to szTarget and terminate
; 5647 :             // with a quote.
; 5648 :             zstrcpy( pchTarget, szDateTime2 );
; 5649 :             zstrcat( pchTarget, "'" );
; 5650 : 
; 5651 :             return( TRUE ); // Return code indicating we handled it ok.
; 5652 : 
; 5653 :          } // if...
; 5654 : 
; 5655 : #elif defined( ODBC )
; 5656 : 
; 5657 :          zBOOL bAddEscapeSequence;
; 5658 :          zCHAR szEscapeCode[ 3 ];
; 5659 : 
; 5660 :          // We only need to worry about date/times.
; 5661 :          if ( lpViewAttrib->cType == zTYPE_DATETIME )
; 5662 :          {
; 5663 :             zPCHAR pch;
; 5664 :             zCHAR  szDateTime1[ 30 ], szDateTime2[ 30 ];
; 5665 : 
; 5666 :             // Get date-time from szSource as an unformatted string --
; 5667 :             // yyyymmddhhmmsss.
; 5668 :             zstrcpy( szDateTime1, (zPCHAR) pInfo );
; 5669 : 
; 5670 :             // Make sure that the DateTime doesn't contain any spaces.
; 5671 :             pch = szDateTime1;
; 5672 :             while ( *pch )
; 5673 :             {
; 5674 :                if ( *pch == ' ' )
; 5675 :                   *pch = '0';
; 5676 : 
; 5677 :                pch++;
; 5678 :             }
; 5679 : 
; 5680 :             bAddEscapeSequence = FALSE;
; 5681 : 
; 5682 :             // Convert DateTime string to a formatted string that ODBC/DB2
; 5683 :             // understands.
; 5684 :             switch ( lpDataField->cFldType )
; 5685 :             {
; 5686 :                case zTYPE_TIME:
; 5687 :                   if ( lpObjectData->bStoreTimestampAsString )
; 5688 :                      UfFormatDateTime( szDateTime2, szDateTime1, "HHMISS" );
; 5689 :                   else
; 5690 :                   {
; 5691 :                      bAddEscapeSequence = TRUE;
; 5692 :                      zstrcpy( szEscapeCode, "t" );
; 5693 :                      UfFormatDateTime( szDateTime2, szDateTime1, "HH:MI:SS" );
; 5694 :                   }
; 5695 : 
; 5696 :                   break;
; 5697 : 
; 5698 :                case zTYPE_DATE:
; 5699 : #if 0  // Dates are always stored as date/time columns.
; 5700 :                   if ( lpObjectData->bStoreTimestampAsString )
; 5701 :                      UfFormatDateTime( szDateTime2, szDateTime1, "YYYYmmDD" );
; 5702 :                   else
; 5703 : #endif
; 5704 :                   {
; 5705 :                      bAddEscapeSequence = TRUE;
; 5706 :                      zstrcpy( szEscapeCode, "d" );
; 5707 :                      UfFormatDateTime( szDateTime2, szDateTime1, "YYYY-mm-DD" );
; 5708 :                   }
; 5709 : 
; 5710 :                   break;
; 5711 : 
; 5712 :                case zTYPE_DATETIME:
; 5713 :                   if ( lpObjectData->bStoreTimestampAsString == FALSE )
; 5714 :                   {
; 5715 :                      bAddEscapeSequence = TRUE;
; 5716 :                      zstrcpy( szEscapeCode, "ts" );
; 5717 :                   }
; 5718 : 
; 5719 :                   // The precision of timestamps has been given to us.  Format
; 5720 :                   // the timestamp according to the precision.
; 5721 : 
; 5722 :                   if ( lpObjectData->nTimestampPrecision == 0 )
; 5723 :                   {
; 5724 :                      if ( lpObjectData->bStoreTimestampAsString )
; 5725 :                         UfFormatDateTime( szDateTime2, szDateTime1,
; 5726 :                                           "YYYYmmDDHHMISS" );
; 5727 :                      else
; 5728 :                         UfFormatDateTime( szDateTime2, szDateTime1,
; 5729 :                                           "YYYY-mm-DD HH:MI:SS" );
; 5730 :                   }
; 5731 :                   else
; 5732 :                   {
; 5733 :                      zPCHAR pchFormat;
; 5734 :                      zSHORT idx;
; 5735 : 
; 5736 :                      if ( lpObjectData->bStoreTimestampAsString )
; 5737 :                      {
; 5738 :                         idx = 14; // Index of first '9' in szFormat.
; 5739 :                         pchFormat = "YYYYmmDDHHMISS999999999999999";
; 5740 :                      }
; 5741 :                      else
; 5742 :                      {
; 5743 :                         idx = 20; // Index of first '9' in szFormat.
; 5744 :                         pchFormat = "YYYY-mm-DD HH:MI:SS.999999999999999";
; 5745 :                      }
; 5746 : 
; 5747 :                      // We're being a little tricky here but all we're doing is
; 5748 :                      // making sure that the precision in szFormat matches
; 5749 :                      // nTimestampPrecision.
; 5750 : 
; 5751 :                      // First turn one of the 9's into a null-terminator.
; 5752 :                      pchFormat[ idx + lpObjectData->nTimestampPrecision ] = 0;
; 5753 : 
; 5754 :                      UfFormatDateTime( szDateTime2, szDateTime1, pchFormat );
; 5755 : 
; 5756 :                      // Now change the null-terminator back to a 9.
; 5757 :                      pchFormat[ idx + lpObjectData->nTimestampPrecision ] = '9';
; 5758 :                   }
; 5759 : 
; 5760 :                   break;
; 5761 : 
; 5762 :             } // switch ( lpDataField->cFldType )...
; 5763 : 
; 5764 :             if ( bAddEscapeSequence )
; 5765 :             {
; 5766 :                // Add escape sequence.
; 5767 :                *pchTarget++ = '{';
; 5768 : 
; 5769 :                zstrcpy( pchTarget, szEscapeCode );
; 5770 :                pchTarget += zstrlen( szEscapeCode );
; 5771 : 
; 5772 :                *pchTarget++ = ' ';
; 5773 :             }
; 5774 : 
; 5775 :             // Date string must start with a quote.
; 5776 :             *pchTarget++ = '\'';
; 5777 : 
; 5778 :             // Copy formatted date-time string to szTarget and terminate
; 5779 :             // with a quote.
; 5780 :             zstrcpy( pchTarget, szDateTime2 );
; 5781 :             zstrcat( pchTarget, "'" );
; 5782 : 
; 5783 :             if ( bAddEscapeSequence )
; 5784 :             {
; 5785 :                // Terminate escape sequence.
; 5786 :                pchTarget = pchTarget + zstrlen( pchTarget );
; 5787 :                *pchTarget++ = ' ';
; 5788 :                *pchTarget++ = '}';
; 5789 :                *pchTarget++ = 0;
; 5790 :             }
; 5791 : 
; 5792 :             return( TRUE ); // Return code indicating we handled it ok.
; 5793 : 
; 5794 :          } // if...
; 5795 : 
; 5796 : #endif
; 5797 :          // If we get here then nobody handled the message so return FALSE.
; 5798 :          return( FALSE );

	xor	ax, ax
	jmp	SHORT $L58323
$L58335:

; 5800 : 
; 5801 :       // ==========================================================
; 5802 :       case zSQLCALLBACK_GETATTRVALUE:
; 5803 : 
; 5804 : #if defined( DB2 ) || defined( ODBC )
; 5805 : 
; 5806 :          // We only need to worry about blobs/varchars.
; 5807 :          if ( (g_bHoldStmtHandles &&
; 5808 :                lpCallbackInfo->cBuildFunction == BUILD_SELECT) ||
; 5809 :               lpDataField->cFldType == zTYPE_BLOB ||
; 5810 :               lpDataField->cFldType == 'V' )
; 5811 :          {
; 5812 :             // For LONG VARCHAR variables, create a bind variable.
; 5813 :             SqlAddBoundAttr( lpBoundList, lpDataField, lpView, 0, 0 );
; 5814 :             zstrcat( pchTarget, "?" );
; 5815 : 
; 5816 :             return( TRUE ); // Return code indicating we handled it ok.
; 5817 :          }
; 5818 : 
; 5819 : #endif
; 5820 :          // If we get here then nobody handled the message so return FALSE.
; 5821 :          return( FALSE );

	xor	ax, ax
	jmp	SHORT $L58323
$L58336:

; 5822 : 
; 5823 :       // ==========================================================
; 5824 :       case zSQLCALLBACK_GETCOLUMNNAME:
; 5825 : 
; 5826 : #if defined ( DB2 )
; 5827 : 
; 5828 :       {
; 5829 :          LPVIEWATTRIB lpViewAttrib;
; 5830 : 
; 5831 :          // If pInfo is 0 then we are getting the column name for a
; 5832 :          // SELECT statement.  We can use the default processing for non
; 5833 :          // SELECT statements.
; 5834 :          if ( pInfo )
; 5835 :             return( FALSE );
; 5836 : 
; 5837 :          lpViewAttrib = zGETPTR( lpDataField->hViewAttrib );
; 5838 : 
; 5839 :          // For the 'COUNT' command we have to insert 'DISTINCT'.
; 5840 :          if ( lpViewAttrib->cDB_Oper == 'C' )
; 5841 :             zstrcat( pchTarget, " DISTINCT " );
; 5842 : 
; 5843 :          // We'll return FALSE even if we've done something here because we
; 5844 :          // want the dbhandler to tack on the column name.
; 5845 :          return( FALSE );
; 5846 :       }
; 5847 : 
; 5848 : #endif
; 5849 : 
; 5850 :          return( FALSE );

	xor	ax, ax
	jmp	SHORT $L58323
$L58337:

; 5851 : 
; 5852 :       // ==========================================================
; 5853 :       case zSQLCALLBACK_USEINTO:
; 5854 :          return( FALSE );

	xor	ax, ax
	jmp	SHORT $L58323
$L58338:

; 5855 : 
; 5856 :       // ==========================================================
; 5857 :       case zSQLCALLBACK_GETINTONAME:
; 5858 :          return( FALSE );

	xor	ax, ax
	jmp	SHORT $L58323
$L58339:

; 5859 : 
; 5860 :       case zSQLCALLBACK_GETCOLLISTPOS:
; 5861 : #ifdef ODBC
; 5862 :          if ( lpDataField->cFldType == zTYPE_BLOB ||
; 5863 :               lpDataField->cFldType == 'V' )
; 5864 :             return( TRUE );
; 5865 :          else
; 5866 :             return( FALSE );
; 5867 : #else
; 5868 :          return( FALSE );

	xor	ax, ax
	jmp	SHORT $L58323
$L58328:

; 5872 : 
; 5873 :    // If we get here then we didn't handle the request so return FALSE.
; 5874 :    return( FALSE );

	xor	ax, ax
$L58323:

; 5875 : 
; 5876 : } // fnDBH_Callback

	mov	esp, ebp
	pop	ebp
	ret	24					; 00000018H
$L58550:
	DD	$L58333
	DD	$L58332
	DD	$L58328
	DD	$L58334
	DD	$L58328
	DD	$L58328
	DD	$L58328
	DD	$L58335
$L58552:
	DD	$L58336
	DD	$L58337
	DD	$L58338
	DD	$L58339
	DD	$L58328
$L58551:
	DB	0
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	1
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	2
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	3
_fnDBH_Callback@24 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0L@NCMM@TE_TablRec?$AA@			; `string'
PUBLIC	??_C@_0BA@PJGE@TE_FieldDataRel?$AA@		; `string'
PUBLIC	??_C@_06CAAP@Length?$AA@			; `string'
PUBLIC	??_C@_08FNON@DataType?$AA@			; `string'
PUBLIC	??_C@_09CEBI@IndexName?$AA@			; `string'
PUBLIC	??_C@_0O@LKEB@TE_TablRecKey?$AA@		; `string'
PUBLIC	??_C@_0BC@JFAB@Retrieved?5From?5DB?$AA@		; `string'
PUBLIC	??_C@_0BD@EGMP@TE_FieldDataRelKey?$AA@		; `string'
PUBLIC	_RetrieveSchema@8
PUBLIC	??_C@_08CBKH@TZTENVRO?$AA@			; `string'
PUBLIC	??_C@_0O@DNOO@TE_DB_Environ?$AA@		; `string'
PUBLIC	??_C@_0P@BCDD@TE_DBMS_Source?$AA@		; `string'
PUBLIC	??_C@_04EFNI@Name?$AA@				; `string'
EXTRN	_IncludeSubobjectFromSubobject@20:NEAR
EXTRN	_GetStringFromAttribute@16:NEAR
;	COMDAT ??_C@_08CBKH@TZTENVRO?$AA@
; File C:\10C\a\oe\KZHSQLXA.C
_DATA	SEGMENT
??_C@_08CBKH@TZTENVRO?$AA@ DB 'TZTENVRO', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@DNOO@TE_DB_Environ?$AA@
_DATA	SEGMENT
??_C@_0O@DNOO@TE_DB_Environ?$AA@ DB 'TE_DB_Environ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@BCDD@TE_DBMS_Source?$AA@
_DATA	SEGMENT
??_C@_0P@BCDD@TE_DBMS_Source?$AA@ DB 'TE_DBMS_Source', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_04EFNI@Name?$AA@
_DATA	SEGMENT
??_C@_04EFNI@Name?$AA@ DB 'Name', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@NCMM@TE_TablRec?$AA@
_DATA	SEGMENT
??_C@_0L@NCMM@TE_TablRec?$AA@ DB 'TE_TablRec', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@PJGE@TE_FieldDataRel?$AA@
_DATA	SEGMENT
??_C@_0BA@PJGE@TE_FieldDataRel?$AA@ DB 'TE_FieldDataRel', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_06CAAP@Length?$AA@
_DATA	SEGMENT
??_C@_06CAAP@Length?$AA@ DB 'Length', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08FNON@DataType?$AA@
_DATA	SEGMENT
??_C@_08FNON@DataType?$AA@ DB 'DataType', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_09CEBI@IndexName?$AA@
_DATA	SEGMENT
??_C@_09CEBI@IndexName?$AA@ DB 'IndexName', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@LKEB@TE_TablRecKey?$AA@
_DATA	SEGMENT
??_C@_0O@LKEB@TE_TablRecKey?$AA@ DB 'TE_TablRecKey', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@JFAB@Retrieved?5From?5DB?$AA@
_DATA	SEGMENT
??_C@_0BC@JFAB@Retrieved?5From?5DB?$AA@ DB 'Retrieved From DB', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@EGMP@TE_FieldDataRelKey?$AA@
_DATA	SEGMENT
??_C@_0BD@EGMP@TE_FieldDataRelKey?$AA@ DB 'TE_FieldDataRelKey', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_szDataType$58376 = -1720
_vDTE$ = 8
_pvDB$ = 12
_cr$ = -820
_lpConnection$ = -16
_vDB$ = -4
_szUserID$ = -1128
_szPassword$ = -1700
_pchPtr$ = -8
_pchDBName$ = -1388
_szTableName$ = -1648
_szColumnName$ = -1076
_szIndexName$ = -1384
_iColLth$ = -1392
_nRC$ = -12
_RetrieveSchema@8 PROC NEAR

; 5883 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 1720				; 000006b8H
	push	edi

; 5884 :    ConnectionRecord cr = { 0 };

	mov	BYTE PTR _cr$[ebp], 0
	mov	ecx, 200				; 000000c8H
	xor	eax, eax
	lea	edi, DWORD PTR _cr$[ebp+1]
	rep stosd
	stosw
	stosb

; 5885 :    LPCONNECTION lpConnection = &cr;

	lea	eax, DWORD PTR _cr$[ebp]
	mov	DWORD PTR _lpConnection$[ebp], eax

; 5886 : 
; 5887 :    zVIEW  vDB;
; 5888 :    zCHAR  szUserID[ 50 ];
; 5889 :    zCHAR  szPassword[ 50 ];
; 5890 :    zPCHAR pchPtr = 0;

	mov	DWORD PTR _pchPtr$[ebp], 0

; 5891 :    zPCHAR pchDBName;
; 5892 : 
; 5893 :    zCHAR  szTableName[ STR_LEN + 1 ];
; 5894 :    zCHAR  szColumnName[ STR_LEN + 1 ];
; 5895 :    zCHAR  szIndexName[ STR_LEN + 1 ];
; 5896 : 
; 5897 : #if defined( DB2 ) || defined( ODBC )
; 5898 :    zCHAR       szDataTypeName[ STR_LEN + 1 ];
; 5899 :    zCHAR       szIndexQual[ STR_LEN + 1 ];
; 5900 :    SQLINTEGER  cbTableNameLth, cbColumnNameLth, cbIndexNameLth, cbCardinality;
; 5901 :    SQLINTEGER  iColLth;
; 5902 :    SQLINTEGER  iCardinality;
; 5903 :    SQLSMALLINT sDataType;
; 5904 :    SQLSMALLINT sNullable;
; 5905 : #else
; 5906 :    zLONG       iColLth = 0;

	mov	DWORD PTR _iColLth$[ebp], 0

; 5907 : #endif
; 5908 :    zSHORT nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 5909 : 
; 5910 : // lpConnection->nTraceLevel = 1;
; 5911 :    lpConnection->lpAppView = vDTE;

	mov	ecx, DWORD PTR _lpConnection$[ebp]
	mov	edx, DWORD PTR _vDTE$[ebp]
	mov	DWORD PTR [ecx+20], edx

; 5912 : 
; 5913 :    if ( *pvDB == 0 )

	mov	eax, DWORD PTR _pvDB$[ebp]
	cmp	DWORD PTR [eax], 0
	jne	SHORT $L58358

; 5915 :       ActivateEmptyObjectInstance( pvDB, "TZTENVRO", vDTE, zSINGLE );

	push	0
	mov	ecx, DWORD PTR _vDTE$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_08CBKH@TZTENVRO?$AA@	; `string'
	mov	edx, DWORD PTR _pvDB$[ebp]
	push	edx
	call	_ActivateEmptyObjectInstance@16

; 5916 :       CreateEntity( *pvDB, "TE_DB_Environ", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_0O@DNOO@TE_DB_Environ?$AA@ ; `string'
	mov	eax, DWORD PTR _pvDB$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_CreateEntity@12

; 5917 :       CreateEntity( *pvDB, "TE_DBMS_Source", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_0P@BCDD@TE_DBMS_Source?$AA@ ; `string'
	mov	edx, DWORD PTR _pvDB$[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	call	_CreateEntity@12
$L58358:

; 5919 : 
; 5920 :    vDB = *pvDB;  // Just to make things easier.

	mov	ecx, DWORD PTR _pvDB$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _vDB$[ebp], edx

; 5921 : 
; 5922 :    // Get the database name.
; 5923 :    GetAddrForAttribute( &pchDBName, vDTE, "TE_DBMS_Source", "Name" );

	push	OFFSET FLAT:??_C@_04EFNI@Name?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0P@BCDD@TE_DBMS_Source?$AA@ ; `string'
	mov	eax, DWORD PTR _vDTE$[ebp]
	push	eax
	lea	ecx, DWORD PTR _pchDBName$[ebp]
	push	ecx
	call	_GetAddrForAttribute@16

; 5924 : 
; 5925 :    SysGetDB_UserID( vDTE, szUserID, szPassword );

	lea	edx, DWORD PTR _szPassword$[ebp]
	push	edx
	lea	eax, DWORD PTR _szUserID$[ebp]
	push	eax
	mov	ecx, DWORD PTR _vDTE$[ebp]
	push	ecx
	call	_SysGetDB_UserID@12
$L58366:

; 5926 : 
; 5927 :    //==============================================================
; 5928 :    // Open database.
; 5929 :    //==============================================================
; 5930 : 
; 5931 : #if defined( DB2 ) || defined( ODBC )
; 5932 : 
; 5933 :    nRC = SQLAllocEnv( &lpConnection->henv );
; 5934 :    SQL_RC( "SQLAllocEnv", nRC, 0, 0, 2 );
; 5935 :    if ( nRC != SQL_SUCCESS )
; 5936 :       return( zCALL_ERROR );
; 5937 : 
; 5938 :    nRC = SQLAllocConnect( lpConnection->henv, &lpConnection->hdbc );
; 5939 :    SQL_RC( "SQLAllocConnect", nRC, 0, 0, 2 );
; 5940 :    if ( nRC != SQL_SUCCESS )
; 5941 :       return( zCALL_ERROR );
; 5942 : 
; 5943 :    nRC = SQLConnect( lpConnection->hdbc, pchDBName, SQL_NTS,
; 5944 :                      szUserID, SQL_NTS, szPassword, SQL_NTS );
; 5945 :    SQL_RC( "SQLConnect", nRC, "Database = ", pchDBName, 1 );
; 5946 :    if ( !RC_SUCCESSFUL( nRC ) )
; 5947 :    {
; 5948 :       zCHAR szText[ 200 ];
; 5949 : 
; 5950 :       zsprintf( szText, "Error connecting to DB %s", pchDBName );
; 5951 :       MessageSend( lpConnection->lpAppView, "KZH0102", "ODBC DBH Error",
; 5952 :                    szText, zMSGQ_SYSTEM_ERROR, 0 );
; 5953 : 
; 5954 :       SQLFreeHandle( SQL_HANDLE_DBC, (SQLHANDLE) lpConnection->hdbc );
; 5955 :       lpConnection->hdbc = 0;
; 5956 :       return( zCALL_ERROR );
; 5957 :    }
; 5958 : 
; 5959 : #if defined( DB2 )
; 5960 : 
; 5961 :    nRC = SQLAllocStmt( lpConnection->hdbc, &lpConnection->hstmt );
; 5962 :    SQL_RC( "SQLAllocStmt", nRC, "Allocate HSTMT", 0, 2 );
; 5963 :    if ( nRC != SQL_SUCCESS )
; 5964 :       return( zCALL_ERROR );
; 5965 : 
; 5966 : #else
; 5967 : 
; 5968 :    nRC = SQLSetConnectAttr( lpConnection->hdbc, SQL_ATTR_AUTOCOMMIT,
; 5969 :                             SQL_AUTOCOMMIT_OFF, 0 );
; 5970 :    SQL_RC( "SQLSetConnectAttr", nRC, "Turning AutoCommit off", 0, 2 );
; 5971 : 
; 5972 :    nRC = SQLAllocHandle( SQL_HANDLE_STMT, lpConnection->hdbc,
; 5973 :                          &lpConnection->hstmt );
; 5974 :    SQL_RC( "SQLAllocHandle", nRC, "Allocate HSTMT", 0, 2 );
; 5975 :    if ( nRC != SQL_SUCCESS )
; 5976 :       return( zCALL_ERROR );
; 5977 : 
; 5978 : #endif
; 5979 : 
; 5980 :    nRC = SQLTables( lpConnection->hstmt, 0, 0, 0, 0, 0, 0,
; 5981 :                     "TABLE", SQL_NTS );
; 5982 :    SQL_RC( "SQLTables", nRC, "Get table list", 0, 1 );
; 5983 : 
; 5984 :    SQLBindCol( lpConnection->hstmt, 3, SQL_C_CHAR, szTableName,
; 5985 :                STR_LEN, &cbTableNameLth );
; 5986 : 
; 5987 : #endif
; 5988 : 
; 5989 :    // Load tables.
; 5990 :    while ( TRUE )

	mov	edx, 1
	test	edx, edx
	je	SHORT $L58367

; 5992 : #if defined( DB2 ) || defined( ODBC )
; 5993 : 
; 5994 :       nRC = SQLFetch( lpConnection->hstmt );
; 5995 :       SQL_RC( "SQLFetch", nRC, "Fetch table name", 0, 1 );
; 5996 :       if ( !RC_SUCCESSFUL( nRC ) )
; 5997 :          break;
; 5998 : 
; 5999 :       // We have to ignore some system tables.
; 6000 :       if ( zstrcmpi( szTableName, "dtproperties" ) == 0 )
; 6001 :          continue;
; 6002 : 
; 6003 : #endif
; 6004 : 
; 6005 :       CreateEntity( vDB, "TE_TablRec", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_0L@NCMM@TE_TablRec?$AA@ ; `string'
	mov	eax, DWORD PTR _vDB$[ebp]
	push	eax
	call	_CreateEntity@12

; 6006 :       SetAttributeFromString( vDB, "TE_TablRec", "Name", szTableName );

	lea	ecx, DWORD PTR _szTableName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_04EFNI@Name?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0L@NCMM@TE_TablRec?$AA@ ; `string'
	mov	edx, DWORD PTR _vDB$[ebp]
	push	edx
	call	_SetAttributeFromString@16

; 6007 : 
; 6008 :    } // Load tables...

	jmp	SHORT $L58366
$L58367:

; 6009 : 
; 6010 :    // Clean up after getting tables.
; 6011 : #if defined( DB2 ) || defined( ODBC )
; 6012 : 
; 6013 :    nRC = SQLCloseCursor( lpConnection->hstmt );
; 6014 :    SQL_RC( "SQLCloseCursor", nRC, 0, 0, 2 );
; 6015 : 
; 6016 : #endif
; 6017 : 
; 6018 :    // Load columns.
; 6019 :    for ( nRC = SetCursorFirstEntity( vDB, "TE_TablRec", 0 );
; 6020 :          nRC >= zCURSOR_SET;
; 6021 :          nRC = SetCursorNextEntity( vDB, "TE_TablRec", 0 ) )

	push	0
	push	OFFSET FLAT:??_C@_0L@NCMM@TE_TablRec?$AA@ ; `string'
	mov	eax, DWORD PTR _vDB$[ebp]
	push	eax
	call	_SetCursorFirstEntity@12
	mov	WORD PTR _nRC$[ebp], ax
	jmp	SHORT $L58370
$L58371:
	push	0
	push	OFFSET FLAT:??_C@_0L@NCMM@TE_TablRec?$AA@ ; `string'
	mov	ecx, DWORD PTR _vDB$[ebp]
	push	ecx
	call	_SetCursorNextEntity@12
	mov	WORD PTR _nRC$[ebp], ax
$L58370:
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jl	$L58372

; 6023 :       GetStringFromAttribute( szTableName, vDB, "TE_TablRec", "Name" );

	push	OFFSET FLAT:??_C@_04EFNI@Name?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0L@NCMM@TE_TablRec?$AA@ ; `string'
	mov	eax, DWORD PTR _vDB$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szTableName$[ebp]
	push	ecx
	call	_GetStringFromAttribute@16
$L58374:

; 6024 : 
; 6025 : #if defined( DB2 ) || defined( ODBC )
; 6026 :       nRC = SQLColumns( lpConnection->hstmt, 0, 0, 0, 0, szTableName,
; 6027 :                         SQL_NTS, 0, 0 );
; 6028 :       SQL_RC( "SQLColumns", nRC, "Get column list", 0, 1 );
; 6029 : 
; 6030 :       SQLBindCol( lpConnection->hstmt, 4, SQL_C_CHAR,
; 6031 :                   szColumnName, STR_LEN, &cbColumnNameLth );
; 6032 :       SQLBindCol( lpConnection->hstmt, 5, SQL_C_SSHORT, &sDataType, 0, 0 );
; 6033 :       SQLBindCol( lpConnection->hstmt, 6, SQL_C_CHAR,
; 6034 :                   szDataTypeName, STR_LEN, &cbColumnNameLth );
; 6035 :       SQLBindCol( lpConnection->hstmt, 7, SQL_C_SLONG, &iColLth, 0, 0 );
; 6036 :       SQLBindCol( lpConnection->hstmt, 11, SQL_C_SSHORT, &sNullable, 0, 0 );
; 6037 : #endif
; 6038 : 
; 6039 :       while ( TRUE )

	mov	edx, 1
	test	edx, edx
	je	SHORT $L58375

; 6041 :          zCHAR szDataType[ 20 ];
; 6042 : 
; 6043 : #if defined( DB2 ) || defined( ODBC )
; 6044 : 
; 6045 :          nRC = SQLFetch( lpConnection->hstmt );
; 6046 :          SQL_RC( "SQLFetch", nRC, "Fetch column name", 0, 1 );
; 6047 :          if ( !RC_SUCCESSFUL( nRC ) )
; 6048 :             break;
; 6049 : 
; 6050 :          switch ( sDataType )
; 6051 :          {
; 6052 :             case SQL_CHAR:
; 6053 :                szDataType[ 0 ] = zTYPE_FIXEDCHAR;
; 6054 :                break;
; 6055 : 
; 6056 :             case SQL_VARCHAR:
; 6057 :                szDataType[ 0 ] = zTYPE_STRING;
; 6058 :                break;
; 6059 : 
; 6060 :             case SQL_LONGVARCHAR:
; 6061 :             case -9:   // No idea what it is, but it's returned by SqlServer.
; 6062 :             case -10:  // Returned by SqlServer, says its an ntext.
; 6063 :                szDataType[ 0 ] = 'V';
; 6064 :                break;
; 6065 : 
; 6066 :             case SQL_INTEGER:
; 6067 :             case SQL_SMALLINT:
; 6068 :                szDataType[ 0 ] = zTYPE_INTEGER;
; 6069 :                iColLth = 4;
; 6070 :                break;
; 6071 : 
; 6072 :             case SQL_REAL:
; 6073 :             case SQL_FLOAT:
; 6074 :             case SQL_DOUBLE:
; 6075 :                szDataType[ 0 ] = zTYPE_DECIMAL;
; 6076 :                iColLth = 40;
; 6077 :                break;
; 6078 : 
; 6079 :             case SQL_TYPE_DATE:
; 6080 :             case SQL_DATE:
; 6081 :                szDataType[ 0 ] = zTYPE_DATE;
; 6082 :                iColLth = 4;
; 6083 :                break;
; 6084 : 
; 6085 :             case SQL_TYPE_TIME:
; 6086 :             case SQL_TIME:
; 6087 :                szDataType[ 0 ] = zTYPE_TIME;
; 6088 :                iColLth = 4;
; 6089 :                break;
; 6090 : 
; 6091 :             case SQL_TYPE_TIMESTAMP:
; 6092 :             case SQL_TIMESTAMP:
; 6093 :                szDataType[ 0 ] = zTYPE_DATETIME;
; 6094 :                iColLth = 4;
; 6095 :                break;
; 6096 : 
; 6097 :             case SQL_BINARY:
; 6098 :             case SQL_VARBINARY:
; 6099 :             case SQL_LONGVARBINARY:
; 6100 :                szDataType[ 0 ] = zTYPE_BLOB;
; 6101 :                break;
; 6102 : 
; 6103 :             default:
; 6104 :                TraceLineS( "Unknown datatype = ", szDataTypeName );
; 6105 :                TraceLineI( "Datatype number = ", sDataType );
; 6106 :                SysMessageBox( vDTE, "DGC", "Unhandled data type", 1 );
; 6107 :                break;
; 6108 :          }
; 6109 : 
; 6110 :          // Add null terminator.
; 6111 :          szDataType[ 1 ] = 0;
; 6112 : 
; 6113 : #endif
; 6114 : 
; 6115 :       CreateEntity( vDB, "TE_FieldDataRel", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_0BA@PJGE@TE_FieldDataRel?$AA@ ; `string'
	mov	eax, DWORD PTR _vDB$[ebp]
	push	eax
	call	_CreateEntity@12

; 6116 :       SetAttributeFromString( vDB, "TE_FieldDataRel", "Name",
; 6117 :                               szColumnName );

	lea	ecx, DWORD PTR _szColumnName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_04EFNI@Name?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0BA@PJGE@TE_FieldDataRel?$AA@ ; `string'
	mov	edx, DWORD PTR _vDB$[ebp]
	push	edx
	call	_SetAttributeFromString@16

; 6118 :       SetAttributeFromInteger( vDB, "TE_FieldDataRel", "Length",
; 6119 :                                iColLth );

	mov	eax, DWORD PTR _iColLth$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_06CAAP@Length?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0BA@PJGE@TE_FieldDataRel?$AA@ ; `string'
	mov	ecx, DWORD PTR _vDB$[ebp]
	push	ecx
	call	_SetAttributeFromInteger@16

; 6120 :       SetAttributeFromString( vDB, "TE_FieldDataRel", "DataType",
; 6121 :                               szDataType );

	lea	edx, DWORD PTR _szDataType$58376[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_08FNON@DataType?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0BA@PJGE@TE_FieldDataRel?$AA@ ; `string'
	mov	eax, DWORD PTR _vDB$[ebp]
	push	eax
	call	_SetAttributeFromString@16

; 6122 :    }

	jmp	SHORT $L58374
$L58375:

; 6123 : 
; 6124 : #if defined( DB2 ) || defined( ODBC )
; 6125 : 
; 6126 :       nRC = SQLCloseCursor( lpConnection->hstmt );
; 6127 :       SQL_RC( "SQLCloseCursor", nRC, 0, 0, 2 );
; 6128 : 
; 6129 : #endif
; 6130 : 
; 6131 :    } // For each Table

	jmp	$L58371
$L58372:

; 6132 : 
; 6133 :    // Load Indexes.
; 6134 :    for ( nRC = SetCursorFirstEntity( vDB, "TE_TablRec", 0 );
; 6135 :          nRC >= zCURSOR_SET;
; 6136 :          nRC = SetCursorNextEntity( vDB, "TE_TablRec", 0 ) )

	push	0
	push	OFFSET FLAT:??_C@_0L@NCMM@TE_TablRec?$AA@ ; `string'
	mov	ecx, DWORD PTR _vDB$[ebp]
	push	ecx
	call	_SetCursorFirstEntity@12
	mov	WORD PTR _nRC$[ebp], ax
	jmp	SHORT $L58381
$L58382:
	push	0
	push	OFFSET FLAT:??_C@_0L@NCMM@TE_TablRec?$AA@ ; `string'
	mov	edx, DWORD PTR _vDB$[ebp]
	push	edx
	call	_SetCursorNextEntity@12
	mov	WORD PTR _nRC$[ebp], ax
$L58381:
	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	jl	$L58383

; 6138 :       GetStringFromAttribute( szTableName, vDB, "TE_TablRec", "Name" );

	push	OFFSET FLAT:??_C@_04EFNI@Name?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0L@NCMM@TE_TablRec?$AA@ ; `string'
	mov	ecx, DWORD PTR _vDB$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szTableName$[ebp]
	push	edx
	call	_GetStringFromAttribute@16
$L58385:

; 6139 : 
; 6140 : #if defined( DB2 ) || defined( ODBC )
; 6141 :       nRC = SQLStatistics( lpConnection->hstmt, 0, 0, 0, 0, szTableName,
; 6142 :                         SQL_NTS, SQL_INDEX_ALL, 0 );
; 6143 :       SQL_RC( "SQLStatistics", nRC, "Get index list", 0, 1 );
; 6144 : 
; 6145 :       SQLBindCol( lpConnection->hstmt, 5, SQL_C_CHAR, szIndexQual,
; 6146 :                   STR_LEN, &cbTableNameLth );
; 6147 :       SQLBindCol( lpConnection->hstmt, 6, SQL_C_CHAR, szIndexName,
; 6148 :                   STR_LEN, &cbIndexNameLth );
; 6149 :       SQLBindCol( lpConnection->hstmt, 9, SQL_C_CHAR, szColumnName,
; 6150 :                   STR_LEN, &cbColumnNameLth );
; 6151 :       SQLBindCol( lpConnection->hstmt, 11, SQL_C_SLONG, &iCardinality,
; 6152 :                   0, &cbCardinality );
; 6153 : 
; 6154 : #endif
; 6155 : 
; 6156 :       while ( TRUE )

	mov	eax, 1
	test	eax, eax
	je	$L58386

; 6158 : #if defined( DB2 ) || defined( ODBC )
; 6159 : 
; 6160 :          nRC = SQLFetch( lpConnection->hstmt );
; 6161 :          SQL_RC( "SQLFetch", nRC, "Fetch column name", 0, 1 );
; 6162 :          if ( !RC_SUCCESSFUL( nRC ) )
; 6163 :             break;
; 6164 : 
; 6165 :          // If index name is null, then the current row is a "stat" table
; 6166 :          // so we'll ignore it.
; 6167 :          if ( cbIndexNameLth == SQL_NULL_DATA )
; 6168 :             continue;
; 6169 : #endif
; 6170 : 
; 6171 :          // Does the index already exist?
; 6172 :          if ( SetCursorFirstEntityByString( vDB, "TE_TablRecKey", "IndexName",
; 6173 :                                             szIndexName, 0 ) < zCURSOR_SET )

	push	0
	lea	ecx, DWORD PTR _szIndexName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_09CEBI@IndexName?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0O@LKEB@TE_TablRecKey?$AA@ ; `string'
	mov	edx, DWORD PTR _vDB$[ebp]
	push	edx
	call	_SetCursorFirstEntityByString@20
	movsx	eax, ax
	test	eax, eax
	jge	SHORT $L58387

; 6175 :             CreateEntity( vDB, "TE_TablRecKey", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_0O@LKEB@TE_TablRecKey?$AA@ ; `string'
	mov	ecx, DWORD PTR _vDB$[ebp]
	push	ecx
	call	_CreateEntity@12

; 6176 :             SetAttributeFromString( vDB, "TE_TablRecKey", "IndexName", szIndexName );

	lea	edx, DWORD PTR _szIndexName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_09CEBI@IndexName?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0O@LKEB@TE_TablRecKey?$AA@ ; `string'
	mov	eax, DWORD PTR _vDB$[ebp]
	push	eax
	call	_SetAttributeFromString@16

; 6177 :             SetAttributeFromString( vDB, "TE_TablRecKey", "Name",
; 6178 :                                     "Retrieved From DB" );

	push	OFFSET FLAT:??_C@_0BC@JFAB@Retrieved?5From?5DB?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_04EFNI@Name?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0O@LKEB@TE_TablRecKey?$AA@ ; `string'
	mov	ecx, DWORD PTR _vDB$[ebp]
	push	ecx
	call	_SetAttributeFromString@16
$L58387:

; 6180 : 
; 6181 :          // Find the column in the column list.
; 6182 :          if ( SetCursorFirstEntityByString( vDB, "TE_FieldDataRel", "Name",
; 6183 :                                             szColumnName, 0 ) >= zCURSOR_SET )

	push	0
	lea	edx, DWORD PTR _szColumnName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_04EFNI@Name?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0BA@PJGE@TE_FieldDataRel?$AA@ ; `string'
	mov	eax, DWORD PTR _vDB$[ebp]
	push	eax
	call	_SetCursorFirstEntityByString@20
	movsx	ecx, ax
	test	ecx, ecx
	jl	SHORT $L58392

; 6185 :             IncludeSubobjectFromSubobject( vDB, "TE_FieldDataRelKey",
; 6186 :                                            vDB, "TE_FieldDataRel", zPOS_LAST );

	push	2
	push	OFFSET FLAT:??_C@_0BA@PJGE@TE_FieldDataRel?$AA@ ; `string'
	mov	edx, DWORD PTR _vDB$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BD@EGMP@TE_FieldDataRelKey?$AA@ ; `string'
	mov	eax, DWORD PTR _vDB$[ebp]
	push	eax
	call	_IncludeSubobjectFromSubobject@20
$L58392:

; 6188 :       }

	jmp	$L58385
$L58386:

; 6189 : 
; 6190 : #if defined( DB2 ) || defined( ODBC )
; 6191 : 
; 6192 :       nRC = SQLCloseCursor( lpConnection->hstmt );
; 6193 :       SQL_RC( "SQLCloseCursor", nRC, 0, 0, 2 );
; 6194 : 
; 6195 : #endif
; 6196 : 
; 6197 :    } // For each Table

	jmp	$L58382
$L58383:

; 6198 : 
; 6199 : #if defined( DB2 ) || defined( ODBC )
; 6200 : 
; 6201 :    SQLFreeHandle( SQL_HANDLE_STMT, (SQLHANDLE) lpConnection->hstmt );
; 6202 :    SQLFreeHandle( SQL_HANDLE_DBC,  (SQLHANDLE) lpConnection->hdbc );
; 6203 :    SQLFreeHandle( SQL_HANDLE_ENV,  (SQLHANDLE) lpConnection->henv);
; 6204 : 
; 6205 : #endif
; 6206 : 
; 6207 :    return( 0 );

	xor	ax, ax

; 6208 : }

	pop	edi
	mov	esp, ebp
	pop	ebp
	ret	8
_RetrieveSchema@8 ENDP
_TEXT	ENDS
END
