class DestinationsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index
        @destinations = Destination.all
    end

    
    def show
        find_destination
    end

    def new
        if current_user == find_user
            @destination = Destination.new    
        else
            flash[:message]= "no no no"
            render :new
        end
    end

    def create

       @destination = current_user.destinations.build(destination_params)
        if @destination.save
            redirect_to user_destination_path(current_user, @destination)
       else
        render :new
       end
    end

    def edit
        if current_user !=find_destination.user
            flash[:message]= "no no no"
            redirect_to root_path
        end
    end

    def update
        if find_destination
            @destination.update(destination_params)
            redirect_to user_destination_path(@destination)
        else
            flash[:message] = "did this work?"
            render :edit
        end
    end


    private
    def destination_params
        params.require(:destination).permit(:name, :country_id, :excursion, :time_of_visit, :best_moment)
    end
end
