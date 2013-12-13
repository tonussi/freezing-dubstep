module Hiperbolicas
( calculaSenoHiper
, calculaCosenoHiper
, calculaTangenteHiper
, calculaCotangenteHiper
) where

calculaSenoHiper u = ((2.718281801146385 ** u) - (1 / ((2.718281801146385 ** u))) ) / 2

calculaCosenoHiper u = ((2.718281801146385 ** u) + (1 / ((2.718281801146385 ** u))) ) / 2

calculaTangenteHiper u = ((calculaSenoHiper u) / (calculaCosenoHiper u))

calculaCotangenteHiper u = ((calculaCosenoHiper u) / (calculaSenoHiper u))

unittest = do
  putStrLn "Haskell::MiniTest"

  putStrLn "Should be close to built-in sinh: "

  print (calculaSenoHiper  30)
  print (sinh              30)
  print (calculaSenoHiper  45)
  print (sinh              45)
  print (calculaSenoHiper  60)
  print (sinh              60)
  print (calculaSenoHiper  90)
  print (sinh              90)
  print (calculaSenoHiper 270)
  print (sinh             270)
  print (calculaSenoHiper 350)
  print (sinh             350)


  putStrLn "Should be close to built-in cosh: "
  print (calculaCosenoHiper  30)
  print (cosh                30)
  print (calculaCosenoHiper  45)
  print (cosh                45)
  print (calculaCosenoHiper  60)
  print (cosh                60)
  print (calculaCosenoHiper  90)
  print (cosh                90)
  print (calculaCosenoHiper 270)
  print (cosh               270)
  print (calculaCosenoHiper 350)
  print (cosh               350)

  putStrLn "Should be close to built-in tanh: "
  print (calculaTangenteHiper 0.300)
  print (tanh                 0.300)
  print (calculaTangenteHiper 0.450)
  print (tanh                 0.450)
  print (calculaTangenteHiper 0.600)
  print (tanh                 0.600)
  print (calculaTangenteHiper 0.900)
  print (tanh                 0.900)
  print (calculaTangenteHiper 0.270)
  print (tanh                 0.270)
  print (calculaTangenteHiper 0.350)
  print (tanh                 0.350)

  putStrLn "Should be close to built-in (cosh $1 / sinh $2): "
  print (calculaCotangenteHiper 0.300)
  print (cosh 0.300 / sinh 0.300)
  print (calculaCotangenteHiper 0.450)
  print (cosh 0.450 / sinh 0.450)
  print (calculaCotangenteHiper 0.600)
  print (cosh 0.600 / sinh 0.600)
  print (calculaCotangenteHiper 0.900)
  print (cosh 0.900 / sinh 0.900)
  print (calculaCotangenteHiper 0.270)
  print (cosh 0.270 / sinh 0.270)
  print (calculaCotangenteHiper 0.350)
  print (cosh 0.350 / sinh 0.350)
