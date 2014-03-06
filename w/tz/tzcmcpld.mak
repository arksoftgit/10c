#-------------------------------------------------------------------
# DESCRIPTION: QuinSoft Zeidon LOD Dialog
#              NMAKE makefile
#
# Change Log
#
# 2001.04.08  BL
#    Added truegrid.lib for TrueGrid Operations
#
# 2000.02.14  BL
#    Added tzvmlip.lib for zGetFirstEntityNameForView
#-------------------------------------------------------------------

# Initialize Zeidon macros.
!include "..\..\mak\env.hnm"

MODULE         = tzcmcpld
TARGETS        = $(Z_BIN)\$(MODULE).dll
C_DEPENDENTS   =
LINKDLLS       = tzlodopr.lib  tzvmlip.lib  truegrid.lib
DRIVER_APP     = YES
CPP_OBJS       = $(Z_OBJ)\$(MODULE).obj

# Extra options
USER_OPT       =

# Add MFC libraries.
!ifdef DEBUG
BASELINKDLLS = $(BASELINKDLLS) mfc42d.lib mfcs42d.lib mfco42d.lib mfcd42d.lib
!else
BASELINKDLLS = $(BASELINKDLLS) mfc42.lib mfcs42.lib
!endif

# Compile using above defs.
!include "..\..\mak\compile.hnm"
