# CHANGE LOG
#
# 2001.03.27  DKS
#     Added correct path for kzhgenky.def file.
#
# 2001.02.07  RG
#     Set variable blddbh so we can use zdctl.lib in file
#     commw32.hnm
# 2001.01.11  RG
#     build *.pdb-files everytime
# 1998.08.21  DGC
#     Added dummy dbhandler (kzhsqlxx.???)
#
# 1998.08.26  DGC
#     Added Win32 SqlBase dbhandler for TMV.
#
# 1998.10.15  DGC
#     Removed references to win95.
#
# 1998.10.16  DGC
#     Changed reference of ODBC library.
#
# 1998.11.10  DGC
#     Added kzhsqlga.obj to make of kzhsqldb.dll
#
# 1998.11.23  DGC
#     Fixed problem introduced in ODBC make.

blddbh = y
!INCLUDE \$(KZV)\MAK\KZVERS.HNM
!INCLUDE \$(KZV)\MAK\KZCOMMON.HNM
blddbh =
kz_srca = $(kz_basea)\oe

!if "$(cl)"=="cl"
!if "$(BUILDOS)"=="win"
dllspec = -FPc $(CL)
exespec = -FPc $(CL)
!else
dllspec = $(CL)
exespec = $(CL)
!endif
!endif

!if "$(BUILDOS)"=="win"
TARGETS = $(kz_bin)\KZHDBVAA.DLL \
          $(kz_bin)\KZHDBVAB.DLL \
          $(kz_obj)\KZHSQLGA.OBJ \
          $(kz_bin)\KZHSQLSA.DLL \
          $(kz_bin)\KZHSQLSB.DLL \
          $(kz_bin)\KZHSQLMB.DLL \
          $(kz_bin)\KZHSQLBA.DLL \
          $(kz_bin)\KZHSQLBB.DLL \
          $(kz_bin)\KZHSQLDB.DLL \
          $(kz_bin)\KZHGENKY.DLL
!else

TARGETS = $(kz_obj)\KZHSQLGA.OBJ \
          $(kz_bin)\KZHGENKY.DLL

!ifndef NO_ACCESS
TARGETS = $(TARGETS) $(kz_bin)\KZHSQLAB.DLL
!endif

!ifndef NO_ODBC
TARGETS = $(TARGETS) $(kz_bin)\KZHSQLOA.DLL
TARGETS = $(TARGETS) $(kz_bin)\KZHSQLOB.DLL
!endif

!ifdef DB2SDK
TARGETS = $(TARGETS) $(kz_bin)\KZHSQLDA.DLL
!endif

!ifndef NO_DB2SDK
TARGETS = $(TARGETS) $(kz_bin)\KZHSQLDB.DLL
!endif

!ifdef SQLBASESDK
TARGETS = $(TARGETS) $(kz_bin)\KZHSQLBA.DLL
!endif

!ifndef NO_SQLSERVER
TARGETS = $(TARGETS) $(kz_bin)\KZHSQLSB.DLL
!endif

!ifndef NO_SQLPOSTGRESQL
TARGETS = $(TARGETS) $(kz_bin)\KZHSQLPB.DLL
!endif

!ifndef NO_MYSQL
TARGETS = $(TARGETS) $(kz_bin)\KZHSQLMB.DLL
!endif

!ifndef NO_DUMMY
TARGETS = $(TARGETS) $(kz_bin)\KZHSQLXX.DLL
!endif

!endif

DLLFLAG = $(DLLFLAG) -DQUINSOFT

ALL : $(TARGETS)

#============================================================================
#================= KZHDBVAA.DLL =============================================
#============================================================================

$(kz_obj)\KZHDBVAA.OBJ : {$(kz_src_concat)}KZHDBVAA.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   qspawn $(kz_srca)\$(@B).ERR $(cl) @<<
$(cl) $(DLLFLAG) /Fd$(kz_basew)\bin\kzhdbvaa.PDB
-I\$(KZV)\w\incz\rdm321
$(kz_base)\a\oe\KZHDBVAA.C
<<

