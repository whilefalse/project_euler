fib :: (Integral a) => a -> a -> a -> a
fib prev1 prev2 n
  | n == 0              = prev1
  | otherwise           = fib prev2 (prev1 + prev2) (n-1)

fib' :: (Integral a) => a -> a
fib' n = fib 0 1 n

answer = sum $ filter even $ takeWhile (< 4000000) [ fib' n | n <- [0..] ]
