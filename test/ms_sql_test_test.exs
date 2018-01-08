defmodule MsSqlTestTest do
  use ExUnit.Case
  doctest MsSqlTest

  test "greets the world" do
    assert MsSqlTest.hello() == :world
  end
end
