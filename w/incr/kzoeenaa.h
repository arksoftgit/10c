#ifndef KZOEENAA_DEF
#define KZOEENAA_DEF

/*
CHANGE LOG
2002.01.10  HH
  Added zxtob.

2000.10.20  SR  Z2000
  Add define zMAX_FILESPEC_LTH and zMAX_EXTENSION_LTH.
  Change size of zMAX_FILENAME_LTH, zSHORT_FILENAME_LTH and zBASE_FILENAME_LTH for
  third case.

2000.03.08  HH
   remove "__WIN32__ warning"

1999.11.29  SR  Z2000  Compile
   Remove compile directive __WIN32__ in makefile zdecimal.mak
   because it is defined twice. Remove "TB_NT" in this file
   is not possible while several other libraries are based on it.

1999.11.29  SR  Z2000  Comments
   Changed order of CHANGE LOG's so that it corresponds to other modules

1998.10.14  DGC
   Removed zOS_NAME.

1998.08.28  DGC
   Changed zxtol() to map to strtoul() instead of strtol().

09.06.1998  RG
   Several changes from DKS

11.05.1998  RG
   Change from 16.04.1998 is needed for Siron compilation

20.04.1998  RG
   Removed the last change because of link-problems in win3.1
   The above change must only be done for release 9J

16.04.1998  RG
   Added definition of __WIN32__ if TB_NT is set

1998.01.28  DGC
   Added zBASE_FILENAME_LTH for all OS's.

1998.01.22  DGC
   Changed back to 'double'.
   Tried to clean up a little.

1998.01.14  DGC
   Changed definition of zDECIMAL from 'double' to 'long double'.

   Changed zatof to convert to a long double (zDECIMAL).

07.10.1997  HH
   Added definition zdecimalpoint

??.??.1997 ??
   lots of changes

97/05/12    DGC
   Added zBYTE type.

97/05/01    DGC
   Added Win32 code for NT.

*/

//
// Object services environment specific header for windows 3.x
//

#define LOADDS

// Uncomment following to use 'long double' instead of 'double' for Win 3.x
#define zLONG_DOUBLE

// SR: remove second definition in makefile zdecimal.mak: " /D "__WIN32__" ".
//     Cannot remove "TB_NT" in this file. It is necessary when building libraries
#if defined (TB_NT) && !defined (__WIN32__)
#define __WIN32__
#endif

#ifdef __WIN32__

   // win NT
   #define zFAR
   #define zHUGE
   #define zPASCAL            __stdcall

   #if defined( _MSC_VER ) && _MSC_VER > 1100
      // MSVC ver 6.0 and later.
      #define zOPER_EXPORT       __declspec (dllexport)  // AFX_API_EXPORT
      #define OPERATION          __stdcall
   #else
      // MSVC ver 5.0 and earlier.
      #define zOPER_EXPORT
      #define OPERATION          __declspec (dllexport) __stdcall
   #endif

   #define POPERATION         __stdcall  *
   #define LOCALOPER          zPASCAL


   #ifdef __BORLANDC__
      #define VARYOPER        __export
   #else
      #define VARYOPER        __declspec (dllexport) __stdcall // Variable arg list.
   #endif

   typedef struct DecimalStruct
   {
      char data[ 40 ];

   } zDECIMAL;

   typedef struct DecimalStruct zDOUBLE;

#else

   // win 3.1
   #define zFAR               _far
   #define zHUGE              _huge
   #define zPASCAL            _pascal

   #define OPERATION          __export LOADDS zFAR zPASCAL
   #define VARYOPER           __export LOADDS zFAR          // Variable arg list.
   #define POPERATION         OPERATION zFAR *
   #define LOCALOPER          zPASCAL

   #ifdef zLONG_DOUBLE
      typedef long double     zDOUBLE;
   #else
      typedef double          zDOUBLE;
   #endif

   typedef zDOUBLE             zDECIMAL;

#endif

#ifdef __BORLANDC__

   #define zEXPORT            __export
   #define zINLINE            inline

#else

   #if defined( __WIN32__ )
      #define zEXPORT
   #else
      #define zEXPORT            __export
   #endif

   #define zINLINE            _inline

#endif

typedef int (POPERATION zPOPER)();

typedef unsigned char       zBOOL;
typedef unsigned char       zBYTE;
typedef char                zCHAR;
typedef long                zLONG;
typedef short               zSHORT;
typedef void                zVOID;

typedef const unsigned char zCBOOL;
typedef const unsigned char zCBYTE;
typedef const char          zCCHAR;
typedef const long          zCLONG;
typedef const short         zCSHORT;

