class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :update, :destroy]

   
  def index
    doctor = Doctor.find_by(id: params[:doctor_id])
    @reviews = doctor.reviews

    render json: ReviewSerializer.new(@reviews).serializable_hash 
  end

  
  def show
    render json: @review
  end

   
  def create
    @review = Review.new(review_params)
  
    if @review.save
      render json: @review, status: :created, location: @review
    else
      
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  
  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

   
  def destroy
    if @review.destroy
      render json: {message: "Review successfully removed"}
    else
      render json: {message: "Something went wrong! Errors: #{@review.errors.full_messages}"}
    end
  end

  private
     
    def set_review
      @review = Review.find(params[:id])
    end

     
    def review_params
      params.require(:review).permit(:doctor_rating, :doctor_comments, :doctor_office_rating, :doctor_office_comments, :doctor_id, :user_id )
    end
end


 
