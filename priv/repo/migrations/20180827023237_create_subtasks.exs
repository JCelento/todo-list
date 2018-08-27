defmodule TodoPhoenix.Repo.Migrations.CreateSubtasks do
  use Ecto.Migration

  def change do
    create table(:subtasks) do
      add :description, :string
      add :done, :boolean
      add :task_id, :integer

      timestamps
    end
    create index(:subtasks, [:task_id])

  end
end
