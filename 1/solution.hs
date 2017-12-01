import Data.Char

adjacentPairs l = zipWith (\x y -> if x == y then (x,y) else (0,0)) l (displaced l)
  where displaced l = drop displacement l ++ take displacement l
        -- displacement = 1 -- first Star
        displacement = fromIntegral $ length l `div` 2 -- second Star

solution :: String -> Int
solution input = sum $ map fst $ adjacentPairs $ map digitToInt input
