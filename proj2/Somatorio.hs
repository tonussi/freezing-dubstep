module Somatorio
( somaListaInteiros
, somaListaImpares -- problema
, somaListaPares -- problema
, somaListaQuadInteiros
, somaListaQuadImpares -- problema
, quaseUm
, quaseDois
, quaseE
, quaseE2
, quasePi
) where



{- Series Finitas em Haskell
-}



somaInteiros :: (Enum b, Fractional b) => b -> [b]
somaInteiros n = map (\x -> (x * (x + 1)/2)) [1..n]



somaListaInteiros :: (Enum a, Fractional a) => a -> a
somaListaInteiros n = last (somaInteiros n)



numImpares :: (Enum b, Fractional b) => b -> [b]
numImpares n = map (\x -> (x * (x + 2)/2)) [1..n]

-- n = 2k even
-- n = 2k + 1 odd

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
somaListaQuadInteiros n = last (quadInteiros n) -- 1 + 4 + 9 + 16 + 25 = 55.0

{- import Data.List
   (odds,evens) = partition odd [1..]
   take 10 odds -- [1,3,5,7,9,11,13,15,17,19]
   take 10 evens -- [2,4,6,8,10,12,14,16,18,20]
-}

-- quadImpares :: (Enum b, Num b) => b -> [b]
quadImpares n = map (\x -> (x * (x + 1) * (2 * x + 1) / 6)) [1..n]



-- somaListaQuadImpares :: (Fractional a, Integral a) => a -> a
somaListaQuadImpares n = (somaListaQuadInteiros n)



{- Series Infinitas em Haskell
-}



quaseUm :: (Enum a, Fractional a) => Int -> a
quaseUm n = sum (map (\x -> (1/(x^2+x))) (take n [1..])) -- 0.9900990099009898



quaseDois :: (Enum a, Fractional a) => Int -> a
quaseDois n = sum (map (\x -> (2/(x^2+x))) (take n [1..]))



{- Pointless (hahamm) “Points-free” Factorial
-}



fatorialPfree :: Double -> Double
fatorialPfree = foldl (*) 1 . enumFromTo 1



{- Usando product
-}



fatorialProdutorio :: (Enum a, Num a) => a -> a
fatorialProdutorio n = product [1..n]



quaseE :: Int -> Double
quaseE n = 1 + sum (map (\x ->  1/(fatorialPfree x) ) (take n [1..]))



{- Prelude> quaseE 10 (fast)
   2.718281801146385
   Prelude> quaseE 100 (fast)
   2.7182818284590455
   Prelude> quaseE 1000 (fast)
   2.7182818284590455
   Prelude> quaseE 10000 (slow - going crash)
   2.7182818284590455


   Tudo por que isso na recurss.
   comeca a ficar muito custoso

   call fact()
       call fact()
           call fact()
           ...
           cleanup
       cleanup
   cleanup
-}



quaseE2 :: (Enum a, Fractional a, Integral a1) => a1 -> a
quaseE2 n = 1 + sum (map parcelasNumeroE [1..n])



{- Prelude> quaseE2 10 (fast)
   2.718281801146385
   Prelude> quaseE2 100 (fast)
   2.7182818284590455
   Prelude> quaseE2 1000 (fast)
   2.7182818284590455
   Prelude> quaseE2 10000 (slow - going crash)
   2.7182818284590455
-}


parcelasNumeroE :: (Enum a1, Fractional a1, Integral a) => a -> a1
parcelasNumeroE x = 1/(fatorialProdutorio k) where k = fromIntegral x



quasePi :: Int -> Double
quasePi n = sum (map parcelasPi [1..n])



parcelasPi :: Int -> Double
parcelasPi x = 4*(-1)^(x+1) / (2.0 * k - 1) where k = fromIntegral x -- 3.1416026536897204
