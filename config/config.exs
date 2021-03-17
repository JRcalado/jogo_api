# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :jogo_api,
  ecto_repos: [JogoApi.Repo]

# Configures the endpoint
config :jogo_api, JogoApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BEpcG0ZxwQTJWNSDMODgbYQxNAJTqyljxlHYZpAFyVbPBumOtTgH/LVOI5R52aZd",
  render_errors: [view: JogoApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: JogoApi.PubSub,
  live_view: [signing_salt: "2OOVS+aU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
