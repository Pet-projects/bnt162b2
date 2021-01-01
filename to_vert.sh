#!/bin/bash

tail -n +2 | tr -d "\n" | awk '{gsub(".","&\n");printf "%s",$0}'