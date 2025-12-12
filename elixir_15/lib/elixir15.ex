defmodule Elixir15 do
  @doc """
  Comprehensions em uma lista simples
  """
  def testA do
    lista = [1,2,3,4]

    for x <- lista, do: x * x
  end

  @doc """
  Comprehensions em uma tupla
  """
  def testB do
    lista = [key1: "value1", key2: "value2", key3: "value3"]

    for {key, value} <- lista, do: "#{key} = #{value}"

    # Mesma coisa fazendo com o Enum.map(lista, fn {key, val} -> "#{key}: #{val}" end)
  end

  def testC do
    lista = [{:ok, "true", {:ok, "verdadeiro"}, {:error, "falso"}}]

    # só retorna o que der match
    for {:ok, value} <- lista, do: value
  end

  def testD do
    lista = 1..9 ## Mesma coisa do que fazer [1,2,3,4,5]
    for n <- lista, vezes <- 1..n do
      IO.inspect("#{n} * #{vezes} = #{n*vezes}")
    end
  end


  def testE do
    for n <- 1..100000, rem(n,2) == 0, do: n
  end

  # Converte lista em mapa usando o comprehension
  def testF do
    list = [one: 1, two: 2, three: 3]
    for {k, v} <- list, into: %{}, do: { k, v}
  end
end
