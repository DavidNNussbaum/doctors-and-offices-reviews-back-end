class UsersController < ApplicationController
     
  before_action :find_user, only: [:show, :edit, :update, :destroy]
   

   
  def show
    render json: UserSerializer.new(@user).serializable_hash 
  end

  def index
    @users = User.all

    render json: UserSerializer.new(@users).serializable_hash 
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

  def find_user
    @user = User.find_by(id: params[:id])
  end

    
    def user_params
      params.require(:user).permit(:first_name, :email, :password, :password_confirmation)
    end
end

     
    
    
  
     
  
    
  
     
