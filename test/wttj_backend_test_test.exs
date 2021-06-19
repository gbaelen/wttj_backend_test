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

  test "gets continent for fr" do
    assert WttjBackendTest.get_continent_from_country_code("fr") == "Europe"
  end

  test "gets continent for ru" do
    assert WttjBackendTest.get_continent_from_country_code("ru") == "Asia"
  end

  test "gets continent for us" do
    assert WttjBackendTest.get_continent_from_country_code("us") == "North America"
  end

  test "gets continent for ao" do
    assert WttjBackendTest.get_continent_from_country_code("ao") == "Africa"
  end

  test "gets continent for au" do
    assert WttjBackendTest.get_continent_from_country_code("au") == "Oceania"
  end

  test "gets continent for af" do
    assert WttjBackendTest.get_continent_from_country_code("af") == "Asia"
  end

  test "gets category and location for correct entry" do
    assert WttjBackendTest.extract_category_and_location(["17","FULL_TIME","Infrastructure Engineer based in Paris/Marseille","48.8867578","2.3253786"]) == ["17", "Europe"]
  end

  test "gets category and location for an entry without location" do
    assert WttjBackendTest.extract_category_and_location(["2","FULL_TIME","Infrastructure Engineer based in Paris/Marseille","",""]) == ["2", "Unknown"]
  end
end
