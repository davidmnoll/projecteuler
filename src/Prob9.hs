module Prob9 where

import Debug.Trace
import Control.Applicative
import Control.Monad.Logic
import Data.Functor.Identity


choose :: [a] -> LogicT Identity a
choose = foldr ((<|>) . pure) empty

isTriple :: Int -> LogicT Data.Functor.Identity.Identity [Int]
isTriple n = do 
    a <- choose [1..n]
    b <- choose [a..n]
    c <- choose [b..n]
    guard ( (a * a) + (b * b) == (c * c) )
    guard ( a + b + c == n )
    pure [a, b, c]


pyProd :: Int -> Int
pyProd = product . head . observeAll . isTriple


prob9main :: IO()
prob9main = do 
    putStrLn $ "triples: " ++ show (pyProd 1000)