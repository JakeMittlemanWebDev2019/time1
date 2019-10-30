defmodule Time1.Timesheets.Timesheet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "timesheets" do
    field :hours, :integer
    field :user_id, :id
    field :job_id, :id

    timestamps()
  end

  @doc false
  def changeset(timesheet, attrs) do
    timesheet
    |> cast(attrs, [:hours])
    |> validate_required([:hours])
  end
end