$(kz_bin)\KZHDBVAA.DLL : $(kz_obj)\KZHDBVAA.OBJ \
                         $(kz_src)\KZHDBVAA.DEF \
                         \$(KZV)\w\libr\zdrapp.lib
   $(linker) @<<
$(kz_obj)\KZHDBVAA.OBJ +
$(linkopt)
$(kz_bin)\KZHDBVAA.DLL
/PDB:$(kz_bin)\kzhdbvaa.pdb
KZHDBVAA.MAP
$(linkdlls) kzoengaa zdrapp \$(KZV)\w\libz\rdm321\vista
$(kz_src)\KZHDBVAA.DEF
<<

$(kz_obj)\KZHDBVAB.OBJ : {$(kz_src_concat)}KZHDBVAB.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   qspawn $(kz_base)\a\oe\KZHDBVAB.ERR $(cl) @<<
$(DLLFLAG) /Fd$(kz_basew)\bin\kzhdbvab.PDB
-I\$(KZV)\a\tz
$(kz_base)\a\oe\KZHDBVAB.C
<<

$(kz_bin)\KZHDBVAB.DLL : $(kz_obj)\KZHDBVAB.OBJ \
                         $(kz_src)\KZHDBVAB.DEF
   qspawn $(kz_base)\a\oe\KZHDBVAB.LER $(linker) @<<
$(kz_obj)\KZHDBVAB.OBJ +
$(linkopt)
$(kz_bin)\KZHDBVAB.DLL
/PDB:$(kz_bin)\kzhdbvab.pdb
KZHDBVAB.MAP
$(linkdlls) kzoengaa zdrapp
$(kz_src)\KZHDBVAB.DEF
<<

#============================================================================
#================= KZHSQLGA.OBJ =============================================
#============================================================================

$(kz_obj)\KZHSQLGA.OBJ : {$(kz_src_concat)}KZHSQLGA.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLGA.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_srca)\$(@B).ERR $(cl) @<<
$(DLLFLAG)
$(kz_base)\a\oe\KZHSQLGA.C
<<

#============================================================================
#================= KZHSQLBA.DLL =============================================
#================= KZHSQLBB.DLL =============================================
#============================================================================

$(kz_obj)\KZHSQLBA.OBJ : {$(kz_src_concat)}KZHSQLXA.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLBA.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_base)\a\oe\KZHSQLBA.ERR $(cl) @<<
$(DLLFLAG) -DSQLBASE /Fd$(kz_basew)\bin\kzhsqlba.PDB
-I\$(KZV)\w\incz\sqlbase
$(kz_base)\a\oe\KZHSQLXA.C
<<

$(kz_bin)\KZHSQLBA.DLL : $(kz_obj)\KZHSQLBA.OBJ \
                         $(kz_src)\KZHSQLXA.DEF \
                         $(kz_obj)\KZHSQLGA.OBJ
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLBA.DLL ---------------------------
   @echo --------------------------------------------------------
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 SQLBASE=1 $(kz_src)\KZHSQLXA.DEF > $(TEMP)\$(@B).DEF
   qspawn $(kz_srca)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\$(@B).DLL
/PDB:$(kz_bin)\kzhsqlba.pdb
/MAP:$(@B).MAP
/DEF:$(TEMP)\$(@B).DEF
$(kz_obj)\$(@B).OBJ $(kz_obj)\KZHSQLGA.OBJ $(SQLBASESDK)\SQLAPIW.LIB $(linkdlls)
<<
!else
   qpreproc SQLBASE=1 $(kz_src)\KZHSQLXA.DEF > $(TEMP)\KZHSQLBA.DEF
   qspawn $(kz_base)\a\oe\KZHSQLBA.LER $(linker) @<<
$(kz_obj)\KZHSQLBA.OBJ +
$(kz_obj)\KZHSQLGA.OBJ +
$(linkopt)
$(kz_bin)\KZHSQLBA.DLL
KZHSQLBA.MAP
$(linkdlls) kzoengaa \$(KZV)\w\libz\sqlbase\sqlapiw
$(TEMP)\KZHSQLBA.DEF
<<
!endif

