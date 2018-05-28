use Mix.Config

config :flight_status, FlightStatusWeb.Endpoint,
  url: [host: "0.0.0.0"],
  render_errors: [view: FlightStatusWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FlightStatus.PubSub, adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config.
import_config "#{Mix.env}.exs"
