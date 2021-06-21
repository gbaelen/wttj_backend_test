defmodule WttjBackendTest do
  @continent %{"af" => "Asia", "al" => "Europe", "aq" => "Antarctica", "dz" => "Africa", "as" => "Oceania", "ad" => "Europe", "ao" => "Africa", "ag" => "North America", "az" => "Europe", "az" => "Asia", "ar" => "South America", "au" => "Oceania", "at" => "Europe", "bs" => "North America", "bh" => "Asia", "bd" => "Asia", "am" => "Europe", "am" => "Asia", "bb" => "North America", "be" => "Europe", "bm" => "North America", "bt" => "Asia", "bo" => "South America", "ba" => "Europe", "bw" => "Africa", "bv" => "Antarctica", "br" => "South America", "bz" => "North America", "io" => "Asia", "sb" => "Oceania", "vg" => "North America", "bn" => "Asia", "bg" => "Europe", "mm" => "Asia", "bi" => "Africa", "by" => "Europe", "kh" => "Asia", "cm" => "Africa", "ca" => "North America", "cv" => "Africa", "ky" => "North America", "cf" => "Africa", "lk" => "Asia", "td" => "Africa", "cl" => "South America", "cn" => "Asia", "tw" => "Asia", "cx" => "Asia", "cc" => "Asia", "co" => "South America", "km" => "Africa", "yt" => "Africa", "cg" => "Africa", "cd" => "Africa", "ck" => "Oceania", "cr" => "North America", "hr" => "Europe", "cu" => "North America", "cy" => "Europe", "cy" => "Asia", "cz" => "Europe", "bj" => "Africa", "dk" => "Europe", "dm" => "North America", "do" => "North America", "ec" => "South America", "sv" => "North America", "gq" => "Africa", "et" => "Africa", "er" => "Africa", "ee" => "Europe", "fo" => "Europe", "fk" => "South America", "gs" => "Antarctica", "fj" => "Oceania", "fi" => "Europe", "ax" => "Europe", "fr" => "Europe", "gf" => "South America", "pf" => "Oceania", "tf" => "Antarctica", "dj" => "Africa", "ga" => "Africa", "ge" => "Europe", "ge" => "Asia", "gm" => "Africa", "ps" => "Asia", "de" => "Europe", "gh" => "Africa", "gi" => "Europe", "ki" => "Oceania", "gr" => "Europe", "gl" => "North America", "gd" => "North America", "gp" => "North America", "gu" => "Oceania", "gt" => "North America", "gn" => "Africa", "gy" => "South America", "ht" => "North America", "hm" => "Antarctica", "va" => "Europe", "hn" => "North America", "hk" => "Asia", "hu" => "Europe", "is" => "Europe", "in" => "Asia", "id" => "Asia", "ir" => "Asia", "iq" => "Asia", "ie" => "Europe", "il" => "Asia", "it" => "Europe", "ci" => "Africa", "jm" => "North America", "jp" => "Asia", "kz" => "Europe", "kz" => "Asia", "jo" => "Asia", "ke" => "Africa", "kp" => "Asia", "kr" => "Asia", "kw" => "Asia", "kg" => "Asia", "la" => "Asia", "lb" => "Asia", "ls" => "Africa", "lv" => "Europe", "lr" => "Africa", "ly" => "Africa", "li" => "Europe", "lt" => "Europe", "lu" => "Europe", "mo" => "Asia", "mg" => "Africa", "mw" => "Africa", "my" => "Asia", "mv" => "Asia", "ml" => "Africa", "mt" => "Europe", "mq" => "North America", "mr" => "Africa", "mu" => "Africa", "mx" => "North America", "mc" => "Europe", "mn" => "Asia", "md" => "Europe", "me" => "Europe", "ms" => "North America", "ma" => "Africa", "mz" => "Africa", "om" => "Asia", "na" => "Africa", "nr" => "Oceania", "np" => "Asia", "nl" => "Europe", "an" => "North America", "cw" => "North America", "aw" => "North America", "sx" => "North America", "bq" => "North America", "nc" => "Oceania", "vu" => "Oceania", "nz" => "Oceania", "ni" => "North America", "ne" => "Africa", "ng" => "Africa", "nu" => "Oceania", "nf" => "Oceania", "no" => "Europe", "mp" => "Oceania", "um" => "Oceania", "um" => "North America", "fm" => "Oceania", "mh" => "Oceania", "pw" => "Oceania", "pk" => "Asia", "pa" => "North America", "pg" => "Oceania", "py" => "South America", "pe" => "South America", "ph" => "Asia", "pn" => "Oceania", "pl" => "Europe", "pt" => "Europe", "gw" => "Africa", "tl" => "Asia", "pr" => "North America", "qa" => "Asia", "re" => "Africa", "ro" => "Europe", "ru" => "Europe", "ru" => "Asia", "rw" => "Africa", "bl" => "North America", "sh" => "Africa", "kn" => "North America", "ai" => "North America", "lc" => "North America", "mf" => "North America", "pm" => "North America", "vc" => "North America", "sm" => "Europe", "st" => "Africa", "sa" => "Asia", "sn" => "Africa", "rs" => "Europe", "sc" => "Africa", "sl" => "Africa", "sg" => "Asia", "sk" => "Europe", "vn" => "Asia", "si" => "Europe", "so" => "Africa", "za" => "Africa", "zw" => "Africa", "es" => "Europe", "ss" => "Africa", "eh" => "Africa", "sd" => "Africa", "sr" => "South America", "sj" => "Europe", "sz" => "Africa", "se" => "Europe", "ch" => "Europe", "sy" => "Asia", "tj" => "Asia", "th" => "Asia", "tg" => "Africa", "tk" => "Oceania", "to" => "Oceania", "tt" => "North America", "ae" => "Asia", "tn" => "Africa", "tr" => "Europe", "tr" => "Asia", "tm" => "Asia", "tc" => "North America", "tv" => "Oceania", "ug" => "Africa", "ua" => "Europe", "mk" => "Europe", "eg" => "Africa", "gb" => "Europe", "gg" => "Europe", "je" => "Europe", "im" => "Europe", "tz" => "Africa", "us" => "North America", "vi" => "North America", "bf" => "Africa", "uy" => "South America", "uz" => "Asia", "ve" => "South America", "wf" => "Oceania", "ws" => "Oceania", "ye" => "Asia", "zm" => "Africa", "xx" => "Oceania", "xe" => "Asia", "xd" => "Asia", "xs" => "Asia", "n/a" => "Unknown"}

  @moduledoc """
  Documentation for `WttjBackendTest`.
  """

  @doc """
  """
  def display_count_of_offers_per_category_per_continent do
    count_of_offers_per_category_per_continent()
     |> create_display_string
     |> IO.puts
  end

  def create_display_string(frequencies) do
    {categories, continents} = get_category_and_continent_keys(frequencies)

    cell_width = get_highest_cell_width(frequencies) + 2 # add 2 to the cell width to have 2 space around the biggest name
    nb_column_separators = MapSet.size(categories) + 2 # add 2 to count the outer boundaries
    table_width = (MapSet.size(categories) + 1) * cell_width + nb_column_separators

    row_line = String.duplicate("-", table_width) <> "\n"
    header_string = for category <- categories, into: "", do: format_cell(category, cell_width)
    display_string = row_line <> "|" <> String.duplicate(" ", cell_width) <> "|" <> header_string <> "\n" <>row_line

    body_string = for continent <- continents, into: "" do
      values = for category <- categories, into: "" do
        value = frequencies[[category, continent]]
        if value do
          format_cell(Integer.to_string(value), cell_width)
        else
          format_cell("0", cell_width)
        end
      end

      "|" <> format_cell("#{continent}", cell_width) <> values <> "\n" <> row_line
    end

    display_string <> body_string
  end

  def format_cell(value, cell_width) do
    space_before = trunc((cell_width - String.length(value))/2)
    space_after = (cell_width - String.length(value)) - space_before
    String.duplicate(" ", space_before) <> value <> String.duplicate(" ", space_after) <> "|"
  end
  def get_highest_cell_width(frequencies) do
    values = for {key, value} <- frequencies, into: [], do: [Enum.at(key, 0), Enum.at(key, 1), Integer.to_string(value)]
    values
    |> List.flatten
    |> Enum.map(fn x -> String.length(x) end)
    |> Enum.max
  end

  def get_category_and_continent_keys(frequencies) do
    category_keys = for {keys, _val} <- frequencies, into: [], do: Enum.at(keys, 0)
    continent_keys = for {keys, _val} <- frequencies, into: [], do: Enum.at(keys, 1)

    {MapSet.new(category_keys), MapSet.new(continent_keys)}
  end

  @spec count_of_offers_per_category_per_continent :: list
  def count_of_offers_per_category_per_continent do
    get_job_csv_data()
      |> Stream.filter(fn
          ["profession_id" | _] -> false
          [_ | _] -> true
        end)
      |> Stream.map(&extract_category_and_location(&1))
      |> Enum.frequencies
  end

  @spec extract_category_and_location(list) :: list
  def extract_category_and_location(row) do
    categories_name = get_category_data()
    [category,_,_,latitude,longitude] = row

    latitude = if latitude == "" do 0 else String.to_float(latitude) end
    longitude = if longitude == "" do 0 else String.to_float(longitude) end

    continent = get_location_country_code(latitude, longitude)
                |> get_continent_from_country_code

    category_name = if categories_name[category] == nil do "Unknown" else categories_name[category] end
    [category_name, continent]
  end

  @spec get_job_csv_data :: File.Stream.t()
  def get_job_csv_data do
    File.stream!("data/technical-test-jobs.csv")
    |> CSV.decode!
  end

  def get_category_data do
    File.stream!("data/technical-test-professions.csv")
    |> CSV.decode!
    |> Stream.filter(fn
      ["id" | _] -> false
      [_ | _] -> true
    end)
    |> Stream.map(&csv_category_to_map(&1))
    |> Map.new
  end

  @spec csv_category_to_map(any) :: none
  def csv_category_to_map(row) do
    [id, _, category] = row
    {id, category}
  end

  @spec get_location_country_code(Float, Float) :: String.t()
  def get_location_country_code(latitute, longitude) do
    if latitute == 0 && longitude == 0 do
      "n/a"
    else
      {:ok, coordinates} = Geocoder.call({latitute, longitude})
      coordinates.location.country_code
    end
  end

  @spec get_continent_from_country_code(String.t()) :: String.t()
  def get_continent_from_country_code(country_code) do
    @continent[country_code]
  end
end
