defmodule WttjBackendTestWeb.ProfessionController do
  use WttjBackendTestWeb, :controller

  alias WttjBackendTest.Job
  alias WttjBackendTest.Job.Profession

  def index(conn, _params) do
    professions = Job.list_professions()
    render(conn, "index.html", professions: professions)
  end

  def new(conn, _params) do
    changeset = Job.change_profession(%Profession{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"profession" => profession_params}) do
    case Job.create_profession(profession_params) do
      {:ok, profession} ->
        conn
        |> put_flash(:info, "Profession created successfully.")
        |> redirect(to: Routes.profession_path(conn, :show, profession))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    profession = Job.get_profession!(id)
    render(conn, "show.html", profession: profession)
  end

  def edit(conn, %{"id" => id}) do
    profession = Job.get_profession!(id)
    changeset = Job.change_profession(profession)
    render(conn, "edit.html", profession: profession, changeset: changeset)
  end

  def update(conn, %{"id" => id, "profession" => profession_params}) do
    profession = Job.get_profession!(id)

    case Job.update_profession(profession, profession_params) do
      {:ok, profession} ->
        conn
        |> put_flash(:info, "Profession updated successfully.")
        |> redirect(to: Routes.profession_path(conn, :show, profession))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", profession: profession, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    profession = Job.get_profession!(id)
    {:ok, _profession} = Job.delete_profession(profession)

    conn
    |> put_flash(:info, "Profession deleted successfully.")
    |> redirect(to: Routes.profession_path(conn, :index))
  end
end
