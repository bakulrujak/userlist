defmodule UserlistxWeb.Router do
  use UserlistxWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

#  scope "/", UserlistxWeb do
#    pipe_through :browser # Use the default browser stack
#
#    get "/", PageController, :index
#  end

  # Other scopes may use custom stacks.
  scope "/api/v2", Userlistx do
   pipe_through :api

   get "/users", userController, :index 
  end
end
