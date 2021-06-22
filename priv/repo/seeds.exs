# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     WttjBackendTest.Repo.insert!(%WttjBackendTest.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias WttjBackendTest.Job.Offer
alias WttjBackendTest.Job.Profession
alias WttjBackendTest.Repo

defmodule WttjBackendTest.Seeds do
  def store_offers(row) do
    changeset = Offer.changeset(%Offer{}, row)
    Repo.insert!(changeset)
  end

  def store_professions(row) do
    changeset = Profession.changeset(%Profession{}, row)
    Repo.insert!(changeset)
  end
end

File.stream!("data/technical-test-jobs.csv")
  |> Stream.drop(1)
  |> CSV.decode!(headers: [:profession_id, :contract_type, :name, :latitude, :longitude])
  |> Enum.each(&WttjBackendTest.Seeds.store_offers/1)

File.stream!("data/technical-test-professions.csv")
  |> Stream.drop(1)
  |> CSV.decode!(headers: [:id, :name, :category_name])
  |> Enum.each(&WttjBackendTest.Seeds.store_professions/1)
