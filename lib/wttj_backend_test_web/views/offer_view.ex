defmodule WttjBackendTestWeb.OfferView do
  use WttjBackendTestWeb, :view

  def render("index.json", %{offers: offers}) do
    offers
  end

  def render("get_offer_by_id.json", %{offer: offer}) do
    offer
  end
end
