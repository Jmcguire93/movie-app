class ActorsController < ApplicationController

  def index
    actors = Actor.all 
    render json: actors.as_json 
  end

  def show
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)
    render json: actor.as_json
  end

  def create
    actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"]
    )

    actor.save
    render json: actor.as_json
  end
  
  
  
  
  
  # def last_actor
  #   last_actor = Actor.last_actor
  #   render json: last_actor.as_json
  # end


  # def display_actor
  #   actor = Actor.find(params[:id])
  #   render json: actor.as_json
  # end
end
