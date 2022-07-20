defmodule TodoApp.TodoFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TodoApp.Todo` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        status: 42,
        text: "some text"
      })
      |> TodoApp.Todo.create_item()

    item
  end
end
