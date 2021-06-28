defmodule WttjBackendTestWeb.OfferController do
  use WttjBackendTestWeb, :controller

  alias WttjBackendTest.Repo
  alias WttjBackendTest.Job.Offer

  import Ecto.Query
  import WttjBackendTest.RateLimit

  plug :rate_limit, max_requests: 5, interval_seconds: 60
  plug :action

  def index(conn, params) do
    limit = if params["limit"] do String.to_integer(params["limit"]) else 100 end
    offset = if params["offset"] do String.to_integer(params["offset"]) else 0 end
    direction = if params["direction"] == "asc" do :asc else :desc end
    order = if params["order"] do String.to_atom(params["order"]) else :id end

    offers = Offer
      |> filter_by_name(params["name"])
      |> filter_by_contract_type(params["contract_type"])
      |> filter_by_profession_id(params["profession_id"])
      |> order_by({^direction, ^order})
      |> offset(^offset)
      |> limit(^limit)
      |> Repo.all

    render conn, offers: offers
  end

  def get_offer_by_id(conn, %{"offer_id" => offer_id}) do
    offer = Repo.get_by(Offer, id: offer_id)
    render conn, offer: offer
  end

  defp filter_by_name(query, match) do
    where(query, [offer], ilike(offer.name, ^"%#{match}%"))
  end

  defp filter_by_contract_type(query, match) do
    where(query, [offer], ilike(offer.contract_type, ^"%#{match}%"))
  end

  defp filter_by_profession_id(query, match) do
    if is_nil(match) do
      query
    else
      where(query, [offer], offer.profession_id == ^match)
    end
  end
end
