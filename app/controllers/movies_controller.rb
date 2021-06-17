class MoviesController < ApplicationController
  def all_movies
    all_movies = Movie.all 
    render json: all_movies.as_json
  end

  def first_movie
    first_movie = Movie.first 
    render json: first_movie.as_json
  end
end
