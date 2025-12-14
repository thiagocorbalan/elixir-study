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
  def try_rescue_test(atom) do
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

  def try_catch_test(num \\ 3) do
    try do
      if num == 5, do: throw(" teste #{num}")
      IO.puts("O número foi: #{num}")

    catch
      num -> "O valor errado foi #{num}"
    end
  end

  # Start process
  def proc do
    # spawn start process
    # spawn_link start process with trace to handle errors
    pid = spawn_link fn ->
      IO.inspect("Entrou no processo")
      exit "Algum erro no meio do processo"
      IO.inspect("Saindo normalment")
    end

    pid
  end

  defp sum({:ok, a},b), do: {:ok, a + b}

  defp sub({:ok, _a}, _b), do: {:error, "não foi possível"}

  defp mult({:ok, a},b), do: {:ok, a * b }
  defp mult({:error, msg}, _b), do: {:error, msg }

  def run(a, b) do

    {:ok, a}
      |> sum(b)
      |> sub(b)
      |> mult(b)
  end
end

defmodule MyError do
  defexception message: "Meu próprio erro"
end
