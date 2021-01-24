class CountriesController < ApplicationController
    def index
    @country = Country.all.order_country
    end

end