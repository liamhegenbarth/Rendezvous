defmodule RendezvousWeb.Router do
  use RendezvousWeb, :router

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

  scope "/", RendezvousWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/name/:name", NameController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", RendezvousWeb do
  #   pipe_through :api
  # end
end
