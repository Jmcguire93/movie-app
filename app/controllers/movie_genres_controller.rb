class MovieGenresController < ApplicationController

  def index
    movie_genres = MovieGenre.all 
    render json: movie_genres
  end
  
  def create
    movie_genres = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
      
   )
    if movie_genres.save
      render json: movie_genres
    else
      render json: {errors: movie_genres.errors.full_messages}, status: 422
    end
  end

end
