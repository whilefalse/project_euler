def ok?(n)
  (1..20).map { |p| n % p == 0}.all?
end

max = (1..20).inject(&:*)
divisors = 2..20

divisors.each do |p|
  while max % p == 0
    new = max / p
    if ok?(new)
      max = new
    else
      break
    end
  end
end

puts max
