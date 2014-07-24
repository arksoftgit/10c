	TITLE	C:\10C\A\oe\KZOEERAA.C
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
;	COMDAT ??_C@_08LDNJ@TZDME001?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@JKNP@Invalid?5Input?5Data?5Type?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08EMGA@TZDME002?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CG@NMOP@Text?5String?5exceeds?5attribute?5le@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08OGPH@TZDME003?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@PNKK@Attribute?5Type?5invalid?5for?5this?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08LDBC@TZDME004?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@KCLF@Invalid?5Domain?5Entry?5Type?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08BJIF@TZDME005?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CH@GED@Table_Handler?5invalid?5for?5this?5D@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08OGDM@TZDME006?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@IKDN@Integer?5overflow?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08EMKL@TZDME007?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@DDHE@Integer?5underflow?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08ENPG@TZDME008?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CD@JBNF@Could?5not?5find?5context?5for?5Domai@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08OHGB@TZDME009?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CL@KJPO@Context?5edit?5string?5is?5invalid?5f@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08POE@TZDME010?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@KFNE@DateTime?5input?5string?5invalid?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08KFHD@TZDME011?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@FMOF@Error?5storing?5value?5in?5record?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08FKMK@TZDME012?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@HFIM@Context?5Required?5when?5Type?5is?5IN@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08PAFN@TZDME013?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CG@CJOK@Context?1cType?5Combination?5is?5inv@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08KFLI@TZDME014?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@CPMD@Context?5is?5for?5retrieval?5only?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08PCP@TZDME015?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CN@FMDG@Context?5only?5used?5for?5arithmetic@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08PAJG@TZDME016?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@OKJP@Input?5invalid?5for?5context?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08FKAB@TZDME017?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CH@PBEI@Context?5Required?5when?5Type?5is?5DE@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08FLFM@TZDME018?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@MGEJ@Context?5edit?5string?5is?5null?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08PBML@TZDME019?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DC@KKBP@International?5number?5formatting?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08DEBL@TZDME020?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@OIGC@Invalid?5decimal?5string?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08JOIM@TZDME021?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DD@IKIP@Return?5area?5not?5large?5enough?5for@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08GBDF@TZDME022?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CF@BPCL@Only?5AlphaNumeric?5chars?5are?5allo@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08MLKC@TZDME023?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@DPOI@Value?5is?5out?5of?5valid?5range?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08JOEH@TZDME024?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@KKAD@Invalid?5integer?5string?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08DENA@TZDME025?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@CEEK@Invalid?5table?5value?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@OAD@Unknown?5Error?5Message?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@CPBN@DomainMessage?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07FGLN@?$FLDebug?$FN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@CGAI@?6?6?5Debug?5Info?51?3?7?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@JJHO@?6?5Debug?5Info?52?3?7?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@IDMA@Domain?5Name?5Unknown?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DO@GDJM@DomainError?3?5?$CFs?5?9?5?$CFs?5?5?5Type?3?5?$CFc?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@OBAJ@IssueError?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@PCAD@No?5message?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@CKFD@?$CIer?$CJ?5?9?5recursive?5error?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@IKFG@Unknown?5Error?5Message?5?$CI?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_02CEEM@?$CJ?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04OLOD@?0?6?6?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_02DLDK@?0?6?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@CCFO@IssueOE_Error?5?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@JCA@?0?6?6View?5Object?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01KMMP@?$CJ?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@IOG@?0?6Operation?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_02GIEM@?0?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CB@DILP@IssueOE_Error?3?5?5?$CFs?5?5Severity?3?5?$CFd@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??_C@_08LDNJ@TZDME001?$AA@			; `string'
PUBLIC	??_C@_0BJ@JKNP@Invalid?5Input?5Data?5Type?4?$AA@ ; `string'
PUBLIC	??_C@_08EMGA@TZDME002?$AA@			; `string'
PUBLIC	??_C@_0CG@NMOP@Text?5String?5exceeds?5attribute?5le@ ; `string'
PUBLIC	??_C@_08OGPH@TZDME003?$AA@			; `string'
PUBLIC	??_C@_0CI@PNKK@Attribute?5Type?5invalid?5for?5this?5@ ; `string'
PUBLIC	??_C@_08LDBC@TZDME004?$AA@			; `string'
PUBLIC	??_C@_0BL@KCLF@Invalid?5Domain?5Entry?5Type?4?$AA@ ; `string'
PUBLIC	??_C@_08BJIF@TZDME005?$AA@			; `string'
PUBLIC	??_C@_0CH@GED@Table_Handler?5invalid?5for?5this?5D@ ; `string'
PUBLIC	??_C@_08OGDM@TZDME006?$AA@			; `string'
PUBLIC	??_C@_0BC@IKDN@Integer?5overflow?4?$AA@		; `string'
PUBLIC	??_C@_08EMKL@TZDME007?$AA@			; `string'
PUBLIC	??_C@_0BD@DDHE@Integer?5underflow?4?$AA@	; `string'
PUBLIC	??_C@_08ENPG@TZDME008?$AA@			; `string'
PUBLIC	??_C@_0CD@JBNF@Could?5not?5find?5context?5for?5Domai@ ; `string'
PUBLIC	??_C@_08OHGB@TZDME009?$AA@			; `string'
PUBLIC	??_C@_0CL@KJPO@Context?5edit?5string?5is?5invalid?5f@ ; `string'
PUBLIC	??_C@_08POE@TZDME010?$AA@			; `string'
PUBLIC	??_C@_0BP@KFNE@DateTime?5input?5string?5invalid?4?$AA@ ; `string'
PUBLIC	??_C@_08KFHD@TZDME011?$AA@			; `string'
PUBLIC	??_C@_0BP@FMOF@Error?5storing?5value?5in?5record?4?$AA@ ; `string'
PUBLIC	??_C@_08FKMK@TZDME012?$AA@			; `string'
PUBLIC	??_C@_0CI@HFIM@Context?5Required?5when?5Type?5is?5IN@ ; `string'
PUBLIC	??_C@_08PAFN@TZDME013?$AA@			; `string'
PUBLIC	??_C@_0CG@CJOK@Context?1cType?5Combination?5is?5inv@ ; `string'
PUBLIC	??_C@_08KFLI@TZDME014?$AA@			; `string'
PUBLIC	??_C@_0BP@CPMD@Context?5is?5for?5retrieval?5only?4?$AA@ ; `string'
PUBLIC	??_C@_08PCP@TZDME015?$AA@			; `string'
PUBLIC	??_C@_0CN@FMDG@Context?5only?5used?5for?5arithmetic@ ; `string'
PUBLIC	??_C@_08PAJG@TZDME016?$AA@			; `string'
PUBLIC	??_C@_0BL@OKJP@Input?5invalid?5for?5context?4?$AA@ ; `string'
PUBLIC	??_C@_08FKAB@TZDME017?$AA@			; `string'
PUBLIC	??_C@_0CH@PBEI@Context?5Required?5when?5Type?5is?5DE@ ; `string'
PUBLIC	??_C@_08FLFM@TZDME018?$AA@			; `string'
PUBLIC	??_C@_0BN@MGEJ@Context?5edit?5string?5is?5null?4?$AA@ ; `string'
PUBLIC	??_C@_08PBML@TZDME019?$AA@			; `string'
PUBLIC	??_C@_0DC@KKBP@International?5number?5formatting?5@ ; `string'
PUBLIC	??_C@_08DEBL@TZDME020?$AA@			; `string'
PUBLIC	??_C@_0BI@OIGC@Invalid?5decimal?5string?4?$AA@	; `string'
PUBLIC	??_C@_08JOIM@TZDME021?$AA@			; `string'
PUBLIC	??_C@_0DD@IKIP@Return?5area?5not?5large?5enough?5for@ ; `string'
PUBLIC	??_C@_08GBDF@TZDME022?$AA@			; `string'
PUBLIC	??_C@_0CF@BPCL@Only?5AlphaNumeric?5chars?5are?5allo@ ; `string'
PUBLIC	??_C@_08MLKC@TZDME023?$AA@			; `string'
PUBLIC	??_C@_0BN@DPOI@Value?5is?5out?5of?5valid?5range?4?$AA@ ; `string'
PUBLIC	??_C@_08JOEH@TZDME024?$AA@			; `string'
PUBLIC	??_C@_0BI@KKAD@Invalid?5integer?5string?4?$AA@	; `string'
PUBLIC	??_C@_08DENA@TZDME025?$AA@			; `string'
PUBLIC	??_C@_0BF@CEEK@Invalid?5table?5value?4?$AA@	; `string'
PUBLIC	??_C@_0BH@OAD@Unknown?5Error?5Message?5?$AA@	; `string'
PUBLIC	??_C@_0O@CPBN@DomainMessage?$AA@		; `string'
PUBLIC	??_C@_07FGLN@?$FLDebug?$FN?$AA@			; `string'
PUBLIC	??_C@_0BC@CGAI@?6?6?5Debug?5Info?51?3?7?$AA@	; `string'
PUBLIC	??_C@_0BB@JJHO@?6?5Debug?5Info?52?3?7?$AA@	; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_0BE@IDMA@Domain?5Name?5Unknown?$AA@	; `string'
PUBLIC	??_C@_0DO@GDJM@DomainError?3?5?$CFs?5?9?5?$CFs?5?5?5Type?3?5?$CFc?5@ ; `string'
PUBLIC	_SendDomainError@28
EXTRN	_TraceLine:NEAR
EXTRN	_SysReadZeidonIni@16:NEAR
EXTRN	_strcpy:NEAR
EXTRN	_strcat:NEAR
EXTRN	_MessageSend@24:NEAR
EXTRN	_szlApplicationLogicError:DWORD
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\A\oe\KZOEERAA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_08LDNJ@TZDME001?$AA@
_DATA	SEGMENT
??_C@_08LDNJ@TZDME001?$AA@ DB 'TZDME001', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@JKNP@Invalid?5Input?5Data?5Type?4?$AA@
_DATA	SEGMENT
??_C@_0BJ@JKNP@Invalid?5Input?5Data?5Type?4?$AA@ DB 'Invalid Input Data T'
	DB	'ype.', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_08EMGA@TZDME002?$AA@
