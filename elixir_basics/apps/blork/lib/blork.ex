defmodule Blork do
  @moduledoc """
  Documentation for `Blork`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Blork.hello()
      :world

  """
  def hello do
    private_hello()
    :world
  end

  defp private_hello do
    :private_world
  end
end
