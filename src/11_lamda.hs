-- #lambda expression

add1 x y = x + y

-- same as:
add2  = \x -> (\y -> x + y)

a = add1 2 2        -- 4
b = add2 2 2        -- 4

-- 2
const1 :: a -> b -> a
const1 x _ = x           -- whatever you pass as a second param - it will return x (firs paramteter)

-- more naturally defined by lambda
const2 :: a -> (b -> a)
const2 x = \_ -> x


-- if we want to name a function

odds1 n = map f [0..n-1]         -- here we are defining a name "f"
          where
            f x = x*2 + 1

-- same as

odds2 n = map (\x -> x *2 +1) [0..n-1]      -- here we just are passing a lambda  - idiomatic haskell style

r1 = odds1 5  -- [1,3,5,7,9]
r2 = odds2 5  --


