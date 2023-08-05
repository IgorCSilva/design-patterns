defmodule Strategy.Main do

  alias Strategy.Composition
  alias Strategy.{SimpleCompositor, TexCompositor, ArrayCompositor}

  def execute() do
    %SimpleCompositor{} = simple_compositor = SimpleCompositor.new()
    %Composition{} = quick_composition = Composition.new(simple_compositor)
    IO.inspect(Composition.repair(quick_composition))

    %TexCompositor{} = tex_compositor = TexCompositor.new()
    %Composition{} = slick_composition = Composition.new(tex_compositor)
    IO.inspect(Composition.repair(slick_composition))

    %ArrayCompositor{} = array_compositor = ArrayCompositor.new()
    %Composition{} = iconic_composition = Composition.new(array_compositor)
    IO.inspect(Composition.repair(iconic_composition))
  end
end
