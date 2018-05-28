defmodule FlightStatusWeb.UserSocket do
  use Phoenix.Socket

  channel "imagery:*", FlightStatusWeb.ImageryChannel

  transport :websocket, Phoenix.Transports.WebSocket

  # No authentication is done.
  def connect(_params, socket), do: {:ok, socket}

  # Sockets are anonymous.
  def id(_socket), do: nil
end
