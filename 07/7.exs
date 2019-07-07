defmodule Primes do
  def is_prime?(candidate, primes) do
    Enum.all?(primes, fn prime -> rem(candidate, prime) != 0 end)
  end

  def firstnprimes(to_check, primes, primes_found, n) do
    cond do
      primes_found == n ->
        primes

      is_prime?(to_check, primes) ->
        firstnprimes(to_check + 2, [to_check | primes], primes_found + 1, n)

      true ->
        firstnprimes(to_check + 2, primes, primes_found, n)
    end
  end
end

firstN = Primes.firstnprimes(3, [2], 1, 10001)
IO.puts(hd(firstN))
