defmodule Elixir12Test do
  use ExUnit.Case
  doctest Elixir12

  test "greets the world" do
    assert Elixir12.hello() == :world
  end
end
