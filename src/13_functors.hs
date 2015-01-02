--ghci :i Functor:

-- class Functor f where
--  fmap :: (a -> b) -> f a -> f b

-- The Functor type class, which is for things that can be mapped over
-- Functor wants a type constructor that takes one type
-- type constructor is a not contrete type - a type that can hold a value in it
-- (like Maybe - can Hold Just or Maybe) 

-- map - is a functor that works only for array type
-- :i map
-- map :: (a -> b) -> [a] -> [b]  

-- will get Just "abc"
r1 = fmap (++ "bc") (Just "a") -- matches the instance of Maybe-Functor
