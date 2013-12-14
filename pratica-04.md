__Lab__: Prática 4

__Nome__: Lucas Tonussi (CCO-INE-UFSC)

<div class="toc">
<ul>
<li><a href="#rodando-o-conjunto-de-modulos">Rodando o conjunto de modulos</a></li>
<li><a href="#roteiro-2-listagens-34-e-35">Roteiro 2 (listagens 3.4 e 3.5)</a></li>
</ul>
</div>

# Rodando o conjunto de modulos

Usando `ghc --make -O1 Maior.hs` visando carregar os modulos importados. Note
que eu fiz um programa novo Maior.hs o antigo já não funcionava mais.

__Exercício 1__: Usando o módulo Comb.hs (listagem 3.4), teste-o no interpretador.

Testado e funcionando, está disponível em __pratica-04__.

__Exercício 2__: Compile o programa exemplo (listagem 3.6) e teste o executável.

Para esse exercício eu respondi da seguinte forma. Criei um make.sh e
compilei, executei. O arquivo make.sh está disponível em __pratica-04__.

O Programa CentTools.hs foi atualizado e modificado para poder funcionar
normalmente ele se encontra em pratica-04. E para pode ser executado no _ghci_
basta fazer ghci CentTools.hs e executar as funções. Elas são na verdade funções nativas na _libghc_.

```haskell
ghci Main.hs
GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
[1 of 3] Compiling Fact             ( Fact.hs, interpreted )
[2 of 3] Compiling Comb             ( Comb.hs, interpreted )
[3 of 3] Compiling Main             ( Main.hs, interpreted )
Ok, modules loaded: Main, Comb, Fact.
*Main> main
12.0
*Main>
```

# Roteiro 2 (listagens 3.4 e 3.5)

__Exercício 3__: Modifique o programa exemplo para calcular:

1. _A_s (6, 3)_ (Arranjo simples)
* _A_r (4, 2)_ (Arranjo com repetição)
* _P_c (8)_ (Permutação cíclica)
* _C_r (10, 4)_ (Combinação com repetição)


```haskell
module Main (main) where

import Comb
import Fact

main = do
  print (arSim 6 3)    -- 120.0
  print (arRep 4 2)    -- 16.0
  print (perCirc 8)    -- 5040
  print (combRep 10 4) -- 715.0
```

