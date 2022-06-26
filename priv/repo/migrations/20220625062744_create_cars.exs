defmodule AutoDealApi.Repo.Migrations.CreateCars do
  use Ecto.Migration

  def change do
    create table(:cars, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :make, :string
      add :model, :string
      add :series, :string
      add :year, :string
      add :slug, :string
      add :seat_capacity, :integer
      add :color, :string
      add :miles_per_gallon, :integer
      add :transmission, :string
      add :fuel_type, :string
      add :price, :decimal
      add :currency, :string
      add :img_url, :string

      timestamps()
    end
  end
end
