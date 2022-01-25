#!/usr/bin/env bash

# touch alias - for making file
regex="([^/]+\/)"
f=$1
temp="./"

while [[ $f =~ $regex ]]; do
    name="${BASH_REMATCH[1]}"
    temp=$temp$name
    mkdir $temp -p
    f=${f#*"${BASH_REMATCH[1]}"}
done

touch $temp$f    


