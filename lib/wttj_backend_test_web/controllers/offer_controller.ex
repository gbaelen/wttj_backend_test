defmodule WttjBackendTestWeb.OfferController do
  use WttjBackendTestWeb, :controller

  alias WttjBackendTest.Repo
  alias WttjBackendTest.Job.Offer

  import Ecto.Query

  plug :action

  def index(conn, params) do
    limit = if params["limit"] do String.to_integer(params["limit"]) else 100 end
    offset = if params["offset"] do String.to_integer(params["offset"]) else 0 end

    offers = Offer
      |> offset(^offset)
      |> limit(^limit)
      |> Repo.all

    render conn, offers: offers
  end
end
