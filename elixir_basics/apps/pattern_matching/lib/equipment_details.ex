defmodule EquipmentDetails do
  @moduledoc """
  Provides list of each piece of equipment as well as weight and
  quantity of each item
  """

  @doc """
  Provides list of equipment specified as atoms
  """
  def get_equipment_list() do
    [:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]
  end

  @doc """
  Get tuple of equipment weight and quantity
  raise runtime error if equipment piece doesn't exist
  """
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
    {2, :kg, 1}
  end

  def item_details(other) do
    raise "unknown item: #{other}"
  end
end
