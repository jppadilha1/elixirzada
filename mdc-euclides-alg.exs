defmodule Cauda do
  def mdc(a, b) when b == 0 do
    a
  end

  def mdc(a, b) do
    mdc(b, rem(a,b))   # Euclidean algorithm, ex: mdc(48, 18) = mdc(18, rem(48, 18)) até b == 0, aí retornamos a pq era o b de antes
  end

end


# Euclides já é em Cauda aparentemente, acho que não tem recursão comum :(
