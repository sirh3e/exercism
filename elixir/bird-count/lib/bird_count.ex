defmodule BirdCount do
  def today([]), do: nil
  def today([today | _]), do: today

  def increment_day_count([]), do: [1]
  def increment_day_count([today | past]), do: [today + 1 | past]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([today | past]), do: today == 0 or has_day_without_birds?(past)

  def total([]), do: 0
  def total([today | past]), do: today + total(past)

  def buys_days([]), do: 0
  def busy_days(list), do: Enum.filter(list, fn(n) -> (n >= 5) end) |> Enum.count
end
