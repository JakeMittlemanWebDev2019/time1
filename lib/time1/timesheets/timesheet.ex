defmodule Time1.Timesheets.Timesheet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "timesheets" do
    field :worker, :id, null: false

    has_many :tasks, Time1.Tasks.Task

    timestamps()
  end

  @doc false
  def changeset(timesheet, attrs) do
    timesheet
    |> cast(attrs, [:worker])
    |> validate_required([])
  end
end
