defmodule JogoApi.Repo do
  use Ecto.Repo,
    otp_app: :jogo_api,
    adapter: Ecto.Adapters.Postgres
end
