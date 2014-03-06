#!/bin/sh
# Build xpat

# Build ODBC interface.
cd unixODBC-2.2.14
./configure --prefix=/usr/local/unixODBC --sysconfdir=/etc 
make
sudo make install
cd ..