class LocationsController < ApplicationController

    def show
        @location = Location.find_by(id: params[:id])
    end

    def new
        @location = Location.new
    end

    def create
        
        @location = current_user.locations.build(location_params)
        @location.save
        redirect_to user_location_path(current_user, @location)

    end


    private
    def location_params
        params.require(:location).permit(:name)
    end
end
