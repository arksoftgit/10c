/////////////////////////////////////////////////////////////////////////////
// Project ZDr
//
// This is a part of the Zeidon Dynamic Rendering of GUI applications package.
// Copyright © 1995 - 2000 QuinSoft, Inc.
// All Rights Reserved.
//
// SUBSYSTEM:    ZDr.exe ZDrApp.dll ZdCtl.dll TzCtl.dll - ZDr Application
// FILE:         zstdafx.h
// AUTHOR:
//
// OVERVIEW
// ========
// include file for standard system include files, or project specific
// include files that are used frequently, but are changed infrequently.
//
// CHANGE LOG - most recent first order
//
// 2000.03.21  TMV
//    add additional include
//
// 1998.08.13  DKS
//    Use ~ __WIN16__ rather than __WIN32__.
//
// 1998.07.23  TMV
//    Make changes so that a 16-Bit Runtime can be built from MFC 5.0 Sources
//

#if !defined(AFX_STDAFX_H__D1B10BC9_9D1C_11D3_A450_00A024D4C015__INCLUDED_)
#define AFX_STDAFX_H__D1B10BC9_9D1C_11D3_A450_00A024D4C015__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#define VC_EXTRALEAN    // Exclude rarely-used stuff from Windows headers

#include <afxwin.h>         // MFC core and standard components
#include <afxext.h>         // MFC extensions (including VB)
#include <afxdtctl.h>       // MFC DateTime Control
#include <afxpriv.h>
#include <afximpl.h>
#include <afxtempl.h>       // for CTypedPtrArray

#ifndef __WIN16__  // see change log 1998.07.08
   #include <afxpriv2.h>
#else
   // in 16 bit we don't support the following things
   // but do we really support access to databases via ODBC or DAO
   // or do we do this with our object engine???
   #define _AFX_NO_DB_SUPPORT
   #define _AFX_NO_DAO_SUPPORT
   #define _INC_VFW
#endif // win16  see change log 1998.07.08

#ifndef _AFX_NO_OLE_SUPPORT
   #include <afxole.h>         // MFC OLE classes
   #include <afxodlgs.h>       // MFC OLE dialog classes
   #include <afxdisp.h>        // MFC OLE automation classes
   #include <afxtempl.h>
   #include <afxctl.h>
#endif // _AFX_NO_OLE_SUPPORT

#ifndef _AFX_NO_DB_SUPPORT
   #include <afxdb.h>         // MFC ODBC database classes
#endif // _AFX_NO_DB_SUPPORT

#ifndef _AFX_NO_DAO_SUPPORT
   #include <afxdao.h>        // MFC DAO database classes
#endif // _AFX_NO_DAO_SUPPORT

#ifndef _AFX_NO_AFXCMN_SUPPORT
   #ifndef __WIN16__  // see change log 1998.07.08
                      // different header in early mfc versions
      #include <afxcmn.h>  // MFC support for Windows Common Controls
   #else
      #include <afxdlgs.h>
   #endif // win16 see change log 1998.07.08
#endif // _AFX_NO_AFXCMN_SUPPORT

#ifndef _INC_VFW
   #include <vfw.h>
#endif

//#ifdef zREMOTE_SERVER
   #ifndef _AFX_NO_SOCKET_SUPPORT
      #ifndef _WINSOCKAPI_
        #include <winsock.h>
      #endif
      #include "sockimpl.h"
      #include "afxsock.h"
   #endif
//#endif

#include <afxcview.h>

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before
// the previous line.


#ifndef __cplusplus
#error  C++ compilation is required (use a .cpp suffix)
#endif

#ifdef __WIN16__     // even in WIN32 this code has no effect
                     // as long _UNICODE has not been defined
                     // (which is unusual in Windows 3.1)
   #define __T(x)      x
   #define _T(x)       __T(x)
#pragma pack( 1 )

#else

#pragma pack( push, __zstdafx_h )
#pragma pack( 1 )

#endif

#pragma warning( disable : 4355 )

#define KZOESYS_INCL
#define KZMETA_INCL
#define KZSYSSVC_INCL
#define zNO_KZOEINCO    // to get the correct operation thru zGET_PTR

// We need to define MutexInfo as a dummy typedef.  DO NOT TRY TO USE THIS!
typedef long MutexInfo;

#include <kzoengaa.h>

#ifdef _DEBUG
#define DEBUG_LODSTRUCT
#endif

extern "C"
{
#include <kzwdlgxo.hst>
}

#ifndef __WIN16__
#pragma pack( pop, __zstdafx_h )
#endif

#include <zdrvropr.h>

#endif // !defined(AFX_STDAFX_H__D1B10BC9_9D1C_11D3_A450_00A024D4C015__INCLUDED_)
