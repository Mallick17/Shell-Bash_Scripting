#!/bin/bash
echo "start"
echo "Enter a value"
read a
echo "Enter b value"
read b
if [[ $a -lt $b ]]
then
        echo "$a is lesser than $b"
elif [[ $a -gt $b ]]
then
	echo "$a is greater than $b"
else
        echo "$a is equals to $b"
fi
echo "end"
