module Main where

import Control.Exception
import System.Environment

import Prob1 ( mulThreeFive )
import Prob2 ( evenFibs )
import Prob3 ( largestPrimeFactor )
import Prob4 ( palFromDigits )
import Prob5 ( sMultiple )
import Prob6 ( sqDiff )
import Prob7 ( nthPrime )
import Prob8 ( adjacentDigitsMaxProd )
import Prob9 ( pyProd ) 
import Prob10 ( sumPrimesLessThan )



main :: IO ()
main = do
    args <- getArgs
    case parseArgs args of
        Nothing -> doOutput "Prob10" (sumPrimesLessThan 2000000)
        Just (1) -> doOutput "Prob1" (mulThreeFive 1000)
        Just (2) -> doOutput "Prob2" (evenFibs 4000000)
        Just (3) -> doOutput "Prob3" (largestPrimeFactor 600851475143)
        Just (4) -> doOutput "Prob4" (palFromDigits 3)
        Just (5) -> doOutput "Prob5" (sMultiple 20)
        Just (7) -> doOutput "Prob7" (nthPrime 10001) 
        Just (6) -> doOutput "Prob6" (sqDiff 100)
        Just (8) -> doMOutput "Prob8" (adjacentDigitsMaxProd 13)
        Just (9) -> doOutput "Prob9" (pyProd 1000)
        Just (10) -> doOutput "Prob10" (sumPrimesLessThan 2000000)
        Just x  
            | x > 0 -> error "Problem not implemented"
            | otherwise -> error "Problem not valid"

-- data CommandError = CommandError String
-- parseArgs :: [String] -> Either ParseError ( Maybe Int )
parseArgs :: [String] -> Maybe Integer
parseArgs [x] = Just (read x :: Integer)
parseArgs (x : xs) =  error ("Too Many Args -- " ++ show (x : xs))
parseArgs [] = Nothing

doOutput :: Show a => String -> a -> IO ()
doOutput x y = do
    putStrLn x
    putStrLn "==="
    print y

doMOutput x y = do
    putStrLn x
    putStrLn "==="
    s <- y
    putStrLn (show s)
