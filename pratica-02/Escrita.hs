module Escrita
( exec
, f
, f'
, qs
, qs'
) where

f x = case x of { 0 -> 1; 1 -> 5; 2 -> 2; _ -> 1}

f' x = case x of
        0 -> 1
        1 -> 5
        2 -> 2
        _ -> 1

{- qs : quicksort -}

-- idented

qs [] = []
qs (x:xs) = qs lt ++ [x] ++ qs ge where
                   lt = [y | y <- xs, y < x]
                   ge = [y | y <- xs, y >= x]


-- oneline

qs' [] = []; qs' (x:xs) = qs' lt ++ [x] ++ qs' ge where lt = [y | y <- xs, y < x]; ge = [y | y <- xs, y >= x]

exec = do
  print (qs [ 339, 1015, 1301, 1054, 934, 1001 ])
  print (qs' [ 339, 1015, 1301, 1054, 934, 1001 ])
