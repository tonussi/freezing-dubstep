module Resist
( unittest
, rst
, soma
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

  putStrLn "Test x // y"

  putStrLn "Test soma x y"

  putStrLn "Test rst x y"
