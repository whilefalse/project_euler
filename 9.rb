def triplet
  (1..1000).each do |a|
    (a..999).each do |b|
      c = 1000 - b - a
      return [a,b,c] if a**2 + b**2 == c**2
    end
  end
end

puts triplet
puts triplet.inject(&:+)
puts triplet[0]**2 + triplet[1]**2
puts triplet[2]**2

puts triplet.inject(&:*)
