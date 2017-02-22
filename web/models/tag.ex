defmodule BlogExample.Tag do
  use Ecto.Schema

  schema "tags" do
    field :name
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> Ecto.Changeset.cast(params, [:name])
  end
end
