# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :userlistx,
  ecto_repos: [Userlistx.Repo]

# Configures the endpoint
config :userlistx, UserlistxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2NNPFppPoN352aU8nNo/r6HXYFrNfBjWV7gxYQO9q2PJwWu3RaxWNlhEqCYfeWHf",
  render_errors: [view: UserlistxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Userlistx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
