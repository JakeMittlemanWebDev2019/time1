defmodule Time1Web.UserselectController do
  use Time1Web, :controller

  def new(conn, _params) do
    render(conn, "new.html")
  end

  def create(conn, %{"email" => email}) do
    user = Time1.Users.get_user_by_email(email)
    if user do
      conn
      |> put_session(:user_id, user.id)
      |> redirect(to: Routes.page_path(conn, :index))
    else
      conn
      |> put_flash(:error, "Login failed.")
      |> redirect(to: Routes.page_path(conn, :index))
    end
  end
end