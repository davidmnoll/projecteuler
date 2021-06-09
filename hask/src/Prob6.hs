module Prob6 where
import Debug.Trace
import Control.Monad

sqDiff :: Int -> Int
sqDiff = head . differences . sequence [sqSum, sumSq] 

differences [] = []
differences xs = zipWith (-) (tail xs) (init xs)

sqSum = sum . map (join (*) ) . enumFromTo 1
-- sqSum n = map () [1..n]
sumSq = join (*) . sum . enumFromTo 1
