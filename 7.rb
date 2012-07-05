def prime?(n)
  (2..Math.sqrt(n)).each do |num_to_try|
    if n % num_to_try == 0
      return false
    end
  end
  true
end

def prime(x)
  n = 3
  pn = 2
  loop do
    n+=2
    if prime?(n)
      pn+=1
      puts "#{n}, #{pn}"
      return n if pn==x
    end
  end
end

puts prime(10001)
