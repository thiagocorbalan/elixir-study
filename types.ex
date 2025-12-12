defmodule Types do
  defmodule Email do
    defstruct [:email, :obs, default: false]
  end
  defmodule Address do
    defstruct [:address, :number, :city, :country, :zip_code]
  end
end
