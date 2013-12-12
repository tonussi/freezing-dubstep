module Formas
( Forma
( areaRetangulo
, areaElipse
, areaTriangRet
, areaPoligono )
, raio
, lado
, vertice
, quadrado
, circulo
, distentre
, area
) where

data Forma = areaRetangulo lado lado
	   			 | areaElipse raio raio
	   			 | areaTriangRet lado lado
	   			 | areaPoligono [vertice]
     			 deriving Show

type raio = Float
type lado = Float
type vertice = (Float, Float)

quadrado s = areaRetangulo s s
circulo r = areaElipse r r

triArea :: vertice -> vertice -> vertice -> Float
triArea v1 v2 v3 = let a = distentre v1 v2
		                   b = distentre v1 v2
		                   c = distentre v1 v2
		                   s = distentre v1 v2
		    in sqrt (s * (s - a) * (s - b) * (s - c))

distentre :: vertice -> vertice -> Float
distentre (x1, y1) (x2, y2) = sqrt ((x1 - x2) ^ 2 + (y1 - y2) ^ 2)

area :: Forma -> Float
area (areaRetangulo s1 s2)  = s1 * s2
area (areaTriangRet s1 s2)  = s1 * s2 / 2
area (areaElipse r1 r2)     = pi * r1 * r2
area (areaPoligono (v1:vs)) = poliArea vs where poliArea :: [vertice] -> Float
			      poliArea (v2:v3:vs') = triArea v1 v2 v3 + poliArea (v3:vs')
			      poliArea _ = 0
