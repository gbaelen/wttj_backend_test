defmodule WttjBackendTestWeb.ProfessionController do
  use WttjBackendTestWeb, :controller

  alias WttjBackendTest.Repo
  alias WttjBackendTest.Job.Profession

  import Ecto.Query
  import WttjBackendTest.RateLimit

  plug :rate_limit, max_requests: 5, interval_seconds: 60
  plug :action

  def index(conn, params) do
    limit = if params["limit"] do String.to_integer(params["limit"]) else 100 end
    offset = if params["offset"] do String.to_integer(params["offset"]) else 0 end

    professions = Profession
      |> offset(^offset)
      |> limit(^limit)
      |> Repo.all

    render conn, professions: professions
  end
end
