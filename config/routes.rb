Rails.application.routes.draw do

  #home page
  get '/', to: 'sessions#home'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  delete '/logout' => 'sessions#destroy'
  # post '/logout' => 'sessions#destroy'

  
  resources :users do 
    resources :travel_destinations, only: [:index, :new, :create]
  end

  resources :travel_destinations, only: [:show, :update, :destroy]





  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
