class ActorsController < ApplicationController

  def first_actor
    actor = Actor.first
    render json: actor.as_json
  end

  def last_actor
    last_actor = Actor.last_actor
    render json: last_actor.as_json
  end

  def all_actors
    all_actors = Actor.all 
    render json: all_actors.as_json 
  end

  def all_movies
    all_movies = Movies.all 
    render json: all_movies.as_json
  end

  def first_movie
    first_movie = Movies.first 
    render json: first_movie.as_json
  end
end
