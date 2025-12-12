defmodule AnotherModule do
  import Basic, only: [send: 1]

  def print(a, b) do
    send("O resultado é: #{Basic.sum(a, b)}")
  end
end
