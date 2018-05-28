defmodule FlightStatusWeb do
  @moduledoc """
  Entrypoint for Flight Status web interface.

  Controllers, views, etc. use this module to get common elements
  needed for each.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: FlightStatusWeb

      import Plug.Conn
      import FlightStatusWeb.Router.Helpers
    end
  end

  def view do
    quote do
      use Phoenix.View, root: "lib/flight_status_web/templates",
                        namespace: FlightStatusWeb

      # Import convenience functions from controllers.
      import Phoenix.Controller, only: [get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc).
      use Phoenix.HTML

      import FlightStatusWeb.Router.Helpers
    end
  end

  def router do
    quote do
      use Phoenix.Router

      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
