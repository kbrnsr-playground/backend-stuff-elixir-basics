defmodule Anonymous do
  @moduledoc """
  Documentation for `Anonymous`.
  """

  def get_equipment_list() do
    [:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]
  end

  def item_details(:space_helmet) do
    {3, :kg, 1}
  end

  def item_details(:space_suit) do
    {16, :kg, 1}
  end

  def item_details(:snacks) do
    {1, :kg, 16}
  end

  def item_details(:grappling_hook) do
    {4, :kg, 1}
  end

  def item_details(:probe) do
    {2, :lb, 1}
  end

  def get_weight_lbs(equipment_list) do
    get_lbs = fn item ->
      {wt, type, _qty} = item_details(item)

      case type do
        :kg -> wt * 2.2
        _ -> wt
      end
    end

    Enum.map(equipment_list, get_lbs)
  end

  def get_first_item(equipment_list) do
    first = fn [head | _tail] -> head end
    first.(equipment_list)
  end

  def atom_to_string(equipment_list) do
    convert = fn x ->
      to_string(x)
      |> String.upcase()
      |> String.replace("_", " ")
    end

    Enum.map(equipment_list, convert)
  end
end
