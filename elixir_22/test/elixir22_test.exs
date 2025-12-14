defmodule Elixir22Test do
  use ExUnit.Case
  doctest Elixir22

  test "greets the world" do
    assert Elixir22.hello() == :world
  end
end
