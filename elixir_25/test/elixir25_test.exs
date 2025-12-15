defmodule Elixir25Test do
  use ExUnit.Case
  doctest Elixir25

  test "greets the world" do
    assert Elixir25.hello() == :world
  end
end
