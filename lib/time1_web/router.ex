defmodule Time1Web.Router do
  use Time1Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug Time1Web.Plugs.FetchCurrentUser
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Time1Web do
    pipe_through :browser

    get "/", PageController, :index
    resources "/users", UserController
    resources "/timesheets", TimesheetController
    resources "/jobs", JobController
    resources "/tasks", TaskController
    resources "/userselect", UserselectController
    resources "/sessions", SessionController,
      only: [:new, :create, :delete], singleton: true
  end

  # Other scopes may use custom stacks.
  # scope "/api", Time1Web do
  #   pipe_through :api
  # end
end
