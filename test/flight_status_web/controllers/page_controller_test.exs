defmodule FlightStatusWeb.PageControllerTest do
  use FlightStatusWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert redirected_to(conn) =~ "/app/dashboard"
  end
end
