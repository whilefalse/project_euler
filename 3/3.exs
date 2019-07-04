defmodule Prime do
    def factors(n, p, acc) do
        cond do
            n == 1 -> acc
            rem(n, p) == 0 -> factors(div(n, p), p, [p | acc])
            true -> factors(n, p + 1, acc)
        end
    end
end
factors = Prime.factors 600851475143, 2, []
IO.puts inspect(factors)
