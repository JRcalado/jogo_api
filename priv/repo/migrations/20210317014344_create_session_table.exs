defmodule JogoApi.Repo.Migrations.CreateSessionTable do
  use Ecto.Migration

  def change do
    create table(:session, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :session, :uuid, primary_key: false
      add :play, :integer
      add :has_won, :boolean
      timestamps()

    end

  end
end
