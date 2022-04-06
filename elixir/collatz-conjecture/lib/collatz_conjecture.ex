defmodule CollatzConjecture do
  require Integer

  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(1), do: 0
  def calc(number) when number > 0 and Integer.is_odd(number), do: 1 + calc(number * 3 + 1)
  def calc(number) when number > 0 and Integer.is_even(number), do: 1 + calc(div(number, 2))
end
