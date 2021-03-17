defmodule JogoApiWeb.GameController do
  use JogoApiWeb, :controller

  def index(conn,_params) do

    %{"session" => Ecto.UUID.generate()}
    |> JogoApi.create_session()
    |> handle_response(conn,"create.json", :created)
  end

  defp handle_response({:ok, session}, conn, view, status) do
    conn
    |> put_status(status)
    |> render(view, session: session)
  end

  defp handle_response({:error, _changeset} = error, _conn, _view, _status), do: error


end
