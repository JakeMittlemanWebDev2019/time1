defmodule Time1.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :hours, :integer
      add :note, :string
      add :worker, references(:users, on_delete: :nothing)
      add :job, references(:jobs, on_delete: :nothing)

      timestamps()
    end

    create index(:tasks, [:worker])
    create index(:tasks, [:job])
  end
end
