def teen(n)
  case n
  when 1
    'eleven'
  when 2
    'twelve'
  when 3
    'thirteen'
  when 4
    'fourteen'
  when 5
    'fifteen'
  when 6
    'sixteen'
  when 7
    'seventeen'
  when 8
    'eighteen'
  when 9
    'nineteen'
  end
end

def tens(n)
  case n
  when 1
    'ten'
  when 2
    'twenty'
  when 3
    'thirty'
  when 4
    'forty'
  when 5
    'fifty'
  when 6
    'sixty'
  when 7
    'seventy'
  when 8
    'eighty'
  when 9
    'ninety'
  end
end

def unit(n)
  case n
  when 1
    'one'
  when 2
    'two'
  when 3
    'three'
  when 4
    'four'
  when 5
    'five'
  when 6
    'six'
  when 7
    'seven'
  when 8
    'eight'
  when 9
    'nine'
  end
end

def words(n)
  return 'one thousand' if n == 1000
  hundreds, left = n.divmod(100)
  tens, left = left.divmod(10)

  str = ''
  if hundreds > 0
    str = unit(hundreds) + ' hundred'
    if tens > 0 or left > 0
      str += ' and '
    end
  end

  if tens == 1 && left > 0
    str += teen(left)
  elsif tens > 0
    str += tens(tens) + ' '
  end

  if left > 0 && tens != 1
    str += unit(left)
  end

  str
end

total = 0
(1..1000).each do |num|
  word = words(num).gsub(' ', '')
  puts word
  total += word.length
end
p total
