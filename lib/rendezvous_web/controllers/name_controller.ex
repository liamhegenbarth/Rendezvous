defmodule RendezvousWeb.NameController do
  use RendezvousWeb, :controller

  # def index(conn, _params) do
  #   render conn, "index.html"
  # end

  def index(conn, %{"name" => name} = params) do
    render conn, "index.html", name: name
  end

end
