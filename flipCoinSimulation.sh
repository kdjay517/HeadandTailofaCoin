#!/bin/bash -x

tailCount=0;
headCount=0;



for ((i=0; i<=10; i++))
do
	coin=$((RANDOM%2));

	if [ $coin -eq 0 ]
	then
		tailCount=$(($tailCount+1))

	else
		headCount=$(($headCount+1))
	fi
done
echo "$tailCount times Tail Wins"
echo "$headCount times Head Wins"
