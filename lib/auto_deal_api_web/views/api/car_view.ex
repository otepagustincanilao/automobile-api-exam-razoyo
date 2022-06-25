defmodule AutoDealApiWeb.Api.CarView do
  use AutoDealApiWeb, :view

  def render("result.json", %{result: result}), do: result

end
