ALL: SyncXOD.exe

!ifdef DEBUG
CC   = cl /W3 -Zp -G3 -DWIN32 -Gf -DDEBUG -Od -Z7
LINK = /MAP /SUBSYSTEM:console /DEBUG:FULL
!else
CC   = cl /W3 -Zp -G3 -DWIN32 -Gf -Oselg
LINK = /MAP /SUBSYSTEM:native
!endif

OBJS = SyncXOD.obj

.c.obj:
    qspawn $*.err $(CC) -c $*.c -D__WIN32__ -DZEIDON

SyncXOD.exe : $(OBJS)
   link $(LINK) @<<
/OUT:SyncXOD.exe
/MAP:SyncXOD.MAP
$(OBJS) kzoengaa.lib
<<
