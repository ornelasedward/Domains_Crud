defmodule DomainWeb.DomainController do
  use DomainWeb, :controller

  def index(conn, _params) do
    domains = DomainWeb.Domain |> Repo.all

    render(conn, "index.html", domains: domains)
  end
end
