__Lab__: Prática 6

__Nome__: Lucas Tonussi (CCO-INE-UFSC)

<div class="toc">
<ul>
<li><a href="#implementacao-e-teste-da-classe-mixfunc">Implementação e Teste da Classe MixFunc</a></li>
<li><a href="#comparacao-com-outras-linguagens">Comparação com outras linguagens</a></li>
<li><a href="#classes-e-tipos-exercicios-resolvidos">Classes e Tipos (Exercícios Resolvidos)</a></li>
<li><a href="#referencias">Referências</a></li>
</ul>
</div>

# Implementação e Teste da Classe MixFunc

Objetivo desse lab 6 é aprender classes em Haskell.

```haskell
class Mixfunc a where
  (+++) :: a -> a -> a
  (***) :: Num a => a -> a -> a

  x *** y = x * x * y

instance Mixfunc Double where -- Definido para x double e y double
  x +++ y = 2 * x + y

instance Mixfunc Integer where -- Definido para x inteiro e y inteiro
  x +++ y = 10 * x + y

{- Testes Unitários -}

-- [1 of 1] Compiling Main ( Mixfunc.hs, interpreted )
-- Ok, modules loaded: Main.

Prelude> 5 *** 7 -- 175
Prelude> 5 +++ 3 -- 53
Prelude> 3 +++ 2 -- 32
Prelude> 5 *** 7 == 5 * 5 * 7 -- True
Prelude> 3 +++ 2 == 2 * 3 + 2 -- False
Prelude> 3 +++ 2 == 2 * 2 + 3 -- False
Prelude> 3 +++ 2 -- 32
Prelude> 3.2 +++ 2.4 -- 8.8
Prelude> 3.2 +++ 2.4 == 2 * 3.2 + 2.4 -- True
Prelude> 3 +++ 4 == 10 * 3 + 2 -- False
Prelude> 3 +++ 4 == 10 * 3 + 4 -- True
```

# Comparação com outras linguagens

- Haskell separa a definição de tipo da definição de método associado ao seu tipo. [1]
- Os métodos das classes em haskekll correspondem às funções virtuais em C++. [1]
- Haskell não suporta o _overloading_ que C++ suporta. [1]
- O tipo de um objeto em Haskell não pode ser implicitamente coeso. Pois não existe uma classe base universal como _Object.java_ a qual todas herdam propriedadas. [1]


# Classes e Tipos (Exercícios Resolvidos)

__Exercício 1__:

```haskell
increm :: Integer -> Integer
increm = \x -> x + 1

ppar :: (Enum a, Num a) => a -> a
ppar n = product [2,4..n]

primeiro :: [t] -> t
primeiro (x:_) = x

ultimo :: [t] -> t
ultimo [x] = x
ultimo (_:xs) = ultimo xs

rotaciona :: [a] -> [a]
rotaciona [] = error "EmptyListException"
rotaciona (x:xs) = xs ++ [x]
```
__Exercício 2__:

```haskell
module Pitagoras
( triads
) where

triads :: (Enum t, Eq t, Num t) => t -> [(t, t, t)]
triads n = [(a, b, c) |
                      a <- [1..n] ,
                      b <- [1..n] ,
                      c <- [1..n] ,
                      a ^ 2 + b ^ 2 == c ^ 2]


-- [1 of 1] Compiling Pitagoras ( Pitagoras.hs, interpreted )
-- Ok, modules loaded: Pitagoras.
-- *Pitagoras> :browse Pitagoras
-- triads :: (Enum t, Eq t, Num t) => t -> [(t, t, t)]
```

# Referências

[1] : Haskell, Haskell . ORG ; Tutorial sobre Classes em Haskell , Disponível em : http://www.haskell.org/tutorial/classes.html . Acesso 12/12/2013.

[1]: http://www.haskell.org/tutorial/classes.html "Haskell Classes"
