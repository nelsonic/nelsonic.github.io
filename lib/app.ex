defmodule App do
  @moduledoc """
  Documentation for App.
  """

  @doc """
  transform the markdown (.md) files into HTML

  ## Examples

      iex> App.transform()
      test.md > test.html

  """
  def transform do
    dir = Path.join(File.cwd!, "p/") <> "/"
    IO.inspect dir, label: "dir"
    files = Path.wildcard("#{dir}/*.md") # stackoverflow.com/questions/40719082
    IO.inspect files, label: "files"

    map = Enum.map(files, fn filepath ->
      IO.inspect filepath
      filename = String.replace(filepath, dir, "") |> String.replace(".md", "")
      IO.inspect filename, label: "filename"

      case File.read(filepath) do
        {:ok, markdown} -> # do something with the `body`
          # IO.puts markdown
          html_doc = Earmark.as_html!(markdown)
          # IO.puts html_doc
          html_path = Path.join(dir, "#{filename}.html")
          File.write!(html_path, html_doc)
          IO.puts "#{filename}.md > #{filename}.html"
        {:error, reason} -> # handle the error caused by `reason`
          IO.puts reason
      end
      filename
    end)
    # use the map of posts to create an index:
    IO.inspect map, label: "map"
  end
end
