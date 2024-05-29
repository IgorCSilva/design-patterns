defmodule Command.Main do

  alias Command.Printer
  alias Command.Calculator

  alias Command.PrintCommand
  alias Command.CalculateCommand

  alias Command.ButtonInvoker
  alias Command.ScrollInvoker

  def execute() do
    command = %PrintCommand{receiver: fn -> Printer.action() end}

    button = %ButtonInvoker{command: command}
    ButtonInvoker.click(button)

    scroll = %ScrollInvoker{command: command}
    ScrollInvoker.in_end(scroll)


    command = %CalculateCommand{receiver: fn -> Calculator.action(3, 4) end}

    button = %ButtonInvoker{command: command}
    ButtonInvoker.click(button)

    scroll = %ScrollInvoker{command: command}
    ScrollInvoker.in_end(scroll)
  end


end
