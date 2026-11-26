defmodule RumblWeb.VideoControllerTest do
  use RumblWeb.ConnCase

  test "GET /videos", %{conn: conn} do
    conn = get(conn, ~p"/videos")
    assert html_response(conn, 200) =~ "Listing Videos"
    assert html_response(conn, 200) =~ "Introdução ao Elixir"
  end

  test "GET /videos/:id", %{conn: conn} do
    conn = get(conn, ~p"/videos/1")
    assert html_response(conn, 200) =~ "Showing Video"
    assert html_response(conn, 200) =~ "Introdução ao Elixir"
  end
end
