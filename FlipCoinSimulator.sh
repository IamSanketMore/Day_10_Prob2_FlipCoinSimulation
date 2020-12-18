#!/bin/bash

head=0
tail=0

while [ $head -lt 21 ] && [ $tail -lt 21 ]
do
	Result=$(( RANDOM % 2 ))

	if [[ $Result -eq 1 ]]
	then
		head=$(( $head + 1 ))
	else
		tail=$(( $head +1 ))
	fi
done
if [[ $head -eq 21 && $tail -eq 21 ]]
then
	echo "Its a Tie Head And Tail Occured 21 Times "

	elif [ $head -eq 21 ]
	then
		echo "Head is Won And Firstly Occured 21 Times"
		head_Diff=$(( $head - $tail ))
		echo "Head is:- $head And Tail is:- $tail "
		echo "Head is Won By $head_Diff"
	else
		echo "Tail is Won And Firstly Occured 21 Times"
		tail_Diff=$(( $tail - $head ))
		echo "Head is:- $head And Tail is:- $tail "
		echo "Tail is Won By $tail_Diff"
fi
