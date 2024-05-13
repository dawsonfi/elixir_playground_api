defmodule ElixirPlaygroundApi.Users.UsersTest do
  use ElixirPlaygroundApi.DataCase
  alias ElixirPlaygroundApi.Users

  @valid_user %{name: "dawson", type: "BUYER", avatar_url: "https://localhost/avatare"}

  def fixture(:user) do
    {:ok, user} =
      @valid_user
      |> Users.create_user()

    user
  end

  describe "create_user" do
    test "should succeed in creating user" do
      user = fixture(:user)

      assert "dawson" == user.name
      assert "BUYER" == user.type
      assert "https://localhost/avatare" == user.avatar_url
    end
  end

  describe "list_users" do
    test "list_users should return users" do
      user = fixture(:user)

      assert Users.list_users() == [user]
    end
  end
end
