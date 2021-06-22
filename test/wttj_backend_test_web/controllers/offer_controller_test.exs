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

  describe "new offer" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.offer_path(conn, :new))
      assert html_response(conn, 200) =~ "New Offer"
    end
  end

  describe "create offer" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.offer_path(conn, :create), offer: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.offer_path(conn, :show, id)

      conn = get(conn, Routes.offer_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Offer"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.offer_path(conn, :create), offer: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Offer"
    end
  end

  describe "edit offer" do
    setup [:create_offer]

    test "renders form for editing chosen offer", %{conn: conn, offer: offer} do
      conn = get(conn, Routes.offer_path(conn, :edit, offer))
      assert html_response(conn, 200) =~ "Edit Offer"
    end
  end

  describe "update offer" do
    setup [:create_offer]

    test "redirects when data is valid", %{conn: conn, offer: offer} do
      conn = put(conn, Routes.offer_path(conn, :update, offer), offer: @update_attrs)
      assert redirected_to(conn) == Routes.offer_path(conn, :show, offer)

      conn = get(conn, Routes.offer_path(conn, :show, offer))
      assert html_response(conn, 200) =~ "some updated contract_type"
    end

    test "renders errors when data is invalid", %{conn: conn, offer: offer} do
      conn = put(conn, Routes.offer_path(conn, :update, offer), offer: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Offer"
    end
  end

  describe "delete offer" do
    setup [:create_offer]

    test "deletes chosen offer", %{conn: conn, offer: offer} do
      conn = delete(conn, Routes.offer_path(conn, :delete, offer))
      assert redirected_to(conn) == Routes.offer_path(conn, :index)
      assert_error_sent 404, fn ->
        get(conn, Routes.offer_path(conn, :show, offer))
      end
    end
  end

  defp create_offer(_) do
    offer = fixture(:offer)
    %{offer: offer}
  end
end
