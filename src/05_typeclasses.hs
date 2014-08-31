-- type this: ":t (==)" to see the following output:
-- (==) :: Eq a => a -> a -> Bool
-- Here the type of that two "a" values must be a member of Eq class

-- type this: "elem":
-- Eq a => a -> [a] -> Bool

r = elem 'a' "aaa" 		-- will return 'True'
			-- so then, Char 'a' and string "aaa" both are 
			-- the members of class Eq. That's it
			
-- then, how to know what partershipt some particula class/value has?


main = do
 putStrLn "123" 
			

