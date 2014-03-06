//KZOEINCO.H - Core internal defs that are OS-dependent.

/*
CHANGE LOG

2002.12.03  DGC
   Created.

*/

//========================================================================
//    MISCELLANEOUS STUFF
//========================================================================

// When we write strings to a portable file we have to decide if the string
// contains "special" chars.  If one of the "special" chars appears in the
// string value then the string is stored as a blob.  For WinX and OS/2 any
// character having an ASCII value less than a space is considered "special".
#define CHAR_IS_SPECIAL( c ) ( (unsigned) (c) < (unsigned) ' ' )

//========================================================================
//    MEMORY MANAGEMENT
//========================================================================

#ifndef zEXTERN
#error zEXTERN is undefined in kzoenico.h
#endif

// zGETPTR is already defined for Zeidon applications but we want to define
// it differently for internal core operations.
#undef zGETPTR

// Following used for Core memory allocation.  Description as follows:
//
//    zALIGN_MEM_SIZE - Defines the memory alignment needed for the OS in bytes.
//    zSHARED_ALLOC   - Size (in bytes) of shared memory allocated by Core to
//                      store internal data.
//    zMAX_ALLOC      - Maximum length (in bytes) of dynamically allocated mem.
//
#define zALIGN_MEM_SIZE 4
#define zSHARED_ALLOC   262000L
#define zMAX_ALLOC      4194304L    // No particular reason for this #.

#define zGETPTR( a )  (a)
#define zGETHNDL( a ) (a)

//========================================================================
//    MUTEXES
//========================================================================

// Core calls all internal mutexes using the following macros.  To be as
// flexible as possible the name of each mutex is also a macro.  If the macros
// call any functions then the function protoype must be included here.

// Following used to debug mutexes.
typedef struct ztagLARGE_INTEGER
{
   zLONG LowPart;
   zLONG HighPart;
} zLARGE_INTEGER;

struct DbgMutexTaskInfo
{
   long           lTaskID;
   char           szLockingFile[ 15 ];
   long           lLockingLine;
   char           cStatus;
   zLARGE_INTEGER lTimeRequest;
};

struct DbgMutexInfo
{
   struct DbgMutexTaskInfo TaskInfo[ 50 ];
   int    nLockCount;
   int    lLastTaskIdx;
};

#define MUTEXDBG_NAME    "Zeidon Mutex Debug"
#define MUTEXDBG_MEMNAME "Zeidon Mutex Memory"

#if defined( __MUTEX_DEBUG__ )
   #define zCREATE_MUTEX( mtx )
   #define zDESTROY_MUTEX( mtx )
   #define zLOCK_MUTEX( mtx )
   #define zUNLOCK_MUTEX( mtx )
#else
   #define zCREATE_MUTEX( mtx )
   #define zDESTROY_MUTEX( mtx )
   #define zLOCK_MUTEX( mtx )
   #define zUNLOCK_MUTEX( mtx )
#endif

#define zMUTEX_INITTERM             0
#define zMUTEX_MEMORY               1
#define zMUTEX_ANCHORBLOCK          2
#define zMUTEX_ANCHORINIT           3
#define zMUTEX_SHAREDMEM            4
#define zMUTEX_TASKCHAIN            5
#define zMUTEX_TASKCHAIN_WRITE      6
#define zMUTEX_MUTEX                7
#define zMUTEX_DEBUGCHANGE          8
#define zMUTEX_PESSIMISTICLOCK      9
#define zMUTEX_APPLA               10
#define zMUTEX_ENTITYKEY           11
#define zMUTEX_TASKPROCESS         12
#define zMUTEX_PROCESSCHAIN        13
#define zMUTEX_PROCESSCHAIN_WRITE  14
#define zMUTEX_COUNT               15  // # of mutexes used by Win32

// MutexInfo contains all OS-dependent data needed to use application
// mutexes.  For Win 3.x this is really ignored so we'll just store it as
// a char.
typedef zCHAR MutexInfo;

// In functions with variable argument lists some datatypes get "promoted"
// to other datatypes.  This can cause errors in the compile.  The following
// are casts of datatypes that get promoted.
#define VA_ARG_CHAR  int
#define VA_ARG_SHORT int
