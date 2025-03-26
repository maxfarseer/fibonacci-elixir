defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  test "fibonacci calculation for specific numbers" do
    assert Fibonacci.calc(0) == 0
    assert Fibonacci.calc(1) == 1
    assert Fibonacci.calc(5) == 5
    assert Fibonacci.calc(10) == 55
  end

  test "fibonacci sequence generation" do
    assert Fibonacci.sequence(6) == [0, 1, 1, 2, 3, 5]
    assert Fibonacci.sequence(1) == [0]
  end
end