$(kz_obj)\KZHSQLBB.OBJ : {$(kz_src_concat)}KZHSQLXB.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLBB.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_base)\a\oe\KZHSQLBB.ERR $(cl) @<<
$(DLLFLAG) -DSQLBASE /Fd$(kz_basew)\bin\kzhsqlbb.PDB
-I\$(KZV)\a\tz
$(kz_base)\a\oe\KZHSQLXB.C
<<

$(kz_bin)\KZHSQLBB.DLL : $(kz_obj)\KZHSQLBB.OBJ \
                         $(kz_src)\KZHSQLXB.DEF
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLBB.DLL ---------------------------
   @echo --------------------------------------------------------
   qpreproc SQLBASE=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLBB.DEF
   qspawn $(kz_base)\a\oe\KZHSQLBB.LER $(linker) @<<
$(kz_obj)\KZHSQLBB.OBJ +
$(linkopt)
$(kz_bin)\KZHSQLBB.DLL
/PDB:$(kz_bin)\kzhsqlbb.pdb
KZHSQLBB.MAP
$(linkdlls) kzoengaa
$(TEMP)\KZHSQLBB.DEF
<<

#============================================================================
#================= KZHSQLAB.DLL =============================================
#============================================================================
$(kz_obj)\KZHSQLAB.OBJ : {$(kz_src_concat)}KZHSQLXB.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLAB.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_base)\a\oe\KZHSQLAB.ERR $(cl) @<<
$(DLLFLAG) -DACCESS /Fd$(kz_basew)\bin\kzhsqlab.PDB
$(kz_base)\a\oe\KZHSQLXB.C
<<

$(kz_bin)\KZHSQLAB.DLL : $(kz_obj)\KZHSQLAB.OBJ \
                         $(kz_src)\KZHSQLXB.DEF
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLAB.DLL ---------------------------
   @echo --------------------------------------------------------
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 ACCESS=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLAB.DEF
   qspawn $(kz_srca)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZHSQLAB.DLL
/MAP:KZHSQLAB.MAP
/PDB:$(kz_bin)\kzhsqlab.pdb
/DEF:$(TEMP)\KZHSQLAB.DEF
$(kz_obj)\KZHSQLAB.OBJ $(linkdlls)
<<
!else
   qpreproc ACCESS=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLAB.DEF
   qspawn $(kz_base)\a\oe\KZHSQLAB.LER $(linker) @<<
$(kz_obj)\KZHSQLAB.OBJ +
$(linkopt)
$(kz_bin)\KZHSQLAB.DLL
KZHSQLAB.MAP
$(linkdlls) kzoengaa
$(TEMP)\KZHSQLAB.DEF
<<
!endif

#============================================================================
#================= KZHSQLOA.DLL =============================================
#============================================================================
$(kz_obj)\KZHSQLOA.OBJ : {$(kz_src_concat)}KZHSQLXA.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLOA.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_srca)\$(@B).ERR $(cl) @<<
$(DLLFLAG) -DODBC /Fd$(kz_basew)\bin\kzhsqloa.PDB
$(kz_base)\a\oe\KZHSQLXA.C
<<

$(kz_bin)\KZHSQLOA.DLL : $(kz_obj)\KZHSQLOA.OBJ \
                         $(kz_src)\KZHSQLXA.DEF \
                         $(kz_obj)\KZHSQLGA.OBJ
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLOA.DLL ---------------------------
   @echo --------------------------------------------------------
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 ODBC=1 $(kz_src)\KZHSQLXA.DEF > $(TEMP)\KZHSQLOA.DEF
   qspawn $(kz_srca)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZHSQLOA.DLL
