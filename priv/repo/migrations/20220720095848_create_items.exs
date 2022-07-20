defmodule TodoApp.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :text, :string
      add :status, :integer

      timestamps()
    end
  end
end
