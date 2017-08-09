defmodule Main do
  def start do
    IO.puts Math.mult(4,6)
    IO.puts Math.zero?(50)
    IO.puts Math.zero?(0)

    IO.puts Concat.join("Hello", "world")
    IO.puts Concat.join("Hello", "world", "-")

    Recursion.print_multiple_times("Moin",5)
  end
end