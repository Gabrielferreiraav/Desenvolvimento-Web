import Config

config :rumbl, Rumbl.Repo,
  database: Path.expand("../rumbl_dev.db", __DIR__),
  pool_size: 5,
  busy_timeout: 5000,
  stacktrace: true,
  show_sensitive_data_on_connection_error: true

config :rumbl, RumblWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "/qA3gW1i0839xjSGmj0ZAfKt3zOm73Yf/30wtoantjCOXVaqgpP/PtAb0l+3nP+T",
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:rumbl, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:rumbl, ~w(--watch)]}
  ]

config :rumbl, dev_routes: true

config :logger, :default_formatter, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :phoenix, :plug_init_mode, :runtime

config :phoenix_live_view,
  debug_heex_annotations: true,
  debug_attributes: true,
  enable_expensive_runtime_checks: true

config :swoosh, :api_client, false
