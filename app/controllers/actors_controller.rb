class ActorsController < ApplicationController

  def one_actor
    actor = Actor.first
    render json: actor.as_json
  end
end
