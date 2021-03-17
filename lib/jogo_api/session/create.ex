defmodule JogoApi.Session.Create do
  alias JogoApi.{Repo, Session}

  def call(params) do
    params
    |> Session.build()
    |> create_session()
  end

  defp create_session({:ok, struct}), do: Repo.insert(struct)
  defp create_session({:error, changeset} = error), do: error

end
