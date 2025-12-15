defmodule Elixir24 do
  use GenServer

  def init(state), do: {:ok, state}

  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  # sync function
  def handle_call(_atom, _from, _state)
  def handle_call(:retirar, _from, [value | state]) do
    {:reply, value, state}
  end
  def handle_call(:retirar, _, []), do: {:reply, nil, []}
  def handle_call(:items, _form, state) do
    {:reply, state, state}
  end

  def handle_cast({:adicionar, value}, state) do
    {:noreply, [value | state]}
  end

  ## public functions to avoid call GenServer directly as GenServer.call(pid, :items) or GenServer.call(pid, :retirar)
  def mostrar, do: GenServer.call(__MODULE__, :items);
  def retirar, do: GenServer.call(__MODULE__, :retirar);
  def adicionar(value), do: GenServer.cast(__MODULE__, {:adicionar, value});

end
