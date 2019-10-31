defmodule Time1.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :name, :string
    field :is_manager, :boolean
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :name, :is_manager, :password])
    |> validate_required([:email, :name, :is_manager, :password])
  end
end
