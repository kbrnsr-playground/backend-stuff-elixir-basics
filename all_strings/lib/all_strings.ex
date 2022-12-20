defmodule AllStrings do
  @moduledoc """
  Documentation for `AllStrings`.
  """
  def trim_string(value) do
    String.trim(value)
  end

  def first_letter(value) do
    trim_string(value)
    |> String.first()
  end

  def initial(value) do
    first_letter(value)
    |> String.capitalize()
  end

  # def initials(full_name) do
  #  String.split(full_name)
  # end
end
