defmodule CoolCodesCollector.Repo.Migrations.CreateAppSettings do
  use Ecto.Migration

  def change do
    create table(:collector_app_settings) do
      add :title, :string
      add :details, :string
      add :user_public_key, :string

      timestamps()
    end

    create unique_index(:collector_app_settings, [:title])
  end
end
