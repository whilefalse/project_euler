answer = maximum [ p | p <- [ x*y | x <- [111..999], y <- [x..999]], reverse (show p) == show p ]
