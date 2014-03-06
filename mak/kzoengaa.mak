#
# Change Log
#
# 2001.10.23  TMV
#      changed calls of qpreproc to use $(kz_srcw)\some_def_file.def
#      this gives us the chance to call nmake from anywhere
#
# 2001.09.25  DGC
#      Changed CLEAN to delete a few more files.
#
# 2001.09.14  DGC
#     Fixed a bug introduced by the previous change.
#
# 2001.08.28  DGC
#     Made the compile of some modules conditional on $debug and $quinsoft.
#
# 2001.04.02  US
#     Removed the delayload of the kzoedbga.dll due to link warnings
#
# 2001.01.12  RG  Z2000
#     Build *.PDB-files in Release Version too
#
# 2000.12.27  DKS Z2000
#     Added KZOEDGBA
#
# 2000.05.12  RG  Z2000
#     Changed option -Oselg --> -Od
#
# 1998.08.10  DGC
#    Added MeterSec.* to core.
#    Added TimeStamp file (kzoetsaa.c) to core.
#
# 1998.10.15  DGC
#     Removed references to win95.
#
# 1998.10.15  DGC
#     Removed references to kzbootst.
#
# 1998.12.23  DGC
#     Added kzoeinco.h as a dependent of OS dependent objs.
#
# 1998.12.23  DGC
#     Pretty'd up the output.
#
# 1999.03.09  DGC
#     Had to add a .CPP option.
#

usecompiler=msc

!INCLUDE \$(KZV)\MAK\KZVERS.HNM
!INCLUDE \$(KZV)\MAK\KZCOMMON.HNM
kz_srca = $(kz_basea)\oe
kz_inc  = $(kz_basew)\inc

ALL : \
!if "$(BUILDOS)"=="win"
      $(kz_src)\KZOEPHDR.PCH  \
      $(kz_src)\KZOEPHCO.PCH  \
!endif
      $(kz_lib)r\ZDLLINST.OBJ \
      $(kz_bin)\ZDECIMAL.DLL  \
      $(kz_bin)\KZOEDBGA.DLL  \
      $(kz_bin)\KZOENGAA.DLL  \
      $(kz_bin)\KZOENGWA.EXE  \
      $(kz_bin)\ZSIMPDIR.DLL  \
      $(kz_bin)\KZSCHEDT.EXE  \
!if $(debug)
      $(kz_bin)\KZOECLNT.EXE  \
!endif
      $(kz_bin)\ZWINSOCK.DLL

# The following used to be on all the .obj's used in creating KZOENGAA.DLL,
# they have been removed because even though a change to one of the
# header files has occurred, a system(oe) recompile isn't really neccessary.
# If you are unsure and want to do the system recompile for oe, you may do
# so by specifing (in order) SIG1 and ALL as targets when invoking make
# with this file.
#
#   {$(kz_inc_concat)}KZOENGAA.HG   \
#   {$(kz_inc_concat)}KZOELTAA.HG   \
#   {$(kz_inc_concat)}KZOEP0AA.H    \
#   {$(kz_inc_concat)}KZOEP1AA.H    \
#   {$(kz_inc_concat)}KZOENGAA.H

!if "$(BUILDOS)"=="win"
pc_hdr = -YuKZOEPHDR.H -FpKZOEPHCO.PCH
!endif

kz_srcw = $(kz_basew)\oe

# ============================================================
# ====================== KZOENGAA.DLL ========================
# ============================================================

