#!/bin/bash

LINE_NUM=0
while read first <&3 && read second <&4; do
 LINE_NUM=$(( LINE_NUM + 1 ))
 if [[ "$first" != "$second" ]] >/dev/null ; then
     echo "${LINE_NUM}: ${first} -> ${second}"
 fi
done 3<vaccine-s.vert 4<optimised.vert