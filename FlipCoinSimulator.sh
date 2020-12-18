#!/bin/bash

head=0
tail=0

for (( i = 1; i<=10; i++ ))
do
	Result[$i]=$((RANDOM%2))

	if [[ ${Result[$i]} -eq 1 ]]
	then
		head=$(( $head + 1 ))
	else
		tail=$(( $head +1 ))
	fi
done
echo ${Result[*]}
echo "Head has Won $head Times"
echo "Tail has Won $tail Times"
