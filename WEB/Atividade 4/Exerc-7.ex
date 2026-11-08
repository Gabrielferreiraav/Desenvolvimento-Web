defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_,volume} = volume_pair
    volume
  end

  def to_milliliter(volume_pair) do
    case (volume_pair) do
    {:cup, volume} ->   {:milliliter, volume * 240.0}
    {:fluid_ounce,volume} ->   {:milliliter,volume * 30.0}
    {:teaspoon, volume} ->   {:milliliter, volume * 5}
    {:tablespoon, volume} ->   {:milliliter, volume * 15}
    {:milliliter, volume} ->   {:milliliter, volume}
    end
  end

  def from_milliliter(volume_pair, unit) do
    volume = get_volume(volume_pair)
    case (unit) do
    :cup ->   {:cup, volume / 240.0}
    :fluid_ounce ->   {:fluid_ounce,volume / 30.0}
    :teaspoon ->   {:teaspoon, volume / 5}
    :tablespoon ->   {:tablespoon, volume / 15}
    :milliliter ->  {:milliliter, volume}
    end
  end

  def convert(volume_pair, unit) do
    volume_pair |> to_milliliter() |> from_milliliter(unit)
  end
end
