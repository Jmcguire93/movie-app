class UsersController < ApplicationController
  
  def create
    if current_user && current_user.admin
      user = User.new(
        name: params[:name],
        email: params[:email],
        password: params[:password],
        password_confirmation: params[:password_confirmation]
      )
      if user.save
        render json: { message: "User created successfully" }, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :bad_request
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  def index
    users = User.all 
    render json: users 
  end

  def update
    user_id = params["id"]
    user = User.find_by(id: user_id)

    user.name = params["name"] || user.name
    user.email = params["email"] || user.email
    user.password = params["password"] || user.password
    user.password_confirmation = params["password_confirmation"] || user.password_confirmation
    
    if user.save 
      render json: user
    else
      render json: { errors: user.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  def destroy
    user_id = params[:id]
    user = User.find_by(id: user_id)
    
    if user.destroy
      render json: {message: "user sucesfully destroyed."}
    else
      render json: { errors: user.error.full_messages },
      status: :unprocessable_entity
    end
  end
end
