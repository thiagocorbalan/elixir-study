defmodule Elixir20 do
  @moduledoc false
  def init(_type, req, _opts) do
    {:ok, req, :nostate}
  end

  def handle(req, state) do
    {:ok, reply} =
      :cowboy_req.reply(
        200,
        [{"content-type", "text/html"}], "<h1> Hello World </h1>",
        req
      )
  end

  def terminate(_reason, _request, _state), do: :ok

  def start() do
    dispatch_cofig = :cowboy_router.compile([
      {:_, [
        {:_, Elixir20, []} ## Define path router
      ]}
    ])

    # Start server
    :cowboy.start_http(:http, 100, [port: 8080], [env: [dispatch: dispatch_cofig ]])
  end
end
