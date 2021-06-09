module Prob7 where
import Debug.Trace

nthPrime :: Int -> Int
nthPrime = nthPrimeGTETo 1 
    where 
        nthPrimeGTETo :: Int -> Int -> Int
        nthPrimeGTETo currPrime 0 = currPrime
        nthPrimeGTETo currPrime c = nthPrimeGTETo (nextPrime (currPrime + 1)) (c - 1) 

nextPrime :: Int-> Int    
nextPrime n = if (sieveCheck (n `div` 2) n) then n else nextPrime (n + 1)

sieveCheck :: Int -> Int -> Bool
sieveCheck 1 y  = True
sieveCheck x y  
    | (y `mod` x /= 0 ) = sieveCheck (x - 1) y
    | otherwise = False