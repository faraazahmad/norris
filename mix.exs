defmodule Norris.Mixfile do
  use Mix.Project

  def project do
    [app: :norris,
     version: "0.1.0",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     name: "Norris",
     description: description(),
     source_url: "https://github.com/faraazahmad/norris",
     files: ["lib", "priv", "mix.exs", "README*", "LICESNCE*"],
     maintainers: ["Syed Faraaz Ahmad"],
     licenses: ["MIT"],
     links: %{"Github" => "https://github.com/faraazahmad/norris"}
    ]
  end

  # A smal  description about this package
  defp description do
    "A small package that accesses the chuck norris API
    and returns a random chuck norris fact"
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :tesla]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      { :tesla, "~> 0.9.0" },
      { :poison, "~> 3.1" }
    ]
  end
end
