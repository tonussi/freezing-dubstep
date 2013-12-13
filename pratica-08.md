__Lab__: Prática 8

__Nome__: Lucas Tonussi (CCO-INE-UFSC)


<div class="toc">
<ul>
<li><a href="#formashs">Formas.hs</a><ul>
<li><a href="#testes-de-formashs">Testes de Formas.hs</a></li>
<li><a href="#rodando-alguns-testes-unitarios-para-formashs">Rodando alguns testes unitários para Formas.hs</a></li>
</ul>
</li>
<li><a href="#funcoes-trigonometricas-hiperbolicas">Funções Trigonométricas Hiperbólicas</a></li>
<li><a href="#series">Séries</a></li>
<li><a href="#referencias">Referências</a></li>
</ul>
</div>


# Formas.hs

Testado e Funcionando. O Arquivo está contido no diretório
_/pratica-08/_. A conclusão é que usar where incorretamente
pode fazer a performance de uma função cair drásticamente
em Haskell isso é chamado de _eta expansion_. ["Let vs Where"](http://www.haskell.org/haskellwiki/Let_vs._Where)


```haskell
-- Prelude> :l Formas
-- [1 of 1] Compiling Formas ( Formas.hs, interpreted )
-- Ok, modules loaded: Formas.
```

## Testes de Formas.hs

Para testas. Basta analisar os tipos de dados e assim
as funções tornam-se muito fáceis de se entender e usar.
Forma é como se fosse uma estrutura de dados das quais eu
posso definir partes dessa estrutura individualmente como
Retangulo que é composta de dois _Lado's_ porém Lado é um tipo
declarado como Flutuante, ou seja. Para construir Retangulos eu
envio como parâmetro dois pontos flutuantes. `Retangulo 43.0 23.43`
e o Haskell construirá um tipo de dado Forma (Retangulo Lado Lado).
Elipse, TriangRet seguem a mesma ideia. Porém Poligono recebe uma
Lista de Vertices, mas Vertice `type Vertice = (Float, Float)` é
uma Túpla de dois termos, cuja representação está para pontos no
plano __(x, y)__.

```haskell
data Forma
  = Retangulo Lado Lado
  | Elipse Raio Raio
  | TriangRet Lado Lado
  | Poligono [Vertice]

type Raio = Float
type Lado = Float
type Vertice = (Float, Float)
```

## Rodando alguns testes unitários para Formas.hs

Para ver os resultados do teste unitário, basta fazer `ghci /pratica-08/Formas.hs` e dentro do prelude, castar `unittest`.

```haskell
unittest = do
  putStrLn "Haskell :: UnitTest"
  putStrLn "Test Area Retangulo"
  {- test area retangulo
  -}
  print (area (Retangulo 16 19) == 16*19)

  putStrLn "Test Area TriangRet"
  {- test area triangulo reto
  -}
  print (area (TriangRet 18.6 17.7) == (18.6 * 17.7 / 2))


  putStrLn "Test Area Elipse"
  {- test area elipse
  -}
  print (area (Elipse 19.0 17.0) == ( pi * 19.0 * 17.0))


  putStrLn "Test Area Poligono"
  {- test area poligono
  -}
  print (area (Poligono [ (10.20 , 13.86) ,
                          (16.60 , 13.30) ,
                          (13.10 , 12.16) ,
                          (18.60 , 95.10) ,
                          (10.20 , 13.86)]) == 129.56636)

  print (area (Poligono [ (41.90 , 11.35) ,
                          (13.12 , 12.10) ,
                          (12.00 , 17.12) ,
                          (18.60 , 95.10) ,
                          (12.90 , 58.60) ,
                          (41.90 , 11.35)]) == 1920.5723)

  print (area (Poligono [ (18.60 , 75.30) ,
                          (16.23 , 88.50) ,
                          (10.10 , 83.60) ,
                          (13.20 , 12.28) ,
                          (86.70 , 17.40) ,
                          (13.10 , 50.40) ,
                          (18.60 , 75.30)]) == 1920.5723)

  putStrLn "Test DistEntre"
  {- testa da distancia entre dois pontos
  -}
  print (distEntre (12.18, 76.40) (18.00, 3.0) == (sqrt ((12.18-18.00)**2 + (76.40-3.0)**2)))


  putStrLn "Test TriArea"
  {- testa da area triangulo
  -}
  print (triArea (10.20 , 13.86) (16.60 , 13.3) (13.1 , 12.16) == 4.627999999999997)
```

# Funções Trigonométricas Hiperbólicas

Única dificuldade foi entender os tipos númericos em haskell
para construir esse módulo que cálcula as funções trigonométricas
para esse exercício. [1] Esses resultados abaixo são respectivamente
a função em haskell que eu criei para calcular sinh, cosh, tanh, coth.
e logo após vem o resultado da função built-in do haskell (mais confiável).
Para podermos comparar.

```haskell
-- *Hiperbolicas> :l Hiperbolicas.hs
-- [1 of 1] Compiling Hiperbolicas     ( Hiperbolicas.hs, interpreted )
-- Ok, modules loaded: Hiperbolicas.
-- *Hiperbolicas> unittest

-- Haskell::MiniTest

-- Should be at least close to built-in sinh:

5.343235680134494e12
5.343237290762231e12
1.7467127630988065e19
1.7467135528742547e19
5.710033506692466e25
5.710036949078421e25
6.1020109535445344e38
6.102016471589204e38
9.088222270252145e116
9.0882469256955e116
5.035436726897341e151
5.0354544351403985e151

-- Should be at least close to built-in cosh:

5.343235680134494e12
5.343237290762231e12
1.7467127630988065e19
1.7467135528742547e19
5.710033506692466e25
5.710036949078421e25
6.1020109535445344e38
6.102016471589204e38
9.088222270252145e116
9.0882469256955e116
5.035436726897341e151
5.0354544351403985e151

-- Should be at least close to built-in tanh:

0.29131260969306616
0.2913126124515909
0.42189900153333365
0.4218990052500079
0.537049562708175
0.5370495669980353
0.7162978657958357
0.7162978701990245
0.26362483294784755
0.2636248354722033
0.33637554121752544
0.3363755443363322

-- Should be close to built-in (cosh $1 / sinh $2):
3.4327384628273507
3.432738430321742
2.370235521690353
2.3702355008100158
1.8620255362602083
1.8620255213866663
1.3960672616118435
1.396067253030012
3.7932693548556116
3.7932693185329285
2.972867754832762
2.9728677272689263
```

# Séries

Apostei no método de Castellanos (1986, 1988) mas infelizmente eu não consegui implementa-lo corretamente. Para testar `ghci /pratica-08/Series.hs` e lançar `unittest`. Mas eu acredito por intuição que esse método
é suficiente se usar fibonacci iterativo.

```haskell
-- Haskell :: UnitTest
-- Test Fibonacci O(n) Recursivo
0
1
5
55
75025
832040

-- Test Fibonacci O(1) Iterativo
0.0
1.0
5.0
55.0
75025.0
832039.9999999999

-- Test Parcelas Arctan

0.0
-5.69401310833123e-2
1.0493901531919196e-2
-3.549646119343373e-3
9.049450414004474e-4

-- Test Parcelas Arctan (1)
-- Should be next to Haskell built-in pi
-- Should be next to Haskell built-in 4 * atan 1

0.0
-5.69401310833123e-2
-4.64462295513931e-2
-4.9995875670736475e-2
-4.9090930629336026e-2
Test Parcelas Arctan (2)
-4.929458907599922e-2
-4.929471224819077e-2
```

# Referências

[1] : Haskell, Haskell . ORG ; Tutorial sobre Números em Haskell , Disponível em : http://www.haskell.org/tutorial/numbers.html . Acesso 13/12/2013.

[1]: http://www.haskell.org/tutorial/numbers.html "Haskell Numbers"
