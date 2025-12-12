defmodule Api do
  def home do
    HTTPoison.get("https://www.google.com.br",[], [follow_redirect: true])
  end
end
