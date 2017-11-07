defmodule NervesRuntimeShell.Mixfile do
  use Mix.Project

  def project do
    [
      app: :nerves_runtime_shell,
      version: "0.1.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    A custom shell for debugging and running commands on Nerves devices in a bash-like environment.
    """
  end

  defp package do
    [maintainers: ["Jeff Smith", "Frank Hunleth"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/nerves_runtime_shell"}]
  end
end