_DATA	SEGMENT
??_C@_08EMGA@TZDME002?$AA@ DB 'TZDME002', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CG@NMOP@Text?5String?5exceeds?5attribute?5le@
_DATA	SEGMENT
??_C@_0CG@NMOP@Text?5String?5exceeds?5attribute?5le@ DB 'Text String exce'
	DB	'eds attribute length.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_08OGPH@TZDME003?$AA@
_DATA	SEGMENT
??_C@_08OGPH@TZDME003?$AA@ DB 'TZDME003', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@PNKK@Attribute?5Type?5invalid?5for?5this?5@
_DATA	SEGMENT
??_C@_0CI@PNKK@Attribute?5Type?5invalid?5for?5this?5@ DB 'Attribute Type '
	DB	'invalid for this Domain.', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08LDBC@TZDME004?$AA@
_DATA	SEGMENT
??_C@_08LDBC@TZDME004?$AA@ DB 'TZDME004', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@KCLF@Invalid?5Domain?5Entry?5Type?4?$AA@
_DATA	SEGMENT
??_C@_0BL@KCLF@Invalid?5Domain?5Entry?5Type?4?$AA@ DB 'Invalid Domain Ent'
	DB	'ry Type.', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_08BJIF@TZDME005?$AA@
_DATA	SEGMENT
??_C@_08BJIF@TZDME005?$AA@ DB 'TZDME005', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CH@GED@Table_Handler?5invalid?5for?5this?5D@
_DATA	SEGMENT
??_C@_0CH@GED@Table_Handler?5invalid?5for?5this?5D@ DB 'Table_Handler inv'
	DB	'alid for this Domain.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_08OGDM@TZDME006?$AA@
_DATA	SEGMENT
??_C@_08OGDM@TZDME006?$AA@ DB 'TZDME006', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@IKDN@Integer?5overflow?4?$AA@
_DATA	SEGMENT
??_C@_0BC@IKDN@Integer?5overflow?4?$AA@ DB 'Integer overflow.', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_08EMKL@TZDME007?$AA@
_DATA	SEGMENT
??_C@_08EMKL@TZDME007?$AA@ DB 'TZDME007', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@DDHE@Integer?5underflow?4?$AA@
_DATA	SEGMENT
??_C@_0BD@DDHE@Integer?5underflow?4?$AA@ DB 'Integer underflow.', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_08ENPG@TZDME008?$AA@
_DATA	SEGMENT
??_C@_08ENPG@TZDME008?$AA@ DB 'TZDME008', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CD@JBNF@Could?5not?5find?5context?5for?5Domai@
_DATA	SEGMENT
??_C@_0CD@JBNF@Could?5not?5find?5context?5for?5Domai@ DB 'Could not find '
	DB	'context for Domain.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_08OHGB@TZDME009?$AA@
_DATA	SEGMENT
??_C@_08OHGB@TZDME009?$AA@ DB 'TZDME009', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CL@KJPO@Context?5edit?5string?5is?5invalid?5f@
_DATA	SEGMENT
??_C@_0CL@KJPO@Context?5edit?5string?5is?5invalid?5f@ DB 'Context edit st'
	DB	'ring is invalid for Domain.', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08POE@TZDME010?$AA@
_DATA	SEGMENT
??_C@_08POE@TZDME010?$AA@ DB 'TZDME010', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BP@KFNE@DateTime?5input?5string?5invalid?4?$AA@
_DATA	SEGMENT
??_C@_0BP@KFNE@DateTime?5input?5string?5invalid?4?$AA@ DB 'DateTime input'
	DB	' string invalid.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_08KFHD@TZDME011?$AA@
_DATA	SEGMENT
??_C@_08KFHD@TZDME011?$AA@ DB 'TZDME011', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BP@FMOF@Error?5storing?5value?5in?5record?4?$AA@
_DATA	SEGMENT
??_C@_0BP@FMOF@Error?5storing?5value?5in?5record?4?$AA@ DB 'Error storing'
	DB	' value in record.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_08FKMK@TZDME012?$AA@
_DATA	SEGMENT
??_C@_08FKMK@TZDME012?$AA@ DB 'TZDME012', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@HFIM@Context?5Required?5when?5Type?5is?5IN@
_DATA	SEGMENT
??_C@_0CI@HFIM@Context?5Required?5when?5Type?5is?5IN@ DB 'Context Require'
	DB	'd when Type is INTEGER. ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08PAFN@TZDME013?$AA@
_DATA	SEGMENT
??_C@_08PAFN@TZDME013?$AA@ DB 'TZDME013', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CG@CJOK@Context?1cType?5Combination?5is?5inv@
_DATA	SEGMENT
??_C@_0CG@CJOK@Context?1cType?5Combination?5is?5inv@ DB 'Context/cType Co'
	DB	'mbination is invalid.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_08KFLI@TZDME014?$AA@
_DATA	SEGMENT
??_C@_08KFLI@TZDME014?$AA@ DB 'TZDME014', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BP@CPMD@Context?5is?5for?5retrieval?5only?4?$AA@
_DATA	SEGMENT
??_C@_0BP@CPMD@Context?5is?5for?5retrieval?5only?4?$AA@ DB 'Context is fo'
	DB	'r retrieval only.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_08PCP@TZDME015?$AA@
_DATA	SEGMENT
??_C@_08PCP@TZDME015?$AA@ DB 'TZDME015', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CN@FMDG@Context?5only?5used?5for?5arithmetic@
_DATA	SEGMENT
??_C@_0CN@FMDG@Context?5only?5used?5for?5arithmetic@ DB 'Context only use'
	DB	'd for arithmetic operations.', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08PAJG@TZDME016?$AA@
_DATA	SEGMENT
??_C@_08PAJG@TZDME016?$AA@ DB 'TZDME016', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@OKJP@Input?5invalid?5for?5context?4?$AA@
_DATA	SEGMENT
??_C@_0BL@OKJP@Input?5invalid?5for?5context?4?$AA@ DB 'Input invalid for '
	DB	'context.', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_08FKAB@TZDME017?$AA@
_DATA	SEGMENT
??_C@_08FKAB@TZDME017?$AA@ DB 'TZDME017', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CH@PBEI@Context?5Required?5when?5Type?5is?5DE@
_DATA	SEGMENT
??_C@_0CH@PBEI@Context?5Required?5when?5Type?5is?5DE@ DB 'Context Require'
	DB	'd when Type is DECIMAL.', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_08FLFM@TZDME018?$AA@
_DATA	SEGMENT
??_C@_08FLFM@TZDME018?$AA@ DB 'TZDME018', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@MGEJ@Context?5edit?5string?5is?5null?4?$AA@
_DATA	SEGMENT
??_C@_0BN@MGEJ@Context?5edit?5string?5is?5null?4?$AA@ DB 'Context edit st'
	DB	'ring is null.', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_08PBML@TZDME019?$AA@
_DATA	SEGMENT
??_C@_08PBML@TZDME019?$AA@ DB 'TZDME019', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DC@KKBP@International?5number?5formatting?5@
_DATA	SEGMENT
??_C@_0DC@KKBP@International?5number?5formatting?5@ DB 'International num'
	DB	'ber formatting is not available.', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08DEBL@TZDME020?$AA@
_DATA	SEGMENT
??_C@_08DEBL@TZDME020?$AA@ DB 'TZDME020', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@OIGC@Invalid?5decimal?5string?4?$AA@
_DATA	SEGMENT
??_C@_0BI@OIGC@Invalid?5decimal?5string?4?$AA@ DB 'Invalid decimal string'
	DB	'.', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_08JOIM@TZDME021?$AA@
_DATA	SEGMENT
??_C@_08JOIM@TZDME021?$AA@ DB 'TZDME021', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DD@IKIP@Return?5area?5not?5large?5enough?5for@
_DATA	SEGMENT
??_C@_0DD@IKIP@Return?5area?5not?5large?5enough?5for@ DB 'Return area not'
	DB	' large enough for formatted string.', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08GBDF@TZDME022?$AA@
