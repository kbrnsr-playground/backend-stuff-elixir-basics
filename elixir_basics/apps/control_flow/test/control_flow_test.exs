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
end
