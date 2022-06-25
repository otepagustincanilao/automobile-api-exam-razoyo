defmodule AutoDealApi.Contexts.Car do
  import Ecto.Query
  alias AutoDealApi.Repo
  alias AutoDealApi.Schemas.Car

  @spec get(String.t()) :: %Car{}
  def get(id) do
    Car
    |> Repo.get(id)
  end

  @spec get_by(map()) :: %Car{}
  def get_by(params) do
    Car
    |> Repo.get_by(params)
  end

  @spec create(map()) :: %Car{}
  def create(params) do
    %Car{}
    |> Car.changeset(params)
    |> Repo.insert()
  end

  @spec get_car_by_brand(String.t()) :: %Car{}
  def get_car_by_brand(brand) do
    Car
    |> where([c], c.brand == ^brand)
    |> Repo.one()
  end

  @spec get_car_by_make(String.t()) :: %Car{}
  def get_car_by_make(make) do
    Car
    |> where([c], c.make == ^make)
    |> Repo.one()
  end
end
