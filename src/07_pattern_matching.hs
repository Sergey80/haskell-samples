lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

addVector :: (Num a) => (a, a) -> (a, a) -> (a, a)
--addVector t1 t2 = (fst t1 + fst t2, snd t1 + snd t2)
addVector (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

 