# All the non OS-dependent core objs go here
core_obj = $(kz_obj)\KZOEAPAA.OBJ \
           $(kz_obj)\KZOEATAA.OBJ \
           $(kz_obj)\KZOECMAA.OBJ \
           $(kz_obj)\KZOEDMAA.OBJ \
           $(kz_obj)\KZOEEIAA.OBJ \
           $(kz_obj)\KZOEERAA.OBJ \
           $(kz_obj)\KZOEMIAA.OBJ \
           $(kz_obj)\KZOEMMAA.OBJ \
           $(kz_obj)\KZOEMQAA.OBJ \
           $(kz_obj)\KZOENETA.OBJ \
           $(kz_obj)\KZOEODAA.OBJ \
           $(kz_obj)\KZOEOIAA.OBJ \
           $(kz_obj)\KZOESOAA.OBJ \
           $(kz_obj)\KZOETMAA.OBJ \
           $(kz_obj)\KZOETRAA.OBJ \
           $(kz_obj)\KZOEUFAA.OBJ \
           $(kz_obj)\KZOEVLAA.OBJ \
           $(kz_obj)\KZOEVMAA.OBJ \
           $(kz_obj)\KZOEXMLA.OBJ \
# DGC 11/2/95  Temporarily added for NLS support....
           $(kz_obj)\KZWDLGXO.OBJ

core_cpp_obj = $(kz_obj)\KZOEDECA.OBJ

# All the OS-dependent core objs go here.
core_objo = $(kz_obj)\KZOESYAA.OBJ

!if "$(BUILDOS)"!="win"
core_objo = $(core_objo) $(kz_obj)\METERSEC.OBJ
!endif

# All the OS objs go here. (for example dll_init)
!if "$(usecompiler)"=="msc"
os_obj =
!else
os_obj = $(kz_obj_gbl)\alloc.obj \
         $(kz_obj_gbl)\dllinit.obj
!endif

all_core_objs = $(core_obj) $(core_cpp_obj) $(core_objo) $(os_obj)

$(kz_src)\KZOEPHDR.PCH : $(kz_srca)\KZOEPHDR.C         \
                         {$(kz_inc_concat)}kzoephdr.h  \
                         {$(kz_inc_concat)}kzoengaa.h  \
                         {$(kz_inc_concat)}kzoeenaa.h  \
                         {$(kz_inc_concat)}kzoeidaa.h  \
                         {$(kz_inc_concat)}kzoetdaa.h  \
                         {$(kz_inc_concat)}kzoemeaa.h  \
                         {$(kz_inc_concat)}kzoessaa.h  \
                         {$(kz_inc_concat)}kzoep1aa.h  \
                         {$(kz_inc_concat)}kzoep0aa.h  \
                         {$(kz_inc_concat)}kzoemiaa.h  \
                         {$(kz_inc_concat)}kzoengaa.hg \
                         {$(kz_inc_concat)}kzoeltaa.hg \
                         $(kz_src)\KZOEHDR1.SIG
   qspawn $(kz_src)\KZOEPHDR.ERR $(cl) @<<
-c $(dll_model) $(win30dll)
-DWINVER=0x030A -W3 -Zp -G2 -DZEIDON -Gw
-Od
-Fonul.obj $(io)
-YcKZOEPHDR.H -FpKZOEPHDR.PCH
$(kz_srca)\KZOEPHDR.C
<<

$(kz_src)\KZOEPHCO.PCH : $(kz_srca)\KZOEPHDR.C         \
                         {$(kz_inc_concat)}kzoephdr.h  \
                         {$(kz_inc_concat)}kzoengaa.h  \
                         {$(kz_inc_concat)}kzoeenaa.h  \
                         {$(kz_inc_concat)}kzoeidaa.h  \
                         {$(kz_inc_concat)}kzoetdaa.h  \
                         {$(kz_inc_concat)}kzoemeaa.h  \
                         {$(kz_inc_concat)}kzoessaa.h  \
                         {$(kz_inc_concat)}kzoep1aa.h  \
                         {$(kz_inc_concat)}kzoep0aa.h  \
                         {$(kz_inc_concat)}kzoemiaa.h  \
                         {$(kz_inc_concat)}kzoengaa.hg \
                         {$(kz_inc_concat)}kzoeltaa.hg \
                         $(kz_src)\KZOEHDR1.SIG
   qspawn $(kz_src)\KZOEPHCO.ERR $(cl) @<<
