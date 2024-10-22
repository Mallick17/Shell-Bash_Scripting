#!/bin/bash
echo "start"
count=1
for i in /etc/* .conf
do
  echo "$i"
  ((count++))
done
echo "the total count is: $count"
echo "end"
