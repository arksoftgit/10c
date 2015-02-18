ALL: OclnCsv.exe
!include "d:\lplr\zencas\zenv.hnm"
!ifdef DEBUG
CC   = cl /W3 -Zp -G3 -DWIN32 -Gf -DDEBUG -Od -Z7
LINK = /MAP /SUBSYSTEM:console /DEBUG:FULL
!else
CC   = cl /W3 -Zp -G3 -DWIN32 -Gf -Oselg
LINK = /MAP /SUBSYSTEM:native
!endif

OBJS = tzbldxod.obj

.c.obj:
    qspawn $*.err $(CC) -c $*.c -D__WIN32__ -DZEIDON

tzbldxod.exe : $(OBJS)
   link $(LINK) @<<
/OUT:OclnCsv.exe
/MAP:OclnCsv.MAP
$(OBJS) kzoengaa.lib $(LINKDLLS) objlib\ZGLOBAL1.lib wininet.lib tzvmlip.lib
<<
