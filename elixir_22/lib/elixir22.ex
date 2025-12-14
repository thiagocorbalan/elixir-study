defmodule Elixir22 do
  def main(args \\ []) do
    { _opts, value } =
      args
      |> parser_args()
      |> IO.inspect()

    ## IO.inspect args
    IO.puts "O valor de entrada: #{value}"
  end

  def parser_args(args) do
    { opts, value, _} = OptionParser.parse(args, switches: [
      limit: :integer
    ])

    {opts, Enum.join(value, " ")}
  end
end
