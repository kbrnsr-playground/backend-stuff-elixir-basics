defmodule Bitstrings do
  @moduledoc """
  Documentation for `Bitstrings`.
  """

  # Fly to base == FB
  # Fly to eart == FE
  # Hover == H
  # Tractor Beam ON == T
  # Tractor Beam OFF == O

  # FEHTOFB

  defp encode_instruction(code_point) do
    case code_point do
      ?H -> 0b0000
      ?F -> 0b0001
      ?B -> 0b0010
      ?E -> 0b0011
      ?T -> 0b0100
      ?O -> 0b0101
    end
  end

  defp decode_instruction(bit_string) do
    case bit_string do
      0b0000 -> ?H
      0b0001 -> ?F
      0b0010 -> ?B
      0b0011 -> ?E
      0b0100 -> ?T
      0b0101 -> ?O
    end
  end

  @doc """
  Encode command list to use half of previous size

  ## Examples

      iex> Bitstrings.encode('FEHTOFB')
      <<19, 4, 81, 2::size(4)>>
  """
  def encode(instructions, encoded_value \\ <<0::size(0)>>)
  def encode([], encoded_value), do: encoded_value

  def encode([head | tail], encoded_value) do
    encode(tail, <<encoded_value::bitstring, encode_instruction(head)::4>>)
  end

  def decode(encoded_instructions, decoded_value \\ '')
  def decode('', decoded_value), do: decoded_value

  def decode(<<head::4, tail::4>>, decoded_value) do
    decode(tail, '')
  end
end
