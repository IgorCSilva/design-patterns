defmodule Strategy.Composition do

  defstruct(
    compositor: nil
  )

  def new(compositor) do
    %__MODULE__{compositor: compositor}
  end

  def repair(composition) do

    compositor = composition.compositor

    natural = []
    stretchability = []
    shrinkability = []
    component_count = 10
    line_width = 10
    breaks = []

    break_count = compositor.__struct__.compose(
      natural,
      stretchability,
      shrinkability,
      component_count,
      line_width,
      breaks
    )

    break_count
  end
end
