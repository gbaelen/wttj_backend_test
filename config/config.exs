# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :wttj_backend_test,
  ecto_repos: [WttjBackendTest.Repo]

# Configures the endpoint
config :wttj_backend_test, WttjBackendTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wNKK+lQwHbk0N4A5lF8jyQ8JMbq6jW6+OOXpjts8hfnAdTyD1vhX5PezJSy0hYsA",
  render_errors: [view: WttjBackendTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: WttjBackendTest.PubSub,
  live_view: [signing_salt: "p6dSpcAe"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
