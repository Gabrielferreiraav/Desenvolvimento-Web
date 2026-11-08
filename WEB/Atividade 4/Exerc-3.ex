defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    f = 1.0 - (discount / 100)
    before_discount * f
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    rate = daily_rate(hourly_rate) * 22
    ceil(apply_discount(rate,discount))

  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    valor_desc = apply_discount(daily_rate(hourly_rate),discount)
    Float.floor(budget/valor_desc,1)
  end
end
