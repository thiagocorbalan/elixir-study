defmodule Elixir14Test do
  use ExUnit.Case
  doctest Elixir14

  test "greets the world" do
    assert Elixir14.hello() == :world
  end
end
