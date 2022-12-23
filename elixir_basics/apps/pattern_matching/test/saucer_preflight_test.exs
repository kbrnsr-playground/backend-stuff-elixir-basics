defmodule SaucerPreflightTest do
  use ExUnit.Case
  doctest SaucerPreflight

  defp assert_bool(value, bool), do: assert(value == bool)

  test "is_under_max_load? pass valid list and no take-off" do
    EquipmentDetails.get_equipment_list()
    |> SaucerPreflight.is_under_max_load?()
    |> assert_bool(false)
  end

  test "is_under_max_load? pass valid list and take-off" do
    [:space_helmet, :space_suit]
    |> SaucerPreflight.is_under_max_load?()
    |> assert_bool(true)
  end

  test "is_under_max_load? string passed" do
    assert_raise FunctionClauseError, fn ->
      SaucerPreflight.is_under_max_load?("Yeehaw!")
    end
  end

  test "is_under_max_load? nothing passed" do
    assert_raise FunctionClauseError, fn ->
      SaucerPreflight.is_under_max_load?()
    end
  end

  test "is_under_max_load? pass invalid equipment list" do
    assert_raise RuntimeError, fn ->
      SaucerPreflight.is_under_max_load?([:space_helmet, :jet_pack])
    end
  end
end
