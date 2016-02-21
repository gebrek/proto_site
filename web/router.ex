defmodule ProtoSite.Router do
  use ProtoSite.Web, :router

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

  scope "/", ProtoSite do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
		get "/user", UserController, :index
		get "/kitchen", KitchenController, :index
		get "/pantry", PantryController, :index
		get "/help", HelpController, :index
  end


  # Other scopes may use custom stacks.
  # scope "/api", ProtoSite do
  #   pipe_through :api
  # end
end
