defmodule CoolCodesCollector.Repo.Migrations.CreateScanReports do
  use Ecto.Migration

  def change do
    create table(:scan_reports) do
      add :scan_duration, :bigint
      add :results, :string
      add :config, :string
      add :type, :string # vulnerability scans, page-load metric scans
      add :origin_scanned, :string
      add :user_public_key, :string
      add :category_id, references(:report_categories, on_delete: :nothing)

      timestamps()
    end
  end
end
