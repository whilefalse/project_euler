sum_of_squares = 1..100 |> Enum.map(&(&1 * &1)) |> Enum.sum()
square_of_sum = 1..100 |> Enum.sum() |> (&(&1 * &1)).()

IO.puts(square_of_sum - sum_of_squares)
