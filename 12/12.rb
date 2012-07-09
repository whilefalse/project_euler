def num_divisors(n)
  divisors = []
  (1..Math.sqrt(n)).each do |p|
    if n % p == 0
      divisors << p
      divisors << n / p
    end
  end
  divisors.count
end

def triangles
  n = 0
  sum = 0
  loop do
    n += 1
    sum = sum + n
    yield sum
  end
end

triangles do |t|
  # puts "#{t}, #{num_divisors(t)}"
  if num_divisors(t) > 500
    puts t
    break
  end
end
