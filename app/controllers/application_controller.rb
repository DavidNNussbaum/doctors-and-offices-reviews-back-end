class ApplicationController < ActionController::API
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) #memoization
    end 

    def logged_in?
        current_user.present?
    end
end
