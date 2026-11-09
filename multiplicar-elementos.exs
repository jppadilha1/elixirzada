defmodule Comum do
  def multiplyelements([]) do
    1
  end

  def multiplyelements(list) do
    [head | tail] = list
    head * multiplyelements(tail)
  end
end

defmodule Cauda do
  def multiplyelements(list) do
    multiplyelements(list,1)
  end

  defp multiplyelements([],acc) do
    acc
  end

  defp multiplyelements(list,acc) do
    [head | tail] = list
    multiplyelements(tail, acc * head)
  end
end
