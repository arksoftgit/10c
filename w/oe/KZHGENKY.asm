	TITLE	C:\10C\a\oe\KZHGENKY.C
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
;	COMDAT ??_C@_0DD@EOHK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DF@MBMJ@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5?5Genkey?5Creat@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NCKJ@KZHGENKY?5Version?51?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@KGHJ@Zeidon?5GKH?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08BFCG@GENKEYWO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09POBG@_GENKEYWO?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06JEOF@Genkey?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09JMBN@TableName?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BC@ICCK@ZeidonGenkeyTable?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0O@FAPB@CurrentGenkey?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@KMCA@EntityCount?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DD@GONE@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5End?5of?5Genkey?5Crea@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08OHJM@EntityID?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CD@DAMP@lpViewEntity?5not?5found?5in?5KZGKHW@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_InitializeGenkeyObject
PUBLIC	_GetNextGenkey
PUBLIC	_GKH_MsgProc@20
_TEXT	SEGMENT
_Message$ = 8
_lpView$ = 12
_lpViewOD$ = 16
_lpViewEntity$ = 20
_lpKZGKHWOB$ = 24
_nRC$ = -4
_GKH_MsgProc@20 PROC NEAR

; 58   : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 59   :    zSHORT nRC;
; 60   : 
; 61   :    // Execute a function according to the message passed.
; 62   :    if ( Message == (Message | DBH_Init) )

	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _Message$[ebp]
	and	ecx, 65535				; 0000ffffH
	or	ch, 16					; 00000010H
	cmp	eax, ecx
	jne	SHORT $L5164

; 64   :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 66   :    else

	jmp	$L5175
$L5164:

; 67   :    if ( Message == (Message | DBH_StartGenkey) )

	mov	edx, DWORD PTR _Message$[ebp]
	and	edx, 65535				; 0000ffffH
	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	or	al, 64					; 00000040H
	cmp	edx, eax
	jne	SHORT $L5166

; 69   :       nRC = InitializeGenkeyObject( lpView, lpViewOD, lpKZGKHWOB );

	mov	ecx, DWORD PTR _lpKZGKHWOB$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewOD$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpView$[ebp]
	push	eax
	call	_InitializeGenkeyObject
	add	esp, 12					; 0000000cH
	mov	WORD PTR _nRC$[ebp], ax

; 70   :       if ( nRC == -1 )

	movsx	ecx, WORD PTR _nRC$[ebp]
	cmp	ecx, -1
	jne	SHORT $L5167

; 71   :          nRC = zCALL_ERROR;

	mov	WORD PTR _nRC$[ebp], -16		; fffffff0H
$L5167:

; 73   :    else

	jmp	$L5175
$L5166:

; 74   :    if ( Message == (Message | DBH_Rollback) )

	mov	edx, DWORD PTR _Message$[ebp]
	and	edx, 65535				; 0000ffffH
	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	or	al, 4
	cmp	edx, eax
	jne	SHORT $L5169

; 76   :       // We don't need to do anything here--the object was committed in
; 77   :       // DBH_StartGenkey.
; 78   :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 80   :    else

	jmp	SHORT $L5175
$L5169:

