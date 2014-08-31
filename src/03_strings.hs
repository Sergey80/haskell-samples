-- #string #chars #list

-- strings are list of chars

chars = ['a', 'b', 'c']       -- string is array of chars  [Char]
str = "abc"                   -- this is the same as previus line

same = (chars == str)         -- True

same2 = ("" == [])            -- True

-- as we can see string is list, then all this works

t = tail str
h = head str
combine = chars ++ str      --"abcabc"