Rails.application.routes.draw do
  root 'home#index'
  
  resources :tools
  resources :users, only: [:new, :create, :index]
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: "sessions#destroy"
end
