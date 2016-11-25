Rails.application.routes.draw do

  resources :users
  resources :authors
  resources :posts
  root 'main#index'

end
