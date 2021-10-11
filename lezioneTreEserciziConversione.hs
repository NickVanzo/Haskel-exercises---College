--Esercizio 1
-- 1 -> Quali variabili all'interno del ciclo vengono modificate? res n
fattoriale :: Int -> Int
fattoriale = aux 1
    where 
        aux res 0 = res
        aux res n = aux (res * n) (n - 1)

bits :: Int -> Int 
bits = auxB 0
    where
        auxB bits 0 = bits
        auxB bits n = auxB (bits + (n `mod` 2)) (n `div` 2)

euclide :: Int -> Int -> Int 
euclide m n | m == n = m
            | m < n = euclide (m) (n - m)
            | otherwise = euclide (m - n) (n)