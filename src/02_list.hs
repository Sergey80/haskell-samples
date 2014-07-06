elems = [1,2,3]          -- list

t = tail elems           -- [2,3]
h= head elems            -- [2]

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