typedef unsigned char       zUCHAR;
typedef unsigned long       zULONG;
typedef unsigned short      zUSHORT;

typedef const unsigned char  zCUCHAR;
typedef const unsigned long  zCULONG;
typedef const unsigned short zCUSHORT;

typedef zBOOL zFAR *        zPBOOL;
typedef zBOOL zFAR *        zPBYTE;
typedef zCHAR zFAR *        zPCHAR;
typedef zPCHAR zFAR *       zPPCHAR;
typedef const zPCHAR zFAR * zCPPCHAR;
typedef const zCHAR zFAR *  zCPCHAR;
typedef zDOUBLE zFAR *      zPDOUBLE;
typedef zLONG  zFAR *       zPLONG;
typedef zSHORT zFAR *       zPSHORT;
typedef zVOID  zFAR *       zPVOID;
typedef zPVOID zFAR *       zPPVOID;
typedef const zVOID zFAR *  zCPVOID;
typedef zUCHAR zFAR *       zPUCHAR;
typedef zULONG zFAR *       zPULONG;
typedef zUSHORT zFAR *      zPUSHORT;

typedef zPDOUBLE            zPDECIMAL;
typedef zPDOUBLE zFAR *     zPPDECIMAL;
typedef zLONG               zINTEGER;
typedef zPLONG              zPINTEGER;

#include <string.h>
#include <stdlib.h>

#define zdecimalpoint( s )                   /**/

#if defined( __WIN32__ )

   // Win 32 defs.
   #define zisalnum                             isalnum
   #define zaccess                              _access
   #define zisascii                             __isascii
   #define zisdigit                             isdigit
   #define zatol                                atol
   #define zstrtol                              strtol
   #define zxtol( sz )                          strtoul( (sz), 0, 16 )
   #define zltoa( l, sz )                       _ltoa( (l), (sz), 10 )
   #define zltox( l, sz )                       _ltoa( (l), (sz), 16 )
   #define zatob                                zatol
   #define zxtob                                zxtol
   #define zbtoa                                zltoa
   #define zsprintf                             sprintf
   #define ztoupper                             toupper
   #define zmemcmp                              memcmp
   #define zmemicmp                             memicmp
   #define zmemcpy                              memcpy
   #define zmemset                              memset
   #define zstrcat                              strcat
   #define zstrchr                              strchr
   #define zstrcmp( sz1, sz2 )                  ((*((char *) (sz1)) == *((char *) (sz2))) ? strcmp( (char *) (sz1), (char *) (sz2) ) : (*((char *) (sz1)) - *((char *) (sz2))) > 0 ? 1 : -1)
// #define zstrcmp                              strcmp
   #define zstrcmpi                             _stricmp
   #define zstrcpy                              strcpy
   #define zstricmp                             stricmp
   #define zstrnicmp                            _strnicmp
   #define zstrlen                              strlen
   #define zstrncat                             strncat
   #define zstrncmp                             strncmp
   #define zstrncmpi                            _strnicmp
   #define zstrncpy                             strncpy
   #define zstrrchr                             strrchr
   #define zstrrev                              _strrev
   #define zstrstr                              strstr
   #define zstrtok                              strtok
   #define zfullpath                            _fullpath
   #define zstrupper                            _strupr
   #define zstrlower                            _strlwr
   #define zisspace                             isspace

#else

// Win 3.11/OS2 defs.
   #define zaccess                              _access
   #define zisascii                             __isascii
   #define zisalnum                             isalnum
   #define zisdigit                             isdigit
   #define zatol                                atol
   #define zstrtol                              strtol
   #define zxtol( sz )                          strtoul( (sz), 0, 16 )
   #define zltoa( l, sz )                       ltoa( (l), (sz), 10 )
   #define zltox( l, sz )                       ltoa( (l), (sz), 16 )
   #define zatob                                zatol
   #define zbtoa                                zltoa
   #define zsprintf                             sprintf
   #define ztoupper                             toupper
   #define zmemcmp                              _fmemcmp
   #define zmemicmp                             _fmemicmp
   #define zmemcpy                              _fmemcpy
   #define zmemset                              _fmemset
   #define zstrcat                              _fstrcat
   #define zstrchr                              _fstrchr
   #define zstrcmp( sz1, sz2 )                  ((*((char *) (sz1)) == *((char *) (sz2))) ? _fstrcmp( (char *) (sz1), (char *) (sz2) ) : (*((char *) (sz1)) - *((char *) (sz2))) > 0 ? 1 : -1)
