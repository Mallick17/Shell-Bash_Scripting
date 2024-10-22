#!/bin/bash
echo "start"
echo "Enter a value"
read a
echo "Enter b value"
read b
if [[ $a -lt $b ]]
then
        echo "$a is lesser then $b"
fi
echo "end"

