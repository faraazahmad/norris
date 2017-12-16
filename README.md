# Norris

An elixir package that returns chuck norris jokes from [Chuck Norris API](https://api.chucknorris.io)

## Installation

This package is [available in Hex](https://hex.pm/packages/norris), so it can be can be installed
by adding `norris` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:norris, "~> 0.1.2"}]
end
```

## Usage

You can call any of the functions in the module, like so:
```
iex(1)> Norris.random
"Chuck Norris once beat up Godzilla for lunch money"
iex(2)> Norris.categories
["explicit", "dev", "movie", "food", "celebrity", "science", "political",
 "sport", "religion", "animal", "music", "history", "travel", "career", "money",
 "fashion"]
iex(3)> Norris.joke :food
"When Chuck Norris goes to out to eat, he orders a whole chicken, but he only eats its soul."
```

## Contribution
If you feel like the package has any features missing, or there's anything else you can contribute
in, feel free to open up an issue or send a PR.

