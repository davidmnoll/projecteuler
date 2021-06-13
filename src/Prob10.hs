module Prob10 where
import Debug.Trace

-- TODO: rewrite so m can only be prime

slowSumPrimesLessThan :: Int -> Int
slowSumPrimesLessThan = go 2 3 
    where 
        go :: Int -> Int -> Int -> Int
        go s x n 
            | n <= 2 = 0
            | x >= n = s
            | otherwise = go (s + x) (slowNextPrime (x + 2)) n


slowNextPrime :: Int-> Int
slowNextPrime = go 3
    where 
        go :: Int -> Int -> Int
        go m n 
            | n < 2 = 2
            | even n = go 3 (n + 1)
            | n `mod` m == 0 = go 3 (n + 2)
            | m > (n `div` 3) = n
            | otherwise = go (slowNextPrime (m + 2)) n

sumPrimesLessThan :: Int -> Int
-- sumPrimesLessThan n = let pb = (primesBetween 2 n ) in sum (traceShow pb pb)
sumPrimesLessThan = sum . primesBetween 2 

primesBetween :: Int -> Int -> [Int]
primesBetween a b = go [a..b] 2 ( (floor . sqrt . fromIntegral) b)
    where
        go :: [Int] -> Int -> Int -> [Int]
        go [] _ _ = []
        go (x : xs) m l
            | m > l = (x : xs)
            | let next = (sieveMultiplesofN xs m), otherwise = x : go next (head next) l

sieveMultiplesofN :: [Int] -> Int -> [Int]
sieveMultiplesofN [] _ = []
sieveMultiplesofN ( x : xs ) n = if x `mod` n == 0 then (sieveMultiplesofN xs n) else x : (sieveMultiplesofN xs n)

-- isPrime :: Int -> Bool
-- isPrime n =
