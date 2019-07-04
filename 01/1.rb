def below(n)
  threes = (3...n).step(3).to_a
  fives = (5...n).step(5).to_a
  vals = (threes + fives).uniq
  puts vals
  vals.inject(&:+)
end

puts below(1000)