_DATA	SEGMENT
??_C@_08GBDF@TZDME022?$AA@ DB 'TZDME022', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CF@BPCL@Only?5AlphaNumeric?5chars?5are?5allo@
_DATA	SEGMENT
??_C@_0CF@BPCL@Only?5AlphaNumeric?5chars?5are?5allo@ DB 'Only AlphaNumeri'
	DB	'c chars are allowed.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_08MLKC@TZDME023?$AA@
_DATA	SEGMENT
??_C@_08MLKC@TZDME023?$AA@ DB 'TZDME023', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@DPOI@Value?5is?5out?5of?5valid?5range?4?$AA@
_DATA	SEGMENT
??_C@_0BN@DPOI@Value?5is?5out?5of?5valid?5range?4?$AA@ DB 'Value is out o'
	DB	'f valid range.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_08JOEH@TZDME024?$AA@
_DATA	SEGMENT
??_C@_08JOEH@TZDME024?$AA@ DB 'TZDME024', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@KKAD@Invalid?5integer?5string?4?$AA@
_DATA	SEGMENT
??_C@_0BI@KKAD@Invalid?5integer?5string?4?$AA@ DB 'Invalid integer string'
	DB	'.', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_08DENA@TZDME025?$AA@
_DATA	SEGMENT
??_C@_08DENA@TZDME025?$AA@ DB 'TZDME025', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@CEEK@Invalid?5table?5value?4?$AA@
_DATA	SEGMENT
??_C@_0BF@CEEK@Invalid?5table?5value?4?$AA@ DB 'Invalid table value.', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@OAD@Unknown?5Error?5Message?5?$AA@
_DATA	SEGMENT
??_C@_0BH@OAD@Unknown?5Error?5Message?5?$AA@ DB 'Unknown Error Message ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@CPBN@DomainMessage?$AA@
_DATA	SEGMENT
??_C@_0O@CPBN@DomainMessage?$AA@ DB 'DomainMessage', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_07FGLN@?$FLDebug?$FN?$AA@
_DATA	SEGMENT
??_C@_07FGLN@?$FLDebug?$FN?$AA@ DB '[Debug]', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@CGAI@?6?6?5Debug?5Info?51?3?7?$AA@
_DATA	SEGMENT
??_C@_0BC@CGAI@?6?6?5Debug?5Info?51?3?7?$AA@ DB 0aH, 0aH, ' Debug Info 1:'
	DB	09H, 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@JJHO@?6?5Debug?5Info?52?3?7?$AA@
_DATA	SEGMENT
??_C@_0BB@JJHO@?6?5Debug?5Info?52?3?7?$AA@ DB 0aH, ' Debug Info 2:', 09H, 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@IDMA@Domain?5Name?5Unknown?$AA@
_DATA	SEGMENT
??_C@_0BE@IDMA@Domain?5Name?5Unknown?$AA@ DB 'Domain Name Unknown', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DO@GDJM@DomainError?3?5?$CFs?5?9?5?$CFs?5?5?5Type?3?5?$CFc?5@
_DATA	SEGMENT
??_C@_0DO@GDJM@DomainError?3?5?$CFs?5?9?5?$CFs?5?5?5Type?3?5?$CFc?5@ DB 'D'
	DB	'omainError: %s - %s   Type: %c   for Domain: %s  Info: %s.%s', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_zView$ = 8
_lpDomain$ = 12
_nSeverity$ = 16
_lMessageID$ = 20
_cpcInfo1$ = 28
_cpcInfo2$ = 32
_pchTitle$ = -536
_lMsgType$ = -4
_szMsg$ = -532
_szMsgID$ = -20
_nEntityAttrFlag$ = -540
_sz$7619 = -552
_SendDomainError@28 PROC NEAR

; 60   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 572				; 0000023cH

; 61   :    zPCHAR      pchTitle;
; 62   :    zLONG       lMsgType;
; 63   :    zCHAR       szMsg[ 512 ];
; 64   :    zCHAR       szMsgID[ 16 ];
; 65   :    zSHORT      nEntityAttrFlag = 1;

	mov	WORD PTR _nEntityAttrFlag$[ebp], 1

; 66   : 
; 67   :    pchTitle = szlApplicationLogicError;

	mov	eax, DWORD PTR _szlApplicationLogicError
	mov	DWORD PTR _pchTitle$[ebp], eax

; 68   :    if ( nSeverity >= 0 && nSeverity < 16 )

	movsx	ecx, WORD PTR _nSeverity$[ebp]
	test	ecx, ecx
	jl	SHORT $L7535
	movsx	edx, WORD PTR _nSeverity$[ebp]
	cmp	edx, 16					; 00000010H
	jge	SHORT $L7535

; 69   :       lMsgType = zMSGQ_DOMAIN_ERROR;

	mov	DWORD PTR _lMsgType$[ebp], 200		; 000000c8H

; 70   :    else

	jmp	SHORT $L7536
$L7535:

; 71   :       lMsgType = zMSGQ_SYSTEM_ERROR;

	mov	DWORD PTR _lMsgType$[ebp], 1000		; 000003e8H
$L7536:

