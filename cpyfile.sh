#!/bin/bash
echo "start"
src=/etc/*.conf
dest=/root/demo
for i in $src
do
	cp $src $dest
done
echo "end"
