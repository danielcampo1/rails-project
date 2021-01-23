Rails.application.routes.draw do

  # Sessions contoller
  root 'sessions#home'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  
  delete '/logout' => 'sessions#destroy'

  resources :users do
    resources :destinations, except: [:destroy]
  end

  # get '/countries', to: 'countries#index'
  get '/countries', to: "countries#assign"
   get '/country', to: "countries#show"

   match '/auth/github/callback', to: 'sessions#github', via: [:get, :post]


  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
