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

  def display_actor
    actor = Actor.find(params[:id])
    render json: actor.as_json
  end
end
