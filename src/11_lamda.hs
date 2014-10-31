-- #lambda expression

add1 x y = x + y

-- same as:
add2  = \x -> (\y -> x + y)

a = add1 2 2        -- 4
b = add2 2 2        -- 4


