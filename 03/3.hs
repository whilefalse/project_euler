prime_factors' :: (Integral a) => a -> a -> [a] -> [a]
prime_factors' n p acc
  | p >= floor (sqrt (fromIntegral n))  = acc ++ [n]
  | n `mod` p == 0                      = prime_factors' (n `div` p) p (acc ++ [p])
  | otherwise                           = prime_factors' n (p + 1) acc

prime_factors :: (Integral a) => a -> [a]
prime_factors n = prime_factors' n 2 []

answer = maximum (prime_factors 600851475143)
