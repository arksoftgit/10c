	TITLE	C:\10C\w\oe\KZOENGWA.C
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
;	COMDAT ??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EJ@IEEH@OE?5Setting?5Kill?5Timer?5for?5hWnd?3?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@DHCP@Zencas?5Timeout?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0HH@FDKC@Due?5to?5inactivity?0?5your?5Zencas?5s@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@NDGH@KillZeidon?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@FEGN@KillZeidon?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@DEP@KZOENGWA?5?9?5INIT?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@LPGD@Can?8t?5create?5init?5mutex?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@INJH@Zeidon?5Object?5Engine?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@EHCJ@KZOENGWA?5?9?5INIT?52?$CB?$CB?$CB?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DB@OEHN@Only?5one?5instance?5of?5KZOENGWA?5ca@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@MKDE@Engine?5started?5for?5Win32?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@CLEH@TRACE_ACCEL?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@GCKC@Zeidon?5?9?5Object?5Services?5Init?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07HGFN@TimeOut?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@CBEN@Object?5Services?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CK@DMIG@TimeOut?5requires?5KillZeidon?5spec@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@JCD@Wrap?5to?5continue?5search?$DP?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@KPKA@Search?5string?5not?5found?5?9?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0HF@FBII@Zeidon?5Applications?5are?5still?5ac@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NOHJ@?$CIwa?$CJ?5nCountry?5?3?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@HBGB@?$CIwa?$CJ?5lpCountry?5?3?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@KHIN@?$CIwa?$CJ?5lpLanguage?5?3?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@LFNC@?$CIwa?$CJ?5lpList?5?3?5?5?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NDCM@?$CIwa?$CJ?5nMeasure?5?3?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@KAEI@?$CIwa?$CJ?5nTime?5?3?5?5?5?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@EAFP@?$CIwa?$CJ?5lpTime?5?3?5?5?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NNND@?$CIwa?$CJ?5lp1159?5?3?5?5?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@LOPD@?$CIwa?$CJ?5lp2359?5?3?5?5?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@KEHA@?$CIwa?$CJ?5nTLZero?5?3?5?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@BLBB@?$CIwa?$CJ?5lpShortDate?5?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@KHCE@?$CIwa?$CJ?5lpLongDate?5?3?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@CKIL@?$CIwa?$CJ?5lpTimeFmt?5?3?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@HDJM@?$CIwa?$CJ?5lpCurrency?5?3?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@CFHL@?$CIwa?$CJ?5nCurrency?5?3?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@JENA@?$CIwa?$CJ?5nCurrDigits?5?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@HLGF@?$CIwa?$CJ?5nNegCurr?5?3?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@KPDD@?$CIwa?$CJ?5lpThousand?5?3?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@OKLB@?$CIwa?$CJ?5lpDecimal?5?3?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@BHPJ@?$CIwa?$CJ?5nDigits?5?3?5?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@LDIE@?$CIwa?$CJ?5nLZero?5?3?5?5?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@JDNP@is?5available?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CD@LNDP@?$CIwa?$CJ?5No?5international?5informatio@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@HELH@Anchor?5Block?5?5Alloc?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09DEGO@?5?5?5Used?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09CCLP@?5?5?5Free?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@LCKF@ListTasks?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@BDI@?5Page?5table?5info?5?9?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@ENOG@Application?3?8?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01HAF@?8?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@FJJG@?5?5?5View?5Object?3?8?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EJ@LIIE@OE?5Setting?5Idle?5Timer?5for?5hWnd?3?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07HGKM@LogFile?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@IIPE@KZOENGWA?5?9?5Termination?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06HLLH@ZEIDON?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@BDD@?2zeidon?4ini?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08DEFM@LocalDir?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@PHEL@Workstation?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@KGLP@ZeidonRT?4ini?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09DHE@WindowPos?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@JELK@ObjectEngine?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09GJAL@LineLimit?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@BBKE@FindString?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@LCCA@ScrollTrace?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@LPJH@PrintPreview?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@GPAK@PrintDialog?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@ONLI@TraceOE_Warning?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@LKED@TraceAction?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08LOC@TraceWeb?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@BPGN@ShowTaskID?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EG@IDAN@Zeidon?5Applications?5are?5still?5ac@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0EJ@DBP@Zeidon?5Applications?5are?5still?5ac@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CE@GKN@?$CIwa?$CJ?5changing?5international?5info@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@JBPE@?$CF04d?$CF02d?$CF02d?$CF02d?$CF02d?$CF02d?4log?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@GAAD@?$CIng?$CJ?5Log?5file?5Opened?5?8?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08MHKG@KZOENGWA?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@GAJF@Trace?5Window?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07NOMM@ListBox?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@BKNN@TraceWindows?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08HAKP@KZOESRVC?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CA@IALB@?9?9?9?9Zeidon?5configuration?5file?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CA@CFIG@?9?9LocalDir?5configuration?5file?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@MLFP@ShowOpenFile?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@ECJL@ShowOI_Times?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@JIDB@ShowTaskMsgs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@CIFG@WindowStartup?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06OCEO@Hidden?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07HBBA@SysTray?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@OFEG@DropEngineIfNoTasks?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06EJJP@NETAPI?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@CCDD@NetWkstaGetInfo?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09MKCM@Encrypted?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08GKHP@KZDBHWOB?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04DIDG@ROOT?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@LPAB@StartMessage?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07FGLN@?$FLDebug?$FN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@HFDH@Object?5Engine?5Start?5Message?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DB@GEK@?$CIkzoengwa?$CJ?5DBH?5Trace?5Level?5for?5a@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@GHMC@Error?5opening?5trace?5file?$CB?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@OAGF@?$CIng?$CJ?5End?5of?5Log?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01PCFE@?2?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@IJAA@ZEIDON00?4LOG?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_g_uTraceLineLimit
PUBLIC	_g_chScrollTrace
PUBLIC	_g_chTraceOE_Warning
PUBLIC	_g_chTraceZDrActions
PUBLIC	_g_chTraceWebActions
PUBLIC	_g_chTraceMemory
PUBLIC	_g_chPrintPreview
PUBLIC	_g_chPrintDialog
PUBLIC	_g_wOENG_Message
PUBLIC	_szClassName
PUBLIC	_szThreadClassName
PUBLIC	_g_szTimeStamp
PUBLIC	_g_lTimeOut
PUBLIC	_g_uIdleTimerId
PUBLIC	_g_uKillTimerId
PUBLIC	_g_nIdIdleEvt
PUBLIC	_g_nIdKillEvt
PUBLIC	_g_hLogFile
PUBLIC	_szZeidonParmName
PUBLIC	_szLogFileName
PUBLIC	_szlWorkstation
PUBLIC	_szlUserID
PUBLIC	_szlPassword
PUBLIC	_szlINTL
PUBLIC	_szPlaceFormat
PUBLIC	_szMark
PUBLIC	_g_lMark
PUBLIC	_g_vSystemTaskView
PUBLIC	_g_bThreadStarted
PUBLIC	_AnchorBlock
_DATA	SEGMENT
COMM	_hInst:DWORD
COMM	_g_hWndMainFrame:DWORD
_DATA	ENDS
_BSS	SEGMENT
_g_chScrollTrace DB 01H DUP (?)
	ALIGN	4

_g_chTraceOE_Warning DB 01H DUP (?)
	ALIGN	4

_g_chTraceZDrActions DB 01H DUP (?)
	ALIGN	4

_g_chTraceWebActions DB 01H DUP (?)
	ALIGN	4

_g_chTraceMemory DB 01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
COMM	_g_szZeidonEnvDirectory:BYTE:0105H
COMM	_g_szFindString:BYTE:0100H
COMM	_g_szCopyBuffer:BYTE:0200H
_DATA	ENDS
_BSS	SEGMENT
	ALIGN	4

_g_chPrintPreview DB 01H DUP (?)
	ALIGN	4

_g_chPrintDialog DB 01H DUP (?)
	ALIGN	4

_g_wOENG_Message DD 01H DUP (?)
_g_szTimeStamp DB 014H DUP (?)
_g_lTimeOut DD	01H DUP (?)
_g_uIdleTimerId DD 01H DUP (?)
_g_uKillTimerId DD 01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
COMM	_g_hWndLB:DWORD
COMM	_g_hwndTraceWindow:DWORD:014H
COMM	_g_nTraceWindowCnt:DWORD
COMM	_g_nTraceWindowHead:DWORD
COMM	_g_nTraceWindowDisplayed:DWORD
COMM	_fpAbout:DWORD
COMM	_fpLogon:DWORD
COMM	_fpSetTrace:DWORD
COMM	_fpLogTrace:DWORD
COMM	_fpTraceList:DWORD
COMM	_fpLineLimit:DWORD
COMM	_fpFindString:DWORD
COMM	_fpShowDLL:DWORD
COMM	_fpSqlServerErrHandler:DWORD
COMM	_fpSqlServerMsgHandler:DWORD
COMM	_fpDfltListWndProc:DWORD
_DATA	ENDS
_BSS	SEGMENT
_szLogFileName DB 0100H DUP (?)
_g_lMark DD	01H DUP (?)
_g_vSystemTaskView DD 01H DUP (?)
_g_bThreadStarted DB 01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
COMM	_g_hThread:DWORD
COMM	_g_dwThreadID:DWORD
COMM	_g_hThreadWnd:DWORD
_DATA	ENDS
_BSS	SEGMENT
	ALIGN	4

_AnchorBlock DD	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
_g_uTraceLineLimit DD 0fa0H
_szClassName DB	'KZOENGWAWClass', 00H
	ORG $+1
_szThreadClassName DB 'KZOENGWAW_Thread_Class', 00H
	ORG $+1
_g_nIdIdleEvt DD 0eH
_g_nIdKillEvt DD 0fH
_g_hLogFile DD	0ffffffffH
_DATA	ENDS
CONST	SEGMENT
_szZeidonParmName DB 'ZEIDON', 00H
CONST	ENDS
_DATA	SEGMENT
_szlWorkstation DB '[Workstation]', 00H
	ORG $+2
_szlUserID DB	'UserID', 00H
	ORG $+1
_szlPassword DB	'Password', 00H
	ORG $+3
_szlINTL DB	'Intl', 00H
	ORG $+3
_szPlaceFormat DB '%u,%u,%d,%d,%d,%d,%d,%d,%d,%d', 00H
	ORG $+2
_szMark	DB	'|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-'
	DB	'|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|', 00H
_DATA	ENDS
PUBLIC	_fnThreadProc@4
PUBLIC	??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@	; `string'
EXTRN	__imp__CreateWindowExA@48:NEAR
EXTRN	__imp__GetMessageA@16:NEAR
EXTRN	__imp__TranslateMessage@4:NEAR
EXTRN	__imp__DispatchMessageA@4:NEAR
EXTRN	__imp__TranslateAcceleratorA@12:NEAR
;	COMDAT ??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@
; File C:\10C\w\oe\KZOENGWA.C
_DATA	SEGMENT
??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@ DB 'Zeidon Object Services', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_msg$ = -28
_fnThreadProc@4 PROC NEAR

; 248  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 249  :    MSG msg;
; 250  : 
; 251  :    g_hThreadWnd = CreateWindow(
; 252  :       szThreadClassName,              // see RegisterClass( ) call
; 253  :       "Zeidon Object Services",       // text for window title bar
; 254  :       0,                              // window style
; 255  :       0,                              // default horizontal position
; 256  :       0,                              // default vertical position
; 257  :       0,                              // default width
; 258  :       0,                              // default height
; 259  :       0,                              // overlapped windows have no parent
; 260  :       0,                              // menu for trace window
; 261  :       hInst,                          // this instance owns this window
; 262  :       0                               // pointer not needed
; 263  :    );

	push	0
	mov	eax, DWORD PTR _hInst
	push	eax
	push	0
	push	0
	push	0
	push	0
	push	0
	push	0
	push	0
	push	OFFSET FLAT:??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@ ; `string'
	push	OFFSET FLAT:_szThreadClassName
	push	0
	call	DWORD PTR __imp__CreateWindowExA@48
	mov	DWORD PTR _g_hThreadWnd, eax

; 264  : 
; 265  :    g_bThreadStarted = TRUE;

	mov	BYTE PTR _g_bThreadStarted, 1
$L59578:

; 266  : 
; 267  :    // Acquire and dispatch messages until a WM_QUIT message is received
; 268  :    while ( GetMessage( &msg,          // message structure
; 269  :                        g_hThreadWnd,  // handle of window receiving the message
; 270  :                        0,             // lowest message to examine
; 271  :                        0 ) )          // highest message to examine

	push	0
	push	0
	mov	ecx, DWORD PTR _g_hThreadWnd
	push	ecx
	lea	edx, DWORD PTR _msg$[ebp]
	push	edx
	call	DWORD PTR __imp__GetMessageA@16
	test	eax, eax
	je	SHORT $L59579

; 273  :       if ( !TranslateAccelerator( g_hThreadWnd, 0, &msg ) )

	lea	eax, DWORD PTR _msg$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _g_hThreadWnd
	push	ecx
	call	DWORD PTR __imp__TranslateAcceleratorA@12
	test	eax, eax
	jne	SHORT $L59580

; 275  :          TranslateMessage( &msg );    // Translate message

	lea	edx, DWORD PTR _msg$[ebp]
	push	edx
	call	DWORD PTR __imp__TranslateMessage@4

; 276  :          DispatchMessage( &msg );     // Dispatches message to window

	lea	eax, DWORD PTR _msg$[ebp]
	push	eax
	call	DWORD PTR __imp__DispatchMessageA@4
$L59580:

; 278  :    }

	jmp	SHORT $L59578
$L59579:

; 279  : 
; 280  : #ifndef __BORLANDC__
; 281  :    return( msg.wParam );              // returns the value from PostQuitMessage

	mov	eax, DWORD PTR _msg$[ebp+8]

; 282  : #endif
; 283  : }

	mov	esp, ebp
	pop	ebp
	ret	4
_fnThreadProc@4 ENDP
_TEXT	ENDS
PUBLIC	_MainWndProc@16
PUBLIC	_fnProcessOENG_Message
PUBLIC	_MainThrdWndProc@16
PUBLIC	??_C@_0EJ@IEEH@OE?5Setting?5Kill?5Timer?5for?5hWnd?3?5@ ; `string'
PUBLIC	??_C@_0P@DHCP@Zencas?5Timeout?$AA@		; `string'
PUBLIC	??_C@_0HH@FDKC@Due?5to?5inactivity?0?5your?5Zencas?5s@ ; `string'
PUBLIC	??_C@_0L@NDGH@KillZeidon?$AA@			; `string'
PUBLIC	??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@		; `string'
PUBLIC	??_C@_0N@FEGN@KillZeidon?3?5?$AA@		; `string'
EXTRN	_TraceLineS@8:NEAR
EXTRN	_TraceLine:NEAR
EXTRN	_SysReadZeidonIni@16:NEAR
EXTRN	__imp__Sleep@4:NEAR
EXTRN	__imp__WinExec@8:NEAR
EXTRN	__imp__MessageBoxA@16:NEAR
EXTRN	__imp__SetTimer@16:NEAR
EXTRN	__imp__KillTimer@8:NEAR
EXTRN	__imp__PostMessageA@16:NEAR
EXTRN	_SysGetDateTime@4:NEAR
EXTRN	_SysGetDateTimeDifference@16:NEAR
EXTRN	__imp__DefWindowProcA@16:NEAR
EXTRN	__imp__PostQuitMessage@4:NEAR
;	COMDAT ??_C@_0EJ@IEEH@OE?5Setting?5Kill?5Timer?5for?5hWnd?3?5@
; File C:\10C\w\oe\KZOENGWA.C
_DATA	SEGMENT
??_C@_0EJ@IEEH@OE?5Setting?5Kill?5Timer?5for?5hWnd?3?5@ DB 'OE Setting Ki'
	DB	'll Timer for hWnd: 0x%08x   g_hWndMainFrame: 0x%08x  Id: %d', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@DHCP@Zencas?5Timeout?$AA@
_DATA	SEGMENT
??_C@_0P@DHCP@Zencas?5Timeout?$AA@ DB 'Zencas Timeout', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0HH@FDKC@Due?5to?5inactivity?0?5your?5Zencas?5s@
_DATA	SEGMENT
??_C@_0HH@FDKC@Due?5to?5inactivity?0?5your?5Zencas?5s@ DB 'Due to inactiv'
	DB	'ity, your Zencas session will', 0aH, 'be timed out in one min'
	DB	'ute. Click OK if you', 0aH, 'want to continue using Zencas.', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@NDGH@KillZeidon?$AA@
_DATA	SEGMENT
??_C@_0L@NDGH@KillZeidon?$AA@ DB 'KillZeidon', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@
_DATA	SEGMENT
??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ DB '[ObjectEngine]', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@FEGN@KillZeidon?3?5?$AA@
_DATA	SEGMENT
??_C@_0N@FEGN@KillZeidon?3?5?$AA@ DB 'KillZeidon: ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hWnd$ = 8
_uMsg$ = 12
_wParam$ = 16
_lParam$ = 20
_szFileName$59597 = -264
_uIdTimer$59598 = -4
_lDiffSeconds$59600 = -288
_szDateTime$59601 = -284
_nRC$59603 = -292
_MainThrdWndProc@16 PROC NEAR

; 290  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 296				; 00000128H

; 291  :    switch ( uMsg )
; 292  :    {

	mov	eax, DWORD PTR _uMsg$[ebp]
	mov	DWORD PTR -296+[ebp], eax
	cmp	DWORD PTR -296+[ebp], 273		; 00000111H
	ja	SHORT $L60780
	cmp	DWORD PTR -296+[ebp], 273		; 00000111H
	je	$L59615
	cmp	DWORD PTR -296+[ebp], 2
	je	SHORT $L59595
	cmp	DWORD PTR -296+[ebp], 16		; 00000010H
	je	$L59614
	jmp	$L59616
$L60780:
	cmp	DWORD PTR -296+[ebp], 275		; 00000113H
	je	SHORT $L59596
	jmp	$L59616
$L59595:

; 293  :       case WM_DESTROY:                // message: window being destroyed
; 294  :          PostQuitMessage( 0 );

	push	0
	call	DWORD PTR __imp__PostQuitMessage@4

; 295  :          break;

	jmp	$L59592
$L59596:

; 299  :          zCHAR szFileName[ zMAX_FILENAME_LTH + 1 ];
; 300  :          UINT uIdTimer = wParam;

	mov	ecx, DWORD PTR _wParam$[ebp]
	mov	DWORD PTR _uIdTimer$59598[ebp], ecx

; 301  : 
; 302  :       // TraceLine( "WM_TIMER !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! %d  Wnd: 0x%08x", uIdTimer, hWnd );
; 303  : 
; 304  :          if ( uIdTimer == g_uIdleTimerId )

	mov	edx, DWORD PTR _uIdTimer$59598[ebp]
	cmp	edx, DWORD PTR _g_uIdleTimerId
	jne	$L59599

; 306  :             zLONG lDiffSeconds;
; 307  :             zCHAR szDateTime[ 20 ];
; 308  : 
; 309  :          // TraceLine( "App idle for count %d", lCount );
; 310  : 
; 311  :             SysGetDateTime( szDateTime );

	lea	eax, DWORD PTR _szDateTime$59601[ebp]
	push	eax
	call	_SysGetDateTime@4

; 312  :             SysGetDateTimeDifference( &lDiffSeconds,
; 313  :                                       g_szTimeStamp,
; 314  :                                       szDateTime, zDT_SECOND );

	push	5
	lea	ecx, DWORD PTR _szDateTime$59601[ebp]
	push	ecx
	push	OFFSET FLAT:_g_szTimeStamp
	lea	edx, DWORD PTR _lDiffSeconds$59600[ebp]
	push	edx
	call	_SysGetDateTimeDifference@16

; 315  :             if ( g_uKillTimerId == 0 && lDiffSeconds > g_lTimeOut )

	cmp	DWORD PTR _g_uKillTimerId, 0
	jne	$L59607
	mov	eax, DWORD PTR _lDiffSeconds$59600[ebp]
	cmp	eax, DWORD PTR _g_lTimeOut
	jle	$L59607

; 317  :                int nRC;
; 318  : 
; 319  :                TraceLine( "OE Setting Kill Timer for hWnd: 0x%08x   g_hWndMainFrame: 0x%08x  Id: %d",
; 320  :                           hWnd, g_hWndMainFrame, g_nIdKillEvt );

	mov	ecx, DWORD PTR _g_nIdKillEvt
	push	ecx
	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0EJ@IEEH@OE?5Setting?5Kill?5Timer?5for?5hWnd?3?5@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H

; 321  :                g_uKillTimerId = SetTimer( hWnd, g_nIdKillEvt,
; 322  :                                           60000, 0 );  // 60000 ==> one minute

	push	0
	push	60000					; 0000ea60H
	mov	ecx, DWORD PTR _g_nIdKillEvt
	push	ecx
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__SetTimer@16
	mov	DWORD PTR _g_uKillTimerId, eax

; 323  :                nRC = MessageBox( hWnd, "Due to inactivity, your Zencas session will\n"
; 324  :                                    "be timed out in one minute. Click OK if you\n"
; 325  :                                    "want to continue using Zencas.",
; 326  :                                  "Zencas Timeout", MB_OK | MB_ICONSTOP | MB_TOPMOST | MB_APPLMODAL );

	push	262160					; 00040010H
	push	OFFSET FLAT:??_C@_0P@DHCP@Zencas?5Timeout?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0HH@FDKC@Due?5to?5inactivity?0?5your?5Zencas?5s@ ; `string'
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__MessageBoxA@16
	mov	DWORD PTR _nRC$59603[ebp], eax

; 327  :                if ( nRC == IDOK )

	cmp	DWORD PTR _nRC$59603[ebp], 1
	jne	SHORT $L59607

; 329  :                   if ( g_uKillTimerId )

	cmp	DWORD PTR _g_uKillTimerId, 0
	je	SHORT $L59608

; 331  :                      KillTimer( hWnd, g_uKillTimerId );

	mov	ecx, DWORD PTR _g_uKillTimerId
	push	ecx
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__KillTimer@8

; 332  :                      g_uKillTimerId = 0;

	mov	DWORD PTR _g_uKillTimerId, 0
$L59608:

; 334  : 
; 335  :                   SysGetDateTime( g_szTimeStamp );

	push	OFFSET FLAT:_g_szTimeStamp
	call	_SysGetDateTime@4
$L59607:

; 338  : 
; 339  :             return( 0 );  // an application should return zero if it processes this message

	xor	eax, eax
	jmp	$L59590
$L59599:

; 341  : 
; 342  :          if ( uIdTimer == g_uKillTimerId )

	mov	eax, DWORD PTR _uIdTimer$59598[ebp]
	cmp	eax, DWORD PTR _g_uKillTimerId
	jne	SHORT $L59609

; 344  :             KillTimer( g_hWndMainFrame, g_uKillTimerId );

	mov	ecx, DWORD PTR _g_uKillTimerId
	push	ecx
	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	call	DWORD PTR __imp__KillTimer@8

; 345  :             g_uKillTimerId = 0;

	mov	DWORD PTR _g_uKillTimerId, 0

; 346  : 
; 347  :             SysReadZeidonIni( -1, "[ObjectEngine]", "KillZeidon", szFileName );

	lea	eax, DWORD PTR _szFileName$59597[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0L@NDGH@KillZeidon?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 348  :             if ( szFileName[ 0 ] )

	movsx	ecx, BYTE PTR _szFileName$59597[ebp]
	test	ecx, ecx
	je	SHORT $L59612

; 350  :                TraceLineS( "KillZeidon: ", szFileName );

	lea	edx, DWORD PTR _szFileName$59597[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0N@FEGN@KillZeidon?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 351  :                Sleep( 5000 );

	push	5000					; 00001388H
	call	DWORD PTR __imp__Sleep@4

; 352  :                WinExec( szFileName, SW_SHOWNORMAL );

	push	1
	lea	eax, DWORD PTR _szFileName$59597[ebp]
	push	eax
	call	DWORD PTR __imp__WinExec@8
$L59612:

; 354  : 
; 355  :             return( 0 );  // an application should return zero if it processes this message

	xor	eax, eax
	jmp	SHORT $L59590
$L59609:

; 357  : 
; 358  :          return( 1 ); // we did not process the timer message

	mov	eax, 1
	jmp	SHORT $L59590
$L59614:

; 360  : 
; 361  :       case WM_CLOSE:
; 362  :          PostMessage( g_hWndMainFrame, WM_CLOSE, 0, 0 );

	push	0
	push	0
	push	16					; 00000010H
	mov	ecx, DWORD PTR _g_hWndMainFrame
	push	ecx
	call	DWORD PTR __imp__PostMessageA@16

; 363  :          return( 0 ); // do not call DefWindProc

	xor	eax, eax
	jmp	SHORT $L59590
$L59615:

; 364  :                       // Hartmut:
; 365  :                       // I think, I solved the problem.  It is triggered
; 366  :                       // by "DropEngineIfNoTasks".  The invisible
; 367  :                       // "Thread Main Window" gets WM_CLOSE and promotes
; 368  :                       // the WM_CLOSE to the visible main window.  It
; 369  :                       // should NOT call DefWndProc (which sends
; 370  :                       // WM_DESTROY), which causes the problem of
; 371  :                       // extremely slow shutdown ... probably due to a
; 372  :                       // race condition (MUTEX) between the 2 threads.
; 373  :       // break;
; 374  : 
; 375  :       case WM_COMMAND:
; 376  :          return( MainWndProc( hWnd, uMsg, wParam, lParam ) );

	mov	edx, DWORD PTR _lParam$[ebp]
	push	edx
	mov	eax, DWORD PTR _wParam$[ebp]
	push	eax
	mov	ecx, DWORD PTR _uMsg$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	_MainWndProc@16
	jmp	SHORT $L59590
$L59616:

; 377  : 
; 378  :       default:
; 379  :          if ( uMsg == g_wOENG_Message )

	mov	eax, DWORD PTR _uMsg$[ebp]
	cmp	eax, DWORD PTR _g_wOENG_Message
	jne	SHORT $L59617

; 380  :             fnProcessOENG_Message( hWnd, uMsg, wParam, lParam );

	mov	ecx, DWORD PTR _lParam$[ebp]
	push	ecx
	mov	edx, DWORD PTR _wParam$[ebp]
	push	edx
	mov	eax, DWORD PTR _uMsg$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	_fnProcessOENG_Message
	add	esp, 16					; 00000010H
$L59617:
$L59592:

; 382  : 
; 383  :    return( DefWindowProc( hWnd, uMsg, wParam, lParam ) );

	mov	edx, DWORD PTR _lParam$[ebp]
	push	edx
	mov	eax, DWORD PTR _wParam$[ebp]
	push	eax
	mov	ecx, DWORD PTR _uMsg$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__DefWindowProcA@16
$L59590:

; 384  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_MainThrdWndProc@16 ENDP
_TEXT	ENDS
PUBLIC	_InitInstance
PUBLIC	_InitApplication
PUBLIC	??_C@_0BA@DEP@KZOENGWA?5?9?5INIT?$AA@		; `string'
PUBLIC	??_C@_0BI@LPGD@Can?8t?5create?5init?5mutex?$AA@	; `string'
PUBLIC	??_C@_0BF@INJH@Zeidon?5Object?5Engine?$AA@	; `string'
PUBLIC	??_C@_0BF@EHCJ@KZOENGWA?5?9?5INIT?52?$CB?$CB?$CB?$AA@ ; `string'
PUBLIC	??_C@_0DB@OEHN@Only?5one?5instance?5of?5KZOENGWA?5ca@ ; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_0BJ@MKDE@Engine?5started?5for?5Win32?$AA@	; `string'
PUBLIC	??_C@_0M@CLEH@TRACE_ACCEL?$AA@			; `string'
PUBLIC	??_C@_0BO@GCKC@Zeidon?5?9?5Object?5Services?5Init?$AA@ ; `string'
PUBLIC	??_C@_07HGFN@TimeOut?$AA@			; `string'
PUBLIC	??_C@_0BA@CBEN@Object?5Services?$AA@		; `string'
PUBLIC	??_C@_0CK@DMIG@TimeOut?5requires?5KillZeidon?5spec@ ; `string'
PUBLIC	_WinMain@16
EXTRN	__imp__RemoveMenu@12:NEAR
EXTRN	_SysMessageBox@16:NEAR
EXTRN	_atol:NEAR
EXTRN	__imp__SetEvent@4:NEAR
EXTRN	__imp__ReleaseMutex@4:NEAR
EXTRN	__imp__WaitForSingleObject@8:NEAR
EXTRN	__imp__CreateMutexA@12:NEAR
EXTRN	__imp__OpenMutexA@12:NEAR
EXTRN	__imp__CreateEventA@16:NEAR
EXTRN	__pctype:DWORD
EXTRN	__isctype:NEAR
EXTRN	__imp__CloseHandle@4:NEAR
EXTRN	_toupper:NEAR
EXTRN	___mb_cur_max:DWORD
EXTRN	__imp__LoadAcceleratorsA@8:NEAR
EXTRN	__imp__GetMenu@4:NEAR
EXTRN	_memset:NEAR
EXTRN	__imp__DrawMenuBar@4:NEAR
EXTRN	__imp__GetSubMenu@8:NEAR
EXTRN	_strstr:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\w\oe\KZOENGWA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0BA@DEP@KZOENGWA?5?9?5INIT?$AA@
_DATA	SEGMENT
??_C@_0BA@DEP@KZOENGWA?5?9?5INIT?$AA@ DB 'KZOENGWA - INIT', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@LPGD@Can?8t?5create?5init?5mutex?$AA@
_DATA	SEGMENT
??_C@_0BI@LPGD@Can?8t?5create?5init?5mutex?$AA@ DB 'Can''t create init mu'
	DB	'tex', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@INJH@Zeidon?5Object?5Engine?$AA@
_DATA	SEGMENT
??_C@_0BF@INJH@Zeidon?5Object?5Engine?$AA@ DB 'Zeidon Object Engine', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@EHCJ@KZOENGWA?5?9?5INIT?52?$CB?$CB?$CB?$AA@
_DATA	SEGMENT
??_C@_0BF@EHCJ@KZOENGWA?5?9?5INIT?52?$CB?$CB?$CB?$AA@ DB 'KZOENGWA - INIT'
	DB	' 2!!!', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DB@OEHN@Only?5one?5instance?5of?5KZOENGWA?5ca@
_DATA	SEGMENT
??_C@_0DB@OEHN@Only?5one?5instance?5of?5KZOENGWA?5ca@ DB 'Only one instan'
	DB	'ce of KZOENGWA can exist at once.', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@MKDE@Engine?5started?5for?5Win32?$AA@
_DATA	SEGMENT
??_C@_0BJ@MKDE@Engine?5started?5for?5Win32?$AA@ DB 'Engine started for Wi'
	DB	'n32', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@CLEH@TRACE_ACCEL?$AA@
_DATA	SEGMENT
??_C@_0M@CLEH@TRACE_ACCEL?$AA@ DB 'TRACE_ACCEL', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@GCKC@Zeidon?5?9?5Object?5Services?5Init?$AA@
_DATA	SEGMENT
??_C@_0BO@GCKC@Zeidon?5?9?5Object?5Services?5Init?$AA@ DB 'Zeidon - Objec'
	DB	't Services Init', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_07HGFN@TimeOut?$AA@
_DATA	SEGMENT
??_C@_07HGFN@TimeOut?$AA@ DB 'TimeOut', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@CBEN@Object?5Services?$AA@
_DATA	SEGMENT
??_C@_0BA@CBEN@Object?5Services?$AA@ DB 'Object Services', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CK@DMIG@TimeOut?5requires?5KillZeidon?5spec@
_DATA	SEGMENT
??_C@_0CK@DMIG@TimeOut?5requires?5KillZeidon?5spec@ DB 'TimeOut requires '
	DB	'KillZeidon specification', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hInstance$ = 8
_lpCmdLine$ = 16
_nCmdShow$ = 20
_msg$ = -1104
_hAccel$ = -1048
_hMenu$ = -1056
_szWork$ = -264
_szCmdLineBuffer$ = -1044
_hMutex1$ = -1052
_hMutex2$ = -1064
_hServicesStarted$ = -1076
_pchZeidonDir$ = -1060
_pchSrc$ = -1068
_pchTgt$ = -1072
_WinMain@16 PROC NEAR

; 399  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 1112				; 00000458H

; 400  :    MSG    msg;        // message
; 401  :    HACCEL hAccel;
; 402  :    HMENU  hMenu;
; 403  :    zCHAR  szWork[ MAX_PATH + 1 ];
; 404  : 
; 405  : #ifdef __WIN32__
; 406  :    char szCmdLineBuffer[ 3 * MAX_PATH ];
; 407  :    HANDLE hMutex1 = 0;

	mov	DWORD PTR _hMutex1$[ebp], 0

; 408  :    HANDLE hMutex2 = 0;

	mov	DWORD PTR _hMutex2$[ebp], 0

; 409  :    HANDLE hServicesStarted;
; 410  : 
; 411  :    LPSTR pchZeidonDir = NULL;

	mov	DWORD PTR _pchZeidonDir$[ebp], 0

; 412  :    LPSTR pchSrc = NULL;

	mov	DWORD PTR _pchSrc$[ebp], 0

; 413  :    LPSTR pchTgt = NULL;

	mov	DWORD PTR _pchTgt$[ebp], 0

; 414  : 
; 415  :    memset( szCmdLineBuffer, 0, 3 * MAX_PATH );

	push	780					; 0000030cH
	push	0
	lea	eax, DWORD PTR _szCmdLineBuffer$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 416  :    memset( g_szZeidonEnvDirectory, 0, MAX_PATH + 1 );

	push	261					; 00000105H
	push	0
	push	OFFSET FLAT:_g_szZeidonEnvDirectory
	call	_memset
	add	esp, 12					; 0000000cH

; 417  :    pchSrc = lpCmdLine;

	mov	ecx, DWORD PTR _lpCmdLine$[ebp]
	mov	DWORD PTR _pchSrc$[ebp], ecx

; 418  :    pchTgt = szCmdLineBuffer;

	lea	edx, DWORD PTR _szCmdLineBuffer$[ebp]
	mov	DWORD PTR _pchTgt$[ebp], edx
$L59642:

; 419  : 
; 420  :    // convert everything to uppercase
; 421  :    while( *pchSrc )

	mov	eax, DWORD PTR _pchSrc$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L59643

; 423  :       *pchTgt = toupper( *pchSrc );

	mov	edx, DWORD PTR _pchSrc$[ebp]
	movsx	eax, BYTE PTR [edx]
	push	eax
	call	_toupper
	add	esp, 4
	mov	ecx, DWORD PTR _pchTgt$[ebp]
	mov	BYTE PTR [ecx], al

; 424  :       pchSrc++;

	mov	edx, DWORD PTR _pchSrc$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchSrc$[ebp], edx

; 425  :       pchTgt++;

	mov	eax, DWORD PTR _pchTgt$[ebp]
	add	eax, 1
	mov	DWORD PTR _pchTgt$[ebp], eax

; 426  :    }

	jmp	SHORT $L59642
$L59643:

; 427  : 
; 428  :    // search for "ZEIDON" token
; 429  :    pchZeidonDir = strstr( szCmdLineBuffer, szZeidonParmName );

	push	OFFSET FLAT:_szZeidonParmName
	lea	ecx, DWORD PTR _szCmdLineBuffer$[ebp]
	push	ecx
	call	_strstr
	add	esp, 8
	mov	DWORD PTR _pchZeidonDir$[ebp], eax
$L59645:

; 430  :    while( pchZeidonDir && *pchZeidonDir != '=' )

	cmp	DWORD PTR _pchZeidonDir$[ebp], 0
	je	SHORT $L59646
	mov	edx, DWORD PTR _pchZeidonDir$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 61					; 0000003dH
	je	SHORT $L59646

; 431  :       pchZeidonDir++;

	mov	ecx, DWORD PTR _pchZeidonDir$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchZeidonDir$[ebp], ecx
	jmp	SHORT $L59645
$L59646:

; 432  : 
; 433  :    // skip '='
; 434  :    if ( pchZeidonDir && *pchZeidonDir == '=' )

	cmp	DWORD PTR _pchZeidonDir$[ebp], 0
	je	SHORT $L59647
	mov	edx, DWORD PTR _pchZeidonDir$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	eax, 61					; 0000003dH
	jne	SHORT $L59647

; 435  :       pchZeidonDir++;

	mov	ecx, DWORD PTR _pchZeidonDir$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchZeidonDir$[ebp], ecx
$L59647:

; 436  : 
; 437  :    // eliminate leading whitespaces
; 438  :    while ( pchZeidonDir && isspace( *pchZeidonDir ) )

	cmp	DWORD PTR _pchZeidonDir$[ebp], 0
	je	SHORT $L59650
	cmp	DWORD PTR ___mb_cur_max, 1
	jle	SHORT $L60782
	push	8
	mov	edx, DWORD PTR _pchZeidonDir$[ebp]
	movsx	eax, BYTE PTR [edx]
	push	eax
	call	__isctype
	add	esp, 8
	mov	DWORD PTR -1108+[ebp], eax
	jmp	SHORT $L60783
$L60782:
	mov	ecx, DWORD PTR _pchZeidonDir$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR __pctype
	xor	ecx, ecx
	mov	cx, WORD PTR [eax+edx*2]
	and	ecx, 8
	mov	DWORD PTR -1108+[ebp], ecx
$L60783:
	cmp	DWORD PTR -1108+[ebp], 0
	je	SHORT $L59650

; 439  :       pchZeidonDir++;

	mov	edx, DWORD PTR _pchZeidonDir$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchZeidonDir$[ebp], edx
	jmp	SHORT $L59647
$L59650:

; 440  : 
; 441  :    // if current char is a " we have to copy anything up to the next " char
; 442  :    if ( pchZeidonDir && *pchZeidonDir == '"' )

	cmp	DWORD PTR _pchZeidonDir$[ebp], 0
	je	SHORT $L59651
	mov	eax, DWORD PTR _pchZeidonDir$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 34					; 00000022H
	jne	SHORT $L59651

; 444  :       pchZeidonDir++;

	mov	edx, DWORD PTR _pchZeidonDir$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchZeidonDir$[ebp], edx

; 445  :       pchTgt = g_szZeidonEnvDirectory;

	mov	DWORD PTR _pchTgt$[ebp], OFFSET FLAT:_g_szZeidonEnvDirectory
$L59653:

; 446  :       while( *pchZeidonDir != '"' && *pchZeidonDir )

	mov	eax, DWORD PTR _pchZeidonDir$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 34					; 00000022H
	je	SHORT $L59654
	mov	edx, DWORD PTR _pchZeidonDir$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L59654

; 448  :          *pchTgt = *pchZeidonDir;

	mov	ecx, DWORD PTR _pchTgt$[ebp]
	mov	edx, DWORD PTR _pchZeidonDir$[ebp]
	mov	al, BYTE PTR [edx]
	mov	BYTE PTR [ecx], al

; 449  :          pchTgt++;

	mov	ecx, DWORD PTR _pchTgt$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchTgt$[ebp], ecx

; 450  :          pchZeidonDir++;

	mov	edx, DWORD PTR _pchZeidonDir$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchZeidonDir$[ebp], edx

; 451  :       }

	jmp	SHORT $L59653
$L59654:

; 453  :    else // otherwise we copy anything up to the next whitespace

	jmp	$L59658
$L59651:

; 455  :       pchTgt = g_szZeidonEnvDirectory;

	mov	DWORD PTR _pchTgt$[ebp], OFFSET FLAT:_g_szZeidonEnvDirectory
$L59657:

; 456  :       while( pchZeidonDir && *pchZeidonDir && ! isspace( *pchZeidonDir ) )

	cmp	DWORD PTR _pchZeidonDir$[ebp], 0
	je	$L59658
	mov	eax, DWORD PTR _pchZeidonDir$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L59658
	cmp	DWORD PTR ___mb_cur_max, 1
	jle	SHORT $L60784
	push	8
	mov	edx, DWORD PTR _pchZeidonDir$[ebp]
	movsx	eax, BYTE PTR [edx]
	push	eax
	call	__isctype
	add	esp, 8
	mov	DWORD PTR -1112+[ebp], eax
	jmp	SHORT $L60785
$L60784:
	mov	ecx, DWORD PTR _pchZeidonDir$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR __pctype
	xor	ecx, ecx
	mov	cx, WORD PTR [eax+edx*2]
	and	ecx, 8
	mov	DWORD PTR -1112+[ebp], ecx
$L60785:
	cmp	DWORD PTR -1112+[ebp], 0
	jne	SHORT $L59658

; 458  :          *pchTgt = *pchZeidonDir;

	mov	edx, DWORD PTR _pchTgt$[ebp]
	mov	eax, DWORD PTR _pchZeidonDir$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl

; 459  :          pchTgt++;

	mov	edx, DWORD PTR _pchTgt$[ebp]
	add	edx, 1
	mov	DWORD PTR _pchTgt$[ebp], edx

; 460  :          pchZeidonDir++;

	mov	eax, DWORD PTR _pchZeidonDir$[ebp]
	add	eax, 1
	mov	DWORD PTR _pchZeidonDir$[ebp], eax

; 461  :       }

	jmp	$L59657
$L59658:

; 463  : 
; 464  :    // Make sure only one copy of kzoengwa is running.  Start by creating
; 465  :    // a mutex to protect process of checking.
; 466  :    if ( (hMutex1 = CreateMutex( NULL, FALSE, "KZOENGWA - INIT" )) == 0 )

	push	OFFSET FLAT:??_C@_0BA@DEP@KZOENGWA?5?9?5INIT?$AA@ ; `string'
	push	0
	push	0
	call	DWORD PTR __imp__CreateMutexA@12
	mov	DWORD PTR _hMutex1$[ebp], eax
	cmp	DWORD PTR _hMutex1$[ebp], 0
	jne	SHORT $L59660

; 468  :       SysMessageBox( 0, "Zeidon Object Engine", "Can't create init mutex", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0BI@LPGD@Can?8t?5create?5init?5mutex?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BF@INJH@Zeidon?5Object?5Engine?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 469  :       return( FALSE );

	xor	eax, eax
	jmp	$L59626
$L59660:

; 471  : 
; 472  :    // Lock mutex.
; 473  :    WaitForSingleObject( hMutex1, INFINITE );

	push	-1
	mov	ecx, DWORD PTR _hMutex1$[ebp]
	push	ecx
	call	DWORD PTR __imp__WaitForSingleObject@8

; 474  : 
; 475  :    // Now see if a second mutex has already been created.  If it has then
; 476  :    // KZOENGWA has already been started.
; 477  :    if ( (hMutex2 = OpenMutex( MUTEX_ALL_ACCESS,
; 478  :                               FALSE, "KZOENGWA - INIT 2!!!" )) != 0 )

	push	OFFSET FLAT:??_C@_0BF@EHCJ@KZOENGWA?5?9?5INIT?52?$CB?$CB?$CB?$AA@ ; `string'
	push	0
	push	2031617					; 001f0001H
	call	DWORD PTR __imp__OpenMutexA@12
	mov	DWORD PTR _hMutex2$[ebp], eax
	cmp	DWORD PTR _hMutex2$[ebp], 0
	je	SHORT $L59664

; 480  :       // Close all the mutexes and get out.
; 481  :       CloseHandle( hMutex2 );

	mov	edx, DWORD PTR _hMutex2$[ebp]
	push	edx
	call	DWORD PTR __imp__CloseHandle@4

; 482  :       ReleaseMutex( hMutex1 );

	mov	eax, DWORD PTR _hMutex1$[ebp]
	push	eax
	call	DWORD PTR __imp__ReleaseMutex@4

; 483  :       CloseHandle( hMutex1 );

	mov	ecx, DWORD PTR _hMutex1$[ebp]
	push	ecx
	call	DWORD PTR __imp__CloseHandle@4

; 484  : 
; 485  :       SysMessageBox( 0, "Zeidon Object Engine",
; 486  :                      "Only one instance of KZOENGWA can exist at once.", 1 );

	push	1
	push	OFFSET FLAT:??_C@_0DB@OEHN@Only?5one?5instance?5of?5KZOENGWA?5ca@ ; `string'
	push	OFFSET FLAT:??_C@_0BF@INJH@Zeidon?5Object?5Engine?$AA@ ; `string'
	push	0
	call	_SysMessageBox@16

; 487  : 
; 488  :       return( FALSE );

	xor	eax, eax
	jmp	$L59626
$L59664:

; 490  : 
; 491  :    // If we get here then this is the only instance of KZOENGWA so
; 492  :    // create the second mutes.  Note that we DON'T lock it.
; 493  :    hMutex2 = CreateMutex( NULL, FALSE, "KZOENGWA - INIT 2!!!" );

	push	OFFSET FLAT:??_C@_0BF@EHCJ@KZOENGWA?5?9?5INIT?52?$CB?$CB?$CB?$AA@ ; `string'
	push	0
	push	0
	call	DWORD PTR __imp__CreateMutexA@12
	mov	DWORD PTR _hMutex2$[ebp], eax

; 494  : 
; 495  :    // We don't need it anymore so dump the first mutex.
; 496  :    ReleaseMutex( hMutex1 );

	mov	edx, DWORD PTR _hMutex1$[ebp]
	push	edx
	call	DWORD PTR __imp__ReleaseMutex@4

; 497  :    CloseHandle( hMutex1 );

	mov	eax, DWORD PTR _hMutex1$[ebp]
	push	eax
	call	DWORD PTR __imp__CloseHandle@4

; 498  : 
; 499  :    if ( InitApplication( hInstance ) == 0 ) // Initialize shared things

	mov	ecx, DWORD PTR _hInstance$[ebp]
	push	ecx
	call	_InitApplication
	add	esp, 4
	test	eax, eax
	jne	SHORT $L59668

; 501  :       CloseHandle( hMutex2 );    // Get rid of the instance mutex

	mov	edx, DWORD PTR _hMutex2$[ebp]
	push	edx
	call	DWORD PTR __imp__CloseHandle@4

; 502  :       return( FALSE );           // Exits if unable to initialize

	xor	eax, eax
	jmp	$L59626
$L59668:

; 504  : 
; 505  : #else
; 506  :    if ( hPrevInstance == 0 )     // Other instances of app running?
; 507  :    {
; 508  :       // If we need to increase the size of the message queue, here is where
; 509  :       // it will need to be done.  We need to do this to prevent the loss
; 510  :       // of TraceLine messages.
; 511  : 
; 512  :       zSHORT nMsg = 32;  // the maximum size is 120, the default size is 8
; 513  : 
; 514  :       while ( nMsg > 8 && SetMessageQueue( nMsg ) == 0 )
; 515  :          nMsg -= 8;
; 516  : 
; 517  : 
; 518  :       // run in enhanced or protected mode only - not in real mode
; 519  :       if ( (GetWinFlags( ) & WF_PMODE) != WF_PMODE )
; 520  :       {
; 521  :          MessageBox( GetActiveWindow( ),
; 522  :                      "Zeidon cannot be executed in real mode",
; 523  :                      "Zeidon", MB_ICONSTOP | MB_OK );
; 524  :          return( FALSE );
; 525  :       }
; 526  : 
; 527  :       if ( InitApplication( hInstance ) == 0 ) // Initialize shared things
; 528  :          return( FALSE );                      // Exits if unable to initialize
; 529  :    }
; 530  :    else
; 531  :    {
; 532  :       AnchorBlock = SysGetAnchorBlock( );
; 533  :       if ( AnchorBlock )
; 534  :          SetActiveWindow( (HWND) AnchorBlock->lOE_hMainWnd );
; 535  : 
; 536  :       return( FALSE );
; 537  :    }
; 538  : #endif
; 539  : 
; 540  :    // Perform initializations that apply to a specific instance
; 541  :    if ( InitInstance( hInstance, nCmdShow ) == 0 )

	mov	eax, DWORD PTR _nCmdShow$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hInstance$[ebp]
	push	ecx
	call	_InitInstance
	add	esp, 8
	test	eax, eax
	jne	SHORT $L59669

; 543  : #ifdef __WIN32__
; 544  :       // Get rid of the second instance mutex.
; 545  :       CloseHandle( hMutex2 );

	mov	edx, DWORD PTR _hMutex2$[ebp]
	push	edx
	call	DWORD PTR __imp__CloseHandle@4

; 546  : #endif
; 547  :       return( FALSE );

	xor	eax, eax
	jmp	$L59626
$L59669:

; 549  : 
; 550  : #ifdef __WIN32__
; 551  :    TraceLineS( "Engine started for Win32", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BJ@MKDE@Engine?5started?5for?5Win32?$AA@ ; `string'
	call	_TraceLineS@8

; 552  : #endif
; 553  : 
; 554  :    hAccel = LoadAccelerators( hInstance, "TRACE_ACCEL" );

	push	OFFSET FLAT:??_C@_0M@CLEH@TRACE_ACCEL?$AA@ ; `string'
	mov	eax, DWORD PTR _hInstance$[ebp]
	push	eax
	call	DWORD PTR __imp__LoadAcceleratorsA@8
	mov	DWORD PTR _hAccel$[ebp], eax

; 555  : 
; 556  : #ifndef ALLOC_FREE_TRACE
; 557  :    hMenu = GetMenu( g_hWndMainFrame );

	mov	ecx, DWORD PTR _g_hWndMainFrame
	push	ecx
	call	DWORD PTR __imp__GetMenu@4
	mov	DWORD PTR _hMenu$[ebp], eax

; 558  :    if ( hMenu )

	cmp	DWORD PTR _hMenu$[ebp], 0
	je	SHORT $L59673

; 560  :       hMenu = GetSubMenu( hMenu, 1 );

	push	1
	mov	edx, DWORD PTR _hMenu$[ebp]
	push	edx
	call	DWORD PTR __imp__GetSubMenu@8
	mov	DWORD PTR _hMenu$[ebp], eax

; 561  :    // DeleteMenu( hMenu, IDM_SETMEMORYTRACE, MF_BYCOMMAND );
; 562  :       RemoveMenu( hMenu, 9, MF_BYPOSITION );

	push	1024					; 00000400H
	push	9
	mov	eax, DWORD PTR _hMenu$[ebp]
	push	eax
	call	DWORD PTR __imp__RemoveMenu@12

; 563  :       DrawMenuBar( g_hWndMainFrame );

	mov	ecx, DWORD PTR _g_hWndMainFrame
	push	ecx
	call	DWORD PTR __imp__DrawMenuBar@4
$L59673:

; 565  : #endif
; 566  : 
; 567  : #ifndef LOAD_FREE_TRACE
; 568  :    hMenu = GetMenu( g_hWndMainFrame );

	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	call	DWORD PTR __imp__GetMenu@4
	mov	DWORD PTR _hMenu$[ebp], eax

; 569  :    if ( hMenu )

	cmp	DWORD PTR _hMenu$[ebp], 0
	je	SHORT $L59674

; 571  :       hMenu = GetSubMenu( hMenu, 1 );

	push	1
	mov	eax, DWORD PTR _hMenu$[ebp]
	push	eax
	call	DWORD PTR __imp__GetSubMenu@8
	mov	DWORD PTR _hMenu$[ebp], eax

; 572  :    // DeleteMenu( hMenu, IDM_SETLOADTRACE, MF_BYCOMMAND );
; 573  :       RemoveMenu( hMenu, 13, MF_BYPOSITION );

	push	1024					; 00000400H
	push	13					; 0000000dH
	mov	ecx, DWORD PTR _hMenu$[ebp]
	push	ecx
	call	DWORD PTR __imp__RemoveMenu@12

; 574  :       DrawMenuBar( g_hWndMainFrame );

	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	call	DWORD PTR __imp__DrawMenuBar@4
$L59674:

; 576  : #endif
; 577  : 
; 578  :    AnchorBlock->nStatus = AnchorInitialized; // Flag init as complete

	mov	eax, DWORD PTR _AnchorBlock
	mov	WORD PTR [eax+84], 10			; 0000000aH

; 579  : 
; 580  :    // Open a Win32 event so we can signal to everybody that we're done.
; 581  :    hServicesStarted = CreateEvent( NULL, TRUE, FALSE,
; 582  :                                    "Zeidon - Object Services Init" );

	push	OFFSET FLAT:??_C@_0BO@GCKC@Zeidon?5?9?5Object?5Services?5Init?$AA@ ; `string'
	push	0
	push	1
	push	0
	call	DWORD PTR __imp__CreateEventA@16
	mov	DWORD PTR _hServicesStarted$[ebp], eax

; 583  :    SetEvent( hServicesStarted );

	mov	ecx, DWORD PTR _hServicesStarted$[ebp]
	push	ecx
	call	DWORD PTR __imp__SetEvent@4

; 584  :    CloseHandle( hServicesStarted );

	mov	edx, DWORD PTR _hServicesStarted$[ebp]
	push	edx
	call	DWORD PTR __imp__CloseHandle@4

; 585  : 
; 586  :    SysReadZeidonIni( -1, "[ObjectEngine]", "TimeOut", szWork );

	lea	eax, DWORD PTR _szWork$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_07HGFN@TimeOut?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 587  :    if ( szWork[ 0 ] && (g_lTimeOut = zatol( szWork )) != 0 )

	movsx	ecx, BYTE PTR _szWork$[ebp]
	test	ecx, ecx
	je	SHORT $L59680
	lea	edx, DWORD PTR _szWork$[ebp]
	push	edx
	call	_atol
	add	esp, 4
	mov	DWORD PTR _g_lTimeOut, eax
	cmp	DWORD PTR _g_lTimeOut, 0
	je	SHORT $L59680

; 589  :       SysReadZeidonIni( -1, "[ObjectEngine]", "KillZeidon", szWork );

	lea	eax, DWORD PTR _szWork$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0L@NDGH@KillZeidon?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 590  :       if ( szWork[ 0 ] )

	movsx	ecx, BYTE PTR _szWork$[ebp]
	test	ecx, ecx
	je	SHORT $L59679

; 591  :          SysGetDateTime( g_szTimeStamp );

	push	OFFSET FLAT:_g_szTimeStamp
	call	_SysGetDateTime@4

; 592  :       else

	jmp	SHORT $L59680
$L59679:

; 594  :          MessageBox( 0, "TimeOut requires KillZeidon specification",
; 595  :                      "Object Services", MB_OK );

	push	0
	push	OFFSET FLAT:??_C@_0BA@CBEN@Object?5Services?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0CK@DMIG@TimeOut?5requires?5KillZeidon?5spec@ ; `string'
	push	0
	call	DWORD PTR __imp__MessageBoxA@16

; 596  :          g_lTimeOut = 0;

	mov	DWORD PTR _g_lTimeOut, 0
$L59680:

; 599  : 
; 600  :    // Acquire and dispatch messages until a WM_QUIT message is received
; 601  :    while ( GetMessage( &msg,     // message structure
; 602  :                        0,        // handle of window receiving the message
; 603  :                        0,        // lowest message to examine
; 604  :                        0 ) )     // highest message to examine

	push	0
	push	0
	push	0
	lea	edx, DWORD PTR _msg$[ebp]
	push	edx
	call	DWORD PTR __imp__GetMessageA@16
	test	eax, eax
	je	SHORT $L59685

; 606  :       if ( !TranslateAccelerator( g_hWndMainFrame, hAccel, &msg ) )

	lea	eax, DWORD PTR _msg$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hAccel$[ebp]
	push	ecx
	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	call	DWORD PTR __imp__TranslateAcceleratorA@12
	test	eax, eax
	jne	SHORT $L59686

; 608  :          TranslateMessage( &msg );  // Translate message

	lea	eax, DWORD PTR _msg$[ebp]
	push	eax
	call	DWORD PTR __imp__TranslateMessage@4

; 609  :          DispatchMessage( &msg );   // Dispatches message to window

	lea	ecx, DWORD PTR _msg$[ebp]
	push	ecx
	call	DWORD PTR __imp__DispatchMessageA@4
$L59686:

; 611  :    }

	jmp	SHORT $L59680
$L59685:

; 612  : 
; 613  : #ifdef __WIN32__
; 614  :    // Get rid of the second instance mutex.
; 615  :    CloseHandle( hMutex2 );

	mov	edx, DWORD PTR _hMutex2$[ebp]
	push	edx
	call	DWORD PTR __imp__CloseHandle@4

; 616  : #endif
; 617  : 
; 618  :    return( msg.wParam );         // Returns the value from PostQuitMessage

	mov	eax, DWORD PTR _msg$[ebp+8]
$L59626:

; 619  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_WinMain@16 ENDP
_TEXT	ENDS
PUBLIC	_WriteTraceToLog
EXTRN	_fnSysWriteLine@16:NEAR
EXTRN	__imp__SendMessageA@16:NEAR
_TEXT	SEGMENT
_lpTask$ = 8
_szTraceText$ = -520
_ppvFile$ = -524
_idx$ = -4
_wItem$ = -8
_wItemCnt$ = -532
_k$ = -528
_WriteTraceToLog PROC NEAR

; 623  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 532				; 00000214H

; 624  :    char   szTraceText[ 512 ];
; 625  :    zPVOID ppvFile = 0;

	mov	DWORD PTR _ppvFile$[ebp], 0

; 626  :    zSHORT idx;
; 627  :    WORD   wItem;
; 628  :    WORD   wItemCnt;
; 629  :    UINT   k;
; 630  : 
; 631  :    // The file has been opened, get all text from all the
; 632  :    // list boxes and write it to the trace file
; 633  :    for ( k = 0; k < g_nTraceWindowCnt; k++ )

	mov	DWORD PTR _k$[ebp], 0
	jmp	SHORT $L59697
$L59698:
	mov	eax, DWORD PTR _k$[ebp]
	add	eax, 1
	mov	DWORD PTR _k$[ebp], eax
$L59697:
	mov	ecx, DWORD PTR _k$[ebp]
	cmp	ecx, DWORD PTR _g_nTraceWindowCnt
	jae	$L59699

; 635  :       idx = (g_nTraceWindowHead + k + 1) % g_nTraceWindowCnt;

	mov	edx, DWORD PTR _k$[ebp]
	mov	eax, DWORD PTR _g_nTraceWindowHead
	lea	eax, DWORD PTR [eax+edx+1]
	xor	edx, edx
	div	DWORD PTR _g_nTraceWindowCnt
	mov	WORD PTR _idx$[ebp], dx

; 636  :       wItemCnt = (WORD) SendMessage( g_hwndTraceWindow[ idx ],
; 637  :                                      LB_GETCOUNT, 0, 0L );

	push	0
	push	0
	push	395					; 0000018bH
	movsx	ecx, WORD PTR _idx$[ebp]
	mov	edx, DWORD PTR _g_hwndTraceWindow[ecx*4]
	push	edx
	call	DWORD PTR __imp__SendMessageA@16
	mov	WORD PTR _wItemCnt$[ebp], ax

; 638  :       for ( wItem = 0; wItem < wItemCnt; wItem++ )

	mov	WORD PTR _wItem$[ebp], 0
	jmp	SHORT $L59701
$L59702:
	mov	ax, WORD PTR _wItem$[ebp]
	add	ax, 1
	mov	WORD PTR _wItem$[ebp], ax
$L59701:
	mov	ecx, DWORD PTR _wItem$[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _wItemCnt$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	ecx, edx
	jge	SHORT $L59703

; 640  :          SendMessage( g_hwndTraceWindow[ idx ], LB_GETTEXT, wItem,
; 641  :                       (LONG)(LPSTR) szTraceText );

	lea	eax, DWORD PTR _szTraceText$[ebp]
	push	eax
	mov	ecx, DWORD PTR _wItem$[ebp]
	and	ecx, 65535				; 0000ffffH
	push	ecx
	push	393					; 00000189H
	movsx	edx, WORD PTR _idx$[ebp]
	mov	eax, DWORD PTR _g_hwndTraceWindow[edx*4]
	push	eax
	call	DWORD PTR __imp__SendMessageA@16

; 642  :          fnSysWriteLine( lpTask, g_hLogFile, &ppvFile, szTraceText );

	lea	ecx, DWORD PTR _szTraceText$[ebp]
	push	ecx
	lea	edx, DWORD PTR _ppvFile$[ebp]
	push	edx
	mov	eax, DWORD PTR _g_hLogFile
	push	eax
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_fnSysWriteLine@16

; 643  :       }

	jmp	SHORT $L59702
$L59703:

; 644  :    }

	jmp	$L59698
$L59699:

; 645  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_WriteTraceToLog ENDP
_TEXT	ENDS
PUBLIC	_DetachSysTray
PUBLIC	_HandlePopupMenu@12
PUBLIC	??_C@_0BJ@JCD@Wrap?5to?5continue?5search?$DP?$AA@ ; `string'
PUBLIC	??_C@_0BL@KPKA@Search?5string?5not?5found?5?9?5?$AA@ ; `string'
PUBLIC	??_C@_0HF@FBII@Zeidon?5Applications?5are?5still?5ac@ ; `string'
PUBLIC	??_C@_0BE@NOHJ@?$CIwa?$CJ?5nCountry?5?3?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@HBGB@?$CIwa?$CJ?5lpCountry?5?3?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@KHIN@?$CIwa?$CJ?5lpLanguage?5?3?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@LFNC@?$CIwa?$CJ?5lpList?5?3?5?5?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@NDCM@?$CIwa?$CJ?5nMeasure?5?3?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@KAEI@?$CIwa?$CJ?5nTime?5?3?5?5?5?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@EAFP@?$CIwa?$CJ?5lpTime?5?3?5?5?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@NNND@?$CIwa?$CJ?5lp1159?5?3?5?5?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@LOPD@?$CIwa?$CJ?5lp2359?5?3?5?5?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@KEHA@?$CIwa?$CJ?5nTLZero?5?3?5?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@BLBB@?$CIwa?$CJ?5lpShortDate?5?3?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@KHCE@?$CIwa?$CJ?5lpLongDate?5?3?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@CKIL@?$CIwa?$CJ?5lpTimeFmt?5?3?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@HDJM@?$CIwa?$CJ?5lpCurrency?5?3?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@CFHL@?$CIwa?$CJ?5nCurrency?5?3?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@JENA@?$CIwa?$CJ?5nCurrDigits?5?3?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@HLGF@?$CIwa?$CJ?5nNegCurr?5?3?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@KPDD@?$CIwa?$CJ?5lpThousand?5?3?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@OKLB@?$CIwa?$CJ?5lpDecimal?5?3?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@BHPJ@?$CIwa?$CJ?5nDigits?5?3?5?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@LDIE@?$CIwa?$CJ?5nLZero?5?3?5?5?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_0N@JDNP@is?5available?$AA@		; `string'
PUBLIC	??_C@_0CD@LNDP@?$CIwa?$CJ?5No?5international?5informatio@ ; `string'
PUBLIC	??_C@_0BG@HELH@Anchor?5Block?5?5Alloc?3?5?$AA@	; `string'
PUBLIC	??_C@_09DEGO@?5?5?5Used?3?5?$AA@		; `string'
PUBLIC	??_C@_09CCLP@?5?5?5Free?3?5?$AA@		; `string'
PUBLIC	??_C@_0L@LCKF@ListTasks?3?$AA@			; `string'
PUBLIC	??_C@_0BE@BDI@?5Page?5table?5info?5?9?5?$AA@	; `string'
PUBLIC	??_C@_0O@ENOG@Application?3?8?$AA@		; `string'
PUBLIC	??_C@_01HAF@?8?$AA@				; `string'
PUBLIC	??_C@_0BB@FJJG@?5?5?5View?5Object?3?8?$AA@	; `string'
PUBLIC	??_C@_0EJ@LIIE@OE?5Setting?5Idle?5Timer?5for?5hWnd?3?5@ ; `string'
PUBLIC	??_C@_07HGKM@LogFile?$AA@			; `string'
PUBLIC	??_C@_0BH@IIPE@KZOENGWA?5?9?5Termination?$AA@	; `string'
PUBLIC	??_C@_06HLLH@ZEIDON?$AA@			; `string'
PUBLIC	??_C@_0M@BDD@?2zeidon?4ini?$AA@			; `string'
PUBLIC	??_C@_08DEFM@LocalDir?$AA@			; `string'
PUBLIC	??_C@_0M@PHEL@Workstation?$AA@			; `string'
PUBLIC	??_C@_0N@KGLP@ZeidonRT?4ini?$AA@		; `string'
PUBLIC	??_C@_09DHE@WindowPos?$AA@			; `string'
PUBLIC	??_C@_0N@JELK@ObjectEngine?$AA@			; `string'
PUBLIC	??_C@_09GJAL@LineLimit?$AA@			; `string'
PUBLIC	??_C@_0L@BBKE@FindString?$AA@			; `string'
PUBLIC	??_C@_0M@LCCA@ScrollTrace?$AA@			; `string'
PUBLIC	??_C@_0N@LPJH@PrintPreview?$AA@			; `string'
PUBLIC	??_C@_0M@GPAK@PrintDialog?$AA@			; `string'
PUBLIC	??_C@_0BA@ONLI@TraceOE_Warning?$AA@		; `string'
PUBLIC	??_C@_0M@LKED@TraceAction?$AA@			; `string'
PUBLIC	??_C@_08LOC@TraceWeb?$AA@			; `string'
PUBLIC	??_C@_0L@BPGN@ShowTaskID?$AA@			; `string'
PUBLIC	??_C@_0EG@IDAN@Zeidon?5Applications?5are?5still?5ac@ ; `string'
PUBLIC	??_C@_0EJ@DBP@Zeidon?5Applications?5are?5still?5ac@ ; `string'
PUBLIC	??_C@_0CE@GKN@?$CIwa?$CJ?5changing?5international?5info@ ; `string'
PUBLIC	??_C@_0BN@JBPE@?$CF04d?$CF02d?$CF02d?$CF02d?$CF02d?$CF02d?4log?$AA@ ; `string'
PUBLIC	??_C@_0BH@GAAD@?$CIng?$CJ?5Log?5file?5Opened?5?8?$AA@ ; `string'
EXTRN	_SysMutexQueryStatus@0:NEAR
EXTRN	__imp__GetPrivateProfileStringA@24:NEAR
EXTRN	__imp__IsWindow@4:NEAR
EXTRN	_TraceLineI@8:NEAR
EXTRN	__imp__DestroyWindow@4:NEAR
EXTRN	_SysMessageList@4:NEAR
EXTRN	__imp__ShowWindow@8:NEAR
EXTRN	_fnSysOpenFile@12:NEAR
EXTRN	__imp__WritePrivateProfileStringA@16:NEAR
EXTRN	_DisplayOpenFiles@8:NEAR
EXTRN	__imp__MoveWindow@24:NEAR
EXTRN	__imp__wsprintfA:NEAR
EXTRN	__imp__GetWindowPlacement@8:NEAR
EXTRN	_SysTranslateString@8:NEAR
EXTRN	__ltoa:NEAR
EXTRN	_SysUpdateZeidonIni@12:NEAR
EXTRN	__imp__DialogBoxParamA@20:NEAR
EXTRN	__imp__SetActiveWindow@4:NEAR
EXTRN	__chkstk:NEAR
EXTRN	_SfAllocTaskMemory@12:NEAR
EXTRN	_SfFreeTaskMemory@4:NEAR
EXTRN	__imp__SetFocus@4:NEAR
EXTRN	__imp__GetClientRect@8:NEAR
EXTRN	__imp__GetEnvironmentVariableA@12:NEAR
EXTRN	_SysAppendcDirSep@4:NEAR
EXTRN	__imp__MessageBeep@4:NEAR
EXTRN	__imp__GetLocalTime@4:NEAR
EXTRN	__imp__GetCursorPos@4:NEAR
EXTRN	_FreeAnchorBlock@4:NEAR
EXTRN	_MiListOE_Memory@8:NEAR
EXTRN	_fnSysCloseFile@12:NEAR
EXTRN	_sprintf:NEAR
EXTRN	_SysCreateInternational@0:NEAR
EXTRN	_SysFreeInternational@4:NEAR
EXTRN	_SysConvertEnvironmentString@8:NEAR
EXTRN	_strcpy:NEAR
EXTRN	_strcat:NEAR
EXTRN	_strlen:NEAR
EXTRN	__stricmp:NEAR
EXTRN	_SysGetHandleFromPointer@4:NEAR
EXTRN	__imp__CheckMenuItem@12:NEAR
EXTRN	_SysGetPointerFromHandle@4:NEAR
EXTRN	_SysDescribeZeidonPageTable@4:NEAR
;	COMDAT ??_C@_0BJ@JCD@Wrap?5to?5continue?5search?$DP?$AA@
; File C:\10C\w\oe\KZOENGWA.C
_DATA	SEGMENT
??_C@_0BJ@JCD@Wrap?5to?5continue?5search?$DP?$AA@ DB 'Wrap to continue se'
	DB	'arch?', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@KPKA@Search?5string?5not?5found?5?9?5?$AA@
_DATA	SEGMENT
??_C@_0BL@KPKA@Search?5string?5not?5found?5?9?5?$AA@ DB 'Search string no'
	DB	't found - ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0HF@FBII@Zeidon?5Applications?5are?5still?5ac@
_DATA	SEGMENT
??_C@_0HF@FBII@Zeidon?5Applications?5are?5still?5ac@ DB 'Zeidon Applicati'
	DB	'ons are still active.', 0aH, 'If you continue, you will lose '
	DB	'unsaved data.', 0aH, 'Do you still want to kill Zeidon?', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NOHJ@?$CIwa?$CJ?5nCountry?5?3?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@NOHJ@?$CIwa?$CJ?5nCountry?5?3?5?5?5?5?$AA@ DB '(wa) nCountry : '
	DB	'   ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@HBGB@?$CIwa?$CJ?5lpCountry?5?3?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@HBGB@?$CIwa?$CJ?5lpCountry?5?3?5?5?5?$AA@ DB '(wa) lpCountry : '
	DB	'  ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@KHIN@?$CIwa?$CJ?5lpLanguage?5?3?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@KHIN@?$CIwa?$CJ?5lpLanguage?5?3?5?5?$AA@ DB '(wa) lpLanguage : '
	DB	' ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@LFNC@?$CIwa?$CJ?5lpList?5?3?5?5?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@LFNC@?$CIwa?$CJ?5lpList?5?3?5?5?5?5?5?5?$AA@ DB '(wa) lpList : '
	DB	'     ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NDCM@?$CIwa?$CJ?5nMeasure?5?3?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@NDCM@?$CIwa?$CJ?5nMeasure?5?3?5?5?5?5?$AA@ DB '(wa) nMeasure : '
	DB	'   ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@KAEI@?$CIwa?$CJ?5nTime?5?3?5?5?5?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@KAEI@?$CIwa?$CJ?5nTime?5?3?5?5?5?5?5?5?5?$AA@ DB '(wa) nTime : '
	DB	'      ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@EAFP@?$CIwa?$CJ?5lpTime?5?3?5?5?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@EAFP@?$CIwa?$CJ?5lpTime?5?3?5?5?5?5?5?5?$AA@ DB '(wa) lpTime : '
	DB	'     ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NNND@?$CIwa?$CJ?5lp1159?5?3?5?5?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@NNND@?$CIwa?$CJ?5lp1159?5?3?5?5?5?5?5?5?$AA@ DB '(wa) lp1159 : '
	DB	'     ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@LOPD@?$CIwa?$CJ?5lp2359?5?3?5?5?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@LOPD@?$CIwa?$CJ?5lp2359?5?3?5?5?5?5?5?5?$AA@ DB '(wa) lp2359 : '
	DB	'     ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@KEHA@?$CIwa?$CJ?5nTLZero?5?3?5?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@KEHA@?$CIwa?$CJ?5nTLZero?5?3?5?5?5?5?5?$AA@ DB '(wa) nTLZero : '
	DB	'    ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@BLBB@?$CIwa?$CJ?5lpShortDate?5?3?5?$AA@
_DATA	SEGMENT
??_C@_0BE@BLBB@?$CIwa?$CJ?5lpShortDate?5?3?5?$AA@ DB '(wa) lpShortDate : '
	DB	00H						; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@KHCE@?$CIwa?$CJ?5lpLongDate?5?3?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@KHCE@?$CIwa?$CJ?5lpLongDate?5?3?5?5?$AA@ DB '(wa) lpLongDate : '
	DB	' ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@CKIL@?$CIwa?$CJ?5lpTimeFmt?5?3?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@CKIL@?$CIwa?$CJ?5lpTimeFmt?5?3?5?5?5?$AA@ DB '(wa) lpTimeFmt : '
	DB	'  ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@HDJM@?$CIwa?$CJ?5lpCurrency?5?3?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@HDJM@?$CIwa?$CJ?5lpCurrency?5?3?5?5?$AA@ DB '(wa) lpCurrency : '
	DB	' ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@CFHL@?$CIwa?$CJ?5nCurrency?5?3?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@CFHL@?$CIwa?$CJ?5nCurrency?5?3?5?5?5?$AA@ DB '(wa) nCurrency : '
	DB	'  ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@JENA@?$CIwa?$CJ?5nCurrDigits?5?3?5?$AA@
_DATA	SEGMENT
??_C@_0BE@JENA@?$CIwa?$CJ?5nCurrDigits?5?3?5?$AA@ DB '(wa) nCurrDigits : '
	DB	00H						; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@HLGF@?$CIwa?$CJ?5nNegCurr?5?3?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@HLGF@?$CIwa?$CJ?5nNegCurr?5?3?5?5?5?5?$AA@ DB '(wa) nNegCurr : '
	DB	'   ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@KPDD@?$CIwa?$CJ?5lpThousand?5?3?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@KPDD@?$CIwa?$CJ?5lpThousand?5?3?5?5?$AA@ DB '(wa) lpThousand : '
	DB	' ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@OKLB@?$CIwa?$CJ?5lpDecimal?5?3?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@OKLB@?$CIwa?$CJ?5lpDecimal?5?3?5?5?5?$AA@ DB '(wa) lpDecimal : '
	DB	'  ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@BHPJ@?$CIwa?$CJ?5nDigits?5?3?5?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@BHPJ@?$CIwa?$CJ?5nDigits?5?3?5?5?5?5?5?$AA@ DB '(wa) nDigits : '
	DB	'    ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@LDIE@?$CIwa?$CJ?5nLZero?5?3?5?5?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@LDIE@?$CIwa?$CJ?5nLZero?5?3?5?5?5?5?5?5?$AA@ DB '(wa) nLZero : '
	DB	'     ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@JDNP@is?5available?$AA@
_DATA	SEGMENT
??_C@_0N@JDNP@is?5available?$AA@ DB 'is available', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CD@LNDP@?$CIwa?$CJ?5No?5international?5informatio@
_DATA	SEGMENT
??_C@_0CD@LNDP@?$CIwa?$CJ?5No?5international?5informatio@ DB '(wa) No int'
	DB	'ernational information ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@HELH@Anchor?5Block?5?5Alloc?3?5?$AA@
_DATA	SEGMENT
??_C@_0BG@HELH@Anchor?5Block?5?5Alloc?3?5?$AA@ DB 'Anchor Block  Alloc: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_09DEGO@?5?5?5Used?3?5?$AA@
_DATA	SEGMENT
??_C@_09DEGO@?5?5?5Used?3?5?$AA@ DB '   Used: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_09CCLP@?5?5?5Free?3?5?$AA@
_DATA	SEGMENT
??_C@_09CCLP@?5?5?5Free?3?5?$AA@ DB '   Free: ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@LCKF@ListTasks?3?$AA@
_DATA	SEGMENT
??_C@_0L@LCKF@ListTasks?3?$AA@ DB 'ListTasks:', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@BDI@?5Page?5table?5info?5?9?5?$AA@
_DATA	SEGMENT
??_C@_0BE@BDI@?5Page?5table?5info?5?9?5?$AA@ DB ' Page table info - ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@ENOG@Application?3?8?$AA@
_DATA	SEGMENT
??_C@_0O@ENOG@Application?3?8?$AA@ DB 'Application:''', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_01HAF@?8?$AA@
_DATA	SEGMENT
??_C@_01HAF@?8?$AA@ DB '''', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@FJJG@?5?5?5View?5Object?3?8?$AA@
_DATA	SEGMENT
??_C@_0BB@FJJG@?5?5?5View?5Object?3?8?$AA@ DB '   View Object:''', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EJ@LIIE@OE?5Setting?5Idle?5Timer?5for?5hWnd?3?5@
_DATA	SEGMENT
??_C@_0EJ@LIIE@OE?5Setting?5Idle?5Timer?5for?5hWnd?3?5@ DB 'OE Setting Id'
	DB	'le Timer for hWnd: 0x%08x   g_hWndMainFrame: 0x%08x  Id: %d', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_07HGKM@LogFile?$AA@
_DATA	SEGMENT
??_C@_07HGKM@LogFile?$AA@ DB 'LogFile', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@IIPE@KZOENGWA?5?9?5Termination?$AA@
_DATA	SEGMENT
??_C@_0BH@IIPE@KZOENGWA?5?9?5Termination?$AA@ DB 'KZOENGWA - Termination', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_06HLLH@ZEIDON?$AA@
_DATA	SEGMENT
??_C@_06HLLH@ZEIDON?$AA@ DB 'ZEIDON', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@BDD@?2zeidon?4ini?$AA@
_DATA	SEGMENT
??_C@_0M@BDD@?2zeidon?4ini?$AA@ DB '\zeidon.ini', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08DEFM@LocalDir?$AA@
_DATA	SEGMENT
??_C@_08DEFM@LocalDir?$AA@ DB 'LocalDir', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@PHEL@Workstation?$AA@
_DATA	SEGMENT
??_C@_0M@PHEL@Workstation?$AA@ DB 'Workstation', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@KGLP@ZeidonRT?4ini?$AA@
_DATA	SEGMENT
??_C@_0N@KGLP@ZeidonRT?4ini?$AA@ DB 'ZeidonRT.ini', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_09DHE@WindowPos?$AA@
_DATA	SEGMENT
??_C@_09DHE@WindowPos?$AA@ DB 'WindowPos', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@JELK@ObjectEngine?$AA@
_DATA	SEGMENT
??_C@_0N@JELK@ObjectEngine?$AA@ DB 'ObjectEngine', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_09GJAL@LineLimit?$AA@
_DATA	SEGMENT
??_C@_09GJAL@LineLimit?$AA@ DB 'LineLimit', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@BBKE@FindString?$AA@
_DATA	SEGMENT
??_C@_0L@BBKE@FindString?$AA@ DB 'FindString', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@LCCA@ScrollTrace?$AA@
_DATA	SEGMENT
??_C@_0M@LCCA@ScrollTrace?$AA@ DB 'ScrollTrace', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@LPJH@PrintPreview?$AA@
_DATA	SEGMENT
??_C@_0N@LPJH@PrintPreview?$AA@ DB 'PrintPreview', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@GPAK@PrintDialog?$AA@
_DATA	SEGMENT
??_C@_0M@GPAK@PrintDialog?$AA@ DB 'PrintDialog', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@ONLI@TraceOE_Warning?$AA@
_DATA	SEGMENT
??_C@_0BA@ONLI@TraceOE_Warning?$AA@ DB 'TraceOE_Warning', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@LKED@TraceAction?$AA@
_DATA	SEGMENT
??_C@_0M@LKED@TraceAction?$AA@ DB 'TraceAction', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08LOC@TraceWeb?$AA@
_DATA	SEGMENT
??_C@_08LOC@TraceWeb?$AA@ DB 'TraceWeb', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@BPGN@ShowTaskID?$AA@
_DATA	SEGMENT
??_C@_0L@BPGN@ShowTaskID?$AA@ DB 'ShowTaskID', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EG@IDAN@Zeidon?5Applications?5are?5still?5ac@
_DATA	SEGMENT
??_C@_0EG@IDAN@Zeidon?5Applications?5are?5still?5ac@ DB 'Zeidon Applicati'
	DB	'ons are still active.', 0aH, 'Do you still want to shut down?'
	DB	00H						; `string'
_DATA	ENDS
;	COMDAT ??_C@_0EJ@DBP@Zeidon?5Applications?5are?5still?5ac@
_DATA	SEGMENT
??_C@_0EJ@DBP@Zeidon?5Applications?5are?5still?5ac@ DB 'Zeidon Applicatio'
	DB	'ns are still active.', 0aH, 'Do you wish to try and close the'
	DB	'm?', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CE@GKN@?$CIwa?$CJ?5changing?5international?5info@
_DATA	SEGMENT
??_C@_0CE@GKN@?$CIwa?$CJ?5changing?5international?5info@ DB '(wa) changin'
	DB	'g international info - ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@JBPE@?$CF04d?$CF02d?$CF02d?$CF02d?$CF02d?$CF02d?4log?$AA@
_DATA	SEGMENT
??_C@_0BN@JBPE@?$CF04d?$CF02d?$CF02d?$CF02d?$CF02d?$CF02d?4log?$AA@ DB '%'
	DB	'04d%02d%02d%02d%02d%02d.log', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@GAAD@?$CIng?$CJ?5Log?5file?5Opened?5?8?$AA@
_DATA	SEGMENT
??_C@_0BH@GAAD@?$CIng?$CJ?5Log?5file?5Opened?5?8?$AA@ DB '(ng) Log file O'
	DB	'pened ''', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hWnd$ = 8
_uMsg$ = 12
_wParam$ = 16
_lParam$ = 20
_rect$ = -16
_point$59729 = -24
_i$59732 = -28
_wCommand$59737 = -32
_szFindString$59772 = -544
_szText$59773 = -1060
_nFound$59774 = -548
_hwndTrace$59775 = -1064
_wItemCnt$59776 = -1076
_wCurSel$59778 = -1068
_k$59780 = -1072
_wCurSel$59816 = -1084
_lTextLth$59818 = -1080
_pchMem$59822 = -1088
_wCurSel$59828 = -1092
_wCurSel$59833 = -1096
_wCurSel$59837 = -1108
_nLth$59839 = -1100
_j$59840 = -1104
_k$59841 = -1112
_hMenu$59850 = -1116
_hMenu$59862 = -1120
_hMenu$59866 = -1124
_hTask$59880 = -1136
_lpTask$59881 = -1132
_nResponse$59882 = -1128
_szFileName$59891 = -1396
_lpIntl$59895 = -1400
_k$59923 = -1404
_szMessage$59945 = -1928
_lpDataHeader$59946 = -1932
_lpFreespace$59947 = -1936
_ulAlloc$59948 = -1412
_ulUsed$59949 = -1416
_ulFree$59950 = -1408
_szMsg$59961 = -5936
_lpApp$59966 = -6104
_lpViewOD$59967 = -5940
_szMessage$59968 = -6100
_idx$60025 = -6108
_iDiff$60026 = -6120
_nNewTraceWindow$60027 = -6116
_nOldTraceWindow$60028 = -6112
_hTask$60034 = -6136
_lpTask$60035 = -6132
_lpTaskTemp$60036 = -6140
_nResponse$60037 = -6124
_hTermMutex$60038 = -6128
_szIniName$60050 = -6836
_szFileName$60051 = -6532
_szTempName$60052 = -7096
_szBuffer$60053 = -6272
_wp$60054 = -6576
_lpTask2$60087 = -7100
_lpTask$60097 = -7104
_hNewInt$60103 = -7108
_lpOldInt$60104 = -7112
_SysTime$60109 = -7396
_hTask$60110 = -7380
_lpTask$60111 = -7376
_szFileName$60112 = -7372
_hLogFile$60113 = -7116
_szTraceText$60117 = -7908
_MainWndProc@16 PROC NEAR

; 666  : {

	push	ebp
	mov	ebp, esp
	mov	eax, 7916				; 00001eecH
	call	__chkstk

; 667  :    RECT   rect;
; 668  : 
; 669  :    switch ( uMsg )
; 670  :    {

	mov	eax, DWORD PTR _uMsg$[ebp]
	mov	DWORD PTR -7912+[ebp], eax
	cmp	DWORD PTR -7912+[ebp], 273		; 00000111H
	ja	SHORT $L60789
	cmp	DWORD PTR -7912+[ebp], 273		; 00000111H
	je	$L59736
	mov	ecx, DWORD PTR -7912+[ebp]
	sub	ecx, 2
	mov	DWORD PTR -7912+[ebp], ecx
	cmp	DWORD PTR -7912+[ebp], 24		; 00000018H
	ja	$L60120
	mov	eax, DWORD PTR -7912+[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR $L60792[eax]
	jmp	DWORD PTR $L60793[edx*4]
$L60789:
	cmp	DWORD PTR -7912+[ebp], 2050		; 00000802H
	ja	SHORT $L60790
	cmp	DWORD PTR -7912+[ebp], 2050		; 00000802H
	je	$L60119
	cmp	DWORD PTR -7912+[ebp], 274		; 00000112H
	je	SHORT $L59730
	cmp	DWORD PTR -7912+[ebp], 2049		; 00000801H
	je	$L60108
	jmp	$L60120
$L60790:
	cmp	DWORD PTR -7912+[ebp], 32868		; 00008064H
	je	SHORT $L59727
	jmp	$L60120
$L59727:

; 671  :       //entry for systray notifications
; 672  :       case zWM_NOTIFYICON:
; 673  :          if (lParam == WM_RBUTTONDOWN )

	cmp	DWORD PTR _lParam$[ebp], 516		; 00000204H
	jne	SHORT $L59728

; 675  :             POINT point;
; 676  : 
; 677  :             GetCursorPos( &point );

	lea	ecx, DWORD PTR _point$59729[ebp]
	push	ecx
	call	DWORD PTR __imp__GetCursorPos@4

; 678  :             HandlePopupMenu( hWnd, point );

	mov	edx, DWORD PTR _point$59729[ebp+4]
	push	edx
	mov	eax, DWORD PTR _point$59729[ebp]
	push	eax
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	_HandlePopupMenu@12
$L59728:

; 680  : 
; 681  :          break;

	jmp	$L59724
$L59730:

; 682  : 
; 683  :       case WM_SYSCOMMAND:
; 684  :          //if ( (wParam & 0xFFF0) == SC_MINIMIZE )
; 685  :          //   return( 0 );
; 686  : 
; 687  :          return( DefWindowProc( hWnd, uMsg, wParam, lParam ) );

	mov	edx, DWORD PTR _lParam$[ebp]
	push	edx
	mov	eax, DWORD PTR _wParam$[ebp]
	push	eax
	mov	ecx, DWORD PTR _uMsg$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__DefWindowProcA@16
	jmp	$L59721
$L59731:

; 691  :          UINT i;
; 692  : 
; 693  :          GetClientRect( hWnd, &rect );

	lea	eax, DWORD PTR _rect$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetClientRect@8

; 694  : 
; 695  :          for ( i = 0; i < g_nTraceWindowCnt; i++ )

	mov	DWORD PTR _i$59732[ebp], 0
	jmp	SHORT $L59733
$L59734:
	mov	edx, DWORD PTR _i$59732[ebp]
	add	edx, 1
	mov	DWORD PTR _i$59732[ebp], edx
$L59733:
	mov	eax, DWORD PTR _i$59732[ebp]
	cmp	eax, DWORD PTR _g_nTraceWindowCnt
	jae	SHORT $L59735

; 696  :             MoveWindow( g_hwndTraceWindow[ i ], rect.left, rect.top,
; 697  :                         rect.right - rect.left, rect.bottom - rect.top, TRUE );

	push	1
	mov	ecx, DWORD PTR _rect$[ebp+12]
	sub	ecx, DWORD PTR _rect$[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _rect$[ebp+8]
	sub	edx, DWORD PTR _rect$[ebp]
	push	edx
	mov	eax, DWORD PTR _rect$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _rect$[ebp]
	push	ecx
	mov	edx, DWORD PTR _i$59732[ebp]
	mov	eax, DWORD PTR _g_hwndTraceWindow[edx*4]
	push	eax
	call	DWORD PTR __imp__MoveWindow@24
	jmp	SHORT $L59734
$L59735:

; 698  :          break;

	jmp	$L59724
$L59736:

; 703  :          WORD wCommand;
; 704  : #ifdef __WIN32__
; 705  :          wCommand = LOWORD( wParam ); // command identifier

	mov	cx, WORD PTR _wParam$[ebp]
	mov	WORD PTR _wCommand$59737[ebp], cx

; 706  : #else
; 707  :          wCommand = wParam;         // command identifier
; 708  : #endif
; 709  : //       TraceLineI( "OE WM_COMMAND wCommand: ", wCommand );
; 710  :          if ( wCommand == IDM_SHOWTRACE )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 321				; 00000141H
	jne	SHORT $L59739

; 712  :             ShowWindow( g_hWndMainFrame, SW_RESTORE );

	push	9
	mov	eax, DWORD PTR _g_hWndMainFrame
	push	eax
	call	DWORD PTR __imp__ShowWindow@8

; 714  :          else

	jmp	$L60024
$L59739:

; 715  :          if ( wCommand == IDM_LOGON )

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 111				; 0000006fH
	jne	SHORT $L59741

; 717  :             DialogBox( hInst, MAKEINTRESOURCE( IDD_LOGON ), hWnd, fpLogon );

	push	0
	mov	edx, DWORD PTR _fpLogon
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	push	104					; 00000068H
	mov	ecx, DWORD PTR _hInst
	push	ecx
	call	DWORD PTR __imp__DialogBoxParamA@20

; 719  :          else

	jmp	$L60024
$L59741:

; 720  :          if ( wCommand == IDM_LOGTRACE )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 121				; 00000079H
	jne	SHORT $L59746

; 722  :             DialogBox( hInst, MAKEINTRESOURCE( IDD_LOGTRACE ),
; 723  :                        hWnd, fpLogTrace );

	push	0
	mov	eax, DWORD PTR _fpLogTrace
	push	eax
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	push	101					; 00000065H
	mov	edx, DWORD PTR _hInst
	push	edx
	call	DWORD PTR __imp__DialogBoxParamA@20

; 725  :          else

	jmp	$L60024
$L59746:

; 726  :          if ( wCommand == IDM_SHOWDLL )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 114				; 00000072H
	jne	SHORT $L59751

; 728  :             DialogBox( hInst, MAKEINTRESOURCE( IDD_SHOWDLL ),
; 729  :                        hWnd, fpShowDLL );

	push	0
	mov	ecx, DWORD PTR _fpShowDLL
	push	ecx
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	push	103					; 00000067H
	mov	eax, DWORD PTR _hInst
	push	eax
	call	DWORD PTR __imp__DialogBoxParamA@20

; 731  :          else

	jmp	$L60024
$L59751:

; 732  :          if ( wCommand == IDM_LINELIMIT )

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 123				; 0000007bH
	jne	SHORT $L59756

; 734  :             DialogBox( hInst, MAKEINTRESOURCE( IDD_LINELIMIT ),
; 735  :                        hWnd, fpLineLimit );

	push	0
	mov	edx, DWORD PTR _fpLineLimit
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	push	102					; 00000066H
	mov	ecx, DWORD PTR _hInst
	push	ecx
	call	DWORD PTR __imp__DialogBoxParamA@20

; 736  :             if ( g_uTraceLineLimit == 0 )

	cmp	DWORD PTR _g_uTraceLineLimit, 0
	jne	SHORT $L59760

; 738  :                SendMessage( g_hWndLB, LB_RESETCONTENT, 0, 0L );

	push	0
	push	0
	push	388					; 00000184H
	mov	edx, DWORD PTR _g_hWndLB
	push	edx
	call	DWORD PTR __imp__SendMessageA@16

; 739  :                AnchorBlock->bTraceCnt = FALSE;

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+1495]
	and	ecx, -3					; fffffffdH
	mov	edx, DWORD PTR _AnchorBlock
	mov	DWORD PTR [edx+1495], ecx

; 741  :             else

	jmp	SHORT $L59761
$L59760:

; 742  :                AnchorBlock->bTraceCnt = TRUE;

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+1495]
	or	ecx, 2
	mov	edx, DWORD PTR _AnchorBlock
	mov	DWORD PTR [edx+1495], ecx
$L59761:

; 744  :          else

	jmp	$L60024
$L59756:

; 745  :          if ( wCommand == IDM_FINDSTRING ||
; 746  :               wCommand == IDM_FINDNEXT ||
; 747  :               wCommand == IDM_FINDPREV )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 150				; 00000096H
	je	SHORT $L59764
	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 151				; 00000097H
	je	SHORT $L59764
	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 152				; 00000098H
	jne	$L59763
$L59764:

; 749  :             if ( wCommand == IDM_FINDSTRING )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 150				; 00000096H
	jne	SHORT $L59769

; 751  :                if ( DialogBox( hInst, MAKEINTRESOURCE( IDD_FINDSTRING ),
; 752  :                                hWnd, fpFindString ) != IDOK )

	push	0
	mov	ecx, DWORD PTR _fpFindString
	push	ecx
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	push	107					; 0000006bH
	mov	eax, DWORD PTR _hInst
	push	eax
	call	DWORD PTR __imp__DialogBoxParamA@20
	cmp	eax, 1
	je	SHORT $L59769

; 754  :                   break;

	jmp	$L59724
$L59769:

; 757  : 
; 758  :             if ( g_szFindString[ 0 ] == 0 )

	movsx	ecx, BYTE PTR _g_szFindString
	test	ecx, ecx
	jne	SHORT $L59770

; 759  :                break;

	jmp	$L59724
$L59770:

; 762  :                char szFindString[ 512 ];
; 763  :                char szText[ 512 ];
; 764  :                int  nFound = 0;

	mov	DWORD PTR _nFound$59774[ebp], 0

; 765  :                HWND hwndTrace = g_hwndTraceWindow[ g_nTraceWindowDisplayed ];

	mov	edx, DWORD PTR _g_nTraceWindowDisplayed
	mov	eax, DWORD PTR _g_hwndTraceWindow[edx*4]
	mov	DWORD PTR _hwndTrace$59775[ebp], eax

; 766  :                WORD wItemCnt = (WORD) SendMessage( hwndTrace, LB_GETCOUNT, 0, 0 );

	push	0
	push	0
	push	395					; 0000018bH
	mov	ecx, DWORD PTR _hwndTrace$59775[ebp]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16
	mov	WORD PTR _wItemCnt$59776[ebp], ax

; 767  :                WORD wCurSel = (WORD) SendMessage( hwndTrace, LB_GETCURSEL, 0, 0L );

	push	0
	push	0
	push	392					; 00000188H
	mov	edx, DWORD PTR _hwndTrace$59775[ebp]
	push	edx
	call	DWORD PTR __imp__SendMessageA@16
	mov	WORD PTR _wCurSel$59778[ebp], ax

; 768  :                WORD k;
; 769  : 
; 770  :                zstrcpy( szFindString, g_szFindString );

	push	OFFSET FLAT:_g_szFindString
	lea	eax, DWORD PTR _szFindString$59772[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 771  :                SysTranslateString( szFindString, 'L' );

	push	76					; 0000004cH
	lea	ecx, DWORD PTR _szFindString$59772[ebp]
	push	ecx
	call	_SysTranslateString@8

; 772  :                if ( wCommand == IDM_FINDPREV )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 152				; 00000098H
	jne	SHORT $L59781

; 774  :                   if ( wCurSel <= 0 )

	mov	eax, DWORD PTR _wCurSel$59778[ebp]
	and	eax, 65535				; 0000ffffH
	test	eax, eax
	jg	SHORT $L59782

; 776  :                      wCurSel = wItemCnt;

	mov	cx, WORD PTR _wItemCnt$59776[ebp]
	mov	WORD PTR _wCurSel$59778[ebp], cx

; 777  :                      k = wItemCnt - 1;

	mov	edx, DWORD PTR _wItemCnt$59776[ebp]
	and	edx, 65535				; 0000ffffH
	sub	edx, 1
	mov	WORD PTR _k$59780[ebp], dx

; 779  :                   else

	jmp	SHORT $L59783
$L59782:

; 781  :                      k = wCurSel - 1;

	mov	eax, DWORD PTR _wCurSel$59778[ebp]
	and	eax, 65535				; 0000ffffH
	sub	eax, 1
	mov	WORD PTR _k$59780[ebp], ax
$L59783:

; 784  :                else

	jmp	SHORT $L59789
$L59781:

; 786  :                   if ( wCurSel > wItemCnt - 1 || wCurSel == (WORD) -1 )

	mov	ecx, DWORD PTR _wCurSel$59778[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _wItemCnt$59776[ebp]
	and	edx, 65535				; 0000ffffH
	sub	edx, 1
	cmp	ecx, edx
	jg	SHORT $L59787
	mov	eax, DWORD PTR _wCurSel$59778[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 65535				; 0000ffffH
	jne	SHORT $L59786
$L59787:

; 788  :                      wCurSel = (WORD) -1;

	mov	WORD PTR _wCurSel$59778[ebp], 65535	; 0000ffffH

; 789  :                      k = 0;

	mov	WORD PTR _k$59780[ebp], 0

; 791  :                   else

	jmp	SHORT $L59789
$L59786:

; 793  :                      k = wCurSel + 1;

	mov	ecx, DWORD PTR _wCurSel$59778[ebp]
	and	ecx, 65535				; 0000ffffH
	add	ecx, 1
	mov	WORD PTR _k$59780[ebp], cx
$L59789:

; 796  : 
; 797  :                while ( wItemCnt )

	mov	edx, DWORD PTR _wItemCnt$59776[ebp]
	and	edx, 65535				; 0000ffffH
	test	edx, edx
	je	$L59792

; 799  :                   if ( k < wItemCnt )

	mov	eax, DWORD PTR _k$59780[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _wItemCnt$59776[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	eax, ecx
	jge	$L59795

; 801  :                      SendMessage( hwndTrace, LB_GETTEXT, k, (LPARAM) szText );

	lea	edx, DWORD PTR _szText$59773[ebp]
	push	edx
	mov	eax, DWORD PTR _k$59780[ebp]
	and	eax, 65535				; 0000ffffH
	push	eax
	push	393					; 00000189H
	mov	ecx, DWORD PTR _hwndTrace$59775[ebp]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16

; 802  :                      SysTranslateString( szText, 'L' );

	push	76					; 0000004cH
	lea	edx, DWORD PTR _szText$59773[ebp]
	push	edx
	call	_SysTranslateString@8

; 803  :                      if ( zstrstr( szText, szFindString ) )

	lea	eax, DWORD PTR _szFindString$59772[ebp]
	push	eax
	lea	ecx, DWORD PTR _szText$59773[ebp]
	push	ecx
	call	_strstr
	add	esp, 8
	test	eax, eax
	je	SHORT $L59795

; 805  :                         SendMessage( hwndTrace, LB_SETCURSEL, k, 0L );

	push	0
	mov	edx, DWORD PTR _k$59780[ebp]
	and	edx, 65535				; 0000ffffH
	push	edx
	push	390					; 00000186H
	mov	eax, DWORD PTR _hwndTrace$59775[ebp]
	push	eax
	call	DWORD PTR __imp__SendMessageA@16

; 806  :                         SetFocus( hwndTrace );

	mov	ecx, DWORD PTR _hwndTrace$59775[ebp]
	push	ecx
	call	DWORD PTR __imp__SetFocus@4

; 807  :                         nFound++;

	mov	edx, DWORD PTR _nFound$59774[ebp]
	add	edx, 1
	mov	DWORD PTR _nFound$59774[ebp], edx

; 808  :                         break;

	jmp	$L59792
$L59795:

; 811  : 
; 812  :                   if ( k == wCurSel )

	mov	eax, DWORD PTR _k$59780[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _wCurSel$59778[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	eax, ecx
	jne	SHORT $L59796

; 813  :                      break;

	jmp	$L59792
$L59796:

; 814  :                   else
; 815  :                   if ( wCommand == IDM_FINDPREV )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 152				; 00000098H
	jne	$L59798

; 817  :                      if ( k <= 0 )

	mov	eax, DWORD PTR _k$59780[ebp]
	and	eax, 65535				; 0000ffffH
	test	eax, eax
	jg	SHORT $L59799

; 819  :                         if ( wCurSel == wItemCnt )

	mov	ecx, DWORD PTR _wCurSel$59778[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _wItemCnt$59776[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	ecx, edx
	jne	SHORT $L59800

; 820  :                            break;       // no need to wrap

	jmp	$L59792
$L59800:

; 821  :                         else
; 822  :                         if ( MessageBox( hWnd, "Wrap to continue search?",
; 823  :                                          "Zeidon Object Services",
; 824  :                                          MB_ICONQUESTION |
; 825  :                                             MB_YESNO | MB_APPLMODAL ) == IDNO )

	push	36					; 00000024H
	push	OFFSET FLAT:??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BJ@JCD@Wrap?5to?5continue?5search?$DP?$AA@ ; `string'
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__MessageBoxA@16
	cmp	eax, 7
	jne	SHORT $L59802

; 827  :                            SetFocus( hwndTrace );

	mov	ecx, DWORD PTR _hwndTrace$59775[ebp]
	push	ecx
	call	DWORD PTR __imp__SetFocus@4

; 828  :                            nFound = 1;  // pretend we found one

	mov	DWORD PTR _nFound$59774[ebp], 1

; 829  :                            break;       // don't keep looking

	jmp	$L59792
$L59802:

; 831  : 
; 832  :                         k = wItemCnt - 1;

	mov	edx, DWORD PTR _wItemCnt$59776[ebp]
	and	edx, 65535				; 0000ffffH
	sub	edx, 1
	mov	WORD PTR _k$59780[ebp], dx

; 834  :                      else

	jmp	SHORT $L59804
$L59799:

; 836  :                         k--;

	mov	ax, WORD PTR _k$59780[ebp]
	sub	ax, 1
	mov	WORD PTR _k$59780[ebp], ax
$L59804:

; 839  :                   else

	jmp	$L59810
$L59798:

; 841  :                      if ( k >= wItemCnt - 1 )

	mov	ecx, DWORD PTR _k$59780[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _wItemCnt$59776[ebp]
	and	edx, 65535				; 0000ffffH
	sub	edx, 1
	cmp	ecx, edx
	jl	SHORT $L59806

; 843  :                         if ( wCurSel == -1 )

	mov	eax, DWORD PTR _wCurSel$59778[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, -1
	jne	SHORT $L59807

; 844  :                            break;       // no need to wrap

	jmp	SHORT $L59792
$L59807:

; 845  :                         else
; 846  :                         if ( MessageBox( hWnd, "Wrap to continue search?",
; 847  :                                          "Zeidon Object Services",
; 848  :                                          MB_ICONQUESTION |
; 849  :                                             MB_YESNO | MB_APPLMODAL ) == IDNO )

	push	36					; 00000024H
	push	OFFSET FLAT:??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BJ@JCD@Wrap?5to?5continue?5search?$DP?$AA@ ; `string'
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__MessageBoxA@16
	cmp	eax, 7
	jne	SHORT $L59809

; 851  :                            SetFocus( hwndTrace );

	mov	edx, DWORD PTR _hwndTrace$59775[ebp]
	push	edx
	call	DWORD PTR __imp__SetFocus@4

; 852  :                            nFound = 1;  // pretend we found one

	mov	DWORD PTR _nFound$59774[ebp], 1

; 853  :                            break;       // don't keep looking

	jmp	SHORT $L59792
$L59809:

; 855  : 
; 856  :                         k = 0;

	mov	WORD PTR _k$59780[ebp], 0

; 858  :                      else

	jmp	SHORT $L59810
$L59806:

; 860  :                         k++;

	mov	ax, WORD PTR _k$59780[ebp]
	add	ax, 1
	mov	WORD PTR _k$59780[ebp], ax
$L59810:

; 863  :                }

	jmp	$L59789
$L59792:

; 864  : 
; 865  :                if ( nFound == 0 )

	cmp	DWORD PTR _nFound$59774[ebp], 0
	jne	SHORT $L59811

; 867  :                   zstrcpy( szText, "Search string not found - " );

	push	OFFSET FLAT:??_C@_0BL@KPKA@Search?5string?5not?5found?5?9?5?$AA@ ; `string'
	lea	ecx, DWORD PTR _szText$59773[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 868  :                   zstrcat( szText, g_szFindString );

	push	OFFSET FLAT:_g_szFindString
	lea	edx, DWORD PTR _szText$59773[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 869  :                   MessageBox( hWnd, szText, "Zeidon Object Engine",
; 870  :                               MB_OK | MB_ICONINFORMATION );

	push	64					; 00000040H
	push	OFFSET FLAT:??_C@_0BF@INJH@Zeidon?5Object?5Engine?$AA@ ; `string'
	lea	eax, DWORD PTR _szText$59773[ebp]
	push	eax
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__MessageBoxA@16
$L59811:

; 874  :          else

	jmp	$L60024
$L59763:

; 875  :          if ( wCommand == IDM_COPYSTRING || wCommand == IDM_CUTSTRING )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 165				; 000000a5H
	je	SHORT $L59815
	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 167				; 000000a7H
	jne	$L59814
$L59815:

; 877  :             WORD wCurSel = (WORD) SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 878  :                                                LB_GETCURSEL, 0, 0 );

	push	0
	push	0
	push	392					; 00000188H
	mov	ecx, DWORD PTR _g_nTraceWindowDisplayed
	mov	edx, DWORD PTR _g_hwndTraceWindow[ecx*4]
	push	edx
	call	DWORD PTR __imp__SendMessageA@16
	mov	WORD PTR _wCurSel$59816[ebp], ax

; 879  :             zLONG lTextLth =
; 880  :                 SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 881  :                              LB_GETTEXTLEN, wCurSel, 0L );

	push	0
	mov	eax, DWORD PTR _wCurSel$59816[ebp]
	and	eax, 65535				; 0000ffffH
	push	eax
	push	394					; 0000018aH
	mov	ecx, DWORD PTR _g_nTraceWindowDisplayed
	mov	edx, DWORD PTR _g_hwndTraceWindow[ecx*4]
	push	edx
	call	DWORD PTR __imp__SendMessageA@16
	mov	DWORD PTR _lTextLth$59818[ebp], eax

; 882  :             if ( lTextLth < sizeof( g_szCopyBuffer ) )

	cmp	DWORD PTR _lTextLth$59818[ebp], 512	; 00000200H
	jae	SHORT $L59819

; 884  :                SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 885  :                             LB_GETTEXT, wCurSel, (LPARAM) g_szCopyBuffer );

	push	OFFSET FLAT:_g_szCopyBuffer
	mov	eax, DWORD PTR _wCurSel$59816[ebp]
	and	eax, 65535				; 0000ffffH
	push	eax
	push	393					; 00000189H
	mov	ecx, DWORD PTR _g_nTraceWindowDisplayed
	mov	edx, DWORD PTR _g_hwndTraceWindow[ecx*4]
	push	edx
	call	DWORD PTR __imp__SendMessageA@16

; 887  :             else

	jmp	SHORT $L59821
$L59819:

; 889  :                char *pchMem;
; 890  : 
; 891  :                SfAllocTaskMemory( g_vSystemTaskView,
; 892  :                                   (zCOREMEM) &pchMem, lTextLth + 1 );

	mov	eax, DWORD PTR _lTextLth$59818[ebp]
	add	eax, 1
	push	eax
	lea	ecx, DWORD PTR _pchMem$59822[ebp]
	push	ecx
	mov	edx, DWORD PTR _g_vSystemTaskView
	push	edx
	call	_SfAllocTaskMemory@12

; 893  :                SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 894  :                             LB_GETTEXT, wCurSel, (LPARAM) pchMem );

	mov	eax, DWORD PTR _pchMem$59822[ebp]
	push	eax
	mov	ecx, DWORD PTR _wCurSel$59816[ebp]
	and	ecx, 65535				; 0000ffffH
	push	ecx
	push	393					; 00000189H
	mov	edx, DWORD PTR _g_nTraceWindowDisplayed
	mov	eax, DWORD PTR _g_hwndTraceWindow[edx*4]
	push	eax
	call	DWORD PTR __imp__SendMessageA@16

; 895  :                pchMem[ sizeof( g_szCopyBuffer ) - 1 ] = 0;

	mov	ecx, DWORD PTR _pchMem$59822[ebp]
	mov	BYTE PTR [ecx+511], 0

; 896  :                strcpy( g_szCopyBuffer, pchMem );

	mov	edx, DWORD PTR _pchMem$59822[ebp]
	push	edx
	push	OFFSET FLAT:_g_szCopyBuffer
	call	_strcpy
	add	esp, 8

; 897  :                SfFreeTaskMemory( pchMem );

	mov	eax, DWORD PTR _pchMem$59822[ebp]
	push	eax
	call	_SfFreeTaskMemory@4
$L59821:

; 899  : 
; 900  :             if ( wCommand == IDM_CUTSTRING )

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 167				; 000000a7H
	jne	SHORT $L59825

; 902  :                SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 903  :                             LB_DELETESTRING, wCurSel, 0L );

	push	0
	mov	edx, DWORD PTR _wCurSel$59816[ebp]
	and	edx, 65535				; 0000ffffH
	push	edx
	push	386					; 00000182H
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16

; 904  :                SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 905  :                             LB_SETCURSEL, wCurSel, 0L );

	push	0
	mov	edx, DWORD PTR _wCurSel$59816[ebp]
	and	edx, 65535				; 0000ffffH
	push	edx
	push	390					; 00000186H
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16
$L59825:

; 908  :          else

	jmp	$L60024
$L59814:

; 909  :          if ( wCommand == IDM_PASTESTRING )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 166				; 000000a6H
	jne	SHORT $L59827

; 911  :             WORD wCurSel =
; 912  :                (WORD) SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 913  :                                    LB_GETCURSEL, 0, 0 );

	push	0
	push	0
	push	392					; 00000188H
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16
	mov	WORD PTR _wCurSel$59828[ebp], ax

; 914  :             SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 915  :                          LB_INSERTSTRING,
; 916  :                          wCurSel + 1, (LPARAM) g_szCopyBuffer );

	push	OFFSET FLAT:_g_szCopyBuffer
	mov	edx, DWORD PTR _wCurSel$59828[ebp]
	and	edx, 65535				; 0000ffffH
	add	edx, 1
	push	edx
	push	385					; 00000181H
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16

; 917  :             SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 918  :                          LB_SETCURSEL, wCurSel + 1, 0L );

	push	0
	mov	edx, DWORD PTR _wCurSel$59828[ebp]
	and	edx, 65535				; 0000ffffH
	add	edx, 1
	push	edx
	push	390					; 00000186H
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16

; 920  :          else

	jmp	$L60024
$L59827:

; 921  :          if ( wCommand == IDM_DELETESELECTED )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 154				; 0000009aH
	jne	SHORT $L59832

; 923  :             WORD wCurSel = (WORD) SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 924  :                                                LB_GETCURSEL, 0, 0 );

	push	0
	push	0
	push	392					; 00000188H
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16
	mov	WORD PTR _wCurSel$59833[ebp], ax

; 925  :             SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 926  :                          LB_DELETESTRING, wCurSel, 0L );

	push	0
	mov	edx, DWORD PTR _wCurSel$59833[ebp]
	and	edx, 65535				; 0000ffffH
	push	edx
	push	386					; 00000182H
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16

; 927  :             SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 928  :                          LB_SETCURSEL, wCurSel, 0L );

	push	0
	mov	edx, DWORD PTR _wCurSel$59833[ebp]
	and	edx, 65535				; 0000ffffH
	push	edx
	push	390					; 00000186H
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16

; 930  :          else

	jmp	$L60024
$L59832:

; 931  :          if ( wCommand == IDM_INSERTMARKER )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 155				; 0000009bH
	jne	$L59836

; 933  :             WORD wCurSel = (WORD) SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 934  :                                                LB_GETCURSEL, 0, 0 );

	push	0
	push	0
	push	392					; 00000188H
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16
	mov	WORD PTR _wCurSel$59837[ebp], ax

; 935  :             zSHORT nLth = sizeof( szMark ) - 1;

	mov	WORD PTR _nLth$59839[ebp], 103		; 00000067H

; 936  :             zLONG  j, k;
; 937  : 
; 938  :             g_lMark++;

	mov	edx, DWORD PTR _g_lMark
	add	edx, 1
	mov	DWORD PTR _g_lMark, edx

; 939  :             k = g_lMark;

	mov	eax, DWORD PTR _g_lMark
	mov	DWORD PTR _k$59841[ebp], eax
$L59843:

; 940  :             while ( k )

	cmp	DWORD PTR _k$59841[ebp], 0
	je	SHORT $L59844

; 942  :                nLth--;

	mov	cx, WORD PTR _nLth$59839[ebp]
	sub	cx, 1
	mov	WORD PTR _nLth$59839[ebp], cx

; 943  :                j = k % 10;

	mov	eax, DWORD PTR _k$59841[ebp]
	cdq
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	mov	DWORD PTR _j$59840[ebp], edx

; 944  :                szMark[ nLth ] = (char) (j + '0');

	mov	edx, DWORD PTR _j$59840[ebp]
	add	edx, 48					; 00000030H
	movsx	eax, WORD PTR _nLth$59839[ebp]
	mov	BYTE PTR _szMark[eax], dl

; 945  :                k /= 10;

	mov	eax, DWORD PTR _k$59841[ebp]
	cdq
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	mov	DWORD PTR _k$59841[ebp], eax

; 946  :             }

	jmp	SHORT $L59843
$L59844:

; 947  : 
; 948  :             SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 949  :                          LB_INSERTSTRING,
; 950  :                          wCurSel + 1, (LPARAM) szMark );

	push	OFFSET FLAT:_szMark
	mov	edx, DWORD PTR _wCurSel$59837[ebp]
	and	edx, 65535				; 0000ffffH
	add	edx, 1
	push	edx
	push	385					; 00000181H
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16

; 951  :             SendMessage( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 952  :                          LB_SETCURSEL, wCurSel + 1, 0L );

	push	0
	mov	edx, DWORD PTR _wCurSel$59837[ebp]
	and	edx, 65535				; 0000ffffH
	add	edx, 1
	push	edx
	push	390					; 00000186H
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16

; 954  :          else

	jmp	$L60024
$L59836:

; 955  :          if ( wCommand == IDM_PRINTPREVIEW    ||
; 956  :               wCommand == IDM_PREVIEW_ZOOMOUT ||
; 957  :               wCommand == IDM_PREVIEW_ZOOM    ||
; 958  :               wCommand == IDM_PREVIEW_ZOOMIN )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 160				; 000000a0H
	je	SHORT $L59849
	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 161				; 000000a1H
	je	SHORT $L59849
	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 162				; 000000a2H
	je	SHORT $L59849
	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 163				; 000000a3H
	jne	$L59848
$L59849:

; 960  :             HMENU hMenu = GetMenu( hWnd );

	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__GetMenu@4
	mov	DWORD PTR _hMenu$59850[ebp], eax

; 961  : 
; 962  :             CheckMenuItem( hMenu, IDM_PRINTPREVIEW,
; 963  :                            MF_BYCOMMAND | MF_UNCHECKED );

	push	0
	push	160					; 000000a0H
	mov	ecx, DWORD PTR _hMenu$59850[ebp]
	push	ecx
	call	DWORD PTR __imp__CheckMenuItem@12

; 964  :             CheckMenuItem( hMenu, IDM_PREVIEW_ZOOMOUT,
; 965  :                            MF_BYCOMMAND | MF_UNCHECKED );

	push	0
	push	161					; 000000a1H
	mov	edx, DWORD PTR _hMenu$59850[ebp]
	push	edx
	call	DWORD PTR __imp__CheckMenuItem@12

; 966  :             CheckMenuItem( hMenu, IDM_PREVIEW_ZOOM,
; 967  :                            MF_BYCOMMAND | MF_UNCHECKED );

	push	0
	push	162					; 000000a2H
	mov	eax, DWORD PTR _hMenu$59850[ebp]
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 968  :             CheckMenuItem( hMenu, IDM_PREVIEW_ZOOMIN,
; 969  :                            MF_BYCOMMAND | MF_UNCHECKED );

	push	0
	push	163					; 000000a3H
	mov	ecx, DWORD PTR _hMenu$59850[ebp]
	push	ecx
	call	DWORD PTR __imp__CheckMenuItem@12

; 970  :             switch ( wCommand )
; 971  :             {

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	mov	DWORD PTR -7916+[ebp], edx
	cmp	DWORD PTR -7916+[ebp], 161		; 000000a1H
	je	SHORT $L59855
	cmp	DWORD PTR -7916+[ebp], 162		; 000000a2H
	je	SHORT $L59856
	cmp	DWORD PTR -7916+[ebp], 163		; 000000a3H
	je	SHORT $L59857
	jmp	SHORT $L59858
$L59855:

; 972  :                case IDM_PREVIEW_ZOOMOUT:
; 973  :                   g_chPrintPreview = '0';

	mov	BYTE PTR _g_chPrintPreview, 48		; 00000030H

; 974  :                   CheckMenuItem( hMenu, IDM_PREVIEW_ZOOMOUT,
; 975  :                                  MF_BYCOMMAND | MF_CHECKED );

	push	8
	push	161					; 000000a1H
	mov	eax, DWORD PTR _hMenu$59850[ebp]
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 976  :                   break;

	jmp	SHORT $L59852
$L59856:

; 977  : 
; 978  :                case IDM_PREVIEW_ZOOM:
; 979  :                   g_chPrintPreview = '1';

	mov	BYTE PTR _g_chPrintPreview, 49		; 00000031H

; 980  :                   CheckMenuItem( hMenu, IDM_PREVIEW_ZOOM,
; 981  :                                  MF_BYCOMMAND | MF_CHECKED );

	push	8
	push	162					; 000000a2H
	mov	ecx, DWORD PTR _hMenu$59850[ebp]
	push	ecx
	call	DWORD PTR __imp__CheckMenuItem@12

; 982  :                   break;

	jmp	SHORT $L59852
$L59857:

; 983  : 
; 984  :                case IDM_PREVIEW_ZOOMIN:
; 985  :                   g_chPrintPreview = '2';

	mov	BYTE PTR _g_chPrintPreview, 50		; 00000032H

; 986  :                   CheckMenuItem( hMenu, IDM_PREVIEW_ZOOMIN,
; 987  :                                  MF_BYCOMMAND | MF_CHECKED );

	push	8
	push	163					; 000000a3H
	mov	edx, DWORD PTR _hMenu$59850[ebp]
	push	edx
	call	DWORD PTR __imp__CheckMenuItem@12

; 988  :                   break;

	jmp	SHORT $L59852
$L59858:

; 989  : 
; 990  :                case IDM_PRINTPREVIEW:
; 991  :                default:
; 992  :                   g_chPrintPreview = 0;

	mov	BYTE PTR _g_chPrintPreview, 0

; 993  :                   CheckMenuItem( hMenu, IDM_PRINTPREVIEW,
; 994  :                                  MF_BYCOMMAND | MF_CHECKED );

	push	8
	push	160					; 000000a0H
	mov	eax, DWORD PTR _hMenu$59850[ebp]
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12
$L59852:

; 997  : 
; 998  :             if ( g_chPrintPreview )

	movsx	ecx, BYTE PTR _g_chPrintPreview
	test	ecx, ecx
	je	SHORT $L59859

; 1000 :                g_chPrintDialog = 0;

	mov	BYTE PTR _g_chPrintDialog, 0

; 1001 :                CheckMenuItem( hMenu, IDM_PRINTDIALOG,
; 1002 :                               MF_BYCOMMAND | MF_UNCHECKED );

	push	0
	push	164					; 000000a4H
	mov	edx, DWORD PTR _hMenu$59850[ebp]
	push	edx
	call	DWORD PTR __imp__CheckMenuItem@12
$L59859:

; 1005 :          else

	jmp	$L60024
$L59848:

; 1006 :          if ( wCommand == IDM_PRINTDIALOG )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 164				; 000000a4H
	jne	$L59861

; 1008 :             HMENU hMenu = GetMenu( hWnd );

	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetMenu@4
	mov	DWORD PTR _hMenu$59862[ebp], eax

; 1009 :             g_chPrintDialog = g_chPrintDialog ? 0 : 'Y';

	movsx	edx, BYTE PTR _g_chPrintDialog
	neg	edx
	sbb	edx, edx
	and	edx, -89				; ffffffa7H
	add	edx, 89					; 00000059H
	mov	BYTE PTR _g_chPrintDialog, dl

; 1010 :             CheckMenuItem( hMenu, IDM_PRINTDIALOG,
; 1011 :                            MF_BYCOMMAND |
; 1012 :                              (g_chPrintDialog ? MF_CHECKED : MF_UNCHECKED) );

	movsx	eax, BYTE PTR _g_chPrintDialog
	neg	eax
	sbb	eax, eax
	and	eax, 8
	push	eax
	push	164					; 000000a4H
	mov	ecx, DWORD PTR _hMenu$59862[ebp]
	push	ecx
	call	DWORD PTR __imp__CheckMenuItem@12

; 1013 :             if ( g_chPrintDialog == 'Y' )

	movsx	edx, BYTE PTR _g_chPrintDialog
	cmp	edx, 89					; 00000059H
	jne	SHORT $L59863

; 1015 :                g_chPrintPreview = 0;

	mov	BYTE PTR _g_chPrintPreview, 0

; 1016 :                CheckMenuItem( hMenu, IDM_PRINTPREVIEW,
; 1017 :                               MF_BYCOMMAND | MF_CHECKED );

	push	8
	push	160					; 000000a0H
	mov	eax, DWORD PTR _hMenu$59862[ebp]
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 1018 :                CheckMenuItem( hMenu, IDM_PREVIEW_ZOOMOUT,
; 1019 :                               MF_BYCOMMAND | MF_UNCHECKED );

	push	0
	push	161					; 000000a1H
	mov	ecx, DWORD PTR _hMenu$59862[ebp]
	push	ecx
	call	DWORD PTR __imp__CheckMenuItem@12

; 1020 :                CheckMenuItem( hMenu, IDM_PREVIEW_ZOOM,
; 1021 :                               MF_BYCOMMAND | MF_UNCHECKED );

	push	0
	push	162					; 000000a2H
	mov	edx, DWORD PTR _hMenu$59862[ebp]
	push	edx
	call	DWORD PTR __imp__CheckMenuItem@12

; 1022 :                CheckMenuItem( hMenu, IDM_PREVIEW_ZOOMIN,
; 1023 :                               MF_BYCOMMAND | MF_UNCHECKED );

	push	0
	push	163					; 000000a3H
	mov	eax, DWORD PTR _hMenu$59862[ebp]
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12
$L59863:

; 1026 :          else

	jmp	$L60024
$L59861:

; 1027 :          if ( wCommand == IDM_SHOWTASKID )

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 124				; 0000007cH
	jne	SHORT $L59865

; 1029 :             HMENU hMenu = GetMenu( hWnd );

	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__GetMenu@4
	mov	DWORD PTR _hMenu$59866[ebp], eax

; 1030 :             if ( AnchorBlock->bShowTaskID )

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+1495]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L59867

; 1032 :                AnchorBlock->bShowTaskID = 0;

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+1495]
	and	al, -2					; fffffffeH
	mov	ecx, DWORD PTR _AnchorBlock
	mov	DWORD PTR [ecx+1495], eax

; 1033 :                CheckMenuItem( hMenu, IDM_SHOWTASKID,
; 1034 :                               MF_BYCOMMAND | MF_UNCHECKED );

	push	0
	push	124					; 0000007cH
	mov	edx, DWORD PTR _hMenu$59866[ebp]
	push	edx
	call	DWORD PTR __imp__CheckMenuItem@12

; 1036 :             else

	jmp	SHORT $L59868
$L59867:

; 1038 :                AnchorBlock->bShowTaskID = 1;

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+1495]
	or	ecx, 1
	mov	edx, DWORD PTR _AnchorBlock
	mov	DWORD PTR [edx+1495], ecx

; 1039 :                CheckMenuItem( hMenu, IDM_SHOWTASKID,
; 1040 :                               MF_BYCOMMAND | MF_CHECKED );

	push	8
	push	124					; 0000007cH
	mov	eax, DWORD PTR _hMenu$59866[ebp]
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12
$L59868:

; 1043 :          else

	jmp	$L60024
$L59865:

; 1044 :          if ( wCommand == IDM_ABOUT )

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 131				; 00000083H
	jne	SHORT $L59870

; 1046 :             DialogBox( hInst, MAKEINTRESOURCE( IDD_ABOUT ), hWnd, fpAbout );

	push	0
	mov	edx, DWORD PTR _fpAbout
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	push	105					; 00000069H
	mov	ecx, DWORD PTR _hInst
	push	ecx
	call	DWORD PTR __imp__DialogBoxParamA@20

; 1048 :          else

	jmp	$L60024
$L59870:

; 1049 :          if ( wCommand == IDM_HIDEWINDOW )   // If launched in systray mode

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 320				; 00000140H
	jne	SHORT $L59875

; 1051 :             ShowWindow( hWnd, SW_HIDE );     // having no Exit option but a hide Window

	push	0
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__ShowWindow@8

; 1053 :          else

	jmp	$L60024
$L59875:

; 1054 :          if ( wCommand == IDM_EXITPROGRAM )   // F3 Exit

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 116				; 00000074H
	jne	SHORT $L59877

; 1056 :          // SendMessage( (HWND) AnchorBlock->lOE_hMainWnd, // hWnd,
; 1057 :          //              WM_COMMAND, (WPARAM) IDM_LISTTASKS, 10000L );
; 1058 :             PostMessage( hWnd, WM_CLOSE, 0, 0L );

	push	0
	push	0
	push	16					; 00000010H
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__PostMessageA@16

; 1059 :             break;

	jmp	$L59724
$L59877:

; 1061 :          else
; 1062 :          if ( wCommand == IDM_KILLZEIDON )   // Kill Zeidon

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 117				; 00000075H
	jne	$L59879

; 1064 :             LPTASK hTask;
; 1065 :             LPTASK lpTask;
; 1066 :             int nResponse = IDYES;

	mov	DWORD PTR _nResponse$59882[ebp], 6

; 1067 : 
; 1068 :             // See if any tasks are active.
; 1069 :             hTask = AnchorBlock->hFirstTask;

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+130]
	mov	DWORD PTR _hTask$59880[ebp], edx

; 1070 :             lpTask = zGETPTR( hTask );

	mov	eax, DWORD PTR _hTask$59880[ebp]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$59881[ebp], eax
$L59884:

; 1071 : 
; 1072 :             while ( lpTask )

	cmp	DWORD PTR _lpTask$59881[ebp], 0
	je	SHORT $L59885

; 1074 :                if ( hTask != AnchorBlock->hMainTask &&
; 1075 :                     IsWindow( (HWND) lpTask->hMainWnd ) )

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR _hTask$59880[ebp]
	cmp	edx, DWORD PTR [ecx+106]
	je	SHORT $L59887
	mov	eax, DWORD PTR _lpTask$59881[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR __imp__IsWindow@4
	test	eax, eax
	je	SHORT $L59887

; 1077 :                   break;

	jmp	SHORT $L59885
$L59887:

; 1079 : 
; 1080 :                lpTask = zGETPTR( lpTask->hNextTask );

	mov	edx, DWORD PTR _lpTask$59881[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$59881[ebp], eax

; 1081 :             }

	jmp	SHORT $L59884
$L59885:

; 1082 : 
; 1083 :             if ( lpTask )

	cmp	DWORD PTR _lpTask$59881[ebp], 0
	je	SHORT $L59888

; 1085 :                nResponse =
; 1086 :                   MessageBox( hWnd,
; 1087 :                               "Zeidon Applications are still active.\n"
; 1088 :                               "If you continue, you will lose unsaved data.\n"
; 1089 :                               "Do you still want to kill Zeidon?",
; 1090 :                               "Zeidon Object Services",
; 1091 :                               MB_ICONEXCLAMATION |
; 1092 :                               MB_YESNO | MB_TASKMODAL );

	push	8244					; 00002034H
	push	OFFSET FLAT:??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0HF@FBII@Zeidon?5Applications?5are?5still?5ac@ ; `string'
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__MessageBoxA@16
	mov	DWORD PTR _nResponse$59882[ebp], eax
$L59888:

; 1094 : 
; 1095 :             if ( nResponse == IDYES )

	cmp	DWORD PTR _nResponse$59882[ebp], 6
	jne	SHORT $L59892

; 1097 :                zCHAR szFileName[ zMAX_FILENAME_LTH + 1 ];
; 1098 : 
; 1099 :                SysReadZeidonIni( -1, "[ObjectEngine]", "KillZeidon", szFileName );

	lea	edx, DWORD PTR _szFileName$59891[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0L@NDGH@KillZeidon?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 1100 :                if ( szFileName[ 0 ] )

	movsx	eax, BYTE PTR _szFileName$59891[ebp]
	test	eax, eax
	je	SHORT $L59892

; 1101 :                   WinExec( szFileName, SW_SHOWNORMAL );

	push	1
	lea	ecx, DWORD PTR _szFileName$59891[ebp]
	push	ecx
	call	DWORD PTR __imp__WinExec@8
$L59892:

; 1103 : 
; 1104 :             break;

	jmp	$L59724
$L59879:

; 1106 :          else
; 1107 :          if ( wCommand == IDM_SHOWINTL )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 115				; 00000073H
	jne	$L59894

; 1109 :             LPINTERNATIONAL lpIntl = zGETPTR( AnchorBlock->hInternational );

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+2515]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpIntl$59895[ebp], eax

; 1110 :             if ( lpIntl )

	cmp	DWORD PTR _lpIntl$59895[ebp], 0
	je	$L59896

; 1112 :                TraceLineI( "(wa) nCountry :    ", lpIntl->nCountry );

	mov	edx, DWORD PTR _lpIntl$59895[ebp]
	movsx	eax, WORD PTR [edx+2]
	push	eax
	push	OFFSET FLAT:??_C@_0BE@NOHJ@?$CIwa?$CJ?5nCountry?5?3?5?5?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1113 :                TraceLineS( "(wa) lpCountry :   ", lpIntl->szCountry );

	mov	ecx, DWORD PTR _lpIntl$59895[ebp]
	add	ecx, 4
	push	ecx
	push	OFFSET FLAT:??_C@_0BE@HBGB@?$CIwa?$CJ?5lpCountry?5?3?5?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1114 :                TraceLineS( "(wa) lpLanguage :  ", lpIntl->szLanguage );

	mov	edx, DWORD PTR _lpIntl$59895[ebp]
	add	edx, 37					; 00000025H
	push	edx
	push	OFFSET FLAT:??_C@_0BE@KHIN@?$CIwa?$CJ?5lpLanguage?5?3?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1115 :                TraceLineS( "(wa) lpList :      ", lpIntl->szList );

	mov	eax, DWORD PTR _lpIntl$59895[ebp]
	add	eax, 72					; 00000048H
	push	eax
	push	OFFSET FLAT:??_C@_0BE@LFNC@?$CIwa?$CJ?5lpList?5?3?5?5?5?5?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1116 :                TraceLineI( "(wa) nMeasure :    ", lpIntl->nMeasure );

	mov	ecx, DWORD PTR _lpIntl$59895[ebp]
	movsx	edx, WORD PTR [ecx+77]
	push	edx
	push	OFFSET FLAT:??_C@_0BE@NDCM@?$CIwa?$CJ?5nMeasure?5?3?5?5?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1117 :                TraceLineI( "(wa) nTime :       ", lpIntl->nTime );

	mov	eax, DWORD PTR _lpIntl$59895[ebp]
	movsx	ecx, WORD PTR [eax+79]
	push	ecx
	push	OFFSET FLAT:??_C@_0BE@KAEI@?$CIwa?$CJ?5nTime?5?3?5?5?5?5?5?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1118 :                TraceLineS( "(wa) lpTime :      ", lpIntl->szTime );

	mov	edx, DWORD PTR _lpIntl$59895[ebp]
	add	edx, 81					; 00000051H
	push	edx
	push	OFFSET FLAT:??_C@_0BE@EAFP@?$CIwa?$CJ?5lpTime?5?3?5?5?5?5?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1119 :                TraceLineS( "(wa) lp1159 :      ", lpIntl->sz1159 );

	mov	eax, DWORD PTR _lpIntl$59895[ebp]
	add	eax, 86					; 00000056H
	push	eax
	push	OFFSET FLAT:??_C@_0BE@NNND@?$CIwa?$CJ?5lp1159?5?3?5?5?5?5?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1120 :                TraceLineS( "(wa) lp2359 :      ", lpIntl->sz2359 );

	mov	ecx, DWORD PTR _lpIntl$59895[ebp]
	add	ecx, 91					; 0000005bH
	push	ecx
	push	OFFSET FLAT:??_C@_0BE@LOPD@?$CIwa?$CJ?5lp2359?5?3?5?5?5?5?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1121 :                TraceLineI( "(wa) nTLZero :     ", lpIntl->nTLZero );

	mov	edx, DWORD PTR _lpIntl$59895[ebp]
	movsx	eax, WORD PTR [edx+96]
	push	eax
	push	OFFSET FLAT:??_C@_0BE@KEHA@?$CIwa?$CJ?5nTLZero?5?3?5?5?5?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1122 :                TraceLineS( "(wa) lpShortDate : ", lpIntl->hShortDate );

	mov	ecx, DWORD PTR _lpIntl$59895[ebp]
	mov	edx, DWORD PTR [ecx+98]
	push	edx
	push	OFFSET FLAT:??_C@_0BE@BLBB@?$CIwa?$CJ?5lpShortDate?5?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1123 :                TraceLineS( "(wa) lpLongDate :  ", lpIntl->hLongDate );

	mov	eax, DWORD PTR _lpIntl$59895[ebp]
	mov	ecx, DWORD PTR [eax+102]
	push	ecx
	push	OFFSET FLAT:??_C@_0BE@KHCE@?$CIwa?$CJ?5lpLongDate?5?3?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1124 :                TraceLineS( "(wa) lpTimeFmt :   ", lpIntl->hTimeFmt );

	mov	edx, DWORD PTR _lpIntl$59895[ebp]
	mov	eax, DWORD PTR [edx+106]
	push	eax
	push	OFFSET FLAT:??_C@_0BE@CKIL@?$CIwa?$CJ?5lpTimeFmt?5?3?5?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1125 :                TraceLineS( "(wa) lpCurrency :  ", lpIntl->szCurrency );

	mov	ecx, DWORD PTR _lpIntl$59895[ebp]
	add	ecx, 110				; 0000006eH
	push	ecx
	push	OFFSET FLAT:??_C@_0BE@HDJM@?$CIwa?$CJ?5lpCurrency?5?3?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1126 :                TraceLineI( "(wa) nCurrency :   ", lpIntl->nCurrency );

	mov	edx, DWORD PTR _lpIntl$59895[ebp]
	movsx	eax, WORD PTR [edx+120]
	push	eax
	push	OFFSET FLAT:??_C@_0BE@CFHL@?$CIwa?$CJ?5nCurrency?5?3?5?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1127 :                TraceLineI( "(wa) nCurrDigits : ", lpIntl->nCurrDigits );

	mov	ecx, DWORD PTR _lpIntl$59895[ebp]
	movsx	edx, WORD PTR [ecx+122]
	push	edx
	push	OFFSET FLAT:??_C@_0BE@JENA@?$CIwa?$CJ?5nCurrDigits?5?3?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1128 :                TraceLineI( "(wa) nNegCurr :    ", lpIntl->nNegCurr );

	mov	eax, DWORD PTR _lpIntl$59895[ebp]
	movsx	ecx, WORD PTR [eax+124]
	push	ecx
	push	OFFSET FLAT:??_C@_0BE@HLGF@?$CIwa?$CJ?5nNegCurr?5?3?5?5?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1129 :                TraceLineS( "(wa) lpThousand :  ", lpIntl->szThousand );

	mov	edx, DWORD PTR _lpIntl$59895[ebp]
	add	edx, 126				; 0000007eH
	push	edx
	push	OFFSET FLAT:??_C@_0BE@KPDD@?$CIwa?$CJ?5lpThousand?5?3?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1130 :                TraceLineS( "(wa) lpDecimal :   ", lpIntl->szDecimal );

	mov	eax, DWORD PTR _lpIntl$59895[ebp]
	add	eax, 131				; 00000083H
	push	eax
	push	OFFSET FLAT:??_C@_0BE@OKLB@?$CIwa?$CJ?5lpDecimal?5?3?5?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1131 :                TraceLineI( "(wa) nDigits :     ", lpIntl->nDigits );

	mov	ecx, DWORD PTR _lpIntl$59895[ebp]
	movsx	edx, WORD PTR [ecx+136]
	push	edx
	push	OFFSET FLAT:??_C@_0BE@BHPJ@?$CIwa?$CJ?5nDigits?5?3?5?5?5?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1132 :                TraceLineI( "(wa) nLZero :      ", lpIntl->nLZero );

	mov	eax, DWORD PTR _lpIntl$59895[ebp]
	movsx	ecx, WORD PTR [eax+138]
	push	ecx
	push	OFFSET FLAT:??_C@_0BE@LDIE@?$CIwa?$CJ?5nLZero?5?3?5?5?5?5?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1134 :             else

	jmp	SHORT $L59918
$L59896:

; 1135 :                TraceLineS( "(wa) No international information ",
; 1136 :                            "is available" );

	push	OFFSET FLAT:??_C@_0N@JDNP@is?5available?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0CD@LNDP@?$CIwa?$CJ?5No?5international?5informatio@ ; `string'
	call	_TraceLineS@8
$L59918:

; 1137 :             break;

	jmp	$L59724
$L59894:

; 1139 :          else
; 1140 :          if ( wCommand == IDM_CLEARTRACE )    // Empty all trace windows

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 122				; 0000007aH
	jne	$L59922

; 1142 :             UINT k;
; 1143 : 
; 1144 :             ShowWindow( g_hwndTraceWindow[ g_nTraceWindowDisplayed ],
; 1145 :                         SW_HIDE );

	push	0
	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__ShowWindow@8

; 1146 :             for ( k = 0; k < g_nTraceWindowCnt; k++ )

	mov	DWORD PTR _k$59923[ebp], 0
	jmp	SHORT $L59924
$L59925:
	mov	edx, DWORD PTR _k$59923[ebp]
	add	edx, 1
	mov	DWORD PTR _k$59923[ebp], edx
$L59924:
	mov	eax, DWORD PTR _k$59923[ebp]
	cmp	eax, DWORD PTR _g_nTraceWindowCnt
	jae	SHORT $L59926

; 1147 :                SendMessage( g_hwndTraceWindow[ k ], LB_RESETCONTENT, 0, 0 );

	push	0
	push	0
	push	388					; 00000184H
	mov	ecx, DWORD PTR _k$59923[ebp]
	mov	edx, DWORD PTR _g_hwndTraceWindow[ecx*4]
	push	edx
	call	DWORD PTR __imp__SendMessageA@16
	jmp	SHORT $L59925
$L59926:

; 1148 : 
; 1149 :             ShowWindow( g_hwndTraceWindow[ 0 ], SW_SHOW );

	push	5
	mov	eax, DWORD PTR _g_hwndTraceWindow
	push	eax
	call	DWORD PTR __imp__ShowWindow@8

; 1150 :             g_nTraceWindowHead      = 0;

	mov	DWORD PTR _g_nTraceWindowHead, 0

; 1151 :             g_nTraceWindowDisplayed = 0;

	mov	DWORD PTR _g_nTraceWindowDisplayed, 0

; 1153 :          else

	jmp	$L60024
$L59922:

; 1154 :          if ( wCommand == IDM_SETDBHTRACE )   // Set DBHandler trace level

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 132				; 00000084H
	jne	SHORT $L59928

; 1156 :             DialogBox( hInst, MAKEINTRESOURCE( IDD_SETTRACE ),
; 1157 :                        hWnd, fpSetTrace );

	push	0
	mov	edx, DWORD PTR _fpSetTrace
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	push	106					; 0000006aH
	mov	ecx, DWORD PTR _hInst
	push	ecx
	call	DWORD PTR __imp__DialogBoxParamA@20

; 1159 :          else

	jmp	$L60024
$L59928:

; 1160 :          if ( wCommand == IDM_SETOETRACE )   // Set OE Warning trace

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 133				; 00000085H
	jne	SHORT $L59933

; 1162 :             g_chTraceOE_Warning = g_chTraceOE_Warning ? 0 : 'Y';

	movsx	eax, BYTE PTR _g_chTraceOE_Warning
	neg	eax
	sbb	eax, eax
	and	al, -89					; ffffffa7H
	add	eax, 89					; 00000059H
	mov	BYTE PTR _g_chTraceOE_Warning, al

; 1163 :             CheckMenuItem( GetMenu( hWnd ), IDM_SETOETRACE,
; 1164 :                            MF_BYCOMMAND |
; 1165 :                            (g_chTraceOE_Warning == 0 ? MF_UNCHECKED :
; 1166 :                                                        MF_CHECKED) );

	movsx	ecx, BYTE PTR _g_chTraceOE_Warning
	neg	ecx
	sbb	ecx, ecx
	and	ecx, 8
	push	ecx
	push	133					; 00000085H
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__GetMenu@4
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 1168 :          else

	jmp	$L60024
$L59933:

; 1169 :          if ( wCommand == IDM_SETZDRTRACE )   // Set ZDr Action trace

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 134				; 00000086H
	jne	SHORT $L59935

; 1171 :             g_chTraceZDrActions = g_chTraceZDrActions ? 0 : 'Y';

	movsx	ecx, BYTE PTR _g_chTraceZDrActions
	neg	ecx
	sbb	ecx, ecx
	and	ecx, -89				; ffffffa7H
	add	ecx, 89					; 00000059H
	mov	BYTE PTR _g_chTraceZDrActions, cl

; 1172 :             CheckMenuItem( GetMenu( hWnd ), IDM_SETZDRTRACE,
; 1173 :                            MF_BYCOMMAND |
; 1174 :                            (g_chTraceZDrActions == 0 ? MF_UNCHECKED :
; 1175 :                                                        MF_CHECKED) );

	movsx	edx, BYTE PTR _g_chTraceZDrActions
	neg	edx
	sbb	edx, edx
	and	edx, 8
	push	edx
	push	134					; 00000086H
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__GetMenu@4
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 1177 :          else

	jmp	$L60024
$L59935:

; 1178 :          if ( wCommand == IDM_SETWEBTRACE )   // Set ZDr Action trace

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 135				; 00000087H
	jne	SHORT $L59937

; 1180 :             g_chTraceWebActions = g_chTraceWebActions ? 0 : 'Y';

	movsx	edx, BYTE PTR _g_chTraceWebActions
	neg	edx
	sbb	edx, edx
	and	edx, -89				; ffffffa7H
	add	edx, 89					; 00000059H
	mov	BYTE PTR _g_chTraceWebActions, dl

; 1181 :             CheckMenuItem( GetMenu( hWnd ), IDM_SETWEBTRACE,
; 1182 :                            MF_BYCOMMAND |
; 1183 :                            (g_chTraceWebActions == 0 ? MF_UNCHECKED :
; 1184 :                                                        MF_CHECKED) );

	movsx	eax, BYTE PTR _g_chTraceWebActions
	neg	eax
	sbb	eax, eax
	and	eax, 8
	push	eax
	push	135					; 00000087H
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetMenu@4
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 1186 : #ifdef ALLOC_FREE_TRACE
; 1187 :          else
; 1188 :          if ( wCommand == IDM_SETMEMORYTRACE )   // Set Memory trace
; 1189 :          {
; 1190 :             g_chTraceMemory = g_chTraceMemory ? 0 : 'Y';
; 1191 :             AnchorBlock->bTraceMem = g_chTraceMemory ? TRUE : FALSE;
; 1192 :             CheckMenuItem( GetMenu( hWnd ), IDM_SETMEMORYTRACE,
; 1193 :                            MF_BYCOMMAND |
; 1194 :                            (g_chTraceMemory == 0 ? MF_UNCHECKED :
; 1195 :                                                    MF_CHECKED) );
; 1196 :          }
; 1197 :          else
; 1198 :          if ( wCommand == IDM_TRACEMEMORYALLOCATIONS )
; 1199 :          {
; 1200 :             if ( AnchorBlock->bTraceMem )
; 1201 :                fnListDataspaceLeak( AnchorBlock, 0, 1 );
; 1202 :          }
; 1203 :          else
; 1204 :          if ( wCommand == IDM_TRACEMEMORYDATA )
; 1205 :          {
; 1206 :             if ( AnchorBlock->bTraceMem )
; 1207 :                fnListDataspaceLeak( AnchorBlock, 0, 2 );
; 1208 :          }
; 1209 :          else
; 1210 :          if ( wCommand == IDM_CLEARMEMORYALLOCATIONS )
; 1211 :          {
; 1212 :             if ( AnchorBlock->bTraceMem )
; 1213 :                fnListDataspaceLeak( AnchorBlock, 0, -1 );
; 1214 :          }
; 1215 : #endif
; 1216 : #ifdef LOAD_FREE_TRACE
; 1217 :          else
; 1218 :          if ( wCommand == IDM_SETLOADTRACE )   // Set Load trace
; 1219 :          {
; 1220 :             g_chTraceLoad = g_chTraceLoad ? 0 : 'Y';
; 1221 :             AnchorBlock->bTraceLoad = g_chTraceLoad ? TRUE : FALSE;
; 1222 :             CheckMenuItem( GetMenu( hWnd ), IDM_SETLOADTRACE,
; 1223 :                            MF_BYCOMMAND |
; 1224 :                            (g_chTraceLoad == 0 ? MF_UNCHECKED :
; 1225 :                                                    MF_CHECKED) );
; 1226 :          }
; 1227 :          else
; 1228 :          if ( wCommand == IDM_TRACELOADALLOCATIONS )
; 1229 :          {
; 1230 :             if ( AnchorBlock->bTraceLoad )
; 1231 :                fnListDataspaceLeak( AnchorBlock, 0, 1 );
; 1232 :          }
; 1233 :          else
; 1234 :          if ( wCommand == IDM_TRACELOADDATA )
; 1235 :          {
; 1236 :             if ( AnchorBlock->bTraceLoad )
; 1237 :                fnListDataspaceLeak( AnchorBlock, 0, 2 );
; 1238 :          }
; 1239 :          else
; 1240 :          if ( wCommand == IDM_CLEARLOADALLOCATIONS )
; 1241 :          {
; 1242 :             if ( AnchorBlock->bTraceLoad )
; 1243 :                fnListDataspaceLeak( AnchorBlock, 0, -1 );
; 1244 :          }
; 1245 : #endif
; 1246 :          else

	jmp	$L60024
$L59937:

; 1247 :          if ( wCommand == IDM_SCROLLTRACE )   // Scroll trace

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 136				; 00000088H
	jne	SHORT $L59939

; 1249 :             g_chScrollTrace = g_chScrollTrace ? 0 : 'Y';

	movsx	eax, BYTE PTR _g_chScrollTrace
	neg	eax
	sbb	eax, eax
	and	al, -89					; ffffffa7H
	add	eax, 89					; 00000059H
	mov	BYTE PTR _g_chScrollTrace, al

; 1250 :             CheckMenuItem( GetMenu( hWnd ), IDM_SCROLLTRACE,
; 1251 :                            MF_BYCOMMAND |
; 1252 :                               (g_chScrollTrace ? MF_CHECKED : MF_UNCHECKED) );

	movsx	ecx, BYTE PTR _g_chScrollTrace
	neg	ecx
	sbb	ecx, ecx
	and	ecx, 8
	push	ecx
	push	136					; 00000088H
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__GetMenu@4
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 1254 :          else

	jmp	$L60024
$L59939:

; 1255 :          if ( wCommand == IDM_TRACEDATASPACE )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 153				; 00000099H
	jne	SHORT $L59941

; 1257 :             MiListOE_Memory( 0, -1 );  // toggle dataspace alloc/free tracing

	push	-1
	push	0
	call	_MiListOE_Memory@8

; 1259 :          else

	jmp	$L60024
$L59941:

; 1260 :          if ( wCommand == IDM_LISTTASKS )   // Display task information

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 112				; 00000070H
	jne	$L59943

; 1262 :             if ( AnchorBlock )

	cmp	DWORD PTR _AnchorBlock, 0
	je	$L59944

; 1264 :             // LPTASK lpTask;
; 1265 :             // LPTASK hTask;
; 1266 :                char   szMessage[ 512 ];
; 1267 : 
; 1268 : #if 1  // DGC 6/13/97  Can't print allocated memory right now.
; 1269 :                LPDATAHEADER    lpDataHeader;
; 1270 :                FreespaceRecord *lpFreespace;
; 1271 :                zULONG ulAlloc;
; 1272 :                zULONG ulUsed;
; 1273 :                zULONG ulFree;
; 1274 : 
; 1275 :                // Get System available memory
; 1276 :             // lFree = GlobalCompact( 0 );
; 1277 :             // lFree = (lFree / 1024) + 10000;
; 1278 :             // zstrcpy( szMessage, "System Memory Available:" );
; 1279 :             // zltoa( lFree, szMessage + 200 );
; 1280 :             // zstrcat( szMessage, szMessage + 201 );
; 1281 :             // zstrcat( szMessage, "K" );
; 1282 :             // SysMessageList( szMessage );
; 1283 : 
; 1284 :                // Display Anchor block memory utilization
; 1285 :                lpDataHeader = (LPDATAHEADER) AnchorBlock;

	mov	edx, DWORD PTR _AnchorBlock
	mov	DWORD PTR _lpDataHeader$59946[ebp], edx

; 1286 :                ulFree  = 0;

	mov	DWORD PTR _ulFree$59950[ebp], 0

; 1287 :                ulUsed  = 0;

	mov	DWORD PTR _ulUsed$59949[ebp], 0

; 1288 :                ulAlloc = lpDataHeader->ulUseableSize; // used memory spaces

	mov	eax, DWORD PTR _lpDataHeader$59946[ebp]
	mov	ecx, DWORD PTR [eax+10]
	mov	DWORD PTR _ulAlloc$59948[ebp], ecx

; 1289 :                lpFreespace = &lpDataHeader->Freespace;

	mov	edx, DWORD PTR _lpDataHeader$59946[ebp]
	add	edx, 46					; 0000002eH
	mov	DWORD PTR _lpFreespace$59947[ebp], edx
$L59953:

; 1290 :                while ( lpFreespace )

	cmp	DWORD PTR _lpFreespace$59947[ebp], 0
	je	SHORT $L59954

; 1292 :                   ulFree += lpFreespace->ulFreeLth;

	mov	eax, DWORD PTR _lpFreespace$59947[ebp]
	mov	ecx, DWORD PTR _ulFree$59950[ebp]
	add	ecx, DWORD PTR [eax+6]
	mov	DWORD PTR _ulFree$59950[ebp], ecx

; 1293 :                   lpFreespace = zGETPTR( lpFreespace->hNextFreespace );

	mov	edx, DWORD PTR _lpFreespace$59947[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpFreespace$59947[ebp], eax

; 1294 :                }

	jmp	SHORT $L59953
$L59954:

; 1295 : 
; 1296 :                zstrcpy( szMessage, "Anchor Block  Alloc: " );

	push	OFFSET FLAT:??_C@_0BG@HELH@Anchor?5Block?5?5Alloc?3?5?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMessage$59945[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 1297 :                ulUsed = ulAlloc - ulFree;

	mov	edx, DWORD PTR _ulAlloc$59948[ebp]
	sub	edx, DWORD PTR _ulFree$59950[ebp]
	mov	DWORD PTR _ulUsed$59949[ebp], edx

; 1298 :                zltoa( ulAlloc, szMessage + 200 );

	push	10					; 0000000aH
	lea	eax, DWORD PTR _szMessage$59945[ebp+200]
	push	eax
	mov	ecx, DWORD PTR _ulAlloc$59948[ebp]
	push	ecx
	call	__ltoa
	add	esp, 12					; 0000000cH

; 1299 :                zstrcat( szMessage, szMessage + 200 );

	lea	edx, DWORD PTR _szMessage$59945[ebp+200]
	push	edx
	lea	eax, DWORD PTR _szMessage$59945[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 1300 :                zstrcat( szMessage, "   Used: " );

	push	OFFSET FLAT:??_C@_09DEGO@?5?5?5Used?3?5?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMessage$59945[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 1301 :                zltoa( ulUsed, szMessage + 200 );

	push	10					; 0000000aH
	lea	edx, DWORD PTR _szMessage$59945[ebp+200]
	push	edx
	mov	eax, DWORD PTR _ulUsed$59949[ebp]
	push	eax
	call	__ltoa
	add	esp, 12					; 0000000cH

; 1302 :                zstrcat( szMessage, szMessage + 200 );

	lea	ecx, DWORD PTR _szMessage$59945[ebp+200]
	push	ecx
	lea	edx, DWORD PTR _szMessage$59945[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 1303 :                zstrcat( szMessage, "   Free: " );

	push	OFFSET FLAT:??_C@_09CCLP@?5?5?5Free?3?5?$AA@ ; `string'
	lea	eax, DWORD PTR _szMessage$59945[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 1304 :                zltoa( ulFree, szMessage + 200 );

	push	10					; 0000000aH
	lea	ecx, DWORD PTR _szMessage$59945[ebp+200]
	push	ecx
	mov	edx, DWORD PTR _ulFree$59950[ebp]
	push	edx
	call	__ltoa
	add	esp, 12					; 0000000cH

; 1305 :                zstrcat( szMessage, szMessage + 200 );

	lea	eax, DWORD PTR _szMessage$59945[ebp+200]
	push	eax
	lea	ecx, DWORD PTR _szMessage$59945[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 1306 :                SysMessageList( szMessage );

	lea	edx, DWORD PTR _szMessage$59945[ebp]
	push	edx
	call	_SysMessageList@4

; 1307 : #endif
; 1308 : 
; 1309 : #if 1
; 1310 :                // Display open files.
; 1311 :                DisplayOpenFiles( "ListTasks:", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@LCKF@ListTasks?3?$AA@ ; `string'
	call	_DisplayOpenFiles@8
$L59944:

; 1549 :          else

	jmp	$L60024
$L59943:

; 1550 :          if ( wCommand == IDM_LISTMUTEXSTATUS )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 170				; 000000aaH
	jne	SHORT $L59960

; 1552 :             char szMsg[ 4000 ];
; 1553 : 
; 1554 :             SysMutexQueryStatus( );

	call	_SysMutexQueryStatus@0

; 1555 :             TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1556 :             MiListOE_Memory( 0, 0 );

	push	0
	push	0
	call	_MiListOE_Memory@8

; 1557 :             SysDescribeZeidonPageTable( szMsg );

	lea	ecx, DWORD PTR _szMsg$59961[ebp]
	push	ecx
	call	_SysDescribeZeidonPageTable@4

; 1558 :             TraceLineS( " Page table info - ", szMsg );

	lea	edx, DWORD PTR _szMsg$59961[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BE@BDI@?5Page?5table?5info?5?9?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1560 :          else

	jmp	$L60024
$L59960:

; 1561 :          if ( wCommand == IDM_LISTVOBJS )   // Display objects

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 113				; 00000071H
	jne	$L59964

; 1563 :             if ( AnchorBlock )

	cmp	DWORD PTR _AnchorBlock, 0
	je	$L59971

; 1565 :                LPAPP    lpApp;
; 1566 :                LPVIEWOD lpViewOD;
; 1567 :                char szMessage[ 160 ];
; 1568 : 
; 1569 :                lpApp = zGETPTR( AnchorBlock->hFirstApp );

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+126]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpApp$59966[ebp], eax
$L59970:

; 1570 :                while ( lpApp )

	cmp	DWORD PTR _lpApp$59966[ebp], 0
	je	$L59971

; 1572 :                   zstrcpy( szMessage, "Application:'" );

	push	OFFSET FLAT:??_C@_0O@ENOG@Application?3?8?$AA@ ; `string'
	lea	eax, DWORD PTR _szMessage$59968[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 1573 :                   if ( *lpApp->szName )

	mov	ecx, DWORD PTR _lpApp$59966[ebp]
	movsx	edx, BYTE PTR [ecx+6]
	test	edx, edx
	je	SHORT $L59973

; 1574 :                      zstrcat( szMessage, lpApp->szName );

	mov	eax, DWORD PTR _lpApp$59966[ebp]
	add	eax, 6
	push	eax
	lea	ecx, DWORD PTR _szMessage$59968[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L59973:

; 1575 : 
; 1576 :                   zstrcat( szMessage, "'" );

	push	OFFSET FLAT:??_C@_01HAF@?8?$AA@		; `string'
	lea	edx, DWORD PTR _szMessage$59968[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 1577 :                   SysMessageList( szMessage );

	lea	eax, DWORD PTR _szMessage$59968[ebp]
	push	eax
	call	_SysMessageList@4

; 1578 :                   lpViewOD = zGETPTR( lpApp->hFirstViewOD );

	mov	ecx, DWORD PTR _lpApp$59966[ebp]
	mov	edx, DWORD PTR [ecx+84]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewOD$59967[ebp], eax
$L59976:

; 1579 :                   while ( lpViewOD )

	cmp	DWORD PTR _lpViewOD$59967[ebp], 0
	je	SHORT $L59977

; 1581 :                      zstrcpy( szMessage, "   View Object:'" );

	push	OFFSET FLAT:??_C@_0BB@FJJG@?5?5?5View?5Object?3?8?$AA@ ; `string'
	lea	eax, DWORD PTR _szMessage$59968[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 1582 :                      if ( *lpViewOD->szName )

	mov	ecx, DWORD PTR _lpViewOD$59967[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	test	edx, edx
	je	SHORT $L59979

; 1583 :                         zstrcat( szMessage, lpViewOD->szName );

	mov	eax, DWORD PTR _lpViewOD$59967[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _szMessage$59968[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L59979:

; 1584 : 
; 1585 :                      zstrcat( szMessage, "'" );

	push	OFFSET FLAT:??_C@_01HAF@?8?$AA@		; `string'
	lea	edx, DWORD PTR _szMessage$59968[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 1586 :                      SysMessageList( szMessage );

	lea	eax, DWORD PTR _szMessage$59968[ebp]
	push	eax
	call	_SysMessageList@4

; 1587 :                      lpViewOD = zGETPTR( lpViewOD->hNextViewOD );

	mov	ecx, DWORD PTR _lpViewOD$59967[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewOD$59967[ebp], eax

; 1588 :                   }

	jmp	SHORT $L59976
$L59977:

; 1589 : 
; 1590 :                   lpApp = zGETPTR( lpApp->hNextApp );

	mov	eax, DWORD PTR _lpApp$59966[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpApp$59966[ebp], eax

; 1591 :                }

	jmp	$L59970
$L59971:

; 1594 :          else

	jmp	$L60024
$L59964:

; 1595 :          if ( wCommand == IDM_RESETTIMEOUT )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 218				; 000000daH
	jne	SHORT $L59981

; 1597 :             if ( g_lTimeOut )

	cmp	DWORD PTR _g_lTimeOut, 0
	je	SHORT $L59982

; 1598 :                SysGetDateTime( g_szTimeStamp );

	push	OFFSET FLAT:_g_szTimeStamp
	call	_SysGetDateTime@4
$L59982:

; 1599 : 
; 1600 :             return( 0 );

	xor	eax, eax
	jmp	$L59721
$L59981:

; 1602 :          else
; 1603 :          if ( wCommand == IDM_IDLE )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 219				; 000000dbH
	jne	SHORT $L59984

; 1605 :             if ( g_lTimeOut && g_uIdleTimerId == 0 )

	cmp	DWORD PTR _g_lTimeOut, 0
	je	SHORT $L59985
	cmp	DWORD PTR _g_uIdleTimerId, 0
	jne	SHORT $L59985

; 1607 :                SysGetDateTime( g_szTimeStamp );

	push	OFFSET FLAT:_g_szTimeStamp
	call	_SysGetDateTime@4

; 1608 :                TraceLine( "OE Setting Idle Timer for hWnd: 0x%08x   g_hWndMainFrame: 0x%08x  Id: %d",
; 1609 :                           hWnd, g_hWndMainFrame, g_nIdIdleEvt );

	mov	ecx, DWORD PTR _g_nIdIdleEvt
	push	ecx
	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0EJ@LIIE@OE?5Setting?5Idle?5Timer?5for?5hWnd?3?5@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H

; 1610 :                g_uIdleTimerId = SetTimer( hWnd, g_nIdIdleEvt,
; 1611 :                                           30000, 0 );  // 30000 ==> 30 seconds

	push	0
	push	30000					; 00007530H
	mov	ecx, DWORD PTR _g_nIdIdleEvt
	push	ecx
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__SetTimer@16
	mov	DWORD PTR _g_uIdleTimerId, eax
$L59985:

; 1613 : 
; 1614 :             return( 0 );

	xor	eax, eax
	jmp	$L59721
$L59984:

; 1616 :          else
; 1617 :          if ( wCommand == IDM_GETOEWARNINGTRACE )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 215				; 000000d7H
	jne	SHORT $L59988

; 1618 :             return( (zLONG) g_chTraceOE_Warning );

	movsx	eax, BYTE PTR _g_chTraceOE_Warning
	jmp	$L59721
$L59988:

; 1619 :          else
; 1620 :          if ( wCommand == IDM_GETACTIONTRACE )

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 204				; 000000ccH
	jne	SHORT $L59991

; 1621 :             return( (zLONG) g_chTraceZDrActions );

	movsx	eax, BYTE PTR _g_chTraceZDrActions
	jmp	$L59721
$L59991:

; 1622 :          else
; 1623 :          if ( wCommand == IDM_GETWEBTRACE )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 214				; 000000d6H
	jne	SHORT $L59994

; 1624 :             return( (zLONG) g_chTraceWebActions );

	movsx	eax, BYTE PTR _g_chTraceWebActions
	jmp	$L59721
$L59994:

; 1625 :          else
; 1626 :          if ( wCommand == IDM_GETMEMORYTRACE )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 217				; 000000d9H
	jne	SHORT $L59997

; 1627 :             return( (zLONG) g_chTraceMemory );

	movsx	eax, BYTE PTR _g_chTraceMemory
	jmp	$L59721
$L59997:

; 1628 :          else
; 1629 :          if ( wCommand == IDM_GETTRACELOGFILE )

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 216				; 000000d8H
	jne	SHORT $L60000

; 1630 :             return( (zLONG) g_hLogFile );

	mov	eax, DWORD PTR _g_hLogFile
	jmp	$L59721
$L60000:

; 1631 :          else
; 1632 :          if ( wCommand == IDM_GETOEMAINHWND )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 200				; 000000c8H
	jne	SHORT $L60003

; 1633 :             return( (zLONG) g_hWndMainFrame );

	mov	eax, DWORD PTR _g_hWndMainFrame
	jmp	$L59721
$L60003:

; 1634 :          else
; 1635 :          if ( wCommand == IDM_GETOELISTHWND )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 201				; 000000c9H
	jne	SHORT $L60006

; 1636 :             return( (zLONG) g_hwndTraceWindow[ g_nTraceWindowHead ] );

	mov	ecx, DWORD PTR _g_nTraceWindowHead
	mov	eax, DWORD PTR _g_hwndTraceWindow[ecx*4]
	jmp	$L59721
$L60006:

; 1637 :          else
; 1638 :          if ( wCommand == IDM_GETTRACELIMIT )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 202				; 000000caH
	jne	SHORT $L60009

; 1639 :             return( (zLONG) g_uTraceLineLimit );

	mov	eax, DWORD PTR _g_uTraceLineLimit
	jmp	$L59721
$L60009:

; 1640 :          else
; 1641 :          if ( wCommand == IDM_GETSCROLLTRACE )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 203				; 000000cbH
	jne	SHORT $L60012

; 1642 :             return( (zLONG) g_chScrollTrace );

	movsx	eax, BYTE PTR _g_chScrollTrace
	jmp	$L59721
$L60012:

; 1643 :          else
; 1644 :          if ( wCommand == IDM_GETPRINTPREVIEW )

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 206				; 000000ceH
	jne	SHORT $L60015

; 1645 :             return( (zLONG) g_chPrintPreview );

	movsx	eax, BYTE PTR _g_chPrintPreview
	jmp	$L59721
$L60015:

; 1646 :          else
; 1647 :          if ( wCommand == IDM_GETPRINTDIALOG )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 207				; 000000cfH
	jne	SHORT $L60018

; 1648 :             return( (zLONG) g_chPrintDialog );

	movsx	eax, BYTE PTR _g_chPrintDialog
	jmp	$L59721
$L60018:

; 1649 :          else
; 1650 :          if ( wCommand == IDM_GETFINDSTRING )

	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 205				; 000000cdH
	jne	SHORT $L60021

; 1652 :             zstrcpy( (zPCHAR) lParam, g_szFindString );

	push	OFFSET FLAT:_g_szFindString
	mov	ecx, DWORD PTR _lParam$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 1653 :             return( zstrlen( g_szFindString ) );

	push	OFFSET FLAT:_g_szFindString
	call	_strlen
	add	esp, 4
	jmp	$L59721
$L60021:

; 1655 :          else
; 1656 :          if ( wCommand >= IDM_TRACEWINDOW01 && wCommand <= IDM_TRACEWINDOW20 )

	mov	edx, DWORD PTR _wCommand$59737[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, 300				; 0000012cH
	jl	$L60024
	mov	eax, DWORD PTR _wCommand$59737[ebp]
	and	eax, 65535				; 0000ffffH
	cmp	eax, 319				; 0000013fH
	jg	$L60024

; 1658 :             UINT idx = wCommand - IDM_TRACEWINDOW01;

	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	sub	ecx, 300				; 0000012cH
	mov	DWORD PTR _idx$60025[ebp], ecx

; 1659 :             UINT iDiff;
; 1660 :             UINT nNewTraceWindow;
; 1661 :             UINT nOldTraceWindow;
; 1662 : 
; 1663 :             nNewTraceWindow = (g_nTraceWindowHead + g_nTraceWindowCnt - idx)
; 1664 :                                                           % g_nTraceWindowCnt;

	mov	eax, DWORD PTR _g_nTraceWindowHead
	add	eax, DWORD PTR _g_nTraceWindowCnt
	sub	eax, DWORD PTR _idx$60025[ebp]
	xor	edx, edx
	div	DWORD PTR _g_nTraceWindowCnt
	mov	DWORD PTR _nNewTraceWindow$60027[ebp], edx

; 1665 : 
; 1666 :             // If user selected the window already displayed then don't do
; 1667 :             // anything.
; 1668 :             if ( nNewTraceWindow == g_nTraceWindowDisplayed )

	mov	edx, DWORD PTR _nNewTraceWindow$60027[ebp]
	cmp	edx, DWORD PTR _g_nTraceWindowDisplayed
	jne	SHORT $L60029

; 1669 :                break;

	jmp	$L59724
$L60029:

; 1670 : 
; 1671 :             // Find the difference between the displayed window and the head.
; 1672 :             iDiff = ( g_nTraceWindowDisplayed + g_nTraceWindowCnt -
; 1673 :                                     g_nTraceWindowHead ) % g_nTraceWindowCnt;

	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	add	eax, DWORD PTR _g_nTraceWindowCnt
	sub	eax, DWORD PTR _g_nTraceWindowHead
	xor	edx, edx
	div	DWORD PTR _g_nTraceWindowCnt
	mov	DWORD PTR _iDiff$60026[ebp], edx

; 1674 : 
; 1675 :             // Determine the old trace window index.
; 1676 :             nOldTraceWindow = ( g_nTraceWindowCnt - iDiff )
; 1677 :                                                           % g_nTraceWindowCnt;

	mov	eax, DWORD PTR _g_nTraceWindowCnt
	sub	eax, DWORD PTR _iDiff$60026[ebp]
	xor	edx, edx
	div	DWORD PTR _g_nTraceWindowCnt
	mov	DWORD PTR _nOldTraceWindow$60028[ebp], edx

; 1678 : 
; 1679 :             // Turn off the check mark...we will no longer be displaying the
; 1680 :             // current window.
; 1681 :             CheckMenuItem( GetMenu( hWnd ),
; 1682 :                            IDM_TRACEWINDOW01 + nOldTraceWindow,
; 1683 :                            MF_BYCOMMAND | MF_UNCHECKED );

	push	0
	mov	eax, DWORD PTR _nOldTraceWindow$60028[ebp]
	add	eax, 300				; 0000012cH
	push	eax
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetMenu@4
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 1684 : 
; 1685 :             // Make the current window invisible.
; 1686 :             ShowWindow( g_hwndTraceWindow[ g_nTraceWindowDisplayed ], SW_HIDE );

	push	0
	mov	edx, DWORD PTR _g_nTraceWindowDisplayed
	mov	eax, DWORD PTR _g_hwndTraceWindow[edx*4]
	push	eax
	call	DWORD PTR __imp__ShowWindow@8

; 1687 : 
; 1688 :             // Turn on the check for the window the user wants.
; 1689 :             CheckMenuItem( GetMenu( hWnd ), wCommand,
; 1690 :                            MF_BYCOMMAND | MF_CHECKED );

	push	8
	mov	ecx, DWORD PTR _wCommand$59737[ebp]
	and	ecx, 65535				; 0000ffffH
	push	ecx
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__GetMenu@4
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 1691 : 
; 1692 :             g_nTraceWindowDisplayed = nNewTraceWindow;

	mov	eax, DWORD PTR _nNewTraceWindow$60027[ebp]
	mov	DWORD PTR _g_nTraceWindowDisplayed, eax

; 1693 : 
; 1694 :             // Make the new current window visible.
; 1695 :             ShowWindow( g_hwndTraceWindow[ g_nTraceWindowDisplayed ], SW_SHOW );

	push	5
	mov	ecx, DWORD PTR _g_nTraceWindowDisplayed
	mov	edx, DWORD PTR _g_hwndTraceWindow[ecx*4]
	push	edx
	call	DWORD PTR __imp__ShowWindow@8
$L60024:

; 1697 : 
; 1698 :          break;

	jmp	$L59724
$L60030:

; 1700 : 
; 1701 :       case WM_QUERYENDSESSION:
; 1702 :       case WM_CLOSE:
; 1703 :          // Close message, if any zeidon tasks are still registered,
; 1704 :          // prompt whether to send a close message to each one and
; 1705 :          // try and bring it down. If either the user says no to
; 1706 :          // automatically closing tasks or any tasks rejects the close
; 1707 :          // message, reject the close and set focus to the first
; 1708 :          // remaining active task.
; 1709 :          // When we receive a WM_QUERYENDSESSION, the user is shutting
; 1710 :          // down Windows.  If any Zeidon tasks are still active, then
; 1711 :          // don't permit Windows to shut down.
; 1712 :          if ( szLogFileName[ 0 ] )

	movsx	eax, BYTE PTR _szLogFileName
	test	eax, eax
	je	SHORT $L60031

; 1713 :             SysUpdateZeidonIni( szlWorkstation, "LogFile", szLogFileName );

	push	OFFSET FLAT:_szLogFileName
	push	OFFSET FLAT:??_C@_07HGKM@LogFile?$AA@	; `string'
	push	OFFSET FLAT:_szlWorkstation
	call	_SysUpdateZeidonIni@12
$L60031:

; 1714 : 
; 1715 :          if ( AnchorBlock )       // Anchor block OK?

	cmp	DWORD PTR _AnchorBlock, 0
	je	$L60095

; 1717 :             LPTASK hTask;
; 1718 :             LPTASK lpTask;
; 1719 :             LPTASK lpTaskTemp;
; 1720 :             int nResponse = IDNO;

	mov	DWORD PTR _nResponse$60037[ebp], 7

; 1721 :             HANDLE hTermMutex;
; 1722 : 
; 1723 :             // Create a mutex.  Code in kzoesyaa.c will check to see if this
; 1724 :             // mutex exists during registration.  If it does then Core will
; 1725 :             // fail the registration.  This makes sure that core is completely
; 1726 :             // shut down before the registration can start.  Note that we'll
; 1727 :             // let the Win32 OS clean up the mutex for us when we shut down.
; 1728 :             hTermMutex = CreateMutex( NULL, FALSE, "KZOENGWA - Termination" );

	push	OFFSET FLAT:??_C@_0BH@IIPE@KZOENGWA?5?9?5Termination?$AA@ ; `string'
	push	0
	push	0
	call	DWORD PTR __imp__CreateMutexA@12
	mov	DWORD PTR _hTermMutex$60038[ebp], eax

; 1729 : 
; 1730 :             // First, see if any tasks are active
; 1731 :             hTask = AnchorBlock->hFirstTask;

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+130]
	mov	DWORD PTR _hTask$60034[ebp], edx

; 1732 :             lpTask = zGETPTR( hTask );

	mov	eax, DWORD PTR _hTask$60034[ebp]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$60035[ebp], eax

; 1733 : 
; 1734 :             // If the logfile is still open then close it.
; 1735 :             if ( lpTask && g_hLogFile != -1 )

	cmp	DWORD PTR _lpTask$60035[ebp], 0
	je	SHORT $L60041
	cmp	DWORD PTR _g_hLogFile, -1
	je	SHORT $L60041

; 1737 :                fnSysCloseFile( lpTask, g_hLogFile, 0 );

	push	0
	mov	ecx, DWORD PTR _g_hLogFile
	push	ecx
	mov	edx, DWORD PTR _lpTask$60035[ebp]
	push	edx
	call	_fnSysCloseFile@12

; 1738 :                g_hLogFile = -1;

	mov	DWORD PTR _g_hLogFile, -1
$L60041:

; 1740 : 
; 1741 :             while ( lpTask )

	cmp	DWORD PTR _lpTask$60035[ebp], 0
	je	SHORT $L60044

; 1743 :                if ( hTask != AnchorBlock->hMainTask &&
; 1744 :                     IsWindow( (HWND) lpTask->hMainWnd ) )

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR _hTask$60034[ebp]
	cmp	ecx, DWORD PTR [eax+106]
	je	SHORT $L60046
	mov	edx, DWORD PTR _lpTask$60035[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR __imp__IsWindow@4
	test	eax, eax
	je	SHORT $L60046

; 1746 :                   break;

	jmp	SHORT $L60044
$L60046:

; 1748 : 
; 1749 :                lpTask = zGETPTR( lpTask->hNextTask );

	mov	ecx, DWORD PTR _lpTask$60035[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$60035[ebp], eax

; 1750 :             }

	jmp	SHORT $L60041
$L60044:

; 1751 : 
; 1752 :             if ( lpTask == 0 )

	cmp	DWORD PTR _lpTask$60035[ebp], 0
	jne	SHORT $L60047

; 1753 :                lpTaskTemp = zGETPTR( AnchorBlock->hFirstTask );

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+130]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTaskTemp$60036[ebp], eax

; 1754 :             else

	jmp	SHORT $L60048
$L60047:

; 1755 :                lpTaskTemp = lpTask;

	mov	edx, DWORD PTR _lpTask$60035[ebp]
	mov	DWORD PTR _lpTaskTemp$60036[ebp], edx
$L60048:

; 1756 : 
; 1757 :             if ( uMsg == WM_CLOSE )

	cmp	DWORD PTR _uMsg$[ebp], 16		; 00000010H
	jne	$L60049

; 1759 :                char  szIniName[ 260 ];
; 1760 :                char  szFileName[ 260 ];
; 1761 :                char  szTempName[ 260 ];
; 1762 :                char  szBuffer[ sizeof( "-2147483647," ) * 10 ];
; 1763 :                WINDOWPLACEMENT wp;
; 1764 : 
; 1765 :                wp.length = sizeof( wp );

	mov	DWORD PTR _wp$60054[ebp], 44		; 0000002cH

; 1766 :                if ( GetWindowPlacement( hWnd, &wp ) )

	lea	eax, DWORD PTR _wp$60054[ebp]
	push	eax
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetWindowPlacement@8
	test	eax, eax
	je	SHORT $L60055

; 1768 :                   // write window placement to Zeidon.ini file.
; 1769 : 
; 1770 :                   wsprintf( szBuffer, szPlaceFormat,
; 1771 :                             wp.flags, wp.showCmd,
; 1772 :                             wp.ptMinPosition.x, wp.ptMinPosition.y,
; 1773 :                             wp.ptMaxPosition.x, wp.ptMaxPosition.y,
; 1774 :                             wp.rcNormalPosition.left,
; 1775 :                             wp.rcNormalPosition.top,
; 1776 :                             wp.rcNormalPosition.right,
; 1777 :                             wp.rcNormalPosition.bottom );

	mov	edx, DWORD PTR _wp$60054[ebp+40]
	push	edx
	mov	eax, DWORD PTR _wp$60054[ebp+36]
	push	eax
	mov	ecx, DWORD PTR _wp$60054[ebp+32]
	push	ecx
	mov	edx, DWORD PTR _wp$60054[ebp+28]
	push	edx
	mov	eax, DWORD PTR _wp$60054[ebp+24]
	push	eax
	mov	ecx, DWORD PTR _wp$60054[ebp+20]
	push	ecx
	mov	edx, DWORD PTR _wp$60054[ebp+16]
	push	edx
	mov	eax, DWORD PTR _wp$60054[ebp+12]
	push	eax
	mov	ecx, DWORD PTR _wp$60054[ebp+8]
	push	ecx
	mov	edx, DWORD PTR _wp$60054[ebp+4]
	push	edx
	push	OFFSET FLAT:_szPlaceFormat
	lea	eax, DWORD PTR _szBuffer$60053[ebp]
	push	eax
	call	DWORD PTR __imp__wsprintfA
	add	esp, 48					; 00000030H

; 1779 :                else

	jmp	SHORT $L60056
$L60055:

; 1780 :                   szBuffer[ 0 ] = 0;

	mov	BYTE PTR _szBuffer$60053[ebp], 0
$L60056:

; 1781 : 
; 1782 :             // SysReadZeidonIni( -1, szlWorkstation, "LocalDir", szTempName );
; 1783 :                GetEnvironmentVariable( "ZEIDON", szIniName, sizeof( szIniName ) );

	push	260					; 00000104H
	lea	ecx, DWORD PTR _szIniName$60050[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_06HLLH@ZEIDON?$AA@	; `string'
	call	DWORD PTR __imp__GetEnvironmentVariableA@12

; 1784 :                zstrcat( szIniName, "\\zeidon.ini" );

	push	OFFSET FLAT:??_C@_0M@BDD@?2zeidon?4ini?$AA@ ; `string'
	lea	edx, DWORD PTR _szIniName$60050[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 1785 :                GetPrivateProfileString( "Workstation", "LocalDir", "",
; 1786 :                                         szTempName, sizeof( szTempName ), szIniName );

	lea	eax, DWORD PTR _szIniName$60050[ebp]
	push	eax
	push	260					; 00000104H
	lea	ecx, DWORD PTR _szTempName$60052[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_08DEFM@LocalDir?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0M@PHEL@Workstation?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 1787 :                SysConvertEnvironmentString( szFileName, szTempName );

	lea	edx, DWORD PTR _szTempName$60052[ebp]
	push	edx
	lea	eax, DWORD PTR _szFileName$60051[ebp]
	push	eax
	call	_SysConvertEnvironmentString@8

; 1788 :                if ( szFileName[ 0 ] )

	movsx	ecx, BYTE PTR _szFileName$60051[ebp]
	test	ecx, ecx
	je	SHORT $L60061

; 1790 :                   SysAppendcDirSep( szFileName );

	lea	edx, DWORD PTR _szFileName$60051[ebp]
	push	edx
	call	_SysAppendcDirSep@4

; 1791 :                   zstrcat( szFileName, "ZeidonRT.ini" );

	push	OFFSET FLAT:??_C@_0N@KGLP@ZeidonRT?4ini?$AA@ ; `string'
	lea	eax, DWORD PTR _szFileName$60051[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 1793 :                else

	jmp	SHORT $L60063
$L60061:

; 1794 :                   zstrcpy( szFileName, szIniName );

	lea	ecx, DWORD PTR _szIniName$60050[ebp]
	push	ecx
	lea	edx, DWORD PTR _szFileName$60051[ebp]
	push	edx
	call	_strcpy
	add	esp, 8
$L60063:

; 1795 : 
; 1796 :                WritePrivateProfileString( "ObjectEngine", // section name
; 1797 :                                           "WindowPos",    // key name
; 1798 :                                           szBuffer,       // string to add
; 1799 :                                           szFileName );   // ini filename

	lea	eax, DWORD PTR _szFileName$60051[ebp]
	push	eax
	lea	ecx, DWORD PTR _szBuffer$60053[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_09DHE@WindowPos?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__WritePrivateProfileStringA@16

; 1800 :                zltoa( g_uTraceLineLimit, szBuffer );

	push	10					; 0000000aH
	lea	edx, DWORD PTR _szBuffer$60053[ebp]
	push	edx
	mov	eax, DWORD PTR _g_uTraceLineLimit
	push	eax
	call	__ltoa
	add	esp, 12					; 0000000cH

; 1801 :                WritePrivateProfileString( "ObjectEngine", "LineLimit",
; 1802 :                                           szBuffer, szFileName );

	lea	ecx, DWORD PTR _szFileName$60051[ebp]
	push	ecx
	lea	edx, DWORD PTR _szBuffer$60053[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_09GJAL@LineLimit?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__WritePrivateProfileStringA@16

; 1803 :                WritePrivateProfileString( "ObjectEngine", "FindString",
; 1804 :                                           g_szFindString, szFileName );

	lea	eax, DWORD PTR _szFileName$60051[ebp]
	push	eax
	push	OFFSET FLAT:_g_szFindString
	push	OFFSET FLAT:??_C@_0L@BBKE@FindString?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__WritePrivateProfileStringA@16

; 1805 :                szBuffer[ 1 ] = 0;

	mov	BYTE PTR _szBuffer$60053[ebp+1], 0

; 1806 :                szBuffer[ 0 ] = g_chScrollTrace;

	mov	cl, BYTE PTR _g_chScrollTrace
	mov	BYTE PTR _szBuffer$60053[ebp], cl

; 1807 :                WritePrivateProfileString( "ObjectEngine", "ScrollTrace",
; 1808 :                                           szBuffer, szFileName );

	lea	edx, DWORD PTR _szFileName$60051[ebp]
	push	edx
	lea	eax, DWORD PTR _szBuffer$60053[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0M@LCCA@ScrollTrace?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__WritePrivateProfileStringA@16

; 1809 :                szBuffer[ 0 ] = g_chPrintPreview;

	mov	cl, BYTE PTR _g_chPrintPreview
	mov	BYTE PTR _szBuffer$60053[ebp], cl

; 1810 :                WritePrivateProfileString( "ObjectEngine", "PrintPreview",
; 1811 :                                           szBuffer, szFileName );

	lea	edx, DWORD PTR _szFileName$60051[ebp]
	push	edx
	lea	eax, DWORD PTR _szBuffer$60053[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0N@LPJH@PrintPreview?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__WritePrivateProfileStringA@16

; 1812 :                szBuffer[ 0 ] = g_chPrintDialog;

	mov	cl, BYTE PTR _g_chPrintDialog
	mov	BYTE PTR _szBuffer$60053[ebp], cl

; 1813 :                WritePrivateProfileString( "ObjectEngine", "PrintDialog",
; 1814 :                                           szBuffer, szFileName );

	lea	edx, DWORD PTR _szFileName$60051[ebp]
	push	edx
	lea	eax, DWORD PTR _szBuffer$60053[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0M@GPAK@PrintDialog?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__WritePrivateProfileStringA@16

; 1815 :                szBuffer[ 0 ] = g_chTraceOE_Warning;

	mov	cl, BYTE PTR _g_chTraceOE_Warning
	mov	BYTE PTR _szBuffer$60053[ebp], cl

; 1816 :                WritePrivateProfileString( "ObjectEngine", "TraceOE_Warning",
; 1817 :                                           szBuffer, szFileName );

	lea	edx, DWORD PTR _szFileName$60051[ebp]
	push	edx
	lea	eax, DWORD PTR _szBuffer$60053[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BA@ONLI@TraceOE_Warning?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__WritePrivateProfileStringA@16

; 1818 :                szBuffer[ 0 ] = g_chTraceZDrActions;

	mov	cl, BYTE PTR _g_chTraceZDrActions
	mov	BYTE PTR _szBuffer$60053[ebp], cl

; 1819 :                WritePrivateProfileString( "ObjectEngine", "TraceAction",
; 1820 :                                           szBuffer, szFileName );

	lea	edx, DWORD PTR _szFileName$60051[ebp]
	push	edx
	lea	eax, DWORD PTR _szBuffer$60053[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0M@LKED@TraceAction?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__WritePrivateProfileStringA@16

; 1821 :                szBuffer[ 0 ] = g_chTraceWebActions;

	mov	cl, BYTE PTR _g_chTraceWebActions
	mov	BYTE PTR _szBuffer$60053[ebp], cl

; 1822 :                WritePrivateProfileString( "ObjectEngine", "TraceWeb",
; 1823 :                                           szBuffer, szFileName );

	lea	edx, DWORD PTR _szFileName$60051[ebp]
	push	edx
	lea	eax, DWORD PTR _szBuffer$60053[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_08LOC@TraceWeb?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__WritePrivateProfileStringA@16

; 1824 :                if ( AnchorBlock && AnchorBlock->bShowTaskID )

	cmp	DWORD PTR _AnchorBlock, 0
	je	SHORT $L60074
	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+1495]
	and	edx, 1
	test	edx, edx
	je	SHORT $L60074

; 1825 :                   szBuffer[ 0 ] = 'Y';

	mov	BYTE PTR _szBuffer$60053[ebp], 89	; 00000059H

; 1826 :                else

	jmp	SHORT $L60075
$L60074:

; 1827 :                   szBuffer[ 0 ] = 0;

	mov	BYTE PTR _szBuffer$60053[ebp], 0
$L60075:

; 1828 : 
; 1829 :                WritePrivateProfileString( "ObjectEngine", "ShowTaskID",
; 1830 :                                           szBuffer, szFileName );

	lea	eax, DWORD PTR _szFileName$60051[ebp]
	push	eax
	lea	ecx, DWORD PTR _szBuffer$60053[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0L@BPGN@ShowTaskID?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__WritePrivateProfileStringA@16
$L60049:

; 1832 : 
; 1833 :             if ( uMsg == WM_QUERYENDSESSION )

	cmp	DWORD PTR _uMsg$[ebp], 17		; 00000011H
	jne	SHORT $L60077

; 1835 :                if ( lpTask )

	cmp	DWORD PTR _lpTask$60035[ebp], 0
	je	SHORT $L60080

; 1837 :                   // There are Zeidon tasks running.  Determine if the user
; 1838 :                   // really wants to shut down.
; 1839 :                   nResponse =
; 1840 :                         MessageBox( hWnd,
; 1841 :                                     "Zeidon Applications are still active.\n"
; 1842 :                                     "Do you still want to shut down?",
; 1843 :                                     "Zeidon Object Services",
; 1844 :                                     MB_ICONEXCLAMATION |
; 1845 :                                     MB_YESNO | MB_TASKMODAL );

	push	8244					; 00002034H
	push	OFFSET FLAT:??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0EG@IDAN@Zeidon?5Applications?5are?5still?5ac@ ; `string'
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__MessageBoxA@16
	mov	DWORD PTR _nResponse$60037[ebp], eax

; 1846 :                   if ( nResponse == IDNO )

	cmp	DWORD PTR _nResponse$60037[ebp], 7
	jne	SHORT $L60080

; 1848 :                      ReleaseMutex( hTermMutex );

	mov	eax, DWORD PTR _hTermMutex$60038[ebp]
	push	eax
	call	DWORD PTR __imp__ReleaseMutex@4

; 1849 :                      CloseHandle( hTermMutex );

	mov	ecx, DWORD PTR _hTermMutex$60038[ebp]
	push	ecx
	call	DWORD PTR __imp__CloseHandle@4

; 1850 :                      return( FALSE );  // User doesn't want to shut down.

	xor	eax, eax
	jmp	$L59721
$L60080:

; 1853 : 
; 1854 :                return( TRUE );   // Allow shutdown.

	mov	eax, 1
	jmp	$L59721
$L60077:

; 1856 : 
; 1857 : #define zZEIDON_DRIVER_MSG                                   0x4000
; 1858 : #define zZEIDON_COMMUNICATE_OE              (zZEIDON_DRIVER_MSG + 1)
; 1859 : #define zZEIDON_POSTED_CLOSE                (zZEIDON_DRIVER_MSG + 2)
; 1860 : 
; 1861 :             // If any tasks are active, prompt for shutdown
; 1862 :             if ( lpTask )

	cmp	DWORD PTR _lpTask$60035[ebp], 0
	je	$L60093

; 1864 :                MessageBeep( 0 );

	push	0
	call	DWORD PTR __imp__MessageBeep@4

; 1865 : #if 0
; 1866 :                nResponse = IDYES;
; 1867 :                MessageBox( hWnd,
; 1868 :                            "Zeidon Applications are still active.\n"
; 1869 :                            "Please close them before exiting!",
; 1870 :                            "Zeidon Object Services",
; 1871 :                            MB_TASKMODAL | MB_ICONEXCLAMATION | MB_OK );
; 1872 : #else
; 1873 :                nResponse =
; 1874 :                      MessageBox( hWnd,
; 1875 :                                  "Zeidon Applications are still active.\n"
; 1876 :                                  "Do you wish to try and close them?",
; 1877 :                                  "Zeidon Object Services",
; 1878 :                                  MB_ICONQUESTION | MB_YESNO |
; 1879 :                                  MB_TASKMODAL | MB_DEFBUTTON2 );

	push	8484					; 00002124H
	push	OFFSET FLAT:??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0EJ@DBP@Zeidon?5Applications?5are?5still?5ac@ ; `string'
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__MessageBoxA@16
	mov	DWORD PTR _nResponse$60037[ebp], eax

; 1880 :                if ( nResponse == IDYES )

	cmp	DWORD PTR _nResponse$60037[ebp], 6
	jne	$L60083

; 1882 :                   nResponse = IDNO;

	mov	DWORD PTR _nResponse$60037[ebp], 7

; 1883 :                   lpTask = zGETPTR( AnchorBlock->hFirstTask );

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+130]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$60035[ebp], eax
$L60085:

; 1884 :                   while ( TRUE )

	mov	edx, 1
	test	edx, edx
	je	$L60086

; 1886 :                      LPTASK lpTask2;
; 1887 : 
; 1888 :                      if ( lpTask == 0 )

	cmp	DWORD PTR _lpTask$60035[ebp], 0
	jne	SHORT $L60088

; 1889 :                         break;

	jmp	$L60086
$L60088:

; 1890 : 
; 1891 :                      // Chain forward 1 so close can remove this task
; 1892 :                      lpTask2 = zGETPTR( lpTask->hNextTask );

	mov	eax, DWORD PTR _lpTask$60035[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask2$60087[ebp], eax

; 1893 :                      if ( zGETHNDL( lpTask ) != AnchorBlock->hMainTask &&
; 1894 :                           IsWindow( (HWND) lpTask->hMainWnd ) &&
; 1895 :                           SendMessage( (HWND) lpTask->hMainWnd,
; 1896 :                                        zZEIDON_COMMUNICATE_OE, 0, -1L ) == -1 )

	mov	edx, DWORD PTR _lpTask$60035[ebp]
	push	edx
	call	_SysGetHandleFromPointer@4
	mov	ecx, DWORD PTR _AnchorBlock
	cmp	eax, DWORD PTR [ecx+106]
	je	SHORT $L60091
	mov	edx, DWORD PTR _lpTask$60035[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR __imp__IsWindow@4
	test	eax, eax
	je	SHORT $L60091
	push	-1
	push	0
	push	16385					; 00004001H
	mov	ecx, DWORD PTR _lpTask$60035[ebp]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR __imp__SendMessageA@16
	cmp	eax, -1
	jne	SHORT $L60091

; 1898 :                         nResponse = IDYES;

	mov	DWORD PTR _nResponse$60037[ebp], 6

; 1899 :                      // TraceLineI( "OE IDYES for Task: ", lpTask->lTaskID );
; 1900 : 
; 1901 :                         PostMessage( (HWND) lpTask->hMainWnd,
; 1902 :                                      zZEIDON_POSTED_CLOSE, 0, 0L );

	push	0
	push	0
	push	16386					; 00004002H
	mov	eax, DWORD PTR _lpTask$60035[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR __imp__PostMessageA@16
$L60091:

; 1904 :                   // else
; 1905 :                   //    TraceLineI( "OE IDNO for Task: ", lpTask->lTaskID );
; 1906 : 
; 1907 :                      lpTask = lpTask2;

	mov	edx, DWORD PTR _lpTask2$60087[ebp]
	mov	DWORD PTR _lpTask$60035[ebp], edx

; 1908 :                   }

	jmp	$L60085
$L60086:

; 1910 :                else

	jmp	SHORT $L60093
$L60083:

; 1912 :                   ReleaseMutex( hTermMutex );

	mov	eax, DWORD PTR _hTermMutex$60038[ebp]
	push	eax
	call	DWORD PTR __imp__ReleaseMutex@4

; 1913 :                   CloseHandle( hTermMutex );

	mov	ecx, DWORD PTR _hTermMutex$60038[ebp]
	push	ecx
	call	DWORD PTR __imp__CloseHandle@4

; 1914 :                   SetActiveWindow( (HWND) lpTask->hMainWnd );

	mov	edx, DWORD PTR _lpTask$60035[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR __imp__SetActiveWindow@4

; 1915 :                   return( 1 );

	mov	eax, 1
	jmp	$L59721
$L60093:

; 1919 : 
; 1920 :             // If an attempt was made to close applications, then
; 1921 :             // see if all applications have left.
; 1922 :             lpTask = zGETPTR( AnchorBlock->hFirstTask );

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+130]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$60035[ebp], eax

; 1923 :             if ( nResponse == IDYES )

	cmp	DWORD PTR _nResponse$60037[ebp], 6
	jne	SHORT $L60095

; 1925 :                // We stay up so other tasks have time to come down cleanly
; 1926 : // Stay up!    PostMessage( hWnd, WM_CLOSE, 0, 0L );
; 1927 :                return( 0 );

	xor	eax, eax
	jmp	$L59721
$L60095:

; 1930 : 
; 1931 :          break;

	jmp	$L59724
$L60096:

; 1935 :          LPTASK lpTask = zGETPTR( AnchorBlock->hFirstTask );

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+130]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$60097[ebp], eax

; 1936 :          // It's OK to leave, Shutdown Object Services
; 1937 : 
; 1938 :          if ( g_uKillTimerId )

	cmp	DWORD PTR _g_uKillTimerId, 0
	je	SHORT $L60098

; 1939 :             KillTimer( hWnd, g_uKillTimerId );

	mov	edx, DWORD PTR _g_uKillTimerId
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__KillTimer@8
$L60098:

; 1940 : 
; 1941 : #ifdef __WIN32__
; 1942 :          DetachSysTray( ); // remove Icon from systray

	call	_DetachSysTray

; 1943 :          DestroyWindow( g_hThreadWnd );

	mov	ecx, DWORD PTR _g_hThreadWnd
	push	ecx
	call	DWORD PTR __imp__DestroyWindow@4

; 1944 : #endif
; 1945 : 
; 1946 :          FreeProcInstance( fpAbout );
; 1947 :          FreeProcInstance( fpLogon );
; 1948 :          FreeProcInstance( fpSetTrace );
; 1949 :          FreeProcInstance( fpLogTrace );
; 1950 :          FreeProcInstance( fpTraceList );
; 1951 :          FreeProcInstance( fpLineLimit );
; 1952 :          FreeProcInstance( fpFindString );
; 1953 :          FreeProcInstance( fpShowDLL );
; 1954 :          FreeProcInstance( fpSqlServerErrHandler );
; 1955 :          FreeProcInstance( fpSqlServerMsgHandler );
; 1956 : 
; 1957 :          lpTask->bOE_TaskShutdown = TRUE;

	mov	edx, DWORD PTR _lpTask$60097[ebp]
	mov	eax, DWORD PTR [edx+443]
	or	ah, -128				; ffffff80H
	mov	ecx, DWORD PTR _lpTask$60097[ebp]
	mov	DWORD PTR [ecx+443], eax

; 1958 :          FreeAnchorBlock( lpTask );

	mov	edx, DWORD PTR _lpTask$60097[ebp]
	push	edx
	call	_FreeAnchorBlock@4

; 1959 :          AnchorBlock = 0;

	mov	DWORD PTR _AnchorBlock, 0

; 1960 : 
; 1961 :          PostQuitMessage( 0 );

	push	0
	call	DWORD PTR __imp__PostQuitMessage@4

; 1962 :          break;

	jmp	$L59724
$L60099:

; 1964 : 
; 1965 :       case WM_WININICHANGE:
; 1966 :          // If multiple sections or the Intl section of the win.ini
; 1967 :          // file has been updated, go rebuild the international info
; 1968 :          if ( lParam == 0L || zstrcmpi( szlINTL, (zPCHAR) lParam ) == 0 )

	cmp	DWORD PTR _lParam$[ebp], 0
	je	SHORT $L60102
	mov	eax, DWORD PTR _lParam$[ebp]
	push	eax
	push	OFFSET FLAT:_szlINTL
	call	__stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L60105
$L60102:

; 1970 :             zPVOID            hNewInt;
; 1971 :             LPINTERNATIONAL   lpOldInt;
; 1972 : 
; 1973 :             // Get possible changes
; 1974 :             if ( (hNewInt = SysCreateInternational( )) != 0 )

	call	_SysCreateInternational@0
	mov	DWORD PTR _hNewInt$60103[ebp], eax
	cmp	DWORD PTR _hNewInt$60103[ebp], 0
	je	SHORT $L60105

; 1976 :                TraceLineS( "(wa) changing international info - ",
; 1977 :                            (zPCHAR) lParam );

	mov	ecx, DWORD PTR _lParam$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CE@GKN@?$CIwa?$CJ?5changing?5international?5info@ ; `string'
	call	_TraceLineS@8

; 1978 : 
; 1979 :                // switch pointers
; 1980 :                lpOldInt = zGETPTR( AnchorBlock->hInternational );

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+2515]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpOldInt$60104[ebp], eax

; 1981 :                AnchorBlock->hInternational = hNewInt;

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR _hNewInt$60103[ebp]
	mov	DWORD PTR [ecx+2515], edx

; 1982 : 
; 1983 :                // free old values
; 1984 :                SysFreeInternational( lpOldInt );

	mov	eax, DWORD PTR _lpOldInt$60104[ebp]
	push	eax
	call	_SysFreeInternational@4
$L60105:

; 1987 : 
; 1988 :          break;

	jmp	$L59724
$L60108:

; 1992 :             SYSTEMTIME SysTime;
; 1993 :             LPTASK hTask;
; 1994 :             LPTASK lpTask;
; 1995 :             char szFileName[ 256 ];
; 1996 :             long hLogFile = g_hLogFile;

	mov	ecx, DWORD PTR _g_hLogFile
	mov	DWORD PTR _hLogFile$60113[ebp], ecx

; 1997 : 
; 1998 :             GetLocalTime( &SysTime );

	lea	edx, DWORD PTR _SysTime$60109[ebp]
	push	edx
	call	DWORD PTR __imp__GetLocalTime@4

; 1999 : 
; 2000 :             // szFileName looks like this:  YYYYMMDDhhmmss
; 2001 :             sprintf( szFileName, "%04d%02d%02d%02d%02d%02d.log",
; 2002 :                      SysTime.wYear, SysTime.wMonth,
; 2003 :                      SysTime.wDay, SysTime.wHour,
; 2004 :                      SysTime.wMinute, SysTime.wSecond );

	mov	eax, DWORD PTR _SysTime$60109[ebp+12]
	and	eax, 65535				; 0000ffffH
	push	eax
	mov	ecx, DWORD PTR _SysTime$60109[ebp+10]
	and	ecx, 65535				; 0000ffffH
	push	ecx
	mov	edx, DWORD PTR _SysTime$60109[ebp+8]
	and	edx, 65535				; 0000ffffH
	push	edx
	mov	eax, DWORD PTR _SysTime$60109[ebp+6]
	and	eax, 65535				; 0000ffffH
	push	eax
	mov	ecx, DWORD PTR _SysTime$60109[ebp+2]
	and	ecx, 65535				; 0000ffffH
	push	ecx
	mov	edx, DWORD PTR _SysTime$60109[ebp]
	and	edx, 65535				; 0000ffffH
	push	edx
	push	OFFSET FLAT:??_C@_0BN@JBPE@?$CF04d?$CF02d?$CF02d?$CF02d?$CF02d?$CF02d?4log?$AA@ ; `string'
	lea	eax, DWORD PTR _szFileName$60112[ebp]
	push	eax
	call	_sprintf
	add	esp, 32					; 00000020H

; 2005 : 
; 2006 :             // First, see if any tasks are active
; 2007 :             hTask = AnchorBlock->hFirstTask;

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+130]
	mov	DWORD PTR _hTask$60110[ebp], edx

; 2008 :             lpTask = zGETPTR( hTask );

	mov	eax, DWORD PTR _hTask$60110[ebp]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$60111[ebp], eax

; 2009 : 
; 2010 :             if ( lpTask && szFileName[ 0 ] )

	cmp	DWORD PTR _lpTask$60111[ebp], 0
	je	$L60116
	movsx	ecx, BYTE PTR _szFileName$60112[ebp]
	test	ecx, ecx
	je	SHORT $L60116

; 2012 :                if ( (g_hLogFile = fnSysOpenFile( lpTask, szFileName,
; 2013 :                                                  COREFILE_CREATE )) != -1 )

	push	32					; 00000020H
	lea	edx, DWORD PTR _szFileName$60112[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$60111[ebp]
	push	eax
	call	_fnSysOpenFile@12
	mov	DWORD PTR _g_hLogFile, eax
	cmp	DWORD PTR _g_hLogFile, -1
	je	SHORT $L60116

; 2015 :                   char szTraceText[ 512 ];
; 2016 : 
; 2017 :                   // Send message that log file opened.
; 2018 :                   zstrcpy( szTraceText, "(ng) Log file Opened '" );

	push	OFFSET FLAT:??_C@_0BH@GAAD@?$CIng?$CJ?5Log?5file?5Opened?5?8?$AA@ ; `string'
	lea	ecx, DWORD PTR _szTraceText$60117[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 2019 :                   zstrcat( szTraceText, szFileName );

	lea	edx, DWORD PTR _szFileName$60112[ebp]
	push	edx
	lea	eax, DWORD PTR _szTraceText$60117[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 2020 :                   zstrcat( szTraceText, "'" );

	push	OFFSET FLAT:??_C@_01HAF@?8?$AA@		; `string'
	lea	ecx, DWORD PTR _szTraceText$60117[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 2021 :                   SysMessageList( szTraceText );

	lea	edx, DWORD PTR _szTraceText$60117[ebp]
	push	edx
	call	_SysMessageList@4

; 2022 : 
; 2023 :                   WriteTraceToLog( lpTask );

	mov	eax, DWORD PTR _lpTask$60111[ebp]
	push	eax
	call	_WriteTraceToLog
	add	esp, 4
$L60116:

; 2026 : 
; 2027 :             g_hLogFile = hLogFile;

	mov	ecx, DWORD PTR _hLogFile$60113[ebp]
	mov	DWORD PTR _g_hLogFile, ecx

; 2029 : 
; 2030 :          return( 0 );

	xor	eax, eax
	jmp	SHORT $L59721
$L60119:

; 2031 : 
; 2032 :       case WM_QUERYALIVE:
; 2033 :          return( -1 );   // yup ... we're still here

	or	eax, -1
	jmp	SHORT $L59721
$L60120:

; 2034 : 
; 2035 :       default:
; 2036 :          if ( uMsg == g_wOENG_Message )

	mov	edx, DWORD PTR _uMsg$[ebp]
	cmp	edx, DWORD PTR _g_wOENG_Message
	jne	SHORT $L60121

; 2037 :             fnProcessOENG_Message( hWnd, uMsg, wParam, lParam );

	mov	eax, DWORD PTR _lParam$[ebp]
	push	eax
	mov	ecx, DWORD PTR _wParam$[ebp]
	push	ecx
	mov	edx, DWORD PTR _uMsg$[ebp]
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	_fnProcessOENG_Message
	add	esp, 16					; 00000010H
$L60121:
$L59724:

; 2041 : 
; 2042 :    return( DefWindowProc( hWnd, uMsg, wParam, lParam ) );

	mov	ecx, DWORD PTR _lParam$[ebp]
	push	ecx
	mov	edx, DWORD PTR _wParam$[ebp]
	push	edx
	mov	eax, DWORD PTR _uMsg$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__DefWindowProcA@16
$L59721:

; 2043 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
$L60793:
	DD	$L60096
	DD	$L59731
	DD	$L60030
	DD	$L60099
	DD	$L60120
$L60792:
	DB	0
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
	DB	2
	DB	2
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	3
_MainWndProc@16 ENDP
_TEXT	ENDS
EXTRN	_ProcessZeidonMessage@8:NEAR
_TEXT	SEGMENT
_wParam$ = 16
_lParam$ = 20
_fnProcessOENG_Message PROC NEAR

; 2056 : {

	push	ebp
	mov	ebp, esp

; 2057 : #ifdef __WIN32__
; 2058 : 
; 2059 :    // We'll let core handle it.
; 2060 :    ProcessZeidonMessage( wParam, lParam );

	mov	eax, DWORD PTR _lParam$[ebp]
	push	eax
	mov	ecx, DWORD PTR _wParam$[ebp]
	push	ecx
	call	_ProcessZeidonMessage@8

; 2061 :    return;
; 2062 : 
; 2063 : #else
; 2064 : 
; 2065 :    // The only thing we handle in Win 3.x is conversion from decimal to string.
; 2066 : 
; 2067 :    zPDECIMAL pdDecimal  = (zPDECIMAL) lParam;
; 2068 :    zSHORT    nPrecision = (zSHORT) wParam;
; 2069 :    zCHAR     szStr[ 100 ] = "abcdefghijklmnopqrstuvwxyz";
; 2070 :    zPCHAR    pszReturn;
; 2071 : 
; 2072 : // SysMessageBox( "DGC", "processing message", 1 );
; 2073 : 
; 2074 :    pszReturn = (zPCHAR) ((zLONG) lParam + sizeof( zPDECIMAL ));
; 2075 : 
; 2076 :    if ( nPrecision > 0 )
; 2077 :       zsprintf( szStr, "%*Lf", (int) wParam, *pdDecimal );
; 2078 :    else
; 2079 :       zsprintf( szStr, "%Lf", *pdDecimal );
; 2080 : 
; 2081 :    zstrcpy( pszReturn, szStr );
; 2082 : 
; 2083 : #endif
; 2084 : }

	pop	ebp
	ret	0
_fnProcessOENG_Message ENDP
_TEXT	ENDS
PUBLIC	_AboutDlgProc@16
EXTRN	__imp__EndDialog@8:NEAR
_TEXT	SEGMENT
_hDlg$ = 8
_uMsg$ = 12
_AboutDlgProc@16 PROC NEAR

; 2098 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2099 :    switch ( uMsg )
; 2100 :    {

	mov	eax, DWORD PTR _uMsg$[ebp]
	mov	DWORD PTR -4+[ebp], eax
	cmp	DWORD PTR -4+[ebp], 272			; 00000110H
	je	SHORT $L60145
	cmp	DWORD PTR -4+[ebp], 273			; 00000111H
	je	SHORT $L60144
	jmp	SHORT $L60146
$L60144:

; 2101 :       case WM_COMMAND:
; 2102 :          EndDialog( hDlg, TRUE );

	push	1
	mov	ecx, DWORD PTR _hDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__EndDialog@8
$L60145:

; 2103 : 
; 2104 :          // fall through
; 2105 : 
; 2106 :       case WM_INITDIALOG:
; 2107 :          return( TRUE );

	mov	eax, 1
	jmp	SHORT $L60141
$L60146:

; 2108 : 
; 2109 :       default:
; 2110 :          return( FALSE );

	xor	eax, eax
$L60141:

; 2112 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_AboutDlgProc@16 ENDP
_TEXT	ENDS
EXTRN	__imp__LoadCursorA@8:NEAR
EXTRN	__imp__LoadIconA@8:NEAR
EXTRN	__imp__GetStockObject@4:NEAR
EXTRN	__imp__RegisterClassA@4:NEAR
_TEXT	SEGMENT
_hInstance$ = 8
_wc$ = -40
_InitApplication PROC NEAR

; 2123 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H

; 2124 :     WNDCLASS  wc;
; 2125 : 
; 2126 :     // Fill in window class structure with parameters that describe the
; 2127 :     // main window.
; 2128 : 
; 2129 :     wc.style = 0;                     // Class style(s).

	mov	DWORD PTR _wc$[ebp], 0

; 2130 :     wc.lpfnWndProc = MainWndProc;     // Function to retrieve messages for

	mov	DWORD PTR _wc$[ebp+4], OFFSET FLAT:_MainWndProc@16

; 2131 :                                       // windows of this class.
; 2132 :     wc.cbClsExtra = 0;                // No per-class extra data.

	mov	DWORD PTR _wc$[ebp+8], 0

; 2133 :     wc.cbWndExtra = 0;                // No per-window extra data.

	mov	DWORD PTR _wc$[ebp+12], 0

; 2134 :     wc.hInstance = hInstance;         // Application that owns the class.

	mov	eax, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR _wc$[ebp+16], eax

; 2135 :     wc.hIcon = LoadIcon( hInstance, "ZEIDON" );

	push	OFFSET FLAT:??_C@_06HLLH@ZEIDON?$AA@	; `string'
	mov	ecx, DWORD PTR _hInstance$[ebp]
	push	ecx
	call	DWORD PTR __imp__LoadIconA@8
	mov	DWORD PTR _wc$[ebp+20], eax

; 2136 :     wc.hCursor = LoadCursor( 0, IDC_ARROW );

	push	32512					; 00007f00H
	push	0
	call	DWORD PTR __imp__LoadCursorA@8
	mov	DWORD PTR _wc$[ebp+24], eax

; 2137 :     wc.hbrBackground = GetStockObject( WHITE_BRUSH );

	push	0
	call	DWORD PTR __imp__GetStockObject@4
	mov	DWORD PTR _wc$[ebp+28], eax

; 2138 :     wc.lpszMenuName =  0;             // Name of menu resource in .RC file.

	mov	DWORD PTR _wc$[ebp+32], 0

; 2139 :     wc.lpszClassName = szClassName;   // Name used in call to CreateWindow.

	mov	DWORD PTR _wc$[ebp+36], OFFSET FLAT:_szClassName

; 2140 : 
; 2141 : #ifdef __WIN32__
; 2142 :    // For Win32 we need to create an invisible window to handle Zeidon msgs.
; 2143 : 
; 2144 :    if ( !RegisterClass( &wc ) )

	lea	edx, DWORD PTR _wc$[ebp]
	push	edx
	call	DWORD PTR __imp__RegisterClassA@4
	and	eax, 65535				; 0000ffffH
	test	eax, eax
	jne	SHORT $L60154

; 2145 :       return( FALSE );

	xor	eax, eax
	jmp	SHORT $L60149
$L60154:

; 2146 : 
; 2147 :     wc.style = 0;                       // Class style(s).

	mov	DWORD PTR _wc$[ebp], 0

; 2148 :     wc.lpfnWndProc = MainThrdWndProc;   // Function to retrieve messages.

	mov	DWORD PTR _wc$[ebp+4], OFFSET FLAT:_MainThrdWndProc@16

; 2149 :     wc.cbClsExtra = 0;                  // No per-class extra data.

	mov	DWORD PTR _wc$[ebp+8], 0

; 2150 :     wc.cbWndExtra = 0;                  // No per-window extra data.

	mov	DWORD PTR _wc$[ebp+12], 0

; 2151 :     wc.hInstance  = hInstance;          // Application that owns the class.

	mov	eax, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR _wc$[ebp+16], eax

; 2152 :     wc.hIcon      = 0;

	mov	DWORD PTR _wc$[ebp+20], 0

; 2153 :     wc.lpszMenuName =  0;               // Name of menu resource in .RC file.

	mov	DWORD PTR _wc$[ebp+32], 0

; 2154 :     wc.lpszClassName = szThreadClassName; // Name used in call to CreateWindow.

	mov	DWORD PTR _wc$[ebp+36], OFFSET FLAT:_szThreadClassName

; 2155 : 
; 2156 : #endif
; 2157 : 
; 2158 :     // Register the window class and return success/failure code.
; 2159 : 
; 2160 :     return( RegisterClass( &wc ));

	lea	ecx, DWORD PTR _wc$[ebp]
	push	ecx
	call	DWORD PTR __imp__RegisterClassA@4
	and	eax, 65535				; 0000ffffH
$L60149:

; 2161 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_InitApplication ENDP
_TEXT	ENDS
PUBLIC	_LogonDlgProc@16
PUBLIC	_SetTraceDlgProc@16
PUBLIC	_LimitDlgProc@16
PUBLIC	_FindStringDlgProc@16
PUBLIC	_ShowDLLDlgProc@16
PUBLIC	_TraceListWndProc@16
PUBLIC	_LogTraceDlgProc@16
PUBLIC	_SetupSysTray
PUBLIC	_ReadWindowPlacement
PUBLIC	_CheckWindowPos
PUBLIC	??_C@_08MHKG@KZOENGWA?$AA@			; `string'
PUBLIC	??_C@_0N@GAJF@Trace?5Window?$AA@		; `string'
PUBLIC	??_C@_07NOMM@ListBox?$AA@			; `string'
PUBLIC	??_C@_0N@BKNN@TraceWindows?$AA@			; `string'
PUBLIC	??_C@_08HAKP@KZOESRVC?$AA@			; `string'
PUBLIC	??_C@_0CA@IALB@?9?9?9?9Zeidon?5configuration?5file?3?5?$AA@ ; `string'
PUBLIC	??_C@_0CA@CFIG@?9?9LocalDir?5configuration?5file?3?5?$AA@ ; `string'
PUBLIC	??_C@_0N@MLFP@ShowOpenFile?$AA@			; `string'
PUBLIC	??_C@_0N@ECJL@ShowOI_Times?$AA@			; `string'
PUBLIC	??_C@_0N@JIDB@ShowTaskMsgs?$AA@			; `string'
PUBLIC	??_C@_0O@CIFG@WindowStartup?$AA@		; `string'
PUBLIC	??_C@_06OCEO@Hidden?$AA@			; `string'
PUBLIC	??_C@_07HBBA@SysTray?$AA@			; `string'
PUBLIC	??_C@_0BE@OFEG@DropEngineIfNoTasks?$AA@		; `string'
PUBLIC	??_C@_06EJJP@NETAPI?$AA@			; `string'
PUBLIC	??_C@_0BA@CCDD@NetWkstaGetInfo?$AA@		; `string'
PUBLIC	??_C@_09MKCM@Encrypted?$AA@			; `string'
PUBLIC	??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ ; `string'
PUBLIC	??_C@_08GKHP@KZDBHWOB?$AA@			; `string'
PUBLIC	??_C@_04DIDG@ROOT?$AA@				; `string'
PUBLIC	??_C@_0N@LPAB@StartMessage?$AA@			; `string'
PUBLIC	??_C@_07FGLN@?$FLDebug?$FN?$AA@			; `string'
PUBLIC	??_C@_0BM@HFDH@Object?5Engine?5Start?5Message?$AA@ ; `string'
EXTRN	__imp__GetPrivateProfileIntA@16:NEAR
EXTRN	_stricmp:NEAR
EXTRN	_fnSysMessageBox@16:NEAR
EXTRN	__imp__DeleteMenu@12:NEAR
EXTRN	__imp__SetWindowPlacement@8:NEAR
EXTRN	_atoi:NEAR
EXTRN	_SysSetUserID@12:NEAR
EXTRN	_GetViewByName@16:NEAR
EXTRN	_SetNameForView@16:NEAR
EXTRN	__imp__GetDC@4:NEAR
EXTRN	__imp__ReleaseDC@8:NEAR
EXTRN	_SfStartNetworks@8:NEAR
EXTRN	_CreateEntity@12:NEAR
EXTRN	_SfActivateSysEmptyOI@16:NEAR
EXTRN	_UfDecryptString@12:NEAR
EXTRN	__imp__RegisterWindowMessageA@4:NEAR
EXTRN	__imp__GetModuleHandleA@4:NEAR
EXTRN	_SfLockView@4:NEAR
EXTRN	_GetTracingFlags@0:NEAR
EXTRN	__imp__SetEnvironmentVariableA@8:NEAR
EXTRN	__imp__GetProcAddress@8:NEAR
EXTRN	_InitializeAnchorBlock@16:NEAR
EXTRN	__beginthreadex:NEAR
EXTRN	__imp__GetSystemMetrics@4:NEAR
EXTRN	__imp__LoadMenuA@8:NEAR
EXTRN	__imp__SetMenu@8:NEAR
EXTRN	__imp__GetTextMetricsA@8:NEAR
EXTRN	__imp__DestroyMenu@4:NEAR
EXTRN	__imp__SetWindowLongA@12:NEAR
;	COMDAT ??_C@_08MHKG@KZOENGWA?$AA@
; File C:\10C\w\oe\KZOENGWA.C
_DATA	SEGMENT
??_C@_08MHKG@KZOENGWA?$AA@ DB 'KZOENGWA', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@GAJF@Trace?5Window?$AA@
_DATA	SEGMENT
??_C@_0N@GAJF@Trace?5Window?$AA@ DB 'Trace Window', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_07NOMM@ListBox?$AA@
_DATA	SEGMENT
??_C@_07NOMM@ListBox?$AA@ DB 'ListBox', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@BKNN@TraceWindows?$AA@
_DATA	SEGMENT
??_C@_0N@BKNN@TraceWindows?$AA@ DB 'TraceWindows', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08HAKP@KZOESRVC?$AA@
_DATA	SEGMENT
??_C@_08HAKP@KZOESRVC?$AA@ DB 'KZOESRVC', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CA@IALB@?9?9?9?9Zeidon?5configuration?5file?3?5?$AA@
_DATA	SEGMENT
??_C@_0CA@IALB@?9?9?9?9Zeidon?5configuration?5file?3?5?$AA@ DB '----Zeido'
	DB	'n configuration file: ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CA@CFIG@?9?9LocalDir?5configuration?5file?3?5?$AA@
_DATA	SEGMENT
??_C@_0CA@CFIG@?9?9LocalDir?5configuration?5file?3?5?$AA@ DB '--LocalDir '
	DB	'configuration file: ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@MLFP@ShowOpenFile?$AA@
_DATA	SEGMENT
??_C@_0N@MLFP@ShowOpenFile?$AA@ DB 'ShowOpenFile', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@ECJL@ShowOI_Times?$AA@
_DATA	SEGMENT
??_C@_0N@ECJL@ShowOI_Times?$AA@ DB 'ShowOI_Times', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@JIDB@ShowTaskMsgs?$AA@
_DATA	SEGMENT
??_C@_0N@JIDB@ShowTaskMsgs?$AA@ DB 'ShowTaskMsgs', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@CIFG@WindowStartup?$AA@
_DATA	SEGMENT
??_C@_0O@CIFG@WindowStartup?$AA@ DB 'WindowStartup', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_06OCEO@Hidden?$AA@
_DATA	SEGMENT
??_C@_06OCEO@Hidden?$AA@ DB 'Hidden', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_07HBBA@SysTray?$AA@
_DATA	SEGMENT
??_C@_07HBBA@SysTray?$AA@ DB 'SysTray', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@OFEG@DropEngineIfNoTasks?$AA@
_DATA	SEGMENT
??_C@_0BE@OFEG@DropEngineIfNoTasks?$AA@ DB 'DropEngineIfNoTasks', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_06EJJP@NETAPI?$AA@
_DATA	SEGMENT
??_C@_06EJJP@NETAPI?$AA@ DB 'NETAPI', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@CCDD@NetWkstaGetInfo?$AA@
_DATA	SEGMENT
??_C@_0BA@CCDD@NetWkstaGetInfo?$AA@ DB 'NetWkstaGetInfo', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_09MKCM@Encrypted?$AA@
_DATA	SEGMENT
??_C@_09MKCM@Encrypted?$AA@ DB 'Encrypted', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@
_DATA	SEGMENT
??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ DB 'Zeidon DBHandler '
	DB	'Work Object', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_08GKHP@KZDBHWOB?$AA@
_DATA	SEGMENT
??_C@_08GKHP@KZDBHWOB?$AA@ DB 'KZDBHWOB', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_04DIDG@ROOT?$AA@
_DATA	SEGMENT
??_C@_04DIDG@ROOT?$AA@ DB 'ROOT', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@LPAB@StartMessage?$AA@
_DATA	SEGMENT
??_C@_0N@LPAB@StartMessage?$AA@ DB 'StartMessage', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_07FGLN@?$FLDebug?$FN?$AA@
_DATA	SEGMENT
??_C@_07FGLN@?$FLDebug?$FN?$AA@ DB '[Debug]', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@HFDH@Object?5Engine?5Start?5Message?$AA@
_DATA	SEGMENT
??_C@_0BM@HFDH@Object?5Engine?5Start?5Message?$AA@ DB 'Object Engine Star'
	DB	't Message', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hInstance$ = 8
_vDbhWork$ = -676
_rect$ = -536
_hDC$ = -612
_txtm$ = -672
_i$ = -608
_nHeight$ = -616
_nPosY$ = -596
_nWidth$ = -604
_nPosX$ = -592
_lpTask$ = -600
_hMenu$ = -588
_hProcessWnd$ = -260
_wp$ = -584
_szFileName$ = -520
_szTempName$ = -936
_szBuffer$ = -256
_lpTraceFlags$ = -540
_dwStyle$ = -940
_hNetApi$60273 = -1096
_lpfnNetWkstaGetInfo$60274 = -1204
_Buffer$60275 = -1024
_szLanUser$60276 = -1088
_szIniUser$60277 = -1168
_szIniPassword$60278 = -1056
_szPassword$60279 = -1200
_szUser$60280 = -1132
_szEncrypted$60281 = -944
_uReturnLth$60282 = -1100
_uLth$60283 = -1092
_uRC$60284 = -1136
_InitInstance PROC NEAR

; 2182 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 1240				; 000004d8H

; 2183 :    zVIEW        vDbhWork;
; 2184 :    RECT         rect;
; 2185 :    HDC          hDC;  // handle to the context display
; 2186 :    TEXTMETRIC   txtm; // characteristics of text chars
; 2187 :    UINT         i;
; 2188 :    int          nHeight, nPosY;
; 2189 :    int          nWidth, nPosX;
; 2190 : // FARPROC      lpFarProc[ 2 ];
; 2191 :    LPTASK       lpTask;
; 2192 :    HMENU        hMenu;
; 2193 :    HWND         hProcessWnd;
; 2194 :    WINDOWPLACEMENT wp;
; 2195 :    char         szFileName[ zMAX_FILENAME_LTH + 1 ];
; 2196 :    char         szTempName[ zMAX_FILENAME_LTH + 1 ];
; 2197 :    char         szBuffer[ 256 ];
; 2198 :    LPTRACINGFLAGS lpTraceFlags;
; 2199 :    DWORD dwStyle = 0;

	mov	DWORD PTR _dwStyle$[ebp], 0

; 2200 : 
; 2201 :    // Save the instance handle in static variable, which will be used in
; 2202 :    // many subsequence calls from this application to Windows.
; 2203 : 
; 2204 :    hInst = hInstance;

	mov	eax, DWORD PTR _hInstance$[ebp]
	mov	DWORD PTR _hInst, eax

; 2205 :    zmemset( szFileName, 0, zMAX_FILENAME_LTH + 1 );

	push	257					; 00000101H
	push	0
	lea	ecx, DWORD PTR _szFileName$[ebp]
	push	ecx
	call	_memset
	add	esp, 12					; 0000000cH

; 2206 : 
; 2207 :    // Get the dimensions of the screen.
; 2208 :    nWidth = (GetSystemMetrics( SM_CXSCREEN ) * 3) / 4;

	push	0
	call	DWORD PTR __imp__GetSystemMetrics@4
	imul	eax, 3
	cdq
	and	edx, 3
	add	eax, edx
	sar	eax, 2
	mov	DWORD PTR _nWidth$[ebp], eax

; 2209 :    nHeight = (GetSystemMetrics( SM_CYSCREEN ) * 3) / 4;

	push	1
	call	DWORD PTR __imp__GetSystemMetrics@4
	imul	eax, 3
	cdq
	and	edx, 3
	add	eax, edx
	sar	eax, 2
	mov	DWORD PTR _nHeight$[ebp], eax

; 2210 :    nPosX =  GetSystemMetrics( SM_CXSCREEN ) / 8;

	push	0
	call	DWORD PTR __imp__GetSystemMetrics@4
	cdq
	and	edx, 7
	add	eax, edx
	sar	eax, 3
	mov	DWORD PTR _nPosX$[ebp], eax

; 2211 :    nPosY =  GetSystemMetrics( SM_CYSCREEN ) / 8;

	push	1
	call	DWORD PTR __imp__GetSystemMetrics@4
	cdq
	and	edx, 7
	add	eax, edx
	sar	eax, 3
	mov	DWORD PTR _nPosY$[ebp], eax

; 2212 : 
; 2213 :    // Create a main window for this application instance.
; 2214 :    hMenu = LoadMenu( hInstance, "KZOENGWA" );

	push	OFFSET FLAT:??_C@_08MHKG@KZOENGWA?$AA@	; `string'
	mov	edx, DWORD PTR _hInstance$[ebp]
	push	edx
	call	DWORD PTR __imp__LoadMenuA@8
	mov	DWORD PTR _hMenu$[ebp], eax

; 2215 :    g_hWndMainFrame = CreateWindow(
; 2216 :       szClassName,                    // see RegisterClass( ) call
; 2217 :       "Zeidon Object Services",       // text for window title bar
; 2218 :       WS_OVERLAPPEDWINDOW,            // window style
; 2219 :       nPosX,                          // default horizontal position
; 2220 :       nPosY,                          // default vertical position
; 2221 :       nWidth,                         // default width
; 2222 :       nHeight,                        // default height
; 2223 :       0,                              // overlapped windows have no parent
; 2224 :       hMenu,                          // menu for trace window
; 2225 :       hInstance,                      // this instance owns this window
; 2226 :       0 );                            // pointer not needed

	push	0
	mov	eax, DWORD PTR _hInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hMenu$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _nHeight$[ebp]
	push	edx
	mov	eax, DWORD PTR _nWidth$[ebp]
	push	eax
	mov	ecx, DWORD PTR _nPosY$[ebp]
	push	ecx
	mov	edx, DWORD PTR _nPosX$[ebp]
	push	edx
	push	13565952				; 00cf0000H
	push	OFFSET FLAT:??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@ ; `string'
	push	OFFSET FLAT:_szClassName
	push	0
	call	DWORD PTR __imp__CreateWindowExA@48
	mov	DWORD PTR _g_hWndMainFrame, eax

; 2227 : 
; 2228 :    // If window could not be created, return "failure".
; 2229 :    if ( g_hWndMainFrame == 0 )

	cmp	DWORD PTR _g_hWndMainFrame, 0
	jne	SHORT $L60179

; 2230 :       return( FALSE );

	xor	eax, eax
	jmp	$L60159
$L60179:

; 2231 : 
; 2232 :    GetClientRect( g_hWndMainFrame, &rect );

	lea	eax, DWORD PTR _rect$[ebp]
	push	eax
	mov	ecx, DWORD PTR _g_hWndMainFrame
	push	ecx
	call	DWORD PTR __imp__GetClientRect@8

; 2233 : 
; 2234 :    // First, create the listbox that will receive TraceLine messages from
; 2235 :    // core.
; 2236 :    g_hWndLB = CreateWindow(
; 2237 :       "ListBox",                      // see RegisterClass( ) call
; 2238 :       "Trace Window",                 // text for window title bar
; 2239 :       WS_CHILD | WS_VSCROLL | WS_HSCROLL |
; 2240 :          WS_CAPTION | LBS_NOINTEGRALHEIGHT,
; 2241 :       rect.left,                      // default horizontal position
; 2242 :       rect.top,                       // default vertical position
; 2243 :       (rect.right - rect.left),       // default width
; 2244 :       (rect.bottom - rect.top),       // default height
; 2245 :       g_hWndMainFrame,                // parent Window
; 2246 :       0,                              // use the window class menu
; 2247 :       hInstance,                      // this instance owns this window
; 2248 :       0                               // pointer not needed
; 2249 :    );

	push	0
	mov	edx, DWORD PTR _hInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _g_hWndMainFrame
	push	eax
	mov	ecx, DWORD PTR _rect$[ebp+12]
	sub	ecx, DWORD PTR _rect$[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _rect$[ebp+8]
	sub	edx, DWORD PTR _rect$[ebp]
	push	edx
	mov	eax, DWORD PTR _rect$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _rect$[ebp]
	push	ecx
	push	1089470720				; 40f00100H
	push	OFFSET FLAT:??_C@_0N@GAJF@Trace?5Window?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_07NOMM@ListBox?$AA@	; `string'
	push	0
	call	DWORD PTR __imp__CreateWindowExA@48
	mov	DWORD PTR _g_hWndLB, eax

; 2250 : 
; 2251 :    if ( strlen( g_szZeidonEnvDirectory ) > 0 )

	push	OFFSET FLAT:_g_szZeidonEnvDirectory
	call	_strlen
	add	esp, 4
	test	eax, eax
	jbe	SHORT $L60182

; 2252 :       SetEnvironmentVariable( "ZEIDON", g_szZeidonEnvDirectory );

	push	OFFSET FLAT:_g_szZeidonEnvDirectory
	push	OFFSET FLAT:??_C@_06HLLH@ZEIDON?$AA@	; `string'
	call	DWORD PTR __imp__SetEnvironmentVariableA@8
$L60182:

; 2253 : 
; 2254 :    GetEnvironmentVariable( "ZEIDON", szFileName, zMAX_FILENAME_LTH + 1 );

	push	257					; 00000101H
	lea	edx, DWORD PTR _szFileName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_06HLLH@ZEIDON?$AA@	; `string'
	call	DWORD PTR __imp__GetEnvironmentVariableA@12

; 2255 :    zstrcat( szFileName, "\\zeidon.ini" );

	push	OFFSET FLAT:??_C@_0M@BDD@?2zeidon?4ini?$AA@ ; `string'
	lea	eax, DWORD PTR _szFileName$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 2256 :    g_nTraceWindowCnt = GetPrivateProfileInt( "ObjectEngine", "TraceWindows",
; 2257 :                                              2, szFileName );

	lea	ecx, DWORD PTR _szFileName$[ebp]
	push	ecx
	push	2
	push	OFFSET FLAT:??_C@_0N@BKNN@TraceWindows?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileIntA@16
	mov	DWORD PTR _g_nTraceWindowCnt, eax

; 2258 :    if ( g_nTraceWindowCnt < 1 )

	cmp	DWORD PTR _g_nTraceWindowCnt, 1
	jae	SHORT $L60184

; 2259 :       g_nTraceWindowCnt = 2;

	mov	DWORD PTR _g_nTraceWindowCnt, 2

; 2260 :    else

	jmp	SHORT $L60186
$L60184:

; 2261 :    if ( g_nTraceWindowCnt > MAX_TRACE_WINDOWS )

	cmp	DWORD PTR _g_nTraceWindowCnt, 20	; 00000014H
	jbe	SHORT $L60186

; 2262 :       g_nTraceWindowCnt = MAX_TRACE_WINDOWS;

	mov	DWORD PTR _g_nTraceWindowCnt, 20	; 00000014H
$L60186:

; 2263 : 
; 2264 :    // Create the trace windows in the circuluar list.
; 2265 :    for ( i = 0; i < g_nTraceWindowCnt; i++ )

	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L60187
$L60188:
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR _i$[ebp], edx
$L60187:
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _g_nTraceWindowCnt
	jae	$L60189

; 2267 :       g_hwndTraceWindow[ i ] = CreateWindow(
; 2268 :          "ListBox",                      // see RegisterClass( ) call
; 2269 :          "Trace Window",                 // text for window title bar
; 2270 :          WS_CHILD | WS_VSCROLL | WS_HSCROLL |
; 2271 :             WS_CAPTION | LBS_NOINTEGRALHEIGHT,
; 2272 :          rect.left,                      // default horizontal position
; 2273 :          rect.top,                       // default vertical position
; 2274 :          (rect.right - rect.left),       // default width
; 2275 :          (rect.bottom - rect.top),       // default height
; 2276 :          g_hWndMainFrame,                // parent Window
; 2277 :          0,                              // use the window class menu
; 2278 :          hInstance,                      // this instance owns this window
; 2279 :          0                               // pointer not needed
; 2280 :       );

	push	0
	mov	ecx, DWORD PTR _hInstance$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _g_hWndMainFrame
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
	push	1089470720				; 40f00100H
	push	OFFSET FLAT:??_C@_0N@GAJF@Trace?5Window?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_07NOMM@ListBox?$AA@	; `string'
	push	0
	call	DWORD PTR __imp__CreateWindowExA@48
	mov	ecx, DWORD PTR _i$[ebp]
	mov	DWORD PTR _g_hwndTraceWindow[ecx*4], eax

; 2281 : 
; 2282 :       SendMessage( g_hwndTraceWindow[ i ], WM_SETFONT,
; 2283 :                    (WPARAM) GetStockObject( SYSTEM_FIXED_FONT ), 0 );

	push	0
	push	16					; 00000010H
	call	DWORD PTR __imp__GetStockObject@4
	push	eax
	push	48					; 00000030H
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _g_hwndTraceWindow[edx*4]
	push	eax
	call	DWORD PTR __imp__SendMessageA@16

; 2284 : 
; 2285 :       hDC = GetDC( g_hwndTraceWindow[ i ] );         // get the display context

	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _g_hwndTraceWindow[ecx*4]
	push	edx
	call	DWORD PTR __imp__GetDC@4
	mov	DWORD PTR _hDC$[ebp], eax

; 2286 :       GetTextMetrics( hDC, &txtm );

	lea	eax, DWORD PTR _txtm$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hDC$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetTextMetricsA@8

; 2287 :       ReleaseDC ( g_hwndTraceWindow[ i ], hDC );     // free the resource

	mov	edx, DWORD PTR _hDC$[ebp]
	push	edx
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__ReleaseDC@8

; 2288 :       SendMessage( g_hwndTraceWindow[ i ], LB_SETHORIZONTALEXTENT,
; 2289 :                    txtm.tmMaxCharWidth * 256, 0L );

	push	0
	mov	edx, DWORD PTR _txtm$[ebp+24]
	shl	edx, 8
	push	edx
	push	404					; 00000194H
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16

; 2290 :    }

	jmp	$L60188
$L60189:

; 2291 : 
; 2292 :    hMenu = GetMenu( g_hWndMainFrame );

	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	call	DWORD PTR __imp__GetMenu@4
	mov	DWORD PTR _hMenu$[ebp], eax

; 2293 : 
; 2294 :    // Delete the unused menu items.
; 2295 :    for ( i = g_nTraceWindowCnt; i < MAX_TRACE_WINDOWS; i++ )

	mov	eax, DWORD PTR _g_nTraceWindowCnt
	mov	DWORD PTR _i$[ebp], eax
	jmp	SHORT $L60191
$L60192:
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
$L60191:
	cmp	DWORD PTR _i$[ebp], 20			; 00000014H
	jae	SHORT $L60193

; 2296 :       DeleteMenu( hMenu, IDM_TRACEWINDOW01 + i, MF_BYCOMMAND );

	push	0
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 300				; 0000012cH
	push	edx
	mov	eax, DWORD PTR _hMenu$[ebp]
	push	eax
	call	DWORD PTR __imp__DeleteMenu@12
	jmp	SHORT $L60192
$L60193:

; 2297 : 
; 2298 :    ShowWindow( g_hwndTraceWindow[ 0 ], SW_SHOW );

	push	5
	mov	ecx, DWORD PTR _g_hwndTraceWindow
	push	ecx
	call	DWORD PTR __imp__ShowWindow@8

; 2299 :    g_nTraceWindowHead      = 0;

	mov	DWORD PTR _g_nTraceWindowHead, 0

; 2300 :    g_nTraceWindowDisplayed = 0;

	mov	DWORD PTR _g_nTraceWindowDisplayed, 0

; 2301 : 
; 2302 :    CheckMenuItem( hMenu, IDM_TRACEWINDOW01,
; 2303 :                   MF_BYCOMMAND | MF_CHECKED );

	push	8
	push	300					; 0000012cH
	mov	edx, DWORD PTR _hMenu$[ebp]
	push	edx
	call	DWORD PTR __imp__CheckMenuItem@12

; 2304 : 
; 2305 :    // Make proc instances for message procedures
; 2306 :    fpAbout = (zFARPROC_CALLBACK)
; 2307 :       MakeProcInstance( (FARPROC) AboutDlgProc, hInstance );

	mov	DWORD PTR _fpAbout, OFFSET FLAT:_AboutDlgProc@16

; 2308 :    fpLogon = (zFARPROC_CALLBACK)
; 2309 :       MakeProcInstance( (FARPROC) LogonDlgProc, hInstance );

	mov	DWORD PTR _fpLogon, OFFSET FLAT:_LogonDlgProc@16

; 2310 :    fpSetTrace = (zFARPROC_CALLBACK)
; 2311 :       MakeProcInstance( (FARPROC) SetTraceDlgProc, hInstance );

	mov	DWORD PTR _fpSetTrace, OFFSET FLAT:_SetTraceDlgProc@16

; 2312 :    fpLogTrace = (zFARPROC_CALLBACK)
; 2313 :       MakeProcInstance( (FARPROC) LogTraceDlgProc, hInstance );

	mov	DWORD PTR _fpLogTrace, OFFSET FLAT:_LogTraceDlgProc@16

; 2314 :    fpTraceList = (zFARPROC_CALLBACK)
; 2315 :       MakeProcInstance( (FARPROC) TraceListWndProc, hInstance );

	mov	DWORD PTR _fpTraceList, OFFSET FLAT:_TraceListWndProc@16

; 2316 :    fpLineLimit = (zFARPROC_CALLBACK)
; 2317 :       MakeProcInstance( (FARPROC) LimitDlgProc, hInstance );

	mov	DWORD PTR _fpLineLimit, OFFSET FLAT:_LimitDlgProc@16

; 2318 :    fpFindString = (zFARPROC_CALLBACK)
; 2319 :       MakeProcInstance( (FARPROC) FindStringDlgProc, hInstance );

	mov	DWORD PTR _fpFindString, OFFSET FLAT:_FindStringDlgProc@16

; 2320 :    fpShowDLL = (zFARPROC_CALLBACK)
; 2321 :       MakeProcInstance( (FARPROC) ShowDLLDlgProc, hInstance );

	mov	DWORD PTR _fpShowDLL, OFFSET FLAT:_ShowDLLDlgProc@16

; 2322 : 
; 2323 :    // Change the WndProc for the list window so we can trap LB_ADDSTRING
; 2324 :    // messages and write them to the trace log (if open)
; 2325 :    fpDfltListWndProc = (zFARPROC_CALLBACK)
; 2326 :       SetWindowLong( g_hWndLB, GWL_WNDPROC, (DWORD) TraceListWndProc );

	push	OFFSET FLAT:_TraceListWndProc@16
	push	-4					; fffffffcH
	mov	eax, DWORD PTR _g_hWndLB
	push	eax
	call	DWORD PTR __imp__SetWindowLongA@12
	mov	DWORD PTR _fpDfltListWndProc, eax

; 2327 : 
; 2328 :    // Register message of Object Services.
; 2329 :    g_wOENG_Message = RegisterWindowMessage( "KZOESRVC" );

	push	OFFSET FLAT:??_C@_08HAKP@KZOESRVC?$AA@	; `string'
	call	DWORD PTR __imp__RegisterWindowMessageA@4
	mov	DWORD PTR _g_wOENG_Message, eax

; 2330 : 
; 2331 : #ifdef __WIN32__
; 2332 :    // We need to start up the message loop thread.
; 2333 :    g_bThreadStarted = FALSE;

	mov	BYTE PTR _g_bThreadStarted, 0

; 2334 : 
; 2335 : #ifdef __BORLANDC__
; 2336 :    // start address, stack size, argument, security, initflag, thread address
; 2337 :    // unsigned long _RTLENTRY _EXPFUNC
; 2338 :    // _beginthreadNT( void (_USERENTRY *__start)(void *),
; 2339 :    //                 unsigned __stksize, void *__arg,
; 2340 :    //                 void *__security_attr,
; 2341 :    //                 unsigned long __create_flags,
; 2342 :    //                 unsigned long *__thread_id );
; 2343 : 
; 2344 : #else
; 2345 :    // security, stack size, start address, arglist, initflag, thread address
; 2346 :    g_hThread = _beginthreadex( NULL, 0, fnThreadProc, 0, 0, &g_dwThreadID );

	push	OFFSET FLAT:_g_dwThreadID
	push	0
	push	0
	push	OFFSET FLAT:_fnThreadProc@4
	push	0
	push	0
	call	__beginthreadex
	add	esp, 24					; 00000018H
	mov	DWORD PTR _g_hThread, eax

; 2347 : #endif
; 2348 : 
; 2349 :    if ( g_hThread )

	cmp	DWORD PTR _g_hThread, 0
	je	SHORT $L60214

; 2350 :       CloseHandle( (HANDLE) g_hThread );

	mov	ecx, DWORD PTR _g_hThread
	push	ecx
	call	DWORD PTR __imp__CloseHandle@4
$L60214:

; 2351 : 
; 2352 :    // Now wait until the thread has finished its initialization.
; 2353 :    while ( g_bThreadStarted == FALSE )

	xor	edx, edx
	mov	dl, BYTE PTR _g_bThreadStarted
	test	edx, edx
	jne	SHORT $L60218

; 2354 :       Sleep( 10 );

	push	10					; 0000000aH
	call	DWORD PTR __imp__Sleep@4
	jmp	SHORT $L60214
$L60218:

; 2355 : 
; 2356 :    hProcessWnd = g_hThreadWnd;

	mov	eax, DWORD PTR _g_hThreadWnd
	mov	DWORD PTR _hProcessWnd$[ebp], eax

; 2357 : #else
; 2358 :    hProcessWnd = g_hWndMainFrame;
; 2359 : #endif
; 2360 : 
; 2361 :    // Initialize Object services anchor block
; 2362 :    AnchorBlock = InitializeAnchorBlock( (zLONG) hInstance,
; 2363 :                                         (zLONG) hProcessWnd,
; 2364 :                                         (zLONG) g_hWndLB,
; 2365 :                                         (zLONG) g_wOENG_Message );

	mov	ecx, DWORD PTR _g_wOENG_Message
	push	ecx
	mov	edx, DWORD PTR _g_hWndLB
	push	edx
	mov	eax, DWORD PTR _hProcessWnd$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hInstance$[ebp]
	push	ecx
	call	_InitializeAnchorBlock@16
	mov	DWORD PTR _AnchorBlock, eax

; 2366 : 
; 2367 :    // If initialization failed, destroy the instance and return.
; 2368 :    if ( AnchorBlock == 0 || AnchorBlock == (LPANCHOR) zCALL_ERROR )

	cmp	DWORD PTR _AnchorBlock, 0
	je	SHORT $L60225
	cmp	DWORD PTR _AnchorBlock, -16		; fffffff0H
	jne	SHORT $L60224
$L60225:

; 2370 :       DestroyWindow( g_hWndMainFrame );

	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	call	DWORD PTR __imp__DestroyWindow@4

; 2371 :       return( 0 );

	xor	eax, eax
	jmp	$L60159
$L60224:

; 2373 : 
; 2374 :    AnchorBlock->OS_Data.hMainWindow = (zLONG) g_hWndMainFrame;

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR _g_hWndMainFrame
	mov	DWORD PTR [eax+1503], ecx

; 2375 :    lpTask            = zGETPTR( AnchorBlock->hMainTask );

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+106]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$[ebp], eax

; 2376 :    g_vSystemTaskView = zGETPTR( lpTask->hFirstView );

	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+106]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _g_vSystemTaskView, eax

; 2377 : 
; 2378 :    TraceLineS( "----Zeidon configuration file: ", szFileName );

	lea	eax, DWORD PTR _szFileName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CA@IALB@?9?9?9?9Zeidon?5configuration?5file?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 2379 :    SysReadZeidonIni( -1, szlWorkstation, "LocalDir", szTempName );

	lea	ecx, DWORD PTR _szTempName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_08DEFM@LocalDir?$AA@	; `string'
	push	OFFSET FLAT:_szlWorkstation
	push	-1
	call	_SysReadZeidonIni@16

; 2380 :    SysConvertEnvironmentString( szFileName, szTempName );

	lea	edx, DWORD PTR _szTempName$[ebp]
	push	edx
	lea	eax, DWORD PTR _szFileName$[ebp]
	push	eax
	call	_SysConvertEnvironmentString@8

; 2381 :    if ( szFileName[ 0 ] )

	movsx	ecx, BYTE PTR _szFileName$[ebp]
	test	ecx, ecx
	je	$L60228

; 2383 :       SysAppendcDirSep( szFileName );

	lea	edx, DWORD PTR _szFileName$[ebp]
	push	edx
	call	_SysAppendcDirSep@4

; 2384 :       zstrcat( szFileName, "ZeidonRT.ini" );

	push	OFFSET FLAT:??_C@_0N@KGLP@ZeidonRT?4ini?$AA@ ; `string'
	lea	eax, DWORD PTR _szFileName$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 2385 :       TraceLineS( "--LocalDir configuration file: ", szFileName );

	lea	ecx, DWORD PTR _szFileName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CA@CFIG@?9?9LocalDir?5configuration?5file?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 2386 :       GetPrivateProfileString( "ObjectEngine", "LineLimit", "",
; 2387 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	edx, DWORD PTR _szFileName$[ebp]
	push	edx
	push	256					; 00000100H
	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_09GJAL@LineLimit?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2388 :       if ( szBuffer[ 0 ] )

	movsx	ecx, BYTE PTR _szBuffer$[ebp]
	test	ecx, ecx
	je	SHORT $L60231

; 2390 :          g_uTraceLineLimit = atoi( szBuffer );

	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	call	_atoi
	add	esp, 4
	mov	DWORD PTR _g_uTraceLineLimit, eax

; 2391 :          if ( g_uTraceLineLimit == 0 )

	cmp	DWORD PTR _g_uTraceLineLimit, 0
	jne	SHORT $L60231

; 2393 :             AnchorBlock->bTraceCnt = FALSE;

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+1495]
	and	ecx, -3					; fffffffdH
	mov	edx, DWORD PTR _AnchorBlock
	mov	DWORD PTR [edx+1495], ecx

; 2394 :             SendMessage( g_hWndLB, LB_RESETCONTENT, 0, 0L );

	push	0
	push	0
	push	388					; 00000184H
	mov	eax, DWORD PTR _g_hWndLB
	push	eax
	call	DWORD PTR __imp__SendMessageA@16
$L60231:

; 2397 : 
; 2398 :       GetPrivateProfileString( "ObjectEngine", "FindString", "",
; 2399 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	ecx, DWORD PTR _szFileName$[ebp]
	push	ecx
	push	256					; 00000100H
	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0L@BBKE@FindString?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2400 :       zstrcpy( g_szFindString, szBuffer );

	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:_g_szFindString
	call	_strcpy
	add	esp, 8

; 2401 :       GetPrivateProfileString( "ObjectEngine", "ScrollTrace", "",
; 2402 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	ecx, DWORD PTR _szFileName$[ebp]
	push	ecx
	push	256					; 00000100H
	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0M@LCCA@ScrollTrace?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2403 :       if ( szBuffer[ 0 ] )

	movsx	eax, BYTE PTR _szBuffer$[ebp]
	test	eax, eax
	je	SHORT $L60232

; 2404 :          g_chScrollTrace = szBuffer[ 0 ];

	mov	cl, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chScrollTrace, cl
$L60232:

; 2405 : 
; 2406 :       GetPrivateProfileString( "ObjectEngine", "PrintPreview", "",
; 2407 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	edx, DWORD PTR _szFileName$[ebp]
	push	edx
	push	256					; 00000100H
	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0N@LPJH@PrintPreview?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2408 :       if ( szBuffer[ 0 ] )

	movsx	ecx, BYTE PTR _szBuffer$[ebp]
	test	ecx, ecx
	je	SHORT $L60234

; 2410 :          g_chPrintPreview = szBuffer[ 0 ];

	mov	dl, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chPrintPreview, dl

; 2411 :          if ( g_chPrintPreview == 'Y' )

	movsx	eax, BYTE PTR _g_chPrintPreview
	cmp	eax, 89					; 00000059H
	jne	SHORT $L60234

; 2412 :             g_chPrintPreview = '0';

	mov	BYTE PTR _g_chPrintPreview, 48		; 00000030H
$L60234:

; 2414 : 
; 2415 :       GetPrivateProfileString( "ObjectEngine", "PrintDialog", "",
; 2416 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	ecx, DWORD PTR _szFileName$[ebp]
	push	ecx
	push	256					; 00000100H
	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0M@GPAK@PrintDialog?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2417 :       if ( szBuffer[ 0 ] )

	movsx	eax, BYTE PTR _szBuffer$[ebp]
	test	eax, eax
	je	SHORT $L60235

; 2418 :          g_chPrintDialog = szBuffer[ 0 ];

	mov	cl, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chPrintDialog, cl
$L60235:

; 2419 : 
; 2420 :       GetPrivateProfileString( "ObjectEngine", "TraceOE_Warning", "",
; 2421 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	edx, DWORD PTR _szFileName$[ebp]
	push	edx
	push	256					; 00000100H
	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BA@ONLI@TraceOE_Warning?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2422 :       if ( szBuffer[ 0 ] )

	movsx	ecx, BYTE PTR _szBuffer$[ebp]
	test	ecx, ecx
	je	SHORT $L60236

; 2423 :          g_chTraceOE_Warning = szBuffer[ 0 ];

	mov	dl, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chTraceOE_Warning, dl
$L60236:

; 2424 : 
; 2425 :       GetPrivateProfileString( "ObjectEngine", "TraceAction", "",
; 2426 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	eax, DWORD PTR _szFileName$[ebp]
	push	eax
	push	256					; 00000100H
	lea	ecx, DWORD PTR _szBuffer$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0M@LKED@TraceAction?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2427 :       if ( szBuffer[ 0 ] )

	movsx	edx, BYTE PTR _szBuffer$[ebp]
	test	edx, edx
	je	SHORT $L60237

; 2428 :          g_chTraceZDrActions = szBuffer[ 0 ];

	mov	al, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chTraceZDrActions, al
$L60237:

; 2429 : 
; 2430 :       GetPrivateProfileString( "ObjectEngine", "TraceWeb", "",
; 2431 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	ecx, DWORD PTR _szFileName$[ebp]
	push	ecx
	push	256					; 00000100H
	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_08LOC@TraceWeb?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2432 :       if ( szBuffer[ 0 ] )

	movsx	eax, BYTE PTR _szBuffer$[ebp]
	test	eax, eax
	je	SHORT $L60238

; 2433 :          g_chTraceWebActions = szBuffer[ 0 ];

	mov	cl, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chTraceWebActions, cl
$L60238:

; 2434 : 
; 2435 :       GetPrivateProfileString( "ObjectEngine", "ShowTaskID", "",
; 2436 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	edx, DWORD PTR _szFileName$[ebp]
	push	edx
	push	256					; 00000100H
	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0L@BPGN@ShowTaskID?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2437 :       if ( szBuffer[ 0 ] )

	movsx	ecx, BYTE PTR _szBuffer$[ebp]
	test	ecx, ecx
	je	SHORT $L60239

; 2438 :          AnchorBlock->bShowTaskID = 1;

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+1495]
	or	al, 1
	mov	ecx, DWORD PTR _AnchorBlock
	mov	DWORD PTR [ecx+1495], eax
$L60239:

; 2439 : 
; 2440 :       lpTraceFlags = GetTracingFlags( );

	call	_GetTracingFlags@0
	mov	DWORD PTR _lpTraceFlags$[ebp], eax

; 2441 : 
; 2442 :       GetPrivateProfileString( "ObjectEngine", "ShowOpenFile", "",
; 2443 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	edx, DWORD PTR _szFileName$[ebp]
	push	edx
	push	256					; 00000100H
	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0N@MLFP@ShowOpenFile?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2444 :       lpTraceFlags->bOpenFile = (toupper( szBuffer[ 0 ] ) == 'Y') ? TRUE : FALSE;

	movsx	ecx, BYTE PTR _szBuffer$[ebp]
	push	ecx
	call	_toupper
	add	esp, 4
	mov	DWORD PTR -1208+[ebp], eax
	xor	edx, edx
	cmp	DWORD PTR -1208+[ebp], 89		; 00000059H
	sete	dl
	and	edx, 1
	shl	edx, 2
	mov	eax, DWORD PTR _lpTraceFlags$[ebp]
	mov	ecx, DWORD PTR [eax]
	and	ecx, -5					; fffffffbH
	or	ecx, edx
	mov	edx, DWORD PTR _lpTraceFlags$[ebp]
	mov	DWORD PTR [edx], ecx

; 2445 : 
; 2446 :       GetPrivateProfileString( "ObjectEngine", "ShowOI_Times", "",
; 2447 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	eax, DWORD PTR _szFileName$[ebp]
	push	eax
	push	256					; 00000100H
	lea	ecx, DWORD PTR _szBuffer$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0N@ECJL@ShowOI_Times?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2448 :       lpTraceFlags->bOI_Times = (toupper( szBuffer[ 0 ] ) == 'Y') ? TRUE : FALSE;

	movsx	edx, BYTE PTR _szBuffer$[ebp]
	push	edx
	call	_toupper
	add	esp, 4
	mov	DWORD PTR -1212+[ebp], eax
	xor	eax, eax
	cmp	DWORD PTR -1212+[ebp], 89		; 00000059H
	sete	al
	and	eax, 1
	mov	ecx, DWORD PTR _lpTraceFlags$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, -2					; fffffffeH
	or	edx, eax
	mov	eax, DWORD PTR _lpTraceFlags$[ebp]
	mov	DWORD PTR [eax], edx

; 2449 : 
; 2450 :       GetPrivateProfileString( "ObjectEngine", "ShowTaskMsgs", "",
; 2451 :                                szBuffer, sizeof( szBuffer ), szFileName );

	lea	ecx, DWORD PTR _szFileName$[ebp]
	push	ecx
	push	256					; 00000100H
	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0N@JIDB@ShowTaskMsgs?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 2452 :       lpTraceFlags->bTaskMsgs = (toupper( szBuffer[ 0 ] ) == 'Y') ? TRUE : FALSE;

	movsx	eax, BYTE PTR _szBuffer$[ebp]
	push	eax
	call	_toupper
	add	esp, 4
	mov	DWORD PTR -1216+[ebp], eax
	xor	ecx, ecx
	cmp	DWORD PTR -1216+[ebp], 89		; 00000059H
	sete	cl
	and	ecx, 1
	shl	ecx, 1
	mov	edx, DWORD PTR _lpTraceFlags$[ebp]
	mov	eax, DWORD PTR [edx]
	and	al, -3					; fffffffdH
	or	eax, ecx
	mov	ecx, DWORD PTR _lpTraceFlags$[ebp]
	mov	DWORD PTR [ecx], eax

; 2454 :    else

	jmp	$L60243
$L60228:

; 2456 :       SysReadZeidonIni( -1, "[ObjectEngine]", "LineLimit", szBuffer );

	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_09GJAL@LineLimit?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2457 :       if ( szBuffer[ 0 ] )

	movsx	eax, BYTE PTR _szBuffer$[ebp]
	test	eax, eax
	je	SHORT $L60245

; 2459 :          g_uTraceLineLimit = atoi( szBuffer );

	lea	ecx, DWORD PTR _szBuffer$[ebp]
	push	ecx
	call	_atoi
	add	esp, 4
	mov	DWORD PTR _g_uTraceLineLimit, eax

; 2460 :          if ( g_uTraceLineLimit == 0 )

	cmp	DWORD PTR _g_uTraceLineLimit, 0
	jne	SHORT $L60245

; 2462 :             AnchorBlock->bTraceCnt = FALSE;

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+1495]
	and	al, -3					; fffffffdH
	mov	ecx, DWORD PTR _AnchorBlock
	mov	DWORD PTR [ecx+1495], eax

; 2463 :             SendMessage( g_hWndLB, LB_RESETCONTENT, 0, 0L );

	push	0
	push	0
	push	388					; 00000184H
	mov	edx, DWORD PTR _g_hWndLB
	push	edx
	call	DWORD PTR __imp__SendMessageA@16
$L60245:

; 2466 : 
; 2467 :       SysReadZeidonIni( -1, "[ObjectEngine]", "FindString", szBuffer );

	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0L@BBKE@FindString?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2468 :       zstrcpy( g_szFindString, szBuffer );

	lea	ecx, DWORD PTR _szBuffer$[ebp]
	push	ecx
	push	OFFSET FLAT:_g_szFindString
	call	_strcpy
	add	esp, 8

; 2469 :       SysReadZeidonIni( -1, "[ObjectEngine]", "ScrollTrace", szBuffer );

	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0M@LCCA@ScrollTrace?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2470 :       if ( szBuffer[ 0 ] )

	movsx	eax, BYTE PTR _szBuffer$[ebp]
	test	eax, eax
	je	SHORT $L60246

; 2471 :          g_chScrollTrace = szBuffer[ 0 ];

	mov	cl, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chScrollTrace, cl
$L60246:

; 2472 : 
; 2473 :       SysReadZeidonIni( -1, "[ObjectEngine]", "PrintPreview", szBuffer );

	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0N@LPJH@PrintPreview?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2474 :       if ( szBuffer[ 0 ] )

	movsx	eax, BYTE PTR _szBuffer$[ebp]
	test	eax, eax
	je	SHORT $L60248

; 2476 :          g_chPrintPreview = szBuffer[ 0 ];

	mov	cl, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chPrintPreview, cl

; 2477 :          if ( g_chPrintPreview == 'Y' )

	movsx	edx, BYTE PTR _g_chPrintPreview
	cmp	edx, 89					; 00000059H
	jne	SHORT $L60248

; 2478 :             g_chPrintPreview = '0';

	mov	BYTE PTR _g_chPrintPreview, 48		; 00000030H
$L60248:

; 2480 : 
; 2481 :       SysReadZeidonIni( -1, "[ObjectEngine]", "PrintDialog", szBuffer );

	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0M@GPAK@PrintDialog?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2482 :       if ( szBuffer[ 0 ] )

	movsx	ecx, BYTE PTR _szBuffer$[ebp]
	test	ecx, ecx
	je	SHORT $L60249

; 2483 :          g_chPrintDialog = szBuffer[ 0 ];

	mov	dl, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chPrintDialog, dl
$L60249:

; 2484 : 
; 2485 :       SysReadZeidonIni( -1, "[ObjectEngine]", "TraceOE_Warning", szBuffer );

	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BA@ONLI@TraceOE_Warning?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2486 :       if ( szBuffer[ 0 ] )

	movsx	ecx, BYTE PTR _szBuffer$[ebp]
	test	ecx, ecx
	je	SHORT $L60250

; 2487 :          g_chTraceOE_Warning = szBuffer[ 0 ];

	mov	dl, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chTraceOE_Warning, dl
$L60250:

; 2488 : 
; 2489 :       SysReadZeidonIni( -1, "[ObjectEngine]", "TraceAction", szBuffer );

	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0M@LKED@TraceAction?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2490 :       if ( szBuffer[ 0 ] )

	movsx	ecx, BYTE PTR _szBuffer$[ebp]
	test	ecx, ecx
	je	SHORT $L60251

; 2491 :          g_chTraceZDrActions = szBuffer[ 0 ];

	mov	dl, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chTraceZDrActions, dl
$L60251:

; 2492 : 
; 2493 :       SysReadZeidonIni( -1, "[ObjectEngine]", "TraceWeb", szBuffer );

	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_08LOC@TraceWeb?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2494 :       if ( szBuffer[ 0 ] )

	movsx	ecx, BYTE PTR _szBuffer$[ebp]
	test	ecx, ecx
	je	SHORT $L60252

; 2495 :          g_chTraceWebActions = szBuffer[ 0 ];

	mov	dl, BYTE PTR _szBuffer$[ebp]
	mov	BYTE PTR _g_chTraceWebActions, dl
$L60252:

; 2496 : 
; 2497 :       SysReadZeidonIni( -1, "[ObjectEngine]", "ShowTaskID", szBuffer );

	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0L@BPGN@ShowTaskID?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2498 :       if ( szBuffer[ 0 ] )

	movsx	ecx, BYTE PTR _szBuffer$[ebp]
	test	ecx, ecx
	je	SHORT $L60253

; 2499 :          AnchorBlock->bShowTaskID = 1;

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+1495]
	or	al, 1
	mov	ecx, DWORD PTR _AnchorBlock
	mov	DWORD PTR [ecx+1495], eax
$L60253:

; 2500 : 
; 2501 :       lpTraceFlags = GetTracingFlags( );

	call	_GetTracingFlags@0
	mov	DWORD PTR _lpTraceFlags$[ebp], eax

; 2502 : 
; 2503 :       SysReadZeidonIni( -1, "[ObjectEngine]", "ShowOpenFile", szBuffer );

	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0N@MLFP@ShowOpenFile?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2504 :       lpTraceFlags->bOpenFile = (toupper( szBuffer[ 0 ] ) == 'Y') ? TRUE : FALSE;

	movsx	eax, BYTE PTR _szBuffer$[ebp]
	push	eax
	call	_toupper
	add	esp, 4
	mov	DWORD PTR -1220+[ebp], eax
	xor	ecx, ecx
	cmp	DWORD PTR -1220+[ebp], 89		; 00000059H
	sete	cl
	and	ecx, 1
	shl	ecx, 2
	mov	edx, DWORD PTR _lpTraceFlags$[ebp]
	mov	eax, DWORD PTR [edx]
	and	al, -5					; fffffffbH
	or	eax, ecx
	mov	ecx, DWORD PTR _lpTraceFlags$[ebp]
	mov	DWORD PTR [ecx], eax

; 2505 : 
; 2506 :       SysReadZeidonIni( -1, "[ObjectEngine]", "ShowOI_Times", szBuffer );

	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0N@ECJL@ShowOI_Times?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2507 :       lpTraceFlags->bOI_Times = (toupper( szBuffer[ 0 ] ) == 'Y') ? TRUE : FALSE;

	movsx	eax, BYTE PTR _szBuffer$[ebp]
	push	eax
	call	_toupper
	add	esp, 4
	mov	DWORD PTR -1224+[ebp], eax
	xor	ecx, ecx
	cmp	DWORD PTR -1224+[ebp], 89		; 00000059H
	sete	cl
	and	ecx, 1
	mov	edx, DWORD PTR _lpTraceFlags$[ebp]
	mov	eax, DWORD PTR [edx]
	and	al, -2					; fffffffeH
	or	eax, ecx
	mov	ecx, DWORD PTR _lpTraceFlags$[ebp]
	mov	DWORD PTR [ecx], eax

; 2508 : 
; 2509 :       SysReadZeidonIni( -1, "[ObjectEngine]", "ShowTaskMsgs", szBuffer );

	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0N@JIDB@ShowTaskMsgs?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2510 :       lpTraceFlags->bTaskMsgs = (toupper( szBuffer[ 0 ] ) == 'Y') ? TRUE : FALSE;

	movsx	eax, BYTE PTR _szBuffer$[ebp]
	push	eax
	call	_toupper
	add	esp, 4
	mov	DWORD PTR -1228+[ebp], eax
	xor	ecx, ecx
	cmp	DWORD PTR -1228+[ebp], 89		; 00000059H
	sete	cl
	and	ecx, 1
	shl	ecx, 1
	mov	edx, DWORD PTR _lpTraceFlags$[ebp]
	mov	eax, DWORD PTR [edx]
	and	al, -3					; fffffffdH
	or	eax, ecx
	mov	ecx, DWORD PTR _lpTraceFlags$[ebp]
	mov	DWORD PTR [ecx], eax
$L60243:

; 2512 : 
; 2513 :    // Retrieve WindowStartup parameter and show window in hidden,
; 2514 :    // systray or normal mode.
; 2515 :    SysReadZeidonIni( -1, "[ObjectEngine]", "WindowStartup", szBuffer );

	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0O@CIFG@WindowStartup?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2516 :    if ( zstricmp( szBuffer, "Hidden" ) == 0 )

	push	OFFSET FLAT:??_C@_06OCEO@Hidden?$AA@	; `string'
	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	call	_stricmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $L60255

; 2518 :       ShowWindow( g_hWndMainFrame, SW_HIDE );

	push	0
	mov	ecx, DWORD PTR _g_hWndMainFrame
	push	ecx
	call	DWORD PTR __imp__ShowWindow@8

; 2520 :    else

	jmp	$L60270
$L60255:

; 2521 :    if ( zstricmp( szBuffer, "SysTray" ) == 0 )

	push	OFFSET FLAT:??_C@_07HBBA@SysTray?$AA@	; `string'
	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	call	_stricmp
	add	esp, 8
	test	eax, eax
	jne	$L60258

; 2523 :       if ( ReadWindowPlacement( lpTask, &wp ) && CheckWindowPos( &wp ) )

	lea	eax, DWORD PTR _wp$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTask$[ebp]
	push	ecx
	call	_ReadWindowPlacement
	add	esp, 8
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L60260
	lea	edx, DWORD PTR _wp$[ebp]
	push	edx
	call	_CheckWindowPos
	add	esp, 4
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L60260

; 2524 :          SetWindowPlacement( g_hWndMainFrame, &wp );

	lea	eax, DWORD PTR _wp$[ebp]
	push	eax
	mov	ecx, DWORD PTR _g_hWndMainFrame
	push	ecx
	call	DWORD PTR __imp__SetWindowPlacement@8
$L60260:

; 2525 : 
; 2526 :       ShowWindow( g_hWndMainFrame, SW_HIDE );

	push	0
	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	call	DWORD PTR __imp__ShowWindow@8

; 2527 :       SetupSysTray( hInstance );

	mov	eax, DWORD PTR _hInstance$[ebp]
	push	eax
	call	_SetupSysTray
	add	esp, 4

; 2528 :       hMenu = GetMenu( g_hWndMainFrame );

	mov	ecx, DWORD PTR _g_hWndMainFrame
	push	ecx
	call	DWORD PTR __imp__GetMenu@4
	mov	DWORD PTR _hMenu$[ebp], eax

; 2529 :       if ( hMenu )

	cmp	DWORD PTR _hMenu$[ebp], 0
	je	SHORT $L60261

; 2530 :          DestroyMenu( hMenu );

	mov	edx, DWORD PTR _hMenu$[ebp]
	push	edx
	call	DWORD PTR __imp__DestroyMenu@4
$L60261:

; 2531 : 
; 2532 :       // Load Systray specific menu.
; 2533 :       hMenu = LoadMenu( hInst, MAKEINTRESOURCE( ID_KZOENGWA_MNU ));

	push	322					; 00000142H
	mov	eax, DWORD PTR _hInst
	push	eax
	call	DWORD PTR __imp__LoadMenuA@8
	mov	DWORD PTR _hMenu$[ebp], eax

; 2534 :       // Delete the unused menu items.
; 2535 :       for ( i = g_nTraceWindowCnt; i < MAX_TRACE_WINDOWS; i++ )

	mov	ecx, DWORD PTR _g_nTraceWindowCnt
	mov	DWORD PTR _i$[ebp], ecx
	jmp	SHORT $L60265
$L60266:
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR _i$[ebp], edx
$L60265:
	cmp	DWORD PTR _i$[ebp], 20			; 00000014H
	jae	SHORT $L60267

; 2536 :          DeleteMenu( hMenu, IDM_TRACEWINDOW01 + i, MF_BYCOMMAND );

	push	0
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 300				; 0000012cH
	push	eax
	mov	ecx, DWORD PTR _hMenu$[ebp]
	push	ecx
	call	DWORD PTR __imp__DeleteMenu@12
	jmp	SHORT $L60266
$L60267:

; 2537 : 
; 2538 :       SetMenu( g_hWndMainFrame, hMenu );

	mov	edx, DWORD PTR _hMenu$[ebp]
	push	edx
	mov	eax, DWORD PTR _g_hWndMainFrame
	push	eax
	call	DWORD PTR __imp__SetMenu@8

; 2540 :    else

	jmp	SHORT $L60270
$L60258:

; 2541 :    if ( ReadWindowPlacement( lpTask, &wp ) && CheckWindowPos( &wp ) )

	lea	ecx, DWORD PTR _wp$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpTask$[ebp]
	push	edx
	call	_ReadWindowPlacement
	add	esp, 8
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L60269
	lea	eax, DWORD PTR _wp$[ebp]
	push	eax
	call	_CheckWindowPos
	add	esp, 4
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L60269

; 2542 :       SetWindowPlacement( g_hWndMainFrame, &wp );

	lea	ecx, DWORD PTR _wp$[ebp]
	push	ecx
	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	call	DWORD PTR __imp__SetWindowPlacement@8

; 2543 :    else

	jmp	SHORT $L60270
$L60269:

; 2544 :       ShowWindow( g_hWndMainFrame, SW_SHOW );  // Show the window

	push	5
	mov	eax, DWORD PTR _g_hWndMainFrame
	push	eax
	call	DWORD PTR __imp__ShowWindow@8
$L60270:

; 2545 : 
; 2546 :    SysReadZeidonIni( -1, "ObjectEngine", "DropEngineIfNoTasks", szBuffer );

	lea	ecx, DWORD PTR _szBuffer$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BE@OFEG@DropEngineIfNoTasks?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2547 :    if ( ztoupper( *szBuffer ) == 'Y' )

	movsx	edx, BYTE PTR _szBuffer$[ebp]
	push	edx
	call	_toupper
	add	esp, 4
	cmp	eax, 89					; 00000059H
	jne	SHORT $L60272

; 2548 :       AnchorBlock->bDropEngineIfNoTasks = TRUE;

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+1495]
	or	ecx, 4
	mov	edx, DWORD PTR _AnchorBlock
	mov	DWORD PTR [edx+1495], ecx
$L60272:

; 2549 : 
; 2550 :    CheckMenuItem( hMenu, IDM_SCROLLTRACE,
; 2551 :                   MF_BYCOMMAND |
; 2552 :                      (g_chScrollTrace ? MF_CHECKED : MF_UNCHECKED) );

	movsx	eax, BYTE PTR _g_chScrollTrace
	neg	eax
	sbb	eax, eax
	and	eax, 8
	push	eax
	push	136					; 00000088H
	mov	ecx, DWORD PTR _hMenu$[ebp]
	push	ecx
	call	DWORD PTR __imp__CheckMenuItem@12

; 2553 :    CheckMenuItem( hMenu, IDM_PRINTPREVIEW,
; 2554 :                   MF_BYCOMMAND |
; 2555 :                      (g_chPrintPreview ? MF_UNCHECKED : MF_CHECKED) );

	movsx	edx, BYTE PTR _g_chPrintPreview
	neg	edx
	sbb	edx, edx
	and	edx, -8					; fffffff8H
	add	edx, 8
	push	edx
	push	160					; 000000a0H
	mov	eax, DWORD PTR _hMenu$[ebp]
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 2556 :    CheckMenuItem( hMenu, IDM_PREVIEW_ZOOMOUT,
; 2557 :                   MF_BYCOMMAND |
; 2558 :                      (g_chPrintPreview == '0' ? MF_CHECKED : MF_UNCHECKED) );

	movsx	ecx, BYTE PTR _g_chPrintPreview
	sub	ecx, 48					; 00000030H
	neg	ecx
	sbb	ecx, ecx
	and	ecx, -8					; fffffff8H
	add	ecx, 8
	push	ecx
	push	161					; 000000a1H
	mov	edx, DWORD PTR _hMenu$[ebp]
	push	edx
	call	DWORD PTR __imp__CheckMenuItem@12

; 2559 :    CheckMenuItem( hMenu, IDM_PREVIEW_ZOOM,
; 2560 :                   MF_BYCOMMAND |
; 2561 :                      (g_chPrintPreview == '1' ? MF_CHECKED : MF_UNCHECKED) );

	movsx	eax, BYTE PTR _g_chPrintPreview
	sub	eax, 49					; 00000031H
	neg	eax
	sbb	eax, eax
	and	al, -8					; fffffff8H
	add	eax, 8
	push	eax
	push	162					; 000000a2H
	mov	ecx, DWORD PTR _hMenu$[ebp]
	push	ecx
	call	DWORD PTR __imp__CheckMenuItem@12

; 2562 :    CheckMenuItem( hMenu, IDM_PREVIEW_ZOOMIN,
; 2563 :                   MF_BYCOMMAND |
; 2564 :                      (g_chPrintPreview == '2' ? MF_CHECKED : MF_UNCHECKED) );

	movsx	edx, BYTE PTR _g_chPrintPreview
	sub	edx, 50					; 00000032H
	neg	edx
	sbb	edx, edx
	and	edx, -8					; fffffff8H
	add	edx, 8
	push	edx
	push	163					; 000000a3H
	mov	eax, DWORD PTR _hMenu$[ebp]
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 2565 :    CheckMenuItem( hMenu, IDM_PRINTDIALOG,
; 2566 :                   MF_BYCOMMAND |
; 2567 :                      (g_chPrintDialog ? MF_CHECKED : MF_UNCHECKED) );

	movsx	ecx, BYTE PTR _g_chPrintDialog
	neg	ecx
	sbb	ecx, ecx
	and	ecx, 8
	push	ecx
	push	164					; 000000a4H
	mov	edx, DWORD PTR _hMenu$[ebp]
	push	edx
	call	DWORD PTR __imp__CheckMenuItem@12

; 2568 :    CheckMenuItem( hMenu, IDM_SHOWTASKID,
; 2569 :                   MF_BYCOMMAND |
; 2570 :                     (AnchorBlock->bShowTaskID ? MF_CHECKED : MF_UNCHECKED) );

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+1495]
	and	ecx, 1
	neg	ecx
	sbb	ecx, ecx
	and	ecx, 8
	push	ecx
	push	124					; 0000007cH
	mov	edx, DWORD PTR _hMenu$[ebp]
	push	edx
	call	DWORD PTR __imp__CheckMenuItem@12

; 2571 :    CheckMenuItem( hMenu, IDM_SETOETRACE,
; 2572 :                   MF_BYCOMMAND |
; 2573 :                      (g_chTraceOE_Warning == 0 ||
; 2574 :                         g_chTraceOE_Warning == 'n' ||
; 2575 :                         g_chTraceOE_Warning == 'N' ? MF_UNCHECKED :
; 2576 :                                                      MF_CHECKED) );

	movsx	eax, BYTE PTR _g_chTraceOE_Warning
	test	eax, eax
	je	SHORT $L60798
	movsx	ecx, BYTE PTR _g_chTraceOE_Warning
	cmp	ecx, 110				; 0000006eH
	je	SHORT $L60798
	movsx	edx, BYTE PTR _g_chTraceOE_Warning
	cmp	edx, 78					; 0000004eH
	je	SHORT $L60798
	mov	DWORD PTR -1232+[ebp], 8
	jmp	SHORT $L60799
$L60798:
	mov	DWORD PTR -1232+[ebp], 0
$L60799:
	mov	eax, DWORD PTR -1232+[ebp]
	push	eax
	push	133					; 00000085H
	mov	ecx, DWORD PTR _hMenu$[ebp]
	push	ecx
	call	DWORD PTR __imp__CheckMenuItem@12

; 2577 :    CheckMenuItem( hMenu, IDM_SETZDRTRACE,
; 2578 :                   MF_BYCOMMAND |
; 2579 :                      (g_chTraceZDrActions == 0 ||
; 2580 :                         g_chTraceZDrActions == 'n' ||
; 2581 :                         g_chTraceZDrActions == 'N' ? MF_UNCHECKED :
; 2582 :                                                      MF_CHECKED) );

	movsx	edx, BYTE PTR _g_chTraceZDrActions
	test	edx, edx
	je	SHORT $L60800
	movsx	eax, BYTE PTR _g_chTraceZDrActions
	cmp	eax, 110				; 0000006eH
	je	SHORT $L60800
	movsx	ecx, BYTE PTR _g_chTraceZDrActions
	cmp	ecx, 78					; 0000004eH
	je	SHORT $L60800
	mov	DWORD PTR -1236+[ebp], 8
	jmp	SHORT $L60801
$L60800:
	mov	DWORD PTR -1236+[ebp], 0
$L60801:
	mov	edx, DWORD PTR -1236+[ebp]
	push	edx
	push	134					; 00000086H
	mov	eax, DWORD PTR _hMenu$[ebp]
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 2583 :    CheckMenuItem( hMenu, IDM_SETWEBTRACE,
; 2584 :                   MF_BYCOMMAND |
; 2585 :                      (g_chTraceWebActions == 0 ||
; 2586 :                         g_chTraceWebActions == 'n' ||
; 2587 :                         g_chTraceWebActions == 'N' ? MF_UNCHECKED :
; 2588 :                                                      MF_CHECKED) );

	movsx	ecx, BYTE PTR _g_chTraceWebActions
	test	ecx, ecx
	je	SHORT $L60802
	movsx	edx, BYTE PTR _g_chTraceWebActions
	cmp	edx, 110				; 0000006eH
	je	SHORT $L60802
	movsx	eax, BYTE PTR _g_chTraceWebActions
	cmp	eax, 78					; 0000004eH
	je	SHORT $L60802
	mov	DWORD PTR -1240+[ebp], 8
	jmp	SHORT $L60803
$L60802:
	mov	DWORD PTR -1240+[ebp], 0
$L60803:
	mov	ecx, DWORD PTR -1240+[ebp]
	push	ecx
	push	135					; 00000087H
	mov	edx, DWORD PTR _hMenu$[ebp]
	push	edx
	call	DWORD PTR __imp__CheckMenuItem@12

; 2593 :       HANDLE hNetApi;
; 2594 :       FARPROC lpfnNetWkstaGetInfo;
; 2595 :       char far * Buffer[ 20 ];
; 2596 :       char    szLanUser[ 32 ];
; 2597 :       char    szIniUser[ 32 ];
; 2598 :       char    szIniPassword[ 32 ];
; 2599 :       char    szPassword[ 32 ];
; 2600 :       char    szUser[ 32 ];
; 2601 : 	  char    szEncrypted[ 1 ];
; 2602 :       USHORT  uReturnLth;
; 2603 : 	  USHORT  uLth;
; 2604 :       USHORT  uRC;
; 2605 : 
; 2606 :       SysReadZeidonIni( -1, szlWorkstation, szlUserID, szIniUser );

	lea	eax, DWORD PTR _szIniUser$60277[ebp]
	push	eax
	push	OFFSET FLAT:_szlUserID
	push	OFFSET FLAT:_szlWorkstation
	push	-1
	call	_SysReadZeidonIni@16

; 2607 :       SysReadZeidonIni( -1, szlWorkstation, szlPassword, szIniPassword );

	lea	ecx, DWORD PTR _szIniPassword$60278[ebp]
	push	ecx
	push	OFFSET FLAT:_szlPassword
	push	OFFSET FLAT:_szlWorkstation
	push	-1
	call	_SysReadZeidonIni@16

; 2608 :       szLanUser[ 0 ] = 0;

	mov	BYTE PTR _szLanUser$60276[ebp], 0

; 2609 :       if ( (hNetApi = GetModuleHandle( "NETAPI" )) != 0 )

	push	OFFSET FLAT:??_C@_06EJJP@NETAPI?$AA@	; `string'
	call	DWORD PTR __imp__GetModuleHandleA@4
	mov	DWORD PTR _hNetApi$60273[ebp], eax
	cmp	DWORD PTR _hNetApi$60273[ebp], 0
	je	SHORT $L60295

; 2611 :          if ( (lpfnNetWkstaGetInfo =
; 2612 :                       GetProcAddress( hNetApi, "NetWkstaGetInfo" )) != 0 )

	push	OFFSET FLAT:??_C@_0BA@CCDD@NetWkstaGetInfo?$AA@ ; `string'
	mov	edx, DWORD PTR _hNetApi$60273[ebp]
	push	edx
	call	DWORD PTR __imp__GetProcAddress@8
	mov	DWORD PTR _lpfnNetWkstaGetInfo$60274[ebp], eax
	cmp	DWORD PTR _lpfnNetWkstaGetInfo$60274[ebp], 0
	je	SHORT $L60295

; 2614 :             uRC = (*lpfnNetWkstaGetInfo)( (zPCHAR) NULL, (zUSHORT) 10,
; 2615 :                                           (zPCHAR) &Buffer[ 0 ],
; 2616 :                                           (zUSHORT) 80,
; 2617 :                                           (zPUSHORT) &uReturnLth );

	lea	eax, DWORD PTR _uReturnLth$60282[ebp]
	push	eax
	push	80					; 00000050H
	lea	ecx, DWORD PTR _Buffer$60275[ebp]
	push	ecx
	push	10					; 0000000aH
	push	0
	call	DWORD PTR _lpfnNetWkstaGetInfo$60274[ebp]
	mov	WORD PTR _uRC$60284[ebp], ax

; 2618 :             if ( uRC == 0 )

	mov	edx, DWORD PTR _uRC$60284[ebp]
	and	edx, 65535				; 0000ffffH
	test	edx, edx
	jne	SHORT $L60295

; 2619 :                zstrcpy( szLanUser, Buffer[ 1 ] );

	mov	eax, DWORD PTR _Buffer$60275[ebp+4]
	push	eax
	lea	ecx, DWORD PTR _szLanUser$60276[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8
$L60295:

; 2622 : 
; 2623 :       if ( szLanUser[ 0 ] || szIniUser[ 0 ] )

	movsx	edx, BYTE PTR _szLanUser$60276[ebp]
	test	edx, edx
	jne	SHORT $L60297
	movsx	eax, BYTE PTR _szIniUser$60277[ebp]
	test	eax, eax
	je	$L60296
$L60297:

; 2625 :          SysReadZeidonIni( -1, szlWorkstation, "Encrypted", szEncrypted );

	lea	ecx, DWORD PTR _szEncrypted$60281[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_09MKCM@Encrypted?$AA@	; `string'
	push	OFFSET FLAT:_szlWorkstation
	push	-1
	call	_SysReadZeidonIni@16

; 2626 : 
; 2627 :          if ( szIniUser[ 0 ] == 0 )

	movsx	edx, BYTE PTR _szIniUser$60277[ebp]
	test	edx, edx
	jne	SHORT $L60299

; 2628 :             zstrcpy( szIniUser, szLanUser );

	lea	eax, DWORD PTR _szLanUser$60276[ebp]
	push	eax
	lea	ecx, DWORD PTR _szIniUser$60277[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8
$L60299:

; 2629 : 
; 2630 :          if ( szEncrypted[ 0 ] == 'E' || szEncrypted[ 0 ] == 'e' )

	movsx	edx, BYTE PTR _szEncrypted$60281[ebp]
	cmp	edx, 69					; 00000045H
	je	SHORT $L60301
	movsx	eax, BYTE PTR _szEncrypted$60281[ebp]
	cmp	eax, 101				; 00000065H
	jne	SHORT $L60300
$L60301:

; 2632 :          /*
; 2633 :          UfEncryptString (szUser, "sa", 26 );
; 2634 :                   TraceLineS( "----Encrypted Username: ", szUser );
; 2635 :          UfEncryptString (szPassword, "sql!4ever&ever", 26 );
; 2636 :                   TraceLineS( "----Encrypted Password: ", szPassword );
; 2637 : 
; 2638 :                   UfDecryptString( szIniUser, szUser,  26 );
; 2639 :                   TraceLineS( "----Decrypted Username: ", szIniUser );
; 2640 :                   UfDecryptString( szIniPassword, szPassword, 26 );
; 2641 :                   TraceLineS( "----Decrypted Password: ", szIniPassword );
; 2642 :          */
; 2643 : 
; 2644 :          uLth = zstrlen( szIniUser );

	lea	ecx, DWORD PTR _szIniUser$60277[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	mov	WORD PTR _uLth$60283[ebp], ax

; 2645 :                   UfDecryptString( szUser, szIniUser, uLth );

	mov	dx, WORD PTR _uLth$60283[ebp]
	push	edx
	lea	eax, DWORD PTR _szIniUser$60277[ebp]
	push	eax
	lea	ecx, DWORD PTR _szUser$60280[ebp]
	push	ecx
	call	_UfDecryptString@12

; 2646 :                   //TraceLineS( "----Decrypted Username2: ", szUser );
; 2647 :          uLth = zstrlen( szIniPassword );

	lea	edx, DWORD PTR _szIniPassword$60278[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	mov	WORD PTR _uLth$60283[ebp], ax

; 2648 :                   UfDecryptString( szPassword, szIniPassword, uLth );

	mov	ax, WORD PTR _uLth$60283[ebp]
	push	eax
	lea	ecx, DWORD PTR _szIniPassword$60278[ebp]
	push	ecx
	lea	edx, DWORD PTR _szPassword$60279[ebp]
	push	edx
	call	_UfDecryptString@12

; 2651 :          else

	jmp	SHORT $L60302
$L60300:

; 2653 :                   zstrcpy( szUser, szIniUser );

	lea	eax, DWORD PTR _szIniUser$60277[ebp]
	push	eax
	lea	ecx, DWORD PTR _szUser$60280[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 2654 :                   zstrcpy( szPassword, szIniPassword );

	lea	edx, DWORD PTR _szIniPassword$60278[ebp]
	push	edx
	lea	eax, DWORD PTR _szPassword$60279[ebp]
	push	eax
	call	_strcpy
	add	esp, 8
$L60302:

; 2656 : 
; 2657 :       // if ( zstrlen( szIniPassword ) == 26 )
; 2658 :       //    UfDecryptString( szPassword, szIniPassword, 26 );
; 2659 :       // else
; 2660 :       //    zstrcpy( szPassword, szIniPassword );
; 2661 : 
; 2662 :          SysSetUserID( lpTask, szUser, szPassword );

	lea	ecx, DWORD PTR _szPassword$60279[ebp]
	push	ecx
	lea	edx, DWORD PTR _szUser$60280[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	_SysSetUserID@12

; 2664 :       else

	jmp	SHORT $L60303
$L60296:

; 2666 :          // Throw up the Logon dialog box
; 2667 :          DialogBox( hInst, MAKEINTRESOURCE( IDD_LOGON ),
; 2668 :                     g_hWndMainFrame, fpLogon );

	push	0
	mov	ecx, DWORD PTR _fpLogon
	push	ecx
	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	push	104					; 00000068H
	mov	eax, DWORD PTR _hInst
	push	eax
	call	DWORD PTR __imp__DialogBoxParamA@20
$L60303:

; 2671 : #endif
; 2672 : 
; 2673 :    // Create the DBH work object and name the view for later use.
; 2674 :    GetViewByName( &vDbhWork, zDBHANDLER_WORK_VIEW_NAME,
; 2675 :                   g_vSystemTaskView, zLEVEL_SYSTEM );

	push	8
	mov	ecx, DWORD PTR _g_vSystemTaskView
	push	ecx
	push	OFFSET FLAT:??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ ; `string'
	lea	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	call	_GetViewByName@16

; 2676 :    if ( vDbhWork == 0 )

	cmp	DWORD PTR _vDbhWork$[ebp], 0
	jne	SHORT $L60308

; 2678 :       SfActivateSysEmptyOI( &vDbhWork, "KZDBHWOB",
; 2679 :                             g_vSystemTaskView, zSINGLE );

	push	0
	mov	eax, DWORD PTR _g_vSystemTaskView
	push	eax
	push	OFFSET FLAT:??_C@_08GKHP@KZDBHWOB?$AA@	; `string'
	lea	ecx, DWORD PTR _vDbhWork$[ebp]
	push	ecx
	call	_SfActivateSysEmptyOI@16

; 2680 :       SfLockView( vDbhWork );

	mov	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	call	_SfLockView@4

; 2681 :       CreateEntity( vDbhWork, "ROOT", zPOS_AFTER );

	push	3
	push	OFFSET FLAT:??_C@_04DIDG@ROOT?$AA@	; `string'
	mov	eax, DWORD PTR _vDbhWork$[ebp]
	push	eax
	call	_CreateEntity@12

; 2682 :       SetNameForView( vDbhWork, zDBHANDLER_WORK_VIEW_NAME,
; 2683 :                       g_vSystemTaskView, zLEVEL_SYSTEM );

	push	8
	mov	ecx, DWORD PTR _g_vSystemTaskView
	push	ecx
	push	OFFSET FLAT:??_C@_0BN@EAEA@Zeidon?5DBHandler?5Work?5Object?$AA@ ; `string'
	mov	edx, DWORD PTR _vDbhWork$[ebp]
	push	edx
	call	_SetNameForView@16
$L60308:

; 2685 : 
; 2686 :    // Just a way to test if we are opening the right INI file.
; 2687 :    SysReadZeidonIni( -1, "[Debug]", "StartMessage", szBuffer );

	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0N@LPAB@StartMessage?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_07FGLN@?$FLDebug?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 2688 :    if ( szBuffer[ 0 ] )

	movsx	ecx, BYTE PTR _szBuffer$[ebp]
	test	ecx, ecx
	je	SHORT $L60314

; 2689 :       fnSysMessageBox( lpTask, "Object Engine Start Message", szBuffer, 0 );

	push	0
	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BM@HFDH@Object?5Engine?5Start?5Message?$AA@ ; `string'
	mov	eax, DWORD PTR _lpTask$[ebp]
	push	eax
	call	_fnSysMessageBox@16
$L60314:

; 2690 : 
; 2691 :    // Now automatically start all networks.
; 2692 :    SfStartNetworks( g_vSystemTaskView, 0 );

	push	0
	mov	ecx, DWORD PTR _g_vSystemTaskView
	push	ecx
	call	_SfStartNetworks@8

; 2693 : 
; 2694 : #if 0 // moving to RegisterZeidon  2005.04.18  dks
; 2695 : 
; 2696 :    // Check to see if there is an application update function.
; 2697 :    SysReadZeidonIni( -1, "[Zeidon]", "ApplicationUpdate", szBuffer );
; 2698 :    if ( *szBuffer )
; 2699 :    {
; 2700 :       zSHORT (POPERATION pfn )( void );
; 2701 :       LPLIBRARY hLibrary = SysLoadLibrary( vDbhWork, szBuffer );
; 2702 : 
; 2703 :       if ( hLibrary )
; 2704 :       {
; 2705 :          pfn = SysGetProc( hLibrary, "PerformApplicationUpdate" );
; 2706 :          if ( pfn )
; 2707 :             (*pfn)( );
; 2708 : 
; 2709 :          fnSysFreeLibrary( lpTask, hLibrary, FALSE );
; 2710 :       }
; 2711 :    }
; 2712 : 
; 2713 : #endif
; 2714 : 
; 2715 :    // If we were activated by a RegisterZeidonApplication, then some other
; 2716 :    // window is probably active and wants focus. Check to see if another
; 2717 :    // task exists and set focus to it after the logon is complete.
; 2718 :    if ( lpTask && zGETHNDL( lpTask ) != AnchorBlock->hMainTask )

	cmp	DWORD PTR _lpTask$[ebp], 0
	je	SHORT $L60316
	mov	edx, DWORD PTR _lpTask$[ebp]
	push	edx
	call	_SysGetHandleFromPointer@4
	mov	ecx, DWORD PTR _AnchorBlock
	cmp	eax, DWORD PTR [ecx+106]
	je	SHORT $L60316

; 2720 :       SetActiveWindow( (HWND) lpTask->hMainWnd );

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR __imp__SetActiveWindow@4
$L60316:

; 2722 : 
; 2723 :    // Make the window visible; update its client area; and return "success"
; 2724 :    return( g_hWndMainFrame );         // Returns the value from PostQuitMessage

	mov	eax, DWORD PTR _g_hWndMainFrame
$L60159:

; 2725 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_InitInstance ENDP
_TEXT	ENDS
EXTRN	__imp__SetDlgItemTextA@12:NEAR
EXTRN	__imp__GetDlgItemTextA@16:NEAR
EXTRN	__imp__SendDlgItemMessageA@20:NEAR
EXTRN	_UfEncryptString@12:NEAR
EXTRN	_SysGetUserID@12:NEAR
_TEXT	SEGMENT
_hWndDlg$ = 8
_uMsg$ = 12
_wParam$ = 16
_szUserID$ = -32
_szPassword$ = -96
_szEncrypt$ = -64
_LogonDlgProc@16 PROC NEAR

; 2731 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 100				; 00000064H

; 2732 :    char szUserID[ 32 ];
; 2733 :    char szPassword[ 32 ];
; 2734 :    char szEncrypt[ 32 ];
; 2735 : 
; 2736 :    switch ( uMsg )
; 2737 :    {

	mov	eax, DWORD PTR _uMsg$[ebp]
	mov	DWORD PTR -100+[ebp], eax
	cmp	DWORD PTR -100+[ebp], 272		; 00000110H
	je	$L60341
	cmp	DWORD PTR -100+[ebp], 273		; 00000111H
	je	SHORT $L60334
	jmp	$L60343
$L60334:

; 2738 :       case WM_COMMAND:
; 2739 :          if ( wParam == IDC_OK )

	cmp	DWORD PTR _wParam$[ebp], 201		; 000000c9H
	jne	$L60335

; 2741 :             GetDlgItemText( hWndDlg, IDC_USERID,
; 2742 :                             szUserID, sizeof( szUserID ) );

	push	32					; 00000020H
	lea	ecx, DWORD PTR _szUserID$[ebp]
	push	ecx
	push	210					; 000000d2H
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__GetDlgItemTextA@16

; 2743 :             GetDlgItemText( hWndDlg, IDC_PASSWORD,
; 2744 :                             szPassword, sizeof( szPassword ) );

	push	32					; 00000020H
	lea	eax, DWORD PTR _szPassword$[ebp]
	push	eax
	push	211					; 000000d3H
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetDlgItemTextA@16

; 2745 : 
; 2746 :             if ( szUserID[ 0 ] )

	movsx	edx, BYTE PTR _szUserID$[ebp]
	test	edx, edx
	je	SHORT $L60336

; 2748 :                // Set global Userid and password in CORE
; 2749 :                SysSetUserID( 0, szUserID, szPassword );

	lea	eax, DWORD PTR _szPassword$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szUserID$[ebp]
	push	ecx
	push	0
	call	_SysSetUserID@12

; 2750 :                // See if the save button is checked
; 2751 :                if ( SendDlgItemMessage( hWndDlg, IDC_SAVEUSERID,
; 2752 :                                         BM_GETCHECK, 0, 0L ) )

	push	0
	push	0
	push	240					; 000000f0H
	push	212					; 000000d4H
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
	test	eax, eax
	je	SHORT $L60337

; 2754 :                   SysUpdateZeidonIni( szlWorkstation, szlUserID, szUserID );

	lea	eax, DWORD PTR _szUserID$[ebp]
	push	eax
	push	OFFSET FLAT:_szlUserID
	push	OFFSET FLAT:_szlWorkstation
	call	_SysUpdateZeidonIni@12

; 2755 :                   UfEncryptString( szEncrypt, szPassword, 26 );

	push	26					; 0000001aH
	lea	ecx, DWORD PTR _szPassword$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szEncrypt$[ebp]
	push	edx
	call	_UfEncryptString@12

; 2756 :                   SysUpdateZeidonIni( szlWorkstation, szlPassword, szEncrypt );

	lea	eax, DWORD PTR _szEncrypt$[ebp]
	push	eax
	push	OFFSET FLAT:_szlPassword
	push	OFFSET FLAT:_szlWorkstation
	call	_SysUpdateZeidonIni@12
$L60337:

; 2758 : 
; 2759 :                EndDialog( hWndDlg, TRUE );

	push	1
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__EndDialog@8

; 2761 :             else

	jmp	SHORT $L60338
$L60336:

; 2762 :                return( FALSE );

	xor	eax, eax
	jmp	SHORT $L60331
$L60338:

; 2764 :          else

	jmp	SHORT $L60341
$L60335:

; 2765 :          if ( wParam == IDC_CANCEL )

	cmp	DWORD PTR _wParam$[ebp], 202		; 000000caH
	jne	SHORT $L60340

; 2766 :             EndDialog( hWndDlg, TRUE );

	push	1
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__EndDialog@8

; 2767 :          else

	jmp	SHORT $L60341
$L60340:

; 2768 :             return( FALSE );

	xor	eax, eax
	jmp	SHORT $L60331
$L60341:

; 2769 : 
; 2770 :          // fall through
; 2771 : 
; 2772 :       case WM_INITDIALOG:
; 2773 :          SysGetUserID( 0, szUserID, szPassword );

	lea	eax, DWORD PTR _szPassword$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szUserID$[ebp]
	push	ecx
	push	0
	call	_SysGetUserID@12

; 2774 :          SetDlgItemText( hWndDlg, IDC_USERID, szUserID );

	lea	edx, DWORD PTR _szUserID$[ebp]
	push	edx
	push	210					; 000000d2H
	mov	eax, DWORD PTR _hWndDlg$[ebp]
	push	eax
	call	DWORD PTR __imp__SetDlgItemTextA@12

; 2775 :          SetDlgItemText( hWndDlg, IDC_PASSWORD, szPassword );

	lea	ecx, DWORD PTR _szPassword$[ebp]
	push	ecx
	push	211					; 000000d3H
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__SetDlgItemTextA@12

; 2776 :          return( TRUE );

	mov	eax, 1
	jmp	SHORT $L60331
$L60343:

; 2777 : 
; 2778 :       default:
; 2779 :          return( FALSE );

	xor	eax, eax
$L60331:

; 2781 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_LogonDlgProc@16 ENDP
_hWndDlg$ = 8
_uMsg$ = 12
_wParam$ = 16
_FindStringDlgProc@16 PROC NEAR

; 2787 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 2788 :    switch ( uMsg )
; 2789 :    {

	mov	eax, DWORD PTR _uMsg$[ebp]
	mov	DWORD PTR -4+[ebp], eax
	cmp	DWORD PTR -4+[ebp], 272			; 00000110H
	je	SHORT $L60362
	cmp	DWORD PTR -4+[ebp], 273			; 00000111H
	je	SHORT $L60357
	jmp	$L60363
$L60357:

; 2790 :       case WM_COMMAND:
; 2791 :          if ( wParam == IDC_OK )

	cmp	DWORD PTR _wParam$[ebp], 201		; 000000c9H
	jne	SHORT $L60358

; 2793 :             GetDlgItemText( hWndDlg, IDC_FINDSTRING,
; 2794 :                             g_szFindString, sizeof( g_szFindString ) );

	push	256					; 00000100H
	push	OFFSET FLAT:_g_szFindString
	push	224					; 000000e0H
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetDlgItemTextA@16

; 2795 :             EndDialog( hWndDlg, IDOK );

	push	1
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__EndDialog@8

; 2797 :          else

	jmp	SHORT $L60361
$L60358:

; 2798 :          if ( wParam == IDC_CANCEL )

	cmp	DWORD PTR _wParam$[ebp], 202		; 000000caH
	jne	SHORT $L60360

; 2799 :             EndDialog( hWndDlg, IDCANCEL );

	push	2
	mov	eax, DWORD PTR _hWndDlg$[ebp]
	push	eax
	call	DWORD PTR __imp__EndDialog@8

; 2800 :          else

	jmp	SHORT $L60361
$L60360:

; 2801 :             return( FALSE );

	xor	eax, eax
	jmp	SHORT $L60354
$L60361:

; 2802 : 
; 2803 :          return( TRUE );

	mov	eax, 1
	jmp	SHORT $L60354
$L60362:

; 2804 : 
; 2805 :       case WM_INITDIALOG:
; 2806 :          SendDlgItemMessage( hWndDlg, IDC_FINDSTRING, EM_LIMITTEXT,
; 2807 :                              sizeof( g_szFindString ), 0L );

	push	0
	push	256					; 00000100H
	push	197					; 000000c5H
	push	224					; 000000e0H
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__SendDlgItemMessageA@20

; 2808 :          SetDlgItemText( hWndDlg, IDC_FINDSTRING, g_szFindString );

	push	OFFSET FLAT:_g_szFindString
	push	224					; 000000e0H
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__SetDlgItemTextA@12

; 2809 :          return( TRUE );

	mov	eax, 1
	jmp	SHORT $L60354
$L60363:

; 2810 : 
; 2811 :       default:
; 2812 :          return( FALSE );

	xor	eax, eax
$L60354:

; 2814 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_FindStringDlgProc@16 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0DB@GEK@?$CIkzoengwa?$CJ?5DBH?5Trace?5Level?5for?5a@ ; `string'
;	COMDAT ??_C@_0DB@GEK@?$CIkzoengwa?$CJ?5DBH?5Trace?5Level?5for?5a@
; File C:\10C\w\oe\KZOENGWA.C
_DATA	SEGMENT
??_C@_0DB@GEK@?$CIkzoengwa?$CJ?5DBH?5Trace?5Level?5for?5a@ DB '(kzoengwa)'
	DB	' DBH Trace Level for all tasks set to ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hWndDlg$ = 8
_uMsg$ = 12
_wParam$ = 16
_iTraceLevel$60379 = -4
_lpTask$60388 = -8
_SetTraceDlgProc@16 PROC NEAR

; 2820 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 2821 :    switch ( uMsg )
; 2822 :    {

	mov	eax, DWORD PTR _uMsg$[ebp]
	mov	DWORD PTR -12+[ebp], eax
	cmp	DWORD PTR -12+[ebp], 272		; 00000110H
	je	$L60397
	cmp	DWORD PTR -12+[ebp], 273		; 00000111H
	je	SHORT $L60377
	jmp	$L60398
$L60377:

; 2823 :       case WM_COMMAND:
; 2824 :          if ( wParam == IDC_OK )

	cmp	DWORD PTR _wParam$[ebp], 201		; 000000c9H
	jne	$L60378

; 2826 :             int iTraceLevel = -1;

	mov	DWORD PTR _iTraceLevel$60379[ebp], -1

; 2827 : 
; 2828 :             if ( SendDlgItemMessage( hWndDlg, IDC_TRACE0, BM_GETCHECK, 0, 0 ) )

	push	0
	push	0
	push	240					; 000000f0H
	push	220					; 000000dcH
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
	test	eax, eax
	je	SHORT $L60380

; 2829 :                iTraceLevel = 0;

	mov	DWORD PTR _iTraceLevel$60379[ebp], 0

; 2830 :             else

	jmp	SHORT $L60386
$L60380:

; 2831 :             if ( SendDlgItemMessage( hWndDlg, IDC_TRACE1, BM_GETCHECK, 0, 0 ) )

	push	0
	push	0
	push	240					; 000000f0H
	push	221					; 000000ddH
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
	test	eax, eax
	je	SHORT $L60382

; 2832 :                iTraceLevel = 1;

	mov	DWORD PTR _iTraceLevel$60379[ebp], 1

; 2833 :             else

	jmp	SHORT $L60386
$L60382:

; 2834 :             if ( SendDlgItemMessage( hWndDlg, IDC_TRACE2, BM_GETCHECK, 0, 0 ) )

	push	0
	push	0
	push	240					; 000000f0H
	push	222					; 000000deH
	mov	eax, DWORD PTR _hWndDlg$[ebp]
	push	eax
	call	DWORD PTR __imp__SendDlgItemMessageA@20
	test	eax, eax
	je	SHORT $L60384

; 2835 :                iTraceLevel = 2;

	mov	DWORD PTR _iTraceLevel$60379[ebp], 2

; 2836 :             else

	jmp	SHORT $L60386
$L60384:

; 2837 :             if ( SendDlgItemMessage( hWndDlg, IDC_TRACE3, BM_GETCHECK, 0, 0 ) )

	push	0
	push	0
	push	240					; 000000f0H
	push	223					; 000000dfH
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
	test	eax, eax
	je	SHORT $L60386

; 2838 :                iTraceLevel = 3;

	mov	DWORD PTR _iTraceLevel$60379[ebp], 3
$L60386:

; 2839 : 
; 2840 :             if ( iTraceLevel >= 0 )

	cmp	DWORD PTR _iTraceLevel$60379[ebp], 0
	jl	SHORT $L60387

; 2842 :                LPTASK lpTask;
; 2843 : 
; 2844 :                for ( lpTask = zGETPTR( AnchorBlock->hFirstTask );
; 2845 :                      lpTask;
; 2846 :                      lpTask = zGETPTR( lpTask->hNextTask ) )

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+130]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$60388[ebp], eax
	jmp	SHORT $L60389
$L60390:
	mov	ecx, DWORD PTR _lpTask$60388[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$60388[ebp], eax
$L60389:
	cmp	DWORD PTR _lpTask$60388[ebp], 0
	je	SHORT $L60391

; 2848 :                   lpTask->nDBHandlerTraceLevel = iTraceLevel;

	mov	eax, DWORD PTR _lpTask$60388[ebp]
	mov	cx, WORD PTR _iTraceLevel$60379[ebp]
	mov	WORD PTR [eax+92], cx

; 2849 :                }

	jmp	SHORT $L60390
$L60391:

; 2850 : 
; 2851 :                TraceLineI( "(kzoengwa) DBH Trace Level for all tasks set to ",
; 2852 :                            (zLONG) iTraceLevel );

	mov	edx, DWORD PTR _iTraceLevel$60379[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0DB@GEK@?$CIkzoengwa?$CJ?5DBH?5Trace?5Level?5for?5a@ ; `string'
	call	_TraceLineI@8
$L60387:

; 2854 : 
; 2855 :             EndDialog( hWndDlg, TRUE );

	push	1
	mov	eax, DWORD PTR _hWndDlg$[ebp]
	push	eax
	call	DWORD PTR __imp__EndDialog@8

; 2857 :          else

	jmp	SHORT $L60396
$L60378:

; 2858 :          if ( wParam == IDC_CANCEL )

	cmp	DWORD PTR _wParam$[ebp], 202		; 000000caH
	jne	SHORT $L60395

; 2859 :             EndDialog( hWndDlg, TRUE );

	push	1
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__EndDialog@8

; 2860 :          else

	jmp	SHORT $L60396
$L60395:

; 2861 :             return( FALSE );

	xor	eax, eax
	jmp	SHORT $L60374
$L60396:

; 2862 : 
; 2863 :          return( TRUE );

	mov	eax, 1
	jmp	SHORT $L60374
$L60397:

; 2864 : 
; 2865 :       case WM_INITDIALOG:
; 2866 :          return( FALSE );

	xor	eax, eax
	jmp	SHORT $L60374
$L60398:

; 2867 : 
; 2868 :       default:
; 2869 :          return( FALSE );

	xor	eax, eax
$L60374:

; 2871 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_SetTraceDlgProc@16 ENDP
_TEXT	ENDS
EXTRN	__imp__SetDlgItemInt@16:NEAR
EXTRN	__imp__GetDlgItemInt@16:NEAR
_TEXT	SEGMENT
_hWndDlg$ = 8
_uMsg$ = 12
_wParam$ = 16
_nTransFlag$60414 = -4
_LimitDlgProc@16 PROC NEAR

; 2877 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 2878 :    switch ( uMsg )
; 2879 :    {

	mov	eax, DWORD PTR _uMsg$[ebp]
	mov	DWORD PTR -8+[ebp], eax
	cmp	DWORD PTR -8+[ebp], 272			; 00000110H
	je	SHORT $L60417
	cmp	DWORD PTR -8+[ebp], 273			; 00000111H
	je	SHORT $L60412
	jmp	$L60420
$L60412:

; 2880 :       case WM_COMMAND:
; 2881 :          if ( wParam == IDC_OK )

	cmp	DWORD PTR _wParam$[ebp], 201		; 000000c9H
	jne	SHORT $L60413

; 2883 :             BOOL nTransFlag;
; 2884 :             g_uTraceLineLimit = GetDlgItemInt( hWndDlg, IDC_LINELIMIT,
; 2885 :                                                &nTransFlag, 0 );

	push	0
	lea	ecx, DWORD PTR _nTransFlag$60414[ebp]
	push	ecx
	push	206					; 000000ceH
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__GetDlgItemInt@16
	mov	DWORD PTR _g_uTraceLineLimit, eax

; 2886 :             EndDialog( hWndDlg, TRUE );

	push	1
	mov	eax, DWORD PTR _hWndDlg$[ebp]
	push	eax
	call	DWORD PTR __imp__EndDialog@8

; 2888 :          else

	jmp	SHORT $L60417
$L60413:

; 2889 :          if ( wParam == IDC_CANCEL )

	cmp	DWORD PTR _wParam$[ebp], 202		; 000000caH
	jne	SHORT $L60416

; 2890 :             EndDialog( hWndDlg, TRUE );

	push	1
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__EndDialog@8

; 2891 :          else

	jmp	SHORT $L60417
$L60416:

; 2892 :             return( FALSE );

	xor	eax, eax
	jmp	SHORT $L60409
$L60417:

; 2893 : 
; 2894 :          // fall through
; 2895 : 
; 2896 :       case WM_INITDIALOG:
; 2897 :          SetDlgItemInt( hWndDlg, IDC_LINELIMIT, g_uTraceLineLimit, 0 );

	push	0
	mov	edx, DWORD PTR _g_uTraceLineLimit
	push	edx
	push	206					; 000000ceH
	mov	eax, DWORD PTR _hWndDlg$[ebp]
	push	eax
	call	DWORD PTR __imp__SetDlgItemInt@16

; 2898 :          SetDlgItemInt( hWndDlg, IDC_LINEUSAGE,
; 2899 :                         (WORD) SendMessage( g_hWndLB,
; 2900 :                                             LB_GETCOUNT, 0, 0 ), 0 );

	push	0
	push	0
	push	0
	push	395					; 0000018bH
	mov	ecx, DWORD PTR _g_hWndLB
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16
	and	eax, 65535				; 0000ffffH
	push	eax
	push	207					; 000000cfH
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__SetDlgItemInt@16

; 2901 :          return( TRUE );

	mov	eax, 1
	jmp	SHORT $L60409
$L60420:

; 2902 : 
; 2903 :       default:
; 2904 :          return( FALSE );

	xor	eax, eax
$L60409:

; 2906 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_LimitDlgProc@16 ENDP
_ShowDLLDlgProc@16 PROC NEAR

; 2912 : {

	push	ebp
	mov	ebp, esp

; 2913 : #ifdef __WIN32__
; 2914 :    return( 0 );

	xor	eax, eax

; 2915 : #else
; 2916 :    WORD  wLBIndex;
; 2917 :    WORD  wCheckState;
; 2918 : 
; 2919 :    switch ( uMsg )
; 2920 :    {
; 2921 :       case WM_COMMAND:
; 2922 : #if 0
; 2923 :          {
; 2924 :             zCHAR szWorkString[ 256 ];
; 2925 : 
; 2926 :             zstrcpy( szWorkString, "DLLDlg WM_COMMAND  Message " );
; 2927 : 
; 2928 :             zltoa( (zLONG) (unsigned) uMsg,
; 2929 :                    (szWorkString + zstrlen( szWorkString )) );
; 2930 :             zstrcat( szWorkString, "(" );
; 2931 :             _ltoa( (zLONG) (unsigned) uMsg,
; 2932 :                    (szWorkString + zstrlen( szWorkString )), 16 );
; 2933 : 
; 2934 :             zstrcat( szWorkString, ") wParam " );
; 2935 :             zltoa( (zLONG) wParam, (szWorkString + zstrlen( szWorkString )) );
; 2936 :             zstrcat( szWorkString, "(" );
; 2937 :             _ltoa( (zLONG) wParam,
; 2938 :                    (szWorkString + zstrlen( szWorkString )), 16 );
; 2939 : 
; 2940 :             zstrcat( szWorkString, ") lParam " );
; 2941 :             zltoa( lParam, (szWorkString + zstrlen( szWorkString )) );
; 2942 :             zstrcat( szWorkString, "(" );
; 2943 :             _ltoa( lParam, (szWorkString + zstrlen( szWorkString )), 16 );
; 2944 :             zstrcat( szWorkString, ")" );
; 2945 : 
; 2946 :             SendMessage( g_hWndLB, LB_ADDSTRING, 0,
; 2947 :                          (zLONG)(zPCHAR) szWorkString );
; 2948 :          }
; 2949 : #endif
; 2950 :          switch ( wParam )
; 2951 :          {
; 2952 :             case IDC_OK:
; 2953 :             {
; 2954 :                wLBIndex = (WORD) SendDlgItemMessage( hWndDlg, IDC_DLLLB,
; 2955 :                                                      LB_GETCURSEL, 0, 0L );
; 2956 :                if ( wLBIndex != LB_ERR )
; 2957 :                {
; 2958 :                   wCheckState = (WORD) SendDlgItemMessage( hWndDlg,
; 2959 :                                                            IDC_FREEDLL,
; 2960 :                                                            BM_GETCHECK,
; 2961 :                                                            0, 0L );
; 2962 : #if 0
; 2963 :                   if ( wCheckState == 1 )
; 2964 :                   {
; 2965 :                      WORD  hModHandle;
; 2966 :                      zCHAR szWorkString[ 256 ];
; 2967 : 
; 2968 :                      zstrcpy( szWorkString, "Selected item: " );
; 2969 :                      SendDlgItemMessage( hWndDlg, IDC_DLLLB, LB_GETTEXT,
; 2970 :                                       wLBIndex,
; 2971 :                                       (zLONG)(zPCHAR)
; 2972 :                                       (szWorkString + zstrlen( szWorkString )));
; 2973 :                      zstrcat( szWorkString, " Handle: " );
; 2974 :                      hModHandle = LOWORD( (LPARAM) SendDlgItemMessage
; 2975 :                                             ( hWndDlg, IDC_DLLLB,
; 2976 :                                               LB_GETITEMDATA, wLBIndex, 0L ) );
; 2977 :                      _ltoa( (zLONG) (WORD) hModHandle,
; 2978 :                             (szWorkString + zstrlen( szWorkString )), 16 );
; 2979 :                      SendMessage( g_hWndLB, LB_ADDSTRING, 0,
; 2980 :                                   (zLONG)(zPCHAR) szWorkString );
; 2981 :                      FreeLibrary( hModHandle );
; 2982 :                   }
; 2983 : #endif
; 2984 :                }
; 2985 : 
; 2986 :                EndDialog( hWndDlg, TRUE );
; 2987 :                return( FALSE );
; 2988 :             }
; 2989 : 
; 2990 :             case IDC_CANCEL:
; 2991 :                EndDialog( hWndDlg, TRUE );
; 2992 :                return( FALSE );
; 2993 : 
; 2994 :             case IDC_FREEDLL:
; 2995 :                return( FALSE );
; 2996 : 
; 2997 :             case IDC_DLLLB:
; 2998 :                return( FALSE );
; 2999 : 
; 3000 :             default:
; 3001 :                return( FALSE );
; 3002 :          }
; 3003 : 
; 3004 :          // fall through
; 3005 : 
; 3006 :       case WM_INITDIALOG:
; 3007 :       {
; 3008 :          zCHAR       szLBItem[ 80 ];
; 3009 :          GLOBALENTRY ge;
; 3010 :          WORD        wFlags = GLOBAL_ALL;
; 3011 :          BOOL        bOkay;
; 3012 :          UINT        nShow = WM_USER;
; 3013 : #if 0
; 3014 :          zltoa( (zLONG) nShow, szLBItem );
; 3015 :          SendMessage( g_hWndLB, LB_ADDSTRING, 0, (zLONG)(zPCHAR) szLBItem );
; 3016 : #endif
; 3017 :          zmemset( (zPCHAR) &ge, 0, sizeof( ge ) );
; 3018 :          ge.dwSize = sizeof( GLOBALENTRY );
; 3019 :          bOkay = GlobalFirst( &ge, wFlags );
; 3020 :          while ( bOkay )
; 3021 :          {
; 3022 :             if ( ge.wType == GT_MODULE )
; 3023 :             {
; 3024 :                int   nCCount, i;
; 3025 :                char  ModuleName[ 13 ];
; 3026 :                WORD  wSel;
; 3027 :                WORD  wModNamePtr_Offset = 38; // offset in modules segment
; 3028 :                WORD  wModName_Offset;
; 3029 :                WORD  wLoadCount_Offset = 2;  // offset in modules segment
; 3030 :                WORD  wHandle_Offset = 82;    // offset in modules segment
; 3031 :                WORD  far *lpwLoadCount;
; 3032 :                WORD  far *lpwModuleNamePtr;
; 3033 :                char  far *lpcModuleName;
; 3034 :                WORD  far *lpwHandle;
; 3035 : 
; 3036 :                wSel = GlobalHandleToSel( ge.hOwner );
; 3037 : 
; 3038 :                lpwModuleNamePtr = MAKELP( wSel, wModNamePtr_Offset );
; 3039 :                wModName_Offset = *lpwModuleNamePtr;
; 3040 :                lpcModuleName = MAKELP( wSel, wModName_Offset );
; 3041 :                lpwLoadCount = MAKELP( wSel, wLoadCount_Offset );
; 3042 :                lpwHandle = MAKELP( wSel, wHandle_Offset );
; 3043 : 
; 3044 :                nCCount = *lpcModuleName++;
; 3045 :                for ( i = 0; i < nCCount; i++ )
; 3046 :                   ModuleName[ i ] = *lpcModuleName++;
; 3047 : 
; 3048 :                ModuleName[ i ] = 0;
; 3049 : 
; 3050 :                zstrcpy( szLBItem, ModuleName );
; 3051 :                i = zstrlen( szLBItem );
; 3052 :                while ( i < 9 )
; 3053 :                   szLBItem[ i++ ] = ' ';
; 3054 : 
; 3055 :                szLBItem[ i ] = 0;
; 3056 : 
; 3057 :                // show load count for module
; 3058 :                zltoa( *lpwLoadCount, szLBItem + zstrlen( szLBItem ) );
; 3059 : 
; 3060 :                //  add name and count to listbox
; 3061 :                wLBIndex = (WORD) SendDlgItemMessage( hWndDlg, IDC_DLLLB,
; 3062 :                                                  LB_ADDSTRING, 0,
; 3063 :                                                  (zLONG)(zPCHAR) szLBItem );
; 3064 :                // save handle of library
; 3065 :                SendDlgItemMessage( hWndDlg, IDC_DLLLB, LB_SETITEMDATA,
; 3066 :                                    wLBIndex, MAKELPARAM( *lpwHandle, 0 ) );
; 3067 :             }
; 3068 : 
; 3069 :             bOkay = GlobalNext( &ge, wFlags );
; 3070 :          }
; 3071 : 
; 3072 :          return( TRUE );
; 3073 :       }
; 3074 : 
; 3075 :       default:
; 3076 :          return( FALSE );
; 3077 :    }
; 3078 : #endif
; 3079 : }

	pop	ebp
	ret	16					; 00000010H
_ShowDLLDlgProc@16 ENDP
_hWnd$ = 8
_uMsg$ = 12
_wParam$ = 16
_lParam$ = 20
_lpData$60444 = -4
_nItemCount$60449 = -8
_lpTask$60451 = -12
_nOldHead$60456 = -16
_wCmd$60459 = -20
_iDiff$60460 = -24
_TraceListWndProc@16 PROC NEAR

; 3085 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 3086 :    switch ( uMsg )
; 3087 :    {

	mov	eax, DWORD PTR _uMsg$[ebp]
	mov	DWORD PTR -28+[ebp], eax
	cmp	DWORD PTR -28+[ebp], 74			; 0000004aH
	je	SHORT $L60443
	cmp	DWORD PTR -28+[ebp], 384		; 00000180H
	je	SHORT $L60448
	jmp	$L60464
$L60443:

; 3090 :          COPYDATASTRUCT * lpData = (COPYDATASTRUCT *) lParam;

	mov	ecx, DWORD PTR _lParam$[ebp]
	mov	DWORD PTR _lpData$60444[ebp], ecx

; 3091 : 
; 3092 :          if ( lpData->dwData != LB_ADDSTRING )

	mov	edx, DWORD PTR _lpData$60444[ebp]
	cmp	DWORD PTR [edx], 384			; 00000180H
	je	SHORT $L60446

; 3093 :             return fpDfltListWndProc( hWnd, uMsg, wParam, lParam );

	mov	eax, DWORD PTR _lParam$[ebp]
	push	eax
	mov	ecx, DWORD PTR _wParam$[ebp]
	push	ecx
	mov	edx, DWORD PTR _uMsg$[ebp]
	push	edx
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR _fpDfltListWndProc
	jmp	$L60440
$L60446:

; 3094 : 
; 3095 :          lParam = (LPARAM) lpData->lpData;

	mov	ecx, DWORD PTR _lpData$60444[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR _lParam$[ebp], edx
$L60448:

; 3102 :          WORD nItemCount;
; 3103 : 
; 3104 :          if ( g_hLogFile != -1 )

	cmp	DWORD PTR _g_hLogFile, -1
	je	SHORT $L60450

; 3106 :             LPTASK lpTask = zGETPTR( AnchorBlock->hFirstTask );

	mov	eax, DWORD PTR _AnchorBlock
	mov	ecx, DWORD PTR [eax+130]
	push	ecx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$60451[ebp], eax

; 3107 :             fnSysWriteLine( lpTask, g_hLogFile, 0, (zPCHAR) lParam );

	mov	edx, DWORD PTR _lParam$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _g_hLogFile
	push	eax
	mov	ecx, DWORD PTR _lpTask$60451[ebp]
	push	ecx
	call	_fnSysWriteLine@16
$L60450:

; 3109 : 
; 3110 :          // If g_uTraceLineLimit is 0 then don't add lines to trace window.
; 3111 :          if ( g_uTraceLineLimit == 0 )

	cmp	DWORD PTR _g_uTraceLineLimit, 0
	jne	SHORT $L60453

; 3112 :             return( 0 );

	xor	eax, eax
	jmp	$L60440
$L60453:

; 3113 : 
; 3114 :          // Add the trace line to the trace listbox.  If the line we added
; 3115 :          // puts the listbox over the limit start filling the next listbox.
; 3116 :          nItemCount = (WORD) SendMessage( g_hwndTraceWindow[ g_nTraceWindowHead ],
; 3117 :                                           LB_ADDSTRING, 0, lParam );

	mov	edx, DWORD PTR _lParam$[ebp]
	push	edx
	push	0
	push	384					; 00000180H
	mov	eax, DWORD PTR _g_nTraceWindowHead
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16
	mov	WORD PTR _nItemCount$60449[ebp], ax

; 3118 :          if ( nItemCount >= g_uTraceLineLimit )

	mov	edx, DWORD PTR _nItemCount$60449[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	edx, DWORD PTR _g_uTraceLineLimit
	jb	$L60455

; 3120 :             UINT nOldHead = g_nTraceWindowHead;

	mov	eax, DWORD PTR _g_nTraceWindowHead
	mov	DWORD PTR _nOldHead$60456[ebp], eax

; 3121 : 
; 3122 :             // Set head to next window.
; 3123 :             g_nTraceWindowHead = ( g_nTraceWindowHead + 1 ) % g_nTraceWindowCnt;

	mov	eax, DWORD PTR _g_nTraceWindowHead
	add	eax, 1
	xor	edx, edx
	div	DWORD PTR _g_nTraceWindowCnt
	mov	DWORD PTR _g_nTraceWindowHead, edx

; 3124 : 
; 3125 :             // Clear the new listbox.
; 3126 :             SendMessage( g_hwndTraceWindow[ g_nTraceWindowHead ],
; 3127 :                          LB_RESETCONTENT, 0, 0 );

	push	0
	push	0
	push	388					; 00000184H
	mov	ecx, DWORD PTR _g_nTraceWindowHead
	mov	edx, DWORD PTR _g_hwndTraceWindow[ecx*4]
	push	edx
	call	DWORD PTR __imp__SendMessageA@16

; 3128 : 
; 3129 :             // Change the listbox that is displayed unless the head listbox
; 3130 :             // is not the one currently being displayed.
; 3131 :             if ( nOldHead == g_nTraceWindowDisplayed )

	mov	eax, DWORD PTR _nOldHead$60456[ebp]
	cmp	eax, DWORD PTR _g_nTraceWindowDisplayed
	jne	SHORT $L60457

; 3133 :                ShowWindow( g_hwndTraceWindow[ nOldHead ], SW_HIDE );

	push	0
	mov	ecx, DWORD PTR _nOldHead$60456[ebp]
	mov	edx, DWORD PTR _g_hwndTraceWindow[ecx*4]
	push	edx
	call	DWORD PTR __imp__ShowWindow@8

; 3134 :                ShowWindow( g_hwndTraceWindow[ g_nTraceWindowHead ], SW_SHOW );

	push	5
	mov	eax, DWORD PTR _g_nTraceWindowHead
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__ShowWindow@8

; 3135 :                g_nTraceWindowDisplayed = g_nTraceWindowHead;

	mov	edx, DWORD PTR _g_nTraceWindowHead
	mov	DWORD PTR _g_nTraceWindowDisplayed, edx

; 3137 :             else

	jmp	$L60458
$L60457:

; 3139 :                // OK...user is looking at an older trace window.  We will keep
; 3140 :                // the user on this trace window but we need to change the
; 3141 :                // checkboxes.
; 3142 :                WORD wCmd;
; 3143 :                UINT iDiff;
; 3144 : 
; 3145 :                // Find the difference between the displayed window and the head.
; 3146 :                iDiff = (g_nTraceWindowDisplayed + g_nTraceWindowCnt -
; 3147 :                                                nOldHead) % g_nTraceWindowCnt;

	mov	eax, DWORD PTR _g_nTraceWindowDisplayed
	add	eax, DWORD PTR _g_nTraceWindowCnt
	sub	eax, DWORD PTR _nOldHead$60456[ebp]
	xor	edx, edx
	div	DWORD PTR _g_nTraceWindowCnt
	mov	DWORD PTR _iDiff$60460[ebp], edx

; 3148 : 
; 3149 :                // Determine the old trace window index.
; 3150 :                wCmd = (g_nTraceWindowCnt - iDiff) % g_nTraceWindowCnt +
; 3151 :                                                            IDM_TRACEWINDOW01;

	mov	eax, DWORD PTR _g_nTraceWindowCnt
	sub	eax, DWORD PTR _iDiff$60460[ebp]
	xor	edx, edx
	div	DWORD PTR _g_nTraceWindowCnt
	add	edx, 300				; 0000012cH
	mov	WORD PTR _wCmd$60459[ebp], dx

; 3152 : 
; 3153 :                // Turn off the check mark...we will no longer be displaying the
; 3154 :                // current window.
; 3155 :                CheckMenuItem( GetMenu( g_hWndMainFrame ), wCmd,
; 3156 :                               MF_BYCOMMAND | MF_UNCHECKED );

	push	0
	mov	eax, DWORD PTR _wCmd$60459[ebp]
	and	eax, 65535				; 0000ffffH
	push	eax
	mov	ecx, DWORD PTR _g_hWndMainFrame
	push	ecx
	call	DWORD PTR __imp__GetMenu@4
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 3157 : 
; 3158 :                wCmd++;

	mov	dx, WORD PTR _wCmd$60459[ebp]
	add	dx, 1
	mov	WORD PTR _wCmd$60459[ebp], dx

; 3159 :                if ( wCmd >= IDM_TRACEWINDOW01 + g_nTraceWindowCnt )

	mov	eax, DWORD PTR _wCmd$60459[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _g_nTraceWindowCnt
	add	ecx, 300				; 0000012cH
	cmp	eax, ecx
	jb	SHORT $L60461

; 3160 :                   wCmd = IDM_TRACEWINDOW01;

	mov	WORD PTR _wCmd$60459[ebp], 300		; 0000012cH
$L60461:

; 3161 : 
; 3162 :                // Turn the next one on.
; 3163 :                CheckMenuItem( GetMenu( g_hWndMainFrame ), wCmd,
; 3164 :                               MF_BYCOMMAND | MF_CHECKED );

	push	8
	mov	edx, DWORD PTR _wCmd$60459[ebp]
	and	edx, 65535				; 0000ffffH
	push	edx
	mov	eax, DWORD PTR _g_hWndMainFrame
	push	eax
	call	DWORD PTR __imp__GetMenu@4
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12
$L60458:

; 3168 :          else

	jmp	SHORT $L60463
$L60455:

; 3169 :          if ( g_chScrollTrace )

	movsx	ecx, BYTE PTR _g_chScrollTrace
	test	ecx, ecx
	je	SHORT $L60463

; 3170 :             SendMessage( g_hwndTraceWindow[ g_nTraceWindowHead ],
; 3171 :                          LB_SETCURSEL, nItemCount, 0L );

	push	0
	mov	edx, DWORD PTR _nItemCount$60449[ebp]
	and	edx, 65535				; 0000ffffH
	push	edx
	push	390					; 00000186H
	mov	eax, DWORD PTR _g_nTraceWindowHead
	mov	ecx, DWORD PTR _g_hwndTraceWindow[eax*4]
	push	ecx
	call	DWORD PTR __imp__SendMessageA@16
$L60463:

; 3172 : 
; 3173 :          return( nItemCount );

	mov	eax, DWORD PTR _nItemCount$60449[ebp]
	and	eax, 65535				; 0000ffffH
	jmp	SHORT $L60440
$L60464:

; 3175 : 
; 3176 :       default:
; 3177 :          return( fpDfltListWndProc( hWnd, uMsg, wParam, lParam ) );

	mov	edx, DWORD PTR _lParam$[ebp]
	push	edx
	mov	eax, DWORD PTR _wParam$[ebp]
	push	eax
	mov	ecx, DWORD PTR _uMsg$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR _fpDfltListWndProc
$L60440:

; 3179 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_TraceListWndProc@16 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BK@GHMC@Error?5opening?5trace?5file?$CB?$AA@ ; `string'
PUBLIC	??_C@_0BA@OAGF@?$CIng?$CJ?5End?5of?5Log?$AA@	; `string'
PUBLIC	??_C@_01PCFE@?2?$AA@				; `string'
PUBLIC	??_C@_0N@IJAA@ZEIDON00?4LOG?$AA@		; `string'
EXTRN	__imp__GetDlgItem@8:NEAR
EXTRN	__imp__GetActiveWindow@0:NEAR
EXTRN	__imp__SetWindowTextA@8:NEAR
EXTRN	__imp__EnableWindow@8:NEAR
;	COMDAT ??_C@_0BK@GHMC@Error?5opening?5trace?5file?$CB?$AA@
; File C:\10C\w\oe\KZOENGWA.C
_DATA	SEGMENT
??_C@_0BK@GHMC@Error?5opening?5trace?5file?$CB?$AA@ DB 'Error opening tra'
	DB	'ce file!', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@OAGF@?$CIng?$CJ?5End?5of?5Log?$AA@
_DATA	SEGMENT
??_C@_0BA@OAGF@?$CIng?$CJ?5End?5of?5Log?$AA@ DB '(ng) End of Log', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_01PCFE@?2?$AA@
_DATA	SEGMENT
??_C@_01PCFE@?2?$AA@ DB '\', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@IJAA@ZEIDON00?4LOG?$AA@
_DATA	SEGMENT
??_C@_0N@IJAA@ZEIDON00?4LOG?$AA@ DB 'ZEIDON00.LOG', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_hWndDlg$ = 8
_uMsg$ = 12
_wParam$ = 16
_lpTask$60480 = -4
_szTraceText$60484 = -516
_lpTask$60487 = -520
_LogTraceDlgProc@16 PROC NEAR

; 3185 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 524				; 0000020cH

; 3186 :    switch ( uMsg )
; 3187 :    {

	mov	eax, DWORD PTR _uMsg$[ebp]
	mov	DWORD PTR -524+[ebp], eax
	cmp	DWORD PTR -524+[ebp], 272		; 00000110H
	je	$L60491
	cmp	DWORD PTR -524+[ebp], 273		; 00000111H
	je	SHORT $L60478
	jmp	$L60503
$L60478:

; 3188 :       case WM_COMMAND:
; 3189 :          if ( wParam == IDC_OPEN ) // open pushbutton

	cmp	DWORD PTR _wParam$[ebp], 203		; 000000cbH
	jne	$L60479

; 3191 :             LPTASK lpTask = zGETPTR( AnchorBlock->hFirstTask );

	mov	ecx, DWORD PTR _AnchorBlock
	mov	edx, DWORD PTR [ecx+130]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$60480[ebp], eax

; 3192 :             GetDlgItemText( hWndDlg, IDC_LOGFILE,
; 3193 :                             szLogFileName, sizeof( szLogFileName ) );

	push	256					; 00000100H
	push	OFFSET FLAT:_szLogFileName
	push	205					; 000000cdH
	mov	eax, DWORD PTR _hWndDlg$[ebp]
	push	eax
	call	DWORD PTR __imp__GetDlgItemTextA@16

; 3194 :             if ( (g_hLogFile = fnSysOpenFile( lpTask, szLogFileName,
; 3195 :                                               COREFILE_CREATE )) == -1 )

	push	32					; 00000020H
	push	OFFSET FLAT:_szLogFileName
	mov	ecx, DWORD PTR _lpTask$60480[ebp]
	push	ecx
	call	_fnSysOpenFile@12
	mov	DWORD PTR _g_hLogFile, eax
	cmp	DWORD PTR _g_hLogFile, -1
	jne	SHORT $L60481

; 3197 :                MessageBox( GetActiveWindow( ),
; 3198 :                            "Error opening trace file!",
; 3199 :                            "Zeidon Object Services", MB_ICONSTOP | MB_OK );

	push	16					; 00000010H
	push	OFFSET FLAT:??_C@_0BH@MPNN@Zeidon?5Object?5Services?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BK@GHMC@Error?5opening?5trace?5file?$CB?$AA@ ; `string'
	call	DWORD PTR __imp__GetActiveWindow@0
	push	eax
	call	DWORD PTR __imp__MessageBoxA@16

; 3201 :             else

	jmp	SHORT $L60483
$L60481:

; 3203 :                char szTraceText[ 512 ];
; 3204 : 
; 3205 :                // Send message that log file opened.
; 3206 :                zstrcpy( szTraceText, "(ng) Log file Opened '" );

	push	OFFSET FLAT:??_C@_0BH@GAAD@?$CIng?$CJ?5Log?5file?5Opened?5?8?$AA@ ; `string'
	lea	edx, DWORD PTR _szTraceText$60484[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 3207 :                zstrcat( szTraceText, szLogFileName );

	push	OFFSET FLAT:_szLogFileName
	lea	eax, DWORD PTR _szTraceText$60484[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 3208 :                zstrcat( szTraceText, "'" );

	push	OFFSET FLAT:??_C@_01HAF@?8?$AA@		; `string'
	lea	ecx, DWORD PTR _szTraceText$60484[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 3209 :                SysMessageList( szTraceText );

	lea	edx, DWORD PTR _szTraceText$60484[ebp]
	push	edx
	call	_SysMessageList@4

; 3210 : 
; 3211 :                WriteTraceToLog( lpTask );

	mov	eax, DWORD PTR _lpTask$60480[ebp]
	push	eax
	call	_WriteTraceToLog
	add	esp, 4

; 3212 : 
; 3213 :                EndDialog( hWndDlg, TRUE );

	push	1
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__EndDialog@8
$L60483:

; 3216 :          else

	jmp	SHORT $L60491
$L60479:

; 3217 :          if ( wParam == IDC_CLOSE )

	cmp	DWORD PTR _wParam$[ebp], 204		; 000000ccH
	jne	SHORT $L60486

; 3219 :             LPTASK lpTask = zGETPTR( AnchorBlock->hFirstTask );

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+130]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpTask$60487[ebp], eax

; 3220 :             SysMessageList( "(ng) End of Log" );

	push	OFFSET FLAT:??_C@_0BA@OAGF@?$CIng?$CJ?5End?5of?5Log?$AA@ ; `string'
	call	_SysMessageList@4

; 3221 :             fnSysCloseFile( lpTask, g_hLogFile, 0 );

	push	0
	mov	ecx, DWORD PTR _g_hLogFile
	push	ecx
	mov	edx, DWORD PTR _lpTask$60487[ebp]
	push	edx
	call	_fnSysCloseFile@12

; 3222 :             g_hLogFile = -1;

	mov	DWORD PTR _g_hLogFile, -1

; 3223 :             EndDialog( hWndDlg, TRUE );

	push	1
	mov	eax, DWORD PTR _hWndDlg$[ebp]
	push	eax
	call	DWORD PTR __imp__EndDialog@8

; 3225 :          else

	jmp	SHORT $L60491
$L60486:

; 3226 :          if ( wParam == IDC_CANCEL )

	cmp	DWORD PTR _wParam$[ebp], 202		; 000000caH
	jne	SHORT $L60490

; 3227 :             EndDialog( hWndDlg, TRUE );

	push	1
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__EndDialog@8

; 3228 :          else

	jmp	SHORT $L60491
$L60490:

; 3229 :             return( FALSE );

	xor	eax, eax
	jmp	$L60475
$L60491:

; 3230 : 
; 3231 :          // fall through
; 3232 : 
; 3233 :       case WM_INITDIALOG:
; 3234 :          if ( g_hLogFile != -1 )

	cmp	DWORD PTR _g_hLogFile, -1
	je	SHORT $L60493

; 3236 :             EnableWindow( GetDlgItem( hWndDlg, IDC_OPEN ), FALSE );

	push	0
	push	203					; 000000cbH
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__GetDlgItem@8
	push	eax
	call	DWORD PTR __imp__EnableWindow@8

; 3237 :             SetDlgItemText( hWndDlg, IDC_LOGFILE, szLogFileName );

	push	OFFSET FLAT:_szLogFileName
	push	205					; 000000cdH
	mov	eax, DWORD PTR _hWndDlg$[ebp]
	push	eax
	call	DWORD PTR __imp__SetDlgItemTextA@12

; 3238 :             SendDlgItemMessage( hWndDlg, IDC_CLOSE,
; 3239 :                                 BM_SETSTYLE,
; 3240 :                                 (WORD) BS_DEFPUSHBUTTON, 1L );

	push	1
	push	1
	push	244					; 000000f4H
	push	204					; 000000ccH
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__SendDlgItemMessageA@20

; 3241 :             SetFocus( GetDlgItem( hWndDlg, IDC_CLOSE ) );

	push	204					; 000000ccH
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__GetDlgItem@8
	push	eax
	call	DWORD PTR __imp__SetFocus@4

; 3242 :             EnableWindow( GetDlgItem( hWndDlg, IDC_LOGFILE ), FALSE );

	push	0
	push	205					; 000000cdH
	mov	eax, DWORD PTR _hWndDlg$[ebp]
	push	eax
	call	DWORD PTR __imp__GetDlgItem@8
	push	eax
	call	DWORD PTR __imp__EnableWindow@8

; 3244 :          else

	jmp	$L60495
$L60493:

; 3246 :             EnableWindow( GetDlgItem( hWndDlg, IDC_CLOSE ), FALSE );

	push	0
	push	204					; 000000ccH
	mov	ecx, DWORD PTR _hWndDlg$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetDlgItem@8
	push	eax
	call	DWORD PTR __imp__EnableWindow@8

; 3247 :             SendDlgItemMessage( hWndDlg, IDC_OPEN,
; 3248 :                                 BM_SETSTYLE,
; 3249 :                                 (WORD) BS_DEFPUSHBUTTON, 1L );

	push	1
	push	1
	push	244					; 000000f4H
	push	203					; 000000cbH
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__SendDlgItemMessageA@20

; 3250 :             if ( szLogFileName[ 0 ] == 0 )

	movsx	eax, BYTE PTR _szLogFileName
	test	eax, eax
	jne	SHORT $L60498

; 3252 :                SysReadZeidonIni( -1, szlWorkstation, "LogFile", szLogFileName );

	push	OFFSET FLAT:_szLogFileName
	push	OFFSET FLAT:??_C@_07HGKM@LogFile?$AA@	; `string'
	push	OFFSET FLAT:_szlWorkstation
	push	-1
	call	_SysReadZeidonIni@16

; 3253 :                if ( szLogFileName[ 0 ] == 0 )

	movsx	ecx, BYTE PTR _szLogFileName
	test	ecx, ecx
	jne	SHORT $L60498

; 3255 :                   if ( AnchorBlock->szZeidonLoc[ 0 ] )

	mov	edx, DWORD PTR _AnchorBlock
	movsx	eax, BYTE PTR [edx+909]
	test	eax, eax
	je	SHORT $L60499

; 3256 :                      zstrcpy( szLogFileName, AnchorBlock->szZeidonLoc );

	mov	ecx, DWORD PTR _AnchorBlock
	add	ecx, 909				; 0000038dH
	push	ecx
	push	OFFSET FLAT:_szLogFileName
	call	_strcpy
	add	esp, 8

; 3257 :                   else

	jmp	SHORT $L60500
$L60499:

; 3258 :                      zstrcpy( szLogFileName, "\\" );

	push	OFFSET FLAT:??_C@_01PCFE@?2?$AA@	; `string'
	push	OFFSET FLAT:_szLogFileName
	call	_strcpy
	add	esp, 8
$L60500:

; 3259 : 
; 3260 :                   zstrcat( szLogFileName, "ZEIDON00.LOG" );

	push	OFFSET FLAT:??_C@_0N@IJAA@ZEIDON00?4LOG?$AA@ ; `string'
	push	OFFSET FLAT:_szLogFileName
	call	_strcat
	add	esp, 8
$L60498:

; 3263 : 
; 3264 :             SetWindowText( GetDlgItem( hWndDlg, IDC_LOGFILE ),
; 3265 :                            szLogFileName );

	push	OFFSET FLAT:_szLogFileName
	push	205					; 000000cdH
	mov	edx, DWORD PTR _hWndDlg$[ebp]
	push	edx
	call	DWORD PTR __imp__GetDlgItem@8
	push	eax
	call	DWORD PTR __imp__SetWindowTextA@8
$L60495:

; 3267 : 
; 3268 :          return( TRUE );

	mov	eax, 1
	jmp	SHORT $L60475
$L60503:

; 3269 : 
; 3270 :       default:
; 3271 :          return( FALSE );

	xor	eax, eax
$L60475:

; 3273 : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_LogTraceDlgProc@16 ENDP
_pwp$ = 8
_uSquareX$ = -12
_uSquareY$ = -16
_uSizeX$ = -4
_uSizeY$ = -8
_CheckWindowPos PROC NEAR

; 3283 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 3284 :    zUSHORT uSquareX = GetSystemMetrics( SM_CXICON );

	push	11					; 0000000bH
	call	DWORD PTR __imp__GetSystemMetrics@4
	mov	WORD PTR _uSquareX$[ebp], ax

; 3285 :    zUSHORT uSquareY = GetSystemMetrics( SM_CYICON );

	push	12					; 0000000cH
	call	DWORD PTR __imp__GetSystemMetrics@4
	mov	WORD PTR _uSquareY$[ebp], ax

; 3286 :    zUSHORT uSizeX = GetSystemMetrics( SM_CXSCREEN ) - uSquareX;

	push	0
	call	DWORD PTR __imp__GetSystemMetrics@4
	mov	ecx, DWORD PTR _uSquareX$[ebp]
	and	ecx, 65535				; 0000ffffH
	sub	eax, ecx
	mov	WORD PTR _uSizeX$[ebp], ax

; 3287 :    zUSHORT uSizeY = GetSystemMetrics( SM_CYSCREEN ) - uSquareY;

	push	1
	call	DWORD PTR __imp__GetSystemMetrics@4
	mov	edx, DWORD PTR _uSquareY$[ebp]
	and	edx, 65535				; 0000ffffH
	sub	eax, edx
	mov	WORD PTR _uSizeY$[ebp], ax

; 3288 : 
; 3289 :    // If the restored position is not visible, let default positioning occur.
; 3290 : // TraceRect( "CheckWindowPos Rect:", wp->rcNormalPosition );
; 3291 : // TraceLineI( "uSizeX: ", uSizeX );
; 3292 : // TraceLineI( "uSizeY: ", uSizeY );
; 3293 :    if ( pwp->rcNormalPosition.top > uSizeY ||
; 3294 :         pwp->rcNormalPosition.left > uSizeX ||
; 3295 :         pwp->rcNormalPosition.bottom <= uSquareY ||
; 3296 :         pwp->rcNormalPosition.right <= uSquareX )

	mov	eax, DWORD PTR _uSizeY$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _pwp$[ebp]
	cmp	DWORD PTR [ecx+32], eax
	jg	SHORT $L60512
	mov	edx, DWORD PTR _uSizeX$[ebp]
	and	edx, 65535				; 0000ffffH
	mov	eax, DWORD PTR _pwp$[ebp]
	cmp	DWORD PTR [eax+28], edx
	jg	SHORT $L60512
	mov	ecx, DWORD PTR _uSquareY$[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _pwp$[ebp]
	cmp	DWORD PTR [edx+40], ecx
	jle	SHORT $L60512
	mov	eax, DWORD PTR _uSquareX$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _pwp$[ebp]
	cmp	DWORD PTR [ecx+36], eax
	jg	SHORT $L60511
$L60512:

; 3298 :       return( FALSE );

	xor	al, al
	jmp	SHORT $L60506
$L60511:

; 3300 : 
; 3301 :    return( TRUE );

	mov	al, 1
$L60506:

; 3302 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_CheckWindowPos ENDP
_TEXT	ENDS
EXTRN	_strchr:NEAR
_TEXT	SEGMENT
_pwp$ = 12
_wp$ = -560
_szFileName$ = -516
_szTempName$ = -824
_szBuffer$ = -256
_nRead$ = -564
_pch$60526 = -828
_pchComma$60527 = -832
_lValue$60528 = -836
_ReadWindowPlacement PROC NEAR

; 3306 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 836				; 00000344H
	push	esi
	push	edi

; 3307 :    WINDOWPLACEMENT wp;
; 3308 :    char szFileName[ 260 ];
; 3309 :    char szTempName[ 260 ];
; 3310 :    char szBuffer[ 256 ];
; 3311 :    int nRead = 0;

	mov	DWORD PTR _nRead$[ebp], 0

; 3312 : 
; 3313 :    SysReadZeidonIni( -1, szlWorkstation, "LocalDir", szTempName );

	lea	eax, DWORD PTR _szTempName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_08DEFM@LocalDir?$AA@	; `string'
	push	OFFSET FLAT:_szlWorkstation
	push	-1
	call	_SysReadZeidonIni@16

; 3314 :    SysConvertEnvironmentString( szFileName, szTempName );

	lea	ecx, DWORD PTR _szTempName$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szFileName$[ebp]
	push	edx
	call	_SysConvertEnvironmentString@8

; 3315 :    if ( szFileName[ 0 ] )

	movsx	eax, BYTE PTR _szFileName$[ebp]
	test	eax, eax
	je	SHORT $L60523

; 3317 :       SysAppendcDirSep( szFileName );

	lea	ecx, DWORD PTR _szFileName$[ebp]
	push	ecx
	call	_SysAppendcDirSep@4

; 3318 :       zstrcat( szFileName, "ZeidonRT.ini" );

	push	OFFSET FLAT:??_C@_0N@KGLP@ZeidonRT?4ini?$AA@ ; `string'
	lea	edx, DWORD PTR _szFileName$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 3319 :       GetPrivateProfileString( "ObjectEngine",     // section name
; 3320 :                                "WindowPos",        // key name
; 3321 :                                "",                 // default string
; 3322 :                                szBuffer,           // destination buffer
; 3323 :                                sizeof( szBuffer ), // size of destination buffer
; 3324 :                                szFileName );       // ini filename

	lea	eax, DWORD PTR _szFileName$[ebp]
	push	eax
	push	256					; 00000100H
	lea	ecx, DWORD PTR _szBuffer$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_09DHE@WindowPos?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0N@JELK@ObjectEngine?$AA@ ; `string'
	call	DWORD PTR __imp__GetPrivateProfileStringA@24

; 3326 :    else

	jmp	SHORT $L60524
$L60523:

; 3327 :       SysReadZeidonIni( -1, "[ObjectEngine]", "WindowPos", szBuffer );

	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_09DHE@WindowPos?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0P@CGC@?$FLObjectEngine?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16
$L60524:

; 3328 : 
; 3329 :    if ( szBuffer[ 0 ] )

	movsx	eax, BYTE PTR _szBuffer$[ebp]
	test	eax, eax
	je	$L60531

; 3331 :    // nRead = scanf( szBuffer, szPlaceFormat,
; 3332 :    //                &wp.flags, &wp.showCmd,
; 3333 :    //                &wp.ptMinPosition.x, &wp.ptMinPosition.y,
; 3334 :    //                &wp.ptMaxPosition.x, &wp.ptMaxPosition.y,
; 3335 :    //                &wp.rcNormalPosition.left,
; 3336 :    //                &wp.rcNormalPosition.top,
; 3337 :    //                &wp.rcNormalPosition.right,
; 3338 :    //                &wp.rcNormalPosition.bottom );
; 3339 :       zPCHAR pch = szBuffer;

	lea	ecx, DWORD PTR _szBuffer$[ebp]
	mov	DWORD PTR _pch$60526[ebp], ecx
$L60530:

; 3340 :       zPCHAR pchComma;
; 3341 :       zLONG  lValue;
; 3342 : 
; 3343 :       while ( pch )

	cmp	DWORD PTR _pch$60526[ebp], 0
	je	$L60531

; 3345 :          pchComma = zstrchr( pch, ',' );

	push	44					; 0000002cH
	mov	edx, DWORD PTR _pch$60526[ebp]
	push	edx
	call	_strchr
	add	esp, 8
	mov	DWORD PTR _pchComma$60527[ebp], eax

; 3346 :          if ( pchComma )

	cmp	DWORD PTR _pchComma$60527[ebp], 0
	je	SHORT $L60532

; 3348 :             *pchComma = 0;

	mov	eax, DWORD PTR _pchComma$60527[ebp]
	mov	BYTE PTR [eax], 0

; 3349 :             pchComma++;

	mov	ecx, DWORD PTR _pchComma$60527[ebp]
	add	ecx, 1
	mov	DWORD PTR _pchComma$60527[ebp], ecx
$L60532:

; 3351 : 
; 3352 :          lValue = zatol( pch );

	mov	edx, DWORD PTR _pch$60526[ebp]
	push	edx
	call	_atol
	add	esp, 4
	mov	DWORD PTR _lValue$60528[ebp], eax

; 3353 :          nRead++;

	mov	eax, DWORD PTR _nRead$[ebp]
	add	eax, 1
	mov	DWORD PTR _nRead$[ebp], eax

; 3354 :          if ( nRead == 1 )

	cmp	DWORD PTR _nRead$[ebp], 1
	jne	SHORT $L60533

; 3355 :             wp.flags = lValue;

	mov	ecx, DWORD PTR _lValue$60528[ebp]
	mov	DWORD PTR _wp$[ebp+4], ecx

; 3356 :          else

	jmp	$L60551
$L60533:

; 3357 :          if ( nRead == 2 )

	cmp	DWORD PTR _nRead$[ebp], 2
	jne	SHORT $L60535

; 3358 :             wp.showCmd = lValue;

	mov	edx, DWORD PTR _lValue$60528[ebp]
	mov	DWORD PTR _wp$[ebp+8], edx

; 3359 :          else

	jmp	$L60551
$L60535:

; 3360 :          if ( nRead == 3 )

	cmp	DWORD PTR _nRead$[ebp], 3
	jne	SHORT $L60537

; 3361 :             wp.ptMinPosition.x = lValue;

	mov	eax, DWORD PTR _lValue$60528[ebp]
	mov	DWORD PTR _wp$[ebp+12], eax

; 3362 :          else

	jmp	$L60551
$L60537:

; 3363 :          if ( nRead == 4 )

	cmp	DWORD PTR _nRead$[ebp], 4
	jne	SHORT $L60539

; 3364 :             wp.ptMinPosition.y = lValue;

	mov	ecx, DWORD PTR _lValue$60528[ebp]
	mov	DWORD PTR _wp$[ebp+16], ecx

; 3365 :          else

	jmp	$L60551
$L60539:

; 3366 :          if ( nRead == 5 )

	cmp	DWORD PTR _nRead$[ebp], 5
	jne	SHORT $L60541

; 3367 :             wp.ptMaxPosition.x = lValue;

	mov	edx, DWORD PTR _lValue$60528[ebp]
	mov	DWORD PTR _wp$[ebp+20], edx

; 3368 :          else

	jmp	SHORT $L60551
$L60541:

; 3369 :          if ( nRead == 6 )

	cmp	DWORD PTR _nRead$[ebp], 6
	jne	SHORT $L60543

; 3370 :             wp.ptMaxPosition.y = lValue;

	mov	eax, DWORD PTR _lValue$60528[ebp]
	mov	DWORD PTR _wp$[ebp+24], eax

; 3371 :          else

	jmp	SHORT $L60551
$L60543:

; 3372 :          if ( nRead == 7 )

	cmp	DWORD PTR _nRead$[ebp], 7
	jne	SHORT $L60545

; 3373 :             wp.rcNormalPosition.left = lValue;

	mov	ecx, DWORD PTR _lValue$60528[ebp]
	mov	DWORD PTR _wp$[ebp+28], ecx

; 3374 :          else

	jmp	SHORT $L60551
$L60545:

; 3375 :          if ( nRead == 8 )

	cmp	DWORD PTR _nRead$[ebp], 8
	jne	SHORT $L60547

; 3376 :             wp.rcNormalPosition.top = lValue;

	mov	edx, DWORD PTR _lValue$60528[ebp]
	mov	DWORD PTR _wp$[ebp+32], edx

; 3377 :          else

	jmp	SHORT $L60551
$L60547:

; 3378 :          if ( nRead == 9 )

	cmp	DWORD PTR _nRead$[ebp], 9
	jne	SHORT $L60549

; 3379 :             wp.rcNormalPosition.right = lValue;

	mov	eax, DWORD PTR _lValue$60528[ebp]
	mov	DWORD PTR _wp$[ebp+36], eax

; 3380 :          else

	jmp	SHORT $L60551
$L60549:

; 3381 :          if ( nRead == 10 )

	cmp	DWORD PTR _nRead$[ebp], 10		; 0000000aH
	jne	SHORT $L60551

; 3382 :             wp.rcNormalPosition.bottom = lValue;

	mov	ecx, DWORD PTR _lValue$60528[ebp]
	mov	DWORD PTR _wp$[ebp+40], ecx
$L60551:

; 3383 : 
; 3384 :          pch = pchComma;

	mov	edx, DWORD PTR _pchComma$60527[ebp]
	mov	DWORD PTR _pch$60526[ebp], edx

; 3385 :       }

	jmp	$L60530
$L60531:

; 3387 : 
; 3388 :    if ( nRead != 10 )

	cmp	DWORD PTR _nRead$[ebp], 10		; 0000000aH
	je	SHORT $L60552

; 3389 :       return( FALSE );

	xor	al, al
	jmp	SHORT $L60517
$L60552:

; 3390 : 
; 3391 :    wp.length = sizeof( wp );

	mov	DWORD PTR _wp$[ebp], 44			; 0000002cH

; 3392 :    *pwp = wp;

	mov	ecx, 11					; 0000000bH
	lea	esi, DWORD PTR _wp$[ebp]
	mov	edi, DWORD PTR _pwp$[ebp]
	rep movsd

; 3393 :    return( TRUE );

	mov	al, 1
$L60517:

; 3394 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	0
_ReadWindowPlacement ENDP
_TEXT	ENDS
PUBLIC	_TrayMessage
EXTRN	__imp__lstrcpynA@12:NEAR
EXTRN	__imp__DestroyIcon@4:NEAR
EXTRN	__imp__Shell_NotifyIconA@8:NEAR
_TEXT	SEGMENT
_dwMessage$ = 8
_uID$ = 12
_hIcon$ = 16
_pszTip$ = 20
_res$ = -4
_tnd$ = -92
_TrayMessage PROC NEAR

; 3412 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 92					; 0000005cH

; 3413 :    zBOOL res;
; 3414 : 
; 3415 :    NOTIFYICONDATA tnd;
; 3416 : 
; 3417 :    tnd.cbSize      = sizeof( NOTIFYICONDATA );

	mov	DWORD PTR _tnd$[ebp], 88		; 00000058H

; 3418 :    tnd.hWnd        = g_hWndMainFrame;

	mov	eax, DWORD PTR _g_hWndMainFrame
	mov	DWORD PTR _tnd$[ebp+4], eax

; 3419 :    tnd.uID         = uID;

	mov	ecx, DWORD PTR _uID$[ebp]
	mov	DWORD PTR _tnd$[ebp+8], ecx

; 3420 : 
; 3421 :    tnd.uFlags      = NIF_MESSAGE | NIF_ICON | NIF_TIP;

	mov	DWORD PTR _tnd$[ebp+12], 7

; 3422 :    tnd.uCallbackMessage = zWM_NOTIFYICON;// notification message for message loop

	mov	DWORD PTR _tnd$[ebp+16], 32868		; 00008064H

; 3423 :    tnd.hIcon      = hIcon;

	mov	edx, DWORD PTR _hIcon$[ebp]
	mov	DWORD PTR _tnd$[ebp+20], edx

; 3424 :    if ( pszTip )

	cmp	DWORD PTR _pszTip$[ebp], 0
	je	SHORT $L60565

; 3426 :       lstrcpyn( tnd.szTip, pszTip, sizeof( tnd.szTip ) );

	push	64					; 00000040H
	mov	eax, DWORD PTR _pszTip$[ebp]
	push	eax
	lea	ecx, DWORD PTR _tnd$[ebp+24]
	push	ecx
	call	DWORD PTR __imp__lstrcpynA@12

; 3428 :    else

	jmp	SHORT $L60566
$L60565:

; 3430 :       tnd.szTip[ 0 ] = 0;

	mov	BYTE PTR _tnd$[ebp+24], 0
$L60566:

; 3432 : 
; 3433 :    res = Shell_NotifyIcon(dwMessage, &tnd);

	lea	edx, DWORD PTR _tnd$[ebp]
	push	edx
	mov	eax, DWORD PTR _dwMessage$[ebp]
	push	eax
	call	DWORD PTR __imp__Shell_NotifyIconA@8
	mov	BYTE PTR _res$[ebp], al

; 3434 : 
; 3435 :    if ( hIcon )

	cmp	DWORD PTR _hIcon$[ebp], 0
	je	SHORT $L60567

; 3436 :        DestroyIcon( hIcon );

	mov	ecx, DWORD PTR _hIcon$[ebp]
	push	ecx
	call	DWORD PTR __imp__DestroyIcon@4
$L60567:

; 3437 : 
; 3438 :    return( res );

	mov	al, BYTE PTR _res$[ebp]

; 3439 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_TrayMessage ENDP
_TEXT	ENDS
EXTRN	__imp__GetWindowTextA@12:NEAR
_TEXT	SEGMENT
_hInstance$ = 8
_bReturn$ = -136
_hIcon$ = -4
_szTip$ = -132
_SetupSysTray PROC NEAR

; 3454 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 136				; 00000088H

; 3455 :    zBOOL bReturn = FALSE;

	mov	BYTE PTR _bReturn$[ebp], 0

; 3456 :    HICON hIcon = NULL;

	mov	DWORD PTR _hIcon$[ebp], 0

; 3457 :    char szTip[ 128 ];
; 3458 : 
; 3459 :    hIcon = LoadIcon( hInstance, "ZEIDON" );

	push	OFFSET FLAT:??_C@_06HLLH@ZEIDON?$AA@	; `string'
	mov	eax, DWORD PTR _hInstance$[ebp]
	push	eax
	call	DWORD PTR __imp__LoadIconA@8
	mov	DWORD PTR _hIcon$[ebp], eax

; 3460 :    GetWindowText( g_hWndMainFrame, szTip, 127 );

	push	127					; 0000007fH
	lea	ecx, DWORD PTR _szTip$[ebp]
	push	ecx
	mov	edx, DWORD PTR _g_hWndMainFrame
	push	edx
	call	DWORD PTR __imp__GetWindowTextA@12

; 3461 :    bReturn = TrayMessage( NIM_ADD, zTRAY_MESSAGE_SHOW, hIcon, szTip );

	lea	eax, DWORD PTR _szTip$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hIcon$[ebp]
	push	ecx
	push	2
	push	0
	call	_TrayMessage
	add	esp, 16					; 00000010H
	mov	BYTE PTR _bReturn$[ebp], al

; 3462 : 
; 3463 :    return bReturn;

	mov	al, BYTE PTR _bReturn$[ebp]

; 3464 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_SetupSysTray ENDP
_DetachSysTray PROC NEAR

; 3479 : {

	push	ebp
	mov	ebp, esp

; 3480 :    TrayMessage( NIM_DELETE, zTRAY_MESSAGE_SHOW, NULL, NULL);

	push	0
	push	0
	push	2
	push	2
	call	_TrayMessage
	add	esp, 16					; 00000010H

; 3481 : }

	pop	ebp
	ret	0
_DetachSysTray ENDP
_TEXT	ENDS
EXTRN	__imp__TrackPopupMenu@28:NEAR
EXTRN	__imp__IsWindowVisible@4:NEAR
EXTRN	__imp__SetForegroundWindow@4:NEAR
EXTRN	__imp__EnableMenuItem@12:NEAR
_TEXT	SEGMENT
_hwnd$ = 8
_point$ = 12
_hMenu$ = -4
_hMenuTrackPopup$ = -8
_bIsVisible$ = -12
_HandlePopupMenu@12 PROC NEAR

; 3497 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 3498 : 
; 3499 :    HMENU hMenu;
; 3500 :    HMENU hMenuTrackPopup;
; 3501 :    BOOL bIsVisible;
; 3502 :    // Get the menu for the windows
; 3503 :    hMenu = LoadMenu( hInst, MAKEINTRESOURCE( ID_SYSTRAY_MNU ) );

	push	323					; 00000143H
	mov	eax, DWORD PTR _hInst
	push	eax
	call	DWORD PTR __imp__LoadMenuA@8
	mov	DWORD PTR _hMenu$[ebp], eax

; 3504 : 
; 3505 :    if ( hMenu == 0 )

	cmp	DWORD PTR _hMenu$[ebp], 0
	jne	SHORT $L60589

; 3506 :       return;

	jmp	$L60582
$L60589:

; 3507 : 
; 3508 :    // Get the first menu in it which we will use for the call to
; 3509 :    // TrackPopup( ). This could also have been created on the fly using
; 3510 :    // CreatePopupMenu and then we could have used InsertMenu( ) or
; 3511 :    // AppendMenu.
; 3512 :    hMenuTrackPopup = GetSubMenu( hMenu, 0 );

	push	0
	mov	ecx, DWORD PTR _hMenu$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetSubMenu@8
	mov	DWORD PTR _hMenuTrackPopup$[ebp], eax

; 3513 : 
; 3514 :    CheckMenuItem( hMenu, IDM_SHOWTASKID,
; 3515 :                   MF_BYCOMMAND |
; 3516 :                     (AnchorBlock->bShowTaskID ? MF_CHECKED : MF_UNCHECKED) );

	mov	edx, DWORD PTR _AnchorBlock
	mov	eax, DWORD PTR [edx+1495]
	and	eax, 1
	neg	eax
	sbb	eax, eax
	and	eax, 8
	push	eax
	push	124					; 0000007cH
	mov	ecx, DWORD PTR _hMenu$[ebp]
	push	ecx
	call	DWORD PTR __imp__CheckMenuItem@12

; 3517 :    CheckMenuItem( hMenu, IDM_SETOETRACE,
; 3518 :                   MF_BYCOMMAND |
; 3519 :                      (g_chTraceOE_Warning == 0 ||
; 3520 :                         g_chTraceOE_Warning == 'n' ||
; 3521 :                         g_chTraceOE_Warning == 'N' ? MF_UNCHECKED :
; 3522 :                                                      MF_CHECKED) );

	movsx	edx, BYTE PTR _g_chTraceOE_Warning
	test	edx, edx
	je	SHORT $L60817
	movsx	eax, BYTE PTR _g_chTraceOE_Warning
	cmp	eax, 110				; 0000006eH
	je	SHORT $L60817
	movsx	ecx, BYTE PTR _g_chTraceOE_Warning
	cmp	ecx, 78					; 0000004eH
	je	SHORT $L60817
	mov	DWORD PTR -16+[ebp], 8
	jmp	SHORT $L60818
$L60817:
	mov	DWORD PTR -16+[ebp], 0
$L60818:
	mov	edx, DWORD PTR -16+[ebp]
	push	edx
	push	133					; 00000085H
	mov	eax, DWORD PTR _hMenu$[ebp]
	push	eax
	call	DWORD PTR __imp__CheckMenuItem@12

; 3523 :    CheckMenuItem( hMenu, IDM_SETZDRTRACE,
; 3524 :                   MF_BYCOMMAND |
; 3525 :                      (g_chTraceZDrActions == 0 ||
; 3526 :                         g_chTraceZDrActions == 'n' ||
; 3527 :                         g_chTraceZDrActions == 'N' ? MF_UNCHECKED :
; 3528 :                                                      MF_CHECKED) );

	movsx	ecx, BYTE PTR _g_chTraceZDrActions
	test	ecx, ecx
	je	SHORT $L60819
	movsx	edx, BYTE PTR _g_chTraceZDrActions
	cmp	edx, 110				; 0000006eH
	je	SHORT $L60819
	movsx	eax, BYTE PTR _g_chTraceZDrActions
	cmp	eax, 78					; 0000004eH
	je	SHORT $L60819
	mov	DWORD PTR -20+[ebp], 8
	jmp	SHORT $L60820
$L60819:
	mov	DWORD PTR -20+[ebp], 0
$L60820:
	mov	ecx, DWORD PTR -20+[ebp]
	push	ecx
	push	134					; 00000086H
	mov	edx, DWORD PTR _hMenu$[ebp]
	push	edx
	call	DWORD PTR __imp__CheckMenuItem@12

; 3529 :    CheckMenuItem( hMenu, IDM_SETWEBTRACE,
; 3530 :                   MF_BYCOMMAND |
; 3531 :                      (g_chTraceWebActions == 0 ||
; 3532 :                         g_chTraceWebActions == 'n' ||
; 3533 :                         g_chTraceWebActions == 'N' ? MF_UNCHECKED :
; 3534 :                                                      MF_CHECKED) );

	movsx	eax, BYTE PTR _g_chTraceWebActions
	test	eax, eax
	je	SHORT $L60821
	movsx	ecx, BYTE PTR _g_chTraceWebActions
	cmp	ecx, 110				; 0000006eH
	je	SHORT $L60821
	movsx	edx, BYTE PTR _g_chTraceWebActions
	cmp	edx, 78					; 0000004eH
	je	SHORT $L60821
	mov	DWORD PTR -24+[ebp], 8
	jmp	SHORT $L60822
$L60821:
	mov	DWORD PTR -24+[ebp], 0
$L60822:
	mov	eax, DWORD PTR -24+[ebp]
	push	eax
	push	135					; 00000087H
	mov	ecx, DWORD PTR _hMenu$[ebp]
	push	ecx
	call	DWORD PTR __imp__CheckMenuItem@12

; 3535 : 
; 3536 :    // This is required when using a notify icon -- see KB article
; 3537 :    // PRB: Menus for Notification Icons Don't Work Correctly
; 3538 :    SetForegroundWindow( hwnd );

	mov	edx, DWORD PTR _hwnd$[ebp]
	push	edx
	call	DWORD PTR __imp__SetForegroundWindow@4

; 3539 : 
; 3540 :    bIsVisible = IsWindowVisible( hwnd );

	mov	eax, DWORD PTR _hwnd$[ebp]
	push	eax
	call	DWORD PTR __imp__IsWindowVisible@4
	mov	DWORD PTR _bIsVisible$[ebp], eax

; 3541 :    EnableMenuItem( hMenu, IDM_SHOWTRACE, bIsVisible ? MF_GRAYED : MF_ENABLED );

	xor	ecx, ecx
	cmp	DWORD PTR _bIsVisible$[ebp], 0
	setne	cl
	push	ecx
	push	321					; 00000141H
	mov	edx, DWORD PTR _hMenu$[ebp]
	push	edx
	call	DWORD PTR __imp__EnableMenuItem@12

; 3542 :    EnableMenuItem( hMenu, IDM_HIDEWINDOW, bIsVisible ? MF_ENABLED : MF_GRAYED );

	xor	eax, eax
	cmp	DWORD PTR _bIsVisible$[ebp], 0
	sete	al
	push	eax
	push	320					; 00000140H
	mov	ecx, DWORD PTR _hMenu$[ebp]
	push	ecx
	call	DWORD PTR __imp__EnableMenuItem@12

; 3543 : 
; 3544 : 
; 3545 :    TrackPopupMenu( hMenuTrackPopup, TPM_LEFTBUTTON | TPM_RIGHTBUTTON,
; 3546 :                    point.x, point.y, 0, hwnd, NULL );

	push	0
	mov	edx, DWORD PTR _hwnd$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _point$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _point$[ebp]
	push	ecx
	push	2
	mov	edx, DWORD PTR _hMenuTrackPopup$[ebp]
	push	edx
	call	DWORD PTR __imp__TrackPopupMenu@28

; 3547 : 
; 3548 :    // This is required when using a notify icon -- see KB article
; 3549 :    // PRB: Menus for Notification Icons Don't Work Correctly
; 3550 :    PostMessage( hwnd, WM_USER, 0, 0 );

	push	0
	push	0
	push	1024					; 00000400H
	mov	eax, DWORD PTR _hwnd$[ebp]
	push	eax
	call	DWORD PTR __imp__PostMessageA@16
$L60582:

; 3551 : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_HandlePopupMenu@12 ENDP
_TEXT	ENDS
END
