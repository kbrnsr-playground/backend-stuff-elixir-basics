defmodule LinkedLists do
  @moduledoc """
  Documentation for `LinkedLists`.
  """
  def get_equipment_list() do
    ["Space helmet", "Space suit", "Snacks", "Grappling hook", "Probe"]
  end

  def get_first_item(list) do
    hd(list)
  end

  def remove_first_item(list) do
    tl(list)
  end

  def add_slow(list, value) do
    list ++ [value]
  end

  defp prepend_to_list(list, value) do
    [value | list]
  end

  def add_fast(list, value) do
    Enum.reverse(list)
    |> prepend_to_list(value)
    |> Enum.reverse()
  end

  def remove_item(list, index) do
    List.delete_at(list, index)
  end

  def equipment_count(list) do
    length(list)
  end

  def check_for_item(list, item) do
    item in list
  end
end
