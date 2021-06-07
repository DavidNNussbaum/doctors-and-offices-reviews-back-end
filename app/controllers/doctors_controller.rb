class DoctorsController < ApplicationController
    before_action :set_doctor, only: [:show, :update, :destroy]

    def index
      @doctors = Doctor.order_by_last_name
  
      render json: DoctorSerializer.new(@doctors).serializable_hash 
    end
  
 
    def show
      render json: @doctor
    end
  
   
    def create
      @doctor = Doctor.new(doctor_params)
  
      if @doctor.save
        render json: @doctor, status: :created, location: @doctor
      else
        render json: @doctor.errors, status: :unprocessable_entity
      end
    end
  
     
    def update
      if @doctor.update(doctor_params)
        render json: @doctor
      else
        render json: @doctor.errors, status: :unprocessable_entity
      end
    end
  
    
    def destroy
      if @doctor.destroy
        render json: {message: "Doctor successfully removed"}
      else
        render json: {message: "Something went wrong! Errors: #{@doctor.errors.full_messages}"}
      end
    end
  
    private
       
      def set_doctor
        @doctor = Doctor.find(params[:id])
      end
  
     
      def doctor_params
        params.require(:doctor).permit(:first_name, :last_name, :address)
      end
  end 