-c $(dll_model) $(win30dll)
-DWINVER=0x030A -W3 -Zp -G2 -DZEIDON -Gw
-DDEBUG -D_DEBUG -Od
-Fonul.obj $(io) $(dllspec)
-YcKZOEPHDR.H -FpKZOEPHCO.PCH -Yd
$(kz_srca)\KZOEPHDR.C
<<

# ====================== .objs ========================
$(kz_obj):$(kz_src)\%.c

# Compile all the OS-INdependent stuff.
$(core_obj): $(kz_srca)\$(@B).c \
             {$(kz_inc_concat)}KZOEMEAA.H \
             {$(kz_inc_concat)}KZOEENAA.H \
             {$(kz_inc_concat)}KZOEMIAA.H \
             $(kz_src)\KZOEHDR1.SIG
   @echo ------------ $(@B).c ----------------
   @qspawn $(kz_srca)\$(@B).ERR $(cl) @<<
$(DLLFLAG)
$(pc_hdr)
$(kz_srca)\$(@B).C
-I $(kz_basew)\incz\expat
<<

# Compile all the OS-INdependent stuff.
$(core_cpp_obj): $(kz_srca)\$(@B).cpp \
                 {$(kz_inc_concat)}KZOEDECA.H \
                 {$(kz_inc_concat)}KZOEMEAA.H \
                 {$(kz_inc_concat)}KZOEENAA.H \
                 {$(kz_inc_concat)}KZOEMIAA.H \
                 $(kz_src)\KZOEHDR1.SIG
   @echo ------------ $(@B).c ----------------
   @qspawn $(kz_srca)\$(@B).ERR $(cl) @<<
$(DLLFLAG) /Fd$(kz_basew)\bin\kzoengaa.PDB
$(kz_srca)\$(@B).CPP
<<

# Compile all the OS-dependent stuff.
$(core_objo): $(kz_srcw)\$(@B).c \
              {$(kz_inc_concat)}KZOEMSAA.HG \
              {$(kz_inc_concat)}KZOENGAA.HG \
              {$(kz_inc_concat)}KZOELTAA.HG \
              {$(kz_inc_concat)}KZOEMEAA.H  \
              {$(kz_inc_concat)}KZOEENAA.H  \
              {$(kz_inc_concat)}KZOEMIAA.H  \
              {$(kz_inc_concat)}KZOEINCO.H  \
              $(kz_src)\KZOEHDR1.SIG
   @echo ------------ $(@B).c ----------------
   @qspawn $(kz_srcw)\$(@B).ERR $(cl) @<<
$(DLLFLAG) /Fd$(kz_basew)\bin\kzoengaa.PDB
$(kz_srcw)\$(@B).c
<<

# Compile the timestamp OBJ if any core OBJ's have been recompiled.
$(kz_obj)\KZOETSAA.OBJ : $(all_core_objs)
   @echo ------------ $(@B).c ----------------
   @qspawn $(kz_srcw)\$(@B).ERR $(cl) @<<
$(DLLFLAG) /Fd$(kz_basew)\bin\kzoengaa.PDB
$(kz_srca)\$(@B).c
<<

# ====================== .DLL ========================

$(kz_bin)\KZOENGAA.DLL : $(all_core_objs)             \
                         $(kz_obj)\KZOETSAA.OBJ       \
#                        $(kz_base)\MAK\KZOENGAA.MAK  \
                         $(kz_src)\KZOENGAA.DEF
   @echo ------------ KZOENGAA.DLL ----------------
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 $(kz_srcw)\kzoengaa.def > $(TEMP)\kzoengaa.def
   @qspawn $(kz_srcw)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZOENGAA.DLL
/MAP:KZOENGAA.MAP
/PDB:$(kz_bin)\kzoengaa.pdb
/DEF:$(TEMP)\KZOENGAA.DEF
/IMPLIB:$(kz_lib)r\KZOENGAA.LIB
$(linkdlls:kzoengaa.lib= )
$(all_core_objs) $(kz_obj)\KZOETSAA.OBJ
$(kz_lib)z\zdecimal.lib
$(kz_lib)z\expat\xmlparse.lib
DelayImp.lib kzoedbga.lib
/DelayLoad:xmlparse.dll
<<
#$(kz_srcw)\libz\expat
!else
   qpreproc $(kz_srcw)\kzoengaa.def > $(TEMP)\kzoengaa.def
   qspawn $(kz_srcw)\$(@B).LER $(linker) @<<
