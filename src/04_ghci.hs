-- #ghci #set #uset #type #it #module #show #binding

-- :m +Data.Ratio       -- import module "Data.Ratio". same as ":module +Data.Ration"

-- :set +t              -- set ghci to show type information about the variables
-- :unset +t            -- unset of showing type information

--

-- ghci> :m +Data.Ratio
-- ghci> 11 % 28
-- 11%28
-- it :: Ratio Integer      -- “Ratio of Integer”

--

-- :type a                  -- we can get type information by that command explicitly (where 'a' is our variable)

-- ghci> 2 + 2
-- 4
-- ghci> :type it
-- it :: Integer
-- ghci> :type 2 + 2
-- 2 + 2 :: (Num t) => t    -- Num is more general type than Integer. Shows Num since this expression is not yet evaluated

-- :show binding
-- let x1 = 1               -- when you type let... you create a binding
-- let x2 = 2

-- shows kind of type wheather it's concrete type or type constructor

-- ghci> :k Maybe
-- Maybe :: * -> *          -- tells us that Maybe takes one concrete type and
                            -- reuturns another concrete type, like Maybe Int

-- ghci> :k Maybe Int
-- Maybe Int :: *           -- returns concrete type, but not taking anything 
                            -- (Int is concrete  type, not a type constructor)

                            
