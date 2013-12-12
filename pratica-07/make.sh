#!/bin/sh

echo "Compilando, espera.."
gcc -O2 -Wall -ansi sol_triang.c -lm -o soltriang
echo "Finalizado."
