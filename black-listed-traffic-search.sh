#!/bin/bash
IFS=$'\n' ip=($(cat <file_path>))
for i in $(seq ${#ip[*]}); do
    [[ ${ip[$i-1]} = $name ]] && echo "${ip[$i]}"
done

file_list=$(ls <file_path>);
echo $file_list
for i in ${ip[@]}; do
    for file in $file_list; do  
        grep $i <file_path>$file >> $i
    done
done
