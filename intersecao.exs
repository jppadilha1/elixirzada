defmodule Comum do
  def intersecao([], _b), do: []

  def intersecao([head_a| tail_a], b) do
    l1 = buscar(head_a, b)
    l2 = intersecao(tail_a, b)
    l1 ++ l2            #Concatenação: [] ++ [2]   => [2]  //  [1] ++ [2]  => [1, 2]
  end

  def buscar(el, [el | _tail]) do
    [el]
  end

  def buscar(el, [_head | tail]) do
    buscar(el, tail)
  end

  def buscar(_el, []), do: []

end

defmodule Cauda do
  def intersecao(a,b), do: intersecao(a,b,[])

  defp intersecao([], _b, acc), do: Enum.reverse(acc) # só pra ficar em ordem

  defp intersecao([head_a | tail_a ],b,acc) do
    intersecao(tail_a, b, buscar(head_a,b) ++ acc)
  end

  defp buscar(el, [el | _tail]) do
    [el]
  end

  defp buscar(el, [_head | tail]) do
    buscar(el, tail)
  end

  defp buscar(_el, []), do: []

end
