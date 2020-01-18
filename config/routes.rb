Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new'
  root 'users#index'
  get '/login',       to: 'sessions#new'
  post '/login',      to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
end
