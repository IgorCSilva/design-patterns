defmodule Command.DoUndo.Printer do



  def action(:error), do: :error

  def action(name) do
    IO.inspect("Hello #{name}")
  end
end
