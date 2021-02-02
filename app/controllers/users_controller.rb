class UsersController < ApplicationController

    def home

    end

    def show
        @user = current_user

         if params[:id].to_i == @user.id
         else
            flash.now[:notice] = "not auth"
            redirect_to '/'
         end
        
    end

    def new
        @user = User.new 
    end

    def create
        @user = User.new(user_params)
        
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