$(kz_obj)\KZOETSAA.OBJ +
$(all_core_objs: = +
) +
$(linkopt)
$(kz_bin)\KZOENGAA.DLL
KZOENGAA.MAP
$(linkdlls:kzoengaa= ) SHELL
$(TEMP)\KZOENGAA.DEF
<<
   implib $(kz_lib)r\KZOENGAA.LIB $(TEMP)\KZOENGAA.DEF
   mapsym kzoengaa
!endif

# ============================================================
# ====================== ZDLLINST.OBJ ========================
# ============================================================
$(kz_lib)r\ZDLLINST.OBJ: {$(kz_src_concat)}ZDLLINST.C
   qspawn $(kz_srca)\$(@B).ERR $(cl) @<<
-c $(dll_model) $(opt) -Fo$(kz_lib)r\zdllinst.obj $(io) $(dllspec)
$(kz_srcw)\$(@B).C
<<

# ============================================================
# ====================== KZOENGWA.EXE ========================
# ============================================================

# ====================== .obj ========================
$(kz_obj)\KZOENGWA.obj : {$(kz_src_concat)}KZOENGWA.C    \
                         {$(kz_inc_concat)}KZOENGWA.H    \
                         {$(kz_inc_concat)}KZOENGAA.HG   \
                         {$(kz_inc_concat)}KZOEMEAA.H    \
                         {$(kz_inc_concat)}KZOEENAA.H    \
                         {$(kz_inc_concat)}KZOEMIAA.H    \
                         $(kz_src)\KZOEHDR1.SIG
   qspawn $(kz_basew)\oe\KZOENGWA.ERR $(cl) @<<
$(EXEFLAG) /Fd$(kz_basew)\bin\kzoengwa.PDB
-I$(kz_basew)\incz\sqlsrvr
$(kz_srcw)\KZOENGWA.C
<<

$(kz_obj)\KZOENGWA.RES  : $(kz_src)\KZOENGWA.RC   \
                         {$(kz_inc_concat)}KZOENGWA.H
!if "$(BUILDOS)"=="win32"
   rc -d__WIN32__ -I $(kz_src) /fo$(kz_obj)\KZOENGWA.RES $(kz_src)\KZOENGWA.RC
!else
   rc -r $(kz_src)\KZOENGWA.RC /fo$(kz_obj)\KZOENGWA.RES -I $(kz_src)
!if "$(BUILDOS)"=="win"
# Following needed because of a bug in windows RC.
   move $(kz_basew)\oe\KZOENGWA.RES $(kz_obj)\KZOENGWA.RES
!endif
!endif

$(kz_bin)\KZOENGWA.EXE : $(kz_obj)\KZOENGWA.OBJ       \
                         $(kz_src)\KZOENGWA.DEF       \
#                        $(kz_base)\MAK\KZOENGAA.MAK  \
                         $(kz_obj)\KZOENGWA.RES
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 $(kz_srcw)\kzoengwa.def > $(TEMP)\kzoengwa.def
   qspawn $(kz_basew)\oe\KZOENGWA.LER $(linker) @<<
$(linkopt) $(linkoptexe)
/OUT:$(kz_bin)\KZOENGWA.EXE
/MAP:KZOENGWA.MAP
/DEF:$(TEMP)\KZOENGWA.DEF
/PDB:$(kz_basew)\bin\kzoengwa.pdb
$(linkexes)
$(kz_obj)\KZOENGWA.OBJ $(kz_obj)\KZOENGWA.RES
<<
!else
   qpreproc $(kz_srcw)\kzoengwa.def > $(TEMP)\kzoengwa.def
   qspawn $(kz_basew)\oe\KZOENGWA.LER $(linker) @<<
