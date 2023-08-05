defmodule Command.ScrollInvoker do

  defstruct(
    command: nil
  )

  def in_end(invoker) do
    command = invoker.command
    invoker.command.__struct__.execute(command)
  end
end