; 72   : 
; 73   :    switch ( lMessageID )
; 74   :    {

	mov	eax, DWORD PTR _lMessageID$[ebp]
	mov	DWORD PTR -556+[ebp], eax
	mov	ecx, DWORD PTR -556+[ebp]
	sub	ecx, 1
	mov	DWORD PTR -556+[ebp], ecx
	cmp	DWORD PTR -556+[ebp], 24		; 00000018H
	ja	$L7616
	mov	edx, DWORD PTR -556+[ebp]
	jmp	DWORD PTR $L7818[edx*4]
$L7541:

; 75   :       case 1:
; 76   :          zstrcpy( szMsgID, "TZDME001" );

	push	OFFSET FLAT:??_C@_08LDNJ@TZDME001?$AA@	; `string'
	lea	eax, DWORD PTR _szMsgID$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 77   :          zstrcpy( szMsg, "Invalid Input Data Type." );

	push	OFFSET FLAT:??_C@_0BJ@JKNP@Invalid?5Input?5Data?5Type?4?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 78   :          nEntityAttrFlag = 0;

	mov	WORD PTR _nEntityAttrFlag$[ebp], 0

; 79   :          break;

	jmp	$L7538
$L7544:

; 80   : 
; 81   :       case 2:
; 82   :          zstrcpy( szMsgID, "TZDME002" );

	push	OFFSET FLAT:??_C@_08EMGA@TZDME002?$AA@	; `string'
	lea	edx, DWORD PTR _szMsgID$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 83   :          zstrcpy( szMsg, "Text String exceeds attribute length." );

	push	OFFSET FLAT:??_C@_0CG@NMOP@Text?5String?5exceeds?5attribute?5le@ ; `string'
	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 84   :          break;

	jmp	$L7538
$L7547:

; 85   : 
; 86   :       case 3:
; 87   :          zstrcpy( szMsgID, "TZDME003" );

	push	OFFSET FLAT:??_C@_08OGPH@TZDME003?$AA@	; `string'
	lea	ecx, DWORD PTR _szMsgID$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 88   :          zstrcpy( szMsg, "Attribute Type invalid for this Domain." );

	push	OFFSET FLAT:??_C@_0CI@PNKK@Attribute?5Type?5invalid?5for?5this?5@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 89   :          break;

	jmp	$L7538
$L7550:

; 90   : 
; 91   :       case 4:
; 92   :          zstrcpy( szMsgID, "TZDME004" );

	push	OFFSET FLAT:??_C@_08LDBC@TZDME004?$AA@	; `string'
	lea	eax, DWORD PTR _szMsgID$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 93   :          zstrcpy( szMsg, "Invalid Domain Entry Type." );

	push	OFFSET FLAT:??_C@_0BL@KCLF@Invalid?5Domain?5Entry?5Type?4?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 94   :          break;

	jmp	$L7538
$L7553:

; 95   : 
; 96   :       case 5:
; 97   :          zstrcpy( szMsgID, "TZDME005" );

	push	OFFSET FLAT:??_C@_08BJIF@TZDME005?$AA@	; `string'
	lea	edx, DWORD PTR _szMsgID$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 98   :          zstrcpy( szMsg, "Table_Handler invalid for this Domain." );

	push	OFFSET FLAT:??_C@_0CH@GED@Table_Handler?5invalid?5for?5this?5D@ ; `string'
	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 99   :          break;

	jmp	$L7538
$L7556:

; 100  : 
; 101  :       case 6:
; 102  :          zstrcpy( szMsgID, "TZDME006" );

	push	OFFSET FLAT:??_C@_08OGDM@TZDME006?$AA@	; `string'
	lea	ecx, DWORD PTR _szMsgID$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 103  :          zstrcpy( szMsg, "Integer overflow." );

	push	OFFSET FLAT:??_C@_0BC@IKDN@Integer?5overflow?4?$AA@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 104  :          break;

	jmp	$L7538
$L7559:

; 105  : 
; 106  :       case 7:
; 107  :          zstrcpy( szMsgID, "TZDME007" );

	push	OFFSET FLAT:??_C@_08EMKL@TZDME007?$AA@	; `string'
	lea	eax, DWORD PTR _szMsgID$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 108  :          zstrcpy( szMsg, "Integer underflow." );

	push	OFFSET FLAT:??_C@_0BD@DDHE@Integer?5underflow?4?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 109  :          break;

	jmp	$L7538
$L7562:

; 110  : 
; 111  :       case 8:
; 112  :          zstrcpy( szMsgID, "TZDME008" );

	push	OFFSET FLAT:??_C@_08ENPG@TZDME008?$AA@	; `string'
	lea	edx, DWORD PTR _szMsgID$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 113  :          zstrcpy( szMsg, "Could not find context for Domain." );

	push	OFFSET FLAT:??_C@_0CD@JBNF@Could?5not?5find?5context?5for?5Domai@ ; `string'
	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 114  :          break;

	jmp	$L7538
$L7565:

; 115  : 
; 116  :       case 9:
; 117  :          zstrcpy( szMsgID, "TZDME009" );

	push	OFFSET FLAT:??_C@_08OHGB@TZDME009?$AA@	; `string'
	lea	ecx, DWORD PTR _szMsgID$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 118  :          zstrcpy( szMsg, "Context edit string is invalid for Domain." );

	push	OFFSET FLAT:??_C@_0CL@KJPO@Context?5edit?5string?5is?5invalid?5f@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 119  :          break;

	jmp	$L7538
$L7568:

; 120  : 
; 121  :       case 10:
; 122  :          zstrcpy( szMsgID, "TZDME010" );

	push	OFFSET FLAT:??_C@_08POE@TZDME010?$AA@	; `string'
	lea	eax, DWORD PTR _szMsgID$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 123  :          zstrcpy( szMsg, "DateTime input string invalid." );

	push	OFFSET FLAT:??_C@_0BP@KFNE@DateTime?5input?5string?5invalid?4?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 124  :          nEntityAttrFlag = 0;

	mov	WORD PTR _nEntityAttrFlag$[ebp], 0

; 125  :          break;

	jmp	$L7538
$L7571:

; 126  : 
; 127  :       case 11:
; 128  :          zstrcpy( szMsgID, "TZDME011" );

	push	OFFSET FLAT:??_C@_08KFHD@TZDME011?$AA@	; `string'
	lea	edx, DWORD PTR _szMsgID$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 129  :          zstrcpy( szMsg, "Error storing value in record." );

	push	OFFSET FLAT:??_C@_0BP@FMOF@Error?5storing?5value?5in?5record?4?$AA@ ; `string'
	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 130  :          break;

	jmp	$L7538
$L7574:

; 131  : 
; 132  :       case 12:
; 133  :          zstrcpy( szMsgID, "TZDME012" );

	push	OFFSET FLAT:??_C@_08FKMK@TZDME012?$AA@	; `string'
	lea	ecx, DWORD PTR _szMsgID$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 134  :          zstrcpy( szMsg, "Context Required when Type is INTEGER. " );

	push	OFFSET FLAT:??_C@_0CI@HFIM@Context?5Required?5when?5Type?5is?5IN@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 135  :          break;

	jmp	$L7538
$L7577:

; 136  : 
; 137  :       case 13:
; 138  :          zstrcpy( szMsgID, "TZDME013" );

	push	OFFSET FLAT:??_C@_08PAFN@TZDME013?$AA@	; `string'
	lea	eax, DWORD PTR _szMsgID$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 139  :          zstrcpy( szMsg, "Context/cType Combination is invalid." );

	push	OFFSET FLAT:??_C@_0CG@CJOK@Context?1cType?5Combination?5is?5inv@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 140  :          break;

	jmp	$L7538
$L7580:

; 141  : 
; 142  :       case 14:
; 143  :          zstrcpy( szMsgID, "TZDME014" );

	push	OFFSET FLAT:??_C@_08KFLI@TZDME014?$AA@	; `string'
	lea	edx, DWORD PTR _szMsgID$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 144  :          zstrcpy( szMsg, "Context is for retrieval only." );

	push	OFFSET FLAT:??_C@_0BP@CPMD@Context?5is?5for?5retrieval?5only?4?$AA@ ; `string'
	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 145  :          break;

	jmp	$L7538
$L7583:

; 146  : 
; 147  :       case 15:
; 148  :          zstrcpy( szMsgID, "TZDME015" );

	push	OFFSET FLAT:??_C@_08PCP@TZDME015?$AA@	; `string'
	lea	ecx, DWORD PTR _szMsgID$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 149  :          zstrcpy( szMsg, "Context only used for arithmetic operations." );

	push	OFFSET FLAT:??_C@_0CN@FMDG@Context?5only?5used?5for?5arithmetic@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 150  :          break;

	jmp	$L7538
$L7586:

; 151  : 
; 152  :       case 16:
; 153  :          zstrcpy( szMsgID, "TZDME016" );

	push	OFFSET FLAT:??_C@_08PAJG@TZDME016?$AA@	; `string'
	lea	eax, DWORD PTR _szMsgID$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 154  :          zstrcpy( szMsg, "Input invalid for context." );

	push	OFFSET FLAT:??_C@_0BL@OKJP@Input?5invalid?5for?5context?4?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 155  :          break;

	jmp	$L7538
$L7589:

; 156  : 
; 157  :       case 17:
; 158  :          zstrcpy( szMsgID, "TZDME017" );

	push	OFFSET FLAT:??_C@_08FKAB@TZDME017?$AA@	; `string'
	lea	edx, DWORD PTR _szMsgID$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 159  :          zstrcpy( szMsg, "Context Required when Type is DECIMAL." );

	push	OFFSET FLAT:??_C@_0CH@PBEI@Context?5Required?5when?5Type?5is?5DE@ ; `string'
	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 160  :          break;

	jmp	$L7538
$L7592:

; 161  : 
; 162  :       case 18:
; 163  :          zstrcpy( szMsgID, "TZDME018" );

	push	OFFSET FLAT:??_C@_08FLFM@TZDME018?$AA@	; `string'
	lea	ecx, DWORD PTR _szMsgID$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 164  :          zstrcpy( szMsg, "Context edit string is null." );

	push	OFFSET FLAT:??_C@_0BN@MGEJ@Context?5edit?5string?5is?5null?4?$AA@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 165  :          break;

	jmp	$L7538
$L7595:

; 166  : 
; 167  :       case 19:
; 168  :          zstrcpy( szMsgID, "TZDME019" );

	push	OFFSET FLAT:??_C@_08PBML@TZDME019?$AA@	; `string'
	lea	eax, DWORD PTR _szMsgID$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 169  :          zstrcpy( szMsg, "International number formatting is not available." );

	push	OFFSET FLAT:??_C@_0DC@KKBP@International?5number?5formatting?5@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 170  :          break;

	jmp	$L7538
$L7598:

; 171  : 
; 172  :       case 20:
; 173  :          zstrcpy( szMsgID, "TZDME020" );

	push	OFFSET FLAT:??_C@_08DEBL@TZDME020?$AA@	; `string'
	lea	edx, DWORD PTR _szMsgID$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 174  :          zstrcpy( szMsg, "Invalid decimal string." );

	push	OFFSET FLAT:??_C@_0BI@OIGC@Invalid?5decimal?5string?4?$AA@ ; `string'
	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 175  :          nEntityAttrFlag = 0;

	mov	WORD PTR _nEntityAttrFlag$[ebp], 0

; 176  :          break;

	jmp	$L7538
$L7601:

; 177  : 
; 178  :       case 21:
; 179  :          zstrcpy( szMsgID, "TZDME021" );

	push	OFFSET FLAT:??_C@_08JOIM@TZDME021?$AA@	; `string'
	lea	ecx, DWORD PTR _szMsgID$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 180  :          zstrcpy( szMsg, "Return area not large enough for formatted string." );

	push	OFFSET FLAT:??_C@_0DD@IKIP@Return?5area?5not?5large?5enough?5for@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 181  :          break;

	jmp	$L7538
$L7604:

; 182  : 
; 183  :       case 22:
; 184  :          zstrcpy( szMsgID, "TZDME022" );

	push	OFFSET FLAT:??_C@_08GBDF@TZDME022?$AA@	; `string'
	lea	eax, DWORD PTR _szMsgID$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 185  :          zstrcpy( szMsg, "Only AlphaNumeric chars are allowed." );

	push	OFFSET FLAT:??_C@_0CF@BPCL@Only?5AlphaNumeric?5chars?5are?5allo@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 186  :          nEntityAttrFlag = 0;

	mov	WORD PTR _nEntityAttrFlag$[ebp], 0

; 187  :          break;

	jmp	$L7538
$L7607:

; 188  : 
; 189  :       case 23:
; 190  :          zstrcpy( szMsgID, "TZDME023" );

	push	OFFSET FLAT:??_C@_08MLKC@TZDME023?$AA@	; `string'
	lea	edx, DWORD PTR _szMsgID$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 191  :          zstrcpy( szMsg, "Value is out of valid range." );

	push	OFFSET FLAT:??_C@_0BN@DPOI@Value?5is?5out?5of?5valid?5range?4?$AA@ ; `string'
	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 192  :          nEntityAttrFlag = 0;

	mov	WORD PTR _nEntityAttrFlag$[ebp], 0

; 193  :          break;

	jmp	SHORT $L7538
$L7610:

; 194  : 
; 195  :       case 24:
; 196  :          zstrcpy( szMsgID, "TZDME024" );

	push	OFFSET FLAT:??_C@_08JOEH@TZDME024?$AA@	; `string'
	lea	ecx, DWORD PTR _szMsgID$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 197  :          zstrcpy( szMsg, "Invalid integer string." );

	push	OFFSET FLAT:??_C@_0BI@KKAD@Invalid?5integer?5string?4?$AA@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 198  :          nEntityAttrFlag = 0;

	mov	WORD PTR _nEntityAttrFlag$[ebp], 0

; 199  :          break;

	jmp	SHORT $L7538
$L7613:

; 200  : 
; 201  :       case 25:
; 202  :          zstrcpy( szMsgID, "TZDME025" );

	push	OFFSET FLAT:??_C@_08DENA@TZDME025?$AA@	; `string'
	lea	eax, DWORD PTR _szMsgID$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 203  :          zstrcpy( szMsg, "Invalid table value." );

	push	OFFSET FLAT:??_C@_0BF@CEEK@Invalid?5table?5value?4?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 204  :          nEntityAttrFlag = 0;

	mov	WORD PTR _nEntityAttrFlag$[ebp], 0

; 205  :          break;

	jmp	SHORT $L7538
$L7616:

; 206  : 
; 207  :       default:
; 208  :          zstrcpy( szMsg, "Unknown Error Message " );

	push	OFFSET FLAT:??_C@_0BH@OAD@Unknown?5Error?5Message?5?$AA@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8
$L7538:

; 210  : 
; 211  :    // If flag is off then check Zeidon INI file to see if we should turn it
; 212  :    // on anyway.
; 213  :    if ( nEntityAttrFlag == 0 )

	movsx	eax, WORD PTR _nEntityAttrFlag$[ebp]
	test	eax, eax
	jne	SHORT $L7622

; 215  :       zCHAR sz[ 10 ];
; 216  : 
; 217  :       SysReadZeidonIni( -1, "[Debug]", "DomainMessage", sz );

	lea	ecx, DWORD PTR _sz$7619[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0O@CPBN@DomainMessage?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_07FGLN@?$FLDebug?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 218  :       if ( sz[ 0 ] == 'Y' || sz[ 0 ] == 'y' )

	movsx	edx, BYTE PTR _sz$7619[ebp]
	cmp	edx, 89					; 00000059H
	je	SHORT $L7623
	movsx	eax, BYTE PTR _sz$7619[ebp]
	cmp	eax, 121				; 00000079H
	jne	SHORT $L7622
$L7623:

; 219  :          nEntityAttrFlag = 1;

	mov	WORD PTR _nEntityAttrFlag$[ebp], 1
$L7622:

; 221  : 
; 222  :    if ( nEntityAttrFlag == 1 )

	movsx	ecx, WORD PTR _nEntityAttrFlag$[ebp]
	cmp	ecx, 1
	jne	SHORT $L7627

; 224  :       // If the message created was for a programming error (not an expected
; 225  :       // end-user message), then add the Entity and Attribute.  This information
; 226  :       // only appears when there is no LAND.MSG ... otherwise the german text
; 227  :       // overwrites everything!
; 228  :       if ( cpcInfo1 )

	cmp	DWORD PTR _cpcInfo1$[ebp], 0
	je	SHORT $L7625

; 230  :          zstrcat( szMsg, "\n\n Debug Info 1:\t" );

	push	OFFSET FLAT:??_C@_0BC@CGAI@?6?6?5Debug?5Info?51?3?7?$AA@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 231  :          zstrcat( szMsg, cpcInfo1 );

	mov	eax, DWORD PTR _cpcInfo1$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L7625:

; 233  : 
; 234  :       if ( cpcInfo2 )

	cmp	DWORD PTR _cpcInfo2$[ebp], 0
	je	SHORT $L7627

; 236  :          zstrcat( szMsg, "\n Debug Info 2:\t" );

	push	OFFSET FLAT:??_C@_0BB@JJHO@?6?5Debug?5Info?52?3?7?$AA@ ; `string'
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 237  :          zstrcat( szMsg, cpcInfo2 );

	mov	eax, DWORD PTR _cpcInfo2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szMsg$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L7627:

; 240  : 
; 241  :    TraceLine( "DomainError: %s - %s   Type: %c   for Domain: %s  Info: %s.%s",
; 242  :               szMsgID, szMsg, lpDomain ? lpDomain->cDomainType : '?',
; 243  :               lpDomain ? lpDomain->szName : "Domain Name Unknown",
; 244  :               cpcInfo1 ? cpcInfo1 : "", cpcInfo2 ? cpcInfo2 : "" );

	cmp	DWORD PTR _cpcInfo2$[ebp], 0
	je	SHORT $L7810
	mov	edx, DWORD PTR _cpcInfo2$[ebp]
	mov	DWORD PTR -560+[ebp], edx
	jmp	SHORT $L7811
$L7810:
	mov	DWORD PTR -560+[ebp], OFFSET FLAT:??_C@_00A@?$AA@ ; `string'
$L7811:
	cmp	DWORD PTR _cpcInfo1$[ebp], 0
	je	SHORT $L7812
	mov	eax, DWORD PTR _cpcInfo1$[ebp]
	mov	DWORD PTR -564+[ebp], eax
	jmp	SHORT $L7813
$L7812:
	mov	DWORD PTR -564+[ebp], OFFSET FLAT:??_C@_00A@?$AA@ ; `string'
$L7813:
	cmp	DWORD PTR _lpDomain$[ebp], 0
	je	SHORT $L7814
	mov	ecx, DWORD PTR _lpDomain$[ebp]
	add	ecx, 6
	mov	DWORD PTR -568+[ebp], ecx
	jmp	SHORT $L7815
$L7814:
	mov	DWORD PTR -568+[ebp], OFFSET FLAT:??_C@_0BE@IDMA@Domain?5Name?5Unknown?$AA@ ; `string'
$L7815:
	cmp	DWORD PTR _lpDomain$[ebp], 0
	je	SHORT $L7816
	mov	edx, DWORD PTR _lpDomain$[ebp]
	movsx	eax, BYTE PTR [edx+65]
	mov	DWORD PTR -572+[ebp], eax
	jmp	SHORT $L7817
$L7816:
	mov	DWORD PTR -572+[ebp], 63		; 0000003fH
$L7817:
	mov	ecx, DWORD PTR -560+[ebp]
	push	ecx
	mov	edx, DWORD PTR -564+[ebp]
	push	edx
	mov	eax, DWORD PTR -568+[ebp]
	push	eax
	mov	ecx, DWORD PTR -572+[ebp]
	push	ecx
	lea	edx, DWORD PTR _szMsg$[ebp]
	push	edx
	lea	eax, DWORD PTR _szMsgID$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0DO@GDJM@DomainError?3?5?$CFs?5?9?5?$CFs?5?5?5Type?3?5?$CFc?5@ ; `string'
	call	_TraceLine
	add	esp, 28					; 0000001cH

; 245  :    if ( nSeverity == -1 ) // domain validation only ... no error message!

	movsx	ecx, WORD PTR _nSeverity$[ebp]
	cmp	ecx, -1
	jne	SHORT $L7632

; 246  :       return( 0 );

	xor	ax, ax
	jmp	SHORT $L7633
$L7632:

; 247  :    else
; 248  :       return( MessageSend( zView, szMsgID, pchTitle, szMsg, lMsgType, 0 ) );

	push	0
	mov	edx, DWORD PTR _lMsgType$[ebp]
	push	edx
	lea	eax, DWORD PTR _szMsg$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pchTitle$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szMsgID$[ebp]
	push	edx
	mov	eax, DWORD PTR _zView$[ebp]
	push	eax
	call	_MessageSend@24
$L7633:

; 249  : }

	mov	esp, ebp
	pop	ebp
	ret	28					; 0000001cH
