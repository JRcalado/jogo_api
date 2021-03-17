defmodule  JogoApiWeb.GameView do
  use JogoApiWeb, :view

  alias JogoApi.Session



  def render("show.json",_var) do
    %{
      message: "Hello Mano"
    }

  end

  def render("create.json", %{session: %Session{id: id, session: session, inserted_at: inserted_at}}) do
    %{
      message: "Session game created",
      session: %{
        id: id,
        session: session,
        inserted_at: inserted_at
      }
    }

  end
end
