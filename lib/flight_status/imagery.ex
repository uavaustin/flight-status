defmodule FlightStatus.Imagery do
  @doc """
  Broadcast the most recent image to those watching live imagery.

  This will base64 encode the image.
  """
  def broadcast_live!(image) when is_binary(image) do
    encoded = %{ data: Base.encode64(image) }
    FlightStatusWeb.Endpoint.broadcast! "imagery:live", "new", encoded
  end
end
