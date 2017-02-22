defmodule BlogExample.PageController do
  use BlogExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
