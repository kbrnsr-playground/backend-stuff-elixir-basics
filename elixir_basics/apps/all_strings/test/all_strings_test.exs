defmodule AllStringsTest do
  use ExUnit.Case
  doctest AllStrings

  test "remove whitespace from beginning and end of string" do
    assert AllStrings.trim_string(" test string ") == "test string"
  end
end
