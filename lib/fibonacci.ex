defmodule Fibonacci do
  @doc """
  Calculate the nth Fibonacci number using recursion.

  ## Examples
      iex> Fibonacci.calc(0)
      0
      iex> Fibonacci.calc(1)
      1
      iex> Fibonacci.calc(5)
      5
      iex> Fibonacci.calc(10)
      55
  """
  def calc(n) when n >= 0 do
    do_calc(n)
  end

  defp do_calc(0), do: 0
  defp do_calc(1), do: 1
  defp do_calc(n), do: do_calc(n - 1) + do_calc(n - 2)

  @doc """
  Generate a Fibonacci sequence up to the nth number.

  ## Examples
      iex> Fibonacci.sequence(6)
      [0, 1, 1, 2, 3, 5]
  """
  def sequence(n) do
    Enum.map(0..(n - 1), &calc/1)
  end
end

IO.inspect(Fibonacci.calc(10))
