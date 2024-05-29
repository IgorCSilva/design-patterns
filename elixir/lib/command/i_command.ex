defmodule Command.ICommand do

  @callback execute(any()) :: any()
end
