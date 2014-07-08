-- #type-system #toInteger #explicitly

-- Interesting: Where C compiler will silently adjust/case type from int to float (for example),
-- there Haskell compiler will raise a compilation error in a similar situation.

f       ::  Double -> Double
f x     =   x + 1

p1 = 1 :: Double         -- explicitly saying that literal is Double
p2 = 1 :: Integer

result1 = f p1            -- 2.0
--result2 = f p2          -- this will not work out, since f expects Double not not Integer

-- same result
--f (toInteger 1)          -- caseting to Integer expclicitly

result3 = f 1              -- otherwise type inferring will create Double value
