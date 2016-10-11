#!/bin/bash

# 1st arg - file with copyright header
# 2nd arg - files to process (e.g. *.hpp)

COPYRIGHT="$1"
shift

while test ${#} -gt 0
do
  if ! grep -q Copyright $1
  then
    cat $COPYRIGHT $1 >$1.new && mv $1.new $1
  fi
  shift
done
