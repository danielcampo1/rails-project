class DestinationsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index
        if current_user == find_user
            @destinations = Destination.all
        else
            redirect_to root_path
        end
    end

    
    def show
        find_destination
    end

    def new
        if current_user == find_user
            @destination = Destination.new    
        else
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
            find_destination
           if @destination.update(destination_params)
            redirect_to user_destination_path(@destination)
           else
            render :edit
        end
    end


    private
    def destination_params
        params.require(:destination).permit(:name, :country_id, :excursion, :time_of_visit, :best_moment)
    end
end
