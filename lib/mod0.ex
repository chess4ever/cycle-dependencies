defmodule Mod0 do
  def ciao do
    Mod1.ciao()
  end

  defmacro evil do
    quote do: :evil
  end
end
