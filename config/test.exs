use Mix.Config

config :flight_status, FlightStatusWeb.Endpoint,
  http: [port: 4001],
  server: false

config :logger, level: :warn
