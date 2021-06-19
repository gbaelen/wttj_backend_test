defmodule WttjBackendTest do
  @moduledoc """
  Documentation for `WttjBackendTest`.
  """

  @doc """
  """
  def count_of_offers_per_category_per_continent do
    %{}
  end

  def get_location_country_code(latitute, longitude) do
    {:ok, coordinates} = Geocoder.call({latitute, longitude})
    coordinates.location.country_code
  end
end
