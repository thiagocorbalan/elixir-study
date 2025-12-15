defmodule Elixir25.Supervisor do
  use Supervisor

  def init(:ok) do
    children = [{Elixir25, [1,2,3,4]}]

    Supervisor.init(children, strategy: :one_for_one)
  end

  def start_link(opts) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end
end

# To add debug in terminal call :sys.statistics(PID_NUMBER,true) and sys.trace(PID_NUMBER, true)
