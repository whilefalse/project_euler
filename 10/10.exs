defmodule Primes do
  def below(max) do
    sieve = 2..max |> Enum.map(fn x -> {x, false} end) |> Map.new

    sieve_all(sieve, 2, max)
    |> Enum.filter(fn {_, x} -> !x end)
    |> Enum.map(fn {x, _} -> x end)
  end

  def sieve_all(sieve, start, max) do
    cond do
      start > max -> sieve
      Map.get(sieve, start) -> sieve_all(sieve, start + 1, max)
      true ->
        new_sieve = sieve_factor(sieve, start, start * 2, max)
        sieve_all(new_sieve, start + 1, max)
    end
  end

  def sieve_factor(sieve, factor, to_check, max) do
    cond do
      to_check > max -> sieve
      true -> sieve_factor(Map.put(sieve, to_check, true), factor, to_check + factor, max)
    end
  end
end

primes = Primes.below(2_000_000)
IO.puts(Enum.sum primes)
