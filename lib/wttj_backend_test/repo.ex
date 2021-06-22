defmodule WttjBackendTest.Repo do
  use Ecto.Repo,
    otp_app: :wttj_backend_test,
    adapter: Ecto.Adapters.Postgres
end
