#!/bin/bash
echo "starts"
echo "the file name: $0"
sum() {
        c=$(($1+$2))
        echo "sum of $1 & $2 is: $c"
}
echo "Enter a value"
read a
echo "Enter b value"
read b
sum a b
echo "end"
