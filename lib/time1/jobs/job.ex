defmodule Time1.Jobs.Job do
  use Ecto.Schema
  import Ecto.Changeset

  schema "jobs" do
    field :budget, :integer
    field :desc, :string
    field :name, :string
    field :manager, :id

    timestamps()
  end

  @doc false
  def changeset(job, attrs) do
    job
    |> cast(attrs, [:name, :desc, :budget])
    |> validate_required([:name, :desc, :budget])
  end
end
