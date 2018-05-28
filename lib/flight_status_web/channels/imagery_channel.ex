defmodule FlightStatusWeb.ImageryChannel do
  use FlightStatusWeb, :channel

  def join("imagery:live", _message, socket) do
    {:ok, socket}
  end
end
