defmodule ControlFlow do
  @moduledoc """
  Documentation for `ControlFlow`.
  """

  defguard is_positive_integer_or_zero(value) when is_integer(value) and value >= 0

  @doc """
  Checks if it's safe to fly or not with the load specified

  ## Examples
      iex> ControlFlow.check_max_load(54)
      "Safe to fly!"

      iex> ControlFlow.check_max_load(55)
      "Too heavy to fly!"
  """
  def check_max_load(load) when is_positive_integer_or_zero(load) do
    # if load < 55, do: "Safe to fly!", else: "Too heavy to fly!"
    unless load < 55, do: "Too heavy to fly!", else: "Safe to fly!"
  end

  @doc """
  Return status of fuel tank based on fuel percentage

  ## Examples
      iex> ControlFlow.check_fuel_level(100)
      "full tank"

      iex> ControlFlow.check_fuel_level(25)
      "1/4 tank"
  """
  def check_fuel_level(percentage)
      when is_positive_integer_or_zero(percentage) and percentage <= 100 do
    cond do
      percentage == 100 -> "full tank"
      percentage > 74 -> "3/4 tank"
      percentage > 49 -> "1/2 tank"
      percentage > 24 -> "1/4 tank"
      true -> "empty tank"
    end
  end

  @doc """
  Checks http request code and return status

  ## Examples
      iex> ControlFlow.error_code_check(200)
      :ok

      iex> ControlFlow.error_code_check(404)
      :error
  """
  def error_code_check(value) when is_positive_integer_or_zero(value) do
    case value do
      200 -> :ok
      201 -> :created
      204 -> :no_content
      n when is_integer(n) and n > 299 -> :error
      _ -> :unknown
    end
  end

  defp convert_kg_to_lbs(kg_value), do: kg_value * 2.2

  @doc """
  Checks single piece of equipment,
  more specifically it checks if the equipment/quantity is less than 16 based.

  ## Examples
    iex> ControlFlow.equipment_check({52, :kg, 2})
    :failed

    iex> ControlFlow.equipment_check({7, :lb, 1})
    :equipment_cleared
  """
  def equipment_check(equipment_tuple)
      when is_tuple(equipment_tuple) do
    case equipment_tuple do
      {weight, unit_type, quantity}
      when is_integer(weight) and is_atom(unit_type) and is_integer(quantity) and
             unit_type == :kg ->
        if weight / quantity < 16, do: :equipment_cleared, else: :failed

      {weight, unit_type, quantity}
      when is_integer(weight) and is_atom(unit_type) and is_integer(quantity) and
             unit_type == :lb ->
        if convert_kg_to_lbs(weight) / quantity < 16, do: :equipment_cleared, else: :failed

      _ ->
        :unknown
    end
  end
end
