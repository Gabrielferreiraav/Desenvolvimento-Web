defmodule RumblWeb.ConnCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      @endpoint RumblWeb.Endpoint

      use RumblWeb, :verified_routes

      import Plug.Conn
      import Phoenix.ConnTest
      import RumblWeb.ConnCase
    end
  end

  setup tags do
    Rumbl.DataCase.setup_sandbox(tags)
    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
