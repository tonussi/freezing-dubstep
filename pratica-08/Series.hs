module Series
( unittest
, fibr
, parcelasArctan
, calculaArctan
) where

-- Castellanos (1986, 1988) formulas in terms of the Fibronacci numbers
-- Source: http://mathworld.wolfram.com/InverseTangent.html

fibr :: (Eq a, Num a, Num a1) => a -> a1
fibr 0 = 0
fibr 1 = 1
fibr n = (fibr (n - 1) + fibr (n - 2))

phi1 :: (Floating a, Integral b) => b -> a
phi1 n = (((1 + (sqrt 5)) / 2) ^ n)

phi2 :: (Floating a, Integral b) => b -> a
phi2 n = (((1 - (sqrt 5)) / 2) ^ n)

fibi :: (Floating a, Integral b) => b -> a
fibi n = (1 / (sqrt 5)) * (phi1 n - phi2 n)

calculaArctan :: (Enum a, Eq a, Floating a) => a -> a
calculaArctan n = sum (map parcelasArctan [1..n])

p0 :: Floating a => a -> a
p0 x = ((-1) ** x) --ok

p1 :: (Eq a, Num a, Num a1) => a -> a1

p1 x = (fibr (2 * x + 1)) --ok

p3 :: Floating a => a -> a
p3 x = ((5 ** x) * (2 * x + 1)) --ok

t :: Floating a => a -> a
t x = (2 * x) / (1 + sqrt (1 + ((4*(x**2))/5)))

parcelasArctan :: (Eq a, Floating a) => a -> a
parcelasArctan x = (p0 x) * (fibr x) * (t x) / (p3 x)

unittest :: IO ()
unittest = do
  putStrLn "Haskell :: UnitTest"

  putStrLn "Test Fibonacci O(n) Recursivo"

  print (fibr  0)
  print (fibr  1)
  print (fibr  5)
  print (fibr 10)
  print (fibr 25)
  print (fibr 30)

  putStrLn "Test Fibonacci O(1) Iterativo"
  print (fibi  0)
  print (fibi  1)
  print (fibi  5)
  print (fibi 10)
  print (fibi 25)
  print (fibi 30)

  putStrLn "Test T"
  print (t  0)
  print (t  1)
  print (t  5)
  print (t  0.0)
  print (t  0.1)
  print (t  0.5)

  putStrLn "Test Parcelas Arctan"
  print (parcelasArctan 0)
  print (parcelasArctan 1)
  print (parcelasArctan 2)
  print (parcelasArctan 3)
  print (parcelasArctan 4)

  putStrLn "Test Parcelas Arctan (1)"
  putStrLn "Should be next to Haskell built-in pi"
  putStrLn "Should be next to Haskell built-in 4 * atan 1"
  print (calculaArctan 0)
  print (calculaArctan 1)
  print (calculaArctan 2)
  print (calculaArctan 3)
  print (calculaArctan 4)

  putStrLn "Test Parcelas Arctan (2)"
  print (calculaArctan 10)
  print (calculaArctan 20)
