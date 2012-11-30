#!/bin/sh
clear
echo "Please wait."
count=1
rtime=8
diese="#"
until [ $count -eq $rtime ]
do
lol=$diese$lol
echo -n "\r["$(echo "scale=2; $((count*100))/$rtime" | bc)"%] $lol "
sleep 1
count=$(($count+1))
done
echo -n "\r[100%]"$lol
echo

