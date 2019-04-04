defmodule Fib do
  def fib(90, _, _), do: nil

  def fib(i, last, curr) do
    (last + curr)
    |> to_string()
    |> String.pad_leading(20)
    |> IO.puts()

    fib(i + 1, curr, last + curr)
  end
end

IO.puts(0)
Fib.fib(2, 0, 1)
