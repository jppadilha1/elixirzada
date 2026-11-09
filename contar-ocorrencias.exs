defmodule Comum do
  def conta_ocorrencia([], _el) do
    0
  end

  def conta_ocorrencia([el | tail], el) do
    1 + conta_ocorrencia(tail, el)
  end

  def conta_ocorrencia([_head | tail], el) do
      conta_ocorrencia(tail, el)
  end
end

defmodule Cauda do
  def conta_ocorrencia(list, el) do
    conta_ocorrencia(list, el, 0)
  end

  defp conta_ocorrencia([], _el, acc) do
    acc
  end

  defp conta_ocorrencia([el | tail], el, acc) do
    conta_ocorrencia(tail, el, acc + 1)
  end

  defp conta_ocorrencia([_head | tail], el, acc) do
      conta_ocorrencia(tail, el, acc)
  end

end
