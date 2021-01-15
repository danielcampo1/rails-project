class UsersController < ApplicationController

    def home

    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new 
    end

    def create
        user = User.new(user_params)
        
        if user.save
            session[:user_id] = user.id
            redirect_to login_path
        else
            redirect_to new_user_path
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
