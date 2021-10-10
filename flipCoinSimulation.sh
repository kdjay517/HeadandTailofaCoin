#!/bin/bash -x

tailCount=0;
headCount=0;


function toss_the_coin(){

	if [ $coin -eq 0 ]
	then
		tailCount=$(($tailCount+1));
	else
		headCount=$(($headCount+1));
	fi
}


while [ $tailCount -lt 21 -a $headCount -lt 21 ]
do
	coin=$((RANDOM%2))
	toss_the_coin $coin
done

if [ $tailCount -eq 21 ]
then
	echo "Tail Won"
	echo "Head loss by $(($tailCount-$headCount)) points"
elif [ $headCount -eq 21 ]
then
	echo "Head won"
	echo "Tail loss by $(($headCount-$tailCount)) points"
elif [ $headCount -eq $tailCount ]
then
	echo "Match is Tie"
else
	echo "No one Won"
fi

	while [ $(($headCount-$tailCount)) -le 2 -o $(($tailCount-$headCount)) -le 2 ]
	do
		coin=$((RANDOM%2));
		toss_the_coin $coin

	done
else
	echo "No one Won"
fi

