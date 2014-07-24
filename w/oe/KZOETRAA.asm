	TITLE	C:\10C\A\oe\KZOETRAA.C
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
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@BCEK@Operation?5Counts?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03MFGH@?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01KMMP@?$CJ?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@DFEE@?0?5External?5calls?5?$CI?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NFJL@?$CJ?0?5Internal?5calls?5?$CI?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@CGPE@?5?5?5Total?5external?5calls?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@KCP@?5?5?5Total?5internal?5calls?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01PKAG@?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01PJCK@?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@KDOK@?5?5?5Start?5time?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@NABD@?5?5?5Stop?5?5time?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03CLEM@?$CB?$CB?$CB?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@BMJP@?5?5?5ERROR?5counting?5not?5active?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06ONKE@?$CInull?$CJ?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05COOJ@?5?$CL?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CG@GPIJ@?$CIoetr?$CJ?5Invalid?5?$CCnull?$CC?5TraceLine?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@JLBH@Error?5formatting?5message?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CE@NBGF@?$CFs?5?5?$CFd?5Repeat?5Lines?5?$CI?$CF4d?5thru?5?$CF4@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08HMCD@?$CFs?$CI?$CF4d?$CJ?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04GPCF@?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01PLJA@0?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01FCOA@?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CO@IMKJ@Entity?5Instance?5Display?3?5?$CFs?5?5for@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CF@LJIN@?5?5?5?5Cursor?5is?5NULL?5or?5Undefined?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04NCHB@?9?9?9?9?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@PFBD@?9?9?9?9?5Begin?5Entity?5Instance?5Path?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@CFEK@?9?9?9?9?5End?5?5?5Entity?5Instance?5Path?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CE@PFDL@Object?5Instance?5is?5NULL?5for?5enti@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DF@NKOO@Object?5Instance?5Display?5for?5View@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@MPLN@TraceAllAttributes?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07FGLN@?$FLDebug?$FN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@EKCK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_02IGCE@?5?$CK?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@LCOG@?$CFs?$HM?$DN?$DN?$DO?$CFs?$CFs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05JIPK@UNSET?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CB@CBND@?5?5?5Cursor?5for?5EntityInstance?5is?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04BAK@NULL?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@HKFH@Incremental?5Update?5Flags?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06DIKK@?5Start?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@FMNO@?$DO?$DO?$DOEntityInstance?5flags?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@JEBJ@?$DO?$DO?$DOEntityInstance?5is?5hidden?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@LNMA@?$DO?$DO?$DOEntityInstance?5is?5temporal?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@BKJC@?$DO?$DO?$DOEntityInstance?5has?5a?5previous@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@IEBF@?$DO?$DO?$DOEntityInstance?5is?5a?5previous?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CN@LKO@?$DO?$DO?$DOEntityInstance?5is?5a?5previous?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04NFIE@?5End?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01FKHJ@C?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01FLOP@I?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01PJM@D?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01FIAI@X?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01MHL@U?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@LAEI@?$DO?$DO?$DOEntityInstance?5Tag?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NLN@?$DO?$DO?$DOEntityInstance?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09BNLB@Selected?$CI?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01KMAE@?0?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_02CEEM@?$CJ?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@JCLK@Entity?5Key?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06FGLI@?$CFs?$CFs?$CFd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09GAAO@Blob?5Lth?$DN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@LHDO@EntityInstance?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@OIJE@?5?5?5?5?5?5?5is?5UNSET?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@GPAM@?5?5?5?5?5?5?5is?5NULL?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@MACG@?5?5?5?5?5?5?5level?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@HFNI@?5?5?5?5?5?5?5name?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09BLKP@EntityCsr?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@JBBB@?5?5?5?5?5?5?5hier?5?5?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@IGGG@View?5Cursor?5Info?5for?5Object?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NOMK@?5?5RootViewEntityCsr?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@MGJI@ViewCsr?5HierRootInstance?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@GPIA@ViewCsr?5HierInstance?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@PMGF@ViewCsr?5ViewParentInstance?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@IEPP@The?5number?5of?5entities?5is?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@KCNP@Entity?5number?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@JPIA@Subobject?5Information?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@JJEF@?$CK?$CKViewRootParentCsr?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@JICN@?$CK?$CKSubobjectRootCsr?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CD@IFKK@?$CK?$CKHierarchical?5number?5of?5root?5cs@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@IIKG@?$CK?$CKLastDescendentCsr?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@PHOL@?$CK?$CKLastDescHierNbr?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@BACN@?$CK?$CKViewParentEntityInstance?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@BFND@?$CK?$CKRootEntityInstance?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@EKEM@?4?4Recursive?5subobject?5info?4?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@PHCG@?5?5Level?5adjustment?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@LAFI@?$CK?$CKRecursive?5View?5Entity?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@HBPI@?5?5?5?5?5?5?5?5?5?5?5?5View?5Entity?5Csr?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@BAPJ@?5?5?5?5?5?5?5?5Parent?5EntityInstance?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CB@GMNE@?4?4End?5Recursive?5subobject?5info?4?4@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@PMND@?5?5?5?5?5?5ENTITY?5Name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@DCAF@?5?5?5?5?5?5Level?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@GKE@?5?5?5?5?5?5XML?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@JBPG@?5?5?5?5?5?5Parent?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@GBAH@?5?5?5?5?5?5Hier?5number?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@KNEH@?5?5?5?5?5?5Card?5min?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@CGKA@?5?5?5?5?5?5Card?5max?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@PJOH@?5?5?5?5?5?5Record?5size?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@FJIE@?5?5?5?5?5?5NonPersist?5size?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@LKPB@?5?5?5?5?5?5Max?5Attr?5lth?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@GEDJ@?5?5?5?5?5?5Lock?5Level?5?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@EFAL@?5?5?5?5?5?5Database?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@MADK@?5?5?5?5?5?5Server?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@HNBM@?5?5?5?5?5?5ECEOper?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@GFCH@?5?5?5?5?5?5Flags?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@EHJF@?5?5?5?5?5?5?5?5?5?5bCreate?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@IKMC@?5?5?5?5?5?5?5?5?5?5bDelete?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@FEP@?5?5?5?5?5?5?5?5?5?5bUpdate?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@MDEA@?5?5?5?5?5?5?5?5?5?5bInclude?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@CKHJ@?5?5?5?5?5?5?5?5?5?5bExclude?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@IPMG@?5?5?5?5?5?5?5?5?5?5bInclSrc?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@FPHI@?5?5?5?5?5?5?5?5?5?5bHidden?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@MJHL@?5?5?5?5?5?5?5?5?5?5bPDelete?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@JIDE@?5?5?5?5?5?5?5?5?5?5bPRestrict?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@HEIJ@?5?5?5?5?5?5?5?5?5?5bCheckRestrict?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@GEPE@?5?5?5?5?5?5?5?5?5?5bRecursiveSt?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@IJJN@?5?5?5?5?5?5?5?5?5?5bAutoCreate?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@GIKD@?5?5?5?5?5?5?5?5?5?5bDerived?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@NEKM@?5?5?5?5?5?5?5?5?5?5bDerivedPath?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@CJND@?5?5?5?5?5?5?5?5?5?5bGenkey?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@MIHI@?5?5?5?5?5?5?5?5?5?5bAttrInit?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@HMGK@?5?5?5?5?5?5?5?5?5?5bAttrOrder?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@BGPM@?5?5?5?5?5?5?5?5?5?5bAttrOrderChild?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@EIHD@?5?5?5?5?5?5?5?5?5?5bAutoSeq?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@FJK@?5?5?5?5?5?5?5?5?5?5bIncrLoad?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@LKPD@?5?5?5?5?5?5?5?5?5?5bFullPersist?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@JCAH@?5?5?5?5?5?5?5?5?5?5bSharesParRec?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@FNCH@?5?5?5?5?5?5?5?5?5?5bSharesChdRec?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@LKMA@?5?5?5?5?5?5?5?5?5?5bDupInstance?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@DNJM@?5?5?5?5?5?5?5?5?5?5bDupRel?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@NDAC@?5?5?5?5?5?5?5?5?5?5bDupRelPath?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@EHDI@?5?5?5?5?5?5?5?5?5?5bRelLink1?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@INHE@?5?5?5?5?5?5?5?5?5?5bCreateConstraint?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@OIDA@?5?5?5?5?5?5?5?5?5?5bDeleteConstraint?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@DFKA@?5?5?5?5?5?5?5?5?5?5bIncludeConstraint?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@JMIM@?5?5?5?5?5?5?5?5?5?5bExcludeConstraint?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@FHNN@?5?5?5?5?5?5?5?5?5?5bAcceptConstraint?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@KNIB@?5?5?5?5?5?5?5?5?5?5bCancelConstraint?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@EFAF@?5?5?5?5?5?5?5?5?5?5bRequiredChild?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@FDLA@?5?5?5?5?5?5?5?5?5?5bAutoLoadFromParent?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@MLNL@?5?5?5?5?5?5?5?5?5?5bContainsBlob?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@PBIN@?5?5?5?5?5?5?5?5?5?5bHasDB_Oper?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CA@IONI@?5?5?5?5?5?5?5?5?5?5?5?5?5?5ATTRIBUTE?5Name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@MDGA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Type?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@MGNC@?5?5?5?5?5?5?5?5?5?5?5?5?5?5ERTok?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@MLNA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Length?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BI@GFNN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Offset?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@KDCH@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Sequencing?5?$CD?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@KPKK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DerivedOper?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@DLKP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DerivedXPG?5?$DN?5YES?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@IFJP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DB?5Oper?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@JAEG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5FLAGS?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@KHFM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bPersist?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BG@DKJD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bKey?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@NOKP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bForeignKey?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@FHHF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bGenkey?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@JIKM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bRequired?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@CBNO@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bHidden?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@LDEK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bCaseSens?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@LGCD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bCrDate?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@NBKL@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bUpDate?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@NHFN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bUserID?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@FKAN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bAutoSeq?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@PBAD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bSequencingD?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@LHG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bNoUpdate?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@CCOP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bNoPersistUpd?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@CKGB@Tracing?5object?5definition?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CB@CFEK@Cancel?5Tracing?0?5lpViewOD?5is?5null@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@KCIO@Object?5def?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@JILM@Database?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@CMPB@OperLib?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@FKLF@OCEOper?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@NBGC@DBHandler?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@OCNH@GKHandler?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@GPKM@Entity?5Count?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@ODNG@Cache?5Number?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@JFJK@Lock?5Level?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@GOPE@Ent?5Lock?5Level?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07KJAP@Flags?3?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@GIEL@?5?5?5?5?5bHasDupInstance?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@CDON@?5?5?5?5?5bHasDupRel?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BF@GCH@?5?5?5?5?5bHasDerivedPath?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@KEGP@?5?5?5?5?5bActivateConstraint?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@JDBA@?5?5?5?5?5bActivateEmptyConstraint?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@JGMC@?5?5?5?5?5bCommitConstraint?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@HBIE@?5?5?5?5?5bDropOIConstraint?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@KIKL@?5?5?5?5?5bDeprecated?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CB@LDAB@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DATARECORD?5name?5?$DN?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@CKPF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5Type?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BL@EBND@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5ID?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CM@IFNM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5DATAFIELD?5Attrib@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@ED@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@BEFD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5type?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CA@IOJA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5length?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@PDA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5RELRECORD?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CA@ODKK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5cOwnerMember?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@EMCP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5name?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@JGCP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5ID?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@GFAF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?5name?51?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@MDKF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?51?5ID?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BO@KPD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?5name?52?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@LABL@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?52?5ID?5?$DN?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BP@JPEG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5RELFIELD?3?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CG@IJJG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Source?5enti@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CG@KJBN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Source?5attr@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CD@LEMB@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Rel?5entity?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CD@JEEK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Rel?5attrib?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CD@CMCO@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5name?5@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DA@FNCN@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Entity?5Str@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CP@DLAG@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Entity?5Ins@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06PADD@?5Empty?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CG@EHFN@CompareOI_ToOI?5?9?5Object?5type?5mis@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DE@HGD@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Src?5and?5Tg@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_szBlankLine
_DATA	SEGMENT
_szBlankLine DB	'                                                        '
	DB	'                        ', 00H
_DATA	ENDS
PUBLIC	_OperationCount@8
PUBLIC	_TraceLineI@8
PUBLIC	_TraceLineS@8
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_0BC@BCEK@Operation?5Counts?3?$AA@		; `string'
PUBLIC	??_C@_03MFGH@?5?5?5?$AA@			; `string'
PUBLIC	??_C@_01KMMP@?$CJ?$AA@				; `string'
PUBLIC	??_C@_0BD@DFEE@?0?5External?5calls?5?$CI?$AA@	; `string'
PUBLIC	??_C@_0BE@NFJL@?$CJ?0?5Internal?5calls?5?$CI?$AA@ ; `string'
PUBLIC	??_C@_0BK@CGPE@?5?5?5Total?5external?5calls?3?5?$AA@ ; `string'
PUBLIC	??_C@_0BK@KCP@?5?5?5Total?5internal?5calls?3?5?$AA@ ; `string'
PUBLIC	??_C@_01PKAG@?3?$AA@				; `string'
PUBLIC	??_C@_01PJCK@?4?$AA@				; `string'
PUBLIC	??_C@_0BA@KDOK@?5?5?5Start?5time?3?5?$AA@	; `string'
PUBLIC	??_C@_0BA@NABD@?5?5?5Stop?5?5time?3?5?$AA@	; `string'
PUBLIC	??_C@_03CLEM@?$CB?$CB?$CB?$AA@			; `string'
PUBLIC	??_C@_0BN@BMJP@?5?5?5ERROR?5counting?5not?5active?$AA@ ; `string'
EXTRN	_strcpy:NEAR
EXTRN	_strcat:NEAR
EXTRN	__imp__strncpy:NEAR
EXTRN	_fnAllocDataspace:NEAR
EXTRN	_g_pfnGetPtr:DWORD
EXTRN	__imp__atol:NEAR
EXTRN	__imp___ltoa:NEAR
EXTRN	_SysGetOperationMessage@12:NEAR
EXTRN	_SysGetDateTime@4:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\A\oe\KZOETRAA.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0BC@BCEK@Operation?5Counts?3?$AA@
_DATA	SEGMENT
??_C@_0BC@BCEK@Operation?5Counts?3?$AA@ DB 'Operation Counts:', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_03MFGH@?5?5?5?$AA@
_DATA	SEGMENT
??_C@_03MFGH@?5?5?5?$AA@ DB '   ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_01KMMP@?$CJ?$AA@
_DATA	SEGMENT
??_C@_01KMMP@?$CJ?$AA@ DB ')', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@DFEE@?0?5External?5calls?5?$CI?$AA@
_DATA	SEGMENT
??_C@_0BD@DFEE@?0?5External?5calls?5?$CI?$AA@ DB ', External calls (', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NFJL@?$CJ?0?5Internal?5calls?5?$CI?$AA@
_DATA	SEGMENT
??_C@_0BE@NFJL@?$CJ?0?5Internal?5calls?5?$CI?$AA@ DB '), Internal calls ('
	DB	00H						; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@CGPE@?5?5?5Total?5external?5calls?3?5?$AA@
_DATA	SEGMENT
??_C@_0BK@CGPE@?5?5?5Total?5external?5calls?3?5?$AA@ DB '   Total externa'
	DB	'l calls: ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@KCP@?5?5?5Total?5internal?5calls?3?5?$AA@
_DATA	SEGMENT
??_C@_0BK@KCP@?5?5?5Total?5internal?5calls?3?5?$AA@ DB '   Total internal'
	DB	' calls: ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_01PKAG@?3?$AA@
_DATA	SEGMENT
??_C@_01PKAG@?3?$AA@ DB ':', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_01PJCK@?4?$AA@
_DATA	SEGMENT
??_C@_01PJCK@?4?$AA@ DB '.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@KDOK@?5?5?5Start?5time?3?5?$AA@
_DATA	SEGMENT
??_C@_0BA@KDOK@?5?5?5Start?5time?3?5?$AA@ DB '   Start time: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@NABD@?5?5?5Stop?5?5time?3?5?$AA@
_DATA	SEGMENT
??_C@_0BA@NABD@?5?5?5Stop?5?5time?3?5?$AA@ DB '   Stop  time: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_03CLEM@?$CB?$CB?$CB?$AA@
_DATA	SEGMENT
??_C@_03CLEM@?$CB?$CB?$CB?$AA@ DB '!!!', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@BMJP@?5?5?5ERROR?5counting?5not?5active?$AA@
_DATA	SEGMENT
??_C@_0BN@BMJP@?5?5?5ERROR?5counting?5not?5active?$AA@ DB '   ERROR count'
	DB	'ing not active', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vTaskView$ = 8
_nOpt$ = 12
_lpTask$ = -24
_szMessage$ = -280
_lplCount1$ = -20
_lplCount2$ = -8
_lExternal$ = -16
_lInternal$ = -284
_lTime$ = -4
_nIdx$ = -12
_OperationCount@8 PROC NEAR

; 107  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H

; 108  :    LPTASK   lpTask;
; 109  :    zCHAR    szMessage[ 256 ];
; 110  :    zPLONG   lplCount1;
; 111  :    zPLONG   lplCount2;
; 112  :    zLONG    lExternal, lInternal, lTime;
; 113  :    zSHORT   nIdx;
; 114  : 
; 115  :    lpTask = zGETPTR( vTaskView->hTask );

	mov	eax, DWORD PTR _vTaskView$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTask$[ebp], eax

; 116  :    if ( lpTask == 0 )

	cmp	DWORD PTR _lpTask$[ebp], 0
	jne	SHORT $L7549

; 117  :       return;

	jmp	$L7539
$L7549:

; 118  : 
; 119  :    switch ( nOpt )
; 120  :    {

	movsx	edx, WORD PTR _nOpt$[ebp]
	mov	DWORD PTR -288+[ebp], edx
	cmp	DWORD PTR -288+[ebp], 11		; 0000000bH
	ja	$L7551
	mov	ecx, DWORD PTR -288+[ebp]
	xor	eax, eax
	mov	al, BYTE PTR $L8878[ecx]
	jmp	DWORD PTR $L8879[eax*4]
$L7554:

; 121  :       case 0:   // Display existing counts
; 122  :          lExternal = 0;

	mov	DWORD PTR _lExternal$[ebp], 0

; 123  :          lInternal = 0;

	mov	DWORD PTR _lInternal$[ebp], 0

; 124  :          lpTask->bTrace = TRUE;

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+443]
	or	al, 4
	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	DWORD PTR [ecx+443], eax

; 125  :          TraceLineS( "Operation Counts:", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BC@BCEK@Operation?5Counts?3?$AA@ ; `string'
	call	_TraceLineS@8

; 126  :          if ( lpTask->hCountBuf )

	mov	edx, DWORD PTR _lpTask$[ebp]
	cmp	DWORD PTR [edx+146], 0
	je	$L7557

; 128  :             lplCount1 = (zPLONG) zGETPTR( lpTask->hCountBuf );

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR [eax+146]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lplCount1$[ebp], eax

; 129  :             lplCount2 = lplCount1 + 1;

	mov	edx, DWORD PTR _lplCount1$[ebp]
	add	edx, 4
	mov	DWORD PTR _lplCount2$[ebp], edx

; 130  :             SysGetDateTime( szMessage );

	lea	eax, DWORD PTR _szMessage$[ebp]
	push	eax
	call	_SysGetDateTime@4

; 131  :             szMessage[ 16 ] = 0;

	mov	BYTE PTR _szMessage$[ebp+16], 0

; 132  :             *lplCount2 = zatol( szMessage + 8 ) + 100000000;

	lea	ecx, DWORD PTR _szMessage$[ebp+8]
	push	ecx
	call	DWORD PTR __imp__atol
	add	esp, 4
	add	eax, 100000000				; 05f5e100H
	mov	edx, DWORD PTR _lplCount2$[ebp]
	mov	DWORD PTR [edx], eax

; 133  :             lTime = *lplCount2 - *lplCount1;

	mov	eax, DWORD PTR _lplCount2$[ebp]
	mov	ecx, DWORD PTR _lplCount1$[ebp]
	mov	edx, DWORD PTR [eax]
	sub	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lTime$[ebp], edx

; 134  :             zstrcpy( szMessage, "   " );

	push	OFFSET FLAT:??_C@_03MFGH@?5?5?5?$AA@	; `string'
	lea	eax, DWORD PTR _szMessage$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 135  :             for ( nIdx = 1 ; nIdx < 450 ; nIdx++ )

	mov	WORD PTR _nIdx$[ebp], 1
	jmp	SHORT $L7561
$L7562:
	mov	cx, WORD PTR _nIdx$[ebp]
	add	cx, 1
	mov	WORD PTR _nIdx$[ebp], cx
$L7561:
	movsx	edx, WORD PTR _nIdx$[ebp]
	cmp	edx, 450				; 000001c2H
	jge	$L7563

; 137  :                lplCount1 += 2;

	mov	eax, DWORD PTR _lplCount1$[ebp]
	add	eax, 8
	mov	DWORD PTR _lplCount1$[ebp], eax

; 138  :                lplCount2 = lplCount1 + 1;

	mov	ecx, DWORD PTR _lplCount1$[ebp]
	add	ecx, 4
	mov	DWORD PTR _lplCount2$[ebp], ecx

; 139  :                if ( *lplCount1 || *lplCount2 )

	mov	edx, DWORD PTR _lplCount1$[ebp]
	cmp	DWORD PTR [edx], 0
	jne	SHORT $L7565
	mov	eax, DWORD PTR _lplCount2$[ebp]
	cmp	DWORD PTR [eax], 0
	je	$L7564
$L7565:

; 141  :                   lExternal += *lplCount1;

	mov	ecx, DWORD PTR _lplCount1$[ebp]
	mov	edx, DWORD PTR _lExternal$[ebp]
	add	edx, DWORD PTR [ecx]
	mov	DWORD PTR _lExternal$[ebp], edx

; 142  :                   lInternal += *lplCount2;

	mov	eax, DWORD PTR _lplCount2$[ebp]
	mov	ecx, DWORD PTR _lInternal$[ebp]
	add	ecx, DWORD PTR [eax]
	mov	DWORD PTR _lInternal$[ebp], ecx

; 143  :                   szMessage[ 3 ] = 0;

	mov	BYTE PTR _szMessage$[ebp+3], 0

; 144  :                   SysGetOperationMessage( &szMessage[ 3 ],
; 145  :                                   nIdx, 40 );

	push	40					; 00000028H
	movsx	edx, WORD PTR _nIdx$[ebp]
	push	edx
	lea	eax, DWORD PTR _szMessage$[ebp+3]
	push	eax
	call	_SysGetOperationMessage@12

; 146  :                   if ( szMessage[ 3 ] == 0 )

	movsx	ecx, BYTE PTR _szMessage$[ebp+3]
	test	ecx, ecx
	jne	SHORT $L7566

; 148  :                      szMessage[ 3 ] = '(';

	mov	BYTE PTR _szMessage$[ebp+3], 40		; 00000028H

; 149  :                      zltoa( nIdx, &szMessage[ 4 ] );

	push	10					; 0000000aH
	lea	edx, DWORD PTR _szMessage$[ebp+4]
	push	edx
	movsx	eax, WORD PTR _nIdx$[ebp]
	push	eax
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 150  :                      zstrcat( szMessage, ")" );

	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	lea	ecx, DWORD PTR _szMessage$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L7566:

; 152  : 
; 153  :                   zstrcat( szMessage, ", External calls (" );

	push	OFFSET FLAT:??_C@_0BD@DFEE@?0?5External?5calls?5?$CI?$AA@ ; `string'
	lea	edx, DWORD PTR _szMessage$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 154  :                   zltoa( *lplCount1, &szMessage[ 200 ] );

	push	10					; 0000000aH
	lea	eax, DWORD PTR _szMessage$[ebp+200]
	push	eax
	mov	ecx, DWORD PTR _lplCount1$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 155  :                   zstrcat( szMessage, &szMessage[ 200 ] );

	lea	eax, DWORD PTR _szMessage$[ebp+200]
	push	eax
	lea	ecx, DWORD PTR _szMessage$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 156  :                   zstrcat( szMessage, "), Internal calls (" );

	push	OFFSET FLAT:??_C@_0BE@NFJL@?$CJ?0?5Internal?5calls?5?$CI?$AA@ ; `string'
	lea	edx, DWORD PTR _szMessage$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 157  :                   zltoa( *lplCount2, &szMessage[ 200 ] );

	push	10					; 0000000aH
	lea	eax, DWORD PTR _szMessage$[ebp+200]
	push	eax
	mov	ecx, DWORD PTR _lplCount2$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 158  :                   zstrcat( szMessage, &szMessage[ 200 ] );

	lea	eax, DWORD PTR _szMessage$[ebp+200]
	push	eax
	lea	ecx, DWORD PTR _szMessage$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 159  :                   zstrcat( szMessage, ")" );

	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	lea	edx, DWORD PTR _szMessage$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 160  :                   TraceLineS( szMessage, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	eax, DWORD PTR _szMessage$[ebp]
	push	eax
	call	_TraceLineS@8
$L7564:

; 162  :             }

	jmp	$L7562
$L7563:

; 163  : 
; 164  :             TraceLineI( "   Total external calls: ", lExternal );

	mov	ecx, DWORD PTR _lExternal$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BK@CGPE@?5?5?5Total?5external?5calls?3?5?$AA@ ; `string'
	call	_TraceLineI@8

; 165  :             TraceLineI( "   Total internal calls: ", lInternal );

	mov	edx, DWORD PTR _lInternal$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BK@KCP@?5?5?5Total?5internal?5calls?3?5?$AA@ ; `string'
	call	_TraceLineI@8

; 166  :             lplCount1 = (zPLONG) zGETPTR( lpTask->hCountBuf );

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR [eax+146]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lplCount1$[ebp], eax

; 167  :             lplCount2 = lplCount1 + 1;

	mov	edx, DWORD PTR _lplCount1$[ebp]
	add	edx, 4
	mov	DWORD PTR _lplCount2$[ebp], edx

; 168  :             zltoa( *lplCount1, &szMessage[ 199 ] );

	push	10					; 0000000aH
	lea	eax, DWORD PTR _szMessage$[ebp+199]
	push	eax
	mov	ecx, DWORD PTR _lplCount1$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 169  :             zstrncpy( szMessage, &szMessage[ 200 ], 2 );

	push	2
	lea	eax, DWORD PTR _szMessage$[ebp+200]
	push	eax
	lea	ecx, DWORD PTR _szMessage$[ebp]
	push	ecx
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 170  :             zstrcpy( &szMessage[ 2 ], ":" );

	push	OFFSET FLAT:??_C@_01PKAG@?3?$AA@	; `string'
	lea	edx, DWORD PTR _szMessage$[ebp+2]
	push	edx
	call	_strcpy
	add	esp, 8

; 171  :             zstrncpy( &szMessage[ 3 ], &szMessage[ 202 ], 2 );

	push	2
	lea	eax, DWORD PTR _szMessage$[ebp+202]
	push	eax
	lea	ecx, DWORD PTR _szMessage$[ebp+3]
	push	ecx
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 172  :             zstrcpy( &szMessage[ 5 ], ":" );

	push	OFFSET FLAT:??_C@_01PKAG@?3?$AA@	; `string'
	lea	edx, DWORD PTR _szMessage$[ebp+5]
	push	edx
	call	_strcpy
	add	esp, 8

; 173  :             zstrncpy( &szMessage[ 6 ], &szMessage[ 204 ], 2 );

	push	2
	lea	eax, DWORD PTR _szMessage$[ebp+204]
	push	eax
	lea	ecx, DWORD PTR _szMessage$[ebp+6]
	push	ecx
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 174  :             zstrcpy( &szMessage[ 8 ], "." );

	push	OFFSET FLAT:??_C@_01PJCK@?4?$AA@	; `string'
	lea	edx, DWORD PTR _szMessage$[ebp+8]
	push	edx
	call	_strcpy
	add	esp, 8

; 175  :             zstrcpy( &szMessage[ 9 ], &szMessage[ 206 ] );

	lea	eax, DWORD PTR _szMessage$[ebp+206]
	push	eax
	lea	ecx, DWORD PTR _szMessage$[ebp+9]
	push	ecx
	call	_strcpy
	add	esp, 8

; 176  :             TraceLineS( "   Start time: ", szMessage );

	lea	edx, DWORD PTR _szMessage$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BA@KDOK@?5?5?5Start?5time?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 177  :             zltoa( *lplCount2, &szMessage[ 199 ] );

	push	10					; 0000000aH
	lea	eax, DWORD PTR _szMessage$[ebp+199]
	push	eax
	mov	ecx, DWORD PTR _lplCount2$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 178  :             zstrncpy( szMessage, &szMessage[ 200 ], 2 );

	push	2
	lea	eax, DWORD PTR _szMessage$[ebp+200]
	push	eax
	lea	ecx, DWORD PTR _szMessage$[ebp]
	push	ecx
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 179  :             zstrcpy( &szMessage[ 2 ], ":" );

	push	OFFSET FLAT:??_C@_01PKAG@?3?$AA@	; `string'
	lea	edx, DWORD PTR _szMessage$[ebp+2]
	push	edx
	call	_strcpy
	add	esp, 8

; 180  :             zstrncpy( &szMessage[ 3 ], &szMessage[ 202 ], 2 );

	push	2
	lea	eax, DWORD PTR _szMessage$[ebp+202]
	push	eax
	lea	ecx, DWORD PTR _szMessage$[ebp+3]
	push	ecx
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 181  :             zstrcpy( &szMessage[ 5 ], ":" );

	push	OFFSET FLAT:??_C@_01PKAG@?3?$AA@	; `string'
	lea	edx, DWORD PTR _szMessage$[ebp+5]
	push	edx
	call	_strcpy
	add	esp, 8

; 182  :             zstrncpy( &szMessage[ 6 ], &szMessage[ 204 ], 2 );

	push	2
	lea	eax, DWORD PTR _szMessage$[ebp+204]
	push	eax
	lea	ecx, DWORD PTR _szMessage$[ebp+6]
	push	ecx
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 183  :             zstrcpy( &szMessage[ 8 ], "." );

	push	OFFSET FLAT:??_C@_01PJCK@?4?$AA@	; `string'
	lea	edx, DWORD PTR _szMessage$[ebp+8]
	push	edx
	call	_strcpy
	add	esp, 8

; 184  :             zstrcpy( &szMessage[ 9 ], &szMessage[ 206 ] );

	lea	eax, DWORD PTR _szMessage$[ebp+206]
	push	eax
	lea	ecx, DWORD PTR _szMessage$[ebp+9]
	push	ecx
	call	_strcpy
	add	esp, 8

; 185  :             TraceLineS( "   Stop  time: ", szMessage );

	lea	edx, DWORD PTR _szMessage$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BA@NABD@?5?5?5Stop?5?5time?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 187  :          else

	jmp	SHORT $L7578
$L7557:

; 188  :             TraceLineS( "   ERROR counting not active", "!!!" );

	push	OFFSET FLAT:??_C@_03CLEM@?$CB?$CB?$CB?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BN@BMJP@?5?5?5ERROR?5counting?5not?5active?$AA@ ; `string'
	call	_TraceLineS@8
$L7578:

; 189  : 
; 190  :          break;

	jmp	$L7551
$L7581:

; 191  : 
; 192  :       case 1:    // Start counting
; 193  :       case 11:   // Start counting, disable trace
; 194  :          lpTask->bCount = TRUE;

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR [eax+443]
	or	ecx, 16					; 00000010H
	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	DWORD PTR [edx+443], ecx

; 195  :          if ( nOpt == 11 )

	movsx	eax, WORD PTR _nOpt$[ebp]
	cmp	eax, 11					; 0000000bH
	jne	SHORT $L7582

; 196  :             lpTask->bTrace = FALSE;

	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	edx, DWORD PTR [ecx+443]
	and	edx, -5					; fffffffbH
	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	DWORD PTR [eax+443], edx
$L7582:

; 197  : 
; 198  :          if ( lpTask->hCountBuf == 0 )

	mov	ecx, DWORD PTR _lpTask$[ebp]
	cmp	DWORD PTR [ecx+146], 0
	jne	SHORT $L7583

; 200  :             lpTask->hCountBuf = (zPCHAR) fnAllocDataspace( lpTask->hFirstDataHeader,
; 201  :                                                            4000, 1, 0, iCountBuf );

	push	10046					; 0000273eH
	push	0
	push	1
	push	4000					; 00000fa0H
	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+94]
	push	eax
	call	_fnAllocDataspace
	add	esp, 20					; 00000014H
	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	DWORD PTR [ecx+146], eax
$L7583:

; 203  : 
; 204  :          if ( lpTask->hCountBuf )

	mov	edx, DWORD PTR _lpTask$[ebp]
	cmp	DWORD PTR [edx+146], 0
	je	SHORT $L7585

; 206  :             lplCount1 = (zPLONG) zGETPTR( lpTask->hCountBuf );

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR [eax+146]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lplCount1$[ebp], eax

; 207  :             SysGetDateTime( szMessage );

	lea	edx, DWORD PTR _szMessage$[ebp]
	push	edx
	call	_SysGetDateTime@4

; 208  :             szMessage[ 16 ] = 0;

	mov	BYTE PTR _szMessage$[ebp+16], 0

; 209  :             *lplCount1 = zatol( szMessage + 8 ) + 100000000;

	lea	eax, DWORD PTR _szMessage$[ebp+8]
	push	eax
	call	DWORD PTR __imp__atol
	add	esp, 4
	add	eax, 100000000				; 05f5e100H
	mov	ecx, DWORD PTR _lplCount1$[ebp]
	mov	DWORD PTR [ecx], eax
$L7585:

; 211  : 
; 212  :          break;

	jmp	SHORT $L7551
$L7588:

; 213  : 
; 214  :       case 2:   // Stop  counting
; 215  :          lpTask->bCount = FALSE;

	mov	edx, DWORD PTR _lpTask$[ebp]
	mov	eax, DWORD PTR [edx+443]
	and	al, -17					; ffffffefH
	mov	ecx, DWORD PTR _lpTask$[ebp]
	mov	DWORD PTR [ecx+443], eax

; 216  :          break;

	jmp	SHORT $L7551
$L7589:

; 217  : 
; 218  :       case 3:   // Clear count buffer
; 219  :          if ( lpTask->hCountBuf )

	mov	edx, DWORD PTR _lpTask$[ebp]
	cmp	DWORD PTR [edx+146], 0
	je	SHORT $L7595

; 221  :             lplCount1 = (zPLONG) zGETPTR( lpTask->hCountBuf );

	mov	eax, DWORD PTR _lpTask$[ebp]
	mov	ecx, DWORD PTR [eax+146]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lplCount1$[ebp], eax

; 222  :             for ( nIdx = 0 ; nIdx < 450 ; nIdx++ )

	mov	WORD PTR _nIdx$[ebp], 0
	jmp	SHORT $L7593
$L7594:
	mov	dx, WORD PTR _nIdx$[ebp]
	add	dx, 1
	mov	WORD PTR _nIdx$[ebp], dx
$L7593:
	movsx	eax, WORD PTR _nIdx$[ebp]
	cmp	eax, 450				; 000001c2H
	jge	SHORT $L7595

; 224  :                *lplCount1 = 0;

	mov	ecx, DWORD PTR _lplCount1$[ebp]
	mov	DWORD PTR [ecx], 0

; 225  :                lplCount1++;

	mov	edx, DWORD PTR _lplCount1$[ebp]
	add	edx, 4
	mov	DWORD PTR _lplCount1$[ebp], edx

; 226  :                *lplCount1 = 0;

	mov	eax, DWORD PTR _lplCount1$[ebp]
	mov	DWORD PTR [eax], 0

; 227  :                lplCount1++;

	mov	ecx, DWORD PTR _lplCount1$[ebp]
	add	ecx, 4
	mov	DWORD PTR _lplCount1$[ebp], ecx

; 228  :             }

	jmp	SHORT $L7594
$L7595:
$L7551:
$L7539:

; 233  : 
; 234  :    return;
; 235  : }

	mov	esp, ebp
	pop	ebp
	ret	8
$L8879:
	DD	$L7554
	DD	$L7581
	DD	$L7588
	DD	$L7589
	DD	$L7551
$L8878:
	DB	0
	DB	1
	DB	2
	DB	3
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	1
_OperationCount@8 ENDP
_Title$ = 8
_lValue$ = 12
_szLong$ = -32
_TraceLineI@8 PROC NEAR

; 249  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 250  :    zCHAR szLong[ 32 ];
; 251  : 
; 252  :    zltoa( lValue, szLong );

	push	10					; 0000000aH
	lea	eax, DWORD PTR _szLong$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lValue$[ebp]
	push	ecx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 253  :    TraceLineS( Title, szLong );

	lea	edx, DWORD PTR _szLong$[ebp]
	push	edx
	mov	eax, DWORD PTR _Title$[ebp]
	push	eax
	call	_TraceLineS@8

; 254  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_TraceLineI@8 ENDP
_TEXT	ENDS
PUBLIC	_TraceLineX@8
_TEXT	SEGMENT
_Title$ = 8
_lValue$ = 12
_szHex$ = -16
_TraceLineX@8 PROC NEAR

; 268  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 269  :    zCHAR szHex[ 16 ];
; 270  : 
; 271  :    szHex[ 0 ] = '0';

	mov	BYTE PTR _szHex$[ebp], 48		; 00000030H

; 272  :    szHex[ 1 ] = 'x';

	mov	BYTE PTR _szHex$[ebp+1], 120		; 00000078H

; 273  :    zltox( lValue, szHex + 2 );

	push	16					; 00000010H
	lea	eax, DWORD PTR _szHex$[ebp+2]
	push	eax
	mov	ecx, DWORD PTR _lValue$[ebp]
	push	ecx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 274  :    TraceLineS( Title, szHex );

	lea	edx, DWORD PTR _szHex$[ebp]
	push	edx
	mov	eax, DWORD PTR _Title$[ebp]
	push	eax
	call	_TraceLineS@8

; 275  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_TraceLineX@8 ENDP
_TEXT	ENDS
PUBLIC	??_C@_06ONKE@?$CInull?$CJ?$AA@			; `string'
PUBLIC	??_C@_05COOJ@?5?$CL?5?5?5?$AA@			; `string'
PUBLIC	??_C@_0CG@GPIJ@?$CIoetr?$CJ?5Invalid?5?$CCnull?$CC?5TraceLine?5@ ; `string'
EXTRN	_SysMessageList@4:NEAR
EXTRN	_strlen:NEAR
EXTRN	__imp__strrchr:NEAR
EXTRN	_g_hAnchorBlock:DWORD
;	COMDAT ??_C@_06ONKE@?$CInull?$CJ?$AA@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_06ONKE@?$CInull?$CJ?$AA@ DB '(null)', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_05COOJ@?5?$CL?5?5?5?$AA@
_DATA	SEGMENT
??_C@_05COOJ@?5?$CL?5?5?5?$AA@ DB ' +   ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CG@GPIJ@?$CIoetr?$CJ?5Invalid?5?$CCnull?$CC?5TraceLine?5@
_DATA	SEGMENT
??_C@_0CG@GPIJ@?$CIoetr?$CJ?5Invalid?5?$CCnull?$CC?5TraceLine?5@ DB '(oet'
	DB	'r) Invalid "null" TraceLine title', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_Title$ = 8
_String$ = 12
_szMessage$ = -256
_nTitleLth$7616 = -260
_nStringLth$7617 = -264
_nLth$7625 = -276
_nMsgOffset$7626 = -268
_pch$7627 = -272
_nVacant$7628 = -280
_TraceLineS@8 PROC NEAR

; 289  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 280				; 00000118H

; 290  :    zCHAR szMessage[ zMAX_MSG_LTH + 1 ];
; 291  : 
; 292  :    if ( g_hAnchorBlock == 0 )

	cmp	DWORD PTR _g_hAnchorBlock, 0
	jne	SHORT $L7614

; 293  :       return;

	jmp	$L7612
$L7614:

; 294  : 
; 295  :    if ( Title )

	cmp	DWORD PTR _Title$[ebp], 0
	je	$L7615

; 297  :       int  nTitleLth = zstrlen( Title );

	mov	eax, DWORD PTR _Title$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _nTitleLth$7616[ebp], eax

; 298  :       int  nStringLth;
; 299  : 
; 300  :       if ( String )

	cmp	DWORD PTR _String$[ebp], 0
	je	SHORT $L7618

; 301  :          nStringLth = zstrlen( String );

	mov	ecx, DWORD PTR _String$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _nStringLth$7617[ebp], eax

; 302  :       else

	jmp	SHORT $L7619
$L7618:

; 303  :          nStringLth = 6;   // for "(null)"

	mov	DWORD PTR _nStringLth$7617[ebp], 6
$L7619:

; 304  : 
; 305  :       // The common case is that everything fits nicely ... so take care of
; 306  :       // it right away.
; 307  :       if ( nTitleLth + nStringLth < zMAX_MSG_LTH )

	mov	edx, DWORD PTR _nTitleLth$7616[ebp]
	add	edx, DWORD PTR _nStringLth$7617[ebp]
	cmp	edx, 255				; 000000ffH
	jge	SHORT $L7620

; 309  :          zstrcpy( szMessage, Title );

	mov	eax, DWORD PTR _Title$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szMessage$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 310  :          if ( String )

	cmp	DWORD PTR _String$[ebp], 0
	je	SHORT $L7621

; 311  :             zstrcpy( szMessage + nTitleLth, String );

	mov	edx, DWORD PTR _String$[ebp]
	push	edx
	mov	eax, DWORD PTR _nTitleLth$7616[ebp]
	lea	ecx, DWORD PTR _szMessage$[ebp+eax]
	push	ecx
	call	_strcpy
	add	esp, 8

; 312  :          else

	jmp	SHORT $L7622
$L7621:

; 313  :             zstrcpy( szMessage + nTitleLth, "(null)" );

	push	OFFSET FLAT:??_C@_06ONKE@?$CInull?$CJ?$AA@ ; `string'
	mov	edx, DWORD PTR _nTitleLth$7616[ebp]
	lea	eax, DWORD PTR _szMessage$[ebp+edx]
	push	eax
	call	_strcpy
	add	esp, 8
$L7622:

; 315  :       else

	jmp	$L7643
$L7620:

; 317  :          // If we get to this code, our message exceeds the amount of
; 318  :          // memory allocated for szMessage ... so we try to nicely break
; 319  :          // up the message.
; 320  : 
; 321  :          int    nLth = 0;           // amount sent so far

	mov	DWORD PTR _nLth$7625[ebp], 0

; 322  :          int    nMsgOffset = 0;     // amount of szMessage currently loaded

	mov	DWORD PTR _nMsgOffset$7626[ebp], 0
$L7630:

; 323  :          zPCHAR pch;
; 324  :          int    nVacant;
; 325  : 
; 326  :          while ( nLth < nTitleLth )

	mov	ecx, DWORD PTR _nLth$7625[ebp]
	cmp	ecx, DWORD PTR _nTitleLth$7616[ebp]
	jge	$L7631

; 328  :             nVacant = zMAX_MSG_LTH - nMsgOffset;

	mov	edx, 255				; 000000ffH
	sub	edx, DWORD PTR _nMsgOffset$7626[ebp]
	mov	DWORD PTR _nVacant$7628[ebp], edx

; 329  :             if ( nVacant > nTitleLth - nLth )  // fit rest of title?

	mov	eax, DWORD PTR _nTitleLth$7616[ebp]
	sub	eax, DWORD PTR _nLth$7625[ebp]
	cmp	DWORD PTR _nVacant$7628[ebp], eax
	jle	SHORT $L7632

; 331  :                zstrcpy( szMessage + nMsgOffset, Title + nLth );

	mov	ecx, DWORD PTR _Title$[ebp]
	add	ecx, DWORD PTR _nLth$7625[ebp]
	push	ecx
	mov	edx, DWORD PTR _nMsgOffset$7626[ebp]
	lea	eax, DWORD PTR _szMessage$[ebp+edx]
	push	eax
	call	_strcpy
	add	esp, 8

; 332  :                nVacant -= (nTitleLth - nLth);

	mov	ecx, DWORD PTR _nTitleLth$7616[ebp]
	sub	ecx, DWORD PTR _nLth$7625[ebp]
	mov	edx, DWORD PTR _nVacant$7628[ebp]
	sub	edx, ecx
	mov	DWORD PTR _nVacant$7628[ebp], edx

; 333  :                nMsgOffset += nTitleLth - nLth;

	mov	eax, DWORD PTR _nTitleLth$7616[ebp]
	sub	eax, DWORD PTR _nLth$7625[ebp]
	mov	ecx, DWORD PTR _nMsgOffset$7626[ebp]
	add	ecx, eax
	mov	DWORD PTR _nMsgOffset$7626[ebp], ecx

; 334  :                nLth = nTitleLth;

	mov	edx, DWORD PTR _nTitleLth$7616[ebp]
	mov	DWORD PTR _nLth$7625[ebp], edx

; 336  :             else

	jmp	$L7633
$L7632:

; 338  :                // fit as much of title as possible into szMessage using
; 339  :                // commas and spaces to break the message if possible
; 340  :                zstrncpy( szMessage + nMsgOffset, Title + nLth, nVacant );

	mov	eax, DWORD PTR _nVacant$7628[ebp]
	push	eax
	mov	ecx, DWORD PTR _Title$[ebp]
	add	ecx, DWORD PTR _nLth$7625[ebp]
	push	ecx
	mov	edx, DWORD PTR _nMsgOffset$7626[ebp]
	lea	eax, DWORD PTR _szMessage$[ebp+edx]
	push	eax
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 341  :                szMessage[ zMAX_MSG_LTH ] = 0;

	mov	BYTE PTR _szMessage$[ebp+255], 0

; 342  : 
; 343  :                pch = zstrrchr( szMessage, ',' );

	push	44					; 0000002cH
	lea	ecx, DWORD PTR _szMessage$[ebp]
	push	ecx
	call	DWORD PTR __imp__strrchr
	add	esp, 8
	mov	DWORD PTR _pch$7627[ebp], eax

; 344  :                if ( pch > szMessage + 5 )

	lea	edx, DWORD PTR _szMessage$[ebp+5]
	cmp	DWORD PTR _pch$7627[ebp], edx
	jbe	SHORT $L7634

; 346  :                   pch++;

	mov	eax, DWORD PTR _pch$7627[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7627[ebp], eax

; 347  :                   *pch = 0;

	mov	ecx, DWORD PTR _pch$7627[ebp]
	mov	BYTE PTR [ecx], 0

; 348  :                   nLth += (pch - (zPCHAR) szMessage) - nMsgOffset;

	mov	edx, DWORD PTR _pch$7627[ebp]
	lea	eax, DWORD PTR _szMessage$[ebp]
	sub	edx, eax
	sub	edx, DWORD PTR _nMsgOffset$7626[ebp]
	mov	ecx, DWORD PTR _nLth$7625[ebp]
	add	ecx, edx
	mov	DWORD PTR _nLth$7625[ebp], ecx

; 350  :                else

	jmp	SHORT $L7639
$L7634:

; 352  :                   pch = zstrrchr( szMessage, ' ' );

	push	32					; 00000020H
	lea	edx, DWORD PTR _szMessage$[ebp]
	push	edx
	call	DWORD PTR __imp__strrchr
	add	esp, 8
	mov	DWORD PTR _pch$7627[ebp], eax

; 353  :                   if ( pch > szMessage + 5 )

	lea	eax, DWORD PTR _szMessage$[ebp+5]
	cmp	DWORD PTR _pch$7627[ebp], eax
	jbe	SHORT $L7637

; 355  :                      pch++;

	mov	ecx, DWORD PTR _pch$7627[ebp]
	add	ecx, 1
	mov	DWORD PTR _pch$7627[ebp], ecx

; 356  :                      *pch = 0;

	mov	edx, DWORD PTR _pch$7627[ebp]
	mov	BYTE PTR [edx], 0

; 357  :                      nLth += (pch - (zPCHAR) szMessage) - nMsgOffset;

	mov	eax, DWORD PTR _pch$7627[ebp]
	lea	ecx, DWORD PTR _szMessage$[ebp]
	sub	eax, ecx
	sub	eax, DWORD PTR _nMsgOffset$7626[ebp]
	mov	edx, DWORD PTR _nLth$7625[ebp]
	add	edx, eax
	mov	DWORD PTR _nLth$7625[ebp], edx

; 359  :                   else

	jmp	SHORT $L7639
$L7637:

; 360  :                      nLth += nVacant;

	mov	eax, DWORD PTR _nLth$7625[ebp]
	add	eax, DWORD PTR _nVacant$7628[ebp]
	mov	DWORD PTR _nLth$7625[ebp], eax
$L7639:

; 362  : 
; 363  :                SysMessageList( szMessage );

	lea	ecx, DWORD PTR _szMessage$[ebp]
	push	ecx
	call	_SysMessageList@4

; 364  :                zstrcpy( szMessage, " +   " );

	push	OFFSET FLAT:??_C@_05COOJ@?5?$CL?5?5?5?$AA@ ; `string'
	lea	edx, DWORD PTR _szMessage$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 365  :                nMsgOffset = 5;

	mov	DWORD PTR _nMsgOffset$7626[ebp], 5
$L7633:

; 367  :          }

	jmp	$L7630
$L7631:

; 368  : 
; 369  :          nLth = 0;

	mov	DWORD PTR _nLth$7625[ebp], 0
$L7642:

; 370  :          while ( nLth < nStringLth )

	mov	eax, DWORD PTR _nLth$7625[ebp]
	cmp	eax, DWORD PTR _nStringLth$7617[ebp]
	jge	$L7643

; 372  :             nVacant = zMAX_MSG_LTH - nMsgOffset;

	mov	ecx, 255				; 000000ffH
	sub	ecx, DWORD PTR _nMsgOffset$7626[ebp]
	mov	DWORD PTR _nVacant$7628[ebp], ecx

; 373  :             if ( nVacant > nStringLth - nLth )  // fit rest of string?

	mov	edx, DWORD PTR _nStringLth$7617[ebp]
	sub	edx, DWORD PTR _nLth$7625[ebp]
	cmp	DWORD PTR _nVacant$7628[ebp], edx
	jle	SHORT $L7644

; 375  :                zstrcpy( szMessage + nMsgOffset, String + nLth );

	mov	eax, DWORD PTR _String$[ebp]
	add	eax, DWORD PTR _nLth$7625[ebp]
	push	eax
	mov	ecx, DWORD PTR _nMsgOffset$7626[ebp]
	lea	edx, DWORD PTR _szMessage$[ebp+ecx]
	push	edx
	call	_strcpy
	add	esp, 8

; 376  :                nVacant -= (nStringLth - nLth);

	mov	eax, DWORD PTR _nStringLth$7617[ebp]
	sub	eax, DWORD PTR _nLth$7625[ebp]
	mov	ecx, DWORD PTR _nVacant$7628[ebp]
	sub	ecx, eax
	mov	DWORD PTR _nVacant$7628[ebp], ecx

; 377  :                nMsgOffset += nStringLth - nLth;

	mov	edx, DWORD PTR _nStringLth$7617[ebp]
	sub	edx, DWORD PTR _nLth$7625[ebp]
	mov	eax, DWORD PTR _nMsgOffset$7626[ebp]
	add	eax, edx
	mov	DWORD PTR _nMsgOffset$7626[ebp], eax

; 378  :                nLth = nStringLth;

	mov	ecx, DWORD PTR _nStringLth$7617[ebp]
	mov	DWORD PTR _nLth$7625[ebp], ecx

; 380  :             else

	jmp	$L7645
$L7644:

; 382  :                // fit as much of title as possible into szMessage using
; 383  :                // commas and spaces to break the message if possible
; 384  :                zstrncpy( szMessage + nMsgOffset, String + nLth, nVacant );

	mov	edx, DWORD PTR _nVacant$7628[ebp]
	push	edx
	mov	eax, DWORD PTR _String$[ebp]
	add	eax, DWORD PTR _nLth$7625[ebp]
	push	eax
	mov	ecx, DWORD PTR _nMsgOffset$7626[ebp]
	lea	edx, DWORD PTR _szMessage$[ebp+ecx]
	push	edx
	call	DWORD PTR __imp__strncpy
	add	esp, 12					; 0000000cH

; 385  :                szMessage[ zMAX_MSG_LTH ] = 0;

	mov	BYTE PTR _szMessage$[ebp+255], 0

; 386  : 
; 387  :                pch = zstrrchr( szMessage, ',' );

	push	44					; 0000002cH
	lea	eax, DWORD PTR _szMessage$[ebp]
	push	eax
	call	DWORD PTR __imp__strrchr
	add	esp, 8
	mov	DWORD PTR _pch$7627[ebp], eax

; 388  :                if ( pch > szMessage + 5 )

	lea	ecx, DWORD PTR _szMessage$[ebp+5]
	cmp	DWORD PTR _pch$7627[ebp], ecx
	jbe	SHORT $L7646

; 390  :                   pch++;

	mov	edx, DWORD PTR _pch$7627[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$7627[ebp], edx

; 391  :                   *pch = 0;

	mov	eax, DWORD PTR _pch$7627[ebp]
	mov	BYTE PTR [eax], 0

; 392  :                   nLth += (pch - (zPCHAR) szMessage) - nMsgOffset;

	mov	ecx, DWORD PTR _pch$7627[ebp]
	lea	edx, DWORD PTR _szMessage$[ebp]
	sub	ecx, edx
	sub	ecx, DWORD PTR _nMsgOffset$7626[ebp]
	mov	eax, DWORD PTR _nLth$7625[ebp]
	add	eax, ecx
	mov	DWORD PTR _nLth$7625[ebp], eax

; 394  :                else

	jmp	SHORT $L7651
$L7646:

; 396  :                   pch = zstrrchr( szMessage, ' ' );

	push	32					; 00000020H
	lea	ecx, DWORD PTR _szMessage$[ebp]
	push	ecx
	call	DWORD PTR __imp__strrchr
	add	esp, 8
	mov	DWORD PTR _pch$7627[ebp], eax

; 397  :                   if ( pch > szMessage + 5 )

	lea	edx, DWORD PTR _szMessage$[ebp+5]
	cmp	DWORD PTR _pch$7627[ebp], edx
	jbe	SHORT $L7649

; 399  :                      pch++;

	mov	eax, DWORD PTR _pch$7627[ebp]
	add	eax, 1
	mov	DWORD PTR _pch$7627[ebp], eax

; 400  :                      *pch = 0;

	mov	ecx, DWORD PTR _pch$7627[ebp]
	mov	BYTE PTR [ecx], 0

; 401  :                      nLth += (pch - (zPCHAR) szMessage) - nMsgOffset;

	mov	edx, DWORD PTR _pch$7627[ebp]
	lea	eax, DWORD PTR _szMessage$[ebp]
	sub	edx, eax
	sub	edx, DWORD PTR _nMsgOffset$7626[ebp]
	mov	ecx, DWORD PTR _nLth$7625[ebp]
	add	ecx, edx
	mov	DWORD PTR _nLth$7625[ebp], ecx

; 403  :                   else

	jmp	SHORT $L7651
$L7649:

; 404  :                      nLth += nVacant;

	mov	edx, DWORD PTR _nLth$7625[ebp]
	add	edx, DWORD PTR _nVacant$7628[ebp]
	mov	DWORD PTR _nLth$7625[ebp], edx
$L7651:

; 406  : 
; 407  :                SysMessageList( szMessage );

	lea	eax, DWORD PTR _szMessage$[ebp]
	push	eax
	call	_SysMessageList@4

; 408  :                zstrcpy( szMessage, " +   " );

	push	OFFSET FLAT:??_C@_05COOJ@?5?$CL?5?5?5?$AA@ ; `string'
	lea	ecx, DWORD PTR _szMessage$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 409  :                nMsgOffset = 5;

	mov	DWORD PTR _nMsgOffset$7626[ebp], 5
$L7645:

; 411  :          }

	jmp	$L7642
$L7643:

; 414  :    else

	jmp	SHORT $L7652
$L7615:

; 416  :       zstrcpy( szMessage, "(oetr) Invalid \"null\" TraceLine title" );

	push	OFFSET FLAT:??_C@_0CG@GPIJ@?$CIoetr?$CJ?5Invalid?5?$CCnull?$CC?5TraceLine?5@ ; `string'
	lea	edx, DWORD PTR _szMessage$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8
$L7652:

; 418  : 
; 419  :    SysMessageList( szMessage );

	lea	eax, DWORD PTR _szMessage$[ebp]
	push	eax
	call	_SysMessageList@4
$L7612:

; 420  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_TraceLineS@8 ENDP
_TEXT	ENDS
PUBLIC	_TraceLine
PUBLIC	??_C@_0BL@JLBH@Error?5formatting?5message?3?5?$AA@ ; `string'
EXTRN	__imp___vsnprintf:NEAR
EXTRN	__chkstk:NEAR
;	COMDAT ??_C@_0BL@JLBH@Error?5formatting?5message?3?5?$AA@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0BL@JLBH@Error?5formatting?5message?3?5?$AA@ DB 'Error formatting m'
	DB	'essage: ', 00H				; `string'
_DATA	ENDS
_TEXT	SEGMENT
_cpcFormat$ = 8
_nBufCnt$ = -65544
_szBuffer$ = -65536
_args$ = -65540
_TraceLine PROC NEAR

; 438  : {

	push	ebp
	mov	ebp, esp
	mov	eax, 65544				; 00010008H
	call	__chkstk

; 439  :    short   nBufCnt;
; 440  :    zCHAR   szBuffer[ 65534 ];
; 441  :    va_list args;
; 442  : 
; 443  :    va_start( args, cpcFormat );

	lea	eax, DWORD PTR _cpcFormat$[ebp+4]
	mov	DWORD PTR _args$[ebp], eax

; 444  : 
; 445  :    nBufCnt = _vsnprintf( szBuffer, _countof( szBuffer ), cpcFormat, args );

	mov	ecx, DWORD PTR _args$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcFormat$[ebp]
	push	edx
	push	65534					; 0000fffeH
	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	call	DWORD PTR __imp___vsnprintf
	add	esp, 16					; 00000010H
	mov	WORD PTR _nBufCnt$[ebp], ax

; 446  : 
; 447  :    // was there an error? was the expanded string too long?
; 448  :    if ( nBufCnt >= 0 )

	movsx	ecx, WORD PTR _nBufCnt$[ebp]
	test	ecx, ecx
	jl	SHORT $L7663

; 449  :       TraceLineS( szBuffer, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	call	_TraceLineS@8

; 450  :    else

	jmp	SHORT $L7664
$L7663:

; 451  :       TraceLineS( "Error formatting message: ", cpcFormat );

	mov	eax, DWORD PTR _cpcFormat$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BL@JLBH@Error?5formatting?5message?3?5?$AA@ ; `string'
	call	_TraceLineS@8
$L7664:

; 452  : 
; 453  :    va_end( args );

	mov	DWORD PTR _args$[ebp], 0

; 454  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_TraceLine ENDP
_TEXT	ENDS
PUBLIC	_TraceBuffer@12
PUBLIC	??_C@_0CE@NBGF@?$CFs?5?5?$CFd?5Repeat?5Lines?5?$CI?$CF4d?5thru?5?$CF4@ ; `string'
PUBLIC	??_C@_08HMCD@?$CFs?$CI?$CF4d?$CJ?5?$AA@		; `string'
PUBLIC	??_C@_04GPCF@?5?5?5?5?$AA@			; `string'
PUBLIC	??_C@_01PLJA@0?$AA@				; `string'
PUBLIC	??_C@_01FCOA@?5?$AA@				; `string'
EXTRN	__imp__sprintf:NEAR
;	COMDAT ??_C@_0CE@NBGF@?$CFs?5?5?$CFd?5Repeat?5Lines?5?$CI?$CF4d?5thru?5?$CF4@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0CE@NBGF@?$CFs?5?5?$CFd?5Repeat?5Lines?5?$CI?$CF4d?5thru?5?$CF4@ DB '%'
	DB	's  %d Repeat Lines (%4d thru %4d) ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08HMCD@?$CFs?$CI?$CF4d?$CJ?5?$AA@
_DATA	SEGMENT
??_C@_08HMCD@?$CFs?$CI?$CF4d?$CJ?5?$AA@ DB '%s(%4d) ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_04GPCF@?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_04GPCF@?5?5?5?5?$AA@ DB '    ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_01PLJA@0?$AA@
_DATA	SEGMENT
??_C@_01PLJA@0?$AA@ DB '0', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_01FCOA@?5?$AA@
_DATA	SEGMENT
??_C@_01FCOA@?5?$AA@ DB ' ', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_cpcPrefix$ = 8
_pvBuffer$ = 12
_ulLth$ = 16
_cpcBuffer$ = -264
_szHex$ = -524
_szAscii$ = -260
_sz$ = -780
_ulPos$ = -268
_n$ = -788
_ulBlankLines$ = -4
_uLongestStr$ = -784
_TraceBuffer@12 PROC NEAR

; 468  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 788				; 00000314H
	push	esi

; 469  :    zCPCHAR cpcBuffer = (zCPCHAR) pvBuffer;

	mov	eax, DWORD PTR _pvBuffer$[ebp]
	mov	DWORD PTR _cpcBuffer$[ebp], eax

; 470  :    zCHAR   szHex[ 256 ];
; 471  :    zCHAR   szAscii[ 256 ];
; 472  :    zCHAR   sz[ 256 ];
; 473  :    zULONG  ulPos;
; 474  :    zULONG  n;
; 475  :    zULONG  ulBlankLines;
; 476  :    zUSHORT uLongestStr = 0;

	mov	WORD PTR _uLongestStr$[ebp], 0

; 477  : 
; 478  :    // szHex is a buffer containing the prefix and the hex representation of
; 479  :    // 16 bytes from the buffer.  szAscii is a buffer containing the ASCII
; 480  :    // representation of those same 16 bytes.
; 481  : 
; 482  :    szHex[ 0 ]   = 0;

	mov	BYTE PTR _szHex$[ebp], 0

; 483  :    szAscii[ 0 ] = 0;

	mov	BYTE PTR _szAscii$[ebp], 0

; 484  : 
; 485  :    // Loop through each byte in the buffer and display a block of 16 bytes
; 486  :    // on each line in the trace window.
; 487  :    for ( ulPos = 0; ulPos < ulLth; ulPos++ )

	mov	DWORD PTR _ulPos$[ebp], 0
	jmp	SHORT $L7683
$L7684:
	mov	ecx, DWORD PTR _ulPos$[ebp]
	add	ecx, 1
	mov	DWORD PTR _ulPos$[ebp], ecx
$L7683:
	mov	edx, DWORD PTR _ulPos$[ebp]
	cmp	edx, DWORD PTR _ulLth$[ebp]
	jae	$L7685

; 489  :       // If the index is a multiple of 16, then trace the szHex and szAscii
; 490  :       // buffers (if they aren't empty) and reset them.
; 491  :       if ( ulPos % 16 == 0 )

	mov	eax, DWORD PTR _ulPos$[ebp]
	xor	edx, edx
	mov	ecx, 16					; 00000010H
	div	ecx
	test	edx, edx
	jne	$L7686

; 493  :          if ( szHex[ 0 ] )

	movsx	edx, BYTE PTR _szHex$[ebp]
	test	edx, edx
	je	SHORT $L7688

; 495  :             TraceLineS( szHex, szAscii );

	lea	eax, DWORD PTR _szAscii$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szHex$[ebp]
	push	ecx
	call	_TraceLineS@8

; 496  : 
; 497  :             // Keep track of the longest hex string.
; 498  :             if ( uLongestStr < zstrlen( szHex ) )

	mov	esi, DWORD PTR _uLongestStr$[ebp]
	and	esi, 65535				; 0000ffffH
	lea	edx, DWORD PTR _szHex$[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	cmp	esi, eax
	jae	SHORT $L7688

; 499  :                uLongestStr = zstrlen( szHex );

	lea	eax, DWORD PTR _szHex$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	WORD PTR _uLongestStr$[ebp], ax
$L7688:

; 501  : 
; 502  :          // Check for long string of same characters.
; 503  :          for ( n = ulPos; n < ulLth; n++ )

	mov	ecx, DWORD PTR _ulPos$[ebp]
	mov	DWORD PTR _n$[ebp], ecx
	jmp	SHORT $L7689
$L7690:
	mov	edx, DWORD PTR _n$[ebp]
	add	edx, 1
	mov	DWORD PTR _n$[ebp], edx
$L7689:
	mov	eax, DWORD PTR _n$[ebp]
	cmp	eax, DWORD PTR _ulLth$[ebp]
	jae	SHORT $L7691

; 505  :             if ( n > 0 && cpcBuffer[ n ] != cpcBuffer[ n - 1 ] )

	cmp	DWORD PTR _n$[ebp], 0
	jbe	SHORT $L7692
	mov	ecx, DWORD PTR _cpcBuffer$[ebp]
	add	ecx, DWORD PTR _n$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _cpcBuffer$[ebp]
	add	eax, DWORD PTR _n$[ebp]
	movsx	ecx, BYTE PTR [eax-1]
	cmp	edx, ecx
	je	SHORT $L7692

; 506  :                break;

	jmp	SHORT $L7691
$L7692:

; 507  :          }

	jmp	SHORT $L7690
$L7691:

; 508  : 
; 509  :          ulBlankLines = (n - ulPos) / 16;

	mov	edx, DWORD PTR _n$[ebp]
	sub	edx, DWORD PTR _ulPos$[ebp]
	shr	edx, 4
	mov	DWORD PTR _ulBlankLines$[ebp], edx

; 510  :          if ( ulBlankLines > 2 )

	cmp	DWORD PTR _ulBlankLines$[ebp], 2
	jbe	SHORT $L7693

; 512  :             n = ulBlankLines * 16;

	mov	eax, DWORD PTR _ulBlankLines$[ebp]
	shl	eax, 4
	mov	DWORD PTR _n$[ebp], eax

; 513  :             zsprintf( szHex, "%s  %d Repeat Lines (%4d thru %4d) ",
; 514  :                       cpcPrefix, ulBlankLines, ulPos, ulPos + n - 1 );

	mov	ecx, DWORD PTR _n$[ebp]
	mov	edx, DWORD PTR _ulPos$[ebp]
	lea	eax, DWORD PTR [edx+ecx-1]
	push	eax
	mov	ecx, DWORD PTR _ulPos$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ulBlankLines$[ebp]
	push	edx
	mov	eax, DWORD PTR _cpcPrefix$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0CE@NBGF@?$CFs?5?5?$CFd?5Repeat?5Lines?5?$CI?$CF4d?5thru?5?$CF4@ ; `string'
	lea	ecx, DWORD PTR _szHex$[ebp]
	push	ecx
	call	DWORD PTR __imp__sprintf
	add	esp, 24					; 00000018H

; 515  :             TraceLineS( szHex, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	edx, DWORD PTR _szHex$[ebp]
	push	edx
	call	_TraceLineS@8

; 516  :             ulPos += n;

	mov	eax, DWORD PTR _ulPos$[ebp]
	add	eax, DWORD PTR _n$[ebp]
	mov	DWORD PTR _ulPos$[ebp], eax
$L7693:

; 518  : 
; 519  :          // Add the offset counter to cpcPrefix.
; 520  :          zsprintf( szHex, "%s(%4d) ", cpcPrefix, ulPos );

	mov	ecx, DWORD PTR _ulPos$[ebp]
	push	ecx
	mov	edx, DWORD PTR _cpcPrefix$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_08HMCD@?$CFs?$CI?$CF4d?$CJ?5?$AA@ ; `string'
	lea	eax, DWORD PTR _szHex$[ebp]
	push	eax
	call	DWORD PTR __imp__sprintf
	add	esp, 16					; 00000010H

; 521  :          zstrcpy( szAscii, "    " );

	push	OFFSET FLAT:??_C@_04GPCF@?5?5?5?5?$AA@	; `string'
	lea	ecx, DWORD PTR _szAscii$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 523  :       else

	jmp	SHORT $L7698
$L7686:

; 524  :       if ( ulPos % 8 == 0 )

	mov	eax, DWORD PTR _ulPos$[ebp]
	xor	edx, edx
	mov	ecx, 8
	div	ecx
	test	edx, edx
	jne	SHORT $L7698

; 526  :          // The index is a multiple of 8, so add a few spaces to the buffers
; 527  :          // to make the trace a little easier to read.
; 528  :          zstrcat( szHex, "   " );

	push	OFFSET FLAT:??_C@_03MFGH@?5?5?5?$AA@	; `string'
	lea	edx, DWORD PTR _szHex$[ebp]
	push	edx
	call	_strcat
	add	esp, 8
$L7698:

; 531  : 
; 532  :       // Convert the current byte to a 2-char hex number.
; 533  :       zltox( (zLONG) cpcBuffer[ ulPos ], sz );

	push	16					; 00000010H
	lea	eax, DWORD PTR _sz$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcBuffer$[ebp]
	add	ecx, DWORD PTR _ulPos$[ebp]
	movsx	edx, BYTE PTR [ecx]
	push	edx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 534  :       n = zstrlen( sz );

	lea	eax, DWORD PTR _sz$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _n$[ebp], eax

; 535  :       if ( n < 2 )

	cmp	DWORD PTR _n$[ebp], 2
	jae	SHORT $L7700

; 537  :          zstrcat( szHex, "0" );

	push	OFFSET FLAT:??_C@_01PLJA@0?$AA@		; `string'
	lea	ecx, DWORD PTR _szHex$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8

; 538  :          n = 0;

	mov	DWORD PTR _n$[ebp], 0

; 540  :       else

	jmp	SHORT $L7702
$L7700:

; 541  :          n -= 2;

	mov	edx, DWORD PTR _n$[ebp]
	sub	edx, 2
	mov	DWORD PTR _n$[ebp], edx
$L7702:

; 542  : 
; 543  :       // Add the hex number to szHex.
; 544  :       zstrcat( szHex, &sz[ n ] );

	mov	eax, DWORD PTR _n$[ebp]
	lea	ecx, DWORD PTR _sz$[ebp+eax]
	push	ecx
	lea	edx, DWORD PTR _szHex$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 545  :       zstrcat( szHex, " " );

	push	OFFSET FLAT:??_C@_01FCOA@?5?$AA@	; `string'
	lea	eax, DWORD PTR _szHex$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 546  : 
; 547  :       // If the current byte is a printable char, then copy it to the ASCII
; 548  :       // buffer.  Otherwise add a "." to the buffer.
; 549  :       if ( cpcBuffer[ ulPos ] >= 32 && cpcBuffer[ ulPos ] <= 126 )

	mov	ecx, DWORD PTR _cpcBuffer$[ebp]
	add	ecx, DWORD PTR _ulPos$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 32					; 00000020H
	jl	SHORT $L7704
	mov	eax, DWORD PTR _cpcBuffer$[ebp]
	add	eax, DWORD PTR _ulPos$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 126				; 0000007eH
	jg	SHORT $L7704

; 551  :          n = zstrlen( szAscii );

	lea	edx, DWORD PTR _szAscii$[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _n$[ebp], eax

; 552  :          szAscii[ n++ ] = cpcBuffer[ ulPos ];

	mov	eax, DWORD PTR _cpcBuffer$[ebp]
	add	eax, DWORD PTR _ulPos$[ebp]
	mov	ecx, DWORD PTR _n$[ebp]
	mov	dl, BYTE PTR [eax]
	mov	BYTE PTR _szAscii$[ebp+ecx], dl
	mov	eax, DWORD PTR _n$[ebp]
	add	eax, 1
	mov	DWORD PTR _n$[ebp], eax

; 553  :          szAscii[ n ]   = 0;

	mov	ecx, DWORD PTR _n$[ebp]
	mov	BYTE PTR _szAscii$[ebp+ecx], 0

; 555  :       else

	jmp	SHORT $L7705
$L7704:

; 556  :          zstrcat( szAscii, "." );

	push	OFFSET FLAT:??_C@_01PJCK@?4?$AA@	; `string'
	lea	edx, DWORD PTR _szAscii$[ebp]
	push	edx
	call	_strcat
	add	esp, 8
$L7705:

; 557  : 
; 558  :    } // for...

	jmp	$L7684
$L7685:

; 559  : 
; 560  :    // If szHex is not empty, then the buffers contain information that needs
; 561  :    // to be traced.
; 562  :    if ( szHex[ 0 ] )

	movsx	eax, BYTE PTR _szHex$[ebp]
	test	eax, eax
	je	SHORT $L7706

; 564  :       // Pad the current szHex string with spaces so that it matches (in lth)
; 565  :       // the longest szHex string that was traced.
; 566  :       ulPos = zstrlen( szHex );

	lea	ecx, DWORD PTR _szHex$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _ulPos$[ebp], eax
$L7708:

; 567  :       while ( ulPos < uLongestStr )

	mov	edx, DWORD PTR _uLongestStr$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	DWORD PTR _ulPos$[ebp], edx
	jae	SHORT $L7709

; 568  :          szHex[ ulPos++ ] = ' ';

	mov	eax, DWORD PTR _ulPos$[ebp]
	mov	BYTE PTR _szHex$[ebp+eax], 32		; 00000020H
	mov	ecx, DWORD PTR _ulPos$[ebp]
	add	ecx, 1
	mov	DWORD PTR _ulPos$[ebp], ecx
	jmp	SHORT $L7708
$L7709:

; 569  : 
; 570  :       szHex[ ulPos ] = 0;

	mov	edx, DWORD PTR _ulPos$[ebp]
	mov	BYTE PTR _szHex$[ebp+edx], 0

; 571  : 
; 572  :       TraceLineS( szHex, szAscii );

	lea	eax, DWORD PTR _szAscii$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szHex$[ebp]
	push	ecx
	call	_TraceLineS@8
$L7706:

; 574  : 
; 575  : } // TraceBuffer

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_TraceBuffer@12 ENDP
_TEXT	ENDS
PUBLIC	_SetHexBuffer
_TEXT	SEGMENT
_pchBuffer$ = 8
_nOffset$ = 12
_ch$ = 16
_chHex$ = -4
_SetHexBuffer PROC NEAR

; 584  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 585  :    unsigned char chHex;
; 586  : 
; 587  : // pchBuffer[ nOffset + 49 ] = (isprint( ch ) || ch != 0xA1) ? '.' : ch;
; 588  :    pchBuffer[ nOffset + 49 ] =
; 589  :          (ch == 0xA1 || ch == '\n' || ch == 0xFF ||
; 590  :           ch == '\r' || ch == 0) ? '.' : ch;

	mov	eax, DWORD PTR _ch$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 161				; 000000a1H
	je	SHORT $L8888
	mov	ecx, DWORD PTR _ch$[ebp]
	and	ecx, 255				; 000000ffH
	cmp	ecx, 10					; 0000000aH
	je	SHORT $L8888
	mov	edx, DWORD PTR _ch$[ebp]
	and	edx, 255				; 000000ffH
	cmp	edx, 255				; 000000ffH
	je	SHORT $L8888
	mov	eax, DWORD PTR _ch$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 13					; 0000000dH
	je	SHORT $L8888
	mov	ecx, DWORD PTR _ch$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L8888
	mov	edx, DWORD PTR _ch$[ebp]
	and	edx, 255				; 000000ffH
	mov	DWORD PTR -8+[ebp], edx
	jmp	SHORT $L8889
$L8888:
	mov	DWORD PTR -8+[ebp], 46			; 0000002eH
$L8889:
	movsx	eax, WORD PTR _nOffset$[ebp]
	mov	ecx, DWORD PTR _pchBuffer$[ebp]
	mov	dl, BYTE PTR -8+[ebp]
	mov	BYTE PTR [ecx+eax+49], dl

; 591  :    chHex = ch % 16;

	mov	eax, DWORD PTR _ch$[ebp]
	and	eax, 255				; 000000ffH
	and	eax, -2147483633			; 8000000fH
	jns	SHORT $L8894
	dec	eax
	or	eax, -16				; fffffff0H
	inc	eax
$L8894:
	mov	BYTE PTR _chHex$[ebp], al

; 592  :    pchBuffer[ nOffset * 3 + 1 ] = (chHex > 9) ? 'A' + chHex - 10 : '0' + chHex;

	mov	ecx, DWORD PTR _chHex$[ebp]
	and	ecx, 255				; 000000ffH
	cmp	ecx, 9
	jle	SHORT $L8890
	mov	edx, DWORD PTR _chHex$[ebp]
	and	edx, 255				; 000000ffH
	add	edx, 55					; 00000037H
	mov	DWORD PTR -12+[ebp], edx
	jmp	SHORT $L8891
$L8890:
	mov	eax, DWORD PTR _chHex$[ebp]
	and	eax, 255				; 000000ffH
	add	eax, 48					; 00000030H
	mov	DWORD PTR -12+[ebp], eax
$L8891:
	movsx	ecx, WORD PTR _nOffset$[ebp]
	imul	ecx, 3
	mov	edx, DWORD PTR _pchBuffer$[ebp]
	mov	al, BYTE PTR -12+[ebp]
	mov	BYTE PTR [edx+ecx+1], al

; 593  :    chHex = ch / 16;

	mov	eax, DWORD PTR _ch$[ebp]
	and	eax, 255				; 000000ffH
	cdq
	and	edx, 15					; 0000000fH
	add	eax, edx
	sar	eax, 4
	mov	BYTE PTR _chHex$[ebp], al

; 594  :    pchBuffer[ nOffset * 3 ] = (chHex > 9) ? 'A' + chHex - 10 : '0' + chHex;

	mov	ecx, DWORD PTR _chHex$[ebp]
	and	ecx, 255				; 000000ffH
	cmp	ecx, 9
	jle	SHORT $L8892
	mov	edx, DWORD PTR _chHex$[ebp]
	and	edx, 255				; 000000ffH
	add	edx, 55					; 00000037H
	mov	DWORD PTR -16+[ebp], edx
	jmp	SHORT $L8893
$L8892:
	mov	eax, DWORD PTR _chHex$[ebp]
	and	eax, 255				; 000000ffH
	add	eax, 48					; 00000030H
	mov	DWORD PTR -16+[ebp], eax
$L8893:
	movsx	ecx, WORD PTR _nOffset$[ebp]
	imul	ecx, 3
	mov	edx, DWORD PTR _pchBuffer$[ebp]
	mov	al, BYTE PTR -16+[ebp]
	mov	BYTE PTR [edx+ecx], al

; 595  : // pchBuffer[ nOffset * 3 + 2 ] = (nOffset == 7) ? '-' : ' ';
; 596  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_SetHexBuffer ENDP
_TEXT	ENDS
PUBLIC	_FormatInteger
_TEXT	SEGMENT
_pchBuffer$ = 8
_lValue$ = 12
_nDigits$ = 16
_chFill$ = 20
_FormatInteger PROC NEAR

; 603  : {

	push	ebp
	mov	ebp, esp
$L7730:

; 604  :    while ( nDigits )

	movsx	eax, WORD PTR _nDigits$[ebp]
	test	eax, eax
	je	SHORT $L7731

; 606  :       nDigits--;

	mov	cx, WORD PTR _nDigits$[ebp]
	sub	cx, 1
	mov	WORD PTR _nDigits$[ebp], cx

; 607  :       if ( lValue )

	cmp	DWORD PTR _lValue$[ebp], 0
	je	SHORT $L7732

; 609  :          pchBuffer[ nDigits ] = '0' + lValue % 10;

	mov	eax, DWORD PTR _lValue$[ebp]
	cdq
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	add	edx, 48					; 00000030H
	movsx	eax, WORD PTR _nDigits$[ebp]
	mov	ecx, DWORD PTR _pchBuffer$[ebp]
	mov	BYTE PTR [ecx+eax], dl

; 611  :       else

	jmp	SHORT $L7733
$L7732:

; 613  :          pchBuffer[ nDigits ] = chFill;

	movsx	edx, WORD PTR _nDigits$[ebp]
	mov	eax, DWORD PTR _pchBuffer$[ebp]
	mov	cl, BYTE PTR _chFill$[ebp]
	mov	BYTE PTR [eax+edx], cl
$L7733:

; 615  : 
; 616  :       lValue /= 10;

	mov	eax, DWORD PTR _lValue$[ebp]
	cdq
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	mov	DWORD PTR _lValue$[ebp], eax

; 617  :    }

	jmp	SHORT $L7730
$L7731:

; 618  : }

	pop	ebp
	ret	0
_FormatInteger ENDP
_TEXT	ENDS
PUBLIC	_TraceHex@8
_TEXT	SEGMENT
_pvBlob$ = 8
_lBlobLth$ = 12
_szBuffer$ = -256
_pch$ = -260
_pchEnd$ = -272
_ch$ = -268
_k$ = -276
_j$ = -264
_TraceHex@8 PROC NEAR

; 626  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 276				; 00000114H

; 627  :    zCHAR  szBuffer[ 256 ];
; 628  :    zPCHAR pch = (zPCHAR) pvBlob;

	mov	eax, DWORD PTR _pvBlob$[ebp]
	mov	DWORD PTR _pch$[ebp], eax

; 629  :    zPCHAR pchEnd = pch + lBlobLth;

	mov	ecx, DWORD PTR _pch$[ebp]
	add	ecx, DWORD PTR _lBlobLth$[ebp]
	mov	DWORD PTR _pchEnd$[ebp], ecx

; 630  :    unsigned char ch;
; 631  :    zSHORT k;
; 632  :    zSHORT j;
; 633  : 
; 634  :    k = 1;

	mov	WORD PTR _k$[ebp], 1

; 635  :    zstrcpy( szBuffer, szBlankLine );

	push	OFFSET FLAT:_szBlankLine
	lea	edx, DWORD PTR _szBuffer$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 636  :    szBuffer[ 34 ] = '-';

	mov	BYTE PTR _szBuffer$[ebp+34], 45		; 0000002dH

; 637  :    szBuffer[ 59 ] = szBuffer[ 76 ] = (zCHAR) 0xB3;

	mov	BYTE PTR _szBuffer$[ebp+76], -77	; ffffffb3H
	mov	al, BYTE PTR _szBuffer$[ebp+76]
	mov	BYTE PTR _szBuffer$[ebp+59], al

; 638  :    szBuffer[ 77 ] = 0;

	mov	BYTE PTR _szBuffer$[ebp+77], 0
$L7750:

; 639  :    while ( pch < pchEnd )

	mov	ecx, DWORD PTR _pch$[ebp]
	cmp	ecx, DWORD PTR _pchEnd$[ebp]
	jae	$L7751

; 641  :       FormatInteger( szBuffer, (k - 1) * 16, 9, '0' );

	push	48					; 00000030H
	push	9
	movsx	edx, WORD PTR _k$[ebp]
	sub	edx, 1
	shl	edx, 4
	push	edx
	lea	eax, DWORD PTR _szBuffer$[ebp]
	push	eax
	call	_FormatInteger
	add	esp, 16					; 00000010H

; 642  : 
; 643  :       for ( j = 0; j < 16; j++, pch++ )

	mov	WORD PTR _j$[ebp], 0
	jmp	SHORT $L7752
$L7753:
	mov	cx, WORD PTR _j$[ebp]
	add	cx, 1
	mov	WORD PTR _j$[ebp], cx
	mov	edx, DWORD PTR _pch$[ebp]
	add	edx, 1
	mov	DWORD PTR _pch$[ebp], edx
$L7752:
	movsx	eax, WORD PTR _j$[ebp]
	cmp	eax, 16					; 00000010H
	jge	SHORT $L7754

; 645  :          if ( pch < pchEnd )

	mov	ecx, DWORD PTR _pch$[ebp]
	cmp	ecx, DWORD PTR _pchEnd$[ebp]
	jae	SHORT $L7755

; 646  :             ch = *pch;

	mov	edx, DWORD PTR _pch$[ebp]
	mov	al, BYTE PTR [edx]
	mov	BYTE PTR _ch$[ebp], al

; 647  :          else

	jmp	SHORT $L7756
$L7755:

; 648  :             ch = 0;

	mov	BYTE PTR _ch$[ebp], 0
$L7756:

; 649  : 
; 650  :          SetHexBuffer( szBuffer + 11, j, ch );

	mov	cl, BYTE PTR _ch$[ebp]
	push	ecx
	mov	dx, WORD PTR _j$[ebp]
	push	edx
	lea	eax, DWORD PTR _szBuffer$[ebp+11]
	push	eax
	call	_SetHexBuffer
	add	esp, 12					; 0000000cH

; 651  :       }

	jmp	SHORT $L7753
$L7754:

; 652  : 
; 653  :       TraceLineS( szBuffer, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	lea	ecx, DWORD PTR _szBuffer$[ebp]
	push	ecx
	call	_TraceLineS@8

; 654  :       k++;

	mov	dx, WORD PTR _k$[ebp]
	add	dx, 1
	mov	WORD PTR _k$[ebp], dx

; 655  :    }

	jmp	$L7750
$L7751:

; 656  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_TraceHex@8 ENDP
_TEXT	ENDS
PUBLIC	_TraceBlob@12
_TEXT	SEGMENT
_cpcMessage$ = 8
_pvBlob$ = 12
_lBlobLth$ = 16
_TraceBlob@12 PROC NEAR

; 662  : {

	push	ebp
	mov	ebp, esp

; 663  : 
; 664  :    TraceLineI( cpcMessage, lBlobLth );

	mov	eax, DWORD PTR _lBlobLth$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcMessage$[ebp]
	push	ecx
	call	_TraceLineI@8

; 665  :    TraceHex( pvBlob, lBlobLth );

	mov	edx, DWORD PTR _lBlobLth$[ebp]
	push	edx
	mov	eax, DWORD PTR _pvBlob$[ebp]
	push	eax
	call	_TraceHex@8

; 666  : }

	pop	ebp
	ret	12					; 0000000cH
_TraceBlob@12 ENDP
_TEXT	ENDS
PUBLIC	_DisplayEntityInstance@8
PUBLIC	_fnDisplayEntityInstance
PUBLIC	??_C@_0CO@IMKJ@Entity?5Instance?5Display?3?5?$CFs?5?5for@ ; `string'
PUBLIC	??_C@_0CF@LJIN@?5?5?5?5Cursor?5is?5NULL?5or?5Undefined?5@ ; `string'
EXTRN	_fnOperationCall:NEAR
EXTRN	_fnOperationReturn:NEAR
EXTRN	_fnValidViewEntity@16:NEAR
EXTRN	_fnEstablishCursorForView:NEAR
;	COMDAT ??_C@_0CO@IMKJ@Entity?5Instance?5Display?3?5?$CFs?5?5for@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0CO@IMKJ@Entity?5Instance?5Display?3?5?$CFs?5?5for@ DB 'Entity Inst'
	DB	'ance Display: %s  for view: 0x%08x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CF@LJIN@?5?5?5?5Cursor?5is?5NULL?5or?5Undefined?5@
_DATA	SEGMENT
??_C@_0CF@LJIN@?5?5?5?5Cursor?5is?5NULL?5or?5Undefined?5@ DB '    Cursor '
	DB	'is NULL or Undefined for ', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -24
_lpViewEntity$ = -16
_lpViewEntityCsr$ = -20
_lpEntityInstance$ = -12
_pchWorkEntityName$ = -4
_nRC$ = -8
_lpViewCsr$7779 = -28
_lpRootViewEntityCsr$7781 = -36
_lpViewEntity$7783 = -32
_DisplayEntityInstance@8 PROC NEAR

; 685  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H

; 686  :    LPTASK            lpCurrentTask;
; 687  :    LPVIEWENTITY      lpViewEntity;
; 688  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 689  :    LPENTITYINSTANCE  lpEntityInstance;
; 690  :    zPCHAR            pchWorkEntityName;
; 691  :    int               nRC;
; 692  : 
; 693  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 694  :    if ( (lpCurrentTask = fnOperationCall( iDisplayEntityInstance, lpView,
; 695  :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	400					; 00000190H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7775

; 697  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7768
$L7775:

; 699  : 
; 700  :    pchWorkEntityName = (zPCHAR) cpcEntityName;

	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	mov	DWORD PTR _pchWorkEntityName$[ebp], ecx

; 701  : 
; 702  :    if ( pchWorkEntityName == 0 || pchWorkEntityName[ 0 ] == 0 )

	cmp	DWORD PTR _pchWorkEntityName$[ebp], 0
	je	SHORT $L7778
	mov	edx, DWORD PTR _pchWorkEntityName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L7777
$L7778:

; 704  :       LPVIEWCSR       lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$7779[ebp], eax

; 705  :       LPVIEWENTITYCSR lpRootViewEntityCsr =
; 706  :                                   zGETPTR( lpViewCsr->hRootViewEntityCsr );

	mov	eax, DWORD PTR _lpViewCsr$7779[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootViewEntityCsr$7781[ebp], eax

; 707  :       LPVIEWENTITY    lpViewEntity =
; 708  :                                   zGETPTR( lpRootViewEntityCsr->hViewEntity );

	mov	edx, DWORD PTR _lpRootViewEntityCsr$7781[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$7783[ebp], eax

; 709  : 
; 710  :       pchWorkEntityName = lpViewEntity->szName;

	mov	ecx, DWORD PTR _lpViewEntity$7783[ebp]
	add	ecx, 14					; 0000000eH
	mov	DWORD PTR _pchWorkEntityName$[ebp], ecx
$L7777:

; 712  : 
; 713  :    // Validate that the entity exists
; 714  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr, lpView,
; 715  :                                            pchWorkEntityName, 0 )) == 0 )

	push	0
	mov	edx, DWORD PTR _pchWorkEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7785

; 717  :       fnOperationReturn( iDisplayEntityInstance, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	400					; 00000190H
	call	_fnOperationReturn
	add	esp, 8

; 718  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7768
$L7785:

; 720  : 
; 721  :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 722  :    TraceLine( "Entity Instance Display: %s  for view: 0x%08x",
; 723  :                cpcEntityName, lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CO@IMKJ@Entity?5Instance?5Display?3?5?$CFs?5?5for@ ; `string'
	call	_TraceLine
	add	esp, 12					; 0000000cH

; 724  :    if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+26], 1
	jne	SHORT $L7788

; 725  :       fnEstablishCursorForView( lpViewEntityCsr );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnEstablishCursorForView
	add	esp, 4
$L7788:

; 726  : 
; 727  :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 728  :    if ( lpEntityInstance == 0 || lpEntityInstance->u.nInd.bHidden )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7791
	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7790
$L7791:

; 730  :       TraceLineS( "    Cursor is NULL or Undefined for ",
; 731  :                   lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0CF@LJIN@?5?5?5?5Cursor?5is?5NULL?5or?5Undefined?5@ ; `string'
	call	_TraceLineS@8

; 732  :       fnOperationReturn( iDisplayEntityInstance, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	400					; 00000190H
	call	_fnOperationReturn
	add	esp, 8

; 733  :       return( 0 );

	xor	ax, ax
	jmp	SHORT $L7768
$L7790:

; 735  : 
; 736  :    nRC = fnDisplayEntityInstance( lpView, lpViewEntityCsr, 0, 0 );

	push	0
	push	0
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnDisplayEntityInstance
	add	esp, 16					; 00000010H
	movsx	eax, ax
	mov	DWORD PTR _nRC$[ebp], eax

; 737  : 
; 738  :    fnOperationReturn( iDisplayEntityInstance, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	400					; 00000190H
	call	_fnOperationReturn
	add	esp, 8

; 739  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7768:

; 740  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_DisplayEntityInstance@8 ENDP
_TEXT	ENDS
PUBLIC	_DisplayEntityInstancePath@8
PUBLIC	??_C@_04NCHB@?9?9?9?9?$AA@			; `string'
PUBLIC	??_C@_0CJ@PFBD@?9?9?9?9?5Begin?5Entity?5Instance?5Path?5@ ; `string'
PUBLIC	??_C@_0CJ@CFEK@?9?9?9?9?5End?5?5?5Entity?5Instance?5Path?5@ ; `string'
EXTRN	_CreateViewFromViewForTask@12:NEAR
EXTRN	_DropView@4:NEAR
EXTRN	_fnEstablishViewForInstance:NEAR
;	COMDAT ??_C@_04NCHB@?9?9?9?9?$AA@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_04NCHB@?9?9?9?9?$AA@ DB '----', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@PFBD@?9?9?9?9?5Begin?5Entity?5Instance?5Path?5@
_DATA	SEGMENT
??_C@_0CJ@PFBD@?9?9?9?9?5Begin?5Entity?5Instance?5Path?5@ DB '---- Begin '
	DB	'Entity Instance Path Display ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@CFEK@?9?9?9?9?5End?5?5?5Entity?5Instance?5Path?5@
_DATA	SEGMENT
??_C@_0CJ@CFEK@?9?9?9?9?5End?5?5?5Entity?5Instance?5Path?5@ DB '---- End '
	DB	'  Entity Instance Path Display ', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcEntityName$ = 12
_lpCurrentTask$ = -32
_lpViewEntity$ = -20
_lpViewEntityCsr$ = -28
_lpEntityInstance$ = -16
_lpCurrentInstance$ = -24
_pchWorkEntityName$ = -8
_nRC$ = -12
_nLevel$ = -4
_lpViewCsr$7810 = -36
_lpRootViewEntityCsr$7812 = -44
_lpViewEntity$7814 = -40
_DisplayEntityInstancePath@8 PROC NEAR

; 758  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH

; 759  :    LPTASK            lpCurrentTask;
; 760  :    LPVIEWENTITY      lpViewEntity;
; 761  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 762  :    LPENTITYINSTANCE  lpEntityInstance;
; 763  :    LPENTITYINSTANCE  lpCurrentInstance;
; 764  :    zPCHAR            pchWorkEntityName;
; 765  :    int               nRC, nLevel;
; 766  : 
; 767  :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 768  :    if ( (lpCurrentTask = fnOperationCall( iDisplayEntityInstancePath,
; 769  :                                           lpView, zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	405					; 00000195H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7806

; 771  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7797
$L7806:

; 773  : 
; 774  :    pchWorkEntityName = (zPCHAR) cpcEntityName;

	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	mov	DWORD PTR _pchWorkEntityName$[ebp], ecx

; 775  : 
; 776  :    if ( pchWorkEntityName == 0 || pchWorkEntityName[ 0 ] == 0 )

	cmp	DWORD PTR _pchWorkEntityName$[ebp], 0
	je	SHORT $L7809
	mov	edx, DWORD PTR _pchWorkEntityName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	jne	SHORT $L7808
$L7809:

; 778  :       LPVIEWCSR       lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$7810[ebp], eax

; 779  :       LPVIEWENTITYCSR lpRootViewEntityCsr =
; 780  :                                   zGETPTR( lpViewCsr->hRootViewEntityCsr );

	mov	eax, DWORD PTR _lpViewCsr$7810[ebp]
	mov	ecx, DWORD PTR [eax+18]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRootViewEntityCsr$7812[ebp], eax

; 781  :       LPVIEWENTITY    lpViewEntity =
; 782  :                                   zGETPTR( lpRootViewEntityCsr->hViewEntity );

	mov	edx, DWORD PTR _lpRootViewEntityCsr$7812[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$7814[ebp], eax

; 783  : 
; 784  :       pchWorkEntityName = lpViewEntity->szName;

	mov	ecx, DWORD PTR _lpViewEntity$7814[ebp]
	add	ecx, 14					; 0000000eH
	mov	DWORD PTR _pchWorkEntityName$[ebp], ecx
$L7808:

; 786  : 
; 787  :    // Validate that the entity exists
; 788  :    if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 789  :                                            lpView, pchWorkEntityName, 0 )) == 0 )

	push	0
	mov	edx, DWORD PTR _pchWorkEntityName$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7816

; 791  :       fnOperationReturn( iDisplayEntityInstancePath, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	405					; 00000195H
	call	_fnOperationReturn
	add	esp, 8

; 792  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7797
$L7816:

; 794  : 
; 795  :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 796  :    if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 1
	jne	SHORT $L7818

; 797  :       fnEstablishCursorForView( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnEstablishCursorForView
	add	esp, 4
$L7818:

; 798  : 
; 799  :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 800  :    if ( lpEntityInstance == 0 || lpEntityInstance->u.nInd.bHidden )

	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	SHORT $L7821
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	SHORT $L7820
$L7821:

; 802  :       TraceLineS( "    Cursor is NULL or Undefined for ",
; 803  :                   lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0CF@LJIN@?5?5?5?5Cursor?5is?5NULL?5or?5Undefined?5@ ; `string'
	call	_TraceLineS@8

; 804  :       fnOperationReturn( iDisplayEntityInstancePath, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	405					; 00000195H
	call	_fnOperationReturn
	add	esp, 8

; 805  :       return( 0 );

	xor	ax, ax
	jmp	$L7797
$L7820:

; 807  : 
; 808  :    TraceLineS( "---- Begin Entity Instance Path Display ", "----" );

	push	OFFSET FLAT:??_C@_04NCHB@?9?9?9?9?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0CJ@PFBD@?9?9?9?9?5Begin?5Entity?5Instance?5Path?5@ ; `string'
	call	_TraceLineS@8

; 809  :    lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 810  :    nLevel = 1;

	mov	DWORD PTR _nLevel$[ebp], 1

; 811  :    CreateViewFromViewForTask( &lpView, lpView, 0 );

	push	0
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_CreateViewFromViewForTask@12
$L7825:

; 814  :       lpCurrentInstance = lpEntityInstance;

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR _lpCurrentInstance$[ebp], eax
$L7829:

; 815  :       while ( lpCurrentInstance->hParent &&
; 816  :               lpCurrentInstance->nLevel > nLevel )

	mov	ecx, DWORD PTR _lpCurrentInstance$[ebp]
	cmp	DWORD PTR [ecx+30], 0
	je	SHORT $L7830
	mov	edx, DWORD PTR _lpCurrentInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	eax, DWORD PTR _nLevel$[ebp]
	jle	SHORT $L7830

; 818  :          lpCurrentInstance = zGETPTR( lpCurrentInstance->hParent );

	mov	ecx, DWORD PTR _lpCurrentInstance$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentInstance$[ebp], eax

; 819  :       }

	jmp	SHORT $L7829
$L7830:

; 820  : 
; 821  :       nLevel = lpCurrentInstance->nLevel;

	mov	eax, DWORD PTR _lpCurrentInstance$[ebp]
	movsx	ecx, WORD PTR [eax+58]
	mov	DWORD PTR _nLevel$[ebp], ecx

; 822  :       lpViewEntityCsr = fnEstablishViewForInstance( lpView, 0,
; 823  :                                                     lpCurrentInstance );

	mov	edx, DWORD PTR _lpCurrentInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 824  :       nRC = fnDisplayEntityInstance( lpView, lpViewEntityCsr, 0, 0 );

	push	0
	push	0
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	call	_fnDisplayEntityInstance
	add	esp, 16					; 00000010H
	movsx	eax, ax
	mov	DWORD PTR _nRC$[ebp], eax

; 825  :       nLevel++;

	mov	ecx, DWORD PTR _nLevel$[ebp]
	add	ecx, 1
	mov	DWORD PTR _nLevel$[ebp], ecx

; 826  :    }  while ( nLevel <= lpEntityInstance->nLevel );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	cmp	DWORD PTR _nLevel$[ebp], eax
	jle	SHORT $L7825

; 827  : 
; 828  :    TraceLineS( "---- End   Entity Instance Path Display ", "----" );

	push	OFFSET FLAT:??_C@_04NCHB@?9?9?9?9?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0CJ@CFEK@?9?9?9?9?5End?5?5?5Entity?5Instance?5Path?5@ ; `string'
	call	_TraceLineS@8

; 829  :    DropView( lpView );

	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_DropView@4

; 830  : 
; 831  :    fnOperationReturn( iDisplayEntityInstancePath, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	405					; 00000195H
	call	_fnOperationReturn
	add	esp, 8

; 832  :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L7797:

; 833  : }

	mov	esp, ebp
	pop	ebp
	ret	8
_DisplayEntityInstancePath@8 ENDP
_TEXT	ENDS
PUBLIC	_DisplayObjectInstance@12
PUBLIC	??_C@_0CE@PFDL@Object?5Instance?5is?5NULL?5for?5enti@ ; `string'
PUBLIC	??_C@_0DF@NKOO@Object?5Instance?5Display?5for?5View@ ; `string'
EXTRN	_fnDeclareView@20:NEAR
EXTRN	_SetViewFromView@8:NEAR
EXTRN	_ResetViewPositions@4:NEAR
EXTRN	_strcmp:NEAR
EXTRN	_fnResetCursorForViewChildren:NEAR
;	COMDAT ??_C@_0CE@PFDL@Object?5Instance?5is?5NULL?5for?5enti@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0CE@PFDL@Object?5Instance?5is?5NULL?5for?5enti@ DB 'Object Instance'
	DB	' is NULL for entity ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DF@NKOO@Object?5Instance?5Display?5for?5View@
_DATA	SEGMENT
??_C@_0DF@NKOO@Object?5Instance?5Display?5for?5View@ DB 'Object Instance '
	DB	'Display for View Id: 0x%08x  Def: %s', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_cpcScopeEntity$ = 12
_cpcEntityName$ = 16
_lpCurrentTask$ = -40
_lpViewEntity$ = -24
_lpViewEntityCsr$ = -36
_lpViewEntityCsrPosition$ = -20
_lpStartInstance$ = -32
_lpEntityInstance$ = -16
_lpNewView$ = -8
_lpViewOD$ = -4
_nStartLevel$ = -28
_nRC$ = -12
_lpViewCsr$7867 = -44
_lpViewOI$7868 = -48
_DisplayObjectInstance@12 PROC NEAR

; 851  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 52					; 00000034H

; 852  :    LPTASK            lpCurrentTask;
; 853  :    LPVIEWENTITY      lpViewEntity;
; 854  :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 855  :    LPVIEWENTITYCSR   lpViewEntityCsrPosition;
; 856  :    LPENTITYINSTANCE  lpStartInstance;
; 857  :    LPENTITYINSTANCE  lpEntityInstance;
; 858  :    zVIEW             lpNewView;
; 859  :    LPVIEWOD          lpViewOD;
; 860  :    zSHORT            nStartLevel;
; 861  :    zSHORT            nRC;
; 862  : 
; 863  :    // If task not active or disabled, or view invalid, return zCALL_ERROR.
; 864  :    if ( (lpCurrentTask = fnOperationCall( iDisplayObjectInstance,
; 865  :                                           lpView, zVALID_VIEW )) == 0 )

	push	1
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	401					; 00000191H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L7850

; 867  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7839
$L7850:

; 869  : 
; 870  :    nRC = fnDeclareView( &lpNewView, lpCurrentTask, lpView, 0, 0 );

	push	0
	push	0
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpNewView$[ebp]
	push	eax
	call	_fnDeclareView@20
	mov	WORD PTR _nRC$[ebp], ax

; 871  :    if ( nRC < 0 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	jge	SHORT $L7851

; 873  :       fnOperationReturn( iDisplayObjectInstance, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	401					; 00000191H
	call	_fnOperationReturn
	add	esp, 8

; 874  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7839
$L7851:

; 876  : 
; 877  :    nRC = SetViewFromView( lpNewView, lpView );

	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpNewView$[ebp]
	push	ecx
	call	_SetViewFromView@8
	mov	WORD PTR _nRC$[ebp], ax

; 878  :    if ( nRC < 0 )

	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jge	SHORT $L7852

; 880  :       DropView( lpNewView );

	mov	eax, DWORD PTR _lpNewView$[ebp]
	push	eax
	call	_DropView@4

; 881  :       fnOperationReturn( iDisplayObjectInstance, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	401					; 00000191H
	call	_fnOperationReturn
	add	esp, 8

; 882  :       return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
	jmp	$L7839
$L7852:

; 884  : 
; 885  :    // Validate that the (childmost) entity to be displayed exists.
; 886  :    if ( cpcEntityName && cpcEntityName[ 0 ] )

	cmp	DWORD PTR _cpcEntityName$[ebp], 0
	je	SHORT $L7853
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	movsx	eax, BYTE PTR [edx]
	test	eax, eax
	je	SHORT $L7853

; 888  :       if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 889  :                                               lpNewView,
; 890  :                                               cpcEntityName, 0 )) == 0 )

	push	0
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpNewView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7854

; 892  :          cpcEntityName = 0;  // invalid entity passed in ... ignore

	mov	DWORD PTR _cpcEntityName$[ebp], 0
$L7854:

; 895  :    else

	jmp	SHORT $L7855
$L7853:

; 896  :       cpcEntityName = 0;

	mov	DWORD PTR _cpcEntityName$[ebp], 0
$L7855:

; 897  : 
; 898  :    // Validate that the scope entity exists.
; 899  :    if ( cpcScopeEntity && cpcScopeEntity[ 0 ] )

	cmp	DWORD PTR _cpcScopeEntity$[ebp], 0
	je	$L7856
	mov	ecx, DWORD PTR _cpcScopeEntity$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	je	$L7856

; 901  :       if ( (lpViewEntity = fnValidViewEntity( &lpViewEntityCsr,
; 902  :                                               lpNewView,
; 903  :                                               cpcScopeEntity, 0 )) == 0 )

	push	0
	mov	eax, DWORD PTR _cpcScopeEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpNewView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnValidViewEntity@16
	mov	DWORD PTR _lpViewEntity$[ebp], eax
	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	jne	SHORT $L7857

; 905  :          DropView( lpNewView );

	mov	eax, DWORD PTR _lpNewView$[ebp]
	push	eax
	call	_DropView@4

; 906  :          fnOperationReturn( iDisplayObjectInstance, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	401					; 00000191H
	call	_fnOperationReturn
	add	esp, 8

; 907  :          return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L7839
$L7857:

; 909  : 
; 910  :       // If the cursor is not set, try resetting it.
; 911  :       if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR ||
; 912  :            lpViewEntityCsr->hEntityInstance == NULL_CSR )

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+26], 1
	je	SHORT $L7860
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 0
	jne	SHORT $L7862
$L7860:

; 914  :          fnResetCursorForViewChildren( lpViewEntityCsr );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	call	_fnResetCursorForViewChildren
	add	esp, 4

; 915  : 
; 916  :          // If it's STILL not set then there are no child entities so get out.
; 917  :          if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR ||
; 918  :               lpViewEntityCsr->hEntityInstance == NULL_CSR )

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [edx+26], 1
	je	SHORT $L7863
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 0
	jne	SHORT $L7862
$L7863:

; 920  :             TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 921  :             TraceLineS( "Object Instance is NULL for entity ", cpcScopeEntity );

	mov	ecx, DWORD PTR _cpcScopeEntity$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0CE@PFDL@Object?5Instance?5is?5NULL?5for?5enti@ ; `string'
	call	_TraceLineS@8

; 922  :             DropView( lpNewView );

	mov	edx, DWORD PTR _lpNewView$[ebp]
	push	edx
	call	_DropView@4

; 923  :             fnOperationReturn( iDisplayObjectInstance, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	401					; 00000191H
	call	_fnOperationReturn
	add	esp, 8

; 924  :             return( 0 );

	xor	ax, ax
	jmp	$L7839
$L7862:

; 927  : 
; 928  :       lpStartInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartInstance$[ebp], eax

; 929  :       nStartLevel = lpViewEntity->nLevel;

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	cx, WORD PTR [eax+215]
	mov	WORD PTR _nStartLevel$[ebp], cx

; 931  :    else

	jmp	SHORT $L7866
$L7856:

; 933  :       LPVIEWCSR lpViewCsr;
; 934  :       LPVIEWOI  lpViewOI;
; 935  : 
; 936  :    // ResetView( lpNewView );
; 937  :       ResetViewPositions( lpNewView );  // don't reset select states!

	mov	edx, DWORD PTR _lpNewView$[ebp]
	push	edx
	call	_ResetViewPositions@4

; 938  :       lpViewCsr = zGETPTR( lpNewView->hViewCsr );

	mov	eax, DWORD PTR _lpNewView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$7867[ebp], eax

; 939  :       lpViewEntityCsr = zGETPTR( lpViewCsr->hRootViewEntityCsr );

	mov	edx, DWORD PTR _lpViewCsr$7867[ebp]
	mov	eax, DWORD PTR [edx+18]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 940  :       nStartLevel = 0;

	mov	WORD PTR _nStartLevel$[ebp], 0

; 941  :       lpViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$7867[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$7868[ebp], eax

; 942  :       lpStartInstance = zGETPTR( lpViewOI->hRootEntityInstance );

	mov	eax, DWORD PTR _lpViewOI$7868[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpStartInstance$[ebp], eax
$L7866:

; 944  : 
; 945  :    lpViewOD = zGETPTR( lpView->hViewOD );

	mov	edx, DWORD PTR _lpView$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 946  :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 947  :    TraceLine( "Object Instance Display for View Id: 0x%08x  Def: %s",
; 948  :               lpView, lpViewOD->szName );

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0DF@NKOO@Object?5Instance?5Display?5for?5View@ ; `string'
	call	_TraceLine
	add	esp, 12					; 0000000cH

; 949  : 
; 950  :    for ( lpEntityInstance = lpStartInstance;
; 951  :          lpEntityInstance;
; 952  :          lpEntityInstance = zGETPTR( lpEntityInstance->hNextHier ) )

	mov	eax, DWORD PTR _lpStartInstance$[ebp]
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
	jmp	SHORT $L7876
$L7877:
	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax
$L7876:
	cmp	DWORD PTR _lpEntityInstance$[ebp], 0
	je	$L7878

; 954  :       lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 955  :       if ( lpViewEntity->nLevel <= nStartLevel &&
; 956  :            lpEntityInstance != lpStartInstance )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+215]
	movsx	ecx, WORD PTR _nStartLevel$[ebp]
	cmp	eax, ecx
	jg	SHORT $L7880
	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	cmp	edx, DWORD PTR _lpStartInstance$[ebp]
	je	SHORT $L7880

; 958  :          break;

	jmp	$L7878
$L7880:

; 960  : 
; 961  :       if ( lpEntityInstance->u.nInd.bHidden ||
; 962  :            (cpcEntityName && zstrcmp( cpcEntityName,
; 963  :                                       lpViewEntity->szName ) != 0) )

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L7888
	cmp	DWORD PTR _cpcEntityName$[ebp], 0
	je	SHORT $L7887
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	movsx	eax, BYTE PTR [edx]
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, BYTE PTR [ecx+14]
	cmp	eax, edx
	jne	SHORT $L8901
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	mov	ecx, DWORD PTR _cpcEntityName$[ebp]
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -52+[ebp], eax
	jmp	SHORT $L8902
$L8901:
	mov	edx, DWORD PTR _cpcEntityName$[ebp]
	movsx	eax, BYTE PTR [edx]
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, BYTE PTR [ecx+14]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -52+[ebp], ecx
$L8902:
	cmp	DWORD PTR -52+[ebp], 0
	je	SHORT $L7887
$L7888:

; 965  :          continue;

	jmp	$L7877
$L7887:

; 967  : 
; 968  :       lpViewEntityCsr = fnEstablishViewForInstance( lpNewView, 0,
; 969  :                                                     lpEntityInstance );

	mov	edx, DWORD PTR _lpEntityInstance$[ebp]
	push	edx
	push	0
	mov	eax, DWORD PTR _lpNewView$[ebp]
	push	eax
	call	_fnEstablishViewForInstance
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 970  : 
; 971  :       // Find entity at current position.
; 972  :       if ( fnValidViewEntity( &lpViewEntityCsrPosition, lpView,
; 973  :                               lpViewEntity->szName, 1 ) != 0 )

	push	1
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpViewEntityCsrPosition$[ebp]
	push	eax
	call	_fnValidViewEntity@16
	test	eax, eax
	je	SHORT $L7889

; 975  :          fnDisplayEntityInstance( lpNewView, lpViewEntityCsr,
; 976  :                                   (zSHORT) (lpViewEntityCsr->nLevel - nStartLevel),
; 977  :                                   lpViewEntityCsrPosition );

	mov	ecx, DWORD PTR _lpViewEntityCsrPosition$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+22]
	movsx	ecx, WORD PTR _nStartLevel$[ebp]
	sub	eax, ecx
	push	eax
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpNewView$[ebp]
	push	eax
	call	_fnDisplayEntityInstance
	add	esp, 16					; 00000010H
$L7889:

; 979  :    }

	jmp	$L7877
$L7878:

; 980  : 
; 981  :    DropView( lpNewView );

	mov	ecx, DWORD PTR _lpNewView$[ebp]
	push	ecx
	call	_DropView@4

; 982  : 
; 983  :    fnOperationReturn( iDisplayObjectInstance, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	401					; 00000191H
	call	_fnOperationReturn
	add	esp, 8

; 984  :    return( 0 );

	xor	ax, ax
$L7839:

; 985  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_DisplayObjectInstance@12 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BD@MPLN@TraceAllAttributes?$AA@		; `string'
PUBLIC	??_C@_07FGLN@?$FLDebug?$FN?$AA@			; `string'
PUBLIC	??_C@_0BN@EKCK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?$AA@ ; `string'
PUBLIC	??_C@_02IGCE@?5?$CK?$AA@			; `string'
PUBLIC	??_C@_0L@LCOG@?$CFs?$HM?$DN?$DN?$DO?$CFs?$CFs?$AA@ ; `string'
PUBLIC	??_C@_05JIPK@UNSET?$AA@				; `string'
PUBLIC	??_C@_0CB@CBND@?5?5?5Cursor?5for?5EntityInstance?5is?5@ ; `string'
PUBLIC	??_C@_04BAK@NULL?$AA@				; `string'
PUBLIC	??_C@_0BL@HKFH@Incremental?5Update?5Flags?3?5?$AA@ ; `string'
PUBLIC	??_C@_06DIKK@?5Start?$AA@			; `string'
PUBLIC	??_C@_0BJ@FMNO@?$DO?$DO?$DOEntityInstance?5flags?3?$AA@ ; `string'
PUBLIC	??_C@_0BM@JEBJ@?$DO?$DO?$DOEntityInstance?5is?5hidden?$AA@ ; `string'
PUBLIC	??_C@_0BO@LNMA@?$DO?$DO?$DOEntityInstance?5is?5temporal?$AA@ ; `string'
PUBLIC	??_C@_0CJ@BKJC@?$DO?$DO?$DOEntityInstance?5has?5a?5previous@ ; `string'
PUBLIC	??_C@_0CI@IEBF@?$DO?$DO?$DOEntityInstance?5is?5a?5previous?5@ ; `string'
PUBLIC	??_C@_0CN@LKO@?$DO?$DO?$DOEntityInstance?5is?5a?5previous?5@ ; `string'
PUBLIC	??_C@_04NFIE@?5End?$AA@				; `string'
PUBLIC	??_C@_01FKHJ@C?$AA@				; `string'
PUBLIC	??_C@_01FLOP@I?$AA@				; `string'
PUBLIC	??_C@_01PJM@D?$AA@				; `string'
PUBLIC	??_C@_01FIAI@X?$AA@				; `string'
PUBLIC	??_C@_01MHL@U?$AA@				; `string'
PUBLIC	??_C@_0BH@LAEI@?$DO?$DO?$DOEntityInstance?5Tag?3?$AA@ ; `string'
PUBLIC	??_C@_0BE@NLN@?$DO?$DO?$DOEntityInstance?5?5?$AA@ ; `string'
PUBLIC	??_C@_09BNLB@Selected?$CI?$AA@			; `string'
PUBLIC	??_C@_01KMAE@?0?$AA@				; `string'
PUBLIC	??_C@_02CEEM@?$CJ?5?$AA@			; `string'
PUBLIC	??_C@_0N@JCLK@Entity?5Key?3?5?$AA@		; `string'
PUBLIC	??_C@_06FGLI@?$CFs?$CFs?$CFd?$AA@		; `string'
PUBLIC	??_C@_09GAAO@Blob?5Lth?$DN?$AA@			; `string'
EXTRN	_fnGetStringFromAttribute:NEAR
EXTRN	_fnGetAttributeLength:NEAR
EXTRN	_SysReadZeidonIni@16:NEAR
;	COMDAT ??_C@_0BD@MPLN@TraceAllAttributes?$AA@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0BD@MPLN@TraceAllAttributes?$AA@ DB 'TraceAllAttributes', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_07FGLN@?$FLDebug?$FN?$AA@
_DATA	SEGMENT
??_C@_07FGLN@?$FLDebug?$FN?$AA@ DB '[Debug]', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@EKCK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0BN@EKCK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?$AA@ DB ' '
	DB	'                           ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_02IGCE@?5?$CK?$AA@
_DATA	SEGMENT
??_C@_02IGCE@?5?$CK?$AA@ DB ' *', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@LCOG@?$CFs?$HM?$DN?$DN?$DO?$CFs?$CFs?$AA@
_DATA	SEGMENT
??_C@_0L@LCOG@?$CFs?$HM?$DN?$DN?$DO?$CFs?$CFs?$AA@ DB '%s|==>%s%s', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_05JIPK@UNSET?$AA@
_DATA	SEGMENT
??_C@_05JIPK@UNSET?$AA@ DB 'UNSET', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CB@CBND@?5?5?5Cursor?5for?5EntityInstance?5is?5@
_DATA	SEGMENT
??_C@_0CB@CBND@?5?5?5Cursor?5for?5EntityInstance?5is?5@ DB '   Cursor for'
	DB	' EntityInstance is ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_04BAK@NULL?$AA@
_DATA	SEGMENT
??_C@_04BAK@NULL?$AA@ DB 'NULL', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@HKFH@Incremental?5Update?5Flags?3?5?$AA@
_DATA	SEGMENT
??_C@_0BL@HKFH@Incremental?5Update?5Flags?3?5?$AA@ DB 'Incremental Update'
	DB	' Flags: ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_06DIKK@?5Start?$AA@
_DATA	SEGMENT
??_C@_06DIKK@?5Start?$AA@ DB ' Start', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@FMNO@?$DO?$DO?$DOEntityInstance?5flags?3?$AA@
_DATA	SEGMENT
??_C@_0BJ@FMNO@?$DO?$DO?$DOEntityInstance?5flags?3?$AA@ DB '>>>EntityInst'
	DB	'ance flags:', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@JEBJ@?$DO?$DO?$DOEntityInstance?5is?5hidden?$AA@
_DATA	SEGMENT
??_C@_0BM@JEBJ@?$DO?$DO?$DOEntityInstance?5is?5hidden?$AA@ DB '>>>EntityI'
	DB	'nstance is hidden', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@LNMA@?$DO?$DO?$DOEntityInstance?5is?5temporal?$AA@
_DATA	SEGMENT
??_C@_0BO@LNMA@?$DO?$DO?$DOEntityInstance?5is?5temporal?$AA@ DB '>>>Entit'
	DB	'yInstance is temporal', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@BKJC@?$DO?$DO?$DOEntityInstance?5has?5a?5previous@
_DATA	SEGMENT
??_C@_0CJ@BKJC@?$DO?$DO?$DOEntityInstance?5has?5a?5previous@ DB '>>>Entit'
	DB	'yInstance has a previous version', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@IEBF@?$DO?$DO?$DOEntityInstance?5is?5a?5previous?5@
_DATA	SEGMENT
??_C@_0CI@IEBF@?$DO?$DO?$DOEntityInstance?5is?5a?5previous?5@ DB '>>>Enti'
	DB	'tyInstance is a previous version', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CN@LKO@?$DO?$DO?$DOEntityInstance?5is?5a?5previous?5@
_DATA	SEGMENT
??_C@_0CN@LKO@?$DO?$DO?$DOEntityInstance?5is?5a?5previous?5@ DB '>>>Entit'
	DB	'yInstance is a previous version root', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_04NFIE@?5End?$AA@
_DATA	SEGMENT
??_C@_04NFIE@?5End?$AA@ DB ' End', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_01FKHJ@C?$AA@
_DATA	SEGMENT
??_C@_01FKHJ@C?$AA@ DB 'C', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_01FLOP@I?$AA@
_DATA	SEGMENT
??_C@_01FLOP@I?$AA@ DB 'I', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_01PJM@D?$AA@
_DATA	SEGMENT
??_C@_01PJM@D?$AA@ DB 'D', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_01FIAI@X?$AA@
_DATA	SEGMENT
??_C@_01FIAI@X?$AA@ DB 'X', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_01MHL@U?$AA@
_DATA	SEGMENT
??_C@_01MHL@U?$AA@ DB 'U', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@LAEI@?$DO?$DO?$DOEntityInstance?5Tag?3?$AA@
_DATA	SEGMENT
??_C@_0BH@LAEI@?$DO?$DO?$DOEntityInstance?5Tag?3?$AA@ DB '>>>EntityInstan'
	DB	'ce Tag:', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NLN@?$DO?$DO?$DOEntityInstance?5?5?$AA@
_DATA	SEGMENT
??_C@_0BE@NLN@?$DO?$DO?$DOEntityInstance?5?5?$AA@ DB '>>>EntityInstance  '
	DB	00H						; `string'
_DATA	ENDS
;	COMDAT ??_C@_09BNLB@Selected?$CI?$AA@
_DATA	SEGMENT
??_C@_09BNLB@Selected?$CI?$AA@ DB 'Selected(', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_01KMAE@?0?$AA@
_DATA	SEGMENT
??_C@_01KMAE@?0?$AA@ DB ',', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_02CEEM@?$CJ?5?$AA@
_DATA	SEGMENT
??_C@_02CEEM@?$CJ?5?$AA@ DB ') ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@JCLK@Entity?5Key?3?5?$AA@
_DATA	SEGMENT
??_C@_0N@JCLK@Entity?5Key?3?5?$AA@ DB 'Entity Key: ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_06FGLI@?$CFs?$CFs?$CFd?$AA@
_DATA	SEGMENT
??_C@_06FGLI@?$CFs?$CFs?$CFd?$AA@ DB '%s%s%d', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_09GAAO@Blob?5Lth?$DN?$AA@
_DATA	SEGMENT
??_C@_09GAAO@Blob?5Lth?$DN?$AA@ DB 'Blob Lth=', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntityCsr$ = 12
_nSpaces$ = 16
_lpViewEntityCsrPosition$ = 20
_lpViewEntity$ = -8
_lpViewAttrib$ = -48
_szSpaces$ = -40
_szTraceAll$ = -44
_szWorkString$ = -32052
_lpViewCsr$ = -4
_lpSelectedInstance$ = -52
_k$ = -32056
_szFlags$7924 = -32108
_lpEntityInstance$7926 = -32112
_nWk1$7967 = -32124
_nWk2$7968 = -32116
_nWk3$7969 = -32120
_ulLth$7988 = -32128
_fnDisplayEntityInstance PROC NEAR

; 1000 : {

	push	ebp
	mov	ebp, esp
	mov	eax, 32132				; 00007d84H
	call	__chkstk
	push	esi
	push	edi

; 1001 :    LPVIEWENTITY  lpViewEntity;
; 1002 :    LPVIEWATTRIB  lpViewAttrib;
; 1003 :    zCHAR         szSpaces[ 30 ];
; 1004 :    zCHAR         szTraceAll[ 2 ];
; 1005 :    zCHAR         szWorkString[ 32000 ];
; 1006 :    LPVIEWCSR          lpViewCsr;
; 1007 :    LPSELECTEDINSTANCE lpSelectedInstance;
; 1008 :    int           k;
; 1009 : 
; 1010 :    SysReadZeidonIni( -1, "[Debug]", "TraceAllAttributes", szTraceAll );

	lea	eax, DWORD PTR _szTraceAll$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BD@MPLN@TraceAllAttributes?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_07FGLN@?$FLDebug?$FN?$AA@ ; `string'
	push	-1
	call	_SysReadZeidonIni@16

; 1011 : 
; 1012 :    zstrcpy( szSpaces, "                            " );

	push	OFFSET FLAT:??_C@_0BN@EKCK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?$AA@ ; `string'
	lea	ecx, DWORD PTR _szSpaces$[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8

; 1013 :    if ( nSpaces > 20 )

	movsx	edx, WORD PTR _nSpaces$[ebp]
	cmp	edx, 20					; 00000014H
	jle	SHORT $L7911

; 1014 :       nSpaces = 20;

	mov	WORD PTR _nSpaces$[ebp], 20		; 00000014H
$L7911:

; 1015 : 
; 1016 :    szSpaces[ nSpaces ] = 0;

	movsx	eax, WORD PTR _nSpaces$[ebp]
	mov	BYTE PTR _szSpaces$[ebp+eax], 0

; 1017 : 
; 1018 :    lpViewEntity = zGETPTR( lpViewEntityCsr->hViewEntity );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1019 :    TraceLine( "%s|==>%s%s", szSpaces, lpViewEntity->szName,
; 1020 :               (lpViewEntityCsr && lpViewEntityCsrPosition &&
; 1021 :                lpViewEntityCsr->hEntityInstance ==
; 1022 :                   lpViewEntityCsrPosition->hEntityInstance) ? " *" : "" );

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	SHORT $L8904
	cmp	DWORD PTR _lpViewEntityCsrPosition$[ebp], 0
	je	SHORT $L8904
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR _lpViewEntityCsrPosition$[ebp]
	mov	edx, DWORD PTR [eax+26]
	cmp	edx, DWORD PTR [ecx+26]
	jne	SHORT $L8904
	mov	DWORD PTR -32132+[ebp], OFFSET FLAT:??_C@_02IGCE@?5?$CK?$AA@ ; `string'
	jmp	SHORT $L8905
$L8904:
	mov	DWORD PTR -32132+[ebp], OFFSET FLAT:??_C@_00A@?$AA@ ; `string'
$L8905:
	mov	eax, DWORD PTR -32132+[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	lea	edx, DWORD PTR _szSpaces$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0L@LCOG@?$CFs?$HM?$DN?$DN?$DO?$CFs?$CFs?$AA@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H

; 1023 : 
; 1024 :    lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+179]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 1025 :    zstrcpy( szWorkString, "   " );

	push	OFFSET FLAT:??_C@_03MFGH@?5?5?5?$AA@	; `string'
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcpy
	add	esp, 8

; 1026 :    if ( lpViewEntityCsr->hEntityInstance == UNSET_CSR )

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [eax+26], 1
	jne	SHORT $L7917

; 1028 :       TraceLineS( "   Cursor for EntityInstance is ", "UNSET" );

	push	OFFSET FLAT:??_C@_05JIPK@UNSET?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0CB@CBND@?5?5?5Cursor?5for?5EntityInstance?5is?5@ ; `string'
	call	_TraceLineS@8

; 1030 :    else

	jmp	$L7983
$L7917:

; 1031 :    if ( lpViewEntityCsr->hEntityInstance == NULL_CSR )

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	cmp	DWORD PTR [ecx+26], 0
	jne	SHORT $L7921

; 1033 :       TraceLineS( "   Cursor for EntityInstance is ", "NULL" );

	push	OFFSET FLAT:??_C@_04BAK@NULL?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0CB@CBND@?5?5?5Cursor?5for?5EntityInstance?5is?5@ ; `string'
	call	_TraceLineS@8

; 1035 :    else

	jmp	$L7983
$L7921:

; 1037 :       zCHAR            szFlags[ 50 ] = "Incremental Update Flags: ";

	mov	ecx, 6
	mov	esi, OFFSET FLAT:??_C@_0BL@HKFH@Incremental?5Update?5Flags?3?5?$AA@ ; `string'
	lea	edi, DWORD PTR _szFlags$7924[ebp]
	rep movsd
	movsw
	movsb
	xor	edx, edx
	mov	DWORD PTR _szFlags$7924[ebp+27], edx
	mov	DWORD PTR _szFlags$7924[ebp+31], edx
	mov	DWORD PTR _szFlags$7924[ebp+35], edx
	mov	DWORD PTR _szFlags$7924[ebp+39], edx
	mov	DWORD PTR _szFlags$7924[ebp+43], edx
	mov	WORD PTR _szFlags$7924[ebp+47], dx
	mov	BYTE PTR _szFlags$7924[ebp+49], dl

; 1038 :       LPENTITYINSTANCE lpEntityInstance = zGETPTR( lpViewEntityCsr->hEntityInstance );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$7926[ebp], eax

; 1039 : 
; 1040 :       if ( lpEntityInstance->u.nInd.bHidden      ||
; 1041 :            lpEntityInstance->u.nInd.bTemporal    ||
; 1042 :            lpEntityInstance->hPrevVsn            ||
; 1043 :            lpEntityInstance->u.nInd.bPrevVersion ||
; 1044 :            lpEntityInstance->u.nInd.bPrevVsnRoot )

	mov	edx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	jne	SHORT $L7929
	mov	ecx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7929
	mov	eax, DWORD PTR _lpEntityInstance$7926[ebp]
	cmp	DWORD PTR [eax+38], 0
	jne	SHORT $L7929
	mov	ecx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 8
	and	edx, 1
	test	edx, edx
	jne	SHORT $L7929
	mov	eax, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	je	$L7928
$L7929:

; 1046 :          TraceLineS( ">>>EntityInstance flags:", " Start" );

	push	OFFSET FLAT:??_C@_06DIKK@?5Start?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0BJ@FMNO@?$DO?$DO?$DOEntityInstance?5flags?3?$AA@ ; `string'
	call	_TraceLineS@8

; 1047 :          if ( lpEntityInstance->u.nInd.bHidden )

	mov	edx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L7932

; 1048 :             TraceLineS( ">>>EntityInstance is hidden", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BM@JEBJ@?$DO?$DO?$DOEntityInstance?5is?5hidden?$AA@ ; `string'
	call	_TraceLineS@8
$L7932:

; 1049 :          if ( lpEntityInstance->u.nInd.bTemporal )

	mov	ecx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 11					; 0000000bH
	and	edx, 1
	test	edx, edx
	je	SHORT $L7934

; 1050 :             TraceLineS( ">>>EntityInstance is temporal", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BO@LNMA@?$DO?$DO?$DOEntityInstance?5is?5temporal?$AA@ ; `string'
	call	_TraceLineS@8
$L7934:

; 1051 :          if ( lpEntityInstance->hPrevVsn )

	mov	eax, DWORD PTR _lpEntityInstance$7926[ebp]
	cmp	DWORD PTR [eax+38], 0
	je	SHORT $L7936

; 1052 :             TraceLineS( ">>>EntityInstance has a previous version", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CJ@BKJC@?$DO?$DO?$DOEntityInstance?5has?5a?5previous@ ; `string'
	call	_TraceLineS@8
$L7936:

; 1053 :          if ( lpEntityInstance->u.nInd.bPrevVersion )

	mov	ecx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 8
	and	edx, 1
	test	edx, edx
	je	SHORT $L7938

; 1054 :             TraceLineS( ">>>EntityInstance is a previous version", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CI@IEBF@?$DO?$DO?$DOEntityInstance?5is?5a?5previous?5@ ; `string'
	call	_TraceLineS@8
$L7938:

; 1055 :          if ( lpEntityInstance->u.nInd.bPrevVsnRoot )

	mov	eax, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	ecx, DWORD PTR [eax+6]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L7940

; 1056 :             TraceLineS( ">>>EntityInstance is a previous version root", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CN@LKO@?$DO?$DO?$DOEntityInstance?5is?5a?5previous?5@ ; `string'
	call	_TraceLineS@8
$L7940:

; 1057 : 
; 1058 :          TraceLineS( ">>>EntityInstance flags:", " End" );

	push	OFFSET FLAT:??_C@_04NFIE@?5End?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0BJ@FMNO@?$DO?$DO?$DOEntityInstance?5flags?3?$AA@ ; `string'
	call	_TraceLineS@8
$L7928:

; 1060 : 
; 1061 :       if ( lpEntityInstance->u.nInd.bCreated )

	mov	edx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	je	SHORT $L7943

; 1062 :          zstrcat( szFlags, "C" );

	push	OFFSET FLAT:??_C@_01FKHJ@C?$AA@		; `string'
	lea	ecx, DWORD PTR _szFlags$7924[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L7943:

; 1063 : 
; 1064 :       if ( lpEntityInstance->u.nInd.bIncluded )

	mov	edx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	je	SHORT $L7945

; 1065 :          zstrcat( szFlags, "I" );

	push	OFFSET FLAT:??_C@_01FLOP@I?$AA@		; `string'
	lea	ecx, DWORD PTR _szFlags$7924[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L7945:

; 1066 : 
; 1067 :       if ( lpEntityInstance->u.nInd.bDeleted )

	mov	edx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 3
	and	eax, 1
	test	eax, eax
	je	SHORT $L7947

; 1068 :          zstrcat( szFlags, "D" );

	push	OFFSET FLAT:??_C@_01PJM@D?$AA@		; `string'
	lea	ecx, DWORD PTR _szFlags$7924[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L7947:

; 1069 : 
; 1070 :       if ( lpEntityInstance->u.nInd.bExcluded )

	mov	edx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	je	SHORT $L7949

; 1071 :          zstrcat( szFlags, "X" );

	push	OFFSET FLAT:??_C@_01FIAI@X?$AA@		; `string'
	lea	ecx, DWORD PTR _szFlags$7924[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L7949:

; 1072 : 
; 1073 :       if ( lpEntityInstance->u.nInd.bExcluded )

	mov	edx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	eax, DWORD PTR [edx+6]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	je	SHORT $L7951

; 1074 :          zstrcat( szFlags, "U" );

	push	OFFSET FLAT:??_C@_01MHL@U?$AA@		; `string'
	lea	ecx, DWORD PTR _szFlags$7924[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L7951:

; 1075 : 
; 1076 :       TraceLineS( szSpaces, szFlags );

	lea	edx, DWORD PTR _szFlags$7924[ebp]
	push	edx
	lea	eax, DWORD PTR _szSpaces$[ebp]
	push	eax
	call	_TraceLineS@8

; 1077 : 
; 1078 :       if ( lpEntityInstance->lTag )

	mov	ecx, DWORD PTR _lpEntityInstance$7926[ebp]
	cmp	DWORD PTR [ecx+46], 0
	je	SHORT $L7953

; 1079 :          TraceLineX( ">>>EntityInstance Tag:", lpEntityInstance->lTag );

	mov	edx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	eax, DWORD PTR [edx+46]
	push	eax
	push	OFFSET FLAT:??_C@_0BH@LAEI@?$DO?$DO?$DOEntityInstance?5Tag?3?$AA@ ; `string'
	call	_TraceLineX@8
$L7953:

; 1080 : 
; 1081 :       lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1082 :       lpSelectedInstance = zGETPTR( lpViewCsr->hFirstSelectedInstance );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSelectedInstance$[ebp], eax
$L7960:

; 1083 : 
; 1084 :       while ( lpSelectedInstance &&
; 1085 :                  ((LPENTITYINSTANCE)
; 1086 :                    zGETPTR( lpSelectedInstance->xEntityInstance ) !=
; 1087 :                                                          lpEntityInstance ||
; 1088 :                    lpSelectedInstance->hViewEntity !=
; 1089 :                                             lpEntityInstance->hViewEntity ) )

	cmp	DWORD PTR _lpSelectedInstance$[ebp], 0
	je	SHORT $L7961
	mov	edx, DWORD PTR _lpSelectedInstance$[ebp]
	mov	eax, DWORD PTR [edx+12]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	cmp	eax, DWORD PTR _lpEntityInstance$7926[ebp]
	jne	SHORT $L7962
	mov	ecx, DWORD PTR _lpSelectedInstance$[ebp]
	mov	edx, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	eax, DWORD PTR [ecx+8]
	cmp	eax, DWORD PTR [edx+2]
	je	SHORT $L7961
$L7962:

; 1091 :          lpSelectedInstance = (LPSELECTEDINSTANCE)
; 1092 :                         zGETPTR( lpSelectedInstance->hNextSelectedInstance );

	mov	ecx, DWORD PTR _lpSelectedInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSelectedInstance$[ebp], eax

; 1093 :       }

	jmp	SHORT $L7960
$L7961:

; 1094 : 
; 1095 :       zstrcpy( szWorkString, ">>>EntityInstance  " );

	push	OFFSET FLAT:??_C@_0BE@NLN@?$DO?$DO?$DOEntityInstance?5?5?$AA@ ; `string'
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcpy
	add	esp, 8

; 1096 :       if ( lpSelectedInstance && lpSelectedInstance->nSelectSet )

	cmp	DWORD PTR _lpSelectedInstance$[ebp], 0
	je	$L7966
	mov	ecx, DWORD PTR _lpSelectedInstance$[ebp]
	movsx	edx, WORD PTR [ecx+6]
	test	edx, edx
	je	$L7966

; 1098 :          zSHORT nWk1, nWk2, nWk3;
; 1099 : 
; 1100 :          nWk1 = 0;

	mov	WORD PTR _nWk1$7967[ebp], 0

; 1101 :          nWk2 = 0x0001;

	mov	WORD PTR _nWk2$7968[ebp], 1

; 1102 :          zstrcat( szWorkString, "Selected(" );

	push	OFFSET FLAT:??_C@_09BNLB@Selected?$CI?$AA@ ; `string'
	lea	eax, DWORD PTR _szWorkString$[ebp]
	push	eax
	call	_strcat
	add	esp, 8

; 1103 :          for ( nWk3 = 1; nWk3 < 17; nWk3++ )

	mov	WORD PTR _nWk3$7969[ebp], 1
	jmp	SHORT $L7971
$L7972:
	mov	cx, WORD PTR _nWk3$7969[ebp]
	add	cx, 1
	mov	WORD PTR _nWk3$7969[ebp], cx
$L7971:
	movsx	edx, WORD PTR _nWk3$7969[ebp]
	cmp	edx, 17					; 00000011H
	jge	$L7973

; 1105 :             if ( lpSelectedInstance->nSelectSet & nWk2 )

	mov	eax, DWORD PTR _lpSelectedInstance$[ebp]
	movsx	ecx, WORD PTR [eax+6]
	movsx	edx, WORD PTR _nWk2$7968[ebp]
	and	ecx, edx
	test	ecx, ecx
	je	SHORT $L7974

; 1107 :                if ( nWk1 )

	movsx	eax, WORD PTR _nWk1$7967[ebp]
	test	eax, eax
	je	SHORT $L7975

; 1108 :                   zstrcat( szWorkString, "," );

	push	OFFSET FLAT:??_C@_01KMAE@?0?$AA@	; `string'
	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	call	_strcat
	add	esp, 8
$L7975:

; 1109 : 
; 1110 :                zltoa( (zLONG) nWk3, &szWorkString[ 250 ] );

	push	10					; 0000000aH
	lea	edx, DWORD PTR _szWorkString$[ebp+250]
	push	edx
	movsx	eax, WORD PTR _nWk3$7969[ebp]
	push	eax
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 1111 :                zstrcat( szWorkString, &szWorkString[ 250 ] );

	lea	ecx, DWORD PTR _szWorkString$[ebp+250]
	push	ecx
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcat
	add	esp, 8

; 1112 :                nWk1++;

	mov	ax, WORD PTR _nWk1$7967[ebp]
	add	ax, 1
	mov	WORD PTR _nWk1$7967[ebp], ax
$L7974:

; 1114 : 
; 1115 :             nWk2 <<= 1;

	mov	cx, WORD PTR _nWk2$7968[ebp]
	shl	cx, 1
	mov	WORD PTR _nWk2$7968[ebp], cx

; 1116 :          }

	jmp	$L7972
$L7973:

; 1117 : 
; 1118 :          zstrcat( szWorkString, ") " );

	push	OFFSET FLAT:??_C@_02CEEM@?$CJ?5?$AA@	; `string'
	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strcat
	add	esp, 8
$L7966:

; 1120 : 
; 1121 :       TraceLine( "%s%s%d", szSpaces, "Entity Key: ", lpEntityInstance->ulKey );

	mov	eax, DWORD PTR _lpEntityInstance$7926[ebp]
	mov	ecx, DWORD PTR [eax+50]
	push	ecx
	push	OFFSET FLAT:??_C@_0N@JCLK@Entity?5Key?3?5?$AA@ ; `string'
	lea	edx, DWORD PTR _szSpaces$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_06FGLI@?$CFs?$CFs?$CFd?$AA@ ; `string'
	call	_TraceLine
	add	esp, 16					; 00000010H
$L7982:

; 1122 : 
; 1123 :       while ( lpViewAttrib )

	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	$L7983

; 1125 :          zstrcpy( szWorkString + 3, lpViewAttrib->szName );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	lea	ecx, DWORD PTR _szWorkString$[ebp+3]
	push	ecx
	call	_strcpy
	add	esp, 8

; 1126 :          k = zstrlen( szWorkString );

	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _k$[ebp], eax

; 1127 :          szWorkString[ k++ ] = ' ';

	mov	eax, DWORD PTR _k$[ebp]
	mov	BYTE PTR _szWorkString$[ebp+eax], 32	; 00000020H
	mov	ecx, DWORD PTR _k$[ebp]
	add	ecx, 1
	mov	DWORD PTR _k$[ebp], ecx
$L7985:

; 1128 :          while ( k < 14 )

	cmp	DWORD PTR _k$[ebp], 14			; 0000000eH
	jge	SHORT $L7986

; 1129 :             szWorkString[ k++ ] = ' ';

	mov	edx, DWORD PTR _k$[ebp]
	mov	BYTE PTR _szWorkString$[ebp+edx], 32	; 00000020H
	mov	eax, DWORD PTR _k$[ebp]
	add	eax, 1
	mov	DWORD PTR _k$[ebp], eax
	jmp	SHORT $L7985
$L7986:

; 1130 : 
; 1131 :          szWorkString[ k ] = 0;

	mov	ecx, DWORD PTR _k$[ebp]
	mov	BYTE PTR _szWorkString$[ebp+ecx], 0

; 1132 :          if ( lpViewAttrib->cType == 'B' )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	eax, BYTE PTR [edx+202]
	cmp	eax, 66					; 00000042H
	jne	$L7990

; 1134 :             zULONG  ulLth;
; 1135 : 
; 1136 :             ulLth = 0;

	mov	DWORD PTR _ulLth$7988[ebp], 0

; 1137 :             fnGetAttributeLength( &ulLth, lpView,
; 1138 :                                   zGETPTR( lpViewEntityCsr->hEntityInstance ),
; 1139 :                                   lpViewAttrib );

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	lea	edx, DWORD PTR _ulLth$7988[ebp]
	push	edx
	call	_fnGetAttributeLength
	add	esp, 16					; 00000010H

; 1140 :             if ( ulLth )

	cmp	DWORD PTR _ulLth$7988[ebp], 0
	je	SHORT $L7990

; 1142 :                zstrcpy( &szWorkString[ k ], "Blob Lth=" );

	push	OFFSET FLAT:??_C@_09GAAO@Blob?5Lth?$DN?$AA@ ; `string'
	mov	eax, DWORD PTR _k$[ebp]
	lea	ecx, DWORD PTR _szWorkString$[ebp+eax]
	push	ecx
	call	_strcpy
	add	esp, 8

; 1143 :                zltoa( (zLONG) ulLth, &szWorkString[ k + 9 ] );

	push	10					; 0000000aH
	mov	edx, DWORD PTR _k$[ebp]
	lea	eax, DWORD PTR _szWorkString$[ebp+edx+9]
	push	eax
	mov	ecx, DWORD PTR _ulLth$7988[ebp]
	push	ecx
	call	DWORD PTR __imp___ltoa
	add	esp, 12					; 0000000cH

; 1144 :                k = zstrlen( szWorkString );

	lea	edx, DWORD PTR _szWorkString$[ebp]
	push	edx
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _k$[ebp], eax

; 1145 :                szWorkString[ k++ ] = ' ';

	mov	eax, DWORD PTR _k$[ebp]
	mov	BYTE PTR _szWorkString$[ebp+eax], 32	; 00000020H
	mov	ecx, DWORD PTR _k$[ebp]
	add	ecx, 1
	mov	DWORD PTR _k$[ebp], ecx

; 1146 :                szWorkString[ k ] = 0;

	mov	edx, DWORD PTR _k$[ebp]
	mov	BYTE PTR _szWorkString$[ebp+edx], 0
$L7990:

; 1151 :             fnGetStringFromAttribute( &szWorkString[ k ],
; 1152 :                                       (zSHORT) ((sizeof( szWorkString ) - 1000) - k),
; 1153 :                                       lpView,
; 1154 :                                       lpViewEntityCsr,
; 1155 :                                       lpViewAttrib, 0 );

	push	0
	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpView$[ebp]
	push	edx
	mov	eax, 31000				; 00007918H
	sub	eax, DWORD PTR _k$[ebp]
	movsx	ecx, ax
	push	ecx
	mov	edx, DWORD PTR _k$[ebp]
	lea	eax, DWORD PTR _szWorkString$[ebp+edx]
	push	eax
	call	_fnGetStringFromAttribute
	add	esp, 24					; 00000018H

; 1157 : 
; 1158 :          if ( szWorkString[ k ] || szTraceAll[ 0 ] == 'Y' )

	mov	ecx, DWORD PTR _k$[ebp]
	movsx	edx, BYTE PTR _szWorkString$[ebp+ecx]
	test	edx, edx
	jne	SHORT $L7995
	movsx	eax, BYTE PTR _szTraceAll$[ebp]
	cmp	eax, 89					; 00000059H
	jne	SHORT $L7994
$L7995:

; 1159 :             TraceLineS( szSpaces, szWorkString );

	lea	ecx, DWORD PTR _szWorkString$[ebp]
	push	ecx
	lea	edx, DWORD PTR _szSpaces$[ebp]
	push	edx
	call	_TraceLineS@8
$L7994:

; 1160 : 
; 1161 :          lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 1162 :       }

	jmp	$L7982
$L7983:

; 1164 : 
; 1165 :    return( 0 );

	xor	ax, ax

; 1166 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	0
_fnDisplayEntityInstance ENDP
_TEXT	ENDS
PUBLIC	_fnShowEntityInstanceInfo
PUBLIC	??_C@_0BB@LHDO@EntityInstance?5?5?$AA@		; `string'
PUBLIC	??_C@_0BA@OIJE@?5?5?5?5?5?5?5is?5UNSET?$AA@	; `string'
PUBLIC	??_C@_0P@GPAM@?5?5?5?5?5?5?5is?5NULL?$AA@	; `string'
PUBLIC	??_C@_0P@MACG@?5?5?5?5?5?5?5level?5?5?$AA@	; `string'
PUBLIC	??_C@_0P@HFNI@?5?5?5?5?5?5?5name?5?5?5?$AA@	; `string'
;	COMDAT ??_C@_0BB@LHDO@EntityInstance?5?5?$AA@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0BB@LHDO@EntityInstance?5?5?$AA@ DB 'EntityInstance  ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@OIJE@?5?5?5?5?5?5?5is?5UNSET?$AA@
_DATA	SEGMENT
??_C@_0BA@OIJE@?5?5?5?5?5?5?5is?5UNSET?$AA@ DB '       is UNSET', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@GPAM@?5?5?5?5?5?5?5is?5NULL?$AA@
_DATA	SEGMENT
??_C@_0P@GPAM@?5?5?5?5?5?5?5is?5NULL?$AA@ DB '       is NULL', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@MACG@?5?5?5?5?5?5?5level?5?5?$AA@
_DATA	SEGMENT
??_C@_0P@MACG@?5?5?5?5?5?5?5level?5?5?$AA@ DB '       level  ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@HFNI@?5?5?5?5?5?5?5name?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0P@HFNI@?5?5?5?5?5?5?5name?5?5?5?$AA@ DB '       name   ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpEntityInstance$ = 8
_lpViewEntity$ = -4
_fnShowEntityInstanceInfo PROC NEAR

; 1170 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 1171 :    LPVIEWENTITY lpViewEntity;
; 1172 : 
; 1173 :    TraceLineS( "EntityInstance  ", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BB@LHDO@EntityInstance?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1174 :    switch ( (zLONG) lpEntityInstance )
; 1175 :    {

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	DWORD PTR -8+[ebp], eax
	cmp	DWORD PTR -8+[ebp], 0
	je	SHORT $L8013
	cmp	DWORD PTR -8+[ebp], 1
	je	SHORT $L8010
	jmp	SHORT $L8015
$L8010:

; 1176 :       case (zLONG) UNSET_CSR:
; 1177 :          TraceLineS( "       is UNSET", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BA@OIJE@?5?5?5?5?5?5?5is?5UNSET?$AA@ ; `string'
	call	_TraceLineS@8

; 1178 :          TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1179 :          break;

	jmp	SHORT $L8005
$L8013:

; 1180 : 
; 1181 :       case (zLONG) NULL_CSR:
; 1182 :          TraceLineS( "       is NULL", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0P@GPAM@?5?5?5?5?5?5?5is?5NULL?$AA@ ; `string'
	call	_TraceLineS@8

; 1183 :          TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1184 :          break;

	jmp	SHORT $L8005
$L8015:

; 1185 : 
; 1186 :       default:
; 1187 :          TraceLineI( "       level  ", lpEntityInstance->nLevel );

	mov	ecx, DWORD PTR _lpEntityInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	push	edx
	push	OFFSET FLAT:??_C@_0P@MACG@?5?5?5?5?5?5?5level?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1188 :          lpViewEntity = zGETPTR( lpEntityInstance->hViewEntity );

	mov	eax, DWORD PTR _lpEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1189 :          TraceLineS( "       name   ", lpViewEntity->szName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0P@HFNI@?5?5?5?5?5?5?5name?5?5?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8005:

; 1191 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnShowEntityInstanceInfo ENDP
_TEXT	ENDS
PUBLIC	_fnShowViewEntityCsrInfo
PUBLIC	??_C@_09BLKP@EntityCsr?$AA@			; `string'
PUBLIC	??_C@_0P@JBBB@?5?5?5?5?5?5?5hier?5?5?5?$AA@	; `string'
;	COMDAT ??_C@_09BLKP@EntityCsr?$AA@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_09BLKP@EntityCsr?$AA@ DB 'EntityCsr', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@JBBB@?5?5?5?5?5?5?5hier?5?5?5?$AA@
_DATA	SEGMENT
??_C@_0P@JBBB@?5?5?5?5?5?5?5hier?5?5?5?$AA@ DB '       hier   ', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpViewEntityCsr$ = 8
_lpViewEntity$ = -4
_fnShowViewEntityCsrInfo PROC NEAR

; 1195 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 1196 :    LPVIEWENTITY lpViewEntity;
; 1197 : 
; 1198 :    TraceLineS( "EntityCsr", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_09BLKP@EntityCsr?$AA@	; `string'
	call	_TraceLineS@8

; 1199 :    if ( lpViewEntityCsr )

	cmp	DWORD PTR _lpViewEntityCsr$[ebp], 0
	je	SHORT $L8025

; 1201 :       TraceLineI( "       level  ", lpViewEntityCsr->nLevel );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	ecx, WORD PTR [eax+22]
	push	ecx
	push	OFFSET FLAT:??_C@_0P@MACG@?5?5?5?5?5?5?5level?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1202 :       TraceLineI( "       hier   ", lpViewEntityCsr->nHierNbr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	movsx	eax, WORD PTR [edx+24]
	push	eax
	push	OFFSET FLAT:??_C@_0P@JBBB@?5?5?5?5?5?5?5hier?5?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1203 :       lpViewEntity = zGETPTR( lpViewEntityCsr->hViewEntity );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1204 :       TraceLineS( "       name   ", lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0P@HFNI@?5?5?5?5?5?5?5name?5?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1205 :       fnShowEntityInstanceInfo( zGETPTR( lpViewEntityCsr->hEntityInstance ) );

	mov	ecx, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowEntityInstanceInfo
	add	esp, 4

; 1207 :    else

	jmp	SHORT $L8029
$L8025:

; 1209 :       TraceLineS( "       is NULL", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0P@GPAM@?5?5?5?5?5?5?5is?5NULL?$AA@ ; `string'
	call	_TraceLineS@8

; 1210 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1211 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8
$L8029:

; 1213 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnShowViewEntityCsrInfo ENDP
_TEXT	ENDS
PUBLIC	_DisplayCursorInfo@4
PUBLIC	??_C@_0BN@IGGG@View?5Cursor?5Info?5for?5Object?5?$AA@ ; `string'
PUBLIC	??_C@_0BE@NOMK@?5?5RootViewEntityCsr?$AA@	; `string'
PUBLIC	??_C@_0BJ@MGJI@ViewCsr?5HierRootInstance?$AA@	; `string'
PUBLIC	??_C@_0BF@GPIA@ViewCsr?5HierInstance?$AA@	; `string'
PUBLIC	??_C@_0BL@PMGF@ViewCsr?5ViewParentInstance?$AA@	; `string'
PUBLIC	??_C@_0BL@IEPP@The?5number?5of?5entities?5is?5?$AA@ ; `string'
PUBLIC	??_C@_0P@KCNP@Entity?5number?5?$AA@		; `string'
PUBLIC	??_C@_0BH@JPIA@Subobject?5Information?5?$AA@	; `string'
PUBLIC	??_C@_0BE@JJEF@?$CK?$CKViewRootParentCsr?$AA@	; `string'
PUBLIC	??_C@_0BD@JICN@?$CK?$CKSubobjectRootCsr?$AA@	; `string'
PUBLIC	??_C@_0CD@IFKK@?$CK?$CKHierarchical?5number?5of?5root?5cs@ ; `string'
PUBLIC	??_C@_0BE@IIKG@?$CK?$CKLastDescendentCsr?$AA@	; `string'
PUBLIC	??_C@_0BD@PHOL@?$CK?$CKLastDescHierNbr?5?$AA@	; `string'
PUBLIC	??_C@_0BL@BACN@?$CK?$CKViewParentEntityInstance?$AA@ ; `string'
PUBLIC	??_C@_0BF@BFND@?$CK?$CKRootEntityInstance?$AA@	; `string'
PUBLIC	??_C@_0BN@EKEM@?4?4Recursive?5subobject?5info?4?4?$AA@ ; `string'
PUBLIC	??_C@_0BE@PHCG@?5?5Level?5adjustment?5?$AA@	; `string'
PUBLIC	??_C@_0BK@LAFI@?$CK?$CKRecursive?5View?5Entity?3?5?$AA@ ; `string'
PUBLIC	??_C@_0BM@HBPI@?5?5?5?5?5?5?5?5?5?5?5?5View?5Entity?5Csr?$AA@ ; `string'
PUBLIC	??_C@_0BO@BAPJ@?5?5?5?5?5?5?5?5Parent?5EntityInstance?$AA@ ; `string'
PUBLIC	??_C@_0CB@GMNE@?4?4End?5Recursive?5subobject?5info?4?4@ ; `string'
;	COMDAT ??_C@_0BN@IGGG@View?5Cursor?5Info?5for?5Object?5?$AA@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0BN@IGGG@View?5Cursor?5Info?5for?5Object?5?$AA@ DB 'View Cursor Inf'
	DB	'o for Object ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NOMK@?5?5RootViewEntityCsr?$AA@
_DATA	SEGMENT
??_C@_0BE@NOMK@?5?5RootViewEntityCsr?$AA@ DB '  RootViewEntityCsr', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@MGJI@ViewCsr?5HierRootInstance?$AA@
_DATA	SEGMENT
??_C@_0BJ@MGJI@ViewCsr?5HierRootInstance?$AA@ DB 'ViewCsr HierRootInstanc'
	DB	'e', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@GPIA@ViewCsr?5HierInstance?$AA@
_DATA	SEGMENT
??_C@_0BF@GPIA@ViewCsr?5HierInstance?$AA@ DB 'ViewCsr HierInstance', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@PMGF@ViewCsr?5ViewParentInstance?$AA@
_DATA	SEGMENT
??_C@_0BL@PMGF@ViewCsr?5ViewParentInstance?$AA@ DB 'ViewCsr ViewParentIns'
	DB	'tance', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@IEPP@The?5number?5of?5entities?5is?5?$AA@
_DATA	SEGMENT
??_C@_0BL@IEPP@The?5number?5of?5entities?5is?5?$AA@ DB 'The number of ent'
	DB	'ities is ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@KCNP@Entity?5number?5?$AA@
_DATA	SEGMENT
??_C@_0P@KCNP@Entity?5number?5?$AA@ DB 'Entity number ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@JPIA@Subobject?5Information?5?$AA@
_DATA	SEGMENT
??_C@_0BH@JPIA@Subobject?5Information?5?$AA@ DB 'Subobject Information ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@JJEF@?$CK?$CKViewRootParentCsr?$AA@
_DATA	SEGMENT
??_C@_0BE@JJEF@?$CK?$CKViewRootParentCsr?$AA@ DB '**ViewRootParentCsr', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@JICN@?$CK?$CKSubobjectRootCsr?$AA@
_DATA	SEGMENT
??_C@_0BD@JICN@?$CK?$CKSubobjectRootCsr?$AA@ DB '**SubobjectRootCsr', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CD@IFKK@?$CK?$CKHierarchical?5number?5of?5root?5cs@
_DATA	SEGMENT
??_C@_0CD@IFKK@?$CK?$CKHierarchical?5number?5of?5root?5cs@ DB '**Hierarch'
	DB	'ical number of root csr ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@IIKG@?$CK?$CKLastDescendentCsr?$AA@
_DATA	SEGMENT
??_C@_0BE@IIKG@?$CK?$CKLastDescendentCsr?$AA@ DB '**LastDescendentCsr', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@PHOL@?$CK?$CKLastDescHierNbr?5?$AA@
_DATA	SEGMENT
??_C@_0BD@PHOL@?$CK?$CKLastDescHierNbr?5?$AA@ DB '**LastDescHierNbr ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@BACN@?$CK?$CKViewParentEntityInstance?$AA@
_DATA	SEGMENT
??_C@_0BL@BACN@?$CK?$CKViewParentEntityInstance?$AA@ DB '**ViewParentEnti'
	DB	'tyInstance', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@BFND@?$CK?$CKRootEntityInstance?$AA@
_DATA	SEGMENT
??_C@_0BF@BFND@?$CK?$CKRootEntityInstance?$AA@ DB '**RootEntityInstance', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@EKEM@?4?4Recursive?5subobject?5info?4?4?$AA@
_DATA	SEGMENT
??_C@_0BN@EKEM@?4?4Recursive?5subobject?5info?4?4?$AA@ DB '..Recursive su'
	DB	'bobject info..', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@PHCG@?5?5Level?5adjustment?5?$AA@
_DATA	SEGMENT
??_C@_0BE@PHCG@?5?5Level?5adjustment?5?$AA@ DB '  Level adjustment ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@LAFI@?$CK?$CKRecursive?5View?5Entity?3?5?$AA@
_DATA	SEGMENT
??_C@_0BK@LAFI@?$CK?$CKRecursive?5View?5Entity?3?5?$AA@ DB '**Recursive V'
	DB	'iew Entity: ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@HBPI@?5?5?5?5?5?5?5?5?5?5?5?5View?5Entity?5Csr?$AA@
_DATA	SEGMENT
??_C@_0BM@HBPI@?5?5?5?5?5?5?5?5?5?5?5?5View?5Entity?5Csr?$AA@ DB '       '
	DB	'     View Entity Csr', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@BAPJ@?5?5?5?5?5?5?5?5Parent?5EntityInstance?$AA@
_DATA	SEGMENT
??_C@_0BO@BAPJ@?5?5?5?5?5?5?5?5Parent?5EntityInstance?$AA@ DB '        Pa'
	DB	'rent EntityInstance', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CB@GMNE@?4?4End?5Recursive?5subobject?5info?4?4@
_DATA	SEGMENT
??_C@_0CB@GMNE@?4?4End?5Recursive?5subobject?5info?4?4@ DB '..End Recursi'
	DB	've subobject info..', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpCurrentTask$ = -40
_lpViewCsr$ = -4
_lpViewOI$ = -32
_lpViewOD$ = -12
_lpViewEntity$ = -24
_lpViewEntityCsr$ = -36
_lpEntityInstance$ = -20
_lpViewSubobject$ = -16
_uIdx$ = -8
_uLimit$ = -28
_lpRecursViewEntity$8084 = -44
_DisplayCursorInfo@4 PROC NEAR

; 1230 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH

; 1231 :    LPTASK            lpCurrentTask;
; 1232 :    LPVIEWCSR         lpViewCsr;
; 1233 :    LPVIEWOI          lpViewOI;
; 1234 :    LPVIEWOD          lpViewOD;
; 1235 :    LPVIEWENTITY      lpViewEntity;
; 1236 :    LPVIEWENTITYCSR   lpViewEntityCsr;
; 1237 :    LPENTITYINSTANCE  lpEntityInstance;
; 1238 :    LPVIEWSUBOBJECT   lpViewSubobject;
; 1239 :    zUSHORT           uIdx, uLimit;
; 1240 : 
; 1241 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 1242 :    if ( (lpCurrentTask = fnOperationCall( iDisplayCursorInfo, lpView,
; 1243 :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	push	402					; 00000192H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8043

; 1245 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8032
$L8043:

; 1247 : 
; 1248 :    lpViewCsr = zGETPTR( lpView->hViewCsr );

	mov	ecx, DWORD PTR _lpView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 1249 :    lpViewOI  = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1250 :    lpViewOD  = zGETPTR( lpViewOI->hViewOD );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax

; 1251 :    lpViewEntityCsr = zGETPTR( lpViewCsr->hFirstOD_EntityCsr );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax

; 1252 : 
; 1253 :    TraceLineS( "View Cursor Info for Object ", lpViewOD->szName );

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0BN@IGGG@View?5Cursor?5Info?5for?5Object?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1254 :    TraceLineS( "  RootViewEntityCsr", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BE@NOMK@?5?5RootViewEntityCsr?$AA@ ; `string'
	call	_TraceLineS@8

; 1255 :    fnShowViewEntityCsrInfo( zGETPTR( lpViewCsr->hRootViewEntityCsr ) );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+18]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowViewEntityCsrInfo
	add	esp, 4

; 1256 :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1257 : 
; 1258 :    lpEntityInstance = zGETPTR( lpViewCsr->hHierRootEntityInstance );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpEntityInstance$[ebp], eax

; 1259 :    TraceLineS( "ViewCsr HierRootInstance", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BJ@MGJI@ViewCsr?5HierRootInstance?$AA@ ; `string'
	call	_TraceLineS@8

; 1260 :    fnShowEntityInstanceInfo( zGETPTR( lpViewCsr->hHierRootEntityInstance ) );

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	eax, DWORD PTR [edx+22]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowEntityInstanceInfo
	add	esp, 4

; 1261 :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1262 : 
; 1263 :    TraceLineS( "ViewCsr HierInstance", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BF@GPIA@ViewCsr?5HierInstance?$AA@ ; `string'
	call	_TraceLineS@8

; 1264 :    fnShowEntityInstanceInfo( zGETPTR( lpViewCsr->hHierEntityInstance ) );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowEntityInstanceInfo
	add	esp, 4

; 1265 :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1266 : 
; 1267 :    TraceLineS( "ViewCsr ViewParentInstance", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BL@PMGF@ViewCsr?5ViewParentInstance?$AA@ ; `string'
	call	_TraceLineS@8

; 1268 :    fnShowEntityInstanceInfo( zGETPTR( lpViewCsr->hViewParentEntityInstance ) );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+38]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowEntityInstanceInfo
	add	esp, 4

; 1269 :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1270 : 
; 1271 :    uLimit = lpViewCsr->uEntities;

	mov	edx, DWORD PTR _lpViewCsr$[ebp]
	mov	ax, WORD PTR [edx+34]
	mov	WORD PTR _uLimit$[ebp], ax

; 1272 :    TraceLineI( "The number of entities is ", uLimit );

	mov	ecx, DWORD PTR _uLimit$[ebp]
	and	ecx, 65535				; 0000ffffH
	push	ecx
	push	OFFSET FLAT:??_C@_0BL@IEPP@The?5number?5of?5entities?5is?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1273 : 
; 1274 :    for ( uIdx = 1; uIdx <= uLimit; uIdx++, lpViewEntityCsr++ )

	mov	WORD PTR _uIdx$[ebp], 1
	jmp	SHORT $L8059
$L8060:
	mov	dx, WORD PTR _uIdx$[ebp]
	add	dx, 1
	mov	WORD PTR _uIdx$[ebp], dx
	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	add	eax, 30					; 0000001eH
	mov	DWORD PTR _lpViewEntityCsr$[ebp], eax
$L8059:
	mov	ecx, DWORD PTR _uIdx$[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _uLimit$[ebp]
	and	edx, 65535				; 0000ffffH
	cmp	ecx, edx
	jg	SHORT $L8061

; 1276 :       lpViewEntity = zGETPTR( lpViewEntityCsr->hViewEntity );

	mov	eax, DWORD PTR _lpViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1277 : 
; 1278 :       TraceLineI( "Entity number ", uIdx );

	mov	edx, DWORD PTR _uIdx$[ebp]
	and	edx, 65535				; 0000ffffH
	push	edx
	push	OFFSET FLAT:??_C@_0P@KCNP@Entity?5number?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1279 :       TraceLineI( "       level  ", lpViewEntity->nLevel );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, WORD PTR [eax+215]
	push	ecx
	push	OFFSET FLAT:??_C@_0P@MACG@?5?5?5?5?5?5?5level?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1280 :       TraceLineI( "       hier   ", lpViewEntity->nHierNbr );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	movsx	eax, WORD PTR [edx+217]
	push	eax
	push	OFFSET FLAT:??_C@_0P@JBBB@?5?5?5?5?5?5?5hier?5?5?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1281 :       TraceLineS( "       name   ", lpViewEntity->szName );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	add	ecx, 14					; 0000000eH
	push	ecx
	push	OFFSET FLAT:??_C@_0P@HFNI@?5?5?5?5?5?5?5name?5?5?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1282 :       fnShowViewEntityCsrInfo( lpViewEntityCsr );

	mov	edx, DWORD PTR _lpViewEntityCsr$[ebp]
	push	edx
	call	_fnShowViewEntityCsrInfo
	add	esp, 4

; 1283 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1284 :    }

	jmp	$L8060
$L8061:

; 1285 : 
; 1286 :    lpViewSubobject = zGETPTR( lpViewCsr->hFirstViewSubobject );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+30]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$[ebp], eax

; 1287 :    uIdx = 0;

	mov	WORD PTR _uIdx$[ebp], 0
$L8066:

; 1288 :    while ( lpViewSubobject )

	cmp	DWORD PTR _lpViewSubobject$[ebp], 0
	je	$L8067

; 1290 :       TraceLineI( "Subobject Information ", ++uIdx );

	mov	dx, WORD PTR _uIdx$[ebp]
	add	dx, 1
	mov	WORD PTR _uIdx$[ebp], dx
	mov	eax, DWORD PTR _uIdx$[ebp]
	and	eax, 65535				; 0000ffffH
	push	eax
	push	OFFSET FLAT:??_C@_0BH@JPIA@Subobject?5Information?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1291 :       TraceLineS( "**ViewRootParentCsr", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BE@JJEF@?$CK?$CKViewRootParentCsr?$AA@ ; `string'
	call	_TraceLineS@8

; 1292 :       fnShowViewEntityCsrInfo( zGETPTR( lpViewSubobject->hViewRootParentCsr ) );

	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowViewEntityCsrInfo
	add	esp, 4

; 1293 :       TraceLineS( "**SubobjectRootCsr", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BD@JICN@?$CK?$CKSubobjectRootCsr?$AA@ ; `string'
	call	_TraceLineS@8

; 1294 :       fnShowViewEntityCsrInfo( zGETPTR( lpViewSubobject->hRootCsr ) );

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowViewEntityCsrInfo
	add	esp, 4

; 1295 :       TraceLineI( "**Hierarchical number of root csr ",
; 1296 :                   lpViewSubobject->nRootHierNbr );

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	movsx	eax, WORD PTR [edx+18]
	push	eax
	push	OFFSET FLAT:??_C@_0CD@IFKK@?$CK?$CKHierarchical?5number?5of?5root?5cs@ ; `string'
	call	_TraceLineI@8

; 1297 :       TraceLineS( "**LastDescendentCsr", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BE@IIKG@?$CK?$CKLastDescendentCsr?$AA@ ; `string'
	call	_TraceLineS@8

; 1298 :       fnShowViewEntityCsrInfo( zGETPTR( lpViewSubobject->hLastDescCsr ) );

	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR [ecx+20]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowViewEntityCsrInfo
	add	esp, 4

; 1299 :       TraceLineI( "**LastDescHierNbr ", lpViewSubobject->nLastDescHierNbr );

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	movsx	ecx, WORD PTR [eax+24]
	push	ecx
	push	OFFSET FLAT:??_C@_0BD@PHOL@?$CK?$CKLastDescHierNbr?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1300 :       TraceLineS( "**ViewParentEntityInstance", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BL@BACN@?$CK?$CKViewParentEntityInstance?$AA@ ; `string'
	call	_TraceLineS@8

; 1301 :       fnShowEntityInstanceInfo( zGETPTR( lpViewSubobject->
; 1302 :                                              hViewParentEntityInstance ) );

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowEntityInstanceInfo
	add	esp, 4

; 1303 :       TraceLineS( "**RootEntityInstance", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BF@BFND@?$CK?$CKRootEntityInstance?$AA@ ; `string'
	call	_TraceLineS@8

; 1304 :       fnShowEntityInstanceInfo( zGETPTR( lpViewSubobject->
; 1305 :                                                    hRootEntityInstance ) );

	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR [ecx+30]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowEntityInstanceInfo
	add	esp, 4

; 1306 :       TraceLineS( "..Recursive subobject info..", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BN@EKEM@?4?4Recursive?5subobject?5info?4?4?$AA@ ; `string'
	call	_TraceLineS@8

; 1307 :       TraceLineI( "  Level adjustment ", lpViewSubobject->nLevelChg );

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	movsx	ecx, WORD PTR [eax+34]
	push	ecx
	push	OFFSET FLAT:??_C@_0BE@PHCG@?5?5Level?5adjustment?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1308 :       if ( lpViewSubobject->hRecursViewEntity )

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	cmp	DWORD PTR [edx+36], 0
	je	SHORT $L8083

; 1310 :          LPVIEWENTITY lpRecursViewEntity;
; 1311 : 
; 1312 :          lpRecursViewEntity = zGETPTR( lpViewSubobject->hRecursViewEntity );

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR [eax+36]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRecursViewEntity$8084[ebp], eax

; 1313 :          TraceLineS( "**Recursive View Entity: ",
; 1314 :                      lpRecursViewEntity->szName );

	mov	edx, DWORD PTR _lpRecursViewEntity$8084[ebp]
	add	edx, 14					; 0000000eH
	push	edx
	push	OFFSET FLAT:??_C@_0BK@LAFI@?$CK?$CKRecursive?5View?5Entity?3?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1316 :       else

	jmp	SHORT $L8087
$L8083:

; 1317 :          TraceLineS( "**Recursive View Entity: ", "NULL" );

	push	OFFSET FLAT:??_C@_04BAK@NULL?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0BK@LAFI@?$CK?$CKRecursive?5View?5Entity?3?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8087:

; 1318 : 
; 1319 :       TraceLineS( "            View Entity Csr", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BM@HBPI@?5?5?5?5?5?5?5?5?5?5?5?5View?5Entity?5Csr?$AA@ ; `string'
	call	_TraceLineS@8

; 1320 :       fnShowViewEntityCsrInfo( zGETPTR( lpViewSubobject->
; 1321 :                                                    hRecursViewEntityCsr ) );

	mov	eax, DWORD PTR _lpViewSubobject$[ebp]
	mov	ecx, DWORD PTR [eax+40]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowViewEntityCsrInfo
	add	esp, 4

; 1322 :       TraceLineS( "        Parent EntityInstance", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BO@BAPJ@?5?5?5?5?5?5?5?5Parent?5EntityInstance?$AA@ ; `string'
	call	_TraceLineS@8

; 1323 :       fnShowEntityInstanceInfo( zGETPTR( lpViewSubobject->
; 1324 :                                              hRecursParentEntityInstance ) );

	mov	edx, DWORD PTR _lpViewSubobject$[ebp]
	mov	eax, DWORD PTR [edx+44]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnShowEntityInstanceInfo
	add	esp, 4

; 1325 :       TraceLineS( "..End Recursive subobject info..", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CB@GMNE@?4?4End?5Recursive?5subobject?5info?4?4@ ; `string'
	call	_TraceLineS@8

; 1326 :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1327 : 
; 1328 :       lpViewSubobject = zGETPTR( lpViewSubobject->hNextViewSubobject );

	mov	ecx, DWORD PTR _lpViewSubobject$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewSubobject$[ebp], eax

; 1329 :    }

	jmp	$L8066
$L8067:

; 1330 : 
; 1331 :    fnOperationReturn( iDisplayCursorInfo, lpCurrentTask );

	mov	eax, DWORD PTR _lpCurrentTask$[ebp]
	push	eax
	push	402					; 00000192H
	call	_fnOperationReturn
	add	esp, 8

; 1332 :    return( 0 );

	xor	ax, ax
$L8032:

; 1333 : }

	mov	esp, ebp
	pop	ebp
	ret	4
_DisplayCursorInfo@4 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BJ@EFAF@?5?5?5?5?5?5?5?5?5?5bRequiredChild?$AA@ ; `string'
PUBLIC	??_C@_0BO@FDLA@?5?5?5?5?5?5?5?5?5?5bAutoLoadFromParent?$AA@ ; `string'
PUBLIC	??_C@_0BI@MLNL@?5?5?5?5?5?5?5?5?5?5bContainsBlob?$AA@ ; `string'
PUBLIC	??_C@_0BG@PBIN@?5?5?5?5?5?5?5?5?5?5bHasDB_Oper?$AA@ ; `string'
PUBLIC	_fnTraceViewEntity@4
PUBLIC	??_C@_0BF@PMND@?5?5?5?5?5?5ENTITY?5Name?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0P@DCAF@?5?5?5?5?5?5Level?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0BC@GKE@?5?5?5?5?5?5XML?5name?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BF@JBPG@?5?5?5?5?5?5Parent?5name?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BF@GBAH@?5?5?5?5?5?5Hier?5number?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BC@KNEH@?5?5?5?5?5?5Card?5min?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BC@CGKA@?5?5?5?5?5?5Card?5max?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BF@PJOH@?5?5?5?5?5?5Record?5size?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BJ@FJIE@?5?5?5?5?5?5NonPersist?5size?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BG@LKPB@?5?5?5?5?5?5Max?5Attr?5lth?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BJ@GEDJ@?5?5?5?5?5?5Lock?5Level?5?5?5?5?5?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BH@EFAL@?5?5?5?5?5?5Database?5name?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BF@MADK@?5?5?5?5?5?5Server?5name?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BG@HNBM@?5?5?5?5?5?5ECEOper?5name?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0N@GFCH@?5?5?5?5?5?5Flags?3?$AA@		; `string'
PUBLIC	??_C@_0BC@EHJF@?5?5?5?5?5?5?5?5?5?5bCreate?$AA@	; `string'
PUBLIC	??_C@_0BC@IKMC@?5?5?5?5?5?5?5?5?5?5bDelete?$AA@	; `string'
PUBLIC	??_C@_0BC@FEP@?5?5?5?5?5?5?5?5?5?5bUpdate?$AA@	; `string'
PUBLIC	??_C@_0BD@MDEA@?5?5?5?5?5?5?5?5?5?5bInclude?$AA@ ; `string'
PUBLIC	??_C@_0BD@CKHJ@?5?5?5?5?5?5?5?5?5?5bExclude?$AA@ ; `string'
PUBLIC	??_C@_0BD@IPMG@?5?5?5?5?5?5?5?5?5?5bInclSrc?$AA@ ; `string'
PUBLIC	??_C@_0BC@FPHI@?5?5?5?5?5?5?5?5?5?5bHidden?$AA@	; `string'
PUBLIC	??_C@_0BD@MJHL@?5?5?5?5?5?5?5?5?5?5bPDelete?$AA@ ; `string'
PUBLIC	??_C@_0BF@JIDE@?5?5?5?5?5?5?5?5?5?5bPRestrict?$AA@ ; `string'
PUBLIC	??_C@_0BJ@HEIJ@?5?5?5?5?5?5?5?5?5?5bCheckRestrict?$AA@ ; `string'
PUBLIC	??_C@_0BH@GEPE@?5?5?5?5?5?5?5?5?5?5bRecursiveSt?$AA@ ; `string'
PUBLIC	??_C@_0BG@IJJN@?5?5?5?5?5?5?5?5?5?5bAutoCreate?$AA@ ; `string'
PUBLIC	??_C@_0BD@GIKD@?5?5?5?5?5?5?5?5?5?5bDerived?$AA@ ; `string'
PUBLIC	??_C@_0BH@NEKM@?5?5?5?5?5?5?5?5?5?5bDerivedPath?$AA@ ; `string'
PUBLIC	??_C@_0BC@CJND@?5?5?5?5?5?5?5?5?5?5bGenkey?$AA@	; `string'
PUBLIC	??_C@_0BE@MIHI@?5?5?5?5?5?5?5?5?5?5bAttrInit?$AA@ ; `string'
PUBLIC	??_C@_0BF@HMGK@?5?5?5?5?5?5?5?5?5?5bAttrOrder?$AA@ ; `string'
PUBLIC	??_C@_0BK@BGPM@?5?5?5?5?5?5?5?5?5?5bAttrOrderChild?$AA@ ; `string'
PUBLIC	??_C@_0BD@EIHD@?5?5?5?5?5?5?5?5?5?5bAutoSeq?$AA@ ; `string'
PUBLIC	??_C@_0BE@FJK@?5?5?5?5?5?5?5?5?5?5bIncrLoad?$AA@ ; `string'
PUBLIC	??_C@_0BH@LKPD@?5?5?5?5?5?5?5?5?5?5bFullPersist?$AA@ ; `string'
PUBLIC	??_C@_0BI@JCAH@?5?5?5?5?5?5?5?5?5?5bSharesParRec?$AA@ ; `string'
PUBLIC	??_C@_0BI@FNCH@?5?5?5?5?5?5?5?5?5?5bSharesChdRec?$AA@ ; `string'
PUBLIC	??_C@_0BH@LKMA@?5?5?5?5?5?5?5?5?5?5bDupInstance?$AA@ ; `string'
PUBLIC	??_C@_0BC@DNJM@?5?5?5?5?5?5?5?5?5?5bDupRel?$AA@	; `string'
PUBLIC	??_C@_0BG@NDAC@?5?5?5?5?5?5?5?5?5?5bDupRelPath?$AA@ ; `string'
PUBLIC	??_C@_0BE@EHDI@?5?5?5?5?5?5?5?5?5?5bRelLink1?$AA@ ; `string'
PUBLIC	??_C@_0BM@INHE@?5?5?5?5?5?5?5?5?5?5bCreateConstraint?$AA@ ; `string'
PUBLIC	??_C@_0BM@OIDA@?5?5?5?5?5?5?5?5?5?5bDeleteConstraint?$AA@ ; `string'
PUBLIC	??_C@_0BN@DFKA@?5?5?5?5?5?5?5?5?5?5bIncludeConstraint?$AA@ ; `string'
PUBLIC	??_C@_0BN@JMIM@?5?5?5?5?5?5?5?5?5?5bExcludeConstraint?$AA@ ; `string'
PUBLIC	??_C@_0BM@FHNN@?5?5?5?5?5?5?5?5?5?5bAcceptConstraint?$AA@ ; `string'
PUBLIC	??_C@_0BM@KNIB@?5?5?5?5?5?5?5?5?5?5bCancelConstraint?$AA@ ; `string'
;	COMDAT ??_C@_0BF@PMND@?5?5?5?5?5?5ENTITY?5Name?5?$DN?5?$AA@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0BF@PMND@?5?5?5?5?5?5ENTITY?5Name?5?$DN?5?$AA@ DB '      ENTITY Nam'
	DB	'e = ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@DCAF@?5?5?5?5?5?5Level?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0P@DCAF@?5?5?5?5?5?5Level?5?$DN?5?$AA@ DB '      Level = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@GKE@?5?5?5?5?5?5XML?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BC@GKE@?5?5?5?5?5?5XML?5name?5?$DN?5?$AA@ DB '      XML name = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@JBPG@?5?5?5?5?5?5Parent?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BF@JBPG@?5?5?5?5?5?5Parent?5name?5?$DN?5?$AA@ DB '      Parent nam'
	DB	'e = ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@GBAH@?5?5?5?5?5?5Hier?5number?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BF@GBAH@?5?5?5?5?5?5Hier?5number?5?$DN?5?$AA@ DB '      Hier numbe'
	DB	'r = ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@KNEH@?5?5?5?5?5?5Card?5min?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BC@KNEH@?5?5?5?5?5?5Card?5min?5?$DN?5?$AA@ DB '      Card min = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@CGKA@?5?5?5?5?5?5Card?5max?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BC@CGKA@?5?5?5?5?5?5Card?5max?5?$DN?5?$AA@ DB '      Card max = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@PJOH@?5?5?5?5?5?5Record?5size?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BF@PJOH@?5?5?5?5?5?5Record?5size?5?$DN?5?$AA@ DB '      Record siz'
	DB	'e = ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@FJIE@?5?5?5?5?5?5NonPersist?5size?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BJ@FJIE@?5?5?5?5?5?5NonPersist?5size?5?$DN?5?$AA@ DB '      NonPer'
	DB	'sist size = ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@LKPB@?5?5?5?5?5?5Max?5Attr?5lth?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BG@LKPB@?5?5?5?5?5?5Max?5Attr?5lth?5?$DN?5?$AA@ DB '      Max Attr'
	DB	' lth = ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@GEDJ@?5?5?5?5?5?5Lock?5Level?5?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BJ@GEDJ@?5?5?5?5?5?5Lock?5Level?5?5?5?5?5?5?$DN?5?$AA@ DB '      L'
	DB	'ock Level      = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@EFAL@?5?5?5?5?5?5Database?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BH@EFAL@?5?5?5?5?5?5Database?5name?5?$DN?5?$AA@ DB '      Database'
	DB	' name = ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@MADK@?5?5?5?5?5?5Server?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BF@MADK@?5?5?5?5?5?5Server?5name?5?$DN?5?$AA@ DB '      Server nam'
	DB	'e = ', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@HNBM@?5?5?5?5?5?5ECEOper?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BG@HNBM@?5?5?5?5?5?5ECEOper?5name?5?$DN?5?$AA@ DB '      ECEOper n'
	DB	'ame = ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@GFCH@?5?5?5?5?5?5Flags?3?$AA@
_DATA	SEGMENT
??_C@_0N@GFCH@?5?5?5?5?5?5Flags?3?$AA@ DB '      Flags:', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@EHJF@?5?5?5?5?5?5?5?5?5?5bCreate?$AA@
_DATA	SEGMENT
??_C@_0BC@EHJF@?5?5?5?5?5?5?5?5?5?5bCreate?$AA@ DB '          bCreate', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@IKMC@?5?5?5?5?5?5?5?5?5?5bDelete?$AA@
_DATA	SEGMENT
??_C@_0BC@IKMC@?5?5?5?5?5?5?5?5?5?5bDelete?$AA@ DB '          bDelete', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@FEP@?5?5?5?5?5?5?5?5?5?5bUpdate?$AA@
_DATA	SEGMENT
??_C@_0BC@FEP@?5?5?5?5?5?5?5?5?5?5bUpdate?$AA@ DB '          bUpdate', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@MDEA@?5?5?5?5?5?5?5?5?5?5bInclude?$AA@
_DATA	SEGMENT
??_C@_0BD@MDEA@?5?5?5?5?5?5?5?5?5?5bInclude?$AA@ DB '          bInclude', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@CKHJ@?5?5?5?5?5?5?5?5?5?5bExclude?$AA@
_DATA	SEGMENT
??_C@_0BD@CKHJ@?5?5?5?5?5?5?5?5?5?5bExclude?$AA@ DB '          bExclude', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@IPMG@?5?5?5?5?5?5?5?5?5?5bInclSrc?$AA@
_DATA	SEGMENT
??_C@_0BD@IPMG@?5?5?5?5?5?5?5?5?5?5bInclSrc?$AA@ DB '          bInclSrc', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@FPHI@?5?5?5?5?5?5?5?5?5?5bHidden?$AA@
_DATA	SEGMENT
??_C@_0BC@FPHI@?5?5?5?5?5?5?5?5?5?5bHidden?$AA@ DB '          bHidden', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@MJHL@?5?5?5?5?5?5?5?5?5?5bPDelete?$AA@
_DATA	SEGMENT
??_C@_0BD@MJHL@?5?5?5?5?5?5?5?5?5?5bPDelete?$AA@ DB '          bPDelete', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@JIDE@?5?5?5?5?5?5?5?5?5?5bPRestrict?$AA@
_DATA	SEGMENT
??_C@_0BF@JIDE@?5?5?5?5?5?5?5?5?5?5bPRestrict?$AA@ DB '          bPRestri'
	DB	'ct', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@HEIJ@?5?5?5?5?5?5?5?5?5?5bCheckRestrict?$AA@
_DATA	SEGMENT
??_C@_0BJ@HEIJ@?5?5?5?5?5?5?5?5?5?5bCheckRestrict?$AA@ DB '          bChe'
	DB	'ckRestrict', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@GEPE@?5?5?5?5?5?5?5?5?5?5bRecursiveSt?$AA@
_DATA	SEGMENT
??_C@_0BH@GEPE@?5?5?5?5?5?5?5?5?5?5bRecursiveSt?$AA@ DB '          bRecur'
	DB	'siveSt', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@IJJN@?5?5?5?5?5?5?5?5?5?5bAutoCreate?$AA@
_DATA	SEGMENT
??_C@_0BG@IJJN@?5?5?5?5?5?5?5?5?5?5bAutoCreate?$AA@ DB '          bAutoCr'
	DB	'eate', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@GIKD@?5?5?5?5?5?5?5?5?5?5bDerived?$AA@
_DATA	SEGMENT
??_C@_0BD@GIKD@?5?5?5?5?5?5?5?5?5?5bDerived?$AA@ DB '          bDerived', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@NEKM@?5?5?5?5?5?5?5?5?5?5bDerivedPath?$AA@
_DATA	SEGMENT
??_C@_0BH@NEKM@?5?5?5?5?5?5?5?5?5?5bDerivedPath?$AA@ DB '          bDeriv'
	DB	'edPath', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@CJND@?5?5?5?5?5?5?5?5?5?5bGenkey?$AA@
_DATA	SEGMENT
??_C@_0BC@CJND@?5?5?5?5?5?5?5?5?5?5bGenkey?$AA@ DB '          bGenkey', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@MIHI@?5?5?5?5?5?5?5?5?5?5bAttrInit?$AA@
_DATA	SEGMENT
??_C@_0BE@MIHI@?5?5?5?5?5?5?5?5?5?5bAttrInit?$AA@ DB '          bAttrInit'
	DB	00H						; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@HMGK@?5?5?5?5?5?5?5?5?5?5bAttrOrder?$AA@
_DATA	SEGMENT
??_C@_0BF@HMGK@?5?5?5?5?5?5?5?5?5?5bAttrOrder?$AA@ DB '          bAttrOrd'
	DB	'er', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@BGPM@?5?5?5?5?5?5?5?5?5?5bAttrOrderChild?$AA@
_DATA	SEGMENT
??_C@_0BK@BGPM@?5?5?5?5?5?5?5?5?5?5bAttrOrderChild?$AA@ DB '          bAt'
	DB	'trOrderChild', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@EIHD@?5?5?5?5?5?5?5?5?5?5bAutoSeq?$AA@
_DATA	SEGMENT
??_C@_0BD@EIHD@?5?5?5?5?5?5?5?5?5?5bAutoSeq?$AA@ DB '          bAutoSeq', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@FJK@?5?5?5?5?5?5?5?5?5?5bIncrLoad?$AA@
_DATA	SEGMENT
??_C@_0BE@FJK@?5?5?5?5?5?5?5?5?5?5bIncrLoad?$AA@ DB '          bIncrLoad', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@LKPD@?5?5?5?5?5?5?5?5?5?5bFullPersist?$AA@
_DATA	SEGMENT
??_C@_0BH@LKPD@?5?5?5?5?5?5?5?5?5?5bFullPersist?$AA@ DB '          bFullP'
	DB	'ersist', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@JCAH@?5?5?5?5?5?5?5?5?5?5bSharesParRec?$AA@
_DATA	SEGMENT
??_C@_0BI@JCAH@?5?5?5?5?5?5?5?5?5?5bSharesParRec?$AA@ DB '          bShar'
	DB	'esParRec', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@FNCH@?5?5?5?5?5?5?5?5?5?5bSharesChdRec?$AA@
_DATA	SEGMENT
??_C@_0BI@FNCH@?5?5?5?5?5?5?5?5?5?5bSharesChdRec?$AA@ DB '          bShar'
	DB	'esChdRec', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@LKMA@?5?5?5?5?5?5?5?5?5?5bDupInstance?$AA@
_DATA	SEGMENT
??_C@_0BH@LKMA@?5?5?5?5?5?5?5?5?5?5bDupInstance?$AA@ DB '          bDupIn'
	DB	'stance', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@DNJM@?5?5?5?5?5?5?5?5?5?5bDupRel?$AA@
_DATA	SEGMENT
??_C@_0BC@DNJM@?5?5?5?5?5?5?5?5?5?5bDupRel?$AA@ DB '          bDupRel', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@NDAC@?5?5?5?5?5?5?5?5?5?5bDupRelPath?$AA@
_DATA	SEGMENT
??_C@_0BG@NDAC@?5?5?5?5?5?5?5?5?5?5bDupRelPath?$AA@ DB '          bDupRel'
	DB	'Path', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@EHDI@?5?5?5?5?5?5?5?5?5?5bRelLink1?$AA@
_DATA	SEGMENT
??_C@_0BE@EHDI@?5?5?5?5?5?5?5?5?5?5bRelLink1?$AA@ DB '          bRelLink1'
	DB	00H						; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@INHE@?5?5?5?5?5?5?5?5?5?5bCreateConstraint?$AA@
_DATA	SEGMENT
??_C@_0BM@INHE@?5?5?5?5?5?5?5?5?5?5bCreateConstraint?$AA@ DB '          b'
	DB	'CreateConstraint', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@OIDA@?5?5?5?5?5?5?5?5?5?5bDeleteConstraint?$AA@
_DATA	SEGMENT
??_C@_0BM@OIDA@?5?5?5?5?5?5?5?5?5?5bDeleteConstraint?$AA@ DB '          b'
	DB	'DeleteConstraint', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@DFKA@?5?5?5?5?5?5?5?5?5?5bIncludeConstraint?$AA@
_DATA	SEGMENT
??_C@_0BN@DFKA@?5?5?5?5?5?5?5?5?5?5bIncludeConstraint?$AA@ DB '          '
	DB	'bIncludeConstraint', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@JMIM@?5?5?5?5?5?5?5?5?5?5bExcludeConstraint?$AA@
_DATA	SEGMENT
??_C@_0BN@JMIM@?5?5?5?5?5?5?5?5?5?5bExcludeConstraint?$AA@ DB '          '
	DB	'bExcludeConstraint', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@FHNN@?5?5?5?5?5?5?5?5?5?5bAcceptConstraint?$AA@
_DATA	SEGMENT
??_C@_0BM@FHNN@?5?5?5?5?5?5?5?5?5?5bAcceptConstraint?$AA@ DB '          b'
	DB	'AcceptConstraint', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@KNIB@?5?5?5?5?5?5?5?5?5?5bCancelConstraint?$AA@
_DATA	SEGMENT
??_C@_0BM@KNIB@?5?5?5?5?5?5?5?5?5?5bCancelConstraint?$AA@ DB '          b'
	DB	'CancelConstraint', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@EFAF@?5?5?5?5?5?5?5?5?5?5bRequiredChild?$AA@
_DATA	SEGMENT
??_C@_0BJ@EFAF@?5?5?5?5?5?5?5?5?5?5bRequiredChild?$AA@ DB '          bReq'
	DB	'uiredChild', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@FDLA@?5?5?5?5?5?5?5?5?5?5bAutoLoadFromParent?$AA@
_DATA	SEGMENT
??_C@_0BO@FDLA@?5?5?5?5?5?5?5?5?5?5bAutoLoadFromParent?$AA@ DB '         '
	DB	' bAutoLoadFromParent', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@MLNL@?5?5?5?5?5?5?5?5?5?5bContainsBlob?$AA@
_DATA	SEGMENT
??_C@_0BI@MLNL@?5?5?5?5?5?5?5?5?5?5bContainsBlob?$AA@ DB '          bCont'
	DB	'ainsBlob', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@PBIN@?5?5?5?5?5?5?5?5?5?5bHasDB_Oper?$AA@
_DATA	SEGMENT
??_C@_0BG@PBIN@?5?5?5?5?5?5?5?5?5?5bHasDB_Oper?$AA@ DB '          bHasDB_'
	DB	'Oper', 00H					; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpViewEntity$ = 8
_lpParent$8104 = -4
_fnTraceViewEntity@4 PROC NEAR

; 1337 : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 1338 :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1339 :    TraceLineS( "      ENTITY Name = ", lpViewEntity->szName );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0BF@PMND@?5?5?5?5?5?5ENTITY?5Name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1340 :    TraceLineI( "      Level = ", (zLONG) lpViewEntity->nLevel );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+215]
	push	edx
	push	OFFSET FLAT:??_C@_0P@DCAF@?5?5?5?5?5?5Level?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1341 : 
; 1342 :    if ( lpViewEntity->szXML_Name[ 0 ] )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, BYTE PTR [eax+47]
	test	ecx, ecx
	je	SHORT $L8101

; 1343 :       TraceLineS( "      XML name = ", lpViewEntity->szXML_Name );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 47					; 0000002fH
	push	edx
	push	OFFSET FLAT:??_C@_0BC@GKE@?5?5?5?5?5?5XML?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8101:

; 1344 : 
; 1345 :    if ( lpViewEntity->hParent )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	cmp	DWORD PTR [eax+10], 0
	je	SHORT $L8103

; 1347 :       LPVIEWENTITY lpParent = zGETPTR( lpViewEntity->hParent );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpParent$8104[ebp], eax

; 1348 :       TraceLineS( "      Parent name = ", lpParent->szName );

	mov	eax, DWORD PTR _lpParent$8104[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0BF@JBPG@?5?5?5?5?5?5Parent?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8103:

; 1350 : 
; 1351 :    TraceLineI( "      Hier number = ", (zLONG) lpViewEntity->nHierNbr );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	movsx	edx, WORD PTR [ecx+217]
	push	edx
	push	OFFSET FLAT:??_C@_0BF@GBAH@?5?5?5?5?5?5Hier?5number?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1352 :    TraceLineI( "      Card min = ", (zLONG) lpViewEntity->uCardMin );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	xor	ecx, ecx
	mov	cx, WORD PTR [eax+219]
	push	ecx
	push	OFFSET FLAT:??_C@_0BC@KNEH@?5?5?5?5?5?5Card?5min?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1353 :    TraceLineI( "      Card max = ", (zLONG) lpViewEntity->uCardMax );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	xor	eax, eax
	mov	ax, WORD PTR [edx+221]
	push	eax
	push	OFFSET FLAT:??_C@_0BC@CGKA@?5?5?5?5?5?5Card?5max?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1354 :    TraceLineI( "      Record size = ", lpViewEntity->ulRecordSize );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+207]
	push	edx
	push	OFFSET FLAT:??_C@_0BF@PJOH@?5?5?5?5?5?5Record?5size?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1355 :    TraceLineI( "      NonPersist size = ",
; 1356 :                lpViewEntity->ulNonPersistSize );

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+211]
	push	ecx
	push	OFFSET FLAT:??_C@_0BJ@FJIE@?5?5?5?5?5?5NonPersist?5size?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1357 :    TraceLineI( "      Max Attr lth = ", (zLONG) lpViewEntity->ulMaxLth );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+203]
	push	eax
	push	OFFSET FLAT:??_C@_0BG@LKPB@?5?5?5?5?5?5Max?5Attr?5lth?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1358 :    TraceLineI( "      Lock Level      = ", (zLONG) lpViewEntity->nLock );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+230]
	push	edx
	push	OFFSET FLAT:??_C@_0BJ@GEDJ@?5?5?5?5?5?5Lock?5Level?5?5?5?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1359 : 
; 1360 :    if ( lpViewEntity->szDBName[ 0 ] )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, BYTE PTR [eax+80]
	test	ecx, ecx
	je	SHORT $L8119

; 1361 :       TraceLineS( "      Database name = ", lpViewEntity->szDBName );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 80					; 00000050H
	push	edx
	push	OFFSET FLAT:??_C@_0BH@EFAL@?5?5?5?5?5?5Database?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8119:

; 1362 : 
; 1363 :    if ( lpViewEntity->szServer[ 0 ] )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, BYTE PTR [eax+113]
	test	ecx, ecx
	je	SHORT $L8121

; 1364 :       TraceLineS( "      Server name = ", lpViewEntity->szServer );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 113				; 00000071H
	push	edx
	push	OFFSET FLAT:??_C@_0BF@MADK@?5?5?5?5?5?5Server?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8121:

; 1365 : 
; 1366 :    if ( lpViewEntity->szECEOpername[ 0 ] )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	movsx	ecx, BYTE PTR [eax+146]
	test	ecx, ecx
	je	SHORT $L8123

; 1367 :       TraceLineS( "      ECEOper name = ", lpViewEntity->szECEOpername );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	add	edx, 146				; 00000092H
	push	edx
	push	OFFSET FLAT:??_C@_0BG@HNBM@?5?5?5?5?5?5ECEOper?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8123:

; 1368 : 
; 1369 :    TraceLineS( "      Flags:", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0N@GFCH@?5?5?5?5?5?5Flags?3?$AA@ ; `string'
	call	_TraceLineS@8

; 1370 :    if ( lpViewEntity->bCreate )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8126

; 1371 :       TraceLineS( "          bCreate", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BC@EHJF@?5?5?5?5?5?5?5?5?5?5bCreate?$AA@ ; `string'
	call	_TraceLineS@8
$L8126:

; 1372 :    if ( lpViewEntity->bDelete )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	je	SHORT $L8128

; 1373 :       TraceLineS( "          bDelete", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BC@IKMC@?5?5?5?5?5?5?5?5?5?5bDelete?$AA@ ; `string'
	call	_TraceLineS@8
$L8128:

; 1374 :    if ( lpViewEntity->bUpdate )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 2
	and	edx, 1
	test	edx, edx
	je	SHORT $L8130

; 1375 :       TraceLineS( "          bUpdate", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BC@FEP@?5?5?5?5?5?5?5?5?5?5bUpdate?$AA@ ; `string'
	call	_TraceLineS@8
$L8130:

; 1376 :    if ( lpViewEntity->bInclude )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8132

; 1377 :       TraceLineS( "          bInclude", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BD@MDEA@?5?5?5?5?5?5?5?5?5?5bInclude?$AA@ ; `string'
	call	_TraceLineS@8
$L8132:

; 1378 :    if ( lpViewEntity->bExclude )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 4
	and	eax, 1
	test	eax, eax
	je	SHORT $L8134

; 1379 :       TraceLineS( "          bExclude", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BD@CKHJ@?5?5?5?5?5?5?5?5?5?5bExclude?$AA@ ; `string'
	call	_TraceLineS@8
$L8134:

; 1380 :    if ( lpViewEntity->bInclSrc )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	je	SHORT $L8136

; 1381 :       TraceLineS( "          bInclSrc", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BD@IPMG@?5?5?5?5?5?5?5?5?5?5bInclSrc?$AA@ ; `string'
	call	_TraceLineS@8
$L8136:

; 1382 :    if ( lpViewEntity->bHidden )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 6
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8138

; 1383 :       TraceLineS( "          bHidden", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BC@FPHI@?5?5?5?5?5?5?5?5?5?5bHidden?$AA@ ; `string'
	call	_TraceLineS@8
$L8138:

; 1384 :    if ( lpViewEntity->bPDelete )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 7
	and	eax, 1
	test	eax, eax
	je	SHORT $L8140

; 1385 :       TraceLineS( "          bPDelete", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BD@MJHL@?5?5?5?5?5?5?5?5?5?5bPDelete?$AA@ ; `string'
	call	_TraceLineS@8
$L8140:

; 1386 :    if ( lpViewEntity->bPRestrict )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 8
	and	edx, 1
	test	edx, edx
	je	SHORT $L8142

; 1387 :       TraceLineS( "          bPRestrict", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BF@JIDE@?5?5?5?5?5?5?5?5?5?5bPRestrict?$AA@ ; `string'
	call	_TraceLineS@8
$L8142:

; 1388 :    if ( lpViewEntity->bCheckRestrict )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8144

; 1389 :       TraceLineS( "          bCheckRestrict", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BJ@HEIJ@?5?5?5?5?5?5?5?5?5?5bCheckRestrict?$AA@ ; `string'
	call	_TraceLineS@8
$L8144:

; 1390 :    if ( lpViewEntity->bRecursiveSt )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8146

; 1391 :       TraceLineS( "          bRecursiveSt", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BH@GEPE@?5?5?5?5?5?5?5?5?5?5bRecursiveSt?$AA@ ; `string'
	call	_TraceLineS@8
$L8146:

; 1392 :    if ( lpViewEntity->bAutoCreate )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 12					; 0000000cH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8148

; 1393 :       TraceLineS( "          bAutoCreate", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BG@IJJN@?5?5?5?5?5?5?5?5?5?5bAutoCreate?$AA@ ; `string'
	call	_TraceLineS@8
$L8148:

; 1394 :    if ( lpViewEntity->bDerived )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 13					; 0000000dH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8150

; 1395 :       TraceLineS( "          bDerived", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BD@GIKD@?5?5?5?5?5?5?5?5?5?5bDerived?$AA@ ; `string'
	call	_TraceLineS@8
$L8150:

; 1396 :    if ( lpViewEntity->bDerivedPath )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 14					; 0000000eH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8152

; 1397 :       TraceLineS( "          bDerivedPath", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BH@NEKM@?5?5?5?5?5?5?5?5?5?5bDerivedPath?$AA@ ; `string'
	call	_TraceLineS@8
$L8152:

; 1398 :    if ( lpViewEntity->bGenkey )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 15					; 0000000fH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8154

; 1399 :       TraceLineS( "          bGenkey", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BC@CJND@?5?5?5?5?5?5?5?5?5?5bGenkey?$AA@ ; `string'
	call	_TraceLineS@8
$L8154:

; 1400 :    if ( lpViewEntity->bAttrInit )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 17					; 00000011H
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8156

; 1401 :       TraceLineS( "          bAttrInit", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BE@MIHI@?5?5?5?5?5?5?5?5?5?5bAttrInit?$AA@ ; `string'
	call	_TraceLineS@8
$L8156:

; 1402 :    if ( lpViewEntity->bAttrOrder )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 18					; 00000012H
	and	eax, 1
	test	eax, eax
	je	SHORT $L8158

; 1403 :       TraceLineS( "          bAttrOrder", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BF@HMGK@?5?5?5?5?5?5?5?5?5?5bAttrOrder?$AA@ ; `string'
	call	_TraceLineS@8
$L8158:

; 1404 :    if ( lpViewEntity->bAttrOrderChild )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 19					; 00000013H
	and	edx, 1
	test	edx, edx
	je	SHORT $L8160

; 1405 :       TraceLineS( "          bAttrOrderChild", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BK@BGPM@?5?5?5?5?5?5?5?5?5?5bAttrOrderChild?$AA@ ; `string'
	call	_TraceLineS@8
$L8160:

; 1406 :    if ( lpViewEntity->bAutoSeq )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 20					; 00000014H
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8162

; 1407 :       TraceLineS( "          bAutoSeq", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BD@EIHD@?5?5?5?5?5?5?5?5?5?5bAutoSeq?$AA@ ; `string'
	call	_TraceLineS@8
$L8162:

; 1408 :    if ( lpViewEntity->bIncrLoad )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 21					; 00000015H
	and	eax, 1
	test	eax, eax
	je	SHORT $L8164

; 1409 :       TraceLineS( "          bIncrLoad", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BE@FJK@?5?5?5?5?5?5?5?5?5?5bIncrLoad?$AA@ ; `string'
	call	_TraceLineS@8
$L8164:

; 1410 :    if ( lpViewEntity->bFullPersist )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 22					; 00000016H
	and	edx, 1
	test	edx, edx
	je	SHORT $L8166

; 1411 :       TraceLineS( "          bFullPersist", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BH@LKPD@?5?5?5?5?5?5?5?5?5?5bFullPersist?$AA@ ; `string'
	call	_TraceLineS@8
$L8166:

; 1412 :    if ( lpViewEntity->bSharesParRec )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 23					; 00000017H
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8168

; 1413 :       TraceLineS( "          bSharesParRec", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BI@JCAH@?5?5?5?5?5?5?5?5?5?5bSharesParRec?$AA@ ; `string'
	call	_TraceLineS@8
$L8168:

; 1414 :    if ( lpViewEntity->bSharesChdRec )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 24					; 00000018H
	and	eax, 1
	test	eax, eax
	je	SHORT $L8170

; 1415 :       TraceLineS( "          bSharesChdRec", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BI@FNCH@?5?5?5?5?5?5?5?5?5?5bSharesChdRec?$AA@ ; `string'
	call	_TraceLineS@8
$L8170:

; 1416 :    if ( lpViewEntity->bDupInstance )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 25					; 00000019H
	and	edx, 1
	test	edx, edx
	je	SHORT $L8172

; 1417 :       TraceLineS( "          bDupInstance", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BH@LKMA@?5?5?5?5?5?5?5?5?5?5bDupInstance?$AA@ ; `string'
	call	_TraceLineS@8
$L8172:

; 1418 :    if ( lpViewEntity->bDupRel )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 26					; 0000001aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8174

; 1419 :       TraceLineS( "          bDupRel", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BC@DNJM@?5?5?5?5?5?5?5?5?5?5bDupRel?$AA@ ; `string'
	call	_TraceLineS@8
$L8174:

; 1420 :    if ( lpViewEntity->bDupRelPath )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 27					; 0000001bH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8176

; 1421 :       TraceLineS( "          bDupRelPath", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BG@NDAC@?5?5?5?5?5?5?5?5?5?5bDupRelPath?$AA@ ; `string'
	call	_TraceLineS@8
$L8176:

; 1422 :    if ( lpViewEntity->bRelLink1 )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 28					; 0000001cH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8178

; 1423 :       TraceLineS( "          bRelLink1", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BE@EHDI@?5?5?5?5?5?5?5?5?5?5bRelLink1?$AA@ ; `string'
	call	_TraceLineS@8
$L8178:

; 1424 :    if ( lpViewEntity->bCreateConstraint )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+239]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8180

; 1425 :       TraceLineS( "          bCreateConstraint", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BM@INHE@?5?5?5?5?5?5?5?5?5?5bCreateConstraint?$AA@ ; `string'
	call	_TraceLineS@8
$L8180:

; 1426 :    if ( lpViewEntity->bDeleteConstraint )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+239]
	shr	eax, 2
	and	eax, 1
	test	eax, eax
	je	SHORT $L8182

; 1427 :       TraceLineS( "          bDeleteConstraint", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BM@OIDA@?5?5?5?5?5?5?5?5?5?5bDeleteConstraint?$AA@ ; `string'
	call	_TraceLineS@8
$L8182:

; 1428 :    if ( lpViewEntity->bIncludeConstraint )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+239]
	shr	edx, 3
	and	edx, 1
	test	edx, edx
	je	SHORT $L8184

; 1429 :       TraceLineS( "          bIncludeConstraint", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BN@DFKA@?5?5?5?5?5?5?5?5?5?5bIncludeConstraint?$AA@ ; `string'
	call	_TraceLineS@8
$L8184:

; 1430 :    if ( lpViewEntity->bExcludeConstraint )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+239]
	shr	ecx, 4
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8186

; 1431 :       TraceLineS( "          bExcludeConstraint", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BN@JMIM@?5?5?5?5?5?5?5?5?5?5bExcludeConstraint?$AA@ ; `string'
	call	_TraceLineS@8
$L8186:

; 1432 :    if ( lpViewEntity->bAcceptConstraint )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+239]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	je	SHORT $L8188

; 1433 :       TraceLineS( "          bAcceptConstraint", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BM@FHNN@?5?5?5?5?5?5?5?5?5?5bAcceptConstraint?$AA@ ; `string'
	call	_TraceLineS@8
$L8188:

; 1434 :    if ( lpViewEntity->bCancelConstraint )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+239]
	shr	edx, 6
	and	edx, 1
	test	edx, edx
	je	SHORT $L8190

; 1435 :       TraceLineS( "          bCancelConstraint", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BM@KNIB@?5?5?5?5?5?5?5?5?5?5bCancelConstraint?$AA@ ; `string'
	call	_TraceLineS@8
$L8190:

; 1436 :    if ( lpViewEntity->bRequiredChild )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+239]
	shr	ecx, 9
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8192

; 1437 :       TraceLineS( "          bRequiredChild", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BJ@EFAF@?5?5?5?5?5?5?5?5?5?5bRequiredChild?$AA@ ; `string'
	call	_TraceLineS@8
$L8192:

; 1438 :    if ( lpViewEntity->bAutoLoadFromParent )

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 30					; 0000001eH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8194

; 1439 :       TraceLineS( "          bAutoLoadFromParent", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BO@FDLA@?5?5?5?5?5?5?5?5?5?5bAutoLoadFromParent?$AA@ ; `string'
	call	_TraceLineS@8
$L8194:

; 1440 :    if ( lpViewEntity->bContainsBlob )

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+235]
	shr	edx, 31					; 0000001fH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8196

; 1441 :       TraceLineS( "          bContainsBlob", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BI@MLNL@?5?5?5?5?5?5?5?5?5?5bContainsBlob?$AA@ ; `string'
	call	_TraceLineS@8
$L8196:

; 1442 :    if ( lpViewEntity->bHasDB_Oper )

	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+239]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8198

; 1443 :       TraceLineS( "          bHasDB_Oper", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BG@PBIN@?5?5?5?5?5?5?5?5?5?5bHasDB_Oper?$AA@ ; `string'
	call	_TraceLineS@8
$L8198:

; 1444 : 
; 1445 : } // fnTraceViewEntity

	mov	esp, ebp
	pop	ebp
	ret	4
_fnTraceViewEntity@4 ENDP
_TEXT	ENDS
PUBLIC	_fnTraceViewAttrib@8
PUBLIC	??_C@_0CA@IONI@?5?5?5?5?5?5?5?5?5?5?5?5?5?5ATTRIBUTE?5Name?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BG@MDGA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Type?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BI@MGNC@?5?5?5?5?5?5?5?5?5?5?5?5?5?5ERTok?5?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BI@MLNA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Length?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BI@GFNN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Offset?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BO@KDCH@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Sequencing?5?$CD?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BN@KPKK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DerivedOper?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BP@DLKP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DerivedXPG?5?$DN?5YES?$AA@ ; `string'
PUBLIC	??_C@_0BJ@IFJP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DB?5Oper?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BF@JAEG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5FLAGS?3?$AA@ ; `string'
PUBLIC	??_C@_0BK@KHFM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bPersist?$AA@ ; `string'
PUBLIC	??_C@_0BG@DKJD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bKey?$AA@ ; `string'
PUBLIC	??_C@_0BN@NOKP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bForeignKey?$AA@ ; `string'
PUBLIC	??_C@_0BJ@FHHF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bGenkey?$AA@ ; `string'
PUBLIC	??_C@_0BL@JIKM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bRequired?$AA@ ; `string'
PUBLIC	??_C@_0BJ@CBNO@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bHidden?$AA@ ; `string'
PUBLIC	??_C@_0BL@LDEK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bCaseSens?$AA@ ; `string'
PUBLIC	??_C@_0BJ@LGCD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bCrDate?$AA@ ; `string'
PUBLIC	??_C@_0BJ@NBKL@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bUpDate?$AA@ ; `string'
PUBLIC	??_C@_0BJ@NHFN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bUserID?$AA@ ; `string'
PUBLIC	??_C@_0BK@FKAN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bAutoSeq?$AA@ ; `string'
PUBLIC	??_C@_0BO@PBAD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bSequencingD?$AA@ ; `string'
PUBLIC	??_C@_0BL@LHG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bNoUpdate?$AA@ ; `string'
PUBLIC	??_C@_0BP@CCOP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bNoPersistUpd?$AA@ ; `string'
;	COMDAT ??_C@_0CA@IONI@?5?5?5?5?5?5?5?5?5?5?5?5?5?5ATTRIBUTE?5Name?5?$DN?5?$AA@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0CA@IONI@?5?5?5?5?5?5?5?5?5?5?5?5?5?5ATTRIBUTE?5Name?5?$DN?5?$AA@ DB ' '
	DB	'             ATTRIBUTE Name = ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@MDGA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Type?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BG@MDGA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Type?5?$DN?5?$AA@ DB '        '
	DB	'      Type = ', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@MGNC@?5?5?5?5?5?5?5?5?5?5?5?5?5?5ERTok?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BI@MGNC@?5?5?5?5?5?5?5?5?5?5?5?5?5?5ERTok?5?5?$DN?5?$AA@ DB '     '
	DB	'         ERTok  = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@MLNA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Length?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BI@MLNA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Length?5?$DN?5?$AA@ DB '      '
	DB	'        Length = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BI@GFNN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Offset?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BI@GFNN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Offset?5?$DN?5?$AA@ DB '      '
	DB	'        Offset = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@KDCH@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Sequencing?5?$CD?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BO@KDCH@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Sequencing?5?$CD?5?$DN?5?$AA@ DB ' '
	DB	'             Sequencing # = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@KPKK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DerivedOper?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BN@KPKK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DerivedOper?5?$DN?5?$AA@ DB ' '
	DB	'             DerivedOper = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BP@DLKP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DerivedXPG?5?$DN?5YES?$AA@
_DATA	SEGMENT
??_C@_0BP@DLKP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DerivedXPG?5?$DN?5YES?$AA@ DB ' '
	DB	'             DerivedXPG = YES', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@IFJP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DB?5Oper?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BJ@IFJP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DB?5Oper?5?$DN?5?$AA@ DB '    '
	DB	'          DB Oper = ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@JAEG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5FLAGS?3?$AA@
_DATA	SEGMENT
??_C@_0BF@JAEG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5FLAGS?3?$AA@ DB '             '
	DB	' FLAGS:', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@KHFM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bPersist?$AA@
_DATA	SEGMENT
??_C@_0BK@KHFM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bPersist?$AA@ DB '      '
	DB	'           bPersist', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BG@DKJD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bKey?$AA@
_DATA	SEGMENT
??_C@_0BG@DKJD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bKey?$AA@ DB '          '
	DB	'       bKey', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@NOKP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bForeignKey?$AA@
_DATA	SEGMENT
??_C@_0BN@NOKP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bForeignKey?$AA@ DB '   '
	DB	'              bForeignKey', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@FHHF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bGenkey?$AA@
_DATA	SEGMENT
??_C@_0BJ@FHHF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bGenkey?$AA@ DB '       '
	DB	'          bGenkey', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@JIKM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bRequired?$AA@
_DATA	SEGMENT
??_C@_0BL@JIKM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bRequired?$AA@ DB '     '
	DB	'            bRequired', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@CBNO@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bHidden?$AA@
_DATA	SEGMENT
??_C@_0BJ@CBNO@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bHidden?$AA@ DB '       '
	DB	'          bHidden', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@LDEK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bCaseSens?$AA@
_DATA	SEGMENT
??_C@_0BL@LDEK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bCaseSens?$AA@ DB '     '
	DB	'            bCaseSens', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@LGCD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bCrDate?$AA@
_DATA	SEGMENT
??_C@_0BJ@LGCD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bCrDate?$AA@ DB '       '
	DB	'          bCrDate', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@NBKL@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bUpDate?$AA@
_DATA	SEGMENT
??_C@_0BJ@NBKL@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bUpDate?$AA@ DB '       '
	DB	'          bUpDate', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@NHFN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bUserID?$AA@
_DATA	SEGMENT
??_C@_0BJ@NHFN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bUserID?$AA@ DB '       '
	DB	'          bUserID', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@FKAN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bAutoSeq?$AA@
_DATA	SEGMENT
??_C@_0BK@FKAN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bAutoSeq?$AA@ DB '      '
	DB	'           bAutoSeq', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@PBAD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bSequencingD?$AA@
_DATA	SEGMENT
??_C@_0BO@PBAD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bSequencingD?$AA@ DB '  '
	DB	'               bSequencingD', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@LHG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bNoUpdate?$AA@
_DATA	SEGMENT
??_C@_0BL@LHG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bNoUpdate?$AA@ DB '      '
	DB	'           bNoUpdate', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BP@CCOP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bNoPersistUpd?$AA@
_DATA	SEGMENT
??_C@_0BP@CCOP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bNoPersistUpd?$AA@ DB ' '
	DB	'                bNoPersistUpd', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpViewAttrib$ = 8
_s$ = 12
_fnTraceViewAttrib@8 PROC NEAR

; 1449 : {

	push	ebp
	mov	ebp, esp

; 1450 :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1451 :    TraceLineS( "              ATTRIBUTE Name = ",
; 1452 :                lpViewAttrib->szName );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0CA@IONI@?5?5?5?5?5?5?5?5?5?5?5?5?5?5ATTRIBUTE?5Name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1453 : 
; 1454 :    s[ 0 ] = lpViewAttrib->cType;

	mov	ecx, DWORD PTR _s$[ebp]
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	al, BYTE PTR [edx+202]
	mov	BYTE PTR [ecx], al

; 1455 :    TraceLineS( "              Type = ", s );

	mov	ecx, DWORD PTR _s$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BG@MDGA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Type?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1456 :    TraceLineI( "              ERTok  = ", (zLONG) lpViewAttrib->lERAttTok );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+177]
	push	eax
	push	OFFSET FLAT:??_C@_0BI@MGNC@?5?5?5?5?5?5?5?5?5?5?5?5?5?5ERTok?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1457 :    TraceLineI( "              Length = ", (zLONG) lpViewAttrib->ulLth );

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+203]
	push	edx
	push	OFFSET FLAT:??_C@_0BI@MLNA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Length?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1458 :    TraceLineI( "              Offset = ",
; 1459 :                (zLONG) lpViewAttrib->ulRecordOffset );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+250]
	push	ecx
	push	OFFSET FLAT:??_C@_0BI@GFNN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Offset?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1460 :    if ( lpViewAttrib->cSequencing > 0 )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+197]
	test	eax, eax
	jle	SHORT $L8214

; 1461 :       TraceLineI( "              Sequencing # = ",
; 1462 :                   (zLONG) lpViewAttrib->cSequencing );

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+197]
	push	edx
	push	OFFSET FLAT:??_C@_0BO@KDCH@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Sequencing?5?$CD?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8
$L8214:

; 1463 : 
; 1464 :    if ( lpViewAttrib->szDerivedOper[ 0 ] )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	movsx	ecx, BYTE PTR [eax+213]
	test	ecx, ecx
	je	SHORT $L8217

; 1465 :       TraceLineS( "              DerivedOper = ",
; 1466 :                   lpViewAttrib->szDerivedOper );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	add	edx, 213				; 000000d5H
	push	edx
	push	OFFSET FLAT:??_C@_0BN@KPKK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DerivedOper?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8217:

; 1467 : 
; 1468 :    if ( lpViewAttrib->hDerivedXPG )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	cmp	DWORD PTR [eax+255], 0
	je	SHORT $L8219

; 1469 :       TraceLineS( "              DerivedXPG = YES", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BP@DLKP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DerivedXPG?5?$DN?5YES?$AA@ ; `string'
	call	_TraceLineS@8
$L8219:

; 1470 : 
; 1471 :    if ( lpViewAttrib->cDB_Oper )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	movsx	edx, BYTE PTR [ecx+254]
	test	edx, edx
	je	SHORT $L8221

; 1473 :       s[ 0 ] = lpViewAttrib->cDB_Oper;

	mov	eax, DWORD PTR _s$[ebp]
	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	dl, BYTE PTR [ecx+254]
	mov	BYTE PTR [eax], dl

; 1474 :       TraceLineS( "              DB Oper = ", s );

	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0BJ@IFJP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DB?5Oper?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8221:

; 1476 : 
; 1477 :    TraceLineS( "              FLAGS:", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BF@JAEG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5FLAGS?3?$AA@ ; `string'
	call	_TraceLineS@8

; 1478 :    if ( lpViewAttrib->bPersist )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	and	edx, 1
	test	edx, edx
	je	SHORT $L8224

; 1479 :       TraceLineS( "                 bPersist", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BK@KHFM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bPersist?$AA@ ; `string'
	call	_TraceLineS@8
$L8224:

; 1480 : 
; 1481 :    if ( lpViewAttrib->bKey )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8226

; 1482 :       TraceLineS( "                 bKey", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BG@DKJD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bKey?$AA@ ; `string'
	call	_TraceLineS@8
$L8226:

; 1483 : 
; 1484 :    if ( lpViewAttrib->bForeignKey )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 2
	and	eax, 1
	test	eax, eax
	je	SHORT $L8228

; 1485 :       TraceLineS( "                 bForeignKey", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BN@NOKP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bForeignKey?$AA@ ; `string'
	call	_TraceLineS@8
$L8228:

; 1486 : 
; 1487 :    if ( lpViewAttrib->bGenkey )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 3
	and	edx, 1
	test	edx, edx
	je	SHORT $L8230

; 1488 :       TraceLineS( "                 bGenkey", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BJ@FHHF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bGenkey?$AA@ ; `string'
	call	_TraceLineS@8
$L8230:

; 1489 : 
; 1490 :    if ( lpViewAttrib->bRequired )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 4
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8232

; 1491 :       TraceLineS( "                 bRequired", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BL@JIKM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bRequired?$AA@ ; `string'
	call	_TraceLineS@8
$L8232:

; 1492 : 
; 1493 :    if ( lpViewAttrib->bHidden )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	je	SHORT $L8234

; 1494 :       TraceLineS( "                 bHidden", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BJ@CBNO@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bHidden?$AA@ ; `string'
	call	_TraceLineS@8
$L8234:

; 1495 : 
; 1496 :    if ( lpViewAttrib->bCaseSens )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 6
	and	edx, 1
	test	edx, edx
	je	SHORT $L8236

; 1497 :       TraceLineS( "                 bCaseSens", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BL@LDEK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bCaseSens?$AA@ ; `string'
	call	_TraceLineS@8
$L8236:

; 1498 : 
; 1499 :    if ( lpViewAttrib->bCrDate )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 7
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8238

; 1500 :       TraceLineS( "                 bCrDate", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BJ@LGCD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bCrDate?$AA@ ; `string'
	call	_TraceLineS@8
$L8238:

; 1501 : 
; 1502 :    if ( lpViewAttrib->bUpDate )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 8
	and	eax, 1
	test	eax, eax
	je	SHORT $L8240

; 1503 :       TraceLineS( "                 bUpDate", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BJ@NBKL@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bUpDate?$AA@ ; `string'
	call	_TraceLineS@8
$L8240:

; 1504 : 
; 1505 :    if ( lpViewAttrib->bUserID )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 9
	and	edx, 1
	test	edx, edx
	je	SHORT $L8242

; 1506 :       TraceLineS( "                 bUserID", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BJ@NHFN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bUserID?$AA@ ; `string'
	call	_TraceLineS@8
$L8242:

; 1507 : 
; 1508 :    if ( lpViewAttrib->bAutoSeq )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 10					; 0000000aH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8244

; 1509 :       TraceLineS( "                 bAutoSeq", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BK@FKAN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bAutoSeq?$AA@ ; `string'
	call	_TraceLineS@8
$L8244:

; 1510 : 
; 1511 :    if ( lpViewAttrib->bSequencingD )

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 11					; 0000000bH
	and	eax, 1
	test	eax, eax
	je	SHORT $L8246

; 1512 :       TraceLineS( "                 bSequencingD", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BO@PBAD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bSequencingD?$AA@ ; `string'
	call	_TraceLineS@8
$L8246:

; 1513 : 
; 1514 :    if ( lpViewAttrib->bNoUpdate )

	mov	ecx, DWORD PTR _lpViewAttrib$[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 12					; 0000000cH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8248

; 1515 :       TraceLineS( "                 bNoUpdate", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BL@LHG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bNoUpdate?$AA@ ; `string'
	call	_TraceLineS@8
$L8248:

; 1516 : 
; 1517 :    if ( lpViewAttrib->bNoPersistUpd )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 13					; 0000000dH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8250

; 1518 :       TraceLineS( "                 bNoPersistUpd", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BP@CCOP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5bNoPersistUpd?$AA@ ; `string'
	call	_TraceLineS@8
$L8250:

; 1519 : 
; 1520 : } // fnTraceViewAttrib

	pop	ebp
	ret	8
_fnTraceViewAttrib@8 ENDP
_TEXT	ENDS
PUBLIC	??_C@_0BK@CKGB@Tracing?5object?5definition?$AA@	; `string'
PUBLIC	??_C@_0CB@CFEK@Cancel?5Tracing?0?5lpViewOD?5is?5null@ ; `string'
PUBLIC	??_C@_0BD@KCIO@Object?5def?5name?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0BB@JILM@Database?5name?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0BA@CMPB@OperLib?5name?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0BA@FKLF@OCEOper?5name?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0BC@NBGC@DBHandler?5name?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0BC@OCNH@GKHandler?5name?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0BC@GPKM@Entity?5Count?5?5?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0BC@ODNG@Cache?5Number?5?5?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0BC@JFJK@Lock?5Level?5?5?5?5?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_0BC@GOPE@Ent?5Lock?5Level?5?$DN?5?$AA@	; `string'
PUBLIC	??_C@_07KJAP@Flags?3?5?$AA@			; `string'
PUBLIC	??_C@_0BF@GIEL@?5?5?5?5?5bHasDupInstance?$AA@	; `string'
PUBLIC	??_C@_0BA@CDON@?5?5?5?5?5bHasDupRel?$AA@	; `string'
PUBLIC	??_C@_0BF@GCH@?5?5?5?5?5bHasDerivedPath?$AA@	; `string'
PUBLIC	??_C@_0BJ@KEGP@?5?5?5?5?5bActivateConstraint?$AA@ ; `string'
PUBLIC	??_C@_0BO@JDBA@?5?5?5?5?5bActivateEmptyConstraint?$AA@ ; `string'
PUBLIC	??_C@_0BH@JGMC@?5?5?5?5?5bCommitConstraint?$AA@	; `string'
PUBLIC	??_C@_0BH@HBIE@?5?5?5?5?5bDropOIConstraint?$AA@	; `string'
PUBLIC	??_C@_0BB@KIKL@?5?5?5?5?5bDeprecated?$AA@	; `string'
PUBLIC	??_C@_0CB@LDAB@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DATARECORD?5name?5?$DN?5@ ; `string'
PUBLIC	??_C@_0BN@CKPF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5Type?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BL@EBND@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5ID?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0CM@IFNM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5DATAFIELD?5Attrib@ ; `string'
PUBLIC	??_C@_0BO@ED@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5name?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BO@BEFD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5type?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0CA@IOJA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5length?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BK@PDA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5RELRECORD?$AA@ ; `string'
PUBLIC	??_C@_0CA@ODKK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5cOwnerMember?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BP@EMCP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5name?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BN@JGCP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5ID?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BO@GFAF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?5name?51?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BM@MDKF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?51?5ID?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BO@KPD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?5name?52?5?$DN?5?$AA@ ; `string'
PUBLIC	_DisplayObjectDef@8
PUBLIC	??_C@_0BM@LABL@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?52?5ID?5?$DN?5?$AA@ ; `string'
PUBLIC	??_C@_0BP@JPEG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5RELFIELD?3?$AA@ ; `string'
PUBLIC	??_C@_0CG@IJJG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Source?5enti@ ; `string'
PUBLIC	??_C@_0CG@KJBN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Source?5attr@ ; `string'
PUBLIC	??_C@_0CD@LEMB@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Rel?5entity?5@ ; `string'
PUBLIC	??_C@_0CD@JEEK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Rel?5attrib?5@ ; `string'
PUBLIC	??_C@_0CD@CMCO@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5name?5@ ; `string'
;	COMDAT ??_C@_0BK@CKGB@Tracing?5object?5definition?$AA@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0BK@CKGB@Tracing?5object?5definition?$AA@ DB 'Tracing object defini'
	DB	'tion', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CB@CFEK@Cancel?5Tracing?0?5lpViewOD?5is?5null@
_DATA	SEGMENT
??_C@_0CB@CFEK@Cancel?5Tracing?0?5lpViewOD?5is?5null@ DB 'Cancel Tracing,'
	DB	' lpViewOD is null', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@KCIO@Object?5def?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BD@KCIO@Object?5def?5name?5?$DN?5?$AA@ DB 'Object def name = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@JILM@Database?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BB@JILM@Database?5name?5?$DN?5?$AA@ DB 'Database name = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@CMPB@OperLib?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BA@CMPB@OperLib?5name?5?$DN?5?$AA@ DB 'OperLib name = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@FKLF@OCEOper?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BA@FKLF@OCEOper?5name?5?$DN?5?$AA@ DB 'OCEOper name = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@NBGC@DBHandler?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BC@NBGC@DBHandler?5name?5?$DN?5?$AA@ DB 'DBHandler name = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@OCNH@GKHandler?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BC@OCNH@GKHandler?5name?5?$DN?5?$AA@ DB 'GKHandler name = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@GPKM@Entity?5Count?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BC@GPKM@Entity?5Count?5?5?5?$DN?5?$AA@ DB 'Entity Count   = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@ODNG@Cache?5Number?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BC@ODNG@Cache?5Number?5?5?5?$DN?5?$AA@ DB 'Cache Number   = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@JFJK@Lock?5Level?5?5?5?5?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BC@JFJK@Lock?5Level?5?5?5?5?5?$DN?5?$AA@ DB 'Lock Level     = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@GOPE@Ent?5Lock?5Level?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BC@GOPE@Ent?5Lock?5Level?5?$DN?5?$AA@ DB 'Ent Lock Level = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_07KJAP@Flags?3?5?$AA@
_DATA	SEGMENT
??_C@_07KJAP@Flags?3?5?$AA@ DB 'Flags: ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@GIEL@?5?5?5?5?5bHasDupInstance?$AA@
_DATA	SEGMENT
??_C@_0BF@GIEL@?5?5?5?5?5bHasDupInstance?$AA@ DB '     bHasDupInstance', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@CDON@?5?5?5?5?5bHasDupRel?$AA@
_DATA	SEGMENT
??_C@_0BA@CDON@?5?5?5?5?5bHasDupRel?$AA@ DB '     bHasDupRel', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BF@GCH@?5?5?5?5?5bHasDerivedPath?$AA@
_DATA	SEGMENT
??_C@_0BF@GCH@?5?5?5?5?5bHasDerivedPath?$AA@ DB '     bHasDerivedPath', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@KEGP@?5?5?5?5?5bActivateConstraint?$AA@
_DATA	SEGMENT
??_C@_0BJ@KEGP@?5?5?5?5?5bActivateConstraint?$AA@ DB '     bActivateConst'
	DB	'raint', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@JDBA@?5?5?5?5?5bActivateEmptyConstraint?$AA@
_DATA	SEGMENT
??_C@_0BO@JDBA@?5?5?5?5?5bActivateEmptyConstraint?$AA@ DB '     bActivate'
	DB	'EmptyConstraint', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@JGMC@?5?5?5?5?5bCommitConstraint?$AA@
_DATA	SEGMENT
??_C@_0BH@JGMC@?5?5?5?5?5bCommitConstraint?$AA@ DB '     bCommitConstrain'
	DB	't', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@HBIE@?5?5?5?5?5bDropOIConstraint?$AA@
_DATA	SEGMENT
??_C@_0BH@HBIE@?5?5?5?5?5bDropOIConstraint?$AA@ DB '     bDropOIConstrain'
	DB	't', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@KIKL@?5?5?5?5?5bDeprecated?$AA@
_DATA	SEGMENT
??_C@_0BB@KIKL@?5?5?5?5?5bDeprecated?$AA@ DB '     bDeprecated', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CB@LDAB@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DATARECORD?5name?5?$DN?5@
_DATA	SEGMENT
??_C@_0CB@LDAB@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DATARECORD?5name?5?$DN?5@ DB ' '
	DB	'             DATARECORD name = ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@CKPF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5Type?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BN@CKPF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5Type?5?$DN?5?$AA@ DB ' '
	DB	'             Record Type = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BL@EBND@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5ID?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BL@EBND@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5ID?5?$DN?5?$AA@ DB '  '
	DB	'            Record ID = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CM@IFNM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5DATAFIELD?5Attrib@
_DATA	SEGMENT
??_C@_0CM@IFNM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5DATAFIELD?5Attrib@ DB '   '
	DB	'             DATAFIELD Attribute name = ', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@ED@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BO@ED@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5name?5?$DN?5?$AA@ DB ' '
	DB	'               Field name = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@BEFD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5type?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BO@BEFD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5type?5?$DN?5?$AA@ DB ' '
	DB	'               Field type = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CA@IOJA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5length?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0CA@IOJA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5length?5?$DN?5?$AA@ DB ' '
	DB	'               Field length = ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@PDA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5RELRECORD?$AA@
_DATA	SEGMENT
??_C@_0BK@PDA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5RELRECORD?$AA@ DB '        '
	DB	'        RELRECORD', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CA@ODKK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5cOwnerMember?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0CA@ODKK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5cOwnerMember?5?$DN?5?$AA@ DB ' '
	DB	'               cOwnerMember = ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BP@EMCP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5name?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BP@EMCP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5name?5?$DN?5?$AA@ DB ' '
	DB	'               Record name = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@JGCP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5ID?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BN@JGCP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5ID?5?$DN?5?$AA@ DB ' '
	DB	'               Record ID = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@GFAF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?5name?51?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BO@GFAF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?5name?51?5?$DN?5?$AA@ DB ' '
	DB	'               Set name 1 = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@MDKF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?51?5ID?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BM@MDKF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?51?5ID?5?$DN?5?$AA@ DB ' '
	DB	'               Set 1 ID = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BO@KPD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?5name?52?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BO@KPD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?5name?52?5?$DN?5?$AA@ DB ' '
	DB	'               Set name 2 = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@LABL@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?52?5ID?5?$DN?5?$AA@
_DATA	SEGMENT
??_C@_0BM@LABL@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?52?5ID?5?$DN?5?$AA@ DB ' '
	DB	'               Set 2 ID = ', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BP@JPEG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5RELFIELD?3?$AA@
_DATA	SEGMENT
??_C@_0BP@JPEG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5RELFIELD?3?$AA@ DB ' '
	DB	'                    RELFIELD:', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CG@IJJG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Source?5enti@
_DATA	SEGMENT
??_C@_0CG@IJJG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Source?5enti@ DB ' '
	DB	'                    Source entity = ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CG@KJBN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Source?5attr@
_DATA	SEGMENT
??_C@_0CG@KJBN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Source?5attr@ DB ' '
	DB	'                    Source attrib = ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CD@LEMB@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Rel?5entity?5@
_DATA	SEGMENT
??_C@_0CD@LEMB@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Rel?5entity?5@ DB ' '
	DB	'                    Rel entity = ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CD@JEEK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Rel?5attrib?5@
_DATA	SEGMENT
??_C@_0CD@JEEK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Rel?5attrib?5@ DB ' '
	DB	'                    Rel attrib = ', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CD@CMCO@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5name?5@
_DATA	SEGMENT
??_C@_0CD@CMCO@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5name?5@ DB ' '
	DB	'                    Field name = ', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpPtr$ = 8
_nControl$ = 12
_lpViewOD$ = -4
_lpViewEntity$ = -12
_lpViewAttrib$ = -16
_lpDataRecord$ = -32
_lpDataField$ = -8
_lpRelRecord$ = -28
_lpRelField$ = -20
_sz$ = -24
_lpDBHandler$8279 = -36
_lpGKHandler$8283 = -40
_lpTemp$8328 = -44
_lpTempDataField$8364 = -56
_lpTempViewAttrib$8365 = -48
_lpTempViewEntity$8366 = -52
_DisplayObjectDef@8 PROC NEAR

; 1541 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 56					; 00000038H

; 1542 :    LPVIEWOD     lpViewOD;
; 1543 :    LPVIEWENTITY lpViewEntity;
; 1544 :    LPVIEWATTRIB lpViewAttrib;
; 1545 :    LPDATARECORD lpDataRecord;
; 1546 :    LPDATAFIELD  lpDataField;
; 1547 :    LPRELRECORD  lpRelRecord;
; 1548 :    LPRELFIELD   lpRelField;
; 1549 :    zCHAR        sz[ 2 ];
; 1550 : 
; 1551 :    if ( nControl == 1 )

	movsx	eax, WORD PTR _nControl$[ebp]
	cmp	eax, 1
	jne	SHORT $L8265

; 1552 :       lpViewOD = (LPVIEWOD) lpPtr;

	mov	ecx, DWORD PTR _lpPtr$[ebp]
	mov	DWORD PTR _lpViewOD$[ebp], ecx

; 1553 :    else

	jmp	SHORT $L8267
$L8265:

; 1554 :       lpViewOD = zGETPTR( lpPtr->hViewOD );

	mov	edx, DWORD PTR _lpPtr$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOD$[ebp], eax
$L8267:

; 1555 : 
; 1556 :    sz[ 1 ] = 0;

	mov	BYTE PTR _sz$[ebp+1], 0

; 1557 : 
; 1558 :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1559 :    TraceLineS( "Tracing object definition", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BK@CKGB@Tracing?5object?5definition?$AA@ ; `string'
	call	_TraceLineS@8

; 1560 :    TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1561 : 
; 1562 :    if ( lpViewOD == 0 )

	cmp	DWORD PTR _lpViewOD$[ebp], 0
	jne	SHORT $L8270

; 1564 :       TraceLineS( "Cancel Tracing, lpViewOD is null", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CB@CFEK@Cancel?5Tracing?0?5lpViewOD?5is?5null@ ; `string'
	call	_TraceLineS@8

; 1565 :       return( -1 );

	or	ax, -1
	jmp	$L8256
$L8270:

; 1567 : 
; 1568 :    TraceLineS( "Object def name = ", lpViewOD->szName );

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0BD@KCIO@Object?5def?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1569 :    TraceLineS( "Database name = ", lpViewOD->szDfltDBName );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	add	edx, 43					; 0000002bH
	push	edx
	push	OFFSET FLAT:??_C@_0BB@JILM@Database?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1570 : 
; 1571 :    if ( lpViewOD->szOperLibname[ 0 ] )

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	movsx	ecx, BYTE PTR [eax+142]
	test	ecx, ecx
	je	SHORT $L8274

; 1572 :       TraceLineS( "OperLib name = ", lpViewOD->szOperLibname );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	add	edx, 142				; 0000008eH
	push	edx
	push	OFFSET FLAT:??_C@_0BA@CMPB@OperLib?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8274:

; 1573 : 
; 1574 :    if ( lpViewOD->szOCEOpername[ 0 ] )

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	movsx	ecx, BYTE PTR [eax+175]
	test	ecx, ecx
	je	SHORT $L8276

; 1575 :       TraceLineS( "OCEOper name = ", lpViewOD->szOCEOpername );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	add	edx, 175				; 000000afH
	push	edx
	push	OFFSET FLAT:??_C@_0BA@FKLF@OCEOper?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8276:

; 1576 : 
; 1577 :    if ( lpViewOD->hDBHandler )

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	cmp	DWORD PTR [eax+208], 0
	je	SHORT $L8278

; 1579 :       LPDBHANDLER lpDBHandler = zGETPTR( lpViewOD->hDBHandler );

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	mov	edx, DWORD PTR [ecx+208]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDBHandler$8279[ebp], eax

; 1580 : 
; 1581 :       TraceLineS( "DBHandler name = ", lpDBHandler->szName );

	mov	eax, DWORD PTR _lpDBHandler$8279[ebp]
	add	eax, 11					; 0000000bH
	push	eax
	push	OFFSET FLAT:??_C@_0BC@NBGC@DBHandler?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8278:

; 1583 : 
; 1584 :    if ( lpViewOD->hGKHandler )

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	cmp	DWORD PTR [ecx+212], 0
	je	SHORT $L8282

; 1586 :       LPGKHANDLER lpGKHandler = zGETPTR( lpViewOD->hGKHandler );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	mov	eax, DWORD PTR [edx+212]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpGKHandler$8283[ebp], eax

; 1587 : 
; 1588 :       TraceLineS( "GKHandler name = ", lpGKHandler->szName );

	mov	ecx, DWORD PTR _lpGKHandler$8283[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0BC@OCNH@GKHandler?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8282:

; 1590 : 
; 1591 :    TraceLineI( "Entity Count   = ", lpViewOD->uEntities );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	xor	eax, eax
	mov	ax, WORD PTR [edx+234]
	push	eax
	push	OFFSET FLAT:??_C@_0BC@GPKM@Entity?5Count?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1592 :    TraceLineI( "Cache Number   = ", lpViewOD->cCacheNbr );

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	movsx	edx, BYTE PTR [ecx+238]
	push	edx
	push	OFFSET FLAT:??_C@_0BC@ODNG@Cache?5Number?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1593 :    TraceLineI( "Lock Level     = ", lpViewOD->nLock );

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+236]
	push	ecx
	push	OFFSET FLAT:??_C@_0BC@JFJK@Lock?5Level?5?5?5?5?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1594 :    TraceLineI( "Ent Lock Level = ", lpViewOD->nEntityLock );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+237]
	push	eax
	push	OFFSET FLAT:??_C@_0BC@GOPE@Ent?5Lock?5Level?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1595 : 
; 1596 : #if 0
; 1597 :    TraceLineX( "Locking Flags  = 0x", lpViewOD->lLockFlags );
; 1598 :    if ( lpViewOD->lLockFlags != 0 )
; 1599 :    {
; 1600 :       if ( lpViewOD->lLockFlags & zLOCK_OPTIMISTIC )
; 1601 :          TraceLineS( "          zLOCK_OPTIMISTIC", "" );
; 1602 : 
; 1603 :       if ( lpViewOD->lLockFlags & zLOCK_IGNOREINC )
; 1604 :          TraceLineS( "          zLOCK_IGNOREINC", "" );
; 1605 :    }
; 1606 : #endif
; 1607 : 
; 1608 :    TraceLineS( "Flags: ", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_07KJAP@Flags?3?5?$AA@	; `string'
	call	_TraceLineS@8

; 1609 :    if ( lpViewOD->bHasDupInstance )

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	mov	edx, DWORD PTR [ecx+240]
	and	edx, 1
	test	edx, edx
	je	SHORT $L8291

; 1610 :       TraceLineS( "     bHasDupInstance", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BF@GIEL@?5?5?5?5?5bHasDupInstance?$AA@ ; `string'
	call	_TraceLineS@8
$L8291:

; 1611 : 
; 1612 :    if ( lpViewOD->bHasDupRel )

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	mov	ecx, DWORD PTR [eax+240]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8293

; 1613 :       TraceLineS( "     bHasDupRel", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BA@CDON@?5?5?5?5?5bHasDupRel?$AA@ ; `string'
	call	_TraceLineS@8
$L8293:

; 1614 : 
; 1615 :    if ( lpViewOD->bHasDerivedPath )

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	mov	eax, DWORD PTR [edx+240]
	shr	eax, 2
	and	eax, 1
	test	eax, eax
	je	SHORT $L8295

; 1616 :       TraceLineS( "     bHasDerivedPath", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BF@GCH@?5?5?5?5?5bHasDerivedPath?$AA@ ; `string'
	call	_TraceLineS@8
$L8295:

; 1617 : 
; 1618 :    if ( lpViewOD->bActivateConstraint )

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	mov	edx, DWORD PTR [ecx+240]
	shr	edx, 3
	and	edx, 1
	test	edx, edx
	je	SHORT $L8297

; 1619 :       TraceLineS( "     bActivateConstraint", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BJ@KEGP@?5?5?5?5?5bActivateConstraint?$AA@ ; `string'
	call	_TraceLineS@8
$L8297:

; 1620 : 
; 1621 :    if ( lpViewOD->bActivateEmptyConstraint )

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	mov	ecx, DWORD PTR [eax+240]
	shr	ecx, 4
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8299

; 1622 :       TraceLineS( "     bActivateEmptyConstraint", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BO@JDBA@?5?5?5?5?5bActivateEmptyConstraint?$AA@ ; `string'
	call	_TraceLineS@8
$L8299:

; 1623 : 
; 1624 :    if ( lpViewOD->bCommitConstraint )

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	mov	eax, DWORD PTR [edx+240]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	je	SHORT $L8301

; 1625 :       TraceLineS( "     bCommitConstraint", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BH@JGMC@?5?5?5?5?5bCommitConstraint?$AA@ ; `string'
	call	_TraceLineS@8
$L8301:

; 1626 : 
; 1627 :    if ( lpViewOD->bDropOIConstraint )

	mov	ecx, DWORD PTR _lpViewOD$[ebp]
	mov	edx, DWORD PTR [ecx+240]
	shr	edx, 6
	and	edx, 1
	test	edx, edx
	je	SHORT $L8303

; 1628 :       TraceLineS( "     bDropOIConstraint", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BH@HBIE@?5?5?5?5?5bDropOIConstraint?$AA@ ; `string'
	call	_TraceLineS@8
$L8303:

; 1629 : 
; 1630 :    if ( lpViewOD->bDeprecated )

	mov	eax, DWORD PTR _lpViewOD$[ebp]
	mov	ecx, DWORD PTR [eax+240]
	shr	ecx, 11					; 0000000bH
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L8305

; 1631 :       TraceLineS( "     bDeprecated", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BB@KIKL@?5?5?5?5?5bDeprecated?$AA@ ; `string'
	call	_TraceLineS@8
$L8305:

; 1632 : 
; 1633 :    lpViewEntity = zGETPTR( lpViewOD->hFirstOD_Entity );

	mov	edx, DWORD PTR _lpViewOD$[ebp]
	mov	eax, DWORD PTR [edx+224]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax
$L8309:

; 1634 :    while ( lpViewEntity )

	cmp	DWORD PTR _lpViewEntity$[ebp], 0
	je	$L8310

; 1636 :       fnTraceViewEntity( lpViewEntity );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	push	ecx
	call	_fnTraceViewEntity@4

; 1637 : 
; 1638 :       lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+179]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
$L8313:

; 1639 :       while ( lpViewAttrib )

	cmp	DWORD PTR _lpViewAttrib$[ebp], 0
	je	SHORT $L8314

; 1641 :          fnTraceViewAttrib( lpViewAttrib, sz );

	lea	ecx, DWORD PTR _sz$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	call	_fnTraceViewAttrib@8

; 1642 : 
; 1643 :          lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib );

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewAttrib$[ebp], eax

; 1644 :       } // while ( lpViewAttrib )...

	jmp	SHORT $L8313
$L8314:

; 1645 : 
; 1646 :       lpDataRecord = zGETPTR( lpViewEntity->hFirstDataRecord );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+191]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDataRecord$[ebp], eax
$L8318:

; 1647 :       while ( lpDataRecord )

	cmp	DWORD PTR _lpDataRecord$[ebp], 0
	je	$L8319

; 1649 :          TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1650 :          TraceLineS( "              DATARECORD name = ",
; 1651 :                      lpDataRecord->szRecordName );

	mov	ecx, DWORD PTR _lpDataRecord$[ebp]
	add	ecx, 15					; 0000000fH
	push	ecx
	push	OFFSET FLAT:??_C@_0CB@LDAB@?5?5?5?5?5?5?5?5?5?5?5?5?5?5DATARECORD?5name?5?$DN?5@ ; `string'
	call	_TraceLineS@8

; 1652 : 
; 1653 :          sz[ 0 ] = lpDataRecord->cRecordType;

	mov	edx, DWORD PTR _lpDataRecord$[ebp]
	mov	al, BYTE PTR [edx+14]
	mov	BYTE PTR _sz$[ebp], al

; 1654 :          TraceLineS( "              Record Type = ", sz );

	lea	ecx, DWORD PTR _sz$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BN@CKPF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5Type?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1655 : 
; 1656 :          if ( lpDataRecord->lRecordID )

	mov	edx, DWORD PTR _lpDataRecord$[ebp]
	cmp	DWORD PTR [edx+271], 0
	je	SHORT $L8322

; 1657 :             TraceLineI( "              Record ID = ", lpDataRecord->lRecordID );

	mov	eax, DWORD PTR _lpDataRecord$[ebp]
	mov	ecx, DWORD PTR [eax+271]
	push	ecx
	push	OFFSET FLAT:??_C@_0BL@EBND@?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5ID?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8
$L8322:

; 1658 : 
; 1659 :          lpDataField = zGETPTR( lpDataRecord->hFirstDataField );

	mov	edx, DWORD PTR _lpDataRecord$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDataField$[ebp], eax
$L8326:

; 1660 :          while ( lpDataField )

	cmp	DWORD PTR _lpDataField$[ebp], 0
	je	$L8327

; 1662 :             LPVIEWATTRIB lpTemp = zGETPTR( lpDataField->hViewAttrib );

	mov	ecx, DWORD PTR _lpDataField$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTemp$8328[ebp], eax

; 1663 : 
; 1664 :             TraceLineS( "                DATAFIELD Attribute name = ",
; 1665 :                         lpTemp->szName );

	mov	eax, DWORD PTR _lpTemp$8328[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	push	OFFSET FLAT:??_C@_0CM@IFNM@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5DATAFIELD?5Attrib@ ; `string'
	call	_TraceLineS@8

; 1666 :             TraceLineS( "                Field name = ",
; 1667 :                         lpDataField->szFldName );

	mov	ecx, DWORD PTR _lpDataField$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0BO@ED@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1668 : 
; 1669 :             sz[ 0 ] = lpDataField->cFldType;

	mov	edx, DWORD PTR _lpDataField$[ebp]
	mov	al, BYTE PTR [edx+270]
	mov	BYTE PTR _sz$[ebp], al

; 1670 :             TraceLineS( "                Field type = ", sz );

	lea	ecx, DWORD PTR _sz$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BO@BEFD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5type?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1671 : 
; 1672 :             TraceLineI( "                Field length = ",
; 1673 :                         (zLONG) lpDataField->uFldLth );

	mov	edx, DWORD PTR _lpDataField$[ebp]
	xor	eax, eax
	mov	ax, WORD PTR [edx+271]
	push	eax
	push	OFFSET FLAT:??_C@_0CA@IOJA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5length?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8

; 1674 : 
; 1675 :             if ( lpDataField->uFldOffset )

	mov	ecx, DWORD PTR _lpDataField$[ebp]
	xor	edx, edx
	mov	dx, WORD PTR [ecx+273]
	test	edx, edx
	je	SHORT $L8335

; 1676 :                TraceLineI( "                Field length = ",
; 1677 :                            (zLONG) lpDataField->uFldOffset );

	mov	eax, DWORD PTR _lpDataField$[ebp]
	xor	ecx, ecx
	mov	cx, WORD PTR [eax+273]
	push	ecx
	push	OFFSET FLAT:??_C@_0CA@IOJA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5length?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8
$L8335:

; 1678 :             if ( lpDataField->lFldID )

	mov	edx, DWORD PTR _lpDataField$[ebp]
	cmp	DWORD PTR [edx+266], 0
	je	SHORT $L8337

; 1679 :                TraceLineI( "                Field length = ",
; 1680 :                            lpDataField->lFldID );

	mov	eax, DWORD PTR _lpDataField$[ebp]
	mov	ecx, DWORD PTR [eax+266]
	push	ecx
	push	OFFSET FLAT:??_C@_0CA@IOJA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5length?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8
$L8337:

; 1681 : 
; 1682 :             lpDataField = zGETPTR( lpDataField->hNextDataField );

	mov	edx, DWORD PTR _lpDataField$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDataField$[ebp], eax

; 1683 :          } // while ( lpDataField )...

	jmp	$L8326
$L8327:

; 1684 : 
; 1685 :          lpRelRecord = zGETPTR( lpDataRecord->hFirstRelRecord );

	mov	ecx, DWORD PTR _lpDataRecord$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRelRecord$[ebp], eax
$L8341:

; 1686 :          while ( lpRelRecord )

	cmp	DWORD PTR _lpRelRecord$[ebp], 0
	je	$L8342

; 1688 :             TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1689 :             TraceLineS( "                RELRECORD", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BK@PDA@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5RELRECORD?$AA@ ; `string'
	call	_TraceLineS@8

; 1690 :             sz[ 0 ] = lpRelRecord->cOwnerMember;

	mov	eax, DWORD PTR _lpRelRecord$[ebp]
	mov	cl, BYTE PTR [eax+10]
	mov	BYTE PTR _sz$[ebp], cl

; 1691 :             TraceLineS( "                cOwnerMember = ", sz );

	lea	edx, DWORD PTR _sz$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CA@ODKK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5cOwnerMember?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8

; 1692 :             if ( lpRelRecord->szRecordName[ 0 ] )

	mov	eax, DWORD PTR _lpRelRecord$[ebp]
	movsx	ecx, BYTE PTR [eax+11]
	test	ecx, ecx
	je	SHORT $L8345

; 1693 :                TraceLineS( "                Record name = ",
; 1694 :                            lpRelRecord->szRecordName );

	mov	edx, DWORD PTR _lpRelRecord$[ebp]
	add	edx, 11					; 0000000bH
	push	edx
	push	OFFSET FLAT:??_C@_0BP@EMCP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5name?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8345:

; 1695 : 
; 1696 :             if ( lpRelRecord->lRecordID )

	mov	eax, DWORD PTR _lpRelRecord$[ebp]
	cmp	DWORD PTR [eax+267], 0
	je	SHORT $L8347

; 1697 :                TraceLineI( "                Record ID = ",
; 1698 :                            (zLONG) lpRelRecord->lRecordID );

	mov	ecx, DWORD PTR _lpRelRecord$[ebp]
	mov	edx, DWORD PTR [ecx+267]
	push	edx
	push	OFFSET FLAT:??_C@_0BN@JGCP@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Record?5ID?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8
$L8347:

; 1699 : 
; 1700 :             if ( lpRelRecord->szSetName1[ 0 ] )

	mov	eax, DWORD PTR _lpRelRecord$[ebp]
	movsx	ecx, BYTE PTR [eax+271]
	test	ecx, ecx
	je	SHORT $L8350

; 1701 :                TraceLineS( "                Set name 1 = ",
; 1702 :                            lpRelRecord->szSetName1 );

	mov	edx, DWORD PTR _lpRelRecord$[ebp]
	add	edx, 271				; 0000010fH
	push	edx
	push	OFFSET FLAT:??_C@_0BO@GFAF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?5name?51?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8350:

; 1703 : 
; 1704 :             if ( lpRelRecord->lSetID1 )

	mov	eax, DWORD PTR _lpRelRecord$[ebp]
	cmp	DWORD PTR [eax+527], 0
	je	SHORT $L8352

; 1705 :                TraceLineI( "                Set 1 ID = ",
; 1706 :                            (zLONG) lpRelRecord->lSetID1 );

	mov	ecx, DWORD PTR _lpRelRecord$[ebp]
	mov	edx, DWORD PTR [ecx+527]
	push	edx
	push	OFFSET FLAT:??_C@_0BM@MDKF@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?51?5ID?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8
$L8352:

; 1707 : 
; 1708 :             if ( lpRelRecord->szSetName2[ 0 ] )

	mov	eax, DWORD PTR _lpRelRecord$[ebp]
	movsx	ecx, BYTE PTR [eax+531]
	test	ecx, ecx
	je	SHORT $L8355

; 1709 :                TraceLineS( "                Set name 2 = ",
; 1710 :                            lpRelRecord->szSetName2 );

	mov	edx, DWORD PTR _lpRelRecord$[ebp]
	add	edx, 531				; 00000213H
	push	edx
	push	OFFSET FLAT:??_C@_0BO@KPD@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?5name?52?5?$DN?5?$AA@ ; `string'
	call	_TraceLineS@8
$L8355:

; 1711 : 
; 1712 :             if ( lpRelRecord->lSetID2 )

	mov	eax, DWORD PTR _lpRelRecord$[ebp]
	cmp	DWORD PTR [eax+787], 0
	je	SHORT $L8357

; 1713 :                TraceLineI( "                Set 2 ID = ",
; 1714 :                            (zLONG) lpRelRecord->lSetID2 );

	mov	ecx, DWORD PTR _lpRelRecord$[ebp]
	mov	edx, DWORD PTR [ecx+787]
	push	edx
	push	OFFSET FLAT:??_C@_0BM@LABL@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Set?52?5ID?5?$DN?5?$AA@ ; `string'
	call	_TraceLineI@8
$L8357:

; 1715 : 
; 1716 :             lpRelField = zGETPTR( lpRelRecord->hFirstRelField );

	mov	eax, DWORD PTR _lpRelRecord$[ebp]
	mov	ecx, DWORD PTR [eax+6]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRelField$[ebp], eax
$L8362:

; 1717 :             while ( lpRelField )

	cmp	DWORD PTR _lpRelField$[ebp], 0
	je	$L8363

; 1719 :                LPDATAFIELD  lpTempDataField;
; 1720 :                LPVIEWATTRIB lpTempViewAttrib;
; 1721 :                LPVIEWENTITY lpTempViewEntity;
; 1722 : 
; 1723 :                TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 1724 :                TraceLineS( "                     RELFIELD:", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0BP@JPEG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5RELFIELD?3?$AA@ ; `string'
	call	_TraceLineS@8

; 1725 : 
; 1726 :                if ( lpRelField->hSrcDataField )

	mov	edx, DWORD PTR _lpRelField$[ebp]
	cmp	DWORD PTR [edx+10], 0
	je	SHORT $L8368

; 1728 :                   lpTempDataField  = zGETPTR( lpRelField->hSrcDataField );

	mov	eax, DWORD PTR _lpRelField$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempDataField$8364[ebp], eax

; 1729 :                   lpTempViewAttrib = zGETPTR( lpTempDataField->hViewAttrib );

	mov	edx, DWORD PTR _lpTempDataField$8364[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempViewAttrib$8365[ebp], eax

; 1730 :                   lpTempViewEntity = zGETPTR( lpTempViewAttrib->hViewEntity );

	mov	ecx, DWORD PTR _lpTempViewAttrib$8365[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempViewEntity$8366[ebp], eax

; 1731 : 
; 1732 :                   TraceLineS( "                     Source entity = ",
; 1733 :                               lpTempViewEntity->szName );

	mov	eax, DWORD PTR _lpTempViewEntity$8366[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0CG@IJJG@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Source?5enti@ ; `string'
	call	_TraceLineS@8

; 1734 :                   TraceLineS( "                     Source attrib = ",
; 1735 :                               lpTempViewAttrib->szName );

	mov	ecx, DWORD PTR _lpTempViewAttrib$8365[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0CG@KJBN@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Source?5attr@ ; `string'
	call	_TraceLineS@8
$L8368:

; 1737 : 
; 1738 :                if ( lpRelField->hRelDataField )

	mov	edx, DWORD PTR _lpRelField$[ebp]
	cmp	DWORD PTR [edx+14], 0
	je	SHORT $L8374

; 1740 :                   lpTempDataField  = zGETPTR( lpRelField->hRelDataField );

	mov	eax, DWORD PTR _lpRelField$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempDataField$8364[ebp], eax

; 1741 :                   lpTempViewAttrib = zGETPTR( lpTempDataField->hViewAttrib );

	mov	edx, DWORD PTR _lpTempDataField$8364[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempViewAttrib$8365[ebp], eax

; 1742 :                   lpTempViewEntity = zGETPTR( lpTempViewAttrib->hViewEntity );

	mov	ecx, DWORD PTR _lpTempViewAttrib$8365[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTempViewEntity$8366[ebp], eax

; 1743 : 
; 1744 :                   TraceLineS( "                     Rel entity = ",
; 1745 :                               lpTempViewEntity->szName );

	mov	eax, DWORD PTR _lpTempViewEntity$8366[ebp]
	add	eax, 14					; 0000000eH
	push	eax
	push	OFFSET FLAT:??_C@_0CD@LEMB@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Rel?5entity?5@ ; `string'
	call	_TraceLineS@8

; 1746 :                   TraceLineS( "                     Rel attrib = ",
; 1747 :                               lpTempViewAttrib->szName );

	mov	ecx, DWORD PTR _lpTempViewAttrib$8365[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	OFFSET FLAT:??_C@_0CD@JEEK@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Rel?5attrib?5@ ; `string'
	call	_TraceLineS@8
$L8374:

; 1749 : 
; 1750 :                if ( lpRelField->szFldName[ 0 ] )

	mov	edx, DWORD PTR _lpRelField$[ebp]
	movsx	eax, BYTE PTR [edx+18]
	test	eax, eax
	je	SHORT $L8380

; 1751 :                   TraceLineS( "                     Field name = ",
; 1752 :                               lpRelField->szFldName );

	mov	ecx, DWORD PTR _lpRelField$[ebp]
	add	ecx, 18					; 00000012H
	push	ecx
	push	OFFSET FLAT:??_C@_0CD@CMCO@?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5?5Field?5name?5@ ; `string'
	call	_TraceLineS@8
$L8380:

; 1753 : 
; 1754 :                lpRelField = zGETPTR( lpRelField->hNextRelField );

	mov	edx, DWORD PTR _lpRelField$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRelField$[ebp], eax

; 1755 :             } // while ( lpRelField )...

	jmp	$L8362
$L8363:

; 1756 : 
; 1757 :             lpRelRecord = zGETPTR( lpRelRecord->hNextRelRecord );

	mov	ecx, DWORD PTR _lpRelRecord$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpRelRecord$[ebp], eax

; 1758 :          } // while ( lpRelRecord )...

	jmp	$L8341
$L8342:

; 1759 : 
; 1760 :          lpDataRecord = zGETPTR( lpDataRecord->hNextDataRecord );

	mov	eax, DWORD PTR _lpDataRecord$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpDataRecord$[ebp], eax

; 1761 :       } // while ( lpDataRecord )...

	jmp	$L8318
$L8319:

; 1762 : 
; 1763 :       lpViewEntity = zGETPTR( lpViewEntity->hNextHier );

	mov	edx, DWORD PTR _lpViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$[ebp], eax

; 1764 :    } // while ( lpViewEntity )...

	jmp	$L8309
$L8310:

; 1765 : 
; 1766 :    return( 0 );

	xor	ax, ax
$L8256:

; 1767 : 
; 1768 : }  /* DisplayObjectDef */

	mov	esp, ebp
	pop	ebp
	ret	8
_DisplayObjectDef@8 ENDP
_TEXT	ENDS
PUBLIC	_fnCompareEntityToEntity
EXTRN	_fnCompareEIAttrs@36:NEAR
_TEXT	SEGMENT
_lpTgtViewEntity$ = 8
_lpTgtEntityInstance$ = 12
_lpSrcViewEntity$ = 16
_lpSrcEntityInstance$ = 20
_bPersistOnly$ = 24
_bKeysOnly$ = 28
_lpViewOI$ = -8
_lpCurrentTask$ = -12
_nRC$ = -4
_lpFirstSrcViewAttrib$8405 = -20
_lpTgtViewAttrib$8406 = -24
_lpSrcViewAttrib$8407 = -16
_lpCompareViewAttrib$8431 = -28
_fnCompareEntityToEntity PROC NEAR

; 1793 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 1794 :    LPVIEWOI lpViewOI      = zGETPTR( lpSrcEntityInstance->hViewOI );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1795 :    LPTASK   lpCurrentTask = zGETPTR( lpViewOI->hTask );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 1796 :    zSHORT   nRC;
; 1797 : 
; 1798 :    // Start by assuming that the entities are equal.
; 1799 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1800 : 
; 1801 :    if ( lpTgtViewEntity != lpSrcViewEntity )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	cmp	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	je	$L8404

; 1803 :       LPVIEWATTRIB lpFirstSrcViewAttrib;
; 1804 :       LPVIEWATTRIB lpTgtViewAttrib;
; 1805 :       LPVIEWATTRIB lpSrcViewAttrib;
; 1806 : 
; 1807 :       // The view entities are different, so compare attributes by name.
; 1808 :       lpFirstSrcViewAttrib = zGETPTR( lpSrcViewEntity->hFirstOD_Attrib );

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+179]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstSrcViewAttrib$8405[ebp], eax

; 1809 :       for ( lpTgtViewAttrib = zGETPTR( lpTgtViewEntity->hFirstOD_Attrib );
; 1810 :             lpTgtViewAttrib;
; 1811 :             lpTgtViewAttrib = zGETPTR( lpTgtViewAttrib->hNextOD_Attrib ) )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+179]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewAttrib$8406[ebp], eax
	jmp	SHORT $L8411
$L8412:
	mov	eax, DWORD PTR _lpTgtViewAttrib$8406[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewAttrib$8406[ebp], eax
$L8411:
	cmp	DWORD PTR _lpTgtViewAttrib$8406[ebp], 0
	je	$L8413

; 1813 :          if ( bPersistOnly && lpTgtViewAttrib->bPersist == FALSE )

	mov	edx, DWORD PTR _bPersistOnly$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L8414
	mov	eax, DWORD PTR _lpTgtViewAttrib$8406[ebp]
	mov	ecx, DWORD PTR [eax+193]
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8414

; 1814 :             continue;

	jmp	SHORT $L8412
$L8414:

; 1815 : 
; 1816 :          if ( bKeysOnly && lpTgtViewAttrib->bKey == FALSE )

	mov	edx, DWORD PTR _bKeysOnly$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	je	SHORT $L8415
	mov	eax, DWORD PTR _lpTgtViewAttrib$8406[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8415

; 1817 :             continue;

	jmp	SHORT $L8412
$L8415:

; 1818 : 
; 1819 :          if ( lpTgtViewAttrib->bHidden )

	mov	edx, DWORD PTR _lpTgtViewAttrib$8406[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	je	SHORT $L8416

; 1820 :             continue;

	jmp	SHORT $L8412
$L8416:

; 1821 : 
; 1822 :          // Find the src view attrib that has the same name as lpTgtViewAttrib
; 1823 :          lpSrcViewAttrib = lpFirstSrcViewAttrib;

	mov	ecx, DWORD PTR _lpFirstSrcViewAttrib$8405[ebp]
	mov	DWORD PTR _lpSrcViewAttrib$8407[ebp], ecx
$L8424:

; 1824 :          while ( lpSrcViewAttrib &&
; 1825 :                  zstrcmp( lpSrcViewAttrib->szName,
; 1826 :                           lpTgtViewAttrib->szName ) != 0 )

	cmp	DWORD PTR _lpSrcViewAttrib$8407[ebp], 0
	je	SHORT $L8425
	mov	edx, DWORD PTR _lpSrcViewAttrib$8407[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _lpTgtViewAttrib$8406[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	cmp	eax, edx
	jne	SHORT $L8913
	mov	eax, DWORD PTR _lpTgtViewAttrib$8406[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewAttrib$8407[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -32+[ebp], eax
	jmp	SHORT $L8914
$L8913:
	mov	edx, DWORD PTR _lpSrcViewAttrib$8407[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _lpTgtViewAttrib$8406[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -32+[ebp], ecx
$L8914:
	cmp	DWORD PTR -32+[ebp], 0
	je	SHORT $L8425

; 1828 :             lpSrcViewAttrib = zGETPTR( lpSrcViewAttrib->hNextOD_Attrib );

	mov	edx, DWORD PTR _lpSrcViewAttrib$8407[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewAttrib$8407[ebp], eax

; 1829 :          }

	jmp	SHORT $L8424
$L8425:

; 1830 : 
; 1831 :          // If no matching attr was found skip it.
; 1832 :          if ( lpSrcViewAttrib == 0 )

	cmp	DWORD PTR _lpSrcViewAttrib$8407[ebp], 0
	jne	SHORT $L8427

; 1833 :             continue;

	jmp	$L8412
$L8427:

; 1834 : 
; 1835 :          if ( lpSrcViewAttrib->bHidden )

	mov	ecx, DWORD PTR _lpSrcViewAttrib$8407[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	je	SHORT $L8428

; 1836 :             continue;

	jmp	$L8412
$L8428:

; 1837 : 
; 1838 :          if ( fnCompareEIAttrs( lpCurrentTask,
; 1839 :                                 0, lpTgtEntityInstance, lpTgtViewAttrib, 0,
; 1840 :                                 0, lpSrcEntityInstance, lpSrcViewAttrib, 0 ) != 0 )

	push	0
	mov	eax, DWORD PTR _lpSrcViewAttrib$8407[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	ecx
	push	0
	push	0
	mov	edx, DWORD PTR _lpTgtViewAttrib$8406[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnCompareEIAttrs@36
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8429

; 1842 :             return( 1 ); // Indicate unequal.

	mov	ax, 1
	jmp	$L8398
$L8429:

; 1844 : 
; 1845 :       }  // for ( lpTgtViewAttrib... )...

	jmp	$L8412
$L8413:

; 1848 :    else

	jmp	$L8436
$L8404:

; 1850 :       LPVIEWATTRIB lpCompareViewAttrib;
; 1851 : 
; 1852 :       // Compare each attribute for the entities.
; 1853 :       for ( lpCompareViewAttrib = zGETPTR( lpTgtViewEntity->hFirstOD_Attrib );
; 1854 :             lpCompareViewAttrib;
; 1855 :             lpCompareViewAttrib = zGETPTR( lpCompareViewAttrib->hNextOD_Attrib ) )

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+179]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCompareViewAttrib$8431[ebp], eax
	jmp	SHORT $L8434
$L8435:
	mov	edx, DWORD PTR _lpCompareViewAttrib$8431[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCompareViewAttrib$8431[ebp], eax
$L8434:
	cmp	DWORD PTR _lpCompareViewAttrib$8431[ebp], 0
	je	$L8436

; 1857 :          if ( bPersistOnly && lpCompareViewAttrib->bPersist == FALSE )

	mov	ecx, DWORD PTR _bPersistOnly$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L8437
	mov	edx, DWORD PTR _lpCompareViewAttrib$8431[ebp]
	mov	eax, DWORD PTR [edx+193]
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8437

; 1858 :             continue;

	jmp	SHORT $L8435
$L8437:

; 1859 : 
; 1860 :          if ( bKeysOnly && lpCompareViewAttrib->bKey == FALSE )

	mov	ecx, DWORD PTR _bKeysOnly$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	SHORT $L8438
	mov	edx, DWORD PTR _lpCompareViewAttrib$8431[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 1
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8438

; 1861 :             continue;

	jmp	SHORT $L8435
$L8438:

; 1862 : 
; 1863 :          if ( lpCompareViewAttrib->bHidden )

	mov	ecx, DWORD PTR _lpCompareViewAttrib$8431[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	je	SHORT $L8439

; 1864 :             continue;

	jmp	SHORT $L8435
$L8439:

; 1865 : 
; 1866 :          // Compare the attributes.
; 1867 :          if ( fnCompareEIAttrs( lpCurrentTask,
; 1868 :                                 0, lpTgtEntityInstance, lpCompareViewAttrib, 0,
; 1869 :                                 0, lpSrcEntityInstance,
; 1870 :                                 lpCompareViewAttrib, 0 ) != 0 )

	push	0
	mov	eax, DWORD PTR _lpCompareViewAttrib$8431[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	ecx
	push	0
	push	0
	mov	edx, DWORD PTR _lpCompareViewAttrib$8431[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnCompareEIAttrs@36
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8440

; 1872 :             return( 1 ); // Indicate unequal.

	mov	ax, 1
	jmp	SHORT $L8398
$L8440:

; 1874 : 
; 1875 :       }  // while ( lpCompareViewAttrib )...

	jmp	$L8435
$L8436:

; 1878 : 
; 1879 :    return( 0 );

	xor	ax, ax
$L8398:

; 1880 : 
; 1881 : }  /* fnCompareEntityToEntity */

	mov	esp, ebp
	pop	ebp
	ret	0
_fnCompareEntityToEntity ENDP
_TEXT	ENDS
PUBLIC	_CompareEntityToEntity@16
EXTRN	_fnValidateInstanceParameters:NEAR
_TEXT	SEGMENT
_lpTgtView$ = 8
_cpcTgtEntityName$ = 12
_lpSrcView$ = 16
_cpcSrcEntityName$ = 20
_lpCurrentTask$ = -24
_lpTgtViewEntity$ = -20
_lpTgtViewEntityCsr$ = -8
_lpSrcViewEntity$ = -16
_lpSrcViewEntityCsr$ = -12
_nRC$ = -4
_CompareEntityToEntity@16 PROC NEAR

; 1907 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 1908 :    LPTASK           lpCurrentTask;
; 1909 :    LPVIEWENTITY     lpTgtViewEntity;
; 1910 :    LPVIEWENTITYCSR  lpTgtViewEntityCsr;
; 1911 :    LPVIEWENTITY     lpSrcViewEntity;
; 1912 :    LPVIEWENTITYCSR  lpSrcViewEntityCsr;
; 1913 :    int              nRC;
; 1914 : 
; 1915 :    // Validate parameters
; 1916 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 1917 :                                       &lpTgtViewEntity,
; 1918 :                                       &lpTgtViewEntityCsr,
; 1919 :                                       iCompareEntityToEntity,
; 1920 :                                       lpTgtView,
; 1921 :                                       cpcTgtEntityName, 0 ) )

	push	0
	mov	eax, DWORD PTR _cpcTgtEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	push	406					; 00000196H
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
	je	SHORT $L8456

; 1923 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8449
$L8456:

; 1925 : 
; 1926 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 1927 :                                       &lpSrcViewEntity,
; 1928 :                                       &lpSrcViewEntityCsr,
; 1929 :                                       iCompareEntityToEntity,
; 1930 :                                       lpSrcView,
; 1931 :                                       cpcSrcEntityName,
; 1932 :                                       2 ) ) // we've already sent the id

	push	2
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	push	406					; 00000196H
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
	je	SHORT $L8457

; 1934 :    // fnOperationReturn( iCompareEntityToEntity, lpCurrentTask );
; 1935 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8449
$L8457:

; 1937 : 
; 1938 :    // Start by assuming that the entities are equal.
; 1939 :    nRC = fnCompareEntityToEntity( lpTgtViewEntity,
; 1940 :                                   zGETPTR( lpTgtViewEntityCsr->hEntityInstance ),
; 1941 :                                   lpSrcViewEntity,
; 1942 :                                   zGETPTR( lpSrcViewEntityCsr->hEntityInstance ),
; 1943 :                                   FALSE, FALSE );  // Compare all attributes.

	push	0
	push	0
	mov	eax, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	edx, DWORD PTR _lpTgtViewEntity$[ebp]
	push	edx
	call	_fnCompareEntityToEntity
	add	esp, 24					; 00000018H
	movsx	eax, ax
	mov	DWORD PTR _nRC$[ebp], eax

; 1944 : 
; 1945 :    fnOperationReturn( iCompareEntityToEntity, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	406					; 00000196H
	call	_fnOperationReturn
	add	esp, 8

; 1946 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8449:

; 1947 : 
; 1948 : }  /* CompareEntityToEntity */

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_CompareEntityToEntity@16 ENDP
_TEXT	ENDS
PUBLIC	_fnCompareEntitiesIgnoringAttrs
EXTRN	__imp__strchr:NEAR
_TEXT	SEGMENT
_lpTgtViewEntity$ = 8
_lpTgtEntityInstance$ = 12
_lpSrcViewEntity$ = 16
_lpSrcEntityInstance$ = 20
_pchAttrList$ = 24
_pch$ = -4
_pchSemi$ = -16
_nRC$ = -8
_lpViewOI$ = -12
_lpCurrentTask$ = -20
_lpFirstSrcViewAttrib$8480 = -28
_lpTgtViewAttrib$8481 = -32
_lpSrcViewAttrib$8482 = -24
_lpCompareViewAttrib$8518 = -36
_fnCompareEntitiesIgnoringAttrs PROC NEAR

; 1972 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H

; 1973 :    zPCHAR   pch;
; 1974 :    zPCHAR   pchSemi;
; 1975 :    zSHORT   nRC;
; 1976 :    LPVIEWOI lpViewOI      = zGETPTR( lpSrcEntityInstance->hViewOI );

	mov	eax, DWORD PTR _lpSrcEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewOI$[ebp], eax

; 1977 :    LPTASK   lpCurrentTask = zGETPTR( lpViewOI->hTask );

	mov	edx, DWORD PTR _lpViewOI$[ebp]
	mov	eax, DWORD PTR [edx+14]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCurrentTask$[ebp], eax

; 1978 : 
; 1979 :    // Start by assuming that the entities are equal.
; 1980 :    nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 1981 : 
; 1982 :    if ( lpTgtViewEntity != lpSrcViewEntity )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	cmp	ecx, DWORD PTR _lpSrcViewEntity$[ebp]
	je	$L8479

; 1984 :       LPVIEWATTRIB lpFirstSrcViewAttrib;
; 1985 :       LPVIEWATTRIB lpTgtViewAttrib;
; 1986 :       LPVIEWATTRIB lpSrcViewAttrib;
; 1987 : 
; 1988 :       // The view entities are different, so compare attributes by name.
; 1989 :       lpFirstSrcViewAttrib = zGETPTR( lpSrcViewEntity->hFirstOD_Attrib );

	mov	edx, DWORD PTR _lpSrcViewEntity$[ebp]
	mov	eax, DWORD PTR [edx+179]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpFirstSrcViewAttrib$8480[ebp], eax

; 1990 :       for ( lpTgtViewAttrib = zGETPTR( lpTgtViewEntity->hFirstOD_Attrib );
; 1991 :             lpTgtViewAttrib;
; 1992 :             lpTgtViewAttrib = zGETPTR( lpTgtViewAttrib->hNextOD_Attrib ) )

	mov	ecx, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+179]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewAttrib$8481[ebp], eax
	jmp	SHORT $L8486
$L8487:
	mov	eax, DWORD PTR _lpTgtViewAttrib$8481[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewAttrib$8481[ebp], eax
$L8486:
	cmp	DWORD PTR _lpTgtViewAttrib$8481[ebp], 0
	je	$L8488

; 1994 :          if ( lpTgtViewAttrib->bHidden )

	mov	edx, DWORD PTR _lpTgtViewAttrib$8481[ebp]
	mov	eax, DWORD PTR [edx+193]
	shr	eax, 5
	and	eax, 1
	test	eax, eax
	je	SHORT $L8489

; 1995 :             continue;

	jmp	SHORT $L8487
$L8489:

; 1996 : 
; 1997 :          pch = pchAttrList;

	mov	ecx, DWORD PTR _pchAttrList$[ebp]
	mov	DWORD PTR _pch$[ebp], ecx
$L8491:

; 1998 :          while ( pch )

	cmp	DWORD PTR _pch$[ebp], 0
	je	$L8492

; 2000 :             pchSemi = zstrchr( pch, ';' );

	push	59					; 0000003bH
	mov	edx, DWORD PTR _pch$[ebp]
	push	edx
	call	DWORD PTR __imp__strchr
	add	esp, 8
	mov	DWORD PTR _pchSemi$[ebp], eax

; 2001 :             if ( pchSemi )

	cmp	DWORD PTR _pchSemi$[ebp], 0
	je	SHORT $L8493

; 2002 :                *pchSemi = 0;

	mov	eax, DWORD PTR _pchSemi$[ebp]
	mov	BYTE PTR [eax], 0
$L8493:

; 2003 : 
; 2004 :             if ( zstrcmp( pch, lpTgtViewAttrib->szName ) == 0 )

	mov	ecx, DWORD PTR _pch$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _lpTgtViewAttrib$8481[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	cmp	edx, ecx
	jne	SHORT $L8917
	mov	edx, DWORD PTR _lpTgtViewAttrib$8481[ebp]
	add	edx, 10					; 0000000aH
	push	edx
	mov	eax, DWORD PTR _pch$[ebp]
	push	eax
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -40+[ebp], eax
	jmp	SHORT $L8918
$L8917:
	mov	ecx, DWORD PTR _pch$[ebp]
	movsx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _lpTgtViewAttrib$8481[ebp]
	movsx	ecx, BYTE PTR [eax+10]
	sub	edx, ecx
	xor	eax, eax
	test	edx, edx
	setle	al
	dec	eax
	and	eax, 2
	add	eax, -1
	mov	DWORD PTR -40+[ebp], eax
$L8918:
	cmp	DWORD PTR -40+[ebp], 0
	jne	SHORT $L8500

; 2006 :                if ( pchSemi )

	cmp	DWORD PTR _pchSemi$[ebp], 0
	je	SHORT $L8501

; 2007 :                   *pchSemi = ';';

	mov	ecx, DWORD PTR _pchSemi$[ebp]
	mov	BYTE PTR [ecx], 59			; 0000003bH
$L8501:

; 2008 : 
; 2009 :                break;

	jmp	SHORT $L8492
$L8500:

; 2011 : 
; 2012 :             if ( pchSemi )

	cmp	DWORD PTR _pchSemi$[ebp], 0
	je	SHORT $L8502

; 2013 :                *pchSemi = ';';

	mov	edx, DWORD PTR _pchSemi$[ebp]
	mov	BYTE PTR [edx], 59			; 0000003bH
$L8502:

; 2014 : 
; 2015 :             pch = pchSemi;

	mov	eax, DWORD PTR _pchSemi$[ebp]
	mov	DWORD PTR _pch$[ebp], eax

; 2016 :          }

	jmp	$L8491
$L8492:

; 2017 : 
; 2018 :          if ( pch )

	cmp	DWORD PTR _pch$[ebp], 0
	je	SHORT $L8503

; 2019 :             continue;

	jmp	$L8487
$L8503:

; 2020 : 
; 2021 :          // Find the src view attrib that has the same name as lpTgtViewAttrib
; 2022 :          lpSrcViewAttrib = lpFirstSrcViewAttrib;

	mov	ecx, DWORD PTR _lpFirstSrcViewAttrib$8480[ebp]
	mov	DWORD PTR _lpSrcViewAttrib$8482[ebp], ecx
$L8511:

; 2023 :          while ( lpSrcViewAttrib &&
; 2024 :                  zstrcmp( lpSrcViewAttrib->szName,
; 2025 :                           lpTgtViewAttrib->szName ) != 0 )

	cmp	DWORD PTR _lpSrcViewAttrib$8482[ebp], 0
	je	SHORT $L8512
	mov	edx, DWORD PTR _lpSrcViewAttrib$8482[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _lpTgtViewAttrib$8481[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	cmp	eax, edx
	jne	SHORT $L8919
	mov	eax, DWORD PTR _lpTgtViewAttrib$8481[ebp]
	add	eax, 10					; 0000000aH
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewAttrib$8482[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L8920
$L8919:
	mov	edx, DWORD PTR _lpSrcViewAttrib$8482[ebp]
	movsx	eax, BYTE PTR [edx+10]
	mov	ecx, DWORD PTR _lpTgtViewAttrib$8481[ebp]
	movsx	edx, BYTE PTR [ecx+10]
	sub	eax, edx
	xor	ecx, ecx
	test	eax, eax
	setle	cl
	dec	ecx
	and	ecx, 2
	add	ecx, -1
	mov	DWORD PTR -44+[ebp], ecx
$L8920:
	cmp	DWORD PTR -44+[ebp], 0
	je	SHORT $L8512

; 2027 :             lpSrcViewAttrib = zGETPTR( lpSrcViewAttrib->hNextOD_Attrib );

	mov	edx, DWORD PTR _lpSrcViewAttrib$8482[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewAttrib$8482[ebp], eax

; 2028 :          }

	jmp	SHORT $L8511
$L8512:

; 2029 : 
; 2030 :          // If no matching attr was found skip it.
; 2031 :          if ( lpSrcViewAttrib == 0 )

	cmp	DWORD PTR _lpSrcViewAttrib$8482[ebp], 0
	jne	SHORT $L8514

; 2032 :             continue;

	jmp	$L8487
$L8514:

; 2033 : 
; 2034 :          if ( lpSrcViewAttrib->bHidden )

	mov	ecx, DWORD PTR _lpSrcViewAttrib$8482[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	je	SHORT $L8515

; 2035 :             continue;

	jmp	$L8487
$L8515:

; 2036 : 
; 2037 :          if ( fnCompareEIAttrs( lpCurrentTask,
; 2038 :                                 0, lpTgtEntityInstance, lpTgtViewAttrib, 0,
; 2039 :                                 0, lpSrcEntityInstance,
; 2040 :                                 lpSrcViewAttrib, 0 ) != 0 )

	push	0
	mov	eax, DWORD PTR _lpSrcViewAttrib$8482[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	ecx
	push	0
	push	0
	mov	edx, DWORD PTR _lpTgtViewAttrib$8481[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnCompareEIAttrs@36
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8516

; 2042 :             return( 1 ); // Indicate unequal.

	mov	ax, 1
	jmp	$L8471
$L8516:

; 2044 : 
; 2045 :       }  // for ( lpTgtViewAttrib... )...

	jmp	$L8487
$L8488:

; 2048 :    else

	jmp	$L8523
$L8479:

; 2050 :       LPVIEWATTRIB lpCompareViewAttrib;
; 2051 : 
; 2052 :       // Compare each attribute for the entities.
; 2053 :       for ( lpCompareViewAttrib = zGETPTR( lpTgtViewEntity->hFirstOD_Attrib );
; 2054 :             lpCompareViewAttrib;
; 2055 :             lpCompareViewAttrib = zGETPTR( lpCompareViewAttrib->hNextOD_Attrib ) )

	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+179]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCompareViewAttrib$8518[ebp], eax
	jmp	SHORT $L8521
$L8522:
	mov	edx, DWORD PTR _lpCompareViewAttrib$8518[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpCompareViewAttrib$8518[ebp], eax
$L8521:
	cmp	DWORD PTR _lpCompareViewAttrib$8518[ebp], 0
	je	$L8523

; 2057 :          if ( lpCompareViewAttrib->bHidden )

	mov	ecx, DWORD PTR _lpCompareViewAttrib$8518[ebp]
	mov	edx, DWORD PTR [ecx+193]
	shr	edx, 5
	and	edx, 1
	test	edx, edx
	je	SHORT $L8524

; 2058 :             continue;

	jmp	SHORT $L8522
$L8524:

; 2059 : 
; 2060 :          pch = pchAttrList;

	mov	eax, DWORD PTR _pchAttrList$[ebp]
	mov	DWORD PTR _pch$[ebp], eax
$L8526:

; 2061 :          while ( pch )

	cmp	DWORD PTR _pch$[ebp], 0
	je	$L8527

; 2063 :             pchSemi = zstrchr( pch, ';' );

	push	59					; 0000003bH
	mov	ecx, DWORD PTR _pch$[ebp]
	push	ecx
	call	DWORD PTR __imp__strchr
	add	esp, 8
	mov	DWORD PTR _pchSemi$[ebp], eax

; 2064 :             if ( pchSemi )

	cmp	DWORD PTR _pchSemi$[ebp], 0
	je	SHORT $L8528

; 2065 :                *pchSemi = 0;

	mov	edx, DWORD PTR _pchSemi$[ebp]
	mov	BYTE PTR [edx], 0
$L8528:

; 2066 : 
; 2067 :             if ( zstrcmp( pch, lpCompareViewAttrib->szName ) == 0 )

	mov	eax, DWORD PTR _pch$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _lpCompareViewAttrib$8518[ebp]
	movsx	eax, BYTE PTR [edx+10]
	cmp	ecx, eax
	jne	SHORT $L8921
	mov	ecx, DWORD PTR _lpCompareViewAttrib$8518[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _pch$[ebp]
	push	edx
	call	_strcmp
	add	esp, 8
	mov	DWORD PTR -48+[ebp], eax
	jmp	SHORT $L8922
$L8921:
	mov	eax, DWORD PTR _pch$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _lpCompareViewAttrib$8518[ebp]
	movsx	eax, BYTE PTR [edx+10]
	sub	ecx, eax
	xor	edx, edx
	test	ecx, ecx
	setle	dl
	dec	edx
	and	edx, 2
	add	edx, -1
	mov	DWORD PTR -48+[ebp], edx
$L8922:
	cmp	DWORD PTR -48+[ebp], 0
	jne	SHORT $L8535

; 2069 :                if ( pchSemi )

	cmp	DWORD PTR _pchSemi$[ebp], 0
	je	SHORT $L8536

; 2070 :                   *pchSemi = ';';

	mov	eax, DWORD PTR _pchSemi$[ebp]
	mov	BYTE PTR [eax], 59			; 0000003bH
$L8536:

; 2071 : 
; 2072 :                break;

	jmp	SHORT $L8527
$L8535:

; 2074 : 
; 2075 :             if ( pchSemi )

	cmp	DWORD PTR _pchSemi$[ebp], 0
	je	SHORT $L8537

; 2076 :                *pchSemi = ';';

	mov	ecx, DWORD PTR _pchSemi$[ebp]
	mov	BYTE PTR [ecx], 59			; 0000003bH
$L8537:

; 2077 : 
; 2078 :             pch = pchSemi;

	mov	edx, DWORD PTR _pchSemi$[ebp]
	mov	DWORD PTR _pch$[ebp], edx

; 2079 :          }

	jmp	$L8526
$L8527:

; 2080 : 
; 2081 :          if ( pch )

	cmp	DWORD PTR _pch$[ebp], 0
	je	SHORT $L8538

; 2082 :             continue;

	jmp	$L8522
$L8538:

; 2083 : 
; 2084 :          // Compare the attributes.
; 2085 :          if ( fnCompareEIAttrs( lpCurrentTask,
; 2086 :                                 0, lpTgtEntityInstance, lpCompareViewAttrib, 0,
; 2087 :                                 0, lpSrcEntityInstance,
; 2088 :                                 lpCompareViewAttrib, 0 ) != 0 )

	push	0
	mov	eax, DWORD PTR _lpCompareViewAttrib$8518[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcEntityInstance$[ebp]
	push	ecx
	push	0
	push	0
	mov	edx, DWORD PTR _lpCompareViewAttrib$8518[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtEntityInstance$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	call	_fnCompareEIAttrs@36
	movsx	edx, ax
	test	edx, edx
	je	SHORT $L8539

; 2090 :             return( 1 ); // Indicate unequal.

	mov	ax, 1
	jmp	SHORT $L8471
$L8539:

; 2092 : 
; 2093 :       }  // while ( lpCompareViewAttrib )...

	jmp	$L8522
$L8523:

; 2096 : 
; 2097 :    return( 0 );

	xor	ax, ax
$L8471:

; 2098 : 
; 2099 : }  /* fnCompareEntitiesIgnoringAttrs */

	mov	esp, ebp
	pop	ebp
	ret	0
_fnCompareEntitiesIgnoringAttrs ENDP
_TEXT	ENDS
PUBLIC	_CompareEntitiesIgnoringAttrs@20
_TEXT	SEGMENT
_lpTgtView$ = 8
_cpcTgtEntityName$ = 12
_lpSrcView$ = 16
_cpcSrcEntityName$ = 20
_pchAttrList$ = 24
_lpCurrentTask$ = -24
_lpTgtViewEntity$ = -20
_lpTgtViewEntityCsr$ = -8
_lpSrcViewEntity$ = -16
_lpSrcViewEntityCsr$ = -12
_nRC$ = -4
_CompareEntitiesIgnoringAttrs@20 PROC NEAR

; 2126 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H

; 2127 :    LPTASK           lpCurrentTask;
; 2128 :    LPVIEWENTITY     lpTgtViewEntity;
; 2129 :    LPVIEWENTITYCSR  lpTgtViewEntityCsr;
; 2130 :    LPVIEWENTITY     lpSrcViewEntity;
; 2131 :    LPVIEWENTITYCSR  lpSrcViewEntityCsr;
; 2132 :    int              nRC;
; 2133 : 
; 2134 :    // Validate parameters
; 2135 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 2136 :                                       &lpTgtViewEntity,
; 2137 :                                       &lpTgtViewEntityCsr,
; 2138 :                                       iCompareEntityToEntity,
; 2139 :                                       lpTgtView,
; 2140 :                                       cpcTgtEntityName, 0 ) )

	push	0
	mov	eax, DWORD PTR _cpcTgtEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtView$[ebp]
	push	ecx
	push	406					; 00000196H
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
	je	SHORT $L8557

; 2142 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8550
$L8557:

; 2144 : 
; 2145 :    if ( fnValidateInstanceParameters( &lpCurrentTask,
; 2146 :                                       &lpSrcViewEntity,
; 2147 :                                       &lpSrcViewEntityCsr,
; 2148 :                                       iCompareEntityToEntity,
; 2149 :                                       lpSrcView,
; 2150 :                                       cpcSrcEntityName,
; 2151 :                                       2 ) ) // we've already sent the id

	push	2
	mov	eax, DWORD PTR _cpcSrcEntityName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	push	406					; 00000196H
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
	je	SHORT $L8558

; 2153 :    // fnOperationReturn( iCompareEntityToEntity, lpCurrentTask );
; 2154 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8550
$L8558:

; 2156 : 
; 2157 :    // Start by assuming that the entities are equal.
; 2158 :    nRC = fnCompareEntitiesIgnoringAttrs( lpTgtViewEntity,
; 2159 :                                          zGETPTR( lpTgtViewEntityCsr->hEntityInstance ),
; 2160 :                                          lpSrcViewEntity,
; 2161 :                                          zGETPTR( lpSrcViewEntityCsr->hEntityInstance ),
; 2162 :                                          pchAttrList ); // Ignore attrs in list

	mov	eax, DWORD PTR _pchAttrList$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpSrcViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtViewEntityCsr$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpTgtViewEntity$[ebp]
	push	eax
	call	_fnCompareEntitiesIgnoringAttrs
	add	esp, 20					; 00000014H
	movsx	ecx, ax
	mov	DWORD PTR _nRC$[ebp], ecx

; 2163 : 
; 2164 :    fnOperationReturn( iCompareEntityToEntity, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	406					; 00000196H
	call	_fnOperationReturn
	add	esp, 8

; 2165 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8550:

; 2166 : 
; 2167 : }  /* CompareEntitiesIgnoringAttrs */

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_CompareEntitiesIgnoringAttrs@20 ENDP
_TEXT	ENDS
PUBLIC	_fnCompareSkipEntityInstance
_TEXT	SEGMENT
_ppEntityInstance$ = 8
_lControl$ = 12
_lpOldEntityInstance$ = -4
_bSkip$8571 = -12
_lpViewEntity$8572 = -8
_nLevel$8581 = -16
_fnCompareSkipEntityInstance PROC NEAR

; 2179 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 2180 :    LPENTITYINSTANCE lpOldEntityInstance = *ppEntityInstance;

	mov	eax, DWORD PTR _ppEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _lpOldEntityInstance$[ebp], ecx
$L8569:

; 2181 : 
; 2182 :    // Skip entity instances for the following reasons:
; 2183 :    //   (1) Entity instance is hidden
; 2184 :    //   (2) User has indicated that we should ignore included instances
; 2185 :    //       and the entity instance is included.
; 2186 :    // Note that if any of the above conditions are true for a particular
; 2187 :    // entity, then we can safely skip over ALL the child entities for that
; 2188 :    // entity.  If we add a condition that doesn't allow us to skip children
; 2189 :    // (e.g. skip derived entities) then we will need another 'while' loop.
; 2190 :    while ( (*ppEntityInstance) )

	mov	edx, DWORD PTR _ppEntityInstance$[ebp]
	cmp	DWORD PTR [edx], 0
	je	$L8570

; 2192 :       zBOOL bSkip;
; 2193 :       LPVIEWENTITY lpViewEntity = zGETPTR( (*ppEntityInstance)->hViewEntity );

	mov	eax, DWORD PTR _ppEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewEntity$8572[ebp], eax

; 2194 : 
; 2195 :       // If the user only wants to compare persistant data, see if the
; 2196 :       // current entity instance has a data record.  If it doesn't, then
; 2197 :       // the entity isn't persistent.
; 2198 :       if ( lControl & zCOMPAREOI_PERSISTONLY &&
; 2199 :            lpViewEntity->hFirstDataRecord == 0 )

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 2
	test	eax, eax
	je	SHORT $L8574
	mov	ecx, DWORD PTR _lpViewEntity$8572[ebp]
	cmp	DWORD PTR [ecx+191], 0
	jne	SHORT $L8574

; 2201 :          (*ppEntityInstance) = zGETPTR( (*ppEntityInstance)->hNextHier );

	mov	edx, DWORD PTR _ppEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	edx, DWORD PTR _ppEntityInstance$[ebp]
	mov	DWORD PTR [edx], eax

; 2202 :          continue;

	jmp	SHORT $L8569
$L8574:

; 2204 : 
; 2205 :       // We use bSkip for readability's sake.  We start off by assuming that
; 2206 :       // we will not skip the current *ppEntityInstance.  We then check each
; 2207 :       // of the reasons we would skip the entity instance.  If any of them
; 2208 :       // come up TRUE, then we set bSkip to indicate that we're going to
; 2209 :       // skip the entity instance.
; 2210 : 
; 2211 :       // Assume that we're not going to skip the entity instance.
; 2212 :       bSkip = FALSE;

	mov	BYTE PTR _bSkip$8571[ebp], 0

; 2213 : 
; 2214 :       // Skip the entity instance if it's hidden.
; 2215 :       if ( (*ppEntityInstance)->u.nInd.bHidden )

	mov	eax, DWORD PTR _ppEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 10					; 0000000aH
	and	edx, 1
	test	edx, edx
	je	SHORT $L8576

; 2216 :          bSkip = TRUE;

	mov	BYTE PTR _bSkip$8571[ebp], 1
$L8576:

; 2217 : 
; 2218 :       // If we're not skipping the current entity instance, then break the
; 2219 :       // loop.
; 2220 :       if ( bSkip == FALSE )

	mov	eax, DWORD PTR _bSkip$8571[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L8577

; 2221 :          break;

	jmp	SHORT $L8570
$L8577:

; 2222 : 
; 2223 :       // Skip the current entity and all its children.
; 2224 :       if ( (*ppEntityInstance)->hNextTwin )

	mov	ecx, DWORD PTR _ppEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx]
	cmp	DWORD PTR [edx+22], 0
	je	SHORT $L8578

; 2226 :          // Current entity has a twin, so set the twin as 'current'.
; 2227 :          (*ppEntityInstance) = zGETPTR( (*ppEntityInstance)->hNextTwin );

	mov	eax, DWORD PTR _ppEntityInstance$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx+22]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	ecx, DWORD PTR _ppEntityInstance$[ebp]
	mov	DWORD PTR [ecx], eax

; 2229 :       else

	jmp	SHORT $L8586
$L8578:

; 2231 :          zSHORT nLevel;
; 2232 : 
; 2233 :          // Current entity has no twin, so look for the next entity that has
; 2234 :          // a level that is less than or equal to the 'current' entity.  This
; 2235 :          // will set (*ppEntityInstance) to the next entity in hier order
; 2236 :          // that is not a child of the 'current' entity.
; 2237 :          nLevel = (*ppEntityInstance)->nLevel;

	mov	edx, DWORD PTR _ppEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	cx, WORD PTR [eax+58]
	mov	WORD PTR _nLevel$8581[ebp], cx
$L8582:

; 2240 :             (*ppEntityInstance) = zGETPTR( (*ppEntityInstance)->hNextHier );

	mov	edx, DWORD PTR _ppEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	edx, DWORD PTR _ppEntityInstance$[ebp]
	mov	DWORD PTR [edx], eax

; 2242 :                    (*ppEntityInstance)->nLevel > nLevel );

	mov	eax, DWORD PTR _ppEntityInstance$[ebp]
	cmp	DWORD PTR [eax], 0
	je	SHORT $L8586
	mov	ecx, DWORD PTR _ppEntityInstance$[ebp]
	mov	edx, DWORD PTR [ecx]
	movsx	eax, WORD PTR [edx+58]
	movsx	ecx, WORD PTR _nLevel$8581[ebp]
	cmp	eax, ecx
	jg	SHORT $L8582
$L8586:

; 2244 : 
; 2245 :    } // while...

	jmp	$L8569
$L8570:

; 2246 : 
; 2247 :    return( *ppEntityInstance == lpOldEntityInstance );

	mov	edx, DWORD PTR _ppEntityInstance$[ebp]
	mov	eax, DWORD PTR [edx]
	xor	ecx, ecx
	cmp	eax, DWORD PTR _lpOldEntityInstance$[ebp]
	sete	cl
	mov	al, cl

; 2248 : 
; 2249 : } // fnCompareSkipEntityInstance

	mov	esp, ebp
	pop	ebp
	ret	0
_fnCompareSkipEntityInstance ENDP
_TEXT	ENDS
PUBLIC	_fnCompareOI_ToOI
PUBLIC	??_C@_0DA@FNCN@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Entity?5Str@ ; `string'
PUBLIC	??_C@_0CP@DLAG@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Entity?5Ins@ ; `string'
PUBLIC	??_C@_06PADD@?5Empty?$AA@			; `string'
;	COMDAT ??_C@_0DA@FNCN@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Entity?5Str@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0DA@FNCN@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Entity?5Str@ DB '(tr) Comp'
	DB	'areOI_ToOI - Entity Structure mismatch', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CP@DLAG@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Entity?5Ins@
_DATA	SEGMENT
??_C@_0CP@DLAG@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Entity?5Ins@ DB '(tr) Comp'
	DB	'areOI_ToOI - Entity Instance mismatch', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_06PADD@?5Empty?$AA@
_DATA	SEGMENT
??_C@_06PADD@?5Empty?$AA@ DB ' Empty', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTgtView$ = 8
_lpSrcView$ = 12
_lControl$ = 16
_nRC$ = -20
_lpViewCsr$ = -4
_lpSrcViewOI$ = -32
_lpTgtViewOI$ = -16
_lpSrcInstance$ = -24
_lpTgtInstance$ = -12
_bComparePersistOnly$ = -8
_bCompareKeysOnly$ = -28
_lpTgtEntity$8614 = -40
_lpSrcEntity$8615 = -36
_fnCompareOI_ToOI PROC NEAR

; 2291 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H

; 2292 :    zSHORT            nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 2293 :    LPVIEWCSR         lpViewCsr;
; 2294 :    LPVIEWOI          lpSrcViewOI;
; 2295 :    LPVIEWOI          lpTgtViewOI;
; 2296 :    LPENTITYINSTANCE  lpSrcInstance;
; 2297 :    LPENTITYINSTANCE  lpTgtInstance;
; 2298 :    zBOOL             bComparePersistOnly;
; 2299 :    zBOOL             bCompareKeysOnly;
; 2300 : 
; 2301 :    bComparePersistOnly = (zBOOL) (lControl & zCOMPAREOI_PERSISTONLY);

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 2
	mov	BYTE PTR _bComparePersistOnly$[ebp], al

; 2302 : 
; 2303 :    lpViewCsr   = zGETPTR( lpSrcView->hViewCsr );

	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2304 :    lpSrcViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	eax, DWORD PTR _lpViewCsr$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewOI$[ebp], eax

; 2305 :    lpViewCsr   = zGETPTR( lpTgtView->hViewCsr );

	mov	edx, DWORD PTR _lpTgtView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpViewCsr$[ebp], eax

; 2306 :    lpTgtViewOI = zGETPTR( lpViewCsr->hViewOI );

	mov	ecx, DWORD PTR _lpViewCsr$[ebp]
	mov	edx, DWORD PTR [ecx+10]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewOI$[ebp], eax

; 2307 : 
; 2308 :    for ( lpSrcInstance = zGETPTR( lpSrcViewOI->hRootEntityInstance ),
; 2309 :          lpTgtInstance = zGETPTR( lpTgtViewOI->hRootEntityInstance );
; 2310 :          lpSrcInstance && lpTgtInstance;
; 2311 :          lpSrcInstance = zGETPTR( lpSrcInstance->hNextHier ),
; 2312 :          lpTgtInstance = zGETPTR( lpTgtInstance->hNextHier ) )

	mov	eax, DWORD PTR _lpSrcViewOI$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$[ebp], eax
	mov	edx, DWORD PTR _lpTgtViewOI$[ebp]
	mov	eax, DWORD PTR [edx+26]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtInstance$[ebp], eax
	jmp	SHORT $L8611
$L8612:
	mov	ecx, DWORD PTR _lpSrcInstance$[ebp]
	mov	edx, DWORD PTR [ecx+14]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcInstance$[ebp], eax
	mov	eax, DWORD PTR _lpTgtInstance$[ebp]
	mov	ecx, DWORD PTR [eax+14]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtInstance$[ebp], eax
$L8611:
	cmp	DWORD PTR _lpSrcInstance$[ebp], 0
	je	$L8613
	cmp	DWORD PTR _lpTgtInstance$[ebp], 0
	je	$L8613

; 2314 :       LPVIEWENTITY lpTgtEntity;
; 2315 :       LPVIEWENTITY lpSrcEntity;
; 2316 : 
; 2317 :       // Root out undesired entities (e.g. hidden entities).
; 2318 :       if ( fnCompareSkipEntityInstance( &lpSrcInstance, lControl ) )

	mov	edx, DWORD PTR _lControl$[ebp]
	push	edx
	lea	eax, DWORD PTR _lpSrcInstance$[ebp]
	push	eax
	call	_fnCompareSkipEntityInstance
	add	esp, 8
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8617

; 2319 :          if ( lpSrcInstance == 0 )

	cmp	DWORD PTR _lpSrcInstance$[ebp], 0
	jne	SHORT $L8617

; 2320 :             break;

	jmp	$L8613
$L8617:

; 2321 : 
; 2322 :       if ( fnCompareSkipEntityInstance( &lpTgtInstance, lControl ) )

	mov	ecx, DWORD PTR _lControl$[ebp]
	push	ecx
	lea	edx, DWORD PTR _lpTgtInstance$[ebp]
	push	edx
	call	_fnCompareSkipEntityInstance
	add	esp, 8
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L8619

; 2323 :          if ( lpTgtInstance == 0 )

	cmp	DWORD PTR _lpTgtInstance$[ebp], 0
	jne	SHORT $L8619

; 2324 :             break;

	jmp	$L8613
$L8619:

; 2325 : 
; 2326 :       lpTgtEntity = zGETPTR( lpTgtInstance->hViewEntity );

	mov	eax, DWORD PTR _lpTgtInstance$[ebp]
	mov	ecx, DWORD PTR [eax+2]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtEntity$8614[ebp], eax

; 2327 :       lpSrcEntity = zGETPTR( lpSrcInstance->hViewEntity );

	mov	edx, DWORD PTR _lpSrcInstance$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcEntity$8615[ebp], eax

; 2328 : 
; 2329 :       // If entity types are different or if the level of the instances don't
; 2330 :       // match (possible with recursive entities) then return with mismatch.
; 2331 :       if ( lpSrcEntity != lpTgtEntity ||
; 2332 :            lpSrcInstance->nLevel != lpTgtInstance->nLevel )

	mov	ecx, DWORD PTR _lpSrcEntity$8615[ebp]
	cmp	ecx, DWORD PTR _lpTgtEntity$8614[ebp]
	jne	SHORT $L8623
	mov	edx, DWORD PTR _lpSrcInstance$[ebp]
	movsx	eax, WORD PTR [edx+58]
	mov	ecx, DWORD PTR _lpTgtInstance$[ebp]
	movsx	edx, WORD PTR [ecx+58]
	cmp	eax, edx
	je	SHORT $L8622
$L8623:

; 2334 :          TraceLineS( "(tr) CompareOI_ToOI - Entity Structure mismatch", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DA@FNCN@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Entity?5Str@ ; `string'
	call	_TraceLineS@8

; 2335 :          return( 2 );

	mov	ax, 2
	jmp	$L8593
$L8622:

; 2337 : 
; 2338 :       // Assume we're going to compare all attributes.
; 2339 :       bCompareKeysOnly = FALSE;

	mov	BYTE PTR _bCompareKeysOnly$[ebp], 0

; 2340 : 
; 2341 :       // If the control flag indicates we are to ignore non-keys in
; 2342 :       // include-only entities, check for include/create.
; 2343 :       if ( lControl & zCOMPAREOI_IGNOREINC )

	mov	eax, DWORD PTR _lControl$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L8626

; 2345 :          if ( lpTgtEntity->bCreate == FALSE && lpTgtEntity->bUpdate == FALSE )

	mov	ecx, DWORD PTR _lpTgtEntity$8614[ebp]
	mov	edx, DWORD PTR [ecx+235]
	and	edx, 1
	test	edx, edx
	jne	SHORT $L8626
	mov	eax, DWORD PTR _lpTgtEntity$8614[ebp]
	mov	ecx, DWORD PTR [eax+235]
	shr	ecx, 2
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L8626

; 2347 :             if ( lpTgtEntity->bInclude == FALSE )

	mov	edx, DWORD PTR _lpTgtEntity$8614[ebp]
	mov	eax, DWORD PTR [edx+235]
	shr	eax, 3
	and	eax, 1
	test	eax, eax
	jne	SHORT $L8627

; 2349 :                // User can't change entity at all so it's just displayable.
; 2350 :                // Ignore this entity instance.
; 2351 :                continue;

	jmp	$L8612
$L8627:

; 2353 : 
; 2354 :             // Entity is only includable so only compare the keys.
; 2355 :             bCompareKeysOnly = TRUE;

	mov	BYTE PTR _bCompareKeysOnly$[ebp], 1
$L8626:

; 2358 : 
; 2359 :       if ( fnCompareEntityToEntity( zGETPTR( lpTgtInstance->hViewEntity ),
; 2360 :                                     lpTgtInstance,
; 2361 :                                     zGETPTR( lpSrcInstance->hViewEntity ),
; 2362 :                                     lpSrcInstance, bComparePersistOnly,
; 2363 :                                     bCompareKeysOnly ) == 1 )

	mov	cl, BYTE PTR _bCompareKeysOnly$[ebp]
	push	ecx
	mov	dl, BYTE PTR _bComparePersistOnly$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpSrcInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpSrcInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	mov	eax, DWORD PTR _lpTgtInstance$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpTgtInstance$[ebp]
	mov	edx, DWORD PTR [ecx+2]
	push	edx
	call	DWORD PTR _g_pfnGetPtr
	push	eax
	call	_fnCompareEntityToEntity
	add	esp, 24					; 00000018H
	movsx	eax, ax
	cmp	eax, 1
	jne	SHORT $L8630

; 2365 :          TraceLineS( "(tr) CompareOI_ToOI - Entity Instance mismatch", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CP@DLAG@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Entity?5Ins@ ; `string'
	call	_TraceLineS@8

; 2366 :          if ( lControl & zCOMPAREOI_RETURN )

	mov	ecx, DWORD PTR _lControl$[ebp]
	and	ecx, 2
	test	ecx, ecx
	je	SHORT $L8632

; 2367 :             return( 1 );

	mov	ax, 1
	jmp	SHORT $L8593
$L8632:

; 2368 : 
; 2369 :          nRC = 1;

	mov	WORD PTR _nRC$[ebp], 1
$L8630:

; 2371 : 
; 2372 :    } // for ( ... )...

	jmp	$L8612
$L8613:

; 2373 : 
; 2374 :    // If either of the two entity instances are not null, then the OIs don't
; 2375 :    // match because at least one of the entity instances is null.
; 2376 :    if ( lpSrcInstance || lpTgtInstance )

	cmp	DWORD PTR _lpSrcInstance$[ebp], 0
	jne	SHORT $L8634
	cmp	DWORD PTR _lpTgtInstance$[ebp], 0
	je	SHORT $L8633
$L8634:

; 2378 :       TraceLineS( "(tr) CompareOI_ToOI - Entity Structure mismatch", " Empty" );

	push	OFFSET FLAT:??_C@_06PADD@?5Empty?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0DA@FNCN@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Entity?5Str@ ; `string'
	call	_TraceLineS@8

; 2379 :       nRC = 2;

	mov	WORD PTR _nRC$[ebp], 2
$L8633:

; 2381 : 
; 2382 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8593:

; 2383 : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fnCompareOI_ToOI ENDP
_TEXT	ENDS
PUBLIC	??_C@_0CG@EHFN@CompareOI_ToOI?5?9?5Object?5type?5mis@ ; `string'
PUBLIC	??_C@_0DE@HGD@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Src?5and?5Tg@ ; `string'
PUBLIC	_CompareOI_ToOI@8
EXTRN	_fnValidViewCsr:NEAR
;	COMDAT ??_C@_0CG@EHFN@CompareOI_ToOI?5?9?5Object?5type?5mis@
; File C:\10C\A\oe\KZOETRAA.C
_DATA	SEGMENT
??_C@_0CG@EHFN@CompareOI_ToOI?5?9?5Object?5type?5mis@ DB 'CompareOI_ToOI '
	DB	'- Object type mismatch', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DE@HGD@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Src?5and?5Tg@
_DATA	SEGMENT
??_C@_0DE@HGD@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Src?5and?5Tg@ DB '(tr) Comp'
	DB	'areOI_ToOI - Src and Tgt are same instance', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpTgtView$ = 8
_lpSrcView$ = 12
_lpCurrentTask$ = -16
_lpSrcViewCsr$ = -8
_lpTgtViewCsr$ = -4
_nRC$ = -12
_CompareOI_ToOI@8 PROC NEAR

; 2406 : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 2407 :    LPTASK            lpCurrentTask;
; 2408 :    LPVIEWCSR         lpSrcViewCsr;
; 2409 :    LPVIEWCSR         lpTgtViewCsr;
; 2410 :    zSHORT            nRC;
; 2411 : 
; 2412 :    // If task not active or disabled, or view csr invalid, return zCALL_ERROR.
; 2413 :    if ( (lpCurrentTask = fnOperationCall( iCompareOI_ToOI, lpTgtView,
; 2414 :                                           zVALID_VIEW_CSR )) == 0 )

	push	13					; 0000000dH
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	push	407					; 00000197H
	call	_fnOperationCall
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _lpCurrentTask$[ebp], eax
	cmp	DWORD PTR _lpCurrentTask$[ebp], 0
	jne	SHORT $L8645

; 2416 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8640
$L8645:

; 2418 : 
; 2419 :    if ( fnValidViewCsr( lpCurrentTask, lpSrcView ) == 0 )

	mov	ecx, DWORD PTR _lpSrcView$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	call	_fnValidViewCsr
	add	esp, 8
	movsx	eax, ax
	test	eax, eax
	jne	SHORT $L8646

; 2421 :       fnOperationReturn( iCompareOI_ToOI, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	407					; 00000197H
	call	_fnOperationReturn
	add	esp, 8

; 2422 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L8640
$L8646:

; 2424 : 
; 2425 :    if ( lpSrcView->hViewOD != lpTgtView->hViewOD )

	mov	edx, DWORD PTR _lpSrcView$[ebp]
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	mov	ecx, DWORD PTR [edx+6]
	cmp	ecx, DWORD PTR [eax+6]
	je	SHORT $L8647

; 2427 :       TraceLineS( "CompareOI_ToOI - Object type mismatch", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0CG@EHFN@CompareOI_ToOI?5?9?5Object?5type?5mis@ ; `string'
	call	_TraceLineS@8

; 2428 :       fnOperationReturn( iCompareOI_ToOI, lpCurrentTask );

	mov	edx, DWORD PTR _lpCurrentTask$[ebp]
	push	edx
	push	407					; 00000197H
	call	_fnOperationReturn
	add	esp, 8

; 2429 :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	SHORT $L8640
$L8647:

; 2431 : 
; 2432 :    lpSrcViewCsr = zGETPTR( lpSrcView->hViewCsr );

	mov	eax, DWORD PTR _lpSrcView$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpSrcViewCsr$[ebp], eax

; 2433 :    lpTgtViewCsr = zGETPTR( lpTgtView->hViewCsr );

	mov	edx, DWORD PTR _lpTgtView$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	call	DWORD PTR _g_pfnGetPtr
	mov	DWORD PTR _lpTgtViewCsr$[ebp], eax

; 2434 : 
; 2435 :    if ( lpSrcViewCsr->hViewOI == lpTgtViewCsr->hViewOI )

	mov	ecx, DWORD PTR _lpSrcViewCsr$[ebp]
	mov	edx, DWORD PTR _lpTgtViewCsr$[ebp]
	mov	eax, DWORD PTR [ecx+10]
	cmp	eax, DWORD PTR [edx+10]
	jne	SHORT $L8651

; 2437 :       TraceLineS( "(tr) CompareOI_ToOI - Src and Tgt are same instance", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DE@HGD@?$CItr?$CJ?5CompareOI_ToOI?5?9?5Src?5and?5Tg@ ; `string'
	call	_TraceLineS@8

; 2438 :       fnOperationReturn( iCompareOI_ToOI, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	407					; 00000197H
	call	_fnOperationReturn
	add	esp, 8

; 2439 :       return( 0 );

	xor	ax, ax
	jmp	SHORT $L8640
$L8651:

; 2441 : 
; 2442 :    nRC = fnCompareOI_ToOI( lpTgtView, lpSrcView, 0 );

	push	0
	mov	edx, DWORD PTR _lpSrcView$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpTgtView$[ebp]
	push	eax
	call	_fnCompareOI_ToOI
	add	esp, 12					; 0000000cH
	mov	WORD PTR _nRC$[ebp], ax

; 2443 : 
; 2444 :    fnOperationReturn( iCompareOI_ToOI, lpCurrentTask );

	mov	ecx, DWORD PTR _lpCurrentTask$[ebp]
	push	ecx
	push	407					; 00000197H
	call	_fnOperationReturn
	add	esp, 8

; 2445 :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]
$L8640:

; 2446 : }

	mov	esp, ebp
	pop	ebp
	ret	8
_CompareOI_ToOI@8 ENDP
_TEXT	ENDS
PUBLIC	_GetTracingFlags@0
EXTRN	_AnchorBlock:DWORD
_TEXT	SEGMENT
_GetTracingFlags@0 PROC NEAR

; 2465 : {

	push	ebp
	mov	ebp, esp

; 2466 :    if ( AnchorBlock )

	cmp	DWORD PTR _AnchorBlock, 0
	je	SHORT $L8655

; 2467 :       return( &AnchorBlock->TraceFlags );

	mov	eax, DWORD PTR _AnchorBlock
	add	eax, 2527				; 000009dfH
	jmp	SHORT $L8656
$L8655:

; 2468 :    else
; 2469 :       return( 0 );

	xor	eax, eax
$L8656:

; 2470 : }

	pop	ebp
	ret	0
_GetTracingFlags@0 ENDP
_TEXT	ENDS
END
