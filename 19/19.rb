def days_in_month(m, y)
  if [1,3,5,7,8,10,12].include?(m)
    31
  elsif [4,6,9,11].include?(m)
    30
  else
    if y % 4 == 0 && (y % 400 == 0 || y % 100 != 0)
      29
    else
      28
    end
  end
end

d,m,y = 1,1,1900
n = 1
days = 0
loop do
  dm = days_in_month(m, y)

  if y > 1900 && d == 1 && n % 7 == 0
    days += 1
  end

  if d == dm
    if m == 12
      y += 1
      m = 1
      d = 1
    else
      m += 1
      d = 1
    end
  else
    d += 1
  end
  n+=1

  break if [d,m,y] == [31,12,2000]
end
