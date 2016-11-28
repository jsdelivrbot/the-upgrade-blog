Rails.application.routes.draw do

  root 'main#index'
  resources :users
  resources :posts do 
    resources :upgrade_steps
  end
  
  get '/our_story', to: 'main#our_story', as: 'our_story'
  get '/contributors', to: 'main#contributors', as: 'contributors'
end
