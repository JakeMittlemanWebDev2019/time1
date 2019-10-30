defmodule Time1.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string, null: false
      add :name, :string, null: false
      add :manager, :boolean, null: false
      add :password, :string, null: false

      timestamps()
    end

  end
end
