defmodule AnonymousTest do
  use ExUnit.Case
  doctest Anonymous

  test "greets the world" do
    assert Anonymous.hello() == :world
  end
end
