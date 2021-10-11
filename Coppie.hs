scambia :: (Int, Int) -> (Int,Int)
scambia (x, y) = (y, x) 

ordina :: (Int, Int, Int) -> (Int, Int, Int)
ordina (x,y,z) | (x>y) = ordina (y,x,z)
ordina (x,y,z) | (y>z) = ordina (z,x,y)
ordina a = a
    
type Complesso = (Double, Double)

sommaC :: Complesso -> Complesso -> Complesso
sommaC = \(x,y) -> \(z,w) -> (x+z, y+w)

negareC :: Complesso -> Complesso
negareC = \(x,y) -> (-x,-y)

menoC :: Complesso -> Complesso -> Complesso
menoC = \(x,y) -> \(z,w) -> (x-z,y-w)