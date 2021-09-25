--Scrivere un’espressione logica per calcolare il valore della relazione 1 ≤ 2 ≤ 3.
es1Boolean :: Bool
es1Boolean = 1 <= 2 && 2 <= 3

--Scrivere un’espressione per rappresentare la condizione “1 minore o uguale di 0 oppure 0 minore o uguale di 1”, il cui valore deve essere True
es2Boolean :: Bool
es2Boolean = (1 <= 0) || (0 <= 1)

--Concepire una espressione logica per appurare che && è davvero cortocircuitato. Suggerimento: individuare una espressione che, se valutata, genera un errore (es. una divisione per zero) e usare tale espressione in una condizione formulata usando && e ||.
es3Boolean :: Bool
es3Boolean =  False && (1 `div` 0 == 0)

--Ripetere l’esercizio precedente con l’operatore ||.
es4Boolean :: Bool
es4Boolean = False || (1 `div` 0 == 0)

--Esprimere le espressioni E1 && E2 ed E1 || E2 come espressioni condizionali, senza fare uso di operatori. 
es5Boolean :: Bool
es5Boolean = if 1 == 1 then 1 /= 1 else False

es5BooleanParte2 :: Bool
es5BooleanParte2 = if 1 /= 1 then True else 1 == 0
--Aggiungere a PrimoScript.hs le definizioni per i nomi anno_mercurio e v_mercurio tenendo conto che Mercurio dista dal Sole circa 58 
--milioni di chilometri e impiega circa 88 giorni terrestri per compiere un’orbita. Usare il comando :r per ricaricare lo script dopo averlo modificato.
anno_terra :: Float
anno_terra = 2 * pi * 150e6

v_terra :: Float
v_terra = anno_terra / (365 * 24)

anno_mercurio :: Float
anno_mercurio = 2 * pi * 58e6

v_mercurio :: Float
v_mercurio = anno_mercurio / (88 * 24)

--La sequenza di Fibonacci inizia con i numeri 0 e 1 e ogni numero successivo è ottenuto sommando i due immediatamente precedenti. Dunque, 
--i primi otto numeri nella sequenza di Fibonacci sono 
--0, 1, 1, 2, 3, 5, 8, 13, 21. Il seguente script Haskell definisce i nomi f0, f1e f2 per i primi tre numeri nella sequenza di Fibonacci.
f0 :: Int
f0 = 0

f1 :: Int
f1 = 1

f2 :: Int
f2 = f0 + f1

f3 :: Int
f3 = f2 + f1

f4 :: Int
f4 = f3 + f2

f5 :: Int
f5 = f4 + f3

f6 :: Int
f6 = f5 + f4

f7 :: Int
f7 = f6 + f5

--Ridefinire la funzione dispari senza fare uso dell’operatore di composizione funzionale
dispari :: Int -> Bool
dispari n = n `mod` 2 /= 0

--Un anno è bisestile se è multiplo di 4 ma non di 100, oppure se è multiplo di 400. Definire un predicato 
--bisestile :: Int -> Bool che, applicato a un numero , determini se  è un anno bisestile.
bisestile :: Int -> Bool
bisestile anno = if (anno `mod` 400 == 0) then True else (anno `mod` 4 == 0 && anno `mod` 100 /= 0)

--È noto che la somma dei primi  numeri naturali è data dalla formula . 
--Definire una funzione somma :: Int -> Int che, applicata a un numero interno  non negativo, 
--calcoli la somma dei primi  numeri naturali usando questa formula.
sommaNaturali :: Int -> Int
sommaNaturali n = ((n * (n + 1)) `div` 2)

--Definire una funzione area :: Float -> Float che, 
--applicata a un numero floating-point n non negativo, calcoli l’area del cerchio di raggio n
areaCerchio :: Float -> Float
areaCerchio r = r ** 2 * pi


