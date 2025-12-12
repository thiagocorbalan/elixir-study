defmodule Elixir15Test do
  use ExUnit.Case
  doctest Elixir15

  test "greets the world" do
    assert Elixir15.hello() == :world
  end
end
