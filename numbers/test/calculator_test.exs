defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "find_percentage_of_value (2.4, 100) = 2.4" do
    assert Calculator.find_percentage_of_value(2.4, 100) === 2.4
  end

  # test "find_distance_traveled "
end
