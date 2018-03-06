defmodule UserlistxWeb.PageController do
  use UserlistxWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
