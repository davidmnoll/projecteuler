module Prob3 where
import Debug.Trace

largestPrimeFactor :: Int -> Int
largestPrimeFactor n = maximum ( go [] 2 n )
    where 
        go :: [Int] -> Int -> Int -> [Int]
        go acc m 1 = acc
        go acc m n 
            | n `mod` m == 0 = go (m : acc) m (n `div` m)
            | otherwise = go acc (m + 1) n


