defmodule ExMedium.MixProject do
  use Mix.Project

  @description "ExMedium is a wrapper for the Medium Api."
  @source_url "https://github.com/raul-gracia/ex_medium"


  def project do
    [
      app: :ex_medium,
      name: "ExMedium",
      version: "0.1.1",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: @description,
      package: package(),
      source_url: @source_url
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ExMedium.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.26.0", only: :dev}
    ]
  end

  defp package do
    [
      maintainers: ["Raul Gracia"],
      licenses: ["MIT"],
      links: %{
        Changelog: @source_url <> "/blob/master/CHANGELOG.md",
        GitHub: @source_url
      }
    ]
  end
end
