module Prob5 where
import Debug.Trace

smallestMultiple::Int->Int
smallestMultiple x = sMul 1
    where
        isFact :: Int -> Bool
        isFact y = foldl (&&) True [y `mod` i == 0 | i <- [1..x]]
        sMul :: Int -> Int
        sMul x = if isFact x then x
                    else sMul (x + 1)

sMultiple :: Int -> Int
sMultiple x = foldl (*) 1 (map (\(x1,x2)-> x1 ^ x2) (getMinFacts x ) )

getMinFacts :: Int -> [(Int, Int)]
getMinFacts i = foldl compFactTups [] [(getFactTups i []) | i <- [2..i]]

compFactTups :: [(Int, Int)] -> [(Int, Int)] -> [(Int, Int)]
compFactTups [] [] = []
compFactTups [] y = y
compFactTups x [] = x
compFactTups (x : xs) (y : ys) =
    if (fst x < fst y)
    then x : compFactTups xs (y : ys)
    else
        if (fst x == fst y)
        then
            if snd y > snd x
            then (fst x, snd y) : (compFactTups xs ys)
            else (fst x, snd x) : (compFactTups xs ys)
        else (x : xs)
getFactTups :: Int -> [(Int, Int)] -> [(Int, Int)]
getFactTups 1 [] = []
getFactTups 1 z = z
getFactTups i [] = getFactTups (quot i (minFact i) ) [((minFact i), 1)]
getFactTups i (z : zs) =
    if (mod i (fst z)) == 0
    then getFactTups ( quot i (fst z) ) ( (fst z, (snd z) + 1 ) : zs )
    else z : getFactTups i zs

minFact :: Int -> Int
minFact i = ( getMinWhere ( \x -> (mod i x) == 0 ) 2 )

getMinWhere :: ( Int -> Bool ) -> Int ->  Int
getMinWhere f x =
    if (f x)
    then x
    else (getMinWhere f (x + 1))
