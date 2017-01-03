Rails.application.routes.draw do

  root 'main#index'
  
  mount Ckeditor::Engine => '/ckeditor'
  
  resources :users
  post 'create_and_subscribe', to: "users#create_and_subscribe", as: "create_and_subscribe_user"
  resources :sessions
  resources :posts do 
    resources :upgrade_steps
  end
  resources :subscriptions
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  get '/about', to: 'main#about', as: 'about'
end
