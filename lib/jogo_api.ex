defmodule JogoApi do

  alias  JogoApi.Session

  defdelegate create_session(params), to: Session.Create, as: :call

end
