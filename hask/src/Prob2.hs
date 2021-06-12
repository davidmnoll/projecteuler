module Prob2 where



fibsList :: Int -> [Int]
fibsList 0 = []
fibsList 1 = [1]
fibsList 2 = [2,1]
fibsList n = (x + y) : x : y : z 
     where x : y : z = fibsList (n - 1) 


fibsListTruncated ::  Int -> [Int]
fibsListTruncated = go 0
    where 
        go :: Int -> Int -> [Int]
        go n l 
            | l == 0 = []
            | l == 1 = [1] 
            | otherwise = case fibsList n of
                x : y : zs -> if x + y > l then x : y : zs else go (n + 1) l
                _ -> go (n + 1) l

evenFibs = sum . filter ( (0 ==) . (`mod` 2) ) . fibsListTruncated