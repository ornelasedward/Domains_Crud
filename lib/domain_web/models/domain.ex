defmodule DomainWeb.Domain do
  use Ecto.Schema
  import Ecto.Changeset

  schema "domains" do
    field :name, :string
    field :order_id, :integer
    field :marketing_mix, :string

    timestamps()
  end

  @doc false
  def changeset(domain, attrs) do
    domain
    |> cast(attrs, [:name, :order_id, :marketing_mix])
    |> validate_required([:name, :order_id, :marketing_mix])
  end
end
