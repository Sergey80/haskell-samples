-- #funtion composition #. #$

-- :type ($)
-- ($) :: (a -> b) -> a -> b
-- http://stackoverflow.com/questions/940382/haskell-difference-between-dot-and-dollar-sign

-- :type: (.)
-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- http://stackoverflow.com/questions/2486564/what-does-a-fullstop-or-period-or-dot-mean-in-haskell

f1 x = x * 2
f2 x = x $ 2            -- same as f1

ff1 x = f1( f1(x) )     -- all the functions here are doing the smae thing
ff2 x = f1 (f1 $ x)
ff3 x = f1 $ f1 x       -- elemenated of al "(" - ")"
ff4 x = f1 . f1 $ x     -- function composition using "."

r1 = ff1 5                 -- 5*2*2 = 20
r2 = ff2 5                 -- 20
r3 = ff3 5                 -- 20
r4 = ff4 5                 -- 20

--

rr1 = take 2 . repeat $ 1        -- [1,1]
rr2 = take 2 $ repeat $ 1        -- [1,1]
rr3 = take 2 (repeat 1)          -- [1,1]

--
-- let f = group . sort . words