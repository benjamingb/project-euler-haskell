module ProjectEuler.P001 where

--solution1
p001S1 :: Integer -> Integer -> Integer -> Integer
p001S1 n1 n2 maxNum = sum [x | x<-[2..maxNum], (x `mod` n1 == 0 || x `mod` n2 == 0) && x < maxNum]

--solution2
p001S2 :: Integer -> Integer -> Integer -> Integer
p001S2 n1 n2 maxNum = sumStep n1 (maxNum-1) + sumStep n2 (maxNum-1) - sumStep (n1*n2) (maxNum-1)
  where
    sumStep s n = s * sumOnetoN (n `div` s)
    sumOnetoN n = n * (n+1) `div` 2
