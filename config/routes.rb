Rails.application.routes.draw do
  
  resources :subgenres
  resources :movies
  resources :genres
  
  get 'pages/about'
  get 'pages/debug'
  get 'admin/movies_index'

  root 'pages#home'
end
