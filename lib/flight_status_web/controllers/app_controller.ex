defmodule FlightStatusWeb.AppController do
  use FlightStatusWeb, :controller

  def index(conn, _params) do
    filename = Path.join :code.priv_dir(:flight_status), "static/app.html"

    html conn, File.read!(filename)
  end
end