// #define zstrcmp                              _fstrcmp
   #define zstrcmpi                             _fstricmp
   #define zstrcpy                              _fstrcpy
   #define zstricmp                             _fstricmp
   #define zstrnicmp                            _fstrnicmp
   #define zstrlen                              _fstrlen
   #define zstrncat                             _fstrncat
   #define zstrncmp                             _fstrncmp
   #define zstrncmpi                            _fstrnicmp
   #define zstrncpy                             _fstrncpy
   #define zstrrchr                             _fstrrchr
   #define zstrrev                              _fstrrev
   #define zstrstr                              _fstrstr
   #define zstrtok                              _fstrtok
   #define zfullpath                            _fullpath
   #define zstrupper                            _fstrupr
   #define zstrlower                            _fstrlwr

   #define zisspace( c )   ( (c) == ' '  || (c) == '\t' || (c) == '\n' || \
                             (c) == '\r' )

#endif

// For Win31/NT/OS2, SysGetTickCount returns milliseconds
#define zTICKS_PER_SECOND 1000

#ifdef __WIN32__
   #define zMAKEPOINT  MAKEPOINTS
#else
   #define zMAKEPOINT  MAKEPOINT
#endif

// Define OS and filename declarations
#ifdef __OS2__

   #define zGETPTR( a )     (a)

   // Following define the space (in chars) needed to hold file names for the OS.
   // This should NO LONGER include the null-terminator.
   #define zMAX_FILESPEC_LTH           512   // Max filespecification lth for OS
   #define zMAX_FILENAME_LTH           128   // Max file lth for OS
   #define zSHORT_FILENAME_LTH         13    // Max file lth w/o dir
   #define zBASE_FILENAME_LTH          8     // Max file lth w/o dir or ext.
   #define zMAX_EXTENSION_LTH          3     // Max length of file extension


#elif defined( __WIN32__ )

   #define zGETPTR( a )     SysGetPointerFromHandle( (a) )

   // Following define the space (in chars) needed to hold file names for the OS.
   // This should NO LONGER include the null-terminator.
   #define zMAX_FILESPEC_LTH           512   // Max filespecification lth for OS
   #define zMAX_FILENAME_LTH           256   // Max file lth for OS
   #define zSHORT_FILENAME_LTH         256   // Max file lth w/o dir
   #define zBASE_FILENAME_LTH          128   // Max file lth w/o dir or ext.
   #define zMAX_EXTENSION_LTH          3     // Max length of file extension

#else

   #define zGETPTR( a )     (a)

   // Following define the space (in chars) needed to hold file names for the OS.
   // This should NO LONGER include the null-terminator.
   #define zMAX_FILESPEC_LTH           512   // Max filespecification lth for OS
   #define zMAX_FILENAME_LTH           256   // Max file lth for OS
   #define zSHORT_FILENAME_LTH         256   // Max file lth w/o dir
   #define zBASE_FILENAME_LTH          128   // Max file lth w/o dir or ext.
   #define zMAX_EXTENSION_LTH          3     // Max length of file extension

#endif

#if defined( __BORLANDC__ ) || defined( __WIN32__ )

   #define zstrcpyp( pTgt, pSrc ) ((zPCHAR) zstrcpy( pTgt, pSrc ) + zstrlen( pTgt ))
   #define zstrcatp( pTgt, pSrc ) ((zPCHAR) zstrcat( pTgt, pSrc ) + zstrlen( pTgt ))
   #define zstrcpyl( pTgt, pSrc ) ((zSHORT) zstrlen( zstrcpy( pTgt, pSrc ) ))
   #define zstrcatl( pTgt, pSrc ) ((zSHORT) zstrlen( zstrcat( pTgt, pSrc ) ))

#else

   zINLINE zPCHAR zstrcpyp( zPCHAR pszTgt, zPCHAR pszSrc )
   {
      zstrcpy( pszTgt, pszSrc );
      while ( *pszTgt )
         pszTgt++;

      return pszTgt;
   }

   zINLINE zPCHAR zstrcatp( zPCHAR pszTgt, zPCHAR pszSrc )
   {
      zstrcat( pszTgt, pszSrc );
      while ( *pszTgt )
         pszTgt++;

      return pszTgt;
   }

   zINLINE zSHORT zstrcpyl( zPCHAR pszTgt, zPCHAR pszSrc )
   {
      zstrcpy( pszTgt, pszSrc );
      return zstrlen( pszTgt );
   }

   zINLINE zSHORT zstrcatl( zPCHAR pszTgt, zPCHAR pszSrc )
   {
      zstrcat( pszTgt, pszSrc );
      return zstrlen( pszTgt );
   }

#endif

   zSHORT OPERATION
   SysDescribeZeidonPageTable( zPCHAR pszResults );

#endif // #ifndef KZOEENAA_DEF
