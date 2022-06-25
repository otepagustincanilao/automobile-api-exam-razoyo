defmodule AutoDealApi.Contexts.Car do
  import Ecto.Query
  alias AutoDealApi.Repo
  alias AutoDealApi.Schemas.Car
  alias Ecto.Changeset

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

  ##################################### Start of list cars #########################################
  # Schemaless validation
  # we can add further validations if needed
  # For now its plain casting only for make: :string
  # if we have paginations in the future we can add datatypes and the validations here regarding
  # page_number, limit and offsets
  def validate_params(params, :list) do
    data_types = %{
      make: :string
    }

    {%{}, data_types}
    |> Changeset.cast(params, Map.keys(data_types))
  end

  def validate_params(params, :view) do
    data_types = %{
      id: :string
    }

    {%{}, data_types}
    |> Changeset.cast(params, Map.keys(data_types))
    |> validate_car_id()
  end

  @spec list_cars(map) :: %{cars: [%Car{}], count: integer()}
  def list_cars(params) do
    search_value = if Map.has_key?(params, :make), do: params.make, else: ""

    %{
      cars: cars(search_value),
      count: cars_count(search_value)
    }
  end

  defp cars(search_value) do
    Car
    |> filter_by_make(search_value)
    |> order_by([c], asc: c.make)
    |> Repo.all()
  end

  defp cars_count(search_value) do
    Car
    |> filter_by_make(search_value)
    |> order_by([c], asc: c.make)
    |> Repo.aggregate(:count, :id)
  end

  defp filter_by_make(query, search_value) do
    query
    |> where([c], ilike(c.make, ^"%#{search_value}%"))
  end
  ##################################### End of list cars #########################################

  defp validate_car_id(%{changes: %{id: id}} = changeset) do
    case Ecto.UUID.cast(id) do
      {:ok, _uuid} ->
        changeset

      _ ->
        changeset
        |> Changeset.add_error(:id, "UUID is invalid")
    end
  end

end
