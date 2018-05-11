# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rendezvous,
  ecto_repos: [Rendezvous.Repo]

# Configures the endpoint
config :rendezvous, RendezvousWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TGqEA3skDWnZ+7KLSjnt3kp7B11zehBTdHijBURp/qCnHcY07OLizKA8YDg904lL",
  render_errors: [view: RendezvousWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rendezvous.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
