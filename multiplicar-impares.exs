defmodule Comum do
  def multiplicar_impares(0) do
    1
  end

  def multiplicar_impares(n) when n > 0 do
    (2*n - 1) * multiplicar_impares(n-1)
  end

end


defmodule Cauda do
  def multiplicar_impares(n) do
    multiplicar_impares(n,1)
  end

  defp  multiplicar_impares(0,acm) do
    acm
  end

  defp multiplicar_impares(n, acm) do
    multiplicar_impares(n-1, acm* (2*n-1))
  end

end
