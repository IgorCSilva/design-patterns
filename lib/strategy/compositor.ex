defmodule Strategy.Compositor do

  @callback compose(
    list(),
    list(),
    list(),
    integer(),
    integer(),
    list()
  ) :: integer()
end
