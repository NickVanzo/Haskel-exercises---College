primiNumeriPrimi :: [Int]
primiNumeriPrimi = [1,2,3,5,7,9,11,13,17,29]

media :: [Int] -> Float
media xs = fromIntegral(sum xs) / fromIntegral(length xs)

fattoriale :: Int -> Int
fattoriale x = product [1..x]

intervallo :: Int -> Int -> [Int]
intervallo m n | m > n = [] 
               | otherwise = m : intervallo (m+1) n

primo :: Int -> Bool
primo n = aux 2
  where
    aux k | k >= n         = k == n
          | n `mod` k == 0 = False
          | otherwise      = aux (k + 1)

primi :: Int -> [Int]
primi x | x < 3 = []
        | primo x = primi (x-1) ++ [x] 
        | otherwise = primi (x-1)
