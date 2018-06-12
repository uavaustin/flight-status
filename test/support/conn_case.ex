defmodule FlightStatusWeb.ConnCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Phoenix.ConnTest
      import FlightStatusWeb.Router.Helpers

      @endpoint FlightStatusWeb.Endpoint
    end
  end

  setup _tags do
    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
