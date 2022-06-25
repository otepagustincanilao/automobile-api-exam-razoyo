defmodule AutoDealApi.Schema do
  @moduledoc "AutoDealApi Schema"
  defmacro __using__(_) do
    quote do
      alias AutoDealApi.Repo

      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      use Ecto.Schema

      @primary_key {:id, :binary_id, autogenerate: true}
      @foreign_key_type :binary_id

      def generate_id(%schema{id: nil} = changeset),
        do: %{changeset | id: Ecto.UUID.generate()}

      def generate_id(%schema{id: id} = changeset) when not is_nil(id),
        do: changeset

      def validate_length_many(
            %Ecto.Changeset{} = changeset,
            fields
          )
          when is_list(fields) do
        Enum.reduce(fields, changeset, fn field, changeset ->
          validate_length(changeset, field, max: 250)
        end)
      end

      def validate_length_many(changeset, _), do: changeset
    end
  end
end
