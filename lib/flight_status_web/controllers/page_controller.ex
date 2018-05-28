defmodule FlightStatusWeb.PageController do
  use FlightStatusWeb, :controller

  def index(conn, _params) do
    redirect conn, to: "/app/dashboard"
  end
end
