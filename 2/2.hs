fib :: Int -> Int -> Int -> Int
fib prev1 prev2 n
  | n == 0              = prev1
  | otherwise           = fib prev2 (prev1 + prev2) (n-1)

answer = sum $ filter even $ takeWhile (< 4000000) [ fib 0 1 n | n <- [0..] ]
