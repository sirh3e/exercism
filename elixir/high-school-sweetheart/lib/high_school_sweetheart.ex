defmodule HighSchoolSweetheart do
  def first_letter(name), do: name |> String.trim |> String.at(0)

  def initial(name), do: first_letter(name) <> "." |> String.upcase

  def initials(full_name) do
    [lhs, rhs] = String.split(full_name, " ")
    initial(lhs) <> " " <> initial(rhs) |> String.upcase
  end

  def pair(full_name1, full_name2) do
"""
      ******       ******
    **      **   **      **
  **         ** **         **
 **            *            **
 **                         **
 **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
  **                       **
    **                   **
      **               **
        **           **
          **       **
            **   **
              ***
               *
 """
  end
end
