defmodule FlightStatusWeb.Router do
  use FlightStatusWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FlightStatusWeb do
    pipe_through :browser
    get "/", PageController, :index
  end

  scope "/app", FlightStatusWeb do
    pipe_through :browser
    get "/*path", AppController, :index
  end

  # For when an api scope is needed.
  # scope "/api", FlightStatusWeb do
  #   pipe_through :api
  # end
end
