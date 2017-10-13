defmodule NervesRuntimeShell.Mixfile do
  use Mix.Project

  def project do
    [
      app: :nerves_runtime_shell,
      version: "0.1.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
    ]
  end
end
