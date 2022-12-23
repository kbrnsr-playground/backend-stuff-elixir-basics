defmodule SaucerPreflight do
  defp max_flying_load_lbs, do: 55

  defp convert_kg_to_lb(kg_value), do: kg_value * 2.2

  defp calculate_max_weight([]), do: 0

  defp calculate_max_weight([head | tail]) do
    elem(EquipmentDetails.item_details(head), 0) +
      calculate_max_weight(tail)
  end

  defp is_under_max_load(weight_in_lb) do
    weight_in_lb <= max_flying_load_lbs()
  end

  defguardp is_valid_equipment_list(value)
            when is_list(value) and
                   length(value) != 0

  @doc """
  Check if equipment list is under or equal to max flight load

  ## Examples

      iex> SaucerPreflight.is_under_max_load?(EquipmentDetails.get_equipment_list)
      false

  """
  def is_under_max_load?(list \\ [])

  def is_under_max_load?(list) when is_valid_equipment_list(list) do
    list
    |> calculate_max_weight()
    |> convert_kg_to_lb()
    |> is_under_max_load()
  end
end
