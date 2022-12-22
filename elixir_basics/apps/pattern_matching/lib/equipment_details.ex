defmodule EquipmentDetails do
  @moduledoc """
  Documentation for 'EquipmentDetails'.
  """

  @doc """
  Provides list of equipment specified as atoms.

  ## Examples

      iex> EquipmentDetails.get_equipment_list
      [:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]

  """
  def get_equipment_list do
    [:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]
  end

  @doc """
  Get tuple of equipment weight, weight denomination and quantity.

  ## Examples

      iex> EquipmentDetails.item_details(:space_helmet)
      {3, :kg, 1}

      iex> EquipmentDetails.item_details(:space_suit)
      {16, :kg, 1}

      iex> EquipmentDetails.item_details(:snacks)
      {1, :kg, 16}

      iex> EquipmentDetails.item_details(:grappling_hook)
      {4, :kg, 1}

      iex> EquipmentDetails.item_details(:probe)
      {2, :kg, 1}

      iex> EquipmentDetails.item_details(:jet_pack)
      ** (RuntimeError) unknown item

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

  def item_details(_other) do
    raise "unknown item"
  end
end
