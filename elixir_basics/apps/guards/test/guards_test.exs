defmodule GuardsTest do
  use ExUnit.Case
  doctest Guards

  describe "type" do
    test "invalid type is passed" do
      assert Guards.type("dangit!") == :not_number
    end

    test "nothing is passed" do
      assert Guards.type() == :not_number
    end
  end

  describe "is_single_digit" do
    test "negative two digit integer is passed" do
      assert Guards.is_single_digit(-10) == false
    end

    test "string is passed" do
      assert Guards.is_single_digit("") == false
    end

    test "nothing is passed" do
      assert Guards.is_single_digit() == false
    end
  end

  test "return_even_numbers nothing is passed" do
    assert Guards.return_even_numbers() == :not_even
  end
end
