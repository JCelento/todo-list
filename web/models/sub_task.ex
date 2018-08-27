defmodule TodoPhoenix.SubTask do
  use TodoPhoenix.Web, :model

  schema "subtasks" do
    field :description, :string
    field :done, :boolean, default: false

  	belongs_to :task, TodoPhoenix.Task, foreign_key: :task_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(subtask, params \\ %{}) do
    subtask
    |> cast(params, [:description, :done])
    |> validate_required([:description])
  end
end
