defmodule MyMOdule do
  @moduledoc """
    My fisrt module
  """
  # public function
  @doc """
    My hello world function
  """
  @const "my_constant"

  def hello_world() do
    IO.puts("Olá Mundo #{@const}")
    only_in_module()
  end

  # private function
  defp only_in_module() do
    IO.inspect("Só no módulo")
  end


end
