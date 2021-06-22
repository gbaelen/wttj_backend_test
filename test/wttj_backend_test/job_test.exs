defmodule WttjBackendTest.JobTest do
  use WttjBackendTest.DataCase

  alias WttjBackendTest.Job

  describe "professions" do
    alias WttjBackendTest.Job.Profession

    @valid_attrs %{category_name: "some category_name", name: "some name"}
    @update_attrs %{category_name: "some updated category_name", name: "some updated name"}
    @invalid_attrs %{category_name: nil, name: nil}

    def profession_fixture(attrs \\ %{}) do
      {:ok, profession} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Job.create_profession()

      profession
    end

    test "list_professions/0 returns all professions" do
      profession = profession_fixture()
      assert Job.list_professions() == [profession]
    end

    test "get_profession!/1 returns the profession with given id" do
      profession = profession_fixture()
      assert Job.get_profession!(profession.id) == profession
    end

    test "create_profession/1 with valid data creates a profession" do
      assert {:ok, %Profession{} = profession} = Job.create_profession(@valid_attrs)
      assert profession.category_name == "some category_name"
      assert profession.name == "some name"
    end

    test "create_profession/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Job.create_profession(@invalid_attrs)
    end

    test "update_profession/2 with valid data updates the profession" do
      profession = profession_fixture()
      assert {:ok, %Profession{} = profession} = Job.update_profession(profession, @update_attrs)
      assert profession.category_name == "some updated category_name"
      assert profession.name == "some updated name"
    end

    test "update_profession/2 with invalid data returns error changeset" do
      profession = profession_fixture()
      assert {:error, %Ecto.Changeset{}} = Job.update_profession(profession, @invalid_attrs)
      assert profession == Job.get_profession!(profession.id)
    end

    test "delete_profession/1 deletes the profession" do
      profession = profession_fixture()
      assert {:ok, %Profession{}} = Job.delete_profession(profession)
      assert_raise Ecto.NoResultsError, fn -> Job.get_profession!(profession.id) end
    end

    test "change_profession/1 returns a profession changeset" do
      profession = profession_fixture()
      assert %Ecto.Changeset{} = Job.change_profession(profession)
    end
  end

  describe "offers" do
    alias WttjBackendTest.Job.Offer

    @valid_attrs %{contract_type: "some contract_type", latitude: 120.5, longitude: 120.5, name: "some name"}
    @update_attrs %{contract_type: "some updated contract_type", latitude: 456.7, longitude: 456.7, name: "some updated name"}
    @invalid_attrs %{contract_type: nil, latitude: nil, longitude: nil, name: nil}

    def offer_fixture(attrs \\ %{}) do
      {:ok, offer} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Job.create_offer()

      offer
    end

    test "list_offers/0 returns all offers" do
      offer = offer_fixture()
      assert Job.list_offers() == [offer]
    end

    test "get_offer!/1 returns the offer with given id" do
      offer = offer_fixture()
      assert Job.get_offer!(offer.id) == offer
    end

    test "create_offer/1 with valid data creates a offer" do
      assert {:ok, %Offer{} = offer} = Job.create_offer(@valid_attrs)
      assert offer.contract_type == "some contract_type"
      assert offer.latitude == 120.5
      assert offer.longitude == 120.5
      assert offer.name == "some name"
    end

    test "create_offer/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Job.create_offer(@invalid_attrs)
    end

    test "update_offer/2 with valid data updates the offer" do
      offer = offer_fixture()
      assert {:ok, %Offer{} = offer} = Job.update_offer(offer, @update_attrs)
      assert offer.contract_type == "some updated contract_type"
      assert offer.latitude == 456.7
      assert offer.longitude == 456.7
      assert offer.name == "some updated name"
    end

    test "update_offer/2 with invalid data returns error changeset" do
      offer = offer_fixture()
      assert {:error, %Ecto.Changeset{}} = Job.update_offer(offer, @invalid_attrs)
      assert offer == Job.get_offer!(offer.id)
    end

    test "delete_offer/1 deletes the offer" do
      offer = offer_fixture()
      assert {:ok, %Offer{}} = Job.delete_offer(offer)
      assert_raise Ecto.NoResultsError, fn -> Job.get_offer!(offer.id) end
    end

    test "change_offer/1 returns a offer changeset" do
      offer = offer_fixture()
      assert %Ecto.Changeset{} = Job.change_offer(offer)
    end
  end
end
