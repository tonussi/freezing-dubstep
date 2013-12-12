__Lab__: Prática 6

__Nome__: Lucas Tonussi (CCO-INE-UFSC)

[TOC]

# Implementação e Teste da Classe MixFunc

Objetivo desse lab 6 é aprender classes em Haskell.

```haskell
-- module Mixfunc
-- ( (+++)
-- , (***)
-- ) where

-- Num a =>

-- (***) :: a -> a -> a

class Mixfunc a where
  (+++) :: a -> a -> a
  (***) :: Num a => a -> a -> a

  x *** y = x * x * y

instance Mixfunc Double where
  x +++ y = 2 * x + y

instance Mixfunc Integer where
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

# Referências

[1] : Haskell, Haskell . ORG ; Tutorial sobre Classes em Haskell , Disponível em : http://www.haskell.org/tutorial/classes.html . Acesso 12/12/2013.

[1]: http://www.haskell.org/tutorial/classes.html "Haskell Classes"
