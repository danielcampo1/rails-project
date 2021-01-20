class DestinationsController < ApplicationController

    def show
        @destination = Destination.find_by(id: params[:id])
    end

    def new
        @destination = Destination.new
    end

    def create
        
        @destination = current_user.destinations.build(destination_params)
        @destination.save
        redirect_to user_destination_path(current_user, @destination)

    end


    private
    def destination_params
        params.require(:destination).permit(:name, :excursion, :time_of_visit, :best_moment)
    end
end
