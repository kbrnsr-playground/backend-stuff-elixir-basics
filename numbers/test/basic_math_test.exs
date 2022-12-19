defmodule BasicMathTest do
  use ExUnit.Case
  doctest BasicMath

  test "add 2 + 3 = 5" do
    assert BasicMath.add(2, 3) == 5
  end

  test "subtract 2 - 3.5 = -1.5" do
    assert BasicMath.subtract(2, 3.5) === -1.5
  end

  test "multiply 2 * 3.1 = 6.2" do
    assert BasicMath.multiply(2, 3.1) === 6.2
  end
  test "divide 3 / -1.5 = -2" do
    assert BasicMath.divide(3, -1.5) === -2.0
  end

  test "round_up 2.333 = 2.34" do
    assert BasicMath.round_up(2.333) == 2.34
  end
end
