class MoviesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

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
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"],
    )

    if movie.save
      render json: movie.as_json
    else
      render json: { errors: movie.errors.full_messages }
    end
  end
  
  def update 
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)

    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot 
    movie.director = params["director"] || movie.director
    movie.english = params["english"] || movie.english

    if movie.save
      render json: movie.as_json
    else
      render json: { errors: movie.errors.full_messages }
    end
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
