module Somatorio
( somaListaInteiros
, somaListaImpares -- problema
, somaListaPares -- problema
, somaListaQuadInteiros
, somaListaQuadImpares -- problema
, numImpares
, numPares
, quadInteiros
, quadImpares
, fatorial
) where



{- Series Finitas em Haskell
-}



somaInteiros :: (Enum b, Fractional b) => b -> [b]
somaInteiros n = map (\x -> (x * (x + 1)/2)) [1..n]



somaListaInteiros :: (Enum a, Fractional a) => a -> a
somaListaInteiros n = last (somaInteiros n)



numImpares :: (Enum b, Fractional b) => b -> [b]
numImpares n = map (\x -> (x * (x + 2)/2)) [1..n]


-- para o haskell zero -> par


somaListaImpares :: (Fractional a, Integral a) => a -> a
somaListaImpares n = if odd n
                     then last (numImpares n)
                     else if n <= 0
                     then 0.0
                     else somaListaImpares (n - 1)


numPares :: (Enum b, Fractional b) => b -> [b]
numPares n = map (\x -> (x * (x + 2)/2)) [2..n]



somaListaPares :: (Fractional a, Integral a) => a -> a
somaListaPares n = if even n
                     then last (numPares n)
                     else if n <= 0
                     then 0.0
                     else somaListaPares (n - 1)


quadInteiros :: (Enum b, Fractional b) => b -> [b]
-- 1 + 3 + 5 + ... + 2n-1
quadInteiros n = map (\x -> (x * (x + 1) * (2 * x + 1) / 6)) [1..n]



somaListaQuadInteiros :: (Enum a, Fractional a) => a -> a
somaListaQuadInteiros n = last (quadInteiros n)



quadImpares :: (Enum b, Num b) => b -> [b]
quadImpares n = map (\x -> (x^2)) [1..(2*n-1)]



somaListaQuadImpares :: (Fractional a, Integral a) => a -> a
somaListaQuadImpares n = if odd n
                         then last (quadImpares n)
                         else if n <= 0
                         then 0.0
                         else somaListaQuadImpares (n - 1)



{- Series Infinitas
-}



quaseUm :: (Enum a, Fractional a) => Int -> a
quaseUm n = sum (map (\x -> (1/(x^2+x))) (take n [1..])) -- 0.9900990099009898

{- quase dois por baixo
   1.99 < 2 mas poderia
   ser feito 2.01 < 2
   que seria quase dois
   porem por cima.
-}
quaseDois n = sum (map (\x -> (2/(x^2+x))) (take n [1..])) -- 1.9999950030606968


fatorial n = if n > 0 then n * fatorial (n-1) else 1

-- calculo euler number (1 + (1/n)) ^ n

quaseE n = sum (map (\x ->  ((1 + 1/x)^x)   ) (take n [1..])) -- 2.71828182845904523536028747135266249775724709369995
