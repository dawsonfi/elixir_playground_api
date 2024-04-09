defmodule ElixirPlaygroundApiWeb.UsersControllerTest do
  use ElixirPlaygroundApiWeb.ConnCase
  alias ElixirPlaygroundApi.Users
  alias ElixirPlaygroundApi.Users.User

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(ElixirPlaygroundApi.Repo)
    {:ok, user} = Users.create_user(%User{name: "dawson", type: "BUYER", avatar_url: "https://localhost/avatare"})
    {:ok, user: user}
  end

  describe "GET /users" do
    test "should return all users from database", %{conn: conn, user: user} do
      conn = get(conn, ~p"/users")

      assert json_response(conn, 200) == [%{
               "avatar_url" => user.avatar_url,
               "id" => user.id,
               "inserted_at" => NaiveDateTime.to_iso8601(user.inserted_at),
               "name" => user.name,
               "type" => user.type,
               "updated_at" => NaiveDateTime.to_iso8601(user.updated_at),
             }]
    end
  end
end
