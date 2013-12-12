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
