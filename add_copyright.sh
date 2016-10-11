#!/bin/bash

# 1st arg - files to process (e.g. *.hpp)
# 2nd arg - file with copyright header

for i in $1 # or whatever other pattern...
do
  if ! grep -q Copyright $i
  then
    cat $2 $i >$i.new && mv $i.new $i
  fi
done
