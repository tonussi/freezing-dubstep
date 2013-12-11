__Lab__: Prática 5

__Nome__: Lucas Tonussi (CCO-INE-UFSC)

<div class="toc">
<ul>
<li><a href="#indentando-em-haskell">Indentando em Haskell</a></li>
<li><a href="#desindentando-em-haskell">(des)Indentando em Haskell</a></li>
<li><a href="#usando-o-operador-encontre">Usando o operador “..” encontre:</a></li>
</ul>
</div>

# Indentando em Haskell

Haskell tem implementado artifícios para que você
possa escrever com mais qualidade sintática. Tornando
mais legível as funções.

```haskell
-- oneline

f x = case x of { 0 -> 1; 1 -> 5; 2 -> 2; _ -> 1}

-- idented

f' x = case x of
        0 -> 1
        1 -> 5
        2 -> 2
        _ -> 1
```

# (des)Indentando em Haskell

```haskell

{- qs : quicksort -}

-- idented

qs [] = []
qs (x:xs) = qs lt ++ [x] ++ qs ge where
                   lt = [y | y <- xs, y < x]
                   ge = [y | y <- xs, y >= x]


-- oneline

qs' [] = []; qs' (x:xs) = qs' lt ++ [x] ++ qs' ge where lt = [y | y <- xs, y < x]; ge = [y | y <- xs, y >= x]

```

_internet: dizem que esse qs oneline não é confiável..._

# Usando o operador “..” encontre:

1. Uma lista de 1 a 1000.
2. Uma $P_a$ de 1 a 99 de razão 3.
3. Uma $P_g$ de 50 termos de razão 2.
4. O $n-ésimo$ termo de uma série infinita de fatoriais.


```haskell
Prelude> [1..1000] -- 1

Prelude> map (+3) [1..99] -- 2

Prelude> filter odd (map (\x -> x + 2) [-1..98])

{- [1,  3,  5,  7,  9, 11, 13, 15, 17, 19,
   21, 23, 25, 27, 29, 31, 33, 35, 37, 39,
   41, 43, 45, 47, 49, 51, 53, 55, 57, 59,
   61, 63, 65, 67, 69, 71, 73, 75, 77, 79,
   81, 83, 85, 87, 89, 91, 93, 95, 97, 99]
-}

Prelude> let fact = foldl (*) 1 . enumFromTo 1
Prelude> let fInfFact n = map (\x -> fact x) (take n [1..])
Prelude> fInfFact 10

{- [1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800]
-}
```

Após conseguir escrever esses mapeadores em que a base deles
é o comprimento [a..b]. Basta trabalhar em cima dos resultados
deles, por exemplo `sum(fInfFact 10)`.
