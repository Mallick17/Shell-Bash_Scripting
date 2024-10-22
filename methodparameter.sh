#!/bin/bash
echo "starts"
echo "the file name: $0"
sum() {
	c=$(($1+$2))
	echo "sum of $1 & $2 is: $c"
}
sum 10 20
echo "end"

echo "starts"
echo "the file name: $0"
sum() {
        c=$(($1+$2))
        echo "sum of $1 & $2 is: $c"
}
a=20
b=40
sum a b
echo "end"

