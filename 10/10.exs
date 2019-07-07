defmodule Primes do
  def below(max) do
    sieve = 2..max |> Enum.map(fn x -> {x, true} end) |> Map.new()

    2..max
    |> Enum.reduce(sieve, fn x, sieve -> sieve_all(sieve, x, max) end)
    |> Enum.filter(fn {_, x} -> x end)
    |> Enum.map(fn {x, _} -> x end)
  end

  def sieve_all(sieve, start, max) do
    case Map.get(sieve, start) do
      false -> sieve
      true -> sieve_factor(sieve, start, start * start, max)
    end
  end

  def sieve_factor(sieve, factor, to_check, max) do
    case to_check > max do
      true -> sieve
      false -> sieve_factor(Map.put(sieve, to_check, false), factor, to_check + factor, max)
    end
  end
end

primes = Primes.below(2_000_000)
IO.puts(Enum.sum(primes))
