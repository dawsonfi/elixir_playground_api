defmodule ElixirPlaygroundApiWeb.UsersController do
  use ElixirPlaygroundApiWeb, :controller
  alias ElixirPlaygroundApi.Users

  def list_users(conn, _params) do
    json conn, Users.list_users()
  end
end
