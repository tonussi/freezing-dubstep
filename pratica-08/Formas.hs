module Formas
( Forma
( Retangulo
, Elipse
, TriangRet
, Poligono )
, Raio
, Lado
, Vertice
, quadrado
, circulo
, distEntre
, area
, unittest
) where

data Forma
  = Retangulo Lado Lado
  | Elipse Raio Raio
  | TriangRet Lado Lado
  | Poligono [Vertice]

type Raio = Float
type Lado = Float
type Vertice = (Float, Float)

quadrado :: Lado -> Forma
quadrado s = Retangulo s s

circulo :: Raio -> Forma
circulo r = Elipse r r

triArea :: Floating a => (a, a) -> (a, a) -> (a, a) -> a
triArea v1 v2 v3 = let a = distEntre v1 v2
                       b = distEntre v2 v3
                       c = distEntre v3 v1
                       s = 0.5 * (a + b + c)
                   in sqrt (s * ( s - a ) * ( s - b ) * ( s - c ))

distEntre :: Floating a => (a, a) -> (a, a) -> a
distEntre (x1, y1) (x2, y2) = sqrt ((x1 - x2) ^ 2 + (y1 - y2) ^ 2)

area :: Forma -> Lado
area (Retangulo s1 s2)          = s1 * s2
area (TriangRet s1 s2)          = s1 * s2 / 2
area (Elipse r1 r2)             = pi * r1 * r2
area (Poligono (v1:vs))         = poliArea vs where poliArea :: [Vertice] -> Float
                                                    poliArea (v2:v3:vs') = (triArea v1 v2 v3) + poliArea (v3:vs')
                                                    poliArea _           = 0


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
                          (10.20 , 13.86)]))

  print (area (Poligono [ (41.90 , 11.35) ,
                          (13.12 , 12.10) ,
                          (12.00 , 17.12) ,
                          (18.60 , 95.10) ,
                          (12.90 , 58.60) ,
                          (41.90 , 11.35)]))

  print (area (Poligono [ (18.60 , 75.30) ,
                          (16.23 , 88.50) ,
                          (10.10 , 83.60) ,
                          (13.20 , 12.28) ,
                          (86.70 , 17.40) ,
                          (13.10 , 50.40) ,
                          (18.60 , 75.30)]))

  putStrLn "Test DistEntre"
  {- testa da distancia entre dois pontos
  -}
  print (distEntre ( 12.18, 76.40 ) ( 18.00 , 3.0 ) == sqrt ( (12.18-18.00)^2 + (76.40-3.0)^2 ) )


  putStrLn "Test TriArea"
  {- testa da area triangulo
  -}
  print (triArea (10.20 , 13.86) (16.60 , 13.3) (13.1 , 12.16))

