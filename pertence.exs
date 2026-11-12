defmodule Comum do
  def pertence(el, []) do
    false
  end

  def pertence(el, [el|tail]) do
    true
  end

  def pertence(el, [head | tail]) do
    pertence(el, tail)
  end
end
