module Resist
( unittest
, rst
, soma
, (//)
) where

(//) :: (Eq b, Fractional b) => Maybe b -> Maybe b -> Maybe b
x // y = do
  a <- x
  b <- y
  if b == 0 then Nothing else Just (a / b)

soma :: (Monad m, Num b) => m b -> m b -> m b
soma x y = do
  x' <- x
  y' <- y
  return (x' + y')

rst :: (Eq b, Fractional b) => b -> b -> Maybe b
rst x y = let
  one = return 1
  rx = return x
  ry = return y
  in one // (soma (one // rx) (one // ry))


unittest :: IO ()
unittest = do
  putStrLn "Haskell :: MiniTest"

  putStrLn "Test Resistencia"
  print ( rst 4.180 8.340 )
  putStrLn "==?"
  print ( (8.340 * 4.180) / (8.340 + 4.180) )
  print ( rst 1.759 1.300 )
  putStrLn "==?"
  print ( (1.300 * 1.759) / (1.300 + 1.759) )
  print ( rst 1.404 1.267 )
  putStrLn "==?"
  print ( (1.267 * 1.404) / (1.267 + 1.404) )
  print ( rst 6.120 1.580 )
  putStrLn "==?"
  print ( (1.580 * 6.120) / (1.580 + 6.120) )
  print ( rst 9.010 4.500 )
  putStrLn "==?"
  print ( (4.500 * 9.010) / (4.500 + 9.010) )
  print ( rst 1.350 1.063 )
  putStrLn "==?"
  print ( (1.063 * 1.350) / (1.063 + 1.350) )
  print ( rst 1.095 1.301 )
  putStrLn "==?"
  print ( (1.301 * 1.095) / (1.301 + 1.095) )
  print ( rst 1.487 1.261 )
  putStrLn "==?"
  print ( (1.261 * 1.487) / (1.261 + 1.487) )
  print ( rst 18.28 19.29 )
  putStrLn "==?"
  print ( (19.29 * 18.28) / (19.29 + 18.28) )
  print ( rst 86.20 18.20 )
  putStrLn "==?"
  print ( (18.20 * 86.20) / (18.20 + 86.20) )
  print ( rst 41.80 55.20 )
  putStrLn "==?"
  print ( (55.20 * 41.80) / (55.20 + 41.80) )
  print ( rst 17.59 87.00 )
  putStrLn "==?"
  print ( (87.00 * 17.59) / (87.00 + 17.59) )
  print ( rst 14.04 12.91 )
  putStrLn "==?"
  print ( (12.91 * 14.04) / (12.91 + 14.04) )
  print ( rst 61.20 10.28 )
  putStrLn "==?"
  print ( (10.28 * 61.20) / (10.28 + 61.20) )
  print ( rst 90.10 14.87 )
  putStrLn "==?"
  print ( (14.87 * 90.10) / (14.87 + 90.10) )
  print ( rst 13.50 18.28 )
  putStrLn "==?"
  print ( (18.28 * 13.50) / (18.28 + 13.50) )