$(kz_obj)\KZOENGWA.OBJ     +
$(linkopt)
$(kz_bin)\KZOENGWA.EXE
KZOENGWA.MAP
$(linkexes) KZOENGAA TOOLHELP
$(TEMP)\KZOENGWA.DEF
<<
   rc  $(kz_obj)\KZOENGWA.RES $(kz_bin)\KZOENGWA.EXE
!endif

# ============================================================
# ====================== zWINSOCK.DLL ========================
# ============================================================

!if "$(BUILDOS)"=="win32"
#WIN32 zwinsock is a C++ file.
$(kz_obj)\ZWINSOCK.OBJ : {$(kz_src_concat)}ZWINSOCK.CPP {$(kz_src_concat)}ZWINSOCK.H
   qspawn $(kz_basew)\oe\ZWINSOCK.ERR $(cl) @<<
$(DLLFLAG) $(CPPFLAG) -GX /Fd$(kz_basew)\bin\zwinsock.PDB
$(kz_basew)\oe\ZWINSOCK.CPP
<<
!else
$(kz_obj)\ZWINSOCK.OBJ : {$(kz_src_concat)}ZWINSOCK.C
   qspawn $(kz_basew)\oe\ZWINSOCK.ERR $(cl) @<<
$(DLLFLAG)
$(kz_basew)\oe\ZWINSOCK.C
<<
!endif

$(kz_bin)\ZWINSOCK.DLL : $(kz_obj)\ZWINSOCK.OBJ \
                         $(kz_src)\ZWINSOCK.DEF
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 $(kz_srcw)\zwinsock.def > $(TEMP)\zwinsock.def
   qspawn $(kz_basew)\oe\ZWINSOCK.LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\ZWINSOCK.DLL
/DEF:$(TEMP)\ZWINSOCK.DEF
/MAP:ZWINSOCK.MAP
/PDB:$(kz_basew)\bin\zwinsock.pdb
$(linkdlls) wsock32.lib
$(kz_obj)\ZWINSOCK.OBJ
<<
#$(linkdlls) nafxcwd.lib wsock32.lib
!else
   qpreproc $(kz_srcw)\zwinsock.def > $(TEMP)\zwinsock.def
   qspawn $(kz_basew)\oe\ZWINSOCK.LER $(linker) @<<
$(kz_obj)\ZWINSOCK.OBJ +
$(linkopt)
$(kz_bin)\ZWINSOCK.DLL
ZWINSOCK.MAP
$(linkdlls) WINSOCK
$(TEMP)\ZWINSOCK.DEF
<<
!endif

# ============================================================
# ====================== KZOEDBGA.DLL ========================
# ============================================================

# kzoedbga is a C++ file.
$(kz_obj)\KZOEDBGA.OBJ : {$(kz_src_concat)}KZOEDBGA.CPP {$(kz_src_concat)}KZOEDBGA.H
   qspawn $(kz_basew)\oe\KZOEDBGA.ERR $(cl) @<<
$(DLLFLAG) $(CPPFLAG) -GX -DKZOEDBGA_EXPORTS /Fd$(kz_basew)\bin\kzoedbga.PDB
$(kz_basew)\oe\KZOEDBGA.CPP
<<

$(kz_bin)\KZOEDBGA.DLL : $(kz_obj)\KZOEDBGA.OBJ
   qspawn $(kz_basew)\oe\KZOEDBGA.LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZOEDBGA.DLL
/IMPLIB:$(kz_basew)\libz\KZOEDBGA.LIB
/MAP:KZOEDBGA.MAP
/PDB:$(kz_basew)\bin\kzoedbga.pdb
$(kz_obj)\KZOEDBGA.OBJ
<<

# ============================================================
# ====================== ZSIMPDIR.DLL ========================
# ============================================================

$(kz_obj)\ZSIMPDIR.OBJ : {$(kz_src_concat)}ZSIMPDIR.C
   qspawn $(kz_srca)\ZSIMPDIR.ERR $(cl) @<<
