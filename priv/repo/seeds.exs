# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ElixirPlaygroundApi.Repo.insert!(%ElixirPlaygroundApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

########################################
# Users
########################################
Code.require_file("seeds/users.exs", __DIR__)
ElixirPlaygroundApi.Seed.UsersSeed.seed_users()
