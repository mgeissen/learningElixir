defmodule Main do
  def start do
    show Math.mult(4,6)
    show Math.zero?(50)
    show Math.zero?(0)

    createParagraph()

    show Math.sum_list([1,2,3,4],0)
    showAll(Math.double_each([1,2,3,4]))

    createParagraph()

    show Concat.join("Hello", "world")
    show Concat.join("Hello", "world", "-")

    createParagraph()

    showAll Recursion.print_multiple_times("Moin",5)

    createParagraph()

    Enumerables.takeFirstTenLinesOfFile("lines.txt") |> Enumerables.removeLineBreaksFromList |> showAll

  end

  def createParagraph do
    show("")
  end

  def show(content) do
    IO.puts(content)
  end

  def showAll([head| tail]) do
    show(head)
    showAll(tail)
  end
  def showAll([]) do

  end
end