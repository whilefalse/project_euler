puts (2**1000).to_s.each_char.map(&:to_i).inject(&:+)
