module Somatorio
( somaListaInteiros
, somaListaImpares
, somaListaPares
, somaListaQuadInteiros
, somaListaQuadImpares
) where

somaInteiros :: Float -> Float
somaInteiros n = map (\x -> (x * (x + 1)/2)) [1..n]

somaListaInteiros :: :: Float -> Float
somaListaInteiros n = last (somaInteiros n)

numImpares :: Float -> Float
numImpares n = map (\x -> (x * (x + 1)/2)) [1..n]

somaListaImpares :: :: Float -> Float
somaListaImpares n = last (numImpares n)

numPares :: Float -> Float
numPares n = map (\x -> (x * (x + 1)/2)) [1..n]

quadInteiros :: Float -> Float
quadInteiros n = map (\x -> (x * (x + 1)/2)) [1..n]

quadImpares :: Float -> Float
quadImpares n = map (\x -> (x * (x + 1)/2)) [1..n]
