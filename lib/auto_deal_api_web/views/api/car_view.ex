defmodule AutoDealApiWeb.Api.V1.CarView do
  use AutoDealApiWeb, :view

  def render("cars.json", %{result: cars}), do: cars

  def render("car.json", %{result: car}), do: car
end
