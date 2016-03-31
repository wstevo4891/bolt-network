Rails.application.routes.draw do
  
  resources :movies
  resources :genres

  root 'pages#home'
  
  get 'pages/about'
  get 'pages/search'
end
