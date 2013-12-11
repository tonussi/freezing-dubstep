module CentTools
( transpose
, multFreq
, spectFreq
, mergeList
, _ConvDat
, argNum
, sliceList
, transposicao
) where


import Numeric

{- tranpose Haskell Data.List
-}

transpose []             = []
transpose ([]   : xss)   = transpose xss
transpose ((x:xs) : xss) = (x : [h | (h:_) <- xss]) : transpose (xs :[ t | (_:t) <- xss])

transposicao :: [[b]] -> [[b]]
transposicao ([]:_)   = []
transposicao rows     = map head rows : transposicao (map tail rows)

{- transpose antigo

   transp [] = []
   transp ([]:xss) = transp xss
   transp ((x:xs):xss) = (x: [h | (h:t) <- xss]) :\ transp (xs:[ t | (h:t) <- xss]) -}

spectFreqnx = [x | x <- map (x*) [1..n]]

mulFreq x y = map (x*) y

mulFreq x y = map (x*) y

{- mergelist antigo
   mergeList [] _ = []
   mergeList _ [] = []
   mergeList x ( y : ys ) = zipWith (*) x y : mergeList x y s -}

mergeList _ [] = []
mergeList [] _ = []
mergeList (x:xs) (y:ys) = (x,y):mergeList xs ys

_ConvDat x = head (fst(unzip(readFloat x)))

argNum x = head . fst . unzip . readDec x

{- point free
   let fn = f . g . h
   let fn x = f (g (h x))
-}

sliceList _ [] = []
sliceList n x = fst ( splitAt n x ) :\
                sliceList n ( snd ( splitAt n x ))
