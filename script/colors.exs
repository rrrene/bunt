Bunt.puts [:bright, :white, "# BACKGROUNDS" |> String.ljust(80)]
Bunt.puts
Bunt.puts "Use as a background color like this:"
Bunt.puts
Bunt.puts [:cyan, "    [:color214_background, \"Look, it's reallyly on orange!\"] |> Bunt.puts"]
Bunt.puts [:cyan, "    ", [:color214_background, :black, "Look, it's reallyly on orange!"]]
Bunt.puts
Bunt.puts "Replace `color214` with any of these values:"
Bunt.puts


Bunt.ANSI.color_tuples
|> Enum.reduce([], fn({name, color, _code, _rgb_tuple}, acc) ->
    acc = acc ++ [[
      :"#{color}_background", :black, "#{color}" |> String.ljust(14)
    ]]
    case rem(acc |> Enum.count, 6) do
      0 ->
        acc |> Bunt.puts
        []
      _ -> acc
    end
  end)



Bunt.puts
Bunt.puts [:bright, :white, "# COLORS" |> String.ljust(80)]
Bunt.puts
Bunt.puts "Use as a color like this:"
Bunt.puts
Bunt.puts [:cyan, "    [:color214, \"Look, it's really orange text!\"] |> Bunt.puts"]
Bunt.puts [:cyan, "    ", [:color214, "Look, it's really orange text!"]]
Bunt.puts
Bunt.puts "Replace `color214` with any of these values:"
Bunt.puts

Bunt.ANSI.color_tuples
|> Enum.reduce([], fn({name, color, _code, _rgb_tuple}, acc) ->
    acc = acc ++ [[
      :"#{color}", "#{color}" |> String.ljust(14)
    ]]
    case rem(acc |> Enum.count, 6) do
      0 ->
        acc |> Bunt.puts
        []
      _ -> acc
    end
  end)



Bunt.puts
Bunt.puts [:bright, :white, "# COLORS WITH NAMES" |> String.ljust(80)]
Bunt.puts
Bunt.puts "Last but not least, the following colors were given names, so we could use them in style:"
Bunt.puts
Bunt.puts [:cyan, "    [:gold, \"Look, it's really gold text!\"] |> Bunt.puts"]
Bunt.puts [:cyan, "    ", [:gold, "Look, it's really gold text!"]]
Bunt.puts
Bunt.puts "Replace `hotpink` with any of these values:"
Bunt.puts


Bunt.ANSI.color_tuples
|> Enum.reduce([], fn({name, color, _code, _rgb_tuple}, acc) ->
    if name do
      acc = acc ++ [[
        :"#{color}", "#{name}" |> String.ljust(14)
      ]]
    end
    case rem(acc |> Enum.count, 6) do
      5 ->
        acc |> Bunt.puts
        []
      _ -> acc
    end
  end) |> Bunt.puts
