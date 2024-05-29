defmodule Command.DoUndo.Main do

  alias Command.DoUndo.Printer

  alias Command.DoUndo.PrintCommand

  # alias Command.DoUndo.ButtonInvoker

  def execute() do

    command1 = %PrintCommand{receiver: fn -> Printer.action("Igor") end}
    command2 = %PrintCommand{receiver: fn -> Printer.action("Maia") end}
    command3 = %PrintCommand{receiver: fn -> Printer.action(:error) end}
    command4 = %PrintCommand{receiver: fn -> Printer.action("Iuly") end}
    command5 = %PrintCommand{receiver: fn -> Printer.action(:error) end}

    PrintCommand.execute(nil, command1)
    |> PrintCommand.execute(command2)
    |> PrintCommand.execute(command3)
    |> PrintCommand.execute(command4)
    |> PrintCommand.execute(command5)
  end
end
