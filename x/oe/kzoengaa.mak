SHELL = /bin/sh
kz_bin   = $(KZV)/x/bin
kz_obj   = $(KZV)/x/oe/obj
kz_src   = $(KZV)/a/oe
kz_srcx  = $(KZV)/x/oe
kz_srcw  = $(KZV)/w/oe
kz_incza = $(KZV)/a/incz
kz_inczx = $(KZV)/x/incz
kz_incra = $(KZV)/a/incr
kz_incrx = $(KZV)/x/incr
tz_src   = $(KZV)/a/tz
tz_srcx  = $(KZV)/x/tz
tz_obj   = $(KZV)/x/tz/obj
kz_inc   = -I $(kz_inczx) -I $(kz_incza) -I $(kz_incrx) -I $(kz_incra) -I $(kz_src) -I $(kz_srcx)
cc_opt   = $(kz_inc) -D __UNIX__ -D _REENTRANT -fpic -c -g -o $@

# All the non-OS dependant objs that make up core go here.
core_obj = $(kz_obj)/kzoeapaa.o \
           $(kz_obj)/kzoeataa.o \
           $(kz_obj)/kzoecmaa.o \
           $(kz_obj)/kzoedmaa.o \
           $(kz_obj)/kzoeeiaa.o \
           $(kz_obj)/kzoeeraa.o \
           $(kz_obj)/kzoemiaa.o \
           $(kz_obj)/kzoemmaa.o \
           $(kz_obj)/kzoemqaa.o \
           $(kz_obj)/kzoeneta.o \
           $(kz_obj)/kzoeodaa.o \
           $(kz_obj)/kzoeoiaa.o \
           $(kz_obj)/kzoesoaa.o \
           $(kz_obj)/kzoetmaa.o \
           $(kz_obj)/kzoetraa.o \
           $(kz_obj)/kzoeufaa.o \
           $(kz_obj)/kzoevlaa.o \
           $(kz_obj)/kzoevmaa.o \
           $(kz_obj)/kzwdlgxo.o

core_cpp_obj = $(kz_obj)/kzoedeca.o

# All the OS dependant objs that make up core go here.
core_objx = $(kz_obj)/kzoesyaa.o

# All the objs that make up core shell go here.
core_shell = $(kz_obj)/kzoengxa.o

# All the objs that make up the domain interface go here.
domain_obj = $(tz_obj)/tzapdmaa.o \
             $(tz_obj)/tzapdmab.o \
             $(tz_obj)/tzapdmac.o

# Note: targets must be listed in the order they should be compiled.
all: $(kz_bin)/kzoengaa.so \
     $(kz_bin)/kzoengxa    \
     $(kz_bin)/zwinsock.so \
     $(kz_bin)/kzhsqloa.so \
     $(kz_bin)/kzhgenky.so \
     $(kz_bin)/KZMSGQAA.so \
     $(kz_bin)/tzapdmaa.so

