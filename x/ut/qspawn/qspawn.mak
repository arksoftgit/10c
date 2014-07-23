kz_bin = $(kzv)/x/bin

ALL: $(kz_bin)/qspawn

$(kz_bin)/qspawn: qspawn.c
   g++ qspawn.c -o $(kz_bin)/qspawn
   cp $(kz_bin)/qspawn qspawn
