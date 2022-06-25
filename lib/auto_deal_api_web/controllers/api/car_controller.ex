defmodule AutoDealApiWeb.Api.V1.CarController do
  use AutoDealApiWeb, :controller

  alias AutoDealApi.Contexts.Car, as: ContextCar

  def get_all(conn, params) do
    with %{valid?: true, changes: params} <- ContextCar.validate_params(params, :list),
         cars_and_count <- ContextCar.list_cars(params) do
      conn
      |> put_status(200)
      |> put_resp_header("Authorization", "123xxxxxxx")
      |> render("cars.json", result: cars_and_count)
    else
      %{valid?: false} = changeset ->
        errors =
          Ecto.Changeset.traverse_errors(changeset, fn {msg, opts} ->
            Enum.reduce(opts, msg, fn {key, value}, acc ->
              String.replace(acc, "%{#{key}}", to_string(value))
            end)
          end)

        conn
        |> put_status(400)
        |> render("errors.json", errors: errors)
    end
  end

  def view(conn, params) do
    with %{valid?: true} = chngset <- ContextCar.validate_params(params, :view),
         car <- ContextCar.get(chngset.changes.id) do
      conn
      |> put_status(200)
      |> render("car.json", result: car)
    else
      %{valid?: false} = changeset ->
        errors =
          Ecto.Changeset.traverse_errors(changeset, fn {msg, opts} ->
            Enum.reduce(opts, msg, fn {key, value}, acc ->
              String.replace(acc, "%{#{key}}", to_string(value))
            end)
          end)

        conn
        |> put_status(400)
        |> render("errors.json", errors: errors)
    end
  end
end
