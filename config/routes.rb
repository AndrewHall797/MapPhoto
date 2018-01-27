Rails.application.routes.draw do

  get '/mainpage', to: 'locations#new' 
  
  get '/login', to: 'sessions#new' 

  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'
  
  get '/signup', to: 'users#new'
  
  get '/profile', to: 'users#show'

  root 'sessions#new'

  resources :users
  resources :sessions
  resources :locations
  
end