$L7818:
	DD	$L7541
	DD	$L7544
	DD	$L7547
	DD	$L7550
	DD	$L7553
	DD	$L7556
	DD	$L7559
	DD	$L7562
	DD	$L7565
	DD	$L7568
	DD	$L7571
	DD	$L7574
	DD	$L7577
	DD	$L7580
	DD	$L7583
	DD	$L7586
	DD	$L7589
	DD	$L7592
	DD	$L7595
	DD	$L7598
	DD	$L7601
	DD	$L7604
	DD	$L7607
	DD	$L7610
	DD	$L7613
_SendDomainError@28 ENDP
_TEXT	ENDS
PUBLIC	_IssueError@16
PUBLIC	??_C@_0N@OBAJ@IssueError?3?5?$AA@		; `string'
EXTRN	_SysMessageBox@16:NEAR
EXTRN	_TraceLineS@8:NEAR
EXTRN	_g_pfnGetPtr:DWORD
EXTRN	_szlOE_SystemError:DWORD
;	COMDAT ??_C@_0N@OBAJ@IssueError?3?5?$AA@
; File C:\10C\A\oe\KZOEERAA.C
_DATA	SEGMENT
??_C@_0N@OBAJ@IssueError?3?5?$AA@ DB 'IssueError: ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_nSeverity$ = 12
_cpcMessage$ = 20
_lpTask$ = -8
_szTitle$ = -4
_IssueError@16 PROC NEAR

; 276  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 277  :    LPTASK    lpTask;
; 278  :    zPCHAR    szTitle;
; 279  : 
; 280  :    if ( nSeverity < 16 )

	movsx	eax, WORD PTR _nSeverity$[ebp]
	cmp	eax, 16					; 00000010H
	jge	SHORT $L7645

; 281  :       szTitle = szlApplicationLogicError;

	mov	ecx, DWORD PTR _szlApplicationLogicError
	mov	DWORD PTR _szTitle$[ebp], ecx

; 282  :    else

	jmp	SHORT $L7646
$L7645:

; 283  :       szTitle = szlOE_SystemError;

	mov	edx, DWORD PTR _szlOE_SystemError
	mov	DWORD PTR _szTitle$[ebp], edx
$L7646:

; 284  : 
; 285  :    // NOTE, there is no guarantee that lpView is set OR valid.
; 286  :    lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$[ebp], eax

; 287  : 
; 288  :    // Log the error with the subtask
; 289  :    // TEMP For now, we just spit all errors out to the window!!! TEMP
; 290  :    TraceLineS( "IssueError: ", cpcMessage );

	mov	edx, DWORD PTR _cpcMessage$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0N@OBAJ@IssueError?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 291  :    SysMessageBox( lpView, szTitle, cpcMessage, 1 );         // TEMP

	push	1
	mov	eax, DWORD PTR _cpcMessage$[ebp]
	push	eax
	mov	ecx, DWORD PTR _szTitle$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_SysMessageBox@16

; 292  : 
; 293  :    return( 0 );   // Error creating error object

	xor	ax, ax

; 294  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_IssueError@16 ENDP
_TEXT	ENDS
PUBLIC	_IssueOE_Error@28
PUBLIC	??_C@_0L@PCAD@No?5message?$AA@			; `string'
PUBLIC	??_C@_0BI@CKFD@?$CIer?$CJ?5?9?5recursive?5error?5?$AA@ ; `string'
PUBLIC	_fnIssueCoreError
EXTRN	_MiValidView@4:NEAR
;	COMDAT ??_C@_0L@PCAD@No?5message?$AA@
; File C:\10C\A\oe\KZOEERAA.C
_DATA	SEGMENT
??_C@_0L@PCAD@No?5message?$AA@ DB 'No message', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@CKFD@?$CIer?$CJ?5?9?5recursive?5error?5?$AA@
_DATA	SEGMENT
??_C@_0BI@CKFD@?$CIer?$CJ?5?9?5recursive?5error?5?$AA@ DB '(er) - recursi'
	DB	've error ', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTask$ = 8
_lpView$ = 12
_nSeverity$ = 16
_nID$ = 20
_lLong$ = 24
_cpcMessage1$ = 28
_cpcMessage2$ = 32
_lpFirstSubtask$7673 = -4
_nRC$7675 = -8
_fnIssueCoreError PROC NEAR

; 311  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 312  :    if ( lpTask->nRecurse )

	mov	eax, DWORD PTR _lpTask$[ebp]
	movsx	ecx, WORD PTR [eax+56]
	test	ecx, ecx
	je	SHORT $L7664

; 314  :       if ( cpcMessage2 == 0 || *cpcMessage2 == 0 )

	cmp	DWORD PTR _cpcMessage2$[ebp], 0
	je	SHORT $L7666
	mov	edx, DWORD PTR _cpcMessage2$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L7670
$L7666:

; 316  :          if ( cpcMessage1 == 0 || *cpcMessage1 == 0 )

	cmp	DWORD PTR _cpcMessage1$[ebp], 0
	je	SHORT $L7668
	mov	ecx, DWORD PTR _cpcMessage1$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	jne	SHORT $L7667
$L7668:

; 317  :             cpcMessage2 = "No message";

	mov	DWORD PTR _cpcMessage2$[ebp], OFFSET FLAT:??_C@_0L@PCAD@No?5message?$AA@ ; `string'

