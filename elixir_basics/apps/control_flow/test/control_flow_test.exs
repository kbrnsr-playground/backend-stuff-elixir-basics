defmodule ControlFlowTest do
  use ExUnit.Case
  doctest ControlFlow

  describe "check_max_load" do
    test "load is zero" do
      assert ControlFlow.check_max_load(0) == "Safe to fly!"
    end

    test "load is negative integer" do
      assert_raise FunctionClauseError, fn -> ControlFlow.check_max_load(-1) end
    end
  end

  describe "check_fuel_level" do
    test "fuel percentage is 24" do
      assert ControlFlow.check_fuel_level(24) == "empty tank"
    end

    test "fuel percentage is a negative integer" do
      assert_raise FunctionClauseError, fn -> ControlFlow.check_fuel_level(-232) end
    end

    test "fuel percentage is over 100" do
      assert_raise FunctionClauseError, fn -> ControlFlow.check_fuel_level(101) end
    end
  end
end
