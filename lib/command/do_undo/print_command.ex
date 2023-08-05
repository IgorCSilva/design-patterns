defmodule Command.DoUndo.PrintCommand do

  defstruct(
    receiver: nil,
    undo: nil,
    data: nil
  )

  @behaviour Command.DoUndo.ICommand

  def execute(nil, command) do
    # command = %{command | p}
    command.receiver.()
    |> case do
      :error -> throw("Error in command")
      result -> %{command | data: result, undo: fn -> unexecute(result, %{command | undo: fn -> nil end}) end}
    end
  end

  def execute(previous, command) do
    # command = %{command | p}
    command.receiver.()
    |> case do
      :error -> previous.undo.()
      result -> %{command | data: result, undo: fn -> unexecute(result, previous) end}
    end
  end

  def unexecute(result, previous) do
    IO.inspect(result, label: "UNEXECUTING")

    previous.undo.()
  end
end
