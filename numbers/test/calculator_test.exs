defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "find_percentage_of_value (2.4, 100) = 2.4" do
    assert Calculator.find_percentage_of_value(2.4, 100) === 2.4
  end

  test "find_distance_traveled (2.5, 55) = 137.5" do
    assert Calculator.find_distance_traveled(2.537, 55) === 139.54
  end
end
