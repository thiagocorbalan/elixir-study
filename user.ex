defmodule User do
  # struct is a named map
  # %{name: "Thiago", age: 15} is a anonymous map
  # %User{name: "Thiago", age: 15} is a named map

  defstruct [:name, :age, type: "user"]
end
