Rails.application.routes.draw do

  # Sessions contoller
  get '/', to: 'sessions#home'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  
  resources :users, only: [:new, :create, :show] do
    resources :locations, only: [:index, :show, :new]
  end

  resources :travel_destinations 





  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
