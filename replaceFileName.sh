#replaces filename in directory that has a comma with no space
find ./ -maxdepth 1 -type f -execdir bash -c 'mv -- "$1" "${1//,/}"' bash {} \;