/PDB:$(kz_bin)\kzhsqloa.pdb
/MAP:KZHSQLOA.MAP
/DEF:$(TEMP)\KZHSQLOA.DEF
$(kz_obj)\KZHSQLOA.OBJ $(kz_obj)\KZHSQLGA.OBJ ODBC32.LIB $(linkdlls) kzoedbga.lib NTWDBLIB.LIB
<<
!else
   qpreproc ODBC=1 $(kz_src)\KZHSQLXA.DEF > $(TEMP)\KZHSQLOA.DEF
   qspawn $(kz_base)\a\oe\KZHSQLOA.LER $(linker) @<<
$(kz_obj)\KZHSQLOA.OBJ +
$(kz_obj)\KZHSQLGA.OBJ +
$(linkopt)
$(kz_bin)\KZHSQLOA.DLL
KZHSQLOA.MAP
$(linkdlls) $(DB2SDK)\LIB\DB2API.LIB ODBC32.LIB kzoengaa
$(TEMP)\KZHSQLOA.DEF
<<
!endif

$(kz_obj)\KZHSQLOB.OBJ : {$(kz_src_concat)}KZHSQLXB.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLOB.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_base)\a\oe\KZHSQLOB.ERR $(cl) @<<
$(DLLFLAG) -DODBC /Fd$(kz_basew)\bin\kzhsqlob.PDB
$(kz_base)\a\oe\KZHSQLXB.C
<<

$(kz_bin)\KZHSQLOB.DLL : $(kz_obj)\KZHSQLOB.OBJ \
                         $(kz_src)\KZHSQLXB.DEF
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLOB.DLL ---------------------------
   @echo --------------------------------------------------------
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 ODBC=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLOB.DEF
   qspawn $(kz_srca)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZHSQLOB.DLL
/PDB:$(kz_bin)\kzhsqlob.pdb
/MAP:KZHSQLOB.MAP
/DEF:$(TEMP)\KZHSQLOB.DEF
$(kz_obj)\KZHSQLOB.OBJ $(linkdlls)
<<
!else
   qpreproc ODBC=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLOB.DEF
   qspawn $(kz_base)\a\oe\KZHSQLOB.LER $(linker) @<<
$(kz_obj)\KZHSQLOB.OBJ +
$(linkopt)
$(kz_bin)\KZHSQLOB.DLL
KZHSQLOB.MAP
$(linkdlls) kzoengaa
$(TEMP)\KZHSQLOB.DEF
<<
!endif

#============================================================================
#================= KZHSQLDA.DLL =============================================
#============================================================================

$(kz_obj)\KZHSQLDA.OBJ : {$(kz_src_concat)}KZHSQLXA.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLDA.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_srca)\$(@B).ERR $(cl) @<<
$(DLLFLAG)  -DDB2WIN -DDB2 /Fd$(kz_basew)\bin\kzhsqlda.PDB
-I$(DB2SDK)\include
$(kz_base)\a\oe\KZHSQLXA.C
<<

$(kz_bin)\KZHSQLDA.DLL : $(kz_obj)\KZHSQLDA.OBJ \
                         $(kz_src)\KZHSQLXA.DEF \
                         $(kz_obj)\KZHSQLGA.OBJ
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLDA.DLL ---------------------------
   @echo --------------------------------------------------------
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 DB2=1 $(kz_src)\KZHSQLXA.DEF > $(TEMP)\KZHSQLDA.DEF
   qspawn $(kz_srca)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZHSQLDA.DLL
/PDB:$(kz_bin)\kzhsqlda.pdb
/MAP:KZHSQLDA.MAP
/DEF:$(TEMP)\KZHSQLDA.DEF
$(kz_obj)\KZHSQLDA.OBJ $(kz_obj)\KZHSQLGA.OBJ $(DB2SDK)\LIB\DB2CLI.LIB $(linkdlls)
<<
!else
   qpreproc DB2=1 $(kz_src)\KZHSQLXA.DEF > $(TEMP)\KZHSQLDA.DEF
   qspawn $(kz_base)\a\oe\KZHSQLDA.LER $(linker) @<<
