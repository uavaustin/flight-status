defmodule Mix.Tasks.Compile.Brunch do
  @moduledoc """
  Compiles brunch assets for phoenix.
  """

  use Mix.Task

  def run(_args) do
    assets_dir = Path.join File.cwd!(), "assets"

    :ok = _install(assets_dir)
    :ok = _build(assets_dir)
    :ok = _digest()
  end

  # Run `npm install` if there isn't a `node_modules` folder.
  defp _install(dir) do
    if not File.exists? Path.join(dir, "node_modules") do
      {_, code} = _exec("npm", ["install"], dir)

      case code do
        0     -> :ok
        other -> {:error, other}
      end
    else
      :ok
    end
  end

  # Builds the brunch source.
  defp _build(dir) do
    sub = if Mix.env == :prod, do: "build-prod", else: "build"

    {_, code} = _exec("npm", ["run", sub], dir)

    case code do
        0     -> :ok
        other -> {:error,  other}
      end
  end

  # Digests the source with mix phx.digest if in prod.
  defp _digest() do
    if Mix.env == :prod do
      Mix.Tasks.Phx.Digest.run([])
    else
      :ok
    end
  end

  # Execute a command in the shell.
  defp _exec(command, args, dir) do
    System.cmd command, args, into: IO.stream(:stdio, :line),
                              cd: dir
  end
end
