def factorial(n)
  1.upto(n).inject(:*)
end

puts factorial(100).to_s.each_char.map(&:to_i).inject(:+)