; 318  :          else

	jmp	SHORT $L7670
$L7667:

; 319  :             cpcMessage2 = cpcMessage1;

	mov	eax, DWORD PTR _cpcMessage1$[ebp]
	mov	DWORD PTR _cpcMessage2$[ebp], eax
$L7670:

; 321  : 
; 322  :       TraceLineS( "(er) - recursive error ", cpcMessage2 );

	mov	ecx, DWORD PTR _cpcMessage2$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BI@CKFD@?$CIer?$CJ?5?9?5recursive?5error?5?$AA@ ; `string'
	call	_TraceLineS@8

; 323  :    // SysMessageBox( "(er) - recursive error ", cpcMessage2, 1 );
; 324  :       return( 0 );

	xor	ax, ax
	jmp	$L7672
$L7664:

; 328  :       LPSUBTASK lpFirstSubtask = zGETPTR( lpTask->hFirstSubtask );

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstSubtask$7673[ebp], eax

; 329  :       zSHORT    nRC;
; 330  : 
; 331  :       if ( MiValidView( lpView ) == 0 )

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_MiValidView@4
	movsx	edx, ax
	test	edx, edx
	jne	SHORT $L7676

; 332  :          lpView = zGETPTR( lpFirstSubtask->hSubtaskView );

	mov	eax, DWORD PTR _lpFirstSubtask$7673[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpView$[ebp], eax
$L7676:

; 333  : 
; 334  :       lpTask->nRecurse++;

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	ax, WORD PTR [edx+56]
	add	ax, 1
	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	WORD PTR [ecx+56], ax

; 335  : 
; 336  :       nRC = IssueOE_Error( lpView, nSeverity, nID,
; 337  :                            zMSGQ_SYSTEM_ERROR,
; 338  :                            lLong, cpcMessage1, cpcMessage2 );

	mov	edx, DWORD PTR _cpcMessage2$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcMessage1$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lLong$[ebp]
	push	ecx
	push	1000					; 000003e8H
	mov	dx, WORD PTR _nID$[ebp]
	push	edx
	mov	ax, WORD PTR _nSeverity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_IssueOE_Error@28
	mov	WORD PTR _nRC$7675[ebp], ax

; 339  :       lpTask->nRecurse--;

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	ax, WORD PTR [edx+56]
	sub	ax, 1
	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	WORD PTR [ecx+56], ax

; 340  :       return( nRC );

	mov	ax, WORD PTR _nRC$7675[ebp]
$L7672:

; 342  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnIssueCoreError ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BI@IKFG@Unknown?5Error?5Message?5?$CI?$AA@ ; `string'
PUBLIC	??_C@_02CEEM@?$CJ?5?$AA@			; `string'
PUBLIC	??_C@_04OLOD@?0?6?6?5?$AA@			; `string'
PUBLIC	??_C@_02DLDK@?0?6?$AA@				; `string'
PUBLIC	??_C@_0BB@CCFO@IssueOE_Error?5?3?5?$AA@		; `string'
PUBLIC	??_C@_0BB@JCA@?0?6?6View?5Object?3?5?$AA@	; `string'
PUBLIC	??_C@_01KMMP@?$CJ?$AA@				; `string'
PUBLIC	??_C@_0O@IOG@?0?6Operation?3?5?$AA@		; `string'
PUBLIC	??_C@_02GIEM@?0?5?$AA@				; `string'
PUBLIC	??_C@_0CB@DILP@IssueOE_Error?3?5?5?$CFs?5?5Severity?3?5?$CFd@ ; `string'
EXTRN	__imp___ltoa:NEAR
EXTRN	_SysGetBaseMessage@12:NEAR
EXTRN	_SysGetOperationMessage@12:NEAR
;	COMDAT ??_C@_0BI@IKFG@Unknown?5Error?5Message?5?$CI?$AA@
; File C:\10C\A\oe\KZOEERAA.C
_DATA	SEGMENT
??_C@_0BI@IKFG@Unknown?5Error?5Message?5?$CI?$AA@ DB 'Unknown Error Messa'
	DB	'ge (', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_02CEEM@?$CJ?5?$AA@
_DATA	SEGMENT
??_C@_02CEEM@?$CJ?5?$AA@ DB ') ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_04OLOD@?0?6?6?5?$AA@
_DATA	SEGMENT
??_C@_04OLOD@?0?6?6?5?$AA@ DB ',', 0aH, 0aH, ' ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_02DLDK@?0?6?$AA@
_DATA	SEGMENT
??_C@_02DLDK@?0?6?$AA@ DB ',', 0aH, 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@CCFO@IssueOE_Error?5?3?5?$AA@
_DATA	SEGMENT
??_C@_0BB@CCFO@IssueOE_Error?5?3?5?$AA@ DB 'IssueOE_Error : ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@JCA@?0?6?6View?5Object?3?5?$AA@
_DATA	SEGMENT
??_C@_0BB@JCA@?0?6?6View?5Object?3?5?$AA@ DB ',', 0aH, 0aH, 'View Object:'
	DB	' ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_01KMMP@?$CJ?$AA@
_DATA	SEGMENT
??_C@_01KMMP@?$CJ?$AA@ DB ')', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@IOG@?0?6Operation?3?5?$AA@
_DATA	SEGMENT
??_C@_0O@IOG@?0?6Operation?3?5?$AA@ DB ',', 0aH, 'Operation: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_02GIEM@?0?5?$AA@
_DATA	SEGMENT
??_C@_02GIEM@?0?5?$AA@ DB ', ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CB@DILP@IssueOE_Error?3?5?5?$CFs?5?5Severity?3?5?$CFd@
_DATA	SEGMENT
??_C@_0CB@DILP@IssueOE_Error?3?5?5?$CFs?5?5Severity?3?5?$CFd@ DB 'IssueOE'
	DB	'_Error:  %s  Severity: %d', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_nSeverity$ = 12
_nID$ = 16
_lMsgType$ = 20
_lLong$ = 24
_cpcMessage1$ = 28
_cpcMessage2$ = 32
_lpTask$ = -28
_szCoreMessage$ = -540
_cpcMsgId$ = -24
_zView$ = -544
_pchTitle$ = -8
_lpViewOD$ = -4
_lpFirstSubtask$7703 = -548
_szOperationName$7720 = -580
_k$7725 = -584
_IssueOE_Error@28 PROC NEAR

; 364  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 584				; 00000248H

; 365  :    LPTASK      lpTask;
; 366  :    zCHAR       szCoreMessage[ 512 ];
; 367  :    zCHAR       cpcMsgId[ 16 ];
; 368  :    zVIEW       zView;
; 369  :    zPCHAR      pchTitle;
; 370  :    LPVIEWOD    lpViewOD;
; 371  : 
; 372  : // SysMessageBox( 0, "IssueOE_Error", cpcMessage1, -1 ); call MessageBox directly
; 373  : 
; 374  :    if ( lpView )

	cmp	DWORD PTR _lpView$[ebp], 0
	je	SHORT $L7699

; 376  :       lpTask = zGETPTR( lpView->hTask );

	mov	eax, DWORD PTR _lpView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$[ebp], eax

; 377  : 
; 378  :       // If the view is valid we'll pass it along, otherwise we will
; 379  :       // pass the first SubtaskView for the task.
; 380  :       if ( lpView )

	cmp	DWORD PTR _lpView$[ebp], 0
	je	SHORT $L7701

; 381  :          zView = lpView;

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	DWORD PTR _zView$[ebp], edx

; 382  :       else

	jmp	SHORT $L7702
$L7701:

; 384  :          LPSUBTASK lpFirstSubtask = zGETPTR( lpTask->hFirstSubtask );

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstSubtask$7703[ebp], eax

; 385  :          zView = zGETPTR( lpFirstSubtask->hSubtaskView );

	mov	edx, DWORD PTR _lpFirstSubtask$7703[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _zView$[ebp], eax
$L7702:

; 387  : 
; 388  :       lpViewOD = zGETPTR( zView->hViewOD );

	mov	ecx, DWORD PTR _zView$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 390  :    else

	jmp	SHORT $L7707
$L7699:

; 392  :       lpTask = 0;

	mov	DWORD PTR _lpTask$[ebp], 0

; 393  :       zView = 0;

	mov	DWORD PTR _zView$[ebp], 0

; 394  :       lpViewOD = 0;

	mov	DWORD PTR _lpViewOD$[ebp], 0
$L7707:

; 396  : 
; 397  :    szCoreMessage[ 0 ] = 0;

	mov	BYTE PTR _szCoreMessage$[ebp], 0

; 398  :    SysGetBaseMessage( szCoreMessage, nID, 256 );

	push	256					; 00000100H
	movsx	eax, WORD PTR _nID$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szCoreMessage$[ebp]
	push	ecx
	call	_SysGetBaseMessage@12

; 399  :    if ( szCoreMessage[ 0 ] == 0 )

	movsx	edx, BYTE PTR _szCoreMessage$[ebp]
	test	edx, edx
	jne	SHORT $L7708

; 401  :       zstrcpy( szCoreMessage, "Unknown Error Message (" );

	push	OFFSET FLAT:??_C@_0BI@IKFG@Unknown?5Error?5Message?5?$CI?$AA@ ; `string'
	lea	eax, DWORD PTR _szCoreMessage$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 402  :       zltoa( nID, &szCoreMessage[ 490 ] );

	push	10					; 0000000aH
	lea	ecx, DWORD PTR _szCoreMessage$[ebp+490]
	push	ecx
	movsx	edx, WORD PTR _nID$[ebp]
	push	edx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 403  :       zstrcat( szCoreMessage, &szCoreMessage[ 490 ] );

	lea	eax, DWORD PTR _szCoreMessage$[ebp+490]
	push	eax
	lea	ecx, DWORD PTR _szCoreMessage$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 404  :       zstrcat( szCoreMessage, ") " );

	push	OFFSET FLAT:??_C@_02CEEM@?$CJ?5?$AA@	; `string'
	lea	edx, DWORD PTR _szCoreMessage$[ebp]
	push	edx
	call	_strcat
	add	esp, 8
$L7708:

; 406  : 
; 407  :    if ( lLong )

	cmp	DWORD PTR _lLong$[ebp], 0
	je	SHORT $L7711

; 409  :       zltoa( lLong, &szCoreMessage[ 490 ] );

	push	10					; 0000000aH
	lea	eax, DWORD PTR _szCoreMessage$[ebp+490]
	push	eax
	mov	ecx, DWORD PTR _lLong$[ebp]
	push	ecx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 410  :       zstrcat( szCoreMessage, &szCoreMessage[ 490 ] );

	lea	edx, DWORD PTR _szCoreMessage$[ebp+490]
	push	edx
	lea	eax, DWORD PTR _szCoreMessage$[ebp]
	push	eax
	call	_strcat
	add	esp, 8
$L7711:

; 412  : 
; 413  :    if ( cpcMessage1 )  // if any additional information

	cmp	DWORD PTR _cpcMessage1$[ebp], 0
	je	SHORT $L7714

; 415  :       zstrcat( szCoreMessage, ",\n\n " );

	push	OFFSET FLAT:??_C@_04OLOD@?0?6?6?5?$AA@	; `string'
	lea	ecx, DWORD PTR _szCoreMessage$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 416  :       zstrcat( szCoreMessage, cpcMessage1 );

	mov	edx, DWORD PTR _cpcMessage1$[ebp]
	push	edx
	lea	eax, DWORD PTR _szCoreMessage$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 417  :       if ( cpcMessage2 )

	cmp	DWORD PTR _cpcMessage2$[ebp], 0
	je	SHORT $L7714

