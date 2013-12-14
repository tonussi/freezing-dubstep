module Listas
( unittest
, primeiros
) where



primeiros 0 _ = []
primeiros n [] = []
primeiros n (a:x) = a : primeiros (n - 1) x



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
