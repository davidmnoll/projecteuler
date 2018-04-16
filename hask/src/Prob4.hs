module Prob4 where

palFromDigits :: Int -> Int
palFromDigits x = biggestPalFromNums (maxOfNrDigits) (maxOfNrDigits)
    where
        maxOfNrDigits = ((10 ^ x) - 1)

biggestPalFromNums :: Int -> Int -> Int
biggestPalFromNums x y =
    maximum [ i * j | i <- [0..x],  j <-[0..y], isPal (show ( i * j ))]
    where
        isPal [] = True
        isPal (x : []) = True
        isPal (x : xs) = (x == (last xs) ) && isPal (init xs )
        
