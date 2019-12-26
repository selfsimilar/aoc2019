defmodule Aoc2019Day1Test do
  use ExUnit.Case
  doctest Aoc2019Day1

  test "fuel required for mass of 12" do
    assert Aoc2019Day1.fuel_required(12) == 2
  end

  test "fuel required for fuel_required of 14" do
    assert Aoc2019Day1.fuel_required(14) == 2
  end

  test "fuel required for fuel_required of 1969" do
    assert Aoc2019Day1.fuel_required(1969) == 654
  end

  test "fuel required for fuel_required of 100756" do
    assert Aoc2019Day1.fuel_required(100756) == 33583
  end

  test "total fuel required for mass of 14" do
    assert Aoc2019Day1.total_fuel_required(14) == 2
  end

  test "total fuel required for mass of 1969" do
    assert Aoc2019Day1.total_fuel_required(1969) == 966
  end

  test "total fuel required for mass of 100756" do
    assert Aoc2019Day1.total_fuel_required(100756) == 50346
  end

end
