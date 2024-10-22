#!/bin/bash
echo "start"
echo "Enter a value"
read a
echo "Enter b value"
read b
if [[ $a -lt $b ]]
then
        echo "$a is lesser than $b"
else
	echo "$a is greater than $b"
fi
echo "end"
