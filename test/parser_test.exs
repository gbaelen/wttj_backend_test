defmodule WttjBackendTest.ParserTest do
  use ExUnit.Case

  @tag :pending
  test "gets fr country code" do
    assert WttjBackendTest.Parser.get_location_country_code(48.8683316,2.3554578) == "fr"
  end

  @tag :pending
  test "gets us country code" do
    assert WttjBackendTest.Parser.get_location_country_code(36.778259,-119.417931) == "us"
  end

  @tag :pending
  test "gets ru country code" do
    assert WttjBackendTest.Parser.get_location_country_code(55.751244,37.618423) == "ru"
  end

  @tag :pending
  test "gets continent for fr" do
    assert WttjBackendTest.Parser.get_continent_from_country_code("fr") == "Europe"
  end

  @tag :pending
  test "gets continent for ru" do
    assert WttjBackendTest.Parser.get_continent_from_country_code("ru") == "Asia"
  end

  @tag :pending
  test "gets continent for us" do
    assert WttjBackendTest.Parser.get_continent_from_country_code("us") == "North America"
  end

  @tag :pending
  test "gets continent for ao" do
    assert WttjBackendTest.Parser.get_continent_from_country_code("ao") == "Africa"
  end

  @tag :pending
  test "gets continent for au" do
    assert WttjBackendTest.Parser.get_continent_from_country_code("au") == "Oceania"
  end

  @tag :pending
  test "gets continent for af" do
    assert WttjBackendTest.Parser.get_continent_from_country_code("af") == "Asia"
  end

  @tag :pending
  test "gets category and location for correct entry" do
    assert WttjBackendTest.Parser.extract_category_and_location([17,"FULL_TIME","Infrastructure Engineer based in Paris/Marseille",48.8867578,2.3253786], %{17 => "Tech"}) == ["Tech", "Europe"]
  end

  @tag :pending
  test "gets category and location for an entry without location" do
    assert WttjBackendTest.Parser.extract_category_and_location([2,"FULL_TIME","Infrastructure Engineer based in Paris/Marseille",nil,nil], %{2 => "Business"}) == ["Business", "Unknown"]
  end

  @tag :pending
  test "gets keys for category and continent from fequencies" do
    frequencies_example = %{
      ["Retail", "Asia"] => 7,
      ["Marketing / Comm'", "North America"] => 12,
      ["Retail", "Africa"] => 1,
      ["Tech", "South America"] => 1,
      ["Business", "Europe"] => 1372,
      ["Admin", "Unknown"] => 4,
      ["Business", "Unknown"] => 9,
      ["Business", "Africa"] => 3,
      ["Marketing / Comm'", "Africa"] => 1,
      ["Marketing / Comm'", "Unknown"] => 6
    }

    expected = {MapSet.new(["Retail", "Marketing / Comm'", "Tech", "Business", "Admin"]), MapSet.new(["Asia", "North America", "Africa", "South America", "Europe", "Unknown"])}
    assert WttjBackendTest.Parser.get_category_and_continent_keys(frequencies_example) == expected
  end

  @tag :pending
  test "generate display string for jobs count per category and continent" do
    frequencies_example_small = %{
      ["Retail", "Asia"] => 7,
      ["Marketing / Comm'", "North America"] => 12,
      ["Retail", "Africa"] => 1,
      ["Tech", "Europe"] => 10
    }

    expected = "---------------------------------------------------------------------------------\n|                   | Marketing / Comm' |      Retail       |       Tech        |\n---------------------------------------------------------------------------------\n|      Africa       |         0         |         1         |         0         |\n---------------------------------------------------------------------------------\n|       Asia        |         0         |         7         |         0         |\n---------------------------------------------------------------------------------\n|      Europe       |         0         |         0         |        10         |\n---------------------------------------------------------------------------------\n|   North America   |        12         |         0         |         0         |\n---------------------------------------------------------------------------------\n"
    assert WttjBackendTest.Parser.create_display_string(frequencies_example_small) == expected
  end

  @tag :pending
  test "generate the proper cell for the table" do
    assert WttjBackendTest.Parser.format_cell("some value", 15) == "  some value   |"
  end

  @tag :pending
  test "get the highest cell width" do
    frequencies_example = %{
      ["Retail", "Asia"] => 7,
      ["Marketing / Comm'", "North America"] => 12,
      ["Retail", "Africa"] => 1,
      ["Tech", "South America"] => 1,
      ["Business", "Europe"] => 1372,
      ["Admin", "Unknown"] => 4,
      ["Business", "Unknown"] => 9,
      ["Business", "Africa"] => 3,
      ["Marketing / Comm'", "Africa"] => 1,
      ["Marketing / Comm'", "Unknown"] => 6
    }

    assert WttjBackendTest.Parser.get_highest_cell_width(frequencies_example) == 17
  end

  @tag :pending
  test "get the total for the categories" do
    frequencies_example_small = %{
      ["Retail", "Asia"] => 7,
      ["Marketing / Comm'", "North America"] => 12,
      ["Retail", "Africa"] => 1,
      ["Tech", "Europe"] => 10
    }

    assert WttjBackendTest.Parser.get_total_categories(["Retail", "Marketing / Comm'", "Tech"], ["Asia", "North America", "Africa", "Europe"], frequencies_example_small) == %{"Marketing / Comm'" => 12, "Retail" => 8, "Tech" => 10}
  end

  @tag :pending
  test "get the total for the continents" do
    frequencies_example_small = %{
      ["Retail", "Asia"] => 7,
      ["Marketing / Comm'", "Asia"] => 12,
      ["Retail", "Africa"] => 1,
      ["Tech", "Europe"] => 10
    }

    assert WttjBackendTest.Parser.get_total_continents(["Retail", "Marketing / Comm'", "Tech"], ["Asia", "Africa", "Europe"], frequencies_example_small) == %{"Africa" => 1, "Asia" => 19, "Europe" => 10}
  end

  test "add the totals to the frequencies" do
    frequencies_example_small = %{
      ["Retail", "Asia"] => 7,
      ["Marketing / Comm'", "Asia"] => 12,
      ["Retail", "Africa"] => 1,
      ["Tech", "Europe"] => 10
    }

    expected =  %{
      ["Retail", "Asia"] => 7,
      ["Marketing / Comm'", "Asia"] => 12,
      ["Retail", "Africa"] => 1,
      ["Tech", "Europe"] => 10,
      ["Retail", " Total"] => 8,
      ["Marketing / Comm'", " Total"] => 12,
      ["Tech", " Total"] => 10,
      [" Total", "Africa"] => 1,
      [" Total", "Asia"] => 19,
      [" Total", "Europe"] => 10,
      [" Total", " Total"] => 30
    }

    assert WttjBackendTest.Parser.add_total_to_frequencies(frequencies_example_small) == expected
  end
end
