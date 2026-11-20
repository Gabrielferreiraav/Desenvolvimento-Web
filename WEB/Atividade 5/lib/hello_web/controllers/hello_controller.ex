defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def world(conn, %{"name" => name}) do
    render(conn, :world, name: name)
  end

  def world(conn, _params) do
    render(conn, :world, name: "mundo")
  end

  def saudacao(conn, %{"lang" => "pt", "name" => name}) do
    render(conn, :saudacao, saudacao: "Olá", name: name)
  end

  def saudacao(conn, %{"lang" => "en", "name" => name}) do
    render(conn, :saudacao, saudacao: "Hello", name: name)
  end
end
