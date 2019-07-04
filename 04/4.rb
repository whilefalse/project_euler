def palindrome?(n)
  n.to_s == n.to_s.reverse
end

largest=0
r = (111..999)
r.each do |r1|
  r.each do |r2|
    p = r2*r1
    if palindrome?(p) and p > largest
      largest = p
    end
  end
end

puts largest
