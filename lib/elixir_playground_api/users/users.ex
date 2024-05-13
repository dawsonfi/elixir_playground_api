defmodule ElixirPlaygroundApi.Users do
  @moduledoc """
  Users operations module
  """
  alias ElixirPlaygroundApi.Users.User
  alias ElixirPlaygroundApi.Repo

  def create_user(user \\ %{}) do
    %User{}
    |> User.changeset(user)
    |> Repo.insert()
  end

  def list_users do
    Repo.all(User)
  end
end
