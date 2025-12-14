defmodule Elixir22 do
  def main(args \\ []) do
    { opts, value } =
      args
      |> parser_args()
      |> IO.inspect()

      output = opts[:output] || "busca"

      # encoded = URI.encode_query(%{q: value});
      encoded = URI.encode(value)
      path = "https://www.elo7.com.br/categoria/casa/#{encoded}";

      IO.puts "O valor de entrada é \"#{value}\" salvando em #{output}.txt"

      headers = [
        { "Accept", "*/*" },
        {"user-agent", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"}
      ]

      HTTPoison.get(path, headers, follow_redirect: true)
        |> case do
          {:ok, %{body: html}} ->
            # IO.inspect(html)
            {:ok, doc} = Floki.parse_document(html)

            data = doc
              |> Floki.find("li.product")
              |> Enum.with_index(1)
              |> Enum.map(fn {row, index} ->
                title = Floki.find(row, "span.link-product")
                  |> Floki.text()
                "#{index} - #{title}"
              end)
              #|> Enum.count()
              |> Enum.join("\n")
              # |> IO.inspect

              path = File.cwd!<>"/#{output}.txt"
              File.write(path, data, [:write, { :encoding, :latin1}]);

            IO.puts "Deu certo, #{path}"
          {:error, _} -> IO.puts "Erro na busca"
        end



    ## IO.inspect args
    ## IO.puts "O valor de entrada: #{value}"
  end

  def parser_args(args) do
    { opts, value, _} = OptionParser.parse(args, switches: [
      limit: :integer
    ])

    {opts, Enum.join(value, " ")}
  end
end
