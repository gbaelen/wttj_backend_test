defmodule WttjBackendTestWeb.Router do
  use WttjBackendTestWeb, :router
  use Plug.ErrorHandler

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", WttjBackendTestWeb do
    pipe_through :api

    get "/offers/:offer_id", OfferController, :get_offer_by_id
    get "/professions/:profession_id", ProfessionController, :get_profession_by_id

    resources "/offers", OfferController
    resources "/professions", ProfessionController
  end

  # Other scopes may use custom stacks.
  # scope "/api", WttjBackendTestWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: WttjBackendTestWeb.Telemetry
    end
  end

  defp handle_errors(conn, %{reason: %Phoenix.Router.NoRouteError{message: message}}) do
    conn |> json(%{error: message}) |> halt()
  end

  defp handle_errors(conn, _) do
    conn |> json(%{error: "unknown"}) |> halt()
  end
end
