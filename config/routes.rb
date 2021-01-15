Rails.application.routes.draw do

  #home page
  get '/', to: 'sessions#home'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  get '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'

  resources :travel_destinations
  resources :users





  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
