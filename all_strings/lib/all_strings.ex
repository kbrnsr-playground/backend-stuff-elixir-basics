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
    "#{first_letter(value) |> String.capitalize()}. "
  end

  def initials(full_name) do
    list = String.split(full_name)

    Enum.map(list, fn name ->
      initial(name)
    end)
    |> List.to_string()
    |> trim_string()
  end

  def display_saucer do
    IO.puts(build_saucer())
  end

  defp build_saucer do
    """
                        %%%%%%%%%%%%%%%%%%%%
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
    ************************************************************
        ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
            ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,
                ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
    """
  end

  def display_customized_spacecraft(full_name) do
    IO.puts(customized_spacecraft(full_name))
  end

  defp customized_spacecraft(full_name) do
    build_saucer()
    |> String.replace(
      "************************************************************",
      "******************** #{initials(full_name)}'s SPACECRAFT ********************"
    )
  end
end
