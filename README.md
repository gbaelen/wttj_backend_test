# WttjBackendTest

## Starting the project

To start the project in the root folder of the project type:
```docker-compose build```

Then you will need to build and seed the database with:

```docker-compose run web mix ecto.create```
```docker-compose run web mix ecto.migrate```
```docker-compose run web run "priv/repo/seeds.exs"```

Then you can start the phoenix server with:

```docker-compose up```

When you have already done all the step above then you only need to use this command to start the phoenix server:
```docker-compose up```

## Using the tests

To be able to use test environment, you will have to update the docker-compose.yaml file. When opening the file you can find line 18 the MIX_ENV variable set to dev. If you change that dev value to test, then you will be able to use the test environemnt. In the first usage of the test environment you will have to build the database with those command:

```docker-compose run web mix ecto.create```
```docker-compose run web mix ecto.migrate```
```docker-compose run web run "priv/repo/seeds.exs"```

the last one being optional if you don't want to have the database full when doing the tests.

## Running the tests

When you have the test environement variable set up then you just need to run this command to execute the unit tests:

```docker-compose run web mix test```

## Running the count jobs function

When you are in the dev mode, you can access the iex terminal with this simple command:

```docker-compose run web iex -S mix phx.server```

Then you can execute the count function by typing:

```WttjBackendTest.Parser.display_count_of_offers_per_category_per_continent```

## Running the api

After everything is installed, then you can start your phoenix server with:
```docker-compose up```

Then in a different terminal, you can use curl to make api requests such as:

``` curl -X GET http://localhost:4000/api/v1/professions\?limit\=10" -H "Content-Type: application/json"```
``` curl -X GET http://localhost:4000/api/v1/professions\?limit\=10\&offset=20" -H "Content-Type: application/json"```
``` curl -X GET http://localhost:4000/api/v1/professions\?limit\=100\&order\=name\&direction\=asc -H "Content-Type: application/json" ```

``` curl -X GET http://localhost:4000/api/v1/offers\?limit\=10" -H "Content-Type: application/json"```
``` curl -X GET http://localhost:4000/api/v1/offers\?limit\=10\&offset=20" -H "Content-Type: application/json"```
``` curl -X GET http://localhost:4000/api/v1/offers\?limit\=100\&order\=name\&direction\=asc -H "Content-Type: application/json" ```

``` curl -X GET http://localhost:4000/api/v1/professions/5 -H "Content-Type: application/json"```
``` curl -X GET http://localhost:4000/api/v1/offers/12" -H "Content-Type: application/json"```

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
