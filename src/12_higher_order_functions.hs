-- Higher orer function
-- #filter #map #foldr

 -- pattern matching by function (defining a map function calling it as a 'm')
m :: (a -> b) -> [a] -> [b]
m f [] = []                     -- mathcing by function that takes empy list
m f (x:xs) = f x : m f xs       -- matching by function that takes not empty list

mapResult = m (*2) [1,2,3]      -- [2,4,6]

-- let's define our own filter

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter p [] = []                      -- 'p' means predicat (just nice naming it like this)
myFilter p (x:xs)
 | p x = x : myFilter p xs              -- if predicate True then putting x
 | otherwise = myFilter p xs            -- if not - skipping x, not adding to the result

filterResult1 = myFilter (<3) [1,2,3,4]  -- [1,2]
filterResult2 = myFilter even [1,2,3,4]  -- [2,4]

--
-- here we may see that either 'map' and 'filter' use the same common recurcive pattern.
-- do you see it ??
-- here it is: f x : m f xs   = p x = x : myFilter p px

-- same pattern here, in functions "sum" and "product"

mySum :: (Num a) => [a] -> a
mySum [] = 0
mySum (x:xs) = x + mySum xs

myProduct :: (Num a) => [a] -> a
myProduct [] = 1
myProduct (x:xs) = x * myProduct xs

-- let's try not repeatng ourself and let's come up with common solution  -- will use 'foldr' function.

resultSum = foldr (+) 0 [1,2,3,4]           -- 10
resultProduct = foldr (*) 1 [1,2,3,4]       -- 24

-- the way we _may_ define 'foldr' is:
myFoldr :: (a -> a -> a) -> a -> [a] -> a   -- here a'-type only for now... will see if it is Ok
myFoldr f v [] = v  -- myFoldr (*) 1 [] = 1 -- here 'f' represents function (a->a->a), like multiply (*)
myFoldr f v (x:xs) = f x (foldr f v xs)     -- and 'v' its first argument, and '[]' - last one

resultMyFoldr = myFoldr (*) 1 [1,2,3]         -- 6  - seems works.

--- for now let's define length
myLength :: (Num b) => [a] -> b
myLength xs = foldr (\el acc -> acc+1) 0 xs

  --[1,2,3]
  --  acc    el
  --1: 0  |  2   0 + 1 = 1
  --2: 1  |  2   1 + 1 = 2
  --2: 2  |  3   2 + 1 = 3

-- then some function that do this
myDiv l = foldr (\a b -> a / b) 2 l     -- [1,1,1] = 2 / 1 = 0.5; 0.5 /2 = 1; 1 / 2 = 0.5 ...

myDiv2 l = myFoldr (\a b -> 2 / b) 2 l

---

-- reverse


