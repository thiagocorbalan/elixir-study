defmodule Elixir13 do
  @moduledoc """
  Documentation for `Elixir13`.
  """

  @doc """
  Hello world.

  """
  def main do
    string = "banana"

    ["casa", "predio", "barraco"]
      |> IO.inspect()

    # sigils to create
    ~w(casa predio barraco #{string})
      |> IO.inspect()

    # SIGIL to regex ~r
    # "elixir" =~ ~r/elixir/
  end

  def sigils do
    var = "f"
    fruit = "lemon"

    ~W(banana maca pera)
      |> IO.inspect()
    ~w(banana maca pera #{fruit})
      |> IO.inspect()
    ~C(a b c d)
      |> IO.inspect()
    ~c(a b c d e #{var})
      |> IO.inspect()
    ~R/elixir/
      |> IO.inspect()
    ~r/elixir/
      |> IO.inspect()
    ~S(minha string)
      |> IO.inspect()
    ~s(minha string)
      |> IO.inspect()
  end
end
