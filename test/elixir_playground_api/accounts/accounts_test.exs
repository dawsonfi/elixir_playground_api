defmodule ElixirPlaygroundApi.Accounts.AccountsTest do
  use ExUnit.Case
  alias ElixirPlaygroundApi.Accounts
  alias ElixirPlaygroundApi.Accounts.User

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(ElixirPlaygroundApi.Repo)
    {:ok, user} = Accounts.create_user(%User{name: "dawson", type: "BUYER", avatar_url: "https://localhost/avatare"})
    {:ok, user: user}
  end

  test "list_users should return users", %{user: user} do
    assert Accounts.list_users() == [user]
  end

end
