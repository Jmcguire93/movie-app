Rails.application.routes.draw do
  
  get "/first_actor", controller: "actors", action: "first_actor"

  get "/last_actor", controller: "actors", action: "last_actor"
end
