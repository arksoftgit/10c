/////////////////////////////////////////////////////////////////////////////
// QSTRUCT.CPP -  written by Doug Sorensen    - create date 06/05/91
//                (C)  Arksoft Inc., 1989     - last update 05/19/99
//
// This program generates a C structure (aligned on 4-byte boundaries) for
// a given (or ALL) entity within an object definition.
//
// Input Parms:
//    1. OBJECT definition file name
//    2. /An - Align attributes on an n-byte boundary
//    3. /E - Entity name for which to build struct (defaults to ALL)
//    4. /O - output generated struct file (defaults to Entity.FIL)
//    5. /P - generate typedef for FAR *
//
// Outputs:
//    1. File with structure for specified entity
//
/////////////////////////////////////////////////////////////////////////////

#define PGM_VERSION "3.10"

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <dos.h>
#include <string.h>
#include <istream.h>
#include <ostream.h>

typedef enum BOOL { FALSE, TRUE };

#define  READFILE      "r"    /*  read only                              */
#define  WRITEFILE     "w"    /*  write only (overwrite existing file)   */
#define  BUFSIZE       2048

FILE *
fnOpenFile( char *pchBuff,
            char *pchMode );
short
qftoken( char  *szInputBuffer,      // input buffer
         char  *szTokenBuffer,      // token buffer
         short nMaxTokenLth,        // maximum length of a token
         short nMaxTokens );        // maximum number of tokens

void
fnWriteEntity( char *szObjectEntityDef );

void
fnWriteAttribute( char  cType,
                  char  *szAttributeName,
                  short nLth );
void
fnWriteStructRec( char *szBuffer );

// this next set of defines is a copy of what is in the "struct.tok" file
#define eENTITY         0
#define eCHILDENTITY    1
#define eATTRIB         2
#define aNAME           3
#define aLTH            4
#define aTYPE           5

#define  TOKEN_DELIMITERS  " \t\n\r"

#define MAXTOKENLTH    20

#define ENTITY_NOTFOUND 0
#define ENTITY_PROCESS  1
#define ENTITY_FOUND    2
#define ENTITY_WRITTEN  3
#define ATTRIB_NOTFOUND 0
#define ATTRIB_FOUND    1

#define TYPE_STRING    'S'
#define TYPE_LONG      'L'
#define TYPE_BLOB      'B'
#define TYPE_INTEGER   'I'
#define TYPE_CHAR      'C'
#define TYPE_DECIMAL   'M'

FILE  *pStructFile;         // generated source file pointer
char  szStructFile[ 128 ] = "STRUCT.FIL";
short nNumberRecordsWritten;
char  szTokenBuffer[ 256 ];

BOOL  bTypedef = FALSE;
BOOL  bAllEntities = FALSE;
short nAlign = 0;

