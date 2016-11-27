Rails.application.routes.draw do

  resources :users
  resources :posts
  root 'main#index'
  get '/our_story', to: 'main#our_story', as: 'our_story'
  get '/contributors', to: 'main#contributors', as: 'contributors'
end
