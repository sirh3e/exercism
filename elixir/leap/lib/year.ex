defmodule Year do
  @doc """
  Returns whether 'year' is a leap year.

  A leap year occurs:

  on every year that is evenly divisible by 4
    except every year that is evenly divisible by 100
      unless the year is also evenly divisible by 400
  """
  @spec leap_year?(non_neg_integer) :: boolean
  def leap_year?(year) do
    rem(year, 4) == 0 and (not (rem(year, 100) == 0) or rem(year, 400) == 0)
  end
end

IO.puts Year.leap_year?(1997)
IO.puts Year.leap_year?(1996)
IO.puts Year.leap_year?(1900)
IO.puts Year.leap_year?(2000)
