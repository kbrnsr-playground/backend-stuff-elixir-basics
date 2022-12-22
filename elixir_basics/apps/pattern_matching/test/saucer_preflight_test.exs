defmodule SaucerPreflightTest do
  use ExUnit.Case
  doctest SaucerPreflight

  defp assert_bool(value, bool), do: assert(value == bool)

  test "is_under_max_load?" do
    EquipmentDetails.get_equipment_list()
    |> SaucerPreflight.is_under_max_load?()
    |> assert_bool(false)
  end
end
