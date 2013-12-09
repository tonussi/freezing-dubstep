__Lab__: Prática 3

__Nome__: Lucas Tonussi (CCO-INE-UFSC)

[TOC]

# Cálculo Lambda em Haskell

```haskell
let quad = \x->x*x
quad 2 -- 4

let expr = \x->x^2+2*x+3
expr 2 -- 11

let raiz = \x->(sqrt x)
raiz 2 -- 1.4142135623730951

{- (f x = x*x)
-}
map (f x = x*x) [1..10] -- parse error on input =

{- trocar notacao (f x = x*x) por (\x->x*x)
-}
map (\x->x*x) [1 .. 10] -- [1,4,9,16,25,36,49,64,81,100]


{- funcao declarada antes
   e depois feito o map
   sobre a funcao
-}
let f x = x*x
map f [1..10] -- [1,4,9,16,25,36,49,64,81,100]

{- Uma expr lambda pode receber uma
   funcao como argumento, por exemplo:
-}
let fac n = if n==1 then 1 else (n*fac(n-1))
map (\x->(fac x)) [1..10] -- [1,2,6,24,120,720,5040,40320,362880,3628800]


```
