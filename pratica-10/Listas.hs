module Listas
( unittest
, primeiros
, calculaSomaPA
, calculaProdPA
, mapeiaListaPA
) where

primeiros 0 _ = []
primeiros n [] = []
primeiros n (a:x) = a : primeiros (n - 1) x

fact = foldl (*) 1 . enumFromTo 1

-- a0 = 0

calculaSomaPA n razao = sum (map (\x -> razao + ((x - 1) * razao)) (take n [1..]))

-- a0 = 0

mapeiaListaPA n razao = map (\x -> razao + ((x - 1) * razao)) (take n [1..])

-- a0 = 1

calculaProdPA n razao = product (map (\x -> razao + ((x - 1) * razao)) (take n [1..]))

unittest = do
  putStrLn "Haskel::MiniTest"

  putStrLn "Test Primeiros"
  print (primeiros  0 [1897, 1014, 783, 952,  67, 1848, 468, 892, 833, 1439, 365, 115, 335])
  print (primeiros  1 [1897, 1014, 783, 952,  67, 1848, 468, 892, 833, 1439, 365, 115, 335])
  print (primeiros  2 [1897, 1014, 783, 952,  67, 1848, 468, 892, 833, 1439, 365, 115, 335])
  print (primeiros  3 [1897, 1014, 783, 952,  67, 1848, 468, 892, 833, 1439, 365, 115, 335])
  print (primeiros  4 [1897, 1014, 783, 952,  67, 1848, 468, 892, 833, 1439, 365, 115, 335])
  print (primeiros  5 [1897, 1014, 783, 952,  67, 1848, 468, 892, 833, 1439, 365, 115, 335])
  print (primeiros  6 [1897, 1014, 783, 952,  67, 1848, 468, 892, 833, 1439, 365, 115, 335])
  print (primeiros  7 [1897, 1014, 783, 952,  67, 1848, 468, 892, 833, 1439, 365, 115, 335])
  print (primeiros  8 [1897, 1014, 783, 952,  67, 1848, 468, 892, 833, 1439, 365, 115, 335])

  putStrLn "Test Mapeamentos Somas Produtos"

  print (mapeiaListaPA 7  7)
  print (calculaSomaPA 7  7)
  print (calculaProdPA 7  7)
  print (mapeiaListaPA 4  7)
  print (calculaSomaPA 4  7)
  print (calculaProdPA 4  7)
  print (mapeiaListaPA 3  6)
  print (calculaSomaPA 3  6)
  print (calculaProdPA 3  6)
  print (mapeiaListaPA 3 12)
  print (calculaSomaPA 3 12)
  print (calculaProdPA 3 12)
