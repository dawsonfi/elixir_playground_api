defmodule ElixirPlaygroundApi.Users.User do
  @moduledoc """
  User schema module
  """
  use Ecto.Schema
  import Ecto.Changeset

  @derive {Jason.Encoder, except: [:__meta__]}
  schema "users" do
    field :name, :string
    field :type, :string
    field :avatar_url, :string

    timestamps()
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :type, :avatar_url])
    |> validate_required([:name, :type])
  end
end
