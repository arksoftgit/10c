!INCLUDE \$(KZV)\MAK\KZVERS.HNM
!INCLUDE \$(KZV)\MAK\KZCOMMON.HNM
kz_srca = $(kz_basea)\oe
kz_srcw = .
kz_inc  = $(kz_basew)\inc
kz_obj  = .

ALL: $(kz_bin)\zdecimal.dll

z_obj = $(kz_obj)\zdecimal.obj \
        $(kz_obj)\mtherr.obj   \
        $(kz_obj)\econst.obj   \
        $(kz_obj)\ieee.obj

$(z_obj): $(kz_srcw)\$(@B).c \
          {$(kz_inc_concat)}zdecimal.h
   qspawn $(kz_srcw)\$(@B).ERR $(cl) @<<
$(DLLFLAG)
$(kz_srcw)\$(@B).c
<<

$(kz_bin)\zdecimal.dll : $(z_obj)
   qspawn $(kz_srcw)\$(@B).LER $(linker) @<<
$(linkopt) $(linkoptdll)
/OUT:$(kz_bin)\zdecimal.DLL
/MAP:zdecimal.MAP
/DEF:$(kz_srcw)\zdecimal.DEF
$(linkdlls)
$(z_obj)
<<

CLEAN:
   -del $(kz_bin)\zdecimal.dll
   -del $(kz_obj)\zdecimal.obj
   -del $(kz_srcw)\zdecimal.err
   -del $(kz_srcw)\zdecimal.ler
