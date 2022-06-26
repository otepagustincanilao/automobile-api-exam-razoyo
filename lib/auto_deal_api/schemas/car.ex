defmodule AutoDealApi.Schemas.Car do
  @moduledoc """
    Car Schema or Model
  """
  use AutoDealApi.Schema

  @required ~w(make model transmission year)a
  @optional ~w(slug seat_capacity color miles_per_gallon price currency fuel_type series img_url)a

  @derive {Jason.Encoder, only: [:id] ++ @required ++ @optional}
  schema "cars" do
    field :make, :string
    field :model, :string
    field :series, :string
    field :year, :string
    field :slug, :string
    field :seat_capacity, :integer
    field :color, :string
    field :miles_per_gallon, :integer
    field :transmission, :string
    field :fuel_type, :string
    field :price, :decimal
    field :currency, :string
    field :img_url, :string

    timestamps()
  end

  @doc false
  def changeset(car, attrs) do
    car
    |> cast(attrs, @required ++ @optional)
    |> validate_required(@required)
  end
end
