defmodule Norris do
  @moduledoc """
    Documentation for Norris. This is a simple package
    that gets chuck norris fact(s) from api.chucknorris.io
  """

  @doc """
    Returns a Chuck Norris fact/joke on a random topic
  """
  def random do
    response = 
      "https://api.chucknorris.io/jokes/random"
        |> Tesla.get()

    response = response.body
    {:ok, struct} = Poison.decode response

    struct["value"]
  end

  @doc """
    Returns a list of all categories of facts/jokes
    provided by the API 
  """
  def categories do
    response = 
      "https://api.chucknorris.io/jokes/categories"
        |> Tesla.get()

    response = response.body
    {:ok, category_list} = Poison.decode response

    category_list
  end

  @doc """
    Return a joke based on a provided category, if the category
    does not exist return :error
  """
  def joke(category) do
    response = 
      "https://api.chucknorris.io/jokes/random?category=#{category}"
        |> Tesla.get()

    response = Poison.decode(response.body)

    case response do
      {:ok, result} -> result["value"]
      _ -> "Error: Either category does not exist or there is a network error"
    end
  end
end
