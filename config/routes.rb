Rails.application.routes.draw do
  
  resources :subgenres
  resources :movies
  resources :genres
  
  get 'pages/about'
  get 'pages/debug'
  get 'pages/slide_batch' => 'pages#slide_batch'
  get 'admin/movies_index'

  root 'pages#home'
end
