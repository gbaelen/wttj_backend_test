defmodule WttjBackendTestWeb.ProfessionView do
  use WttjBackendTestWeb, :view

  def render("index.json", %{professions: professions}) do
    professions
  end

  def render("get_profession_by_id.json", %{profession: profession}) do
    profession
  end
end
