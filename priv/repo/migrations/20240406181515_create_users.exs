defmodule ElixirPlaygroundApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false
      add :type, :string, null: false
      add :avatar_url, :string

      timestamps()
    end
  end
end
