module Somatorio
( somaInteiros
, numImpares
, numPares
, quadInteiros
, quadImpares
) where


somaInteiros :: Float -> Float
somaInteiros n = map (\x -> (x * (x + 1)/2)) [1..n])

somaListaInteiros :: :: Float -> Float
somaListaInteiros n = last somaInt n

numImpares :: Float -> Float
numImpares n = map (\x -> (x * (x + 1)/2)) [1..n])

numPares :: Float -> Float
numPares n = map (\x -> (x * (x + 1)/2)) [1..n])

quadInteiros :: Float -> Float
quadInteiros n = map (\x -> (x * (x + 1)/2)) [1..n])

quadImpares :: Float -> Float
quadImpares n = map (\x -> (x * (x + 1)/2)) [1..n])

