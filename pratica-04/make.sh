#!/usr/sh

echo "Compila.."
ghc --make -O1 Main.hs
echo "Executa."
./Main
echo "Limpa."
rm Main *.hi *.o
echo "Acabou."
