#-------------------------------------------------------------------
# DESCRIPTION: QuinSoft Zeidon LOD Dialog
#              NMAKE makefile
#
# Change Log
# 2000.03.09  RG  Z2000
#     Change for Doug: Delete Lib_Dependents
# 1999.11.30  RG  Z2000
#     added LIB_DEPENDENTS
# 1999.11.23  BL  Z10  new menu structure
#     insert tzpntrad.lib for reuse Operation
#
#-------------------------------------------------------------------

# Initialize Zeidon macros.
!include "..\..\mak\env.hnm"

MODULE         = tzpnctad
TARGETS        = $(Z_BIN)\$(MODULE).dll
C_DEPENDENTS   =
LINKDLLS       = tzlodopr.lib  tzedfrmd.lib
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
