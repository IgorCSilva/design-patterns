defmodule Command.PrintCommand do

  defstruct(
    receiver: nil,
    state: nil
  )

  @behaviour Command.ICommand

  def execute(command) do
    command.receiver.()
  end
end
