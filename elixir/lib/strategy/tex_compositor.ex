defmodule Strategy.TexCompositor do

  defstruct([])

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
    IO.inspect("Tex COMPOSITOR")
    1
  end
end
