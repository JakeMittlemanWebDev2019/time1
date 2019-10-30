defmodule Time1.Repo.Migrations.CreateTimesheets do
  use Ecto.Migration

  def change do
    create table(:timesheets) do
      add :hours, :integer, null: false
      add :user_id, references(:users, on_delete: :delete_all), null: false
      add :job_id, references(:jobs, on_delete: :delete_all), null: false

      timestamps()
    end

    create index(:timesheets, [:user_id])
    create index(:timesheets, [:job_id])
  end
end
