Rails.application.routes.draw do

  root 'main#index'
  
  resources :users
  resources :sessions
  resources :posts do 
    resources :upgrade_steps
  end
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  get '/our_story', to: 'main#our_story', as: 'our_story'
  get '/contributors', to: 'main#contributors', as: 'contributors'
end
