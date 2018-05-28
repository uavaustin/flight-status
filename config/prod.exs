use Mix.Config

config :flight_status, FlightStatusWeb.Endpoint,
  http: [port: 8000]

config :phoenix, :serve_endpoints, true

config :logger, level: :warn
