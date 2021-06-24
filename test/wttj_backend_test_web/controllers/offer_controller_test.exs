defmodule WttjBackendTestWeb.OfferControllerTest do
  use WttjBackendTestWeb.ConnCase

  alias WttjBackendTest.Job

  @create_attrs %{contract_type: "some contract_type", latitude: 120.5, longitude: 120.5, name: "some name"}
  @update_attrs %{contract_type: "some updated contract_type", latitude: 456.7, longitude: 456.7, name: "some updated name"}
  @invalid_attrs %{contract_type: nil, latitude: nil, longitude: nil, name: nil}

  def fixture(:offer) do
    {:ok, offer} = Job.create_offer(@create_attrs)
    offer
  end

  describe "index" do
    test "lists all offers", %{conn: conn} do
      conn = get(conn, Routes.offer_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Offers"
    end
  end

  defp create_offer(_) do
    offer = fixture(:offer)
    %{offer: offer}
  end
end
