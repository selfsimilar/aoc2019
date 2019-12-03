defmodule FuelCounterUpper do
  @moduledoc """
  Documentation for FuelCounterUpper.
  """

  @doc """

  ## Examples

      iex> FuelCounterUpper.tyrannical_fuel_totaller()
      3323874

  """
  def fuel_required(mass) when mass >= 7 do
    div(mass,3) - 2
  end

  def fuel_required(mass) when mass < 7 do
    0
  end

  def fuel_totaller() do
    sum_fuel = fn(mass, accumulator) -> accumulator + fuel_required(mass) end
    List.foldl(mass_list(), 0, sum_fuel)
  end

  def tyrannical_fuel_totaller() do
    sum_fuel = fn(mass, accumulator) -> accumulator + total_fuel_required(mass) end
    List.foldl(mass_list(), 0, sum_fuel)
  end

  def total_fuel_required(mass) do
    total_fuel_required(0, fuel_required(mass))
  end

  defp total_fuel_required(total, fuel_cost) when fuel_cost > 0 do
    total_fuel_required(total + fuel_cost, fuel_required(fuel_cost))
  end

  defp total_fuel_required(total, _fuel_cost) do
    total
  end

  def mass_list do
    [1, 2, 3]
  end
end
