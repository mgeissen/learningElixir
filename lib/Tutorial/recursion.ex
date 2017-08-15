defmodule Recursion do
  def print_multiple_times(msg, n) when n <= 1 do
    [msg]
  end

  def print_multiple_times(msg, n) do
    [msg] ++ print_multiple_times(msg, n-1)
  end
end

