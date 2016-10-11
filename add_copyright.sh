#!/bin/bash

# 1st arg - file with copyright header
# 2nd arg - files to process (e.g. *.hpp)

if test ${#} -gt 0
then
  COPYRIGHT="$1"
  shift
fi

while test ${#} -gt 0
do
  if ! grep -q Copyright $1
  then
    cat $COPYRIGHT $1 >$1.new && mv $1.new $1
  fi
  shift
done
