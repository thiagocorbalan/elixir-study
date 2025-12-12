defmodule Modulo do
  def sum(1,1) do
    0
  end
  def sum(a,b), do: a+b # A simplified way of creating functions

  def subtract(a, b, c \\ 1), do: show(a-b-c)

  defp show(arg) do
    "Value is: #{arg}"
  end

  # def hello(names) do
  #   "Hello " <> Enum.join(names, ", ")
  # end

  # guards
  def hello(names) when is_list(names) do
    "Olá " <> Enum.join(names, ", ");
  end
  def hello(name) when is_bitstring(name) do
    "Olá #{name}";
  end
  def hello(_), do: "Value is unknown"


  def sum_for_all(list) do
    ## fn x -> x + x end
    ## &(&1 + &1)
    Enum.map(list, &(&1 + &1))
  end
end
