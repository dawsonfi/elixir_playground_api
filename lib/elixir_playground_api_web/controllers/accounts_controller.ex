defmodule ElixirPlaygroundApiWeb.AccountsController do
  use ElixirPlaygroundApiWeb, :controller
  alias ElixirPlaygroundApi.Accounts

  def list_accounts(conn, _params) do
    json conn, Accounts.list_users()
  end
end
