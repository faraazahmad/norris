defmodule Norris do
  @moduledoc """
  Documentation for Norris.
  """

  @doc """
      Send a request to chucknorris.io API
  """
  def random do
    response = "https://api.chucknorris.io/jokes/random"
    |> Tesla.get()

    response = response.body
    {:ok, struct} = Poison.decode response

    struct["value"]
  end
end
