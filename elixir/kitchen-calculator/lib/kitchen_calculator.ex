defmodule KitchenCalculator do
  def get_volume({_, volume}), do: volume

  def to_milliliter({unit, volume}) do
    {:milliliter, matrix(unit) * volume}
  end

  def from_milliliter({_, volume}, rhs) do
    convert({:milliliter, volume}, rhs)
  end

  def convert({lhs, volume}, rhs) do
    {rhs, matrix(lhs) * volume / matrix(rhs) }
  end

  defp matrix(unit) do
    case unit do
      :milliliter -> 1
      :cup -> 240
      :fluid_ounce -> 30
      :teaspoon -> 5
      :tablespoon -> 15
    end
  end
end