$(kz_obj)\KZHSQLDA.OBJ +
$(kz_obj)\KZHSQLGA.OBJ +
$(linkopt)
$(kz_bin)\KZHSQLDA.DLL
KZHSQLDA.MAP
$(linkdlls) $(DB2SDK)\LIB\DB2API.LIB $(DB2SDK)\LIB\DB2CLI.LIB kzoengaa
$(TEMP)\KZHSQLDA.DEF
<<
!endif

$(kz_obj)\KZHSQLDB.OBJ : {$(kz_src_concat)}KZHSQLXB.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLDB.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_base)\a\oe\KZHSQLDB.ERR $(cl) @<<
$(DLLFLAG) -DDB2 /Fd$(kz_basew)\bin\kzhsqldb.PDB
$(kz_base)\a\oe\KZHSQLXB.C
<<

$(kz_bin)\KZHSQLDB.DLL : $(kz_obj)\KZHSQLDB.OBJ \
                         $(kz_obj)\KZHSQLGA.OBJ \
                         $(kz_src)\KZHSQLXB.DEF
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLDB.DLL ---------------------------
   @echo --------------------------------------------------------
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 DB2=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLDB.DEF
   qspawn $(kz_srca)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZHSQLDB.DLL
/PDB:$(kz_bin)\kzhsqldb.pdb
/MAP:KZHSQLDB.MAP
/DEF:$(TEMP)\KZHSQLDB.DEF
$(kz_obj)\KZHSQLDB.OBJ $(kz_obj)\KZHSQLGA.OBJ $(linkdlls)
<<
!else
   qpreproc DB2=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLDB.DEF
   qspawn $(kz_base)\a\oe\KZHSQLDB.LER $(linker) @<<
$(kz_obj)\KZHSQLDB.OBJ +
$(linkopt)
$(kz_bin)\KZHSQLDB.DLL
KZHSQLDB.MAP
$(linkdlls) kzoengaa
$(TEMP)\KZHSQLDB.DEF
<<
!endif

#============================================================================
#================= KZHSQLMB.DLL =============================================
#============================================================================
$(kz_obj)\KZHSQLMB.OBJ : {$(kz_src_concat)}KZHSQLXB.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLMB.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_base)\a\oe\KZHSQLMB.ERR $(cl) @<<
$(DLLFLAG) -DMYSQL /Fd$(kz_basew)\bin\kzhsqlmb.PDB
-I\$(KZV)\a\tz
$(kz_base)\a\oe\KZHSQLXB.C
<<

$(kz_bin)\KZHSQLMB.DLL : $(kz_obj)\KZHSQLMB.OBJ \
                         $(kz_src)\KZHSQLXB.DEF
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLMB.DLL ---------------------------
   @echo --------------------------------------------------------
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 SQLSERVER=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLMB.DEF
   qspawn $(kz_srca)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZHSQLMB.DLL
/PDB:$(kz_bin)\kzhsqlmb.pdb
/MAP:KZHSQLMB.MAP
/DEF:$(TEMP)\KZHSQLMB.DEF
$(kz_obj)\KZHSQLMB.OBJ $(linkdlls)
<<
!else
   qpreproc SQLSERVER=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLMB.DEF
   qspawn $(kz_base)\a\oe\KZHSQLMB.LER $(linker) @<<
$(kz_obj)\KZHSQLMB.OBJ +
$(linkopt)
$(kz_bin)\KZHSQLMB.DLL
KZHSQLMB.MAP
$(linkdlls) kzoengaa
$(TEMP)\KZHSQLMB.DEF
<<
!endif


#============================================================================
#================= KZHSQLSA.DLL =============================================
#================= KZHSQLSB.DLL =============================================
#============================================================================

$(kz_obj)\KZHSQLSA.OBJ : {$(kz_src_concat)}KZHSQLXA.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLSA.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_base)\a\oe\KZHSQLSA.ERR $(cl) @<<
$(DLLFLAG) -DSQLSERVER /Fd$(kz_basew)\bin\kzhsqlsa.PDB
-I\$(KZV)\w\incz\sqlsrvr
$(kz_base)\a\oe\KZHSQLXA.C
<<

