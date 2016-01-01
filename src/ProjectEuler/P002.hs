module ProjectEuler.P002 where

p002S1 :: Integer -> Integer
p002S1 maxNum = sum [ x | x <- takeWhile (<= maxNum) fibs, even x]
  where
    fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
