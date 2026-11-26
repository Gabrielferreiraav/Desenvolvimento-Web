import Config

config :rumbl, Rumbl.Repo,
  database: Path.expand("../rumbl_test#{System.get_env("MIX_TEST_PARTITION")}.db", __DIR__),
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 1

config :rumbl, RumblWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "qA+3F2mmQ7hXCBwbsm4KMDkxL9wcwJwn24fP51DNVL4V+3zLJ+L9mTtuq/K4u9eJ",
  server: false

config :rumbl, Rumbl.Mailer, adapter: Swoosh.Adapters.Test

config :swoosh, :api_client, false

config :logger, level: :warning

config :phoenix, :plug_init_mode, :runtime

config :phoenix_live_view,
  enable_expensive_runtime_checks: true

config :phoenix,
  sort_verified_routes_query_params: true
