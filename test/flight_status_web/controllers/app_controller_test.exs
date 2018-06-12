defmodule FlightStatusWeb.AppControllerTest do
  use FlightStatusWeb.ConnCase

  test "GET /app", %{conn: conn} do
    conn = get conn, "/app"
    assert html_response(conn, 200) =~ "Flight Status"
  end

  test "GET /app/dashboard", %{conn: conn} do
    conn = get conn, "/app/dashboard"
    assert html_response(conn, 200) =~ "Flight Status"
  end

  test "GET /app/not-an-endpoint", %{conn: conn} do
    conn = get conn, "/app/not-an-endpoint"
    assert html_response(conn, 200) =~ "Flight Status"
  end
end
