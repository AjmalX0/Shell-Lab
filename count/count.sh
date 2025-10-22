#!/bin/bash

lines=0
words=0
ch=0
while read line
do
  lines=$((lines+1))
  for word in $line; do
    words=$((words+1))
    ch=$(($ch+${#word}))
  done
done </home/student/Desktop/"Akshay Nath S3"/file.txt

echo "Number of lines is $lines"
echo "Number of words is $words"
echo "Number of ch is $ch"
