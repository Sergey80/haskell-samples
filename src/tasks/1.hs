-- На поверхности пруда плавает одна кувшинка,
-- которая постоянно делится и разрастается.
-- Таким образом, каждый день площадь, которую занимают кувшинки, увеличивается в два раза.
-- Через месяц покрытой оказывается вся поверхность пруда.
-- За сколько времени покроется кувшинками вся поверхность пруда,
-- если изначально на поверхности будут плавать две кувшинки?

days = [1..30]

type Day  = Int
type Count = Int
type Speed = Int

initCount = 1    -- the amount of Nymphaeas

speed = 2		-- split in 'n' pieces a day

squareLimit = foldl (\acc d -> if acc == 0 then 1 -- starts from 1
						   else acc * speed )
						   0
						   days

count1 = squareLimit

count2 = foldl (\acc d -> if acc == 0 then 1
						   else acc * speed )
						   1 						-- starts from 2
						   days

dayCount = foldl (\acc d -> if acc == 0 then 1
						   else if acc >= squareLimit  then d-1
						   else acc * speed )
						   1 						-- starts from 2
						   days