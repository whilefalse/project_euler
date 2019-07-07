sum =
  Enum.reduce(0..999, fn
    x, acc when rem(x, 3) == 0 -> acc + x
    x, acc when rem(x, 5) == 0 -> acc + x
    _, acc -> acc
  end)

IO.puts(sum)
