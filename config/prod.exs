use Mix.Config

config :flight_status, FlightStatusWeb.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "0.0.0.0", port: {:system, "PORT"}],
  check_origin: false,
  server: true,
  root: ".",
  version: Application.spec(:flight_status, :vsn)

config :phoenix, :serve_endpoints, true

config :logger, level: :warn