; 81   :    if ( Message == (Message | DBH_Commit) )

	mov	ecx, DWORD PTR _Message$[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _Message$[ebp]
	and	edx, 65535				; 0000ffffH
	or	edx, 2
	cmp	ecx, edx
	jne	SHORT $L5171

; 83   :       // We don't need to do anything here--the object was committed in
; 84   :       // DBH_StartGenkey.
; 85   :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0

; 87   :    else

	jmp	SHORT $L5175
$L5171:

; 88   :    if ( Message == (Message | DBH_GetGenkey) )

	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _Message$[ebp]
	and	ecx, 65535				; 0000ffffH
	or	cl, -128				; ffffff80H
	cmp	eax, ecx
	jne	SHORT $L5173

; 90   :       nRC = GetNextGenkey( lpView, lpViewEntity, lpKZGKHWOB );

	mov	edx, DWORD PTR _lpKZGKHWOB$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_GetNextGenkey
	add	esp, 12					; 0000000cH
	mov	WORD PTR _nRC$[ebp], ax

; 92   :    else

	jmp	SHORT $L5175
$L5173:

; 93   :    if ( Message == (Message | DBH_Term) )

	mov	edx, DWORD PTR _Message$[ebp]
	and	edx, 65535				; 0000ffffH
	mov	eax, DWORD PTR _Message$[ebp]
	and	eax, 65535				; 0000ffffH
	or	ah, 32					; 00000020H
	cmp	edx, eax
	jne	SHORT $L5175

; 95   :       nRC = 0;

	mov	WORD PTR _nRC$[ebp], 0
$L5175:

; 97   : 
; 98   :    return( nRC );

	mov	ax, WORD PTR _nRC$[ebp]

; 99   : } // KZHGENKY_GKH_MsgProc

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_GKH_MsgProc@20 ENDP
_TEXT	ENDS
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_0DD@EOHK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ ; `string'
PUBLIC	??_C@_0DF@MBMJ@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5?5Genkey?5Creat@ ; `string'
PUBLIC	??_C@_0BE@NCKJ@KZHGENKY?5Version?51?4?$AA@	; `string'
PUBLIC	??_C@_0L@KGHJ@Zeidon?5GKH?$AA@			; `string'
PUBLIC	??_C@_08BFCG@GENKEYWO?$AA@			; `string'
PUBLIC	??_C@_09POBG@_GENKEYWO?$AA@			; `string'
PUBLIC	??_C@_06JEOF@Genkey?$AA@			; `string'
PUBLIC	??_C@_09JMBN@TableName?$AA@			; `string'
PUBLIC	??_C@_0BC@ICCK@ZeidonGenkeyTable?$AA@		; `string'
PUBLIC	??_C@_0O@FAPB@CurrentGenkey?$AA@		; `string'
PUBLIC	??_C@_0M@KMCA@EntityCount?$AA@			; `string'
PUBLIC	??_C@_0DD@GONE@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5End?5of?5Genkey?5Crea@ ; `string'
EXTRN	_SetAttributeFromInteger@16:NEAR
EXTRN	_AddToAttributeFromInteger@16:NEAR
EXTRN	_SysMutexLock@16:NEAR
EXTRN	_SetAttributeFromAttribute@24:NEAR
EXTRN	_SysMutexUnlock@12:NEAR
EXTRN	_TraceLineI@8:NEAR
EXTRN	_TraceLineS@8:NEAR
EXTRN	_ActivateObjectInstance@20:NEAR
EXTRN	_CommitMultipleOIs@16:NEAR
EXTRN	_GetAddrForAttribute@16:NEAR
EXTRN	_SetNameForView@16:NEAR
EXTRN	_DropView@4:NEAR
EXTRN	_CreateEntity@12:NEAR
EXTRN	_GetTaskDBHandlerTraceLevel@4:NEAR
EXTRN	_SetCursorNextEntity@12:NEAR
EXTRN	_SetCursorFirstEntity@12:NEAR
EXTRN	_SetCursorFirstEntityByString@20:NEAR
EXTRN	_SetAttributeFromString@16:NEAR
EXTRN	_GetIntegerFromAttribute@16:NEAR
;	COMDAT ??_C@_00A@?$AA@
; File C:\10C\a\oe\KZHGENKY.C
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
;	COMDAT ??_C@_0DD@EOHK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@
_DATA	SEGMENT
??_C@_0DD@EOHK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ DB '='
	DB	'=================================================', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DF@MBMJ@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5?5Genkey?5Creat@
_DATA	SEGMENT
??_C@_0DF@MBMJ@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5?5Genkey?5Creat@ DB '='
	DB	'=================  Genkey Creation   ==============', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BE@NCKJ@KZHGENKY?5Version?51?4?$AA@
