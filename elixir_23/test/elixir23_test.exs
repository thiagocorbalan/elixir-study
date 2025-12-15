defmodule Elixir23Test do
  use ExUnit.Case
  doctest Elixir23

  test "greets the world" do
    assert Elixir23.hello() == :world
  end
end
