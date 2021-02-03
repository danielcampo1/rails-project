class CountriesController < ApplicationController
    before_action :redirect_if_not_logged_in
    
    def index
        if params[:country]
            @country = Country.where('name LIKE ?', "%#{params[:country]}%").order_country
          else
            @country = Country.all.order_country
          end
    end
end

private 

def country_params
    params.require(:country).permit(:description, :culture, :climate, :search, :name)
end