defmodule TodoPhoenix.SubTaskTest do
  use TodoPhoenix.ModelCase

  alias TodoPhoenix.SubTask

  @valid_attrs %{description: "some description", done: true}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = SubTask.changeset(%SubTask{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = SubTask.changeset(%SubTask{}, @invalid_attrs)
    refute changeset.valid?
  end
end
