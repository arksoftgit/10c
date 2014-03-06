#! /bin/bash

if [ "$1" = "scripts" ]; then
   cd $KZV/x/ut/scripts
	return
fi

if [ "$1" = "$KZV" ]; then
   cd $KZV/$KZV
	return
fi

if [ -n "$1" ]; then
   KZT=$1
	if [ -n "$2" ]; then
	   KZS=$2
	fi
fi
cd $KZV/$KZT/$KZS