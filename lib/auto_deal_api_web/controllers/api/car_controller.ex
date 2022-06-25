defmodule AutoDealApiWeb.Api.CarController do
  use AutoDealApiWeb, :controller

  def get(conn, params) do

    conn
    |> put_status(200)
    |> render("result.json",
      result: %{
        status: 200
      }

    )
  end
end