clean:
   rm -f $(kz_obj)/*.o $(domain_obj)

#  ====== kzoengaa.so stuff ========

# Compile all the OS-independant .c files.
$(kz_obj)/%.o: $(kz_src)/%.c $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(kz_src)/$*.err gcc $(cc_opt) $(kz_src)/$*.c
   @echo $(kz_src)/$*.c compiled OK!
   @echo

# Compile all the OS-independant .cpp files.
$(kz_obj)/%.o: $(kz_src)/%.cpp $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(kz_src)/$*.err g++ $(cc_opt) $(kz_src)/$*.cpp
   @echo $(kz_src)/$*.cpp compiled OK!
   @echo

# Compile all the OS-dependant .c files.
$(kz_obj)/%.o: $(kz_srcx)/%.c $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(kz_srcx)/$*.err gcc $(cc_opt) -I /usr/include/tcl $(kz_srcx)/$*.c
   @echo $(kz_srcx)/$*.c compiled OK!
   @echo

# Create the Core shared library.
$(kz_bin)/kzoengaa.so: $(core_obj) $(core_cpp_obj) $(core_objx)
   @../bin/qspawn $(kz_srcx)/kzoengaa.ler gcc $(core_obj) $(core_objx) $(core_cpp_obj) -shared -Wl,-soname,$(kz_bin)/kzoengaa.so -g -ldl -lm -o $@
   @echo KZOENGAA.SO linked OK!
   @echo

#  ====== kzoengxa stuff ========

# Compile all the core shell .c files.
$(core_shell)/%.o: $(kz_srcx)/%.c $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(kz_srcx)/$*.err gcc $(cc_opt) $(kz_srcx)/$*.c
   @echo $(kz_srcx)/$*.c compiled OK!
   @echo

# Link all the objs into the core shell.
$(kz_bin)/kzoengxa: $(core_shell)
   @../bin/qspawn $(kz_srcx)/kzoengxa.ler gcc $(core_shell) $(kz_bin)/kzoengaa.so -g -lpthread -o $@
   @echo KZOENGXA linked OK!
   @echo

#  ====== kzoelsck.so (Socket handler) stuff ========

# Compile the BSD socket interface.
$(kz_obj)/kzoelsck.o: $(kz_srcx)/kzoelsck.c $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(kz_srcx)/kzoelsck.err gcc $(cc_opt) $(kz_srcx)/kzoelsck.c
   @echo $(kz_srcx)/kzoelsck.c compiled OK!
   @echo

# Link the socket interface.
$(kz_bin)/kzoelsck.so: $(kz_obj)/kzoelsck.o
   @../bin/qspawn $(kz_srcx)/kzoelsck.ler gcc $(kz_obj)/kzoelsck.o $(kz_bin)/kzoengaa.so -g \
      -shared -Wl,-soname,$(kz_bin)/kzoelsck.so -o $(kz_bin)/kzoelsck.so -ldl -lm -lpthread
   @echo KZOELSCK.SO linked OK!
   @echo

#  ====== zwinsock.so (Socket handler) stuff ========

# Compile the socket interface.man g
$(kz_obj)/zwinsock.o: $(kz_srcw)/zwinsock.cpp $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(kz_srcw)/zwinsock.err gcc $(cc_opt) $(kz_srcw)/zwinsock.cpp
   @echo $(kz_srcw)/zwinsock.c compiled OK!
   @echo

# Link the socket interface.
$(kz_bin)/zwinsock.so: $(kz_obj)/zwinsock.o
   @../bin/qspawn $(kz_srcx)/zwinsock.ler gcc $(kz_obj)/zwinsock.o $(kz_bin)/kzoengaa.so -g \
      -shared -Wl,-soname,$(kz_bin)/zwinsock.so -o $(kz_bin)/zwinsock.so -ldl -lm -lpthread
   @echo ZWINSOCK.SO linked OK!
   @echo

#  ====== DB-Handler stuff ========

# Compile the SQL generator.
$(kz_obj)/kzhsqlga.o: $(kz_src)/kzhsqlga.c $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(kz_src)/kzhsqlga.err gcc $(cc_opt) $(kz_src)/kzhsqlga.c
   @echo $(kz_src)/kzhsqlga.c compiled OK!
   @echo

   # Compile the ODBC Postgres DBH.
$(kz_obj)/kzhsqloa.o: $(kz_src)/kzhsqlxa.c $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(kz_src)/kzhsqlxa.err gcc $(cc_opt) -D ODBC $(kz_src)/kzhsqlxa.c
   @echo $(kz_srcx)/kzhsqlxa.c compiled OK!
   @echo

# Link the ODBC Postgres DBH.
$(kz_bin)/kzhsqloa.so: $(kz_obj)/kzhsqloa.o $(kz_obj)/kzhsqlga.o
   @../bin/qspawn $(kz_srcx)/kzhsqloa.ler gcc $(kz_obj)/kzhsqloa.o $(kz_obj)/kzhsqlga.o $(kz_bin)/kzoengaa.so -g \
      -shared -Wl,-soname,$(kz_bin)/kzhsqloa.so -o $(kz_bin)/kzhsqloa.so -ldl -lm -lodbc
   @echo KZHSQLGP.SO linked OK!
   @echo

# Compile the GenKey handler
$(kz_obj)/kzhgenky.o: $(kz_src)/kzhgenky.c $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(kz_src)/kzhgenky.err gcc $(cc_opt) $(kz_src)/kzhgenky.c
   @echo $(kz_src)/kzhgenky.c compiled OK!
   @echo

# Link the GenKey handler.
$(kz_bin)/kzhgenky.so: $(kz_obj)/kzhgenky.o
   @../bin/qspawn $(kz_srcx)/kzhgenky.ler gcc $(kz_obj)/kzhgenky.o $(kz_bin)/kzoengaa.so -g \
      -shared -Wl,-soname,$(kz_bin)/kzhgenky.so -o $(kz_bin)/kzhgenky.so -ldl -lm
   @echo KZHGENKY.SO linked OK!
   @echo

# Compile the Postgres DBH.
$(kz_obj)/kzhsqlpg.o: $(kz_srcx)/kzhsqlpg.c $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(kz_srcx)/kzhsqlpg.err gcc $(cc_opt) -I /usr/include/postgres $(kz_srcx)/kzhsqlpg.c
   @echo $(kz_srcx)/kzhsqlpg.c compiled OK!
   @echo

# Link the Postgres DBH.
$(kz_bin)/kzhsqlpg.so: $(kz_obj)/kzhsqlpg.o $(kz_obj)/kzhsqlga.o
   @../bin/qspawn $(kz_srcx)/kzhsqlpg.ler gcc $(kz_obj)/kzhsqlpg.o $(kz_obj)/kzhsqlga.o $(kz_bin)/kzoengaa.so /usr/local/postgres/lib/libpq.so.1 -g \
      -shared -Wl,-soname,$(kz_bin)/kzhsqlpg.so -o $(kz_bin)/kzhsqlpg.so -ldl -lm
   @echo KZHSQLGP.SO linked OK!
   @echo

#  ====== Application Domain stuff ========

# Compile all the domain .c files.
$(tz_obj)/%.o: $(tz_src)/%.c $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(tz_src)/$*.err gcc $(cc_opt) -I $(kz_src) $(tz_src)/$*.c
   @echo $(tz_src)/$*.c compiled OK!
   @echo

# Create the domain shared library.
$(kz_bin)/tzapdmaa.so: $(domain_obj)
   @../bin/qspawn $(tz_srcx)/tzapdmaa.ler gcc $(domain_obj) $(kz_bin)/kzoengaa.so -shared -Wl,-soname,$(kz_bin)/$*.so -g -o $@
   @echo TZAPDMAA.SO linked OK!
   @echo

#  ====== KZMSGQAA.so ========

# Compile all the .c files.
$(kz_obj)/kzmsgqaa.o: $(KZV)/a/ms/kzmsgqaa.c $(kz_incra)/kzoemeaa.h $(kz_incza)/kzoemiaa.h
   @../bin/qspawn $(KZV)/a/ms/kzmsgqaa.err gcc -D NO_DRIVER $(cc_opt) -I $(kz_src) $(KZV)/a/ms/kzmsgqaa.c
   @echo $(KZV)/a/ms/$*.c compiled OK!
   @echo

# Create the MSGQ shared library.
$(kz_bin)/KZMSGQAA.so: $(kz_obj)/kzmsgqaa.o
   @../bin/qspawn $(tz_srcx)/kzmsgqaa.ler gcc $(kz_obj)/kzmsgqaa.o $(kz_bin)/kzoengaa.so -shared -Wl,-soname,$(kz_bin)/KZMSGQAA.so -g -o $@
   @echo KZMSGQAA.so linked OK!
   @echo