defmodule Mix.Tasks.Hello do
  @moduledoc "A tarefa para dizer Olá"
  use Mix.Task

  @shortdoc "Simplesmente diz olá em inglês"
  def run(args) do
    # IO.inspect.arg

    # with common function
    # args
    #   |> Enum.map(fn x -> Elixir19.say(x) end)

    # with shortcut function
    # args
    #   |> Enum.map(&Elixir19.say(&1))

    # with shortcut plus function
    args
      |> Enum.map(&Elixir19.say/1)
  end
end
