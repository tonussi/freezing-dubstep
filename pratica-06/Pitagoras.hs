module Pitagoras
( triads
) where

triads :: (Enum t, Eq t, Num t) => t -> [(t, t, t)]
triads n = [(a, b, c) |
                      a <- [1..n] ,
                      b <- [1..n] ,
                      c <- [1..n] ,
                      a ^ 2 + b ^ 2 == c ^ 2]


{-
[1 of 1] Compiling Pitagoras        ( Pitagoras.hs, interpreted )
Ok, modules loaded: Pitagoras.
*Pitagoras> :browse Pitagoras
triads :: (Enum t, Eq t, Num t) => t -> [(t, t, t)]
*Pitagoras>
-}
