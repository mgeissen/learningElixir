defmodule Recursion do
  def print_multiple_times(msg, n) when n <= 1 do
    [msg]
  end

  def print_multiple_times(msg, n) do
    list = []
    list ++ print_multiple_times(msg, n-1)
    [msg] ++ list
  end
end