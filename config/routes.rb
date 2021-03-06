Rails.application.routes.draw do
  root 'posts#index'
  get '/login',       to: 'sessions#new'
  post '/login',      to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  resources :posts,   only: [:index, :new, :create]
  resources :users,   only: [:index]
end
