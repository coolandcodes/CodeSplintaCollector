defmodule CoolCodesCollector.Repo.Migrations.CreateViolationReports do
  use Ecto.Migration

  def change do
    create table(:violation_reports) do
      add :browser_fingerprint, :string
      add :browser_stats, :string
      add :document_host, :string
      add :document_title, :string
      add :document_referrer, :string
      add :user_public_key, :string
      add :type, :string # ssv (site scripting violation)), prv (policy-requests violation)
      add :category_id, references(:report_categories, on_delete: :nothing)

      timestamps()
    end
  end
end
