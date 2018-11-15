#!/bin/bash
zipfile="$1";
pwfile="$2";
count=0;
for i in `cat $pwfile`; do 
    unzip -qP $i -o $zipfile 2> error.txt && echo -e "\n"'zip file cracked' && echo $i && exit 1;
    echo -ne $count "\t" "$i\r";
    count=$[count+1];
done;
