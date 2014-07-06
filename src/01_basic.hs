-- very firs steps. overal information about some arithmetic operations and how do define a function

y = x * 2          -- ´x' is not yet undefined, but 'y' will be evaluated, since 'x' in the context
x = 4

z1 = 2 + 2         -- infix style
z2 = (+) 2 2       -- prefix style
-- z3 = (+) 2 2 2  -- will not work

p1 = 2 ^ 3          -- 8 works only if '3' is Integer
p2 = 2 ** 3         -- 8.0 !

notEqual = 1 /= 2     -- True (not equal- as "!="in C)
notEqual2 = not True  --False (as "!" in C)                 http://stackoverflow.com/questions/6400568/exponentiation-in-haskell

big = 233 ^ 323    -- integers may be arbitary large !

area r = pi * r^2  -- in Scala: def area(r:Float):Float = {pi * r^2}

my p1 = p1 * k
 where k = p1 * 2   -- defining 'k'. note: we have to put a space before 'where' to make it compile

-- k = p1 *2  --without 'where' 'p1' is not available