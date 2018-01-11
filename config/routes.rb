Rails.application.routes.draw do
  
  get 'locations/new'

  get 'locations/create'

  get 'locations/index'

  get 'locations/delete'

  get '/mainpage' => 'locations#new' 
  
  get '/login' => 'sessions#new' 

  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'
  
  get '/signup' => 'users#new'

  root 'users#new'

  resources :users
  resources :sessions
  resources :locations
  
end
