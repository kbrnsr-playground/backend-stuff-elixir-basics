defmodule Guards do
  @moduledoc """
  Documentation for `Guards`.
  """

  defguardp is_even(value) when is_integer(value) and rem(value, 2) == 0

  @doc """
  Checks type of variable and returns atom describing type of function variable
  depending on if it's a integer, float or anything else.

  ## Examples

      iex> Guards.type(1)
      :integer

      iex> Guards.type(-1.0)
      :float

  """

  def type(value \\ :empty)
  def type(value) when is_integer(value), do: :integer
  def type(value) when is_float(value), do: :float
  def type(value) when not is_number(value), do: :not_number

  @doc """
  Checks if value is a single-digit integer and returns true and false else.

  ## Examples

      iex> Guards.is_single_digit(-3)
      true

      iex> Guards.is_single_digit(-10)
      false

  """

  def is_single_digit(value \\ :empty)

  def is_single_digit(value) when is_integer(value) and value > -10 and value < 10,
    do: true

  def is_single_digit(value) when not is_integer(value) or value < -9 or value > 9,
    do: false

  @doc """
  Checks if value is even, return true if it is, else false.

  ## Examples

      iex> Guards.return_even_numbers(-48)
      -48

      iex> Guards.return_even_numbers(7)
      :not_even

  """
  def return_even_numbers(value \\ :empty)
  def return_even_numbers(value) when is_even(value), do: value
  def return_even_numbers(value) when not is_even(value), do: :not_even
end
