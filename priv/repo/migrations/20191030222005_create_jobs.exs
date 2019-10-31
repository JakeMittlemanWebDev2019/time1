defmodule Time1.Repo.Migrations.CreateJobs do
  use Ecto.Migration

  def change do
    create table(:jobs) do
      add :name, :string, null: false
      add :desc, :text, null: false
      add :budget, :integer, null: false
      add :manager, references(:users, on_delete: :nothing), null: false

      timestamps()
    end

    create index(:jobs, [:manager])
  end
end
