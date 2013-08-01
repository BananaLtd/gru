defmodule Gru.Mixfile do
  use Mix.Project

  def project do
    [ app: :gru,
      version: "0.0.1",
      elixir: "~> 0.10.0",
      source_url: "https://github.com/BananaLtd/gru",
      homepage_url: "https://github.com/BananaLtd/gru",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ registered: [:minion],
      mod: { Minion, [] } ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [ { :minion, git: "https://github.com/BananaLtd/minion.git" } ]
  end
end
