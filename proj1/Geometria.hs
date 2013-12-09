module Geometria
( volumeEsfera
, areaEsfera
, volumeCubo
, areaCubo
, areaCuboide
, volumeCuboide
) where

volumeEsfera :: Float -> Float
volumeEsfera raio = (4.0 / 3.0) * pi * (raio ^ 3)

areaEsfera :: Float -> Float
areaEsfera raio = 4 * pi * (radio ^ 2)

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
