defmodule HelloWeb.HelloControllerTest do
  use HelloWeb.ConnCase

  test "GET /saudacao/pt/lucas", %{conn: conn} do
    conn = get(conn, ~p"/saudacao/pt/lucas")
    assert html_response(conn, 200) =~ "Olá, Lucas!"
  end

  test "GET /saudacao/en/lucas", %{conn: conn} do
    conn = get(conn, ~p"/saudacao/en/lucas")
    assert html_response(conn, 200) =~ "Hello, Lucas!"
  end
end
