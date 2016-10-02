defmodule Foo.Mixfile do
  use Mix.Project

  def project do
    [app: :fun_elixir,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [
      mod: {Foo, []}, 
      applications: [:logger]
    ]
  end

  defp deps do
    [
      {:mix_test_watch, "~> 0.1.1"}
    ]
  end
end
