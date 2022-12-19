defmodule Calculator do
  def find_percentage_of_value(percentage, value) do
    # value * (percentage / 100)
    # dec_percent = BasicMath.divide(percentage, 100)
    # BasicMath.multiply(dec_percent, value)
    percentage
    |> BasicMath.divide(100)
    |> BasicMath.multiply(value)
    |> BasicMath.round_up()
  end

  def find_distance_traveled(speed, time) do
    speed
    # |> BasicMath
  end
end
