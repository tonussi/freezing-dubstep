__Lab__: Prática 3

__Nome__: Lucas Tonussi (CCO-INE-UFSC)

<div class="toc">
<ul>
<li><a href="#calculo-lambda-em-haskell">Cálculo Lambda em Haskell</a></li>
<li><a href="#compreensao-de-lista">Compreensão de Lista</a></li>
</ul>
</div>

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

let p x y = if x `mod` y == 0 then True else False

map (\x -> if p x then f x else x) xs

let remove x list = [y | y <- list, not (p x)]

{- Criei um p x y que me devolve verdadeiro
   se x mod y == 0 e falso caso contrario
   com isso eu posso mapeador numa lista
   o que eu quiser que seja eliminado
   segundo o modulo que eu passar para
   esse mapeamento
-}

let p x y = if x `mod` y == 0 then True else False
let remove y list = [x | x <- list, not (p x y)]

Prelude> remove 4 [4..19]
[5,6,7,9,10,11,13,14,15,17,18,19]
```
# Compreensão de Lista

Uma lista pode ser especificada
pela definição de eus elementos.
A compreensão de listas é feita
com um construtor de listas que
utiliza conceitos  e notações
da teoria dos conjuntos.

```prolog
{-
-}

let hobbit = [ x | x <- [1..4], y <- [x..5], (x+y) `mod` 2 == 0 ] -- [1,1,1,2,2,3,3,4]

Prelude> :t hobbit
hobbit :: [Integer]
```
