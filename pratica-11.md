__Lab__: Prática 11

__Nome__: Lucas Tonussi (CCO-INE-UFSC)

[TOC]

# Mônadas

Sites visitados para esse relatório:

+ [Haskell/Monads](http://www.haskell.org/haskellwiki/Monads "Haskellwiki: Monads")
+ [Haskell/Control/Monad](http://www.haskell.org/ghc/docs/latest/html/libraries/base/Control-Monad "Libraries: Control-Monad")
+ [Physics.bu.edu/Circuits](http://physics.bu.edu/py106/notes/Circuits.html "Circuits")

# Problema dos Resistores

Se qualquer resistor for de 0 Ohms, a função deverá tratar a divisão por zero. Isto pode ser feito de maneira direta, testando condicionalmente os argumentos da função (usando-se "ifs") ou tratando o problema por meio de transformações naturais (mônadas).

    Resistências em Série:

    __EqRes(series)__: R = R1 + R2 + R3 + ...

    Resistências em Paralelo:

    __EqRes(parallel)__: 1 / R = 1 / R1 + 1 / R2 + 1 / R3 +...

Visualizar no diretório __../pratica-11/__ os modulos que tratam esse laboratório sobre Mônadas e Homologia.

## Vantagens/Desvantag

Da para ver que essa reticências vão longe, e esse é um problema. Imaginamos que não temos o controle dessas reticências e precisamos de uma classe implementada, um algoritmo, um módulo, que calcule e resolva esse problema. O jeito é criar reduções para atingir a solução desse problema de uma distância mais propícia.

A Mônoda implementada para o cálculo da resistência funciona corretamente sempre retornando __Just__ _res_equivalente_.

`//` está retornando Maybe Float ou seja, resultados que podem não ocorrer.
E por isso que nesse modulo eu não posso interagir os retornos dessas funções Maybe com funções que são puramente Float ou Integer.

As vantagens é que é uma solução puramente funcional que resolve um problema que pode tomar grandes proporções. Mas que usa reduções homólogas.

As desvantagens é que trabalhamos com tipos Maybe de dados, o que pode complicar na hora da implementação.

```haskell
-- *Resist> :l Resist.hs
-- [1 of 1] Compiling Resist           ( Resist.hs, interpreted )
-- Ok, modules loaded: Resist.
-- *Resist> unittest
-- Haskell :: MiniTest
-- Test Resistencia

--rst                   ==? produto / soma

Just 2.78444089456869   ==? 2.78444089456869
Just 0.7475318731611638 ==? 0.7475318731611637
Just 0.6659932609509547 ==? 0.6659932609509546
Just 1.255792207792208  ==? 1.255792207792208
Just 3.0011102886750556 ==? 3.0011102886750556
Just 0.5947161210111894 ==? 0.5947161210111893
Just 0.5945722036727878 ==? 0.594572203672788
Just 0.6823533478893741 ==? 0.6823533478893741
Just 9.385712004258718  ==? 9.385712004258716
Just 15.027203065134099 ==? 15.027203065134097
Just 23.787216494845364 ==? 23.787216494845364
Just 14.631704751888325 ==? 14.631704751888325
Just 6.725654916512059  ==? 6.725654916512059
Just 8.801566871852266  ==? 8.801566871852266
Just 12.763522911307993 ==? 12.76352291130799
Just 7.765261170547514  ==? 7.7652611705475145
```
