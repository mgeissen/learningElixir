defmodule Concat do
    # Optinal parameter with default value: \\
   def join(a, b, sep \\ " ") do
     a <> sep <> b
   end
end