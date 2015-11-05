defmodule Bunt do
  alias Bunt.ANSI

  def puts, do: puts("")
  def puts(nil), do: puts("")
  def puts(text) when is_binary(text), do: text |> IO.puts
  def puts(list) when is_list(list) do
    list
    |> List.flatten
    |> ANSI.format
    |> IO.puts
  end
end
