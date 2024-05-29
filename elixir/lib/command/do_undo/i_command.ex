defmodule Command.DoUndo.ICommand do

  @callback execute() :: any()
  @callback unexecute() :: any()
end
