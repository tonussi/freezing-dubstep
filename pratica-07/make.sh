#!/bin/zsh

echo "Compilando, espera.."
gcc -O2 -Wall -ansi -o stret sol_triang.c soluc.c -lm
echo "Finalizado."
