defmodule Time1.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :hours, :integer, null: false
    field :note, :string, null: false
    field :worker, :id, null: false
    field :job, :id, null: false

    belongs_to :timesheet, Time1.Timesheets.Timesheet

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:hours, :note, :job, :timesheet_id])
    |> validate_required([:hours, :note, :job, :timesheet_id])
    |> validate_number(:hours, greater_than: 0, less_than: 9)
  end
end
