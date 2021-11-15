#!/bin/sh

file1="titles"
file2="aux1"
file3="aux2"

if [ -f "$file1" ] ; then
    rm "$file1"
    rm "$file2"
    rm "$file3"
fi



x=1; while [ $x -le 10 ]; do 


teste="issues?page=$x"
$(( x=x+1 ))
echo $teste
grep "title" $teste > aux1
cat titles aux1>aux2
cat aux2>titles


done



