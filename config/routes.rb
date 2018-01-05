Rails.application.routes.draw do
  
  get '/login' => 'sessions#new' 

  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  root'sessions#new'
  
  resources :users
  resources :sessions
  
end
