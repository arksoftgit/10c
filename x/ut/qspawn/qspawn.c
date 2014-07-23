#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <time.h>
#include <time.h>
#include <ctype.h>
#include <unistd.h>

#ifndef TRUE
   #define TRUE  1
   #define FALSE 0
#endif

void PrintHelp( void )
{
   printf( "\n" );
   printf( "QSPAWN.EXE - Used to execute a DOS command, store the standard\n" );
   printf( "             output to a file and then print the output file.\n" );
   printf( "\n" );
   printf( "QSPAWN [+]output-file cmd [arg1 arg2...]\n" );
   printf( "\n" );
   printf( "  If '+' is specified as the first char in the output file name,\n" );
   printf( "  then the output of the command is APPENDED to the output file.\n" );
   printf( "\n" );
   return;
}

int main ( int argc, char *argv[], char *envp[] )
{
   int    i;
   int    nRC = 0;
   char   szCmd[ 5000 ];
   char * pszFileName;
   FILE * stream;

   if ( argc < 3 )
   {
      PrintHelp ();
      exit( 0 );
   }

   for ( szCmd[ 0 ] = 0, i = 2; i < argc; i++ )
   {
      strcat( szCmd, (char *) argv[ i ] );
      strcat( szCmd, " " );
   }

   printf( "%s\n", szCmd );

   pszFileName = argv[ 1 ];
   if ( *pszFileName == '+' )
   {
      pszFileName++;
      strcat( szCmd, " 2>> " );
      strcat( szCmd, pszFileName );
   }
   else
   {
      strcat( szCmd, " 2> " );
      strcat( szCmd, pszFileName );
   }

   nRC = system( szCmd );

   sprintf( szCmd, "cat %s", pszFileName );
   system( szCmd );

   if ( nRC )
   {
      printf( "\n"
              "QSPAWN returning error running command: %s\n"
              "\n", argv[ 2 ] );
      return( 1 )
   }

   return( nRC );
}