; 419  :          zstrcat( szCoreMessage, ",\n" );

	push	OFFSET FLAT:??_C@_02DLDK@?0?6?$AA@	; `string'
	lea	ecx, DWORD PTR _szCoreMessage$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 420  :          zstrcat( szCoreMessage, cpcMessage2 );

	mov	edx, DWORD PTR _cpcMessage2$[ebp]
	push	edx
	lea	eax, DWORD PTR _szCoreMessage$[ebp]
	push	eax
	call	_strcat
	add	esp, 8
$L7714:

; 423  : 
; 424  :    TraceLineS( "IssueOE_Error : ", szCoreMessage );

	lea	ecx, DWORD PTR _szCoreMessage$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BB@CCFO@IssueOE_Error?5?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 425  : 
; 426  :    // See if we can determine the view object resulting in the error.
; 427  :    // But don't do it for EE071 or EE101 as it implies erroneous information.
; 428  :    if ( lpView && lpViewOD && nID != 71 && nID != 101 )  // dks 2006.04.27

	cmp	DWORD PTR _lpView$[ebp], 0
	je	SHORT $L7717
	cmp	DWORD PTR _lpViewOD$[ebp], 0
	je	SHORT $L7717
	movsx	edx, WORD PTR _nID$[ebp]
	cmp	edx, 71					; 00000047H
	je	SHORT $L7717
	movsx	eax, WORD PTR _nID$[ebp]
	cmp	eax, 101				; 00000065H
	je	SHORT $L7717

; 430  :        zstrcat( szCoreMessage, ",\n\nView Object: " );

	push	OFFSET FLAT:??_C@_0BB@JCA@?0?6?6View?5Object?3?5?$AA@ ; `string'
	lea	ecx, DWORD PTR _szCoreMessage$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 431  :        zstrcat( szCoreMessage, lpViewOD->szName );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	lea	eax, DWORD PTR _szCoreMessage$[ebp]
	push	eax
	call	_strcat
	add	esp, 8
