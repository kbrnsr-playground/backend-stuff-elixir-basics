defmodule BasicMath do
  # def add(augend, addend) do
  #   augend + addend
  # end
  def add(augend, addend), do: augend + addend

  def subtract(minuend, subtrahend) do
    minuend - subtrahend
  end

  def multiply(multiplier, multiplicand) do
    multiplier * multiplicand
  end

  def divide(dividend, divisor) do
    dividend / divisor
  end

  def round_up(value) do
    Float.ceil(value, 2)
  end
end
