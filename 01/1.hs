contribution :: Int -> Int
contribution n | (n `mod` 3 == 0 || n `mod` 5 == 0) = n
               | otherwise                          = 0

multiple_sum :: Int -> Int
multiple_sum 0 = 0
multiple_sum n = (contribution (n - 1)) + (multiple_sum (n - 1))
