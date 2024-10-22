#!/bin/bash
echo "start"
init=1
while [[ $init -le 10 ]]
do
  echo "the value: $init"
  ((init++))
done
echo "end"

