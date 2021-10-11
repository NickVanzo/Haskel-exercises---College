{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
assoluto :: Int -> Int;
assoluto n | n >= 0 = n
           | otherwise = negate n

fattoriale :: Int -> Int;
fattoriale n | n == 0 = 1
             | otherwise = n * fattoriale (n - 1)

fattorialeNoGuardia :: Int -> Int 
fattorialeNoGuardia 0 = 1
fattorialeNoGuardia n = n * fattorialeNoGuardia(n - 1);

successore :: Int -> Int 
successore = \x -> x + 1

addizione :: Int -> Int -> Int 
addizione = \x -> \y -> x + y

mistero :: Int -> Int 
mistero = addizione 1

--Esercizio 1 scheda 
successoreSePari :: Int -> Int 
successoreSePari n = if n `mod` 2 == 0 then (n + 1) else (negate n) 

successoreSePariGuardie :: Int -> Int 
successoreSePariGuardie n | n `mod` 2 == 0 = n + 1
                          | otherwise = negate n

bisestile :: Int -> Bool
bisestile n = (n `mod` 4 == 0 && n `mod` 100 /= 0) || n `mod` 400 == 0

giorni :: Int -> Int
giorni anno | bisestile anno = 365
            | otherwise = 366

--Esercizi scheda 2 ricorsione
sommaNaturali :: Int -> Int 
sommaNaturali 0 = 0
sommaNaturali n = n + sommaNaturali(n - 1)

pow2 :: Int -> Int 
pow2 0 = 1
pow2 n = 2 * pow2(n - 1)

potenzaDi2 :: Int -> Bool
potenzaDi2 0 = False 
potenzaDi2 1 = True 
potenzaDi2 n = even n && potenzaDi2 (n `div` 2) 

pariAnon :: Int -> Bool 
pariAnon = \x -> x `mod` 2 == 0

dispariAnon :: Int -> Bool 
dispariAnon = \x -> not (pariAnon x)

valoreAssolutoAnon :: Int -> Int 
valoreAssolutoAnon = \x -> if x >= 0 then x else negate x

anon :: Int -> Int 
anon = \n -> ((+ 1) . (* 2)) n

anon2 :: Int -> Int 
anon2 = \n -> ((* 2) . (+ 1)) n

massimo :: Int -> Int -> Int 
massimo = \x -> \y -> if(x > y) then x else y

minimo :: Int -> Int -> Int 
minimo = \x -> \y -> if(x < y) then x else y 

potenza :: Int -> Int -> Int 
potenza _ 0 = 1
potenza m n = m * potenza m (n-1)

pow2V2 :: Int -> Int 
pow2V2 2 = pow2 2