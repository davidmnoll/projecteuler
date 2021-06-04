module Main where

import Prob4
import Prob5
import Prob6

main :: IO ()
main = do
    putStrLn "Prob4"
    putStrLn "==="
    putStrLn (show (palFromDigits 3))

    putStrLn "Prob5"
    putStrLn "==="
    -- WORKS BUT VERY SLOW
    -- putStrLn (show (smallestMultiple 20))
    putStrLn "Prob5 -opt"
    putStrLn "==="
    -- MUCH FASTER
    putStrLn (show (sMultiple 20))
    putStrLn "Prob6"
    putStrLn "==="
    putStrLn (show (nthPrime 10001))
