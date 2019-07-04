def fib(n)
  a,b = 0,1
  fibs = [a]
  while b < n
    fibs << b
    a,b = b, a+b
  end
  fibs
end

puts fib(4000000).select { |f| f % 2 == 0 }.inject(&:+)