$(kz_bin)\KZHSQLSA.DLL : $(kz_obj)\KZHSQLSA.OBJ \
                         $(kz_src)\KZHSQLXA.DEF \
                         $(kz_obj)\KZHSQLGA.OBJ
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLSA.DLL ---------------------------
   @echo --------------------------------------------------------
   qpreproc SQLSERVER=1 $(kz_src)\KZHSQLXA.DEF > $(TEMP)\KZHSQLSA.DEF
   qspawn $(kz_base)\a\oe\KZHSQLSA.LER $(linker) @<<
$(kz_obj)\KZHSQLSA.OBJ +
$(kz_obj)\KZHSQLGA.OBJ +
$(linkopt)
$(kz_bin)\KZHSQLSA.DLL
/PDB:$(kz_bin)\kzhsqlsa.pdb
KZHSQLSA.MAP
$(linkdlls) kzoengaa \$(KZV)\w\libz\sqlsrvr\w3dblib
$(TEMP)\KZHSQLSA.DEF
<<

$(kz_obj)\KZHSQLSB.OBJ : {$(kz_src_concat)}KZHSQLXB.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLSB.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_base)\a\oe\KZHSQLSB.ERR $(cl) @<<
$(DLLFLAG) -DSQLSERVER /Fd$(kz_basew)\bin\kzhsqlsb.PDB
-I\$(KZV)\a\tz
$(kz_base)\a\oe\KZHSQLXB.C
<<

$(kz_bin)\KZHSQLSB.DLL : $(kz_obj)\KZHSQLSB.OBJ \
                         $(kz_src)\KZHSQLXB.DEF
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLSB.DLL ---------------------------
   @echo --------------------------------------------------------
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 SQLSERVER=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLSB.DEF
   qspawn $(kz_srca)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZHSQLSB.DLL
/PDB:$(kz_bin)\kzhsqlsb.pdb
/MAP:KZHSQLSB.MAP
/DEF:$(TEMP)\KZHSQLSB.DEF
$(kz_obj)\KZHSQLSB.OBJ $(linkdlls)
<<
!else
   qpreproc SQLSERVER=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLSB.DEF
   qspawn $(kz_base)\a\oe\KZHSQLSB.LER $(linker) @<<
$(kz_obj)\KZHSQLSB.OBJ +
$(linkopt)
$(kz_bin)\KZHSQLSB.DLL
KZHSQLSB.MAP
$(linkdlls) kzoengaa
$(TEMP)\KZHSQLSB.DEF
<<
!endif

#============================================================================
#================= KZHSQLPB.DLL =============================================
#============================================================================

$(kz_obj)\KZHSQLPB.OBJ : {$(kz_src_concat)}KZHSQLXB.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLPB.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_base)\a\oe\KZHSQLPB.ERR $(cl) @<<
$(DLLFLAG) -DPOSTGRESQL /Fd$(kz_basew)\bin\kzhsqlsb.PDB
-I\$(KZV)\a\tz
$(kz_base)\a\oe\KZHSQLXB.C
<<

$(kz_bin)\KZHSQLPB.DLL : $(kz_obj)\KZHSQLPB.OBJ \
                         $(kz_src)\KZHSQLXB.DEF
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLPB.DLL ---------------------------
   @echo --------------------------------------------------------
   qpreproc __WIN32__=1 POSTGRESQL=1 $(kz_src)\KZHSQLXB.DEF > $(TEMP)\KZHSQLPB.DEF
   qspawn $(kz_srca)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZHSQLPB.DLL
/PDB:$(kz_bin)\KZHSQLPB.pdb
/MAP:KZHSQLPB.MAP
/DEF:$(TEMP)\KZHSQLPB.DEF
$(kz_obj)\KZHSQLPB.OBJ $(linkdlls)
<<

#============================================================================
#================= KZHSQLXX.DLL =============================================
#============================================================================

