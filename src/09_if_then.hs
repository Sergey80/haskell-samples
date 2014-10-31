-- #condition #if #else #guarded equations
a = 1
result = if a == 1 then "one" else "two maybe"        -- one (do not forget about "then")

-- another way to write conditions
signum1 n | n < 0 = -1
          | n == 0 = 0
          | otherwise = 1

a1 = signum1 0
a2 = signum1 1
a3 = signum1 (-1)

