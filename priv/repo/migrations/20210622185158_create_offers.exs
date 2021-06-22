defmodule WttjBackendTest.Repo.Migrations.CreateOffers do
  use Ecto.Migration

  def change do
    create table(:offers) do
      add :contract_type, :string
      add :name, :string
      add :latitude, :float
      add :longitude, :float
      add :profession_id, references(:professions, on_delete: :nothing)

      timestamps()
    end

    create index(:offers, [:profession_id])
  end
end
