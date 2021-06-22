defmodule WttjBackendTest.Job.Offer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "offers" do
    field :contract_type, :string
    field :latitude, :float
    field :longitude, :float
    field :name, :string
    field :profession_id, :id

    timestamps()
  end

  @doc false
  def changeset(offer, attrs) do
    offer
    |> cast(attrs, [:contract_type, :name, :latitude, :longitude])
    |> validate_required([:contract_type, :name])
  end
end
