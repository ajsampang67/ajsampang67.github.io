#!/bin/bash
input="names.txt"
while IFS= read -r line
do
  arr=($line)

  echo "${arr[2]} ${arr[1]} ${arr[0]}" 
done < "$input"
