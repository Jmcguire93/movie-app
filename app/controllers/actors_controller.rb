class ActorsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    actors = Actor.order(age: :desc)
    render json: actors
  end

  def show
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)
    render json: actor #.as_json
  end

  def create
    actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"]
      gender: params["gender"],
      age: params["age"],
      views: params["views"],
      movie_id: params["movie_id"]
    )

    if actor.save
      render json: actor #.as_json
    else
      render json: { errors: actor.errors.full_messages }
  end
  
  def update 
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)

    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for 
    actor.gender = params["gender"] || actor.gender 
    actor.age = params["age"] || actor.age 
    actor.views = params["views"] || actor.views 
    actor.movie_id = params["movie_id"]
    
    if actor.save
      render json: actor #.as_json
    else
      render json { errors: actor.errors.full_messages }
    end
  end
  
  def destroy
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)
    actor.destroy

    render json: {message: "Actor sucesfully canceled." }
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
