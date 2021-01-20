#! /bin/bash
head1=0
tail1=0
for (( i=0; i<20; i++ ))
do
	if [ $(( RANDOM%2 )) -eq 0 ]
	then
    	    head1=$(( head1+1 ))
	else
            tail1=$(( tail1+1 ))
	fi
done
echo "Head won "$head1 " times and Tail won "$tail1" times"
