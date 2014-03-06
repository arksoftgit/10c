#! /bin/bash
echo Setting Zeidon environment...

# Following vars are expected to be set before calling this script
#    KZV=/home/dgc/zeidon/10b
#    ZEIDON=/home/dgc/zeidon/zapp
PATH=$PATH:$KZV/x/ut/scripts

LD_LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH

KZT=x
KZS=oe
export KZT KZS

alias cds='. cds.bash'
alias cdb='. cdb.bash'