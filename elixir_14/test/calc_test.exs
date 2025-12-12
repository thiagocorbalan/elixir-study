defmodule Elixir14.CalcTest do
  use ExUnit.Case
  doctest Elixir14.Calc

  alias Elixir14.Calc

  test "should sum values" do
    assert 3 = Calc.sum(1,2)
  end
end
