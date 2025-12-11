defmodule PipeModule do
  def sum(a, b), do: a + b
  def subtract(a, b), do: a - b
  def multiply(a, b), do: a * b
  def divide(a, b), do: div(a,b)

  def exec(a, b) do
    sum(multiply(divide(subtract(a,b),b), b), b)
  end
end
