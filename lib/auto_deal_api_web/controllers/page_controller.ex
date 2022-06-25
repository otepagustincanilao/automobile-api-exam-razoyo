defmodule AutoDealApiWeb.PageController do
  use AutoDealApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
