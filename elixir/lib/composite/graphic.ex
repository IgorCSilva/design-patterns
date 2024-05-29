defmodule Composite.Graphic do

  alias Composite.Component

  @type component :: %Component{
    name: String.t(),
    parent: component(),
    children: list(component())
  }

  @callback show_name(component()) :: String.t()

  @callback add(component(), component()) :: any()
  @callback remove(component(), component()) :: any()
  @callback list_descendents(component()) :: map()
  @callback get_child(component(), integer()) :: component()
  @callback list_ancestors(component()) :: list(component())
end
