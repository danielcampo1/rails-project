class SessionsController < ApplicationController
    def home
    end

    def welcome
    end

    def new
       @user = User.new
    end

    def create
        
        @user = User.find_by(username: params[:user][:username])
        
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to welcome_path(@user)
        else
            @user = User.new(username: params[:user][:username])
            flash.now[:notice] = "OOPS TRY AGAIN"
            render :new
            
        end
    end

    def github
        @user = User.github_omniauth(auth)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            render :home
        end
    end

    def destroy
            if current_user
                session.delete :user_id
                redirect_to '/'
            end
    end

    private

    def auth
        request.env['omniauth.auth']
    end

end
