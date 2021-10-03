#!/bin/sh
rownum="$1"
colnum="$2"
if [ -z  $rownum ] || [ -z $colnum ] ; then
  echo "not enough parameters"
  exit 1
elif [ $rownum -le 0 ] || [ $colnum -le 0 ] ; then
  echo "zero or negative number is not allowed"
  exit 1
else
  for row in $(seq 1 $rownum)
  do
    for col in $(seq 1 $colnum)
    do
      printf "$row*$col=`expr $row \* $col` "
    done
  printf "\n"
  done
fi
exit 0
