defmodule MyMOdule do
  @moduledoc """
    My fisrt module
  """

  # importing Basic module
  import Basic # , only: [sum: 2]
  # require Basic - pass to MOdule is required Basic module
  # use Basic


  # by default is defined with last
  alias Types.Email

  # with named alias
  alias Types.Email, as: E_MAIL

  # public function
  @doc """
    My hello world function
  """
  @const "my_constant"

  def hello_world() do
    IO.inspect(%E_MAIL{})
    # IO.inspect("Olá Mundo #{@const}")

    sum(5,4)
      |> IO.inspect()

    sub(10,5)
      |> IO.inspect()

    # only_in_module()
  end

  # private function
  defp only_in_module() do
    IO.inspect("Só no módulo")
  end


end
