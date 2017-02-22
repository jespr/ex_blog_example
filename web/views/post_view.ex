defmodule BlogExample.PostView do
  use BlogExample.Web, :view

  def tags_comma_separated(tags) do
    Enum.join(Enum.map(tags, fn(t) -> t.name end), ", ")
  end
end
