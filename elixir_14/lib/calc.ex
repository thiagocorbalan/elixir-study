defmodule Elixir14.Calc do
  ## @moduledoc false - disable doc this module
  @moduledoc """
  Este módulo permite fazer soma, subtração, multiplicação e divisão
  """

  @doc """
  Função Soma, executa uma operação de soma dos parametros
  ### Example
  iex> Elixir14.Calc.sum(8,6)
  14

  """
  def sum(a,b), do: a + b

  @doc """
  Função `subtract/2`, executa uma operação de subtração dos parametros
  ```
  a = 6
  b = 5
  1 = subtract(a,b)
  ```
  """
  def subtract(a, b), do: a - b


  @doc """
  Função `multiply/2`, executa uma operação de multiplicação dos parametros
  ```
  a = 6
  b = 5
  30 = multiply(a,b)
  ```
  """
  def multiply(a, b), do: a * b


  @doc """
  Função `divide/2`, executa uma operação de divisão dos parametros
  ```
  a = 6
  b = 5
  30 = divide(a,b)
  ```
  """
  def divide(a, b), do: div(a,b)
end
