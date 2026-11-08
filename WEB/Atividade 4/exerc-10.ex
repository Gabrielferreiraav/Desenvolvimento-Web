defmodule BirdCount do
  def today([]) do
    nil
  end

  def today([hd | _tl]) do
    hd
  end

  def increment_day_count([]) do
    [1]
  end
  def increment_day_count([hd | tl]) do
    [hd + 1 | tl]
  end

  def has_day_without_birds?([]) do
    false
  end
  def has_day_without_birds?([0 | _tl]) do
    true
  end

  def has_day_without_birds?([_hd | tl]) do
    has_day_without_birds?((tl))
  end

  def total([]) do
    0
  end

  def total([hd | tl]) do
    hd + total(tl)
  end

  def busy_days([]) do
    0
  end
  def busy_days([hd | tl]) when hd >= 5 do
    1 + busy_days(tl)
  end
  def busy_days([_hd | tl]) do
    busy_days(tl)
  end
end
