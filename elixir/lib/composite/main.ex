defmodule Composite.Main do

  alias Composite.Component

  def execute() do
    graphic = %Component{name: "graphic"}
    rect = %Component{name: "rect"}
    line = %Component{name: "line"}

    {graphic, rect} = Component.add(graphic, rect)
    {rect, line} = Component.add(rect, line)

    IO.inspect(graphic, label: "graphic")

    # Descendents.
    Component.list_descendents(graphic) |> IO.inspect(label: "GRAPHIC DESCENDENTS")

    # Ancestors.
    # Component.list_ancestors(line) |> IO.inspect(label: "LINE ANCESTORS")
    # Component.list_ancestors(rect) |> IO.inspect(label: "RECT ANCESTORS")
    # Component.list_ancestors(graphic) |> IO.inspect(label: "GRAPHIC ANCESTORS")
  end
end
