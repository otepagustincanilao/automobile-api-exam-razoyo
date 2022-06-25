defmodule AutoDealApiWeb.Api.V1.FallbackController do
  use AutoDealApiWeb, :controller

  alias AutoDealApiWeb.Api.V1.ErrorView

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(404)
    |> put_view(ErrorView)
    |> render("not_found.json")
  end

  def call(conn, {:error, :invalid_parameters}) do
    conn
    |> put_status(400)
    |> put_view(ErrorView)
    |> render("bad_request.json")
  end

  def call(conn, {:error, :unauthorized}) do
    conn
    |> put_status(401)
    |> put_view(ErrorView)
    |> render("unauthorized.json")
  end

  def call(conn, {:error, :timeout}) do
    conn
    |> put_status(503)
    |> put_view(ErrorView)
    |> render("timeout.json")
  end

  def call(conn, _) do
    conn
    |> call({:error, :not_found})
  end
end
