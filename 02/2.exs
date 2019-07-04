defmodule Two do
  def sum(x, y, acc) do
    cond do
      x > 4_000_000 -> acc
      rem(x, 2) == 0 -> sum(y, x + y, acc + x)
      true -> sum(y, x + y, acc)
    end
  end
end

IO.puts(Two.sum(1, 2, 0))
