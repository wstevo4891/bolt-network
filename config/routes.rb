Rails.application.routes.draw do
  
  root 'pages#home'

  resources :movies
  resources :genres
  
  get 'pages/about'
  get 'admin/movies_index'
end
