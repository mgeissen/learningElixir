# Test in console: elixir math.ex

defmodule Math do
  def sum(a,b) do
    a + b
  end

  def mult(a,b) do
    a * b
  end

  def zero?(0) do
    true
  end
  def zero?(x) when is_integer(x) do
    false
  end

end

IO.puts Math.mult(4,6)
IO.puts Math.zero?(50)
IO.puts Math.zero?(0)
