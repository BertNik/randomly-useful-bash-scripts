#!/bin/bash

freevalue=$(free | grep -i mem | awk '{print $4}');
param2=$2;

if [ $freevalue -lt $param2 ]; then
        echo 'warning';
fi;
#usage: compare free memory to some value
#./s.sh [some meaningless number] 110000000
