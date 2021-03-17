defmodule JogoApi.Session  do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, Ecto.UUID, autogenerate: true}

  schema "session" do
    field :session, Ecto.UUID
    field :play, :integer
    field :has_won, :boolean
    timestamps()
  end
  @required_params [:session]

  def build(params) do
    params
    |> changeset()
    |> apply_action(:insert)
  end

  def changeset(params), do: create_changeset(%__MODULE__{}, params)
  def changeset(session, params), do: create_changeset(session, params)

  defp create_changeset(module_or_session, params) do
    module_or_session
    |> cast(params, @required_params)
    |> validate_required(@required_params)

  end

end
