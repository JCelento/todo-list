defmodule TodoPhoenix.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
	  create table("tasks") do
      add :title, :string
      add :description, :string
      add :progress, :decimal
      add :done, :boolean      

      timestamps()
	end
  end
end
