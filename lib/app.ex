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
  def hello do

    filename = Path.join(File.cwd!, "public/test.md") # __ENV__.file # "./app.ex"
    IO.puts filename
    case File.read(filename) do
      {:ok, body}      -> # do something with the `body`
        IO.puts body
      {:error, reason} -> # handle the error caused by `reason`
        IO.puts reason
    end
  end

end
