Rails.application.routes.draw do
  
  get '/mainpage' => 'users#main_page' 
  
  get '/login' => 'sessions#new' 

  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'
  
  get 'signup' => 'user#new'

  root 'users#new'

  resources :users
  resources :sessions
  
end