_DATA	SEGMENT
??_C@_0BE@NCKJ@KZHGENKY?5Version?51?4?$AA@ DB 'KZHGENKY Version 1.', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@KGHJ@Zeidon?5GKH?$AA@
_DATA	SEGMENT
??_C@_0L@KGHJ@Zeidon?5GKH?$AA@ DB 'Zeidon GKH', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08BFCG@GENKEYWO?$AA@
_DATA	SEGMENT
??_C@_08BFCG@GENKEYWO?$AA@ DB 'GENKEYWO', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_09POBG@_GENKEYWO?$AA@
_DATA	SEGMENT
??_C@_09POBG@_GENKEYWO?$AA@ DB '_GENKEYWO', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_06JEOF@Genkey?$AA@
_DATA	SEGMENT
??_C@_06JEOF@Genkey?$AA@ DB 'Genkey', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_09JMBN@TableName?$AA@
_DATA	SEGMENT
??_C@_09JMBN@TableName?$AA@ DB 'TableName', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BC@ICCK@ZeidonGenkeyTable?$AA@
_DATA	SEGMENT
??_C@_0BC@ICCK@ZeidonGenkeyTable?$AA@ DB 'ZeidonGenkeyTable', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0O@FAPB@CurrentGenkey?$AA@
_DATA	SEGMENT
??_C@_0O@FAPB@CurrentGenkey?$AA@ DB 'CurrentGenkey', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0M@KMCA@EntityCount?$AA@
_DATA	SEGMENT
??_C@_0M@KMCA@EntityCount?$AA@ DB 'EntityCount', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0DD@GONE@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5End?5of?5Genkey?5Crea@
_DATA	SEGMENT
??_C@_0DD@GONE@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5End?5of?5Genkey?5Crea@ DB '='
	DB	'============ End of Genkey Creation =============', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
_vSubtask$ = 8
_lpKZGKHWOB$ = 16
_szTableName$ = -24
_lpGENKEYWO$ = -16
_lLong$ = -12
_nTraceLevel$ = -8
_nReturnCode$ = -20
_nRC$ = -4
_Cluster$5209 = -32
_InitializeGenkeyObject PROC NEAR

; 116  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H

; 117  :    zPCHAR   szTableName;
; 118  :    zVIEW    lpGENKEYWO;
; 119  :    zLONG    lLong;
; 120  :    zSHORT   nTraceLevel;
; 121  :    zSHORT   nReturnCode;
; 122  :    zSHORT   nRC;
; 123  : 
; 124  :    nReturnCode = 0;

	mov	WORD PTR _nReturnCode$[ebp], 0

; 125  :    nTraceLevel = GetTaskDBHandlerTraceLevel( vSubtask );

	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	call	_GetTaskDBHandlerTraceLevel@4
	mov	WORD PTR _nTraceLevel$[ebp], ax

; 126  :    if ( nTraceLevel > 0 )

	movsx	ecx, WORD PTR _nTraceLevel$[ebp]
	test	ecx, ecx
	jle	SHORT $L5189

