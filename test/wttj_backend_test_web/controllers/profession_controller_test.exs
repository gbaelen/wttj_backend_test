defmodule WttjBackendTestWeb.ProfessionControllerTest do
  use WttjBackendTestWeb.ConnCase

  alias WttjBackendTest.Job

  @create_attrs %{category_name: "some category_name", name: "some name"}
  @update_attrs %{category_name: "some updated category_name", name: "some updated name"}
  @invalid_attrs %{category_name: nil, name: nil}

  def fixture(:profession) do
    {:ok, profession} = Job.create_profession(@create_attrs)
    profession
  end

  describe "index" do
    test "lists all professions", %{conn: conn} do
      conn = get(conn, Routes.profession_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Professions"
    end
  end

  defp create_profession(_) do
    profession = fixture(:profession)
    %{profession: profession}
  end
end
