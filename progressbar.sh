#!/bin/sh
clear
echo "Please wait."
count=1
rtime=8
diesis="#"
until [ $count -eq $rtime ]
  do
    diesisinc=$diesis$diesisinc
    echo -n "\r["$(echo "scale=2; $((count*100))/$rtime" | bc)"%] $diesisinc "
    sleep 1
    count=$(($count+1))
  done
echo -n "\r[100%]" $diesisinc

