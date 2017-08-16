defmodule Enumerables do
    def odd?(number), do: rem(number, 2) != 0

    def map do
      Enum.map(1..5, fn x -> x * 2 end)
      # [2,4,6,8,10]
    end

    def reduce do
      Enum.reduce(1..5, 0, &+/2)
      # 15
    end

    def filter do
      Enum.filter(1..5, &Enumerables.odd?/1)
      # [1,3,5]
    end

    def pipeOperator do
      1..5 |> Enum.map(&(&1 * 3)) |> Enum.filter(&Enumerables.odd?/1) |> Enum.sum
      # [1,2,3,4,5] > [3,6,9,12,15] > [3,9,15] > 27
    end

    def streams do
      1..100_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(&Enumerables.odd?/1) |> Enum.sum
      # 7.500.000.000
    end

    def cycle do
      stream = Stream.cycle([1,2,3])
      Enum.take(stream, 10)
      # [1,2,3,1,2,3,1,2,3,1]
    end

    def takeFirstTenLinesOfFile(filePath) do
      stream = File.stream!(filePath)
      Enum.take(stream, 10)
    end

    def removeLineBreaksFromList([head | tail]) do
      newHead = String.replace(head, "\n","")
      [newHead] ++ removeLineBreaksFromList(tail)
    end

    def removeLineBreaksFromList([]) do
       []
    end

end