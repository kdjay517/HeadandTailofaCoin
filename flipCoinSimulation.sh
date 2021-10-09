#!/bin/bash -x

coin=$((RANDOM%2));

if [ $coin -eq 0 ]
then
	echo "Tail Wins"
else
	echo "Head Wins"
fi

