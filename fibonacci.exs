defmodule Comum do
  def fib(0) do
    0
  end

  def fib(1) do
    1
  end

  def fib(n) do
    fib(n-1) + fib(n-2)
  end

end

defmodule Cauda do
  def fib(n) do
    fib(n, 0, 1)
  end

  defp fib(0, f1, _f2) do
    f1
  end

  defp fib(1, _f1, f2) do
    f2
  end

  defp fib(n, f1, f2) do
    fib(n-1, f2, f1+f2)
  end

end