$(DLLFLAG) -GX -DZSIMPDIR_EXPORTS /Fd$(kz_basew)\bin\zSimpDir.PDB
$(kz_srca)\ZSIMPDIR.C
<<

$(kz_bin)\ZSIMPDIR.DLL : $(kz_obj)\ZSIMPDIR.OBJ
   qspawn $(kz_basew)\oe\ZSIMPDIR.LER $(linker) @<<
$(linkopt) $(linkoptdll) kzoengaa.lib
/DEF:$(kz_basew)\oe\ZSIMPDIR.DEF
/OUT:$(kz_bin)\ZSIMPDIR.DLL
/IMPLIB:$(kz_basew)\libz\ZSIMPDIR.LIB
/MAP:ZSIMPDIR.MAP
/PDB:$(kz_basew)\bin\zSimpDir.pdb
$(kz_obj)\ZSIMPDIR.OBJ
<<

# ============================================================
# ====================== KZOECLNT.EXE ========================
# ============================================================
$(kz_obj)\KZOECLNT.obj : {$(kz_src_concat)}KZOECLNT.C    \
                         {$(kz_inc_concat)}KZOENGAA.H    \
                         {$(kz_inc_concat)}KZOEMEAA.H    \
                         {$(kz_inc_concat)}KZOEP1AA.H    \
                         $(kz_src)\KZOEHDR1.SIG
   qspawn $(kz_srcw)\$(@B).ERR $(cl) @<<
$(EXEFLAG) /Fd$(kz_basew)\bin\kzoeclnt.PDB
$(kz_srcw)\$(@B).C
<<

$(kz_obj)\KZOECLNT.RES  : $(kz_src)\KZOECLNT.RC  $(kz_src)\KZOENGWA.H
!if "$(BUILDOS)"=="win32"
   rc -d__WIN32__ -I $(kz_src) /fo$(kz_obj)\KZOECLNT.RES $(kz_src)\KZOECLNT.RC
!else
   rc -r $(kz_src)\KZOECLNT.RC $(kz_obj)\KZOECLNT.RES -I $(kz_src)
!if "$(BUILDOS)"=="win"
# Following needed because of a bug in windows RC.
   move $(kz_basew)\oe\KZOECLNT.RES $(kz_obj)\KZOECLNT.RES
!endif
!endif

$(kz_bin)\KZOECLNT.EXE : $(kz_obj)\KZOECLNT.OBJ       \
                         $(kz_src)\KZOECLNT.DEF       \
#                        $(kz_base)\MAK\KZOENGAA.MAK  \
                         $(kz_obj)\KZOECLNT.RES
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 $(kz_srcw)\kzoeclnt.def > $(TEMP)\kzoeclnt.def
   qspawn $(kz_basew)\oe\KZOECLNT.LER $(linker) @<<
$(linkopt) $(linkoptexe)
/OUT:$(kz_bin)\KZOECLNT.EXE
/PDB:$(kz_basew)\bin\KZOECLNT.PDB
/MAP:KZOECLNT.MAP
/DEF:$(TEMP)\KZOECLNT.DEF
$(linkexes)
$(kz_obj)\KZOECLNT.OBJ $(kz_obj)\KZOECLNT.RES
<<
!else
   qpreproc $(kz_srcw)\kzoeclnt.def > $(TEMP)\kzoeclnt.def
   qspawn $(kz_basew)\oe\KZOECLNT.LER $(linker) @<<
$(kz_obj)\KZOECLNT.OBJ     +
$(linkopt)
$(kz_bin)\KZOECLNT.EXE
KZOECLNT.MAP
$(linkexes) KZOENGAA
$(TEMP)\KZOECLNT.DEF
<<
   rc  $(kz_obj)\KZOECLNT.RES $(kz_bin)\KZOECLNT.EXE
!endif


