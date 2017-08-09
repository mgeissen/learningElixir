defmodule Main do
  def start do
    IO.puts Math.mult(4,6)
    IO.puts Math.zero?(50)
    IO.puts Math.zero?(0)

    IO.puts Concat.join("Hello", "world")
    IO.puts Concat.join("Hello", "world", "-")

    Recursion.print_multiple_times("Moin",5)
    IO.puts Math.sum_list([1,2,3,4],0)
    Main.showAll(Math.double_each([1,2,3,4]))
  end

  def showAll([head| tail]) do
    IO.puts(head)
    showAll(tail)
  end
  def showAll([]) do

  end
end