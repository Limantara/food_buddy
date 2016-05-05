Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :foods
  resources :events
  resources :restaurants
  resources :users

  root 'pages#home'
  get '/dashboard' => 'pages#dashboard'
  get '/users/:id' => 'users#show'
end