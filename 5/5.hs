-- Start at product [1..20]
-- Try divisors up to 20 while the result is still acceptable
nums :: (Integral a) => [a]
nums = [1..20]

divisible :: (Integral a) => a -> Bool
divisible n = null (filter (\p -> n `mod` p /= 0) nums)

best :: (Integral a) => a -> a -> a
best start factor
  | factor > last nums    = start
  | divisible next        = best next factor
  | otherwise             = best start (factor + 1)
  where
  next  = start `div` factor

answer :: (Integral a) => a
answer = best (product nums) 2

-- OR (Awesomeness)
answer2 :: (Integral a) => a
answer2 = foldr lcm 1 [1..20]
