defmodule Time1.Jobs.Job do
  use Ecto.Schema
  import Ecto.Changeset

  schema "jobs" do
    field :budget, :integer
    field :desc, :string
    field :job_id, :integer
    field :name, :string
    field :manager, :id

    timestamps()
  end

  @doc false
  def changeset(job, attrs) do
    job
    |> cast(attrs, [:job_id, :name, :desc, :budget])
    |> validate_required([:job_id, :name, :desc, :budget])
  end
end
