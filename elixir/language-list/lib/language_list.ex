defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    {_, list} = List.pop_at(list, 0)
    list
  end

  def first(list) do
    [head | _] = list
    head
  end

  def count(list) do
    list |> Enum.count
  end

  def exciting_list?(list) do
    count = list |> Enum.count(&(&1 == "Elixir"))
    count >= 1
  end
end
