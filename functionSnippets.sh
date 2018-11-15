#!/bin/bash
rl(){
    c=0;
    while [ true ] ;do 
	sleep 1; 
	echo -en $((c++))"\r"; 
    done;
}

ma(){
    s="$1";
    echo "${#s}"
}

hr(){
    word="$1";
    lc="${#word}";
    for i in `seq 0 $lc`
        do echo ${word:i:1};
    done;
    test 'hello test function'; 
}

test(){
    echo $1;
}

help(){
   echo '[script-name] [function]';
}

"$@"
