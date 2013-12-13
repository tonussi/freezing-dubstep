#!/bin/zsh

echo "gcc -O2 -Wall -ansi -o stret sol_triang.c soluc.c -lm"
gcc -O2 -Wall -ansi -o stret sol_triang.c soluc.c -lm
echo "./stret"
./stret
echo "rm stret"
rm stret