$L7717:

; 433  : 
; 434  :    // See if we can determine the operation.
; 435  :    if ( lpTask && lpTask->bAudit && lpTask->nOperIdx > -1 )

	cmp	DWORD PTR _lpTask$[ebp], 0
	je	$L7728
	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+443]
	and	edx, 1
	test	edx, edx
	je	$L7728
	mov	eax, DWORD PTR _lpTask$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	cmp	ecx, -1
	jle	$L7728

; 437  :       zCHAR szOperationName[ 32 ];
; 438  : 
; 439  :       szOperationName[ 0 ] = 0;

	mov	BYTE PTR _szOperationName$7720[ebp], 0

; 440  :       SysGetOperationMessage( szOperationName,
; 441  :                            // lpTask->nOper[ 0 ], 31 );
; 442  :                               lpTask->nOper[ lpTask->nOperIdx ], 31 );

	push	31					; 0000001fH
	mov	edx, DWORD PTR _lpTask$[ebp]
	movsx	eax, WORD PTR [edx+58]
	mov	ecx, DWORD PTR _lpTask$[ebp]
	movsx	edx, WORD PTR [ecx+eax*2+60]
	push	edx
	lea	eax, DWORD PTR _szOperationName$7720[ebp]
	push	eax
	call	_SysGetOperationMessage@12

; 443  :       if ( szOperationName[ 0 ] == 0 )

	movsx	ecx, BYTE PTR _szOperationName$7720[ebp]
	test	ecx, ecx
	jne	SHORT $L7721

; 445  :          szOperationName[ 0 ] = '(';

	mov	BYTE PTR _szOperationName$7720[ebp], 40	; 00000028H

; 446  :       // zltoa( lpTask->nOper[ 0 ], &szOperationName[ 1 ] );
; 447  :          zltoa( lpTask->nOper[ lpTask->nOperIdx ], &szOperationName[ 1 ] );

	push	10					; 0000000aH
	lea	edx, DWORD PTR _szOperationName$7720[ebp+1]
	push	edx
	mov	eax, DWORD PTR _lpTask$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	edx, DWORD PTR _lpTask$[ebp]
	movsx	eax, WORD PTR [edx+ecx*2+60]
	push	eax
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 448  :          zstrcat( szOperationName, ")" );

	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	lea	ecx, DWORD PTR _szOperationName$7720[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L7721:

; 450  : 
; 451  :       zstrcat( szCoreMessage, ",\nOperation: " );

	push	OFFSET FLAT:??_C@_0O@IOG@?0?6Operation?3?5?$AA@ ; `string'
	lea	edx, DWORD PTR _szCoreMessage$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 452  :       zstrcat( szCoreMessage, szOperationName );

	lea	eax, DWORD PTR _szOperationName$7720[ebp]
	push	eax
	lea	ecx, DWORD PTR _szCoreMessage$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 453  :       if ( lpTask->nOperIdx > 0 )

	mov	edx, DWORD PTR _lpTask$[ebp]
	movsx	eax, WORD PTR [edx+58]
	test	eax, eax
	jle	$L7728

; 455  :          zSHORT k;
; 456  :          for ( k = lpTask->nOperIdx - 1; k > -1 ; k-- )

	mov	ecx, DWORD PTR _lpTask$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	sub	edx, 1
	mov	WORD PTR _k$7725[ebp], dx
	jmp	SHORT $L7726
$L7727:
	mov	ax, WORD PTR _k$7725[ebp]
	sub	ax, 1
	mov	WORD PTR _k$7725[ebp], ax
$L7726:
	movsx	ecx, WORD PTR _k$7725[ebp]
	cmp	ecx, -1
	jle	$L7728

; 458  :             zstrcat( szCoreMessage, ", " );

	push	OFFSET FLAT:??_C@_02GIEM@?0?5?$AA@	; `string'
	lea	edx, DWORD PTR _szCoreMessage$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 459  :             szOperationName[ 0 ] = 0;

	mov	BYTE PTR _szOperationName$7720[ebp], 0

; 460  :             SysGetOperationMessage( szOperationName, lpTask->nOper[ k ], 31 );

	push	31					; 0000001fH
	movsx	eax, WORD PTR _k$7725[ebp]
	mov	ecx, DWORD PTR _lpTask$[ebp]
	movsx	edx, WORD PTR [ecx+eax*2+60]
	push	edx
	lea	eax, DWORD PTR _szOperationName$7720[ebp]
	push	eax
	call	_SysGetOperationMessage@12

; 461  :             if ( szOperationName[ 0 ] == 0 )

	movsx	ecx, BYTE PTR _szOperationName$7720[ebp]
	test	ecx, ecx
	jne	SHORT $L7730

; 463  :                szOperationName[ 0 ] = '(';

	mov	BYTE PTR _szOperationName$7720[ebp], 40	; 00000028H

; 464  :                zltoa( lpTask->nOper[ k ], &szOperationName[ 1 ] );

	push	10					; 0000000aH
	lea	edx, DWORD PTR _szOperationName$7720[ebp+1]
	push	edx
	movsx	eax, WORD PTR _k$7725[ebp]
	mov	ecx, DWORD PTR _lpTask$[ebp]
	movsx	edx, WORD PTR [ecx+eax*2+60]
	push	edx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 465  :                zstrcat( szOperationName, ") " );

	push	OFFSET FLAT:??_C@_02CEEM@?$CJ?5?$AA@	; `string'
	lea	eax, DWORD PTR _szOperationName$7720[ebp]
	push	eax
	call	_strcat
	add	esp, 8
$L7730:

; 467  : 
; 468  :             zstrcat( szCoreMessage, szOperationName );

	lea	ecx, DWORD PTR _szOperationName$7720[ebp]
	push	ecx
	lea	edx, DWORD PTR _szCoreMessage$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 469  :          }

	jmp	$L7727
$L7728:

; 472  : 
; 473  :    TraceLine( "IssueOE_Error:  %s  Severity: %d", szCoreMessage, nSeverity );

	movsx	eax, WORD PTR _nSeverity$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szCoreMessage$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CB@DILP@IssueOE_Error?3?5?5?$CFs?5?5Severity?3?5?$CFd@ ; `string'
	call	_TraceLine
	add	esp, 12					; 0000000cH

; 474  : 
; 475  :    if ( nSeverity > 16 )

	movsx	edx, WORD PTR _nSeverity$[ebp]
	cmp	edx, 16					; 00000010H
	jle	SHORT $L7732

; 476  :       return( IssueError( zView, nSeverity, nID, szCoreMessage ) );

	lea	eax, DWORD PTR _szCoreMessage$[ebp]
	push	eax
	mov	cx, WORD PTR _nID$[ebp]
	push	ecx
	mov	dx, WORD PTR _nSeverity$[ebp]
	push	edx
	mov	eax, DWORD PTR _zView$[ebp]
	push	eax
	call	_IssueError@16
	jmp	SHORT $L7692
$L7732:

; 477  : 
; 478  : #ifndef __DO_MSGOBJ__
; 479  :    if ( lpTask == 0 )
; 480  :       return( IssueError( zView, nSeverity, nID, szCoreMessage ) );
; 481  : #endif
; 482  : 
; 483  :    if ( nSeverity == 16 )

	movsx	ecx, WORD PTR _nSeverity$[ebp]
	cmp	ecx, 16					; 00000010H
	jne	SHORT $L7733

; 484  :       pchTitle = szlOE_SystemError;

	mov	edx, DWORD PTR _szlOE_SystemError
	mov	DWORD PTR _pchTitle$[ebp], edx

; 485  :    else

	jmp	SHORT $L7734
$L7733:

; 486  :       pchTitle = szlApplicationLogicError;

	mov	eax, DWORD PTR _szlApplicationLogicError
	mov	DWORD PTR _pchTitle$[ebp], eax
$L7734:

; 487  : 
; 488  :    zltoa( nID, cpcMsgId ); // convert message id to a string

	push	10					; 0000000aH
	lea	ecx, DWORD PTR _cpcMsgId$[ebp]
	push	ecx
	movsx	edx, WORD PTR _nID$[ebp]
	push	edx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 489  :    return( MessageSend( zView, cpcMsgId,
; 490  :                         szlApplicationLogicError,
; 491  :                         szCoreMessage,
; 492  :                         lMsgType + nSeverity, 0 ) );

	push	0
	movsx	eax, WORD PTR _nSeverity$[ebp]
	mov	ecx, DWORD PTR _lMsgType$[ebp]
	add	ecx, eax
	push	ecx
	lea	edx, DWORD PTR _szCoreMessage$[ebp]
	push	edx
	mov	eax, DWORD PTR _szlApplicationLogicError
	push	eax
	lea	ecx, DWORD PTR _cpcMsgId$[ebp]
	push	ecx
	mov	edx, DWORD PTR _zView$[ebp]
	push	edx
	call	_MessageSend@24
$L7692:

; 493  : }

	mov	esp, ebp
	pop	ebp
	ret	28					; 0000001cH
_IssueOE_Error@28 ENDP
_TEXT	ENDS
END
