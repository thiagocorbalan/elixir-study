defmodule Elixir21 do
  def test_error(num \\ 0) do
    IO.puts("Alguma informação")
    if num > 6 do
      ## Default RuntimeError
      ## raise "Dispara algum erro"

      ## Explicit RunttimeError
      # raise RuntimeError, message: "Um erro explicito de RuntimeError"

      raise MyError, message: "mensagem customizada"
    end
    IO.puts("Um outra informação")
  end


  # Try and rescue
  def try_save(atom) do
    try do
      :house = atom
    rescue
      error ->
        IO.inspect(error)
        # IO.puts("de fato não são iguais")
        error in MatchError -> false
    after
      IO.puts "Executando indepentende de acerto ou erro"
    end
  end
end

defmodule MyError do
  defexception message: "Meu próprio erro"
end
