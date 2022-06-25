defmodule AutoDealApiWeb.Api.V1.ErrorView do
  use AutoDealApiWeb, :view

  def render("not_found.json", _) do
    %{
      status: 404,
      message: "Not found"
    }
  end

  def render("bad_request.json", %{errors: errors}) do
    %{
      status: 400,
      message: "Bad request",
      errors: errors
    }
  end

  def render("unauthorized.json", _) do
    %{
      status: 401,
      message: "Unauthorized access"
    }
  end

  def render("timeout.json", _) do
    %{
      status: 503,
      message: "Timeout error."
    }
  end
end
