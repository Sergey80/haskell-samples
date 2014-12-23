data Bool1 = False | True  --Define new Data Type named "Bool1" 
			   -- that can have a value True of False
			   
data Shape = Circle Float Float Float | Rectangle Float Float Float Float

surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

--

data Person = Person {
	firstName :: String,
	lastName :: String,
	age :: Int
} deriving (Show)

aPerson = Person "bob" "bobov" 34

name = firstName aPerson		-- "firstName" is a function!
name2 = lastName aPerson		-- as well as "lastName"




