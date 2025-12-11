defmodule Modulo do
  def sum(1,1) do
    0
  end
  def sum(a,b), do: a+b # A simplified way of creating functions

  def subtract(a, b, c \\ 1), do: show(a-b-c)

  defp show(arg) do
    "Value is: #{arg}"
  end
end