int
main( int  argc,
      char *argv[ ] )
{
   FILE  *pObjectDefFile;         // object definition source file pointer
   char  szObjectDefFile[ 256 ];
   static char szObjectDefBase[ 256 ] = "z";
   char  szBuffer[ 256 ];
   char  szEntityName[ 33 ];
   char  szAttributeName[ 33 ];
   char  chType;
   short nLth;
   char  *pchToken;
   short nTotalRecordCount;
   short nTokenNumber;
   short nTokenCnt;
   char  szTempString[ 256 ];
   char  szObjectEntityDef[ 256 ];
   short nObjectDef = 0;
   short nAttribute = 0;
   short nEntity = 0;
   short nOutput = 0;
#ifdef DEBUG2
   BOOL  bDebug = FALSE;
#endif

   char  *pch;
   short k;

   for ( k = 1; k < argc; k++ )
   {
      if ( argv[ k ][ 0 ] == '/' || argv[ k ][ 0 ] == '-' )
      {
         if ( argv[ k ][ 1 ] == 'A' || argv[ k ][ 1 ] == 'a' )
         {
            nAlign = atoi( argv[ k ] + 2 );
         }
         else
         if ( argv[ k ][ 1 ] == 'E' || argv[ k ][ 1 ] == 'e' )
         {
            if ( argv[ k ][ 2 ] )   // a name is required
               nEntity = k;
            else
            {
               cerr << "Entity name is required for switch: "
                    << argv[ k ] << endl;
               nObjectDef = 0;
               break;
            }
         }
         else
         if ( argv[ k ][ 1 ] == 'O' || argv[ k ][ 1 ] == 'o' )
         {
            if ( argv[ k ][ 2 ] )   // a name is required
               nOutput = k;
            else
            {
               cerr << "Output file name is required for switch: "
                    << argv[ k ] << endl;
               nObjectDef = 0;
               break;
            }
         }
         else
         if ( argv[ k ][ 1 ] == 'P' || argv[ k ][ 1 ] == 'p' )
         {
            bTypedef = TRUE;
         }
         else
         if ( argv[ k ][ 1 ] == 'T' || argv[ k ][ 1 ] == 't' )
         {
         }
         else
         {
            if ( argv[ k ][ 1 ] != '?' )
               cerr << "Invalid switch - " << argv[ k ] << endl;

            nObjectDef = 0;
            break;
         }
      }
      else
      if ( nObjectDef == 0 )
      {
         nObjectDef = k;
      }
      else
      {
         cerr << "Too many arguments - " << argv[ k ] << endl;
         nObjectDef = 0;
         break;
      }

   }

   // If there was an error in the command line arguments.
   if ( nObjectDef == 0 )
   {
      cerr << argv[ 0 ] << "  v" << PGM_VERSION << "\n";
      cerr << "syntax:  " << argv[ 0 ]
      << " object_def_file [/E /O /P /T /?]\n"
      << "\n"
      << "Used to create a C struct for a given entity within an object definition\n"
      << "One positional argument is required\n"
      << "  object_def_file\n"
      << "Optional switches\n"
      << " /An - Align attribute fields on an n-byte boundary\n"
      << " /E - Entity name for which to build structure (defaults to 'ALL')\n"
      << " /O - output file for generated structure (defaults to 'Entity.FIL')\n"
      << " /P - generate typedef for FAR * to the structure\n"
      << "\n****** Processing Terminated ******\n"
      << endl;

      return( 1 );
   }

   _fullpath( szObjectDefFile, argv[ nObjectDef ], sizeof( szObjectDefFile ) );

   // Get just the base name of the object definition file.
   strcpy( szObjectDefBase + 1, argv[ nObjectDef ] );
   pch = strrchr( szObjectDefBase, '\\' );
   if ( pch )
      strcpy( szObjectDefBase + 1, pch + 1 );

   pch = strchr( szObjectDefBase, '.' );
   if ( pch )
      *pch = 0;

   strupr( szObjectDefBase + 1 );

   if ( nEntity )  // entity name switch
   {
      strcpy( szEntityName, argv[ nEntity ] + 2 );
      strupr( szEntityName );
      if ( strcmp( szEntityName, "ALL" ) == 0 )
         bAllEntities = TRUE;
      else
         bAllEntities = FALSE;
   }
   else
   {
      strcpy( szEntityName, "ALL" );
      bAllEntities = TRUE;
   }

   if ( nOutput )  // output file for generated struct
      strcpy( szStructFile, argv[ nOutput ] + 2 );
   else
   {
      strcpy( szStructFile, szEntityName );
      strcat( szStructFile, ".FIL" );
   }

   strcpy( szTokenBuffer, "eENTITY" );
   strcpy( szTokenBuffer + 20, "eCHILDENTITY" );
   strcpy( szTokenBuffer + 40, "eATTRIB" );
   strcpy( szTokenBuffer + 60, "aNAME" );
   strcpy( szTokenBuffer + 80, "aLTH" );
   strcpy( szTokenBuffer + 100, "aTYPE" );
   strcpy( szTokenBuffer + 120, "" );

   nTokenCnt = 6;

#ifdef DEBUG2
{
   char szTempToken[ 256 ];
   short idx, j, k;                          // local indexes

   cerr << "TokenCount = " << nTokenCnt << endl;
   for ( idx = 0; idx < nTokenCnt; idx++ )
   {
      j = idx * MAXTOKENLTH;
      for ( k = 0; k < MAXTOKENLTH; k++, j++ )
        szTempToken[ k ] = szTokenBuffer[ j ];

      szTempToken[ MAXTOKENLTH ] = '\0';
      cerr << "Token " << idx << " = " << szTempToken << endl;
   }
}
#endif

   pObjectDefFile = fnOpenFile( szObjectDefFile, READFILE );
   pStructFile = fnOpenFile( szStructFile, WRITEFILE );

   strcpy( szBuffer, "#ifndef __" );
   strcat( szBuffer, szObjectDefBase + 1 );
   strcat( szBuffer, "_hst__   // Sentry, use file only if it's "
                     "not already included\n" );
   strlwr( szBuffer );
   fputs( szBuffer, pStructFile );

   strcpy( szBuffer, "#define __" );
   strcat( szBuffer, szObjectDefBase + 1 );
   strcat( szBuffer, "_hst__\n\n" );
   strlwr( szBuffer );
   fputs( szBuffer, pStructFile );

   nTotalRecordCount = 0;
   nNumberRecordsWritten= 0;
   nEntity = ENTITY_NOTFOUND;     // entity in process indicator
   nAttribute = ATTRIB_NOTFOUND;  // attribute in process indicator

   fgets( szBuffer, BUFSIZE, pObjectDefFile );
   while ( !feof( pObjectDefFile ) )
   {
      nTotalRecordCount++;

#ifdef DEBUG2
      if ( bDebug )
         cerr << szBuffer << endl;
#endif

      nTokenNumber = qftoken( szBuffer, szTokenBuffer,
                              MAXTOKENLTH, nTokenCnt );

      switch( nTokenNumber )
      {
         case eENTITY:
         case eCHILDENTITY:
            if ( nEntity == ENTITY_WRITTEN )
               if ( !bAllEntities )
                  goto END_ENTITY_label;

            if ( nAttribute )
            {
               fnWriteAttribute( chType, szAttributeName, nLth );
               nAttribute = ATTRIB_NOTFOUND;
            }

            if ( nEntity == ENTITY_WRITTEN )
               fnWriteEntity( szObjectEntityDef );

            nEntity = ENTITY_PROCESS;
            break;


         case eATTRIB:
            if ( nEntity == ENTITY_FOUND || nEntity == ENTITY_WRITTEN )
            {
               if ( nEntity == ENTITY_FOUND )
               {
                  strcpy( szTempString, "typedef struct tag" );
                  strcpy( szObjectEntityDef, szObjectDefBase );
                  strcat( szObjectEntityDef, "_" );
                  strcat( szObjectEntityDef, szEntityName );
                  strcat( szObjectEntityDef, "_DEF" );
                  strcat( szTempString, szObjectEntityDef );
                  fnWriteStructRec( szTempString );
                  strcpy( szTempString, "{" );
                  fnWriteStructRec( szTempString );
                  nEntity = ENTITY_WRITTEN;
               }

               if ( nAttribute )
               {
                  fnWriteAttribute( chType, szAttributeName, nLth );
                  chType = NULL;
                  szAttributeName[ 0 ] = NULL;
                  nLth = 0;
               }

               nAttribute = ATTRIB_FOUND;
            }


            break;

         case aNAME:
            if ( nEntity == ENTITY_PROCESS )
            {
               pchToken = strtok( szBuffer + 6, TOKEN_DELIMITERS );
               if ( bAllEntities )
               {
                  strcpy( szEntityName, pchToken );
                  nEntity = ENTITY_FOUND;
               }
               else
               if ( strcmp( szEntityName, pchToken ) == 0 )
                  nEntity = ENTITY_FOUND;
               else
                  nEntity = ENTITY_NOTFOUND;
            }
            else
            if ( nEntity == ENTITY_WRITTEN && nAttribute )
            {
               pchToken = strtok( szBuffer + 6, TOKEN_DELIMITERS );
               strcpy( szAttributeName, pchToken );
#ifdef DEBUG2
               if ( strcmp( szAttributeName, "SB_ActionDisabling" ) == 0 )
                  bDebug = TRUE;
               else
                  bDebug = FALSE;
#endif
            }

            break;

         case aTYPE:
            if ( nAttribute )
            {
               pchToken = strtok( szBuffer + 6, TOKEN_DELIMITERS );
               chType = *pchToken;
            }

            break;

         case aLTH:
            if ( nAttribute )
            {
               pchToken = strtok( szBuffer + 5, TOKEN_DELIMITERS );
               nLth = atoi( pchToken ) + 1;

               if ( nAlign && (nLth % sizeof( void * )) )
                  nLth += sizeof( void * ) - (nLth % sizeof( void * ));
            }

            break;

         default:
         {
            if ( szBuffer[ 0 ] == 'e' )
            {
               if ( nAttribute == ATTRIB_FOUND )
               {
                  fnWriteAttribute( chType, szAttributeName, nLth );
                  nAttribute = ATTRIB_NOTFOUND;
               }

               if ( nEntity == ENTITY_WRITTEN )
               {
                  fnWriteEntity( szObjectEntityDef );
                  nEntity = ENTITY_PROCESS;
               }
            }
         }
      }

      fgets( szBuffer, BUFSIZE, pObjectDefFile );

   }   // end of:   while ( !feof( pObjectDefFile ) )

   END_ENTITY_label:

   if ( nAttribute == ATTRIB_FOUND )
      fnWriteAttribute( chType, szAttributeName, nLth );

   if ( nEntity == ENTITY_WRITTEN )
      fnWriteEntity( szObjectEntityDef );

   fclose( pObjectDefFile );

   cout << "\nNumber records read = " << nTotalRecordCount
        << "\nOutput file: " << szStructFile
        << "\nNumber records written = " << nNumberRecordsWritten << endl;

   if ( pStructFile )
   {
      strcpy( szBuffer, "#endif   // #define __" );
      strcat( szBuffer, szObjectDefBase + 1 );
      strcat( szBuffer, "_hst__\n" );
      strlwr( szBuffer );
      fputs( szBuffer, pStructFile );
      fclose( pStructFile );
   }

   return( 0 );
}

