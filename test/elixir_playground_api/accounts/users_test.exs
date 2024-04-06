defmodule ElixirPlaygroundApi.Users.UsersTest do
  use ExUnit.Case
  alias ElixirPlaygroundApi.Users
  alias ElixirPlaygroundApi.Users.User

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(ElixirPlaygroundApi.Repo)
  end

  test "create_user should succed in creating user" do
    {:ok, user} = Users.create_user(%User{name: "dawson", type: "BUYER", avatar_url: "https://localhost/avatare"})

    assert "dawson" == user.name
    assert "BUYER" == user.type
    assert "https://localhost/avatare" == user.avatar_url
  end

  test "list_users should return users"do
    {:ok, user} = Users.create_user(%User{name: "dawson", type: "BUYER", avatar_url: "https://localhost/avatare"})
    assert Users.list_users() == [user]
  end

end