defmodule Elixir20Test do
  use ExUnit.Case
  doctest Elixir20

  test "greets the world" do
    assert Elixir20.hello() == :world
  end
end
