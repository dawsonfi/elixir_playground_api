defmodule ElixirPlaygroundApi.Accounts do
  alias ElixirPlaygroundApi.Accounts.User
  alias ElixirPlaygroundApi.Repo

  def create_user(user) do
    Repo.insert(user)
  end

  def list_users do
    Repo.all(User)
  end
end
