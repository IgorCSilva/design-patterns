defmodule Strategy.ArrayCompositor do

  defstruct(
    interval: 1
  )

  @behaviour Strategy.Compositor

  def new() do
    %__MODULE__{}
  end

  @impl Strategy.Compositor
  def compose(
    _natural,
    _stretchability,
    _shrinkability,
    _component_count,
    _line_width,
    _breaks
  ) do
    IO.inspect("Array COMPOSITOR #{}")
    1
  end
end
