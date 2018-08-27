defmodule TodoPhoenix.Task do
  use TodoPhoenix.Web, :model
  import Ecto.Query

  schema "tasks" do
    field :title, :string
    field :description, :string
    field :progress, :decimal
	  field :done, :boolean, default: false

	has_many :subtasks, TodoPhoenix.SubTask

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(task, params \\ %{}) do
    task
    |> cast(params, [:title, :description, :progress, :done])
    |> validate_required([:title])
  end

  def count_progress(query) do
    from t in query,
    group_by: t.id,
    left_join: s in assoc(t, :subtasks),
    where: s.done == :true,
    select: {t, count(s.id)}
  end

end
