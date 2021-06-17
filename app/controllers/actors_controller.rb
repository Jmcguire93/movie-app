class ActorsController < ApplicationController

  def first_actor
    actor = Actor.first
    render json: actor.as_json
  end

  def last_actor
    last_actor = Actor.last_actor
    render json: last_actor.as_json
  end

end
