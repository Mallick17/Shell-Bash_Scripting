#!/bin/bash
#cd etc/
echo "start"
for i in /etc/* .conf
do
  echo "$i"
done
echo "end"

