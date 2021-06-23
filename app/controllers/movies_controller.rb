class MoviesController < ApplicationController
  
  def index
    movies = Movie.all 
    render json: movies.as_json 
  end

  def show
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)
    render json: movie.as_json
  end

  def create
    movie = Movie.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"]
    )

    movie.save
    render json: movie.as_json
  end
  
  def update 
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)

    movie.first_name = params["first_name"] || movie.first_name
    movie.last_name = params["last_name"] || movie.last_name
    movie.known_for = params["known_for"] || movie.known_for 

    movie.save
    render json: movie.as_json
  end
  
  def destroy
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)
    movie.destroy

    render json: {message: "Movie sucesfully canceled." }
  end   
  
  
  
  
  
  
  
  
  
  
  
  
  # def all_movies
  #   all_movies = Movie.all 
  #   render json: all_movies.as_json
  # end

  # def first_movie
  #   first_movie = Movie.first 
  #   render json: first_movie.as_json
  # end
end
