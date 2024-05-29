defmodule Command.DoUndo.ButtonInvoker do

  defstruct(
    command: nil
  )

  def click(invoker) do
    command = invoker.command
    invoker.command.__struct__.execute(command)
  end
end
