-- #funtion composition #. #$

-- "$" - http://stackoverflow.com/questions/940382/haskell-difference-between-dot-and-dollar-sign
-- "." - http://stackoverflow.com/questions/2486564/what-does-a-fullstop-or-period-or-dot-mean-in-haskell

f1 x = x * 2
f2 x = x $ 2            -- same as f1

ff1 x = f1( f1(x) )
ff2 x = f1 (f1 $ x)
ff3 x = f1 $ f1 x
ff4 x = f1 . f1 $ x     -- function composition using "."

r1 = ff1 5                 -- 20
r2 = ff2 5                 -- 20
r3 = ff3 5                 -- 20
r4 = ff4 5                 -- 20