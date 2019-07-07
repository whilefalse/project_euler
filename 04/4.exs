defmodule Palindrome do
  def is_palindrome?(num) do
    string = Integer.to_string(num)
    string == String.reverse(string)
  end

  def biggest_palindrome() do
    111..999
    |> Enum.flat_map(fn x -> Enum.map(x..999, fn y -> x * y end) end)
    |> Enum.filter(&is_palindrome?/1)
    |> Enum.max()
  end
end

IO.puts(Palindrome.biggest_palindrome())
