defmodule EquipmentDetailsTest do
  use ExUnit.Case
  doctest EquipmentDetails

  test "item_details non-existing atom is passed" do
    assert_raise RuntimeError, "unknown item", fn ->
      EquipmentDetails.item_details(:jet_pack)
    end
  end
end
