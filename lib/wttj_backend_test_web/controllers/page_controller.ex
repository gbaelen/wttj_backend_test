defmodule WttjBackendTestWeb.PageController do
  use WttjBackendTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
