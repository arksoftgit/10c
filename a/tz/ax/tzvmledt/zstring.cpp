/********************************************************************************************/
//
// File:            zstring.cpp
// Copyright:       TONBELLER AG 2001
// Autor:           TMV
// Datum:           30. November 2001
// describtion:
//
//
/* Change log most recent first order:


*/
/*********************************************************************************************/
#include "zstdafx.h"
#include "zstring.h"

ZString::ZString( ):CString()
{
}

ZString::ZString( const CString& stringSrc ):CString( stringSrc )
{
}

ZString::ZString( TCHAR ch, int nRepeat ):CString( ch, nRepeat )
{
}

ZString::ZString( LPCTSTR lpch, int nLength ):CString( lpch, nLength )
{
}

ZString::ZString( const unsigned char* psz ):CString( psz )
{
}

ZString::ZString( LPCWSTR lpsz ):CString( lpsz )
{
}

ZString::ZString( LPCSTR lpsz ):CString( lpsz )
{
}


int ZString::Tokenize( LPCTSTR lpszDelimiter, CStringArray &sar )
{
   if( lpszDelimiter )
   {
      LPSTR string = GetBufferSetLength( GetLength() );

      LPSTR token = strtok( string, lpszDelimiter );
      while( token != NULL )
      {
         /* While there are tokens in "string" */
         CString s = token;
         sar.Add( s );
         /* Get next token: */
         token = strtok( NULL, lpszDelimiter );
      }
      ReleaseBuffer();
   }

   return sar.GetSize();
}

