-- pattern matching by value argument

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

addVector :: (Num a) => (a, a) -> (a, a) -> (a, a)
--addVector t1 t2 = (fst t1 + fst t2, snd t1 + snd t2)
addVector (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- pattern mathing by list

safetail1 [] = []
safetail1 (_: xs) = xs       --- "_" means: whatever one element - that is pettern matching too


safetail2 (_: xs)            -- expect only not empty list -- a pattern matching
 | null xs = []              
 | otherwise = xs

 -- pattern matching by function (defining a map function calling it as a 'm')
m :: (a -> b) -> [a] -> [b]
m f [] = []                     -- mathcing by function that takes empy list
m f (x:xs) = f x : m f xs       -- matching by function that takes not empty list

mapResult = m (*2) [1,2,3]      -- [2,3,6]
 
