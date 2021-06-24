defmodule WttjBackendTestWeb.OfferView do
  use WttjBackendTestWeb, :view

  def render("index.json", %{offers: offers}) do
    offers
  end
end
