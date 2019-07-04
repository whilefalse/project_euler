def prime?(n)
  (2..(n/2)).each do |num_to_try|
    if n % num_to_try == 0
      return false
    end
  end
  true
end

def all_primes
  n = 1
  loop do
    n+=1
    if prime?(n)
      yield n
    end
  end
end

n = 600851475143
factors = []
all_primes do |p|
  break if p*p > n

  while n % p == 0
    factors << p
    n, _ = n.divmod(p)
  end
end
factors << n if n > 0

puts factors
