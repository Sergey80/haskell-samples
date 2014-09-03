sentence = "word1 word2 \n word3 word4"    -- a sentence with two lines

theLines = lines sentence                  -- splits by "\n" ["word1 word2 /n word3 word4"]

l = length theLines                        -- 2

theWords = map words theLines