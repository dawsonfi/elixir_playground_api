defmodule ElixirPlaygroundApi.Users do
  alias ElixirPlaygroundApi.Users.User
  alias ElixirPlaygroundApi.Repo

  def create_user(user) do
    Repo.insert(user)
  end

  def list_users do
    Repo.all(User)
  end
end
