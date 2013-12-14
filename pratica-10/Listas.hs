module Listas
( unittest
, primeiros
) where



primeiros 0 _ = []
primeiros _ [] = []
primeiros n (a:x) = a : primeiros (n - 1) x



unittest = do
  putStrLn "Haskel::MiniTest"

  putStrLn "Test Primeiros"
  print (primeiros [])
  print (primeiros 0)
  print (primeiros 1)
  print (primeiros 2)
  print (primeiros 3)
  print (primeiros 4)
  print (primeiros 5)
  print (primeiros 6)
  print (primeiros 7)
  print (primeiros 8)
