defmodule ElixirPlaygroundApi.Accounts.User do
  use Ecto.Schema

  @derive {Jason.Encoder, except: [:__meta__]}
  schema "users" do
    field :name, :string
    field :type, :string
    field :avatar_url, :string

    timestamps()
  end
end
