defmodule Comum do
    def inverter([]) do
      []
    end

    def inverter([head | tail]) do
      inverter(tail) ++ [head]
    end

    def maior([x]), do: x

    def maior([head | tail]), do: comparar(head, maior(tail))

    defp comparar(a, b) when a >= b, do: a

    defp comparar(_a, b), do: b
end

defmodule Cauda do
  def inverter(list) do
    inverter(list, [])
  end

  defp inverter([], acc) do
    acc
  end

  defp inverter([head | tail], acc) do
    inverter(tail, [head] ++ acc)
  end

  def maior([head | tail]), do: maior(tail, head)

  defp maior([], acc), do: acc

  defp maior([head | tail], acc) when head > acc, do: maior(tail, head)

  defp maior([head | tail], acc) when acc > head, do: maior(tail, acc)
end
