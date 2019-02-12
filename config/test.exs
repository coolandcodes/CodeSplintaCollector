use Mix.Config

config :bcrypt_elixir, :log_rounds, 4

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :coolcodes_collector, CoolCodesCollector.Web.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :coolcodes_collector, CoolCodesCollector.Repo,
  username: "postgres",
  password: "postgres",
  database: "coolcodes_collector",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
