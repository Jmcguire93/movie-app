Rails.application.routes.draw do
  
  get "/first_actor", controller: "actors", action: "first_actor"

  get "/last_actor", controller: "actors", action: "last_actor"

  get "/all_actors", controller: "actors", action: "all_actors"

  get "/all_movies", controller: "movies", action: "all_movies"

  get "/first_movie", controller: "movies", action: "first_movie"
end