void
fnWriteEntity( char *szObjectEntityDef )
{
   char szTempString[ 256 ];

   szTempString[ 0 ] = NULL;
   fnWriteStructRec( szTempString );
   strcpy( szTempString, "} " );
   strcat( szTempString, szObjectEntityDef );
   strcat( szTempString, ";" );
   fnWriteStructRec( szTempString );

   if ( bTypedef )
   {
      szTempString[ 0 ] = NULL;
      fnWriteStructRec( szTempString );
      strcpy( szTempString, "typedef " );
      strcat( szTempString, szObjectEntityDef );
      strcat( szTempString, "  FAR *lp" );
      strcat( szTempString, szObjectEntityDef );
      strcat( szTempString, ";" );
      fnWriteStructRec( szTempString );
   }

   szTempString[ 0 ] = NULL;
   fnWriteStructRec( szTempString );
}

void
fnWriteAttribute( char  chType,
                  char  *szAttributeName,
                  short nLth )
{
   char szTempString[ 256 ];

   switch( chType )
   {
      case TYPE_BLOB:
      case TYPE_LONG:
           strcpy( szTempString, "   zLONG " );
           strcat( szTempString, szAttributeName );
           strcat( szTempString, ";" );

           break;

      case TYPE_INTEGER:
           strcpy( szTempString, "   zINT  " );
           strcat( szTempString, szAttributeName );
           strcat( szTempString, ";" );

           break;

      case TYPE_CHAR:
           strcpy( szTempString, "   zCHAR " );
           strcat( szTempString, szAttributeName );
           strcat( szTempString, ";" );

           break;

      case TYPE_DECIMAL:
           strcpy( szTempString, "   zDOUBLE " );
           strcat( szTempString, szAttributeName );
           strcat( szTempString, ";" );

           break;

      case TYPE_STRING:
      default:
           strcpy( szTempString, "   zCHAR " );
           strcat( szTempString, szAttributeName );
           strcat( szTempString, "[ " );
           itoa( nLth, szTempString + strlen( szTempString ), 10 );
           strcat( szTempString, " ];" );
           break;
   }

   fnWriteStructRec( szTempString );
}

