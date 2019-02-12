defmodule CoolCodesCollector.Repo.Migrations.CreateTamperReports do
  use Ecto.Migration

  def change do
    create table(:tamper_reports) do
      add :browser_fingerprint, :string
      add :browser_stats, :string
      add :code, :string
      add :document_host, :string
      add :document_referrer, :string
      add :document_title, :string
      add :type , :string # dev-tools
      add :channel_type, :string # keycombo, menu
      add :user_public_key, :string
      add :category_id, references(:report_categories, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:tamper_reports, [:code])
  end
end
