divisible n = (==0) . sum $ map (mod n) [1..20]

least factor acc = if divisible next then next else acc where next = acc `div` factor

answer = foldr least (product [1..20]) [1..20]
