module Main where

import Prob4
import Prob5

main :: IO ()
main = do
    putStrLn "Prob4"
    putStrLn (show (palFromDigits 3))

    putStrLn "Prob5"
    -- WORKS BUT VERY SLOW
    -- putStrLn (show (smallestMultiple 20))
    putStrLn "Prob5 -opt"
    -- MUCH FASTER
    putStrLn (show (sMultiple 20))
