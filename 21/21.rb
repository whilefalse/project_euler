class Amicable
  def initialize
    @memo = {}
  end

  def d(n)
    return @memo[n] if @memo[n]

    divisors = []
    (1..Math.sqrt(n).floor).each do |x|
      if n % x == 0
        divisors << x if x < n
        divisors << n/x if n/x < n
      end
    end

    @memo[n] = divisors.inject(&:+) || 0
  end
end

a = Amicable.new

amicable = []
1.upto(10000) do |n1|
  n2 = a.d(n1)
  if a.d(n2) == n1
    p "AMICABLE: #{n1}, d(#{n1}) = #{n2}, d(#{n2}) = #{n1}"
    amicable << n1 << n2 if n1 != n2
  end
end
p amicable.uniq.inject(&:+)
