class Sequencer
  def initialize
    @lengths = { 1 => 1 }
  end

  def sequence_length(n)
    return @lengths[n] if @lengths[n]
    len = if n % 2 == 0
      1 + sequence_length(n/2)
    else
      1 + sequence_length(3*n + 1)
    end
    @lengths[n] = len
    len
  end
end

max = 0
best = 0
seq = Sequencer.new
(1..1000000).each do |num|
  len = seq.sequence_length(num)
  if len > max
    max = len
    best = num
  end
end

puts best
