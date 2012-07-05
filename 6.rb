to=100

sum = 0
(1..to).each do |x1|
  (1..to).each do |x2|
    sum += x1*x2 if x1 != x2
  end
end
puts sum
