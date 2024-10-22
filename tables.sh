#!/bin/bash
echo "start"
echo "Emter value"
read num
for i in {1..10}
do
	echo "$num * $i = $((num*i))"
done
echo "end"
