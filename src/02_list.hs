-- #list #range #head #tail #cons #concatenation #cycle #replicate
-- #set-comprehansions

elems = [1,2,3]          -- list

t = tail elems           -- [2,3]
h = head elems            -- [2]

empty = []               -- empty list

-- elems = [True, 1, 2]  -- will not work - all should be on the same type


-- ranges

to10 = [1..10]           -- [1,2,3,4,5,6,7,8,9,10]  '..' is about enumeration

alph = ['a'..'z']        -- "abcdefghijklmnopqrstuvwxyz"  hm..
                         -- what about another language? http://stackoverflow.com/questions/24592229/haskell-a-z-for-french

--ranges = [1,2,3..5]      -- will not work  (2 numbers only are expected to define a range!)
ranges = [1,2..5]          -- will work

allInts = [1..]            -- all possible integers beginning from 1  :)


-- combining the lists

together = [1,2,3] ++ [4,5,6] --[1,2,3,4,5,6] combine two lists

oneMore = 1 : [1,2,3]         --[1,1,2,3]  add one element in from of the list  ( ':' is called 'cons' meaning 'construct')

tak10 = take 10 (cycle [1,2,3])		-- [1,2,3,1,2,3,1,2,3,1]

r = replicate 3 1		-- [1,1,1]

-- #set-comprehensions
-- x <- 1..10		-- for each x from the set from 1 to 10
-- x + 1 		-- add +1 to x
set = [ x + 1 | x <- [1..10] ]			    -- 2,3,4,5,6,7,8,9,10,11

-- with predicate
set2 = [x*2 | x <- [1..10], x*2 >= 12 ] 	    -- [12,14,18,20]

set3 = [x*2 | x <- [1..10], x `mod` 2 == 0]         -- [4,8,16,20]

set4 = [ if x > 4 then "X" else "x" | x <- [1..5] ] -- ["x", "x", "x", "x", "X"]

--the product of all possible combination: 
-- 5+1, 5+2, 6+1, 6+2 
set5 = [x+y | x <- [5..6], y <- [1..2]]		    -- [6,7,7,8]

-- ["dark coffe", "dark tee", "roast coffe", "roast tee"]
nouns =      ["coffe", "tee"]
adjectives = ["dark", "roast"]
beverages = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

-- task #1 https://projecteuler.net/problem=1
-- Find the sum of all the multiples of 3 or 5 below 10 that are multiples of
-- 3 or 5
result = sum [n | n <- [1..9], m <- [3,5], n `mod` m == 0]
