defmodule Comum do
  def somarquadrados(1) do
    1
  end

  def somarquadrados(n) do
    n*n + somarquadrados(n-1)
  end
end

defmodule Cauda do
  def somarquadrados(n) do
    somarquadrados(n,1)
  end

  defp somarquadrados(1,acc) do
    acc
  end

  defp somarquadrados(n,acc) do
    somarquadrados(n-1, acc + n*n)
  end
end