$(kz_obj)\KZHSQLXX.OBJ : {$(kz_src_concat)}KZHSQLXA.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLXX.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_srca)\$(@B).ERR $(cl) @<<
$(DLLFLAG)  -DDUMMY /Fd$(kz_basew)\bin\kzhsqlxx.PDB
$(kz_base)\a\oe\KZHSQLXA.C
<<

$(kz_bin)\KZHSQLXX.DLL : $(kz_obj)\KZHSQLXX.OBJ \
                         $(kz_src)\KZHSQLXA.DEF \
                         $(kz_obj)\KZHSQLGA.OBJ
   @echo --------------------------------------------------------
   @echo --------------- KZHSQLXX.DLL ---------------------------
   @echo --------------------------------------------------------
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 DUMMY=1 $(kz_src)\KZHSQLXA.DEF > $(TEMP)\KZHSQLXX.DEF
   qspawn $(kz_srca)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZHSQLXX.DLL
/PDB:$(kz_bin)\kzhsqlxx.pdb
/MAP:KZHSQLXX.MAP
/DEF:$(TEMP)\KZHSQLXX.DEF
$(kz_obj)\KZHSQLXX.OBJ $(kz_obj)\KZHSQLGA.OBJ $(linkdlls)
<<
!else
   qpreproc DUMMY=1 $(kz_src)\KZHSQLXA.DEF > $(TEMP)\KZHSQLXX.DEF
   qspawn $(kz_base)\a\oe\KZHSQLXX.LER $(linker) @<<
$(kz_obj)\KZHSQLXX.OBJ +
$(kz_obj)\KZHSQLGA.OBJ +
$(linkopt)
$(kz_bin)\KZHSQLXX.DLL
KZHSQLXX.MAP
$(linkdlls) kzoengaa
$(TEMP)\KZHSQLXX.DEF
<<
!endif

#============================================================================
#================= KZHGENKY.DLL =============================================
#============================================================================

$(kz_obj)\KZHGENKY.OBJ : {$(kz_src_concat)}KZHGENKY.C \
                         {$(kz_inc_concat)}KZOEMEAA.H
   @echo --------------------------------------------------------
   @echo --------------- KZHGENKY.OBJ ---------------------------
   @echo --------------------------------------------------------
   qspawn $(kz_srca)\$(@B).ERR $(cl) @<<
$(DLLFLAG) /Fd$(kz_basew)\bin\kzhgenky.PDB
$(kz_base)\a\oe\KZHGENKY.C
<<

$(kz_bin)\KZHGENKY.DLL : $(kz_obj)\KZHGENKY.OBJ \
                         $(kz_src)\KZHGENKY.DEF
   @echo --------------------------------------------------------
   @echo --------------- KZHGENKY.DLL ---------------------------
   @echo --------------------------------------------------------
!if "$(BUILDOS)"=="win32"
   qpreproc __WIN32__=1 $(kz_src)\kzhgenky.def > $(TEMP)\kzhgenky.def
   $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\KZHGENKY.DLL
/PDB:$(kz_bin)\kzhgenky.pdb
/MAP:KZHGENKY.MAP
/DEF:$(TEMP)\KZHGENKY.DEF
$(kz_obj)\KZHGENKY.OBJ $(linkdlls)
<<
!else
   qpreproc kzhgenky.def > $(TEMP)\kzhgenky.def
   $(linker) @<<
$(kz_obj)\KZHGENKY.OBJ +
$(linkopt)
$(kz_bin)\KZHGENKY.DLL
KZHGENKY.MAP
$(linkdlls)
$(TEMP)\KZHGENKY.DEF
<<
!endif

CLEAN:
   -del $(kz_bin)\kzh*.dll
   -del $(kz_bin)\kzh*.ilk
   -del $(kz_bin)\kzh*.pdb
   -del $(kz_bin)\kzh*.exp
   -del $(kz_bin)\kzh*.lib
   -del $(kz_obj)\kzh*.obj
   -del $(kz_srca)\kzh*.err
   -del $(kz_srca)\kzh*.ler
   -del $(kz_srcw)\kzh*.map
