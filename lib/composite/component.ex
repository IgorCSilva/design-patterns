defmodule Composite.Component do

  defstruct(
    name: "",
    parent: nil,
    children: []
  )

  alias __MODULE__
  alias Composite.Graphic

  @type t :: Graphic.component()

  @behaviour Graphic

  def add(%Component{} = parent, %Component{} = child) do
    turn_child = %Component{child | parent: parent}
    {
      %Component{
        parent | children: parent.children ++ [turn_child]
      },
      turn_child
    }
  end

  def list_descendents(%Component{} = component) do
    %{
      parent: component.name,
      children: Enum.map(component.children, &(list_descendents(&1)))
    }
  end

  def list_ancestors(nil), do: :no_parent
  def list_ancestors(%Component{} = component) do
    %{
      child: component.name,
      parent: list_ancestors(component.parent)
    }
  end
end
