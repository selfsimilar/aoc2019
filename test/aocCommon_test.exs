defmodule AocCommonTest do
  use ExUnit.Case
  doctest AocCommon

  test "reads puzzle input" do
    assert AocCommon.readPuzzleInputFile("test/example.txt") == "1,2,3,4,5,99"
  end

  test "make int instruction list from string" do
    assert AocCommon.createIntInstructionList("1,2,3,4,5,99") == [1, 2, 3, 4, 5, 99]
  end
end
