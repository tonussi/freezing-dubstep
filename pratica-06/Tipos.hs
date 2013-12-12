module Tipos
( increm
, ppar
, primeiro
, ultimo
, rotaciona
) where

increm :: Integer -> Integer
increm = \x -> x + 1

ppar :: (Enum a, Num a) => a -> a
ppar n = product [2,4..n]

primeiro :: [t] -> t
primeiro (x:_) = x

ultimo :: [t] -> t
ultimo [x] = x
ultimo (_:xs) = ultimo xs

rotaciona :: [a] -> [a]
rotaciona [] = error "EmptyListException"
rotaciona (x:xs) = xs ++ [x]
