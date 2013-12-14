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
