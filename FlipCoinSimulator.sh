#!/bin/bash

Result=$((RANDOM%2))
if [[ ${Result} -eq 0 ]]
then
    echo "Coin Flip and Winner is Head"
elif [[ ${Result} -eq 1 ]]
then
    echo "Coin Flip and Winner is Tail"
fi

