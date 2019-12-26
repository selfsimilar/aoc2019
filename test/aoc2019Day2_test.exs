defmodule Aoc2019Day2Test do
  use ExUnit.Case
  doctest Aoc2019Day2

  test "insert value" do
    assert Aoc2019Day2.insert_value([1, 0, 0, 0, 99], 2, 0) == [2, 0, 0, 0, 99]
  end

  test "ship computer 1" do
    assert Aoc2019Day2.shipComputer("1,0,0,0,99") == "2,0,0,0,99"
  end

  test "ship computer 2" do
    assert Aoc2019Day2.shipComputer("2,3,0,3,99") == "2,3,0,6,99"

  end

  test "ship computer 3" do
    assert Aoc2019Day2.shipComputer("2,4,4,5,99,0") == "2,4,4,5,99,9801"
  end

  test "ship computer 4" do
    assert Aoc2019Day2.shipComputer("1,1,1,4,99,5,6,0,99") == "30,1,1,4,2,5,6,0,99"
  end

end
