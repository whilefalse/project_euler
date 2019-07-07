defmodule Max do
  def divisible_by_all?(n, upto) do
    Enum.all?(2..upto, fn x -> rem(n, x) == 0 end)
  end

  def min_divisible_by_all(start, upto) do
    Enum.reduce(2..upto, start, fn factor, acc ->
      next = div(acc, factor)
      if divisible_by_all?(next, upto), do: next, else: acc
    end)
  end
end

upto = 20
product = Enum.reduce(1..upto, fn x, acc -> x * acc end)
IO.puts(Max.min_divisible_by_all(product, upto))
