module Maior
( exec
, maior
) where

maior [] = error "maximum of empty list"
maior [x] = x
maior (x:xs)
  | x > aux = x
  | otherwise = aux
  where aux = maior xs

-- fiz uma classe em python, para gerar uma lista
-- so precisa retirar a ultima virgula

exec = do
  print (maior [415, 753, 480, 367, 492, 326, 603])
  print (maior [ 827, 657, 727, 702, 388, 984, 904])
