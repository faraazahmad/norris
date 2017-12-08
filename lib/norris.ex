defmodule Norris do
  @moduledoc """
  Documentation for Norris. This is a simple package
  that gets a chuck norris fact from api.chucknorris.io
  """

  @doc """
      Send a request to chucknorris.io API
      to get a random(uncategorised) fact, 
      which returns a json string, 
      then decode the json string into a Map. 
      Then return the joke string.
  """
  def random do
    response = 
      "https://api.chucknorris.io/jokes/random"
        |> Tesla.get()

    response = response.body
    {:ok, struct} = Poison.decode response

    struct["value"]
  end
end
