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


