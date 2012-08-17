names = IO.read('names.txt').split(',').sort.map { |s| s.gsub('"', '') }

map = {}
('A'..'Z').each_with_index { |letter, i| map[letter] = i+1 }

sum = 0
names.each_with_index do |name, i|
  sum += name.each_char.inject(0) { |tot, char| tot + map[char] } * (i+1)
end
p sum
