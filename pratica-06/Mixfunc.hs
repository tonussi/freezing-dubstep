-- module Mixfunc
-- ( (+++)
-- , (***)
-- ) where

-- Num a =>

-- (***) :: a -> a -> a

class Mixfunc a where
  (+++) :: a -> a -> a
  (***) :: Num a => a -> a -> a

  x *** y = x * x * y

instance Mixfunc Double where
  x +++ y = 2 * x + y

instance Mixfunc Integer where
  x +++ y = 10 * x + y
