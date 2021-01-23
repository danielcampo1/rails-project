class CountriesController < ApplicationController
    def assign
    
    end

    # def assign
    #     # binding.pry
    #      if params[:country][:name]
    #         params[:id] = params[:country][:name]
    #         binding.pry
    #         redirect_to '/country/:id'
    #      else
    #         render :index
    #      end
    # end

    def show
        @country = params[:country][:name]
        params[:id] = @country

       if params[:id] 
            @destination = Destination.find_by(id: params[:id])
            @destination == params[:id]
                @dest = Destination.all
            else
                redirect_to "/countries"

            
       end
         
    end
end