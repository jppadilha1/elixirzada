defmodule Comum do
  def remover([], _el) do
    []
  end

  def remover([_el | tail], _el) do
    tail
  end

  def remover([head | tail], el) do
    [head | remover(tail, el)]
  end
end

## Cauda?? acho que a comum já está em cauda
