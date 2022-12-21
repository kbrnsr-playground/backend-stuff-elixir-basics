defmodule EquipmentDetailsTest do
  use ExUnit.Case
  doctest EquipmentDetails

  test "equipment list is correct" do
    assert EquipmentDetails.get_equipment_list() == [
             :space_helmet,
             :space_suit,
             :snacks,
             :grappling_hook,
             :probe
           ]
  end

  test "space helmet weight is 3" do
    assert elem(EquipmentDetails.item_details(:space_helmet), 0) == 3
  end

  test "space suit weight is 16" do
    assert elem(EquipmentDetails.item_details(:space_suit), 0) == 16
  end

  test "snacks quantity is 2" do
    assert elem(EquipmentDetails.item_details(:snacks), 2) == 16
  end

  test "grappling hook weight is in kg" do
    assert elem(EquipmentDetails.item_details(:grappling_hook), 1) == :kg
  end

  test "probe weight is 2" do
    assert elem(EquipmentDetails.item_details(:probe), 0) == 2
  end

  test "getting details for jet pack raises error" do
    assert_raise RuntimeError, fn ->
      EquipmentDetails.item_details(:jet_pack)
    end
  end
end
