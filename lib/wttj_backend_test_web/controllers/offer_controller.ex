defmodule WttjBackendTestWeb.OfferController do
  use WttjBackendTestWeb, :controller

  alias WttjBackendTest.Job
  alias WttjBackendTest.Job.Offer

  def index(conn, _params) do
    offers = Job.list_offers()
    render(conn, "index.html", offers: offers)
  end

  def new(conn, _params) do
    changeset = Job.change_offer(%Offer{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"offer" => offer_params}) do
    case Job.create_offer(offer_params) do
      {:ok, offer} ->
        conn
        |> put_flash(:info, "Offer created successfully.")
        |> redirect(to: Routes.offer_path(conn, :show, offer))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    offer = Job.get_offer!(id)
    render(conn, "show.html", offer: offer)
  end

  def edit(conn, %{"id" => id}) do
    offer = Job.get_offer!(id)
    changeset = Job.change_offer(offer)
    render(conn, "edit.html", offer: offer, changeset: changeset)
  end

  def update(conn, %{"id" => id, "offer" => offer_params}) do
    offer = Job.get_offer!(id)

    case Job.update_offer(offer, offer_params) do
      {:ok, offer} ->
        conn
        |> put_flash(:info, "Offer updated successfully.")
        |> redirect(to: Routes.offer_path(conn, :show, offer))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", offer: offer, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    offer = Job.get_offer!(id)
    {:ok, _offer} = Job.delete_offer(offer)

    conn
    |> put_flash(:info, "Offer deleted successfully.")
    |> redirect(to: Routes.offer_path(conn, :index))
  end
end
