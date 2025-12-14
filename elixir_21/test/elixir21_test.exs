defmodule Elixir21Test do
  use ExUnit.Case
  doctest Elixir21

  test "greets the world" do
    assert Elixir21.hello() == :world
  end
end
