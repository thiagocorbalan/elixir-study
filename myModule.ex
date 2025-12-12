defmodule MyMOdule do
  @moduledoc """
    My fisrt module
  """

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
    IO.inspect("Olá Mundo #{@const}")
    only_in_module()
  end

  # private function
  defp only_in_module() do
    IO.inspect("Só no módulo")
  end


end
