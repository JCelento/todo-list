defmodule TodoPhoenix.TaskTest do
  use TodoPhoenix.ModelCase

  alias TodoPhoenix.Task

  @valid_attrs %{description: "some description", progress: "120.5", title: "some title"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Task.changeset(%Task{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Task.changeset(%Task{}, @invalid_attrs)
    refute changeset.valid?
  end
end
