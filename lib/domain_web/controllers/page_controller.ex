defmodule DomainWeb.PageController do
  use DomainWeb, :controller

  alias Domain.Repo

  def index(conn, _params) do

    render(conn, "index.html")
  end
end