void
fnWriteStructRec( char *szBuffer )
{
   strcat( szBuffer, "\n" );
   if ( fputs( szBuffer, pStructFile ) == -1 )
   {
      cerr << "\n" << szStructFile << " - file can not be written"
           << "\n****** Processing Aborted ******\n";
      exit( 1 );
   }
   else
   {
      nNumberRecordsWritten++;
   }
}

/////////////////////////////////////////////////////////////////////////////
//
// fnOpenFile - open a file and check for valid open
//
/////////////////////////////////////////////////////////////////////////////
FILE *
fnOpenFile( char *pchFileSpec,
            char *pchMode )
{
   FILE *pFile;

   pFile = fopen( pchFileSpec, pchMode );
   if ( !pFile )
   {
      cerr << "Error opening file " << pchFileSpec << endl;
      exit( 1 );
   }
#ifdef DEBUG2
   else
      cerr << "File opened " << pchFileSpec << endl;
#endif

   return( pFile );
}

/////////////////////////////////////////////////////////////////////////////
//  This program checks an input buffer for a token in the token
//  buffer.  If found, the token number is returned, otherwise -1
//  is returned.
//
//  Input Parms:
//     1. Input buffer
//     2. Token buffer
//     3. Maximum length of a token
//     4. Maximum number of tokens
//
//  Returns:
//     1. Token number (-1 if not found )
//
/////////////////////////////////////////////////////////////////////////////
short
qftoken( char  *szInputBuffer,      // input buffer
         char  *szTokenBuffer,      // token buffer
         short nMaxTokenLth,        // maximum length of a token
         short nMaxTokens )         // maximum number of tokens
{
   char  szTempBuffer[ 256 ];
   char  *pToken;
   short k;

#if 0
   cerr << "searching buffer > '" << szInputBuffer << "'\n";
#endif
   // do not modify original input buffer (strtok does modify buffer)
   strcpy( szTempBuffer, szInputBuffer );
   pToken = strtok( szTempBuffer, TOKEN_DELIMITERS );
   if ( pToken )
   {
      for ( k = 0; k < nMaxTokens; k++ )
      {
         if ( strcmp( szTokenBuffer + k * nMaxTokenLth, pToken ) == 0 )
            return( k );

      }   // end of:  for ( k = 0; k < nMaxTokens; k++ )
   }

   return( -1 );

}  // end of:  qftoken

/////////////////////////////////////////////////////////////////////////////
