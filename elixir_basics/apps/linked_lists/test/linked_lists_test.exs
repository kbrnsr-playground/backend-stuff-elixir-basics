defmodule LinkedListsTest do
  use ExUnit.Case
  doctest LinkedLists

  test "is space helmet in equipment list?" do
    assert Enum.member?(LinkedLists.get_equipment_list(), "Space suit") == true
  end
end
