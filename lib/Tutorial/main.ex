defmodule Main do
  def start do
    Main.show Math.mult(4,6)
    Main.show Math.zero?(50)
    Main.show Math.zero?(0)

    Main.createParagraph()

    Main.show Math.sum_list([1,2,3,4],0)
    Main.showAll(Math.double_each([1,2,3,4]))

    Main.createParagraph();

    Main.show Concat.join("Hello", "world")
    Main.show Concat.join("Hello", "world", "-")

    Main.createParagraph();

    Main.showAll Recursion.print_multiple_times("Moin",5)

  end

  def createParagraph do
    show("")
  end

  def show(content) do
    IO.puts(content)
  end

  def showAll([head| tail]) do
    IO.puts(head)
    showAll(tail)
  end
  def showAll([]) do

  end
end