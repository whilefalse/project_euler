sums = Enum.flat_map(1..1000, fn
  a ->
    Enum.map(a..999, fn
      b ->
        {a, b, 1000 - b - a}
    end)
end)

triplet = sums
          |> Enum.filter(fn {a, b, c} -> a*a + b*b == c*c end)
          |> Enum.map(fn {a, b, c} -> a * b * c end)

IO.puts (inspect triplet)
