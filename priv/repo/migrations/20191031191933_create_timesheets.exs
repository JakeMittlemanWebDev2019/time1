defmodule Time1.Repo.Migrations.CreateTimesheets do
  use Ecto.Migration

  def change do
    create table(:timesheets) do
      add :worker, references(:users, on_delete: :nothing)
      

      timestamps()
    end

    create index(:timesheets, [:worker])
  end
end
