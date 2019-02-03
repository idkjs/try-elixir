defmodule ProjectWeb.Router do
  use ProjectWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ProjectWeb do
    pipe_through :api
  end
end
