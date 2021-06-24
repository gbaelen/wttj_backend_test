defmodule WttjBackendTestWeb.ProfessionView do
  use WttjBackendTestWeb, :view

  def render("index.json", %{professions: professions}) do
    professions
  end
end