; 128  :       TraceLineS( "==================================================", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DD@EOHK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ ; `string'
	call	_TraceLineS@8

; 129  :       TraceLineS( "==================  Genkey Creation   ==============", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DF@MBMJ@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5?5Genkey?5Creat@ ; `string'
	call	_TraceLineS@8

; 130  :       TraceLineS( "==================================================", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DD@EOHK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@ ; `string'
	call	_TraceLineS@8

; 131  :       TraceLineI( "KZHGENKY Version 1.", (zLONG) KZHGENKY_Version );

	push	26					; 0000001aH
	push	OFFSET FLAT:??_C@_0BE@NCKJ@KZHGENKY?5Version?51?4?$AA@ ; `string'
	call	_TraceLineI@8
$L5189:

; 133  : 
; 134  : #ifdef DATABASE_LOCK
; 135  : 
; 136  :    nRC = ActivateEmptyObjectInstance( &lpGENKEYWO, "GENKEYWO", vSubtask,
; 137  :                                       zMULTIPLE );
; 138  :    if ( nRC )
; 139  :    {
; 140  :       IssueError( vSubtask, 16, 16, "Error activating GENKEYWO object." );
; 141  :       if ( nTraceLevel > 0 )
; 142  :       {
; 143  :          TraceLineS( "", "" );
; 144  :          TraceLineS( "============= End of Genkey Creation =============", "" );
; 145  :          TraceLineS( "", "" );
; 146  :       }
; 147  : 
; 148  :       return( zCALL_ERROR );
; 149  :    }
; 150  : 
; 151  :    SetNameForView( lpGENKEYWO, "_GENKEYWO", 0, zLEVEL_TASK );
; 152  : 
; 153  :    // Create enqueue entity.
; 154  :    nRC = CreateEntity( lpGENKEYWO, "ZeidonGenkeyTable", zPOS_FIRST );
; 155  :    if ( nRC )
; 156  :    {
; 157  :       DropView( lpGENKEYWO );
; 158  :       return( zCALL_ERROR );
; 159  :    }
; 160  : 
; 161  :    nRC = SetAttributeFromString( lpGENKEYWO, "ZeidonGenkeyTable", "TableName",
; 162  :                                  "..ENQ KZHGENKY" );
; 163  :    if ( nRC )
; 164  :    {
; 165  :       DropView( lpGENKEYWO );
; 166  :       return( zCALL_ERROR );
; 167  :    }
; 168  : 
; 169  :    nRC = SetAttributeFromInteger( lpGENKEYWO, "ZeidonGenkeyTable",
; 170  :                                   "CurrentGenkey", 999 );
; 171  :    if ( nRC )
; 172  :    {
; 173  :       DropView( lpGENKEYWO );
; 174  :       return( zCALL_ERROR );
; 175  :    }
; 176  : 
; 177  :    // Try to commit the OI with the locking entity.  If it succeeds, then
; 178  :    // nobody else is currently using the GenKey database object.  The
; 179  :    // creation of the entity keeps other processes from using the GenKey
; 180  :    // object until we are done with it.  If the Commit fails, then someone
; 181  :    // else is currently using the GenKey datbase object.
; 182  : #if 0
; 183  :    nRC = CommitMultipleOIs( &lpGENKEYWO, 1, 0, zCOMMIT_FORCETRAN );
; 184  : #else
; 185  :    nRC = CommitObjectInstance( lpGENKEYWO );
; 186  : #endif
; 187  :    // Whether the commit succeeded or not, we don't need the OI anymore.
; 188  :    DropView( lpGENKEYWO );
; 189  :    if ( nRC )
; 190  :    {
; 191  :       IssueError( vSubtask, 16, 16,
; 192  :          "Error writing ENQ entity - Check ZeidonGenkeyTable" );
; 193  : 
; 194  :       if ( nTraceLevel > 0 )
; 195  :       {
; 196  :          TraceLineS( "", "" );
; 197  :          TraceLineS( "============= End of Genkey Creation =============", "" );
; 198  :          TraceLineS( "", "" );
; 199  :       }
; 200  : 
; 201  :       return( zCALL_ERROR );
; 202  :    }
; 203  : 
; 204  : #else  // DATABASE_LOCK
; 205  : 
; 206  :    // Lock a mutex.
; 207  :    SysMutexLock( vSubtask, "Zeidon GKH", 0, 0 );

	push	0
	push	0
	push	OFFSET FLAT:??_C@_0L@KGHJ@Zeidon?5GKH?$AA@ ; `string'
	mov	edx, DWORD PTR _vSubtask$[ebp]
	push	edx
	call	_SysMutexLock@16

; 208  : 
; 209  : #endif // DATABASE_LOCK else...
; 210  : 
; 211  :    // Now retrieve all GenKey objects from the database.
; 212  :    nRC = ActivateObjectInstance( &lpGENKEYWO, "GENKEYWO", vSubtask, 0,
; 213  :                                  zMULTIPLE );

	push	256					; 00000100H
	push	0
	mov	eax, DWORD PTR _vSubtask$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_08BFCG@GENKEYWO?$AA@	; `string'
	lea	ecx, DWORD PTR _lpGENKEYWO$[ebp]
	push	ecx
	call	_ActivateObjectInstance@20
	mov	WORD PTR _nRC$[ebp], ax

; 214  :    SetNameForView( lpGENKEYWO, "_GENKEYWO", 0, zLEVEL_TASK );

	push	2
	push	0
	push	OFFSET FLAT:??_C@_09POBG@_GENKEYWO?$AA@	; `string'
	mov	edx, DWORD PTR _lpGENKEYWO$[ebp]
	push	edx
	call	_SetNameForView@16

; 215  : 
; 216  : #if 0
; 217  :    // A hack...Loop through all the entities and delete any trailing spaces
; 218  :    // from the entity names.  Note that because we get a pointer to the
; 219  :    // entity name and then use that to change the string the entity does not
; 220  :    // get flagged as updated.
; 221  :    for ( nRC = SetCursorFirstEntity( lpGENKEYWO, "ZeidonGenkeyTable", 0 );
; 222  :          nRC == zCURSOR_SET;
; 223  :          nRC = SetCursorNextEntity( lpGENKEYWO, "ZeidonGenkeyTable", 0 ) )
; 224  :    {
; 225  :       zSHORT k;
; 226  : 
; 227  :       GetAddrForAttribute( &szTableName, lpGENKEYWO, "ZeidonGenkeyTable",
; 228  :                            "TableName" );
; 229  :       k = zstrlen( szTableName ) - 1;
; 230  :       while ( szTableName[ k ] == ' ' )
; 231  :          szTableName[ k-- ] = 0;
; 232  :    }
; 233  : #endif
; 234  : 
; 235  :    // Now loop through the OI containing the names of entities that need
; 236  :    // genkeys.  For each one, find the entity in the GenKey list that has
; 237  :    // the same name and get the current GenKey value.
; 238  :    for ( nRC = SetCursorFirstEntity( lpKZGKHWOB, "Genkey", 0 );
; 239  :          nRC >= zCURSOR_SET;
; 240  :          nRC = SetCursorNextEntity( lpKZGKHWOB, "Genkey", 0 ) )

	push	0
	push	OFFSET FLAT:??_C@_06JEOF@Genkey?$AA@	; `string'
	mov	eax, DWORD PTR _lpKZGKHWOB$[ebp]
	push	eax
	call	_SetCursorFirstEntity@12
	mov	WORD PTR _nRC$[ebp], ax
	jmp	SHORT $L5198
$L5199:
	push	0
	push	OFFSET FLAT:??_C@_06JEOF@Genkey?$AA@	; `string'
	mov	ecx, DWORD PTR _lpKZGKHWOB$[ebp]
	push	ecx
	call	_SetCursorNextEntity@12
	mov	WORD PTR _nRC$[ebp], ax
$L5198:
	movsx	edx, WORD PTR _nRC$[ebp]
	test	edx, edx
	jl	$L5200

; 242  :       // Get name of user entity that needs a genkey.
; 243  :       GetAddrForAttribute( &szTableName, lpKZGKHWOB, "Genkey", "TableName" );

	push	OFFSET FLAT:??_C@_09JMBN@TableName?$AA@	; `string'
	push	OFFSET FLAT:??_C@_06JEOF@Genkey?$AA@	; `string'
	mov	eax, DWORD PTR _lpKZGKHWOB$[ebp]
	push	eax
	lea	ecx, DWORD PTR _szTableName$[ebp]
	push	ecx
	call	_GetAddrForAttribute@16

; 244  : 
; 245  :       // Find the entity in the genkey list that has the same name as the
; 246  :       // user's entity.
; 247  :       nRC = SetCursorFirstEntityByString( lpGENKEYWO, "ZeidonGenkeyTable",
; 248  :                                           "TableName", szTableName, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	mov	edx, DWORD PTR _szTableName$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_09JMBN@TableName?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0BC@ICCK@ZeidonGenkeyTable?$AA@ ; `string'
	mov	eax, DWORD PTR _lpGENKEYWO$[ebp]
	push	eax
	call	_SetCursorFirstEntityByString@20
	mov	WORD PTR _nRC$[ebp], ax

; 249  : 
; 250  :       // If the entity wasn't found, then this is the first time a genkey has
; 251  :       // been requested for this entity.  Create the entity in the GenKey
; 252  :       // list and initialize any values.
; 253  :       if ( nRC != zCURSOR_SET )

	movsx	ecx, WORD PTR _nRC$[ebp]
	test	ecx, ecx
	je	SHORT $L5204

; 255  :          CreateEntity( lpGENKEYWO, "ZeidonGenkeyTable", zPOS_FIRST );

	push	1
	push	OFFSET FLAT:??_C@_0BC@ICCK@ZeidonGenkeyTable?$AA@ ; `string'
	mov	edx, DWORD PTR _lpGENKEYWO$[ebp]
	push	edx
	call	_CreateEntity@12

; 256  :          SetAttributeFromString( lpGENKEYWO, "ZeidonGenkeyTable",
; 257  :                                  "TableName", szTableName );

	mov	eax, DWORD PTR _szTableName$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_09JMBN@TableName?$AA@	; `string'
	push	OFFSET FLAT:??_C@_0BC@ICCK@ZeidonGenkeyTable?$AA@ ; `string'
	mov	ecx, DWORD PTR _lpGENKEYWO$[ebp]
	push	ecx
	call	_SetAttributeFromString@16

; 258  :          SetAttributeFromInteger( lpGENKEYWO, "ZeidonGenkeyTable",
; 259  :                                  "CurrentGenkey", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0O@FAPB@CurrentGenkey?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BC@ICCK@ZeidonGenkeyTable?$AA@ ; `string'
	mov	edx, DWORD PTR _lpGENKEYWO$[ebp]
	push	edx
	call	_SetAttributeFromInteger@16
$L5204:

; 261  : 
; 262  :       // Copy the GenKey value from the GenKey list to the GenKey handler
; 263  :       // work object.  This is how the value is passed back to CommitObj....
; 264  :       SetAttributeFromAttribute( lpKZGKHWOB, "Genkey", "CurrentGenkey",
; 265  :                                  lpGENKEYWO, "ZeidonGenkeyTable",
; 266  :                                  "CurrentGenkey" );

	push	OFFSET FLAT:??_C@_0O@FAPB@CurrentGenkey?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BC@ICCK@ZeidonGenkeyTable?$AA@ ; `string'
	mov	eax, DWORD PTR _lpGENKEYWO$[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_0O@FAPB@CurrentGenkey?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_06JEOF@Genkey?$AA@	; `string'
	mov	ecx, DWORD PTR _lpKZGKHWOB$[ebp]
	push	ecx
	call	_SetAttributeFromAttribute@24

; 267  : 
; 268  :       // Retrieve the count of entity instances that need genkeys and add it
; 269  :       // to the current value in the genkey list.
; 270  :       GetIntegerFromAttribute( &lLong, lpKZGKHWOB, "Genkey", "EntityCount" );

	push	OFFSET FLAT:??_C@_0M@KMCA@EntityCount?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_06JEOF@Genkey?$AA@	; `string'
	mov	edx, DWORD PTR _lpKZGKHWOB$[ebp]
	push	edx
	lea	eax, DWORD PTR _lLong$[ebp]
	push	eax
	call	_GetIntegerFromAttribute@16

; 271  :       nRC = AddToAttributeFromInteger( lpGENKEYWO, "ZeidonGenkeyTable",
; 272  :                                        "CurrentGenkey", lLong );

	mov	ecx, DWORD PTR _lLong$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0O@FAPB@CurrentGenkey?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_0BC@ICCK@ZeidonGenkeyTable?$AA@ ; `string'
	mov	edx, DWORD PTR _lpGENKEYWO$[ebp]
	push	edx
	call	_AddToAttributeFromInteger@16
	mov	WORD PTR _nRC$[ebp], ax

; 273  :       if ( nRC )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	SHORT $L5208

; 275  :          nReturnCode = zCALL_ERROR;

	mov	WORD PTR _nReturnCode$[ebp], -16	; fffffff0H

; 276  :          break;

	jmp	SHORT $L5200
$L5208:

; 278  :    }

	jmp	$L5199
$L5200:

; 300  :       ViewClusterRecord Cluster;
; 301  : 
; 302  :       Cluster.vOI      = lpGENKEYWO;

	mov	ecx, DWORD PTR _lpGENKEYWO$[ebp]
	mov	DWORD PTR _Cluster$5209[ebp], ecx

; 303  :       Cluster.lControl = 0;

	mov	DWORD PTR _Cluster$5209[ebp+4], 0

; 304  : 
; 305  :       nRC = CommitMultipleOIs( &Cluster, 1, 0, zCOMMIT_FORCETRAN );

	push	1024					; 00000400H
	push	0
	push	1
	lea	edx, DWORD PTR _Cluster$5209[ebp]
	push	edx
	call	_CommitMultipleOIs@16
	mov	WORD PTR _nRC$[ebp], ax

; 307  : #else
; 308  :    nRC = CommitObjectInstance( lpGENKEYWO );
; 309  : #endif
; 310  :    if ( nRC )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	SHORT $L5210

; 311  :       nReturnCode = zCALL_ERROR;

	mov	WORD PTR _nReturnCode$[ebp], -16	; fffffff0H
$L5210:

; 312  : 
; 313  : #ifndef DATABASE_LOCK
; 314  : 
; 315  :    SysMutexUnlock( vSubtask, "Zeidon GKH", 0 );

	push	0
	push	OFFSET FLAT:??_C@_0L@KGHJ@Zeidon?5GKH?$AA@ ; `string'
	mov	ecx, DWORD PTR _vSubtask$[ebp]
	push	ecx
	call	_SysMutexUnlock@12

; 316  : 
; 317  : #endif
; 318  : 
; 319  :    if ( nTraceLevel > 0 )

	movsx	edx, WORD PTR _nTraceLevel$[ebp]
	test	edx, edx
	jle	SHORT $L5211

; 321  :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8

; 322  :       TraceLineS( "============= End of Genkey Creation =============", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_0DD@GONE@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5End?5of?5Genkey?5Crea@ ; `string'
	call	_TraceLineS@8

; 323  :       TraceLineS( "", "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	call	_TraceLineS@8
$L5211:

; 325  : 
; 326  :    DropView( lpGENKEYWO );

	mov	eax, DWORD PTR _lpGENKEYWO$[ebp]
	push	eax
	call	_DropView@4

; 327  : 
; 328  :    return( nReturnCode );

	mov	ax, WORD PTR _nReturnCode$[ebp]

; 329  : }  /* InitializeGenkeyObject */

	mov	esp, ebp
	pop	ebp
	ret	0
_InitializeGenkeyObject ENDP
_TEXT	ENDS
PUBLIC	??_C@_08OHJM@EntityID?$AA@			; `string'
PUBLIC	??_C@_0CD@DAMP@lpViewEntity?5not?5found?5in?5KZGKHW@ ; `string'
EXTRN	_IssueError@16:NEAR
EXTRN	_StoreValueInRecord@20:NEAR
EXTRN	_SetCursorFirstEntityByInteger@20:NEAR
EXTRN	_SysGetPointerFromHandle@4:NEAR
;	COMDAT ??_C@_08OHJM@EntityID?$AA@
; File C:\10C\a\oe\KZHGENKY.C
_DATA	SEGMENT
??_C@_08OHJM@EntityID?$AA@ DB 'EntityID', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CD@DAMP@lpViewEntity?5not?5found?5in?5KZGKHW@
_DATA	SEGMENT
??_C@_0CD@DAMP@lpViewEntity?5not?5found?5in?5KZGKHW@ DB 'lpViewEntity not'
	DB	' found in KZGKHWOB', 00H			; `string'
_DATA	ENDS
_TEXT	SEGMENT
_lpView$ = 8
_lpViewEntity$ = 12
_lpKZGKHWOB$ = 16
_nRC$ = -4
_lGenkey$ = -12
_lpViewAttrib$ = -8
_GetNextGenkey PROC NEAR

; 344  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 345  :    zSHORT       nRC;
; 346  :    zLONG        lGenkey;
; 347  :    LPVIEWATTRIB lpViewAttrib;
; 348  : 
; 349  :    nRC = SetCursorFirstEntityByInteger( lpKZGKHWOB, "Genkey", "EntityID",
; 350  :                                         lpViewEntity->lEREntTok, "" );

	push	OFFSET FLAT:??_C@_00A@?$AA@		; `string'
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	mov	ecx, DWORD PTR [eax+195]
	push	ecx
	push	OFFSET FLAT:??_C@_08OHJM@EntityID?$AA@	; `string'
	push	OFFSET FLAT:??_C@_06JEOF@Genkey?$AA@	; `string'
	mov	edx, DWORD PTR _lpKZGKHWOB$[ebp]
	push	edx
	call	_SetCursorFirstEntityByInteger@20
	mov	WORD PTR _nRC$[ebp], ax

; 351  :    if ( nRC != zCURSOR_SET )

	movsx	eax, WORD PTR _nRC$[ebp]
	test	eax, eax
	je	SHORT $L5224

; 353  :       IssueError( lpView, 16, 16, "lpViewEntity not found in KZGKHWOB" );

	push	OFFSET FLAT:??_C@_0CD@DAMP@lpViewEntity?5not?5found?5in?5KZGKHW@ ; `string'
	push	16					; 00000010H
	push	16					; 00000010H
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_IssueError@16

; 354  :       return( zCALL_ERROR );

	mov	ax, -16					; fffffff0H
	jmp	$L5219
$L5224:

; 356  : 
; 357  :    GetIntegerFromAttribute( &lGenkey, lpKZGKHWOB, "Genkey", "CurrentGenkey" );

	push	OFFSET FLAT:??_C@_0O@FAPB@CurrentGenkey?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_06JEOF@Genkey?$AA@	; `string'
	mov	edx, DWORD PTR _lpKZGKHWOB$[ebp]
	push	edx
	lea	eax, DWORD PTR _lGenkey$[ebp]
	push	eax
	call	_GetIntegerFromAttribute@16

; 358  :    lGenkey++;

	mov	ecx, DWORD PTR _lGenkey$[ebp]
	add	ecx, 1
	mov	DWORD PTR _lGenkey$[ebp], ecx

; 359  :    SetAttributeFromInteger( lpKZGKHWOB, "Genkey", "CurrentGenkey", lGenkey );

	mov	edx, DWORD PTR _lGenkey$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0O@FAPB@CurrentGenkey?$AA@ ; `string'
	push	OFFSET FLAT:??_C@_06JEOF@Genkey?$AA@	; `string'
	mov	eax, DWORD PTR _lpKZGKHWOB$[ebp]
	push	eax
	call	_SetAttributeFromInteger@16

; 360  : 
; 361  :    // Find the genkey view attrib.
; 362  :    lpViewAttrib = zGETPTR( lpViewEntity->hFirstOD_Attrib );

	mov	ecx, DWORD PTR _lpViewEntity$[ebp]
	mov	edx, DWORD PTR [ecx+179]
	push	edx
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
$L5227:

; 363  :    while ( lpViewAttrib->bGenkey == FALSE )

	mov	eax, DWORD PTR _lpViewAttrib$[ebp]
	mov	ecx, DWORD PTR [eax+193]
	shr	ecx, 3
	and	ecx, 1
	test	ecx, ecx
	jne	SHORT $L5228

; 364  :       lpViewAttrib = zGETPTR( lpViewAttrib->hNextOD_Attrib );

	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	mov	eax, DWORD PTR [edx+2]
	push	eax
	call	_SysGetPointerFromHandle@4
	mov	DWORD PTR _lpViewAttrib$[ebp], eax
	jmp	SHORT $L5227
$L5228:

; 365  : 
; 366  :    // Copy the genkey to the entity.
; 367  :    StoreValueInRecord( lpView, lpViewEntity, lpViewAttrib,
; 368  :                        (zPVOID) &lGenkey, sizeof( lGenkey ) );

	push	4
	lea	ecx, DWORD PTR _lGenkey$[ebp]
	push	ecx
	mov	edx, DWORD PTR _lpViewAttrib$[ebp]
	push	edx
	mov	eax, DWORD PTR _lpViewEntity$[ebp]
	push	eax
	mov	ecx, DWORD PTR _lpView$[ebp]
	push	ecx
	call	_StoreValueInRecord@20

; 369  : 
; 370  :    return( 0 );

	xor	ax, ax
$L5219:

; 371  : }  /* GetNextGenkey */

	mov	esp, ebp
	pop	ebp
	ret	0
_GetNextGenkey ENDP
_TEXT	ENDS
END
