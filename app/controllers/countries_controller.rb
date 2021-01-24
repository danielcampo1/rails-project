class CountriesController < ApplicationController
    before_action :redirect_if_not_logged_in
    
    def index
    @country = Country.all.order_country
    end

end