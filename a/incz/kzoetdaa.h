//KZOETDAA.H - typdef's for object Engine pointer

/*
CHANGE LOG

97/05/07    DGC
   Removed code dealing with ZEIDON.XMD

98/01/20    DGC
   Cleaned up a little.

1999.04.19  RS
   Commentlines required for Rose.

*/

// Don't remove the following commentlines. They are required for Rose.
//#include <kzoeenaa.h> //required for Rose

typedef struct AnchorStruct AnchorRecord;
typedef AnchorRecord zFAR *LPANCHOR;

typedef struct DataHeaderStruct DataHeaderRecord;
typedef DataHeaderRecord zFAR *LPDATAHEADER;

typedef struct FileHeaderStruct FileHeaderRecord;
typedef FileHeaderRecord zFAR *LPFILEHEADER;

typedef struct InternationalStruct InternationalRecord;
typedef InternationalRecord zFAR *LPINTERNATIONAL;

typedef struct SubtaskStruct SubtaskRecord;
typedef SubtaskRecord zFAR *LPSUBTASK;

typedef struct TaskDBHandlerStruct TaskDBHandlerRecord;
typedef TaskDBHandlerRecord zFAR *LPTASKDBHANDLER;

typedef struct TaskGKHandlerStruct TaskGKHandlerRecord;
typedef TaskGKHandlerRecord zFAR *LPTASKGKHANDLER;

typedef struct TaskAppStruct TaskAppRecord;
typedef TaskAppRecord zFAR *LPTASKAPP;

typedef struct MQInterfaceStruct MQInterfaceRecord;
typedef MQInterfaceRecord zFAR *LPMQINTERFACE;

typedef struct ViewOI_Struct ViewOI_Record;
typedef ViewOI_Record zFAR *LPVIEWOI;

// NOTE: This typedef also occurs in kzoengaa.h for ActivateEmptyObjectIns
//typedef struct ViewStruct ViewRecord;
//typedef ViewRecord zFAR *LPVIEW;

typedef struct ViewCsrStruct ViewCsrRecord;
typedef ViewCsrRecord zFAR *LPVIEWCSR;

typedef struct ViewEntityCsrStruct ViewEntityCsrRecord;
typedef ViewEntityCsrRecord zFAR *LPVIEWENTITYCSR;

typedef struct ViewSubobjectStruct ViewSubobjectRecord;
typedef ViewSubobjectRecord zFAR *LPVIEWSUBOBJECT;

typedef struct EntityInstanceStruct EntityInstanceRecord;
typedef EntityInstanceRecord zFAR *LPENTITYINSTANCE;

// NOTE: the following typedef duplicated in kzoessaa.h for
//       the internal prototype SysLoadLibrary, SysGetProcAddr
//typedef struct LibraryStruct LibraryRecord;
//typedef LibraryRecord zFAR *LPLIBRARY;

typedef struct OpenFileStruct OpenFileRecord;
typedef OpenFileRecord zFAR *LPOPENFILE;

typedef struct FreespaceStruct FreespaceRecord;
typedef FreespaceRecord zFAR *LPFREESPACE;

typedef struct ErrorStruct ErrorRecord;
typedef ErrorRecord zFAR *LPERROR;

typedef struct SelectedInstanceStruct SelectedInstanceRecord;
typedef SelectedInstanceRecord zFAR *LPSELECTEDINSTANCE;

typedef struct DateTimeInternalStruct DateTimeInternalRecord;
typedef DateTimeInternalRecord zFAR *LPDTINTERNAL;
