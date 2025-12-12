defmodule Elixir13Test do
  use ExUnit.Case
  doctest Elixir13

  test "greets the world" do
    assert Elixir13.hello() == :world
  end
end