# ============================================================
# ====================== KZSCHEDT.EXE ========================
# ============================================================
$(kz_obj)\KZSCHEDT.obj : {$(kz_src_concat)}KZSCHEDT.C    \
                         {$(kz_inc_concat)}KZOENGAA.H    \
                         {$(kz_inc_concat)}KZOEMEAA.H    \
                         {$(kz_inc_concat)}KZOEP1AA.H    \
                         $(kz_src)\KZOEHDR1.SIG
   qspawn $(kz_srcw)\$(@B).ERR $(cl) @<<
$(EXEFLAG) /Fd$(kz_basew)\bin\KZSCHEDT.PDB
$(kz_srcw)\$(@B).C
<<

$(kz_obj)\KZSCHEDT.RES  : $(kz_src)\KZSCHEDT.RC  $(kz_src)\KZOENGWA.H
!if "$(BUILDOS)"=="win32"
   rc -d__WIN32__ -I $(kz_src) /fo$(kz_obj)\KZSCHEDT.RES $(kz_src)\KZSCHEDT.RC
!else
   rc -r $(kz_src)\KZSCHEDT.RC $(kz_obj)\KZSCHEDT.RES -I $(kz_src)
!if "$(BUILDOS)"=="win"
# Following needed because of a bug in windows RC.
   move $(kz_basew)\oe\KZSCHEDT.RES $(kz_obj)\KZSCHEDT.RES
!endif
!endif

$(kz_bin)\KZSCHEDT.EXE : $(kz_obj)\KZSCHEDT.OBJ       \
                         $(kz_src)\KZSCHEDT.DEF       \
#                        $(kz_base)\MAK\KZOENGAA.MAK  \
                         $(kz_obj)\KZSCHEDT.RES
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 $(kz_srcw)\KZSCHEDT.def > $(TEMP)\KZSCHEDT.def
   qspawn $(kz_basew)\oe\KZSCHEDT.LER $(linker) @<<
$(linkopt) $(linkoptexe)
/OUT:$(kz_bin)\KZSCHEDT.EXE
/PDB:$(kz_basew)\bin\KZSCHEDT.PDB
/MAP:KZSCHEDT.MAP
/DEF:$(TEMP)\KZSCHEDT.DEF
$(linkexes)
$(kz_obj)\KZSCHEDT.OBJ $(kz_obj)\KZSCHEDT.RES
<<
!else
   qpreproc $(kz_srcw)\KZSCHEDT.def > $(TEMP)\KZSCHEDT.def
   qspawn $(kz_basew)\oe\KZSCHEDT.LER $(linker) @<<
$(kz_obj)\KZSCHEDT.OBJ     +
$(linkopt)
$(kz_bin)\KZSCHEDT.EXE
KZSCHEDT.MAP
$(linkexes) KZOENGAA
$(TEMP)\KZSCHEDT.DEF
<<
   rc  $(kz_obj)\KZSCHEDT.RES $(kz_bin)\KZSCHEDT.EXE
!endif


SIG1:
   -touch $(kz_src)\KZOEHDR1.SIG

CLEAN:
   -del /q $(kz_obj)\*.*
   -del $(kz_bin)\kzoe*.*
   -del $(kz_bin)\zsimp*.*
   -del $(kz_bin)\KZSCHEDT.*
   -del $(kz_bin)\zwinsock.*
   -del $(kz_lib)z\kzoe*.*
   -del $(kz_lib)r\kzoe*.*
   -del $(kz_lib)r\kzoe*.exp
   -del $(kz_lib)r\zwinsock.*
   -del $(kz_src)\*.err
   -del $(kz_srcw)\*.map
   -del $(kz_srcw)\*.err
   -del $(kz_srcw)\*.ler
   -del $(kz_srcw)\*.pdb
   -del $(kz_srcw)\*.sbr
   -del $(kz_src)\kzoephdr.pch
   -del $(kz_src)\kzoephco.pch
   -del $(kz_lib)r\zdllinst.obj

CLEANPCH:
   -del $(kz_src)\kzoephdr.pch
   -del $(kz_src)\kzoephco.pch

$(kz_src)\KZOEHDR1.SIG:
   -touch $(kz_src)\KZOEHDR1.SIG
