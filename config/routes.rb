Rails.application.routes.draw do

  resources :subgenres
  resources :movies
  resources :genres

  get 'lookup/genres' => 'lookup#lookup_genres', as: :lookup_genres

  get '/debug' => 'developer_tools#debug'

  get 'pages/about'
  get 'pages/slide_batch' => 'pages#slide_batch'
  get 'admin/movies_index'

  root 'pages#home'
end
