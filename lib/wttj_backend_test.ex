defmodule WttjBackendTest do
  @continent %{"af" => "Asia", "al" => "Europe", "aq" => "Antarctica", "dz" => "Africa", "as" => "Oceania", "ad" => "Europe", "ao" => "Africa", "ag" => "North America", "az" => "Europe", "az" => "Asia", "ar" => "South America", "au" => "Oceania", "at" => "Europe", "bs" => "North America", "bh" => "Asia", "bd" => "Asia", "am" => "Europe", "am" => "Asia", "bb" => "North America", "be" => "Europe", "bm" => "North America", "bt" => "Asia", "bo" => "South America", "ba" => "Europe", "bw" => "Africa", "bv" => "Antarctica", "br" => "South America", "bz" => "North America", "io" => "Asia", "sb" => "Oceania", "vg" => "North America", "bn" => "Asia", "bg" => "Europe", "mm" => "Asia", "bi" => "Africa", "by" => "Europe", "kh" => "Asia", "cm" => "Africa", "ca" => "North America", "cv" => "Africa", "ky" => "North America", "cf" => "Africa", "lk" => "Asia", "td" => "Africa", "cl" => "South America", "cn" => "Asia", "tw" => "Asia", "cx" => "Asia", "cc" => "Asia", "co" => "South America", "km" => "Africa", "yt" => "Africa", "cg" => "Africa", "cd" => "Africa", "ck" => "Oceania", "cr" => "North America", "hr" => "Europe", "cu" => "North America", "cy" => "Europe", "cy" => "Asia", "cz" => "Europe", "bj" => "Africa", "dk" => "Europe", "dm" => "North America", "do" => "North America", "ec" => "South America", "sv" => "North America", "gq" => "Africa", "et" => "Africa", "er" => "Africa", "ee" => "Europe", "fo" => "Europe", "fk" => "South America", "gs" => "Antarctica", "fj" => "Oceania", "fi" => "Europe", "ax" => "Europe", "fr" => "Europe", "gf" => "South America", "pf" => "Oceania", "tf" => "Antarctica", "dj" => "Africa", "ga" => "Africa", "ge" => "Europe", "ge" => "Asia", "gm" => "Africa", "ps" => "Asia", "de" => "Europe", "gh" => "Africa", "gi" => "Europe", "ki" => "Oceania", "gr" => "Europe", "gl" => "North America", "gd" => "North America", "gp" => "North America", "gu" => "Oceania", "gt" => "North America", "gn" => "Africa", "gy" => "South America", "ht" => "North America", "hm" => "Antarctica", "va" => "Europe", "hn" => "North America", "hk" => "Asia", "hu" => "Europe", "is" => "Europe", "in" => "Asia", "id" => "Asia", "ir" => "Asia", "iq" => "Asia", "ie" => "Europe", "il" => "Asia", "it" => "Europe", "ci" => "Africa", "jm" => "North America", "jp" => "Asia", "kz" => "Europe", "kz" => "Asia", "jo" => "Asia", "ke" => "Africa", "kp" => "Asia", "kr" => "Asia", "kw" => "Asia", "kg" => "Asia", "la" => "Asia", "lb" => "Asia", "ls" => "Africa", "lv" => "Europe", "lr" => "Africa", "ly" => "Africa", "li" => "Europe", "lt" => "Europe", "lu" => "Europe", "mo" => "Asia", "mg" => "Africa", "mw" => "Africa", "my" => "Asia", "mv" => "Asia", "ml" => "Africa", "mt" => "Europe", "mq" => "North America", "mr" => "Africa", "mu" => "Africa", "mx" => "North America", "mc" => "Europe", "mn" => "Asia", "md" => "Europe", "me" => "Europe", "ms" => "North America", "ma" => "Africa", "mz" => "Africa", "om" => "Asia", "na" => "Africa", "nr" => "Oceania", "np" => "Asia", "nl" => "Europe", "an" => "North America", "cw" => "North America", "aw" => "North America", "sx" => "North America", "bq" => "North America", "nc" => "Oceania", "vu" => "Oceania", "nz" => "Oceania", "ni" => "North America", "ne" => "Africa", "ng" => "Africa", "nu" => "Oceania", "nf" => "Oceania", "no" => "Europe", "mp" => "Oceania", "um" => "Oceania", "um" => "North America", "fm" => "Oceania", "mh" => "Oceania", "pw" => "Oceania", "pk" => "Asia", "pa" => "North America", "pg" => "Oceania", "py" => "South America", "pe" => "South America", "ph" => "Asia", "pn" => "Oceania", "pl" => "Europe", "pt" => "Europe", "gw" => "Africa", "tl" => "Asia", "pr" => "North America", "qa" => "Asia", "re" => "Africa", "ro" => "Europe", "ru" => "Europe", "ru" => "Asia", "rw" => "Africa", "bl" => "North America", "sh" => "Africa", "kn" => "North America", "ai" => "North America", "lc" => "North America", "mf" => "North America", "pm" => "North America", "vc" => "North America", "sm" => "Europe", "st" => "Africa", "sa" => "Asia", "sn" => "Africa", "rs" => "Europe", "sc" => "Africa", "sl" => "Africa", "sg" => "Asia", "sk" => "Europe", "vn" => "Asia", "si" => "Europe", "so" => "Africa", "za" => "Africa", "zw" => "Africa", "es" => "Europe", "ss" => "Africa", "eh" => "Africa", "sd" => "Africa", "sr" => "South America", "sj" => "Europe", "sz" => "Africa", "se" => "Europe", "ch" => "Europe", "sy" => "Asia", "tj" => "Asia", "th" => "Asia", "tg" => "Africa", "tk" => "Oceania", "to" => "Oceania", "tt" => "North America", "ae" => "Asia", "tn" => "Africa", "tr" => "Europe", "tr" => "Asia", "tm" => "Asia", "tc" => "North America", "tv" => "Oceania", "ug" => "Africa", "ua" => "Europe", "mk" => "Europe", "eg" => "Africa", "gb" => "Europe", "gg" => "Europe", "je" => "Europe", "im" => "Europe", "tz" => "Africa", "us" => "North America", "vi" => "North America", "bf" => "Africa", "uy" => "South America", "uz" => "Asia", "ve" => "South America", "wf" => "Oceania", "ws" => "Oceania", "ye" => "Asia", "zm" => "Africa", "xx" => "Oceania", "xe" => "Asia", "xd" => "Asia", "xs" => "Asia", "n/a" => "Unknown"}

  @moduledoc """
  Provide functions to parse the data of a list of jobs in order to
  """

  @spec display_count_of_offers_per_category_per_continent :: none
  @doc """
  Display the table of job offers count per category pe continent

  ## Example

    iex> WttjBackendTest.display_count_of_offers_per_category_per_continent

        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        |                   |       Total       |       Admin       |     Business      |      Conseil      |       Créa        | Marketing / Comm' |      Retail       |       Tech        |      Unknown      |
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        |       Total       |       5069        |        411        |       1445        |        175        |        212        |        782        |        536        |       1439        |        69         |
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        |      Africa       |         9         |         1         |         3         |         0         |         0         |         1         |         1         |         3         |         0         |
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        |       Asia        |        52         |         1         |        30         |         0         |         0         |         3         |         7         |        11         |         0         |
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        |      Europe       |       4794        |        396        |       1372        |        175        |        205        |        759        |        425        |       1402        |        60         |
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        |   North America   |        163        |         9         |        27         |         0         |         7         |        12         |        93         |        14         |         1         |
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        |      Oceania      |         3         |         0         |         0         |         0         |         0         |         1         |         2         |         0         |         0         |
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        |   South America   |         5         |         0         |         4         |         0         |         0         |         0         |         0         |         1         |         0         |
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        |      Unknown      |        43         |         4         |         9         |         0         |         0         |         6         |         8         |         8         |         8         |
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

        :ok
  """
  def display_count_of_offers_per_category_per_continent do
    count_of_offers_per_category_per_continent()
     |> create_display_string
     |> IO.puts
  end

  @spec count_of_offers_per_category_per_continent :: map
  @doc """
  Generate a map containing all the frequencies of jobs per category per continent

  ## Example

    iex> WttjBackendTest.count_of_offers_per_category_per_continent
        %{
            ["Retail", "Asia"] => 7,
            ["Marketing / Comm'", "North America"] => 12,
            [" Total", "Unknown"] => 43,
            ["Retail", "Africa"] => 1,
            ["Tech", "South America"] => 1,
            [" Total", " Total"] => 5069,
            ["Business", "Europe"] => 1372,
            ["Admin", "Unknown"] => 4,
            ["Business", "Unknown"] => 9,
            ...
          }
  """
  def count_of_offers_per_category_per_continent do
    get_job_csv_data()
      |> Stream.map(&extract_category_and_location(&1))
      |> Enum.frequencies
      |> add_total_to_frequencies
  end

  @spec add_total_to_frequencies(map) :: map
  @doc """
  Take a map of job frequencies to compute the total sum for each category and continent and return the frequencies with the totals aggregated.

  ## Parameters

    - frequencies: Map that contains the frequencies of job offers per category per continent

  ## Example

    iex> WttjBackendTest.add_total_to_frequencies(%{["Retail", "Asia"] => 7, ["Marketing / Comm'", "Asia"] => 12, ["Retail", "Africa"] => 1, ["Tech", "Europe"] => 10})
         %{
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
  """
  def add_total_to_frequencies(frequencies) do
    {total_frequencies_categories, total_frequencies_continents} = get_total_frequencies(frequencies)

    total_categories = Enum.reduce(total_frequencies_categories, 0, fn {_, val}, acc -> val + acc end)

    frequencies
      |> Map.merge(total_frequencies_categories)
      |> Map.merge(total_frequencies_continents)
      |> Map.put([" Total", " Total"], total_categories)
  end

  @spec get_total_frequencies(map) :: {map, map}
  @doc """
    Compute the total sum for the categories and the continents

  ## Parameters

    - frequencies: Map that contains the frequencies of job offers per category per continent

  ## Example

    iex> WttjBackendTest.get_total_frequencies(%{["Retail", "Asia"] => 7, ["Marketing / Comm'", "Asia"] => 12, ["Retail", "Africa"] => 1, ["Tech", "Europe"] => 10})
        { %{["Marketing / Comm'", " Total"] => 12, ["Retail", " Total"] => 8, ["Tech", " Total"] => 10}, %{[" Total", "Africa"] => 1, [" Total", "Asia"] => 19, [" Total", "Europe"] => 10} }
  """
  def get_total_frequencies(frequencies) do
    {categories, continents} = get_category_and_continent_keys(frequencies)

    total_categories = get_total_categories(categories, continents, frequencies)
    total_continents = get_total_continents(categories, continents, frequencies)

    total_frequencies_categories = for {key, value} <- total_categories, into: %{}, do: {[key, " Total"], value}
    total_frequencies_continents = for {key, value} <- total_continents, into: %{}, do: {[" Total", key], value}

    {total_frequencies_categories, total_frequencies_continents}
  end

  @spec get_total_continents(list, list, map) :: map
  @doc """
    Compute the total sum for each continent.

  ## Parameters

    - categories: List of categories key contained in the data
    - continents: List of continents name
    - frequencies: Map that contains the frequencies of job offers per category per continent

  ## Example

    iex> WttjBackendTest.get_total_continents(["Retail", "Marketing / Comm'", "Tech"], ["Asia", "Africa", "Europe"], %{["Retail", "Asia"] => 7, ["Marketing / Comm'", "Asia"] => 12, ["Retail", "Africa"] => 1, ["Tech", "Europe"] => 10})

        %{"Africa" => 1, "Asia" => 19, "Europe" => 10}

  """
  def get_total_continents(categories, continents, frequencies) do
    for continent <- continents, into: %{} do
      total = for category <- categories, into: [] do
        if frequencies[[category, continent]] do
          frequencies[[category, continent]]
        else
          0
        end

      end
      {continent, Enum.sum(total)}
    end
  end

  @spec get_total_categories(list, list, map) :: list
  @doc """
    Compute the total sum for each category.

    ## Parameters

      - categories: List of categories key contained in the data
      - continents: List of continents name
      - frequencies: Map that contains the frequencies of job offers per category per continent

    ## Example

      iex> WttjBackendTest.get_total_categories(["Retail", "Marketing / Comm'", "Tech"], ["Asia", "Africa", "Europe"], %{["Retail", "Asia"] => 7, ["Marketing / Comm'", "Asia"] => 12, ["Retail", "Africa"] => 1, ["Tech", "Europe"] => 10})

          %{"Marketing / Comm'" => 12, "Retail" => 8, "Tech" => 10}

  """
  def get_total_categories(categories, continents, frequencies) do
    for category <- categories, into: %{} do
      total = for continent <- continents, into: [] do
        if frequencies[[category, continent]] do
          frequencies[[category, continent]]
        else
          0
        end
      end

      {category, Enum.sum(total)}
    end
  end

  @spec create_display_string(map) :: String.t()
  @doc """
    Create a table of the job offers count per category per continent as a string.

    ## Parameters
      - frequencies: Map that contains the frequencies of job offers per category per continent

    ## Example

      iex> WttjBackendTest.create_display_string(%{["Retail", "Asia"] => 7, ["Marketing / Comm'", "North America"] => 12, ["Retail", "Africa"] => 1, ["Tech", "Europe"] => 10})
          "---------------------------------------------------------------------------------\n|                   | Marketing / Comm' |      Retail       |       Tech        |\n---------------------------------------------------------------------------------\n|      Africa       |         0         |         1         |         0         |\n---------------------------------------------------------------------------------\n|       Asia        |         0         |         7         |         0         |\n---------------------------------------------------------------------------------\n|      Europe       |         0         |         0         |        10         |\n---------------------------------------------------------------------------------\n|   North America   |        12         |         0         |         0         |\n---------------------------------------------------------------------------------\n"
  """
  def create_display_string(frequencies) do
    {categories, continents} = get_category_and_continent_keys(frequencies)

    cell_width = get_highest_cell_width(frequencies) + 2 # add 2 to the cell width to have 2 space around the biggest name
    nb_column_separators = MapSet.size(categories) + 2 # add 2 to count the outer boundaries
    table_width = (MapSet.size(categories) + 1) * cell_width + nb_column_separators

    row_line = String.duplicate("-", table_width) <> "\n"
    header_string = for category <- categories, into: "", do: format_cell(category, cell_width)
    head_string = row_line <> "|" <> String.duplicate(" ", cell_width) <> "|" <> header_string <> "\n" <>row_line

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

    head_string <> body_string
  end

  @spec format_cell(String.t(), non_neg_integer) :: String.t()
  @doc """
    Create a string that represent a cell of the table.

    ## Parameters

      - value: a String to display
      - cell_width: a integer that represent the size of a cell

    ## Example

      iex> WttjBackendTest.format_cell("some value", 15)

          "  some value   |"
  """
  def format_cell(value, cell_width) do
    space_before = trunc((cell_width - String.length(value))/2)
    space_after = (cell_width - String.length(value)) - space_before

    String.duplicate(" ", space_before) <> value <> String.duplicate(" ", space_after) <> "|"
  end

  @spec get_highest_cell_width(map) :: Integer
  @doc """
    Get the key or value with the biggest length and returns its length.

    ## Parameters

      - frequencies: Map that contains the frequencies of job offers per category per continent

    ## Example

      iex> WttjBackendTest.get_highest_cell_width(%{["Retail", "Asia"] => 7, ["Marketing / Comm'", "North America"] => 12, ["Retail", "Africa"] => 1, ["Tech", "South America"] => 1, ["Business", "Europe"] => 1372, ["Admin", "Unknown"] => 4, ["Business", "Unknown"] => 9, ["Business", "Africa"] => 3, ["Marketing / Comm'", "Africa"] => 1, ["Marketing / Comm'", "Unknown"] => 6})
           17
  """
  def get_highest_cell_width(frequencies) do
    values = for {key, value} <- frequencies, into: [], do: [Enum.at(key, 0), Enum.at(key, 1), Integer.to_string(value)]
    values
    |> List.flatten
    |> Enum.map(fn x -> String.length(x) end)
    |> Enum.max
  end

  @spec get_category_and_continent_keys(map) :: {MapSet.t(any), MapSet.t(any)}
  @doc """
    Get each category and continent that are present in the data.

    ## Parameters

      - frequencies: Map that contains the frequencies of job offers per category per continent

    ## Example

      iex> WttjBackendTest.get_category_and_continent_keys(%{["Retail", "Asia"] => 7, ["Marketing / Comm'", "North America"] => 12, ["Retail", "Africa"] => 1, ["Tech", "South America"] => 1, ["Business", "Europe"] => 1372, ["Admin", "Unknown"] => 4, ["Business", "Unknown"] => 9, ["Business", "Africa"] => 3, ["Marketing / Comm'", "Africa"] => 1, ["Marketing / Comm'", "Unknown"] => 6})
           {#MapSet<["Admin", "Business", "Marketing / Comm'", "Retail", "Tech"]>, #MapSet<["Africa", "Asia", "Europe", "North America", "South America", "Unknown"]>}
  """
  def get_category_and_continent_keys(frequencies) do
    category_keys = for {keys, _val} <- frequencies, into: [], do: Enum.at(keys, 0)
    continent_keys = for {keys, _val} <- frequencies, into: [], do: Enum.at(keys, 1)

    {MapSet.new(category_keys), MapSet.new(continent_keys)}
  end

  @spec extract_category_and_location(list) :: list
  @doc """
    Extract the category and continent in the row of the csv.

    ## Parameters

      - [category,_,_,latitude,longitude]: a list representing the fields of a csv, extracting the category, latitude and longitude as strings

    ## Example

      iex> WttjBackendTest.extract_category_and_location(["17","FULL_TIME","Infrastructure Engineer based in Paris/Marseille","48.8867578","2.3253786"])
           ["Tech", "Europe"]

  """
  def extract_category_and_location([category,_,_,latitude,longitude]) do
    categories_name = get_category_data()

    latitude = if latitude == "" do 0 else String.to_float(latitude) end
    longitude = if longitude == "" do 0 else String.to_float(longitude) end
    category_name = if categories_name[category] == nil do "Unknown" else categories_name[category] end

    continent = get_location_country_code(latitude, longitude)
                |> get_continent_from_country_code

    [category_name, continent]
  end

  @spec get_job_csv_data :: File.Stream.t()
  def get_job_csv_data do
    File.stream!("data/technical-test-jobs.csv")
    |> CSV.decode!
    |> Stream.filter(fn
      ["profession_id" | _] -> false
      [_ | _] -> true
    end)
  end

  @spec get_category_data :: map
  @doc """
    Get the list of categories from the csv

    ## Example

      iex> WttjBackendTest.get_category_data
           %{
              "7" => "Marketing / Comm'",
              "27" => "Créa",
              "25" => "Admin",
              "14" => "Tech",
              "8" => "Business",
              "36" => "Retail",
              "20" => "Marketing / Comm'",
              ...
            }
  """
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

  @spec csv_category_to_map(any) :: {String.t(), String.t()}
  @doc """
    Get the id and category name from a list of fields from the csv for job categories.

    ## Parameters

      - [id, _, category]: a list representing the fields of a csv, extracting the id and category name.

    ## Example

      iex> WttjBackendTest.csv_category_to_map(["17","Devops / Infrastructure","Tech"])
           {"17", "Tech"}
  """
  def csv_category_to_map([id, _, category]) do
    {id, category}
  end

  @spec get_location_country_code(Float, Float) :: String.t()
  @doc """
    Get the country code as a String based of the given geocode. Will return n/a if the geocode is 0,0.

    ## Parameters

      - latitude: an Integer that represent the desired latitude.
      - longitude: an Integer that represent the desired longitude.

    ## Example

      iex> WttjBackendTest.get_location_country_code(48.8683316,2.3554578)
           "fr"
  """
  def get_location_country_code(latitute, longitude) do
    if latitute == 0 && longitude == 0 do
      "n/a"
    else
      {:ok, coordinates} = Geocoder.call({latitute, longitude})
      coordinates.location.country_code
    end
  end

  @spec get_continent_from_country_code(String.t()) :: String.t()
  @doc """
    Get the continent name based on the given country code.

    ## Parameters

      - country_code: a string representing the 2 letters country code.

    ## Example

      iex> WttjBackendTest.get_continent_from_country_code("fr")
           "Europe"
  """
  def get_continent_from_country_code(country_code) do
    @continent[country_code]
  end
end
