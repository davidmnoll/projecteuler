{-# LANGUAGE ScopedTypeVariables #-}
module Prob8 where
import Debug.Trace
import System.IO
import Control.Monad (forever)
import Text.Read
import Debug.Trace



adjacentDigitsMaxProd z = do
    MaxProdAndList n m (l:ls) <- foldOnCharsFromFile "./resource/prob8.txt" getCharAndAddToMPL (MaxProdAndList z 0 [] )
    pure m


getCharAndAddToMPL agg x = case readMaybe [x] of
    Just (integer :: Int) -> addToMPL agg integer
    Nothing -> agg 
    

data MaxProdAndList = MaxProdAndList Int Int [Int] deriving Show
addToMPL :: MaxProdAndList -> Int -> MaxProdAndList
addToMPL (MaxProdAndList n  0 []) x = (traceShow r r)
    where r = MaxProdAndList n x [x] 
addToMPL (MaxProdAndList n  m  (l:ls)) x
    | product (l:ls) > m =  (traceShow r1 r1)
    | otherwise = (traceShow r2 r2)
    where 
        r1 = MaxProdAndList n (product (l:ls)) (take n (x : l : ls))
        r2 = MaxProdAndList n m (take n (x : l : ls))

foldOnHandle :: Show t => Handle -> (t -> Char -> t) -> t -> IO t
foldOnHandle h f agg = do
    eof <- hIsEOF h
    if eof then pure agg
    else do 
        c <- hGetChar h
        foldOnHandle h f (f agg c)

foldOnCharsFromFile fileName f i = do
    withFile fileName ReadMode  $ \handle -> foldOnHandle handle f i 



doOnCharsFromFile fileName f = do
    withFile fileName ReadMode (\handle -> forever $ do
        c <- hGetChar handle
        f c)







