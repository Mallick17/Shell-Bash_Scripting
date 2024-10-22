#!/bin/bash
echo "start"
src=/root/demomv
dest=/root/demo
for i in $src
do
        mv $src $dest
done
echo "end"

