Rails.application.routes.draw do
  get 'topics/new'

  get 'sessions/new'

  root 'pages#index'
  get 'pages/help' 
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favories#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
