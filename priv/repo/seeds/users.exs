alias ElixirPlaygroundApi.Users

defmodule ElixirPlaygroundApi.Seed.UsersSeed do

  @user_data [
    ["Dawson", "Developer", "https://localhost/avatar.jpg"],
  ]

  def seed_users do
    @user_data
      |> Stream.map(fn [name, type, avatar_url] -> %{
        name: name,
        type: type,
        avatar_url: avatar_url
      } end)
      |> Stream.map(&(Users.create_user(&1)))
      |> Stream.map(fn {:ok, user} -> user end)
      |> Stream.flat_map(fn user -> %{user.id => user} end)
      |> Enum.into(%{})
  end

end
