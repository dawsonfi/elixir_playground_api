defmodule ElixirPlaygroundApiWeb.AccountsControllerTest do
  use ElixirPlaygroundApiWeb.ConnCase
  alias ElixirPlaygroundApi.Accounts
  alias ElixirPlaygroundApi.Accounts.User

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(ElixirPlaygroundApi.Repo)
    {:ok, user} = Accounts.create_user(%User{name: "dawson", type: "BUYER", avatar_url: "https://localhost/avatare"})
    {:ok, user: user}
  end

  test "GET /accounts", %{conn: conn, user: user} do
    conn = get(conn, ~p"/accounts")

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
