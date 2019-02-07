defmodule App do
  @moduledoc """
  Documentation for App.
  """

  @doc """
  Hello world.

  ## Examples

      iex> App.hello()
      :world

  """
  def transform do
    filename = Path.join(File.cwd!, "p/goals.md") # __ENV__.file # "./app.ex"
    # IO.puts filename
    case File.read(filename) do
      {:ok, markdown}      -> # do something with the `body`
        IO.puts markdown
        html_doc = Earmark.as_html!(markdown)
        IO.puts html_doc
        html_path = Path.join(File.cwd!, "p/goals.html")
        File.write!(html_path, html_doc)
      {:error, reason} -> # handle the error caused by `reason`
        IO.puts reason
    end
  end
end
