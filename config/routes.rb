Rails.application.routes.draw do
  
  get "/actors", controller: "actors", action: "index"
  
  get "/actors/:id", controller: "actors", action: "show"

  post "actors", controller: "actors", action: "create"

  patch "/actors/:id", controller: "actors", action: "update"

  delete "actors/:id", controller: "actors", action: "destroy"


  get "/movies", controller: "movies", action: "index"
  
  get "/movies/:id", controller: "movies", action: "show"

  post "movies", controller: "movies", action: "create"

  patch "/movies/:id", controller: "movies", action: "update"

  delete "movies/:id", controller: "movies", action: "destroy"


  post "/users", controller: "users", action: "create"

  get "/users", controller: "users", action: "index"

  patch "/users/:id", controller: "users", action: "update"

  delete "users/:id", controller: "users", action: "destroy"


  get "/genres", controller: "genres", action: "index"
  

  get "/movie_genres", controller: "movie_genres", action: "index"
  
  
  
  
  
  
  # get "/last_actor", controller: "actors", action: "last_actor"
  
  # get "/all_movies", controller: "movies", action: "all_movies"
  
  # get "/first_movie", controller: "movies", action: "first_movie"
  
  # get "/query_param", controller: "actors", action: "display_actor"
  
  # get "segment_param/:id", controller: "actors", action: "display_actor"
  
  # post "body_param", controller: "actors", action: "display_actor"
end
