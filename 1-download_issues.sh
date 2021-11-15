#!/bin/sh
x=0; while [ $x -le 5 ]; do 
echo "Welcome $x times" $(( x=x+1 ))
wget https://api.github.com/repos/ValveSoftware/Proton/issues?page=$x&per_page=100 
echo $x
done


