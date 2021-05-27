class UsersController < ApplicationController
    before_action :set_product, only: [:show, :update, :destroy]

   
  def show
    render json: @user
  end

   
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

   
  def destroy
    if @user.destroy
      render json: {message: "User successfully removed"}
    else
      render json: {message: "Something went wrong! Errors: #{@user.errors.full_messages}"}
    end
  end

  private
    
    def product_params
      params.require(:user).permit(:email, :password_digest)
    end
end
end
