# Using a sieve of Eratosthenes
n = 2000000
candidates = (2..n).to_a
marked = [false] * (n-1)

(2..Math.sqrt(n)).each do |p|
  next if marked[p-2]
  i = p + p
  while i <= n
    marked[i-2] = true
    i += p
  end
end
puts candidates.select { |x| !marked[x-2] }.inject(&:+)
