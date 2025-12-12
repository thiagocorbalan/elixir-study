defmodule PipeModule do
  defp sum(a, b), do: a + b
  defp subtract(a, b), do: a - b
  defp multiply(a, b), do: a * b
  defp divide(a, b), do: div(a,b)

  @spec exec(integer, integer) :: String
  def exec(a, b) do
    # sum(multiply(divide(subtract(a,b),b), b), b)

    ## Operador |> (pipe) é a formado pela "|" e ">"
    a
      |> subtract(b)
      |> divide(b)
      |> multiply(b)
      |> sum(b)
  end
end
