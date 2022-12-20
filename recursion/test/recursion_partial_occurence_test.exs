defmodule RecursionPartialOccurenceTest do
  use ExUnit.Case
  doctest Recursion

  def get_equipment_list do
    ["Space helmet", "Space suit", "Gnome", "Snacks"]
  end

  test "empty equipment list returns empty list" do
    assert Recursion.partial_occurence(
             [],
             ""
           ) == []
  end

  test "equipment list with matching occurence returns list with two elements" do
    assert Recursion.partial_occurence(
             get_equipment_list(),
             "pace"
           ) == ["Space helmet", "Space suit"]
  end

  test "equipment list with no matching occurence returns empty list" do
    assert Recursion.partial_occurence(
             get_equipment_list(),
             "hook"
           ) == []
  end
end
