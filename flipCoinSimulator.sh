#! /bin/bash
head1=0
tail1=0
while [ $head1 -ne 21 -a $tail1 -ne 21 ]
do
	if [ $(( RANDOM%2 )) -eq 0 ]
	then
    	    head1=$(( head1+1 ))
	else
            tail1=$(( tail1+1 ))
	fi
done
if [ $head1 -ne $tail1 ]
then
	if [ $head1 -eq 21 ]
	then 
		diff=$(( head1-tail1 ))
		echo "Head won by "$diff
	else
		diff=$(( tail1-head1 ))
		echo "Tail won by "$diff
	fi
else
	echo "Tie made"
fi
