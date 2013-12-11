module Comb
( arSim
, arRep
, perSim
, perCirc
, combSim
, combRep
) where

import Fact

arSim :: (Eq a, Fractional a) => a -> a -> a
arSim m p = fac m / fac (m - p)

arRep :: Floating a => a -> a -> a
arRep m p = m ** p

perSim :: (Eq a, Num a) => a -> a
perSim m = fac m

perCirc :: (Eq a, Num a) => a -> a
perCirc m = fac (m - 1)

combSim :: (Eq a, Fractional a) => a -> a -> a
combSim m p = fac m / (fac (m-p) * fac p)

combRep :: (Eq a, Fractional a) => a -> a -> a
combRep m p = combSim (m + p - 1) p
