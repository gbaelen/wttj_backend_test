defmodule WttjBackendTestTest do
  use ExUnit.Case
  doctest WttjBackendTest

  test "gets fr country code" do
    assert WttjBackendTest.get_location_country_code(48.8683316,2.3554578) == "fr"
  end

  test "gets us country code" do
    assert WttjBackendTest.get_location_country_code(36.778259,-119.417931) == "us"
  end

  test "gets ru country code" do
    assert WttjBackendTest.get_location_country_code(55.751244,37.618423) == "ru"
  end
end
