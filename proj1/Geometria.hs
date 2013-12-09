module Geometria
( volumeEsfera
, areaEsfera
, volumeCubo
, areaCubo
, areaCuboide
, volumeCuboide
, areaLateralCilindro
, areaTotalCilindro
, volumeCilindro
, areaLateralCone
, areaTotalCone
, volumeCone
, areaLateralTroncoCone
, areaTotalTroncoCone
, volumeTroncoCone
, areaEsferoideOblato
, volumeEsferoideOblato
, areaEsferoideProlato
, volumeEsferoideProlato
) where

volumeEsfera :: Float -> Float
volumeEsfera raio = (4.0 / 3.0) * pi * (raio ^ 3)

areaEsfera :: Float -> Float
areaEsfera raio = 4 * pi * (raio ^ 2)

volumeCubo :: Float -> Float
volumeCubo lado = volumeCuboide lado lado lado

areaCubo :: Float -> Float
areaCubo lado = areaCuboide lado lado lado

volumeCuboide :: Float -> Float -> Float -> Float
volumeCuboide a b c = areaRetangulo a b * c

areaCuboide :: Float -> Float -> Float -> Float
areaCuboide a b c = areaRetangulo a b * 2 + areaRetangulo a c * 2 + areaRetangulo c b * 2

areaRetangulo :: Float -> Float -> Float
areaRetangulo a b = a * b

areaLateralCilindro :: Float -> Float -> Float
areaLateralCilindro raio altura = 2 * pi * raio * altura

areaTotalCilindro :: Float -> Float -> Float
areaTotalCilindro raio altura = areaLateralCilindro raio altura + 2 * pi * (raio ^ 2)

volumeCilindro :: Float -> Float -> Float
volumeCilindro raio altura = pi * (raio ^ 2) * altura

areaLateralCone :: Float -> Float -> Float
areaLateralCone raio altura = pi * raio * sqrt (raio ^ 2 + altura ^ 2)

calculoSqrt :: Float -> Float -> Float
calculoSqrt raio altura = (sqrt (raio ^ 2 + altura ^ 2) + raio)

areaTotalCone :: Float -> Float -> Float
areaTotalCone raio altura = pi * raio * (calculoSqrt (raio altura))

volumeCone :: Float -> Float -> Float
volumeCone raio altura = (1.0 / 3.0) * pi * (raio ^ 2) * altura

areaLateralTroncoCone :: Float -> Float -> Float
areaLateralTroncoCone raio altura = pi * raio * sqrt (raio ^ 2 + altura ^ 2)

areaTotalTroncoCone :: Float -> Float -> Float
areaTotalTroncoCone raio altura = pi * raio * (calculoSqrt (raio altura))

volumeTroncoCone :: Float -> Float -> Float
volumeTroncoCone raio1 raio2 altura = (1.0 / 3.0) * pi * altura (raio1 ^ 2 + raio2 ^ 2 + raio1 * raio2)

{- Como calcular area de superf esferoidal
   https://en.wikipedia.org/wiki/spheroid
-}

ecentricidadeOblata :: Float -> Float -> Float
ecentricidadeOblata a b = (sqrt (a ^ 2 - b ^ 2)) / a

circunf :: Float -> Float
circunf a = 2 * pi * a ^ 2

areaEsferoideOblato :: Float -> Float -> Float
areaEsferoideOblato a b =
  if b < a
  then (circunf a) * (1 + (((1 - ((ecentricidadeOblata a b) ^ 2))  / ecentricidadeOblata a b) * atanh (ecentricidadeOblata a b)))
  else if b == a
  then areaEsfera a
  else 0

{- se for b > a nos esferoides oblatos
   nao da para calcular retorna 0
-}

volumeEsferoideOblato :: Float -> Float -> Float
volumeEsferoideOblato a b = (4.0 / 3.0) * pi * a ^ 2 * b

ecentricidadeProlata :: Float -> Float -> Float
ecentricidadeProlata a b = (sqrt (b ^ 2 - a ^ 2)) / b

areaEsferoideProlato :: Float -> Float -> Float
areaEsferoideProlato a b =
  if b > a
  then (circunf a) * (1 + ((b / a * (ecentricidadeProlata a b)) * (asin (ecentricidadeProlata a b))))
  else if b == a
  then areaEsfera a
  else 0

{- se for b < a nos esferoides prolatos
   nao da para calcular retorna 0
-}

volumeEsferoideProlato :: Float -> Float -> Float
volumeEsferoideProlato a b = (4.0 / 3.0) * pi * a * b ^ 2
