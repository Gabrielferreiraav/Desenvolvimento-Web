defmodule RumblWeb.UserControllerTest do
  use RumblWeb.ConnCase

  alias Rumbl.Accounts

  test "GET /users", %{conn: conn} do
    conn = get(conn, ~p"/users")
    assert html_response(conn, 200) =~ "Listing Users"
  end

  test "cria usuario valido e redireciona", %{conn: conn} do
    conn = post(conn, ~p"/users", user: %{name: "José Valim", username: "jose_valim"})
    assert redirected_to(conn) == ~p"/users"

    conn = get(conn, ~p"/users")
    assert html_response(conn, 200) =~ "José"
  end

  test "rejeita username com caracteres invalidos", %{conn: conn} do
    conn = post(conn, ~p"/users", user: %{name: "Teste", username: "jose valim"})
    assert html_response(conn, 200) =~ "deve conter apenas letras, números e underlines"
  end

  test "edita e remove usuario", %{conn: conn} do
    {:ok, user} = Accounts.create_user(%{name: "Chris", username: "chrismccord"})

    conn = put(conn, ~p"/users/#{user.id}", user: %{name: "Chris McCord"})
    assert redirected_to(conn) == ~p"/users"

    conn = delete(conn, ~p"/users/#{user.id}")
    assert redirected_to(conn) == ~p"/users"
    assert Accounts.get_user(user.id) == nil
  end
end
