defmodule CoolCodesCollector.Repo.Migrations.CreateOutputReports do
  use Ecto.Migration

  def change do
    create table(:output_reports) do
      add :browser_fingerprint, :string
      add :browser_stats, :string
      add :type, :string # console, dialog
      add :sub_type, :string # warn, error, log, alert, prompt, confirm
      add :closed, :boolean, default: true
      add :user_public_key, :string
      add :category_id, references(:report_categories, on_delete: :nothing)

      timestamps()
    end

  end
end
