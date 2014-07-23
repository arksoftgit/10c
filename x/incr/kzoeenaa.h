#ifndef KZOEENAA_DEF
#define KZOEENAA_DEF

#include <pthread.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

//
// Object services environment specific header for Unix
//
#define LOADDS
#define zHUGE
#define zFAR
#define zPASCAL
#define OPERATION
#define zOPER_EXPORT
#define LOCALOPER
#define VARYOPER

#define zINLINE            static inline

#define POPERATION *  OPERATION
typedef int (OPERATION *     zPOPER)( void );

typedef unsigned char      zBOOL;
typedef unsigned char      zBYTE;
typedef char               zCHAR;
typedef long               zLONG;
typedef short              zSHORT;
typedef void               zVOID;

typedef unsigned char      zUCHAR;
typedef unsigned long      zULONG;
typedef unsigned short     zUSHORT;

typedef struct DecimalStruct
{
   char data[ 40 ];

} zDECIMAL;

typedef struct DecimalStruct zDOUBLE;

typedef zBOOL *            zPBOOL;
typedef zCHAR *            zPCHAR;
typedef zPCHAR *           zPPCHAR;
typedef const zCHAR *      zCPCHAR;
typedef zLONG *            zPLONG;
typedef zSHORT *           zPSHORT;
typedef zVOID *            zPVOID;
typedef zPVOID *           zPPVOID;
typedef const zVOID *      zCPVOID;
typedef zUCHAR *           zPUCHAR;
typedef zULONG *           zPULONG;
typedef zUSHORT *          zPUSHORT;

typedef zCHAR *             zLPCHAR;
typedef const zCHAR *       zCLPCHAR;
typedef zDOUBLE *           zLPDOUBLE;
typedef zDOUBLE zFAR *      zPDOUBLE;
typedef zLONG *             zLPLONG;
typedef zSHORT *            zLPSHORT;
typedef zVOID *             zLPVOID;
typedef const zVOID *       zCLPVOID;
typedef zUCHAR *            zLPUCHAR;
typedef zULONG *            zLPULONG;
typedef zUSHORT *           zLPUSHORT;

typedef zPDOUBLE           zPDECIMAL;
typedef zPDOUBLE *         zPPDECIMAL;
typedef zLONG              zINTEGER;
typedef zPLONG             zPINTEGER;

#define ZDECIMAL_CLASS
#define zGETPTR( x )       x

#define zaccess                              access
#define zisascii                             isascii
#define zstrtol                              strtol
#define zatol( sz )                          strtol( (sz), 0, 10 )
#define zatob( sz )                          strtol( (sz), 0, 10 )
#define zbtoa( l, sz )                       sprintf( (sz), "%ld", (l) )
#define zxtol( sz )                          strtol( (sz), 0, 16 )
#define zxtob( sz )                          strtol( (sz), 0, 16 )
#define zltoa( l, sz )                       sprintf( (sz), "%ld", (l) )
#define zltox( l, sz )                       sprintf( (sz), "%lx", (l) )
#define zmemcmp                              memcmp
#define zmemcpy                              memcpy
#define zmemset                              memset
#define zstrcat                              strcat
#define zstrchr                              strchr
#define zstrcmp( sz1, sz2 )                  ((*((char *) (sz1)) == *((char *) (sz2))) ? strcmp( (char *) (sz1), (char *) (sz2) ) : (*((char *) (sz1)) - *((char *) (sz2))) > 0 ? 1 : -1)
// #define zstrcmp                              strcmp
#define zstrcmpi                             strcasecmp
#define zstrcpy                              strcpy
#define zstricmp                             strcasecmp
#define zstrlen                              strlen
#define zstrncat                             strncat
#define zstrncmp                             strncmp
#define zstrncmpi                            strncasecmp
#define zstrncpy                             strncpy
#define zstrrchr                             strrchr
#define zstrrev                              strrev
#define zstrstr                              strstr
#define zstrtok                              strtok
#define zfullpath                            fullpath
#define zsprintf                             sprintf
#define ztoupper                             toupper
#define zisspace                             isspace
#define zisalnum                             isalnum
#define min( x, y )                          ( x < y ? x : y )

zINLINE zPCHAR zstrupper( zPCHAR pszStr )
{
   zPCHAR psz = pszStr;

   while ( *psz )
   {
      *psz = toupper( *psz );
      psz++;
   }

   return pszStr;
}

zINLINE zPCHAR zstrlower( zPCHAR pszStr )
{
   zPCHAR psz = pszStr;

   while ( *psz )
   {
      *psz = tolower( *psz );
      psz++;
   }

   return pszStr;
}

// Prototypes for "standard" C functions that are in kzoesyaa.c.
char * strrev( char * psz );

// Following define the space (in chars) needed to hold file names for the OS.
// This includes the null-terminator.
#define zMAX_FILESPEC_LTH                    512   // Max file lth for OS
#define zMAX_FILENAME_LTH                    512   // Max file lth for OS
#define zSHORT_FILENAME_LTH                  255   // Max file lth w/o dir

#define zTICKS_PER_SECOND 1

#if 1
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


#endif // #ifndef KZOEENAA_DEF
