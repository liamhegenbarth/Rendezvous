defmodule RendezvousWeb.PageController do
  use RendezvousWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
