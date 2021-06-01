class UsersController < ApplicationController
     
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_not_logged_in, except: [:welcome, :new]

   
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
    
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end

     
    
    
  
     
  
    
  
     
