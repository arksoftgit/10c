#-------------------------------------------------------------------
# DESCRIPTION: QuinSoft Zeidon Standard
#              NMAKE makefile
#
# Change Log
#
# 08.06.1998  RG
#    Wenn zdrapp.lib fehlt, wird die DLL nicht gebildet !!!
#
#-------------------------------------------------------------------

Z_TOOLDIR    = ms

# Initialize Zeidon macros.
!include "..\..\mak\env.hnm"

TARGETS      = $(Z_BIN)\kzmsgqaa.dll
MODULE       = kzmsgqaa
OBJS         = $(Z_OBJ)\kzmsgqaa.obj

# Extra compile options
#!if !EXIST( $(Z_LIB)r\zdrapp.lib )
#USER_OPT     = -DNO_DRIVER
#DRIVER_APP   = NO
#!else
LINKDLLS     = zdrapp.lib
DRIVER_APP   = YES
#!endif

# Extra options.
LINKDLLS     =

# Compile using above defs.
!include "..\..\mak\compile.hnm"
